void *sub_21698B618()
{
  sub_21698CA0C();

  return sub_217009104();
}

void *sub_21698B680()
{
  sub_21698C9B8();

  return sub_217009104();
}

uint64_t sub_21698B6E8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8, &unk_2170575E0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_47_17();
  v7 = sub_2166A6EA4();
  a2(v7);
  sub_217009114();
  return sub_216697664(a1, &qword_27CABBAA8, &unk_2170575E0);
}

uint64_t sub_21698B7B4()
{
  v0 = sub_21700B2F4();
  __swift_allocate_value_buffer(v0, qword_27CABE5B8);
  __swift_project_value_buffer(v0, qword_27CABE5B8);
  return sub_21700B2A4();
}

uint64_t sub_21698B81C(uint64_t a1)
{
  v1 = sub_2170080D4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277CDF3C0], v1, v3);
  sub_2170080C4();
  (*(v2 + 8))(v5, v1);
  return 0x7372657474616C70;
}

uint64_t sub_21698B938(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21698B990()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

void sub_21698B9E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_217006EC4();
  OUTLINED_FUNCTION_1();
  v58 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_77();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_1();
  v56 = v11;
  OUTLINED_FUNCTION_4_1();
  v57 = sub_2170071B4();
  OUTLINED_FUNCTION_1();
  v51 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v52 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47_1();
  v50 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5E0, &qword_21702F798);
  v18 = OUTLINED_FUNCTION_36(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47_1();
  v54 = v21;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v53 = v20;
    v48 = v9;
    v49 = a2;
    v22 = 0;
    v47 = a1;
    OUTLINED_FUNCTION_46_16();
    v25 = v24 & v23;
    v45 = (v26 + 63) >> 6;
    v46 = a1 + 64;
    while (v25)
    {
      v55 = (v25 - 1) & v25;
      v27 = __clz(__rbit64(v25)) | (v22 << 6);
LABEL_11:
      (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v27, v57);
      (*(v58 + 16))(v56, *(v47 + 56) + *(v58 + 72) * v27, v4);
      a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5E8, &unk_21702F7A0);
      (*(v51 + 32))(v53, v50, v57);
      OUTLINED_FUNCTION_31_9();
      v31();
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, a2);
      v28 = v54;
      v25 = v55;
LABEL_12:
      sub_2167A4788();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5E8, &unk_21702F7A0);
      v35 = OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_31_2(v35, 1, a2);
      if (v36)
      {
        return;
      }

      v37 = *(a2 + 48);
      (*(v51 + 32))(v52, v28, v57);
      (*(v58 + 32))(v48, v28 + v37, v4);
      v38 = sub_216E67EE8();
      v40 = v39;
      (*(v51 + 8))(v52, v57);
      if ((v40 & 1) == 0)
      {
        (*(v58 + 8))(v48, v4);
        return;
      }

      (*(v58 + 16))(v56, *(v49 + 56) + *(v58 + 72) * v38, v4);
      sub_21698C470(&qword_27CABE600, MEMORY[0x277D2A9A8], MEMORY[0x277D2A9B0]);
      a2 = sub_21700E494();
      v41 = *(v58 + 8);
      v41(v56, v4);
      v41(v48, v4);
      if ((a2 & 1) == 0)
      {
        return;
      }
    }

    v28 = v54;
    while (1)
    {
      v29 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v29 >= v45)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE5E8, &unk_21702F7A0);
        v42 = OUTLINED_FUNCTION_49_1();
        __swift_storeEnumTagSinglePayload(v42, v43, 1, v44);
        v25 = 0;
        goto LABEL_12;
      }

      v30 = *(v46 + 8 * v29);
      ++v22;
      if (v30)
      {
        v55 = (v30 - 1) & v30;
        v27 = __clz(__rbit64(v30)) | (v29 << 6);
        v22 = v29;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_21698BF40(void *a1, void *a2)
{
  if (a1 != a2 && a1[2] == a2[2])
  {
    v4 = 0;
    OUTLINED_FUNCTION_46_16();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      v13 = v10 | (v4 << 6);
      v14 = (a1[6] + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(a1[7] + 8 * v13);
      sub_21700DF14();

      if (!v15)
      {
        return;
      }

      v18 = sub_216E69548(v16, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
LABEL_18:

        return;
      }

      if (*(a2[7] + 8 * v18))
      {
        if (!v17)
        {
          return;
        }

        v21 = sub_21700EAE4();

        if ((v21 & 1) == 0)
        {
          return;
        }
      }

      else if (v17)
      {
        goto LABEL_18;
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

      if (v4 >= v9)
      {
        return;
      }

      v12 = a1[v4 + 8];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21698C0F4()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21698C14C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_21700C4B4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for FullScreenArtworkView(0);
  OUTLINED_FUNCTION_36(v6);
  v8 = v1 + ((v4 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_21698963C(v1 + v4, v8, a1);
}

unint64_t sub_21698C264()
{
  result = qword_27CABE648;
  if (!qword_27CABE648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE628, &qword_21702F7E8);
    sub_2166D9530(&qword_27CABE650, &qword_27CABE658, &qword_21702F808, MEMORY[0x277D26978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE648);
  }

  return result;
}

unint64_t sub_21698C31C()
{
  result = qword_27CABE660;
  if (!qword_27CABE660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE660);
  }

  return result;
}

unint64_t sub_21698C3B4()
{
  result = qword_27CABE670;
  if (!qword_27CABE670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE668, &qword_21702F810);
    sub_21698C470(&qword_280E4A3F0, MEMORY[0x277CE43D0], MEMORY[0x277CE43B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE670);
  }

  return result;
}

uint64_t sub_21698C470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21698C4C4()
{
  result = qword_27CABE6A0;
  if (!qword_27CABE6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE678, &qword_21702F818);
    sub_21698C550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6A0);
  }

  return result;
}

unint64_t sub_21698C550()
{
  result = qword_27CABE6A8;
  if (!qword_27CABE6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE698, &qword_21702F838);
    sub_21698C5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6A8);
  }

  return result;
}

unint64_t sub_21698C5DC()
{
  result = qword_27CABE6B0;
  if (!qword_27CABE6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE690, &qword_21702F830);
    sub_2166D9530(&qword_27CABE6B8, &qword_27CABE688, &qword_21702F828, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6B0);
  }

  return result;
}

unint64_t sub_21698C694()
{
  result = qword_27CABE6C0;
  if (!qword_27CABE6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE680, &qword_21702F820);
    sub_21698C720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6C0);
  }

  return result;
}

unint64_t sub_21698C720()
{
  result = qword_27CABE6C8;
  if (!qword_27CABE6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE6D0, &unk_21702F840);
    sub_2166D9530(&qword_27CAB87A0, &qword_27CAB87A8, &qword_21701A4B8, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6C8);
  }

  return result;
}

unint64_t sub_21698C7E0()
{
  result = qword_27CABE6E0;
  if (!qword_27CABE6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE6D8, &qword_21702F850);
    sub_21698C86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6E0);
  }

  return result;
}

unint64_t sub_21698C86C()
{
  result = qword_27CABE6E8;
  if (!qword_27CABE6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE6F0, &qword_21702F858);
    sub_21698C8F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6E8);
  }

  return result;
}

unint64_t sub_21698C8F8()
{
  result = qword_27CABE6F8;
  if (!qword_27CABE6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE700, &qword_21702F860);
    sub_2166D9530(&qword_27CABE6B8, &qword_27CABE688, &qword_21702F828, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE6F8);
  }

  return result;
}

unint64_t sub_21698C9B8()
{
  result = qword_280E2C9D8;
  if (!qword_280E2C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C9D8);
  }

  return result;
}

unint64_t sub_21698CA0C()
{
  result = qword_280E2DD48;
  if (!qword_280E2DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DD48);
  }

  return result;
}

unint64_t sub_21698CAA0()
{
  result = qword_27CABE730;
  if (!qword_27CABE730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE738, &qword_21702F918);
    sub_21698CB2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE730);
  }

  return result;
}

unint64_t sub_21698CB2C()
{
  result = qword_27CABE740;
  if (!qword_27CABE740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE748, &qword_21702F920);
    sub_2166D9530(&qword_27CABE750, &qword_27CABE758, &qword_21702F928, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE740);
  }

  return result;
}

unint64_t sub_21698CBE4()
{
  result = qword_27CABE760;
  if (!qword_27CABE760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE768, &qword_21702F930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE630, &qword_21702F7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABAA40, &unk_217014260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE628, &qword_21702F7E8);
    sub_21698C264();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21698C31C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE760);
  }

  return result;
}

unint64_t sub_21698CD10()
{
  result = qword_27CABE770;
  if (!qword_27CABE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE770);
  }

  return result;
}

unint64_t sub_21698CD80()
{
  result = qword_280E387A8[0];
  if (!qword_280E387A8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBAA8, &unk_2170575E0);
    sub_21698C470(&unk_280E387E8, type metadata accessor for BackgroundConfiguration, &unk_21702F6F8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E387A8);
  }

  return result;
}

uint64_t sub_21698CE34(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21698CEB0()
{
  result = qword_27CABE7A8;
  if (!qword_27CABE7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE778, &qword_21702FAC0);
    sub_21698CF3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE7A8);
  }

  return result;
}

unint64_t sub_21698CF3C()
{
  result = qword_27CABE7B0;
  if (!qword_27CABE7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE7B8, &qword_21702FB28);
    sub_2166D9530(&qword_27CABE7C0, &qword_27CABE7C8, &unk_21702FB30, MEMORY[0x277CDF510]);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE7B0);
  }

  return result;
}

uint64_t type metadata accessor for SearchLandingPageIntent(uint64_t a1)
{
  result = qword_280E37790;
  if (!qword_280E37790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_21698D0F4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v15[0] = type metadata accessor for SearchLandingPageIntent(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE7D0, &qword_21702FC38);
    v9 = sub_21700E594();
    v15[3] = MEMORY[0x277D837D0];
    v15[0] = v9;
    v15[1] = v10;
    v11 = a1;
    v12 = sub_2166F1E10(v15, a1);
    sub_2166F1F64(v12, 0x646E696B24, 0xE500000000000000);
    sub_2168CC268(v2, v6);
    v13 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v11).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21698D2F4(uint64_t a1)
{
  result = sub_2166CE4BC(&qword_280E377D0, type metadata accessor for SearchLandingPageIntent, &unk_21702FB74);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21698D394(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE4BC(&qword_280E377D0, type metadata accessor for SearchLandingPageIntent, &unk_21702FB74);
  result = sub_2166CE4BC(qword_280E377D8, type metadata accessor for SearchLandingPageIntent, &unk_21702FB58);
  *(a1 + 16) = result;
  return result;
}

uint64_t Hashable.representsNowPlaying.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70C0, &qword_217015DB8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for MusicAppDestination(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  (*(v4 + 16))(v6, v2, a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE7D8, &qword_21702FC40);
  if (!swift_dynamicCast())
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_21669987C(&v20, &qword_27CABE7E0, &qword_21702FC48);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    goto LABEL_6;
  }

  v17 = *(&v21 + 1);
  v18 = v22;
  __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
  (*(v18 + 8))(v17, v18);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
LABEL_6:
    sub_21669987C(v9, &qword_27CAB70C0, &qword_217015DB8);
    return 0;
  }

  sub_2167AF85C(v9, v16);
  sub_2167AF85C(v16, v12);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    return 1;
  }

  sub_21698D6C8(v12);
  return 0;
}

uint64_t sub_21698D6C8(uint64_t a1)
{
  v2 = type metadata accessor for MusicAppDestination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21698D724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a4;
  v31 = a5;
  v32 = a1;
  v33 = a6;
  v10 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_7();
  v13 = (v12 - v11);
  v14 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  v34[0] = v19;
  v34[1] = a2;
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a3;
  v20 = type metadata accessor for SingleItemSectionViewModifier(0, v34);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_29();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v29 - v25;
  (*(v14 + 24))(a2, v14, v24);
  sub_2167CC3A4(v32, v13);
  sub_21698D920(v18, v13, AssociatedTypeWitness, a2, v30, v31, a3, v26);
  v27 = OUTLINED_FUNCTION_92_0();
  MEMORY[0x21CE9B900](v27);
  return (*(v22 + 8))(v26, v20);
}

uint64_t sub_21698D920@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = swift_getKeyPath();
  *(a8 + 8) = 0;
  v16 = type metadata accessor for MappedSection(0);
  (*(a7 + 16))(a1, *&a2[*(v16 + 32)], &a2[*(v16 + 24)], a4, a7);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  v17 = type metadata accessor for SingleItemSectionViewModifier(0, v21);
  (*(*(a3 - 8) + 32))(a8 + *(v17 + 68), a1, a3);
  v19 = *a2;
  v18 = *(a2 + 1);
  sub_21700DF14();
  result = sub_21698DA34(a2);
  *(a8 + 56) = v19;
  *(a8 + 64) = v18;
  return result;
}

uint64_t sub_21698DA34(uint64_t a1)
{
  v2 = type metadata accessor for MappedSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21698DA90(uint64_t a1)
{
  sub_2167B8000();
  if (v1 <= 0x3F)
  {
    sub_21698DF28();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21698DB38(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 72) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      v16 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((v16 + 63) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
      }

      v17 = *(v16 + 40);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_21698DCC4(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 72) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          v21 = a1 & 0xFFFFFFFFFFFFFFF8;
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((v21 + 63) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(v21 + 24) = 0u;
            *(v21 + 40) = 0u;
            *(v21 + 16) = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v21 + 40) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          *(a1 + 2) = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v17;
        break;
      case 2:
        *(a1 + v11) = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v11) = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_21698DF28()
{
  result = qword_280E44318[0];
  if (!qword_280E44318[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280E44318);
  }

  return result;
}

uint64_t sub_21698DFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v153 = a1;
  v138 = a3;
  v134 = sub_21700D8E4();
  OUTLINED_FUNCTION_1();
  v161 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v8 - v7);
  v156 = sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v155 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v12 - v11);
  v157 = *(a2 + 16);
  v152 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v151 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v15);
  OUTLINED_FUNCTION_7_49();
  v158 = a2;
  v16 = sub_2170097A4();
  OUTLINED_FUNCTION_7_31();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v146 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v20);
  v149 = v21;
  v22 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v144 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v25);
  v26 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v140 = v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v29);
  v30 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v137 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v33);
  v34 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v142 = v35;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v37);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  v38 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v135 = v39;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v41);
  v133 = v16;
  v139 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = MEMORY[0x277CDF918];
  v117 = OpaqueTypeConformance2;
  v175 = OpaqueTypeConformance2;
  v176 = MEMORY[0x277CDF918];
  v148 = v22;
  v173 = swift_getWitnessTable();
  v174 = v43;
  v145 = v26;
  v118 = swift_getWitnessTable();
  v171 = v118;
  v172 = v43;
  v143 = v30;
  v119 = swift_getWitnessTable();
  v169 = v119;
  v170 = v43;
  v147 = v34;
  v120 = swift_getWitnessTable();
  v167 = v120;
  v168 = sub_21698EDC8();
  v44 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v130 = v46;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v48);
  v141 = v38;
  v121 = v44;
  v163 = *&OpaqueTypeMetadata2;
  v164 = swift_getOpaqueTypeConformance2();
  v124 = v164;
  v127 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v129 = v49;
  MEMORY[0x28223BE20](v50);
  v122 = v115 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_8_0(v115 - v53);
  v54 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v56 = v55;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_7();
  v60 = v59 - v58;
  v61 = *(v3 + 40);
  v62 = *(v3 + 48);
  v63 = __swift_project_boxed_opaque_existential_1((v3 + 16), v61);
  v65 = *v3;
  v159 = v3;
  v66 = *(v3 + 8);
  if (v66 == 1)
  {
    v64.n128_u64[0] = v65;
  }

  else
  {
    v115[1] = v63;

    sub_21700ED94();
    v67 = sub_217009C34();
    v116 = OpaqueTypeMetadata2;
    v68 = v67;
    sub_217007BC4();

    OpaqueTypeMetadata2 = v116;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v65, 0);
    (*(v56 + 8))(v60, v54);
    v64.n128_f64[0] = v163;
  }

  (*(v62 + 8))(v61, v62, v64);
  v70 = v69;
  v72 = v71;
  if (v66)
  {
    v73 = *&v65;
  }

  else
  {

    sub_21700ED94();
    v74 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v65, 0);
    (*(v56 + 8))(v60, v54);
    v73 = v163;
  }

  v75 = v73 - v70 - v72;
  v76 = v158;
  v77 = v157;
  v78 = v159;
  v79 = v150;
  (*(*(v157 - 8) + 16))(v150, v159 + *(v158 + 68), v157);
  __swift_storeEnumTagSinglePayload(v79, 0, 1, v77);
  v80 = swift_checkMetadataState();
  sub_216BE53B0(v79, 0, 0, v80, v77, v139, *(v76 + 32), v136);
  OUTLINED_FUNCTION_67();
  v81(v79, v152);
  sub_217009CB4();
  v82 = v132;
  OUTLINED_FUNCTION_11_38();
  sub_21700AAB4();
  OUTLINED_FUNCTION_67();
  v83 = OUTLINED_FUNCTION_92_0();
  v84(v83);
  sub_217009CD4();
  OUTLINED_FUNCTION_11_38();
  sub_21700AAB4();
  OUTLINED_FUNCTION_67();
  v85(v82, v79);
  sub_217009C94();
  v86 = v128;
  OUTLINED_FUNCTION_11_38();
  sub_21700AAB4();
  OUTLINED_FUNCTION_67();
  v87 = OUTLINED_FUNCTION_92_0();
  v88(v87);
  sub_217009CA4();
  v89 = v131;
  OUTLINED_FUNCTION_11_38();
  sub_21700AAB4();
  OUTLINED_FUNCTION_67();
  v90(v86, v79);
  swift_getKeyPath();
  v163 = v75;
  v91 = v126;
  v92 = v147;
  sub_21700A3D4();

  OUTLINED_FUNCTION_67();
  v93(v89, v92);
  v94 = v154;
  sub_2170099C4();
  v95 = v125;
  v96 = v141;
  sub_21700A784();
  OUTLINED_FUNCTION_67();
  v97(v94, v156);
  OUTLINED_FUNCTION_67();
  v98(v91, v96);
  v99 = *(v76 + 40);
  (*(v99 + 8))(v77, v99);
  v100 = (*(v99 + 16))(v77, v99);
  if (v101)
  {
    v102 = MEMORY[0x277D837D0];
  }

  else
  {
    v100 = 0;
    v102 = 0;
    v165 = 0;
  }

  v163 = *&v100;
  v164 = v101;
  v166 = v102;
  v104 = *(v78 + 56);
  v103 = *(v78 + 64);
  v162[3] = MEMORY[0x277D837D0];
  v162[0] = v104;
  v162[1] = v103;
  sub_21700DF14();
  v105 = v160;
  sub_21700D8D4();

  sub_216697CFC(v162);
  sub_216697CFC(&v163);
  v106 = v122;
  v107 = v124;
  sub_21700A204();
  OUTLINED_FUNCTION_67();
  v108(v105, v134);
  OUTLINED_FUNCTION_67();
  v109(v95, OpaqueTypeMetadata2);
  v163 = *&OpaqueTypeMetadata2;
  v164 = v107;
  OUTLINED_FUNCTION_2_5();
  v110 = swift_getOpaqueTypeConformance2();
  v111 = v123;
  v112 = v127;
  sub_2166C24DC(v106, v127, v110);
  v113 = *(v129 + 8);
  v113(v106, v112);
  sub_2166C24DC(v111, v112, v110);
  return (v113)(v111, v112);
}

unint64_t sub_21698EDC8()
{
  result = qword_280E2A758;
  if (!qword_280E2A758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A758);
  }

  return result;
}

double sub_21698EE54()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v0 scaledValueForValue_];
  v2 = v1;

  return (v2 / 100.0 + -1.0) * 0.7 + 1.0;
}

BOOL sub_21698EEE4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (!(a3 >> 6))
  {
    if (a6 < 0x40u && a1 == a4)
    {
      if (a3)
      {
        if (a6)
        {
          return 1;
        }
      }

      else if ((a6 & 1) == 0 && *&a2 == *&a5)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a3 >> 6 != 1)
  {
    return (a6 & 0xC0) == 0x80 && !(a5 | a4) && a6 == 128;
  }

  if ((a6 & 0xC0) != 0x40)
  {
    return 0;
  }

  if (a2)
  {
    return (a5 & 1) != 0;
  }

  return !(a5 & 1 | (*&a1 != *&a4));
}

BOOL sub_21698EF8C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

uint64_t sub_21698EFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_21698F234(v5, &v22);
  switch(v23)
  {
    case 0:
      v10 = 2;
      switch(a1)
      {
        case 2:
          OUTLINED_FUNCTION_1_86();
          if (v15)
          {
            v10 = 1;
          }

          else
          {
            v10 = 3;
          }

          break;
        case 3:
          return v10;
        case 4:
        case 5:
          goto LABEL_13;
        case 6:
          OUTLINED_FUNCTION_1_86();
          v16 = 7;
          v17 = 4;
          goto LABEL_26;
        case 7:
          v10 = 5;
          break;
        default:
          v10 = 1;
          break;
      }

      break;
    case 1:
      v11 = a1;
      v12 = &unk_21702FF90;
      goto LABEL_10;
    case 2:
      v11 = a1;
      v12 = &unk_21702FFD0;
LABEL_10:
      v10 = v12[v11];
      break;
    case 3:
      v10 = 1;
      switch(a1)
      {
        case 1:
          OUTLINED_FUNCTION_1_86();
          if (v15)
          {
            v10 = 1;
          }

          else
          {
            v10 = 4;
          }

          break;
        case 2:
          v10 = 2;
          break;
        case 3:
LABEL_13:
          v10 = 3;
          break;
        case 4:
          v10 = 4;
          break;
        case 5:
          OUTLINED_FUNCTION_1_86();
          v16 = 9;
          v17 = 5;
          goto LABEL_26;
        case 6:
          OUTLINED_FUNCTION_1_86();
          if (v15)
          {
            v10 = 6;
          }

          else
          {
            v10 = 28;
          }

          break;
        case 7:
          OUTLINED_FUNCTION_1_86();
          v16 = 15;
          v17 = 7;
LABEL_26:
          if (v15)
          {
            v10 = v17;
          }

          else
          {
            v10 = v16;
          }

          break;
        default:
          return v10;
      }

      break;
    default:
      sub_2166A0F18(&v22, v19);
      v13 = v20;
      v14 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v10 = (*(v14 + 8))(a1, a2, a3, a4, v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      break;
  }

  return v10;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI5SpecsO13DynamicLayoutO4GridV0E0O(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21698F290(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_21698F2D0(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_21698F338(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 17))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_21698F384(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21698F3D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_21698F408(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    v2 = 0x80;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_21698F43C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 40))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21698F490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 3;
    }
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

uint64_t getEnumTagSinglePayload for AttributedDateRange.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21698F54C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21698F5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v44 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  MEMORY[0x28223BE20](v11);
  v41 = &v39 - v12;
  v13 = sub_2170080D4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338, &unk_217020060);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v39 - v18;
  v20 = type metadata accessor for ColorSchemeArtwork(0);
  OUTLINED_FUNCTION_34();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(a2, a3, v22);
  OUTLINED_FUNCTION_1_87(v19);
  if (v25)
  {
    sub_216697664(v19, &qword_27CABA338, &unk_217020060);
    OUTLINED_FUNCTION_2_67();
    return v26(a2);
  }

  v40 = a2;
  v28 = v44;
  sub_21698FAD8(v19, v24, type metadata accessor for ColorSchemeArtwork);
  (*(v14 + 16))(v16, v43, v13);
  v29 = (*(v14 + 88))(v16, v13);
  if (v29 == *MEMORY[0x277CDF3D0])
  {
    sub_2169833F8(v24, v10);
    type metadata accessor for Artwork(0);
    OUTLINED_FUNCTION_1_87(v10);
    if (!v25)
    {
      sub_21698FA7C(v24);
      OUTLINED_FUNCTION_0_102();
      v35 = v10;
LABEL_19:
      sub_21698FAD8(v35, v28, v34);
      return OUTLINED_FUNCTION_4_52();
    }

    OUTLINED_FUNCTION_2_67();
    v30(v40);
    sub_21698FA7C(v24);
    result = OUTLINED_FUNCTION_1_87(v10);
    if (v25)
    {
      return result;
    }

    v31 = v10;
    return sub_216697664(v31, &qword_27CAB6D60, &qword_217014E40);
  }

  if (v29 == *MEMORY[0x277CDF3C0])
  {
    v32 = v41;
    sub_2169833F8(&v24[*(v20 + 20)], v41);
    type metadata accessor for Artwork(0);
    OUTLINED_FUNCTION_1_87(v32);
    if (!v25)
    {
      sub_21698FA7C(v24);
      OUTLINED_FUNCTION_0_102();
      v35 = v32;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_2_67();
    v33();
    sub_21698FA7C(v24);
    result = OUTLINED_FUNCTION_1_87(v32);
    if (v25)
    {
      return result;
    }

    v31 = v32;
    return sub_216697664(v31, &qword_27CAB6D60, &qword_217014E40);
  }

  v36 = v42;
  sub_2169833F8(v24, v42);
  type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_1_87(v36);
  if (v25)
  {
    OUTLINED_FUNCTION_2_67();
    v37();
    sub_21698FA7C(v24);
    OUTLINED_FUNCTION_1_87(v36);
    if (!v25)
    {
      sub_216697664(v36, &qword_27CAB6D60, &qword_217014E40);
    }
  }

  else
  {
    sub_21698FA7C(v24);
    OUTLINED_FUNCTION_0_102();
    sub_21698FAD8(v36, v28, v38);
    OUTLINED_FUNCTION_4_52();
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_21698FA7C(uint64_t a1)
{
  v2 = type metadata accessor for ColorSchemeArtwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21698FAD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_21698FB38(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v7 = a1;
    v5 = [v4 defaultIdentityStore];
    [v3 setIdentityStore_];

    v6 = [objc_opt_self() activeAccount];
    [v3 setIdentity_];

    [v3 setAllowsExpiredBags_];
  }
}

uint64_t type metadata accessor for ProcessDeepLinkIntent(uint64_t a1)
{
  result = qword_27CABE7E8;
  if (!qword_27CABE7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21698FCC4(uint64_t a1)
{
  sub_2166CE38C(319);
  if (v1 <= 0x3F)
  {
    sub_21698FD58();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21698FD58()
{
  if (!qword_280E43770)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E43770);
    }
  }
}

void sub_21698FDF0(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = [objc_opt_self() valueWithNewObjectInContext_];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2166F1DCC();
    v13 = *v2;
    v12 = v2[1];
    v24 = MEMORY[0x277D837D0];
    v22 = v13;
    v23 = v12;
    sub_21700DF14();
    v14 = a1;
    v15 = sub_2166F1E10(&v22, a1);
    sub_2166F1F64(v15, 7107189, 0xE300000000000000);
    v16 = type metadata accessor for ProcessDeepLinkIntent(0);
    sub_2168CC268(v2 + *(v16 + 20), v8);
    v17 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v17) == 1)
    {
      sub_2168CC2D8(v8);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v14).super.isa;
      sub_2168CC340(v8);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    if ((*(v3 + *(v16 + 24)) & 1) == 0)
    {
      v24 = MEMORY[0x277D837D0];
      v22 = 0x6948686372616573;
      v23 = 0xEB0000000073746ELL;
      v19 = v14;
      v20 = sub_2166F1E10(&v22, a1);
      sub_2166F1F64(v20, 0x656372756F73, 0xE600000000000000);
    }

    v21 = MEMORY[0x277D225C8];
    a2[3] = v11;
    a2[4] = v21;
    *a2 = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_216990078(uint64_t a1)
{
  *(a1 + 8) = sub_2169900FC(&qword_27CABE7F8, type metadata accessor for ProcessDeepLinkIntent, &unk_217030124);
  result = sub_2169900FC(&qword_27CABE800, type metadata accessor for ProcessDeepLinkIntent, &unk_217030108);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2169900FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_216990154(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(type metadata accessor for PageCollectionViewController());
  v3 = sub_21700DF14();
  return sub_216AC1674(v3);
}

uint64_t sub_2169901C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216990310();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21699022C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216990310();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_216990290(uint64_t a1)
{
  sub_216990310();
  sub_217009AF4();
  __break(1u);
}

unint64_t sub_2169902BC()
{
  result = qword_27CABE808;
  if (!qword_27CABE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE808);
  }

  return result;
}

unint64_t sub_216990310()
{
  result = qword_27CABE810;
  if (!qword_27CABE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE810);
  }

  return result;
}

uint64_t sub_21699038C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v34 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v28 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  sub_21700D7A4();
  sub_21700CE04();
  v29 = v6;
  v30 = v4;
  (*(v6 + 16))(v9, v31, v4);
  v16 = type metadata accessor for Spacer(0);
  v17 = *(v16 + 20);
  sub_21700D734();
  v18 = a1;
  v19 = v28;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = *(v19 + 8);
  v23(v14, v10);
  if (v22)
  {
    v32 = v20;
    v33 = v22;
    sub_21700F364();
    (*(v29 + 8))(v31, v30);
    return (v23)(v18, v10);
  }

  else
  {
    v25 = sub_21700E2E4();
    sub_216990744(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v26 = 25705;
    v26[1] = 0xE200000000000000;
    v26[2] = v16;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    (*(v29 + 8))(v31, v30);
    v23(v18, v10);
    return sub_2167B0250(v34 + v17);
  }
}

uint64_t sub_216990744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21699078C(uint64_t a1)
{
  result = type metadata accessor for SectionChangeInstruction(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_216990860()
{
  sub_21700F3B4();

  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_21700DF14();
  MEMORY[0x21CE9F490](v2, v3);

  MEMORY[0x21CE9F490](41, 0xE100000000000000);
  return 0xD00000000000002ALL;
}

uint64_t sub_216990904()
{

  sub_216990A6C(v0 + qword_280E30688);
  return v0;
}

uint64_t sub_21699093C()
{
  sub_216990904();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2169909F4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216990A30(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216990A6C(uint64_t a1)
{
  v2 = type metadata accessor for SectionChangeInstruction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216990AC8(char *a1, uint64_t a2)
{
  v4 = sub_21700CDF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v8 = sub_21700CD44();
  v9 = sub_21700CF34();
  (*(*(v9 - 8) + 8))(a2, v9);
  v10 = *(v5 + 8);
  v10(a1, v4);
  v10(v7, v4);
  return v8 & 1;
}

uint64_t sub_216990C1C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216990AC8(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

unint64_t sub_216990C4C(uint64_t a1)
{
  result = sub_216990C74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216990C74()
{
  result = qword_27CABE818;
  if (!qword_27CABE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE818);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentOutcome(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_216990E00(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v70 = a4;
  v6 = sub_21700AC64();
  v7 = OUTLINED_FUNCTION_0(v6, &__dst[24]);
  v62 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_70(v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE820, &qword_2170305F8);
  OUTLINED_FUNCTION_0(v10, &v76);
  v67 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE828, &qword_217030600);
  OUTLINED_FUNCTION_1_77(v15, &__dst[40]);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE830, &qword_217030608);
  OUTLINED_FUNCTION_1_77(v19, &__dst[56]);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE838, &qword_217030610);
  OUTLINED_FUNCTION_1_77(v23, &v75);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v26 = v61 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE840, &qword_217030618);
  OUTLINED_FUNCTION_1_77(v27, &v74);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_70(v61 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE848, &qword_217030620);
  OUTLINED_FUNCTION_1_77(v30, &__dst[48]);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_70(v61 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE850, &qword_217030628);
  OUTLINED_FUNCTION_1_77(v33, &v77);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_70(v61 - v35);
  KeyPath = swift_getKeyPath();
  sub_21700DF14();
  v37 = sub_217009E84();
  v38 = swift_getKeyPath();
  v71 = 0;
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  __src[4] = KeyPath;
  __src[5] = 1;
  LOBYTE(__src[6]) = 0;
  __src[7] = v38;
  __src[8] = v37;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C48, &qword_217030690);
  sub_21699188C();
  v39 = v64;
  sub_21700A304();
  memcpy(__dst, __src, sizeof(__dst));
  sub_216697664(__dst, &qword_27CAB8C48, &qword_217030690);
  if (v39)
  {
    (*(v62 + 104))(v61[1], *MEMORY[0x277CE0EE0], v63);
    v40 = sub_21700AD44();
  }

  else
  {
    v40 = sub_21700ACF4();
  }

  v41 = v40;
  v42 = swift_getKeyPath();
  (*(v67 + 32))(v18, v14, v68);
  OUTLINED_FUNCTION_4_53();
  v44 = &v18[v43];
  *v44 = v42;
  v44[1] = v41;
  LOBYTE(v41) = sub_217009C74();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  sub_21678818C(v18, v22, &qword_27CABE828, &qword_217030600);
  OUTLINED_FUNCTION_4_53();
  v46 = &v22[v45];
  *v46 = v41;
  OUTLINED_FUNCTION_5_51(v46);
  sub_21700B3B4();
  sub_217008BB4();
  sub_21678818C(v22, v26, &qword_27CABE830, &qword_217030608);
  OUTLINED_FUNCTION_4_53();
  memcpy(&v26[v47], __src, 0x70uLL);
  v48 = v66;
  sub_21678818C(v26, v66, &qword_27CABE838, &qword_217030610);
  OUTLINED_FUNCTION_4_53();
  *(v48 + v49) = v39 & 1;
  OUTLINED_FUNCTION_4_53();
  v50 = v65;
  v52 = v65 + v51;
  v53 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  (*(v54 + 104))(v52, v53);
  *(v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C00, &unk_217018260) + 36)) = 256;
  sub_21678818C(v48, v50, &qword_27CABE840, &qword_217030618);
  LOBYTE(v52) = sub_217009C94();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v55 = v69;
  sub_21678818C(v50, v69, &qword_27CABE848, &qword_217030620);
  OUTLINED_FUNCTION_4_53();
  v57 = (v55 + v56);
  *v57 = v52;
  OUTLINED_FUNCTION_5_51(v57);
  LOBYTE(v52) = sub_217009CB4();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v58 = v55;
  v59 = v70;
  sub_21678818C(v58, v70, &qword_27CABE850, &qword_217030628);
  v60 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE870, &qword_2170306E0) + 36));
  *v60 = v52;
  OUTLINED_FUNCTION_5_51(v60);
}

uint64_t sub_2169914EC(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE8B8, &qword_217030770);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE8C0, &qword_217030778);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE8C8, &qword_217030780);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  if (a2)
  {
    v13 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE8D0, &unk_217030788) + 36)];
    sub_21700B2B4();
    v14 = sub_217009C84();
    v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B20, &qword_2170180F0) + 36)] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE8D8, &qword_217030798);
    (*(*(v15 - 8) + 16))(v6, a1, v15);
    KeyPath = swift_getKeyPath();
    v17 = &v6[*(v4 + 36)];
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9278, &qword_21701C850) + 28);
    v19 = *MEMORY[0x277CDF3D0];
    v20 = sub_2170080D4();
    (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
    *v17 = KeyPath;
    sub_2166A6E54(v6, v9, &qword_27CABE8B8, &qword_217030770);
    swift_storeEnumTagMultiPayload();
    sub_216991F4C();
    sub_216992030();
    sub_217009554();
    v21 = v6;
    v22 = &qword_27CABE8B8;
    v23 = &qword_217030770;
  }

  else
  {
    v24 = sub_21700AC54();
    v25 = sub_217009C84();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE8D8, &qword_217030798);
    (*(*(v26 - 8) + 16))(v12, a1, v26);
    v27 = &v12[*(v10 + 36)];
    *v27 = v24;
    v27[8] = v25;
    sub_2166A6E54(v12, v9, &qword_27CABE8C8, &qword_217030780);
    swift_storeEnumTagMultiPayload();
    sub_216991F4C();
    sub_216992030();
    sub_217009554();
    v21 = v12;
    v22 = &qword_27CABE8C8;
    v23 = &qword_217030780;
  }

  return sub_216697664(v21, v22, v23);
}

unint64_t sub_21699188C()
{
  result = qword_27CABE858;
  if (!qword_27CABE858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C48, &qword_217030690);
    sub_216991944();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE858);
  }

  return result;
}

unint64_t sub_216991944()
{
  result = qword_27CABE860;
  if (!qword_27CABE860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE868, &unk_217030698);
    sub_2167C4D74();
    sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE860);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BackgroundViewModifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216991B08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_216991B8C()
{
  result = qword_27CABE888;
  if (!qword_27CABE888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE848, &qword_217030620);
    sub_216991C44();
    sub_2166D9530(&qword_27CAB7BF8, &qword_27CAB7C00, &unk_217018260, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE888);
  }

  return result;
}

unint64_t sub_216991C44()
{
  result = qword_27CABE890;
  if (!qword_27CABE890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE840, &qword_217030618);
    sub_216991CD0();
    sub_216991EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE890);
  }

  return result;
}

unint64_t sub_216991CD0()
{
  result = qword_27CABE898;
  if (!qword_27CABE898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE838, &qword_217030610);
    sub_216991D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE898);
  }

  return result;
}

unint64_t sub_216991D5C()
{
  result = qword_27CABE8A0;
  if (!qword_27CABE8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE830, &qword_217030608);
    sub_216991DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE8A0);
  }

  return result;
}

unint64_t sub_216991DE8()
{
  result = qword_27CABE8A8;
  if (!qword_27CABE8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE828, &qword_217030600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C48, &qword_217030690);
    sub_21699188C();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE8A8);
  }

  return result;
}

unint64_t sub_216991EDC()
{
  result = qword_27CABE8B0;
  if (!qword_27CABE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE8B0);
  }

  return result;
}

unint64_t sub_216991F4C()
{
  result = qword_27CABE8E0;
  if (!qword_27CABE8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE8C8, &qword_217030780);
    sub_2166D9530(&qword_27CABE8E8, &qword_27CABE8D8, &qword_217030798, MEMORY[0x277CE04B0]);
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8, &qword_217019E70, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE8E0);
  }

  return result;
}

unint64_t sub_216992030()
{
  result = qword_27CABE8F0;
  if (!qword_27CABE8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE8B8, &qword_217030770);
    sub_2169920E8();
    sub_2166D9530(&qword_280E2A738, &qword_27CAB9278, &qword_21701C850, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE8F0);
  }

  return result;
}

unint64_t sub_2169920E8()
{
  result = qword_27CABE8F8;
  if (!qword_27CABE8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE8D0, &unk_217030788);
    sub_2166D9530(&qword_27CABE8E8, &qword_27CABE8D8, &qword_217030798, MEMORY[0x277CE04B0]);
    sub_2166D9530(&qword_27CAB7B18, &qword_27CAB7B20, &qword_2170180F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE8F8);
  }

  return result;
}

unint64_t sub_2169921CC()
{
  result = qword_27CABE900;
  if (!qword_27CABE900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE908, &unk_2170307D0);
    sub_216991F4C();
    sub_216992030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE900);
  }

  return result;
}

uint64_t sub_216992258(void *a1)
{
  v159 = *a1;
  v2 = v159;
  v157 = sub_21700CC74();
  OUTLINED_FUNCTION_1();
  v166 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  v155 = sub_21700D9F4();
  OUTLINED_FUNCTION_1();
  v154 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47_1();
  v153 = v9;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v150 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v16);
  v143 = sub_21700DA84();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_6_0();
  v142 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7F8, &qword_217050F10);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_8_0(&v128 - v19);
  v173 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v163 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_47_1();
  v172 = v23;
  v165 = sub_21700DC84();
  OUTLINED_FUNCTION_1();
  v164 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v29);
  v30 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v161 = v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47_1();
  v171 = v36;
  v37 = v2[11];
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = &v128 - v40;
  v137 = a1[3];
  v135 = type metadata accessor for SubscriptionStatusCoordinator();
  swift_allocObject();

  v170 = sub_2166A62EC(v42);
  v168 = a1;
  sub_216681B64((a1 + 12), &v177, &qword_27CAB6A50, &qword_217013DB0);
  if (v178)
  {
    v43 = v30;
    sub_2166A0F18(&v177, v180);
  }

  else
  {
    v43 = v30;
    v45 = type metadata accessor for MusicKitPlayer();
    swift_allocObject();
    v46 = sub_216A1A3E4();
    v180[3] = v45;
    v180[4] = &off_282922F18;
    v180[0] = v46;
    if (v178)
    {
      sub_216993614(&v177);
    }
  }

  type metadata accessor for ConcreteAppDestinationPageProvider(0, v37, v159[13], v44);
  v47 = v168;
  v48 = *(v38 + 16);
  v140 = v47 + *(*v47 + 200);
  v48(v41);
  v169 = sub_2166863B0();
  v138 = type metadata accessor for AgeVerificationManager();
  swift_allocObject();
  v160 = sub_2166AD6C4();
  sub_216685F4C(0, &qword_280E29B78, 0x277CEE3F8);
  v49 = v47[2];
  v50 = v49[2];
  v51 = v49[3];
  v53 = v49[4];
  v52 = v49[5];
  v54 = qword_280E2B740;
  sub_21700DF14();
  sub_21700DF14();
  if (v54 != -1)
  {
    swift_once();
  }

  v55 = qword_280E73A78;
  v132 = qword_280E73A78;
  v56 = sub_2166A3488(v50, v51, v53, v52, v55);
  v57 = v171;
  v144 = v56;
  sub_21700DF74();
  v58 = sub_21700DBB4();
  v60 = v161 + 16;
  v59 = *(v161 + 16);
  v61 = v43;
  v62 = v57;
  v59(v34, v57, v61);
  v63 = v34;
  v64 = MEMORY[0x21CE9E9C0](v34, 0xD000000000000011, 0x8000000217082740);
  v65 = v61;
  v66 = v61;
  v67 = v59;
  v59(v63, v57, v66);
  v131 = objc_opt_self();
  v68 = [v131 ams_sharedAccountStore];
  v178 = sub_216685F4C(0, &qword_280E29D68, 0x277CB8F48);
  v179 = MEMORY[0x277D225B8];
  v130 = v178;
  *&v177 = v68;
  v69 = [objc_opt_self() mainBundle];
  v70 = v162;
  v158 = v63;
  sub_21700DC74();
  v178 = &type metadata for AccountMetricsFieldsProvider;
  v179 = sub_2166B9CF8();
  *&v177 = v170;
  v71 = qword_280E2A188;

  if (v71 != -1)
  {
    swift_once();
  }

  v72 = sub_21700DEA4();
  __swift_project_value_buffer(v72, qword_280E73A50);
  sub_21700DC64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v177);
  sub_2166BA038();
  (*(v164 + 16))(v27, v70, v165);
  v178 = &unk_28293C388;
  v179 = sub_2166BE144();
  v73 = swift_allocObject();
  *&v177 = v73;
  v73[5] = &unk_28293C310;
  v73[6] = sub_21699367C();
  v73[7] = *(v137 + 16);
  v175 = v58;
  v176 = MEMORY[0x277D221A8];
  v174 = v64;
  v141 = v64;
  v74 = v139;
  v167 = v65;
  v67(v139, v62, v65);
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v65);

  v75 = v172;
  sub_21700D544();
  v129 = *(v163 + 16);
  v76 = v136;
  v133 = v67;
  v129(v136, v75, v173);
  v77 = sub_21700D844();
  OUTLINED_FUNCTION_91_1(v77);
  v78 = sub_21700D834();
  v134 = v60;
  v79 = v78;
  sub_2166C25D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE910, &qword_2170307F0);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_2170307E0;
  v67(v158, v171, v167);
  sub_21700CC54();
  v129(v76, v172, v173);
  sub_21700CC54();
  v139 = v79;
  *&v177 = v79;

  sub_21700CC54();
  sub_216685F4C(0, &qword_280E29D38, 0x277CBEBD0);
  *&v177 = [objc_opt_self() standardUserDefaults];
  sub_21700CC54();
  *&v177 = [v131 ams_sharedAccountStore];
  sub_21700CC54();
  *&v177 = v170;

  sub_21700CC54();
  type metadata accessor for Persistence();
  swift_allocObject();
  v80 = sub_2166A8B10();
  OUTLINED_FUNCTION_4_54(v80);
  *&v177 = [objc_allocWithZone(type metadata accessor for RestrictionsController()) init];
  sub_21700CC54();
  type metadata accessor for SubscriptionContentRestrictionController();
  swift_allocObject();
  v81 = sub_2166A96D4();
  OUTLINED_FUNCTION_4_54(v81);
  sub_216685F4C(0, &qword_280E29D60, 0x277CEE620);
  *&v177 = v132;
  sub_21700CC54();
  type metadata accessor for DeepLinkInfoProvider();
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_217016ED0;
  *(v82 + 32) = 0;
  *&v177 = v82;
  OUTLINED_FUNCTION_5_52();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30, &unk_217013D70);
  sub_2167B7D58(v180, &v177);
  OUTLINED_FUNCTION_5_52();
  type metadata accessor for PlaybackPresenter(0);
  sub_2167B7D58(v180, &v177);
  swift_allocObject();

  v84 = sub_2166CECC4(v83, &v177);
  OUTLINED_FUNCTION_4_54(v84);
  sub_21700DA74();
  sub_21700CC54();
  *&v177 = v160;

  sub_21700CC54();
  v85 = type metadata accessor for ExplicitBadgingPresenter(0);
  OUTLINED_FUNCTION_91_1(v85);

  *&v177 = sub_2166B4640(v86);
  OUTLINED_FUNCTION_7_50(v177, &v177);
  type metadata accessor for AppDestinationPageProviderBox();
  *&v177 = v169;

  OUTLINED_FUNCTION_5_52();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30, &unk_2170198C0);
  v87 = v159[10];
  v88 = v159[12];
  nullsub_1();
  v90 = v89;
  v178 = _s11PageContextVMa(0, v87, v88, v91);
  v179 = &off_282927E48;
  *&v177 = v90;
  swift_unknownObjectRetain();
  sub_21700CC54();
  type metadata accessor for NoticeManager();
  v92 = swift_allocObject();
  *(v92 + 16) = 0;
  *&v177 = v92;
  sub_21700CC54();
  v93 = v145;
  sub_2166CC8A4(v145);
  v94 = v146;
  sub_2166D65F4();
  v95 = *(v150 + 8);
  v96 = v151;
  v95(v93, v151);
  v97 = v147;
  sub_2166D9718();
  v95(v94, v96);
  v98 = v149;
  sub_2166DC4CC();
  v95(v97, v96);
  sub_2166DF938(0, v148);
  v95(v98, v96);
  sub_21700CC54();
  v99 = type metadata accessor for PushNotifications(0);
  v100 = v158;
  v101 = v171;
  v133(v158, v171, v167);
  v102 = objc_allocWithZone(v99);
  v103 = sub_2166B0518(v100);
  OUTLINED_FUNCTION_4_54(v103);
  type metadata accessor for MusicEntityAnnotationWrapper();
  v104 = v168;
  sub_216681B64((v168 + 17), &v177, &qword_27CAB9450, &qword_21701D5D8);
  v105 = swift_allocObject();
  OUTLINED_FUNCTION_1_88(v105);
  OUTLINED_FUNCTION_7_50(v106, v107);
  type metadata accessor for MusicPinsCoordinatorWrapper();
  sub_216681B64((v104 + 22), &v177, &qword_27CAB6A60, &unk_217013DC0);
  v108 = swift_allocObject();
  OUTLINED_FUNCTION_1_88(v108);
  OUTLINED_FUNCTION_7_50(v109, v110);
  type metadata accessor for SingConnectedStatusWrapper();
  sub_216681B64((v104 + 27), &v177, &qword_27CAB6A58, &qword_217013DB8);
  v111 = swift_allocObject();
  OUTLINED_FUNCTION_1_88(v111);
  sub_21700CC64();

  v112 = v153;
  sub_21700DA04();
  v113 = type metadata accessor for ObjectGraph(0);
  OUTLINED_FUNCTION_91_1(v113);
  v114 = v154;
  v115 = v155;
  (*(v154 + 16))(v152, v112, v155);
  sub_21700D464();
  (*(v114 + 8))(v112, v115);
  v116 = type metadata accessor for SocialGraphController(0);
  OUTLINED_FUNCTION_91_1(v116);
  *&v177 = sub_2166AE570();
  v117 = v156;
  OUTLINED_FUNCTION_7_50(v177, &v177);
  sub_21700D4A4();
  v118 = *(v166 + 8);
  v119 = v157;
  v118(v117, v157);
  type metadata accessor for TasteStateChangePublisher();
  v120 = swift_allocObject();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00, &qword_21701BD60);
  OUTLINED_FUNCTION_91_1(v121);
  v122 = sub_21700CC44();
  *(v120 + 16) = v122;
  *&v177 = v120;
  OUTLINED_FUNCTION_7_50(v122, &v177);
  sub_21700D4A4();

  v118(v117, v119);
  v123 = objc_allocWithZone(type metadata accessor for UserSocialProfileCoordinator(0));

  sub_2166B6BFC();
  v125 = v124;
  v126 = sub_216C0CB94(v124);

  (*(v163 + 8))(v172, v173);
  (*(v164 + 8))(v162, v165);
  (*(v161 + 8))(v101, v167);
  __swift_destroy_boxed_opaque_existential_1Tm(v180);
  return v126;
}

uint64_t sub_216993614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A50, &qword_217013DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21699367C()
{
  result = qword_280E46038;
  if (!qword_280E46038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46038);
  }

  return result;
}

uint64_t sub_2169936D0()
{
  sub_216993748();
  sub_217009104();
  return v1;
}

unint64_t sub_216993748()
{
  result = qword_27CABE938;
  if (!qword_27CABE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE938);
  }

  return result;
}

void sub_21699379C(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  v5 = &v66[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v66[-v7];
  v9 = type metadata accessor for ReplayPageBackgroundView(0);
  OUTLINED_FUNCTION_1();
  v68 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v14 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE960, &qword_217030A48);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v66[-v16];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE968, &qword_217030A50);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v76 = &v66[-v19];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE970, &qword_217030A58);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v77 = &v66[-v21];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE978, &unk_217030A60);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v73 = &v66[-v23];
  sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v80 = v25;
  v81 = v24;
  MEMORY[0x28223BE20](v24);
  v79 = &v66[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *(v1 + 32);

  v69 = v27;
  if ((v27 & 1) == 0)
  {
    sub_21700ED94();
    v28 = sub_217009C34();
    sub_217007BC4();

    v29 = v79;
    sub_2170090E4();
    OUTLINED_FUNCTION_3_71();

    (*(v80 + 8))(v29, v81);
  }

  v30 = sub_216C2F030();

  v31 = v2 + *(v9 + 36);
  v67 = *(v2 + 16);
  sub_216993ED8(v31, v67, v30);
  v33 = v32;
  v34 = *(v2 + 33);
  v35 = *(v2 + 34);
  sub_2169982E0(v2, &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v36 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v37 = swift_allocObject();
  sub_216998344(v14, v37 + v36);
  v82 = v34;
  sub_21700AEA4();
  v38 = *(&v83 + 1);
  *v17 = v83;
  *(v17 + 1) = v38;
  v17[16] = v35;
  *(v17 + 3) = sub_2169983A8;
  *(v17 + 4) = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE980, &qword_217030A70);
  v40 = sub_2170061E4();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v40);
  sub_2166A6E54(v8, v5, &qword_27CAB74E8, &qword_217030A40);
  sub_21700AEA4();
  sub_216697664(v8, &qword_27CAB74E8, &qword_217030A40);
  v41 = &v17[*(v39 + 48)];
  v82 = 0;
  sub_21700AEA4();
  v42 = *(&v83 + 1);
  *v41 = v83;
  *(v41 + 1) = v42;
  v44 = *v2;
  v43 = *(v2 + 8);
  v45 = &v17[*(v70 + 52)];
  *v45 = v44;
  v45[1] = v43;

  sub_21700DF14();
  sub_21700DF14();
  v46 = v69;
  if ((v69 & 1) == 0)
  {
    sub_21700ED94();
    v47 = sub_217009C34();
    OUTLINED_FUNCTION_11_39(v47, &dword_216679000, v48, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    v49 = v79;
    sub_2170090E4();
    OUTLINED_FUNCTION_3_71();

    (*(v80 + 8))(v49, v81);
  }

  v50 = sub_216C2F030();

  v51 = v33;
  if ((v67 & 1) == 0)
  {

    if ((v46 & 1) == 0)
    {
      sub_21700ED94();
      v52 = sub_217009C34();
      OUTLINED_FUNCTION_11_39(v52, &dword_216679000, v53, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      v54 = v79;
      sub_2170090E4();
      OUTLINED_FUNCTION_3_71();

      (*(v80 + 8))(v54, v81);
    }

    v55 = sub_216C2F0B0();

    v51 = -v55;
  }

  v56 = v76;
  sub_21678818C(v17, v76, &qword_27CABE960, &qword_217030A48);
  v57 = &v56[*(v72 + 36)];
  *v57 = v50 * 0.5;
  v57[1] = v51;
  sub_21700B3B4();
  sub_2170083C4();
  v58 = v56;
  v59 = v77;
  sub_21678818C(v58, v77, &qword_27CABE968, &qword_217030A50);
  v60 = &v59[*(v74 + 36)];
  v61 = v84;
  *v60 = v83;
  v60[1] = v61;
  v60[2] = v85;
  v62 = sub_21700B414();
  v63 = v59;
  v64 = v73;
  sub_21678818C(v63, v73, &qword_27CABE970, &qword_217030A58);
  v65 = &v64[*(v75 + 36)];
  *v65 = v62;
  v65[1] = v44;
  v65[2] = v43;
  sub_21678818C(v64, v78, &qword_27CABE978, &unk_217030A60);
  sub_21700DF14();
  sub_21700DF14();
}

double (*sub_216993ED8(uint64_t a1, char a2, double a3))@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  result = sub_216995320(a1, a2 & 1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    v10 = 0;
    v11 = 0.0;
    while (1)
    {
      (v8)(&v18, v10, a3);
      if (v19)
      {
        break;
      }

      width = v18.size.width;
      height = v18.size.height;
      x = v18.origin.x;
      y = v18.origin.y;
      v21.origin.x = 0.0;
      v21.origin.y = 0.0;
      v21.size.width = 0.0;
      v21.size.height = 0.0;
      if (CGRectEqualToRect(v18, v21))
      {
        break;
      }

      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      MaxY = CGRectGetMaxY(v20);
      if (MaxY > v11)
      {
        v11 = MaxY;
      }

      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        break;
      }
    }

    sub_21699456C(a1, a2 & 1);
    return sub_21667E91C(v8, v9);
  }

  return result;
}

uint64_t sub_216993FF4(uint64_t a1, double a2)
{
  v4 = sub_2170091B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReplayPageBackgroundView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2169982E0(a1, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_216998344(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  (*(v5 + 104))(v7, *MEMORY[0x277CE00F0], v4);
  return sub_21700AF64();
}

uint64_t sub_2169941C4(uint64_t *a1, uint64_t a2, double a3, double a4, double a5)
{
  v9 = sub_2170088A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(type metadata accessor for ReplayPageBackgroundView(0) + 36);
  v14 = *(a2 + 16);
  sub_216994328(a2 + v13, v14);
  sub_217008894();
  sub_2170088F4();
  (*(v10 + 8))(v12, v9);
  v15 = sub_21699456C(a2 + v13, v14);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = v15;
  v24 = v16;
  return sub_217008904();
}

double sub_216994328(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE9B8, &qword_217030A98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v11 = *(v10 + 56);
  sub_2166A6E54(a1, &v19 - v8, &qword_27CAB8600, &qword_217020AD0);
  v9[v11] = a2 & 1;
  if (a2)
  {
    sub_216697664(v9, &qword_27CAB8600, &qword_217020AD0);
    return 70.0;
  }

  v13 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v13) != 1)
  {
    sub_2166A6E54(v9, v6, &qword_27CAB8600, &qword_217020AD0);
    v17 = *(v13 - 8);
    v18 = (*(v17 + 88))(v6, v13);
    if (v18 == *MEMORY[0x277CE0558])
    {
      sub_216697664(v9, &qword_27CAB8600, &qword_217020AD0);
      return 50.0;
    }

    if (v18 == *MEMORY[0x277CE0560])
    {
      v14 = &qword_27CAB8600;
      v15 = &qword_217020AD0;
      goto LABEL_5;
    }

    (*(v17 + 8))(v6, v13);
  }

  v14 = &qword_27CABE9B8;
  v15 = &qword_217030A98;
LABEL_5:
  sub_216697664(v9, v14, v15);
  return 60.0;
}

double sub_21699456C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE9B8, &qword_217030A98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v11 = *(v10 + 56);
  sub_2166A6E54(a1, &v19 - v8, &qword_27CAB8600, &qword_217020AD0);
  v9[v11] = a2 & 1;
  if (a2)
  {
    sub_216697664(v9, &qword_27CAB8600, &qword_217020AD0);
    return 140.0;
  }

  v13 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v13) != 1)
  {
    sub_2166A6E54(v9, v6, &qword_27CAB8600, &qword_217020AD0);
    v17 = *(v13 - 8);
    v18 = (*(v17 + 88))(v6, v13);
    if (v18 == *MEMORY[0x277CE0558])
    {
      sub_216697664(v9, &qword_27CAB8600, &qword_217020AD0);
      return 100.0;
    }

    if (v18 == *MEMORY[0x277CE0560])
    {
      v14 = &qword_27CAB8600;
      v15 = &qword_217020AD0;
      goto LABEL_5;
    }

    (*(v17 + 8))(v6, v13);
  }

  v14 = &qword_27CABE9B8;
  v15 = &qword_217030A98;
LABEL_5:
  sub_216697664(v9, v14, v15);
  return 120.0;
}

void sub_2169947B4(uint64_t *a1, uint64_t *a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7)
{
  v56 = a1;
  v55 = sub_2170088C4();
  v12 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v53 - v15;
  v17 = sub_2170098A4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v77 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2170090F4();
  v72 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  MEMORY[0x28223BE20](v76);
  v22 = &v53 - v21;
  v23 = sub_2170080D4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v75 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  v27 = *(sub_216995038() + 16);

  v74 = v27;
  if (v27)
  {
    v28 = type metadata accessor for ReplayPageBackgroundView(0);
    v29 = v18;
    v30 = 0;
    v31 = *(v28 + 36);
    v73 = *(v28 + 40);
    v70 = v31;
    v64 = (v72 + 1);
    v63 = (v24 + 32);
    v72 = (v24 + 88);
    v58 = (v24 + 8);
    v61 = (v29 + 32);
    v32 = *(v26 + 16);
    v71 = *MEMORY[0x277CDF3D0];
    v62 = *MEMORY[0x277CDF3C0];
    v60 = *MEMORY[0x277CE0558];
    v59 = (v29 + 104);
    v69 = (v29 + 8);
    v57 = v32;
    if (!v32)
    {
      a7 = a6;
    }

    v53 = (v12 + 8);
    v68 = v23;
    v65 = v17;
    while (1)
    {
      sub_2166A6E54(v26 + v73, v22, &qword_27CAB9128, &qword_21701C710);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = v75;
        (*v63)(v75, v22, v23);
      }

      else
      {
        sub_21700ED94();
        v34 = sub_217009C34();
        sub_217007BC4();

        v23 = v68;
        v35 = v66;
        sub_2170090E4();
        v33 = v75;
        swift_getAtKeyPath();
        v17 = v65;

        (*v64)(v35, v67);
      }

      v36 = (*v72)(v33, v23);
      if (v36 == v71)
      {
        break;
      }

      if (v36 == v62)
      {
        v37 = *v26;
        goto LABEL_12;
      }

      v37 = v26[1];
      v38 = *v58;
      sub_21700DF14();
      v38(v33, v23);
LABEL_14:
      if (v30 >= *(v37 + 16))
      {
        __break(1u);
        return;
      }

      if (qword_27CAB5B50 != -1)
      {
        swift_once();
      }

      v39 = off_27CABE918;
      sub_2166A6E54(v26 + v70, v16, &qword_27CAB8600, &qword_217020AD0);
      if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
      {
        (*v59)(v77, v60, v17);
        if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
        {
          sub_216697664(v16, &qword_27CAB8600, &qword_217020AD0);
        }
      }

      else
      {
        (*v61)(v77, v16, v17);
      }

      if (v39[2] && (v40 = sub_216E68488(), (v41 & 1) != 0))
      {
        v42 = *(v39[7] + 8 * v40);
        v43 = *v69;
        sub_21700DF14();
        v43(v77, v17);
        if (*(v42 + 16) && (v44 = sub_216E68424(v57), (v45 & 1) != 0))
        {
          v46 = *(*(v42 + 56) + 16 * v44);

          v82 = a3;
          v80 = v30;
          v46(v78, &v82, &v80);

          if (v79)
          {
          }

          else
          {
            v47 = v78[0];
            v48 = v78[1];
            v49 = v78[2];
            v50 = v78[3];
            if (v30 == 1)
            {
              v51 = a5;
            }

            else
            {
              v51 = 0.0;
            }

            CGRectOffset(*&v47, v51, a7);
            sub_217009F74();
            v52 = v54;
            sub_2170088B4();
            sub_217008884();

            sub_216998500(&v81);
            (*v53)(v52, v55);
          }

          v23 = v68;
        }

        else
        {
        }
      }

      else
      {

        (*v69)(v77, v17);
      }

      if (v74 == ++v30)
      {
        return;
      }
    }

    v37 = v26[1];
LABEL_12:
    sub_21700DF14();
    goto LABEL_14;
  }
}

uint64_t sub_216995038()
{
  v1 = sub_2170090F4();
  v17 = *(v1 - 8);
  v18 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = sub_2170080D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplayPageBackgroundView(0);
  sub_2166A6E54(v0 + *(v11 + 40), v6, &qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_21700ED94();
    v12 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v17 + 8))(v3, v18);
  }

  v13 = (*(v8 + 88))(v10, v7);
  if (v13 == *MEMORY[0x277CDF3D0])
  {
    v14 = v0[1];
  }

  else
  {
    if (v13 != *MEMORY[0x277CDF3C0])
    {
      v14 = v0[1];
      v15 = *(v8 + 8);
      sub_21700DF14();
      v15(v10, v7);
      return v14;
    }

    v14 = *v0;
  }

  sub_21700DF14();
  return v14;
}

double (*sub_216995320(uint64_t a1, char a2))@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_2170098A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CAB5B50 != -1)
  {
    swift_once();
  }

  v11 = off_27CABE918;
  sub_2166A6E54(a1, v6, &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x277CE0558], v7);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_216697664(v6, &qword_27CAB8600, &qword_217020AD0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v12 = sub_2169353F0(v10, v11);
  (*(v8 + 8))(v10, v7);
  if (!v12)
  {
    return 0;
  }

  v13 = sub_21693543C(a2 & 1, v12);
  v15 = v14;

  if (!v13)
  {
    return 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  return sub_2169985A8;
}

uint64_t sub_216995594()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEB4();
  return v1;
}

uint64_t sub_216995648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = *(a1 - 8);
  v56 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v55 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009994();
  v6 = *(a1 + 16);
  v7 = a1;
  v60 = a1;
  sub_216998AB4(&qword_27CABEA80, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
  sub_217008334();
  sub_217009564();
  v8 = sub_21700AD94();
  v57 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v9;
  v48 = v8;
  v10 = sub_2170089F4();
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v61 = &v40 - v11;
  v12 = *(v7 + 24);
  v74 = v12;
  WitnessTable = swift_getWitnessTable();
  v73 = v12;
  v71 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v69 = v46;
  v70 = MEMORY[0x277CE0790];
  v50 = v10;
  v49 = swift_getWitnessTable();
  v65 = v10;
  v66 = MEMORY[0x277D839B0];
  v67 = v49;
  v68 = MEMORY[0x277D839C8];
  v52 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v47 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v51 = &v40 - v15;
  v44 = v6;
  v62 = v6;
  v63 = v12;
  v43 = v12;
  v42 = v2;
  v64 = v2;
  sub_21700AD84();
  v16 = v4;
  v45 = *(v4 + 16);
  v17 = v55;
  v18 = v2;
  v19 = v60;
  v45(v55, v18, v60);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  *(v21 + 24) = v12;
  v22 = *(v16 + 32);
  v22(v21 + v20, v17, v19);
  v23 = v48;
  v24 = v41;
  sub_21700AAF4();

  (*(v57 + 8))(v24, v23);
  LOBYTE(v65) = *(v42 + 16);
  v25 = v60;
  (v45)(v17);
  v26 = swift_allocObject();
  v27 = v43;
  *(v26 + 16) = v44;
  *(v26 + 24) = v27;
  v22(v26 + v20, v17, v25);
  v28 = v50;
  v29 = MEMORY[0x277D839B0];
  v30 = v49;
  v31 = MEMORY[0x277D839C8];
  OUTLINED_FUNCTION_10_4();
  v32 = v47;
  v33 = v30;
  v34 = v61;
  sub_21700AB04();

  (*(v58 + 8))(v34, v28);
  v65 = v28;
  v66 = v29;
  v67 = v33;
  v68 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v51;
  v37 = OpaqueTypeMetadata2;
  sub_2166C24DC(v32, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v38 = *(v54 + 8);
  v38(v32, v37);
  sub_2166C24DC(v36, v37, OpaqueTypeConformance2);
  return (v38)(v36, v37);
}

uint64_t sub_216995D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v59 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v49 - v10;
  v14 = type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView(0, v11, v12, v13);
  v56 = *(v14 - 8);
  v52 = *(v56 + 64);
  MEMORY[0x28223BE20](v14);
  v53 = &v49 - v15;
  v16 = sub_217009994();
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_216998AB4(&qword_27CABEA80, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
  v55 = v16;
  v50 = v19;
  v20 = sub_217008334();
  v57 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v51 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v54 = &v49 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v49 - v25;
  v27 = sub_217009564();
  v61 = *(v27 - 8);
  v62 = v27;
  MEMORY[0x28223BE20](v27);
  v60 = &v49 - v28;
  v29 = a1;
  if ((sub_216995594() & 1) != 0 && ((__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0, &unk_217030AA0), sub_21700AEB4(), v30 = sub_2170061E4(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v30), sub_216697664(v26, &qword_27CAB74E8, &qword_217030A40), EnumTagSinglePayload != 1) || (v32 = (a1 + *(v14 + 48)), v33 = *v32, v34 = *(v32 + 1), v66 = v33, v67 = v34, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920), sub_21700AEB4(), v65 == 1)))
  {
    sub_217009984();
    v35 = v56;
    v36 = v53;
    (*(v56 + 16))(v53, v29, v14);
    v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = a2;
    *(v38 + 24) = a3;
    (*(v35 + 32))(v38 + v37, v36, v14);
    v39 = v51;
    sub_216996784(v18, sub_216998AFC, v38, v55, a2, v50, a3);
    v64 = a3;
    WitnessTable = swift_getWitnessTable();
    v41 = v54;
    sub_2166C24DC(v39, v20, WitnessTable);
    v42 = *(v57 + 8);
    v42(v39, v20);
    sub_2166C24DC(v41, v20, WitnessTable);
    v43 = v60;
    sub_2166C2718();
    v42(v39, v20);
    v42(v41, v20);
  }

  else
  {
    (*(a1 + 24))(0.0);
    v44 = v58;
    sub_2166C24DC(v8, a2, a3);
    v45 = *(v59 + 8);
    v45(v8, a2);
    sub_2166C24DC(v44, a2, a3);
    v71 = a3;
    swift_getWitnessTable();
    v43 = v60;
    sub_2166C2CB0();
    v45(v8, a2);
    v45(v44, a2);
  }

  v70 = a3;
  v68 = swift_getWitnessTable();
  v69 = a3;
  v46 = v62;
  v47 = swift_getWitnessTable();
  sub_2166C24DC(v43, v46, v47);
  return (*(v61 + 8))(v43, v46);
}

uint64_t sub_2169963E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v16 = sub_21699655C(a2, v13, v14, v15);
  if (v16 > 1.0)
  {
    v16 = 1.0;
  }

  v17 = cos(v16 * 3.14159265);
  (*(a2 + 24))((v17 * 0.5 + 0.5) * 250.0);
  sub_2166C24DC(v9, a3, a4);
  v18 = *(v7 + 8);
  v18(v9, a3);
  sub_2166C24DC(v12, a3, a4);
  return (v18)(v12, a3);
}

double sub_21699655C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_2170061E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView(0, a3, a4, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0, &unk_217030AA0);
  sub_21700AEB4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_216697664(v8, &qword_27CAB74E8, &qword_217030A40);
    return 0.0;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEA88, qword_217030B30);
    sub_217008304();
    sub_217006114();
    v17 = v18;
    v19 = *(v10 + 8);
    v19(v12, v9);
    v19(v15, v9);
  }

  return v17;
}

uint64_t sub_216996784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v15);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;
  sub_217008324();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_2169968DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7];
  v10 = type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView(0, a2, a3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0, &unk_217030AA0);
  sub_21700AEB4();
  v11 = sub_2170061E4();
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v8, 1, v11);
  result = sub_216697664(v8, &qword_27CAB74E8, &qword_217030A40);
  if (a3 == 1)
  {
    result = sub_216995594();
    if ((result & 1) != 0 && (*(a1 + 16) & 1) == 0)
    {
      v13 = (a1 + *(v10 + 48));
      v14 = *v13;
      v15 = *(v13 + 1);
      v16[16] = v14;
      v17 = v15;
      v16[15] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
      return sub_21700AEC4();
    }
  }

  return result;
}

void sub_216996A38(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_21700B5A4();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10);
  v56 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21700B5E4();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a4;
  v51 = a5;
  v14 = type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView(0, a4, a5, v13);
  v49 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v46 - v15;
  v60 = sub_21700B604();
  v53 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v52 = v46 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v46 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v46 - v28;
  if ((*a1 & 1) == 0)
  {
    if (*a2)
    {
      if (sub_216995594())
      {
        v30 = (a3 + *(v14 + 48));
        v31 = *v30;
        v32 = *(v30 + 1);
        v47 = v31;
        LOBYTE(aBlock) = v31;
        v48 = v32;
        v62 = v32;
        v46[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
        sub_21700AEB4();
        if (v67 == 1)
        {
          v33 = *(v14 + 44);
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0, &unk_217030AA0);
          v46[2] = v33;
          v46[1] = v34;
          sub_21700AEB4();
          v35 = sub_2170061E4();
          LODWORD(v33) = __swift_getEnumTagSinglePayload(v29, 1, v35);
          sub_216697664(v29, &qword_27CAB74E8, &qword_217030A40);
          if (v33 == 1 && (sub_216995594() & 1) != 0)
          {
            sub_2170061A4();
            __swift_storeEnumTagSinglePayload(v26, 0, 1, v35);
            sub_2166A6E54(v26, v23, &qword_27CAB74E8, &qword_217030A40);
            sub_21700AEC4();
            sub_216697664(v26, &qword_27CAB74E8, &qword_217030A40);
            LOBYTE(aBlock) = v47;
            v62 = v48;
            LOBYTE(v67) = 0;
            sub_21700AEC4();
            sub_2166AF2EC();
            v48 = sub_21700EE84();
            sub_21700B5F4();
            v36 = v52;
            sub_21700B634();
            v53 = *(v53 + 8);
            (v53)(v18, v60);
            v37 = v49;
            (*(v49 + 16))(v16, a3, v14);
            v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
            v39 = swift_allocObject();
            v40 = v51;
            *(v39 + 16) = v50;
            *(v39 + 24) = v40;
            (*(v37 + 32))(v39 + v38, v16, v14);
            v65 = sub_216998A08;
            v66 = v39;
            aBlock = MEMORY[0x277D85DD0];
            v62 = 1107296256;
            v63 = sub_2169F0990;
            v64 = &block_descriptor_10;
            v41 = _Block_copy(&aBlock);

            v42 = v54;
            sub_21700B5C4();
            aBlock = MEMORY[0x277D84F90];
            sub_216998AB4(&qword_280E2A480, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
            sub_2166D9530(&qword_280E29E50, &unk_27CABC970, &unk_2170187C0, MEMORY[0x277D83970]);
            v43 = v56;
            v44 = v59;
            sub_21700F214();
            v45 = v48;
            MEMORY[0x21CE9FC70](v36, v42, v43, v41);
            _Block_release(v41);

            (*(v58 + 8))(v43, v44);
            (*(v55 + 8))(v42, v57);
            (v53)(v36, v60);
          }
        }
      }
    }
  }
}

uint64_t sub_21699711C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = sub_2170061E4();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView(0, a2, a3, v12);
  sub_2166A6E54(v10, v7, &qword_27CAB74E8, &qword_217030A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0, &unk_217030AA0);
  sub_21700AEC4();
  sub_216697664(v10, &qword_27CAB74E8, &qword_217030A40);
  return sub_2169955EC(0);
}

double sub_216997268@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, double *, uint64_t *)@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v11 = a4;
  v10 = a1;
  a2(v8, &v11, &v10);
  v5 = v9;
  result = *v8;
  v7 = v8[1];
  *a3 = v8[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;
  return result;
}

void *sub_2169972C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE988, &qword_217030A78);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE990, &qword_217030A80) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_217013D90;
  v4 = v3 + v2;
  v11 = v0[14];
  v5 = *MEMORY[0x277CE0558];
  v6 = sub_2170098A4();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE998, &qword_217030A88);
  sub_216998554();
  *(v4 + v11) = sub_21700E384();
  v8 = v4 + v1;
  v9 = v0[14];
  v7(v8, *MEMORY[0x277CE0560], v6);
  *(v8 + v9) = sub_21700E384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE9A8, &qword_217030A90);
  sub_216998AB4(&qword_27CABE9B0, MEMORY[0x277CE0570], MEMORY[0x277CE0580]);
  result = sub_21700E384();
  off_27CABE918 = result;
  return result;
}

double sub_2169974F0()
{
  OUTLINED_FUNCTION_5_53();
  sub_216997520(v0, v1, v2);
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v11, v14, v12, v15, v16).n128_u64[0];
  return result;
}

void sub_216997520(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1 == 2)
  {
    v5 = 0;
    v9 = a3 * 0.75;
    v6 = a3 * 0.4 + a3 * 0.75 * -0.35;
    v8 = vmulq_n_f64(xmmword_217030870, a3 * 0.75);
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v5 = 0;
    v9 = a3 * 0.85;
    v6 = a3 * 0.7 + a3 * 0.85 * -0.4;
    v8.f64[0] = a3 * 0.85 * 0.32;
    v8.f64[1] = v9;
LABEL_7:
    v7 = v9;
    goto LABEL_13;
  }

  if (a1)
  {
    if (qword_27CAB5B58 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_27CABE920);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_216679000, v11, v12, "Unexpected index passed in for gradient background: '%ld'", v13, 0xCu);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v7 = 0.0;
    v8 = 0uLL;
    v5 = 1;
    v6 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = a3 * 0.8 + a3 * 0.7 * -0.1;
    v7 = a3 * 0.7;
    v8 = vdupq_n_s64(COERCE_UNSIGNED_INT64(a3 * 0.7));
  }

LABEL_13:
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 24) = v7;
  *(a2 + 32) = v5;
}

double sub_2169976FC()
{
  OUTLINED_FUNCTION_5_53();
  sub_21699772C(v0, v1, v2);
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v11, v14, v12, v15, v16).n128_u64[0];
  return result;
}

void sub_21699772C(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1 == 2)
  {
    v5 = 0;
    v11 = a3 * 0.6;
    v6 = a3 * 0.6 * -1.1;
    *&v8 = a3 * 0.6 * 1.5;
    *(&v8 + 1) = v11;
    v9 = 5.0;
  }

  else if (a1 == 1)
  {
    v5 = 0;
    v9 = a3 * 0.5 * 0.6;
    v10 = a3 * 0.6;
    *&v8 = a3 * 0.6 * 1.4;
    *(&v8 + 1) = v10;
    v6 = 0.0;
  }

  else
  {
    if (a1)
    {
      if (qword_27CAB5B58 != -1)
      {
        swift_once();
      }

      v12 = sub_217007CA4();
      __swift_project_value_buffer(v12, qword_27CABE920);
      v13 = sub_217007C84();
      v14 = sub_21700ED84();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = a1;
        _os_log_impl(&dword_216679000, v13, v14, "Unexpected index passed in for gradient background: '%ld'", v15, 0xCu);
        MEMORY[0x21CEA1440](v15, -1, -1);
      }

      v8 = 0uLL;
      v5 = 1;
      v6 = 0.0;
    }

    else
    {
      v5 = 0;
      v6 = a3 * 0.7;
      v7 = a3 * 0.9;
      *&v8 = v7 + v7;
      *(&v8 + 1) = v7;
    }

    v9 = 0.0;
  }

  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  *(a2 + 32) = v5;
}

double sub_2169978DC()
{
  OUTLINED_FUNCTION_5_53();
  sub_21699790C(v0, v1, v2);
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v11, v14, v12, v15, v16).n128_u64[0];
  return result;
}

void sub_21699790C(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  switch(a1)
  {
    case 2:
      v5 = 0;
      v7 = vmulq_n_f64(xmmword_217030880, a3);
      v6 = a3 * 0.9;
      *&v8 = v6 * 3.0;
      goto LABEL_7;
    case 1:
      v5 = 0;
      v9.f64[0] = a3 * 0.6;
      *&v8 = a3 * 0.6 * 1.3;
      *(&v8 + 1) = a3 * 0.6;
      v9.f64[1] = a3;
      v7 = vmulq_f64(v9, xmmword_217030890);
      break;
    case 0:
      v5 = 0;
      v6 = a3 * 0.6;
      v7 = vmulq_n_f64(xmmword_2170308A0, v6);
      *&v8 = v6 + v6;
LABEL_7:
      *(&v8 + 1) = v6;
      break;
    default:
      if (qword_27CAB5B58 != -1)
      {
        swift_once();
      }

      v10 = sub_217007CA4();
      __swift_project_value_buffer(v10, qword_27CABE920);
      v11 = sub_217007C84();
      v12 = sub_21700ED84();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = a1;
        _os_log_impl(&dword_216679000, v11, v12, "Unexpected index passed in for gradient background: '%ld'", v13, 0xCu);
        MEMORY[0x21CEA1440](v13, -1, -1);
      }

      v7 = 0uLL;
      v5 = 1;
      v8 = 0uLL;
      break;
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v5;
}

double sub_216997AAC()
{
  OUTLINED_FUNCTION_5_53();
  sub_216997ADC(v0, v1, v2);
  *&result = OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v11, v14, v12, v15, v16).n128_u64[0];
  return result;
}

void sub_216997ADC(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>)
{
  if (a1 == 2)
  {
    v5 = 0;
    v10 = a3.f64[0] * 0.9;
    a3.f64[1] = a3.f64[0] * 0.9;
    __asm { FMOV            V2.2D, #0.5 }

    v7 = vmulq_f64(a3, _Q2);
    v8 = vmulq_n_f64(xmmword_2170308B0, v10);
  }

  else if (a1 == 1)
  {
    v5 = 0;
    v9 = a3.f64[0] * 0.5 * 1.05;
    v8 = vmulq_n_f64(xmmword_2170308C0, a3.f64[0] * 0.6);
    v7.f64[0] = 0.0;
    v7.f64[1] = v9;
  }

  else if (a1)
  {
    if (qword_27CAB5B58 != -1)
    {
      swift_once();
    }

    v16 = sub_217007CA4();
    __swift_project_value_buffer(v16, qword_27CABE920);
    v17 = sub_217007C84();
    v18 = sub_21700ED84();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = a1;
      _os_log_impl(&dword_216679000, v17, v18, "Unexpected index passed in for gradient background: '%ld'", v19, 0xCu);
      MEMORY[0x21CEA1440](v19, -1, -1);
    }

    v7 = 0uLL;
    v5 = 1;
    v8 = 0uLL;
  }

  else
  {
    v5 = 0;
    v6 = a3.f64[0] * 0.6;
    v7 = vmulq_n_f64(xmmword_2170308D0, a3.f64[0] * 0.6);
    v8 = vdupq_lane_s64(COERCE__INT64(v6 * 1.5), 0);
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v5;
}

uint64_t sub_216997C8C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABE920);
  __swift_project_value_buffer(v0, qword_27CABE920);
  return sub_217007C94();
}

uint64_t sub_216997D10@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a8;
  v31 = a7;
  v28 = a3;
  v29 = a2;
  v27 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEA88, qword_217030B30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  v21 = sub_217008314();
  v23 = *(v21 - 8);
  result = v21 - 8;
  if (*(v23 + 64) == v11)
  {
    (*(v10 + 16))(v13, v27, v9);
    v29(v13);
    (*(v10 + 8))(v13, v9);
    v24 = v31;
    sub_2166C24DC(v17, a5, v31);
    v25 = *(v14 + 8);
    v25(v17, a5);
    sub_2166C24DC(v20, a5, v24);
    return (v25)(v20, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for ReplayPageBackgroundView(uint64_t a1)
{
  result = qword_27CABE940;
  if (!qword_27CABE940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216997FD8(uint64_t a1)
{
  sub_21699812C(319, &qword_27CABE950, type metadata accessor for ReplayPageGeometry, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21699812C(319, &qword_280E2A850, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21699812C(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21699812C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ReplayPageBackgroundView.Position(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216998270()
{
  result = qword_27CABE958;
  if (!qword_27CABE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE958);
  }

  return result;
}

uint64_t sub_2169982E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayPageBackgroundView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216998344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayPageBackgroundView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169983A8(double a1)
{
  v3 = type metadata accessor for ReplayPageBackgroundView(0);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_216993FF4(v5, a1);
}

uint64_t sub_216998424(uint64_t *a1, double a2, double a3)
{
  v7 = *(type metadata accessor for ReplayPageBackgroundView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2169941C4(a1, v3 + v8, a2, a3, v9);
}

unint64_t sub_216998554()
{
  result = qword_27CABE9A0;
  if (!qword_27CABE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE9A0);
  }

  return result;
}

uint64_t sub_2169985B0(uint64_t a1)
{
  sub_216854FAC();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = sub_2166B0B84();
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_2169986A8(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_2169986A8(uint64_t a1)
{
  if (!qword_27CABEA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74E8, &qword_217030A40);
    v1 = sub_21700AEE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CABEA48);
    }
  }
}

unint64_t sub_21699870C()
{
  result = qword_27CABEA50;
  if (!qword_27CABEA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE978, &unk_217030A60);
    sub_2169987C4();
    sub_2166D9530(&qword_27CABEA70, &qword_27CABEA78, qword_217030AD8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEA50);
  }

  return result;
}

unint64_t sub_2169987C4()
{
  result = qword_27CABEA58;
  if (!qword_27CABEA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE970, &qword_217030A58);
    sub_216998850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEA58);
  }

  return result;
}

unint64_t sub_216998850()
{
  result = qword_27CABEA60;
  if (!qword_27CABEA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE968, &qword_217030A50);
    sub_2166D9530(&qword_27CABEA68, &qword_27CABE960, &qword_217030A48, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEA60);
  }

  return result;
}

void sub_216998970(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView(0, v7, v8, a4);
  OUTLINED_FUNCTION_36(v9);
  v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  sub_216996A38(a1, a2, v11, v7, v8);
}

uint64_t sub_216998A20(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView(0, v5, v6, a4);
  OUTLINED_FUNCTION_36(v7);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a1(v9, v5, v6);
}

uint64_t sub_216998AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216998AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView(0, v6, v7, a4);
  OUTLINED_FUNCTION_36(v8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_2169963E4(a1, v10, v6, v7);
}

uint64_t sub_216998BA4(uint64_t a1, uint64_t *a2, void *a3)
{
  v25 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAE0, &unk_217030B90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v24 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = (a1 + 32);
  v16 = MEMORY[0x277D84F90];
  v23 = a3;
  if (v14)
  {
    while (1)
    {
      v26 = *v15;
      sub_21700DF14();
      sub_21699B370(&v26, v25, a3, v8);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v8, 1, v24) == 1)
      {
        sub_216697664(v8, &qword_27CABEAE0, &unk_217030B90);
      }

      else
      {
        sub_21699C1AC(v8, v13, type metadata accessor for SocialContactsCoordinator.Contact);
        sub_21699C1AC(v13, v10, type metadata accessor for SocialContactsCoordinator.Contact);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216938A88(0, *(v16 + 16) + 1, 1, v16);
          v16 = v19;
        }

        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_216938A88(v17 > 1, v18 + 1, 1, v16);
          v16 = v20;
        }

        *(v16 + 16) = v18 + 1;
        sub_21699C1AC(v10, v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, type metadata accessor for SocialContactsCoordinator.Contact);
        a3 = v23;
      }

      ++v15;
      if (!--v14)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
  }

  return v16;
}

uint64_t sub_216998E64(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v27 = a4;
  v28 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAE0, &unk_217030B90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v26 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = *(a1 + 16);
  v16 = (a1 + 32);
  v17 = MEMORY[0x277D84F90];
  v25 = a2;
  if (v15)
  {
    while (1)
    {
      v29 = *v16;
      sub_21700DF14();
      sub_21699B7B8(a2, v28, v27, v9);
      if (v4)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v9, 1, v26) == 1)
      {
        sub_216697664(v9, &qword_27CABEAE0, &unk_217030B90);
      }

      else
      {
        sub_21699C1AC(v9, v14, type metadata accessor for SocialContactsCoordinator.Contact);
        sub_21699C1AC(v14, v11, type metadata accessor for SocialContactsCoordinator.Contact);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216938A88(0, *(v17 + 16) + 1, 1, v17);
          v17 = v20;
        }

        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_216938A88(v18 > 1, v19 + 1, 1, v17);
          v17 = v21;
        }

        *(v17 + 16) = v19 + 1;
        sub_21699C1AC(v11, v17 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19, type metadata accessor for SocialContactsCoordinator.Contact);
        a2 = v25;
      }

      ++v16;
      if (!--v15)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
  }

  return v17;
}

id sub_216999134(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v14 = sub_21700EE74();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  sub_21700EE44();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v10 = sub_21700B5E4();
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_7();
  v13 = OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_accessQueue;
  sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
  sub_21700B5C4();
  v19 = MEMORY[0x277D84F90];
  sub_2166AF330();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA810, &unk_217027550);
  sub_2166AF388();
  sub_21700F214();
  (*(v4 + 104))(v8, *MEMORY[0x277D85260], v14);
  *&v2[v13] = sub_21700EEA4();
  *&v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_matchedContacts] = 0;
  v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends] = 0;
  v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortNonOnboardedFriends] = 0;
  v11 = &v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler];
  *v11 = 0;
  v11[1] = 0;
  *&v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_contactStore] = a1;
  *&v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_objectGraph] = a2;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_2169993F8(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_accessQueue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21699C140;
  *(v7 + 24) = v6;
  v13[4] = sub_2168E4C64;
  v13[5] = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  OUTLINED_FUNCTION_1_89();
  v13[2] = v8;
  v13[3] = &block_descriptor_30;
  v9 = _Block_copy(v13);
  v10 = v2;
  sub_2167759F4(a1, a2);

  dispatch_sync(v5, v9);
  sub_21667E91C(a1, a2);
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21699956C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  v4 = *(a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  v5 = *(a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_2167759F4(a2, a3);

  return sub_21667E91C(v4, v5);
}

uint64_t sub_2169995C0()
{
  v0 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  type metadata accessor for SocialContactsCoordinator();

  sub_21700E294();
  sub_21700E284();
  sub_216890548();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2169F3E74();

  (*(v2 + 8))(v6, v0);
}

uint64_t sub_216999760()
{
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  return v1;
}

void sub_2169997C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (([Strong isCancelled] & 1) == 0)
    {
      sub_216999858(a1, a2, a3, a4);
    }
  }
}

void sub_216999858(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    sub_216999C70(a4);
    return;
  }

  if (a1 != 1)
  {
    v6 = sub_216999E9C(a1, a2);
    if (v6)
    {
      v7 = v6;
      if (a3)
      {
        v31 = MEMORY[0x277D84FA0];
        v32 = MEMORY[0x277D84FA0];
        sub_216935484();
        if (*(&v30 + 1) == 1)
        {
          v8 = &qword_27CABEAD0;
          v9 = &unk_217033EA0;
          v10 = &v29;
        }

        else
        {
          aBlock = v29;
          v26 = v30;
          if (*(&v30 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAD8, &qword_217030B88);
            if (swift_dynamicCast())
            {
              v12 = sub_21699A4D8(v24);

              v32 = sub_216E64414(v12);
            }

LABEL_19:
            sub_216935484();
            if (*(&v30 + 1) == 1)
            {
              v13 = &qword_27CABEAD0;
              v14 = &unk_217033EA0;
              p_aBlock = &v29;
            }

            else
            {
              aBlock = v29;
              v26 = v30;
              if (*(&v30 + 1))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAD8, &qword_217030B88);
                if (swift_dynamicCast())
                {
                  sub_21699A53C(v24, a3);
                  v17 = v16;

                  v31 = sub_216E64414(v17);
                }

                goto LABEL_26;
              }

              v13 = &unk_27CABF7A0;
              v14 = &unk_217014D20;
              p_aBlock = &aBlock;
            }

            sub_216697664(p_aBlock, v13, v14);
LABEL_26:
            v18 = *&v4[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_accessQueue];
            v19 = swift_allocObject();
            v19[2] = v4;
            v19[3] = &v32;
            v19[4] = &v31;
            v19[5] = v7;
            v20 = swift_allocObject();
            *(v20 + 16) = sub_21699BF40;
            *(v20 + 24) = v19;
            v27 = sub_2168E4C64;
            v28 = v20;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v26 = sub_2169993D0;
            *(&v26 + 1) = &block_descriptor_16;
            v21 = _Block_copy(&aBlock);
            v22 = v4;

            dispatch_sync(v18, v21);
            _Block_release(v21);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (isEscapingClosureAtFileLocation)
            {
              __break(1u);
            }

            else
            {
            }

            return;
          }

          v8 = &unk_27CABF7A0;
          v9 = &unk_217014D20;
          v10 = &aBlock;
        }

        sub_216697664(v10, v8, v9);
        goto LABEL_19;
      }
    }
  }

  sub_21699BEEC();
  v11 = swift_allocError();
  sub_216999C70(v11);
}

uint64_t sub_216999C70(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v23 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v4 = *&v1[OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_accessQueue];
  v5 = swift_allocObject();
  v5[2] = &v23;
  v5[3] = v1;
  v5[4] = &v22 + 1;
  v5[5] = &v22;
  v5[6] = &v20;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21699BED4;
  *(v6 + 24) = v5;
  aBlock[4] = sub_2166EFCD4;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_1_89();
  aBlock[2] = v7;
  aBlock[3] = &block_descriptor_11;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  dispatch_sync(v4, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v12 = v20;
    if (v20)
    {
      v13 = v21;
      v14 = HIBYTE(v22);
      v15 = v22;
      sub_2167759F4(v20, v21);
      v16 = sub_21700DF14();
      v12(v16, v14, v15, a1);
      sub_21667E91C(v12, v13);
    }

    if (a1)
    {
      v17 = sub_217005D24();
    }

    else
    {
      v17 = 0;
    }

    v18.receiver = v9;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, sel_finishWithError_, v17);

    sub_21667E91C(v20, v21);
  }

  return result;
}

uint64_t sub_216999E9C(unint64_t a1, uint64_t a2)
{
  if (a1 < 2 || !a2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF7A0, &unk_217014D20);
  v2 = sub_21700E384();
  sub_216934F28();
  if (!*&v28[24])
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF9E0, &qword_217029F30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_216935484();
  if (*&v28[24] == 1)
  {
    sub_216697664(v28, &qword_27CABEAD0, &unk_217033EA0);
    v3 = sub_2166AF66C(0xD00000000000001ALL, 0x8000000217085860);
    if (v4)
    {
      v5 = v3;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD210, &qword_217029F20);
      sub_21700F554();

      v6 = (*(v2 + 56) + 32 * v5);
      v7 = v6[1];
      v26 = *v6;
      v27 = v7;
      sub_21700F574();
    }

    else
    {
      v26 = 0uLL;
      *&v27 = 0;
      *(&v27 + 1) = 1;
    }

    sub_216697664(&v26, &qword_27CABEAD0, &unk_217033EA0);
  }

  else
  {
    v26 = *v28;
    v27 = *&v28[16];
    swift_isUniquelyReferenced_nonNull_native();
    sub_21693A668();
  }

  sub_216935484();

  if (*(&v27 + 1) == 1)
  {
    v8 = &qword_27CABEAD0;
    v9 = &unk_217033EA0;
    v10 = &v26;
LABEL_18:
    sub_216697664(v10, v8, v9);
    goto LABEL_19;
  }

  *v28 = v26;
  *&v28[16] = v27;
  if (!*(&v27 + 1))
  {
LABEL_17:
    v8 = &unk_27CABF7A0;
    v9 = &unk_217014D20;
    v10 = v28;
    goto LABEL_18;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAD8, &qword_217030B88);
  if (swift_dynamicCast())
  {
    type metadata accessor for SocialContactsCoordinator();
    sub_2169F4138();
    v13 = v12;

    *v28 = v13;
    *&v28[8] = v26;
    *&v28[24] = v11;
    swift_isUniquelyReferenced_nonNull_native();
    sub_21693A668();
  }

LABEL_19:
  sub_216934F28();
  if (!*&v28[24])
  {
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF9E0, &qword_217029F30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return v2;
  }

  sub_216935484();
  if (*&v28[24] == 1)
  {
    sub_216697664(v28, &qword_27CABEAD0, &unk_217033EA0);
    v14 = sub_2166AF66C(0xD00000000000001DLL, 0x8000000217085880);
    if (v15)
    {
      v16 = v14;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD210, &qword_217029F20);
      sub_21700F554();

      v17 = (*(v2 + 56) + 32 * v16);
      v18 = v17[1];
      v26 = *v17;
      v27 = v18;
      sub_21700F574();
    }

    else
    {
      v26 = 0uLL;
      *&v27 = 0;
      *(&v27 + 1) = 1;
    }

    sub_216697664(&v26, &qword_27CABEAD0, &unk_217033EA0);
  }

  else
  {
    v26 = *v28;
    v27 = *&v28[16];
    swift_isUniquelyReferenced_nonNull_native();
    sub_21693A668();
  }

  sub_216935484();

  if (*(&v27 + 1) == 1)
  {
    v19 = &qword_27CABEAD0;
    v20 = &unk_217033EA0;
    v21 = &v26;
LABEL_33:
    sub_216697664(v21, v19, v20);
    return v2;
  }

  *v28 = v26;
  *&v28[16] = v27;
  if (!*(&v27 + 1))
  {
LABEL_32:
    v19 = &unk_27CABF7A0;
    v20 = &unk_217014D20;
    v21 = v28;
    goto LABEL_33;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAD8, &qword_217030B88);
  if (swift_dynamicCast())
  {
    type metadata accessor for SocialContactsCoordinator();
    sub_2169F4138();
    v24 = v23;

    *v28 = v24;
    *&v28[8] = v26;
    *&v28[24] = v22;
    swift_isUniquelyReferenced_nonNull_native();
    sub_21693A668();
  }

  return v2;
}

uint64_t sub_21699A4D8(uint64_t a1)
{
  v4 = MEMORY[0x277D84FA0];
  v2 = sub_216998BA4(a1, &v4, v1);

  return v2;
}

void sub_21699A53C(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v3 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277D84FA0];
  v20 = MEMORY[0x277D84F98];
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  sub_21700DF14();
  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = sub_21699C14C(*(a2 + 48) + *(v19 + 72) * (v12 | (v11 << 6)), v5, type metadata accessor for SocialContactsCoordinator.Contact);
    MEMORY[0x28223BE20](v13);
    *(&v17 - 2) = &v20;
    *(&v17 - 1) = v5;
    sub_216CE18D4(sub_21699C020, (&v17 - 4), v14);
    sub_21699C20C(v5, type metadata accessor for SocialContactsCoordinator.Contact);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      v15 = v20;
      v16 = v17;
      sub_21700DF14();
      sub_216998E64(v18, v16, v15, &v21);

      return;
    }

    v8 = *(a2 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_21699A77C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  sub_21700DF14();
  v5 = sub_21700DF14();
  sub_21699AA10(v5, v4, type metadata accessor for SocialContactsCoordinator.Contact, type metadata accessor for SocialContactsCoordinator.Contact, sub_2168A15E0);
  *(a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_matchedContacts) = v6;

  sub_216935484();
  if (*(&v23 + 1) == 1)
  {
    v7 = &qword_27CABEAD0;
    v8 = &unk_217033EA0;
    v9 = &v22;
LABEL_7:
    sub_216697664(v9, v7, v8);
    goto LABEL_8;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {
    v7 = &unk_27CABF7A0;
    v8 = &unk_217014D20;
    v9 = &v24;
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v10 = v21;
    goto LABEL_9;
  }

LABEL_8:
  v10 = 0;
LABEL_9:
  v11 = OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends;
  *(a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends) = v10;
  sub_216935484();
  if (*(&v23 + 1) == 1)
  {
    v12 = &qword_27CABEAD0;
    v13 = &unk_217033EA0;
    v14 = &v22;
LABEL_15:
    result = sub_216697664(v14, v12, v13);
    goto LABEL_16;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {
    v12 = &unk_27CABF7A0;
    v13 = &unk_217014D20;
    v14 = &v24;
    goto LABEL_15;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v16 = v21;
    goto LABEL_17;
  }

LABEL_16:
  v16 = 0;
LABEL_17:
  *(a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortNonOnboardedFriends) = v16;
  v17 = *(a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  if (v17)
  {
    v18 = *(a1 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler + 8);
    v19 = *(a1 + v11);
    sub_2167759F4(v17, v18);
    v20 = sub_21700DF14();
    v17(v20, v19, v16, 0);
    sub_21667E91C(v17, v18);
  }

  return result;
}

void sub_21699AA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *, char *))
{
  v26 = a5;
  v8 = a3(0);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v17 = 0;
  v27 = a2;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 56);
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
    v22 = v17;
LABEL_9:
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    sub_21699C14C(*(a1 + 48) + *(v25 + 72) * (v23 | (v22 << 6)), v16, a4);
    sub_21699C1AC(v16, v10, a4);
    v26(v13, v10);
    sub_21699C20C(v13, a4);
  }

  while (1)
  {
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 >= v21)
    {

      return;
    }

    v20 = *(a1 + 56 + 8 * v22);
    ++v17;
    if (v20)
    {
      v17 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_21699ABF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49 - v5;
  sub_21699C14C(a1, a2, type metadata accessor for SocialContactsCoordinator.Contact);
  sub_216935484();
  if (*(&v52 + 1) == 1)
  {
    v7 = &qword_27CABEAD0;
    v8 = &unk_217033EA0;
    v9 = &v51;
LABEL_7:
    sub_216697664(v9, v7, v8);
    goto LABEL_8;
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {
    v7 = &unk_27CABF7A0;
    v8 = &unk_217014D20;
    v9 = &v53;
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v10 = v49;
    v11 = v50;
    v12 = (a2 + *(type metadata accessor for SocialContactsCoordinator.Contact(0) + 48));

    *v12 = v10;
    v12[1] = v11;
  }

LABEL_8:
  sub_216935484();
  if (*(&v52 + 1) == 1)
  {
    v13 = &qword_27CABEAD0;
    v14 = &unk_217033EA0;
    v15 = &v51;
LABEL_14:
    sub_216697664(v15, v13, v14);
    goto LABEL_15;
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {
    v13 = &unk_27CABF7A0;
    v14 = &unk_217014D20;
    v15 = &v53;
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    *(a2 + 16) = v49;
  }

LABEL_15:
  sub_216935484();
  if (*(&v52 + 1) == 1)
  {
    v16 = &qword_27CABEAD0;
    v17 = &unk_217033EA0;
    v18 = &v51;
LABEL_21:
    sub_216697664(v18, v16, v17);
    goto LABEL_22;
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {
    v16 = &unk_27CABF7A0;
    v17 = &unk_217014D20;
    v18 = &v53;
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    *(a2 + 17) = v49;
  }

LABEL_22:
  sub_216935484();
  if (*(&v52 + 1) == 1)
  {
    v19 = &qword_27CABEAD0;
    v20 = &unk_217033EA0;
    v21 = &v51;
LABEL_28:
    sub_216697664(v21, v19, v20);
    goto LABEL_29;
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {
    v19 = &unk_27CABF7A0;
    v20 = &unk_217014D20;
    v21 = &v53;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v22 = v49;
    v23 = v50;

    *(a2 + 40) = v22;
    *(a2 + 48) = v23;
  }

LABEL_29:
  sub_216935484();
  if (*(&v52 + 1) == 1)
  {
    v24 = &qword_27CABEAD0;
    v25 = &unk_217033EA0;
    v26 = &v51;
LABEL_35:
    sub_216697664(v26, v24, v25);
    goto LABEL_36;
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {
    v24 = &unk_27CABF7A0;
    v25 = &unk_217014D20;
    v26 = &v53;
    goto LABEL_35;
  }

  if (swift_dynamicCast())
  {
    *(a2 + 56) = v49;
  }

LABEL_36:
  sub_216935484();
  if (*(&v52 + 1) == 1)
  {
    v27 = &qword_27CABEAD0;
    v28 = &unk_217033EA0;
    v29 = &v51;
LABEL_45:
    sub_216697664(v29, v27, v28);
    goto LABEL_46;
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {
    v27 = &unk_27CABF7A0;
    v28 = &unk_217014D20;
    v29 = &v53;
    goto LABEL_45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  if (swift_dynamicCast())
  {
    v30 = v49;
    sub_216685F4C(0, &qword_27CABEAE8, 0x277D7FC08);
    sub_2169FD23C(v30);
    v32 = v31;

    v33 = sub_21699B2E8(v32);
    if (v33)
    {
      v34 = v33;
      v35 = [objc_opt_self() tokenWithImageArtworkInfo_];
      v36 = sub_21700E514();
      sub_21699BF4C(v36, v37, v35);
      v38 = qword_27CAB5D90;
      v39 = v35;
      if (v38 != -1)
      {
        swift_once();
      }

      [objc_allocWithZone(MEMORY[0x277CD5D50]) initWithToken:v39 dataSource:qword_27CB229B0];

      sub_21700C3C4();
      v40 = sub_21700C4B4();
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v40);
      v41 = type metadata accessor for SocialContactsCoordinator.Contact(0);
      sub_21699BFB0(v6, a2 + *(v41 + 44));
    }
  }

LABEL_46:
  sub_216935484();
  if (*(&v52 + 1) == 1)
  {
    v42 = &qword_27CABEAD0;
    v43 = &unk_217033EA0;
    v44 = &v51;
    return sub_216697664(v44, v42, v43);
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {
    v42 = &unk_27CABF7A0;
    v43 = &unk_217014D20;
    v44 = &v53;
    return sub_216697664(v44, v42, v43);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  result = swift_dynamicCast();
  if (result)
  {
    sub_216934F28();

    if (*(&v54 + 1))
    {
      v46 = swift_dynamicCast();
      if (v46)
      {
        v47 = v51;
      }

      else
      {
        v47 = 0;
      }

      if (v46)
      {
        v48 = *(&v51 + 1);
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      sub_216697664(&v53, &unk_27CABF7A0, &unk_217014D20);
      v47 = 0;
      v48 = 0;
    }

    *(a2 + 24) = v47;
    *(a2 + 32) = v48;
  }

  return result;
}

id sub_21699B2E8(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_21700E344();

  v3 = [v1 initWithArtworkResponseDictionary_];

  return v3;
}

uint64_t sub_21699B370@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v8 = sub_217006224();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_8;
  }

  v15 = sub_2166AF66C(0x72506C6169636F73, 0xEF6449656C69666FLL);
  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_216697C8C(*(v14 + 56) + 32 * v15, &v43);
  v45 = v43;
  v46 = v44;
  if (!*(&v44 + 1))
  {
    sub_216697664(&v45, &unk_27CABF7A0, &unk_217014D20);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v25 = 1;
    return __swift_storeEnumTagSinglePayload(a4, v25, 1, v11);
  }

  v38 = v4;
  v17 = v41;
  v18 = v42;
  v19 = *a2;
  sub_21700DF14();
  v37 = v17;
  v39 = v18;
  LOBYTE(v17) = sub_216CE11AC(v17, v18, v19);

  if (v17)
  {

    v25 = 1;
  }

  else
  {
    sub_2168A140C(&v45, v37, v39, v20, v21, v22, v23, v24, v35, v36, v37, v38, v39, v40, v41, v42, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, v48, v49, v50, v51, v52);

    *(v13 + 40) = 0u;
    *(v13 + 24) = 0u;
    v27 = v11[11];
    v37 = v27;
    v39 = sub_21700C4B4();
    __swift_storeEnumTagSinglePayload(&v13[v27], 1, 1, v39);
    v36 = &v13[v11[12]];
    *&v13[v11[16]] = MEMORY[0x277D84F90];
    *v13 = 0;
    *(v13 + 1) = 0;
    sub_217006214();
    v28 = sub_2170061F4();
    v30 = v29;
    (*(v40 + 8))(v10, v8);
    v31 = &v13[v11[13]];
    *v31 = v28;
    v31[1] = v30;
    v32 = MEMORY[0x277D84FA0];
    *&v13[v11[14]] = MEMORY[0x277D84FA0];
    *&v13[v11[15]] = v32;
    v33 = v36;
    v34 = v37;
    *v36 = 0;
    *(v33 + 1) = 0;
    *(v13 + 8) = 0;
    v13[18] = 0;
    *(v13 + 7) = 0;
    sub_216697664(&v13[v34], &qword_27CABF770, &unk_21701A670);
    __swift_storeEnumTagSinglePayload(&v13[v34], 1, 1, v39);
    sub_21699ABF8(v13, a4);
    sub_21699C20C(v13, type metadata accessor for SocialContactsCoordinator.Contact);
    v25 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v25, 1, v11);
}

void sub_21699B6CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAE0, &unk_217030B90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_21699C14C(a3, &v8 - v5, type metadata accessor for SocialContactsCoordinator.Contact);
  v7 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_21700DF14();
  sub_216A8BF9C();
}

uint64_t sub_21699B7B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v42 = a3;
  v43 = a2;
  v45 = a1;
  v46 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEAE0, &unk_217030B90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - v5;
  v7 = sub_217006224();
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  sub_216935484();
  v16 = *(&v52 + 1);
  sub_216697664(&v51, &qword_27CABEAD0, &unk_217033EA0);
  if (v16 == 1)
  {
    sub_216935484();
    v17 = *(&v52 + 1);
    sub_216697664(&v51, &qword_27CABEAD0, &unk_217033EA0);
    if (v17 != 1)
    {
      *(v15 + 40) = 0u;
      *(v15 + 24) = 0u;
      v23 = v10[11];
      v43 = sub_21700C4B4();
      __swift_storeEnumTagSinglePayload(&v15[v23], 1, 1, v43);
      v24 = &v15[v10[12]];
      *&v15[v10[16]] = MEMORY[0x277D84F90];
      *v15 = 0;
      *(v15 + 1) = 0;
      sub_217006214();
      v25 = sub_2170061F4();
      v27 = v26;
      (*(v44 + 8))(v9, v7);
      v28 = &v15[v10[13]];
      *v28 = v25;
      v28[1] = v27;
      v29 = MEMORY[0x277D84FA0];
      *&v15[v10[14]] = MEMORY[0x277D84FA0];
      *&v15[v10[15]] = v29;
      *v24 = 0;
      *(v24 + 1) = 0;
      *(v15 + 8) = 0;
      v15[18] = 0;
      *(v15 + 7) = 0;
      sub_216697664(&v15[v23], &qword_27CABF770, &unk_21701A670);
      __swift_storeEnumTagSinglePayload(&v15[v23], 1, 1, v43);
      v19 = v46;
      sub_21699ABF8(v15, v46);
      v30 = v15;
      goto LABEL_10;
    }
  }

  sub_216935484();
  if (*(&v50 + 1) != 1)
  {
    v51 = v49;
    v52 = v50;
    v19 = v46;
    if (!*(&v50 + 1))
    {
      v20 = &unk_27CABF7A0;
      v21 = &unk_217014D20;
      v22 = &v51;
      goto LABEL_12;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_13:
      v18 = 1;
      return __swift_storeEnumTagSinglePayload(v19, v18, 1, v10);
    }

    sub_2169354E0(v47, v48, v43);

    if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
    {
      v20 = &qword_27CABEAE0;
      v21 = &unk_217030B90;
      v22 = v6;
LABEL_12:
      sub_216697664(v22, v20, v21);
      goto LABEL_13;
    }

    sub_21699C1AC(v6, v12, type metadata accessor for SocialContactsCoordinator.Contact);
    v32 = v12[1];
    if (!v32)
    {
      sub_21699C20C(v12, type metadata accessor for SocialContactsCoordinator.Contact);
      goto LABEL_13;
    }

    v33 = *v12;
    v34 = *v42;
    sub_21700DF14();
    sub_21700DF14();
    v35 = sub_216CE11AC(v33, v32, v34);

    if (v35)
    {
      sub_21699C20C(v12, type metadata accessor for SocialContactsCoordinator.Contact);

      goto LABEL_13;
    }

    sub_2168A140C(&v51, v33, v32, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58);

    sub_21699ABF8(v12, v19);
    v30 = v12;
LABEL_10:
    sub_21699C20C(v30, type metadata accessor for SocialContactsCoordinator.Contact);
    v18 = 0;
    return __swift_storeEnumTagSinglePayload(v19, v18, 1, v10);
  }

  sub_216697664(&v49, &qword_27CABEAD0, &unk_217033EA0);
  v18 = 1;
  v19 = v46;
  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v10);
}

uint64_t sub_21699BCE4(void *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t *a5)
{
  *a1 = *(a2 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_matchedContacts);
  sub_21700DF14();

  *a3 = *(a2 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortOnboardedFriends);
  *a4 = *(a2 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation_shouldSortNonOnboardedFriends);
  v9 = *(a2 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler);
  v10 = *(a2 + OBJC_IVAR____TtC7MusicUI48SocialOnboardingContactsMatchingRequestOperation__responseHandler + 8);
  v11 = *a5;
  v12 = a5[1];
  *a5 = v9;
  a5[1] = v10;
  sub_2167759F4(v9, v10);

  return sub_21667E91C(v11, v12);
}

unint64_t sub_21699BEEC()
{
  result = qword_27CABEAC8;
  if (!qword_27CABEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEAC8);
  }

  return result;
}

void sub_21699BF4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();

  [a3 setCropStyle_];
}

uint64_t sub_21699BFB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SocialOnboardingContactsMatchingRequestOperation.FindFriendsError(_BYTE *result, int a2, int a3)
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

unint64_t sub_21699C0EC()
{
  result = qword_27CABEAF0;
  if (!qword_27CABEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEAF0);
  }

  return result;
}

uint64_t sub_21699C14C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21699C1AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21699C20C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for TVEpisodeContextMenu(uint64_t a1)
{
  result = qword_280E3AFB8;
  if (!qword_280E3AFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21699C2E8(uint64_t a1)
{
  sub_2167B83B4(319);
  if (v1 <= 0x3F)
  {
    sub_2167B84AC(319);
    if (v2 <= 0x3F)
    {
      sub_2167EE974(319);
      if (v3 <= 0x3F)
      {
        sub_2170073D4();
        if (v4 <= 0x3F)
        {
          type metadata accessor for MenuConfiguration(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21699C3D0()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for TVEpisodeContextMenu(0);
    v6 = *(v5 + 28);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64F08(v0 + v6, v4, v0 + *(v5 + 32));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_216942CA4(qword_280E45220, type metadata accessor for MenuBuilder, &unk_21705881C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for ArtistContextMenu(uint64_t a1)
{
  result = qword_280E40420;
  if (!qword_280E40420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21699C5EC(uint64_t a1)
{
  sub_2167B83B4(319);
  if (v1 <= 0x3F)
  {
    sub_2167EE974(319);
    if (v2 <= 0x3F)
    {
      sub_21700C384();
      if (v3 <= 0x3F)
      {
        type metadata accessor for MenuConfiguration(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21699C6BC()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for ArtistContextMenu(0);
    v6 = *(v5 + 24);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64F20(v0 + v6, v4, v0 + *(v5 + 28));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_2167EE91C();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_21699C834(uint64_t a1)
{
  v1 = a1;
  if (sub_21700B304())
  {
    if (v1)
    {

      return sub_21700AD34();
    }

    else
    {
      v3 = [objc_opt_self() tertiaryLabelColor];

      return sub_21700AC44();
    }
  }

  else
  {
    if (v1)
    {
      sub_21700ACC4();
    }

    else
    {
      sub_21700AD34();
    }

    v4 = sub_21700AD04();

    return v4;
  }
}

id sub_21699C8F0()
{
  result = [objc_allocWithZone(MEMORY[0x277CE6640]) init];
  qword_27CABEAF8 = result;
  return result;
}

id sub_21699C924()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  result = [v0 setUnitsStyle_];
  qword_27CABEB00 = v0;
  return result;
}

id sub_21699C974(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC7MusicUI27JSLibraryImportDataProvider__mliDidCompleteTransfer;
  *&v1[v3] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC7MusicUI27JSLibraryImportDataProvider__mliReview;
  *&v1[v4] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC7MusicUI27JSLibraryImportDataProvider__mliSessionID;
  *&v1[v5] = swift_getKeyPath();
  sub_2166AF2A8();
  sub_21700D4D4();
  sub_21700E094();
  *&v1[OBJC_IVAR____TtC7MusicUI27JSLibraryImportDataProvider_userDefaults] = v9;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id sub_21699CAC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7MusicUI27JSLibraryImportDataProvider_userDefaults);
  v2 = sub_21700E4D4();
  v3 = [v1 safeBoolForKey_];

  return v3;
}

uint64_t sub_21699CC34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = a3(v3, KeyPath, v6);

  return v7;
}

uint64_t sub_21699CCC4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7MusicUI27JSLibraryImportDataProvider_userDefaults);
  v4 = sub_21700E4D4();
  v5 = [v3 safeStringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_21700E514();

  return v6;
}

void sub_21699CE4C()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v27[0] = v3;
  v4 = type metadata accessor for SectionContent(0);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v27[1] = v6;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_16();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  sub_21700CE04();
  sub_21700CD74();
  v19 = *(v14 + 8);
  v19(v18, v12);
  v20 = sub_21700E2C4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v20);
  sub_216697664(v11, &qword_27CAB78D0, &unk_21701A800);
  v22 = OUTLINED_FUNCTION_91();
  if (EnumTagSinglePayload == 1)
  {
    sub_2169A25CC(v22, v23, v24);
  }

  else
  {
    sub_21699D0D8(v22, v23, v24);
  }

  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v25 + 8))(v2);
  v26 = OUTLINED_FUNCTION_39();
  (v19)(v26);
  if (!v0)
  {
    sub_2169BBB94();
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_21699D0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v683 = a2;
  v681 = a3;
  v4 = type metadata accessor for VerticalArtworkListItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v677 = &v514 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TVMovieDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v676 = &v514 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TVMovieDescription(0);
  MEMORY[0x28223BE20](v8 - 8);
  v675 = &v514 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SuperHeroLockup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v674 = &v514 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SongDetailList(0);
  MEMORY[0x28223BE20](v12 - 8);
  v673 = &v514 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Spacer(0);
  MEMORY[0x28223BE20](v14 - 8);
  v672 = &v514 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
  MEMORY[0x28223BE20](v16 - 8);
  v671 = &v514 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(0);
  MEMORY[0x28223BE20](FriendsButtonComponentModel - 8);
  v670 = &v514 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  MEMORY[0x28223BE20](v20 - 8);
  v669 = &v514 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v22 - 8);
  v668 = &v514 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SocialOnboardingWelcomePageLockup(0);
  MEMORY[0x28223BE20](v24 - 8);
  v667 = &v514 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(0);
  MEMORY[0x28223BE20](v26 - 8);
  v666 = (&v514 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for SocialProfileHorizontalLockupSection(0);
  MEMORY[0x28223BE20](v28 - 8);
  v665 = &v514 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
  MEMORY[0x28223BE20](v30 - 8);
  v664 = &v514 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel(0);
  MEMORY[0x28223BE20](v32 - 8);
  v663 = &v514 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(0);
  MEMORY[0x28223BE20](FriendsPageSectionLockup - 8);
  v662 = &v514 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(0);
  MEMORY[0x28223BE20](v36 - 8);
  v661 = &v514 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0);
  MEMORY[0x28223BE20](v38 - 8);
  v660 = &v514 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(0);
  MEMORY[0x28223BE20](v40 - 8);
  v659 = &v514 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ListSection(0);
  MEMORY[0x28223BE20](v42 - 8);
  v658 = &v514 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContextLockup = type metadata accessor for SearchQueryContextLockup(0);
  MEMORY[0x28223BE20](ContextLockup - 8);
  v657 = &v514 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for PopoverSelector(0);
  MEMORY[0x28223BE20](v46 - 8);
  v656 = &v514 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for PlaylistDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v48 - 8);
  v655 = &v514 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ParagraphComponentModel(0);
  MEMORY[0x28223BE20](v50 - 8);
  v654 = &v514 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for LandingUpsell(0);
  MEMORY[0x28223BE20](v52 - 8);
  v653 = &v514 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for InlineUpsell(0);
  MEMORY[0x28223BE20](v54 - 8);
  v652 = &v514 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for HeaderComponentModel(0);
  MEMORY[0x28223BE20](v56 - 8);
  v651 = &v514 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for GroupedTextListLockup(0);
  MEMORY[0x28223BE20](v58 - 8);
  v650 = &v514 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for GradientListRowModel(0);
  MEMORY[0x28223BE20](v60 - 8);
  v649 = (&v514 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = type metadata accessor for EmptyStateLockup(0);
  MEMORY[0x28223BE20](v62 - 8);
  v648 = &v514 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
  MEMORY[0x28223BE20](v64 - 8);
  v647 = &v514 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
  MEMORY[0x28223BE20](v66 - 8);
  v646 = &v514 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(0);
  MEMORY[0x28223BE20](v68 - 8);
  v645 = &v514 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ArtistLatestReleaseLockup(0);
  MEMORY[0x28223BE20](v70 - 8);
  v644 = &v514 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for ArtistDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v72 - 8);
  v643 = &v514 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for AnimatedTextListItem(0);
  MEMORY[0x28223BE20](v74 - 8);
  v642 = &v514 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v76 - 8);
  v520 = &v514 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v519 = &v514 - v79;
  v684 = sub_21700CF34();
  v682 = *(v684 - 8);
  MEMORY[0x28223BE20](v684);
  v641 = &v514 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v640 = &v514 - v82;
  MEMORY[0x28223BE20](v83);
  v638 = &v514 - v84;
  MEMORY[0x28223BE20](v85);
  v636 = &v514 - v86;
  MEMORY[0x28223BE20](v87);
  v639 = &v514 - v88;
  MEMORY[0x28223BE20](v89);
  v637 = &v514 - v90;
  MEMORY[0x28223BE20](v91);
  v635 = &v514 - v92;
  MEMORY[0x28223BE20](v93);
  v632 = &v514 - v94;
  MEMORY[0x28223BE20](v95);
  v634 = &v514 - v96;
  MEMORY[0x28223BE20](v97);
  v633 = &v514 - v98;
  MEMORY[0x28223BE20](v99);
  v631 = &v514 - v100;
  MEMORY[0x28223BE20](v101);
  v630 = &v514 - v102;
  MEMORY[0x28223BE20](v103);
  v629 = &v514 - v104;
  MEMORY[0x28223BE20](v105);
  v628 = &v514 - v106;
  MEMORY[0x28223BE20](v107);
  v627 = &v514 - v108;
  MEMORY[0x28223BE20](v109);
  v626 = &v514 - v110;
  MEMORY[0x28223BE20](v111);
  v625 = &v514 - v112;
  MEMORY[0x28223BE20](v113);
  v624 = &v514 - v114;
  MEMORY[0x28223BE20](v115);
  v622 = &v514 - v116;
  MEMORY[0x28223BE20](v117);
  v621 = &v514 - v118;
  MEMORY[0x28223BE20](v119);
  v623 = &v514 - v120;
  MEMORY[0x28223BE20](v121);
  v620 = &v514 - v122;
  MEMORY[0x28223BE20](v123);
  v619 = &v514 - v124;
  MEMORY[0x28223BE20](v125);
  v617 = &v514 - v126;
  MEMORY[0x28223BE20](v127);
  v616 = &v514 - v128;
  MEMORY[0x28223BE20](v129);
  v618 = &v514 - v130;
  MEMORY[0x28223BE20](v131);
  v614 = &v514 - v132;
  MEMORY[0x28223BE20](v133);
  v612 = &v514 - v134;
  MEMORY[0x28223BE20](v135);
  v615 = &v514 - v136;
  MEMORY[0x28223BE20](v137);
  v613 = &v514 - v138;
  MEMORY[0x28223BE20](v139);
  v611 = &v514 - v140;
  MEMORY[0x28223BE20](v141);
  v610 = &v514 - v142;
  MEMORY[0x28223BE20](v143);
  v608 = &v514 - v144;
  MEMORY[0x28223BE20](v145);
  v679 = &v514 - v146;
  MEMORY[0x28223BE20](v147);
  v609 = &v514 - v148;
  MEMORY[0x28223BE20](v149);
  v607 = &v514 - v150;
  MEMORY[0x28223BE20](v151);
  v605 = &v514 - v152;
  MEMORY[0x28223BE20](v153);
  v518 = &v514 - v154;
  MEMORY[0x28223BE20](v155);
  v606 = &v514 - v156;
  MEMORY[0x28223BE20](v157);
  v603 = &v514 - v158;
  MEMORY[0x28223BE20](v159);
  v601 = &v514 - v160;
  MEMORY[0x28223BE20](v161);
  v604 = &v514 - v162;
  MEMORY[0x28223BE20](v163);
  v602 = &v514 - v164;
  MEMORY[0x28223BE20](v165);
  v599 = &v514 - v166;
  MEMORY[0x28223BE20](v167);
  v597 = &v514 - v168;
  MEMORY[0x28223BE20](v169);
  v600 = &v514 - v170;
  MEMORY[0x28223BE20](v171);
  v598 = &v514 - v172;
  MEMORY[0x28223BE20](v173);
  v596 = &v514 - v174;
  MEMORY[0x28223BE20](v175);
  v594 = &v514 - v176;
  MEMORY[0x28223BE20](v177);
  v593 = &v514 - v178;
  MEMORY[0x28223BE20](v179);
  v595 = &v514 - v180;
  MEMORY[0x28223BE20](v181);
  v592 = &v514 - v182;
  MEMORY[0x28223BE20](v183);
  v590 = &v514 - v184;
  MEMORY[0x28223BE20](v185);
  v589 = &v514 - v186;
  MEMORY[0x28223BE20](v187);
  v591 = &v514 - v188;
  MEMORY[0x28223BE20](v189);
  v588 = &v514 - v190;
  MEMORY[0x28223BE20](v191);
  v586 = &v514 - v192;
  MEMORY[0x28223BE20](v193);
  v585 = &v514 - v194;
  MEMORY[0x28223BE20](v195);
  v587 = &v514 - v196;
  MEMORY[0x28223BE20](v197);
  v583 = &v514 - v198;
  MEMORY[0x28223BE20](v199);
  v517 = &v514 - v200;
  MEMORY[0x28223BE20](v201);
  v584 = &v514 - v202;
  MEMORY[0x28223BE20](v203);
  v581 = &v514 - v204;
  v205 = type metadata accessor for AlbumDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v205 - 8);
  v582 = &v514 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  MEMORY[0x28223BE20](v207 - 8);
  v209 = &v514 - v208;
  v210 = sub_21700CDF4();
  v211 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v580 = &v514 - ((v212 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v213);
  v579 = &v514 - v214;
  MEMORY[0x28223BE20](v215);
  v578 = &v514 - v216;
  MEMORY[0x28223BE20](v217);
  v577 = &v514 - v218;
  MEMORY[0x28223BE20](v219);
  v576 = &v514 - v220;
  MEMORY[0x28223BE20](v221);
  v575 = &v514 - v222;
  MEMORY[0x28223BE20](v223);
  v574 = &v514 - v224;
  MEMORY[0x28223BE20](v225);
  v573 = &v514 - v226;
  MEMORY[0x28223BE20](v227);
  v572 = &v514 - v228;
  MEMORY[0x28223BE20](v229);
  v571 = &v514 - v230;
  MEMORY[0x28223BE20](v231);
  v570 = &v514 - v232;
  MEMORY[0x28223BE20](v233);
  v569 = &v514 - v234;
  MEMORY[0x28223BE20](v235);
  v568 = &v514 - v236;
  MEMORY[0x28223BE20](v237);
  v567 = &v514 - v238;
  MEMORY[0x28223BE20](v239);
  v566 = &v514 - v240;
  MEMORY[0x28223BE20](v241);
  v565 = &v514 - v242;
  MEMORY[0x28223BE20](v243);
  v564 = &v514 - v244;
  MEMORY[0x28223BE20](v245);
  v563 = &v514 - v246;
  MEMORY[0x28223BE20](v247);
  v562 = &v514 - v248;
  MEMORY[0x28223BE20](v249);
  v561 = &v514 - v250;
  MEMORY[0x28223BE20](v251);
  v560 = &v514 - v252;
  MEMORY[0x28223BE20](v253);
  v559 = &v514 - v254;
  MEMORY[0x28223BE20](v255);
  v516 = &v514 - v256;
  MEMORY[0x28223BE20](v257);
  v558 = &v514 - v258;
  MEMORY[0x28223BE20](v259);
  v557 = &v514 - v260;
  MEMORY[0x28223BE20](v261);
  v556 = &v514 - v262;
  MEMORY[0x28223BE20](v263);
  v555 = &v514 - v264;
  MEMORY[0x28223BE20](v265);
  v554 = &v514 - v266;
  MEMORY[0x28223BE20](v267);
  v553 = &v514 - v268;
  MEMORY[0x28223BE20](v269);
  v552 = &v514 - v270;
  MEMORY[0x28223BE20](v271);
  v551 = &v514 - v272;
  MEMORY[0x28223BE20](v273);
  v550 = &v514 - v274;
  MEMORY[0x28223BE20](v275);
  v549 = &v514 - v276;
  MEMORY[0x28223BE20](v277);
  v548 = &v514 - v278;
  MEMORY[0x28223BE20](v279);
  v547 = &v514 - v280;
  MEMORY[0x28223BE20](v281);
  v546 = &v514 - v282;
  MEMORY[0x28223BE20](v283);
  v545 = &v514 - v284;
  MEMORY[0x28223BE20](v285);
  v515 = &v514 - v286;
  MEMORY[0x28223BE20](v287);
  v544 = &v514 - v288;
  MEMORY[0x28223BE20](v289);
  v688 = &v514 - v290;
  MEMORY[0x28223BE20](v291);
  v293 = &v514 - v292;
  v294 = sub_21700E2C4();
  v686 = *(v294 - 8);
  MEMORY[0x28223BE20](v294);
  v543 = &v514 - ((v295 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v296);
  v542 = &v514 - v297;
  MEMORY[0x28223BE20](v298);
  v541 = &v514 - v299;
  MEMORY[0x28223BE20](v300);
  v540 = &v514 - v301;
  MEMORY[0x28223BE20](v302);
  v539 = &v514 - v303;
  MEMORY[0x28223BE20](v304);
  v538 = &v514 - v305;
  MEMORY[0x28223BE20](v306);
  v537 = &v514 - v307;
  MEMORY[0x28223BE20](v308);
  v536 = &v514 - v309;
  MEMORY[0x28223BE20](v310);
  v535 = &v514 - v311;
  MEMORY[0x28223BE20](v312);
  v534 = &v514 - v313;
  MEMORY[0x28223BE20](v314);
  v533 = &v514 - v315;
  MEMORY[0x28223BE20](v316);
  v532 = &v514 - v317;
  MEMORY[0x28223BE20](v318);
  v678 = &v514 - v319;
  MEMORY[0x28223BE20](v320);
  v531 = &v514 - v321;
  MEMORY[0x28223BE20](v322);
  v530 = &v514 - v323;
  MEMORY[0x28223BE20](v324);
  v529 = &v514 - v325;
  MEMORY[0x28223BE20](v326);
  v528 = &v514 - v327;
  MEMORY[0x28223BE20](v328);
  v527 = &v514 - v329;
  MEMORY[0x28223BE20](v330);
  v526 = &v514 - v331;
  MEMORY[0x28223BE20](v332);
  v525 = &v514 - v333;
  MEMORY[0x28223BE20](v334);
  v524 = &v514 - v335;
  MEMORY[0x28223BE20](v336);
  v523 = &v514 - v337;
  MEMORY[0x28223BE20](v338);
  v522 = &v514 - v339;
  MEMORY[0x28223BE20](v340);
  v521 = &v514 - v341;
  MEMORY[0x28223BE20](v342);
  v344 = &v514 - v343;
  sub_21700CE04();
  sub_21700CD74();
  v680 = v211;
  v345 = *(v211 + 8);
  v687 = v210;
  v345(v293, v210);
  if (__swift_getEnumTagSinglePayload(v209, 1, v294) == 1)
  {
    sub_216697664(v209, &qword_27CAB78D0, &unk_21701A800);
    v346 = sub_21700E2E4();
    sub_2169BB7B4(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v348 = v347;
    v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE60, &qword_2170312D8);
    *v348 = 0x736D657469;
    v348[1] = 0xE500000000000000;
    v348[2] = v349;
    (*(*(v346 - 8) + 104))(v348, *MEMORY[0x277D22530], v346);
    return swift_willThrow();
  }

  else
  {
    v351 = v686;
    (*(v686 + 32))(v344, v209, v294);
    sub_21700CE04();
    sub_21682FF4C();
    v352 = v685;
    sub_21700CCD4();
    if (v352)
    {
      v345(v688, v687);
      return (*(v351 + 8))(v344, v294);
    }

    else
    {
      v685 = 0;
      v353 = a1;
      v345(v688, v687);
      v354 = v344;
      v356 = v682;
      v355 = v683;
      switch(v689)
      {
        case 1:
          (*(v351 + 16))(v521, v344, v294);
          v688 = *(v356 + 16);
          (v688)(v584, v355, v684);
          type metadata accessor for AlbumTrackLockup(0);
          sub_2169BB7B4(&qword_280E41538, type metadata accessor for AlbumTrackLockup, &unk_217043744);
          v440 = v685;
          v441 = sub_21700E934();
          if (v440)
          {
            goto LABEL_67;
          }

          v504 = v441;
          v505 = v515;
          sub_21700CE04();
          v506 = v517;
          (v688)(v517, v355, v684);
          ContentDescriptor.init(deserializing:using:)(v505, v506, v507, v508, v509, v510, v511, v512, v514, v515, SWORD2(v515), SBYTE6(v515), SHIBYTE(v515), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525);
          (*(v686 + 8))(v344, v294);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8, &unk_21703F640);
          *v681 = v504;
          sub_2169BBB94();
          type metadata accessor for SectionContent(0);
          goto LABEL_131;
        case 2:
          v430 = v545;
          sub_21700E2D4();
          v431 = v583;
          (*(v356 + 16))(v583, v355, v684);
          v432 = v685;
          sub_216B13B54(v430, v431, v642);
          if (!v432)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 3:
          (*(v351 + 16))(v522, v344, v294);
          (*(v356 + 16))(v587, v355, v684);
          type metadata accessor for AppsWithAccessComponentModel(0);
          sub_2169BB7B4(&qword_280E32790, type metadata accessor for AppsWithAccessComponentModel, &unk_217061278);
          v436 = v685;
          v358 = sub_21700E934();
          if (!v436)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 4:
          v402 = v546;
          sub_21700E2D4();
          v403 = v585;
          (*(v356 + 16))(v585, v355, v684);
          v404 = v685;
          sub_216AD1AB4(v402, v403, v643);
          if (!v404)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 5:
          v444 = v547;
          sub_21700E2D4();
          v445 = v586;
          (*(v356 + 16))(v586, v355, v684);
          v446 = v685;
          sub_216DE00DC(v444, v445, v644);
          if (!v446)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 6:
          v456 = v548;
          sub_21700E2D4();
          v457 = v588;
          (*(v356 + 16))(v588, v355, v684);
          v458 = v685;
          sub_216BE7ADC(v456, v457, v645);
          if (!v458)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 7:
        case 28:
          (*(v351 + 16))(v678, v344, v294);
          (*(v356 + 16))(v679, v355, v684);
          type metadata accessor for SearchLandingBrickLockup(0);
          sub_2169BB7B4(&qword_280E363C8, type metadata accessor for SearchLandingBrickLockup, &unk_21701D3D0);
          v357 = v685;
          v358 = sub_21700E934();
          if (!v357)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 8:
          (*(v351 + 16))(v523, v344, v294);
          (*(v356 + 16))(v591, v355, v684);
          type metadata accessor for BubbleLockup(0);
          sub_2169BB7B4(&qword_280E44DB8, type metadata accessor for BubbleLockup, &unk_21706AFD4);
          v415 = v685;
          v358 = sub_21700E934();
          if (!v415)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 9:
          v462 = v549;
          sub_21700E2D4();
          v463 = v589;
          (*(v356 + 16))(v589, v355, v684);
          v464 = v685;
          sub_2167FE6E0(v462, v463, v646);
          if (!v464)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 10:
          v399 = v550;
          sub_21700E2D4();
          v400 = v590;
          (*(v356 + 16))(v590, v355, v684);
          v401 = v685;
          sub_216A2E494(v399, v400, v647);
          if (!v401)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 11:
          v412 = v551;
          sub_21700E2D4();
          v413 = v592;
          (*(v356 + 16))(v592, v355, v684);
          v414 = v685;
          sub_21686EF88(v412, v413, v648);
          if (!v414)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 12:
          (*(v351 + 16))(v524, v344, v294);
          (*(v356 + 16))(v595, v355, v684);
          type metadata accessor for FlowcaseLockup(0);
          sub_2169BB7B4(&qword_280E43618, type metadata accessor for FlowcaseLockup, &unk_21702F2A8);
          v460 = v685;
          v358 = sub_21700E934();
          if (!v460)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 13:
          v387 = v552;
          sub_21700E2D4();
          v388 = v593;
          (*(v356 + 16))(v593, v355, v684);
          v389 = v685;
          sub_21686DF70(v387, v388, v649);
          if (!v389)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 14:
          v433 = v553;
          sub_21700E2D4();
          v434 = v594;
          (*(v356 + 16))(v594, v355, v684);
          v435 = v685;
          sub_216E4A7D8(v433, v434, v650);
          if (!v435)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 15:
          v381 = v554;
          sub_21700E2D4();
          v382 = v596;
          (*(v356 + 16))(v596, v355, v684);
          v383 = v685;
          sub_216E50810(v381, v382, v651);
          if (!v383)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 16:
          (*(v351 + 16))(v525, v344, v294);
          (*(v356 + 16))(v598, v355, v684);
          type metadata accessor for HorizontalLockup(0);
          sub_2169BB7B4(&unk_280E410E0, type metadata accessor for HorizontalLockup, &unk_2170150E8);
          v443 = v685;
          v358 = sub_21700E934();
          if (!v443)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 17:
          (*(v351 + 16))(v526, v344, v294);
          (*(v356 + 16))(v600, v355, v684);
          type metadata accessor for HorizontalPosterLockup(0);
          sub_2169BB7B4(&qword_280E39368, type metadata accessor for HorizontalPosterLockup, &unk_217062810);
          v461 = v685;
          v358 = sub_21700E934();
          if (!v461)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 18:
          v472 = v555;
          sub_21700E2D4();
          v473 = v597;
          (*(v356 + 16))(v597, v355, v684);
          v474 = v685;
          sub_216A0C148(v472, v473, v652);
          if (!v474)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 19:
          v450 = v556;
          sub_21700E2D4();
          v451 = v599;
          (*(v356 + 16))(v599, v355, v684);
          v452 = v685;
          sub_216B9E458(v450, v451, v653);
          if (!v452)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 20:
          (*(v351 + 16))(v527, v344, v294);
          (*(v356 + 16))(v602, v355, v684);
          type metadata accessor for LinkComponentModel(0);
          sub_2169BB7B4(&qword_280E3EC48, type metadata accessor for LinkComponentModel, &unk_21702DC78);
          v459 = v685;
          v358 = sub_21700E934();
          if (!v459)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 21:
          (*(v351 + 16))(v528, v344, v294);
          (*(v356 + 16))(v604, v355, v684);
          type metadata accessor for LiveRadioGridLockup(0);
          sub_2169BB7B4(&qword_280E3DB30, type metadata accessor for LiveRadioGridLockup, &unk_2170707D0);
          v470 = v685;
          v358 = sub_21700E934();
          if (!v470)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 22:
          v484 = v557;
          sub_21700E2D4();
          v485 = v601;
          (*(v356 + 16))(v601, v355, v684);
          v486 = v685;
          sub_21697DD50(v484, v485, v654);
          if (!v486)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 23:
          v427 = v558;
          sub_21700E2D4();
          v428 = v603;
          (*(v356 + 16))(v603, v355, v684);
          v429 = v685;
          sub_216BF9F7C(v427, v428, v655);
          if (!v429)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 24:
          (*(v351 + 16))(v529, v344, v294);
          v688 = *(v356 + 16);
          (v688)(v606, v355, v684);
          type metadata accessor for PlaylistTrackLockup(0);
          sub_2169BB7B4(&unk_280E3D5E0, type metadata accessor for PlaylistTrackLockup, &unk_217049074);
          v416 = v685;
          v417 = sub_21700E934();
          if (!v416)
          {
            v418 = v417;
            v419 = v516;
            sub_21700CE04();
            v420 = v518;
            (v688)(v518, v355, v684);
            ContentDescriptor.init(deserializing:using:)(v419, v420, v421, v422, v423, v424, v425, v426, v514, v515, SWORD2(v515), SBYTE6(v515), SHIBYTE(v515), v516, v517, v518, v519, v520, v521, v522, v523, v524, v525);
            (*(v686 + 8))(v344, v294);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0, &unk_217030FE0);
            *v681 = v418;
            sub_2169BBB94();
            type metadata accessor for SectionContent(0);
            goto LABEL_131;
          }

LABEL_67:
          result = (*(v351 + 8))(v344, v294);
          break;
        case 25:
          v494 = v559;
          sub_21700E2D4();
          v495 = v605;
          (*(v356 + 16))(v605, v355, v684);
          v496 = v685;
          sub_2167AFCE8(v494, v495, v656);
          if (!v496)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 26:
          (*(v351 + 16))(v530, v344, v294);
          (*(v356 + 16))(v607, v355, v684);
          type metadata accessor for PosterLockup(0);
          sub_2169BB7B4(&qword_280E44988, type metadata accessor for PosterLockup, &unk_217028028);
          v377 = v685;
          v358 = sub_21700E934();
          if (!v377)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 27:
          (*(v351 + 16))(v531, v344, v294);
          (*(v356 + 16))(v609, v355, v684);
          type metadata accessor for RecentSearchLockup(0);
          sub_2169BB7B4(&qword_27CABEE70, type metadata accessor for RecentSearchLockup, &unk_217025CF4);
          v487 = v685;
          v358 = sub_21700E934();
          if (!v487)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 29:
          v488 = v561;
          (*(v680 + 16))(v561, v353, v687);
          v489 = v610;
          (*(v356 + 16))(v610, v355, v684);
          v490 = v685;
          sub_216A26610(v488, v489, v658);
          if (!v490)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 30:
          (*(v351 + 16))(v532, v344, v294);
          (*(v356 + 16))(v611, v355, v684);
          _s6LockupVMa(0);
          sub_2169BB7B4(&qword_280E439E0, _s6LockupVMa, &unk_21701C548);
          v465 = v685;
          v358 = sub_21700E934();
          if (!v465)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 31:
          (*(v351 + 16))(v533, v344, v294);
          (*(v356 + 16))(v613, v355, v684);
          type metadata accessor for SocialCardLockup(0);
          sub_2169BB7B4(&qword_280E407E8, type metadata accessor for SocialCardLockup, &unk_217027CB8);
          v442 = v685;
          v358 = sub_21700E934();
          if (!v442)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 32:
          (*(v351 + 16))(v534, v344, v294);
          (*(v356 + 16))(v615, v355, v684);
          type metadata accessor for SocialOnboardingFindFriendsPageLockup(0);
          sub_2169BB7B4(&qword_280E2DC20, type metadata accessor for SocialOnboardingFindFriendsPageLockup, &unk_217041290);
          v466 = v685;
          v358 = sub_21700E934();
          if (!v466)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 33:
          v390 = v562;
          sub_21700E2D4();
          v391 = v612;
          (*(v356 + 16))(v612, v355, v684);
          v392 = v685;
          sub_21694104C(v390, v391, v659);
          if (!v392)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 34:
          v378 = v563;
          sub_21700E2D4();
          v379 = v614;
          (*(v356 + 16))(v614, v355, v684);
          v380 = v685;
          sub_2169F00B4(v378, v379, v660);
          if (!v380)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 35:
          (*(v351 + 16))(v535, v344, v294);
          (*(v356 + 16))(v618, v355, v684);
          type metadata accessor for SocialOnboardingSharedPlaylistLockup(0);
          sub_2169BB7B4(&unk_280E2DFE0, type metadata accessor for SocialOnboardingSharedPlaylistLockup, &unk_217047F90);
          v373 = v685;
          v358 = sub_21700E934();
          if (!v373)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 36:
          v374 = v564;
          sub_21700E2D4();
          v375 = v616;
          (*(v356 + 16))(v616, v355, v684);
          v376 = v685;
          sub_216B6B718(v374, v375, v661);
          if (!v376)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 37:
          v363 = v565;
          sub_21700E2D4();
          v364 = v617;
          (*(v356 + 16))(v617, v355, v684);
          v365 = v685;
          sub_216B7DF80(v363, v364, v662);
          if (!v365)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 38:
          v491 = v567;
          sub_21700E2D4();
          v492 = v620;
          (*(v356 + 16))(v620, v355, v684);
          v493 = v685;
          sub_216A5295C(v491, v492, v664);
          if (!v493)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 39:
          (*(v351 + 16))(v536, v344, v294);
          (*(v356 + 16))(v623, v355, v684);
          type metadata accessor for SocialProfileHorizontalLockup(0);
          sub_2169BB7B4(&qword_280E310D8, type metadata accessor for SocialProfileHorizontalLockup, &unk_217034900);
          v471 = v685;
          v358 = sub_21700E934();
          if (!v471)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 40:
          v408 = v568;
          (*(v680 + 16))(v568, v353, v687);
          v409 = v621;
          (*(v356 + 16))(v621, v355, v684);
          v410 = v685;
          sub_216C3FFF4(v408, v409, v665);
          if (!v410)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 41:
          v447 = v566;
          (*(v680 + 16))(v566, v353, v687);
          v448 = v619;
          (*(v356 + 16))(v619, v355, v684);
          v449 = v685;
          sub_216BF12B4(v447, v448, v663);
          if (!v449)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 42:
          v478 = v569;
          sub_21700E2D4();
          v479 = v622;
          (*(v356 + 16))(v622, v355, v684);
          v480 = v685;
          sub_21696CCD4(v478, v479, v666);
          if (!v480)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 43:
          v360 = v570;
          sub_21700E2D4();
          v361 = v624;
          (*(v356 + 16))(v624, v355, v684);
          v362 = v685;
          sub_216EA7F2C(v360, v361, v667);
          if (!v362)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 44:
          v384 = v571;
          sub_21700E2D4();
          v385 = v625;
          (*(v356 + 16))(v625, v355, v684);
          v386 = v685;
          sub_216A285E4(v384, v385, v668);
          if (!v386)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 45:
          v467 = v572;
          sub_21700E2D4();
          v468 = v626;
          (*(v356 + 16))(v626, v355, v684);
          v469 = v685;
          sub_216956A3C(v467, v468, v669);
          if (!v469)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 46:
          v500 = v573;
          sub_21700E2D4();
          v501 = v627;
          (*(v356 + 16))(v627, v355, v684);
          v502 = v685;
          sub_216BD86D0(v500, v501, v670);
          if (v502)
          {
            goto LABEL_127;
          }

          goto LABEL_117;
        case 47:
          v369 = v574;
          sub_21700E2D4();
          v370 = v628;
          (*(v356 + 16))(v628, v355, v684);
          v371 = v685;
          sub_2167EB3C8(v369, v370, v671);
          if (!v371)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 48:
          v393 = v576;
          (*(v680 + 16))(v576, v353, v687);
          v394 = v630;
          (*(v356 + 16))(v630, v355, v684);
          v395 = v685;
          sub_216A8E280(v393, v394, v673);
          if (!v395)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 49:
          v405 = v575;
          sub_21700E2D4();
          v406 = v629;
          (*(v356 + 16))(v629, v355, v684);
          v407 = v685;
          sub_21699038C(v405, v406, v672);
          if (!v407)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 50:
          (*(v351 + 16))(v537, v344, v294);
          (*(v356 + 16))(v631, v355, v684);
          type metadata accessor for SplitPosterLockup(0);
          sub_2169BB7B4(&qword_27CABEE68, type metadata accessor for SplitPosterLockup, &unk_21701BC60);
          v359 = v685;
          v358 = sub_21700E934();
          if (!v359)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 51:
          (*(v351 + 16))(v538, v344, v294);
          (*(v356 + 16))(v633, v355, v684);
          type metadata accessor for SquareLockup(0);
          sub_2169BB7B4(&unk_280E445E0, type metadata accessor for SquareLockup, &unk_21704EA80);
          v503 = v685;
          v358 = sub_21700E934();
          if (v503)
          {
            goto LABEL_127;
          }

          goto LABEL_130;
        case 52:
          (*(v351 + 16))(v539, v344, v294);
          (*(v356 + 16))(v634, v355, v684);
          type metadata accessor for SuggestionItem(0);
          sub_2169BB7B4(&unk_280E42A18, type metadata accessor for SuggestionItem, &unk_217045930);
          v499 = v685;
          v358 = sub_21700E934();
          if (!v499)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 53:
          v366 = v577;
          sub_21700E2D4();
          v367 = v632;
          (*(v356 + 16))(v632, v355, v684);
          v368 = v685;
          sub_216B0B620(v366, v367, v674);
          if (!v368)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 54:
          (*(v351 + 16))(v540, v344, v294);
          (*(v356 + 16))(v635, v355, v684);
          type metadata accessor for TextListComponentModel(0);
          sub_2169BB7B4(&qword_280E38AC8, type metadata accessor for TextListComponentModel, &unk_21701BF20);
          v497 = v685;
          v358 = sub_21700E934();
          if (!v497)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 55:
          (*(v351 + 16))(v541, v344, v294);
          (*(v356 + 16))(v637, v355, v684);
          type metadata accessor for TopSearchLockup(0);
          sub_2169BB7B4(&qword_280E41CF8, type metadata accessor for TopSearchLockup, &unk_21703FEA0);
          v498 = v685;
          v358 = sub_21700E934();
          if (!v498)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 56:
          (*(v351 + 16))(v542, v344, v294);
          (*(v356 + 16))(v639, v355, v684);
          type metadata accessor for TrackLockup(0);
          sub_2169BB7B4(&qword_280E44F98, type metadata accessor for TrackLockup, &unk_21705C638);
          v372 = v685;
          v358 = sub_21700E934();
          if (!v372)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        case 57:
          v475 = v578;
          sub_21700E2D4();
          v476 = v636;
          (*(v356 + 16))(v636, v355, v684);
          v477 = v685;
          sub_216E439C4(v475, v476, v675);
          if (!v477)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 58:
          v396 = v579;
          sub_21700E2D4();
          v397 = v638;
          (*(v356 + 16))(v638, v355, v684);
          v398 = v685;
          sub_216AD3F44(v396, v397, v676);
          if (!v398)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 59:
          v481 = v580;
          sub_21700E2D4();
          v482 = v640;
          (*(v356 + 16))(v640, v355, v684);
          v483 = v685;
          sub_216BD8DA8(v481, v482, v677);
          if (!v483)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        case 60:
          (*(v351 + 16))(v543, v344, v294);
          (*(v356 + 16))(v641, v355, v684);
          type metadata accessor for VerticalVideoLockup(0);
          sub_2169BB7B4(&qword_280E3CD88, type metadata accessor for VerticalVideoLockup, &unk_217054888);
          v411 = v685;
          v358 = sub_21700E934();
          if (v411)
          {
            goto LABEL_127;
          }

LABEL_130:
          v513 = v358;
          (*(v351 + 8))(v344, v294);
          *v681 = v513;
          type metadata accessor for SectionContent(0);
          goto LABEL_131;
        case 61:
          v453 = v560;
          sub_21700E2D4();
          v454 = v608;
          (*(v356 + 16))(v608, v355, v684);
          v455 = v685;
          sub_21696D638(v453, v454, v657);
          if (!v455)
          {
            goto LABEL_117;
          }

          goto LABEL_127;
        default:
          v437 = v544;
          sub_21700E2D4();
          v438 = v581;
          (*(v356 + 16))(v581, v355, v684);
          v439 = v685;
          sub_216AC7144(v437, v438, v582);
          if (v439)
          {
LABEL_127:
            result = (*(v351 + 8))(v354, v294);
          }

          else
          {
LABEL_117:
            (*(v351 + 8))(v354, v294);
            sub_2169BBB94();
            type metadata accessor for SectionContent(0);
LABEL_131:
            result = swift_storeEnumTagMultiPayload();
          }

          break;
      }
    }
  }

  return result;
}

uint64_t sub_2169A25CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v60 = a3;
  v4 = type metadata accessor for SongDetailList(0);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(0);
  MEMORY[0x28223BE20](FriendsPageSectionLockup - 8);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchResultsListSection(0);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21700CF34();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55 = &v51 - v14;
  MEMORY[0x28223BE20](v15);
  v52 = &v51 - v16;
  MEMORY[0x28223BE20](v17);
  v54 = &v51 - v18;
  MEMORY[0x28223BE20](v19);
  v51 = &v51 - v20;
  v21 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(0);
  MEMORY[0x28223BE20](v21 - 8);
  v53 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21700CDF4();
  v23 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v51 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v51 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v51 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v51 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v51 - v39;
  sub_21700CE04();
  sub_2169BB7FC();
  v41 = v65;
  sub_21700CCD4();
  if (v41)
  {
    return (*(v23 + 8))(v40, v66);
  }

  v65 = a1;
  (*(v23 + 8))(v40, v66);
  v43 = *(v23 + 16);
  v44 = v62;
  v45 = (v61 + 16);
  switch(v67)
  {
    case 1:
      v43(v34, v65, v66);
      v50 = v54;
      (*v45)(v54, v64, v63);
      sub_2168CDA30(v34, v50, v56);
      break;
    case 2:
      v43(v28, v65, v66);
      v47 = v55;
      (*v45)(v55, v64, v63);
      sub_216B6B718(v28, v47, v58);
      break;
    case 3:
      v48 = v31;
      v43(v31, v65, v66);
      v49 = v52;
      (*v45)(v52, v64, v63);
      sub_216B7DF80(v48, v49, v57);
      break;
    case 4:
      v43(v25, v65, v66);
      (*v45)(v44, v64, v63);
      sub_216A8E280(v25, v44, v59);
      break;
    default:
      v43(v37, v65, v66);
      v46 = v51;
      (*v45)(v51, v64, v63);
      sub_216BE7ADC(v37, v46, v53);
      break;
  }

  sub_2169BBB94();
  type metadata accessor for SectionContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2169A2CF0()
{
  v0 = type metadata accessor for SearchResultsListSection(0);
  v1 = OUTLINED_FUNCTION_36(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_6_0();
  v210 = v2;
  v3 = OUTLINED_FUNCTION_4_1();
  v211 = type metadata accessor for VerticalArtworkListItem(v3);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v212 = v5;
  v6 = OUTLINED_FUNCTION_4_1();
  v209[0] = type metadata accessor for TVMovieDetailHeaderLockup(v6);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v209[1] = v8;
  v9 = OUTLINED_FUNCTION_4_1();
  v208[0] = type metadata accessor for TVMovieDescription(v9);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v208[1] = v11;
  v12 = OUTLINED_FUNCTION_4_1();
  v206 = type metadata accessor for SuperHeroLockup(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v207 = v14;
  v15 = OUTLINED_FUNCTION_4_1();
  v205[0] = type metadata accessor for Spacer(v15);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v205[1] = v17;
  v18 = OUTLINED_FUNCTION_4_1();
  v204[0] = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(v18);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v204[1] = v20;
  v21 = OUTLINED_FUNCTION_4_1();
  v203[0] = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(v21);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  v203[1] = v23;
  v24 = OUTLINED_FUNCTION_4_1();
  v202[0] = type metadata accessor for SocialProfileEditorHeaderLockup(v24);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_0();
  v202[1] = v26;
  v27 = OUTLINED_FUNCTION_4_1();
  v201[0] = type metadata accessor for SocialProfileDetailHeaderLockup(v27);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  v201[1] = v29;
  v30 = OUTLINED_FUNCTION_4_1();
  v31 = type metadata accessor for SocialOnboardingWelcomePageLockup(v30);
  v32 = OUTLINED_FUNCTION_1_77(v31, &v218);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_0();
  v200 = v33;
  v34 = OUTLINED_FUNCTION_4_1();
  v35 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(v34);
  v36 = OUTLINED_FUNCTION_1_77(v35, &v217);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  v38 = OUTLINED_FUNCTION_8_0(v37);
  v39 = type metadata accessor for SocialProfileHorizontalLockupSection(v38);
  v40 = OUTLINED_FUNCTION_1_77(v39, &v215);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  v42 = OUTLINED_FUNCTION_8_0(v41);
  v43 = type metadata accessor for SocialProfileFollowRequestResponseHeader(v42);
  v44 = OUTLINED_FUNCTION_1_77(v43, &v216);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_0();
  v46 = OUTLINED_FUNCTION_8_0(v45);
  v47 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel(v46);
  v48 = OUTLINED_FUNCTION_1_77(v47, &v213);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_0();
  v50 = OUTLINED_FUNCTION_8_0(v49);
  FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(v50);
  v52 = OUTLINED_FUNCTION_1_77(FriendsPageSectionLockup, &v214);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_0();
  v54 = OUTLINED_FUNCTION_8_0(v53);
  v55 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(v54);
  v56 = OUTLINED_FUNCTION_1_77(v55, &v212);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_0();
  v58 = OUTLINED_FUNCTION_8_0(v57);
  v59 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(v58);
  v60 = OUTLINED_FUNCTION_1_77(v59, &v210);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_0();
  v62 = OUTLINED_FUNCTION_8_0(v61);
  v63 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(v62);
  v64 = OUTLINED_FUNCTION_1_77(v63, v209);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_0();
  v66 = OUTLINED_FUNCTION_8_0(v65);
  v67 = type metadata accessor for ListSection(v66);
  v68 = OUTLINED_FUNCTION_1_77(v67, &v207);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_0();
  v70 = OUTLINED_FUNCTION_8_0(v69);
  ContextLockup = type metadata accessor for SearchQueryContextLockup(v70);
  v72 = OUTLINED_FUNCTION_1_77(ContextLockup, v208);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_0();
  v74 = OUTLINED_FUNCTION_8_0(v73);
  v75 = type metadata accessor for PopoverSelector(v74);
  v76 = OUTLINED_FUNCTION_1_77(v75, v205);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_0();
  v78 = OUTLINED_FUNCTION_8_0(v77);
  v79 = type metadata accessor for PlaylistDetailHeaderLockup(v78);
  v80 = OUTLINED_FUNCTION_1_77(v79, v204);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_6_0();
  v82 = OUTLINED_FUNCTION_8_0(v81);
  v83 = type metadata accessor for ParagraphComponentModel(v82);
  v84 = OUTLINED_FUNCTION_1_77(v83, v203);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_6_0();
  v86 = OUTLINED_FUNCTION_8_0(v85);
  v87 = type metadata accessor for SongDetailList(v86);
  v88 = OUTLINED_FUNCTION_1_77(v87, v202);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_6_0();
  v90 = OUTLINED_FUNCTION_8_0(v89);
  v91 = type metadata accessor for LandingUpsell(v90);
  v92 = OUTLINED_FUNCTION_1_77(v91, v201);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_6_0();
  v94 = OUTLINED_FUNCTION_8_0(v93);
  v95 = type metadata accessor for InlineUpsell(v94);
  v96 = OUTLINED_FUNCTION_1_77(v95, v199);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_6_0();
  v98 = OUTLINED_FUNCTION_8_0(v97);
  v99 = type metadata accessor for HeaderComponentModel(v98);
  v100 = OUTLINED_FUNCTION_1_77(v99, v198);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_6_0();
  v102 = OUTLINED_FUNCTION_8_0(v101);
  v103 = type metadata accessor for GroupedTextListLockup(v102);
  v104 = OUTLINED_FUNCTION_1_77(v103, v197);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_6_0();
  v106 = OUTLINED_FUNCTION_8_0(v105);
  v107 = type metadata accessor for GradientListRowModel(v106);
  v108 = OUTLINED_FUNCTION_1_77(v107, v196);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_6_0();
  v110 = OUTLINED_FUNCTION_8_0(v109);
  v111 = type metadata accessor for EmptyStateLockup(v110);
  v112 = OUTLINED_FUNCTION_1_77(v111, v195);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_6_0();
  v114 = OUTLINED_FUNCTION_8_0(v113);
  v115 = type metadata accessor for CuratorDetailHeaderComponentModel(v114);
  v116 = OUTLINED_FUNCTION_1_77(v115, v194);
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_6_0();
  v118 = OUTLINED_FUNCTION_8_0(v117);
  v119 = type metadata accessor for ContainerDetailTracklistFooterLockup(v118);
  v120 = OUTLINED_FUNCTION_1_77(v119, v193);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_6_0();
  v122 = OUTLINED_FUNCTION_8_0(v121);
  v123 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(v122);
  v124 = OUTLINED_FUNCTION_1_77(v123, v192);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_6_0();
  v126 = OUTLINED_FUNCTION_8_0(v125);
  v127 = type metadata accessor for ArtistLatestReleaseLockup(v126);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_7();
  v129 = type metadata accessor for ArtistDetailHeaderLockup(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_7();
  v131 = type metadata accessor for AnimatedTextListItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_106_1();
  v133 = type metadata accessor for AlbumDetailHeaderLockup(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_7();
  type metadata accessor for SectionContent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_7();
  v138 = v137 - v136;
  OUTLINED_FUNCTION_2_68();
  sub_2169BBAE8();
  OUTLINED_FUNCTION_8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v167 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8, &unk_21703F640) + 48);
      sub_2169F2900();
      goto LABEL_60;
    case 2u:
      sub_2169BBB94();
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v165);
      *(v127 + 16) = xmmword_217013DA0;
      *(v127 + 56) = v131;
      v166 = sub_2169BB7B4(&qword_27CABE138, type metadata accessor for AnimatedTextListItem, &unk_217044FC0);
      OUTLINED_FUNCTION_96_4(v166);
      goto LABEL_67;
    case 3u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F172C();
      goto LABEL_69;
    case 4u:
      sub_2169BBB94();
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v157);
      *(v127 + 16) = xmmword_217013DA0;
      *(v127 + 56) = v129;
      v158 = sub_2169BB7B4(&qword_280E36D90, type metadata accessor for ArtistDetailHeaderLockup, &unk_2170411DC);
      OUTLINED_FUNCTION_96_4(v158);
      goto LABEL_67;
    case 5u:
      sub_2169BBB94();
      v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v172 = OUTLINED_FUNCTION_75_7(v171);
      *(v172 + 16) = xmmword_217013DA0;
      *(v172 + 56) = v127;
      v127 = v172;
      v173 = sub_2169BB7B4(&qword_280E35C28, type metadata accessor for ArtistLatestReleaseLockup, &unk_217060798);
      OUTLINED_FUNCTION_96_4(v173);
      goto LABEL_67;
    case 6u:
      sub_2169BBB94();
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v176);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v192);
      v142 = &unk_280E2E350;
      v143 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup;
      v144 = &unk_2170515E8;
      goto LABEL_66;
    case 7u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2A48();
      goto LABEL_69;
    case 8u:
      sub_2169BBB94();
      v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v179);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v193);
      v142 = &unk_280E2E290;
      v143 = type metadata accessor for ContainerDetailTracklistFooterLockup;
      v144 = &unk_21701A7C0;
      goto LABEL_66;
    case 9u:
      sub_2169BBB94();
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v162);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v194);
      v142 = &unk_280E2F350;
      v143 = type metadata accessor for CuratorDetailHeaderComponentModel;
      v144 = &unk_21703772C;
      goto LABEL_66;
    case 0xAu:
      sub_2169BBB94();
      v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v178);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v195);
      v142 = &unk_280E41380;
      v143 = type metadata accessor for EmptyStateLockup;
      v144 = &unk_2170201A4;
      goto LABEL_66;
    case 0xBu:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2B90();
      goto LABEL_69;
    case 0xCu:
      sub_2169BBB94();
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v161);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v196);
      v142 = &unk_27CABE108;
      v143 = type metadata accessor for GradientListRowModel;
      v144 = &unk_21701FE64;
      goto LABEL_66;
    case 0xDu:
      sub_2169BBB94();
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v175);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v197);
      v142 = &unk_280E3A888;
      v143 = type metadata accessor for GroupedTextListLockup;
      v144 = &unk_217066438;
      goto LABEL_66;
    case 0xEu:
      sub_2169BBB94();
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v153);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v198);
      v142 = &qword_280E3C3A8;
      v143 = type metadata accessor for HeaderComponentModel;
      v144 = &unk_217066BA0;
      goto LABEL_66;
    case 0xFu:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2CD8();
      goto LABEL_69;
    case 0x10u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2E20();
      goto LABEL_69;
    case 0x11u:
      sub_2169BBB94();
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v169);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v199);
      v142 = &unk_280E44CE0;
      v143 = type metadata accessor for InlineUpsell;
      v144 = &unk_2170351D4;
      goto LABEL_66;
    case 0x12u:
      sub_2169BBB94();
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v177);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v201);
      v142 = &unk_280E43EB0;
      v143 = type metadata accessor for LandingUpsell;
      v144 = &unk_21704DB30;
      goto LABEL_66;
    case 0x13u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F1B38();
      goto LABEL_69;
    case 0x14u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2F68();
      goto LABEL_69;
    case 0x15u:
      OUTLINED_FUNCTION_51_7();
      v138 = v210;
      sub_2169BBB94();
      sub_2169F39A8();
      v127 = v174;
      v156 = type metadata accessor for SearchResultsListSection;
      goto LABEL_49;
    case 0x16u:
      OUTLINED_FUNCTION_25_24();
      OUTLINED_FUNCTION_48_14();
      sub_2169BBB94();
      sub_2169F1EB8();
      v127 = v181;
      v156 = type metadata accessor for ListSection;
      goto LABEL_49;
    case 0x17u:
      sub_2169BBB94();
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v187);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v202);
      v142 = qword_280E42AE0;
      v143 = type metadata accessor for SongDetailList;
      v144 = &unk_21703E998;
      goto LABEL_66;
    case 0x18u:
      sub_2169BBB94();
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v164);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v203);
      v142 = &unk_280E37B38;
      v143 = type metadata accessor for ParagraphComponentModel;
      v144 = &unk_21702E9C0;
      goto LABEL_66;
    case 0x19u:
      sub_2169BBB94();
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v163);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v204);
      v142 = qword_280E34400;
      v143 = type metadata accessor for PlaylistDetailHeaderLockup;
      v144 = &unk_217053180;
      goto LABEL_66;
    case 0x1Au:
      v167 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0, &unk_217030FE0) + 48);
      sub_2169F30B0();
LABEL_60:
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_5_54();
      v183 = v138 + v167;
      goto LABEL_61;
    case 0x1Bu:
      sub_2169BBB94();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v151);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v205);
      v142 = &unk_27CAB9C38;
      v143 = type metadata accessor for PopoverSelector;
      v144 = &unk_217015F18;
      goto LABEL_66;
    case 0x1Cu:
      OUTLINED_FUNCTION_43_19();
      sub_2169F31F8();
      goto LABEL_69;
    case 0x1Du:
      OUTLINED_FUNCTION_43_19();
      sub_2169F3340();
      goto LABEL_69;
    case 0x1Eu:
      OUTLINED_FUNCTION_43_19();
      sub_2169F1D10();
      goto LABEL_69;
    case 0x1Fu:
      sub_2169BBB94();
      v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v168);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v208);
      v142 = &unk_280E36308;
      v143 = type metadata accessor for SearchQueryContextLockup;
      v144 = &unk_21702D7E0;
      goto LABEL_66;
    case 0x20u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F3488();
      goto LABEL_69;
    case 0x21u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2030();
      goto LABEL_69;
    case 0x22u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2178();
      goto LABEL_69;
    case 0x23u:
      sub_2169BBB94();
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v149);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, v209);
      v142 = &unk_280E2CAC0;
      v143 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup;
      v144 = &unk_21702A6E8;
      goto LABEL_66;
    case 0x24u:
      sub_2169BBB94();
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v150);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, &v210);
      v142 = &unk_280E2D280;
      v143 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup;
      v144 = &unk_217033C64;
      goto LABEL_66;
    case 0x25u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F35D0();
      goto LABEL_69;
    case 0x26u:
      sub_2169BBB94();
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v188);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, &v217);
      v142 = &unk_280E2D5F8;
      v143 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup;
      v144 = &unk_21702D594;
      goto LABEL_66;
    case 0x27u:
      sub_2169BBB94();
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v184);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, &v218);
      v142 = &unk_280E2EF10;
      v143 = type metadata accessor for SocialOnboardingWelcomePageLockup;
      v144 = &unk_21706AAFC;
      goto LABEL_66;
    case 0x28u:
      sub_2169BBB94();
      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v159);
      *(v127 + 16) = xmmword_217013DA0;
      *(v127 + 56) = v201[0];
      v142 = &unk_280E2FEC8;
      v143 = type metadata accessor for SocialProfileDetailHeaderLockup;
      v144 = &unk_2170374D0;
      goto LABEL_66;
    case 0x29u:
      sub_2169BBB94();
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v170);
      *(v127 + 16) = xmmword_217013DA0;
      *(v127 + 56) = v202[0];
      v142 = &unk_280E2FE08;
      v143 = type metadata accessor for SocialProfileEditorHeaderLockup;
      v144 = &unk_21702BE64;
      goto LABEL_66;
    case 0x2Au:
      sub_2169BBB94();
      v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v185);
      *(v127 + 16) = xmmword_217013DA0;
      *(v127 + 56) = v203[0];
      v142 = &unk_280E2CDC8;
      v143 = type metadata accessor for SocialProfileFindFriendsButtonComponentModel;
      v144 = &unk_2170508E0;
      goto LABEL_66;
    case 0x2Bu:
      sub_2169BBB94();
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v145);
      *(v127 + 16) = xmmword_217013DA0;
      *(v127 + 56) = v204[0];
      v142 = &unk_280E2CFC0;
      v143 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader;
      v144 = &unk_2170197B4;
      goto LABEL_66;
    case 0x2Cu:
      sub_2169BBB94();
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v152);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, &v216);
      v142 = &unk_280E2D540;
      v143 = type metadata accessor for SocialProfileFollowRequestResponseHeader;
      v144 = &unk_21703A100;
      goto LABEL_66;
    case 0x2Du:
      OUTLINED_FUNCTION_26_25();
      OUTLINED_FUNCTION_48_14();
      sub_2169BBB94();
      sub_2169F2468();
      v127 = v180;
      v156 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel;
      goto LABEL_49;
    case 0x2Eu:
      sub_2169BBB94();
      v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v189);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, &v212);
      v142 = &unk_280E2D6A8;
      v143 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup;
      v144 = &unk_21704A380;
      goto LABEL_66;
    case 0x2Fu:
      sub_2169BBB94();
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v148);
      *(v127 + 16) = xmmword_217013DA0;
      OUTLINED_FUNCTION_8_40(v127, &v214);
      v142 = &unk_280E2CE80;
      v143 = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup;
      v144 = &unk_21704BAB0;
      goto LABEL_66;
    case 0x30u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2320();
      goto LABEL_69;
    case 0x31u:
      OUTLINED_FUNCTION_27_23();
      OUTLINED_FUNCTION_48_14();
      sub_2169BBB94();
      sub_2169F2320();
      v127 = v155;
      v156 = type metadata accessor for SocialProfileHorizontalLockupSection;
LABEL_49:
      v182 = v156;
      v183 = v138;
LABEL_61:
      sub_2169BBB3C(v183, v182);
      return v127;
    case 0x32u:
      sub_2169BBB94();
      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v141);
      *(v127 + 16) = xmmword_217013DA0;
      *(v127 + 56) = v205[0];
      v142 = &unk_280E2C268;
      v143 = type metadata accessor for Spacer;
      v144 = &unk_217030350;
      goto LABEL_66;
    case 0x33u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F3718();
      goto LABEL_69;
    case 0x34u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F3860();
      goto LABEL_69;
    case 0x35u:
      sub_2169BBB94();
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v147);
      *(v127 + 16) = xmmword_217013DA0;
      *(v127 + 56) = v206;
      v142 = qword_280E41E98;
      v143 = type metadata accessor for SuperHeroLockup;
      v144 = &unk_217044670;
      goto LABEL_66;
    case 0x36u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F25E0();
      goto LABEL_69;
    case 0x37u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F2728();
      goto LABEL_69;
    case 0x38u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F39A8();
      goto LABEL_69;
    case 0x39u:
      OUTLINED_FUNCTION_43_19();
      sub_2169F3AF0();
      goto LABEL_69;
    case 0x3Au:
      sub_2169BBB94();
      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v154);
      *(v127 + 16) = xmmword_217013DA0;
      *(v127 + 56) = v208[0];
      v142 = qword_280E3E588;
      v143 = type metadata accessor for TVMovieDescription;
      v144 = &unk_21706591C;
      goto LABEL_66;
    case 0x3Bu:
      sub_2169BBB94();
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v186);
      *(v127 + 16) = xmmword_217013DA0;
      *(v127 + 56) = v209[0];
      v142 = qword_280E34CE8;
      v143 = type metadata accessor for TVMovieDetailHeaderLockup;
      v144 = &unk_2170415F8;
      goto LABEL_66;
    case 0x3Cu:
      sub_2169BBB94();
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v160);
      *(v127 + 16) = xmmword_217013DA0;
      *(v127 + 56) = v211;
      v142 = &unk_27CABE110;
      v143 = type metadata accessor for VerticalArtworkListItem;
      v144 = &unk_2170509A8;
LABEL_66:
      v190 = sub_2169BB7B4(v142, v143, v144);
      OUTLINED_FUNCTION_96_4(v190);
      goto LABEL_67;
    case 0x3Du:
      OUTLINED_FUNCTION_43_19();
      sub_2169F3C38();
LABEL_69:
      v127 = v146;

      return v127;
    default:
      sub_2169BBB94();
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD120, &qword_217029E28);
      v127 = OUTLINED_FUNCTION_75_7(v139);
      *(v127 + 16) = xmmword_217013DA0;
      *(v127 + 56) = v133;
      v140 = sub_2169BB7B4(&qword_280E38970, type metadata accessor for AlbumDetailHeaderLockup, &unk_2170401D0);
      OUTLINED_FUNCTION_96_4(v140);
LABEL_67:
      sub_2169BBB94();
      return v127;
  }
}

void sub_2169A4B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  v366 = v21;
  v367 = v25;
  v368 = v20;
  v369 = v26;
  v27 = type metadata accessor for TVMovieDetailHeaderLockup(0);
  v28 = OUTLINED_FUNCTION_1_77(v27, v357);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47_1();
  v31 = OUTLINED_FUNCTION_8_0(v30);
  v32 = type metadata accessor for TVMovieDescription(v31);
  v33 = OUTLINED_FUNCTION_36(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47_1();
  v36 = OUTLINED_FUNCTION_8_0(v35);
  v37 = type metadata accessor for SuperHeroLockup(v36);
  v38 = OUTLINED_FUNCTION_1_77(v37, &v352);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47_1();
  v41 = OUTLINED_FUNCTION_8_0(v40);
  v42 = type metadata accessor for Spacer(v41);
  v43 = OUTLINED_FUNCTION_36(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_47_1();
  v46 = OUTLINED_FUNCTION_8_0(v45);
  v47 = type metadata accessor for SocialProfileHorizontalLockupSection(v46);
  v48 = OUTLINED_FUNCTION_1_77(v47, &v349);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47_1();
  v51 = OUTLINED_FUNCTION_8_0(v50);
  v52 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(v51);
  v53 = OUTLINED_FUNCTION_1_77(v52, &v348);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47_1();
  v56 = OUTLINED_FUNCTION_8_0(v55);
  FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(v56);
  v58 = OUTLINED_FUNCTION_1_77(FriendsButtonComponentModel, &v347);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47_1();
  v61 = OUTLINED_FUNCTION_8_0(v60);
  v62 = type metadata accessor for SocialProfileEditorHeaderLockup(v61);
  v63 = OUTLINED_FUNCTION_1_77(v62, v346);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_47_1();
  v66 = OUTLINED_FUNCTION_8_0(v65);
  v67 = type metadata accessor for SocialProfileDetailHeaderLockup(v66);
  v68 = OUTLINED_FUNCTION_1_77(v67, &v345);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_47_1();
  v71 = OUTLINED_FUNCTION_8_0(v70);
  v72 = type metadata accessor for SocialOnboardingWelcomePageLockup(v71);
  v73 = OUTLINED_FUNCTION_1_77(v72, &v344);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_47_1();
  v76 = OUTLINED_FUNCTION_8_0(v75);
  v77 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(v76);
  v78 = OUTLINED_FUNCTION_36(v77);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_47_1();
  v81 = OUTLINED_FUNCTION_8_0(v80);
  v82 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(v81);
  v83 = OUTLINED_FUNCTION_36(v82);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_47_1();
  v86 = OUTLINED_FUNCTION_8_0(v85);
  v87 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(v86);
  v88 = OUTLINED_FUNCTION_36(v87);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_47_1();
  v91 = OUTLINED_FUNCTION_8_0(v90);
  ContextLockup = type metadata accessor for SearchQueryContextLockup(v91);
  v93 = OUTLINED_FUNCTION_1_77(ContextLockup, &v343);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_47_1();
  v96 = OUTLINED_FUNCTION_8_0(v95);
  v97 = type metadata accessor for PopoverSelector(v96);
  v98 = OUTLINED_FUNCTION_1_77(v97, &v342);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_47_1();
  v101 = OUTLINED_FUNCTION_8_0(v100);
  v102 = type metadata accessor for ParagraphComponentModel(v101);
  v103 = OUTLINED_FUNCTION_1_77(v102, &v341);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_47_1();
  v106 = OUTLINED_FUNCTION_8_0(v105);
  v107 = type metadata accessor for InlineUpsell(v106);
  v108 = OUTLINED_FUNCTION_36(v107);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_47_1();
  v111 = OUTLINED_FUNCTION_8_0(v110);
  v112 = type metadata accessor for HeaderComponentModel(v111);
  v113 = OUTLINED_FUNCTION_36(v112);
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_47_1();
  v116 = OUTLINED_FUNCTION_8_0(v115);
  v117 = type metadata accessor for GroupedTextListLockup(v116);
  v118 = OUTLINED_FUNCTION_1_77(v117, &v340);
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_47_1();
  v121 = OUTLINED_FUNCTION_8_0(v120);
  v122 = type metadata accessor for EmptyStateLockup(v121);
  v123 = OUTLINED_FUNCTION_36(v122);
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_47_1();
  v126 = OUTLINED_FUNCTION_8_0(v125);
  v127 = type metadata accessor for CuratorDetailHeaderComponentModel(v126);
  v128 = OUTLINED_FUNCTION_1_77(v127, &v339);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_47_1();
  v131 = OUTLINED_FUNCTION_8_0(v130);
  v132 = type metadata accessor for ContainerDetailTracklistFooterLockup(v131);
  v133 = OUTLINED_FUNCTION_1_77(v132, &v338);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_47_1();
  v136 = OUTLINED_FUNCTION_8_0(v135);
  v137 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(v136);
  v138 = OUTLINED_FUNCTION_1_77(v137, &v337);
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_47_1();
  v141 = OUTLINED_FUNCTION_8_0(v140);
  v142 = type metadata accessor for ArtistLatestReleaseLockup(v141);
  v143 = OUTLINED_FUNCTION_1_77(v142, &v336);
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_47_1();
  v146 = OUTLINED_FUNCTION_8_0(v145);
  v147 = type metadata accessor for ArtistDetailHeaderLockup(v146);
  v148 = OUTLINED_FUNCTION_1_77(v147, &v335);
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_47_1();
  v151 = OUTLINED_FUNCTION_8_0(v150);
  v152 = type metadata accessor for ContentDescriptor(v151);
  v153 = OUTLINED_FUNCTION_36(v152);
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_6_0();
  v365 = v154;
  v155 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for SectionContent(v155);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_1_0();
  v362 = v157;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_6_4();
  v364 = v159;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_6_4();
  v363 = v161;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_6_4();
  v360 = v163;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_6_4();
  v359 = v165;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_6_4();
  v357[1] = v167;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_6_4();
  v361 = v169;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_6_4();
  v356 = v171;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_6_4();
  v358 = v173;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v174);
  OUTLINED_FUNCTION_6_4();
  v357[0] = v175;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_6_4();
  v352 = v177;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v178);
  OUTLINED_FUNCTION_6_4();
  v355 = v179;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_6_4();
  v354 = v181;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v182);
  OUTLINED_FUNCTION_6_4();
  v353 = v183;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_6_4();
  v351 = v185;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_6_4();
  v350 = v187;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v189);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v192);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v194);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v196);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v197);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v201);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v202);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v203);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v205);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v206);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v207);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v208);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v209);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v210);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v211);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v212);
  OUTLINED_FUNCTION_100_3();
  MEMORY[0x28223BE20](v213);
  OUTLINED_FUNCTION_69_1();
  MEMORY[0x28223BE20](v214);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v216);
  OUTLINED_FUNCTION_102_7();
  MEMORY[0x28223BE20](v217);
  v219 = (v333 - v218);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB58, &unk_217030FF0);
  OUTLINED_FUNCTION_36(v220);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v221);
  OUTLINED_FUNCTION_106_1();
  v223 = v23 + *(v222 + 56);
  sub_2169BBAE8();
  v369 = v223;
  sub_2169BBAE8();
  OUTLINED_FUNCTION_39();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v224 = v23;
      sub_2169BBAE8();
      v225 = *v219;
      v226 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8, &unk_21703F640) + 48);
      v227 = v369;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v228 = *v227;
        sub_2169BBB94();
        v229 = sub_2169A7470(v225, v228);

        *v367 = v229;
        sub_2169BBB94();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_5_54();
        sub_2169BBB3C(v227 + v226, v230);
        v23 = v224;
        goto LABEL_98;
      }

      sub_2169BBB3C(v219 + v226, type metadata accessor for ContentDescriptor);

      v23 = v224;
      goto LABEL_129;
    case 3u:
      OUTLINED_FUNCTION_91();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 3)
      {
        goto LABEL_121;
      }

      v281 = OUTLINED_FUNCTION_19_30();
      sub_2169A7F94(v281, v282);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 4u:
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v266 = OUTLINED_FUNCTION_42_19(v265);
        sub_2169BBB3C(v266, type metadata accessor for ArtistDetailHeaderLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v329 = type metadata accessor for ArtistDetailHeaderLockup;
      v330 = v24;
      goto LABEL_128;
    case 5u:
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v296 = OUTLINED_FUNCTION_42_19(v295);
        sub_2169BBB3C(v296, type metadata accessor for ArtistLatestReleaseLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v329 = type metadata accessor for ArtistLatestReleaseLockup;
      v330 = v22;
      goto LABEL_128;
    case 6u:
      sub_2169BBAE8();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v329 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup;
        v330 = v20;
        goto LABEL_128;
      }

      v297 = v333[7];
      sub_2169BBB94();
      OUTLINED_FUNCTION_37_23();
      if (MEMORY[0x21CEA0160](v297 + *(v334 + 20), v20 + *(v334 + 20)))
      {
        v298 = v297;
      }

      else
      {
        v298 = v20;
      }

      sub_2169BBB3C(v298, type metadata accessor for ArtistLatestReleaseAndTopSongsLockup);
      OUTLINED_FUNCTION_23_26();
      OUTLINED_FUNCTION_90();
      goto LABEL_97;
    case 7u:
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_121;
      }

      v273 = OUTLINED_FUNCTION_19_30();
      sub_2169A8AB8(v273, v274);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 8u:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v284 = OUTLINED_FUNCTION_42_19(v283);
        sub_2169BBB3C(v284, type metadata accessor for ContainerDetailTracklistFooterLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for ContainerDetailTracklistFooterLockup;
      goto LABEL_127;
    case 9u:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v286 = OUTLINED_FUNCTION_42_19(v285);
        sub_2169BBB3C(v286, type metadata accessor for CuratorDetailHeaderComponentModel);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for CuratorDetailHeaderComponentModel;
      goto LABEL_127;
    case 0xAu:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v304 = OUTLINED_FUNCTION_42_19(v303);
        sub_2169BBB3C(v304, type metadata accessor for EmptyStateLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for EmptyStateLockup;
      goto LABEL_127;
    case 0xBu:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 11)
      {
        goto LABEL_121;
      }

      v301 = OUTLINED_FUNCTION_19_30();
      sub_2169A95DC(v301, v302);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0xDu:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v252 = OUTLINED_FUNCTION_42_19(v251);
        sub_2169BBB3C(v252, type metadata accessor for GroupedTextListLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for GroupedTextListLockup;
      goto LABEL_127;
    case 0xEu:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v276 = OUTLINED_FUNCTION_42_19(v275);
        sub_2169BBB3C(v276, type metadata accessor for HeaderComponentModel);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for HeaderComponentModel;
      goto LABEL_127;
    case 0xFu:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 15)
      {
        goto LABEL_121;
      }

      v261 = OUTLINED_FUNCTION_19_30();
      sub_2169AA100(v261, v262);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x10u:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 16)
      {
        goto LABEL_121;
      }

      v245 = OUTLINED_FUNCTION_19_30();
      sub_2169AAC24(v245, v246);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x11u:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v290 = OUTLINED_FUNCTION_42_19(v289);
        sub_2169BBB3C(v290, type metadata accessor for InlineUpsell);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for InlineUpsell;
      goto LABEL_127;
    case 0x13u:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 19)
      {
        goto LABEL_121;
      }

      v291 = OUTLINED_FUNCTION_19_30();
      sub_2169AB748(v291, v292);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x18u:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v315 = OUTLINED_FUNCTION_42_19(v314);
        sub_2169BBB3C(v315, type metadata accessor for ParagraphComponentModel);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for ParagraphComponentModel;
      goto LABEL_127;
    case 0x1Au:
      v305 = v346[2];
      sub_2169BBAE8();
      v306 = *v305;
      v307 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0, &unk_217030FE0) + 48);
      v308 = v369;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v309 = *v308;
        sub_2169BBB94();
        v368 = v23;
        v310 = sub_2169AC26C(v306, v309);

        *v367 = v310;
        v23 = v368;
        sub_2169BBB94();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_5_54();
        sub_2169BBB3C(v308 + v307, v311);
        goto LABEL_98;
      }

      sub_2169BBB3C(v305 + v307, type metadata accessor for ContentDescriptor);
LABEL_121:

      goto LABEL_129;
    case 0x1Bu:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v242 = OUTLINED_FUNCTION_42_19(v241);
        sub_2169BBB3C(v242, type metadata accessor for PopoverSelector);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for PopoverSelector;
      goto LABEL_127;
    case 0x1Cu:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 28)
      {
        goto LABEL_121;
      }

      v263 = OUTLINED_FUNCTION_19_30();
      sub_2169ACD90(v263, v264);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x1Du:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 29)
      {
        goto LABEL_121;
      }

      v318 = OUTLINED_FUNCTION_19_30();
      sub_2169AD8B4(v318, v319);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x1Eu:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 30)
      {
        goto LABEL_121;
      }

      v243 = OUTLINED_FUNCTION_19_30();
      sub_2169AE3D8(v243, v244);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x1Fu:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 31)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v260 = OUTLINED_FUNCTION_42_19(v259);
        sub_2169BBB3C(v260, type metadata accessor for SearchQueryContextLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for SearchQueryContextLockup;
      goto LABEL_127;
    case 0x20u:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 32)
      {
        goto LABEL_121;
      }

      v249 = OUTLINED_FUNCTION_19_30();
      sub_2169AEEFC(v249, v250);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x21u:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 33)
      {
        goto LABEL_121;
      }

      v277 = OUTLINED_FUNCTION_19_30();
      sub_2169AFA20(v277, v278);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x22u:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 34)
      {
        goto LABEL_121;
      }

      v247 = OUTLINED_FUNCTION_19_30();
      sub_2169B0544(v247, v248);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x23u:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 35)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v323 = OUTLINED_FUNCTION_42_19(v322);
        sub_2169BBB3C(v323, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup;
      goto LABEL_127;
    case 0x24u:
      OUTLINED_FUNCTION_78_9();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 36)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v321 = OUTLINED_FUNCTION_42_19(v320);
        sub_2169BBB3C(v321, type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup;
      goto LABEL_127;
    case 0x25u:
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 37)
      {
        goto LABEL_121;
      }

      v255 = OUTLINED_FUNCTION_19_30();
      sub_2169B1068(v255, v256);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x26u:
      OUTLINED_FUNCTION_78_9();
      v267 = v369;
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        v268 = v336;
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        v269 = MEMORY[0x21CEA0160](v268 + 16, v267 + 2);
        v270 = OUTLINED_FUNCTION_42_19(v269);
        sub_2169BBB3C(v270, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup;
      goto LABEL_127;
    case 0x27u:
      v219 = v350;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v294 = OUTLINED_FUNCTION_42_19(v293);
        sub_2169BBB3C(v294, type metadata accessor for SocialOnboardingWelcomePageLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for SocialOnboardingWelcomePageLockup;
      goto LABEL_127;
    case 0x28u:
      v219 = v351;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 40)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v272 = OUTLINED_FUNCTION_42_19(v271);
        sub_2169BBB3C(v272, type metadata accessor for SocialProfileDetailHeaderLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for SocialProfileDetailHeaderLockup;
      goto LABEL_127;
    case 0x29u:
      v219 = v353;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 41)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v327 = OUTLINED_FUNCTION_42_19(v326);
        sub_2169BBB3C(v327, type metadata accessor for SocialProfileEditorHeaderLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for SocialProfileEditorHeaderLockup;
      goto LABEL_127;
    case 0x2Au:
      v219 = v354;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 42)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v254 = OUTLINED_FUNCTION_42_19(v253);
        sub_2169BBB3C(v254, type metadata accessor for SocialProfileFindFriendsButtonComponentModel);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for SocialProfileFindFriendsButtonComponentModel;
      goto LABEL_127;
    case 0x2Bu:
      v219 = v355;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 43)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v313 = OUTLINED_FUNCTION_42_19(v312);
        sub_2169BBB3C(v313, type metadata accessor for SocialProfileDetailViewFollowRequestsHeader);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader;
      goto LABEL_127;
    case 0x30u:
      OUTLINED_FUNCTION_97_6();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 48)
      {
        goto LABEL_121;
      }

      v324 = OUTLINED_FUNCTION_19_30();
      sub_2169B1B8C(v324, v325);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x31u:
      v219 = v357[0];
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 49)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v238 = OUTLINED_FUNCTION_42_19(v237);
        sub_2169BBB3C(v238, type metadata accessor for SocialProfileHorizontalLockupSection);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for SocialProfileHorizontalLockupSection;
      goto LABEL_127;
    case 0x32u:
      v219 = v358;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 50)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v300 = OUTLINED_FUNCTION_42_19(v299);
        sub_2169BBB3C(v300, type metadata accessor for Spacer);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for Spacer;
      goto LABEL_127;
    case 0x34u:
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 52)
      {
        goto LABEL_121;
      }

      v235 = OUTLINED_FUNCTION_19_30();
      sub_2169B26B0(v235, v236);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x35u:
      v219 = v361;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 53)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v234 = OUTLINED_FUNCTION_42_19(v233);
        sub_2169BBB3C(v234, type metadata accessor for SuperHeroLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for SuperHeroLockup;
      goto LABEL_127;
    case 0x37u:
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 55)
      {
        goto LABEL_121;
      }

      v257 = OUTLINED_FUNCTION_19_30();
      sub_2169B31D4(v257, v258);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x38u:
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 56)
      {
        goto LABEL_121;
      }

      v279 = OUTLINED_FUNCTION_19_30();
      sub_2169B3CF8(v279, v280);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x39u:
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 57)
      {
        goto LABEL_121;
      }

      v316 = OUTLINED_FUNCTION_19_30();
      sub_2169B481C(v316, v317);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    case 0x3Au:
      v219 = v363;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 58)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_93_8();
        v232 = OUTLINED_FUNCTION_42_19(v231);
        sub_2169BBB3C(v232, type metadata accessor for TVMovieDescription);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
        goto LABEL_97;
      }

      v328 = type metadata accessor for TVMovieDescription;
      goto LABEL_127;
    case 0x3Bu:
      v219 = v364;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_90();
      if (swift_getEnumCaseMultiPayload() == 59)
      {
        sub_2169BBB94();
        OUTLINED_FUNCTION_37_23();
        OUTLINED_FUNCTION_29_23();
        v240 = OUTLINED_FUNCTION_42_19(v239);
        sub_2169BBB3C(v240, type metadata accessor for TVMovieDetailHeaderLockup);
        OUTLINED_FUNCTION_23_26();
        OUTLINED_FUNCTION_90();
LABEL_97:
        swift_storeEnumTagMultiPayload();
LABEL_98:
        sub_2169BBB3C(v23, type metadata accessor for SectionContent);
      }

      else
      {
        v328 = type metadata accessor for TVMovieDetailHeaderLockup;
LABEL_127:
        v329 = v328;
        v330 = v219;
LABEL_128:
        sub_2169BBB3C(v330, v329);
LABEL_129:
        v331 = sub_2169BB698();
        OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v331);
        OUTLINED_FUNCTION_88_6(v332, 130);
        sub_216697664(v23, &qword_27CABEB58, &unk_217030FF0);
      }

      OUTLINED_FUNCTION_21_4();
      return;
    case 0x3Du:
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_28_25() != 61)
      {
        goto LABEL_121;
      }

      v287 = OUTLINED_FUNCTION_19_30();
      sub_2169B5340(v287, v288);
      OUTLINED_FUNCTION_47_18();

      OUTLINED_FUNCTION_18_27();
      goto LABEL_97;
    default:
      goto LABEL_129;
  }
}
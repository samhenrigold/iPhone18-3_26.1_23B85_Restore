uint64_t (*sub_222B61000(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_222B62048;
}

uint64_t (*sub_222B61120(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_222B61FBC;
}

void *sub_222B61240(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for FeaturisedTurn(0) - 8;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = *(*a1 + 16);
  if (!v14)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v20 = sub_222C9431C();
    __swift_project_value_buffer(v20, qword_280FE2340);

    v21 = sub_222C942FC();
    v22 = sub_222C94A4C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_222B437C0(v3[2], v3[3], &v29);
      _os_log_impl(&dword_222B39000, v21, v22, "%s Couldn't extract final turn in session as session contains no turns.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x223DCA8C0](v24, -1, -1);
      MEMORY[0x223DCA8C0](v23, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = *(v11 + 72);
  sub_222B620D8(*a1 + v15 + v16 * (v14 - 1), &v28 - v12, type metadata accessor for FeaturisedTurn);
  v17 = sub_222B61988(v13, a2);
  if (!v17[2])
  {

    v26 = (*(*(v6 + 88) + 152))(a1, *(v6 + 80));
    v27 = *(v26 + 16);
    if (v27)
    {
      sub_222B620D8(v26 + v15 + (v27 - 1) * v16, v9, type metadata accessor for FeaturisedTurn);

      v18 = sub_222B61988(v9, a2);
      sub_222B62140(v9, type metadata accessor for FeaturisedTurn);
      v19 = v13;
      goto LABEL_12;
    }

    sub_222B62140(v13, type metadata accessor for FeaturisedTurn);
    return MEMORY[0x277D84F90];
  }

  v18 = v17;
  v19 = v13;
LABEL_12:
  sub_222B62140(v19, type metadata accessor for FeaturisedTurn);
  return v18;
}

char *PartialRepetitionGroundTruthGenerator.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t PartialRepetitionGroundTruthGenerator.__deallocating_deinit()
{
  PartialRepetitionGroundTruthGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_222B616B8(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_222B617D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_222B61890()
{
  result = qword_27D0253F8;
  if (!qword_27D0253F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0253E0, &qword_222C984B8);
    sub_222B61940(&qword_27D025400, &qword_27D025408, &unk_222C984C0, MEMORY[0x277D83988]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0253F8);
  }

  return result;
}

uint64_t sub_222B61940(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void *sub_222B61988(char *a1, uint64_t a2)
{
  v73 = sub_222C9367C();
  v4 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v61 - v7;
  v8 = type metadata accessor for TurnPairRestatementClassification(0);
  MEMORY[0x28223BE20](v8);
  v68 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v61 - v11;
  MEMORY[0x28223BE20](v12);
  v67 = &v61 - v13;
  MEMORY[0x28223BE20](v14);
  v71 = &v61 - v15;
  MEMORY[0x28223BE20](v16);
  v20 = &v61 - v19;
  v21 = *(a2 + 16);
  v64 = v4;
  v69 = v18;
  if (!v21)
  {
    v27 = *(v4 + 16);
    v26 = MEMORY[0x277D84F98];
LABEL_18:
    v47 = v62;
    v27(v62, a1, v73);
    if (v26[2])
    {
      v48 = (v4 + 8);
      v49 = MEMORY[0x277D84F90];
      v50 = v73;
      do
      {
        v51 = sub_222B8CA54(v47);
        if ((v52 & 1) == 0)
        {
          break;
        }

        v53 = *(v69 + 72);
        v54 = v63;
        sub_222B620D8(v26[7] + v53 * v51, v63, type metadata accessor for TurnPairRestatementClassification);
        v55 = v54;
        v56 = v67;
        sub_222B617D8(v55, v67, type metadata accessor for TurnPairRestatementClassification);
        sub_222B620D8(v56, v68, type metadata accessor for TurnPairRestatementClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_222B4A2A0(0, v49[2] + 1, 1, v49);
        }

        v58 = v49[2];
        v57 = v49[3];
        if (v58 >= v57 >> 1)
        {
          v49 = sub_222B4A2A0((v57 > 1), v58 + 1, 1, v49);
        }

        (*v48)(v47, v50);
        v49[2] = v58 + 1;
        sub_222B617D8(v68, v49 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + v58 * v53, type metadata accessor for TurnPairRestatementClassification);
        v59 = v67;
        v27(v47, v67, v50);
        sub_222B62140(v59, type metadata accessor for TurnPairRestatementClassification);
      }

      while (v26[2]);
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
    }

    (*(v64 + 8))(v47, v73);
    return v49;
  }

  v61 = a1;
  v22 = *(v17 + 20);
  v23 = a2 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v24 = *(v18 + 72);
  v25 = (v4 + 16);
  v65 = (v4 + 8);
  v66 = v22;
  v26 = MEMORY[0x277D84F98];
  v70 = (v4 + 16);
  while (1)
  {
    sub_222B620D8(v23, v20, type metadata accessor for TurnPairRestatementClassification);
    v27 = *v25;
    v28 = v72;
    (*v25)(v72, &v20[v66], v73);
    sub_222B620D8(v20, v71, type metadata accessor for TurnPairRestatementClassification);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v26;
    v31 = sub_222B8CA54(v28);
    v32 = v26[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v26[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = v74;
        if (v30)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_222B92F4C();
        v26 = v74;
        if (v35)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_222B8E4D4(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_222B8CA54(v72);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_31;
      }

      v31 = v36;
      v26 = v74;
      if (v35)
      {
LABEL_3:
        sub_222B621A0(v71, v26[7] + v31 * v24);
        (*v65)(v72, v73);
        sub_222B62140(v20, type metadata accessor for TurnPairRestatementClassification);
        goto LABEL_4;
      }
    }

    v26[(v31 >> 6) + 8] |= 1 << v31;
    v38 = v64;
    v39 = v27;
    v40 = v72;
    v41 = v73;
    v42 = v20;
    v43 = v39;
    v39(v26[6] + *(v64 + 72) * v31, v72, v73);
    sub_222B617D8(v71, v26[7] + v31 * v24, type metadata accessor for TurnPairRestatementClassification);
    (*(v38 + 8))(v40, v41);
    sub_222B62140(v42, type metadata accessor for TurnPairRestatementClassification);
    v44 = v26[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_30;
    }

    v26[2] = v46;
    v27 = v43;
    v20 = v42;
LABEL_4:
    v23 += v24;
    --v21;
    v25 = v70;
    if (!v21)
    {
      v4 = v64;
      a1 = v61;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222B61FBC(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = a1[3];
  v4 = a1[4];
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = v3;
  v9 = v4;
  return (*(v2 + 136))(&v6);
}

uint64_t sub_222B62048(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = a1[3];
  v4 = a1[4];
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = v3;
  v9 = v4;
  return (*(v2 + 112))(&v6) & 1;
}

uint64_t sub_222B620D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B62140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222B621A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TurnPairRestatementClassification(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t PIMSProcessingState.eventName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PIMSProcessingState.eventName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

SiriPrivateLearningInference::PIMSProcessingState __swiftcall PIMSProcessingState.init(state:)(SiriPrivateLearningInference::PIMSProcessingState state)
{
  v2 = *state.eventName._countAndFlagsBits;
  *v1 = 0xD000000000000013;
  *(v1 + 8) = 0x8000000222C984B0;
  *(v1 + 16) = v2;
  return state;
}

unint64_t PIMSProcessingState.getLoggableProperties()()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025410, &unk_222C991B0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000013;
  v3 = inited + 32;
  *(inited + 16) = xmmword_222C97C40;
  *(inited + 40) = 0x8000000222C984B0;
  v4 = 0xD000000000000016;
  v5 = "edia.PlayMediaIntent";
  v6 = "enerationTriggered";
  v7 = 0xD00000000000001BLL;
  v8 = "GroundTruthExistsToConsider";
  v9 = 0xD000000000000024;
  if (v1 != 4)
  {
    v9 = 0xD000000000000021;
    v8 = "aturisationTriggered";
  }

  if (v1 != 3)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = "PIMSPluginRunTriggered";
  if (v1 == 1)
  {
    v11 = 0xD000000000000021;
  }

  else
  {
    v11 = 0xD000000000000022;
  }

  if (v1 != 1)
  {
    v10 = "aluationTriggered";
  }

  if (v1)
  {
    v4 = v11;
    v5 = v10;
  }

  if (v1 > 2)
  {
    v4 = v7;
    v5 = v6;
  }

  v12 = MEMORY[0x277D5FD28];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v12;
  *(inited + 48) = v4;
  *(inited + 56) = v5 | 0x8000000000000000;
  v13 = sub_222B628C4(inited);
  swift_setDeallocating();
  sub_222B629F8(v3);
  return v13;
}

unint64_t PIMSProcessingStateCode.rawValue.getter()
{
  v1 = 0xD000000000000021;
  v2 = *v0;
  v3 = 0xD00000000000001BLL;
  v4 = 0xD000000000000024;
  if (v2 != 4)
  {
    v4 = 0xD000000000000021;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000022;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_222B6258C()
{
  v1 = *v0;

  return v1;
}

SiriPrivateLearningInference::PIMSProcessingStateCode_optional __swiftcall PIMSProcessingStateCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222B62630(uint64_t a1)
{
  sub_222C9452C();
}

void sub_222B62718(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000021;
  v3 = *v1;
  v4 = "enerationTriggered";
  v5 = 0xD00000000000001BLL;
  v6 = "GroundTruthExistsToConsider";
  v7 = 0xD000000000000024;
  if (v3 != 4)
  {
    v7 = 0xD000000000000021;
    v6 = "aturisationTriggered";
  }

  if (v3 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "PIMSPluginRunTriggered";
  if (v3 != 1)
  {
    v2 = 0xD000000000000022;
    v8 = "aluationTriggered";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD000000000000016;
    v9 = "edia.PlayMediaIntent";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

unint64_t sub_222B627C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025368, &qword_222C98640);
    v3 = sub_222C94F8C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_222B8C9DC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222B628C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025500, &qword_222C98720);
    v3 = sub_222C94F8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_222B4FC6C(v4, &v13, &qword_27D025418, &qword_222C984F0);
      v5 = v13;
      v6 = v14;
      result = sub_222B8C9DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_222B405A0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_222B629F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025418, &qword_222C984F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222B62A64()
{
  result = qword_27D025420;
  if (!qword_27D025420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025420);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_222B62ACC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_222B62B14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_222B62B74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025438, &qword_222C98658);
    v3 = sub_222C94F8C();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[1];
      v17[0] = *v4;
      v17[1] = v6;
      v7 = v4[3];
      v18 = v4[2];
      v19 = v7;
      v8 = *(&v7 + 1);
      v20 = v17[0];
      v21 = v6;
      v22 = v18;
      v23 = *(v4 + 24);
      sub_222B4FC6C(v17, &v16, &qword_27D025440, &qword_222C98660);
      result = sub_222B8CB28(&v20);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 56 * result;
      v12 = v21;
      *v11 = v20;
      *(v11 + 16) = v12;
      *(v11 + 32) = v22;
      *(v11 + 48) = v23;
      *(v3[7] + 8 * result) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_11;
      }

      v3[2] = v15;
      if (!i)
      {

        return v3;
      }

      v4 += 4;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222B62CD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025428, &qword_222C98648);
    v3 = sub_222C94F8C();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 16);
      v16[0] = *v4;
      v16[1] = v6;
      v17 = *(v4 + 32);
      v18 = *(v4 + 48);
      v19 = v16[0];
      v20 = v6;
      v21 = v17;
      v22 = *(v4 + 48);
      sub_222B4FC6C(v16, v15, &qword_27D025430, &qword_222C98650);
      result = sub_222B8CB28(&v19);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 56 * result;
      v10 = v20;
      v11 = v21;
      *v9 = v19;
      *(v9 + 16) = v10;
      *(v9 + 32) = v11;
      *(v9 + 48) = v22;
      *(v3[7] + 2 * result) = HIWORD(v18);
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_11;
      }

      v3[2] = v14;
      if (!i)
      {

        return v3;
      }

      v4 += 56;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222B62E40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025450, &qword_222C98670);
    v3 = sub_222C94F8C();

    for (i = (a1 + 65); ; i += 20)
    {
      v5 = *(i - 33);
      v6 = *(i - 25);
      v7 = *(i - 17);
      v8 = *(i - 9);
      v9 = *(i - 1);
      v10 = *(i + 2);
      v11 = *i;

      result = sub_222B8CB9C(v5, v6, v7, v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 32 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v15 = v3[7] + 4 * result;
      *v15 = v9;
      *(v15 + 3) = (v11 | (v10 << 16)) >> 16;
      *(v15 + 1) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222B62F90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025448, &qword_222C98668);
    v3 = sub_222C94F8C();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_222B8CB9C(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222B630B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F8, &qword_222C98718);
    v7 = sub_222C94F8C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_222B4FC6C(v9, v5, &qword_27D0254F0, &qword_222C98710);
      result = sub_222B8CE14(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_222C942DC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_222C941AC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222B632F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254D8, &qword_222C986F8);
    v3 = sub_222C94F8C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_222B8C9DC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222B6340C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254D0, &qword_222C986F0);
    v3 = sub_222C94F8C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;

      result = sub_222B8C9DC(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222B63558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254C0, &unk_222C986E0);
    v3 = sub_222C94F8C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_222B8C9DC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222B63678(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_222C94F8C();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_222B4FC6C(v16, v12, a2, v27);
      result = sub_222B8CA54(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_222C9367C();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222B63858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254B8, &qword_222C986D8);
    v3 = sub_222C94F8C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_222B8C9DC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222B6395C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254A8, &unk_222C9A4A0);
  v3 = sub_222C94F8C();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_222B4FC6C(&v24, v23, &qword_27D0254B0, &qword_222C986D0);
  result = sub_222B8C9DC(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_222B4FC6C(&v24, v23, &qword_27D0254B0, &qword_222C986D0);
    result = sub_222B8C9DC(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_222B63B20(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_222C94F8C();

    for (i = (a1 + 40); ; i += 2)
    {
      v10 = *(i - 1);
      v9 = *i;

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_222B63C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025498, &qword_222C986B8);
  v3 = sub_222C94F8C();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_222B95ADC();
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_222B95ADC();
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_222B63D2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025478, &qword_222C98698);
    v3 = sub_222C94F8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_222B4FC6C(v4, &v10, &qword_27D025480, &qword_222C986A0);
      result = sub_222B8CFCC(v10, *(&v10 + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v10;
      result = sub_222B405A0(v11, v3[7] + 40 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_222B63EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    if (v3 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C78, &qword_222C96A50);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_222C97C40;
      *(v4 + 32) = a1;
    }

    else
    {
      v6 = *(type metadata accessor for FeaturisedSession(0) - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_222B64124(2, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C88, &qword_222C96A60);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_222C97C40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C80, &qword_222C96A58);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_222C97C40;
      v10 = sub_222B653E4(a1 + v7, v9 + v7, type metadata accessor for FeaturisedSession);
      *(v8 + 32) = v9;
      MEMORY[0x28223BE20](v10);
      v11 = sub_222BA6434(v8, sub_222B65138);

      v12 = *(v11 + 16);
      if (v12)
      {
        sub_222B4C438(0, v12, 0);
        v13 = 32;
        do
        {
          v14 = *(v11 + v13);
          v16 = *(v4 + 16);
          v15 = *(v4 + 24);

          if (v16 >= v15 >> 1)
          {
            sub_222B4C438((v15 > 1), v16 + 1, 1);
          }

          *(v4 + 16) = v16 + 1;
          *(v4 + 8 * v16 + 32) = v14;
          v13 += 8;
          --v12;
        }

        while (v12);
      }
    }
  }

  return v4;
}

uint64_t sub_222B64124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (v2 >= a1)
    {
      v4 = a1;
    }

    else
    {
      v4 = *(a2 + 16);
    }

    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_222B654B8;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025508, &qword_222C987A0);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = v4;
    *(v8 + 32) = 0;
    *(v8 + 33) = 1;
    *(v8 + 40) = sub_222B651EC;
    *(v8 + 48) = v6;
    *(v8 + 56) = 0;
    *(v8 + 64) = sub_222B651F4;
    *(v8 + 72) = v7;
    swift_bridgeObjectRetain_n();
    return v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025510, &qword_222C987A8);
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_222B64278(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (v2 >= a1)
    {
      v4 = a1;
    }

    else
    {
      v4 = *(a2 + 16);
    }

    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_222B65274;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025518, &qword_222C987B0);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = v4;
    *(v8 + 32) = 0;
    *(v8 + 33) = 1;
    *(v8 + 40) = sub_222B654B4;
    *(v8 + 48) = v6;
    *(v8 + 56) = 0;
    *(v8 + 64) = sub_222B6534C;
    *(v8 + 72) = v7;
    swift_bridgeObjectRetain_n();
    return v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025520, &qword_222C987B8);
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x277D84F90];
  }

  return result;
}

void sub_222B643CC(uint64_t *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v39 = a1;
  v11 = type metadata accessor for FeaturisedSession(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v15;
  v19 = a2[2];
  v20 = a2[3] >> 1;
  if (v19 != v20)
  {
    if (v19 < v20)
    {
      v35 = v16;
      v37 = v5;
      v38 = v17;
      v21 = a2[1];
      v22 = *(v12 + 72);
      a2 = type metadata accessor for FeaturisedSession;
      sub_222B653E4(v21 + v22 * v19, &v33 - v15, type metadata accessor for FeaturisedSession);
      v23 = v20 - 1;
      v20 = v22;
      v6 = v38;
      sub_222B653E4(v21 + v20 * v23, v38, type metadata accessor for FeaturisedSession);
      v24 = *(a5 + 8);
      v36 = v18;
      if ((v24(v18, v6, a4, a5) & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C80, &qword_222C96A58);
        v30 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_222C97C40;
        sub_222B653E4(v6, v20 + v30, type metadata accessor for FeaturisedSession);
        a4 = v39;
        a3 = *v39;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_13:
          v32 = a3[2];
          v31 = a3[3];
          if (v32 >= v31 >> 1)
          {
            a3 = sub_222B4A70C((v31 > 1), v32 + 1, 1, a3);
          }

          sub_222B64B00(v6);
          sub_222B64B00(v36);
          a3[2] = v32 + 1;
          a3[v32 + 4] = v20;
LABEL_16:
          *a4 = a3;
          return;
        }

LABEL_20:
        a3 = sub_222B4A70C(0, a3[2] + 1, 1, a3);
        goto LABEL_13;
      }

      v34 = v12;
      a3 = *v39;
      v25 = v6;
      v6 = *(*v39 + 16);
      a4 = v35;
      sub_222B653E4(v25, v35, type metadata accessor for FeaturisedSession);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (!v6)
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_7:
        if (v6 > a3[2])
        {
          __break(1u);
        }

        else
        {
          v37 = v20;
          v20 = (a3 + 3);
          a2 = a3[v6 + 3];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a3[v6 + 3] = a2;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_9:
            v28 = a2[2];
            v27 = a2[3];
            if (v28 >= v27 >> 1)
            {
              *(v20 + 8 * v6) = sub_222B4A730((v27 > 1), v28 + 1, 1, a2);
            }

            sub_222B64B00(v38);
            sub_222B64B00(v36);
            v29 = *(v20 + 8 * v6);
            *(v29 + 16) = v28 + 1;
            sub_222B6544C(a4, v29 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + v28 * v37, type metadata accessor for FeaturisedSession);
            a4 = v39;
            goto LABEL_16;
          }
        }

        a2 = sub_222B4A730(0, a2[2] + 1, 1, a2);
        *(v20 + 8 * v6) = a2;
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    a3 = sub_222B64B5C(a3);
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }
}

uint64_t CompositeSession.combinedSession.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for FeaturisedSession(0);
  MEMORY[0x28223BE20](*(v3 - 8));
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = *v1;
  v11 = *(*v1 + 16);
  v31 = v7;
  if (v11)
  {
    v30 = a1;
    v12 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    sub_222B653E4(v12, &v29 - v8, type metadata accessor for FeaturisedSession);
    v32 = MEMORY[0x277D84F90];
    sub_222B4C580(0, v11, 0);
    v13 = v32;
    v14 = *(v31 + 72);
    do
    {
      sub_222B653E4(v12, v5, type metadata accessor for FeaturisedSession);
      v15 = *v5;

      sub_222B64B00(v5);
      v32 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_222B4C580((v16 > 1), v17 + 1, 1);
        v13 = v32;
      }

      *(v13 + 16) = v17 + 1;
      *(v13 + 8 * v17 + 32) = v15;
      v12 += v14;
      --v11;
    }

    while (v11);
    sub_222B64BAC(v13);
    v19 = v18;

    v20 = *(v3 + 20);
    v21 = sub_222C9367C();
    v22 = v30;
    (*(*(v21 - 8) + 16))(v30 + v20, &v9[v20], v21);
    sub_222B5551C(&v9[*(v3 + 24)], v22 + *(v3 + 24));
    sub_222B64B00(v9);
    *v22 = v19;
    return (*(v31 + 56))(v22, 0, 1, v3);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v24 = sub_222C9431C();
    __swift_project_value_buffer(v24, qword_280FE2340);
    v25 = sub_222C942FC();
    v26 = sub_222C94A4C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_222B39000, v25, v26, "Zero sessions in CompositeSession", v27, 2u);
      MEMORY[0x223DCA8C0](v27, -1, -1);
    }

    v28 = *(v31 + 56);

    return v28(a1, 1, 1, v3);
  }
}

uint64_t sub_222B64B00(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_222B64BAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  v8 = type metadata accessor for FeaturisedTurn(0);
  v9 = MEMORY[0x28223BE20](v8);
  v58 = 0;
  v56 = 0;
  v11 = 0;
  v48 = *(v12 + 80);
  v57 = MEMORY[0x277D84F90];
  v54 = (v48 + 32) & ~v48;
  v55 = MEMORY[0x277D84F90] + v54;
  v13 = (v12 + 56);
  v51 = v12 + 48;
  v52 = v12;
  v49 = v14;
  v50 = v7;
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
LABEL_4:
  v17 = *(a1 + 16);
  if (v11 == v17)
  {
LABEL_37:
    (*v13)(v7, 1, 1, v8, v9);
LABEL_38:
    v43 = v57;

    sub_222B6537C(v7);
    v44 = v43[3];
    if (v44 < 2)
    {
      return;
    }

    v45 = v44 >> 1;
    v39 = __OFSUB__(v45, v56);
    v46 = v45 - v56;
    if (!v39)
    {
      v43[2] = v46;
      return;
    }
  }

  else
  {
    if (v11 < v17)
    {
      while (1)
      {
        v18 = *(a1 + 32 + 8 * v11);

        if (v18)
        {
          break;
        }

LABEL_9:
        ++v11;
        v19 = *(a1 + 16);
        if (v11 == v19)
        {
          goto LABEL_37;
        }

        if (v11 >= v19)
        {
          goto LABEL_42;
        }
      }

      v15 = *(v18 + 16);
      if (!v15)
      {
        (*v13)(v4, 1, 1, v8);
        sub_222B6537C(v4);
        goto LABEL_9;
      }

      v16 = 0;
      ++v11;
      while (1)
      {
        if (v16 >= v15)
        {
          goto LABEL_43;
        }

        v20 = v52;
        v21 = *(v52 + 72);
        v58 = v16;
        sub_222B653E4(v18 + v54 + v21 * v16, v4, type metadata accessor for FeaturisedTurn);
        (*(v20 + 56))(v4, 0, 1, v8);
        sub_222B5EC84(v4, v7);
        if ((*(v20 + 48))(v7, 1, v8) == 1)
        {
          goto LABEL_38;
        }

        v22 = v53;
        sub_222B6544C(v7, v53, type metadata accessor for FeaturisedTurn);
        v23 = v56;
        if (!v56)
        {
          break;
        }

        v24 = v57;
LABEL_35:
        v39 = __OFSUB__(v23, 1);
        v40 = v23 - 1;
        if (v39)
        {
          goto LABEL_44;
        }

        v56 = v40;
        ++v58;
        v41 = v22;
        v42 = v55;
        sub_222B6544C(v41, v55, type metadata accessor for FeaturisedTurn);
        v55 = v42 + v21;
        v57 = v24;
        v8 = v49;
        v7 = v50;
        v15 = *(v18 + 16);
        v16 = v58;
        if (v58 == v15)
        {
          (*v13)(v4, 1, 1, v49);
          sub_222B6537C(v4);
          goto LABEL_4;
        }
      }

      v25 = v57[3];
      if (((v25 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DF0, &qword_222C96BC0);
      v28 = v54;
      v56 = v27;
      v24 = swift_allocObject();
      v29 = _swift_stdlib_malloc_size(v24);
      if (!v21)
      {
        goto LABEL_47;
      }

      v30 = v29 - v28;
      if (v29 - v28 == 0x8000000000000000 && v21 == -1)
      {
        goto LABEL_48;
      }

      v32 = v28;
      v33 = v30 / v21;
      v34 = v57;
      v24[2] = v56;
      v24[3] = 2 * (v30 / v21);
      v35 = v24 + v28;
      v36 = *(v34 + 24) >> 1;
      v37 = v36 * v21;
      if (!*(v34 + 16))
      {
LABEL_34:
        v55 = v35 + v37;
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v36;

        v23 = v38;
        v22 = v53;
        goto LABEL_35;
      }

      if (v24 < v34 || v35 >= v34 + v32 + v37)
      {
        v55 = v35;
        v56 = v30 / v21;
        v47 = v36 * v21;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v24 == v57)
        {
LABEL_33:
          v57[2] = 0;
          goto LABEL_34;
        }

        v55 = v35;
        v56 = v30 / v21;
        v47 = v36 * v21;
        swift_arrayInitWithTakeBackToFront();
      }

      v37 = v47;
      v35 = v55;
      v33 = v56;
      goto LABEL_33;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for PlayMediaIntentWithAttachedNowPlayingEventStreamDefinition(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for PlayMediaIntentWithAttachedNowPlayingEventStreamDefinition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_222B65158@<X0>(void *result@<X0>, void *(*a2)(void *__return_ptr, void *)@<X1>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = result[1];
  v7 = *(result + 16);
  if (*(result + 17) == 1)
  {
    *(result + 17) = 0;
  }

  else if (*(result + 16))
  {
    v7 = 1;
  }

  else
  {
    v13 = v3;
    v14 = v4;
    v10[0] = v5;
    v10[1] = v6;
    v8 = a3;
    v9 = result;
    result = a2(v11, v10);
    a3 = v8;
    v5 = v11[0];
    v6 = v11[1];
    v7 = v12;
    *v9 = v11[0];
    v9[1] = v6;
    *(v9 + 16) = v7;
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  return result;
}

void *sub_222B65224@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = *(*a2 + 16);
  if (v3 == v4)
  {
    v5 = 0;
    v6 = 0;
LABEL_5:
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v3 == v4;
    return result;
  }

  v5 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_222B65290@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v4 = *result;
  v5 = result[1];
  if (v5 < *result)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v7 = *a2;
  v8 = *(*a2 + 16);
  if (v8 < v4 || v8 < v5)
  {
    goto LABEL_12;
  }

  v10 = *(a3(0) - 8);
  v11 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  *a4 = v7;
  a4[1] = v11;
  a4[2] = v4;
  a4[3] = (2 * v5) | 1;
}

uint64_t sub_222B6537C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222B653E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B6544C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_222B654C0()
{
  result = qword_27D025528[0];
  if (!qword_27D025528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D025528);
  }

  return result;
}

unint64_t sub_222B65518()
{
  result = qword_280FDF1E0;
  if (!qword_280FDF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDF1E0);
  }

  return result;
}

uint64_t sub_222B655C8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v18 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v2, a2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v5 + 32))(v7, v11, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v16 = sub_222C9495C();
      (*(v5 + 8))(v7, AssociatedTypeWitness);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    swift_getAssociatedConformanceWitness();
    v14 = sub_222C948EC();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      (*(v5 + 32))(v7, v11, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v15 = sub_222C9495C();
      (*(v5 + 8))(v7, AssociatedTypeWitness);
      return v15 & 1;
    }

    swift_getAssociatedConformanceWitness();
    v14 = sub_222C9496C();
  }

  v15 = v14;

  return v15 & 1;
}

BOOL sub_222B658C0()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  (*(v2 + 24))(v3, v2);
  type metadata accessor for TagNominationFilter.TagMatchRule(255, v3, *(v1 + 88), v2);
  sub_222C947FC();

  swift_getWitnessTable();
  v4 = sub_222C9465C();

  return (v4 & 1) == 0;
}

uint64_t sub_222B65A1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222B65A74(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = v2;
  swift_getAssociatedConformanceWitness();
  result = sub_222C9497C();
  if (v5 <= 0x3F)
  {
    if (v3 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222B65B58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = 8;
  if (v5 > 8)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 252) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v11 < 2)
    {
LABEL_25:
      v13 = *(a1 + v6);
      if (v13 >= 4)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_25;
  }

LABEL_14:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 253;
}

void sub_222B65CAC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + 1;
  if (a3 < 0xFD)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 252) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
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
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFC)
  {
    v10 = a2 - 253;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v7] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_222B65ED0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  matched = type metadata accessor for TagNominationFilter.TagMatchRule(0, v1, v2, v3);
  return sub_222B655C8(v4, matched) & 1;
}

void sub_222B66098(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v24 = a7;
  v29 = a6;
  v31 = a1;
  v32 = a2;
  v10 = a4(0);
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v28 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v27 = *(a3 + 16);
  if (v27)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v25 = a5;
    v26 = a3;
    while (v15 < *(a3 + 16))
    {
      v17 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v18 = *(v30 + 72);
      sub_222B72B48(a3 + v17 + v18 * v15, v14, a5);
      v19 = v31(v14);
      if (v7)
      {
        sub_222B72BB0(v14, a5);

        goto LABEL_15;
      }

      if (v19)
      {
        sub_222B7240C(v14, v28, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24(0, *(v16 + 16) + 1, 1);
          v16 = v33;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          v24(v21 > 1, v22 + 1, 1);
          v16 = v33;
        }

        *(v16 + 16) = v22 + 1;
        sub_222B7240C(v28, v16 + v17 + v22 * v18, v29);
        a5 = v25;
        a3 = v26;
      }

      else
      {
        sub_222B72BB0(v14, a5);
      }

      if (v27 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t CoreDuetEvent.getTimestamp()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + 16);
  sub_222B41CB8(v6, (&v13 - v4));
  v7 = sub_222C935EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) == 1)
  {
    sub_222B41CE4(v6);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      sub_222C935AC();
      v11 = 0;
    }

    (*(v8 + 56))(a1, v11, 1, v7);
    result = v9(v5, 1, v7);
    if (result != 1)
    {
      return sub_222B4FCD4(v5, &qword_27D025360, &unk_222C98300);
    }
  }

  else
  {
    (*(v8 + 32))(a1, v5, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  return result;
}

uint64_t FeaturisedSession.init(turns:sessionId:originalPlusId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for FeaturisedSession(0);
  v8 = *(v7 + 20);
  v9 = sub_222C9367C();
  (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  return sub_222B723A4(a3, &a4[*(v7 + 24)], &unk_27D026290, &qword_222C96B40);
}

uint64_t CoreDuetEvent.init(eventId:features:eventType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t CoreDuetEvent.eventId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CoreDuetEvent.eventType.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CoreDuetEvent.init(features:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_222B41FD0(a1);
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v4;
  v7 = v5;
  v8 = sub_222B41FE8(a1);
  if (!v9)
  {

LABEL_16:

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v10 = v8;
  v11 = v9;
  v27 = MEMORY[0x277D84FA0];
  v12 = *(a1 + 16);
  if (v12)
  {
    v20 = v9;
    v21 = v8;
    v22 = v7;
    v13 = MEMORY[0x277D84F90];
    v14 = a1 + 32;
    do
    {
      sub_222B43E3C(v14, v25);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      *&v23 = swift_allocObject();
      sub_222B43E3C(v25, v23 + 16);
      __swift_project_boxed_opaque_existential_1(&v23, v24);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0Tm(&v23);
      if (sub_222B69F7C(&v23, DynamicType))
      {
        sub_222B405A0(v25, &v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C5C0(0, *(v13 + 16) + 1, 1);
          v13 = v26;
        }

        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_222B4C5C0((v17 > 1), v18 + 1, 1);
          v13 = v26;
        }

        *(v13 + 16) = v18 + 1;
        sub_222B405A0(&v23, v13 + 40 * v18 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
      }

      v14 += 40;
      --v12;
    }

    while (v12);
    v7 = v22;
    v10 = v21;
    v11 = v20;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t CoreDuetEvent.with(eventId:removedFeatures:newFeatures:eventType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = a4;
  v9 = v7[1];
  v10 = v7[2];
  v45 = v7[3];
  v44 = *v7;
  v11 = *(a3 + 16);
  v50 = v9;
  if (!v11)
  {
    v33 = a5;
    v34 = a1;

    if (*(v8 + 16))
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  *&v54 = MEMORY[0x277D84F90];
  sub_222B4C600(0, v11, 0);
  v13 = v54;
  v14 = (a3 + 32);
  v15 = *(v54 + 16);
  do
  {
    v16 = *v14;
    *&v54 = v13;
    v17 = *(v13 + 24);
    if (v15 >= v17 >> 1)
    {
      sub_222B4C600((v17 > 1), v15 + 1, 1);
      v13 = v54;
    }

    *(v13 + 16) = v15 + 1;
    *(v13 + 8 * v15 + 32) = v16;
    v14 += 2;
    ++v15;
    --v11;
  }

  while (v11);
  v18 = sub_222B72274(v13);

  v20 = v10[2];
  if (!v20)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_27:

    v10 = v23;
    v9 = v50;
    v33 = a5;
    v34 = a1;
    v8 = a4;
    if (*(a4 + 16))
    {
LABEL_28:
      *&v54 = v8;

      sub_222B49058(v10);
      v56 = MEMORY[0x277D84FA0];
      v38 = *(v54 + 16);
      if (v38)
      {
        v10 = MEMORY[0x277D84F90];
        v39 = v54 + 32;
        do
        {
          sub_222B43E3C(v39, &v54);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
          *&v52 = swift_allocObject();
          sub_222B43E3C(&v54, v52 + 16);
          __swift_project_boxed_opaque_existential_1(&v52, v53);
          DynamicType = swift_getDynamicType();
          __swift_destroy_boxed_opaque_existential_0Tm(&v52);
          if (sub_222B69F7C(&v52, DynamicType))
          {
            sub_222B405A0(&v54, &v52);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_222B4C5C0(0, v10[2] + 1, 1);
            }

            v42 = v10[2];
            v41 = v10[3];
            if (v42 >= v41 >> 1)
            {
              sub_222B4C5C0((v41 > 1), v42 + 1, 1);
            }

            v10[2] = v42 + 1;
            sub_222B405A0(&v52, &v10[5 * v42 + 4]);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0Tm(&v54);
          }

          v39 += 40;
          --v38;
        }

        while (v38);
        v9 = v50;
        v33 = a5;
        v34 = a1;
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      v36 = a2;
      v35 = a6;
      if (!a2)
      {
LABEL_41:

        v34 = v44;
        v37 = v35;
        if (v35)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      v9 = v36;
      v37 = v35;
      if (v35)
      {
LABEL_25:
        *a7 = v34;
        a7[1] = v9;
        a7[2] = v10;
        a7[3] = v33;
        a7[4] = v37;
      }

LABEL_24:
      v33 = v45;

      goto LABEL_25;
    }

LABEL_22:
    v36 = a2;
    v35 = a6;
    if (!a2)
    {
      goto LABEL_41;
    }

    goto LABEL_23;
  }

  v21 = 0;
  v22 = v18 + 56;
  v23 = MEMORY[0x277D84F90];
  while (v21 < v10[2])
  {
    sub_222B43E3C(&v10[5 * v21 + 4], &v54);
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v24 = swift_getDynamicType();
    if (*(v18 + 16) && (v25 = v24, v26 = sub_222C952EC(), v27 = -1 << *(v18 + 32), v28 = v26 & ~v27, ((*(v22 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
    {
      v29 = ~v27;
      while (*(*(v18 + 48) + 8 * v28) != v25)
      {
        v28 = (v28 + 1) & v29;
        if (((*(v22 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      result = __swift_destroy_boxed_opaque_existential_0Tm(&v54);
    }

    else
    {
LABEL_16:
      sub_222B405A0(&v54, &v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222B4C5C0(0, v23[2] + 1, 1);
        v23 = v56;
      }

      v32 = v23[2];
      v31 = v23[3];
      if (v32 >= v31 >> 1)
      {
        sub_222B4C5C0((v31 > 1), v32 + 1, 1);
        v23 = v56;
      }

      v23[2] = v32 + 1;
      result = sub_222B405A0(&v52, &v23[5 * v32 + 4]);
    }

    if (++v21 == v20)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222B66CBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_222B72C10();
  result = MEMORY[0x223DC96B0](v2, &type metadata for MediaEntityField, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_222B6AD70(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t FeaturisedTurn.init(turnId:features:coreDuetEvents:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_222C9367C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for FeaturisedTurn(0);
  *(a5 + v11[6]) = a2;
  *(a5 + v11[7]) = a3;
  return sub_222B723A4(a4, a5 + v11[5], &qword_27D025360, &unk_222C98300);
}

uint64_t FeaturisedTurn.turnId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FeaturisedTurn.features.getter()
{
  type metadata accessor for FeaturisedTurn(0);
}

uint64_t FeaturisedTurn.coreDuetEvents.getter()
{
  type metadata accessor for FeaturisedTurn(0);
}

uint64_t FeaturisedTurn.friendlyName.getter()
{
  sub_222C94D1C();

  sub_222C9367C();
  sub_222B72D78(&qword_280FE0298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = sub_222C9517C();
  MEMORY[0x223DC9330](v1);

  MEMORY[0x223DC9330](2112032, 0xE300000000000000);
  v2 = type metadata accessor for FeaturisedTurn(0);
  if (sub_222B417F4(*(v0 + *(v2 + 24))))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F20, &unk_222C96CD0);
    sub_222B72340();
    v3 = sub_222C9445C();
    v5 = v4;
  }

  else
  {
    v5 = 0x8000000222CA9A90;
    v3 = 0xD000000000000012;
  }

  MEMORY[0x223DC9330](v3, v5);

  MEMORY[0x223DC9330](41, 0xE100000000000000);
  return 0x7369727574616546;
}

uint64_t FeaturisedTurn.postITNUtterance.getter()
{
  v1 = type metadata accessor for FeaturisedTurn(0);
  if (!sub_222B417F4(*(v0 + *(v1 + 24))))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F20, &unk_222C96CD0);
  sub_222B72340();
  v2 = sub_222C9445C();

  return v2;
}

uint64_t Array<A>.getSessionId()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = *(type metadata accessor for FeaturisedTurn(0) - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = sub_222C9367C();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a2, a1 + v5, v6);
    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = sub_222C9367C();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t Array<A>.getOriginalPlusId()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v24 = (&v23 - v6);
  MEMORY[0x28223BE20](v7);
  v9 = (&v23 - v8);
  v10 = *(a1 + 16);
  v27 = a1;

  if (!v10)
  {
LABEL_5:
    v18 = sub_222C9367C();
    (*(*(v18 - 8) + 56))(v26, 1, 1, v18);
  }

  v28 = type metadata accessor for FeaturisedTurn(0);
  v11 = v27 + ((*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80));
  v12 = *(*(v28 - 8) + 72);
  while (1)
  {
    v13 = *(v11 + *(v28 + 24));
    sub_222B42000(v13, v9);
    v14 = sub_222C9367C();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v16(v9, 1, v14);
    sub_222B4FCD4(v9, &unk_27D026290, &qword_222C96B40);
    if (v17 != 1)
    {
      break;
    }

    v11 += v12;
    if (!--v10)
    {
      goto LABEL_5;
    }
  }

  v19 = v24;
  sub_222B42000(v13, v24);
  v20 = v25;
  sub_222B4FC6C(v19, v25, &unk_27D026290, &qword_222C96B40);
  result = v16(v20, 1, v14);
  if (result != 1)
  {
    v22 = v26;
    (*(v15 + 32))(v26, v20, v14);
    sub_222B4FCD4(v19, &unk_27D026290, &qword_222C96B40);
    (*(v15 + 56))(v22, 0, 1, v14);
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.getOriginalRequestID(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = (&v49 - v8);
  MEMORY[0x28223BE20](v9);
  v55 = (&v49 - v10);
  v11 = sub_222C9367C();
  v62 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v49 - v15;
  sub_222B43E3C(a1, v67);
  v16 = *(a2 + 16);
  v53 = a2;

  v58 = v16;
  if (!v16)
  {
    goto LABEL_9;
  }

  v65 = v62 + 8;
  v66 = v62 + 16;
  v17 = type metadata accessor for FeaturisedTurn(0);
  v18 = 0;
  v54 = v17;
  v19 = *(v17 - 8);
  v57 = v53 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v56 = *(v19 + 72);
  v20 = v59;
  while (2)
  {
    v60 = v18;
    v63 = (v57 + v56 * v18);
    v21 = v68;
    v22 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v23 = 0;
    v61 = (*(v22 + 16))(v21, v22);
    v64 = *(v61 + 16);
    while (v64 != v23)
    {
      if (v23 >= *(v61 + 16))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v24 = v62;
      v25 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v26 = *(v62 + 72);
      v27 = *(v62 + 16);
      v27(v20, v61 + v25 + v26 * v23++, v11);
      sub_222B72D78(&qword_280FE02A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v28 = sub_222C9447C();
      v29 = *(v24 + 8);
      v29(v20, v11);
      if (v28)
      {
        v63 = v27;
        v64 = v26;
        v59 = v25;

        v61 = v62 + 48;
LABEL_11:
        v31 = v60;
        if (v60 < v58)
        {
          v32 = v55;
          v33 = *(v57 + v56 * v60 + *(v54 + 24));
          sub_222B421FC(v33, v55);
          v34 = *v61;
          v35 = (*v61)(v32, 1, v11);
          sub_222B4FCD4(v32, &unk_27D026290, &qword_222C96B40);
          if (v35 == 1)
          {
            v36 = __OFADD__(v31, 1);
            v37 = v31 + 1;
            if (!v36)
            {
              while (v37 != v58)
              {
                if (v37 >= v58)
                {
                  goto LABEL_28;
                }

                v60 = v37;
                v33 = v57 + v37 * v56;
                v39 = v68;
                v38 = v69;
                __swift_project_boxed_opaque_existential_1(v67, v68);
                v40 = (*(v38 + 16))(v39, v38);
                v41 = &v59[v40];
                v34 = -*(v40 + 16);
                v42 = -1;
                while ((v34 + v42) != -1)
                {
                  if (++v42 >= *(v40 + 16))
                  {
                    __break(1u);
                    goto LABEL_27;
                  }

                  v43 = &v41[v64];
                  v63(v13);
                  v44 = sub_222C9447C();
                  v29(v13, v11);
                  v41 = v43;
                  if (v44)
                  {

                    goto LABEL_11;
                  }
                }

                v37 = v60 + 1;
                if (__OFADD__(v60, 1))
                {
                  goto LABEL_23;
                }
              }

              goto LABEL_9;
            }

LABEL_23:
            __break(1u);
          }

          v45 = v50;
          sub_222B421FC(v33, v50);
          v46 = v51;
          sub_222B4FC6C(v45, v51, &unk_27D026290, &qword_222C96B40);
          if (v34(v46, 1, v11) != 1)
          {
            v47 = v62;
            v48 = v52;
            (*(v62 + 32))(v52, v46, v11);
            sub_222B4FCD4(v45, &unk_27D026290, &qword_222C96B40);
            (*(v47 + 56))(v48, 0, 1, v11);
            goto LABEL_10;
          }

LABEL_30:
          result = __swift_destroy_boxed_opaque_existential_0Tm(v67);
          __break(1u);
          return result;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    v18 = v60 + 1;
    if (v60 + 1 != v58)
    {
      continue;
    }

    break;
  }

LABEL_9:
  (*(v62 + 56))(v52, 1, 1, v11);
LABEL_10:

  return __swift_destroy_boxed_opaque_existential_0Tm(v67);
}

uint64_t sub_222B67BFC()
{
  type metadata accessor for FeaturisedSession(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256E0, &qword_222C98AC8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025630 = 91;
  *algn_27D025638 = 0xE100000000000000;
  return result;
}

uint64_t FeaturisedSession.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeaturisedSession(0) + 20);
  v4 = sub_222C9367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeaturisedSession.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v46 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = (&v46 - v10);
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v46 - v17;
  v58 = type metadata accessor for FeaturisedSession(0);
  v54 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (!v20)
  {
    v30 = v55;

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v39 = sub_222C9431C();
    __swift_project_value_buffer(v39, qword_280FE2340);
    v28 = sub_222C942FC();
    LOBYTE(v25) = sub_222C94A4C();
    if (!os_log_type_enabled(v28, v25))
    {
      goto LABEL_13;
    }

    v27 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v59 = v31;
    *v27 = 136315138;
    if (qword_27D024668 == -1)
    {
LABEL_12:
      *(v27 + 4) = sub_222B437C0(qword_27D025630, *algn_27D025638, &v59);
      _os_log_impl(&dword_222B39000, v28, v25, "%s FeaturisedSession not created, no sessionId available", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x223DCA8C0](v31, -1, -1);
      MEMORY[0x223DCA8C0](v27, -1, -1);
LABEL_13:

      v40 = *(v54 + 56);
      v41 = v58;

      return v40(v30, 1, 1, v41);
    }

LABEL_21:
    swift_once();
    goto LABEL_12;
  }

  v47 = v8;
  v48 = v5;
  v21 = type metadata accessor for FeaturisedTurn(0);
  v52 = *(v21 - 8);
  v53 = a1 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
  v57 = a1;
  v51 = *(v13 + 16);
  v51(v15);
  v50 = v13;
  v22 = v56;
  v46 = *(v13 + 32);
  v46(v56, v15, v12);
  v23 = *(v58 + 20);
  v49 = v19;
  v24 = &v19[v23];
  v25 = v12;
  (v51)(v24, v22, v12);
  v26 = *(v52 + 72);
  v52 = v13 + 32;
  v27 = v13 + 48;

  v28 = 0;
  v29 = v53;
  while (1)
  {
    sub_222B42000(*(v29 + *(v21 + 24)), v11);
    v30 = (*v27)(v11, 1, v25);
    sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
    if (v30 != 1)
    {
      break;
    }

    ++v28;
    v29 += v26;
    if (v20 == v28)
    {
      v28 = v20;
      break;
    }
  }

  v31 = v58;
  v32 = *(v58 + 24);
  v33 = *(v57 + 16);
  if (v28 == v33)
  {
    v34 = 1;
    v35 = v55;
    v36 = v56;
    v37 = v57;
    v38 = v49;
LABEL_19:
    v45 = v50;
    (*(v50 + 56))(v38 + v32, v34, 1, v25);

    (*(v45 + 8))(v36, v25);
    *v38 = v37;
    sub_222B7240C(v38, v35, type metadata accessor for FeaturisedSession);
    return (*(v54 + 56))(v35, 0, 1, v31);
  }

  if (v28 >= v33)
  {
    __break(1u);
    goto LABEL_21;
  }

  v43 = v47;
  sub_222B42000(*(v53 + v26 * v28 + *(v21 + 24)), v47);
  v44 = v48;
  sub_222B4FC6C(v43, v48, &unk_27D026290, &qword_222C96B40);
  result = (*v27)(v44, 1, v25);
  if (result != 1)
  {
    v38 = v49;
    v46(v49 + v32, v44, v25);
    sub_222B4FCD4(v43, &unk_27D026290, &qword_222C96B40);
    v34 = 0;
    v35 = v55;
    v36 = v56;
    v37 = v57;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void FeaturisedSession.filter(_:)(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *v3;

  sub_222B66098(a1, a2, v8, type metadata accessor for FeaturisedTurn, type metadata accessor for FeaturisedTurn, type metadata accessor for FeaturisedTurn, sub_222B4C3D4);
  if (!v4)
  {
    v10 = v9;
    v11 = type metadata accessor for FeaturisedSession(0);
    v12 = *(v11 + 20);
    v13 = sub_222C9367C();
    (*(*(v13 - 8) + 16))(a3 + v12, v3 + v12, v13);
    sub_222B4FC6C(v3 + *(v11 + 24), a3 + *(v11 + 24), &unk_27D026290, &qword_222C96B40);
    *a3 = v10;
  }
}

uint64_t FeaturisedSession.findEvent(eventId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a3;
  v42 = type metadata accessor for FeaturisedTurn(0);
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v35 - v11;
  v12 = *v3;
  v35 = v6;
  v38 = (v6 + 48);
  v39 = (v6 + 56);
  v44 = v12;

  v43 = 0;
  while (1)
  {
    v23 = v43;
    v24 = *(v44 + 16);
    if (v43 == v24)
    {
      v25 = 1;
      v27 = v41;
      v26 = v42;
      v28 = v40;
      goto LABEL_15;
    }

    v27 = v41;
    v26 = v42;
    v28 = v40;
    if (v43 >= v24)
    {
      break;
    }

    sub_222B72B48(v44 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v43, v40, type metadata accessor for FeaturisedTurn);
    v25 = 0;
    ++v23;
LABEL_15:
    (*v39)(v28, v25, 1, v26);
    sub_222B723A4(v28, v27, &qword_27D0253C8, &unk_222C98400);
    if ((*v38)(v27, 1, v26) == 1)
    {

      v34 = v36;
      v36[4] = 0;
      *v34 = 0u;
      *(v34 + 1) = 0u;
      return result;
    }

    v43 = v23;
    v29 = v27;
    v30 = v37;
    sub_222B7240C(v29, v37, type metadata accessor for FeaturisedTurn);
    v31 = *(v30 + *(v26 + 28));

    sub_222B72BB0(v30, type metadata accessor for FeaturisedTurn);

    v32 = v31;
    if (v31)
    {
      v14 = (v31 + 64);
      v15 = -1;
      while (1)
      {
        ++v15;
        v16 = *(v32 + 16);
        if (v15 == v16)
        {
          break;
        }

        if (v15 >= v16)
        {
          __break(1u);
          goto LABEL_22;
        }

        v18 = *(v14 - 4);
        v17 = *(v14 - 3);
        v19 = *(v14 - 2);
        v20 = *(v14 - 1);
        v21 = *v14;
        if (v18 == a1 && v17 == a2)
        {
          v18 = a1;
LABEL_19:

          v33 = v36;
          *v36 = v18;
          v33[1] = v17;
          v33[2] = v19;
          v33[3] = v20;
          v33[4] = v21;
          return result;
        }

        v14 += 5;
        result = sub_222C951FC();
        if (result)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t FeaturisedSession.getOriginalRequestID(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v45 - v9);
  MEMORY[0x28223BE20](v11);
  v51 = (&v45 - v12);
  v13 = *v2;
  sub_222B43E3C(a1, v56);
  v14 = *(v13 + 16);

  v55 = v14;
  if (v14)
  {
    v46 = v10;
    v47 = v7;
    v49 = a2;
    v15 = 0;
    v50 = type metadata accessor for FeaturisedTurn(0);
    v16 = *(v50 - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v48 = v13;
    v18 = v13 + v17;
    v19 = *(v16 + 72);
    v52 = v18;
    v53 = v19;
LABEL_3:
    v54 = (v18 + v19 * v15);
    v20 = v57;
    v21 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v22 = 0;
    v23 = *((*(v21 + 16))(v20, v21) + 16);
    do
    {
      if (v23 == v22)
      {

        ++v15;
        v18 = v52;
        v19 = v53;
        if (v15 != v55)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }

      v24 = sub_222C9367C();
      v25 = *(v24 - 8);
      v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v27 = *(v25 + 72);
      sub_222B72D78(&qword_280FE02A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      ++v22;
    }

    while ((sub_222C9447C() & 1) == 0);
    v54 = (v25 + 48);
LABEL_9:

    if (v15 < v55)
    {
      v28 = v51;
      sub_222B421FC(*(v52 + v53 * v15 + *(v50 + 24)), v51);
      v29 = (*v54)(v28, 1, v24);
      sub_222B4FCD4(v28, &unk_27D026290, &qword_222C96B40);
      if (v29 == 1)
      {
        v30 = __OFADD__(v15++, 1);
        if (!v30)
        {
          while (v15 != v55)
          {
            if (v15 >= v55)
            {
              __break(1u);
              goto LABEL_30;
            }

            v32 = v57;
            v31 = v58;
            __swift_project_boxed_opaque_existential_1(v56, v57);
            v33 = (*(v31 + 16))(v32, v31);
            v34 = *(v33 + 16);
            v35 = v33 + v26;
            v36 = v34 + 1;
            while (--v36)
            {
              v37 = v35 + v27;
              v38 = sub_222C9447C();
              v35 = v37;
              if (v38)
              {
                goto LABEL_9;
              }
            }

            v30 = __OFADD__(v15++, 1);
            if (v30)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
      }

      v55 = v15;
LABEL_22:
      v13 = v48;
      a2 = v49;
      v10 = v46;
      v7 = v47;
      goto LABEL_23;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_23:
  v39 = *(v13 + 16);
  if (v55 == v39)
  {
    v40 = sub_222C9367C();
    (*(*(v40 - 8) + 56))(a2, 1, 1, v40);
LABEL_28:

    return __swift_destroy_boxed_opaque_existential_0Tm(v56);
  }

  if (v55 >= v39)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v41 = type metadata accessor for FeaturisedTurn(0);
  sub_222B421FC(*(v13 + ((*(*(v41 - 8) + 80) + 32) & ~*(*(v41 - 8) + 80)) + *(*(v41 - 8) + 72) * v55 + *(v41 + 24)), v10);
  sub_222B4FC6C(v10, v7, &unk_27D026290, &qword_222C96B40);
  v42 = sub_222C9367C();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v7, 1, v42) != 1)
  {
    (*(v43 + 32))(a2, v7, v42);
    sub_222B4FCD4(v10, &unk_27D026290, &qword_222C96B40);
    (*(v43 + 56))(a2, 0, 1, v42);
    goto LABEL_28;
  }

LABEL_32:
  result = __swift_destroy_boxed_opaque_existential_0Tm(v56);
  __break(1u);
  return result;
}

uint64_t sub_222B68DD8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_222C94C7C();

    if (v8)
    {

      sub_222C9378C();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_222C94C6C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v10 = sub_222B6AE68(v7, result + 1);
        v11 = *(v10 + 16);
        if (*(v10 + 24) <= v11)
        {
          sub_222B6B37C(v11 + 1);
        }

        sub_222B6D258(v12, v10);

        *v3 = v10;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_222C952FC();
    if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
    {
      sub_222C9531C();
      sub_222C9452C();
    }

    else
    {
      sub_222C9531C();
    }

    v21 = v2;
    v13 = sub_222C9534C();
    v14 = -1 << *(v6 + 32);
    v15 = v13 & ~v14;
    if ((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (1)
      {
        sub_222C952FC();

        if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
        {
          sub_222C9531C();
          sub_222C9452C();
        }

        else
        {
          sub_222C9531C();
        }

        v17 = sub_222C9534C();
        sub_222C952FC();
        if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
        {
          sub_222C9531C();
          sub_222C9452C();
        }

        else
        {
          sub_222C9531C();
        }

        v18 = sub_222C9534C();

        if (v17 == v18)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v15);

      return 0;
    }

    else
    {
LABEL_24:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v21;

      sub_222B6D44C(v20, v15, isUniquelyReferenced_nonNull_native);
      *v21 = v23;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_222B69110(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_222C94C7C();

    if (v8)
    {

      *&v118 = v8;
      sub_222C9386C();
      swift_dynamicCast();
      result = 0;
      *a1 = v85;
    }

    else
    {
      result = sub_222C94C6C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v10 = sub_222B6B030(v7, result + 1);
        v85 = v10;
        v11 = *(v10 + 16);
        if (*(v10 + 24) <= v11)
        {
          sub_222B6B59C(v11 + 1);
          v10 = v85;
        }

        sub_222B6D340(v12, v10);

        *v3 = v10;
        *a1 = a2;
        return 1;
      }
    }

    return result;
  }

  sub_222C952FC();
  sub_222C0A220(a2, v101);
  if (*(&v101[0] + 1) == 1)
  {
    sub_222C9531C();
  }

  else
  {
    v120 = v101[2];
    v121 = v101[3];
    v122 = v101[4];
    v118 = v101[0];
    v119 = v101[1];
    sub_222C9531C();
    sub_222BEEE64(&v85);
    sub_222B4FCD4(v101, &qword_27D0256C8, &unk_222C98AB0);
  }

  v55 = v2;
  v56 = a1;
  v13 = sub_222C9534C();
  v14 = -1 << *(v6 + 32);
  v15 = v13 & ~v14;
  v67 = v6 + 56;
  if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_65:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = *v55;

    sub_222B6D6D8(v52, v15, isUniquelyReferenced_nonNull_native);
    *v55 = v85;
    *v56 = a2;
    return 1;
  }

  v65 = v6;
  v66 = ~v14;
  v64 = a2;
  while (1)
  {

    sub_222C0A220(v16, &v102);
    sub_222C0A220(a2, &v112);
    v17 = v102;
    v18 = v103;
    v19 = v105;
    v73 = v107;
    v74 = v104;
    v71 = v106;
    v72 = v109;
    v68 = v110;
    v69 = v108;
    v70 = v111;
    v20 = v112;
    v21 = v113;
    v97 = v114;
    v98 = v115;
    v99 = v116;
    v100 = v117;
    if (v103 == 1)
    {

      if (v21 == 1)
      {
        v85 = v17;
        v86 = 1;
        *&v87 = v74;
        *(&v87 + 1) = v19;
        *&v88 = v71;
        *(&v88 + 1) = v73;
        *&v89 = v69;
        *(&v89 + 1) = v72;
        *&v90 = v68;
        *(&v90 + 1) = v70;
        v53 = &v85;
        goto LABEL_66;
      }

      goto LABEL_24;
    }

    if (v113 == 1)
    {

LABEL_24:
      v85 = v17;
      v86 = v18;
      *&v87 = v74;
      *(&v87 + 1) = v19;
      *&v88 = v71;
      *(&v88 + 1) = v73;
      *&v89 = v69;
      *(&v89 + 1) = v72;
      *&v90 = v68;
      *(&v90 + 1) = v70;
      v91 = v20;
      v92 = v21;
      v93 = v97;
      v94 = v98;
      v95 = v99;
      v96 = v100;
      v22 = &v85;
      v23 = &qword_27D0256D0;
      v24 = &unk_222C9A490;
      goto LABEL_25;
    }

    v85 = v112;
    v86 = v113;
    v89 = v116;
    v90 = v117;
    v87 = v114;
    v88 = v115;
    v25 = v114;
    v26 = *(&v115 + 1);
    v27 = v115;
    v28 = *(&v116 + 1);
    v29 = v116;
    v31 = *(&v117 + 1);
    v30 = v117;
    if (v103)
    {
      if (!v113)
      {
        goto LABEL_17;
      }

      if (v102 != v112 || v103 != v113)
      {
        v57 = *(&v90 + 1);
        v60 = v90;
        v32 = *(&v89 + 1);
        v33 = v89;
        v54 = v102;
        v34 = *(&v115 + 1);
        v35 = v115;
        v36 = sub_222C951FC();
        v27 = v35;
        v26 = v34;
        v17 = v54;
        v29 = v33;
        v28 = v32;
        v31 = v57;
        v30 = v60;
        if ((v36 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else if (v113)
    {
      goto LABEL_17;
    }

    if (v19)
    {
      break;
    }

    if (!*(&v25 + 1))
    {
      goto LABEL_35;
    }

LABEL_17:
    sub_222B4FC6C(&v102, &v75, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FC6C(&v112, &v75, &qword_27D0256C8, &unk_222C98AB0);

    sub_222B4FCD4(&v85, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v112, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v102, &qword_27D0256C8, &unk_222C98AB0);
    v75 = v17;
    v76 = v18;
    v77 = v74;
    v78 = v19;
    v79 = v71;
    v80 = v73;
    v81 = v69;
    v82 = v72;
    v83 = v68;
    v84 = v70;
    sub_222B4FCD4(&v75, &qword_27D0256C8, &unk_222C98AB0);
    a2 = v64;
    v6 = v65;
LABEL_18:
    v15 = (v15 + 1) & v66;
    if (((*(v67 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  if (!*(&v25 + 1))
  {
    goto LABEL_17;
  }

  if (__PAIR128__(v19, v74) != v25)
  {
    v58 = v31;
    v61 = v30;
    v37 = v28;
    v38 = v29;
    v39 = v17;
    v40 = v26;
    v41 = v27;
    v42 = sub_222C951FC();
    v27 = v41;
    v26 = v40;
    v17 = v39;
    v29 = v38;
    v28 = v37;
    v31 = v58;
    v30 = v61;
    if ((v42 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_35:
  if (v73)
  {
    v6 = v65;
    if (!v26)
    {
      sub_222B4FC6C(&v102, &v75, &qword_27D0256C8, &unk_222C98AB0);
      sub_222B4FC6C(&v112, &v75, &qword_27D0256C8, &unk_222C98AB0);
      a2 = v64;
      goto LABEL_60;
    }

    a2 = v64;
    if (v71 != v27 || v73 != v26)
    {
      v59 = v31;
      v62 = v30;
      v43 = v28;
      v44 = v29;
      v45 = sub_222C951FC();
      v29 = v44;
      v28 = v43;
      v31 = v59;
      v30 = v62;
      if ((v45 & 1) == 0)
      {
LABEL_59:
        sub_222B4FC6C(&v102, &v75, &qword_27D0256C8, &unk_222C98AB0);
        sub_222B4FC6C(&v112, &v75, &qword_27D0256C8, &unk_222C98AB0);
LABEL_60:

        sub_222B4FCD4(&v85, &qword_27D0256C8, &unk_222C98AB0);
        sub_222B4FCD4(&v112, &qword_27D0256C8, &unk_222C98AB0);
        v49 = &v102;
LABEL_61:
        sub_222B4FCD4(v49, &qword_27D0256C8, &unk_222C98AB0);
LABEL_62:
        v75 = v17;
        v76 = v18;
        v77 = v74;
        v78 = v19;
        v79 = v71;
        v80 = v73;
        v81 = v69;
        v82 = v72;
        v83 = v68;
        v84 = v70;
        v22 = &v75;
        v23 = &qword_27D0256C8;
        v24 = &unk_222C98AB0;
LABEL_25:
        sub_222B4FCD4(v22, v23, v24);
        goto LABEL_18;
      }
    }
  }

  else
  {
    a2 = v64;
    v6 = v65;
    if (v26)
    {
      sub_222B4FC6C(&v102, &v75, &qword_27D0256C8, &unk_222C98AB0);
      sub_222B4FC6C(&v112, &v75, &qword_27D0256C8, &unk_222C98AB0);

      sub_222B4FCD4(&v85, &qword_27D0256C8, &unk_222C98AB0);
      sub_222B4FCD4(&v112, &qword_27D0256C8, &unk_222C98AB0);
      sub_222B4FCD4(&v102, &qword_27D0256C8, &unk_222C98AB0);
      v75 = v17;
      v76 = v18;
      v77 = v74;
      v78 = v19;
      v79 = v71;
      v80 = 0;
      v81 = v69;
      v82 = v72;
      v83 = v68;
      v84 = v70;
      v22 = &v75;
      v23 = &qword_27D0256C8;
      v24 = &unk_222C98AB0;
      goto LABEL_25;
    }
  }

  if (v72)
  {
    if (!v28)
    {
      goto LABEL_59;
    }

    if (v69 != v29 || v72 != v28)
    {
      v46 = v30;
      v47 = v31;
      v48 = sub_222C951FC();
      v30 = v46;
      v31 = v47;
      if ((v48 & 1) == 0)
      {
        goto LABEL_59;
      }
    }
  }

  else if (v28)
  {
    goto LABEL_59;
  }

  if (!v70)
  {
    v50 = v31;

    v49 = &v85;
    if (!v50)
    {
      goto LABEL_68;
    }

    goto LABEL_61;
  }

  if (!v31)
  {
    goto LABEL_59;
  }

  if (v68 != v30 || v70 != v31)
  {
    v63 = sub_222C951FC();
    sub_222B4FC6C(&v102, &v75, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FC6C(&v112, &v75, &qword_27D0256C8, &unk_222C98AB0);

    sub_222B4FCD4(&v85, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v112, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v102, &qword_27D0256C8, &unk_222C98AB0);
    if (v63)
    {
      goto LABEL_69;
    }

    goto LABEL_62;
  }

  sub_222B4FC6C(&v102, &v75, &qword_27D0256C8, &unk_222C98AB0);
  sub_222B4FC6C(&v112, &v75, &qword_27D0256C8, &unk_222C98AB0);

  sub_222B4FCD4(&v85, &qword_27D0256C8, &unk_222C98AB0);
  v6 = v65;
  sub_222B4FCD4(&v112, &qword_27D0256C8, &unk_222C98AB0);
  v49 = &v102;
LABEL_68:
  sub_222B4FCD4(v49, &qword_27D0256C8, &unk_222C98AB0);
LABEL_69:
  v75 = v17;
  v76 = v18;
  v77 = v74;
  v78 = v19;
  v79 = v71;
  v80 = v73;
  v81 = v69;
  v82 = v72;
  v83 = v68;
  v84 = v70;
  v53 = &v75;
LABEL_66:
  sub_222B4FCD4(v53, &qword_27D0256C8, &unk_222C98AB0);

  *v56 = *(*(v6 + 48) + 8 * v15);

  return 0;
}

uint64_t sub_222B69B4C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_222C952FC();
  sub_222C9452C();
  v8 = sub_222C9534C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_222C951FC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_222B6DF54(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_222B69C9C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_222B72D78(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_222C9440C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_222B72D78(&qword_280FE02A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_222C9447C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_222B6E0D4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_222B69F7C(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_222C952EC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_222B6E39C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_222B6A060(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = sub_222BBF5A4(*(*v2 + 40), a2);
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    v8 = 0xE900000000000064;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 3)
      {
        if (*(*(v4 + 48) + v7) > 5u)
        {
          if (v9 == 6)
          {
            v14 = 0xD000000000000013;
            v15 = 0x8000000222CA93E0;
          }

          else
          {
            v14 = 0xD000000000000012;
            v15 = 0x8000000222CA9400;
          }
        }

        else
        {
          if (v9 == 4)
          {
            v14 = 0x7972617262696CLL;
          }

          else
          {
            v14 = 0xD000000000000011;
          }

          if (v9 == 4)
          {
            v15 = 0xE700000000000000;
          }

          else
          {
            v15 = 0x8000000222CA93C0;
          }
        }
      }

      else
      {
        if (v9 == 2)
        {
          v10 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v10 = 0x6974636572726F63;
        }

        if (v9 == 2)
        {
          v11 = 0xE900000000000064;
        }

        else
        {
          v11 = 0xEA00000000006E6FLL;
        }

        if (*(*(v4 + 48) + v7))
        {
          v12 = 0x656D7269666E6F63;
        }

        else
        {
          v12 = 0x754D6E69616D6F64;
        }

        if (*(*(v4 + 48) + v7))
        {
          v13 = 0xE900000000000064;
        }

        else
        {
          v13 = 0xEB00000000636973;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }
      }

      v16 = 0xD000000000000013;
      if (v3 != 6)
      {
        v16 = 0xD000000000000012;
      }

      v17 = 0x8000000222CA9400;
      if (v3 == 6)
      {
        v17 = 0x8000000222CA93E0;
      }

      v18 = 0x7972617262696CLL;
      if (v3 != 4)
      {
        v18 = 0xD000000000000011;
      }

      v19 = 0x8000000222CA93C0;
      if (v3 == 4)
      {
        v19 = 0xE700000000000000;
      }

      if (v3 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (v3 == 2)
      {
        v20 = 0x6574616E696D6F6ELL;
      }

      else
      {
        v20 = 0x6974636572726F63;
      }

      if (v3 == 2)
      {
        v21 = 0xE900000000000064;
      }

      else
      {
        v21 = 0xEA00000000006E6FLL;
      }

      if (v3)
      {
        v22 = 0x656D7269666E6F63;
      }

      else
      {
        v22 = 0x754D6E69616D6F64;
      }

      if (!v3)
      {
        v8 = 0xEB00000000636973;
      }

      if (v3 <= 1u)
      {
        v20 = v22;
        v21 = v8;
      }

      v23 = v3 <= 3u ? v20 : v16;
      v24 = v3 <= 3u ? v21 : v17;
      if (v14 == v23 && v15 == v24)
      {
        break;
      }

      v25 = sub_222C951FC();

      if (v25)
      {
        goto LABEL_67;
      }

      v7 = (v7 + 1) & v30;
      v8 = 0xE900000000000064;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_65;
      }
    }

LABEL_67:
    result = 0;
    LOBYTE(v3) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_65:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v28;
    sub_222B6E4BC(v3, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v31;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_222B6A358(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_222C952FC();
  sub_222C9452C();

  v5 = sub_222C9534C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v25 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v24 = ~v6;
    v8 = 0xEA00000000006E6FLL;
    v9 = 0x6974636572726F63;
    v26 = v4;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      if (v10 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v11 = 0x68506E69616D6F64;
        }

        else
        {
          v11 = 0x654D6E69616D6F64;
        }

        if (*(*(v4 + 48) + v7))
        {
          v12 = 0xEF6C6C6143656E6FLL;
        }

        else
        {
          v12 = 0xEE00736567617373;
        }
      }

      else if (v10 == 2)
      {
        v11 = 0x656D7269666E6F63;
        v12 = 0xE900000000000064;
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v11 = v9;
        }

        if (v10 == 3)
        {
          v12 = 0xE900000000000064;
        }

        else
        {
          v12 = 0xEA00000000006E6FLL;
        }
      }

      if (a2 == 3)
      {
        v13 = 0x6574616E696D6F6ELL;
      }

      else
      {
        v13 = v9;
      }

      if (a2 == 3)
      {
        v8 = 0xE900000000000064;
      }

      if (a2 == 2)
      {
        v13 = 0x656D7269666E6F63;
        v8 = 0xE900000000000064;
      }

      v14 = a2 ? 0x68506E69616D6F64 : 0x654D6E69616D6F64;
      v15 = a2 ? 0xEF6C6C6143656E6FLL : 0xEE00736567617373;
      v16 = a2 <= 1u ? v14 : v13;
      v17 = a2 <= 1u ? v15 : v8;
      v27 = v7;
      if (v11 == v16 && v12 == v17)
      {
        break;
      }

      v18 = v9;
      v19 = sub_222C951FC();

      if (v19)
      {
        goto LABEL_43;
      }

      v7 = (v27 + 1) & v24;
      v8 = 0xEA00000000006E6FLL;
      v9 = v18;
      v4 = v26;
      if (((*(v25 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    result = 0;
    LOBYTE(a2) = *(*(v26 + 48) + v27);
  }

  else
  {
LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v22;
    sub_222B6E814(a2, v7, isUniquelyReferenced_nonNull_native);
    *v22 = v28;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_222B6A674(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[1];
  v6 = a2[2];
  v38 = *a2;
  v39 = v5;
  v40 = v6;
  v41 = *(a2 + 24);
  v7 = *v2;
  sub_222C952FC();
  sub_222C9452C();
  v8 = sub_222C9534C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v7 + 48) + 56 * v10;
      v13 = *(v12 + 48);
      v14 = *(v12 + 32);
      v15 = *v12;
      v32[1] = *(v12 + 16);
      v32[2] = v14;
      v32[0] = v15;
      v33 = v13;
      v28 = *v12;
      v29 = *(v12 + 16);
      v30 = *(v12 + 32);
      v31 = *(v12 + 48);
      sub_222B554C0(v32, v26);
      v16 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v28, &v38);
      v34 = v28;
      v35 = v29;
      v36 = v30;
      v37 = v31;
      sub_222B55A80(&v34);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v26[0] = v38;
    v26[1] = v39;
    v26[2] = v40;
    v27 = v41;
    sub_222B55A80(v26);
    v20 = *(v7 + 48) + 56 * v10;
    v22 = *(v20 + 16);
    v21 = *(v20 + 32);
    v23 = *v20;
    v31 = *(v20 + 48);
    v28 = v23;
    v29 = v22;
    v30 = v21;
    v24 = *(v20 + 16);
    *a1 = *v20;
    *(a1 + 16) = v24;
    *(a1 + 32) = *(v20 + 32);
    *(a1 + 48) = *(v20 + 48);
    sub_222B554C0(&v28, v25);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v38;
    v35 = v39;
    v36 = v40;
    v37 = v41;
    *&v28 = *v3;
    sub_222B554C0(&v34, v32);
    sub_222B6EBA8(&v34, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v28;
    v18 = v39;
    *a1 = v38;
    *(a1 + 16) = v18;
    *(a1 + 32) = v40;
    *(a1 + 48) = v41;
    return 1;
  }
}

uint64_t sub_222B6A8B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_222C942CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_222B72D78(&qword_27D025698, MEMORY[0x277D5FCE8], MEMORY[0x277D5FCF0]);
  v33 = a2;
  v11 = sub_222C9440C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_222B72D78(&qword_27D0256A0, MEMORY[0x277D5FCE8], MEMORY[0x277D5FCF8]);
      v21 = sub_222C9447C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_222B6EDA8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_222B6AB94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_222C952FC();
  sub_222C9452C();
  v11 = sub_222C9534C();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_222B6F070(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v15 = ~v13;
  v28 = v10;
  v16 = *(v10 + 48);
  while (1)
  {
    v17 = (v16 + 32 * v14);
    v19 = v17[2];
    v18 = v17[3];
    v20 = *v17 == a2 && v17[1] == a3;
    if (!v20 && (sub_222C951FC() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v18)
    {
      break;
    }

    if (!a5)
    {
      goto LABEL_19;
    }

LABEL_4:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (!a5)
  {
    goto LABEL_4;
  }

  v21 = v19 == a4 && v18 == a5;
  if (!v21 && (sub_222C951FC() & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:

  v24 = (*(v28 + 48) + 32 * v14);
  v25 = v24[1];
  v27 = v24[2];
  v26 = v24[3];
  *a1 = *v24;
  a1[1] = v25;
  a1[2] = v27;
  a1[3] = v26;

  return 0;
}

uint64_t sub_222B6AD70(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](a2);
  v6 = sub_222C9534C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_222B6F238(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_222B6AE68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256B8, &qword_222C98AA8);
    v2 = sub_222C94CEC();
    v7 = v2;
    sub_222C94C5C();
    if (sub_222C94C8C())
    {
      sub_222C9378C();
      do
      {
        swift_dynamicCast();
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          sub_222B6B37C(v4 + 1);
        }

        v2 = v7;
        sub_222C952FC();
        if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
        {
          sub_222C9531C();
          sub_222C9452C();
        }

        else
        {
          sub_222C9531C();
        }

        sub_222C9534C();
        v3 = sub_222C94C4C();
        *(v7 + 56 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        *(*(v7 + 48) + 8 * v3) = v6;
        ++*(v7 + 16);
      }

      while (sub_222C94C8C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_222B6B030(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256D8, &qword_222C98AC0);
    v2 = sub_222C94CEC();
    v20 = v2;
    sub_222C94C5C();
    if (sub_222C94C8C())
    {
      sub_222C9386C();
      do
      {
        swift_dynamicCast();
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          sub_222B6B59C(v4 + 1);
        }

        v2 = v20;
        sub_222C952FC();
        sub_222C0A220(v19, &v21);
        v5 = v22;
        if (v22 == 1)
        {
          sub_222C9531C();
        }

        else
        {
          v6 = v23;
          v7 = v24;
          v8 = v25;
          v9 = v26;
          sub_222C9531C();
          sub_222C9531C();
          if (v5)
          {
            sub_222C9452C();
          }

          sub_222C9531C();
          if (v6)
          {
            sub_222C9452C();
          }

          sub_222C9531C();
          if (v7)
          {
            sub_222C9452C();
          }

          sub_222C9531C();
          if (v8)
          {
            sub_222C9452C();
          }

          sub_222C9531C();
          if (v9)
          {
            sub_222C9452C();
          }

          sub_222B4FCD4(&v21, &qword_27D0256C8, &unk_222C98AB0);
        }

        result = sub_222C9534C();
        v11 = v20 + 56;
        v12 = -1 << *(v20 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v20 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v3 = __clz(__rbit64((-1 << v13) & ~*(v20 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v14 == v16;
            if (v14 == v16)
            {
              v14 = 0;
            }

            v15 |= v17;
            v18 = *(v11 + 8 * v14);
          }

          while (v18 == -1);
          v3 = __clz(__rbit64(~v18)) + (v14 << 6);
        }

        *(v11 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        *(*(v20 + 48) + 8 * v3) = v19;
        ++*(v20 + 16);
      }

      while (sub_222C94C8C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_222B6B37C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256B8, &qword_222C98AA8);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v18 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_222C952FC();
      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      sub_222C9534C();
      result = sub_222C94C4C();
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v5 + 48) + 8 * result) = v16;
      ++*(v5 + 16);
      v3 = v18;
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      bzero(v7, ((v17 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v17;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222B6B59C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256D8, &qword_222C98AC0);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = result;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (1)
    {
      if (!v10)
      {
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          if (v6 >= v11)
          {
            break;
          }

          v16 = v7[v6];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v34 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v29 = 1 << *(v3 + 32);
        if (v29 >= 64)
        {
          bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v29;
        }

        v2 = v30;
        *(v3 + 16) = 0;
        break;
      }

      v14 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_222C952FC();
      sub_222C0A220(v17, &v35);
      v18 = v36;
      if (v36 == 1)
      {
        sub_222C9531C();
        goto LABEL_29;
      }

      v19 = v37;
      v32 = v38;
      v33 = v39;
      v20 = v40;
      sub_222C9531C();
      sub_222C9531C();
      if (v18)
      {
        sub_222C9452C();
      }

      v21 = v20;
      sub_222C9531C();
      if (v19)
      {
        sub_222C9452C();
      }

      v5 = v31;
      if (v32)
      {
        sub_222C9531C();
        sub_222C9452C();
        if (!v33)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_222C9531C();
        if (!v33)
        {
LABEL_25:
          sub_222C9531C();
          goto LABEL_26;
        }
      }

      sub_222C9531C();
      sub_222C9452C();
LABEL_26:
      sub_222C9531C();
      if (v21)
      {
        sub_222C9452C();
      }

      sub_222B4FCD4(&v35, &qword_27D0256C8, &unk_222C98AB0);
LABEL_29:
      result = sub_222C9534C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v10 = v34;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222B6B95C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025690, &qword_222C9B8F0);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222B6BBBC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_222C9367C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025668, &qword_222C98A80);
  result = sub_222C94CDC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_222B72D78(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_222C9440C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_222B6BF18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256E8, &qword_222C98AD0);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_222C952EC();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222B6C13C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025648, &qword_222C9B8E0);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_222C952FC();
      sub_222C9452C();

      result = sub_222C9534C();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222B6C4AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025650, &unk_222C98A70);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_222C952FC();
      sub_222C9452C();

      result = sub_222C9534C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222B6C7B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025660, &unk_222CA0990);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 56 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      v31 = *(v18 + 48);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 56 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      *(v14 + 48) = v31;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222B6CA38(uint64_t a1)
{
  v2 = v1;
  v36 = sub_222C942CC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256A8, &qword_222C98AA0);
  result = sub_222C94CDC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_222B72D78(&qword_27D025698, MEMORY[0x277D5FCE8], MEMORY[0x277D5FCF0]);
      result = sub_222C9440C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_222B6CD94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025688, &unk_222C98A90);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v31 = v18[3];
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v31;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222B6D008(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025670, &qword_222C98A88);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_222C952FC();
      MEMORY[0x223DCA0B0](v17);
      result = sub_222C9534C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_222B6D258(uint64_t a1, uint64_t a2)
{
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  sub_222C9534C();
  result = sub_222C94C4C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_222B6D340(uint64_t a1, uint64_t a2)
{
  sub_222C952FC();
  sub_222C0A220(a1, v6);
  if (*(&v6[0] + 1) == 1)
  {
    sub_222C9531C();
  }

  else
  {
    v6[7] = v6[2];
    v6[8] = v6[3];
    v6[9] = v6[4];
    v6[5] = v6[0];
    v6[6] = v6[1];
    sub_222C9531C();
    sub_222BEEE64(v5);
    sub_222B4FCD4(v6, &qword_27D0256C8, &unk_222C98AB0);
  }

  sub_222C9534C();
  result = sub_222C94C4C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_222B6D44C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_222B6B37C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_222B6F398(&qword_27D0256B8, &qword_222C98AA8);
      goto LABEL_21;
    }

    sub_222B6FDE0(v6 + 1);
  }

  v8 = *v3;
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  result = sub_222C9534C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_222C9378C();
    do
    {
      sub_222C952FC();

      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      v11 = sub_222C9534C();
      sub_222C952FC();
      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      v12 = sub_222C9534C();

      if (v11 == v12)
      {
        goto LABEL_24;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_21:
  v13 = *v17;
  *(*v17 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_24:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6D6D8(uint64_t result, unint64_t a2, char a3)
{
  v63 = result;
  v11 = *(*v4 + 16);
  v12 = *(*v4 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v13 = v59;
      sub_222B6B59C(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        result = sub_222B6F398(&qword_27D0256D8, &qword_222C98AC0);
        goto LABEL_66;
      }

      v13 = v59;
      sub_222B6FFCC(v11 + 1);
    }

    v62 = *v13;
    sub_222C952FC();
    sub_222C0A220(v63, v90);
    if (*(&v90[0] + 1) == 1)
    {
      sub_222C9531C();
    }

    else
    {
      v107 = v90[2];
      v108 = v90[3];
      v109 = v90[4];
      v105 = v90[0];
      v106 = v90[1];
      sub_222C9531C();
      sub_222BEEE64(&v74);
      sub_222B4FCD4(v90, &qword_27D0256C8, &unk_222C98AB0);
    }

    result = sub_222C9534C();
    v14 = -1 << *(v62 + 32);
    a2 = result & ~v14;
    if ((*(v62 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v61 = ~v14;
      sub_222C9386C();
      do
      {

        sub_222C0A220(v15, &v91);
        sub_222C0A220(v63, &v99);
        v3 = v91;
        v8 = v92;
        v65 = v93;
        v64 = v94;
        v9 = v95;
        v5 = v96;
        v6 = v97;
        v7 = v98;
        v17 = v99;
        v16 = v100;
        v86 = v101;
        v87 = v102;
        v88 = v103;
        v89 = v104;
        if (v92 == 1)
        {

          if (v16 == 1)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v100 != 1)
          {
            v60 = v97;
            v74 = v99;
            v75 = v100;
            v78 = v103;
            v79 = v104;
            v76 = v101;
            v77 = v102;
            v6 = *(&v101 + 1);
            v21 = v101;
            v22 = *(&v102 + 1);
            v23 = v102;
            v24 = *(&v103 + 1);
            v25 = v103;
            v26 = *(&v104 + 1);
            v27 = v104;
            if (v92)
            {
              if (!v100 || (v91 != v99 || v92 != v100) && (v53 = *(&v79 + 1), v55 = *(&v78 + 1), v28 = v79, v29 = v78, v51 = v102, v50 = v101, v30 = sub_222C951FC(), v21 = v50, v22 = *(&v51 + 1), v23 = v51, v26 = v53, v25 = v29, v24 = v55, v27 = v28, (v30 & 1) == 0))
              {
LABEL_36:
                sub_222B4FC6C(&v91, &v66, &qword_27D0256C8, &unk_222C98AB0);
                sub_222B4FC6C(&v99, &v66, &qword_27D0256C8, &unk_222C98AB0);

                sub_222B4FCD4(&v74, &qword_27D0256C8, &unk_222C98AB0);
                sub_222B4FCD4(&v99, &qword_27D0256C8, &unk_222C98AB0);
                sub_222B4FCD4(&v91, &qword_27D0256C8, &unk_222C98AB0);
                v66 = v3;
                v67 = v8;
                v68 = v65;
                v69 = v64;
                v70 = v9;
                v71 = v5;
                goto LABEL_37;
              }
            }

            else if (v100)
            {
              goto LABEL_36;
            }

            if (*(&v65 + 1))
            {
              if (!v6)
              {
                goto LABEL_36;
              }

              if (v65 != __PAIR128__(v6, v21))
              {
                v54 = v26;
                v56 = v24;
                v31 = v27;
                v32 = v25;
                v52 = v22;
                v6 = v23;
                v33 = sub_222C951FC();
                v23 = v6;
                v22 = v52;
                v26 = v54;
                v25 = v32;
                v24 = v56;
                v27 = v31;
                if ((v33 & 1) == 0)
                {
                  goto LABEL_36;
                }
              }
            }

            else if (v6)
            {
              goto LABEL_36;
            }

            if (*(&v64 + 1))
            {
              v6 = v5;
              if (!v22)
              {
                sub_222B4FC6C(&v91, &v66, &qword_27D0256C8, &unk_222C98AB0);
                sub_222B4FC6C(&v99, &v66, &qword_27D0256C8, &unk_222C98AB0);
                v5 = v9;
LABEL_51:
                v9 = v7;
                goto LABEL_59;
              }

              v5 = v9;
              if (v64 != __PAIR128__(v22, v23))
              {
                v34 = v26;
                v35 = v27;
                v36 = v24;
                v57 = v6;
                v37 = v5;
                v38 = v25;
                v39 = sub_222C951FC();
                v25 = v38;
                v5 = v37;
                v6 = v57;
                v24 = v36;
                v27 = v35;
                v26 = v34;
                if ((v39 & 1) == 0)
                {
                  sub_222B4FC6C(&v91, &v66, &qword_27D0256C8, &unk_222C98AB0);
                  sub_222B4FC6C(&v99, &v66, &qword_27D0256C8, &unk_222C98AB0);
                  goto LABEL_51;
                }
              }

LABEL_44:
              v9 = v7;
              if (v6)
              {
                if (!v24)
                {
                  goto LABEL_58;
                }

                if (v5 != v25 || v6 != v24)
                {
                  v40 = v26;
                  v41 = v27;
                  v42 = sub_222C951FC();
                  v27 = v41;
                  v26 = v40;
                  if ((v42 & 1) == 0)
                  {
                    goto LABEL_58;
                  }
                }
              }

              else if (v24)
              {
                goto LABEL_58;
              }

              if (v7)
              {
                if (v26)
                {
                  v7 = v60;
                  if (v60 == v27 && v9 == v26)
                  {
                    v58 = 1;
                  }

                  else
                  {
                    v58 = sub_222C951FC();
                  }

                  sub_222B4FC6C(&v91, &v66, &qword_27D0256C8, &unk_222C98AB0);
                  sub_222B4FC6C(&v99, &v66, &qword_27D0256C8, &unk_222C98AB0);

                  sub_222B4FCD4(&v74, &qword_27D0256C8, &unk_222C98AB0);
                  sub_222B4FCD4(&v99, &qword_27D0256C8, &unk_222C98AB0);
                  sub_222B4FCD4(&v91, &qword_27D0256C8, &unk_222C98AB0);
                  v66 = v3;
                  v67 = v8;
                  v68 = v65;
                  v69 = v64;
                  v70 = v5;
                  v71 = v6;
                  v72 = v60;
                  v73 = v9;
                  result = sub_222B4FCD4(&v66, &qword_27D0256C8, &unk_222C98AB0);
                  if (v58)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_40;
                }

LABEL_58:
                sub_222B4FC6C(&v91, &v66, &qword_27D0256C8, &unk_222C98AB0);
                sub_222B4FC6C(&v99, &v66, &qword_27D0256C8, &unk_222C98AB0);
LABEL_59:

                sub_222B4FCD4(&v74, &qword_27D0256C8, &unk_222C98AB0);
                sub_222B4FCD4(&v99, &qword_27D0256C8, &unk_222C98AB0);
                v43 = &v91;
              }

              else
              {
                v44 = v26;

                if (!v44)
                {
                  goto LABEL_72;
                }

                v43 = &v74;
              }

              sub_222B4FCD4(v43, &qword_27D0256C8, &unk_222C98AB0);
              v66 = v3;
              v67 = v8;
              v68 = v65;
              v69 = v64;
              v70 = v5;
              v71 = v6;
              v72 = v60;
              v73 = v9;
            }

            else
            {
              v6 = v5;
              v5 = v9;
              if (!v22)
              {
                goto LABEL_44;
              }

              sub_222B4FC6C(&v91, &v66, &qword_27D0256C8, &unk_222C98AB0);
              sub_222B4FC6C(&v99, &v66, &qword_27D0256C8, &unk_222C98AB0);

              sub_222B4FCD4(&v74, &qword_27D0256C8, &unk_222C98AB0);
              sub_222B4FCD4(&v99, &qword_27D0256C8, &unk_222C98AB0);
              sub_222B4FCD4(&v91, &qword_27D0256C8, &unk_222C98AB0);
              v66 = v3;
              v67 = v8;
              v68 = v65;
              v69 = v64;
              v70 = v9;
              v71 = v6;
LABEL_37:
              v72 = v60;
              v73 = v7;
            }

            v18 = &v66;
            v19 = &qword_27D0256C8;
            v20 = &unk_222C98AB0;
            goto LABEL_39;
          }
        }

        v74 = v3;
        v75 = v8;
        v76 = v65;
        v77 = v64;
        *&v78 = v9;
        *(&v78 + 1) = v5;
        *&v79 = v6;
        *(&v79 + 1) = v7;
        v80 = v17;
        v81 = v16;
        v82 = v86;
        v83 = v87;
        v84 = v88;
        v85 = v89;
        v18 = &v74;
        v19 = &qword_27D0256D0;
        v20 = &unk_222C9A490;
LABEL_39:
        result = sub_222B4FCD4(v18, v19, v20);
LABEL_40:
        a2 = (a2 + 1) & v61;
      }

      while (((*(v62 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_66:
  v45 = *v59;
  *(*v59 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v45 + 48) + 8 * a2) = v63;
  v46 = *(v45 + 16);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (v47)
  {
    __break(1u);
LABEL_69:
    v74 = v3;
    v75 = 1;
    v76 = v65;
    v77 = v64;
    *&v78 = v9;
    *(&v78 + 1) = v5;
    *&v79 = v6;
    *(&v79 + 1) = v7;
    for (i = &v74; ; i = &v66)
    {
      sub_222B4FCD4(i, &qword_27D0256C8, &unk_222C98AB0);
LABEL_71:
      sub_222C9525C();
      __break(1u);
LABEL_72:
      sub_222B4FCD4(&v74, &qword_27D0256C8, &unk_222C98AB0);
      v66 = v3;
      v67 = v8;
      v68 = v65;
      v69 = v64;
      v70 = v5;
      v71 = v6;
      v72 = v60;
      v73 = 0;
    }
  }

  *(v45 + 16) = v48;
  return result;
}

uint64_t sub_222B6DF54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_222B6B95C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_222B6F4D8();
      goto LABEL_16;
    }

    sub_222B70358(v8 + 1);
  }

  v10 = *v4;
  sub_222C952FC();
  sub_222C9452C();
  result = sub_222C9534C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_222C951FC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6E0D4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_222B6BBBC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_222B6F90C(MEMORY[0x277CC95F0], &qword_27D025668, &qword_222C98A80);
      goto LABEL_12;
    }

    sub_222B70590(v11 + 1);
  }

  v13 = *v3;
  sub_222B72D78(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = sub_222C9440C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_222B72D78(&qword_280FE02A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_222C9447C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6E39C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_222B6BF18(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_222B6F634();
      a2 = v7;
      goto LABEL_12;
    }

    sub_222B708AC(v5 + 1);
  }

  v8 = *v3;
  result = sub_222C952EC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6E4BC(uint64_t result, unint64_t a2, char a3)
{
  v34 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_72;
  }

  if (a3)
  {
    sub_222B6C13C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_222B6FCB0(&qword_27D025648, &qword_222C9B8E0);
      goto LABEL_72;
    }

    sub_222B70A9C(v5 + 1);
  }

  v7 = *v3;
  result = sub_222BBF5A4(*(*v3 + 40), v34);
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v33 = ~v8;
    v9 = 0xEB00000000636973;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 3)
      {
        if (*(*(v7 + 48) + a2) > 5u)
        {
          if (v10 == 6)
          {
            v15 = 0xD000000000000013;
            v16 = 0x8000000222CA93E0;
          }

          else
          {
            v15 = 0xD000000000000012;
            v16 = 0x8000000222CA9400;
          }
        }

        else
        {
          if (v10 == 4)
          {
            v15 = 0x7972617262696CLL;
          }

          else
          {
            v15 = 0xD000000000000011;
          }

          if (v10 == 4)
          {
            v16 = 0xE700000000000000;
          }

          else
          {
            v16 = 0x8000000222CA93C0;
          }
        }
      }

      else
      {
        if (v10 == 2)
        {
          v11 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v11 = 0x6974636572726F63;
        }

        if (v10 == 2)
        {
          v12 = 0xE900000000000064;
        }

        else
        {
          v12 = 0xEA00000000006E6FLL;
        }

        if (*(*(v7 + 48) + a2))
        {
          v13 = 0x656D7269666E6F63;
        }

        else
        {
          v13 = 0x754D6E69616D6F64;
        }

        if (*(*(v7 + 48) + a2))
        {
          v14 = 0xE900000000000064;
        }

        else
        {
          v14 = v9;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }
      }

      v17 = 0xD000000000000013;
      if (v34 != 6)
      {
        v17 = 0xD000000000000012;
      }

      v18 = 0x8000000222CA9400;
      if (v34 == 6)
      {
        v18 = 0x8000000222CA93E0;
      }

      v19 = 0x7972617262696CLL;
      if (v34 != 4)
      {
        v19 = 0xD000000000000011;
      }

      v20 = 0x8000000222CA93C0;
      if (v34 == 4)
      {
        v20 = 0xE700000000000000;
      }

      if (v34 <= 5u)
      {
        v17 = v19;
        v18 = v20;
      }

      if (v34 == 2)
      {
        v21 = 0x6574616E696D6F6ELL;
      }

      else
      {
        v21 = 0x6974636572726F63;
      }

      if (v34 == 2)
      {
        v22 = 0xE900000000000064;
      }

      else
      {
        v22 = 0xEA00000000006E6FLL;
      }

      if (v34)
      {
        v23 = 0x656D7269666E6F63;
      }

      else
      {
        v23 = 0x754D6E69616D6F64;
      }

      v24 = v9;
      if (v34)
      {
        v9 = 0xE900000000000064;
      }

      if (v34 <= 1u)
      {
        v21 = v23;
        v22 = v9;
      }

      v25 = v34 <= 3u ? v21 : v17;
      v26 = v34 <= 3u ? v22 : v18;
      if (v15 == v25 && v16 == v26)
      {
        goto LABEL_75;
      }

      v27 = sub_222C951FC();

      if (v27)
      {
        goto LABEL_76;
      }

      a2 = (a2 + 1) & v33;
      v9 = v24;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_72:
  v28 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v28 + 48) + a2) = v34;
  v29 = *(v28 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v28 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_75:

LABEL_76:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6E814(uint64_t result, unint64_t a2, char a3)
{
  v35 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    sub_222B6C4AC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_222B6FCB0(&qword_27D025650, &unk_222C98A70);
      goto LABEL_46;
    }

    sub_222B70DDC(v5 + 1);
  }

  v7 = 0xEE00736567617373;
  v8 = 0x654D6E69616D6F64;
  v9 = *v3;
  sub_222C952FC();
  sub_222C9452C();

  result = sub_222C9534C();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  v34 = v9 + 56;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v32 = v9;
    v33 = ~v10;
    v11 = 0xEF6C6C6143656E6FLL;
    v12 = 0x6974636572726F63;
    v13 = 0x68506E69616D6F64;
    do
    {
      v14 = *(*(v9 + 48) + a2);
      if (v14 <= 1)
      {
        if (*(*(v9 + 48) + a2))
        {
          v15 = v13;
        }

        else
        {
          v15 = v8;
        }

        if (*(*(v9 + 48) + a2))
        {
          v16 = v11;
        }

        else
        {
          v16 = v7;
        }
      }

      else if (v14 == 2)
      {
        v15 = 0x656D7269666E6F63;
        v16 = 0xE900000000000064;
      }

      else
      {
        if (v14 == 3)
        {
          v15 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v15 = v12;
        }

        if (v14 == 3)
        {
          v16 = 0xE900000000000064;
        }

        else
        {
          v16 = 0xEA00000000006E6FLL;
        }
      }

      v17 = v12;
      if (v35 == 3)
      {
        v18 = 0x6574616E696D6F6ELL;
      }

      else
      {
        v18 = v12;
      }

      v19 = 0xEA00000000006E6FLL;
      if (v35 == 3)
      {
        v19 = 0xE900000000000064;
      }

      if (v35 == 2)
      {
        v18 = 0x656D7269666E6F63;
        v19 = 0xE900000000000064;
      }

      v20 = v13;
      if (!v35)
      {
        v13 = v8;
      }

      v21 = v7;
      v22 = v11;
      if (!v35)
      {
        v11 = v7;
      }

      v23 = v35 <= 1u ? v13 : v18;
      v24 = v35 <= 1u ? v11 : v19;
      v25 = v8;
      if (v15 == v23 && v16 == v24)
      {
        goto LABEL_49;
      }

      v26 = sub_222C951FC();

      if (v26)
      {
        goto LABEL_50;
      }

      a2 = (a2 + 1) & v33;
      v7 = v21;
      v8 = v25;
      v11 = v22;
      v9 = v32;
      v12 = v17;
      v13 = v20;
    }

    while (((*(v34 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_46:
  v27 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + a2) = v35;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_49:

LABEL_50:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6EBA8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = *(result + 16);
  v32 = *result;
  v33 = v6;
  v34 = *(result + 32);
  v35 = *(result + 48);
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_222B6C7B0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_222B6F774();
      goto LABEL_12;
    }

    sub_222B710B0(v7 + 1);
  }

  v9 = *v3;
  sub_222C952FC();
  sub_222C9452C();
  result = sub_222C9534C();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(v9 + 48) + 56 * a2;
      v13 = *(v12 + 48);
      v14 = *(v12 + 32);
      v15 = *v12;
      v28[1] = *(v12 + 16);
      v28[2] = v14;
      v28[0] = v15;
      v29 = v13;
      v16 = *(v12 + 16);
      v24 = *v12;
      v25 = v16;
      v26 = *(v12 + 32);
      v27 = *(v12 + 48);
      sub_222B554C0(v28, v30);
      v17 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v24, &v32);
      v30[0] = v24;
      v30[1] = v25;
      v30[2] = v26;
      v31 = v27;
      result = sub_222B55A80(v30);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v19 = *(v18 + 48) + 56 * a2;
  v20 = v33;
  *v19 = v32;
  *(v19 + 16) = v20;
  *(v19 + 32) = v34;
  *(v19 + 48) = v35;
  v21 = *(v18 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v18 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6EDA8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_222C942CC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_222B6CA38(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_222B6F90C(MEMORY[0x277D5FCE8], &qword_27D0256A8, &qword_222C98AA0);
      goto LABEL_12;
    }

    sub_222B7131C(v11 + 1);
  }

  v13 = *v3;
  sub_222B72D78(&qword_27D025698, MEMORY[0x277D5FCE8], MEMORY[0x277D5FCF0]);
  v14 = sub_222C9440C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_222B72D78(&qword_27D0256A0, MEMORY[0x277D5FCE8], MEMORY[0x277D5FCF8]);
      v22 = sub_222C9447C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6F070(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a6)
  {
    sub_222B6CD94(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_222B6FB44();
      goto LABEL_25;
    }

    sub_222B71638(v12 + 1);
  }

  v14 = *v6;
  sub_222C952FC();
  sub_222C9452C();
  result = sub_222C9534C();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    do
    {
      v19 = (v18 + 32 * a5);
      result = *v19;
      v21 = v19[2];
      v20 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = sub_222C951FC(), (result & 1) != 0))
      {
        if (v20)
        {
          if (a4)
          {
            v23 = v21 == a3 && v20 == a4;
            if (v23 || (result = sub_222C951FC(), (result & 1) != 0))
            {
LABEL_24:
              result = sub_222C9525C();
              __break(1u);
              break;
            }
          }
        }

        else if (!a4)
        {
          goto LABEL_24;
        }
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_25:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

uint64_t sub_222B6F238(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_222B6D008(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_222B6FCB0(&qword_27D025670, &qword_222C98A88);
      a2 = v7;
      goto LABEL_12;
    }

    sub_222B71888(v5 + 1);
  }

  v8 = *v3;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v4);
  result = sub_222C9534C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

void *sub_222B6F398(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_222C94CCC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_222B6F4D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025690, &qword_222C9B8F0);
  v2 = *v0;
  v3 = sub_222C94CCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_222B6F634()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256E8, &qword_222C98AD0);
  v2 = *v0;
  v3 = sub_222C94CCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_222B6F774()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025660, &unk_222CA0990);
  v2 = *v0;
  v3 = sub_222C94CCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 32);
        v21 = *v18;
        v28 = *(v18 + 48);
        v27[1] = v20;
        v27[2] = v19;
        v27[0] = v21;
        v22 = *(v4 + 48) + v17;
        v23 = *v18;
        v24 = *(v18 + 16);
        v25 = *(v18 + 32);
        *(v22 + 48) = *(v18 + 48);
        *(v22 + 16) = v24;
        *(v22 + 32) = v25;
        *v22 = v23;
        result = sub_222B554C0(v27, v26);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_222B6F90C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_222C94CCC();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

void *sub_222B6FB44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025688, &unk_222C98A90);
  v2 = *v0;
  v3 = sub_222C94CCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_222B6FCB0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_222C94CCC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t sub_222B6FDE0(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256B8, &qword_222C98AA8);
  result = sub_222C94CDC();
  v4 = result;
  v17 = v2;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v15 = *(*(v17 + 48) + 8 * (v12 | (v5 << 6)));
      sub_222C952FC();

      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      sub_222C9534C();
      result = sub_222C94C4C();
      *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v4 + 48) + 8 * result) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_17;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v16 = v4;
  }

  return result;
}

uint64_t sub_222B6FFCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256D8, &qword_222C98AC0);
  result = sub_222C94CDC();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_40:
    *v2 = v5;
    return result;
  }

  v29 = v1;
  v30 = v3;
  v6 = 0;
  v7 = v3 + 56;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_15:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
    sub_222C952FC();

    sub_222C0A220(v18, &v34);
    v19 = v35;
    if (v35 == 1)
    {
      sub_222C9531C();
      goto LABEL_29;
    }

    v20 = v36;
    v31 = v37;
    v32 = v38;
    v21 = v39;
    sub_222C9531C();
    sub_222C9531C();
    if (v19)
    {
      sub_222C9452C();
    }

    v3 = v30;
    sub_222C9531C();
    if (v20)
    {
      sub_222C9452C();
    }

    if (v31)
    {
      sub_222C9531C();
      sub_222C9452C();
      if (!v32)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_222C9531C();
      if (!v32)
      {
LABEL_25:
        sub_222C9531C();
        goto LABEL_26;
      }
    }

    sub_222C9531C();
    sub_222C9452C();
LABEL_26:
    sub_222C9531C();
    if (v21)
    {
      sub_222C9452C();
    }

    sub_222B4FCD4(&v34, &qword_27D0256C8, &unk_222C98AB0);
LABEL_29:
    result = sub_222C9534C();
    v22 = -1 << *(v5 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v24);
        if (v28 != -1)
        {
          v13 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_42;
    }

    v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v10 = v33;
    *(*(v5 + 48) + 8 * v13) = v17;
    ++*(v5 + 16);
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v29;
      goto LABEL_40;
    }

    v16 = *(v7 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v33 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_222B70358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025690, &qword_222C9B8F0);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_222C952FC();

      sub_222C9452C();
      result = sub_222C9534C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_222B70590(uint64_t a1)
{
  v2 = v1;
  v33 = sub_222C9367C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025668, &qword_222C98A80);
  v7 = sub_222C94CDC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_222B72D78(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_222C9440C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_222B708AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256E8, &qword_222C98AD0);
  result = sub_222C94CDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_222C952EC();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}
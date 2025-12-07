uint64_t type metadata accessor for AwardEarnedLoadState(uint64_t a1)
{
  result = qword_2810E2E70;
  if (!qword_2810E2E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B3CF96C(uint64_t a1)
{
  sub_24B3CF9D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_24B3CF9D4()
{
  if (!qword_2810E36D0)
  {
    v0 = sub_24B45836C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E36D0);
    }
  }
}

uint64_t type metadata accessor for AwardImageLoadState(uint64_t a1)
{
  result = qword_2810E3048;
  if (!qword_2810E3048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B3CFA68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

void sub_24B3CFAB4(uint64_t a1)
{
  sub_24B3CFA68(319, &qword_2810E36D0, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_24B3CFA68(319, &qword_2810E36E8, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for AwardProgressLoadState(uint64_t a1)
{
  result = qword_2810E2D10;
  if (!qword_2810E2D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B3CFBAC(uint64_t a1)
{
  sub_24B3CF9D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t type metadata accessor for AwardToastLoadState(uint64_t a1)
{
  result = qword_2810E2F18;
  if (!qword_2810E2F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B3CFC80(uint64_t a1)
{
  sub_24B3CF9D4();
  if (v1 <= 0x3F)
  {
    sub_24B3CFCF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

ValueMetadata *sub_24B3CFCF4()
{
  result = qword_2810E3330[0];
  if (!qword_2810E3330[0])
  {
    result = &type metadata for AwardToastDetail;
    atomic_store(&type metadata for AwardToastDetail, qword_2810E3330);
  }

  return result;
}

void sub_24B3CFD24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B458D8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24B3CFD88(uint64_t a1)
{
  sub_24B3CFD24(319, &qword_2810E27A8, type metadata accessor for AwardEarnedLoadState);
  if (v1 <= 0x3F)
  {
    sub_24B3CFFA0(319);
    if (v2 <= 0x3F)
    {
      sub_24B3CFD24(319, &qword_2810E27A0, type metadata accessor for AwardProgressLoadState);
      if (v3 <= 0x3F)
      {
        sub_24B3D0064();
        if (v4 <= 0x3F)
        {
          type metadata accessor for AwardToastLoadState(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24B3CFE8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B3CFEDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t type metadata accessor for AchievementEnvironmentCacheMonitorState(uint64_t a1)
{
  result = qword_2810E29E0;
  if (!qword_2810E29E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B3CFFA0(uint64_t a1)
{
  if (!qword_2810E2788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8090, &qword_24B45C2C0);
    v1 = sub_24B458D8C();
    if (!v2)
    {
      atomic_store(v1, &qword_2810E2788);
    }
  }
}

void type metadata accessor for CGSize()
{
  if (!qword_2810E2760)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2810E2760);
    }
  }
}

void sub_24B3D0064()
{
  if (!qword_2810E2790)
  {
    v0 = sub_24B458D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E2790);
    }
  }
}

uint64_t sub_24B3D00C4(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardToastLoadState(0);
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t AchievementEnvironmentCacheMonitorState.init(earnedLoadStates:imageLoadStates:progressLoadStates:suggestedWorkoutsStates:toastLoadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for AchievementEnvironmentCacheMonitorState(0) + 32);

  return sub_24B3D00C4(a5, v7);
}

unint64_t sub_24B3D0178()
{
  result = qword_2810E29F0;
  if (!qword_2810E29F0)
  {
    type metadata accessor for AchievementEnvironmentCacheMonitorState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E29F0);
  }

  return result;
}

uint64_t _s13FitnessAwards39AchievementEnvironmentCacheMonitorStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_24B3D0270(*a1, *a2) & 1) == 0 || (sub_24B3D1534(a1[1], a2[1]) & 1) == 0 || (sub_24B3D0A7C(a1[2], a2[2]) & 1) == 0 || (sub_24B3D1A04(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for AchievementEnvironmentCacheMonitorState(0) + 32);

  return _s13FitnessAwards19AwardToastLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v4, a2 + v4);
}

uint64_t sub_24B3D0270(uint64_t a1, uint64_t a2)
{
  v72 = sub_24B45836C();
  v4 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8330, &unk_24B45D840);
  MEMORY[0x28223BE20](v78);
  v7 = &v67 - v6;
  State = type metadata accessor for AwardEarnedLoadState(0);
  v83 = *(State - 8);
  v9 = MEMORY[0x28223BE20](State);
  v74 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v67 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v84 = &v67 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v80 = &v67 - v17;
  MEMORY[0x28223BE20](v16);
  v77 = &v67 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8970, &qword_24B460708);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v20);
  v79 = (&v67 - v24);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v25 = 0;
  v73 = a1;
  v28 = *(a1 + 64);
  v27 = a1 + 64;
  v26 = v28;
  v29 = 1 << *(v27 - 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v26;
  v32 = (v29 + 63) >> 6;
  v68 = (v4 + 32);
  v69 = (v4 + 8);
  v70 = v13;
  v75 = State;
  v76 = a2;
  v81 = v22;
  while (1)
  {
    if (!v31)
    {
      if (v32 <= v25 + 1)
      {
        v34 = v25 + 1;
      }

      else
      {
        v34 = v32;
      }

      v35 = v34 - 1;
      while (1)
      {
        v36 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v36 >= v32)
        {
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8978, &qword_24B460710);
          (*(*(v66 - 8) + 56))(v22, 1, 1, v66);
          v82 = 0;
          v25 = v35;
          goto LABEL_19;
        }

        v37 = *(v27 + 8 * v36);
        ++v25;
        if (v37)
        {
          v82 = (v37 - 1) & v37;
          v33 = __clz(__rbit64(v37)) | (v36 << 6);
          v25 = v36;
          goto LABEL_18;
        }
      }

      __break(1u);
      return result;
    }

    v82 = (v31 - 1) & v31;
    v33 = __clz(__rbit64(v31)) | (v25 << 6);
LABEL_18:
    v38 = (*(v73 + 48) + 16 * v33);
    v40 = *v38;
    v39 = v38[1];
    v41 = v77;
    sub_24B45680C(*(v73 + 56) + *(v83 + 72) * v33, v77, type metadata accessor for AwardEarnedLoadState);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8978, &qword_24B460710);
    v43 = *(v42 + 48);
    v44 = v81;
    *v81 = v40;
    *(v44 + 1) = v39;
    v22 = v44;
    sub_24B456874(v41, &v44[v43], type metadata accessor for AwardEarnedLoadState);
    (*(*(v42 - 8) + 56))(v22, 0, 1, v42);

LABEL_19:
    v45 = v79;
    sub_24B41C0B0(v22, v79, &qword_27EFE8970, &qword_24B460708);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8978, &qword_24B460710);
    v47 = 1;
    if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
    {
      return v47;
    }

    v48 = *(v46 + 48);
    v49 = *v45;
    v50 = v45[1];
    v51 = v80;
    sub_24B456874(v45 + v48, v80, type metadata accessor for AwardEarnedLoadState);
    v52 = v76;
    v53 = sub_24B412140(v49, v50);
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      sub_24B4568DC(v51, type metadata accessor for AwardEarnedLoadState);
      return 0;
    }

    v56 = *(v52 + 56);
    v57 = v84;
    sub_24B45680C(v56 + *(v83 + 72) * v53, v84, type metadata accessor for AwardEarnedLoadState);
    v58 = *(v78 + 48);
    sub_24B45680C(v57, v7, type metadata accessor for AwardEarnedLoadState);
    sub_24B45680C(v51, &v7[v58], type metadata accessor for AwardEarnedLoadState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_24B4568DC(v84, type metadata accessor for AwardEarnedLoadState);
      sub_24B4568DC(v51, type metadata accessor for AwardEarnedLoadState);
      sub_24B45680C(v7, v74, type metadata accessor for AwardEarnedLoadState);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_34;
      }

      if (*v74 != v7[v58])
      {
LABEL_32:
        sub_24B4568DC(v7, type metadata accessor for AwardEarnedLoadState);
        return 0;
      }
    }

    else
    {
      sub_24B4568DC(v84, type metadata accessor for AwardEarnedLoadState);
      sub_24B4568DC(v51, type metadata accessor for AwardEarnedLoadState);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_34;
      }
    }

LABEL_7:
    result = sub_24B4568DC(v7, type metadata accessor for AwardEarnedLoadState);
    v22 = v81;
    v31 = v82;
  }

  v60 = v70;
  sub_24B45680C(v7, v70, type metadata accessor for AwardEarnedLoadState);
  if (!swift_getEnumCaseMultiPayload())
  {
    v61 = &v7[v58];
    v62 = v71;
    v63 = v72;
    (*v68)(v71, v61, v72);
    v64 = sub_24B45834C();
    v65 = *v69;
    (*v69)(v62, v63);
    sub_24B4568DC(v84, type metadata accessor for AwardEarnedLoadState);
    sub_24B4568DC(v80, type metadata accessor for AwardEarnedLoadState);
    v65(v60, v63);
    if ((v64 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_7;
  }

  sub_24B4568DC(v84, type metadata accessor for AwardEarnedLoadState);
  sub_24B4568DC(v80, type metadata accessor for AwardEarnedLoadState);
  (*v69)(v60, v72);
LABEL_34:
  sub_24B3DF4F0(v7, &qword_27EFE8330, &unk_24B45D840);
  return 0;
}

uint64_t sub_24B3D0A7C(uint64_t a1, uint64_t a2)
{
  v94 = sub_24B45836C();
  v4 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7ED0, &qword_24B45BA80);
  MEMORY[0x28223BE20](v102);
  v7 = &v87 - v6;
  State = type metadata accessor for AwardProgressLoadState(0);
  v8 = *(State - 8);
  v9 = MEMORY[0x28223BE20](State);
  v92 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = &v87 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v87 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v87 - v16;
  MEMORY[0x28223BE20](v15);
  v99 = &v87 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8948, &qword_24B4606E8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v20);
  v104 = (&v87 - v24);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v103 = v7;
  v25 = 0;
  v96 = a1;
  v26 = *(a1 + 64);
  v90 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v88 = (v4 + 32);
  v89 = (v4 + 8);
  v97 = a2;
  v98 = v8;
  v100 = v17;
  v105 = v22;
  v95 = v30;
  while (1)
  {
    if (!v29)
    {
      if (v30 <= v25 + 1)
      {
        v34 = v25 + 1;
      }

      else
      {
        v34 = v30;
      }

      v35 = v34 - 1;
      while (1)
      {
        v36 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v36 >= v30)
        {
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8950, &qword_24B4606F0);
          (*(*(v79 - 8) + 56))(v22, 1, 1, v79);
          v106 = 0;
          v25 = v35;
          goto LABEL_19;
        }

        v37 = *(v90 + 8 * v36);
        ++v25;
        if (v37)
        {
          v32 = v17;
          v106 = (v37 - 1) & v37;
          v33 = __clz(__rbit64(v37)) | (v36 << 6);
          v25 = v36;
          goto LABEL_18;
        }
      }

      __break(1u);
      return result;
    }

    v32 = v17;
    v106 = (v29 - 1) & v29;
    v33 = __clz(__rbit64(v29)) | (v25 << 6);
LABEL_18:
    v38 = (*(v96 + 48) + 16 * v33);
    v40 = *v38;
    v39 = v38[1];
    v41 = v99;
    sub_24B45680C(*(v96 + 56) + *(v8 + 72) * v33, v99, type metadata accessor for AwardProgressLoadState);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8950, &qword_24B4606F0);
    v43 = *(v42 + 48);
    v44 = v105;
    *v105 = v40;
    *(v44 + 1) = v39;
    v22 = v44;
    sub_24B456874(v41, &v44[v43], type metadata accessor for AwardProgressLoadState);
    (*(*(v42 - 8) + 56))(v22, 0, 1, v42);

    v17 = v32;
    v30 = v95;
LABEL_19:
    v45 = v22;
    v46 = v104;
    sub_24B41C0B0(v45, v104, &qword_27EFE8948, &qword_24B4606E8);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8950, &qword_24B4606F0);
    v48 = 1;
    if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
    {
      return v48;
    }

    v49 = *(v47 + 48);
    v50 = *v46;
    v51 = v46[1];
    sub_24B456874(v46 + v49, v17, type metadata accessor for AwardProgressLoadState);
    v52 = sub_24B412140(v50, v51);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      v86 = v17;
      goto LABEL_52;
    }

    v55 = *(a2 + 56) + *(v8 + 72) * v52;
    v56 = v107;
    sub_24B45680C(v55, v107, type metadata accessor for AwardProgressLoadState);
    v57 = v103;
    v58 = &v103[*(v102 + 48)];
    sub_24B45680C(v56, v103, type metadata accessor for AwardProgressLoadState);
    sub_24B45680C(v17, v58, type metadata accessor for AwardProgressLoadState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    v72 = v93;
    sub_24B45680C(v57, v93, type metadata accessor for AwardProgressLoadState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_24B4568DC(v107, type metadata accessor for AwardProgressLoadState);
      sub_24B4568DC(v17, type metadata accessor for AwardProgressLoadState);
      (*v89)(v72, v94);
      goto LABEL_47;
    }

    v73 = v91;
    v74 = v94;
    (*v88)(v91, v58, v94);
    v75 = v17;
    v76 = v72;
    v77 = sub_24B45834C();
    v78 = *v89;
    (*v89)(v73, v74);
    sub_24B4568DC(v107, type metadata accessor for AwardProgressLoadState);
    sub_24B4568DC(v75, type metadata accessor for AwardProgressLoadState);
    v78(v76, v74);
    v8 = v98;
    if ((v77 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_7:
    result = sub_24B4568DC(v57, type metadata accessor for AwardProgressLoadState);
    a2 = v97;
    v17 = v100;
    v22 = v105;
    v29 = v106;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_24B4568DC(v107, type metadata accessor for AwardProgressLoadState);
    sub_24B4568DC(v17, type metadata accessor for AwardProgressLoadState);
    v31 = swift_getEnumCaseMultiPayload();
    v8 = v98;
    if (v31 != 2)
    {
      goto LABEL_47;
    }

    goto LABEL_7;
  }

  v60 = v92;
  sub_24B45680C(v57, v92, type metadata accessor for AwardProgressLoadState);
  v61 = *v60;
  v62 = *(v60 + 8);
  v63 = *(v60 + 16);
  v64 = *(v60 + 24);
  v65 = *(v60 + 32);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B3DF468(v61, v62, v63, v64, v65);
    sub_24B4568DC(v107, type metadata accessor for AwardProgressLoadState);
    sub_24B4568DC(v100, type metadata accessor for AwardProgressLoadState);
    v57 = v103;
LABEL_47:
    sub_24B3DF4F0(v57, &qword_27EFE7ED0, &qword_24B45BA80);
    return 0;
  }

  v66 = *v58;
  v67 = *(v58 + 8);
  v69 = *(v58 + 16);
  v68 = *(v58 + 24);
  v70 = *(v58 + 32);
  if (v65)
  {
    v87 = v68;
    v71 = v69;
    sub_24B4568DC(v107, type metadata accessor for AwardProgressLoadState);
    sub_24B4568DC(v100, type metadata accessor for AwardProgressLoadState);
    if ((v70 & 1) == 0)
    {
      sub_24B3DF468(v66, v67, v71, v87, 0);
      goto LABEL_50;
    }

    v57 = v103;
    v8 = v98;
    if (v61 != v66 || ((v67 ^ v62) & 1) != 0 || v63 != v71)
    {
      goto LABEL_51;
    }

    goto LABEL_7;
  }

  if ((v70 & 1) == 0)
  {
    v80 = *&v64;
    v81 = *&v69;
    v82 = *&v68;
    if (v61 == v66 && v62 == v67)
    {
      sub_24B3DF468(v61, v62, v69, v68, 0);
      sub_24B3DF468(v61, v62, v63, v64, 0);
      sub_24B4568DC(v107, type metadata accessor for AwardProgressLoadState);
      sub_24B4568DC(v100, type metadata accessor for AwardProgressLoadState);
      v57 = v103;
      v8 = v98;
      if (*&v63 != v81)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v83 = v66;
      v84 = v68;
      v85 = v69;
      LODWORD(v87) = sub_24B4591AC();
      sub_24B3DF468(v83, v67, v85, v84, 0);
      sub_24B3DF468(v61, v62, v63, v64, 0);
      sub_24B4568DC(v107, type metadata accessor for AwardProgressLoadState);
      sub_24B4568DC(v100, type metadata accessor for AwardProgressLoadState);
      v57 = v103;
      v8 = v98;
      if ((v87 & 1) == 0 || *&v63 != v81)
      {
        goto LABEL_51;
      }
    }

    if (v80 != v82)
    {
      goto LABEL_51;
    }

    goto LABEL_7;
  }

  sub_24B3DF468(v61, v62, v63, v64, 0);
  sub_24B4568DC(v107, type metadata accessor for AwardProgressLoadState);
  sub_24B4568DC(v100, type metadata accessor for AwardProgressLoadState);
LABEL_50:
  v57 = v103;
LABEL_51:
  v86 = v57;
LABEL_52:
  sub_24B4568DC(v86, type metadata accessor for AwardProgressLoadState);
  return 0;
}

uint64_t sub_24B3D1534(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);

    sub_24B412140(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v19 = sub_24B454A98(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s13FitnessAwards19AwardToastLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B45836C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardToastLoadState(0);
  v9 = MEMORY[0x28223BE20](State);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE90C8, &unk_24B4633E0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v37 - v16;
  v18 = v37 + *(v15 + 56) - v16;
  sub_24B3D1D24(a1, v37 - v16);
  sub_24B3D1D24(a2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24B3D1D24(v17, v13);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v5 + 32))(v7, v18, v4);
      v34 = sub_24B45834C();
      v35 = *(v5 + 8);
      v35(v7, v4);
      v35(v13, v4);
      goto LABEL_12;
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_24B3D1D24(v17, v11);
    v20 = *v11;
    v21 = *(v11 + 2);
    v22 = *(v11 + 4);
    v23 = *(v11 + 5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v11[48];
      v25 = *(v11 + 3);
      v26 = *(v11 + 1);
      v28 = *v18;
      v27 = *(v18 + 1);
      v30 = *(v18 + 2);
      v29 = *(v18 + 3);
      v32 = *(v18 + 4);
      v31 = *(v18 + 5);
      v33 = v18[48];
      v39[0] = v20;
      v39[1] = v26;
      v39[2] = v21;
      v39[3] = v25;
      v39[4] = v22;
      v39[5] = v23;
      v40 = v24;
      v37[0] = v28;
      v37[1] = v27;
      v37[2] = v30;
      v37[3] = v29;
      v37[4] = v32;
      v37[5] = v31;
      v38 = v33;
      v34 = _s13FitnessAwards16AwardToastDetailV2eeoiySbAC_ACtFZ_0(v39, v37);

LABEL_12:
      sub_24B3D1D88(v17);
      return v34 & 1;
    }

    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_24B436180(v17);
    v34 = 0;
    return v34 & 1;
  }

  sub_24B3D1D88(v17);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_24B3D1A04(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);

    sub_24B3D81E4(v17);
    v18 = sub_24B412140(v15, v16);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
LABEL_42:
      sub_24B3D8220(v17);
      return 0;
    }

    v21 = *(*(v2 + 56) + 8 * v18);
    if (v21)
    {
      if (v21 == 1)
      {
        if (v17 != 1)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v17 < 2)
        {
          goto LABEL_42;
        }

        v22 = *(v21 + 16);
        if (v22 != *(v17 + 16))
        {
          goto LABEL_42;
        }

        if (v22)
        {
          v23 = v21 == v17;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          v33 = v9;
          v34 = v5;
          v35 = v2;

          v24 = 0;
          v25 = (v21 + 64);
          v26 = (v17 + 64);
          v37 = v8;
          v38 = v21;
          v39 = v17;
          v36 = v22;
          while (v24 < *(v21 + 16))
          {
            if (v24 >= *(v17 + 16))
            {
              goto LABEL_46;
            }

            v27 = *(v25 - 2);
            v28 = *(v25 - 1);
            v29 = *v25;
            v30 = *(v26 - 2);
            v31 = *(v26 - 1);
            v40 = *v26;
            if ((*(v25 - 4) != *(v26 - 4) || *(v25 - 3) != *(v26 - 3)) && (v31 = *(v26 - 1), (sub_24B4591AC() & 1) == 0) || (v27 != v30 || v28 != v31) && (sub_24B4591AC() & 1) == 0 || (, , , , , , v32 = sub_24B40E74C(v29, v40), , , , , , result = , (v32 & 1) == 0))
            {
              sub_24B3D8220(v39);
              v17 = v38;
              goto LABEL_42;
            }

            ++v24;
            v25 += 5;
            v26 += 5;
            v8 = v37;
            v21 = v38;
            v17 = v39;
            if (v36 == v24)
            {
              sub_24B3D8220(v39);
              v2 = v35;
              v9 = v33;
              v5 = v34;
              goto LABEL_28;
            }
          }

          goto LABEL_45;
        }

        v21 = v17;
LABEL_28:
        result = sub_24B3D8220(v21);
      }
    }

    else if (v17)
    {
      goto LABEL_42;
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
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_24B3D1D24(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardToastLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_24B3D1D88(uint64_t a1)
{
  State = type metadata accessor for AwardToastLoadState(0);
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t sub_24B3D1DE4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    State = type metadata accessor for AwardEarnedLoadState(0);
    v9 = *(*(State - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, State);
  }
}

uint64_t sub_24B3D1E90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for AwardEarnedLoadState(0);
    v8 = *(*(State - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, State);
  }

  return result;
}

uint64_t sub_24B3D1F34@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24B3D1F80()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D1FBC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7A88, &qword_24B45A1A0);
  type metadata accessor for AwardProgressLoadState(255);
  sub_24B3DE994();
  sub_24B3DF27C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B3D2080()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D20B8(void *a1)
{
  sub_24B4585BC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D00, &qword_24B45B418);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  sub_24B45872C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B458C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  sub_24B45872C();
  sub_24B45872C();
  sub_24B458B7C();
  sub_24B4585BC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24B3D26B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7D00, &qword_24B45B418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B3D2728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7D00, &qword_24B45B418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B3D27B4()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D27EC()
{
  v1 = (type metadata accessor for AwardProgressFeature(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24B45836C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24B3D28EC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B45836C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B3D2998(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B45836C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B3D2A44()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D2A80(void *a1)
{
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AD8, &qword_24B45A210);
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  sub_24B4585BC();
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  sub_24B45872C();
  sub_24B458B7C();
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8050, &qword_24B45C190);
  sub_24B4585BC();
  sub_24B4585AC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B3DF11C(&qword_2810E2810, &qword_27EFE8050, &qword_24B45C190, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  sub_24B3F4404(&qword_2810E28D0, MEMORY[0x277CDD9F8], MEMORY[0x277CDD9F0]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8058, &qword_24B45C198);
  sub_24B4585BC();
  sub_24B4585BC();
  sub_24B4585BC();
  swift_getOpaqueTypeConformance2();
  sub_24B3DF11C(&qword_2810E28E0, &qword_27EFE8058, &qword_24B45C198, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B458BDC();
  sub_24B4585EC();
  swift_getWitnessTable();
  sub_24B3F4404(&qword_2810E2870, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B3D307C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8040, &qword_24B45C180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B3D30EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8040, &qword_24B45C180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B3D3160()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D319C()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D31D4()
{
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v1 = v7;
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v2;
  v3 = (type metadata accessor for TVAwardHeaderView(0, &v7) - 8);
  v4 = (v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80)));
  sub_24B3DE5B8(*v4, v4[1]);
  (*(*(v1 - 8) + 8))(v4 + v3[15], v1);
  (*(*(v6 - 8) + 8))(v4 + v3[16]);
  return swift_deallocObject();
}

uint64_t sub_24B3D3314(void *a1)
{
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8338, &qword_24B45D858);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AC8, &qword_24B45A200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  sub_24B4585BC();
  sub_24B4585BC();
  sub_24B45872C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE8340, &qword_24B45D860);
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  sub_24B45872C();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  sub_24B4585BC();
  sub_24B4585BC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24B3D35C8()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D3600()
{
  v1 = (type metadata accessor for AwardDetailFeature(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_24B45836C();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24B3D36F8()
{
  v1 = (type metadata accessor for AwardDetailFeature(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24B45836C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24B3D3800(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B45836C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B3D38AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B45836C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B3D3954()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D398C()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D39C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8788, &qword_24B45F748);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8780, &unk_24B45F8E0);
  sub_24B412274();
  sub_24B412558();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B3D3A58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87A8, &qword_24B45F7A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B3D3ACC()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D3B04()
{
  v1 = (type metadata accessor for AwardImageFeature(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24B45836C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24B3D3C0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B45836C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B3D3CB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B45836C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B3D3D5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AwardLockupLayout(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B3D3E8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AwardLockupLayout(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B3D3FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    State = type metadata accessor for AwardProgressLoadState(0);
    v9 = *(State - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = State;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24B45839C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B3D40E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for AwardProgressLoadState(0);
    v9 = *(State - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = State;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24B45839C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B3D4204(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AwardHeaderLayout(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B3D4334(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AwardHeaderLayout(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B3D4464(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    State = type metadata accessor for AwardToastLoadState(0);
    v9 = *(*(State - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, State);
  }
}

void *sub_24B3D4510(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for AwardToastLoadState(0);
    v8 = *(*(State - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, State);
  }

  return result;
}

uint64_t sub_24B3D45B4()
{
  v1 = (type metadata accessor for AwardHeaderFeature(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_24B45836C();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24B3D46A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B45836C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B3D4750(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B45836C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B3D47F4()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D4858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    swift_getFunctionTypeMetadata1();
    v8 = sub_24B4583CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B3D4920(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    swift_getFunctionTypeMetadata1();
    v7 = sub_24B4583CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B3D49DC(void *a1)
{
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
  sub_24B4585BC();
  sub_24B458F6C();
  sub_24B42BE44();
  sub_24B458C5C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B458C3C();
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D50, &qword_24B461BC0);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D20, &qword_24B461BA8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B3DF11C(&qword_27EFE8D58, &qword_27EFE8D20, &qword_24B461BA8, MEMORY[0x277D84470]);
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8050, &qword_24B45C190);
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D60, &qword_24B461BC8);
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8058, &qword_24B45C198);
  sub_24B4585BC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B3DF11C(&qword_2810E2810, &qword_27EFE8050, &qword_24B45C190, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  sub_24B3DF11C(&qword_27EFE8D68, &qword_27EFE8D60, &qword_24B461BC8, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_24B3DF11C(&qword_2810E28E0, &qword_27EFE8058, &qword_24B45C198, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D18, &qword_24B461BA0);
  swift_getOpaqueTypeConformance2();
  sub_24B3DF11C(&qword_27EFE8D70, &qword_27EFE8D18, &qword_24B461BA0, MEMORY[0x277CDF728]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B3D5008()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D5040@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B45865C();
  *a1 = result;
  return result;
}

uint64_t sub_24B3D5094@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B45869C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B3D50F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B45867C();
  *a1 = result;
  return result;
}

uint64_t sub_24B3D5150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for AwardToastView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 40) & ~*(*v5 + 80);

  sub_24B3DE5B8(*(v4 + v6), *(v4 + v6 + 8));
  v7 = v5[11];
  swift_getFunctionTypeMetadata1();
  v8 = sub_24B4583CC();
  (*(*(v8 - 8) + 8))(v4 + v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_24B3D5280()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D52CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    State = type metadata accessor for AwardToastLoadState(0);
    v9 = *(*(State - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, State);
  }
}

uint64_t sub_24B3D5378(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for AwardToastLoadState(0);
    v8 = *(*(State - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, State);
  }

  return result;
}

uint64_t sub_24B3D5420()
{

  return swift_deallocObject();
}

uint64_t sub_24B3D545C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    swift_getFunctionTypeMetadata0();
    v8 = sub_24B4583CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      swift_getFunctionTypeMetadata0();
      v13 = sub_24B4583CC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B3D5598(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    swift_getFunctionTypeMetadata0();
    v8 = sub_24B4583CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      swift_getFunctionTypeMetadata0();
      v13 = sub_24B4583CC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B3D56D8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE91A0, &qword_24B463A10);
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  swift_getWitnessTable();
  sub_24B45849C();
  swift_getWitnessTable();
  sub_24B45858C();
  sub_24B4585BC();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  swift_getWitnessTable();
  sub_24B45849C();
  sub_24B45872C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B45858C();
  sub_24B45872C();
  sub_24B458B7C();
  sub_24B4585BC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B4103F8();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AwardEarnedLoadState(255);
  swift_getOpaqueTypeConformance2();
  sub_24B438C1C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B3D5A80()
{
  v1 = *(v0 + 24);
  v9[0] = *(v0 + 16);
  v9[1] = v1;
  v10 = *(v0 + 40);
  v2 = (type metadata accessor for AwardDetailView(0, v9) - 8);
  v3 = (v0 + ((*(*v2 + 80) + 64) & ~*(*v2 + 80)));
  sub_24B3DE5B8(*v3, v3[1]);
  v4 = v2[15];
  swift_getFunctionTypeMetadata0();
  v5 = sub_24B4583CC();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v2[16];
  swift_getFunctionTypeMetadata0();
  v7 = sub_24B4583CC();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_24B3D5C08(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    State = type metadata accessor for AwardToastLoadState(0);
    v9 = *(*(State - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, State);
  }
}

void *sub_24B3D5CB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for AwardToastLoadState(0);
    v8 = *(*(State - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, State);
  }

  return result;
}

uint64_t sub_24B3D5D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B45843C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24B3D5E28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B45843C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24B3D5F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B45843C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24B3D5FF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B45843C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24B3D60AC()
{
  v1 = (type metadata accessor for AwardToastPresentationFeature(0) - 8);
  v2 = (*(*v1 + 80) + 33) & ~*(*v1 + 80);
  sub_24B3D810C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v3 = v1[7];
  v4 = sub_24B45836C();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24B3D61E0()
{
  v1 = (type metadata accessor for AwardToastPresentationFeature(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24B45836C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24B3D6338()
{
  v1 = (type metadata accessor for AwardToastPresentationFeature(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24B45836C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24B3D6478(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B45836C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B3D6524(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B45836C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B3D65D8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B45836C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B3D6684(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B45836C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B3D672C()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AwardImageLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AwardImageLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_24B3D6870(uint64_t a1, _OWORD *a2)
{
  *(v3 + 176) = a1;
  sub_24B45839C();
  *(v3 + 184) = swift_task_alloc();
  sub_24B458E2C();
  *(v3 + 192) = swift_task_alloc();
  sub_24B458E0C();
  *(v3 + 200) = swift_task_alloc();
  v5 = a2[1];
  *(v3 + 208) = *a2;
  *(v3 + 224) = v5;
  v6 = *v2;
  *(v3 + 240) = a2[5];
  *(v3 + 256) = v6;
  *(v3 + 49) = *(v2 + 16);

  return MEMORY[0x2822009F8](sub_24B3D6978, 0, 0);
}

uint64_t sub_24B3D6978()
{
  if (*(v0 + 49) > 1u)
  {
    if (*(v0 + 49) != 2)
    {
      v11 = (*(v0 + 208) + **(v0 + 208));
      v10 = swift_task_alloc();
      *(v0 + 400) = v10;
      *v10 = v0;
      v10[1] = sub_24B3D7CC8;
      v2 = &unk_285E6C480;
      goto LABEL_12;
    }

    v3 = *(v0 + 264);
    v4 = *(v0 + 224);

    v12 = (v4 + *v4);
    v5 = swift_task_alloc();
    *(v0 + 280) = v5;
    *v5 = v0;
    v5[1] = sub_24B3D6E20;
    v6 = *(v0 + 256);

    return v12(v0 + 16, v6, v3);
  }

  else
  {
    if (!*(v0 + 49))
    {
      v11 = (*(v0 + 208) + **(v0 + 208));
      v1 = swift_task_alloc();
      *(v0 + 336) = v1;
      *v1 = v0;
      v1[1] = sub_24B3D755C;
      v2 = &unk_285E6C450;
LABEL_12:

      return v11(v2);
    }

    v8 = *(v0 + 240);

    v13 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 272) = v9;
    *v9 = v0;
    v9[1] = sub_24B3D6CE8;

    return v13();
  }
}

uint64_t sub_24B3D6CE8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    MEMORY[0x24C2406D0](v2);
    v7 = sub_24B3D7118;
  }

  else
  {
    *(v6 + 296) = a2;
    *(v6 + 304) = a1;
    v7 = sub_24B3D6F40;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24B3D6E20()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    sub_24B3D810C(*(v2 + 256), *(v2 + 264), 2);
    v3 = sub_24B3D7FDC;
  }

  else
  {
    v3 = sub_24B3D7874;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24B3D6F40()
{
  sub_24B458DFC();
  sub_24B458DEC();
  sub_24B458DDC();

  sub_24B458DEC();
  sub_24B458E1C();
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_24B45838C();
  v0[19] = sub_24B458E5C();
  v0[20] = v3;
  v4 = v0[32];
  v5 = v0[26];
  v0[39] = v3;
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_24B3D72A4;

  return v8(v4);
}

uint64_t sub_24B3D7118()
{
  sub_24B458DBC();
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_24B45838C();
  v0[19] = sub_24B458E5C();
  v0[20] = v3;
  v4 = v0[32];
  v5 = v0[26];
  v0[39] = v3;
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_24B3D72A4;

  return v8(v4);
}

uint64_t sub_24B3D72A4(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v4 = *v2;

  if (v1)
  {
    v6 = v3[32];
    v5 = v3[33];

    sub_24B3D810C(v6, v5, 1);

    v7 = v4[1];

    return v7();
  }

  else
  {
    v3[41] = v3[19];

    return MEMORY[0x2822009F8](sub_24B3D7430, 0, 0);
  }
}

uint64_t sub_24B3D7430()
{
  sub_24B458DBC();
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_24B45838C();
  v3 = sub_24B458E5C();
  v4 = v0[41];
  v5 = v0[8];
  v6 = v0[39];
  v7 = v0[22];
  *v7 = v0[32];
  *(v7 + 8) = v4;
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  *(v7 + 32) = v8;
  *(v7 + 40) = v5;
  *(v7 + 48) = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_24B3D755C(uint64_t a1)
{
  v3 = *v2;
  v3[10] = v2;
  v3[11] = a1;
  v3[12] = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24B3D76BC, 0, 0);
  }
}

uint64_t sub_24B3D76BC()
{
  sub_24B458DBC();
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_24B45838C();
  v4 = sub_24B458E5C();
  v6 = v5;
  sub_24B458DBC();
  v7 = [v2 bundleForClass_];
  sub_24B45838C();
  v8 = sub_24B458E5C();
  v9 = v0[11];
  v10 = v0[22];
  *v10 = &unk_285E6C450;
  *(v10 + 8) = v4;
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  *(v10 + 32) = v11;
  *(v10 + 40) = v9;
  *(v10 + 48) = 2;

  v12 = v0[1];

  return v12();
}

uint64_t sub_24B3D7874()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 208);
  *(v0 + 344) = *(v0 + 16);
  *(v0 + 360) = *(v0 + 40);
  *(v0 + 368) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE78F0, &qword_24B45BC80);
  v4 = swift_allocObject();
  *(v0 + 376) = v4;
  *(v4 + 16) = xmmword_24B459800;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;

  v7 = (v3 + *v3);
  v5 = swift_task_alloc();
  *(v0 + 384) = v5;
  *v5 = v0;
  v5[1] = sub_24B3D79CC;

  return v7(v4);
}

uint64_t sub_24B3D79CC(uint64_t a1)
{
  v3 = *v2;
  v3[13] = v2;
  v3[14] = a1;
  v3[15] = v1;
  v3[49] = v1;

  if (v1)
  {
    v4 = sub_24B3D805C;
  }

  else
  {

    v4 = sub_24B3D7AF0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24B3D7AF0()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24B459800;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  sub_24B458DFC();
  sub_24B458DEC();
  v0[21] = 1;
  sub_24B458DCC();
  sub_24B458DEC();
  sub_24B458E1C();
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_24B45838C();
  v6 = sub_24B458E5C();
  v8 = v7;

  v9 = v0[14];
  v11 = v0[43];
  v10 = v0[44];
  v12 = v0[22];
  *v12 = v3;
  *(v12 + 8) = v11;
  *(v12 + 16) = v10;
  *(v12 + 24) = v6;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  *(v12 + 48) = 1;

  v13 = v0[1];

  return v13();
}

uint64_t sub_24B3D7CC8(uint64_t a1)
{
  v3 = *v2;
  v3[16] = v2;
  v3[17] = a1;
  v3[18] = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24B3D7E28, 0, 0);
  }
}

uint64_t sub_24B3D7E28()
{
  sub_24B458DBC();
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_24B45838C();
  v4 = sub_24B458E5C();
  v6 = v5;
  sub_24B458DBC();
  v7 = [v2 bundleForClass_];
  sub_24B45838C();
  v8 = sub_24B458E5C();
  v9 = v0[17];
  v10 = v0[22];
  *v10 = &unk_285E6C480;
  *(v10 + 8) = v4;
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  *(v10 + 32) = v11;
  *(v10 + 40) = v9;
  *(v10 + 48) = 3;

  v12 = v0[1];

  return v12();
}

uint64_t sub_24B3D7FDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B3D805C()
{
  v2 = v0[32];
  v1 = v0[33];

  sub_24B3D810C(v2, v1, 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B3D810C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return v3;
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

uint64_t AwardDetailState.templateUniqueName.getter()
{
  v1 = *v0;

  return v1;
}

void AwardDetailState.layout.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 17);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

unint64_t AwardDetailState.suggestedWorkoutsLoadState.getter()
{
  v1 = *(v0 + 24);
  sub_24B3D81E4(v1);
  return v1;
}

unint64_t sub_24B3D81E4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t AwardDetailState.suggestedWorkoutsLoadState.setter(uint64_t a1)
{
  result = sub_24B3D8220(*(v1 + 24));
  *(v1 + 24) = a1;
  return result;
}

unint64_t sub_24B3D8220(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t type metadata accessor for AwardDetailState(uint64_t a1)
{
  result = qword_27EFE7940;
  if (!qword_27EFE7940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardDetailState.earnedLoadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AwardDetailState(0) + 28);

  return sub_24B3D8330(a1, v3);
}

uint64_t sub_24B3D8330(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardEarnedLoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t AwardDetailState.init(templateUniqueName:layout:suggestedWorkoutsLoadState:earnedLoadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v8;
  *(a6 + 17) = v9;
  *(a6 + 24) = a4;
  v10 = a6 + *(type metadata accessor for AwardDetailState(0) + 28);

  return sub_24B3D843C(a5, v10);
}

uint64_t sub_24B3D843C(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardEarnedLoadState(0);
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t sub_24B3D84A0()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

uint64_t sub_24B3D84E8(uint64_t a1)
{
  v2 = *v1;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v2);
  return sub_24B45926C();
}

unint64_t sub_24B3D852C()
{
  v1 = 0x74756F79616CLL;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0x6F4C64656E726165;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_24B3D85BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B3D8FC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B3D85FC(uint64_t a1)
{
  v2 = sub_24B3D88E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3D8638(uint64_t a1)
{
  v2 = sub_24B3D88E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardDetailState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE78F8, &qword_24B459840);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3D88E4();
  sub_24B45928C();
  v16 = 0;
  sub_24B45914C();
  if (!v2)
  {
    v9 = *(v3 + 17);
    v14 = *(v3 + 16);
    v15 = v9;
    v13 = 1;
    sub_24B3D8938();
    sub_24B45918C();
    v12 = *(v3 + 24);
    v11[15] = 2;
    sub_24B3D898C();
    sub_24B45918C();
    type metadata accessor for AwardDetailState(0);
    v11[14] = 3;
    type metadata accessor for AwardEarnedLoadState(0);
    sub_24B3D8E80(&qword_27EFE7918, &protocol conformance descriptor for AwardEarnedLoadState);
    sub_24B45918C();
  }

  return (*(v6 + 8))(v8, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B3D88E4()
{
  result = qword_27EFE7900;
  if (!qword_27EFE7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7900);
  }

  return result;
}

unint64_t sub_24B3D8938()
{
  result = qword_27EFE7908;
  if (!qword_27EFE7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7908);
  }

  return result;
}

unint64_t sub_24B3D898C()
{
  result = qword_27EFE7910;
  if (!qword_27EFE7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7910);
  }

  return result;
}

uint64_t AwardDetailState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  State = type metadata accessor for AwardEarnedLoadState(0);
  MEMORY[0x28223BE20](State);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7920, &qword_24B459848);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for AwardDetailState(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3D88E4();
  v22 = v8;
  v12 = v23;
  sub_24B45927C();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = State;
  v13 = v5;
  v15 = v20;
  v14 = v21;
  v30 = 0;
  *v11 = sub_24B4590AC();
  *(v11 + 1) = v16;
  v27 = 1;
  sub_24B3D8DD8();
  sub_24B4590EC();
  v17 = v29;
  v11[16] = v28;
  v11[17] = v17;
  v26 = 2;
  sub_24B3D8E2C();
  sub_24B4590EC();
  *(v11 + 3) = v24;
  v25 = 3;
  sub_24B3D8E80(&qword_27EFE7938, &protocol conformance descriptor for AwardEarnedLoadState);
  sub_24B4590EC();
  (*(v15 + 8))(v22, v14);
  sub_24B3D843C(v13, &v11[*(v9 + 28)]);
  sub_24B3D8EC4(v11, v19, type metadata accessor for AwardDetailState);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B3D8F2C(v11);
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

unint64_t sub_24B3D8DD8()
{
  result = qword_27EFE7928;
  if (!qword_27EFE7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7928);
  }

  return result;
}

unint64_t sub_24B3D8E2C()
{
  result = qword_27EFE7930;
  if (!qword_27EFE7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7930);
  }

  return result;
}

uint64_t sub_24B3D8E80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AwardEarnedLoadState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B3D8EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B3D8F2C(uint64_t a1)
{
  v2 = type metadata accessor for AwardDetailState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B3D8FC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024B466A30 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4C64656E726165 && a2 == 0xEF65746174536461)
  {

    return 3;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t _s13FitnessAwards16AwardDetailStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_24B4591AC() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || ((*(a1 + 17) ^ *(a2 + 17)) & 1) != 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (v5 == 1)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6 < 2 || (sub_24B40E5E4(v5, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(type metadata accessor for AwardDetailState(0) + 28);

  return _s13FitnessAwards20AwardEarnedLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

uint64_t sub_24B3D9234(uint64_t a1)
{
  result = type metadata accessor for AwardEarnedLoadState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwardDetailState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AwardDetailState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B3D9428()
{
  result = qword_27EFE7950;
  if (!qword_27EFE7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7950);
  }

  return result;
}

unint64_t sub_24B3D9480()
{
  result = qword_27EFE7958;
  if (!qword_27EFE7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7958);
  }

  return result;
}

unint64_t sub_24B3D94D8()
{
  result = qword_27EFE7960;
  if (!qword_27EFE7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7960);
  }

  return result;
}

uint64_t sub_24B3D9548(uint64_t a1)
{
  v2 = sub_24B3D9DE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3D9584(uint64_t a1)
{
  v2 = sub_24B3D9DE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3D95C0()
{
  v1 = 0x656373656C616F63;
  v2 = 0x6E6961746E69616DLL;
  if (*v0 != 2)
  {
    v2 = 0x7274537472617473;
  }

  if (*v0)
  {
    v1 = 0x72616C75676E6973;
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

uint64_t sub_24B3D9654@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B3D9F0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B3D967C(uint64_t a1)
{
  v2 = sub_24B3D9C98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3D96B8(uint64_t a1)
{
  v2 = sub_24B3D9C98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3D96F4(uint64_t a1)
{
  v2 = sub_24B3D9D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3D9730(uint64_t a1)
{
  v2 = sub_24B3D9D40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3D976C(uint64_t a1)
{
  v2 = sub_24B3D9D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3D97A8(uint64_t a1)
{
  v2 = sub_24B3D9D94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3D97E4(uint64_t a1)
{
  v2 = sub_24B3D9CEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3D9820(uint64_t a1)
{
  v2 = sub_24B3D9CEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastType.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7968, &qword_24B459A20);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7970, &qword_24B459A28);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7978, &qword_24B459A30);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7980, &qword_24B459A38);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7988, &qword_24B459A40);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3D9C98();
  sub_24B45928C();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_24B3D9D40();
      v9 = v23;
      sub_24B45910C();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_24B3D9CEC();
      v9 = v26;
      sub_24B45910C();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_24B3D9D94();
    sub_24B45910C();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_24B3D9DE8();
  sub_24B45910C();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_24B3D9C98()
{
  result = qword_27EFE7990;
  if (!qword_27EFE7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7990);
  }

  return result;
}

unint64_t sub_24B3D9CEC()
{
  result = qword_27EFE7998;
  if (!qword_27EFE7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7998);
  }

  return result;
}

unint64_t sub_24B3D9D40()
{
  result = qword_27EFE79A0;
  if (!qword_27EFE79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79A0);
  }

  return result;
}

unint64_t sub_24B3D9D94()
{
  result = qword_27EFE79A8;
  if (!qword_27EFE79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79A8);
  }

  return result;
}

unint64_t sub_24B3D9DE8()
{
  result = qword_27EFE79B0;
  if (!qword_27EFE79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79B0);
  }

  return result;
}

void *sub_24B3D9E54@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B3DA084(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AwardToastType.hashValue.getter(unsigned __int8 a1)
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](a1);
  return sub_24B45926C();
}

uint64_t sub_24B3D9F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656373656C616F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C75676E6973 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6961746E69616DLL && a2 == 0xEE006B6165727453 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7274537472617473 && a2 == 0xEB000000006B6165)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B4591AC();

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

void *sub_24B3DA084(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A18, &qword_24B459F30);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A20, &qword_24B459F38);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A28, &qword_24B459F40);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A30, &qword_24B459F48);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A38, &unk_24B459F50);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B3D9C98();
  v15 = v43;
  sub_24B45927C();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_24B4590FC();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_24B3E380C();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_24B3D9D94();
        v29 = v33;
        sub_24B45905C();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_24B3D9DE8();
        v23 = v33;
        sub_24B45905C();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_24B3D9D40();
      v28 = v33;
      sub_24B45905C();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_24B3D9CEC();
      v30 = v33;
      sub_24B45905C();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_24B458FFC();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
  *v11 = &type metadata for AwardToastType;
  sub_24B45906C();
  sub_24B458FEC();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x277D84160], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v11;
}

unint64_t sub_24B3DA6C8()
{
  result = qword_27EFE79B8;
  if (!qword_27EFE79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79B8);
  }

  return result;
}

unint64_t sub_24B3DA780()
{
  result = qword_27EFE79C0;
  if (!qword_27EFE79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79C0);
  }

  return result;
}

unint64_t sub_24B3DA7D8()
{
  result = qword_27EFE79C8;
  if (!qword_27EFE79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79C8);
  }

  return result;
}

unint64_t sub_24B3DA830()
{
  result = qword_27EFE79D0;
  if (!qword_27EFE79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79D0);
  }

  return result;
}

unint64_t sub_24B3DA888()
{
  result = qword_27EFE79D8;
  if (!qword_27EFE79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79D8);
  }

  return result;
}

unint64_t sub_24B3DA8E0()
{
  result = qword_27EFE79E0;
  if (!qword_27EFE79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79E0);
  }

  return result;
}

unint64_t sub_24B3DA938()
{
  result = qword_27EFE79E8;
  if (!qword_27EFE79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79E8);
  }

  return result;
}

unint64_t sub_24B3DA990()
{
  result = qword_27EFE79F0;
  if (!qword_27EFE79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79F0);
  }

  return result;
}

unint64_t sub_24B3DA9E8()
{
  result = qword_27EFE79F8;
  if (!qword_27EFE79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE79F8);
  }

  return result;
}

unint64_t sub_24B3DAA40()
{
  result = qword_27EFE7A00;
  if (!qword_27EFE7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A00);
  }

  return result;
}

unint64_t sub_24B3DAA98()
{
  result = qword_27EFE7A08;
  if (!qword_27EFE7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A08);
  }

  return result;
}

unint64_t sub_24B3DAAF0()
{
  result = qword_27EFE7A10;
  if (!qword_27EFE7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A10);
  }

  return result;
}

FitnessAwards::AwardImageLayout __swiftcall AwardImageLayout.init(size:)(FitnessAwards::AwardImageLayout size)
{
  *v1 = size.size.width;
  v1[1] = size.size.height;
  return size;
}

uint64_t sub_24B3DAB84()
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](0);
  return sub_24B45926C();
}

uint64_t sub_24B3DABC8(uint64_t a1)
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](0);
  return sub_24B45926C();
}

uint64_t sub_24B3DAC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B4591AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B3DACA0(uint64_t a1)
{
  v2 = sub_24B3DAE8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DACDC(uint64_t a1)
{
  v2 = sub_24B3DAE8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardImageLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A48, &qword_24B459F70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3DAE8C();
  sub_24B45928C();
  v10[0] = v7;
  v10[1] = v8;
  type metadata accessor for CGSize();
  sub_24B3DB074(&qword_2810E2768, MEMORY[0x277CBF288]);
  sub_24B45918C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B3DAE8C()
{
  result = qword_27EFE7A50;
  if (!qword_27EFE7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A50);
  }

  return result;
}

uint64_t AwardImageLayout.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A58, &qword_24B459F78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3DAE8C();
  sub_24B45927C();
  if (!v2)
  {
    type metadata accessor for CGSize();
    sub_24B3DB074(&qword_27EFE7A60, MEMORY[0x277CBF2A0]);
    sub_24B4590EC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B3DB074(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AwardImageLayout.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C2403E0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x24C2403E0](*&v3);
}

uint64_t AwardImageLayout.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x24C2403E0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x24C2403E0](*&v4);
  return sub_24B45926C();
}

uint64_t sub_24B3DB1D0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  sub_24B3DB298(v1, v2);
  return sub_24B45926C();
}

uint64_t sub_24B3DB22C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_24B45922C();
  sub_24B3DB298(v2, v3);
  return sub_24B45926C();
}

uint64_t sub_24B3DB298(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x24C2403E0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x24C2403E0](*&v3);
}

unint64_t sub_24B3DB2EC()
{
  result = qword_27EFE7A68;
  if (!qword_27EFE7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwardImageLayout.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AwardImageLayout.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_24B3DB43C()
{
  result = qword_27EFE7A70;
  if (!qword_27EFE7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A70);
  }

  return result;
}

unint64_t sub_24B3DB494()
{
  result = qword_27EFE7A78;
  if (!qword_27EFE7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A78);
  }

  return result;
}

unint64_t sub_24B3DB4EC()
{
  result = qword_27EFE7A80;
  if (!qword_27EFE7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7A80);
  }

  return result;
}

uint64_t AwardProgressView.init(store:descriptionStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a4 = sub_24B3DB5A8;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  *(a4 + 17) = v7;
  return result;
}

uint64_t AwardProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  State = type metadata accessor for AwardProgressLoadState(0);
  MEMORY[0x28223BE20](State);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A88, &qword_24B45A1A0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 17);
  sub_24B3DB854(*v1, v8, v9 | (v10 << 8), &v15 - v5);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v8;
  *(v11 + 32) = v9;
  *(v11 + 33) = v10;
  v12 = &v6[*(v4 + 36)];
  *v12 = sub_24B3DE5C0;
  v12[1] = v11;
  v12[2] = 0;
  v12[3] = 0;
  sub_24B3DE5D8(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
  sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8, MEMORY[0x277D04410]);
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v8;
  *(v13 + 32) = v9;
  *(v13 + 33) = v10;
  sub_24B3DE5D8(v7, v8);
  sub_24B3DE994();
  sub_24B3DF27C();
  sub_24B458ABC();

  sub_24B3DF2D4(v3);
  return sub_24B3DF4F0(v6, &qword_27EFE7A88, &qword_24B45A1A0);
}

uint64_t sub_24B3DB854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B18, &qword_24B45A358);
  MEMORY[0x28223BE20](v50);
  v49 = (&v47 - v7);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AB0, &qword_24B45A1E8);
  MEMORY[0x28223BE20](v51);
  v48 = &v47 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AA8, &qword_24B45A1E0);
  MEMORY[0x28223BE20](v60);
  v52 = &v47 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B20, &qword_24B45A360);
  MEMORY[0x28223BE20](v57);
  v59 = &v47 - v10;
  v11 = sub_24B45860C();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B28, &qword_24B45A368);
  v55 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v15 = &v47 - v14;
  State = type metadata accessor for AwardProgressLoadState(0);
  MEMORY[0x28223BE20](State);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
  v19 = a2;
  v20 = a3;
  sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8, MEMORY[0x277D04410]);
  v21 = a1;
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v31 = sub_24B45836C();
    (*(*(v31 - 8) + 8))(v18, v31);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_6:
    sub_24B4586CC();
    v32 = sub_24B45891C();
    v34 = v33;
    *&v64 = v32;
    *(&v64 + 1) = v33;
    v36 = v35 & 1;
    LOBYTE(v65) = v35 & 1;
    *(&v65 + 1) = v37;
    sub_24B4585FC();
    v38 = MEMORY[0x277CE0BD8];
    v39 = MEMORY[0x277CE0BC8];
    sub_24B458ACC();
    (*(v53 + 8))(v13, v54);
    sub_24B3DF478(v32, v34, v36);

    v40 = v55;
    v41 = v58;
    (*(v55 + 16))(v59, v15, v58);
    swift_storeEnumTagMultiPayload();
    *&v64 = v38;
    *(&v64 + 1) = v39;
    swift_getOpaqueTypeConformance2();
    sub_24B3DEB60();
    sub_24B45871C();
    return (*(v40 + 8))(v15, v41);
  }

  v23 = v52;
  v24 = *v18;
  v25 = *(v18 + 1);
  if (v18[32])
  {
    v61 = v21;
    v62 = v19;
    v63 = v20 & 0xFF01;
    sub_24B3DD178(v24, v25 & 1, &v64);
    v26 = v66;
    v27 = v67;
    v28 = v68;
    v29 = v65;
    v30 = v49;
    *v49 = v64;
    v30[1] = v29;
    *(v30 + 4) = v26;
    *(v30 + 20) = v27;
    *(v30 + 42) = v28;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B08, &qword_24B45A240);
    sub_24B3DEBEC();
    sub_24B3DF164();
    sub_24B45871C();
  }

  else
  {
    v45 = v18 + 16;
    v43 = *(v18 + 2);
    v44 = *(v45 + 1);
    *&v64 = v21;
    *(&v64 + 1) = v19;
    LOWORD(v65) = v20 & 0xFF01;
    v46 = v48;
    sub_24B3DBFDC(v48, *&v44, *&v43);
    sub_24B3DF488(v46, v49, &qword_27EFE7AB0, &qword_24B45A1E8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B08, &qword_24B45A240);
    sub_24B3DEBEC();
    sub_24B3DF164();
    sub_24B45871C();
    sub_24B3DF468(v24, v25, v43, v44, 0);
    sub_24B3DF4F0(v46, &qword_27EFE7AB0, &qword_24B45A1E8);
  }

  sub_24B3DF488(v23, v59, &qword_27EFE7AA8, &qword_24B45A1E0);
  swift_storeEnumTagMultiPayload();
  *&v64 = MEMORY[0x277CE0BD8];
  *(&v64 + 1) = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_24B3DEB60();
  sub_24B45871C();
  return sub_24B3DF4F0(v23, &qword_27EFE7AA8, &qword_24B45A1E0);
}

uint64_t sub_24B3DBFDC@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v82 = a1;
  v6 = sub_24B458B0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AE8, &qword_24B45A220);
  v74 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AE0, &qword_24B45A218);
  MEMORY[0x28223BE20](v76);
  v14 = &v74 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B30, &qword_24B45A370);
  MEMORY[0x28223BE20](v79);
  v81 = &v74 - v15;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B38, &qword_24B45A378);
  MEMORY[0x28223BE20](v75);
  v17 = (&v74 - v16);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AB8, &qword_24B45A1F0);
  MEMORY[0x28223BE20](v80);
  v77 = &v74 - v18;
  v19 = sub_24B45839C();
  MEMORY[0x28223BE20](v19 - 8);
  v78 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B458E2C();
  MEMORY[0x28223BE20](v21 - 8);
  v22 = sub_24B458E0C();
  result = MEMORY[0x28223BE20](v22 - 8);
  v24 = *(v3 + 17);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *&v89 = a3 / a2;
      BYTE8(v89) = 0;
      *&v83 = 0x3FF0000000000000;
      sub_24B3DF550();
      sub_24B45853C();
      (*(v7 + 104))(v9, *MEMORY[0x277CE0EE0], v6);
      v37 = sub_24B458B5C();
      sub_24B458B2C();
      v38 = sub_24B458B3C();

      *&v89 = v37;
      *(&v89 + 1) = v38;
      *&v90 = 0x4024000000000000;
      sub_24B3DF11C(&qword_2810E28D8, &qword_27EFE7AE8, &qword_24B45A220, MEMORY[0x277CDD7F8]);
      sub_24B3DEF84();
      sub_24B45896C();

      v74[1](v12, v10);
      sub_24B458CBC();
      sub_24B45855C();
      v39 = &v14[*(v76 + 36)];
      v40 = v90;
      *v39 = v89;
      *(v39 + 1) = v40;
      *(v39 + 2) = v91;
      sub_24B3DF488(v14, v17, &qword_27EFE7AE0, &qword_24B45A218);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC0, &qword_24B45A1F8);
      sub_24B3DED04();
      sub_24B3DEE74();
      v41 = v77;
      sub_24B45871C();
      sub_24B3DF488(v41, v81, &qword_27EFE7AB8, &qword_24B45A1F0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AF0, &qword_24B45A228);
      sub_24B3DEC78();
      sub_24B3DEFD8();
      sub_24B45871C();
      sub_24B3DF4F0(v41, &qword_27EFE7AB8, &qword_24B45A1F0);
      return sub_24B3DF4F0(v14, &qword_27EFE7AE0, &qword_24B45A218);
    }

    v58 = ceil(a2 - a3);
    if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    if (v58 <= -9.22337204e18)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v58 >= 9.22337204e18)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v59 = v58;
    sub_24B458DFC();
    sub_24B458DEC();
    *&v89 = v59;
    sub_24B458DCC();
    sub_24B458DEC();
    sub_24B458E1C();
    type metadata accessor for AwardsLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v61 = [objc_opt_self() bundleForClass_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
    sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8, MEMORY[0x277D04410]);
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    v78 = sub_24B4588CC();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    KeyPath = swift_getKeyPath();
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    LOWORD(v83) = v89;
    v69 = sub_24B43C2AC();
    v70 = swift_getKeyPath();
    LOBYTE(v89) = v65 & 1;
    v71 = sub_24B45875C();
    *&v93 = v78;
    *(&v93 + 1) = v63;
    LOBYTE(v94) = v65 & 1;
    *(&v94 + 1) = v67;
    *&v95 = KeyPath;
    BYTE8(v95) = 0;
    *&v96 = v70;
    *(&v96 + 1) = v69;
    v97 = v71;
    v85 = v95;
    v86 = v96;
    v87 = v71;
    v84 = v94;
    v83 = v93;
    v98 = 1;
    v88 = 1;
    v53 = &qword_27EFE7AF8;
    v54 = &qword_24B45A230;
    sub_24B3DF488(&v93, &v89, &qword_27EFE7AF8, &qword_24B45A230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC0, &qword_24B45A1F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AF8, &qword_24B45A230);
    sub_24B3DED04();
    sub_24B3DF064();
    sub_24B45871C();
    v72 = *v92;
    v56 = v81;
    *(v81 + 32) = v91;
    *(v56 + 48) = v72;
    v57 = *&v92[13];
LABEL_17:
    *(v56 + 61) = v57;
    v73 = v90;
    *v56 = v89;
    *(v56 + 16) = v73;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AF0, &qword_24B45A228);
    sub_24B3DEC78();
    sub_24B3DEFD8();
    sub_24B45871C();
    return sub_24B3DF4F0(&v93, v53, v54);
  }

  if (*(v3 + 17))
  {
    sub_24B458DFC();
    sub_24B458DEC();
    *&v89 = a3;
    sub_24B458DCC();
    sub_24B458DEC();
    *&v89 = a2;
    sub_24B458DCC();
    sub_24B458DEC();
    sub_24B458E1C();
    type metadata accessor for AwardsLocalizationBundle();
    v42 = swift_getObjCClassFromMetadata();
    v43 = [objc_opt_self() bundleForClass_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
    sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8, MEMORY[0x277D04410]);
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    v44 = sub_24B4588CC();
    v78 = v45;
    v47 = v46;
    v49 = v48;
    v50 = swift_getKeyPath();
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    LOWORD(v83) = v89;
    v51 = sub_24B43C2AC();
    v52 = swift_getKeyPath();
    LOBYTE(v89) = v47 & 1;
    *&v93 = v44;
    *(&v93 + 1) = v78;
    LOBYTE(v94) = v47 & 1;
    *(&v94 + 1) = v49;
    *&v95 = v50;
    BYTE8(v95) = 0;
    *&v96 = v52;
    *(&v96 + 1) = v51;
    v83 = v93;
    v84 = v94;
    v85 = v95;
    v86 = v96;
    v98 = 0;
    v88 = 0;
    v53 = &qword_27EFE7AC0;
    v54 = &qword_24B45A1F8;
    sub_24B3DF488(&v93, &v89, &qword_27EFE7AC0, &qword_24B45A1F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC0, &qword_24B45A1F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AF8, &qword_24B45A230);
    sub_24B3DED04();
    sub_24B3DF064();
    sub_24B45871C();
    v55 = *v92;
    v56 = v81;
    *(v81 + 32) = v91;
    *(v56 + 48) = v55;
    v57 = *&v92[13];
    goto LABEL_17;
  }

  sub_24B458DFC();
  result = sub_24B458DEC();
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *&v89 = a3;
  sub_24B458DCC();
  result = sub_24B458DEC();
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a2 > -9.22337204e18)
  {
    if (a2 < 9.22337204e18)
    {
      *&v89 = a2;
      sub_24B458DCC();
      sub_24B458DEC();
      sub_24B458E1C();
      type metadata accessor for AwardsLocalizationBundle();
      v25 = swift_getObjCClassFromMetadata();
      v74 = [objc_opt_self() bundleForClass_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
      sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8, MEMORY[0x277D04410]);
      sub_24B45851C();
      swift_getKeyPath();
      sub_24B458D5C();

      v26 = sub_24B4588CC();
      v78 = v27;
      v29 = v28;
      v74 = v30;
      v31 = swift_getKeyPath();
      sub_24B45851C();
      swift_getKeyPath();
      sub_24B458D5C();

      LOWORD(v83) = v89;
      v32 = sub_24B43C2AC();
      v33 = swift_getKeyPath();
      LOBYTE(v83) = v29 & 1;
      *&v89 = v26;
      *(&v89 + 1) = v78;
      LOBYTE(v90) = v29 & 1;
      *(&v90 + 1) = v74;
      *&v91 = v31;
      BYTE8(v91) = 1;
      *v92 = v33;
      *&v92[8] = v32;
      v34 = v90;
      *v17 = v89;
      v17[1] = v34;
      v35 = *v92;
      v17[2] = v91;
      v17[3] = v35;
      swift_storeEnumTagMultiPayload();
      sub_24B3DF488(&v89, &v83, &qword_27EFE7AC0, &qword_24B45A1F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC0, &qword_24B45A1F8);
      sub_24B3DED04();
      sub_24B3DEE74();
      v36 = v77;
      sub_24B45871C();
      sub_24B3DF488(v36, v81, &qword_27EFE7AB8, &qword_24B45A1F0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AF0, &qword_24B45A228);
      sub_24B3DEC78();
      sub_24B3DEFD8();
      sub_24B45871C();
      sub_24B3DF4F0(&v89, &qword_27EFE7AC0, &qword_24B45A1F8);
      return sub_24B3DF4F0(v36, &qword_27EFE7AB8, &qword_24B45A1F0);
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

double sub_24B3DD178@<D0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v181 = a1;
  v184 = a3;
  v5 = sub_24B45839C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B458E2C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B458E0C();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24B458B0C();
  MEMORY[0x28223BE20](v14);
  v18 = *v3;
  v17 = *(v3 + 8);
  v19 = *(v3 + 16);
  v20 = *(v3 + 17);
  if (a2)
  {
    v21 = sub_24B458B4C();
  }

  else
  {
    (*(v16 + 104))(&v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
    v21 = sub_24B458B5C();
  }

  v188 = v21;
  if (v20 <= 1)
  {
    if (!v20)
    {
      sub_24B458B9C();
      v22 = sub_24B45893C();
      v24 = v23;
      v182 = v10;
      v183 = v7;
      v26 = v25;
      *&v193 = v21;
      v27 = sub_24B4588DC();
      LODWORD(v187) = v19;
      v189 = v27;
      v185 = v17;
      v186 = v18;
      v179 = v29;
      v180 = v28;
      v31 = v30;
      sub_24B3DF478(v22, v24, v26 & 1);

      v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
      v177 = sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8, MEMORY[0x277D04410]);
      sub_24B45851C();
      swift_getKeyPath();
      sub_24B458D5C();

      LOWORD(v190) = v193;
      sub_24B43C2AC();
      LOBYTE(v22) = v31;
      v32 = v189;
      v33 = v180;
      v34 = sub_24B45890C();
      v36 = v35;
      LOBYTE(v24) = v37;
      v175 = v38;

      sub_24B3DF478(v32, v33, v22 & 1);

      sub_24B4586CC();
      v179 = sub_24B4588EC();
      v189 = v39;
      LODWORD(v180) = v40;
      v176 = v41;

      sub_24B3DF478(v34, v36, v24 & 1);

      sub_24B458DFC();
      sub_24B458DEC();
      *&v193 = v181;
      sub_24B458DCC();
      sub_24B458DEC();
      sub_24B458E1C();
      type metadata accessor for AwardsLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v43 = [objc_opt_self() bundleForClass_];
      sub_24B45851C();
      swift_getKeyPath();
      sub_24B458D5C();

      v181 = sub_24B4588CC();
      v175 = v44;
      LODWORD(v182) = v45;
      v183 = v46;
      v47 = sub_24B4588FC();
      v49 = v48;
      v51 = v50;
      v52 = sub_24B4588FC();
      v172 = v53;
      v173 = v52;
      LODWORD(v171) = v54;
      v174 = v55;
      sub_24B3DF478(v47, v49, v51 & 1);

      *&v193 = v188;
      v56 = sub_24B4588DC();
      v58 = v57;
      LOBYTE(v32) = v59;
      sub_24B45851C();
      swift_getKeyPath();
      sub_24B458D5C();

      LOWORD(v190) = v193;
      sub_24B43C2AC();
      v60 = sub_24B45890C();
      v62 = v61;
      LOBYTE(v49) = v63;
      v65 = v64;

      sub_24B3DF478(v56, v58, v32 & 1);

      KeyPath = swift_getKeyPath();
      *&v190 = v60;
      *(&v190 + 1) = v62;
      *v191 = v49 & 1;
      *&v191[8] = v65;
      *&v191[16] = KeyPath;
      *&v191[24] = 1;
      v185 = v62;
      v186 = v60;
      v178 = *v191;
      sub_24B3DF5A4(v60, v62, v49 & 1);
      v187 = v65;

      v177 = KeyPath;

      sub_24B3DF5A4(v60, v62, v49 & 1);

      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC8, &qword_24B45A200);
      sub_24B3DEDBC();
      sub_24B45871C();
      v67 = v193;
      v68 = v194;
      v69 = v195;
      v70 = HIBYTE(v196);
      v71 = v196;
      if (HIBYTE(v196))
      {
        v72 = 256;
      }

      else
      {
        v72 = 0;
      }

      v190 = v193;
      *v191 = v194;
      *&v191[16] = v195;
      *&v191[24] = v72 | v196;
      v192 = 0;
      sub_24B3DF5B4(v193, *(&v193 + 1), v194, *(&v194 + 1), v195, v196, SHIBYTE(v196));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B10, &qword_24B45A248);
      sub_24B3DF1F0();
      sub_24B45871C();
      sub_24B3DF478(v173, v172, v171 & 1);

      sub_24B3DF478(v181, v175, v182 & 1);

      sub_24B3DF478(v179, v189, v180 & 1);

      sub_24B3DF604(v67, *(&v67 + 1), v68, *(&v68 + 1), v69, v71, v70);
      v74 = v185;
      v73 = v186;
      v75 = v178;
      sub_24B3DF478(v186, v185, v178);

      sub_24B3DF478(v73, v74, v75);
      goto LABEL_16;
    }

LABEL_15:
    sub_24B458B9C();
    v82 = sub_24B45893C();
    v84 = v83;
    v182 = v10;
    v183 = v7;
    v86 = v85;
    *&v193 = v21;
    v87 = sub_24B4588DC();
    v172 = v13;
    v175 = v88;
    v176 = v87;
    v90 = v89;
    v174 = v91;
    sub_24B3DF478(v82, v84, v86 & 1);

    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
    v189 = sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8, MEMORY[0x277D04410]);
    v186 = v18;
    LODWORD(v187) = v19;
    v171 = v92;
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    LOWORD(v190) = v193;
    sub_24B43C2AC();
    v94 = v175;
    v93 = v176;
    v95 = sub_24B45890C();
    v178 = v96;
    v179 = v95;
    LODWORD(v177) = v97;
    v180 = v98;

    sub_24B3DF478(v93, v94, v90 & 1);

    sub_24B458DBC();
    type metadata accessor for AwardsLocalizationBundle();
    v99 = swift_getObjCClassFromMetadata();
    v170 = v99;
    v169 = objc_opt_self();
    v100 = [v169 bundleForClass_];
    v185 = v17;
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    v101 = sub_24B4588CC();
    v103 = v102;
    v105 = v104;
    *&v193 = v188;
    v106 = sub_24B4588DC();
    v108 = v107;
    LOBYTE(v92) = v109;
    sub_24B3DF478(v101, v103, v105 & 1);

    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    LOWORD(v190) = v193;
    sub_24B43C2AC();
    v110 = sub_24B45890C();
    v174 = v111;
    v175 = v110;
    LODWORD(v173) = v112;
    v176 = v113;

    sub_24B3DF478(v106, v108, v92 & 1);

    sub_24B458DFC();
    sub_24B458DEC();
    *&v193 = v181;
    sub_24B458DCC();
    sub_24B458DEC();
    sub_24B458E1C();
    v114 = [v169 bundleForClass_];
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    v115 = sub_24B4588CC();
    v117 = v116;
    v119 = v118;
    LODWORD(v193) = sub_24B45875C();
    v120 = sub_24B4588DC();
    v122 = v121;
    LOBYTE(v108) = v123;
    v170 = v124;
    sub_24B3DF478(v115, v117, v119 & 1);

    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    LOWORD(v190) = v193;
    sub_24B43C2AC();
    v125 = sub_24B45890C();
    v181 = v126;
    v182 = v125;
    LODWORD(v172) = v127;
    v183 = v128;

    sub_24B3DF478(v120, v122, v108 & 1);

    LODWORD(v193) = sub_24B45875C();
    v129 = sub_24B4588DC();
    v131 = v130;
    LOBYTE(v92) = v132;
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    LOWORD(v190) = v193;
    sub_24B43C2AC();
    v189 = sub_24B45890C();
    v186 = v134;
    v187 = v133;
    LODWORD(v185) = v135;

    sub_24B3DF478(v129, v131, v92 & 1);

    v136 = sub_24B4588FC();
    v138 = v137;
    LOBYTE(v129) = v139;
    v140 = sub_24B4588FC();
    v142 = v141;
    LOBYTE(v117) = v143;
    sub_24B3DF478(v136, v138, v129 & 1);

    v144 = sub_24B4588FC();
    v146 = v145;
    LOBYTE(v129) = v147;
    sub_24B3DF478(v140, v142, v117 & 1);

    v148 = sub_24B4588FC();
    v150 = v149;
    LOBYTE(v103) = v151;
    sub_24B3DF478(v144, v146, v129 & 1);

    v152 = sub_24B4588FC();
    v154 = v153;
    LOBYTE(v131) = v155;
    sub_24B3DF478(v148, v150, v103 & 1);

    v156 = sub_24B4588FC();
    v158 = v157;
    LOBYTE(v150) = v159;
    v161 = v160;
    sub_24B3DF478(v152, v154, v131 & 1);

    v162 = swift_getKeyPath();
    *&v190 = v156;
    *(&v190 + 1) = v158;
    *v191 = v150 & 1;
    *&v191[8] = v161;
    *&v191[16] = v162;
    *&v191[24] = 0;
    v192 = 1;
    sub_24B3DF5A4(v156, v158, v150 & 1);

    sub_24B3DF5A4(v156, v158, v150 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B10, &qword_24B45A248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC8, &qword_24B45A200);
    sub_24B3DF1F0();
    sub_24B3DEDBC();
    sub_24B45871C();

    sub_24B3DF478(v189, v187, v185 & 1);

    sub_24B3DF478(v182, v181, v172 & 1);

    sub_24B3DF478(v175, v174, v173 & 1);

    sub_24B3DF478(v179, v178, v177 & 1);

    sub_24B3DF478(v156, v158, v150 & 1);

    sub_24B3DF478(v156, v158, v150 & 1);
LABEL_16:

    goto LABEL_17;
  }

  if (v20 != 2)
  {
    goto LABEL_15;
  }

  v190 = 0u;
  memset(v191, 0, 25);
  v191[25] = 1;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC8, &qword_24B45A200);
  sub_24B3DEDBC();
  sub_24B45871C();
  v76 = v193;
  v77 = v194;
  v78 = v195;
  v79 = HIBYTE(v196);
  v80 = v196;
  if (HIBYTE(v196))
  {
    v81 = 256;
  }

  else
  {
    v81 = 0;
  }

  v190 = v193;
  *v191 = v194;
  *&v191[16] = v195;
  *&v191[24] = v81 | v196;
  v192 = 0;
  sub_24B3DF5B4(v193, *(&v193 + 1), v194, *(&v194 + 1), v195, v196, SHIBYTE(v196));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B10, &qword_24B45A248);
  sub_24B3DF1F0();
  sub_24B45871C();

  sub_24B3DF604(v76, *(&v76 + 1), v77, *(&v77 + 1), v78, v80, v79);
LABEL_17:
  result = *&v193;
  v164 = v194;
  v165 = v195;
  v166 = v196;
  v167 = v197;
  v168 = v184;
  *v184 = v193;
  v168[1] = v164;
  *(v168 + 4) = v165;
  *(v168 + 20) = v166;
  *(v168 + 42) = v167;
  return result;
}

uint64_t sub_24B3DE4F0(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
  sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8, MEMORY[0x277D04410]);
  sub_24B45851C();
  sub_24B458D6C();
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

uint64_t sub_24B3DE628(uint64_t a1, uint64_t a2, char a3)
{
  State = type metadata accessor for AwardProgressLoadState(0);
  MEMORY[0x28223BE20](State);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A90, &qword_24B45A1A8);
  sub_24B3DF11C(&qword_2810E27B8, &qword_27EFE7A90, &qword_24B45A1A8, MEMORY[0x277D04410]);
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_24B3DF2D4(v7);
  if (EnumCaseMultiPayload == 2)
  {
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v10 = sub_24B45847C();
    __swift_project_value_buffer(v10, qword_2810E3618);
    sub_24B3DE5D8(a1, a2);
    v11 = sub_24B45845C();
    v12 = sub_24B458F4C();
    sub_24B3DE5B8(a1, a2);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v13 = 136315138;
      sub_24B45851C();
      swift_getKeyPath();
      sub_24B458D5C();

      v14 = sub_24B3F17BC(v18, *(&v18 + 1), &v17);

      *(v13 + 4) = v14;
      _os_log_impl(&dword_24B3CE000, v11, v12, "[AwardProgressView] Load state was reset to idle for  %s", v13, 0xCu);
      v15 = v16;
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x24C2408A0](v15, -1, -1);
      MEMORY[0x24C2408A0](v13, -1, -1);
    }

    sub_24B45851C();
    v18 = 0u;
    v19 = 0u;
    v20 = 0x80;
    sub_24B458D6C();
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  sub_24B3DE5B8(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

unint64_t sub_24B3DE994()
{
  result = qword_2810E28B0;
  if (!qword_2810E28B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7A88, &qword_24B45A1A0);
    sub_24B3DEA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28B0);
  }

  return result;
}

unint64_t sub_24B3DEA20()
{
  result = qword_2810E27E8;
  if (!qword_2810E27E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7A98, &qword_24B45A1D0);
    sub_24B3DEAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E27E8);
  }

  return result;
}

unint64_t sub_24B3DEAA4()
{
  result = qword_2810E2838;
  if (!qword_2810E2838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AA0, &qword_24B45A1D8);
    swift_getOpaqueTypeConformance2();
    sub_24B3DEB60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2838);
  }

  return result;
}

unint64_t sub_24B3DEB60()
{
  result = qword_2810E2818;
  if (!qword_2810E2818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AA8, &qword_24B45A1E0);
    sub_24B3DEBEC();
    sub_24B3DF164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2818);
  }

  return result;
}

unint64_t sub_24B3DEBEC()
{
  result = qword_2810E2828;
  if (!qword_2810E2828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AB0, &qword_24B45A1E8);
    sub_24B3DEC78();
    sub_24B3DEFD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2828);
  }

  return result;
}

unint64_t sub_24B3DEC78()
{
  result = qword_2810E2858;
  if (!qword_2810E2858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AB8, &qword_24B45A1F0);
    sub_24B3DED04();
    sub_24B3DEE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2858);
  }

  return result;
}

unint64_t sub_24B3DED04()
{
  result = qword_2810E2890;
  if (!qword_2810E2890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AC0, &qword_24B45A1F8);
    sub_24B3DEDBC();
    sub_24B3DF11C(&qword_2810E27F8, &qword_27EFE7AD8, &qword_24B45A210, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2890);
  }

  return result;
}

unint64_t sub_24B3DEDBC()
{
  result = qword_2810E28C8;
  if (!qword_2810E28C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AC8, &qword_24B45A200);
    sub_24B3DF11C(&qword_2810E2800, &qword_27EFE7AD0, &qword_24B45A208, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28C8);
  }

  return result;
}

unint64_t sub_24B3DEE74()
{
  result = qword_2810E28B8;
  if (!qword_2810E28B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AE0, &qword_24B45A218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AE8, &qword_24B45A220);
    sub_24B3DF11C(&qword_2810E28D8, &qword_27EFE7AE8, &qword_24B45A220, MEMORY[0x277CDD7F8]);
    sub_24B3DEF84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28B8);
  }

  return result;
}

unint64_t sub_24B3DEF84()
{
  result = qword_2810E29F8[0];
  if (!qword_2810E29F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E29F8);
  }

  return result;
}

unint64_t sub_24B3DEFD8()
{
  result = qword_2810E2850;
  if (!qword_2810E2850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AF0, &qword_24B45A228);
    sub_24B3DED04();
    sub_24B3DF064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2850);
  }

  return result;
}

unint64_t sub_24B3DF064()
{
  result = qword_2810E2880;
  if (!qword_2810E2880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AF8, &qword_24B45A230);
    sub_24B3DED04();
    sub_24B3DF11C(&qword_2810E2808, &qword_27EFE7B00, &qword_24B45A238, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2880);
  }

  return result;
}

uint64_t sub_24B3DF11C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_24B3DF164()
{
  result = qword_2810E2830;
  if (!qword_2810E2830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7B08, &qword_24B45A240);
    sub_24B3DF1F0();
    sub_24B3DEDBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2830);
  }

  return result;
}

unint64_t sub_24B3DF1F0()
{
  result = qword_2810E2868;
  if (!qword_2810E2868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7B10, &qword_24B45A248);
    sub_24B3DEDBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2868);
  }

  return result;
}

unint64_t sub_24B3DF27C()
{
  result = qword_2810E2D20;
  if (!qword_2810E2D20)
  {
    type metadata accessor for AwardProgressLoadState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2D20);
  }

  return result;
}

uint64_t sub_24B3DF2D4(uint64_t a1)
{
  State = type metadata accessor for AwardProgressLoadState(0);
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B3DF394(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24B3DF3DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
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

uint64_t sub_24B3DF468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24B3DF478(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24B3DF488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B3DF4F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24B3DF550()
{
  result = qword_27EFE7B40;
  if (!qword_27EFE7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7B40);
  }

  return result;
}

uint64_t sub_24B3DF5A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24B3DF5B4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_24B3DF5A4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24B3DF604(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_24B3DF478(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24B3DF654()
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

uint64_t sub_24B3DF688()
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

BOOL sub_24B3DF6BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_24B3DF6E8()
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

uint64_t sub_24B3DF71C()
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

uint64_t sub_24B3DF750()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
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

unint64_t sub_24B3DF784(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x6E61436863746566;
    v5 = 0xD000000000000016;
    if (a1 != 3)
    {
      v5 = 0xD00000000000002ALL;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000014;
    }

    if (!a1)
    {
      v4 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746F4E7473616F74;
    if (a1 != 9)
    {
      v1 = 0x6572507473616F74;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0xD000000000000010;
    if (a1 == 6)
    {
      v2 = 0xD000000000000016;
    }

    if (a1 == 5)
    {
      v2 = 0xD000000000000012;
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

uint64_t sub_24B3DF914@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B3E3470(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B3DF948(uint64_t a1)
{
  v2 = sub_24B3E0D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DF984(uint64_t a1)
{
  v2 = sub_24B3E0D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DF9C0(uint64_t a1)
{
  v2 = sub_24B3E120C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DF9FC(uint64_t a1)
{
  v2 = sub_24B3E120C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFA38(uint64_t a1)
{
  v2 = sub_24B3E11B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFA74(uint64_t a1)
{
  v2 = sub_24B3E11B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFAB0(uint64_t a1)
{
  v2 = sub_24B3E1164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFAEC(uint64_t a1)
{
  v2 = sub_24B3E1164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFB34(uint64_t a1)
{
  v2 = sub_24B3E10BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFB70(uint64_t a1)
{
  v2 = sub_24B3E10BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFBAC(uint64_t a1)
{
  v2 = sub_24B3E1014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFBE8(uint64_t a1)
{
  v2 = sub_24B3E1014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFC24(uint64_t a1)
{
  v2 = sub_24B3E0F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFC60(uint64_t a1)
{
  v2 = sub_24B3E0F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFC9C(uint64_t a1)
{
  v2 = sub_24B3E0F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFCD8(uint64_t a1)
{
  v2 = sub_24B3E0F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFD14(uint64_t a1)
{
  v2 = sub_24B3E0E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFD50(uint64_t a1)
{
  v2 = sub_24B3E0E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B4591AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B3DFE0C(uint64_t a1)
{
  v2 = sub_24B3E0E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFE48(uint64_t a1)
{
  v2 = sub_24B3E0E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFE84(uint64_t a1)
{
  v2 = sub_24B3E0DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFEC0(uint64_t a1)
{
  v2 = sub_24B3E0DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3DFEFC(uint64_t a1)
{
  v2 = sub_24B3E0D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3DFF38(uint64_t a1)
{
  v2 = sub_24B3E0D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastPresentationAction.encode(to:)(void *a1)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B48, &qword_24B45A420);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v58 - v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B50, &qword_24B45A428);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B58, &qword_24B45A430);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B60, &qword_24B45A438);
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x28223BE20](v6);
  v81 = &v58 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B68, &qword_24B45A440);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v58 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B70, &qword_24B45A448);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B78, &qword_24B45A450);
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B80, &qword_24B45A458);
  v84 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B88, &qword_24B45A460);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v58 - v16;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B90, &qword_24B45A468);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v58 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B98, &qword_24B45A470);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v19 = &v58 - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BA0, &qword_24B45A478);
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v20 = v1[1];
  v93 = *v1;
  v22 = v1[2];
  v21 = v1[3];
  v90 = v20;
  v91 = v22;
  v89 = v21;
  v23 = v1[4];
  v87 = v1[5];
  v88 = v23;
  v24 = *(v1 + 48);
  v25 = a1[3];
  v26 = a1;
  v28 = &v58 - v27;
  __swift_project_boxed_opaque_existential_1(v26, v25);
  sub_24B3E0D20();
  v102 = v28;
  sub_24B45928C();
  v29 = v24 >> 5;
  if (v24 >> 5 <= 1)
  {
    v36 = v84;
    v35 = v85;
    v37 = v86;
    if (v29)
    {
      LOBYTE(v95) = 4;
      sub_24B3E1014();
      v31 = v94;
      v48 = v102;
      sub_24B45910C();
      v95 = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BE0, &qword_24B45A480);
      sub_24B3E2530(&qword_2810E2798, sub_24B3E1068, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_24B45918C();
      (*(v35 + 8))(v12, v37);
      v33 = *(v92 + 8);
      v34 = v48;
    }

    else
    {
      v38 = v13;
      LOBYTE(v95) = 3;
      sub_24B3E10BC();
      v39 = v15;
      v31 = v94;
      v40 = v102;
      sub_24B45910C();
      v95 = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BE8, &qword_24B45A488);
      sub_24B3E2608(&qword_2810E2778, sub_24B3E1110, MEMORY[0x277D83B50]);
      sub_24B45918C();
      (*(v36 + 8))(v39, v38);
      v33 = *(v92 + 8);
      v34 = v40;
    }

    return v33(v34, v31);
  }

  if (v29 == 2)
  {
    LOBYTE(v95) = 5;
    sub_24B3E0F6C();
    v41 = v78;
    v42 = v94;
    v43 = v102;
    sub_24B45910C();
    v95 = v93;
    v96 = v90;
    v97 = v91;
    v98 = v89;
    v99 = v88;
    v100 = v87;
    v101 = v24 & 0x1F;
    sub_24B3E0FC0();
    v44 = v80;
    sub_24B45918C();
    (*(v79 + 8))(v41, v44);
    return (*(v92 + 8))(v43, v42);
  }

  if (v29 == 3)
  {
    LOBYTE(v95) = 7;
    sub_24B3E0E70();
    v30 = v81;
    v31 = v94;
    sub_24B45910C();
    v95 = v93;
    v96 = v90;
    LOBYTE(v97) = v91;
    sub_24B3E0EC4();
    v32 = v83;
    sub_24B45918C();
    (*(v82 + 8))(v30, v32);
    v33 = *(v92 + 8);
    v34 = v102;
    return v33(v34, v31);
  }

  if (v91 | v90 | v93 | v89 | v88 | v87 || v24 != 128)
  {
    v49 = v91 | v90 | v89 | v88 | v87;
    if (v24 == 128 && v93 == 1 && !v49)
    {
      LOBYTE(v95) = 1;
      sub_24B3E11B8();
      v50 = v73;
      v51 = v94;
      v52 = v102;
      sub_24B45910C();
      (*(v74 + 8))(v50, v75);
    }

    else if (v24 == 128 && v93 == 2 && !v49)
    {
      LOBYTE(v95) = 2;
      sub_24B3E1164();
      v53 = v70;
      v51 = v94;
      v52 = v102;
      sub_24B45910C();
      (*(v71 + 8))(v53, v72);
    }

    else if (v24 == 128 && v93 == 3 && !v49)
    {
      LOBYTE(v95) = 6;
      sub_24B3E0F18();
      v54 = v67;
      v51 = v94;
      v52 = v102;
      sub_24B45910C();
      (*(v68 + 8))(v54, v69);
    }

    else if (v24 == 128 && v93 == 4 && !v49)
    {
      LOBYTE(v95) = 8;
      sub_24B3E0E1C();
      v55 = v64;
      v51 = v94;
      v52 = v102;
      sub_24B45910C();
      (*(v65 + 8))(v55, v66);
    }

    else if (v24 == 128 && v93 == 5 && !v49)
    {
      LOBYTE(v95) = 9;
      sub_24B3E0DC8();
      v56 = v58;
      v51 = v94;
      v52 = v102;
      sub_24B45910C();
      (*(v59 + 8))(v56, v60);
    }

    else
    {
      LOBYTE(v95) = 10;
      sub_24B3E0D74();
      v57 = v61;
      v51 = v94;
      v52 = v102;
      sub_24B45910C();
      (*(v62 + 8))(v57, v63);
    }

    return (*(v92 + 8))(v52, v51);
  }

  else
  {
    LOBYTE(v95) = 0;
    sub_24B3E120C();
    v46 = v94;
    v47 = v102;
    sub_24B45910C();
    (*(v76 + 8))(v19, v77);
    return (*(v92 + 8))(v47, v46);
  }
}

unint64_t sub_24B3E0D20()
{
  result = qword_2810E2B08;
  if (!qword_2810E2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B08);
  }

  return result;
}

unint64_t sub_24B3E0D74()
{
  result = qword_27EFE7BA8;
  if (!qword_27EFE7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BA8);
  }

  return result;
}

unint64_t sub_24B3E0DC8()
{
  result = qword_2810E2B70;
  if (!qword_2810E2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B70);
  }

  return result;
}

unint64_t sub_24B3E0E1C()
{
  result = qword_27EFE7BB0;
  if (!qword_27EFE7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BB0);
  }

  return result;
}

unint64_t sub_24B3E0E70()
{
  result = qword_27EFE7BB8;
  if (!qword_27EFE7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BB8);
  }

  return result;
}

unint64_t sub_24B3E0EC4()
{
  result = qword_27EFE7BC0;
  if (!qword_27EFE7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BC0);
  }

  return result;
}

unint64_t sub_24B3E0F18()
{
  result = qword_27EFE7BC8;
  if (!qword_27EFE7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BC8);
  }

  return result;
}

unint64_t sub_24B3E0F6C()
{
  result = qword_27EFE7BD0;
  if (!qword_27EFE7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BD0);
  }

  return result;
}

unint64_t sub_24B3E0FC0()
{
  result = qword_27EFE7BD8;
  if (!qword_27EFE7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7BD8);
  }

  return result;
}

unint64_t sub_24B3E1014()
{
  result = qword_2810E2AC0;
  if (!qword_2810E2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AC0);
  }

  return result;
}

unint64_t sub_24B3E1068()
{
  result = qword_2810E2BA8;
  if (!qword_2810E2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2BA8);
  }

  return result;
}

unint64_t sub_24B3E10BC()
{
  result = qword_2810E2AD8;
  if (!qword_2810E2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AD8);
  }

  return result;
}

unint64_t sub_24B3E1110()
{
  result = qword_2810E35C0;
  if (!qword_2810E35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35C0);
  }

  return result;
}

unint64_t sub_24B3E1164()
{
  result = qword_2810E2B88;
  if (!qword_2810E2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B88);
  }

  return result;
}

unint64_t sub_24B3E11B8()
{
  result = qword_2810E2AF0;
  if (!qword_2810E2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AF0);
  }

  return result;
}

unint64_t sub_24B3E120C()
{
  result = qword_2810E2BA0;
  if (!qword_2810E2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2BA0);
  }

  return result;
}

uint64_t AwardToastPresentationAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BF0, &qword_24B45A490);
  v4 = *(v3 - 8);
  v93 = v3;
  v94 = v4;
  MEMORY[0x28223BE20](v3);
  v99 = &v70 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BF8, &qword_24B45A498);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v103 = &v70 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C00, &qword_24B45A4A0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v102 = &v70 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C08, &qword_24B45A4A8);
  v77 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v98 = &v70 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C10, &qword_24B45A4B0);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v97 = &v70 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C18, &qword_24B45A4B8);
  v76 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v101 = &v70 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C20, &qword_24B45A4C0);
  v75 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v96 = &v70 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C28, &qword_24B45A4C8);
  v74 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v95 = &v70 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C30, &qword_24B45A4D0);
  v83 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v100 = &v70 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C38, &qword_24B45A4D8);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v15 = &v70 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C40, &qword_24B45A4E0);
  v78 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7C48, &qword_24B45A4E8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - v21;
  v23 = a1[3];
  v105 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24B3E0D20();
  v24 = v112;
  sub_24B45927C();
  v112 = v24;
  if (v24)
  {
    goto LABEL_13;
  }

  v71 = v18;
  v70 = v16;
  v25 = v100;
  v26 = v101;
  v28 = v102;
  v27 = v103;
  v72 = v20;
  v29 = v104;
  v73 = v22;
  v30 = sub_24B4590FC();
  if (*(v30 + 16) != 1 || (v31 = *(v30 + 32), v31 == 11))
  {
    v43 = sub_24B458FFC();
    v44 = swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
    *v46 = &type metadata for AwardToastPresentationAction;
    v47 = v73;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v43 - 8) + 104))(v46, *MEMORY[0x277D84160], v43);
    v112 = v44;
    swift_willThrow();
  }

  else
  {
    if (*(v30 + 32) > 4u)
    {
      v32 = v73;
      if (*(v30 + 32) <= 7u)
      {
        v33 = v29;
        v34 = v72;
        if (v31 == 5)
        {
          LOBYTE(v106) = 5;
          sub_24B3E0F6C();
          v59 = v112;
          sub_24B45905C();
          v112 = v59;
          if (!v59)
          {
            sub_24B3E24DC();
            v60 = v86;
            v61 = v112;
            sub_24B4590EC();
            v112 = v61;
            v62 = &v108;
            if (!v61)
            {
              (*(v76 + 8))(v26, v60);
              (*(v34 + 8))(v32, v19);
              swift_unknownObjectRelease();
              v42 = v106;
              v37 = v107;
              v38 = v108;
              v40 = v109;
              v39 = v110;
              v41 = v111 | 0x40;
              goto LABEL_54;
            }

            goto LABEL_44;
          }
        }

        else
        {
          v35 = v112;
          if (v31 == 6)
          {
            LOBYTE(v106) = 6;
            sub_24B3E0F18();
            v36 = v97;
            sub_24B45905C();
            v112 = v35;
            if (!v35)
            {
              (*(v85 + 8))(v36, v87);
              (*(v34 + 8))(v32, v19);
              swift_unknownObjectRelease();
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0uLL;
              v41 = 0x80;
              v42 = 3;
LABEL_54:
              v48 = v105;
              v50 = v33;
              goto LABEL_55;
            }

            goto LABEL_47;
          }

          LOBYTE(v106) = 7;
          sub_24B3E0E70();
          v26 = v98;
          sub_24B45905C();
          v112 = v35;
          if (!v35)
          {
            sub_24B3E2488();
            v60 = v90;
            v67 = v112;
            sub_24B4590EC();
            v112 = v67;
            v62 = &v109;
            if (!v67)
            {
              (*(v77 + 8))(v26, v60);
              (*(v34 + 8))(v32, v19);
              swift_unknownObjectRelease();
              v39 = 0;
              v42 = v106;
              v37 = v107;
              v40 = 0uLL;
              v41 = 96;
              v38 = v108;
              goto LABEL_54;
            }

LABEL_44:
            (*(*(v62 - 32) + 8))(v26, v60);
          }
        }

LABEL_47:
        (*(v34 + 8))(v32, v19);
        goto LABEL_12;
      }

      v50 = v29;
      v34 = v72;
      if (v31 == 8)
      {
        LOBYTE(v106) = 8;
        sub_24B3E0E1C();
        v63 = v112;
        sub_24B45905C();
        v112 = v63;
        if (v63)
        {
          goto LABEL_47;
        }

        (*(v88 + 8))(v28, v89);
        (*(v34 + 8))(v32, v19);
        swift_unknownObjectRelease();
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0uLL;
        v41 = 0x80;
        v42 = 4;
      }

      else if (v31 == 9)
      {
        LOBYTE(v106) = 9;
        sub_24B3E0DC8();
        v56 = v112;
        sub_24B45905C();
        v112 = v56;
        if (v56)
        {
          goto LABEL_47;
        }

        (*(v91 + 8))(v27, v92);
        (*(v34 + 8))(v32, v19);
        swift_unknownObjectRelease();
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0uLL;
        v41 = 0x80;
        v42 = 5;
      }

      else
      {
        LOBYTE(v106) = 10;
        sub_24B3E0D74();
        v68 = v99;
        v69 = v112;
        sub_24B45905C();
        v112 = v69;
        if (v69)
        {
          goto LABEL_47;
        }

        (*(v94 + 8))(v68, v93);
        (*(v34 + 8))(v32, v19);
        swift_unknownObjectRelease();
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0uLL;
        v41 = 0x80;
        v42 = 6;
      }

      goto LABEL_52;
    }

    if (*(v30 + 32) <= 1u)
    {
      v57 = v112;
      if (*(v30 + 32))
      {
        LOBYTE(v106) = 1;
        sub_24B3E11B8();
        v47 = v73;
        sub_24B45905C();
        v112 = v57;
        if (v57)
        {
          goto LABEL_11;
        }

        (*(v80 + 8))(v15, v81);
        (*(v72 + 8))(v47, v19);
        swift_unknownObjectRelease();
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0uLL;
        v41 = 0x80;
        v42 = 1;
      }

      else
      {
        LOBYTE(v106) = 0;
        sub_24B3E120C();
        v58 = v71;
        v47 = v73;
        sub_24B45905C();
        v112 = v57;
        if (v57)
        {
          goto LABEL_11;
        }

        (*(v78 + 8))(v58, v70);
        (*(v72 + 8))(v47, v19);
        swift_unknownObjectRelease();
        v42 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0uLL;
        v41 = 0x80;
      }

      v48 = v105;
      v50 = v29;
LABEL_55:
      *v50 = v42;
      *(v50 + 8) = v37;
      *(v50 + 16) = v38;
      *(v50 + 24) = v40;
      *(v50 + 40) = v39;
      *(v50 + 48) = v41;
      return __swift_destroy_boxed_opaque_existential_1(v48);
    }

    v50 = v29;
    v51 = v112;
    if (v31 != 2)
    {
      v103 = v30;
      v52 = v73;
      if (v31 == 3)
      {
        LOBYTE(v106) = 3;
        sub_24B3E10BC();
        v53 = v95;
        sub_24B45905C();
        v112 = v51;
        if (v51)
        {
LABEL_38:
          (*(v72 + 8))(v52, v19);
          goto LABEL_12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BE8, &qword_24B45A488);
        sub_24B3E2608(&qword_27EFE7C70, sub_24B3E2680, MEMORY[0x277D83B70]);
        v54 = v82;
        v55 = v112;
        sub_24B4590EC();
        v112 = v55;
        if (v55)
        {
          (*(v74 + 8))(v53, v54);
          goto LABEL_38;
        }

        (*(v74 + 8))(v53, v54);
        (*(v72 + 8))(v52, v19);
        swift_unknownObjectRelease();
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v41 = 0;
        v42 = v106;
        v40 = 0uLL;
      }

      else
      {
        LOBYTE(v106) = 4;
        sub_24B3E1014();
        v64 = v96;
        sub_24B45905C();
        v112 = v51;
        if (v51)
        {
          goto LABEL_38;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7BE0, &qword_24B45A480);
        sub_24B3E2530(&qword_27EFE7C60, sub_24B3E25B4, MEMORY[0x277D83808], MEMORY[0x277D83528]);
        v65 = v84;
        v66 = v112;
        sub_24B4590EC();
        v112 = v66;
        if (v66)
        {
          (*(v75 + 8))(v64, v65);
          goto LABEL_38;
        }

        (*(v75 + 8))(v64, v65);
        (*(v72 + 8))(v52, v19);
        swift_unknownObjectRelease();
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v42 = v106;
        v40 = 0uLL;
        v41 = 32;
      }

LABEL_52:
      v48 = v105;
      goto LABEL_55;
    }

    LOBYTE(v106) = 2;
    sub_24B3E1164();
    v47 = v73;
    sub_24B45905C();
    v112 = v51;
    if (!v51)
    {
      (*(v83 + 8))(v25, v79);
      (*(v72 + 8))(v47, v19);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0uLL;
      v41 = 0x80;
      v42 = 2;
      goto LABEL_52;
    }
  }

LABEL_11:
  (*(v72 + 8))(v47, v19);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v48 = v105;
  return __swift_destroy_boxed_opaque_existential_1(v48);
}

unint64_t sub_24B3E2488()
{
  result = qword_27EFE7C50;
  if (!qword_27EFE7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C50);
  }

  return result;
}

unint64_t sub_24B3E24DC()
{
  result = qword_27EFE7C58;
  if (!qword_27EFE7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C58);
  }

  return result;
}

uint64_t sub_24B3E2530(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7BE0, &qword_24B45A480);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B3E25B4()
{
  result = qword_27EFE7C68;
  if (!qword_27EFE7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C68);
  }

  return result;
}

uint64_t sub_24B3E2608(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7BE8, &qword_24B45A488);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B3E2680()
{
  result = qword_27EFE7C78;
  if (!qword_27EFE7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessAwards14AwardToastKindO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_13FitnessAwards28AwardToastPresentationActionO(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24B3E275C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 49))
  {
    return (*a1 + 60);
  }

  v3 = ((*(a1 + 48) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 48) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24B3E27B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 60;
    if (a3 >= 0x3C)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_24B3E282C(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 48) = *(result + 48) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwardToastPresentationAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AwardToastPresentationAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B3E2A7C()
{
  result = qword_27EFE7C80;
  if (!qword_27EFE7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C80);
  }

  return result;
}

unint64_t sub_24B3E2AD4()
{
  result = qword_27EFE7C88;
  if (!qword_27EFE7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C88);
  }

  return result;
}

unint64_t sub_24B3E2B2C()
{
  result = qword_27EFE7C90;
  if (!qword_27EFE7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C90);
  }

  return result;
}

unint64_t sub_24B3E2B84()
{
  result = qword_27EFE7C98;
  if (!qword_27EFE7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7C98);
  }

  return result;
}

unint64_t sub_24B3E2BDC()
{
  result = qword_27EFE7CA0;
  if (!qword_27EFE7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CA0);
  }

  return result;
}

unint64_t sub_24B3E2C34()
{
  result = qword_2810E2B90;
  if (!qword_2810E2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B90);
  }

  return result;
}

unint64_t sub_24B3E2C8C()
{
  result = qword_2810E2B98;
  if (!qword_2810E2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B98);
  }

  return result;
}

unint64_t sub_24B3E2CE4()
{
  result = qword_2810E2AE0;
  if (!qword_2810E2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AE0);
  }

  return result;
}

unint64_t sub_24B3E2D3C()
{
  result = qword_2810E2AE8;
  if (!qword_2810E2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AE8);
  }

  return result;
}

unint64_t sub_24B3E2D94()
{
  result = qword_2810E2B78;
  if (!qword_2810E2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B78);
  }

  return result;
}

unint64_t sub_24B3E2DEC()
{
  result = qword_2810E2B80;
  if (!qword_2810E2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B80);
  }

  return result;
}

unint64_t sub_24B3E2E44()
{
  result = qword_2810E2AC8;
  if (!qword_2810E2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AC8);
  }

  return result;
}

unint64_t sub_24B3E2E9C()
{
  result = qword_2810E2AD0;
  if (!qword_2810E2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AD0);
  }

  return result;
}

unint64_t sub_24B3E2EF4()
{
  result = qword_2810E2AB0;
  if (!qword_2810E2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AB0);
  }

  return result;
}

unint64_t sub_24B3E2F4C()
{
  result = qword_2810E2AB8;
  if (!qword_2810E2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AB8);
  }

  return result;
}

unint64_t sub_24B3E2FA4()
{
  result = qword_2810E2B30;
  if (!qword_2810E2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B30);
  }

  return result;
}

unint64_t sub_24B3E2FFC()
{
  result = qword_2810E2B38;
  if (!qword_2810E2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B38);
  }

  return result;
}

unint64_t sub_24B3E3054()
{
  result = qword_2810E2B10;
  if (!qword_2810E2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B10);
  }

  return result;
}

unint64_t sub_24B3E30AC()
{
  result = qword_2810E2B18;
  if (!qword_2810E2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B18);
  }

  return result;
}

unint64_t sub_24B3E3104()
{
  result = qword_2810E2B40;
  if (!qword_2810E2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B40);
  }

  return result;
}

unint64_t sub_24B3E315C()
{
  result = qword_2810E2B48;
  if (!qword_2810E2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B48);
  }

  return result;
}

unint64_t sub_24B3E31B4()
{
  result = qword_2810E2B20;
  if (!qword_2810E2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B20);
  }

  return result;
}

unint64_t sub_24B3E320C()
{
  result = qword_2810E2B28;
  if (!qword_2810E2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B28);
  }

  return result;
}

unint64_t sub_24B3E3264()
{
  result = qword_2810E2B60;
  if (!qword_2810E2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B60);
  }

  return result;
}

unint64_t sub_24B3E32BC()
{
  result = qword_2810E2B68;
  if (!qword_2810E2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B68);
  }

  return result;
}

unint64_t sub_24B3E3314()
{
  result = qword_2810E2B50;
  if (!qword_2810E2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B50);
  }

  return result;
}

unint64_t sub_24B3E336C()
{
  result = qword_2810E2B58;
  if (!qword_2810E2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B58);
  }

  return result;
}

unint64_t sub_24B3E33C4()
{
  result = qword_2810E2AF8;
  if (!qword_2810E2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AF8);
  }

  return result;
}

unint64_t sub_24B3E341C()
{
  result = qword_2810E2B00;
  if (!qword_2810E2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2B00);
  }

  return result;
}

uint64_t sub_24B3E3470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x800000024B466C20 == a2;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61436863746566 && a2 == 0xEF73657461646964 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B466C40 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B466C60 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000002ALL && 0x800000024B466C80 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B466CB0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B466CD0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B466CF0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B466D10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746F4E7473616F74 && a2 == 0xED0000646E756F46 || (sub_24B4591AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6572507473616F74 && a2 == 0xEE006465746E6573)
  {

    return 10;
  }

  else
  {
    v6 = sub_24B4591AC();

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

_OWORD *TVAwardHeaderLayout.init(awardImageLayout:descriptionMaxWidth:height:imageToTextSpacing:progressToDescriptionSpacing:titleToProgressSpacing:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = *result;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 32) = a5;
  *(a2 + 40) = a6;
  *(a2 + 48) = a7;
  return result;
}

unint64_t sub_24B3E3840()
{
  v1 = *v0;
  v2 = 0x746867696568;
  v3 = 0xD000000000000016;
  if (v1 == 4)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_24B3E3904@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B3E4664(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B3E3938(uint64_t a1)
{
  v2 = sub_24B3E3C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3E3974(uint64_t a1)
{
  v2 = sub_24B3E3C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TVAwardHeaderLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7CA8, &qword_24B45B1F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v13 = v1[4];
  v12 = v1[5];
  v14 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3E3C4C();
  sub_24B45928C();
  v16[0] = v8;
  v16[1] = v9;
  v17 = 0;
  sub_24B3E3CA0();
  sub_24B45918C();
  if (!v2)
  {
    v16[0] = v11;
    v17 = 1;
    sub_24B3E3CF4();
    sub_24B45918C();
    v16[0] = v10;
    v17 = 2;
    sub_24B45918C();
    v16[0] = v13;
    v17 = 3;
    sub_24B45918C();
    v16[0] = v12;
    v17 = 4;
    sub_24B45918C();
    v16[0] = v14;
    v17 = 5;
    sub_24B45918C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B3E3C4C()
{
  result = qword_27EFE7CB0;
  if (!qword_27EFE7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CB0);
  }

  return result;
}

unint64_t sub_24B3E3CA0()
{
  result = qword_27EFE7CB8;
  if (!qword_27EFE7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CB8);
  }

  return result;
}

unint64_t sub_24B3E3CF4()
{
  result = qword_27EFE7CC0;
  if (!qword_27EFE7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CC0);
  }

  return result;
}

uint64_t TVAwardHeaderLayout.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7CC8, &qword_24B45B1F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3E3C4C();
  sub_24B45927C();
  if (!v2)
  {
    v18 = 0;
    sub_24B3E4034();
    sub_24B4590EC();
    v9 = v17[0];
    v10 = v17[1];
    v18 = 1;
    sub_24B3E4088();
    sub_24B4590EC();
    v11 = v17[0];
    v18 = 2;
    sub_24B4590EC();
    v12 = v17[0];
    v18 = 3;
    sub_24B4590EC();
    v13 = v17[0];
    v18 = 4;
    sub_24B4590EC();
    v15 = v17[0];
    v18 = 5;
    sub_24B4590EC();
    (*(v6 + 8))(v8, v5);
    v16 = v17[0];
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
    a2[3] = v12;
    a2[4] = v13;
    a2[5] = v15;
    a2[6] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B3E4034()
{
  result = qword_27EFE7CD0;
  if (!qword_27EFE7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CD0);
  }

  return result;
}

unint64_t sub_24B3E4088()
{
  result = qword_27EFE7CD8;
  if (!qword_27EFE7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CD8);
  }

  return result;
}

uint64_t TVAwardHeaderLayout.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_24B3DB298(*v0, v0[1]);
  if (v1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v1;
  }

  MEMORY[0x24C2403E0](*&v6);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x24C2403E0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x24C2403E0](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C2403E0](*&v9);
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  return MEMORY[0x24C2403E0](*&v10);
}

uint64_t TVAwardHeaderLayout.hashValue.getter()
{
  sub_24B45922C();
  TVAwardHeaderLayout.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B3E4210()
{
  sub_24B45922C();
  TVAwardHeaderLayout.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B3E4270(uint64_t a1)
{
  sub_24B45922C();
  TVAwardHeaderLayout.hash(into:)();
  return sub_24B45926C();
}

BOOL _s13FitnessAwards19TVAwardHeaderLayoutV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[3].f64[0] == a2[3].f64[0];
  }

  return result;
}

unint64_t sub_24B3E4334()
{
  result = qword_27EFE7CE0;
  if (!qword_27EFE7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CE0);
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

uint64_t sub_24B3E43A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B3E43C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 56) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TVAwardHeaderLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TVAwardHeaderLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B3E4560()
{
  result = qword_27EFE7CE8;
  if (!qword_27EFE7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CE8);
  }

  return result;
}

unint64_t sub_24B3E45B8()
{
  result = qword_27EFE7CF0;
  if (!qword_27EFE7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CF0);
  }

  return result;
}

unint64_t sub_24B3E4610()
{
  result = qword_27EFE7CF8;
  if (!qword_27EFE7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7CF8);
  }

  return result;
}

uint64_t sub_24B3E4664(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024B466D30 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B466D50 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B466D70 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024B466D90 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B466DB0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B4591AC();

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

uint64_t sub_24B3E4898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DA0, qword_24B45B498);
  sub_24B3DF11C(&qword_27EFE7DA8, &qword_27EFE7DA0, qword_24B45B498, MEMORY[0x277D04410]);

  return sub_24B45851C();
}

uint64_t AwardHeaderView.init(store:awardImageViewBuilder:awardProgressViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a5)(uint64_t)@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *a9 = sub_24B3DB5A8;
  *(a9 + 8) = v17;
  *(a9 + 16) = 0;
  v22[0] = a7;
  v22[1] = a8;
  v22[2] = a10;
  v22[3] = a11;
  type metadata accessor for AwardHeaderView(0, v22);

  v19 = a3(v18);
  a5(v19);
}

uint64_t AwardHeaderView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v62 = *(a1 - 1);
  v63 = *(v62 + 64);
  v3 = MEMORY[0x28223BE20](a1);
  v61 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v57 = *(v3 + 16);
  v5 = sub_24B4585BC();
  *&v67 = a1[4];
  v93 = v67;
  v94 = MEMORY[0x277CE01B0];
  v66 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v86 = v5;
  v87 = WitnessTable;
  v65 = MEMORY[0x277CDEBE0];
  swift_getOpaqueTypeMetadata2();
  v86 = sub_24B4585BC();
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D00, &qword_24B45B418);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v60 = a1;
  v8 = a1[3];
  v58 = a1[5];
  v91 = v8;
  v92 = v58;
  v56 = v8;
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v88 = sub_24B458F6C();
  OpaqueTypeMetadata2 = v7;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v53 = sub_24B458C1C();
  sub_24B4585BC();
  v86 = sub_24B4585BC();
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v88 = sub_24B458F6C();
  OpaqueTypeMetadata2 = v9;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v10 = sub_24B458C1C();
  v55 = v10;
  v54 = sub_24B4585BC();
  v48 = sub_24B45872C();
  v52 = swift_getWitnessTable();
  v86 = v10;
  v87 = v52;
  swift_getOpaqueTypeMetadata2();
  v86 = MEMORY[0x277CE1180];
  v84 = v67;
  v85 = MEMORY[0x277CDF678];
  v82 = swift_getWitnessTable();
  v83 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v87 = sub_24B458C1C();
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  v11 = sub_24B458C1C();
  v12 = swift_getWitnessTable();
  v91 = v11;
  v92 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = MEMORY[0x277CE1180];
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v45 = sub_24B458BFC();
  sub_24B45872C();
  sub_24B45872C();
  v13 = sub_24B458B7C();
  v51 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v45 - v14;
  v15 = sub_24B4585BC();
  v50 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v47 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v45 - v18;
  *&v19 = v57;
  *(&v19 + 1) = v56;
  v57 = v19;
  *&v20 = v67;
  v21 = v59;
  *(&v20 + 1) = v58;
  v67 = v20;
  v68 = v19;
  v69 = v20;
  v70 = v59;
  v22 = swift_getWitnessTable();
  v23 = v52;
  v80 = v52;
  v81 = MEMORY[0x277CDF678];
  v24 = swift_getWitnessTable();
  v78 = v22;
  v79 = v24;
  v25 = swift_getWitnessTable();
  v86 = v55;
  v87 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = swift_getWitnessTable();
  v76 = OpaqueTypeConformance2;
  v77 = v27;
  v28 = swift_getWitnessTable();
  v74 = v25;
  v75 = v28;
  v29 = swift_getWitnessTable();
  v30 = v46;
  sub_24B458B6C();
  v31 = v61;
  v32 = v62;
  v33 = v21;
  v34 = v60;
  (*(v62 + 16))(v61, v33, v60);
  v35 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v36 = swift_allocObject();
  v37 = v67;
  *(v36 + 16) = v57;
  *(v36 + 32) = v37;
  (*(v32 + 32))(v36 + v35, v31, v34);
  v73 = v29;
  v38 = swift_getWitnessTable();
  v39 = v47;
  sub_24B458AAC();

  (*(v51 + 8))(v30, v13);
  v71 = v38;
  v72 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  v40 = v49;
  v41 = v50;
  v42 = *(v50 + 16);
  v42(v49, v39, v15);
  v43 = *(v41 + 8);
  v43(v39, v15);
  v42(v64, v40, v15);
  return (v43)(v40, v15);
}

uint64_t sub_24B3E5394@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v152 = a5;
  v160 = a4;
  v161 = a2;
  v150 = a3;
  v163 = a1;
  v156 = a6;
  v7 = MEMORY[0x277CE1180];
  v204 = MEMORY[0x277CE1180];
  sub_24B4585BC();
  v8 = sub_24B4585BC();
  v202 = a4;
  v203 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v201 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v205 = sub_24B458C1C();
  v206 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  v198 = sub_24B458C1C();
  v199 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v208 = v7;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v9 = sub_24B458BFC();
  v135 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v140 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v139 = &v134 - v12;
  v204 = v8;
  v205 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v206 = sub_24B458F6C();
  OpaqueTypeMetadata2 = v13;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v14 = sub_24B458C1C();
  v15 = swift_getWitnessTable();
  v204 = v14;
  v205 = v15;
  v158 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v162 = v9;
  v17 = sub_24B45872C();
  v141 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v145 = &v134 - v19;
  v138 = v16;
  v134 = *(v16 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v137 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v136 = &v134 - v22;
  v159 = v14;
  v23 = sub_24B4585BC();
  v147 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v144 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v143 = &v134 - v26;
  v27 = sub_24B4585BC();
  v196 = v160;
  v197 = MEMORY[0x277CE01B0];
  v28 = swift_getWitnessTable();
  v204 = v27;
  v205 = v28;
  swift_getOpaqueTypeMetadata2();
  v204 = sub_24B4585BC();
  v205 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D00, &qword_24B45B418);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v30 = v150;
  v31 = v152;
  v198 = v150;
  v199 = v152;
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v206 = sub_24B458F6C();
  OpaqueTypeMetadata2 = v29;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v32 = sub_24B458C1C();
  v157 = v23;
  v33 = sub_24B45872C();
  v146 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v151 = &v134 - v35;
  v142 = *(v32 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v149 = &v134 - v39;
  v40 = type metadata accessor for AwardHeaderLayout(0);
  MEMORY[0x28223BE20](v40);
  v42 = &v134 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v17;
  v43 = sub_24B45872C();
  v153 = *(v43 - 8);
  v154 = v43;
  MEMORY[0x28223BE20](v43);
  v45 = &v134 - v44;
  v204 = v161;
  v205 = v30;
  v206 = v160;
  OpaqueTypeMetadata2 = v31;
  v46 = type metadata accessor for AwardHeaderView(0, &v204);
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  LODWORD(v29) = v42[v40[11]];
  sub_24B3EC714(v42);
  v148 = v33;
  if (v29 == 1)
  {
    sub_24B3E66C8(v46, v38);
    v47 = swift_getWitnessTable();
    v48 = v142;
    v49 = *(v142 + 16);
    v50 = v149;
    v49(v149, v38, v32);
    v163 = *(v48 + 8);
    v163(v38, v32);
    v49(v38, v50, v32);
    v51 = v157;
    v168 = v158;
    v52 = v158;
    v169 = MEMORY[0x277CDF678];
    v53 = swift_getWitnessTable();
    v54 = v151;
    sub_24B437B98(v38, v32, v51, v47, v53);
    v166 = v47;
    v167 = v53;
    v55 = v148;
    v161 = swift_getWitnessTable();
    v204 = v159;
    v205 = v52;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = swift_getWitnessTable();
    v164 = OpaqueTypeConformance2;
    v165 = v57;
    v58 = v155;
    v59 = swift_getWitnessTable();
    sub_24B437B98(v54, v55, v58, v161, v59);
    (*(v146 + 8))(v54, v55);
    v60 = v38;
    v61 = v163;
    v163(v60, v32);
    v61(v149, v32);
    v62 = v158;
    v63 = v159;
  }

  else
  {
    v160 = v45;
    v161 = v32;
    v64 = v158;
    v65 = MEMORY[0x277CDF678];
    sub_24B3E4898();
    swift_getKeyPath();
    sub_24B458D5C();

    v66 = v42[v40[12]];
    sub_24B3EC714(v42);
    if (v66 == 1)
    {
      v67 = v144;
      sub_24B3E69F4(v46, v144);
      v68 = v65;
      v69 = v64;
      v174 = v64;
      v175 = v68;
      v70 = v157;
      v71 = swift_getWitnessTable();
      v72 = v147;
      v73 = *(v147 + 16);
      v74 = v143;
      v73(v143, v67, v70);
      v75 = *(v72 + 8);
      v147 = v72 + 8;
      v163 = v75;
      v75(v67, v70);
      v73(v67, v74, v70);
      v76 = v161;
      v77 = swift_getWitnessTable();
      sub_24B437C90(v67, v76, v70, v77, v71);
      v172 = v77;
      v173 = v71;
      v78 = v148;
      v79 = swift_getWitnessTable();
      v63 = v159;
      v204 = v159;
      v205 = v69;
      v80 = v69;
      v81 = swift_getOpaqueTypeConformance2();
      v82 = swift_getWitnessTable();
      v170 = v81;
      v171 = v82;
      v83 = v155;
      v84 = swift_getWitnessTable();
      v45 = v160;
      v85 = v151;
      v86 = v79;
      v87 = v70;
      sub_24B437B98(v151, v78, v83, v86, v84);
      (*(v146 + 8))(v85, v78);
      v88 = v70;
      v89 = v163;
      v163(v144, v88);
      v89(v143, v87);
      v62 = v80;
    }

    else
    {
      sub_24B3E4898();
      swift_getKeyPath();
      sub_24B458D5C();

      v90 = v42[v40[10]];
      sub_24B3EC714(v42);
      v91 = v162;
      if (v90 == 1)
      {
        v92 = v137;
        sub_24B3E6D68(v46, v137, 0.6);
        v204 = v159;
        v205 = v64;
        v93 = v64;
        v94 = swift_getOpaqueTypeConformance2();
        v152 = v94;
        v95 = v134;
        v96 = *(v134 + 16);
        v97 = v136;
        v98 = v138;
        v96(v136, v92, v138);
        v163 = *(v95 + 8);
        v163(v92, v98);
        v96(v92, v97, v98);
        v99 = swift_getWitnessTable();
        sub_24B437B98(v92, v98, v91, v94, v99);
        v100 = swift_getWitnessTable();
        v180 = v93;
        v181 = MEMORY[0x277CDF678];
        v101 = swift_getWitnessTable();
        v178 = v100;
        v179 = v101;
        v102 = v148;
        v103 = swift_getWitnessTable();
        v176 = v152;
        v177 = v99;
        v104 = v155;
        v105 = swift_getWitnessTable();
        v106 = v160;
        v107 = v145;
        sub_24B437C90(v145, v102, v104, v103, v105);
        (*(v141 + 8))(v107, v104);
        v108 = v163;
        v163(v137, v98);
        v108(v136, v98);
        v45 = v106;
        v62 = v158;
      }

      else
      {
        v109 = v140;
        sub_24B3E70F4(v46, v140);
        v110 = swift_getWitnessTable();
        v111 = v135;
        v112 = *(v135 + 16);
        v113 = v139;
        v112(v139, v109, v91);
        v163 = *(v111 + 8);
        v163(v109, v91);
        v112(v109, v113, v91);
        v204 = v159;
        v205 = v64;
        v114 = swift_getOpaqueTypeConformance2();
        sub_24B437C90(v109, v138, v91, v114, v110);
        v115 = swift_getWitnessTable();
        v194 = v64;
        v195 = MEMORY[0x277CDF678];
        v116 = v91;
        v117 = swift_getWitnessTable();
        v192 = v115;
        v193 = v117;
        v118 = v148;
        v119 = swift_getWitnessTable();
        v190 = v114;
        v191 = v110;
        v120 = v155;
        v121 = swift_getWitnessTable();
        v122 = v160;
        v123 = v145;
        sub_24B437C90(v145, v118, v120, v119, v121);
        (*(v141 + 8))(v123, v120);
        v124 = v163;
        v163(v140, v116);
        v124(v139, v116);
        v62 = v158;
        v45 = v122;
      }

      v63 = v159;
    }
  }

  v125 = swift_getWitnessTable();
  v188 = v62;
  v189 = MEMORY[0x277CDF678];
  v126 = swift_getWitnessTable();
  v186 = v125;
  v187 = v126;
  v127 = swift_getWitnessTable();
  v204 = v63;
  v205 = v62;
  v128 = swift_getOpaqueTypeConformance2();
  v129 = swift_getWitnessTable();
  v184 = v128;
  v185 = v129;
  v130 = swift_getWitnessTable();
  v182 = v127;
  v183 = v130;
  v131 = v154;
  swift_getWitnessTable();
  v132 = v153;
  (*(v153 + 16))(v156, v45, v131);
  return (*(v132 + 8))(v45, v131);
}

uint64_t sub_24B3E66C8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  v3 = a1[2];
  sub_24B4585BC();
  v27 = a1[4];
  v4 = v27;
  v28 = MEMORY[0x277CE01B0];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v29 = sub_24B4585BC();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D00, &qword_24B45B418);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v7 = a1[5];
  v25 = a1[3];
  v6 = v25;
  v26 = v7;
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v31 = sub_24B458F6C();
  v32 = v5;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v8 = sub_24B458C1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  *&v15 = v3;
  *(&v15 + 1) = v6;
  *&v16 = v4;
  *(&v16 + 1) = v7;
  v22 = v15;
  v23 = v16;
  v24 = v20;
  sub_24B4586EC();
  sub_24B458C0C();
  swift_getWitnessTable();
  v17 = *(v9 + 16);
  v17(v14, v12, v8);
  v18 = *(v9 + 8);
  v18(v12, v8);
  v17(v21, v14, v8);
  return (v18)(v14, v8);
}

uint64_t sub_24B3E69F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  sub_24B4585BC();
  v23 = sub_24B4585BC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v25 = sub_24B458F6C();
  v26 = v4;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v5 = sub_24B458C1C();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = sub_24B4585BC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_24B3E8E40(a1, v7);
  sub_24B458CBC();
  WitnessTable = swift_getWitnessTable();
  sub_24B458A4C();
  (*(v19 + 8))(v7, v5);
  v21 = WitnessTable;
  v22 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  v16 = *(v9 + 16);
  v16(v14, v12, v8);
  v17 = *(v9 + 8);
  v17(v12, v8);
  v16(v20, v14, v8);
  return (v17)(v14, v8);
}

uint64_t sub_24B3E6D68@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v22 = a2;
  sub_24B4585BC();
  v23 = sub_24B4585BC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v25 = sub_24B458F6C();
  v26 = v5;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v6 = sub_24B458C1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  WitnessTable = swift_getWitnessTable();
  v23 = v6;
  v24 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(OpaqueTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  sub_24B3E8E40(a1, v9);
  sub_24B45879C();
  *(swift_allocObject() + 16) = a3;
  sub_24B458CBC();
  sub_24B458A2C();

  (*(v7 + 8))(v9, v6);
  v18 = *(v12 + 16);
  v18(v17, v15, OpaqueTypeMetadata2);
  v19 = *(v12 + 8);
  v19(v15, OpaqueTypeMetadata2);
  v18(v22, v17, OpaqueTypeMetadata2);
  return (v19)(v17, OpaqueTypeMetadata2);
}

uint64_t sub_24B3E70F4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  v3 = MEMORY[0x277CE1180];
  v31 = MEMORY[0x277CE1180];
  v4 = a1 + 5;
  v5 = a1[2];
  sub_24B4585BC();
  sub_24B4585BC();
  v29 = a1[4];
  v6 = v29;
  v30 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v28 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v32 = sub_24B458C1C();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  v7 = a1[3];
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  v25 = sub_24B458C1C();
  v26 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = v3;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v8 = sub_24B458BFC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  sub_24B4586BC();
  *&v15 = v6;
  *(&v15 + 1) = *v4;
  *&v16 = v5;
  *(&v16 + 1) = v7;
  v22 = v16;
  v23 = v15;
  v24 = v20;
  sub_24B458BEC();
  swift_getWitnessTable();
  v17 = *(v9 + 16);
  v17(v14, v12, v8);
  v18 = *(v9 + 8);
  v18(v12, v8);
  v17(v21, v14, v8);
  return (v18)(v14, v8);
}

uint64_t sub_24B3E74B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  type metadata accessor for AwardHeaderView(0, v6);
  sub_24B3E4898();
  sub_24B458D6C();
}

uint64_t sub_24B3E7500()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for AwardHeaderView(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_24B3E74B0(v6, v1, v2, v3, v4);
}

uint64_t sub_24B3E75E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v136 = a3;
  v137 = a5;
  v121 = a1;
  v135 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  *&v205 = a3;
  *(&v205 + 1) = a5;
  v119 = MEMORY[0x277CDEBE0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = sub_24B4585BC();
  v138 = v10;
  swift_getTupleTypeMetadata2();
  v13 = sub_24B458CDC();
  v131 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v113 = &v105 - v15;
  v109 = OpaqueTypeMetadata2;
  v108 = *(OpaqueTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v107 = &v105 - v17;
  v114 = v12;
  v112 = *(v12 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v111 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v110 = &v105 - v20;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB0, &unk_24B45D910);
  MEMORY[0x28223BE20](v126);
  v122 = &v105 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v23 = *(v22 - 8);
  v124 = v22;
  v125 = v23;
  MEMORY[0x28223BE20](v22);
  v123 = &v105 - v24;
  v143 = v13;
  v134 = sub_24B458F6C();
  v132 = *(v134 - 8);
  v25 = MEMORY[0x28223BE20](v134);
  v142 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v149 = &v105 - v27;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7D00, &qword_24B45B418);
  v28 = MEMORY[0x28223BE20](v141);
  v133 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v148 = &v105 - v30;
  v31 = sub_24B45843C();
  v129 = *(v31 - 8);
  v130 = v31;
  MEMORY[0x28223BE20](v31);
  v128 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for AwardHeaderLayout(0);
  v33 = MEMORY[0x28223BE20](v145);
  v106 = &v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v144 = &v105 - v35;
  v36 = sub_24B4585BC();
  v117 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v105 - v37;
  v197 = a4;
  v198 = MEMORY[0x277CE01B0];
  v127 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  *&v205 = v36;
  *(&v205 + 1) = WitnessTable;
  v118 = swift_getOpaqueTypeMetadata2();
  v120 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v105 - v39;
  v140 = sub_24B4585BC();
  v147 = *(v140 - 8);
  v40 = MEMORY[0x28223BE20](v140);
  v42 = &v105 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v146 = &v105 - v43;
  *&v205 = a2;
  *(&v205 + 1) = v136;
  *&v206 = a4;
  *(&v206 + 1) = v137;
  v44 = type metadata accessor for AwardHeaderView(0, &v205);
  sub_24B45898C();
  sub_24B45879C();
  sub_24B458CBC();
  v45 = WitnessTable;
  sub_24B458A2C();
  (*(v117 + 8))(v38, v36);
  sub_24B3E4898();
  swift_getKeyPath();
  v46 = v144;
  sub_24B458D5C();

  v47 = v128;
  v48 = v129;
  v49 = v46;
  v50 = &v46[*(v145 + 32)];
  v51 = v130;
  (*(v129 + 16))(v128, v50, v130);
  sub_24B3EC714(v49);
  sub_24B4583EC();
  (*(v48 + 8))(v47, v51);
  *&v205 = v36;
  *(&v205 + 1) = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v118;
  v54 = v115;
  sub_24B458A8C();
  (*(v120 + 8))(v54, v53);
  v195 = OpaqueTypeConformance2;
  v196 = MEMORY[0x277CDF918];
  v55 = v140;
  v129 = swift_getWitnessTable();
  v56 = v147;
  v127 = *(v147 + 16);
  v128 = (v147 + 16);
  v127(v146, v42, v55);
  v57 = *(v56 + 8);
  v139 = v42;
  v147 = v56 + 8;
  v130 = v57;
  v57(v42, v55);
  v58 = sub_24B4586EC();
  v59 = v44;
  sub_24B3E88E8(v58, v44, &v183);
  v179 = v191;
  v180 = v192;
  v181 = v193;
  v175 = v187;
  v176 = v188;
  v177 = v189;
  v178 = v190;
  v171 = v183;
  v172 = v184;
  v173 = v185;
  v182 = v194;
  v174 = v186;
  sub_24B45879C();
  sub_24B458CBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DC0, &qword_24B45B4D0);
  sub_24B3EC788();
  v60 = v148;
  v61 = v59;
  v62 = v122;
  sub_24B458A2C();
  v213 = v179;
  v214 = v180;
  v215 = v181;
  v216 = v182;
  v209 = v175;
  v210 = v176;
  v211 = v177;
  v212 = v178;
  v205 = v171;
  v206 = v172;
  v207 = v173;
  v208 = v174;
  sub_24B3DF4F0(&v205, &qword_27EFE7DC0, &qword_24B45B4D0);
  *(v60 + *(v141 + 36)) = 256;
  sub_24B3E4898();
  swift_getKeyPath();
  v63 = v123;
  sub_24B458D5C();

  v64 = v124;
  sub_24B458D0C();
  (*(v125 + 8))(v63, v64);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B3DF4F0(v62, &qword_27EFE7DB0, &unk_24B45D910);
    goto LABEL_7;
  }

  v65 = *(v62 + 32);
  v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DE8, &qword_24B45D940) + 48);
  v67 = sub_24B45833C();
  (*(*(v67 - 8) + 8))(v62 + v66, v67);

  if (v65 != 1)
  {
LABEL_7:
    v92 = v142;
    (*(v131 + 56))(v142, 1, 1, v143);
    swift_getWitnessTable();
    sub_24B428520(v92, v149);
    v89 = v132;
    v90 = *(v132 + 8);
    v136 = (v132 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v91 = v92;
    goto LABEL_8;
  }

  sub_24B3E4898();
  swift_getKeyPath();
  v68 = v106;
  sub_24B458D5C();

  v69 = v68 + *(v145 + 56);
  v70 = *v69;
  v71 = *(v69 + 8);
  sub_24B3EC714(v68);
  if (v71)
  {
    v70 = 0.6;
  }

  sub_24B3E4898();
  swift_getKeyPath();
  v72 = v144;
  sub_24B458D5C();

  sub_24B3EC714(v72);
  sub_24B458CBC();
  sub_24B45855C();
  v122 = v199;
  v123 = v201;
  v124 = v204;
  v125 = v203;
  LOBYTE(v165[0]) = 1;
  v170 = v200;
  v168 = v202;
  sub_24B45879C();
  sub_24B458CBC();
  *(swift_allocObject() + 16) = v70;
  v73 = v107;
  v75 = v136;
  v74 = v137;
  sub_24B458A2C();

  *&v183 = v75;
  *(&v183 + 1) = v74;
  v76 = swift_getOpaqueTypeConformance2();
  v126 = v61;
  v77 = v111;
  v78 = v109;
  sub_24B458AEC();
  (*(v108 + 8))(v73, v78);
  v150 = v76;
  v151 = MEMORY[0x277CDFC48];
  v79 = v114;
  v80 = swift_getWitnessTable();
  v81 = v112;
  v82 = *(v112 + 16);
  v83 = v110;
  v82(v110, v77, v79);
  v84 = *(v81 + 8);
  v84(v77, v79);
  *&v183 = 0;
  BYTE8(v183) = v165[0];
  *(&v183 + 9) = v153;
  HIDWORD(v183) = *(&v153 + 3);
  *&v184 = v122;
  BYTE8(v184) = v170;
  *(&v184 + 9) = *v169;
  HIDWORD(v184) = *&v169[3];
  *&v185 = v123;
  BYTE8(v185) = v168;
  *(&v185 + 9) = *v167;
  HIDWORD(v185) = *&v167[3];
  *&v186 = v125;
  *(&v186 + 1) = v124;
  *&v171 = &v183;
  v82(v77, v83, v79);
  *(&v171 + 1) = v77;
  v161 = v138;
  v162 = v79;
  v157 = sub_24B3EC908();
  v158 = v80;
  v85 = v113;
  sub_24B437D88(&v171, 2uLL, &v161);
  v84(v83, v79);
  v84(v77, v79);
  v86 = v131;
  v87 = v142;
  v88 = v143;
  (*(v131 + 32))(v142, v85, v143);
  (*(v86 + 56))(v87, 0, 1, v88);
  swift_getWitnessTable();
  sub_24B428520(v87, v149);
  v89 = v132;
  v90 = *(v132 + 8);
  v136 = (v132 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v91 = v87;
LABEL_8:
  v93 = v134;
  v137 = v90;
  v90(v91, v134);
  sub_24B3E4898();
  swift_getKeyPath();
  v94 = v144;
  sub_24B458D5C();

  sub_24B3EC714(v94);
  sub_24B458CBC();
  sub_24B45855C();
  v95 = v171;
  v96 = v172;
  v97 = v173;
  v170 = 1;
  v168 = BYTE8(v171);
  v166 = BYTE8(v172);
  v98 = v139;
  v99 = v140;
  v127(v139, v146, v140);
  v161 = v98;
  v100 = v133;
  sub_24B3D26B8(v148, v133);
  v162 = v100;
  v101 = v142;
  (*(v89 + 16))(v142, v149, v93);
  *&v183 = 0;
  BYTE8(v183) = v170;
  *(&v183 + 9) = *v169;
  HIDWORD(v183) = *&v169[3];
  *&v184 = v95;
  BYTE8(v184) = v168;
  *(&v184 + 9) = *v167;
  HIDWORD(v184) = *&v167[3];
  *&v185 = v96;
  BYTE8(v185) = v166;
  *(&v185 + 9) = v165[0];
  HIDWORD(v185) = *(v165 + 3);
  v186 = v97;
  v163 = v101;
  v164 = &v183;
  v157 = v99;
  v158 = v141;
  v159 = v93;
  v160 = v138;
  v153 = v129;
  v154 = sub_24B3EC840();
  v152 = swift_getWitnessTable();
  v155 = swift_getWitnessTable();
  v156 = sub_24B3EC908();
  sub_24B437D88(&v161, 4uLL, &v157);
  v102 = v137;
  v137(v149, v93);
  sub_24B3D2728(v148);
  v103 = v130;
  v130(v146, v99);
  v102(v101, v93);
  sub_24B3D2728(v100);
  return v103(v139, v99);
}
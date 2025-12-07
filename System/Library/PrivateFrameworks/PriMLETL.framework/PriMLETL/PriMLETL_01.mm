unint64_t sub_25F57BCB8()
{
  result = qword_27FD9DD68;
  if (!qword_27FD9DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD68);
  }

  return result;
}

unint64_t sub_25F57BD10()
{
  result = qword_27FD9DD70;
  if (!qword_27FD9DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD70);
  }

  return result;
}

unint64_t sub_25F57BD68()
{
  result = qword_27FD9DD78;
  if (!qword_27FD9DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD78);
  }

  return result;
}

uint64_t sub_25F57BDBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B7475706E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B74757074756FLL && a2 == 0xE900000000000079 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657265666E69 && a2 == 0xEF6769666E6F4365 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73694C776F6C6C61 && a2 == 0xEF73676154646574 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473694C796E6564 && a2 == 0xEE00736761546465 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61546D754E78616DLL && a2 == 0xEA00000000007367 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x426E4965726F7473 && a2 == 0xEC000000656D6F69)
  {

    return 6;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_25F57C08C()
{
  result = qword_27FD9DDA8;
  if (!qword_27FD9DDA8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DDA8);
  }

  return result;
}

uint64_t sub_25F57C0E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F57C148(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25F57C1A8()
{
  v1 = *v0;
  v2 = 0x79654B7475706E69;
  v3 = 0x636E657265666E69;
  v4 = 0x6174744174786574;
  if (v1 != 3)
  {
    v4 = 0x614665726F6E6769;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x654B74757074756FLL;
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

uint64_t sub_25F57C26C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F57E478(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F57C2A0(uint64_t a1)
{
  v2 = sub_25F57C910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F57C2DC(uint64_t a1)
{
  v2 = sub_25F57C910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextCompletionStepConfig.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE18, &qword_25F5E7250);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - v8;
  v10 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  sub_25F57C910();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v61);
  }

  v11 = v6;
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  LOBYTE(v30) = 0;
  sub_25F574164();
  v12 = v5;
  sub_25F5E4AD4();
  v28 = v32[0];
  LOBYTE(v32[0]) = 1;
  v13 = sub_25F5E4A94();
  v27 = v14;
  v15 = v13;
  v44 = 2;
  sub_25F576820();
  sub_25F5E4AD4();
  v57 = v49;
  v58 = v50;
  v59 = v51;
  v60 = v52;
  v53 = v45;
  v54 = v46;
  v55 = v47;
  v56 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB30, &qword_25F5E5F30);
  LOBYTE(v30) = 3;
  sub_25F571DEC();
  sub_25F5E4A84();
  v16 = v32[0];
  v43 = 4;
  v17 = sub_25F5E4AA4();
  (*(v11 + 8))(v9, v12);
  v17 &= 1u;
  v18 = v27;
  v19 = v28;
  *&v30 = v28;
  *(&v30 + 1) = v15;
  *&v31[0] = v27;
  *(&v31[4] + 8) = v57;
  *(&v31[5] + 8) = v58;
  *(&v31[6] + 8) = v59;
  BYTE8(v31[7]) = v60;
  *(v31 + 8) = v53;
  *(&v31[1] + 8) = v54;
  *(&v31[2] + 8) = v55;
  *(&v31[3] + 8) = v56;
  *&v31[8] = v16;
  BYTE8(v31[8]) = v17;
  v20 = v31[6];
  v21 = v29;
  v29[6] = v31[5];
  v21[7] = v20;
  v21[8] = v31[7];
  v22 = v31[2];
  v21[2] = v31[1];
  v21[3] = v22;
  v23 = v31[4];
  v21[4] = v31[3];
  v21[5] = v23;
  v24 = v31[0];
  *v21 = v30;
  v21[1] = v24;
  *(v21 + 137) = *(&v31[7] + 9);
  sub_25F57C964(&v30, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  v37 = v57;
  v38 = v58;
  v39 = v59;
  v33 = v53;
  v34 = v54;
  v35 = v55;
  v32[0] = v19;
  v32[1] = v15;
  v32[2] = v18;
  v40 = v60;
  v36 = v56;
  v41 = v16;
  v42 = v17;
  return sub_25F57C99C(v32);
}

char *sub_25F57C7D4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v18 = *(a1 + 40);
  v19 = *(a1 + 24);
  v4 = *(a1 + 64);
  v17 = *(a1 + 80);
  v16 = *(a1 + 88);
  v15 = *(a1 + 96);
  v14 = *(a1 + 104);
  v13 = *(a1 + 112);
  v12 = *(a1 + 120);
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  v7 = *(a1 + 72);
  v20[0] = *(a1 + 56);
  v20[1] = v4;
  v21 = v7;
  v8 = type metadata accessor for LLMInference(0);
  swift_allocObject();

  sub_25F57B79C(v20[0], v4, v7);
  v9 = v22;
  result = LLMInference.init(modelBundleID:usecaseId:promptConfig:topKSampling:nucleusSampling:temperature:seed:)(v19, v2, v18, v3, v20, v17, v16, v15, v14, v13, v12, v5, v6);
  if (!v9)
  {
    a2[3] = v8;
    a2[4] = &protocol witness table for LLMInference;
    *a2 = result;
  }

  return result;
}

unint64_t sub_25F57C910()
{
  result = qword_27FD9DE20;
  if (!qword_27FD9DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE20);
  }

  return result;
}

uint64_t (*static TextCompletionStep.textCompleterFactory.getter())()
{
  swift_beginAccess();
  v0 = off_281E8DB80;

  return v0;
}

uint64_t static TextCompletionStep.textCompleterFactory.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_281E8DB80 = a1;
  qword_281E8DB88 = a2;
}

uint64_t sub_25F57CAD8(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  swift_beginAccess();
  off_281E8DB80 = v2;
  qword_281E8DB88 = v1;
}

uint64_t TextCompletionStep.process(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F57CB5C, 0, 0);
}

uint64_t sub_25F57CB5C()
{
  v1 = v0[3];
  v2 = *(v1 + 152);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F57CC44;
  v5 = v0[2];

  return sub_25F5A1F60(v5, v2, &unk_25F5E7268, v3);
}

uint64_t sub_25F57CC44(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_25F57CD9C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_25F57CD9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F57CE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  return MEMORY[0x2822009F8](sub_25F57CE24, 0, 0);
}

unint64_t sub_25F57CE24()
{
  v1 = v0[32];
  if (*(v1 + 72) - 1 > 1)
  {
    v32 = *v1;
    if (*(*v1 + 16) == 1)
    {
      if (*(v0[31] + 16))
      {
        v34 = *(v32 + 32);
        v33 = *(v32 + 40);

        v35 = sub_25F5709C8(v34, v33);
        LOBYTE(v34) = v36;

        if (v34)
        {
          sub_25F573A4C(*(v0[31] + 56) + 32 * v35, (v0 + 2));
          if (swift_dynamicCast())
          {
            v37 = v0[32];
            v39 = v0[26];
            v38 = v0[27];
            v0[36] = v38;
            v40 = v37[23];
            v41 = v37[24];
            __swift_project_boxed_opaque_existential_1Tm(v37 + 20, v40);
            v79 = (*(v41 + 16) + **(v41 + 16));
            v42 = swift_task_alloc();
            v0[37] = v42;
            *v42 = v0;
            v42[1] = sub_25F57D938;

            return v79(v39, v38, v40, v41);
          }
        }

LABEL_51:
      }

      sub_25F5748D4();
      swift_allocError();
      *v69 = 0;
    }

    else
    {
      sub_25F5748D4();
      swift_allocError();
      *v68 = 7;
    }

    swift_willThrow();
    v70 = v0[1];

    return v70();
  }

  v2 = sub_25F571EB0(MEMORY[0x277D84F90]);
  result = v1[18];
  v82 = v0;
  if (!result)
  {
    goto LABEL_30;
  }

  v4 = result + 64;
  v5 = -1;
  v6 = -1 << *(result + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(result + 64);
  v8 = (63 - v6) >> 6;

  v9 = 0;
  v74 = v4;
  v76 = result;
  while (v7)
  {
    v12 = v9;
LABEL_13:
    v13 = (v12 << 10) | (16 * __clz(__rbit64(v7)));
    v14 = (*(result + 48) + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(result + 56) + v13);
    v18 = v17[1];
    v78 = *v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v2;
    result = sub_25F5709C8(v16, v15);
    v21 = *(v2 + 16);
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_67;
    }

    v25 = v20;
    if (*(v2 + 24) >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = result;
        sub_25F57ADD8();
        result = v31;
      }
    }

    else
    {
      sub_25F579590(v24, isUniquelyReferenced_nonNull_native);
      result = sub_25F5709C8(v16, v15);
      if ((v25 & 1) != (v26 & 1))
      {
LABEL_60:

        return sub_25F5E4BC4();
      }
    }

    v7 &= v7 - 1;
    if (v25)
    {
      v10 = result;

      v2 = v83;
      v11 = (v83[7] + 16 * v10);
      *v11 = v78;
      v11[1] = v18;
    }

    else
    {
      v2 = v83;
      v83[(result >> 6) + 8] |= 1 << result;
      v27 = (v83[6] + 16 * result);
      *v27 = v16;
      v27[1] = v15;
      v28 = (v83[7] + 16 * result);
      *v28 = v78;
      v28[1] = v18;
      v29 = v83[2];
      v23 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v23)
      {
        goto LABEL_69;
      }

      v83[2] = v30;
    }

    v9 = v12;
    v4 = v74;
    result = v76;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      return result;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      goto LABEL_13;
    }
  }

  v0 = v82;
LABEL_30:
  v43 = v0[32];
  v44 = *v43;
  v80 = *(*v43 + 16);
  if (v80)
  {
    v45 = 0;
    v46 = v0[31];
    v47 = (v44 + 40);
    v75 = v46;
    v77 = *v43;
    while (1)
    {
      if (v45 >= *(v44 + 16))
      {
        goto LABEL_65;
      }

      if (!*(v46 + 16))
      {
        goto LABEL_50;
      }

      v51 = *(v47 - 1);
      v50 = *v47;

      v52 = sub_25F5709C8(v51, v50);
      if ((v53 & 1) == 0 || (sub_25F573A4C(*(v46 + 56) + 32 * v52, (v0 + 14)), (swift_dynamicCast() & 1) == 0))
      {

LABEL_50:

        goto LABEL_51;
      }

      v55 = v0[28];
      v54 = v0[29];
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v2;
      result = sub_25F5709C8(v51, v50);
      v58 = *(v2 + 16);
      v59 = (v57 & 1) == 0;
      v23 = __OFADD__(v58, v59);
      v60 = v58 + v59;
      if (v23)
      {
        goto LABEL_66;
      }

      v61 = v57;
      if (*(v2 + 24) < v60)
      {
        break;
      }

      if (v56)
      {
        goto LABEL_43;
      }

      v67 = result;
      sub_25F57ADD8();
      result = v67;
      if ((v61 & 1) == 0)
      {
LABEL_44:
        v2 = v84;
        v84[(result >> 6) + 8] |= 1 << result;
        v63 = (v84[6] + 16 * result);
        *v63 = v51;
        v63[1] = v50;
        v64 = (v84[7] + 16 * result);
        *v64 = v55;
        v64[1] = v54;
        v65 = v84[2];
        v23 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v23)
        {
          goto LABEL_68;
        }

        v84[2] = v66;
        goto LABEL_33;
      }

LABEL_32:
      v48 = result;

      v2 = v84;
      v49 = (v84[7] + 16 * v48);
      *v49 = v55;
      v49[1] = v54;

LABEL_33:
      ++v45;
      v47 += 2;
      v0 = v82;
      v46 = v75;
      v44 = v77;
      if (v80 == v45)
      {
        v43 = v82[32];
        goto LABEL_57;
      }
    }

    sub_25F579590(v60, v56);
    result = sub_25F5709C8(v51, v50);
    if ((v61 & 1) != (v62 & 1))
    {
      goto LABEL_60;
    }

LABEL_43:
    if ((v61 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_32;
  }

LABEL_57:
  v0[33] = v2;
  v71 = v43[23];
  v72 = v43[24];
  __swift_project_boxed_opaque_existential_1Tm(v43 + 20, v71);
  v81 = (*(v72 + 24) + **(v72 + 24));
  v73 = swift_task_alloc();
  v0[34] = v73;
  *v73 = v0;
  v73[1] = sub_25F57D5E0;

  return v81(v2, v71, v72);
}

uint64_t sub_25F57D5E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[18] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = v2;
  v4[35] = v2;

  if (v2)
  {

    v5 = sub_25F57DC90;
  }

  else
  {
    v5 = sub_25F57D730;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F57D730()
{
  v20 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = qword_27FD9D8B0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_25F5E3FB4();
  __swift_project_value_buffer(v4, qword_27FD9EA20);

  v5 = sub_25F5E3F94();
  v6 = sub_25F5E4794();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_25F570AF8(v2, v1, &v19);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_25F56A000, v5, v6, "Completion for item %ld: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  *(v0 + 72) = MEMORY[0x277D837D0];
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  sub_25F571D88((v0 + 48), (v0 + 80));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v12;
  sub_25F5710A0((v0 + 80), v13, v14, isUniquelyReferenced_nonNull_native);
  v16 = v19;
  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_25F57D938(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[22] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v4[25] = v2;
  v4[38] = v2;

  if (v2)
  {

    v5 = sub_25F57DCA8;
  }

  else
  {
    v5 = sub_25F57DA88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F57DA88()
{
  v20 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = qword_27FD9D8B0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_25F5E3FB4();
  __swift_project_value_buffer(v4, qword_27FD9EA20);

  v5 = sub_25F5E3F94();
  v6 = sub_25F5E4794();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_25F570AF8(v2, v1, &v19);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_25F56A000, v5, v6, "Completion for item %ld: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  *(v0 + 72) = MEMORY[0x277D837D0];
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  sub_25F571D88((v0 + 48), (v0 + 80));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v12;
  sub_25F5710A0((v0 + 80), v13, v14, isUniquelyReferenced_nonNull_native);
  v16 = v19;
  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_25F57DCC0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E7F4;

  return sub_25F57CE00(a1, a2, v6);
}

uint64_t sub_25F57DD6C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F57DD8C, 0, 0);
}

uint64_t sub_25F57DD8C()
{
  v1 = v0[3];
  v2 = *(v1 + 152);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F57DE74;
  v5 = v0[2];

  return sub_25F5A1F60(v5, v2, &unk_25F5E7598, v3);
}

uint64_t sub_25F57DE74(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_25F57E7F8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_25F57DFCC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_281E8DB88;
  *a1 = off_281E8DB80;
  a1[1] = v2;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_25F57E054(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_25F57E09C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_25F57E158(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_25F57E1A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextCompletionStepConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextCompletionStepConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F57E374()
{
  result = qword_27FD9DE28;
  if (!qword_27FD9DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE28);
  }

  return result;
}

unint64_t sub_25F57E3CC()
{
  result = qword_27FD9DE30;
  if (!qword_27FD9DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE30);
  }

  return result;
}

unint64_t sub_25F57E424()
{
  result = qword_27FD9DE38;
  if (!qword_27FD9DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE38);
  }

  return result;
}

uint64_t sub_25F57E478(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B7475706E69 && a2 == 0xE900000000000073;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B74757074756FLL && a2 == 0xE900000000000079 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657265666E69 && a2 == 0xEF6769666E6F4365 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174744174786574 && a2 == 0xEF73746E656D6863 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614665726F6E6769 && a2 == 0xEE00736572756C69)
  {

    return 4;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

uint64_t sub_25F57E64C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E6F8;

  return sub_25F57CE00(a1, a2, v6);
}

uint64_t sub_25F57E6F8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_25F57E7FC()
{
  v1 = 0x79654B7475706E69;
  v2 = 0x636E657265666E69;
  if (*v0 != 2)
  {
    v2 = 0x614665726F6E6769;
  }

  if (*v0)
  {
    v1 = 0x654B74757074756FLL;
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

uint64_t sub_25F57E894@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F580064(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F57E8BC(uint64_t a1)
{
  v2 = sub_25F57EFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F57E8F8(uint64_t a1)
{
  v2 = sub_25F57EFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageGenerationStepConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE40, &unk_25F5E75B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F57EFF0();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v28 = 0;
  v10 = sub_25F5E4A94();
  v12 = v11;
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  v27 = 1;
  sub_25F574164();
  sub_25F5E4AD4();
  v20 = v22;
  v24 = 2;
  sub_25F57F044();
  sub_25F5E4AD4();
  v18 = v26;
  v19 = v25;
  v23 = 3;
  v14 = sub_25F5E4AA4();
  (*(v6 + 8))(v9, v5);
  v15 = v14 & 1;
  v16 = v20;
  *a2 = v21;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;
  v17 = v18;
  *(a2 + 24) = v19;
  *(a2 + 25) = v17;
  *(a2 + 26) = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_25F57EC30(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 64) = *(a2 + 24);
  *(v2 + 24) = type metadata accessor for ImagePlaygroundInference(0);
  *(v2 + 32) = swift_allocObject();

  return MEMORY[0x2822009F8](sub_25F57ECB8, 0, 0);
}

uint64_t sub_25F57ECB8()
{
  *(*(v0 + 32) + 24) = *(v0 + 64);
  sub_25F5E3934();
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_25F57ED6C;

  return MEMORY[0x282122C48]();
}

uint64_t sub_25F57ED6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_25F57EF60;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_25F57EE94;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F57EE94()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  *(v2 + 16) = v0[7];
  v4 = OBJC_IVAR____TtC8PriMLETL24ImagePlaygroundInference_debugDirectory;
  v5 = sub_25F5E3554();
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v3[3] = v1;
  v3[4] = &off_287197CE0;
  *v3 = v2;
  v6 = v0[1];

  return v6();
}

uint64_t sub_25F57EF60()
{
  swift_deallocPartialClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_25F57EFF0()
{
  result = qword_27FD9DE48;
  if (!qword_27FD9DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE48);
  }

  return result;
}

unint64_t sub_25F57F044()
{
  result = qword_27FD9DE50;
  if (!qword_27FD9DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE50);
  }

  return result;
}

void *static ImageGenerationStep.imageCreatorFactory.getter()
{
  swift_beginAccess();
  v0 = off_281E8DB90;

  return v0;
}

uint64_t static ImageGenerationStep.imageCreatorFactory.setter(void *a1, uint64_t a2)
{
  swift_beginAccess();
  off_281E8DB90 = a1;
  qword_281E8DB98 = a2;
}

uint64_t sub_25F57F1A0(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  swift_beginAccess();
  off_281E8DB90 = v2;
  qword_281E8DB98 = v1;
}

uint64_t ImageGenerationStep.process(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F57F224, 0, 0);
}

uint64_t sub_25F57F224()
{
  v1 = v0[3];
  v2 = *(v1 + 26);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F57CC44;
  v5 = v0[2];

  return sub_25F5A1F60(v5, v2, &unk_25F5E75D8, v3);
}

uint64_t sub_25F57F30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  return MEMORY[0x2822009F8](sub_25F57F330, 0, 0);
}

uint64_t sub_25F57F330()
{
  v22 = v0;
  if (*(*(v0 + 136) + 16) && (v1 = sub_25F5709C8(**(v0 + 144), *(*(v0 + 144) + 8)), (v2 & 1) != 0) && (sub_25F573A4C(*(*(v0 + 136) + 56) + 32 * v1, v0 + 16), (swift_dynamicCast() & 1) != 0))
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    *(v0 + 152) = v3;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v5 = sub_25F5E3FB4();
    *(v0 + 160) = __swift_project_value_buffer(v5, qword_27FD9EA20);

    v6 = sub_25F5E3F94();
    v7 = sub_25F5E4794();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 128);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 134218242;
      *(v9 + 4) = v8;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_25F570AF8(v4, v3, &v21);
      _os_log_impl(&dword_25F56A000, v6, v7, "Generating image(s) for item %ld with prompt: %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x25F8E3B70](v10, -1, -1);
      MEMORY[0x25F8E3B70](v9, -1, -1);
    }

    v11 = *(v0 + 144);
    v12 = v11[7];
    v13 = v11[8];
    __swift_project_boxed_opaque_existential_1Tm(v11 + 4, v12);
    v14 = v11[2];
    *(v0 + 168) = v14;
    v15 = *(v14 + 16);
    v20 = (*(v13 + 8) + **(v13 + 8));
    v16 = swift_task_alloc();
    *(v0 + 176) = v16;
    *v16 = v0;
    v16[1] = sub_25F57F668;

    return v20(v4, v3, v15, v12, v13);
  }

  else
  {
    sub_25F5748D4();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_25F57F668(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_25F57FB60;
  }

  else
  {

    v4 = sub_25F57F784;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F57F784()
{

  v1 = sub_25F5E3F94();
  LOBYTE(v2) = sub_25F5E4794();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 184);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    if (v4 >> 62)
    {
LABEL_39:
      v37 = v5;
      v6 = sub_25F5E49C4();
      v5 = v37;
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = *(v0 + 128);
    *(v5 + 4) = v6;
    v8 = v5;

    *(v8 + 12) = 2048;
    *(v8 + 14) = v7;
    _os_log_impl(&dword_25F56A000, v1, v2, "Generated %ld image(s) for item %ld", v8, 0x16u);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 168);
  v1 = *(v0 + 136);
  v10 = *(v9 + 16);

  v5 = *(v0 + 184);
  v40 = v10;
  if (v10)
  {
    v2 = 0;
    v11 = v5 & 0xFFFFFFFFFFFFFF8;
    v39 = v5 & 0xC000000000000001;
    v38 = v5 + 32;
    v12 = (v9 + 40);
    v41 = v5 >> 62;
    while (1)
    {
      if (v2 >= *(*(v0 + 168) + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v16 = *(v12 - 1);
      v15 = *v12;
      if (v41)
      {
        v5 = sub_25F5E49C4();
        if (v2 == v5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v5 = *(v11 + 16);
        if (v2 == v5)
        {
          goto LABEL_29;
        }
      }

      if (v39)
      {
        v33 = *(v0 + 184);

        v18 = MEMORY[0x25F8E3030](v2, v33);
      }

      else
      {
        if (v2 >= *(v11 + 16))
        {
          goto LABEL_37;
        }

        v17 = *(v38 + 8 * v2);

        v18 = v17;
      }

      v19 = v18;
      type metadata accessor for CGImage(0);
      *(v0 + 72) = v20;
      *(v0 + 48) = v19;
      sub_25F571D88((v0 + 48), (v0 + 80));
      v21 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = sub_25F5709C8(v16, v15);
      isa = v1[2].isa;
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(isa, v25);
      v27 = isa + v25;
      if (v26)
      {
        goto LABEL_36;
      }

      v28 = v23;
      if (v1[3].isa < v27)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v34 = v5;
      sub_25F57AAC4();
      v5 = v34;
      if (v28)
      {
LABEL_8:
        v13 = v5;

        v14 = (v1[7].isa + 32 * v13);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        sub_25F571D88((v0 + 80), v14);

        goto LABEL_9;
      }

LABEL_22:
      v1[(v5 >> 6) + 8].isa = (v1[(v5 >> 6) + 8].isa | (1 << v5));
      v30 = (v1[6].isa + 16 * v5);
      *v30 = v16;
      v30[1] = v15;
      sub_25F571D88((v0 + 80), v1[7].isa + 2 * v5);

      v31 = v1[2].isa;
      v26 = __OFADD__(v31, 1);
      v32 = (v31 + 1);
      if (v26)
      {
        goto LABEL_38;
      }

      v1[2].isa = v32;
LABEL_9:
      ++v2;
      v12 += 2;
      if (v40 == v2)
      {
        goto LABEL_29;
      }
    }

    sub_25F579030(v27, isUniquelyReferenced_nonNull_native);
    v5 = sub_25F5709C8(v16, v15);
    if ((v28 & 1) != (v29 & 1))
    {

      return sub_25F5E4BC4();
    }

LABEL_21:
    if (v28)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_29:

  v35 = *(v0 + 8);

  return v35(v1);
}

uint64_t sub_25F57FB60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F57FBC4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E7F4;

  return sub_25F57F30C(a1, a2, v6);
}

uint64_t sub_25F57FC70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F57FC90, 0, 0);
}

uint64_t sub_25F57FC90()
{
  v1 = v0[3];
  v2 = *(v1 + 26);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F57DE74;
  v5 = v0[2];

  return sub_25F5A1F60(v5, v2, &unk_25F5E77C8, v3);
}

uint64_t sub_25F57FD78@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_281E8DB98;
  *a1 = off_281E8DB90;
  a1[1] = v2;
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_25F57FDE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_25F57FE28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F57FEA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25F57FEEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F57FF60()
{
  result = qword_27FD9DE58;
  if (!qword_27FD9DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE58);
  }

  return result;
}

unint64_t sub_25F57FFB8()
{
  result = qword_27FD9DE60;
  if (!qword_27FD9DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE60);
  }

  return result;
}

unint64_t sub_25F580010()
{
  result = qword_27FD9DE68;
  if (!qword_27FD9DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE68);
  }

  return result;
}

uint64_t sub_25F580064(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B7475706E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B74757074756FLL && a2 == 0xEA00000000007379 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657265666E69 && a2 == 0xEF6769666E6F4365 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614665726F6E6769 && a2 == 0xEE00736572756C69)
  {

    return 3;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

uint64_t sub_25F5801E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E6F8;

  return sub_25F57F30C(a1, a2, v6);
}

uint64_t LLMInference.__allocating_init(config:)(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v16 = a1[2];
  v17 = *a1;
  v4 = a1[5];
  v15 = a1[7];
  v14 = *(a1 + 64);
  v13 = a1[9];
  v12 = *(a1 + 80);
  v11 = a1[11];
  v5 = *(a1 + 96);
  v6 = a1[13];
  v7 = *(a1 + 112);
  v8 = *(a1 + 48);
  v18[0] = a1[4];
  v3 = v18[0];
  v18[1] = v4;
  v19 = v8;
  type metadata accessor for LLMInference(0);
  v9 = swift_allocObject();

  sub_25F57B79C(v18[0], v4, v8);
  LLMInference.init(modelBundleID:usecaseId:promptConfig:topKSampling:nucleusSampling:temperature:seed:)(v17, v1, v16, v2, v18, v15, v14, v13, v12, v11, v5, v6, v7);

  sub_25F581A78(v3, v4, v8);
  return v9;
}

uint64_t sub_25F5803C8()
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    goto LABEL_6;
  }

  v1 = v0;
  v2 = sub_25F5E43C4();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, error);

  if (!v3)
  {

LABEL_6:
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v6 = sub_25F5E3FB4();
    __swift_project_value_buffer(v6, qword_27FD9EA20);
    v1 = sub_25F5E3F94();
    v7 = sub_25F5E47A4();
    if (os_log_type_enabled(v1, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_25F570AF8(0xD00000000000002CLL, 0x800000025F5EC380, &v16);
      _os_log_impl(&dword_25F56A000, v1, v7, "No entitlement found for key: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x25F8E3B70](v9, -1, -1);
      MEMORY[0x25F8E3B70](v8, -1, -1);
    }

    goto LABEL_15;
  }

  v16 = v3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  if (swift_dynamicCast())
  {
    v4 = sub_25F5D03B8(v15);
    swift_unknownObjectRelease();

    return v4;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v10 = sub_25F5E3FB4();
  __swift_project_value_buffer(v10, qword_27FD9EA20);
  v11 = sub_25F5E3F94();
  v12 = sub_25F5E47B4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_25F570AF8(0xD00000000000002CLL, 0x800000025F5EC380, &v16);
    _os_log_impl(&dword_25F56A000, v11, v12, "Entitlement %s is not an array of strings", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x25F8E3B70](v14, -1, -1);
    MEMORY[0x25F8E3B70](v13, -1, -1);
  }

  swift_unknownObjectRelease();
LABEL_15:

  return MEMORY[0x277D84FA0];
}

void sub_25F580714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[1] = a2;
  v26[0] = a1;
  sub_25F58C444();
  if ((sub_25F5E4874() & 1) == 0)
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v13 = sub_25F5E3FB4();
    __swift_project_value_buffer(v13, qword_27FD9EA20);
    v8 = sub_25F5E3F94();
    v14 = sub_25F5E4794();
    if (!os_log_type_enabled(v8, v14))
    {
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_25F56A000, v8, v14, "Passed bundle allowed check, on-device models allowed by default", v15, 2u);
    v12 = v15;
    goto LABEL_11;
  }

  v6 = sub_25F5803C8();
  if (sub_25F5D1280(a1, a2, v6))
  {

    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v7 = sub_25F5E3FB4();
    __swift_project_value_buffer(v7, qword_27FD9EA20);

    v8 = sub_25F5E3F94();
    v9 = sub_25F5E4794();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_25F570AF8(a1, a2, v26);
    _os_log_impl(&dword_25F56A000, v8, v9, "Passed bundle allowed check for model bundle %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x25F8E3B70](v11, -1, -1);
    v12 = v10;
LABEL_11:
    MEMORY[0x25F8E3B70](v12, -1, -1);
LABEL_12:

    return;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v16 = sub_25F5E3FB4();
  __swift_project_value_buffer(v16, qword_27FD9EA20);

  v17 = sub_25F5E3F94();
  v18 = sub_25F5E47B4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_25F570AF8(a1, a2, v26);
    *(v19 + 12) = 2080;
    v21 = sub_25F5E46F4();
    v23 = v22;

    v24 = sub_25F570AF8(v21, v23, v26);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_25F56A000, v17, v18, "Unauthorized server model bundle: %s. Allowed bundles: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8E3B70](v20, -1, -1);
    MEMORY[0x25F8E3B70](v19, -1, -1);
  }

  else
  {
  }

  sub_25F581FD8();
  swift_allocError();
  *v25 = 10;
  swift_willThrow();
}

uint64_t LLMInference.__allocating_init(modelBundleID:usecaseId:promptConfig:topKSampling:nucleusSampling:temperature:seed:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  v16 = swift_allocObject();
  LLMInference.init(modelBundleID:usecaseId:promptConfig:topKSampling:nucleusSampling:temperature:seed:)(a1, a2, a3, a4, a5, a6, a7 & 1, a8, a9 & 1, a10, a11 & 1, a12, a13 & 1);
  return v16;
}

uint64_t type metadata accessor for LLMInference(uint64_t a1)
{
  result = qword_27FD9DEC0;
  if (!qword_27FD9DEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *LLMInference.init(modelBundleID:usecaseId:promptConfig:topKSampling:nucleusSampling:temperature:seed:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  v141 = a4;
  v142 = a2;
  v130 = a8;
  v134 = a7;
  v136 = a6;
  v138 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v135 = &v124 - v17;
  v18 = sub_25F5E4444();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v132 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v131 = &v124 - v23;
  v24 = sub_25F5E3884();
  MEMORY[0x28223BE20](v24 - 8, v25);
  v133 = (&v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v124 - v29;
  v31 = sub_25F5E3AD4();
  v137 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31, v32);
  v35 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v124 - v37;
  v39 = *a5;
  v40 = *(a5 + 8);
  v41 = *(a5 + 16);
  v139 = a1;
  v42 = v142;
  v43 = v140;
  sub_25F580714(a1, v142, v44, v45);
  if (!v43)
  {
    LODWORD(v128) = v41;
    v126 = v30;
    v127 = v35;
    v140 = v39;
    v129 = v40;
    type metadata accessor for LLMInference(0);
    static LLMInference.getSessionConfig(modelBundleID:usecaseId:)(v139, v42, v138, v141, v38);

    sub_25F5E3864();
    swift_allocObject();
    v46 = sub_25F5E3854();
    v49 = sub_25F5E3844();
    v138 = 0;
    v141 = v31;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v50 = sub_25F5E3FB4();
    v51 = __swift_project_value_buffer(v50, qword_27FD9EA20);
    v52 = v49;
    v124 = v51;
    v53 = sub_25F5E3F94();
    v54 = sub_25F5E47A4();

    v55 = os_log_type_enabled(v53, v54);
    v56 = v140;
    if (v55)
    {
      v57 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v125 = v38;
      v58 = v56;
      v59 = v145;
      *v57 = 136315138;
      v144[0] = v52;
      sub_25F5E38A4();
      v60 = v52;
      v61 = sub_25F5E4474();
      v63 = sub_25F570AF8(v61, v62, &v145);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_25F56A000, v53, v54, "Model's resource information: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      v64 = v59;
      v56 = v58;
      v38 = v125;
      MEMORY[0x25F8E3B70](v64, -1, -1);
      MEMORY[0x25F8E3B70](v57, -1, -1);
    }

    v65 = sub_25F5E3894();
    if (!v65)
    {
      v67 = 0xE700000000000000;
      v71 = 0x6E776F6E6B6E75;
      goto LABEL_18;
    }

    v66 = v65;
    if (*(v65 + 16))
    {
      v67 = 0xE700000000000000;
      v68 = sub_25F5709C8(0x6E6F6973726576, 0xE700000000000000);
      if (v69)
      {
        v70 = (*(v66 + 56) + 16 * v68);
        v71 = *v70;
        v67 = v70[1];

LABEL_17:

LABEL_18:
        v72 = v128;
        v73 = (v143 + OBJC_IVAR____TtC8PriMLETL12LLMInference__modelVersion);
        *v73 = v71;
        v73[1] = v67;
        v74 = v127;
        if (v72 > 1)
        {
          v139 = v52;
          v81 = v137;
          if (v72 != 2)
          {
            v133 = v73;
            v128 = v46;

            v95 = OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate;
            v96 = sub_25F5E3D64();
            v47 = v143;
            (*(*(v96 - 8) + 56))(v143 + v95, 1, 1, v96);
            v97 = OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate;
            v98 = sub_25F5E4244();
            (*(*(v98 - 8) + 56))(v47 + v97, 1, 1, v98);
            sub_25F5E4424();
            v99 = v129;
            v100 = v138;
            v101 = sub_25F5E43B4();
            if (v100)
            {

              sub_25F581A78(v56, v99, 3u);
              (*(v81 + 8))(v38, v141);
              goto LABEL_43;
            }

            v114 = v101;
            v115 = v102;
            sub_25F581A78(v56, v99, 3u);
            v116 = (v47 + OBJC_IVAR____TtC8PriMLETL12LLMInference_systemPrompt);
            *v116 = v114;
            v116[1] = v115;
            v74 = v127;
LABEL_34:
            (*(v81 + 16))(v74, v38, v141);
            sub_25F5E39D4();
            swift_allocObject();
            *(v47 + 16) = sub_25F5E39C4();
            if (v134)
            {
              v117 = v135;
              if (a9)
              {
                (*(v81 + 8))(v38, v141);

                v118 = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
                v119 = sub_25F5E3A64();
                (*(*(v119 - 8) + 56))(v47 + v118, 1, 1, v119);
LABEL_41:
                v121 = v47 + OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature;
                *v121 = a10;
                *(v121 + 8) = a11 & 1;
                v122 = v47 + OBJC_IVAR____TtC8PriMLETL12LLMInference_seed;
                *v122 = a12;
                *(v122 + 8) = a13 & 1;
                return v47;
              }

              sub_25F5E3A44();
LABEL_40:

              (*(v81 + 8))(v38, v141);
              v120 = sub_25F5E3A64();
              (*(*(v120 - 8) + 56))(v117, 0, 1, v120);
              sub_25F57B86C(v117, v47 + OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);
              goto LABEL_41;
            }

            v117 = v135;
            if (a9)
            {
              sub_25F5E3A54();
              goto LABEL_40;
            }

            sub_25F581FD8();
            swift_allocError();
            *v123 = 5;
            swift_willThrow();

            (*(v81 + 8))(v38, v141);

LABEL_43:

            sub_25F57C148(v47 + OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
            sub_25F57C148(v47 + OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
            goto LABEL_4;
          }

          v82 = v129;

          v83 = v131;
          v84 = v138;
          sub_25F5E4214();
          if (!v84)
          {
            v128 = v46;
            sub_25F581A78(v56, v82, 2u);
            v103 = sub_25F5E4244();
            (*(*(v103 - 8) + 56))(v83, 0, 1, v103);
            v47 = v143;
            sub_25F57B86C(v83, v143 + OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
            v104 = OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate;
            v105 = sub_25F5E3D64();
            (*(*(v105 - 8) + 56))(v47 + v104, 1, 1, v105);
            v106 = (v47 + OBJC_IVAR____TtC8PriMLETL12LLMInference_systemPrompt);
            *v106 = 0;
            v106[1] = 0;
            goto LABEL_34;
          }

          sub_25F581A78(v56, v82, 2u);
          v47 = v143;
        }

        else
        {
          if (!v72)
          {
            v139 = v52;
            v128 = v46;

            v75 = OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate;
            v76 = sub_25F5E3D64();
            v47 = v143;
            (*(*(v76 - 8) + 56))(v143 + v75, 1, 1, v76);
            v77 = OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate;
            v78 = sub_25F5E4244();
            (*(*(v78 - 8) + 56))(v47 + v77, 1, 1, v78);
            v79 = (v47 + OBJC_IVAR____TtC8PriMLETL12LLMInference_systemPrompt);
            v80 = v129;
            *v79 = v56;
            v79[1] = v80;
            v81 = v137;
            goto LABEL_34;
          }

          v85 = v129;

          v86 = sub_25F5E3F94();
          v87 = sub_25F5E4794();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v125 = v38;
            v90 = v89;
            v145 = v89;
            *v88 = 136315138;
            *(v88 + 4) = sub_25F570AF8(v140, v85, &v145);
            _os_log_impl(&dword_25F56A000, v86, v87, "Using prompt_template_id=%s", v88, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v90);
            v91 = v90;
            v38 = v125;
            MEMORY[0x25F8E3B70](v91, -1, -1);
            MEMORY[0x25F8E3B70](v88, -1, -1);
          }

          v92 = v138;
          sub_25F5E3874();
          v74 = v127;
          if (!v92)
          {
            v139 = v52;
            v128 = v46;
            v107 = v140;
            v108 = v126;
            v109 = v129;
            sub_25F5E3D54();
            sub_25F581A78(v107, v109, 1u);
            v110 = sub_25F5E3D64();
            (*(*(v110 - 8) + 56))(v108, 0, 1, v110);
            v47 = v143;
            sub_25F57B86C(v108, v143 + OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
            v111 = OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate;
            v112 = sub_25F5E4244();
            (*(*(v112 - 8) + 56))(v47 + v111, 1, 1, v112);
            v113 = (v47 + OBJC_IVAR____TtC8PriMLETL12LLMInference_systemPrompt);
            *v113 = 0;
            v113[1] = 0;
            v81 = v137;
            goto LABEL_34;
          }

          v93 = v140;
          v94 = v129;
          sub_25F581A78(v140, v129, 1u);
          sub_25F581A78(v93, v94, 1u);

          v47 = v143;
          v81 = v137;
        }

        (*(v81 + 8))(v38, v141);

        goto LABEL_4;
      }
    }

    else
    {
      v67 = 0xE700000000000000;
    }

    v71 = 0x6E776F6E6B6E75;
    goto LABEL_17;
  }

  sub_25F581A78(v39, v40, v41);
  v47 = v143;
LABEL_4:
  type metadata accessor for LLMInference(0);
  swift_deallocPartialClassInstance();
  return v47;
}

uint64_t sub_25F581A78(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t static LLMInference.getSessionConfig(modelBundleID:usecaseId:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v38 = a4;
  v9 = sub_25F5E3A14();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEB0, qword_25F5E8200);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v35 - v13;
  v15 = sub_25F5E3A34();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  v36 = a1;
  sub_25F5E3A24();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_25F57C148(v14, &qword_27FD9DEB0, qword_25F5E8200);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v20 = sub_25F5E3FB4();
    __swift_project_value_buffer(v20, qword_27FD9EA20);

    v21 = sub_25F5E3F94();
    v22 = sub_25F5E47B4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_25F570AF8(v36, a2, &v39);
      _os_log_impl(&dword_25F56A000, v21, v22, "Failed to get model bundle %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x25F8E3B70](v24, -1, -1);
      MEMORY[0x25F8E3B70](v23, -1, -1);
    }

    sub_25F581FD8();
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  else
  {
    v35[1] = a3;
    (*(v16 + 32))(v19, v14, v15);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v35[2] = v5;
    v27 = sub_25F5E3FB4();
    __swift_project_value_buffer(v27, qword_27FD9EA20);

    v28 = sub_25F5E3F94();
    v29 = sub_25F5E4794();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_25F570AF8(v36, a2, &v39);
      _os_log_impl(&dword_25F56A000, v28, v29, "Using adapter %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x25F8E3B70](v31, -1, -1);
      MEMORY[0x25F8E3B70](v30, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEB8, &unk_25F5E7810);
    v32 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_25F5E5EE0;
    (*(v16 + 16))(v33 + v32, v19, v15);

    sub_25F5E3A04();
    v34 = [objc_opt_self() processInfo];
    [v34 processIdentifier];

    sub_25F5E3AC4();
    return (*(v16 + 8))(v19, v15);
  }
}

unint64_t sub_25F581FD8()
{
  result = qword_27FD9DEA8;
  if (!qword_27FD9DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DEA8);
  }

  return result;
}

uint64_t sub_25F58202C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference__modelVersion);

  return v1;
}

uint64_t sub_25F582068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[34] = a4;
  v5[35] = a5;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF78, &qword_25F5E7988);
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF80, &qword_25F5E7990);
  v5[39] = swift_task_alloc();
  v5[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF88, &qword_25F5E7998);
  v5[41] = swift_task_alloc();
  v7 = sub_25F5E3C64();
  v5[42] = v7;
  v5[43] = *(v7 - 8);
  v5[44] = swift_task_alloc();
  v8 = sub_25F5E3C84();
  v5[45] = v8;
  v5[46] = *(v8 - 8);
  v5[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF40, &unk_25F5E8580);
  v5[48] = swift_task_alloc();
  v9 = sub_25F5E3F84();
  v5[49] = v9;
  v5[50] = *(v9 - 8);
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  v5[53] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF48, &unk_25F5E7950);
  v5[54] = v10;
  v5[55] = *(v10 - 8);
  v5[56] = swift_task_alloc();
  v11 = sub_25F5E4144();
  v5[57] = v11;
  v5[58] = *(v11 - 8);
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F58241C, 0, 0);
}

uint64_t sub_25F58241C()
{
  v21 = *(v0 + 480);
  v22 = *(v0 + 472);
  v28 = *(v0 + 464);
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v25 = *(v0 + 440);
  v26 = *(v0 + 432);
  v24 = *(v0 + 424);
  v27 = *(v0 + 384);
  v23 = *(v0 + 280);
  v3 = *(v0 + 256);
  v19 = *(v0 + 264);
  v20 = *(v0 + 272);
  v4 = *(v0 + 248);
  sub_25F5E4154();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF90, &unk_25F5E79A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F5E77E0;
  strcpy((inited + 32), "system.message");
  *(inited + 47) = -18;
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = MEMORY[0x277D42D68];
  *(inited + 72) = v1;
  *(inited + 80) = v7;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
  sub_25F5E4154();

  strcpy((inited + 88), "user.message");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v8 = swift_task_alloc();
  *(v8 + 16) = v19;
  *(v8 + 24) = v20;
  *(inited + 128) = v1;
  *(inited + 136) = v7;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 104));
  sub_25F5E4154();

  sub_25F572340(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC70, &unk_25F5E68D0);
  swift_arrayDestroy();
  *(v0 + 496) = sub_25F58C3E0(&qword_27FD9DF98, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
  sub_25F5E4294();

  v9 = *(v28 + 8);
  *(v0 + 504) = v9;
  *(v0 + 512) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v22, v1);
  v10 = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
  *(v0 + 520) = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
  v11 = v23 + OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature;
  *(v0 + 528) = *(v23 + OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature);
  *(v0 + 628) = *(v11 + 8);
  v12 = v23 + OBJC_IVAR____TtC8PriMLETL12LLMInference_seed;
  *(v0 + 536) = *(v23 + OBJC_IVAR____TtC8PriMLETL12LLMInference_seed);
  *(v0 + 629) = *(v12 + 8);
  sub_25F573B94(v23 + v10, v24, &qword_27FD9DE70, &qword_25F5E77F0);
  sub_25F5E3AA4();
  sub_25F5E3A94();
  sub_25F5E3A74();
  sub_25F5E3A84();
  *(v0 + 624) = *MEMORY[0x277D0E548];
  v13 = *(v25 + 104);
  *(v0 + 544) = v13;
  *(v0 + 552) = (v25 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v13(v2);
  sub_25F5E4264();
  v14 = *(v25 + 8);
  *(v0 + 560) = v14;
  *(v0 + 568) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v2, v26);
  v9(v21, v1);
  v15 = sub_25F5E3F74();
  (*(*(v15 - 8) + 56))(v27, 1, 1, v15);
  sub_25F5E3F64();
  v16 = swift_task_alloc();
  *(v0 + 576) = v16;
  *v16 = v0;
  v16[1] = sub_25F5828EC;
  v17 = *(v0 + 312);

  return MEMORY[0x282166B60](v17, 0xD00000000000001CLL, 0x800000025F5EC360);
}

uint64_t sub_25F5828EC()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_25F583258;
  }

  else
  {
    v2 = sub_25F582A00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F582A00()
{
  v1 = *(v0 + 312);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFA0, &qword_25F5E79B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_25F57C148(v1, &qword_27FD9DF80, &qword_25F5E7990);
  }

  else
  {
    v35 = *(v0 + 560);
    v34 = *(v0 + 544);
    v33 = *(v0 + 624);
    v30 = *(v0 + 520);
    v41 = *(v0 + 504);
    v36 = *(v0 + 480);
    v37 = *(v0 + 488);
    v39 = *(v0 + 456);
    v40 = *(v0 + 464);
    v31 = *(v0 + 448);
    v32 = *(v0 + 432);
    v29 = *(v0 + 424);
    v24 = *(v0 + 408);
    v25 = *(v0 + 400);
    v26 = *(v0 + 392);
    v27 = *(v0 + 416);
    v22 = *(v0 + 376);
    v38 = *(v0 + 368);
    v3 = *(v0 + 360);
    v23 = *(v0 + 352);
    v4 = *(v0 + 344);
    v42 = *(v0 + 336);
    v21 = *(v2 + 48);
    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v28 = *(v0 + 280);
    v7 = *(v6 + 48);
    v8 = *(v38 + 32);
    v8(v5, v1, v3);
    v9 = *(v4 + 32);
    v9(v5 + v7, v1 + v21, v42);
    v10 = *(v6 + 48);
    v8(v22, v5, v3);
    v9(v23, v5 + v10, v42);
    sub_25F5E3C54();
    (*(v25 + 8))(v27, v26);
    (*(v25 + 32))(v27, v24, v26);
    v11 = MEMORY[0x277D84F90];
    sub_25F572474(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E5EE0;
    *(inited + 32) = 0xD0000000000000A0;
    *(inited + 40) = 0x800000025F5EC290;
    sub_25F573B94(v28 + v30, v29, &qword_27FD9DE70, &qword_25F5E77F0);
    sub_25F5E3AA4();
    sub_25F5E3A94();
    sub_25F5E3A74();
    sub_25F5E3A84();
    v34(v31, v33, v32);
    *(inited + 72) = sub_25F5E3AB4();
    __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    sub_25F5E3BB4();
    v35(v31, v32);
    sub_25F571A78(inited);
    swift_setDeallocating();
    sub_25F57C148(inited + 32, &qword_27FD9E6B0, &unk_25F5E85A0);
    sub_25F572340(v11);
    sub_25F5E3C44();

    (*(v4 + 8))(v23, v42);
    (*(v38 + 8))(v22, v3);
    v41(v37, v39);
    (*(v40 + 32))(v37, v36, v39);
  }

  v13 = *(v0 + 504);
  v14 = *(v0 + 480);
  v15 = *(v0 + 456);
  v16 = *(v0 + 280);
  sub_25F5E4254();
  *(v0 + 240) = *(v16 + 16);
  sub_25F5E39D4();
  sub_25F5E4274();
  v13(v14, v15);
  v17 = swift_task_alloc();
  *(v0 + 592) = v17;
  v18 = sub_25F58C3E0(&qword_27FD9DFA8, MEMORY[0x277D71A98], MEMORY[0x277D71A40]);
  *v17 = v0;
  v17[1] = sub_25F582F80;
  v19 = *(v0 + 288);

  return MEMORY[0x282165A78](v19, v18);
}

uint64_t sub_25F582F80(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[75] = v2;

  v7 = v6[38];
  v8 = v6[37];
  v9 = v6[36];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_25F5833A0;
  }

  else
  {
    v6[76] = a2;
    v6[77] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_25F583110;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25F583110()
{
  v1 = v0[63];
  v2 = v0[61];
  v3 = v0[57];
  (*(v0[50] + 8))(v0[52], v0[49]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[77];
  v6 = v0[76];

  return v4(v5, v6);
}

uint64_t sub_25F583258()
{
  v1 = v0[63];
  v2 = v0[61];
  v3 = v0[57];
  (*(v0[50] + 8))(v0[52], v0[49]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F5833A0()
{
  v1 = v0[63];
  v2 = v0[61];
  v3 = v0[57];
  (*(v0[50] + 8))(v0[52], v0[49]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F5834E8@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = sub_25F5E4194();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F5E4144();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v22[0] = v22 - v13;
  sub_25F5E4184();
  sub_25F5E4174();
  v14 = *(v2 + 8);
  v14(v5, v1);
  sub_25F5E4184();
  sub_25F5E4174();
  v14(v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFB0, &qword_25F5E79B8);
  v15 = *(v7 + 72);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25F5E77E0;
  v18 = *(v7 + 16);
  v19 = v22[0];
  v18(v17 + v16, v22[0], v6);
  v18(v17 + v16 + v15, v11, v6);
  MEMORY[0x25F8E2820](v17);

  v20 = *(v7 + 8);
  v20(v11, v6);
  return (v20)(v19, v6);
}

uint64_t sub_25F5837C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, _BYTE *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v22 = a2;
  v29 = a7;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21 - v11;
  v13 = sub_25F5E4144();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v28 = v22;
  v24(v23, v26);
  sub_25F5E4174();
  (*(v9 + 8))(v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFB0, &qword_25F5E79B8);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25F5E5EE0;
  (*(v14 + 16))(v19 + v18, v17, v13);
  MEMORY[0x25F8E2820](v19);

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_25F5839F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5E4244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = MEMORY[0x277D42EC0];
  v14[0] = a1;
  v14[1] = a2;

  v9 = MEMORY[0x277D42E18];
  sub_25F5E41D4();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25F5E5EE0;
  (*(v5 + 16))(v11 + v10, v8, v4);
  MEMORY[0x25F8E2880](v11, v4, v9);

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25F583BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF28, &unk_25F5E7930);
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF30, &unk_25F5E8570);
  v3[30] = swift_task_alloc();
  v3[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF38, &unk_25F5E7940);
  v3[32] = swift_task_alloc();
  v5 = sub_25F5E3C64();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v6 = sub_25F5E3C74();
  v3[36] = v6;
  v3[37] = *(v6 - 8);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF40, &unk_25F5E8580);
  v3[39] = swift_task_alloc();
  v7 = sub_25F5E3F84();
  v3[40] = v7;
  v3[41] = *(v7 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  v3[44] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF48, &unk_25F5E7950);
  v3[45] = v8;
  v3[46] = *(v8 - 8);
  v3[47] = swift_task_alloc();
  v9 = sub_25F5E4114();
  v3[48] = v9;
  v3[49] = *(v9 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F583F60, 0, 0);
}

uint64_t sub_25F583F60()
{
  v1 = *(v0 + 400);
  v19 = *(v0 + 392);
  v21 = *(v0 + 408);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);
  v22 = *(v0 + 360);
  v18 = *(v0 + 352);
  v23 = *(v0 + 312);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  *(swift_task_alloc() + 16) = v7;
  sub_25F5E4134();

  sub_25F584F90(v6);
  *(v0 + 424) = sub_25F58C3E0(&qword_27FD9DF18, MEMORY[0x277D42D40], MEMORY[0x277D42D38]);
  sub_25F5E4284();

  v8 = v19 + 8;
  v20 = *(v19 + 8);
  *(v0 + 432) = v20;
  *(v0 + 440) = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v1, v2);
  v9 = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
  *(v0 + 448) = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
  v10 = v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature;
  *(v0 + 456) = *(v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature);
  *(v0 + 556) = *(v10 + 8);
  v11 = v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_seed;
  *(v0 + 464) = *(v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_seed);
  *(v0 + 557) = *(v11 + 8);
  sub_25F573B94(v5 + v9, v18, &qword_27FD9DE70, &qword_25F5E77F0);
  sub_25F5E3AA4();
  sub_25F5E3A94();
  sub_25F5E3A74();
  sub_25F5E3A84();
  *(v0 + 552) = *MEMORY[0x277D0E548];
  v12 = *(v4 + 104);
  *(v0 + 472) = v12;
  *(v0 + 480) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v3);
  sub_25F5E4264();
  v13 = *(v4 + 8);
  *(v0 + 488) = v13;
  *(v0 + 496) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v22);
  v20(v21, v2);
  v14 = sub_25F5E3F74();
  (*(*(v14 - 8) + 56))(v23, 1, 1, v14);
  sub_25F5E3F64();
  v15 = swift_task_alloc();
  *(v0 + 504) = v15;
  *v15 = v0;
  v15[1] = sub_25F5842F8;
  v16 = *(v0 + 240);

  return MEMORY[0x282166B58](v16, 0xD00000000000001CLL, 0x800000025F5EC270);
}

uint64_t sub_25F5842F8()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_25F584D10;
  }

  else
  {
    v2 = sub_25F58440C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F58440C()
{
  v1 = *(v0 + 240);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF50, &unk_25F5E8590);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_25F57C148(v1, &qword_27FD9DF30, &unk_25F5E8570);
  }

  else
  {
    v38 = *(v0 + 488);
    v36 = *(v0 + 552);
    v37 = *(v0 + 472);
    v33 = *(v0 + 448);
    v44 = *(v0 + 432);
    v40 = *(v0 + 408);
    v41 = *(v0 + 416);
    v42 = *(v0 + 384);
    v43 = *(v0 + 392);
    v34 = *(v0 + 376);
    v35 = *(v0 + 360);
    v32 = *(v0 + 352);
    v26 = *(v0 + 336);
    v27 = *(v0 + 328);
    v28 = *(v0 + 320);
    v29 = *(v0 + 344);
    v45 = *(v0 + 304);
    v39 = *(v0 + 296);
    v3 = *(v0 + 288);
    v25 = *(v0 + 280);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 248);
    v7 = *(v0 + 256);
    v30 = *(v0 + 192);
    v31 = *(v0 + 208);
    v23 = *(v6 + 48);
    v24 = *(v2 + 48);
    v8 = *(v39 + 32);
    v8(v7, v1, v3);
    v9 = *(v4 + 32);
    v9(v7 + v23, v1 + v24, v5);
    v10 = *(v6 + 48);
    v8(v45, v7, v3);
    v9(v25, v7 + v10, v5);
    sub_25F5E3C54();
    (*(v27 + 8))(v29, v28);
    (*(v27 + 32))(v29, v26, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF60, &unk_25F5E7960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E5EE0;
    *(inited + 32) = 0x6574616C706D6574;
    *(inited + 40) = 0xE800000000000000;
    v12 = sub_25F5E3D64();
    *(inited + 72) = v12;
    *(inited + 80) = sub_25F58C3E0(&qword_27FD9DF68, MEMORY[0x277D0E698], MEMORY[0x277D0E680]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v30, v12);
    sub_25F572474(inited);
    swift_setDeallocating();
    sub_25F57C148(inited + 32, &qword_27FD9DC60, &qword_25F5E68C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_25F5E5EE0;
    *(v14 + 32) = 0xD0000000000000A0;
    *(v14 + 40) = 0x800000025F5EC290;
    sub_25F573B94(v31 + v33, v32, &qword_27FD9DE70, &qword_25F5E77F0);
    sub_25F5E3AA4();
    sub_25F5E3A94();
    sub_25F5E3A74();
    sub_25F5E3A84();
    v37(v34, v36, v35);
    *(v14 + 72) = sub_25F5E3AB4();
    __swift_allocate_boxed_opaque_existential_1Tm((v14 + 48));
    sub_25F5E3BB4();
    v38(v34, v35);
    sub_25F571A78(v14);
    swift_setDeallocating();
    sub_25F57C148(v14 + 32, &qword_27FD9E6B0, &unk_25F5E85A0);
    sub_25F5E3C34();

    (*(v4 + 8))(v25, v5);
    (*(v39 + 8))(v45, v3);
    v44(v41, v42);
    (*(v43 + 32))(v41, v40, v42);
  }

  v15 = *(v0 + 432);
  v16 = *(v0 + 408);
  v17 = *(v0 + 384);
  v18 = *(v0 + 208);
  sub_25F5E4254();
  *(v0 + 184) = *(v18 + 16);
  sub_25F5E39D4();
  sub_25F5E4274();
  v15(v16, v17);
  v19 = swift_task_alloc();
  *(v0 + 520) = v19;
  v20 = sub_25F58C3E0(&qword_27FD9DF58, MEMORY[0x277D71A98], MEMORY[0x277D71A48]);
  *v19 = v0;
  v19[1] = sub_25F584A38;
  v21 = *(v0 + 216);

  return MEMORY[0x282165A58](v21, v20);
}

uint64_t sub_25F584A38(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[66] = v2;

  v7 = v6[29];
  v8 = v6[28];
  v9 = v6[27];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_25F584E50;
  }

  else
  {
    v6[67] = a2;
    v6[68] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_25F584BC8;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25F584BC8()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[48];
  (*(v0[41] + 8))(v0[43], v0[40]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[68];
  v6 = v0[67];

  return v4(v5, v6);
}

uint64_t sub_25F584D10()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[48];
  (*(v0[41] + 8))(v0[43], v0[40]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F584E50()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[48];
  (*(v0[41] + 8))(v0[43], v0[40]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

unint64_t sub_25F584F90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC58, &qword_25F5E7200);
    v2 = sub_25F5E49F4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = (*(a1 + 56) + v14);
        v19 = *v18;
        v20 = v18[1];
        v27 = MEMORY[0x277D837D0];
        v28 = MEMORY[0x277D42EC0];
        *&v26 = v19;
        *(&v26 + 1) = v20;
        sub_25F573C54(&v26, v30);
        sub_25F573C54(v30, v31);
        sub_25F573C54(v31, &v29);

        result = sub_25F5709C8(v17, v16);
        if (v21)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 40 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_25F573C54(&v29, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v2[6] + 16 * result);
          *v22 = v17;
          v22[1] = v16;
          result = sub_25F573C54(&v29, v2[7] + 40 * result);
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25F5851EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF28, &unk_25F5E7930);
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF30, &unk_25F5E8570);
  v3[30] = swift_task_alloc();
  v3[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF38, &unk_25F5E7940);
  v3[32] = swift_task_alloc();
  v5 = sub_25F5E3C64();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v6 = sub_25F5E3C74();
  v3[36] = v6;
  v3[37] = *(v6 - 8);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF40, &unk_25F5E8580);
  v3[39] = swift_task_alloc();
  v7 = sub_25F5E3F84();
  v3[40] = v7;
  v3[41] = *(v7 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  v3[44] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF48, &unk_25F5E7950);
  v3[45] = v8;
  v3[46] = *(v8 - 8);
  v3[47] = swift_task_alloc();
  v9 = sub_25F5E4114();
  v3[48] = v9;
  v3[49] = *(v9 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F58559C, 0, 0);
}

uint64_t sub_25F58559C()
{
  v1 = *(v0 + 400);
  v19 = *(v0 + 392);
  v21 = *(v0 + 408);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);
  v22 = *(v0 + 360);
  v18 = *(v0 + 352);
  v23 = *(v0 + 312);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  *(swift_task_alloc() + 16) = v7;
  sub_25F5E4134();

  sub_25F584F90(v6);
  *(v0 + 424) = sub_25F58C3E0(&qword_27FD9DF18, MEMORY[0x277D42D40], MEMORY[0x277D42D38]);
  sub_25F5E4284();

  v8 = v19 + 8;
  v20 = *(v19 + 8);
  *(v0 + 432) = v20;
  *(v0 + 440) = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v1, v2);
  v9 = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
  *(v0 + 448) = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
  v10 = v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature;
  *(v0 + 456) = *(v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature);
  *(v0 + 556) = *(v10 + 8);
  v11 = v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_seed;
  *(v0 + 464) = *(v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_seed);
  *(v0 + 557) = *(v11 + 8);
  sub_25F573B94(v5 + v9, v18, &qword_27FD9DE70, &qword_25F5E77F0);
  sub_25F5E3AA4();
  sub_25F5E3A94();
  sub_25F5E3A74();
  sub_25F5E3A84();
  *(v0 + 552) = *MEMORY[0x277D0E548];
  v12 = *(v4 + 104);
  *(v0 + 472) = v12;
  *(v0 + 480) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v3);
  sub_25F5E4264();
  v13 = *(v4 + 8);
  *(v0 + 488) = v13;
  *(v0 + 496) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v22);
  v20(v21, v2);
  v14 = sub_25F5E3F74();
  (*(*(v14 - 8) + 56))(v23, 1, 1, v14);
  sub_25F5E3F64();
  v15 = swift_task_alloc();
  *(v0 + 504) = v15;
  *v15 = v0;
  v15[1] = sub_25F585934;
  v16 = *(v0 + 240);

  return MEMORY[0x282166B58](v16, 0xD00000000000001CLL, 0x800000025F5EC340);
}

uint64_t sub_25F585934()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_25F58C4C8;
  }

  else
  {
    v2 = sub_25F585A48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F585A48()
{
  v1 = *(v0 + 240);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF50, &unk_25F5E8590);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_25F57C148(v1, &qword_27FD9DF30, &unk_25F5E8570);
  }

  else
  {
    v39 = *(v0 + 488);
    v37 = *(v0 + 552);
    v38 = *(v0 + 472);
    v34 = *(v0 + 448);
    v45 = *(v0 + 432);
    v41 = *(v0 + 408);
    v42 = *(v0 + 416);
    v43 = *(v0 + 384);
    v44 = *(v0 + 392);
    v35 = *(v0 + 376);
    v36 = *(v0 + 360);
    v33 = *(v0 + 352);
    v27 = *(v0 + 336);
    v28 = *(v0 + 328);
    v29 = *(v0 + 320);
    v30 = *(v0 + 344);
    v46 = *(v0 + 304);
    v40 = *(v0 + 296);
    v3 = *(v0 + 288);
    v26 = *(v0 + 280);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 248);
    v7 = *(v0 + 256);
    v31 = *(v0 + 192);
    v32 = *(v0 + 208);
    v24 = *(v6 + 48);
    v25 = *(v2 + 48);
    v8 = *(v40 + 32);
    v8(v7, v1, v3);
    v9 = *(v4 + 32);
    v9(v7 + v24, v1 + v25, v5);
    v10 = *(v6 + 48);
    v8(v46, v7, v3);
    v9(v26, v7 + v10, v5);
    sub_25F5E3C54();
    (*(v28 + 8))(v30, v29);
    (*(v28 + 32))(v30, v27, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF60, &unk_25F5E7960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E5EE0;
    *(inited + 32) = 0x74706D6F7270;
    *(inited + 40) = 0xE600000000000000;
    v12 = sub_25F5E4244();
    v13 = MEMORY[0x277D42E20];
    *(inited + 72) = v12;
    *(inited + 80) = v13;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v31, v12);
    sub_25F572474(inited);
    swift_setDeallocating();
    sub_25F57C148(inited + 32, &qword_27FD9DC60, &qword_25F5E68C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_25F5E5EE0;
    *(v15 + 32) = 0xD0000000000000A0;
    *(v15 + 40) = 0x800000025F5EC290;
    sub_25F573B94(v32 + v34, v33, &qword_27FD9DE70, &qword_25F5E77F0);
    sub_25F5E3AA4();
    sub_25F5E3A94();
    sub_25F5E3A74();
    sub_25F5E3A84();
    v38(v35, v37, v36);
    *(v15 + 72) = sub_25F5E3AB4();
    __swift_allocate_boxed_opaque_existential_1Tm((v15 + 48));
    sub_25F5E3BB4();
    v39(v35, v36);
    sub_25F571A78(v15);
    swift_setDeallocating();
    sub_25F57C148(v15 + 32, &qword_27FD9E6B0, &unk_25F5E85A0);
    sub_25F5E3C34();

    (*(v4 + 8))(v26, v5);
    (*(v40 + 8))(v46, v3);
    v45(v42, v43);
    (*(v44 + 32))(v42, v41, v43);
  }

  v16 = *(v0 + 432);
  v17 = *(v0 + 408);
  v18 = *(v0 + 384);
  v19 = *(v0 + 208);
  sub_25F5E4254();
  *(v0 + 184) = *(v19 + 16);
  sub_25F5E39D4();
  sub_25F5E4274();
  v16(v17, v18);
  v20 = swift_task_alloc();
  *(v0 + 520) = v20;
  v21 = sub_25F58C3E0(&qword_27FD9DF58, MEMORY[0x277D71A98], MEMORY[0x277D71A48]);
  *v20 = v0;
  v20[1] = sub_25F586040;
  v22 = *(v0 + 216);

  return MEMORY[0x282165A58](v22, v21);
}

uint64_t sub_25F586040(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[66] = v2;

  v7 = v6[29];
  v8 = v6[28];
  v9 = v6[27];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_25F58C4CC;
  }

  else
  {
    v6[67] = a2;
    v6[68] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_25F58C4DC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25F5861D0(uint64_t a1)
{
  v1 = sub_25F5E4244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D42E18];
  sub_25F5E41E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25F5E5EE0;
  (*(v2 + 16))(v8 + v7, v5, v1);
  MEMORY[0x25F8E2880](v8, v1, v6);

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_25F586358(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25F58637C, 0, 0);
}

uint64_t sub_25F58637C()
{

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_25F586428;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_25F589700(v3, v4, v2);
}

uint64_t sub_25F586428(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_25F586538(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F586558, 0, 0);
}

uint64_t sub_25F586558()
{

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_25F586600;
  v2 = v0[2];
  v3 = v0[3];

  return sub_25F588334(v3, v2);
}

uint64_t sub_25F586600(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_25F586710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_25F5E4114();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = sub_25F5E41B4();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8);
  v3[16] = swift_task_alloc();
  v6 = sub_25F5E4244();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800);
  v3[21] = swift_task_alloc();
  v7 = sub_25F5E3D64();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F586988, 0, 0);
}

uint64_t sub_25F586988()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  sub_25F573B94(v0[5] + OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate, v3, &qword_27FD9DE80, &unk_25F5E7800);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[17];
    v5 = v0[18];
    v6 = v0[16];
    v7 = v0[5];
    sub_25F57C148(v0[21], &qword_27FD9DE80, &unk_25F5E7800);
    sub_25F573B94(v7 + OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate, v6, &qword_27FD9DE78, &qword_25F5E77F8);
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      sub_25F57C148(v0[16], &qword_27FD9DE78, &qword_25F5E77F8);
      sub_25F581FD8();
      swift_allocError();
      *v8 = 7;
      swift_willThrow();

      v9 = v0[1];

      return v9();
    }

    v24 = v0[19];
    v23 = v0[20];
    v25 = v0[17];
    v26 = v0[18];
    v27 = v0[10];
    v28 = v0[7];
    v29 = v0[8];
    v30 = v0[6];
    v33 = v0[5];
    (*(v26 + 32))(v23, v0[16], v25);
    (*(v26 + 16))(v24, v23, v25);
    sub_25F5E4124();
    sub_25F584F90(v30);
    sub_25F58C3E0(&qword_27FD9DF18, MEMORY[0x277D42D40], MEMORY[0x277D42D38]);
    sub_25F5E4284();

    v31 = *(v29 + 8);
    v0[33] = v31;
    v0[34] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v27, v28);
    v0[2] = *(v33 + 16);
    v18 = v0 + 2;
    v32 = swift_task_alloc();
    v0[35] = v32;
    v20 = sub_25F5E39D4();
    v21 = sub_25F58C3E0(&qword_27FD9DF20, MEMORY[0x277D71A98], MEMORY[0x277D71A78]);
    *v32 = v0;
    v32[1] = sub_25F587534;
    v22 = v0[14];
  }

  else
  {
    v11 = v0[24];
    v12 = v0[10];
    v13 = v0[7];
    v14 = v0[8];
    v16 = v0[5];
    v15 = v0[6];
    (*(v0[23] + 32))(v11, v0[21], v0[22]);
    *(swift_task_alloc() + 16) = v11;
    sub_25F5E4134();

    sub_25F584F90(v15);
    sub_25F58C3E0(&qword_27FD9DF18, MEMORY[0x277D42D40], MEMORY[0x277D42D38]);
    sub_25F5E4284();

    v17 = *(v14 + 8);
    v0[25] = v17;
    v0[26] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v12, v13);
    v0[3] = *(v16 + 16);
    v18 = v0 + 3;
    v19 = swift_task_alloc();
    v0[27] = v19;
    v20 = sub_25F5E39D4();
    v21 = sub_25F58C3E0(&qword_27FD9DF20, MEMORY[0x277D71A98], MEMORY[0x277D71A78]);
    *v19 = v0;
    v19[1] = sub_25F586EBC;
    v22 = v0[15];
  }

  return MEMORY[0x282165AC8](v22, v18, v20, v21);
}

uint64_t sub_25F586EBC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  (*(v2 + 200))(*(v2 + 88), *(v2 + 56));
  if (v0)
  {
    v3 = sub_25F587BAC;
  }

  else
  {
    v3 = sub_25F586FF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F586FF0()
{
  v19 = v0;
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = sub_25F5E41A4();
  v6 = v5;
  (*(v3 + 8))(v1, v2);
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v7 = sub_25F5E3FB4();
  __swift_project_value_buffer(v7, qword_27FD9EA20);

  v8 = sub_25F5E3F94();
  v9 = sub_25F5E4794();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = sub_25F570AF8(v4, v6, &v18);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_25F56A000, v8, v9, "Initialized with prompt template: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x25F8E3B70](v11, -1, -1);
    MEMORY[0x25F8E3B70](v10, -1, -1);
  }

  else
  {
  }

  v13 = swift_task_alloc();
  v0[29] = v13;
  *v13 = v0;
  v13[1] = sub_25F5871F4;
  v14 = v0[24];
  v16 = v0[5];
  v15 = v0[6];

  return sub_25F583BB0(v14, v15, v16);
}

uint64_t sub_25F5871F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 240) = v2;

  if (v2)
  {
    v7 = sub_25F587430;
  }

  else
  {
    *(v6 + 248) = a2;
    *(v6 + 256) = a1;
    v7 = sub_25F587328;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F587328()
{
  v1 = v0[31];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[4];
  *v5 = v0[32];
  v5[1] = v1;
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F587430()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F587534()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2 + 264))(*(v2 + 72), *(v2 + 56));
  if (v0)
  {
    v3 = sub_25F587CB0;
  }

  else
  {
    v3 = sub_25F587668;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F587668()
{
  v19 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = sub_25F5E41A4();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v7 = sub_25F5E3FB4();
  __swift_project_value_buffer(v7, qword_27FD9EA20);

  v8 = sub_25F5E3F94();
  v9 = sub_25F5E4794();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = sub_25F570AF8(v4, v6, &v18);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_25F56A000, v8, v9, "Initialized with parsed prompt template: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x25F8E3B70](v11, -1, -1);
    MEMORY[0x25F8E3B70](v10, -1, -1);
  }

  else
  {
  }

  v13 = swift_task_alloc();
  v0[37] = v13;
  *v13 = v0;
  v13[1] = sub_25F58786C;
  v14 = v0[20];
  v16 = v0[5];
  v15 = v0[6];

  return sub_25F5851EC(v14, v15, v16);
}

uint64_t sub_25F58786C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 304) = v2;

  if (v2)
  {
    v7 = sub_25F587AA8;
  }

  else
  {
    *(v6 + 312) = a2;
    *(v6 + 320) = a1;
    v7 = sub_25F5879A0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F5879A0()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[4];
  (*(v0[18] + 8))(v0[20], v0[17]);
  *v3 = v2;
  v3[1] = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F587AA8()
{
  (*(v0[18] + 8))(v0[20], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F587BAC()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F587CB0()
{
  (*(v0[18] + 8))(v0[20], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F587DB4(uint64_t a1)
{
  v2 = sub_25F5E4244();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F5E3D64();
  v14[3] = v7;
  v14[4] = sub_25F58C3E0(&qword_27FD9DF68, MEMORY[0x277D0E698], MEMORY[0x277D0E680]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v14);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v7);
  v9 = MEMORY[0x277D42E18];
  sub_25F5E41D4();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25F5E5EE0;
  (*(v3 + 16))(v11 + v10, v6, v2);
  MEMORY[0x25F8E2880](v11, v2, v9);

  return (*(v3 + 8))(v6, v2);
}

uint64_t LLMInference.deinit()
{

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
  return v0;
}

uint64_t LLMInference.__deallocating_deinit()
{

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);

  return swift_deallocClassInstance();
}

uint64_t sub_25F588154()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference__modelVersion);

  return v1;
}

uint64_t sub_25F588194(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25F5881BC, 0, 0);
}

uint64_t sub_25F5881BC()
{

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_25F58C4D0;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_25F589700(v3, v4, v2);
}

uint64_t sub_25F588268(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25F58828C, 0, 0);
}

uint64_t sub_25F58828C()
{

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_25F58C4D4;
  v2 = v0[2];
  v3 = v0[3];

  return sub_25F588334(v3, v2);
}

uint64_t sub_25F588334(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v5 = sub_25F5E3D44();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = sub_25F5E39F4();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = sub_25F5E3CC4();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v8 = sub_25F5E3F54();
  v2[30] = v8;
  v2[31] = *(v8 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[36] = v9;
  *v9 = v2;
  v9[1] = sub_25F5885CC;

  return sub_25F586710((v2 + 5), a1, a2);
}

uint64_t sub_25F5885CC()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_25F588814;
  }

  else
  {
    v2 = sub_25F5886E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F5886E0()
{

  v3 = v0[6];
  v4 = v0[5];

  v1 = v0[1];

  return v1(v4, v3);
}

uint64_t sub_25F588814()
{
  v152 = v0;
  v1 = v0;
  isa = v0[37].isa;
  v0[7].isa = isa;
  v3 = isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  v4 = swift_dynamicCast();
  v5 = v0[37].isa;
  if (v4)
  {
    v6 = v0[34].isa;
    v7 = v0[35].isa;
    v9 = v0[30].isa;
    v8 = v0[31].isa;

    (*(v8 + 4))(v6, v7, v9);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v10 = v1[33].isa;
    v11 = v1[34].isa;
    v13 = v1[31].isa;
    v12 = v1[32].isa;
    v14 = v1[30].isa;
    v15 = sub_25F5E3FB4();
    __swift_project_value_buffer(v15, qword_27FD9EA20);
    v16 = *(v13 + 2);
    v16(v10, v11, v14);
    v16(v12, v11, v14);
    v17 = sub_25F5E3F94();
    v18 = sub_25F5E47B4();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v1[32].isa;
    v21 = v1[33].isa;
    v22 = v1[30].isa;
    v23 = v1[31].isa;
    if (v19)
    {
      v24 = swift_slowAlloc();
      logc = v17;
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      sub_25F58C3E0(&qword_27FD9DF10, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      swift_allocError();
      v145 = v18;
      v26 = v1;
      v16(v27, v21, v22);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = *(v23 + 1);
      v29(v21, v22);
      *(v24 + 4) = v28;
      *v25 = v28;
      v1 = v26;
      *(v24 + 12) = 2048;
      v30 = sub_25F5E3F44();
      v29(v20, v22);
      *(v24 + 14) = v30;
      _os_log_impl(&dword_25F56A000, logc, v145, "Failed to complete chat, type=GenerativeError, reason=%@, code=%ld", v24, 0x16u);
      sub_25F57C148(v25, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v25, -1, -1);
      MEMORY[0x25F8E3B70](v24, -1, -1);
    }

    else
    {
      v29 = *(v23 + 1);
      v29(v1[32].isa, v1[30].isa);

      v29(v21, v22);
    }

    v59 = v1[34].isa;
    v60 = v1[30].isa;
    v61 = sub_25F58DD74(v59);
    sub_25F581FD8();
    swift_allocError();
    *v62 = v61;
    swift_willThrow();
    v29(v59, v60);

    goto LABEL_39;
  }

  v0[8].isa = v5;
  v31 = v5;
  v32 = swift_dynamicCast();
  v33 = v0[37].isa;
  if (v32)
  {
    v35 = v0[28].isa;
    v34 = v1[29].isa;
    v36 = v1[24].isa;
    v37 = v1[25].isa;

    (*(v37 + 4))(v35, v34, v36);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v39 = v1[27].isa;
    v38 = v1[28].isa;
    v40 = v1;
    v43 = v1 + 25;
    v42 = v1[25].isa;
    v41 = v43[1].isa;
    v44 = v40[24].isa;
    v45 = sub_25F5E3FB4();
    __swift_project_value_buffer(v45, qword_27FD9EA20);
    v46 = *(v42 + 2);
    v46(v39, v38, v44);
    v46(v41, v38, v44);
    v47 = sub_25F5E3F94();
    v48 = sub_25F5E47B4();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v40[26].isa;
    v51 = v40[27].isa;
    log = v40;
    v54 = v40 + 24;
    v52 = v40[24].isa;
    v53 = v54[1].isa;
    if (v49)
    {
      v55 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      *v55 = 138412546;
      sub_25F58C3E0(&qword_27FD9DF08, MEMORY[0x277D29D58], MEMORY[0x277D29D60]);
      swift_allocError();
      v46(v56, v51, v52);
      v57 = _swift_stdlib_bridgeErrorToNSError();
      v1 = *(v53 + 1);
      (v1)(v51, v52);
      *(v55 + 4) = v57;
      *v146 = v57;
      *(v55 + 12) = 2048;
      v58 = sub_25F5E3CB4();
      (v1)(v50, v52);
      *(v55 + 14) = v58;
      _os_log_impl(&dword_25F56A000, v47, v48, "Failed to complete chat, type=ModelManagerError, reason=%@, code=%ld", v55, 0x16u);
      sub_25F57C148(v146, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v146, -1, -1);
      MEMORY[0x25F8E3B70](v55, -1, -1);
    }

    else
    {
      v1 = *(v53 + 1);
      (v1)(v50, v52);

      (v1)(v51, v52);
    }

    v88 = sub_25F5E3CB4();
    v89 = v88 - 1000;
    if (__OFSUB__(v88, 1000))
    {
      __break(1u);
    }

    else
    {
      v90 = v88 + 19100;
      if (!__OFADD__(v89, 20100))
      {
        v91 = log[28].isa;
        v92 = log[24].isa;
        v93 = sub_25F58E04C(v90);
        if (v93 == 89)
        {
          v94 = 50;
        }

        else
        {
          v94 = v93;
        }

        sub_25F581FD8();
        swift_allocError();
        *v95 = v94;
        swift_willThrow();
        (v1)(v91, v92);
        v1 = log;
        v96 = log[8].isa;
LABEL_38:

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v0[9].isa = v33;
  v63 = v33;
  v64 = swift_dynamicCast();
  v65 = v0[37].isa;
  if (v64)
  {
    v67 = v0[22].isa;
    v66 = v1[23].isa;
    v68 = v1[19].isa;
    v69 = v1[20].isa;

    (*(v69 + 4))(v67, v66, v68);
    if (qword_27FD9D8B0 == -1)
    {
LABEL_15:
      v71 = v1[21].isa;
      v70 = v1[22].isa;
      v72 = v1[19].isa;
      v73 = v1[20].isa;
      v74 = sub_25F5E3FB4();
      __swift_project_value_buffer(v74, qword_27FD9EA20);
      v75 = v1;
      v76 = *(v73 + 2);
      v76(v71, v70, v72);
      v77 = sub_25F5E3F94();
      v78 = sub_25F5E47B4();
      v79 = os_log_type_enabled(v77, v78);
      v81 = v75[20].isa;
      v80 = v75[21].isa;
      loga = v75;
      v82 = v75[19].isa;
      if (v79)
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v83 = 138412290;
        sub_25F58C3E0(&qword_27FD9DF00, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
        swift_allocError();
        v76(v85, v80, v82);
        v86 = _swift_stdlib_bridgeErrorToNSError();
        v87 = *(v81 + 1);
        v87(v80, v82);
        *(v83 + 4) = v86;
        *v84 = v86;
        _os_log_impl(&dword_25F56A000, v77, v78, "Failed to complete chat, type=TokenGenerationError, reason=%@", v83, 0xCu);
        sub_25F57C148(v84, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v84, -1, -1);
        MEMORY[0x25F8E3B70](v83, -1, -1);
      }

      else
      {

        v87 = *(v81 + 1);
        v87(v80, v82);
      }

      v120 = loga[22].isa;
      v121 = loga[19].isa;
      v122 = sub_25F58E838(v120);
      sub_25F581FD8();
      swift_allocError();
      *v123 = v122;
      swift_willThrow();
      v87(v120, v121);
      v1 = loga;
      v96 = loga[9].isa;
      goto LABEL_38;
    }

LABEL_44:
    swift_once();
    goto LABEL_15;
  }

  v0[10].isa = v65;
  v97 = v65;
  if (swift_dynamicCast())
  {
    v99 = v0[17].isa;
    v98 = v1[18].isa;
    v100 = v1[14].isa;
    v101 = v1[15].isa;

    (*(v101 + 4))(v99, v98, v100);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v103 = v1[16].isa;
    v102 = v1[17].isa;
    v104 = v1[14].isa;
    v105 = v1[15].isa;
    v106 = sub_25F5E3FB4();
    __swift_project_value_buffer(v106, qword_27FD9EA20);
    v107 = v1;
    v108 = *(v105 + 2);
    v108(v103, v102, v104);
    v109 = sub_25F5E3F94();
    v110 = sub_25F5E47B4();
    v111 = os_log_type_enabled(v109, v110);
    v113 = v107[15].isa;
    v112 = v107[16].isa;
    logb = v107;
    v114 = v107[14].isa;
    if (v111)
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v115 = 138412290;
      sub_25F58C3E0(&qword_27FD9DEF8, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
      swift_allocError();
      v108(v117, v112, v114);
      v118 = _swift_stdlib_bridgeErrorToNSError();
      v119 = *(v113 + 1);
      v119(v112, v114);
      *(v115 + 4) = v118;
      *v116 = v118;
      _os_log_impl(&dword_25F56A000, v109, v110, "Failed to complete chat, type=PromptTemplateRenderError, reason=%@", v115, 0xCu);
      sub_25F57C148(v116, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v116, -1, -1);
      MEMORY[0x25F8E3B70](v115, -1, -1);
    }

    else
    {

      v119 = *(v113 + 1);
      v119(v112, v114);
    }

    v140 = logb[17].isa;
    v141 = logb[14].isa;
    sub_25F581FD8();
    swift_allocError();
    *v142 = 8;
    swift_willThrow();
    v119(v140, v141);
    v1 = logb;
    v96 = logb[10].isa;
    goto LABEL_38;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v124 = v0[37].isa;
  v125 = sub_25F5E3FB4();
  __swift_project_value_buffer(v125, qword_27FD9EA20);
  v126 = v124;
  v127 = sub_25F5E3F94();
  v128 = sub_25F5E47B4();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = v1[37].isa;
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v151 = v132;
    *v130 = 138412546;
    v133 = v129;
    v134 = _swift_stdlib_bridgeErrorToNSError();
    *(v130 + 4) = v134;
    *v131 = v134;
    *(v130 + 12) = 2080;
    swift_getErrorValue();
    swift_getDynamicType();
    v135 = sub_25F5E4D04();
    v137 = sub_25F570AF8(v135, v136, &v151);

    *(v130 + 14) = v137;
    _os_log_impl(&dword_25F56A000, v127, v128, "Failed to complete chat, reason=%@, type=%s", v130, 0x16u);
    sub_25F57C148(v131, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v131, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v132);
    MEMORY[0x25F8E3B70](v132, -1, -1);
    MEMORY[0x25F8E3B70](v130, -1, -1);
  }

  v138 = v1[37].isa;
  sub_25F581FD8();
  swift_allocError();
  *v139 = 4;
  swift_willThrow();

LABEL_39:

  v143 = v1[1].isa;

  return v143();
}

uint64_t sub_25F589700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_25F5E3D44();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v5 = sub_25F5E39F4();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = sub_25F5E3CC4();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v7 = sub_25F5E3F54();
  v3[29] = v7;
  v3[30] = *(v7 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F589950, 0, 0);
}

uint64_t sub_25F589950()
{
  v145 = v0;
  v1 = (*(v0 + 80) + OBJC_IVAR____TtC8PriMLETL12LLMInference_systemPrompt);
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v4 = swift_task_alloc();
    *(v0 + 280) = v4;
    *v4 = v0;
    v4[1] = sub_25F58A8F0;
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = *(v0 + 80);

    return sub_25F582068(v3, v2, v5, v6, v7);
  }

  sub_25F581FD8();
  v9 = swift_allocError();
  *v10 = 6;
  swift_willThrow();
  *(v0 + 40) = v9;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 264);
    v12 = *(v0 + 272);
    v15 = *(v0 + 232);
    v14 = *(v0 + 240);

    (*(v14 + 32))(v13, v12, v15);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 240);
    v19 = *(v0 + 248);
    v20 = *(v0 + 232);
    v21 = sub_25F5E3FB4();
    __swift_project_value_buffer(v21, qword_27FD9EA20);
    v22 = *(v18 + 16);
    v22(v17, v16, v20);
    v22(v19, v16, v20);
    v23 = sub_25F5E3F94();
    v24 = sub_25F5E47B4();
    log = v23;
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 248);
    v27 = *(v0 + 256);
    v28 = *(v0 + 232);
    v29 = *(v0 + 240);
    if (v25)
    {
      v30 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v30 = 138412546;
      sub_25F58C3E0(&qword_27FD9DF10, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      swift_allocError();
      v22(v31, v27, v28);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      v137 = v24;
      v33 = *(v29 + 8);
      v33(v27, v28);
      *(v30 + 4) = v32;
      v138->isa = v32;
      *(v30 + 12) = 2048;
      v34 = sub_25F5E3F44();
      v33(v26, v28);
      v35 = v33;
      *(v30 + 14) = v34;
      _os_log_impl(&dword_25F56A000, log, v137, "Failed to complete chat, type=GenerativeError, reason=%@, code=%ld", v30, 0x16u);
      sub_25F57C148(v138, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v138, -1, -1);
      MEMORY[0x25F8E3B70](v30, -1, -1);
    }

    else
    {
      v60 = *(v29 + 8);
      v60(*(v0 + 248), *(v0 + 232));

      v60(v27, v28);
      v35 = v60;
    }

    v61 = *(v0 + 264);
    v62 = *(v0 + 232);
    v63 = sub_25F58DD74(v61);
    swift_allocError();
    *v64 = v63;
    swift_willThrow();
    v35(v61, v62);

    goto LABEL_43;
  }

  *(v0 + 48) = v9;
  v36 = v9;
  if ((swift_dynamicCast() & 1) == 0)
  {

    *(v0 + 56) = v9;
    v65 = v9;
    if ((swift_dynamicCast() & 1) == 0)
    {

      *(v0 + 64) = v9;
      v95 = v9;
      if ((swift_dynamicCast() & 1) == 0)
      {

        if (qword_27FD9D8B0 != -1)
        {
          swift_once();
        }

        v120 = sub_25F5E3FB4();
        __swift_project_value_buffer(v120, qword_27FD9EA20);
        v121 = v9;
        v122 = sub_25F5E3F94();
        v123 = sub_25F5E47B4();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v144 = v126;
          *v124 = 138412546;
          v127 = v9;
          v128 = _swift_stdlib_bridgeErrorToNSError();
          *(v124 + 4) = v128;
          *v125 = v128;
          *(v124 + 12) = 2080;
          swift_getErrorValue();
          swift_getDynamicType();
          v129 = sub_25F5E4D04();
          v131 = sub_25F570AF8(v129, v130, &v144);

          *(v124 + 14) = v131;
          _os_log_impl(&dword_25F56A000, v122, v123, "Failed to complete chat, reason=%@, type=%s", v124, 0x16u);
          sub_25F57C148(v125, &qword_27FD9DEF0, &qword_25F5E8550);
          MEMORY[0x25F8E3B70](v125, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v126);
          MEMORY[0x25F8E3B70](v126, -1, -1);
          MEMORY[0x25F8E3B70](v124, -1, -1);
        }

        swift_allocError();
        *v132 = 4;
        swift_willThrow();

        goto LABEL_43;
      }

      v97 = *(v0 + 128);
      v96 = *(v0 + 136);
      v99 = *(v0 + 104);
      v98 = *(v0 + 112);

      (*(v98 + 32))(v97, v96, v99);
      if (qword_27FD9D8B0 != -1)
      {
        swift_once();
      }

      v101 = *(v0 + 120);
      v100 = *(v0 + 128);
      v103 = *(v0 + 104);
      v102 = *(v0 + 112);
      v104 = sub_25F5E3FB4();
      __swift_project_value_buffer(v104, qword_27FD9EA20);
      v105 = *(v102 + 16);
      v105(v101, v100, v103);
      v106 = sub_25F5E3F94();
      v107 = sub_25F5E47B4();
      v108 = os_log_type_enabled(v106, v107);
      v110 = *(v0 + 112);
      v109 = *(v0 + 120);
      v111 = *(v0 + 104);
      if (v108)
      {
        v112 = swift_slowAlloc();
        logc = swift_slowAlloc();
        *v112 = 138412290;
        sub_25F58C3E0(&qword_27FD9DEF8, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
        swift_allocError();
        v105(v113, v109, v111);
        v114 = _swift_stdlib_bridgeErrorToNSError();
        v115 = *(v110 + 8);
        v115(v109, v111);
        *(v112 + 4) = v114;
        logc->isa = v114;
        _os_log_impl(&dword_25F56A000, v106, v107, "Failed to complete chat, type=PromptTemplateRenderError, reason=%@", v112, 0xCu);
        sub_25F57C148(logc, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](logc, -1, -1);
        MEMORY[0x25F8E3B70](v112, -1, -1);
      }

      else
      {

        v115 = *(v110 + 8);
        v115(v109, v111);
      }

      v133 = *(v0 + 128);
      v134 = *(v0 + 104);
      swift_allocError();
      *v135 = 8;
      swift_willThrow();
      v115(v133, v134);
      v94 = *(v0 + 64);
      goto LABEL_42;
    }

    v67 = *(v0 + 168);
    v66 = *(v0 + 176);
    v69 = *(v0 + 144);
    v68 = *(v0 + 152);

    (*(v68 + 32))(v67, v66, v69);
    if (qword_27FD9D8B0 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

  v38 = *(v0 + 216);
  v37 = *(v0 + 224);
  v40 = *(v0 + 184);
  v39 = *(v0 + 192);

  (*(v39 + 32))(v38, v37, v40);
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 208);
  v41 = *(v0 + 216);
  v43 = *(v0 + 192);
  v44 = *(v0 + 200);
  v45 = *(v0 + 184);
  v46 = sub_25F5E3FB4();
  __swift_project_value_buffer(v46, qword_27FD9EA20);
  v47 = *(v43 + 16);
  v47(v42, v41, v45);
  v47(v44, v41, v45);
  v48 = sub_25F5E3F94();
  v49 = sub_25F5E47B4();
  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 200);
  v52 = *(v0 + 208);
  v53 = *(v0 + 184);
  v54 = *(v0 + 192);
  if (v50)
  {
    loga = v49;
    v55 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *v55 = 138412546;
    sub_25F58C3E0(&qword_27FD9DF08, MEMORY[0x277D29D58], MEMORY[0x277D29D60]);
    swift_allocError();
    v47(v56, v52, v53);
    v57 = _swift_stdlib_bridgeErrorToNSError();
    v58 = *(v54 + 8);
    v58(v52, v53);
    *(v55 + 4) = v57;
    *v139 = v57;
    *(v55 + 12) = 2048;
    v59 = sub_25F5E3CB4();
    v58(v51, v53);
    *(v55 + 14) = v59;
    _os_log_impl(&dword_25F56A000, v48, loga, "Failed to complete chat, type=ModelManagerError, reason=%@, code=%ld", v55, 0x16u);
    sub_25F57C148(v139, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v139, -1, -1);
    MEMORY[0x25F8E3B70](v55, -1, -1);
  }

  else
  {
    v58 = *(v54 + 8);
    v58(*(v0 + 200), *(v0 + 184));

    v58(v52, v53);
  }

  v86 = sub_25F5E3CB4();
  v87 = v86 - 1000;
  if (__OFSUB__(v86, 1000))
  {
    __break(1u);
    goto LABEL_47;
  }

  v88 = v86 + 19100;
  if (__OFADD__(v87, 20100))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
LABEL_19:
    v71 = *(v0 + 160);
    v70 = *(v0 + 168);
    v73 = *(v0 + 144);
    v72 = *(v0 + 152);
    v74 = sub_25F5E3FB4();
    __swift_project_value_buffer(v74, qword_27FD9EA20);
    v75 = *(v72 + 16);
    v75(v71, v70, v73);
    v76 = sub_25F5E3F94();
    v77 = sub_25F5E47B4();
    v78 = os_log_type_enabled(v76, v77);
    v80 = *(v0 + 152);
    v79 = *(v0 + 160);
    v81 = *(v0 + 144);
    if (v78)
    {
      v82 = swift_slowAlloc();
      logb = swift_slowAlloc();
      *v82 = 138412290;
      sub_25F58C3E0(&qword_27FD9DF00, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
      swift_allocError();
      v75(v83, v79, v81);
      v84 = _swift_stdlib_bridgeErrorToNSError();
      v85 = *(v80 + 8);
      v85(v79, v81);
      *(v82 + 4) = v84;
      logb->isa = v84;
      _os_log_impl(&dword_25F56A000, v76, v77, "Failed to complete chat, type=TokenGenerationError, reason=%@", v82, 0xCu);
      sub_25F57C148(logb, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](logb, -1, -1);
      MEMORY[0x25F8E3B70](v82, -1, -1);
    }

    else
    {

      v85 = *(v80 + 8);
      v85(v79, v81);
    }

    v116 = *(v0 + 168);
    v117 = *(v0 + 144);
    v118 = sub_25F58E838(v116);
    swift_allocError();
    *v119 = v118;
    swift_willThrow();
    v85(v116, v117);
    v94 = *(v0 + 56);
    goto LABEL_42;
  }

  v89 = *(v0 + 216);
  v90 = *(v0 + 184);
  v91 = sub_25F58E04C(v88);
  if (v91 == 89)
  {
    v92 = 50;
  }

  else
  {
    v92 = v91;
  }

  swift_allocError();
  *v93 = v92;
  swift_willThrow();
  v58(v89, v90);
  v94 = *(v0 + 48);
LABEL_42:

LABEL_43:

  v136 = *(v0 + 8);

  return v136();
}

uint64_t sub_25F58A8F0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 288) = v2;

  if (v2)
  {
    v7 = sub_25F58AB54;
  }

  else
  {
    *(v6 + 296) = a2;
    *(v6 + 304) = a1;
    v7 = sub_25F58AA24;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F58AA24()
{

  v1 = v0[1];
  v3 = v0[37];
  v2 = v0[38];

  return v1(v2, v3);
}

uint64_t sub_25F58AB54()
{
  v143 = v0;
  v1 = v0;
  isa = v0[36].isa;
  v0[5].isa = isa;
  v3 = isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    v5 = v0[33].isa;
    v4 = v0[34].isa;
    v7 = v0[29].isa;
    v6 = v0[30].isa;

    (*(v6 + 4))(v5, v4, v7);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v8 = v1[32].isa;
    v9 = v1[33].isa;
    v11 = v1[30].isa;
    v10 = v1[31].isa;
    v12 = v1[29].isa;
    v13 = sub_25F5E3FB4();
    __swift_project_value_buffer(v13, qword_27FD9EA20);
    v14 = *(v11 + 2);
    v14(v8, v9, v12);
    v14(v10, v9, v12);
    v15 = sub_25F5E3F94();
    v16 = sub_25F5E47B4();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v1[31].isa;
    v19 = v1[32].isa;
    v20 = v1[29].isa;
    v21 = v1[30].isa;
    if (v17)
    {
      v22 = swift_slowAlloc();
      logc = v15;
      v23 = swift_slowAlloc();
      *v22 = 138412546;
      sub_25F58C3E0(&qword_27FD9DF10, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      swift_allocError();
      v136 = v16;
      v24 = v1;
      v14(v25, v19, v20);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = *(v21 + 1);
      v27(v19, v20);
      *(v22 + 4) = v26;
      *v23 = v26;
      v1 = v24;
      *(v22 + 12) = 2048;
      v28 = sub_25F5E3F44();
      v27(v18, v20);
      *(v22 + 14) = v28;
      _os_log_impl(&dword_25F56A000, logc, v136, "Failed to complete chat, type=GenerativeError, reason=%@, code=%ld", v22, 0x16u);
      sub_25F57C148(v23, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v23, -1, -1);
      MEMORY[0x25F8E3B70](v22, -1, -1);
    }

    else
    {
      v27 = *(v21 + 1);
      v27(v1[31].isa, v1[29].isa);

      v27(v19, v20);
    }

    v55 = v1[33].isa;
    v56 = v1[29].isa;
    v57 = sub_25F58DD74(v55);
    sub_25F581FD8();
    swift_allocError();
    *v58 = v57;
    swift_willThrow();
    v27(v55, v56);

    goto LABEL_39;
  }

  v0[6].isa = isa;
  v29 = isa;
  if (swift_dynamicCast())
  {
    v31 = v0[27].isa;
    v30 = v1[28].isa;
    v32 = v1[23].isa;
    v33 = v1[24].isa;

    (*(v33 + 4))(v31, v30, v32);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v35 = v1[26].isa;
    v34 = v1[27].isa;
    v36 = v1;
    v39 = v1 + 24;
    v38 = v1[24].isa;
    v37 = v39[1].isa;
    v40 = v36[23].isa;
    v41 = sub_25F5E3FB4();
    __swift_project_value_buffer(v41, qword_27FD9EA20);
    v42 = *(v38 + 2);
    v42(v35, v34, v40);
    v42(v37, v34, v40);
    v43 = sub_25F5E3F94();
    v44 = sub_25F5E47B4();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v36[25].isa;
    v47 = v36[26].isa;
    log = v36;
    v50 = v36 + 23;
    v48 = v36[23].isa;
    v49 = v50[1].isa;
    if (v45)
    {
      v51 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      *v51 = 138412546;
      sub_25F58C3E0(&qword_27FD9DF08, MEMORY[0x277D29D58], MEMORY[0x277D29D60]);
      swift_allocError();
      v42(v52, v47, v48);
      v53 = _swift_stdlib_bridgeErrorToNSError();
      v1 = *(v49 + 1);
      (v1)(v47, v48);
      *(v51 + 4) = v53;
      *v137 = v53;
      *(v51 + 12) = 2048;
      v54 = sub_25F5E3CB4();
      (v1)(v46, v48);
      *(v51 + 14) = v54;
      _os_log_impl(&dword_25F56A000, v43, v44, "Failed to complete chat, type=ModelManagerError, reason=%@, code=%ld", v51, 0x16u);
      sub_25F57C148(v137, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v137, -1, -1);
      MEMORY[0x25F8E3B70](v51, -1, -1);
    }

    else
    {
      v1 = *(v49 + 1);
      (v1)(v46, v48);

      (v1)(v47, v48);
    }

    v82 = sub_25F5E3CB4();
    v83 = v82 - 1000;
    if (__OFSUB__(v82, 1000))
    {
      __break(1u);
    }

    else
    {
      v84 = v82 + 19100;
      if (!__OFADD__(v83, 20100))
      {
        v85 = log[27].isa;
        v86 = log[23].isa;
        v87 = sub_25F58E04C(v84);
        if (v87 == 89)
        {
          v88 = 50;
        }

        else
        {
          v88 = v87;
        }

        sub_25F581FD8();
        swift_allocError();
        *v89 = v88;
        swift_willThrow();
        (v1)(v85, v86);
        v1 = log;
        v90 = log[6].isa;
LABEL_38:

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v0[7].isa = isa;
  v59 = isa;
  if (swift_dynamicCast())
  {
    v61 = v0[21].isa;
    v60 = v1[22].isa;
    v62 = v1[18].isa;
    v63 = v1[19].isa;

    (*(v63 + 4))(v61, v60, v62);
    if (qword_27FD9D8B0 == -1)
    {
LABEL_15:
      v65 = v1[20].isa;
      v64 = v1[21].isa;
      v66 = v1[18].isa;
      v67 = v1[19].isa;
      v68 = sub_25F5E3FB4();
      __swift_project_value_buffer(v68, qword_27FD9EA20);
      v69 = v1;
      v70 = *(v67 + 2);
      v70(v65, v64, v66);
      v71 = sub_25F5E3F94();
      v72 = sub_25F5E47B4();
      v73 = os_log_type_enabled(v71, v72);
      v75 = v69[19].isa;
      v74 = v69[20].isa;
      loga = v69;
      v76 = v69[18].isa;
      if (v73)
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v77 = 138412290;
        sub_25F58C3E0(&qword_27FD9DF00, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
        swift_allocError();
        v70(v79, v74, v76);
        v80 = _swift_stdlib_bridgeErrorToNSError();
        v81 = *(v75 + 1);
        v81(v74, v76);
        *(v77 + 4) = v80;
        *v78 = v80;
        _os_log_impl(&dword_25F56A000, v71, v72, "Failed to complete chat, type=TokenGenerationError, reason=%@", v77, 0xCu);
        sub_25F57C148(v78, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v78, -1, -1);
        MEMORY[0x25F8E3B70](v77, -1, -1);
      }

      else
      {

        v81 = *(v75 + 1);
        v81(v74, v76);
      }

      v114 = loga[21].isa;
      v115 = loga[18].isa;
      v116 = sub_25F58E838(v114);
      sub_25F581FD8();
      swift_allocError();
      *v117 = v116;
      swift_willThrow();
      v81(v114, v115);
      v1 = loga;
      v90 = loga[7].isa;
      goto LABEL_38;
    }

LABEL_44:
    swift_once();
    goto LABEL_15;
  }

  v0[8].isa = isa;
  v91 = isa;
  if (swift_dynamicCast())
  {
    v93 = v0[16].isa;
    v92 = v1[17].isa;
    v94 = v1[13].isa;
    v95 = v1[14].isa;

    (*(v95 + 4))(v93, v92, v94);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v97 = v1[15].isa;
    v96 = v1[16].isa;
    v98 = v1[13].isa;
    v99 = v1[14].isa;
    v100 = sub_25F5E3FB4();
    __swift_project_value_buffer(v100, qword_27FD9EA20);
    v101 = v1;
    v102 = *(v99 + 2);
    v102(v97, v96, v98);
    v103 = sub_25F5E3F94();
    v104 = sub_25F5E47B4();
    v105 = os_log_type_enabled(v103, v104);
    v107 = v101[14].isa;
    v106 = v101[15].isa;
    logb = v101;
    v108 = v101[13].isa;
    if (v105)
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v109 = 138412290;
      sub_25F58C3E0(&qword_27FD9DEF8, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
      swift_allocError();
      v102(v111, v106, v108);
      v112 = _swift_stdlib_bridgeErrorToNSError();
      v113 = *(v107 + 1);
      v113(v106, v108);
      *(v109 + 4) = v112;
      *v110 = v112;
      _os_log_impl(&dword_25F56A000, v103, v104, "Failed to complete chat, type=PromptTemplateRenderError, reason=%@", v109, 0xCu);
      sub_25F57C148(v110, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v110, -1, -1);
      MEMORY[0x25F8E3B70](v109, -1, -1);
    }

    else
    {

      v113 = *(v107 + 1);
      v113(v106, v108);
    }

    v131 = logb[16].isa;
    v132 = logb[13].isa;
    sub_25F581FD8();
    swift_allocError();
    *v133 = 8;
    swift_willThrow();
    v113(v131, v132);
    v1 = logb;
    v90 = logb[8].isa;
    goto LABEL_38;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v118 = sub_25F5E3FB4();
  __swift_project_value_buffer(v118, qword_27FD9EA20);
  v119 = isa;
  v120 = sub_25F5E3F94();
  v121 = sub_25F5E47B4();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v142 = v124;
    *v122 = 138412546;
    v125 = isa;
    v126 = _swift_stdlib_bridgeErrorToNSError();
    *(v122 + 4) = v126;
    *v123 = v126;
    *(v122 + 12) = 2080;
    swift_getErrorValue();
    swift_getDynamicType();
    v127 = sub_25F5E4D04();
    v129 = sub_25F570AF8(v127, v128, &v142);

    *(v122 + 14) = v129;
    _os_log_impl(&dword_25F56A000, v120, v121, "Failed to complete chat, reason=%@, type=%s", v122, 0x16u);
    sub_25F57C148(v123, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v123, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v124);
    MEMORY[0x25F8E3B70](v124, -1, -1);
    MEMORY[0x25F8E3B70](v122, -1, -1);
  }

  sub_25F581FD8();
  swift_allocError();
  *v130 = 4;
  swift_willThrow();

LABEL_39:

  v134 = v1[1].isa;

  return v134();
}

uint64_t dispatch thunk of ChatPromptResponding.completeChat(userPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F58C4D8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ChatPromptResponding.completeChat(bindVariables:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F58C4D8;

  return v9(a1, a2, a3);
}

void sub_25F58BCB0(uint64_t a1)
{
  sub_25F58C230(319, &qword_27FD9DED0, MEMORY[0x277D71C58]);
  if (v1 <= 0x3F)
  {
    sub_25F58C230(319, &qword_27FD9DED8, MEMORY[0x277D0E698]);
    if (v2 <= 0x3F)
    {
      sub_25F58C230(319, &qword_27FD9DEE0, MEMORY[0x277D42E28]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of LLMInference.completeChat(userPrompt:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 224) + **(*v2 + 224));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F58C004;

  return v8(a1, a2);
}

uint64_t sub_25F58C004(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of LLMInference.completeChat(bindVariables:)(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F58C4D8;

  return v6(a1);
}

void sub_25F58C230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25F5E47F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25F58C3E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25F58C444()
{
  result = qword_27FD9DFB8;
  if (!qword_27FD9DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFB8);
  }

  return result;
}

uint64_t sub_25F58C4E0()
{
  v1 = *v0;
  v2 = 0x6E75426C65646F6DLL;
  v3 = 0x74617265706D6574;
  if (v1 != 5)
  {
    v3 = 1684366707;
  }

  v4 = 0x706D61534B706F74;
  if (v1 != 3)
  {
    v4 = 0x537375656C63756ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x4965736163657375;
  if (v1 != 1)
  {
    v5 = 0x6F4374706D6F7270;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_25F58C5E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F58D72C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F58C610(uint64_t a1)
{
  v2 = sub_25F58CB0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F58C64C(uint64_t a1)
{
  v2 = sub_25F58CB0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LLMInferenceConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFC0, &qword_25F5E79C0);
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v6);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F58CB0C();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = v5;
  LOBYTE(v45) = 0;
  v10 = sub_25F5E4A94();
  v12 = v11;
  v35 = v10;
  LOBYTE(v45) = 1;
  *&v34 = sub_25F5E4A94();
  *(&v34 + 1) = v13;
  LOBYTE(v37) = 2;
  sub_25F58CB60();
  sub_25F5E4AD4();
  v32 = v45;
  v33 = v46;
  LOBYTE(v45) = 3;
  v31 = sub_25F5E4A74();
  v60 = v14 & 1;
  LOBYTE(v45) = 4;
  v30 = sub_25F5E4A64();
  v59 = v15 & 1;
  LOBYTE(v45) = 5;
  v29 = sub_25F5E4A64();
  v58 = v16 & 1;
  v61 = 6;
  v17 = sub_25F5E4A74();
  v19 = v18;
  (*(v9 + 8))(v8, v36);
  v19 &= 1u;
  v57 = v19;
  *&v37 = v35;
  *(&v37 + 1) = v12;
  v38 = v34;
  v39 = v32;
  LOBYTE(v40) = v33;
  v20 = v30;
  *(&v40 + 1) = v31;
  LODWORD(v36) = v60;
  LOBYTE(v41) = v60;
  *(&v41 + 1) = v30;
  v27 = v12;
  v28 = v59;
  LOBYTE(v42) = v59;
  v21 = v29;
  *(&v42 + 1) = v29;
  v22 = v58;
  LOBYTE(v43) = v58;
  *(&v43 + 1) = v17;
  v44 = v19;
  v23 = v40;
  *(a2 + 32) = v32;
  *(a2 + 48) = v23;
  *(a2 + 112) = v19;
  v24 = v38;
  *a2 = v37;
  *(a2 + 16) = v24;
  v25 = v43;
  *(a2 + 80) = v42;
  *(a2 + 96) = v25;
  *(a2 + 64) = v41;
  sub_25F57B740(&v37, &v45);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *&v45 = v35;
  *(&v45 + 1) = v27;
  v46 = v34;
  v47 = v32;
  v48 = v33;
  v49 = v31;
  v50 = v36;
  v51 = v20;
  v52 = v28;
  v53 = v21;
  v54 = v22;
  v55 = v17;
  v56 = v19;
  return sub_25F5767CC(&v45);
}

unint64_t sub_25F58CB0C()
{
  result = qword_27FD9DFC8;
  if (!qword_27FD9DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFC8);
  }

  return result;
}

unint64_t sub_25F58CB60()
{
  result = qword_27FD9DFD0;
  if (!qword_27FD9DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFD0);
  }

  return result;
}

uint64_t (*LLMInferenceConfig.updateFilePaths(_:)(uint64_t (*result)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  v2 = v1;
  if (*(v1 + 48) == 3)
  {
    v3 = result;
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);

    v6 = v3(v4, v5);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      sub_25F581A78(v4, v5, 3u);
      v4 = v8;
      v5 = v9;
    }

    result = sub_25F581A78(*(v2 + 32), *(v2 + 40), *(v2 + 48));
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    *(v2 + 48) = 3;
  }

  return result;
}

uint64_t sub_25F58CC74()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F58CD5C(uint64_t a1)
{
  sub_25F5E4334();
}

uint64_t sub_25F58CE30()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

unint64_t sub_25F58CF14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F58D998(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F58CF44(unint64_t *a1@<X8>)
{
  v2 = 0xEC00000074706D6FLL;
  v3 = 0x72506D6574737953;
  v4 = 0xEE006574616C706DLL;
  v5 = 0x655474706D6F7250;
  if (*v1 != 2)
  {
    v5 = 0x694674706D6F7250;
    v4 = 0xEE0068746150656CLL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000025F5EBFB0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_25F58CFE8()
{
  v1 = 0x72506D6574737953;
  v2 = 0x655474706D6F7250;
  if (*v0 != 2)
  {
    v2 = 0x694674706D6F7250;
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

unint64_t sub_25F58D088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F58D998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F58D0B0(uint64_t a1)
{
  v2 = sub_25F58D39C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F58D0EC(uint64_t a1)
{
  v2 = sub_25F58D39C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromptConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFD8, &qword_25F5E79C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F58D39C();
  sub_25F5E4C74();
  if (!v2)
  {
    v15 = 0;
    v10 = sub_25F5E4A94();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_25F58D39C()
{
  result = qword_27FD9DFE0;
  if (!qword_27FD9DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFE0);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_25F58D434(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_25F58D47C(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F58D520()
{
  result = qword_27FD9DFE8;
  if (!qword_27FD9DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFE8);
  }

  return result;
}

unint64_t sub_25F58D578()
{
  result = qword_27FD9DFF0;
  if (!qword_27FD9DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFF0);
  }

  return result;
}

unint64_t sub_25F58D5D0()
{
  result = qword_27FD9DFF8;
  if (!qword_27FD9DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFF8);
  }

  return result;
}

unint64_t sub_25F58D628()
{
  result = qword_27FD9E000;
  if (!qword_27FD9E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E000);
  }

  return result;
}

unint64_t sub_25F58D680()
{
  result = qword_27FD9E008;
  if (!qword_27FD9E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E008);
  }

  return result;
}

unint64_t sub_25F58D6D8()
{
  result = qword_27FD9E010;
  if (!qword_27FD9E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E010);
  }

  return result;
}

uint64_t sub_25F58D72C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E75426C65646F6DLL && a2 == 0xED00004449656C64;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4965736163657375 && a2 == 0xE900000000000064 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4374706D6F7270 && a2 == 0xEC0000006769666ELL || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x706D61534B706F74 && a2 == 0xEC000000676E696CLL || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x537375656C63756ELL && a2 == 0xEF676E696C706D61 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684366707 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_25F58D998(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F5E4A14();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for LLMInferenceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA8)
  {
    goto LABEL_17;
  }

  if (a2 + 88 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 88) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 88;
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

      return (*a1 | (v4 << 8)) - 88;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 88;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x59;
  v8 = v6 - 89;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LLMInferenceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 88 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 88) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA8)
  {
    v4 = 0;
  }

  if (a2 > 0xA7)
  {
    v5 = ((a2 - 168) >> 8) + 1;
    *result = a2 + 88;
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
    *result = a2 + 88;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F58DB58()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](qword_25F5E7F10[v1]);
  return sub_25F5E4C54();
}

uint64_t sub_25F58DBE0()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](qword_25F5E7F10[v1]);
  return sub_25F5E4C54();
}

uint64_t sub_25F58DC2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F58E04C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_25F58DC74()
{
  result = qword_27FD9E018;
  if (!qword_27FD9E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E018);
  }

  return result;
}

uint64_t sub_25F58DCC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F58DD20();
  v5 = sub_25F5739D8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t sub_25F58DD20()
{
  result = qword_27FD9E020;
  if (!qword_27FD9E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E020);
  }

  return result;
}

uint64_t sub_25F58DD74(uint64_t a1)
{
  v1 = sub_25F5E3F44();
  if (v1 > 5020099)
  {
    if (v1 > 5039999)
    {
      if (v1 > 7009999)
      {
        switch(v1)
        {
          case 7010000:
            return 72;
          case 8010000:
            return 73;
          case 9010000:
            return 74;
        }
      }

      else
      {
        switch(v1)
        {
          case 5040000:
            return 69;
          case 5050000:
            return 70;
          case 6010000:
            return 71;
        }
      }
    }

    else if (v1 > 5020399)
    {
      switch(v1)
      {
        case 5020400:
          return 66;
        case 5020500:
          return 67;
        case 5030000:
          return 68;
      }
    }

    else
    {
      switch(v1)
      {
        case 5020100:
          return 63;
        case 5020200:
          return 64;
        case 5020300:
          return 65;
      }
    }
  }

  else if (v1 > 4019999)
  {
    if (v1 > 4049999)
    {
      switch(v1)
      {
        case 4050000:
          return 60;
        case 4060000:
          return 61;
        case 5010000:
          return 62;
      }
    }

    else
    {
      switch(v1)
      {
        case 4020000:
          return 57;
        case 4030000:
          return 58;
        case 4040000:
          return 59;
      }
    }
  }

  else if (v1 > 2009999)
  {
    switch(v1)
    {
      case 2010000:
        return 54;
      case 3010000:
        return 55;
      case 4010000:
        return 56;
    }
  }

  else
  {
    switch(v1)
    {
      case 1010000:
        return 51;
      case 1020000:
        return 52;
      case 1030000:
        return 53;
    }
  }

  return 75;
}

uint64_t sub_25F58E04C(uint64_t a1)
{
  v1 = a1 - 20000;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 101:
      result = 11;
      break;
    case 102:
      result = 12;
      break;
    case 103:
      result = 13;
      break;
    case 104:
      result = 14;
      break;
    case 105:
      result = 15;
      break;
    case 106:
      result = 16;
      break;
    case 107:
      result = 17;
      break;
    case 108:
      result = 18;
      break;
    case 109:
      result = 19;
      break;
    case 110:
      result = 20;
      break;
    case 111:
      result = 21;
      break;
    case 112:
      result = 22;
      break;
    case 113:
      result = 23;
      break;
    case 114:
      result = 24;
      break;
    case 115:
      result = 25;
      break;
    case 116:
      result = 26;
      break;
    case 117:
      result = 27;
      break;
    case 118:
      result = 28;
      break;
    case 119:
      result = 29;
      break;
    case 120:
      result = 30;
      break;
    case 121:
      result = 31;
      break;
    case 122:
      result = 32;
      break;
    case 123:
      result = 33;
      break;
    case 124:
      result = 34;
      break;
    case 125:
      result = 35;
      break;
    case 126:
      result = 36;
      break;
    case 127:
      result = 37;
      break;
    case 128:
      result = 38;
      break;
    case 129:
      result = 39;
      break;
    case 130:
      result = 40;
      break;
    case 131:
      result = 41;
      break;
    case 132:
      result = 42;
      break;
    case 133:
      result = 43;
      break;
    case 134:
      result = 44;
      break;
    case 135:
      result = 45;
      break;
    case 136:
      result = 46;
      break;
    case 137:
      result = 47;
      break;
    case 138:
      result = 48;
      break;
    case 139:
      result = 49;
      break;
    case 199:
      result = 50;
      break;
    case 201:
      result = 51;
      break;
    case 202:
      result = 52;
      break;
    case 203:
      result = 53;
      break;
    case 204:
      result = 54;
      break;
    case 205:
      result = 55;
      break;
    case 206:
      result = 56;
      break;
    case 207:
      result = 57;
      break;
    case 208:
      result = 58;
      break;
    case 209:
      result = 59;
      break;
    case 210:
      result = 60;
      break;
    case 211:
      result = 61;
      break;
    case 212:
      result = 62;
      break;
    case 213:
      result = 63;
      break;
    case 214:
      result = 64;
      break;
    case 215:
      result = 65;
      break;
    case 216:
      result = 66;
      break;
    case 217:
      result = 67;
      break;
    case 218:
      result = 68;
      break;
    case 219:
      result = 69;
      break;
    case 220:
      result = 70;
      break;
    case 221:
      result = 71;
      break;
    case 222:
      result = 72;
      break;
    case 223:
      result = 73;
      break;
    case 224:
      result = 74;
      break;
    case 299:
      result = 75;
      break;
    case 301:
      result = 76;
      break;
    case 302:
      result = 77;
      break;
    case 303:
      result = 78;
      break;
    case 304:
      result = 79;
      break;
    case 305:
      result = 80;
      break;
    case 306:
      result = 81;
      break;
    case 307:
      result = 82;
      break;
    case 308:
      result = 83;
      break;
    case 309:
      result = 84;
      break;
    case 311:
      result = 85;
      break;
    case 313:
      result = 86;
      break;
    case 314:
      result = 87;
      break;
    case 315:
      result = 88;
      break;
    default:
      result = 89;
      break;
  }

  return result;
}

uint64_t sub_25F58E838(uint64_t a1)
{
  v2 = sub_25F5E39F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D71AF8])
  {
    (*(v3 + 8))(v6, v2);
    return 76;
  }

  else if (v7 == *MEMORY[0x277D71AC0])
  {
    (*(v3 + 8))(v6, v2);
    return 77;
  }

  else if (v7 == *MEMORY[0x277D71AB0])
  {
    (*(v3 + 8))(v6, v2);
    return 78;
  }

  else if (v7 == *MEMORY[0x277D71AC8])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E030, &unk_25F5E7F00) + 64);
    v10 = sub_25F5E39E4();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
    return 79;
  }

  else if (v7 == *MEMORY[0x277D71B00])
  {
    (*(v3 + 8))(v6, v2);
    return 80;
  }

  else if (v7 == *MEMORY[0x277D71AF0])
  {
    (*(v3 + 8))(v6, v2);
    return 81;
  }

  else if (v7 == *MEMORY[0x277D71AA8])
  {
    (*(v3 + 96))(v6, v2);
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E028, &qword_25F5E7EF8) + 48);
    v12 = sub_25F5E39E4();
    (*(*(v12 - 8) + 8))(&v6[v11], v12);
    v13 = sub_25F5E3AE4();
    (*(*(v13 - 8) + 8))(v6, v13);
    return 82;
  }

  else if (v7 == *MEMORY[0x277D71AD0])
  {
    (*(v3 + 8))(v6, v2);
    return 83;
  }

  else if (v7 == *MEMORY[0x277D71AE0])
  {
    (*(v3 + 8))(v6, v2);
    return 84;
  }

  else if (v7 == *MEMORY[0x277D71AA0])
  {
    (*(v3 + 8))(v6, v2);
    return 85;
  }

  else if (v7 == *MEMORY[0x277D71AB8])
  {
    (*(v3 + 8))(v6, v2);
    return 86;
  }

  else
  {
    v14 = *MEMORY[0x277D71AE8];
    v15 = v7;
    (*(v3 + 8))(v6, v2);
    if (v15 == v14)
    {
      return 87;
    }

    else
    {
      return 88;
    }
  }
}

unint64_t sub_25F58EC68(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E75426C65646F6DLL;
    v6 = 0x6F4374706D6F7270;
    if (a1 != 2)
    {
      v6 = 0x616C436567616D69;
    }

    if (a1)
    {
      v5 = 0x4965736163657375;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x537375656C63756ELL;
    v2 = 0x74617265706D6574;
    if (a1 != 7)
    {
      v2 = 1684366707;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x706D61534B706F74;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25F58EDC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F598430(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F58EDFC(uint64_t a1)
{
  v2 = sub_25F58F3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F58EE38(uint64_t a1)
{
  v2 = sub_25F58F3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultiModalLLMInferenceConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E038, &unk_25F5E81F0);
  v5 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v6);
  v8 = &v36 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F58F3C8();
  v52 = v8;
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = v5;
  LOBYTE(v63) = 0;
  v10 = v51;
  v11 = sub_25F5E4A94();
  v50 = v12;
  LOBYTE(v63) = 1;
  v13 = sub_25F5E4A94();
  v49 = v14;
  v47 = v13;
  v48 = v11;
  LOBYTE(v53) = 2;
  sub_25F58CB60();
  sub_25F5E4AD4();
  v15 = a1;
  v45 = v64;
  v46 = v63;
  v44 = v65;
  LOBYTE(v63) = 3;
  v16 = sub_25F5E4A74();
  v87 = v17 & 1;
  LOBYTE(v63) = 4;
  v18 = sub_25F5E4A74();
  v86 = v19 & 1;
  LOBYTE(v63) = 5;
  v43 = sub_25F5E4A74();
  v85 = v20 & 1;
  LOBYTE(v63) = 6;
  v42 = sub_25F5E4A64();
  v84 = v21 & 1;
  LOBYTE(v63) = 7;
  v40 = sub_25F5E4A64();
  v83 = v22 & 1;
  v88 = 8;
  v41 = sub_25F5E4A74();
  v24 = v23;
  (*(v9 + 8))(v52, v10);
  v82 = v24 & 1;
  *&v53 = v48;
  *(&v53 + 1) = v50;
  *&v54 = v47;
  *(&v54 + 1) = v49;
  *&v55 = v46;
  *(&v55 + 1) = v45;
  LOBYTE(v56) = v44;
  *(&v56 + 1) = v16;
  LODWORD(v52) = v87;
  LOBYTE(v57) = v87;
  v25 = v18;
  *(&v57 + 1) = v18;
  LODWORD(v51) = v86;
  LOBYTE(v58) = v86;
  *(&v58 + 1) = v43;
  v39 = v85;
  LOBYTE(v59) = v85;
  v26 = v41;
  *(&v59 + 1) = v42;
  v38 = v84;
  LOBYTE(v60) = v84;
  v37 = v16;
  v27 = v40;
  *(&v60 + 1) = v40;
  LOBYTE(v10) = v83;
  LOBYTE(v61) = v83;
  *(&v61 + 1) = v41;
  LOBYTE(v18) = v82;
  v62 = v82;
  v29 = v59;
  v28 = v60;
  v30 = v61;
  *(a2 + 144) = v82;
  *(a2 + 112) = v28;
  *(a2 + 128) = v30;
  v31 = v54;
  *a2 = v53;
  *(a2 + 16) = v31;
  v32 = v55;
  v33 = v56;
  v34 = v57;
  *(a2 + 80) = v58;
  *(a2 + 96) = v29;
  *(a2 + 48) = v33;
  *(a2 + 64) = v34;
  *(a2 + 32) = v32;
  sub_25F58F41C(&v53, &v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  v63 = v48;
  v64 = v50;
  v65 = v47;
  v66 = v49;
  v67 = v46;
  v68 = v45;
  v69 = v44;
  v70 = v37;
  v71 = v52;
  v72 = v25;
  v73 = v51;
  v74 = v43;
  v75 = v39;
  v76 = v42;
  v77 = v38;
  v78 = v27;
  v79 = v10;
  v80 = v26;
  v81 = v18;
  return sub_25F58F454(&v63);
}

unint64_t sub_25F58F3C8()
{
  result = qword_27FD9E040;
  if (!qword_27FD9E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E040);
  }

  return result;
}

uint64_t (*MultiModalLLMInferenceConfig.updateFilePaths(_:)(uint64_t (*result)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  v2 = v1;
  if (*(v1 + 48) == 3)
  {
    v3 = result;
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);

    v6 = v3(v4, v5);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      sub_25F581A78(v4, v5, 3u);
      v4 = v8;
      v5 = v9;
    }

    result = sub_25F581A78(*(v2 + 32), *(v2 + 40), *(v2 + 48));
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    *(v2 + 48) = 3;
  }

  return result;
}

char *MultiModalLLMInference.__allocating_init(modelBundleID:usecaseId:promptConfig:imageClampSize:topKSampling:nucleusSampling:temperature:seed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, char a18, double a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v157 = a4;
  v25 = v24;
  LODWORD(v152) = a8;
  v150 = a6;
  v151 = a7;
  v154 = a3;
  v159 = a2;
  v28 = sub_25F5E3884();
  MEMORY[0x28223BE20](v28 - 8, v29);
  v147 = v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v148 = v140 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v149 = v140 - v36;
  v37 = sub_25F5E4444();
  MEMORY[0x28223BE20](v37 - 8, v38);
  v146 = v140 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8);
  MEMORY[0x28223BE20](v40 - 8, v41);
  v145 = v140 - v42;
  v43 = sub_25F5E3AD4();
  v153 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v43, v44);
  v47 = v140 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v48);
  v50 = v140 - v49;
  v155 = v25;
  v158 = swift_allocObject();
  v51 = *a5;
  v52 = *(a5 + 8);
  v53 = *(a5 + 16);
  v54 = a1;
  v55 = a1;
  v56 = v159;
  v57 = v156;
  sub_25F580714(v55, v159, v58, v59);
  if (!v57)
  {
    v144 = v53;
    v156 = v51;
    v142 = v47;
    v143 = v43;
    static MultiModalLLMInference.getSessionConfig(modelBundleID:usecaseId:)(v54, v56, v154, v157, v50);

    sub_25F5E3864();
    swift_allocObject();
    v157 = sub_25F5E3854();
    v62 = sub_25F5E3844();
    v63 = v52;
    v60 = v158;
    v64 = v62;
    v140[2] = v54;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v65 = sub_25F5E3FB4();
    v66 = __swift_project_value_buffer(v65, qword_27FD9EA20);
    v67 = v64;
    v140[1] = v66;
    v68 = sub_25F5E3F94();
    v69 = sub_25F5E47A4();

    v70 = os_log_type_enabled(v68, v69);
    v154 = 0;
    if (v70)
    {
      v71 = swift_slowAlloc();
      v140[0] = v50;
      v72 = v69;
      v73 = v71;
      v74 = swift_slowAlloc();
      v161 = v74;
      *v73 = 136315138;
      v160[0] = v67;
      sub_25F5E38A4();
      v75 = v67;
      v76 = sub_25F5E4474();
      v78 = sub_25F570AF8(v76, v77, &v161);
      v63 = v52;

      *(v73 + 4) = v78;
      v79 = v72;
      v50 = v140[0];
      _os_log_impl(&dword_25F56A000, v68, v79, "Multimodal model's resource information: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      MEMORY[0x25F8E3B70](v74, -1, -1);
      MEMORY[0x25F8E3B70](v73, -1, -1);
    }

    v80 = sub_25F5E3894();
    if (!v80)
    {
      v82 = 0xE700000000000000;
      v86 = 0x6E776F6E6B6E75;
      goto LABEL_18;
    }

    v81 = v80;
    if (*(v80 + 16))
    {
      v82 = 0xE700000000000000;
      v83 = sub_25F5709C8(0x6E6F6973726576, 0xE700000000000000);
      if (v84)
      {
        v85 = (*(v81 + 56) + 16 * v83);
        v86 = *v85;
        v82 = v85[1];

LABEL_17:

LABEL_18:
        v87 = v152;
        v89 = v150;
        v88 = v151;
        v90 = (v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion);
        *v90 = v86;
        v90[1] = v82;
        v91 = v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize;
        *v91 = v89;
        *(v91 + 8) = v88;
        *(v91 + 16) = v87 & 1;
        v92 = v144;
        if (v144 <= 1)
        {
          v141 = v67;
          if (v144)
          {

            v106 = sub_25F5E3F94();
            v107 = sub_25F5E4794();
            if (os_log_type_enabled(v106, v107))
            {
              v108 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v161 = v109;
              *v108 = 136315138;
              *(v108 + 4) = sub_25F570AF8(v156, v63, &v161);
              _os_log_impl(&dword_25F56A000, v106, v107, "Using prompt_template_id=%s", v108, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v109);
              MEMORY[0x25F8E3B70](v109, -1, -1);
              MEMORY[0x25F8E3B70](v108, -1, -1);
            }

            v110 = v148;
            v111 = v154;
            sub_25F5E3874();
            v112 = v156;
            if (v111)
            {

              sub_25F581A78(v112, v63, 1u);
              sub_25F581A78(v112, v63, 1u);

              (*(v153 + 8))(v50, v143);

              goto LABEL_4;
            }

            v152 = v90;
            v154 = 0;
            sub_25F5E3D54();
            sub_25F581A78(v112, v63, 1u);
            v126 = sub_25F5E3D64();
            (*(*(v126 - 8) + 56))(v110, 0, 1, v126);
            sub_25F57B86C(v110, v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
            v127 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
            v128 = sub_25F5E4244();
            (*(*(v128 - 8) + 56))(v60 + v127, 1, 1, v128);
            v129 = (v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
            *v129 = 0;
            v129[1] = 0;
          }

          else
          {
            v152 = v90;

            v93 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
            v94 = sub_25F5E3D64();
            (*(*(v94 - 8) + 56))(v60 + v93, 1, 1, v94);
            v95 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
            v96 = sub_25F5E4244();
            (*(*(v96 - 8) + 56))(v60 + v95, 1, 1, v96);
            v97 = (v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
            *v97 = v156;
            v97[1] = v63;
          }

          v124 = v153;
          v125 = v143;
          goto LABEL_36;
        }

        v152 = v90;
        if (v144 == 2)
        {

          v98 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
          v99 = sub_25F5E3D64();
          (*(*(v99 - 8) + 56))(v60 + v98, 1, 1, v99);

          v100 = v145;
          v101 = v60;
          v102 = v156;
          v103 = v154;
          sub_25F5E4214();
          if (v103)
          {
            v104 = 0;
            v105 = v143;
            goto LABEL_30;
          }

          v141 = v67;
          v154 = 0;
          sub_25F581A78(v102, v63, 2u);
          v122 = sub_25F5E4244();
          (*(*(v122 - 8) + 56))(v100, 0, 1, v122);
          sub_25F57B86C(v100, v101 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
          v123 = (v101 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
          *v123 = 0;
          v123[1] = 0;
          v124 = v153;
          v125 = v143;
          v60 = v101;
        }

        else
        {

          v113 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
          v114 = sub_25F5E3D64();
          v104 = 1;
          (*(*(v114 - 8) + 56))(v60 + v113, 1, 1, v114);
          v115 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
          v116 = sub_25F5E4244();
          (*(*(v116 - 8) + 56))(v60 + v115, 1, 1, v116);
          sub_25F5E4424();
          v117 = v60;
          v118 = v156;
          v119 = v154;
          v120 = sub_25F5E43B4();
          v154 = v119;
          if (v119)
          {
            v105 = v143;
            v92 = v144;
LABEL_30:

            sub_25F581A78(v156, v63, v92);
            (*(v153 + 8))(v50, v105);

            v60 = v158;
            sub_25F57C148(v158 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
            if (!v104)
            {
              goto LABEL_4;
            }

            goto LABEL_45;
          }

          v130 = v120;
          v131 = v121;
          v141 = v67;
          sub_25F581A78(v118, v63, 3u);
          v132 = (v117 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
          *v132 = v130;
          v132[1] = v131;
          v124 = v153;
          v125 = v143;
          v60 = v117;
        }

LABEL_36:
        (*(v124 + 16))(v142, v50, v125);
        sub_25F5E39D4();
        swift_allocObject();
        *(v60 + 16) = sub_25F5E39C4();
        if (a18)
        {
          v133 = v149;
          if (a20)
          {
            (*(v124 + 8))(v50, v125);

            v134 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
            v135 = sub_25F5E3A64();
            (*(*(v135 - 8) + 56))(v60 + v134, 1, 1, v135);
LABEL_43:
            v137 = v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature;
            *v137 = a21;
            *(v137 + 8) = a22 & 1;
            v138 = v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed;
            *v138 = a23;
            *(v138 + 8) = a24 & 1;
            return v60;
          }

          sub_25F5E3A44();
LABEL_42:

          (*(v124 + 8))(v50, v125);
          v136 = sub_25F5E3A64();
          (*(*(v136 - 8) + 56))(v133, 0, 1, v136);
          sub_25F57B86C(v133, v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);
          goto LABEL_43;
        }

        v133 = v149;
        if (a20)
        {
          sub_25F5E3A54();
          goto LABEL_42;
        }

        sub_25F581FD8();
        swift_allocError();
        *v139 = 5;
        swift_willThrow();

        (*(v124 + 8))(v50, v125);

        sub_25F57C148(v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
LABEL_45:
        sub_25F57C148(v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
        goto LABEL_4;
      }
    }

    else
    {
      v82 = 0xE700000000000000;
    }

    v86 = 0x6E776F6E6B6E75;
    goto LABEL_17;
  }

  sub_25F581A78(v51, v52, v53);
  v60 = v158;
LABEL_4:
  swift_deallocPartialClassInstance();
  return v60;
}

char *MultiModalLLMInference.init(modelBundleID:usecaseId:promptConfig:imageClampSize:topKSampling:nucleusSampling:temperature:seed:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, char a18, double a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v151 = a4;
  v152 = a2;
  LODWORD(v146) = a8;
  v144 = a6;
  v145 = a7;
  v148 = a3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v143 = &v134 - v28;
  v29 = sub_25F5E4444();
  MEMORY[0x28223BE20](v29 - 8, v30);
  v141 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v140 = &v134 - v34;
  v35 = sub_25F5E3884();
  MEMORY[0x28223BE20](v35 - 8, v36);
  v142 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v41 = &v134 - v40;
  v42 = sub_25F5E3AD4();
  v147 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42, v43);
  v46 = &v134 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v47);
  v49 = &v134 - v48;
  v51 = *a5;
  v50 = *(a5 + 8);
  v52 = *(a5 + 16);
  v149 = a1;
  v53 = v152;
  v54 = v150;
  sub_25F580714(a1, v152, v55, v56);
  if (!v54)
  {
    v138 = v52;
    v135 = v41;
    v136 = v46;
    v139 = v51;
    v150 = v50;
    v137 = v42;
    type metadata accessor for MultiModalLLMInference(0);
    static MultiModalLLMInference.getSessionConfig(modelBundleID:usecaseId:)(v149, v53, v148, v151, v49);
    v148 = v49;

    sub_25F5E3864();
    swift_allocObject();
    v151 = sub_25F5E3854();
    v57 = sub_25F5E3844();
    v58 = v139;
    v59 = v138;
    v62 = v57;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v63 = sub_25F5E3FB4();
    v64 = __swift_project_value_buffer(v63, qword_27FD9EA20);
    v65 = v62;
    v134 = v64;
    v66 = sub_25F5E3F94();
    v67 = sub_25F5E47A4();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v155 = v69;
      *v68 = 136315138;
      v154[0] = v65;
      sub_25F5E38A4();
      v70 = v65;
      v71 = sub_25F5E4474();
      v73 = v65;
      v74 = v66;
      v75 = sub_25F570AF8(v71, v72, &v155);

      *(v68 + 4) = v75;
      v58 = v139;
      _os_log_impl(&dword_25F56A000, v74, v67, "Multimodal model's resource information: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x25F8E3B70](v69, -1, -1);
      MEMORY[0x25F8E3B70](v68, -1, -1);

      v65 = v73;
      v59 = v138;
    }

    else
    {
    }

    v76 = sub_25F5E3894();
    if (!v76)
    {
      v78 = 0xE700000000000000;
      v82 = 0x6E776F6E6B6E75;
      goto LABEL_19;
    }

    v77 = v76;
    if (*(v76 + 16))
    {
      v78 = 0xE700000000000000;
      v79 = sub_25F5709C8(0x6E6F6973726576, 0xE700000000000000);
      if (v80)
      {
        v81 = (*(v77 + 56) + 16 * v79);
        v82 = *v81;
        v78 = v81[1];

LABEL_18:

LABEL_19:
        v83 = v146;
        v85 = v144;
        v84 = v145;
        v86 = v153;
        v87 = (v153 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion);
        *v87 = v82;
        v87[1] = v78;
        v146 = v87;
        v88 = v86 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize;
        *v88 = v85;
        *(v88 + 8) = v84;
        *(v88 + 16) = v83 & 1;
        v89 = v136;
        if (v59 > 1)
        {
          v149 = v65;
          if (v59 != 2)
          {

            v109 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
            v110 = sub_25F5E3D64();
            v60 = v153;
            (*(*(v110 - 8) + 56))(v153 + v109, 1, 1, v110);
            v111 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
            v112 = sub_25F5E4244();
            (*(*(v112 - 8) + 56))(v60 + v111, 1, 1, v112);
            sub_25F5E4424();
            v113 = v150;
            v123 = sub_25F5E43B4();
            v125 = v124;
            sub_25F581A78(v58, v113, 3u);
            v126 = (v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
            *v126 = v123;
            v126[1] = v125;
            v122 = v147;
            v89 = v136;
            v107 = v137;
            goto LABEL_29;
          }

          v96 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
          v97 = sub_25F5E3D64();
          v60 = v153;
          (*(*(v97 - 8) + 56))(v153 + v96, 1, 1, v97);
          v98 = v150;

          v99 = v140;
          sub_25F5E4214();
          sub_25F581A78(v58, v98, 2u);
          v114 = sub_25F5E4244();
          (*(*(v114 - 8) + 56))(v99, 0, 1, v114);
          sub_25F57B86C(v99, v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
          v115 = (v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
          *v115 = 0;
          v115[1] = 0;
        }

        else
        {
          if (v59)
          {
            v100 = v150;

            v101 = sub_25F5E3F94();
            v102 = sub_25F5E4794();
            if (os_log_type_enabled(v101, v102))
            {
              v103 = swift_slowAlloc();
              v104 = v65;
              v105 = swift_slowAlloc();
              v155 = v105;
              *v103 = 136315138;
              *(v103 + 4) = sub_25F570AF8(v58, v100, &v155);
              _os_log_impl(&dword_25F56A000, v101, v102, "Using prompt_template_id=%s", v103, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v105);
              v106 = v105;
              v65 = v104;
              MEMORY[0x25F8E3B70](v106, -1, -1);
              MEMORY[0x25F8E3B70](v103, -1, -1);
            }

            v107 = v137;
            v108 = v135;
            sub_25F5E3874();
            v89 = v136;
            v149 = v65;
            v116 = v139;
            v117 = v150;
            sub_25F5E3D54();
            sub_25F581A78(v116, v117, 1u);
            v118 = sub_25F5E3D64();
            (*(*(v118 - 8) + 56))(v108, 0, 1, v118);
            v60 = v153;
            sub_25F57B86C(v108, v153 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
            v119 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
            v120 = sub_25F5E4244();
            (*(*(v120 - 8) + 56))(v60 + v119, 1, 1, v120);
            v121 = (v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
            *v121 = 0;
            v121[1] = 0;
            v122 = v147;
LABEL_29:
            (*(v122 + 16))(v89, v148, v107);
            sub_25F5E39D4();
            swift_allocObject();
            *(v60 + 16) = sub_25F5E39C4();
            if (a18)
            {
              v127 = v143;
              if (a20)
              {
                (*(v122 + 8))(v148, v107);

                v128 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
                v129 = sub_25F5E3A64();
                (*(*(v129 - 8) + 56))(v60 + v128, 1, 1, v129);
LABEL_36:
                v131 = v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature;
                *v131 = a21;
                *(v131 + 8) = a22 & 1;
                v132 = v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed;
                *v132 = a23;
                *(v132 + 8) = a24 & 1;
                return v60;
              }

              sub_25F5E3A44();
            }

            else
            {
              v127 = v143;
              if ((a20 & 1) == 0)
              {
                sub_25F581FD8();
                swift_allocError();
                *v133 = 5;
                swift_willThrow();

                (*(v122 + 8))(v148, v107);

                sub_25F57C148(v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
                sub_25F57C148(v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
                goto LABEL_4;
              }

              sub_25F5E3A54();
            }

            (*(v122 + 8))(v148, v107);
            v130 = sub_25F5E3A64();
            (*(*(v130 - 8) + 56))(v127, 0, 1, v130);
            sub_25F57B86C(v127, v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);
            goto LABEL_36;
          }

          v149 = v65;

          v90 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
          v91 = sub_25F5E3D64();
          v60 = v153;
          (*(*(v91 - 8) + 56))(v153 + v90, 1, 1, v91);
          v92 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
          v93 = sub_25F5E4244();
          (*(*(v93 - 8) + 56))(v60 + v92, 1, 1, v93);
          v94 = (v60 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
          v95 = v150;
          *v94 = v58;
          v94[1] = v95;
        }

        v122 = v147;
        v107 = v137;
        goto LABEL_29;
      }
    }

    else
    {
      v78 = 0xE700000000000000;
    }

    v82 = 0x6E776F6E6B6E75;
    goto LABEL_18;
  }

  sub_25F581A78(v51, v50, v52);
  v60 = v153;
LABEL_4:
  type metadata accessor for MultiModalLLMInference(0);
  swift_deallocPartialClassInstance();
  return v60;
}

uint64_t static MultiModalLLMInference.getSessionConfig(modelBundleID:usecaseId:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v38 = a4;
  v9 = sub_25F5E3A14();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEB0, qword_25F5E8200);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v35 - v13;
  v15 = sub_25F5E3A34();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  v36 = a1;
  sub_25F5E3A24();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_25F57C148(v14, &qword_27FD9DEB0, qword_25F5E8200);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v20 = sub_25F5E3FB4();
    __swift_project_value_buffer(v20, qword_27FD9EA20);

    v21 = sub_25F5E3F94();
    v22 = sub_25F5E47B4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_25F570AF8(v36, a2, &v39);
      _os_log_impl(&dword_25F56A000, v21, v22, "Failed to get model bundle %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x25F8E3B70](v24, -1, -1);
      MEMORY[0x25F8E3B70](v23, -1, -1);
    }

    sub_25F581FD8();
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  else
  {
    v35[1] = a3;
    (*(v16 + 32))(v19, v14, v15);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v35[2] = v5;
    v27 = sub_25F5E3FB4();
    __swift_project_value_buffer(v27, qword_27FD9EA20);

    v28 = sub_25F5E3F94();
    v29 = sub_25F5E4794();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_25F570AF8(v36, a2, &v39);
      _os_log_impl(&dword_25F56A000, v28, v29, "Using multimodal adapter %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x25F8E3B70](v31, -1, -1);
      MEMORY[0x25F8E3B70](v30, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEB8, &unk_25F5E7810);
    v32 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_25F5E5EE0;
    (*(v16 + 16))(v33 + v32, v19, v15);

    sub_25F5E3A04();
    v34 = [objc_opt_self() processInfo];
    [v34 processIdentifier];

    sub_25F5E3AC4();
    return (*(v16 + 8))(v19, v15);
  }
}

char *MultiModalLLMInference.__allocating_init(config:)(__int128 *a1)
{
  v2 = sub_25F5E3884();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v145 = &v136 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v150 = &v136 - v11;
  v12 = sub_25F5E4444();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v148 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v136 - v17;
  v19 = sub_25F5E3AD4();
  v21 = MEMORY[0x28223BE20](v19, v20);
  v154 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v25 = a1[7];
  v172 = a1[6];
  v173 = v25;
  v174 = a1[8];
  v175 = *(a1 + 144);
  v26 = a1[3];
  v168 = a1[2];
  v169 = v26;
  v27 = a1[5];
  v170 = a1[4];
  v171 = v27;
  v28 = a1[1];
  v166 = *a1;
  v167 = v28;
  v29 = 0.0;
  v158 = v30;
  v157 = v24;
  v160 = &v136 - v31;
  v149 = v5;
  v147 = v18;
  if (v171 & 1) != 0 || (v170)
  {
    LODWORD(v155) = 1;
    v32 = 0.0;
  }

  else
  {
    LODWORD(v155) = 0;
    v29 = *(&v169 + 1);
    v32 = *(&v170 + 1);
  }

  v33 = v166;
  v34 = *(&v167 + 1);
  v159 = v167;
  v35 = v168;
  v36 = v169;
  v146 = *(&v171 + 1);
  v152 = v172;
  v153 = v173;
  v151 = *(&v173 + 1);
  v156 = v174;
  v37 = *(&v174 + 1);
  v38 = v175;
  v161 = type metadata accessor for MultiModalLLMInference(0);
  v162 = swift_allocObject();

  sub_25F57B79C(v35, *(&v35 + 1), v36);
  v39 = v163;
  sub_25F580714(v33, *(&v33 + 1), v40, v41);
  if (!v39)
  {
    LODWORD(v163) = v36;
    v144 = v35;
    v143 = v38;
    v142 = v37;
    static MultiModalLLMInference.getSessionConfig(modelBundleID:usecaseId:)(v33, *(&v33 + 1), v159, v34, v160);

    sub_25F5E3864();
    swift_allocObject();
    v44 = sub_25F5E3854();
    v45 = sub_25F5E3844();
    v159 = 0;
    v42 = v162;
    v46 = *(&v144 + 1);
    v47 = v45;
    v140 = v33;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v48 = sub_25F5E3FB4();
    v49 = __swift_project_value_buffer(v48, qword_27FD9EA20);
    v50 = v47;
    v139 = v49;
    v51 = sub_25F5E3F94();
    v52 = sub_25F5E47A4();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v156;
    if (v53)
    {
      v55 = swift_slowAlloc();
      v138 = v55;
      v141 = swift_slowAlloc();
      v165 = v141;
      *v55 = 136315138;
      v164 = v50;
      sub_25F5E38A4();
      v56 = v50;
      v57 = sub_25F5E4474();
      v59 = sub_25F570AF8(v57, v58, &v165);
      v137 = v51;
      v60 = v44;
      v61 = v46;
      v62 = v50;
      v63 = v54;
      v64 = v52;
      v65 = v59;

      v66 = v138;
      *(v138 + 1) = v65;
      v67 = v64;
      v54 = v63;
      v50 = v62;
      v46 = v61;
      v44 = v60;
      v68 = v137;
      v69 = v66;
      _os_log_impl(&dword_25F56A000, v137, v67, "Multimodal model's resource information: %s", v66, 0xCu);
      v70 = v141;
      __swift_destroy_boxed_opaque_existential_1Tm(v141);
      MEMORY[0x25F8E3B70](v70, -1, -1);
      MEMORY[0x25F8E3B70](v69, -1, -1);
    }

    else
    {
    }

    v71 = sub_25F5E3894();
    if (!v71)
    {
      v73 = 0xE700000000000000;
      v77 = 0x6E776F6E6B6E75;
      goto LABEL_23;
    }

    v72 = v71;
    if (*(v71 + 16))
    {
      v73 = 0xE700000000000000;
      v74 = sub_25F5709C8(0x6E6F6973726576, 0xE700000000000000);
      if (v75)
      {
        v76 = (*(v72 + 56) + 16 * v74);
        v77 = *v76;
        v73 = v76[1];

LABEL_22:

LABEL_23:
        v78 = v163;
        v79 = (v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion);
        *v79 = v77;
        v79[1] = v73;
        v141 = v79;
        v80 = v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize;
        *v80 = v29;
        *(v80 + 8) = v32;
        *(v80 + 16) = v155;
        if (v78 <= 1)
        {
          if (v78)
          {
            v163 = *(&v33 + 1);

            v96 = sub_25F5E3F94();
            v97 = sub_25F5E4794();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = v46;
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v165 = v100;
              *v99 = 136315138;
              *(v99 + 4) = sub_25F570AF8(v144, v98, &v165);
              _os_log_impl(&dword_25F56A000, v96, v97, "Using prompt_template_id=%s", v99, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v100);
              MEMORY[0x25F8E3B70](v100, -1, -1);
              MEMORY[0x25F8E3B70](v99, -1, -1);
            }

            v87 = v158;
            v89 = v160;
            v101 = v159;
            sub_25F5E3874();
            v102 = v144;
            if (v101)
            {

              v103 = v102;
              v104 = v102;
              v105 = *(&v144 + 1);
              sub_25F581A78(v103, *(&v144 + 1), 1u);
              sub_25F581A78(v104, v105, 1u);

              (*(v87 + 8))(v89, v157);

              goto LABEL_8;
            }

            v81 = v156;
            v155 = v50;
            v163 = v44;
            v159 = 0;
            v115 = v145;
            v116 = *(&v144 + 1);
            v117 = v144;
            sub_25F5E3D54();
            sub_25F581A78(v117, v116, 1u);
            v118 = sub_25F5E3D64();
            (*(*(v118 - 8) + 56))(v115, 0, 1, v118);
            sub_25F57B86C(v115, v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
            v119 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
            v120 = sub_25F5E4244();
            (*(*(v120 - 8) + 56))(v42 + v119, 1, 1, v120);
            v121 = (v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
            *v121 = 0;
            v121[1] = 0;
            v88 = v157;
          }

          else
          {
            v81 = v54;
            v155 = v50;
            v163 = v44;

            v82 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
            v83 = sub_25F5E3D64();
            (*(*(v83 - 8) + 56))(v42 + v82, 1, 1, v83);
            v84 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
            v85 = sub_25F5E4244();
            (*(*(v85 - 8) + 56))(v42 + v84, 1, 1, v85);
            v86 = (v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
            *v86 = v144;
            v86[1] = v46;
            v87 = v158;
            v88 = v157;
            v89 = v160;
          }

          goto LABEL_41;
        }

        if (v78 == 2)
        {

          v90 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
          v91 = sub_25F5E3D64();
          (*(*(v91 - 8) + 56))(v42 + v90, 1, 1, v91);

          v92 = v147;
          v93 = v144;
          v94 = v159;
          sub_25F5E4214();
          v87 = v158;
          if (v94)
          {
            v95 = 0;
            goto LABEL_35;
          }

          v155 = v50;
          v163 = v44;
          v159 = 0;
          sub_25F581A78(v93, v46, 2u);
          v113 = sub_25F5E4244();
          (*(*(v113 - 8) + 56))(v92, 0, 1, v113);
          sub_25F57B86C(v92, v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
          v114 = (v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
          *v114 = 0;
          v114[1] = 0;
        }

        else
        {

          v106 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
          v107 = sub_25F5E3D64();
          v95 = 1;
          (*(*(v107 - 8) + 56))(v42 + v106, 1, 1, v107);
          v108 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
          v109 = sub_25F5E4244();
          (*(*(v109 - 8) + 56))(v42 + v108, 1, 1, v109);
          sub_25F5E4424();
          v93 = v144;
          v110 = v159;
          v111 = sub_25F5E43B4();
          v159 = v110;
          if (v110)
          {
            v87 = v158;
LABEL_35:

            sub_25F581A78(v93, v46, v163);
            (*(v87 + 8))(v160, v157);

            sub_25F57C148(v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
            if (!v95)
            {
              goto LABEL_8;
            }

            goto LABEL_49;
          }

          v122 = v111;
          v123 = v112;
          v155 = v50;
          v163 = v44;
          sub_25F581A78(v93, v46, 3u);
          v124 = (v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
          *v124 = v122;
          v124[1] = v123;
          v87 = v158;
        }

        v88 = v157;
        v89 = v160;
        v81 = v156;
LABEL_41:
        (*(v87 + 16))(v154, v89, v88);
        sub_25F5E39D4();
        swift_allocObject();
        *(v42 + 16) = sub_25F5E39C4();
        v125 = v143;
        if (v152)
        {
          v126 = v142;
          if (v153)
          {
            (*(v87 + 8))(v89, v88);

            v127 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
            v128 = sub_25F5E3A64();
            (*(*(v128 - 8) + 56))(v42 + v127, 1, 1, v128);
          }

          else
          {
            v131 = v150;
            sub_25F5E3A44();

            (*(v87 + 8))(v89, v88);
            v132 = sub_25F5E3A64();
            (*(*(v132 - 8) + 56))(v131, 0, 1, v132);
            sub_25F57B86C(v131, v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);
          }

          goto LABEL_47;
        }

        if (v153)
        {
          v129 = v150;
          sub_25F5E3A54();

          (*(v87 + 8))(v89, v88);
          v130 = sub_25F5E3A64();
          (*(*(v130 - 8) + 56))(v129, 0, 1, v130);
          sub_25F57B86C(v129, v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);
          v126 = v142;
LABEL_47:
          v133 = v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature;
          *v133 = v151;
          *(v133 + 8) = v81;
          v134 = v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed;
          *v134 = v126;
          *(v134 + 8) = v125;
          goto LABEL_9;
        }

        sub_25F581FD8();
        swift_allocError();
        *v135 = 5;
        swift_willThrow();

        (*(v87 + 8))(v89, v88);

        sub_25F57C148(v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
LABEL_49:
        sub_25F57C148(v42 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
        goto LABEL_8;
      }
    }

    else
    {
      v73 = 0xE700000000000000;
    }

    v77 = 0x6E776F6E6B6E75;
    goto LABEL_22;
  }

  sub_25F581A78(v35, *(&v35 + 1), v36);
  v42 = v162;
LABEL_8:
  swift_deallocPartialClassInstance();
LABEL_9:
  sub_25F58F454(&v166);
  return v42;
}

uint64_t sub_25F592908()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion);

  return v1;
}

void sub_25F592944(void *a1)
{
  v4 = sub_25F5E41F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize + 16))
  {
    v9 = a1;
  }

  else
  {
    v10 = sub_25F5DC7A0(a1, *(v1 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize), *(v1 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize + 8));
    if (v2)
    {

      sub_25F5748D4();
      swift_allocError();
      *v11 = 14;
      swift_willThrow();
      return;
    }

    v9 = v10;
  }

  sub_25F5DC420(v9);
  if (v2)
  {

    sub_25F5748D4();
    swift_allocError();
    *v12 = 12;
    swift_willThrow();
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D42D98], v4);
    sub_25F5E4224();
  }
}

uint64_t sub_25F592B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25F592B30, 0, 0);
}

uint64_t sub_25F592B30()
{
  v1 = v0[4];

  v2 = v1;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_25F592BEC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_25F598744(v5, v4, v6, v7);
}

uint64_t sub_25F592BEC(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_25F592D18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25F592D3C, 0, 0);
}

uint64_t sub_25F592D3C()
{

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_25F592DFC;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_25F59AB20(v4, v2, v3);
}

uint64_t sub_25F592DFC(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_25F592F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[52] = a3;
  v4[53] = a4;
  v4[50] = a1;
  v4[51] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8);
  v4[54] = swift_task_alloc();
  v5 = sub_25F5E4244();
  v4[55] = v5;
  v4[56] = *(v5 - 8);
  v4[57] = swift_task_alloc();
  v6 = sub_25F5E41F4();
  v4[58] = v6;
  v4[59] = *(v6 - 8);
  v4[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800);
  v4[61] = swift_task_alloc();
  v7 = sub_25F5E3D64();
  v4[62] = v7;
  v4[63] = *(v7 - 8);
  v4[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F593114, 0, 0);
}

uint64_t sub_25F593114()
{
  v1 = *(v0 + 408);
  v2 = sub_25F572474(MEMORY[0x277D84F90]);
  v3 = v1 + 64;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v7 = (63 - v5) >> 6;
  v116 = v1;

  v9 = 0;
  v112 = v7;
  v114 = v3;
  v118 = v0;
  while (v6)
  {
LABEL_11:
    v12 = (v9 << 10) | (16 * __clz(__rbit64(v6)));
    v13 = (*(v116 + 48) + v12);
    v14 = v13[1];
    v120 = *v13;
    v15 = (*(v116 + 56) + v12);
    v16 = *v15;
    v17 = v15[1];
    *(v118 + 40) = MEMORY[0x277D837D0];
    *(v118 + 48) = MEMORY[0x277D42EC0];
    *(v118 + 16) = v16;
    *(v118 + 24) = v17;
    sub_25F573C54((v118 + 16), v118 + 56);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v118 + 80);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v118 + 56, v19);
    v21 = *(v19 - 8);
    v22 = swift_task_alloc();
    (*(v21 + 16))(v22, v20, v19);
    v23 = *v22;
    v24 = v22[1];
    *(v118 + 120) = MEMORY[0x277D837D0];
    *(v118 + 128) = MEMORY[0x277D42EC0];
    *(v118 + 96) = v23;
    *(v118 + 104) = v24;
    v26 = sub_25F5709C8(v120, v14);
    v27 = v2[2];
    v28 = (v25 & 1) == 0;
    result = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_63;
    }

    v29 = v25;
    if (v2[3] >= result)
    {
      v0 = v118;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v25)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_25F57AF50();
        if (v29)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_25F579850(result, isUniquelyReferenced_nonNull_native);
      v30 = sub_25F5709C8(v120, v14);
      v0 = v118;
      if ((v29 & 1) != (v31 & 1))
      {
LABEL_55:

        return sub_25F5E4BC4();
      }

      v26 = v30;
      if (v29)
      {
LABEL_4:

        v10 = (v2[7] + 40 * v26);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        sub_25F573C54((v0 + 96), v10);
        goto LABEL_5;
      }
    }

    v32 = *(v0 + 120);
    v110 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v32);
    v33 = *(v32 - 8);
    v34 = swift_task_alloc();
    (*(v33 + 16))(v34, v110, v32);
    v35 = *v34;
    v36 = v34[1];
    *(v0 + 160) = MEMORY[0x277D837D0];
    *(v0 + 168) = MEMORY[0x277D42EC0];
    *(v0 + 136) = v35;
    *(v0 + 144) = v36;
    v2[(v26 >> 6) + 8] |= 1 << v26;
    v37 = (v2[6] + 16 * v26);
    *v37 = v120;
    v37[1] = v14;
    result = sub_25F573C54((v0 + 136), v2[7] + 40 * v26);
    v38 = v2[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_65;
    }

    v2[2] = v40;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

LABEL_5:
    v6 &= v6 - 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

    v7 = v112;
    v3 = v114;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  v41 = v2;
  v42 = *(v0 + 472);
  v44 = *(v0 + 416);
  v43 = *(v0 + 424);

  v45 = v44 + 64;
  v46 = -1;
  v47 = -1 << *(v44 + 32);
  if (-v47 < 64)
  {
    v46 = ~(-1 << -v47);
  }

  v48 = v46 & *(v44 + 64);
  v49 = v43 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize;
  v50 = (63 - v47) >> 6;
  v111 = *MEMORY[0x277D42D98];
  v109 = (v42 + 104);
  v51 = v41;
  v113 = v44;

  v52 = 0;
  v107 = v49;
  v108 = v44 + 64;
  v106 = v50;
  while (2)
  {
    *(v0 + 520) = v51;
    if (v48)
    {
LABEL_32:
      v55 = __clz(__rbit64(v48)) | (v52 << 6);
      v56 = (*(v113 + 48) + 16 * v55);
      v57 = v56[1];
      v119 = *v56;
      v58 = *(*(v113 + 56) + 8 * v55);
      v117 = sub_25F5E4234();
      *(v0 + 200) = v117;
      *(v0 + 208) = MEMORY[0x277D42E10];
      __swift_allocate_boxed_opaque_existential_1Tm((v0 + 176));
      v115 = v58;
      v121 = v57;
      if (*(v49 + 16))
      {
        v59 = v58;

        v60 = v59;
      }

      else
      {
        v62 = *v49;
        v61 = *(v49 + 8);

        v60 = sub_25F5DC7A0(v58, v62, v61);
      }

      v63 = v60;
      sub_25F5DC420(v60);
      (*v109)(*(v0 + 480), v111, *(v0 + 464));
      sub_25F5E4224();

      sub_25F573C54((v0 + 176), v0 + 216);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v65 = *(v0 + 240);
      v66 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v65);
      v67 = *(v65 - 8);
      v68 = swift_task_alloc();
      (*(v67 + 16))(v68, v66, v65);
      *(v0 + 280) = v117;
      *(v0 + 288) = MEMORY[0x277D42E10];
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 256));
      v70 = *(*(v117 - 8) + 32);
      v70(boxed_opaque_existential_1Tm, v68, v117);
      result = sub_25F5709C8(v119, v121);
      v72 = v51[2];
      v73 = (v71 & 1) == 0;
      v39 = __OFADD__(v72, v73);
      v74 = v72 + v73;
      if (v39)
      {
        goto LABEL_64;
      }

      v75 = v71;
      if (v51[3] < v74)
      {
        sub_25F579850(v74, v64);
        result = sub_25F5709C8(v119, v121);
        if ((v75 & 1) != (v76 & 1))
        {
          goto LABEL_55;
        }

        if ((v75 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_25:
        v53 = (v51[7] + 40 * result);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        sub_25F573C54((v0 + 256), v53);

LABEL_26:
        v50 = v106;
        v48 &= v48 - 1;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));

        v49 = v107;
        v45 = v108;
        continue;
      }

      if (v64)
      {
        if (v71)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v85 = result;
        sub_25F57AF50();
        result = v85;
        if (v75)
        {
          goto LABEL_25;
        }
      }

LABEL_42:
      v77 = *(v0 + 280);
      v78 = result;
      v104 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, v77);
      v105 = v51;
      v79 = *(v77 - 8);
      v80 = swift_task_alloc();
      (*(v79 + 16))(v80, v104, v77);
      v51 = v105;
      *(v0 + 320) = v117;
      *(v0 + 328) = MEMORY[0x277D42E10];
      v81 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 296));
      v70(v81, v80, v117);
      v105[(v78 >> 6) + 8] |= 1 << v78;
      v82 = (v105[6] + 16 * v78);
      *v82 = v119;
      v82[1] = v121;
      result = sub_25F573C54((v0 + 296), v105[7] + 40 * v78);
      v83 = v105[2];
      v39 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v39)
      {
        goto LABEL_66;
      }

      v105[2] = v84;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));

      goto LABEL_26;
    }

    break;
  }

  while (1)
  {
    v54 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v54 >= v50)
    {
      v86 = v51;
      v87 = *(v0 + 496);
      v88 = *(v0 + 504);
      v89 = *(v0 + 488);
      v90 = *(v0 + 424);

      sub_25F573B94(v90 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, v89, &qword_27FD9DE80, &unk_25F5E7800);
      if ((*(v88 + 48))(v89, 1, v87) == 1)
      {
        v91 = *(v0 + 440);
        v92 = *(v0 + 448);
        v94 = *(v0 + 424);
        v93 = *(v0 + 432);
        sub_25F57C148(*(v0 + 488), &qword_27FD9DE80, &unk_25F5E7800);
        sub_25F573B94(v94 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, v93, &qword_27FD9DE78, &qword_25F5E77F8);
        if ((*(v92 + 48))(v93, 1, v91) == 1)
        {
          v95 = *(v0 + 432);

          sub_25F57C148(v95, &qword_27FD9DE78, &qword_25F5E77F8);
          sub_25F581FD8();
          swift_allocError();
          *v96 = 7;
          swift_willThrow();

          v103 = *(v0 + 8);

          return v103();
        }

        else
        {
          (*(*(v0 + 448) + 32))(*(v0 + 456), *(v0 + 432), *(v0 + 440));
          v100 = swift_task_alloc();
          *(v0 + 544) = v100;
          *v100 = v0;
          v100[1] = sub_25F593FEC;
          v101 = *(v0 + 456);
          v102 = *(v0 + 424);

          return sub_25F597084(v101, v86, v102);
        }
      }

      else
      {
        (*(*(v0 + 504) + 32))(*(v0 + 512), *(v0 + 488), *(v0 + 496));
        v97 = swift_task_alloc();
        *(v0 + 528) = v97;
        *v97 = v0;
        v97[1] = sub_25F593D28;
        v98 = *(v0 + 512);
        v99 = *(v0 + 424);

        return sub_25F595FFC(v98, v86, v99);
      }
    }

    v48 = *(v45 + 8 * v54);
    ++v52;
    if (v48)
    {
      v52 = v54;
      goto LABEL_32;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_25F593D28(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[42] = v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;
  v4[67] = v2;

  if (v2)
  {
    v5 = sub_25F593F34;
  }

  else
  {
    v5 = sub_25F593E64;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F593E64()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[50];
  (*(v0[63] + 8))(v0[64], v0[62]);
  *v3 = v1;
  v3[1] = v2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F593F34()
{
  (*(v0[63] + 8))(v0[64], v0[62]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F593FEC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[46] = v3;
  v4[47] = a1;
  v4[48] = a2;
  v4[49] = v2;
  v4[69] = v2;

  if (v2)
  {
    v5 = sub_25F5941F4;
  }

  else
  {
    v5 = sub_25F594128;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F594128()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[50];
  (*(v0[56] + 8))(v0[57], v0[55]);
  *v3 = v1;
  v3[1] = v2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F5941F4()
{
  (*(v0[56] + 8))(v0[57], v0[55]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F5942AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[42] = a5;
  v6[43] = a6;
  v6[40] = a3;
  v6[41] = a4;
  v6[38] = a1;
  v6[39] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF78, &qword_25F5E7988);
  v6[44] = v7;
  v6[45] = *(v7 - 8);
  v6[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF80, &qword_25F5E7990);
  v6[47] = swift_task_alloc();
  v6[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF88, &qword_25F5E7998);
  v6[49] = swift_task_alloc();
  v8 = sub_25F5E3C64();
  v6[50] = v8;
  v6[51] = *(v8 - 8);
  v6[52] = swift_task_alloc();
  v9 = sub_25F5E3C84();
  v6[53] = v9;
  v6[54] = *(v9 - 8);
  v6[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF40, &unk_25F5E8580);
  v6[56] = swift_task_alloc();
  v10 = sub_25F5E3F84();
  v6[57] = v10;
  v6[58] = *(v10 - 8);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  v6[61] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF48, &unk_25F5E7950);
  v6[62] = v11;
  v6[63] = *(v11 - 8);
  v6[64] = swift_task_alloc();
  v12 = sub_25F5E4144();
  v6[65] = v12;
  v6[66] = *(v12 - 8);
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F594654, 0, 0);
}

uint64_t sub_25F594654()
{
  v1 = *(v0 + 536);
  v23 = *(v0 + 528);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v21 = *(v0 + 496);
  v22 = *(v0 + 520);
  v20 = *(v0 + 488);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 328);
  v24 = *(v0 + 448);
  v7 = *(v0 + 304);
  v8 = swift_task_alloc();
  v9 = *(v0 + 312);
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 40) = v6;
  *(v8 + 48) = v5;
  sub_25F5E4154();

  v10 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  *(v0 + 552) = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  v11 = v4 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature;
  *(v0 + 560) = *(v4 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature);
  *(v0 + 684) = *(v11 + 8);
  v12 = v4 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed;
  *(v0 + 568) = *(v4 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed);
  *(v0 + 685) = *(v12 + 8);
  sub_25F573B94(v4 + v10, v20, &qword_27FD9DE70, &qword_25F5E77F0);
  sub_25F5E3AA4();
  sub_25F5E3A94();
  sub_25F5E3A74();
  sub_25F5E3A84();
  *(v0 + 680) = *MEMORY[0x277D0E548];
  v13 = *(v2 + 104);
  *(v0 + 576) = v13;
  *(v0 + 584) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v13(v3);
  *(v0 + 592) = sub_25F59CA78(&qword_27FD9DF98, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
  sub_25F5E4264();
  v14 = *(v2 + 8);
  *(v0 + 600) = v14;
  *(v0 + 608) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v3, v21);
  v15 = *(v23 + 8);
  *(v0 + 616) = v15;
  *(v0 + 624) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v1, v22);
  v16 = sub_25F5E3F74();
  (*(*(v16 - 8) + 56))(v24, 1, 1, v16);
  sub_25F5E3F64();
  v17 = swift_task_alloc();
  *(v0 + 632) = v17;
  *v17 = v0;
  v17[1] = sub_25F5949C4;
  v18 = *(v0 + 376);

  return MEMORY[0x282166B60](v18, 0xD00000000000001CLL, 0x800000025F5EC470);
}

uint64_t sub_25F5949C4()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_25F59546C;
  }

  else
  {
    v2 = sub_25F594AD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F594AD8()
{
  v1 = *(v0 + 376);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFA0, &qword_25F5E79B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_25F57C148(v1, &qword_27FD9DF80, &qword_25F5E7990);
  }

  else
  {
    v51 = *(v0 + 616);
    v45 = *(v0 + 600);
    v44 = *(v0 + 576);
    v43 = *(v0 + 680);
    v40 = *(v0 + 552);
    v47 = *(v0 + 536);
    v48 = *(v0 + 544);
    v49 = *(v0 + 520);
    v50 = *(v0 + 528);
    v41 = *(v0 + 512);
    v42 = *(v0 + 496);
    v39 = *(v0 + 488);
    v29 = *(v0 + 472);
    v30 = *(v0 + 464);
    v31 = *(v0 + 456);
    v32 = *(v0 + 480);
    v52 = *(v0 + 440);
    v46 = *(v0 + 432);
    v3 = *(v0 + 424);
    v28 = *(v0 + 416);
    v4 = *(v0 + 408);
    v26 = *(v2 + 48);
    v27 = *(v0 + 400);
    v5 = *(v0 + 384);
    v6 = *(v0 + 392);
    v37 = *(v0 + 336);
    v38 = *(v0 + 344);
    v35 = *(v0 + 312);
    v36 = *(v0 + 328);
    v33 = *(v0 + 320);
    v34 = *(v0 + 304);
    v7 = *(v5 + 48);
    v8 = *(v46 + 32);
    v8(v6, v1, v3);
    v9 = *(v4 + 32);
    v9(v6 + v7, v1 + v26, v27);
    v10 = *(v5 + 48);
    v8(v52, v6, v3);
    v9(v28, v6 + v10, v27);
    sub_25F5E3C54();
    (*(v30 + 8))(v32, v31);
    (*(v30 + 32))(v32, v29, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF60, &unk_25F5E7960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E5EF0;
    *(inited + 32) = 0x7461446567616D69;
    *(inited + 40) = 0xE900000000000061;
    v12 = sub_25F5E4234();
    v13 = MEMORY[0x277D42E10];
    *(inited + 72) = v12;
    *(inited + 80) = v13;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v33, v12);
    strcpy((inited + 88), "systemPrompt");
    *(inited + 101) = 0;
    *(inited + 102) = -5120;
    v15 = MEMORY[0x277D837D0];
    v16 = MEMORY[0x277D42EC0];
    *(inited + 128) = MEMORY[0x277D837D0];
    *(inited + 136) = v16;
    *(inited + 104) = v34;
    *(inited + 112) = v35;
    *(inited + 144) = 0x6D6F725072657375;
    *(inited + 152) = 0xEA00000000007470;
    *(inited + 184) = v15;
    *(inited + 192) = v16;
    *(inited + 160) = v36;
    *(inited + 168) = v37;

    sub_25F572474(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC60, &qword_25F5E68C0);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_25F5E5EE0;
    *(v17 + 32) = 0xD0000000000000A0;
    *(v17 + 40) = 0x800000025F5EC290;
    sub_25F573B94(v38 + v40, v39, &qword_27FD9DE70, &qword_25F5E77F0);
    sub_25F5E3AA4();
    sub_25F5E3A94();
    sub_25F5E3A74();
    sub_25F5E3A84();
    v44(v41, v43, v42);
    *(v17 + 72) = sub_25F5E3AB4();
    __swift_allocate_boxed_opaque_existential_1Tm((v17 + 48));
    sub_25F5E3BB4();
    v45(v41, v42);
    sub_25F571A78(v17);
    swift_setDeallocating();
    sub_25F57C148(v17 + 32, &qword_27FD9E6B0, &unk_25F5E85A0);
    sub_25F572340(MEMORY[0x277D84F90]);
    sub_25F5E3C44();

    (*(v4 + 8))(v28, v27);
    (*(v46 + 8))(v52, v3);
    v51(v48, v49);
    (*(v50 + 32))(v48, v47, v49);
  }

  v18 = *(v0 + 616);
  v19 = *(v0 + 536);
  v20 = *(v0 + 520);
  v21 = *(v0 + 344);
  sub_25F5E4254();
  *(v0 + 296) = *(v21 + 16);
  sub_25F5E39D4();
  sub_25F5E4274();
  v18(v19, v20);
  v22 = swift_task_alloc();
  *(v0 + 648) = v22;
  v23 = sub_25F59CA78(&qword_27FD9DFA8, MEMORY[0x277D71A98], MEMORY[0x277D71A40]);
  *v22 = v0;
  v22[1] = sub_25F595198;
  v24 = *(v0 + 352);

  return MEMORY[0x282165A78](v24, v23);
}

uint64_t sub_25F595198(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[82] = v2;

  v7 = v6[46];
  v8 = v6[45];
  v9 = v6[44];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_25F5955A8;
  }

  else
  {
    v6[83] = a2;
    v6[84] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_25F595328;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25F595328()
{
  v1 = v0[77];
  v2 = v0[68];
  v3 = v0[65];
  (*(v0[58] + 8))(v0[60], v0[57]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[84];
  v6 = v0[83];

  return v4(v5, v6);
}

uint64_t sub_25F59546C()
{
  v1 = v0[77];
  v2 = v0[68];
  v3 = v0[65];
  (*(v0[58] + 8))(v0[60], v0[57]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F5955A8()
{
  v1 = v0[77];
  v2 = v0[68];
  v3 = v0[65];
  (*(v0[58] + 8))(v0[60], v0[57]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F5956E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v37 = a2;
  v50 = a6;
  v7 = sub_25F5E42A4();
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F5E42C4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F5E4144();
  v38 = *(v17 - 8);
  v18 = v38;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v35 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v36 = &v35 - v23;
  v48 = a1;
  v49 = v37;
  v24 = v39;
  sub_25F5E42D4();
  sub_25F5E4174();
  (*(v13 + 8))(v16, v12);
  v45 = v40;
  v46 = v41;
  v47 = v42;
  sub_25F5E42B4();
  v42 = v24;
  v25 = v35;
  v26 = v43;
  sub_25F5E4174();
  (*(v44 + 8))(v11, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFB0, &qword_25F5E79B8);
  v27 = *(v38 + 72);
  v28 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_25F5E77E0;
  v30 = v29 + v28;
  v31 = *(v18 + 16);
  v32 = v36;
  v31(v30, v36, v17);
  v31(v30 + v27, v25, v17);
  MEMORY[0x25F8E2820](v29);

  v33 = *(v18 + 8);
  v33(v25, v17);
  return (v33)(v32, v17);
}

uint64_t sub_25F595A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5E4244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = MEMORY[0x277D42EC0];
  v14[0] = a1;
  v14[1] = a2;

  v9 = MEMORY[0x277D42E18];
  sub_25F5E41D4();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25F5E5EE0;
  (*(v5 + 16))(v11 + v10, v8, v4);
  MEMORY[0x25F8E2880](v11, v4, v9);

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25F595C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v40 = a2;
  v41 = a3;
  v37 = a1;
  v4 = sub_25F5E4244();
  v42 = *(v4 - 8);
  v5 = v42;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v35 = &v34 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v47 = &v34 - v18;
  sub_25F5E4204();
  sub_25F5E41E4();
  v19 = *(v5 + 8);
  v36 = v16;
  v19(v16, v4);
  v38 = v19;
  v39 = v5 + 8;
  v20 = v19;
  v21 = sub_25F5E4234();
  v45 = v21;
  v46 = MEMORY[0x277D42E10];
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v44);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm, v37, v21);
  sub_25F5E41D4();
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  sub_25F5E4204();
  sub_25F5E41E4();
  v34 = v9;
  v20(v9, v4);
  v45 = MEMORY[0x277D837D0];
  v46 = MEMORY[0x277D42EC0];
  v44[0] = v40;
  v44[1] = v41;

  sub_25F5E41D4();
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v23 = *(v42 + 72);
  v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25F5E81E0;
  v26 = v25 + v24;
  v27 = *(v5 + 16);
  v27(v26, v47, v4);
  v28 = v36;
  v27(v26 + v23, v36, v4);
  v29 = v35;
  v27(v26 + 2 * v23, v35, v4);
  v30 = v26 + 3 * v23;
  v31 = v34;
  v27(v30, v34, v4);
  MEMORY[0x25F8E2880](v25, v4, MEMORY[0x277D42E18]);

  v32 = v38;
  v38(v31, v4);
  v32(v29, v4);
  v32(v28, v4);
  return (v32)(v47, v4);
}

uint64_t sub_25F595FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF28, &unk_25F5E7930);
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF30, &unk_25F5E8570);
  v3[30] = swift_task_alloc();
  v3[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF38, &unk_25F5E7940);
  v3[32] = swift_task_alloc();
  v5 = sub_25F5E3C64();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v6 = sub_25F5E3C74();
  v3[36] = v6;
  v3[37] = *(v6 - 8);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF40, &unk_25F5E8580);
  v3[39] = swift_task_alloc();
  v7 = sub_25F5E3F84();
  v3[40] = v7;
  v3[41] = *(v7 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  v3[44] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF48, &unk_25F5E7950);
  v3[45] = v8;
  v3[46] = *(v8 - 8);
  v3[47] = swift_task_alloc();
  v9 = sub_25F5E4114();
  v3[48] = v9;
  v3[49] = *(v9 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5963AC, 0, 0);
}

uint64_t sub_25F5963AC()
{
  v17 = *(v0 + 408);
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 376);
  v21 = *(v0 + 384);
  v4 = *(v0 + 368);
  v19 = *(v0 + 360);
  v16 = *(v0 + 352);
  v5 = *(v0 + 208);
  v20 = *(v0 + 312);
  v6 = *(v0 + 192);
  *(swift_task_alloc() + 16) = v6;
  sub_25F5E4134();

  *(v0 + 424) = sub_25F59CA78(&qword_27FD9DF18, MEMORY[0x277D42D40], MEMORY[0x277D42D38]);
  sub_25F5E4284();
  v18 = *(v2 + 8);
  *(v0 + 432) = v18;
  *(v0 + 440) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v1, v21);
  v7 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  *(v0 + 448) = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  v8 = v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature;
  *(v0 + 456) = *(v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature);
  *(v0 + 556) = *(v8 + 8);
  v9 = v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed;
  *(v0 + 464) = *(v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed);
  *(v0 + 557) = *(v9 + 8);
  sub_25F573B94(v5 + v7, v16, &qword_27FD9DE70, &qword_25F5E77F0);
  sub_25F5E3AA4();
  sub_25F5E3A94();
  sub_25F5E3A74();
  sub_25F5E3A84();
  *(v0 + 552) = *MEMORY[0x277D0E548];
  v10 = *(v4 + 104);
  *(v0 + 472) = v10;
  *(v0 + 480) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v3);
  sub_25F5E4264();
  v11 = *(v4 + 8);
  *(v0 + 488) = v11;
  *(v0 + 496) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v19);
  v18(v17, v21);
  v12 = sub_25F5E3F74();
  (*(*(v12 - 8) + 56))(v20, 1, 1, v12);
  sub_25F5E3F64();
  v13 = swift_task_alloc();
  *(v0 + 504) = v13;
  *v13 = v0;
  v13[1] = sub_25F596730;
  v14 = *(v0 + 240);

  return MEMORY[0x282166B58](v14, 0xD00000000000001CLL, 0x800000025F5EC430);
}
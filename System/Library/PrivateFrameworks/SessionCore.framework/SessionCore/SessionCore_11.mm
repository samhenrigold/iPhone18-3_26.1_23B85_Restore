uint64_t sub_22CFF8680(void *a1)
{
  sub_22D01570C();
  v2 = sub_22D0156FC();
  if (qword_281442150 != -1)
  {
    swift_once();
  }

  v3 = qword_2814444F8;
  v4 = type metadata accessor for PersistentSyncEngineRecordMetadataStore();
  swift_allocObject();

  v5 = sub_22CFDB00C(v3, a1);
  v6 = sub_22D0156EC();
  v15[3] = v4;
  v15[4] = sub_22CFF8F4C(qword_2814400F0, type metadata accessor for PersistentSyncEngineRecordMetadataStore, &unk_22D01BF68);
  v15[0] = v5;

  v7 = sub_22D0156DC();
  sub_22D01576C();
  sub_22D0156CC();
  v13 = v6;
  v14 = MEMORY[0x277D4D6F0];
  v12 = v7;
  sub_22CEE3A84(v15, v11);
  v8 = v2;

  sub_22D0156AC();
  v9 = sub_22D01569C();

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v9;
}

void *sub_22CFF8844(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30 = a1;
  v9 = sub_22D01697C();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01691C();
  MEMORY[0x28223BE20](v12, v13);
  v14 = sub_22D01653C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v34[3] = type metadata accessor for PersistentAssertionStore();
  v34[4] = &off_28402B4D0;
  v34[0] = a2;
  v33[3] = type metadata accessor for PersistentActivityStore();
  v33[4] = &off_28402CB48;
  v33[0] = a3;
  v32[3] = type metadata accessor for FirstLaunchDetector();
  v32[4] = &off_28402BEB0;
  v32[0] = a4;
  v16 = MEMORY[0x277D84F90];
  v31 = sub_22CEF4A08(MEMORY[0x277D84F90], &qword_27D9F2A38, &unk_22D0196F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29E8, &qword_22D019668);
  swift_allocObject();
  a5[2] = sub_22D01644C();
  v31 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29E0, &qword_22D019660);
  swift_allocObject();
  a5[3] = sub_22D01644C();
  v31 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29D8, &qword_22D019658);
  swift_allocObject();
  a5[4] = sub_22D01644C();
  v31 = v16;
  swift_allocObject();
  a5[5] = sub_22D01644C();
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  a5[6] = v17;
  a5[7] = sub_22CFF6EE4(v16);
  v19 = sub_22CEF4A08(v16, &qword_27D9F2A38, &unk_22D0196F0);
  v20 = MEMORY[0x277D84FA0];
  a5[8] = v19;
  a5[9] = v20;
  a5[10] = sub_22CFF7004(v16);
  a5[11] = sub_22CFF7004(v16);
  a5[12] = sub_22CFF7004(v16);
  a5[13] = v16;
  a5[14] = v20;
  type metadata accessor for AssertionExpirationTimer();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  *(v21 + 24) = v22;
  a5[21] = v21;
  sub_22CEEC38C();
  sub_22D01651C();
  v31 = v16;
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v28 + 104))(v27, *MEMORY[0x277D85268], v29);
  v24 = v30;
  a5[15] = sub_22D0169BC();
  sub_22CEE3A84(v34, (a5 + 16));
  sub_22CEE3A84(v32, (a5 + 22));
  sub_22CEE3A84(v33, (a5 + 27));
  sub_22CF68F3C();
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return a5;
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CFF8DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E40, &qword_22D01A858);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CFF8E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CFF8F4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22CFF9094(uint64_t a1)
{
  sub_22D014E2C();
  if (v1 <= 0x3F)
  {
    sub_22D01502C();
    if (v2 <= 0x3F)
    {
      sub_22CFF922C(319);
      if (v3 <= 0x3F)
      {
        sub_22CFF92D8(319, &qword_28143D958, MEMORY[0x277CB9350], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_22D01430C();
          if (v5 <= 0x3F)
          {
            sub_22D0146BC();
            if (v6 <= 0x3F)
            {
              sub_22CFF92D8(319, &unk_2814439D0, MEMORY[0x277CB9378], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_22CFF933C();
                if (v8 <= 0x3F)
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

void sub_22CFF922C(uint64_t a1)
{
  if (!qword_28143D980)
  {
    sub_22D0149AC();
    sub_22D014EFC();
    sub_22CF0B598(&qword_28143F6B0, MEMORY[0x277CB9500], MEMORY[0x277CB9510]);
    v1 = sub_22D01660C();
    if (!v2)
    {
      atomic_store(v1, &qword_28143D980);
    }
  }
}

void sub_22CFF92D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22CFF933C()
{
  if (!qword_28143D960)
  {
    v0 = sub_22D016A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_28143D960);
    }
  }
}

void sub_22CFF939C(uint64_t a1, uint64_t a2)
{
  v91 = a1;
  v92 = a2;
  v87 = sub_22D01502C();
  v80 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v3);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D014EFC();
  v89 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v70 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v70 - v16;
  v18 = sub_22D0149AC();
  v88 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v70 - v28;
  v30 = type metadata accessor for Activity(0);
  if (!*(v2 + *(v30 + 52) + 8))
  {
    v31 = v30;
    v85 = v17;
    v86 = v18;
    v82 = v26;
    v83 = v10;
    v90 = v29;
    v84 = v21;
    v81 = v5;
    if (sub_22D014F9C() == v91 && v32 == v92)
    {
    }

    else
    {
      v33 = sub_22D016DFC();

      if ((v33 & 1) == 0)
      {
        v34 = *(v2 + *(v31 + 28));
        v35 = *(v34 + 64);
        v72 = v34 + 64;
        v36 = 1 << *(v34 + 32);
        v37 = -1;
        if (v36 < 64)
        {
          v37 = ~(-1 << v36);
        }

        v38 = v37 & v35;
        v71 = (v36 + 63) >> 6;
        v39 = v88;
        v74 = v88 + 32;
        v75 = v88 + 16;
        v78 = (v80 + 1);
        v79 = (v80 + 4);
        v80 = (v88 + 8);
        v77 = v34;

        v40 = 0;
        v41 = v89;
        v42 = v86;
        v76 = v14;
        v43 = v84;
        v44 = v85;
        if (v38)
        {
          while (1)
          {
            v45 = v42;
            v46 = v40;
LABEL_18:
            v48 = __clz(__rbit64(v38));
            v38 &= v38 - 1;
            v49 = v48 | (v46 << 6);
            v50 = v77;
            (*(v39 + 16))(v43, *(v77 + 48) + *(v39 + 72) * v49, v45);
            sub_22CEFEB00(*(v50 + 56) + *(v41 + 72) * v49, v44, MEMORY[0x277CB9790]);
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
            v52 = v39;
            v53 = *(v51 + 48);
            v54 = v82;
            (*(v52 + 32))(v82, v43, v45);
            sub_22CF033C4(v44, v54 + v53);
            (*(*(v51 - 8) + 56))(v54, 0, 1, v51);
            v55 = v46;
            v14 = v76;
LABEL_19:
            v56 = v90;
            sub_22CF03428(v54, v90);
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
            v58 = (*(*(v57 - 8) + 48))(v56, 1, v57);
            v59 = v83;
            if (v58 == 1)
            {

              return;
            }

            v60 = v86;
            v61 = v89;
            sub_22CF033C4(v56 + *(v57 + 48), v14);
            v62 = v14;
            sub_22CEFEB00(v14, v59, MEMORY[0x277CB9790]);
            v63 = v81;
            v64 = v87;
            (*v79)(v81, v59, v87);
            v65 = sub_22D014F9C();
            v67 = v66;
            (*v78)(v63, v64);
            if (v65 == v91 && v67 == v92)
            {
              break;
            }

            v68 = sub_22D016DFC();

            v14 = v62;
            sub_22CEFD754(v62, MEMORY[0x277CB9790]);
            if (v68)
            {
              goto LABEL_28;
            }

            v42 = v60;
            (*v80)(v90, v60);
            v40 = v55;
            v41 = v61;
            v39 = v88;
            v43 = v84;
            v44 = v85;
            if (!v38)
            {
              goto LABEL_10;
            }
          }

          sub_22CEFD754(v62, MEMORY[0x277CB9790]);
LABEL_28:

          (*v80)(v90, v60);
        }

        else
        {
LABEL_10:
          if (v71 <= v40 + 1)
          {
            v47 = v40 + 1;
          }

          else
          {
            v47 = v71;
          }

          v73 = v47 - 1;
          while (1)
          {
            v46 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              break;
            }

            if (v46 >= v71)
            {
              v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
              v54 = v82;
              (*(*(v69 - 8) + 56))(v82, 1, 1, v69);
              v38 = 0;
              v55 = v73;
              goto LABEL_19;
            }

            v38 = *(v72 + 8 * v46);
            ++v40;
            if (v38)
            {
              v45 = v42;
              goto LABEL_18;
            }
          }

          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_22CFF9A90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1752397168;
  }

  else
  {
    v3 = 6910049;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1752397168;
  }

  else
  {
    v5 = 6910049;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22D016DFC();
  }

  return v8 & 1;
}

uint64_t sub_22CFF9B28()
{
  sub_22D016EAC();
  sub_22D0166DC();

  return sub_22D016ECC();
}

uint64_t sub_22CFF9B9C(uint64_t a1)
{
  sub_22D0166DC();
}

uint64_t sub_22CFF9BFC(uint64_t a1)
{
  sub_22D016EAC();
  sub_22D0166DC();

  return sub_22D016ECC();
}

uint64_t sub_22CFF9C6C@<X0>(char *a2@<X8>)
{
  v3 = sub_22D016D4C();

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

void sub_22CFF9CCC(uint64_t *a1@<X8>)
{
  v2 = 6910049;
  if (*v1)
  {
    v2 = 1752397168;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_22CFF9DB0()
{
  result = qword_27D9F3C40;
  if (!qword_27D9F3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C40);
  }

  return result;
}

unint64_t sub_22CFF9E04(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x74736575716572;
      break;
    case 2:
      result = 0x6574736575716572;
      break;
    case 3:
      result = 0x726154656E656373;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x5472657474616C70;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x7461447472617473;
      break;
    case 8:
      result = 0x4464657461657263;
      break;
    case 9:
      result = 0x6E6F697461657263;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x64616F6C796170;
      break;
    case 12:
      result = 0x704F676E69646E65;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22CFF9FDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22CFFD11C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22CFFA010(uint64_t a1)
{
  v2 = sub_22CFFBF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22CFFA04C(uint64_t a1)
{
  v2 = sub_22CFFBF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22CFFA088(void *a1)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2350, &qword_22D018978);
  MEMORY[0x28223BE20](v55, v2);
  v4 = &v45 - v3;
  v5 = sub_22D0149AC();
  v56 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C78, &qword_22D01CA00);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v45 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22CFFBF70();
  v14 = v9;
  v15 = v57;
  sub_22D016EEC();
  LOBYTE(v59) = 0;
  v16 = v58;
  sub_22D016DBC();
  if (v16)
  {
    return (*(v10 + 8))(v13, v14);
  }

  v52 = v8;
  v53 = v5;
  v54 = v4;
  v58 = v10;
  v18 = type metadata accessor for Activity(0);
  LOBYTE(v59) = 1;
  sub_22D014E2C();
  sub_22CF0B598(&qword_2814439A8, MEMORY[0x277CB9678], MEMORY[0x277CB9680]);
  sub_22D016DDC();
  LOBYTE(v59) = 2;
  v19 = sub_22D01502C();
  v20 = sub_22CF0B598(&qword_27D9F3C80, MEMORY[0x277CB9810], MEMORY[0x277CB9818]);
  sub_22D016DDC();
  v50 = v20;
  v51 = v14;
  v48 = v19;
  v21 = *(v15 + v18[7]);
  v22 = v56;
  v23 = v52;
  v24 = v53;
  (*(v56 + 13))(v52, *MEMORY[0x277CB94E0], v53);
  v25 = *(v21 + 16);
  v49 = 0;
  v47 = v21;
  if (v25)
  {
    v26 = sub_22CEFF728(v23);
    if (v27)
    {
      v28 = v26;
      v29 = *(v21 + 56);
      v46 = sub_22D014EFC();
      v30 = *(v46 - 8);
      v31 = v29 + *(v30 + 72) * v28;
      v32 = v54;
      sub_22CEFEB00(v31, v54, MEMORY[0x277CB9790]);
      v33 = v23;
      v34 = v32;
      (*(v56 + 1))(v33, v24);
      (*(v30 + 56))(v32, 0, 1, v46);
      goto LABEL_9;
    }

    (*(v56 + 1))(v23, v24);
  }

  else
  {
    (*(v22 + 1))(v23, v24);
  }

  v35 = sub_22D014EFC();
  v34 = v54;
  (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
LABEL_9:
  LOBYTE(v59) = 5;
  sub_22CFFCB48();
  v36 = v51;
  v37 = v49;
  sub_22D016DDC();
  sub_22CEEC3D8(v34, &qword_27D9F2350, &qword_22D018978);
  if (v37)
  {
    return (*(v58 + 8))(v13, v36);
  }

  LOBYTE(v59) = 2;
  sub_22D016DDC();
  v38 = v15;
  *&v59 = v47;
  v60 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26F0, &qword_22D018F98);
  sub_22CF5D9F4();
  v39 = v13;
  sub_22D016DDC();
  *&v59 = *(v15 + v18[8]);
  v60 = 4;
  sub_22D016DDC();
  *&v59 = *(v15 + v18[9]);
  v60 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E8, &qword_22D018F90);
  sub_22CFFCBFC(&qword_28143FA58, &qword_2814439E8, MEMORY[0x277CB9358], MEMORY[0x277D83948]);
  sub_22D016DDC();
  v56 = v18;
  LOBYTE(v59) = 7;
  sub_22D01430C();
  sub_22CF0B598(&qword_27D9F2F98, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_22D016DDC();
  v40 = v56;
  LOBYTE(v59) = 8;
  sub_22D016DDC();
  LOBYTE(v59) = *(v38 + v40[12]);
  v60 = 9;
  sub_22CFFCC98();
  sub_22D016DDC();
  v41 = (v38 + v40[13]);
  v43 = v41[1];
  *&v59 = *v41;
  v42 = v59;
  *(&v59 + 1) = v43;
  v60 = 10;
  sub_22CFFCCEC();
  sub_22D016DDC();
  LOBYTE(v59) = 11;
  sub_22D0146BC();
  sub_22CF0B598(&qword_28143F6F8, MEMORY[0x277CB9250], MEMORY[0x277CB9258]);
  sub_22D016DDC();
  LOBYTE(v59) = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  sub_22CFFCD40();
  sub_22D016DDC();
  *&v59 = v42;
  *(&v59 + 1) = v43;
  v60 = 10;
  sub_22D016DDC();
  v59 = *(v38 + v40[16]);
  v60 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3CB0, &qword_22D01CA08);
  sub_22CFFCDF4();
  v44 = v51;
  sub_22D016DDC();
  return (*(v58 + 8))(v39, v44);
}

unint64_t sub_22CFFAA54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v117 = &v110 - v5;
  v6 = sub_22D0146BC();
  v136 = *(v6 - 8);
  v137 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v118 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v120 = &v110 - v11;
  v12 = sub_22D01430C();
  v138 = *(v12 - 8);
  v139 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v119 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v128 = &v110 - v17;
  v18 = sub_22D0149AC();
  v129 = *(v18 - 8);
  v130 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v127 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2340, &qword_22D01D0A0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v131 = &v110 - v23;
  v24 = sub_22D01502C();
  v134 = *(v24 - 8);
  v135 = v24;
  v26 = MEMORY[0x28223BE20](v24, v25);
  v122 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v123 = &v110 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v126 = &v110 - v32;
  v132 = sub_22D014EFC();
  v124 = *(v132 - 8);
  v34 = MEMORY[0x28223BE20](v132, v33);
  v125 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v121 = &v110 - v38;
  MEMORY[0x28223BE20](v37, v39);
  v133 = &v110 - v40;
  v41 = sub_22D014E2C();
  v140 = *(v41 - 8);
  v141 = v41;
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v110 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C48, &qword_22D01C9F8);
  v142 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v110 - v47;
  v49 = type metadata accessor for Activity(0);
  v51 = MEMORY[0x28223BE20](v49, v50);
  v53 = (&v110 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = *(v51 + 60);
  v55 = sub_22D01486C();
  v56 = *(*(v55 - 8) + 56);
  v144 = v54;
  v145 = v53;
  v56(v53 + v54, 1, 1, v55);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22CFFBF70();
  v57 = v143;
  sub_22D016EDC();
  if (v57)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_22CEEC3D8(v145 + v144, &qword_27D9F26E0, &unk_22D018F80);
  }

  v114 = v55;
  v115 = v49;
  v143 = a1;
  LOBYTE(v146) = 0;
  v58 = v48;
  v59 = sub_22D016D8C();
  v62 = v61;
  v63 = v145;
  *v145 = v59;
  v63[1] = v61;
  LOBYTE(v146) = 1;
  sub_22CF0B598(&qword_28143F660, MEMORY[0x277CB9678], MEMORY[0x277CB9688]);
  v64 = v44;
  v65 = v141;
  sub_22D016DAC();
  v66 = *(v140 + 32);
  v113 = v115[5];
  v66(v63 + v113, v64, v65);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26F0, &qword_22D018F98);
  v147 = 3;
  sub_22CF5DBE4();
  sub_22D016D7C();
  v68 = v45;
  v112 = v62;
  v111 = v58;
  v69 = v146;
  if (!v146)
  {
    v110 = v67;
    *&v146 = 5;
    sub_22CF0B598(&qword_28143F650, MEMORY[0x277CB9790], MEMORY[0x277CB97A0]);
    v71 = v133;
    sub_22D016DAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3140, &qword_22D01AED0);
    v132 = v45;
    v72 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3148, &qword_22D01AED8) - 8);
    v73 = (*(*v72 + 80) + 32) & ~*(*v72 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_22D0187A0;
    v75 = v74 + v73;
    v76 = v72[14];
    (*(v129 + 104))(v75, *MEMORY[0x277CB94E0], v130);
    v77 = MEMORY[0x277CB9790];
    sub_22CEFEB00(v71, v75 + v76, MEMORY[0x277CB9790]);
    v69 = sub_22CFF7ABC(v74);
    swift_setDeallocating();
    sub_22CEEC3D8(v75, &qword_27D9F3148, &qword_22D01AED8);
    v68 = v132;
    swift_deallocClassInstance();
    sub_22CEFD754(v71, v77);
    v63 = v145;
  }

  v70 = v115;
  *(v63 + v115[7]) = v69;
  v147 = 4;
  sub_22D016D7C();
  v133 = v69;
  v78 = v146;
  if (!v146)
  {
    v78 = sub_22CFF7ABC(MEMORY[0x277D84F90]);
  }

  v79 = v135;
  v80 = v131;
  *(v63 + v70[8]) = v78;
  LOBYTE(v146) = 2;
  sub_22CF0B598(&qword_27D9F3C58, MEMORY[0x277CB9810], MEMORY[0x277CB9828]);
  sub_22D016D7C();
  v132 = v68;
  v81 = v134;
  if ((*(v134 + 48))(v80, 1, v79) != 1)
  {
    v95 = v80;
    v96 = *(v81 + 32);
    v97 = v126;
    v96(v126, v95, v79);
    v96(v63 + v70[6], v97, v79);
    goto LABEL_12;
  }

  sub_22CEEC3D8(v80, &qword_27D9F2340, &qword_22D01D0A0);
  v83 = v129;
  v82 = v130;
  v84 = v127;
  result = (*(v129 + 104))(v127, *MEMORY[0x277CB94E0], v130);
  v85 = v133;
  if (!*(v133 + 2))
  {
    __break(1u);
    goto LABEL_17;
  }

  result = sub_22CEFF728(v84);
  v86 = v125;
  if ((v87 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v88 = MEMORY[0x277CB9790];
  v89 = v121;
  sub_22CEFEB00(*(v85 + 7) + *(v124 + 72) * result, v121, MEMORY[0x277CB9790]);
  (*(v83 + 8))(v84, v82);
  sub_22CEFEB00(v89, v86, v88);
  v90 = v134;
  v133 = *(v134 + 32);
  v91 = v122;
  v92 = v86;
  v93 = v135;
  (v133)(v122, v92, v135);
  v131 = sub_22D014F9C();
  (*(v90 + 8))(v91, v93);
  sub_22CEFD754(v89, v88);
  v94 = v123;
  sub_22D014F8C();
  v70 = v115;
  (v133)(v63 + v115[6], v94, v93);
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E8, &qword_22D018F90);
  v147 = 6;
  sub_22CFFCBFC(&qword_28143D950, &unk_28143F6C8, MEMORY[0x277CB9368], MEMORY[0x277D83978]);
  sub_22D016DAC();
  v98 = v128;
  *(v63 + v70[9]) = v146;
  LOBYTE(v146) = 8;
  sub_22CF0B598(&qword_27D9F2F88, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_22D016DAC();
  v99 = v63 + v70[11];
  v133 = *(v138 + 32);
  (v133)(v99, v98, v139);
  LOBYTE(v146) = 7;
  v100 = v120;
  sub_22D016D7C();
  if ((*(v138 + 48))(v100, 1, v139) == 1)
  {
    sub_22CEEC3D8(v100, &qword_27D9F2648, &unk_22D018BC0);
    sub_22D014E1C();
  }

  else
  {
    v101 = v119;
    v102 = v100;
    v103 = v139;
    v104 = v133;
    (v133)(v119, v102, v139);
    v104(v63 + v70[10], v101, v103);
  }

  v147 = 9;
  sub_22CFFCA30();
  sub_22D016DAC();
  *(v145 + v115[12]) = v146;
  v147 = 10;
  sub_22CFFCA84();
  sub_22D016DAC();
  *(v145 + v115[13]) = v146;
  LOBYTE(v146) = 11;
  sub_22CF0B598(&qword_28143F6F0, MEMORY[0x277CB9250], MEMORY[0x277CB9260]);
  sub_22D016DAC();
  (*(v136 + 32))(v145 + v115[14], v118, v137);
  LOBYTE(v146) = 12;
  sub_22CF0B598(&qword_27D9F3C70, MEMORY[0x277CB9378], MEMORY[0x277CB9390]);
  sub_22D016D7C();
  sub_22CFFCAD8(v117, v145 + v144);
  LOBYTE(v146) = 13;
  v105 = sub_22D016D5C();
  v107 = v106;
  v108 = v145;
  v109 = (v145 + v115[16]);
  (*(v142 + 8))(v111, v132);
  *v109 = v105;
  v109[1] = v107;
  sub_22CEFEB00(v108, v116, type metadata accessor for Activity);
  __swift_destroy_boxed_opaque_existential_1Tm(v143);
  return sub_22CEFD754(v108, type metadata accessor for Activity);
}

unint64_t sub_22CFFBF70()
{
  result = qword_27D9F3C50;
  if (!qword_27D9F3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C50);
  }

  return result;
}

uint64_t sub_22CFFBFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D014EFC();
  v72 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v71 = &v58 - v10;
  v73 = sub_22D0149AC();
  v65 = *(v73 - 8);
  v12 = MEMORY[0x28223BE20](v73, v11);
  v66 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v64 = &v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  result = MEMORY[0x28223BE20](v18, v19);
  v23 = &v58 - v21;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = v22;
  v63 = v8;
  v24 = 0;
  v61 = a1;
  v25 = *(a1 + 64);
  v58 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v59 = v29;
  v60 = v65 + 16;
  v68 = &v58 - v21;
  v69 = (v65 + 32);
  v62 = (v65 + 8);
  while (v28)
  {
    v70 = (v28 - 1) & v28;
    v30 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_16:
    v36 = v61;
    v38 = v64;
    v37 = v65;
    v39 = v73;
    (*(v65 + 16))(v64, *(v61 + 48) + *(v65 + 72) * v30, v73);
    v40 = v71;
    sub_22CEFEB00(*(v36 + 56) + *(v72 + 72) * v30, v71, MEMORY[0x277CB9790]);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
    v42 = *(v41 + 48);
    v43 = *(v37 + 32);
    v33 = v67;
    v43(v67, v38, v39);
    sub_22CF033C4(v40, v33 + v42);
    (*(*(v41 - 8) + 56))(v33, 0, 1, v41);
    v23 = v68;
    v29 = v59;
LABEL_17:
    sub_22CF03428(v33, v23);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
    v45 = (*(*(v44 - 8) + 48))(v23, 1, v44);
    v46 = v45 == 1;
    if (v45 == 1)
    {
      return v46;
    }

    v47 = *(v44 + 48);
    v48 = v66;
    v49 = v73;
    (*v69)(v66, v23, v73);
    v50 = &v23[v47];
    v51 = v63;
    sub_22CF033C4(v50, v63);
    v52 = sub_22CEFF728(v48);
    LOBYTE(v47) = v53;
    (*v62)(v48, v49);
    if ((v47 & 1) == 0)
    {
      sub_22CEFD754(v51, MEMORY[0x277CB9790]);
      return 0;
    }

    v54 = v71;
    v55 = MEMORY[0x277CB9790];
    sub_22CEFEB00(*(a2 + 56) + *(v72 + 72) * v52, v71, MEMORY[0x277CB9790]);
    v56 = MEMORY[0x2318C4040](v54, v51);
    sub_22CEFD754(v54, v55);
    result = sub_22CEFD754(v51, v55);
    v23 = v68;
    v28 = v70;
    if ((v56 & 1) == 0)
    {
      return v46;
    }
  }

  if (v29 <= v24 + 1)
  {
    v31 = v24 + 1;
  }

  else
  {
    v31 = v29;
  }

  v32 = v31 - 1;
  v33 = v67;
  while (1)
  {
    v34 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v34 >= v29)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
      v70 = 0;
      v24 = v32;
      goto LABEL_17;
    }

    v35 = *(v58 + 8 * v34);
    ++v24;
    if (v35)
    {
      v70 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v24 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_22CFFC554(void *a1, void *a2)
{
  v4 = sub_22D01486C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v37[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3CC0, &qword_22D01CA10);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37[-v15];
  if (*a1 != *a2 && (sub_22D016DFC() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for Activity(0);
  if ((MEMORY[0x2318C3F60](a1 + v17[5], a2 + v17[5]) & 1) == 0 || (sub_22D014FEC() & 1) == 0 || (sub_22CFFBFC4(*(a1 + v17[7]), *(a2 + v17[7])) & 1) == 0 || (sub_22CFFBFC4(*(a1 + v17[8]), *(a2 + v17[8])) & 1) == 0 || (sub_22CF75904(*(a1 + v17[9]), *(a2 + v17[9]), v18) & 1) == 0 || (sub_22D0142CC() & 1) == 0 || (sub_22D0142CC() & 1) == 0)
  {
    return 0;
  }

  v19 = v17[12];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20)
  {
    v22 = 1752397168;
  }

  else
  {
    v22 = 6910049;
  }

  if (v20)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE300000000000000;
  }

  if (v21)
  {
    v24 = 1752397168;
  }

  else
  {
    v24 = 6910049;
  }

  if (v21)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE300000000000000;
  }

  if (v22 == v24 && v23 == v25)
  {
  }

  else
  {
    v39 = v25;
    v38 = sub_22D016DFC();

    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_22D014F5C() & 1) == 0 || (MEMORY[0x2318C37C0](a1 + v17[14], a2 + v17[14]) & 1) == 0)
  {
    return 0;
  }

  v26 = v17[15];
  v27 = *(v13 + 48);
  sub_22CF0B9D0(a1 + v26, v16);
  v39 = v27;
  sub_22CF0B9D0(a2 + v26, &v16[v27]);
  v28 = *(v5 + 48);
  if (v28(v16, 1, v4) == 1)
  {
    if (v28(&v16[v39], 1, v4) == 1)
    {
      sub_22CEEC3D8(v16, &qword_27D9F26E0, &unk_22D018F80);
      goto LABEL_36;
    }

LABEL_33:
    sub_22CEEC3D8(v16, &qword_27D9F3CC0, &qword_22D01CA10);
    return 0;
  }

  sub_22CF0B9D0(v16, v12);
  if (v28(&v16[v39], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_33;
  }

  (*(v5 + 32))(v8, &v16[v39], v4);
  sub_22CF0B598(&qword_27D9F3CC8, MEMORY[0x277CB9378], MEMORY[0x277CB9388]);
  v30 = sub_22D01665C();
  v31 = *(v5 + 8);
  v31(v8, v4);
  v31(v12, v4);
  sub_22CEEC3D8(v16, &qword_27D9F26E0, &unk_22D018F80);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v32 = v17[16];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    return v36 && (*v33 == *v35 && v34 == v36 || (sub_22D016DFC() & 1) != 0);
  }

  return !v36;
}

unint64_t sub_22CFFCA30()
{
  result = qword_27D9F3C60;
  if (!qword_27D9F3C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C60);
  }

  return result;
}

unint64_t sub_22CFFCA84()
{
  result = qword_27D9F3C68;
  if (!qword_27D9F3C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C68);
  }

  return result;
}

uint64_t sub_22CFFCAD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22CFFCB48()
{
  result = qword_27D9F3C88;
  if (!qword_27D9F3C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F2350, &qword_22D018978);
    sub_22CF0B598(&qword_281443998, MEMORY[0x277CB9790], MEMORY[0x277CB9798]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C88);
  }

  return result;
}

uint64_t sub_22CFFCBFC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F26E8, &qword_22D018F90);
    sub_22CF0B598(a2, MEMORY[0x277CB9350], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22CFFCC98()
{
  result = qword_27D9F3C90;
  if (!qword_27D9F3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C90);
  }

  return result;
}

unint64_t sub_22CFFCCEC()
{
  result = qword_27D9F3C98;
  if (!qword_27D9F3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C98);
  }

  return result;
}

unint64_t sub_22CFFCD40()
{
  result = qword_27D9F3CA0;
  if (!qword_27D9F3CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F26E0, &unk_22D018F80);
    sub_22CF0B598(&qword_27D9F3CA8, MEMORY[0x277CB9378], MEMORY[0x277CB9380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3CA0);
  }

  return result;
}

unint64_t sub_22CFFCDF4()
{
  result = qword_27D9F3CB8;
  if (!qword_27D9F3CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F3CB0, &qword_22D01CA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3CB8);
  }

  return result;
}

unint64_t sub_22CFFCE70()
{
  result = qword_27D9F3CD0;
  if (!qword_27D9F3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3CD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Activity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Activity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22CFFD018()
{
  result = qword_27D9F3CD8;
  if (!qword_27D9F3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3CD8);
  }

  return result;
}

unint64_t sub_22CFFD070()
{
  result = qword_27D9F3CE0;
  if (!qword_27D9F3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3CE0);
  }

  return result;
}

unint64_t sub_22CFFD0C8()
{
  result = qword_27D9F3CE8;
  if (!qword_27D9F3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3CE8);
  }

  return result;
}

uint64_t sub_22CFFD11C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_22D016DFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_22D016DFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xE900000000000072 || (sub_22D016DFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726154656E656373 && a2 == 0xEC00000073746567 || (sub_22D016DFC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022D01E8C0 == a2 || (sub_22D016DFC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5472657474616C70 && a2 == 0xED00007465677261 || (sub_22D016DFC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022D01E8E0 == a2 || (sub_22D016DFC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_22D016DFC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_22D016DFC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEE00656372756F53 || (sub_22D016DFC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022D01E870 == a2 || (sub_22D016DFC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (sub_22D016DFC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x704F676E69646E65 && a2 == 0xED0000736E6F6974 || (sub_22D016DFC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022D01E920 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_22D016DFC();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_22CFFD5B0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));

  return swift_deallocClassInstance();
}

void sub_22CFFD634(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*(*v1 + 80) + 16);
  os_unfair_lock_lock(v4);
  swift_beginAccess();
  sub_22CEE3A84(v3 + 88, a1);
  os_unfair_lock_unlock(v4);
}

void sub_22CFFD6AC(uint64_t a1)
{
  sub_22D01534C();
  if (v1 <= 0x3F)
  {
    sub_22D0154EC();
    if (v2 <= 0x3F)
    {
      sub_22CFFD798(319);
      if (v3 <= 0x3F)
      {
        sub_22D01430C();
        if (v4 <= 0x3F)
        {
          sub_22CFFD7F0();
          if (v5 <= 0x3F)
          {
            sub_22D01555C();
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

void sub_22CFFD798(uint64_t a1)
{
  if (!qword_28143FB98)
  {
    sub_22D01539C();
    v1 = sub_22D016A8C();
    if (!v2)
    {
      atomic_store(v1, &qword_28143FB98);
    }
  }
}

void sub_22CFFD7F0()
{
  if (!qword_28143D938)
  {
    v0 = sub_22D016A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_28143D938);
    }
  }
}

uint64_t sub_22CFFD840()
{
  sub_22CF460CC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

void sub_22CFFD8AC()
{
  v201 = sub_22D01495C();
  v234 = *(v201 - 8);
  MEMORY[0x28223BE20](v201, v1);
  v200 = &v171 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_22D01486C();
  v231 = *(v212 - 8);
  MEMORY[0x28223BE20](v212, v3);
  v202 = &v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v209 = &v171 - v7;
  v208 = sub_22D01461C();
  v228 = *(v208 - 8);
  MEMORY[0x28223BE20](v208, v8);
  v207 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v206 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v211 = &v171 - v15;
  v220 = sub_22D01430C();
  v16 = *(v220 - 8);
  v18 = MEMORY[0x28223BE20](v220, v17);
  v205 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v199 = &v171 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v218 = &v171 - v24;
  v223 = type metadata accessor for ActivityParticipantEvent(0);
  v215 = *(v223 - 8);
  v26 = MEMORY[0x28223BE20](v223, v25);
  v194 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v193 = &v171 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v214 = &v171 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v221 = &v171 - v35;
  v225 = sub_22D01483C();
  v36 = *(v225 - 8);
  MEMORY[0x28223BE20](v225, v37);
  v224 = &v171 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Activity(0);
  v233 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39, v40);
  v43 = (&v171 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = MEMORY[0x28223BE20](v41, v44);
  v192 = (&v171 - v46);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v191 = (&v171 - v49);
  v51 = MEMORY[0x28223BE20](v48, v50);
  v53 = (&v171 - v52);
  v55 = MEMORY[0x28223BE20](v51, v54);
  v57 = (&v171 - v56);
  MEMORY[0x28223BE20](v55, v58);
  v232 = &v171 - v59;
  v60 = v0[7];
  v61 = v0[8];
  v217 = v0;
  v62 = __swift_project_boxed_opaque_existential_1(v0 + 4, v60);
  v63 = *(v60 - 8);
  MEMORY[0x28223BE20](v62, v62);
  v65 = &v171 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v63 + 16))(v65);
  v66 = (*(v61 + 8))(v60, v61);
  v67 = v60;
  v68 = v43;
  (*(v63 + 8))(v65, v67);
  v69 = 1 << *(v66 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v66 + 64);
  v72 = (v69 + 63) >> 6;
  v222 = v36 + 16;
  v219 = (v16 + 8);
  v210 = (v231 + 48);
  v198 = (v231 + 32);
  v197 = (v234 + 8);
  v190 = (v231 + 16);
  v196 = (v231 + 8);
  v73 = v39;
  v213 = v36;
  v216 = (v36 + 8);
  v204 = (v228 + 1);
  v203 = (v16 + 48);
  v195 = (v16 + 32);
  v234 = v66;
  v74 = v66 + 64;

  v75 = 0;
  v226 = MEMORY[0x277D84F90];
  *&v76 = 136446210;
  v227 = v76;
  v228 = v53;
  v229 = v39;
  v230 = v57;
  v231 = v72;
  while (v71)
  {
LABEL_11:
    v78 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v79 = v232;
    sub_22CF0CCBC(*(v234 + 56) + *(v233 + 72) * (v78 | (v75 << 6)), v232, type metadata accessor for Activity);
    sub_22CF0A72C(v79, v57, type metadata accessor for Activity);
    v80 = *(v57 + v73[9]);
    if (*(v80 + 16))
    {
      v90 = v80 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
      v187 = *(v213 + 16);
      v187(v224, v90, v225);
      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v91 = sub_22D01637C();
      v92 = __swift_project_value_buffer(v91, qword_281444498);
      sub_22CF0CCBC(v57, v53, type metadata accessor for Activity);
      v182 = v92;
      v93 = sub_22D01636C();
      v94 = sub_22D01690C();
      v95 = os_log_type_enabled(v93, v94);
      v188 = v68;
      if (v95)
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v235 = v97;
        *v96 = v227;
        v98 = *v53;
        v99 = v53[1];

        sub_22CF0F640(v53, type metadata accessor for Activity);
        v100 = sub_22CEEE31C(v98, v99, &v235);
        v73 = v229;

        *(v96 + 4) = v100;
        _os_log_impl(&dword_22CEE1000, v93, v94, "Adding start event for reloaded activity: %{public}s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        v101 = v97;
        v57 = v230;
        MEMORY[0x2318C6860](v101, -1, -1);
        MEMORY[0x2318C6860](v96, -1, -1);
      }

      else
      {

        sub_22CF0F640(v53, type metadata accessor for Activity);
      }

      v102 = v57[1];
      v185 = *v57;
      v189 = v102;
      v103 = (v57 + v73[13]);
      v105 = *v103;
      v104 = v103[1];
      v184 = v105;
      v186 = v104;
      v106 = v223;
      v107 = v221;
      sub_22CF0CCBC(v57, &v221[*(v223 + 24)], type metadata accessor for Activity);
      v180 = type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v187(&v107[*(v106 + 28)], v224, v225);
      v108 = *(v106 + 36);
      v109 = v73[14];
      v110 = sub_22D0146BC();
      v111 = *(v110 - 8);
      v112 = *(v111 + 16);
      v183 = v109;
      v178 = v111 + 16;
      v177 = v112;
      v112(&v107[v108], v57 + v109, v110);
      v113 = *(v111 + 56);
      v181 = v110;
      v179 = v111 + 56;
      v176 = v113;
      v113(&v107[v108], 0, 1, v110);
      v114 = v189;
      *v107 = v185;
      *(v107 + 1) = v114;
      v115 = v186;
      *(v107 + 2) = v184;
      *(v107 + 3) = v115;
      v116 = v223;
      v117 = &v107[*(v223 + 32)];
      *v117 = v217;
      *(v117 + 1) = &off_28402E5B8;
      v107[*(v116 + 40)] = 0;
      v118 = v214;
      sub_22CF0CCBC(v107, v214, type metadata accessor for ActivityParticipantEvent);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v226 = sub_22CFCE570(0, v226[2] + 1, 1, v226);
      }

      v68 = v188;
      v120 = v226[2];
      v119 = v226[3];
      if (v120 >= v119 >> 1)
      {
        v226 = sub_22CFCE570((v119 > 1), v120 + 1, 1, v226);
      }

      v121 = v226;
      v226[2] = v120 + 1;
      v175 = (*(v215 + 80) + 32) & ~*(v215 + 80);
      v174 = *(v215 + 72);
      sub_22CF0A72C(v118, v121 + v175 + v174 * v120, type metadata accessor for ActivityParticipantEvent);
      v122 = v218;
      sub_22D0142DC();
      sub_22CFFF79C();
      v123 = v220;
      v124 = sub_22D01663C();
      v125 = *v219;
      (*v219)(v122, v123);
      if ((v124 & 1) == 0)
      {
        goto LABEL_33;
      }

      v173 = v125;
      v126 = v211;
      sub_22CEEB6DC(v57 + v73[15], v211, &qword_27D9F26E0, &unk_22D018F80);
      v127 = *v210;
      v128 = v212;
      v129 = (*v210)(v126, 1, v212);
      sub_22CEEC3D8(v126, &qword_27D9F26E0, &unk_22D018F80);
      if (v129 == 1)
      {
        v130 = v207;
        sub_22D01467C();
        v131 = v209;
        sub_22D01460C();
        (*v204)(v130, v208);
        v132 = v220;
        if ((*v203)(v131, 1, v220) == 1)
        {
          sub_22CEEC3D8(v131, &qword_27D9F2648, &unk_22D018BC0);
        }

        else
        {
          v134 = v199;
          (*v195)(v199, v131, v132);
          v135 = v218;
          sub_22D0142DC();
          sub_22D01428C();
          v136 = v173;
          v173(v135, v132);
          v136(v134, v132);
        }

        v73 = v229;
        v57 = v230;
        v68 = v188;
LABEL_33:
        sub_22CF0F640(v221, type metadata accessor for ActivityParticipantEvent);
        (*v216)(v224, v225);
        sub_22CF0F640(v57, type metadata accessor for Activity);
LABEL_34:
        v53 = v228;
        v72 = v231;
      }

      else
      {
        v57 = v230;
        v133 = v206;
        sub_22CEEB6DC(v230 + v229[15], v206, &qword_27D9F26E0, &unk_22D018F80);
        if (v127(v133, 1, v128) == 1)
        {
          sub_22CF0F640(v221, type metadata accessor for ActivityParticipantEvent);
          (*v216)(v224, v225);
          sub_22CF0F640(v57, type metadata accessor for Activity);
          sub_22CEEC3D8(v133, &qword_27D9F26E0, &unk_22D018F80);
          v73 = v229;
          v68 = v188;
          goto LABEL_34;
        }

        v137 = v202;
        (*v198)(v202, v133, v128);
        v138 = v200;
        sub_22D01484C();
        sub_22D01491C();
        (*v197)(v138, v201);
        v139 = v218;
        sub_22D0142DC();
        LOBYTE(v138) = sub_22D01428C();
        v140 = v220;
        v173(v139, v220);
        v53 = v228;
        if (v138)
        {
          v141 = v191;
          sub_22CF0CCBC(v230, v191, type metadata accessor for Activity);
          v142 = sub_22D01636C();
          v143 = sub_22D01690C();
          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            v235 = v189;
            *v144 = v227;
            v145 = *v141;
            v146 = v141[1];

            sub_22CF0F640(v141, type metadata accessor for Activity);
            v147 = v145;
            v53 = v228;
            v148 = sub_22CEEE31C(v147, v146, &v235);

            *(v144 + 4) = v148;
            _os_log_impl(&dword_22CEE1000, v142, v143, "Reloaded activity is already obsolete: %{public}s", v144, 0xCu);
            v149 = v189;
            __swift_destroy_boxed_opaque_existential_1Tm(v189);
            MEMORY[0x2318C6860](v149, -1, -1);
            MEMORY[0x2318C6860](v144, -1, -1);

            v150 = v205;
            v151 = v220;
          }

          else
          {

            sub_22CF0F640(v141, type metadata accessor for Activity);
            v150 = v205;
            v151 = v140;
          }

          v173(v150, v151);
          (*v196)(v137, v212);
          sub_22CF0F640(v221, type metadata accessor for ActivityParticipantEvent);
          (*v216)(v224, v225);
          v68 = v188;
          v57 = v230;
          v72 = v231;
          sub_22CF0F640(v230, type metadata accessor for Activity);
          v73 = v229;
        }

        else
        {
          v152 = v192;
          sub_22CF0CCBC(v230, v192, type metadata accessor for Activity);
          v153 = sub_22D01636C();
          v154 = sub_22D01690C();
          if (os_log_type_enabled(v153, v154))
          {
            v155 = swift_slowAlloc();
            v156 = swift_slowAlloc();
            v235 = v156;
            *v155 = v227;
            v172 = *v152;
            LODWORD(v182) = v154;
            v157 = v152[1];

            sub_22CF0F640(v152, type metadata accessor for Activity);
            v158 = sub_22CEEE31C(v172, v157, &v235);

            *(v155 + 4) = v158;
            _os_log_impl(&dword_22CEE1000, v153, v182, "Adding restored end event for reloaded zombie activity: %{public}s", v155, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v156);
            MEMORY[0x2318C6860](v156, -1, -1);
            MEMORY[0x2318C6860](v155, -1, -1);
          }

          else
          {

            sub_22CF0F640(v152, type metadata accessor for Activity);
          }

          v159 = v223;
          v160 = v193;
          (*v190)(&v193[*(v223 + 24)], v137, v212);
          swift_storeEnumTagMultiPayload();
          v187(&v160[v159[7]], v224, v225);
          v161 = v159[9];
          v162 = v181;
          v177(&v160[v161], v230 + v183, v181);
          v176(&v160[v161], 0, 1, v162);
          v163 = v189;
          *v160 = v185;
          *(v160 + 1) = v163;
          v164 = v186;
          *(v160 + 2) = v184;
          *(v160 + 3) = v164;
          v165 = &v160[v159[8]];
          *v165 = v217;
          *(v165 + 1) = &off_28402E5B8;
          v160[v159[10]] = 0;
          sub_22CF0CCBC(v160, v194, type metadata accessor for ActivityParticipantEvent);
          v167 = v226[2];
          v166 = v226[3];

          if (v167 >= v166 >> 1)
          {
            v226 = sub_22CFCE570((v166 > 1), v167 + 1, 1, v226);
          }

          v68 = v188;
          v168 = v175;
          v169 = v174;
          sub_22CF0F640(v193, type metadata accessor for ActivityParticipantEvent);
          v173(v205, v220);
          (*v196)(v202, v212);
          sub_22CF0F640(v221, type metadata accessor for ActivityParticipantEvent);
          (*v216)(v224, v225);
          v170 = v226;
          v226[2] = v167 + 1;
          sub_22CF0A72C(v194, v170 + v168 + v167 * v169, type metadata accessor for ActivityParticipantEvent);
          v57 = v230;
          sub_22CF0F640(v230, type metadata accessor for Activity);
          v73 = v229;
          v72 = v231;
        }
      }
    }

    else
    {
      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v81 = sub_22D01637C();
      __swift_project_value_buffer(v81, qword_281444498);
      sub_22CF0CCBC(v57, v68, type metadata accessor for Activity);
      v82 = sub_22D01636C();
      v83 = sub_22D0168EC();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v235 = v85;
        *v84 = v227;
        v86 = *v68;
        v87 = v68[1];

        sub_22CF0F640(v68, type metadata accessor for Activity);
        v88 = sub_22CEEE31C(v86, v87, &v235);
        v73 = v229;

        *(v84 + 4) = v88;
        v57 = v230;
        _os_log_impl(&dword_22CEE1000, v82, v83, "No sources exist for reloaded activity: %{public}s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v85);
        v89 = v85;
        v53 = v228;
        MEMORY[0x2318C6860](v89, -1, -1);
        MEMORY[0x2318C6860](v84, -1, -1);
      }

      else
      {

        sub_22CF0F640(v68, type metadata accessor for Activity);
      }

      v72 = v231;
      sub_22CF0F640(v57, type metadata accessor for Activity);
    }
  }

  while (1)
  {
    v77 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v77 >= v72)
    {

      return;
    }

    v71 = *(v74 + 8 * v77);
    ++v75;
    if (v71)
    {
      v75 = v77;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22CFFF108(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 72) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_22CFFF170()
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v2 = MEMORY[0x28223BE20](v74, v1);
  v73 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v72 = (&v63 - v6);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v71 = (&v63 - v9);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v70 = (&v63 - v12);
  MEMORY[0x28223BE20](v11, v13);
  v69 = &v63 - v14;
  v15 = v0[7];
  v16 = v0[8];
  v17 = __swift_project_boxed_opaque_existential_1(v0 + 4, v15);
  v18 = *(v15 - 8);
  MEMORY[0x28223BE20](v17, v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20);
  v21 = (*(v16 + 8))(v15, v16);
  (*(v18 + 8))(v20, v15);
  v22 = *(v21 + 16);
  if (v22)
  {
    v82 = MEMORY[0x277D84F90];
    sub_22CF4414C(0, v22, 0);
    v23 = v82;
    v24 = v21 + 64;
    v25 = sub_22D016AEC();
    v26 = 0;
    v27 = *(v21 + 36);
    v64 = v21 + 72;
    v65 = v22;
    v66 = v27;
    v67 = v21 + 64;
    v68 = v21;
    do
    {
      if (v25 < 0 || v25 >= 1 << *(v21 + 32))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      if ((*(v24 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
      {
        goto LABEL_26;
      }

      if (v27 != *(v21 + 36))
      {
        goto LABEL_27;
      }

      v76 = 1 << v25;
      v77 = v25 >> 6;
      v75 = v26;
      v30 = v74;
      v31 = *(v74 + 48);
      v32 = *(v21 + 56);
      v33 = (*(v21 + 48) + 16 * v25);
      v35 = *v33;
      v34 = v33[1];
      v36 = type metadata accessor for Activity(0);
      v37 = v69;
      sub_22CF0CCBC(v32 + *(*(v36 - 8) + 72) * v25, &v69[v31], type metadata accessor for Activity);
      v81 = v23;
      v38 = v70;
      *v70 = v35;
      v38[1] = v34;
      v39 = *(v30 + 48);
      sub_22CF0A72C(&v37[v31], v38 + v39, type metadata accessor for Activity);
      v40 = v71;
      *v71 = v35;
      *(v40 + 8) = v34;
      sub_22CF0CCBC(v38 + v39, v40 + *(v30 + 48), type metadata accessor for Activity);
      v41 = v72;
      sub_22CEEB6DC(v40, v72, &unk_27D9F3840, &unk_22D01A2B0);
      v42 = *v41;
      v79 = v41[1];
      v80 = v42;
      v78 = *(v30 + 48);
      v43 = v73;
      sub_22CEEB6DC(v40, v73, &unk_27D9F3840, &unk_22D01A2B0);
      swift_bridgeObjectRetain_n();

      v44 = *(v30 + 48);
      v45 = sub_22CF0B174();
      v47 = v46;
      sub_22CEEC3D8(v40, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F640(v43 + v44, type metadata accessor for Activity);
      sub_22CF0F640(v41 + v78, type metadata accessor for Activity);
      v48 = v38;
      v23 = v81;
      sub_22CEEC3D8(v48, &unk_27D9F3840, &unk_22D01A2B0);
      v82 = v23;
      v50 = *(v23 + 16);
      v49 = *(v23 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_22CF4414C((v49 > 1), v50 + 1, 1);
        v23 = v82;
      }

      *(v23 + 16) = v50 + 1;
      v51 = (v23 + 48 * v50);
      v52 = v79;
      v51[4] = v80;
      v51[5] = v52;
      v51[6] = v45;
      v51[7] = v47;
      v51[9] = MEMORY[0x277D837D0];
      v21 = v68;
      v28 = 1 << *(v68 + 32);
      if (v25 >= v28)
      {
        goto LABEL_28;
      }

      v24 = v67;
      v53 = *(v67 + 8 * v77);
      if ((v53 & v76) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v27) = v66;
      if (v66 != *(v68 + 36))
      {
        goto LABEL_30;
      }

      v54 = v53 & (-2 << (v25 & 0x3F));
      if (v54)
      {
        v28 = __clz(__rbit64(v54)) | v25 & 0x7FFFFFFFFFFFFFC0;
        v29 = v65;
      }

      else
      {
        v55 = v77 << 6;
        v56 = v77 + 1;
        v29 = v65;
        v57 = (v64 + 8 * v77);
        while (v56 < (v28 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            sub_22CF44CF8(v25, v66, 0);
            v28 = __clz(__rbit64(v58)) + v55;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v25, v66, 0);
      }

LABEL_4:
      v26 = v75 + 1;
      v25 = v28;
    }

    while (v75 + 1 != v29);

    if (!*(v23 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_23:
      v60 = MEMORY[0x277D84F98];
      goto LABEL_24;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
  v60 = sub_22D016D3C();
LABEL_24:
  v82 = v60;

  sub_22CF623EC(v61, 1, &v82);

  return v82;
}

unint64_t sub_22CFFF79C()
{
  result = qword_281443A30;
  if (!qword_281443A30)
  {
    sub_22D01430C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281443A30);
  }

  return result;
}

uint64_t sub_22CFFF7F4()
{
  v1 = OBJC_IVAR____TtC11SessionCore20XPCOutputParticipant_ossignposter;
  v2 = sub_22D01633C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for XPCOutputParticipant(uint64_t a1)
{
  result = qword_281440E60;
  if (!qword_281440E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CFFF8EC(uint64_t a1)
{
  result = sub_22D01633C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_22CFFF9E4()
{
  result = sub_22CFF7EE0(&unk_284029130);
  off_28143E698 = result;
  return result;
}

void sub_22CFFFA0C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 32) = MEMORY[0x277D84F98];
  if (a2)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_22D01666C();
    [v6 doubleForKey_];
    v9 = v8;

    if (v9 <= 0.0)
    {
      v9 = 3600.0;
    }

    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *&a1;
    if (!a3)
    {
LABEL_10:
      v13 = 0;
      v12 = 0;
      v14 = 1;
      v15 = 1;
      goto LABEL_16;
    }
  }

  if (!*(a3 + 16))
  {
    goto LABEL_10;
  }

  v10 = sub_22CF259D0(1);
  if (v11)
  {
    v12 = *(*(a3 + 56) + 8 * v10);
  }

  else
  {
    v12 = 0;
  }

  v15 = v11 ^ 1;
  if (*(a3 + 16) && (v16 = sub_22CF259D0(0), (v17 & 1) != 0))
  {
    v14 = 0;
    v13 = *(*(a3 + 56) + 8 * v16);
  }

  else
  {
    v13 = 0;
    v14 = 1;
  }

LABEL_16:
  if (qword_28143E690 != -1)
  {
    swift_once();
  }

  v18 = off_28143E698;
  if (!*(off_28143E698 + 2))
  {
    __break(1u);
    goto LABEL_31;
  }

  v19 = sub_22CF259D0(1);
  if ((v20 & 1) == 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v15)
  {
    v21 = *(v18[7] + 8 * v19);
    v22 = [objc_opt_self() standardUserDefaults];
    v23 = sub_22D01666C();
    v12 = [v22 integerForKey_];

    if (v12 <= 0)
    {
      v12 = v21;
    }
  }

  if (!v18[2])
  {
    goto LABEL_32;
  }

  v24 = sub_22CF259D0(0);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_33:
    __break(1u);
    return;
  }

  if (v14)
  {
    v27 = *(v18[7] + 8 * v24);
    v28 = [objc_opt_self() standardUserDefaults];
    v29 = sub_22D01666C();
    v30 = [v28 integerForKey_];

    if (v30 <= 0)
    {
      v13 = v27;
    }

    else
    {
      v13 = v30;
    }
  }

  *(v4 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3CF8, qword_22D01CDF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0189F0;
  *(inited + 32) = 0;
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = v12;
  v32 = sub_22CFF7EE0(inited);
  swift_setDeallocating();
  *(v4 + 16) = v32;
}

uint64_t sub_22CFFFD34()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22CFFFD98(uint64_t a1)
{
  result = sub_22D01430C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22CFFFE20()
{
  result = qword_28143EBB0;
  if (!qword_28143EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143EBB0);
  }

  return result;
}

unint64_t *sub_22CFFFE74(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_22CF25E70(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22CFFFF74(uint64_t a1)
{
  result = sub_22D01430C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22CFFFFF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22D01430C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v22 - v15;
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (*(v17 + *(type metadata accessor for DefaultInputBackoffBudget(0) + 20)))
  {
    (*(v5 + 56))(v16, 1, 1, v4);
  }

  else
  {
    sub_22D01429C();
    sub_22D0142DC();
    v18 = sub_22D01427C();
    v19 = *(v5 + 8);
    v19(v9, v4);
    if (v18)
    {
      (*(v5 + 32))(v16, v12, v4);
      v20 = 0;
    }

    else
    {
      v19(v12, v4);
      v20 = 1;
    }

    (*(v5 + 56))(v16, v20, 1, v4);
    if ((*(v5 + 48))(v16, 1, v4) != 1)
    {
      return (*(v5 + 32))(a2, v16, v4);
    }
  }

  sub_22D01422C();
  result = (*(v5 + 48))(v16, 1, v4);
  if (result != 1)
  {
    return sub_22CEF7514(v16);
  }

  return result;
}

uint64_t sub_22D000294()
{
  v1 = sub_22D01430C();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v19 - v12;
  if (*(v0 + *(type metadata accessor for DefaultInputBackoffBudget(0) + 20)))
  {
    (*(v2 + 56))(v13, 1, 1, v1);
LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  sub_22D01429C();
  sub_22D0142DC();
  v14 = sub_22D01427C();
  v15 = *(v2 + 8);
  v15(v6, v1);
  if (v14)
  {
    (*(v2 + 32))(v13, v9, v1);
    v16 = 0;
  }

  else
  {
    v15(v9, v1);
    v16 = 1;
  }

  v17 = 1;
  (*(v2 + 56))(v13, v16, 1, v1);
  if ((*(v2 + 48))(v13, 1, v1) == 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_22CEF7514(v13);
  return v17;
}

uint64_t sub_22D0004CC()
{
  v1 = sub_22D01430C();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  sub_22D0142DC();
  if (sub_22D01427C())
  {
    sub_22D01422C();
    (*(v2 + 40))(v0, v6, v1);
  }

  v10 = type metadata accessor for DefaultInputBackoffBudget(0);
  sub_22D01429C();
  v11 = sub_22D01428C();
  v12 = *(v2 + 8);
  v12(v6, v1);
  if ((v11 & 1) == 0)
  {
    return (v12)(v9, v1);
  }

  result = (*(v2 + 40))(v0, v9, v1);
  *(v0 + *(v10 + 20)) = *(v0 + *(v10 + 28));
  return result;
}

BOOL sub_22D00067C(uint64_t a1, uint64_t a2)
{
  if ((sub_22D0142CC() & 1) != 0 && (v4 = type metadata accessor for DefaultInputBackoffBudget(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D000704()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_22CEFD4D8(*v0, *(v0 + 8), v1 | *(v0 + 16));
}

uint64_t sub_22D00072C(uint64_t a1)
{
  v1 = sub_22D014F9C();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  return v1;
}

uint64_t sub_22D000878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_22D01502C();
  v58 = *(v3 - 8);
  v59 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v53 - v8);
  v57 = sub_22D0145CC();
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01481C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v53 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v56 = &v53 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v24 = (&v53 - v23);
  v25 = *(v15 + 16);
  v55 = a1;
  v25(&v53 - v23, a1, v14);
  v26 = (*(v15 + 88))(v24, v14);
  if (v26 == *MEMORY[0x277CB9330])
  {
    (*(v15 + 96))(v24, v14);
    v27 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3158, &unk_22D01AEE0) + 48));
    v28 = *v27;
    v29 = v27[1];
    v30 = v57;
    (*(v10 + 32))(v13, v24, v57);
    sub_22CEFE530(v61, 1, v29, v9);
    sub_22CEFE9B4(v28, v29);
    sub_22D000E80(v13, v9, v60);
    (*(v58 + 8))(v9, v59);
    return (*(v10 + 8))(v13, v30);
  }

  else
  {
    v33 = v60;
    v32 = v61;
    if (v26 == *MEMORY[0x277CB9338])
    {
      (*(v15 + 96))(v24, v14);
      v34 = *v24;
      v35 = v24[1];
      v36 = v54;
      sub_22CEFE530(v32, 1, v35, v54);
      sub_22CEFE9B4(v34, v35);
      sub_22D001F3C(v36, v33);
      return (*(v58 + 8))(v36, v59);
    }

    else
    {
      if (qword_28143FB48 != -1)
      {
        swift_once();
      }

      v37 = sub_22D01637C();
      __swift_project_value_buffer(v37, qword_281444480);
      v38 = v56;
      v25(v56, v55, v14);
      v39 = sub_22D01636C();
      v40 = sub_22D0168EC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v61 = v41;
        v62 = swift_slowAlloc();
        v63 = v62;
        *v41 = 136446210;
        v25(v53, v38, v14);
        v42 = sub_22D01669C();
        v43 = v38;
        v44 = v42;
        v46 = v45;
        v47 = *(v15 + 8);
        v47(v43, v14);
        v48 = sub_22CEEE31C(v44, v46, &v63);

        v49 = v61;
        *(v61 + 1) = v48;
        v50 = v40;
        v51 = v49;
        _os_log_impl(&dword_22CEE1000, v39, v50, "Unknown input: %{public}s", v49, 0xCu);
        v52 = v62;
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        MEMORY[0x2318C6860](v52, -1, -1);
        MEMORY[0x2318C6860](v51, -1, -1);
      }

      else
      {

        v47 = *(v15 + 8);
        v47(v38, v14);
      }

      type metadata accessor for PermissionsError(0);
      sub_22CEFF268(&qword_27D9F3150, type metadata accessor for PermissionsError, &unk_22D01A3D4);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (v47)(v24, v14);
    }
  }
}

uint64_t sub_22D000E80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v161 = a2;
  v156 = a1;
  v152 = a3;
  v155 = sub_22D0145CC();
  v158 = *(v155 - 8);
  v5 = MEMORY[0x28223BE20](v155, v4);
  v141 = v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v143 = v140 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v159 = v140 - v11;
  v12 = sub_22D01459C();
  v150 = *(v12 - 8);
  v151 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v149 = v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v148 = (v140 - v17);
  v18 = sub_22D01502C();
  v162 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v142 = v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v144 = v140 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v146 = v140 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = v140 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v157 = v140 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2358, &unk_22D018980);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v37 = v140 - v36;
  v38 = sub_22D0145EC();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v40);
  v42 = v140 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ContentSourceResolver(0);
  v147 = *(v43 + 28);
  sub_22D0022B4(v3 + v147, v37);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    v154 = v39;
    v153 = v38;
    sub_22CEEC3D8(v37, &unk_27D9F2358, &unk_22D018980);
    v44 = *(v162 + 16);
    v160 = v18;
    v140[1] = v162 + 16;
    v44(v31, v3, v18);
    v45 = sub_22D014FEC();
    v46 = v31;
    v145 = v31;
    v157 = v44;
    if (v45)
    {
      v47 = v3;
      sub_22D014F9C();
      v161 = v48;
      v49 = v158;
      v50 = v159;
    }

    else
    {
      v49 = v158;
      v50 = v159;
      if (*(v3 + *(v43 + 20) + 17) != 1)
      {
        if (qword_28143FB48 != -1)
        {
          swift_once();
        }

        v85 = sub_22D01637C();
        __swift_project_value_buffer(v85, qword_281444480);
        v86 = v146;
        v87 = v160;
        v44(v146, v46, v160);
        v88 = sub_22D01636C();
        v89 = sub_22D0168EC();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v163 = v91;
          *v90 = 136380675;
          v92 = sub_22D014F9C();
          v93 = v86;
          v95 = v94;
          v96 = *(v162 + 8);
          v96(v93, v160);
          v97 = sub_22CEEE31C(v92, v95, &v163);

          *(v90 + 4) = v97;
          _os_log_impl(&dword_22CEE1000, v88, v89, "%{private}s is not entitled to set a custom push process", v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v91);
          v98 = v91;
          v99 = v96;
          MEMORY[0x2318C6860](v98, -1, -1);
          v100 = v90;
          v87 = v160;
          MEMORY[0x2318C6860](v100, -1, -1);
        }

        else
        {

          v99 = *(v162 + 8);
          v99(v86, v87);
        }

        type metadata accessor for PermissionsError(0);
        sub_22CEFF268(&qword_27D9F3150, type metadata accessor for PermissionsError, &unk_22D01A3D4);
        swift_allocError();
        (v157)(v110, v161, v87);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return (v99)(v145, v87);
      }

      v47 = v3;
      sub_22D014F9C();
      v161 = v67;
    }

    v68 = *(v49 + 16);
    v69 = v155;
    v68(v50, v156, v155);
    v70 = (*(v49 + 88))(v50, v69);
    if (v70 == *MEMORY[0x277CB9228])
    {
      (*(v49 + 96))(v50, v69);
      v71 = v50[1];
      v72 = (v47 + *(v43 + 20));
      v73 = v72[1];
      v74 = v157;
      if (v73)
      {
        v75 = *v50;
        v76 = v148;
        *v148 = *v72;
        v76[1] = v73;
        v76[2] = v75;
        v76[3] = v71;
        v78 = v150;
        v77 = v151;
        (*(v150 + 104))(v76, *MEMORY[0x277CB9218], v151);

LABEL_24:
        v83 = v145;
        v84 = v154;
        goto LABEL_25;
      }

      v106 = v145;
      if (qword_28143FB48 != -1)
      {
        swift_once();
      }

      v107 = sub_22D01637C();
      __swift_project_value_buffer(v107, qword_281444480);
      v108 = v144;
      v109 = v160;
      (v74)(v144, v106, v160);
      goto LABEL_38;
    }

    if (v70 == *MEMORY[0x277CB9230])
    {
      v81 = (v47 + *(v43 + 20));
      v82 = v81[1];
      v83 = v145;
      v84 = v154;
      if (v82)
      {
        v76 = v148;
        *v148 = *v81;
        v76[1] = v82;
        v78 = v150;
        v77 = v151;
        (*(v150 + 104))(v76, *MEMORY[0x277CB9210], v151);

LABEL_25:
        (*(v78 + 16))(v149, v76, v77);
        v101 = v152;
        sub_22D0145AC();
        (*(v78 + 8))(v76, v77);
        (*(v162 + 8))(v83, v160);
        v102 = v147;
        sub_22CEEC3D8(v47 + v147, &unk_27D9F2358, &unk_22D018980);
        v103 = v153;
        (*(v84 + 16))(v47 + v102, v101, v153);
        (*(v84 + 56))(v47 + v102, 0, 1, v103);
        v104 = *MEMORY[0x277CB9320];
        v105 = sub_22D01483C();
        return (*(*(v105 - 8) + 104))(v101, v104, v105);
      }

      if (qword_28143FB48 != -1)
      {
        swift_once();
      }

      v124 = sub_22D01637C();
      __swift_project_value_buffer(v124, qword_281444480);
      v108 = v142;
      v109 = v160;
      (v157)(v142, v83, v160);
LABEL_38:
      v125 = sub_22D01636C();
      v126 = sub_22D0168EC();
      v127 = os_log_type_enabled(v125, v126);
      v128 = v162;
      if (v127)
      {
        v129 = swift_slowAlloc();
        v130 = v108;
        v131 = swift_slowAlloc();
        v163 = v131;
        *v129 = 136380675;
        v132 = sub_22D014F9C();
        v134 = v133;
        v135 = *(v128 + 8);
        v135(v130, v160);
        v136 = sub_22CEEE31C(v132, v134, &v163);

        *(v129 + 4) = v136;
        _os_log_impl(&dword_22CEE1000, v125, v126, "%{private}s does not specify an APS environment name", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        MEMORY[0x2318C6860](v131, -1, -1);
        v137 = v129;
        v109 = v160;
        MEMORY[0x2318C6860](v137, -1, -1);
      }

      else
      {

        v135 = *(v128 + 8);
        v135(v108, v109);
      }

      type metadata accessor for PermissionsError(0);
      sub_22CEFF268(&qword_27D9F3150, type metadata accessor for PermissionsError, &unk_22D01A3D4);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (v135)(v145, v109);
    }

    if (v70 == *MEMORY[0x277CB9238])
    {
      v78 = v150;
      v77 = v151;
      v76 = v148;
      (*(v150 + 104))(v148, *MEMORY[0x277CB9220], v151);
      goto LABEL_24;
    }

    if (qword_28143FB48 != -1)
    {
      swift_once();
    }

    v111 = sub_22D01637C();
    __swift_project_value_buffer(v111, qword_281444480);
    v112 = v143;
    v68(v143, v156, v69);
    v113 = sub_22D01636C();
    v114 = sub_22D0168EC();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = v49;
      v116 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v163 = v161;
      *v116 = 136446210;
      v68(v141, v112, v69);
      v117 = sub_22D01669C();
      v118 = v112;
      v120 = v119;
      v121 = *(v115 + 8);
      v121(v118, v69);
      v122 = sub_22CEEE31C(v117, v120, &v163);

      *(v116 + 4) = v122;
      _os_log_impl(&dword_22CEE1000, v113, v114, "Push type %{public}s is unknown", v116, 0xCu);
      v123 = v161;
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
      MEMORY[0x2318C6860](v123, -1, -1);
      MEMORY[0x2318C6860](v116, -1, -1);
    }

    else
    {

      v121 = *(v49 + 8);
      v121(v112, v69);
    }

    v138 = v160;
    v139 = v162;
    type metadata accessor for PermissionsError(0);
    sub_22CEFF268(&qword_27D9F3150, type metadata accessor for PermissionsError, &unk_22D01A3D4);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v139 + 8))(v145, v138);
    return (v121)(v159, v69);
  }

  else
  {
    v51 = v161;
    v52 = v162;
    v53 = v18;
    (*(v39 + 32))(v42, v37, v38);
    if (qword_28143FB48 != -1)
    {
      swift_once();
    }

    v54 = sub_22D01637C();
    __swift_project_value_buffer(v54, qword_281444480);
    v55 = v157;
    (*(v52 + 16))(v157, v51, v18);
    v56 = sub_22D01636C();
    v57 = sub_22D0168EC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v160 = v53;
      v59 = v58;
      v60 = swift_slowAlloc();
      v153 = v38;
      v61 = v60;
      v163 = v60;
      *v59 = 136380675;
      v62 = sub_22D014F9C();
      v154 = v39;
      v64 = v63;
      (*(v52 + 8))(v55, v160);
      v65 = sub_22CEEE31C(v62, v64, &v163);
      v39 = v154;

      *(v59 + 4) = v65;
      _os_log_impl(&dword_22CEE1000, v56, v57, "%{private}s cannot request two push inputs", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      v66 = v61;
      v38 = v153;
      MEMORY[0x2318C6860](v66, -1, -1);
      MEMORY[0x2318C6860](v59, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v55, v53);
    }

    type metadata accessor for PermissionsError(0);
    sub_22CEFF268(&qword_27D9F3150, type metadata accessor for PermissionsError, &unk_22D01A3D4);
    swift_allocError();
    (*(v39 + 16))(v79, v42, v38);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v39 + 8))(v42, v38);
  }
}

uint64_t sub_22D001F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22D01502C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22D014FEC())
  {
    goto LABEL_4;
  }

  if (*(v3 + *(type metadata accessor for ContentSourceResolver(0) + 20) + 16))
  {
    v3 = a1;
LABEL_4:
    (*(v7 + 16))(a2, v3, v6);
    v11 = *MEMORY[0x277CB9348];
    v12 = sub_22D01483C();
    return (*(*(v12 - 8) + 104))(a2, v11, v12);
  }

  if (qword_28143FB48 != -1)
  {
    swift_once();
  }

  v14 = sub_22D01637C();
  __swift_project_value_buffer(v14, qword_281444480);
  v15 = *(v7 + 16);
  v15(v10, a1, v6);
  v16 = sub_22D01636C();
  v17 = sub_22D0168EC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v7 + 16;
    v19 = v18;
    v27 = swift_slowAlloc();
    v30 = v27;
    *v19 = 136380675;
    v20 = sub_22D014F9C();
    v28 = v15;
    v22 = v21;
    (*(v7 + 8))(v10, v6);
    v23 = sub_22CEEE31C(v20, v22, &v30);
    v15 = v28;

    *(v19 + 4) = v23;
    _os_log_impl(&dword_22CEE1000, v16, v17, "%{private}s is not permitted to specify multiple process content sources", v19, 0xCu);
    v24 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x2318C6860](v24, -1, -1);
    MEMORY[0x2318C6860](v19, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  type metadata accessor for PermissionsError(0);
  sub_22CEFF268(&qword_27D9F3150, type metadata accessor for PermissionsError, &unk_22D01A3D4);
  swift_allocError();
  v15(v25, a1, v6);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_22D0022B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2358, &unk_22D018980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22D00234C(uint64_t a1)
{
  sub_22D01502C();
  if (v1 <= 0x3F)
  {
    sub_22D002450(319, &qword_28143D958, MEMORY[0x277CB9350], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22D002450(319, &qword_2814439F8, MEMORY[0x277CB9240], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22D002450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_22D0024C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 19))
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

uint64_t sub_22D002524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22D0025CC(uint64_t a1)
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

uint64_t sub_22D0026A0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 112)));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 144)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 152)));
  return v0;
}

uint64_t sub_22D002780()
{
  sub_22D0026A0();

  return swift_deallocClassInstance();
}

uint64_t sub_22D0027F0(NSObject *a1, uint64_t a2)
{
  v208 = a2;
  v3 = sub_22D014E2C();
  v211 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v195 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v195 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v195 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v195 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v195 - v25;
  v27 = sub_22D014EFC();
  v204 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27 - 8, v28);
  v201 = &v195 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v200 = &v195 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v199 = &v195 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v207 = (&v195 - v39);
  MEMORY[0x28223BE20](v38, v40);
  v203 = &v195 - v41;
  v209 = sub_22D0149AC();
  v205 = *(v209 - 8);
  MEMORY[0x28223BE20](v209, v42);
  v202 = &v195 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  v46 = MEMORY[0x28223BE20](v44 - 8, v45);
  v48 = &v195 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v49);
  v206 = &v195 - v50;
  if (sub_22D014CFC())
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v51 = sub_22D01637C();
    __swift_project_value_buffer(v51, qword_281444420);
    v52 = v211;
    v53 = v3;
    (*(v211 + 16))(v7, a1, v3);
    v54 = sub_22D01636C();
    v55 = sub_22D0168EC();
    if (!os_log_type_enabled(v54, v55))
    {

      (*(v52 + 8))(v7, v53);
LABEL_19:
      v81 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
      v82 = swift_allocError();
      v84 = v83;
      v85 = MEMORY[0x277CB9470];
LABEL_20:
      (*(*(v81 - 8) + 104))(v84, *v85, v81);
      return v82;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v212 = v57;
    *v56 = 136446210;
    sub_22CEFF2B0(&qword_27D9F34A0, MEMORY[0x277CB9678], MEMORY[0x277CB9690]);
    v58 = sub_22D016DEC();
    v60 = v59;
    (*(v52 + 8))(v7, v53);
    v61 = sub_22CEEE31C(v58, v60, &v212);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_22CEE1000, v54, v55, "Push cannot create ephemeral activities: %{public}s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x2318C6860](v57, -1, -1);
    v62 = v56;
LABEL_17:
    MEMORY[0x2318C6860](v62, -1, -1);

    goto LABEL_19;
  }

  if (sub_22D014D1C())
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v63 = sub_22D01637C();
    __swift_project_value_buffer(v63, qword_281444420);
    v64 = v211;
    v65 = v3;
    (*(v211 + 16))(v11, a1, v3);
    v54 = sub_22D01636C();
    v66 = sub_22D0168EC();
    if (!os_log_type_enabled(v54, v66))
    {

      (*(v64 + 8))(v11, v3);
      goto LABEL_19;
    }

    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v212 = v68;
    *v67 = 136446210;
    sub_22CEFF2B0(&qword_27D9F34A0, MEMORY[0x277CB9678], MEMORY[0x277CB9690]);
    v69 = sub_22D016DEC();
    v71 = v70;
    (*(v64 + 8))(v11, v65);
    v72 = sub_22CEEE31C(v69, v71, &v212);

    *(v67 + 4) = v72;
    v73 = "Push cannot create momentary activities: %{public}s";
    goto LABEL_16;
  }

  if (sub_22D014D2C())
  {
    if (qword_28143FB28 == -1)
    {
LABEL_14:
      v74 = sub_22D01637C();
      __swift_project_value_buffer(v74, qword_281444420);
      v75 = v211;
      v76 = v3;
      (*(v211 + 16))(v15, a1, v3);
      v54 = sub_22D01636C();
      v66 = sub_22D0168EC();
      if (!os_log_type_enabled(v54, v66))
      {

        (*(v75 + 8))(v15, v3);
        goto LABEL_19;
      }

      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v212 = v68;
      *v67 = 136446210;
      sub_22CEFF2B0(&qword_27D9F34A0, MEMORY[0x277CB9678], MEMORY[0x277CB9690]);
      v77 = sub_22D016DEC();
      v79 = v78;
      (*(v75 + 8))(v15, v76);
      v80 = sub_22CEEE31C(v77, v79, &v212);

      *(v67 + 4) = v80;
      v73 = "Push cannot create unbounded activities: %{public}s";
LABEL_16:
      _os_log_impl(&dword_22CEE1000, v54, v66, v73, v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x2318C6860](v68, -1, -1);
      v62 = v67;
      goto LABEL_17;
    }

LABEL_111:
    swift_once();
    goto LABEL_14;
  }

  sub_22D014CEC();
  if (v87)
  {

    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v88 = sub_22D01637C();
    __swift_project_value_buffer(v88, qword_281444420);
    v89 = v211;
    v90 = v3;
    (*(v211 + 16))(v19, a1, v3);
    v91 = sub_22D01636C();
    v92 = sub_22D0168EC();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v212 = v94;
      *v93 = 136446210;
      sub_22CEFF2B0(&qword_27D9F34A0, MEMORY[0x277CB9678], MEMORY[0x277CB9690]);
      v95 = sub_22D016DEC();
      v97 = v96;
      (*(v89 + 8))(v19, v90);
      v98 = sub_22CEEE31C(v95, v97, &v212);

      *(v93 + 4) = v98;
      _os_log_impl(&dword_22CEE1000, v91, v92, "Push cannot reconnect activities: %{public}s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      MEMORY[0x2318C6860](v94, -1, -1);
      MEMORY[0x2318C6860](v93, -1, -1);
    }

    else
    {

      (*(v89 + 8))(v19, v3);
    }

    v81 = sub_22D01496C();
    sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
    v82 = swift_allocError();
    v84 = v106;
    v85 = MEMORY[0x277CB94A8];
    goto LABEL_20;
  }

  v99 = sub_22D014D4C();
  v101 = v100 >> 62;
  if ((v100 >> 62) <= 1)
  {
    v102 = v3;
    if (v101)
    {
      v103 = HIDWORD(v99);
      v104 = v99;
      sub_22CEE7524(v99, v100);
      LODWORD(v105) = v103 - v104;
      if (!__OFSUB__(v103, v104))
      {
        v105 = v105;
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_113;
    }

LABEL_42:
    sub_22CEE7524(v99, v100);
    goto LABEL_43;
  }

  v102 = v3;
  if (v101 != 2)
  {
    goto LABEL_42;
  }

  v108 = *(v99 + 16);
  v107 = *(v99 + 24);
  sub_22CEE7524(v99, v100);
  v105 = v107 - v108;
  if (!__OFSUB__(v107, v108))
  {
LABEL_36:
    if (v105 > 4096)
    {
      if (qword_28143FB28 == -1)
      {
        goto LABEL_38;
      }

      goto LABEL_114;
    }

LABEL_43:
    v118 = sub_22D014DAC();
    sub_22D014C7C();
    if (v118)
    {
      if ((MEMORY[0x2318C3DC0]() & 1) == 0)
      {
LABEL_45:
        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v119 = sub_22D01637C();
        __swift_project_value_buffer(v119, qword_281444420);
        v120 = v211;
        (*(v211 + 16))(v26, a1, v102);
        v121 = sub_22D01636C();
        v122 = sub_22D0168EC();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v212 = v124;
          *v123 = 136380675;
          sub_22CEFF2B0(&qword_27D9F34A0, MEMORY[0x277CB9678], MEMORY[0x277CB9690]);
          v125 = sub_22D016DEC();
          v127 = v126;
          (*(v120 + 8))(v26, v102);
          v128 = sub_22CEEE31C(v125, v127, &v212);

          *(v123 + 4) = v128;
          _os_log_impl(&dword_22CEE1000, v121, v122, "Live Activities are not supported for this type of request: %{private}s", v123, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v124);
          MEMORY[0x2318C6860](v124, -1, -1);
          MEMORY[0x2318C6860](v123, -1, -1);
        }

        else
        {

          (*(v120 + 8))(v26, v102);
        }

        v81 = sub_22D01496C();
        sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
        v82 = swift_allocError();
        v84 = v130;
        v85 = MEMORY[0x277CB9480];
        goto LABEL_20;
      }
    }

    else if ((MEMORY[0x2318C3DD0]() & 1) == 0)
    {
      goto LABEL_45;
    }

    if (*(v210 + *(*v210 + 128)) != 1)
    {
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v131 = sub_22D01637C();
      __swift_project_value_buffer(v131, qword_281444420);
      v132 = sub_22D01636C();
      v133 = sub_22D0168EC();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_22CEE1000, v132, v133, "Persistence is not functional", v134, 2u);
        MEMORY[0x2318C6860](v134, -1, -1);
      }

      v81 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
      v82 = swift_allocError();
      v84 = v135;
      v85 = MEMORY[0x277CB9498];
      goto LABEL_20;
    }

    if (sub_22CF04384(0))
    {
      v81 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
      v82 = swift_allocError();
      v84 = v129;
      v85 = MEMORY[0x277CB94A0];
      goto LABEL_20;
    }

    v136 = *(v208 + 64);
    v196 = v208 + 64;
    v137 = 1 << *(v208 + 32);
    v138 = -1;
    if (v137 < 64)
    {
      v138 = ~(-1 << v137);
    }

    v139 = v138 & v136;
    v195 = (v137 + 63) >> 6;
    v197 = v205 + 32;
    v198 = v205 + 16;
    v211 = v205 + 8;

    v140 = 0;
    a1 = v207;
    if (!v139)
    {
LABEL_65:
      if (v195 <= (v140 + 1))
      {
        v142 = (v140 + 1);
      }

      else
      {
        v142 = v195;
      }

      v15 = (v142 - 1);
      while (1)
      {
        v141 = (v140 + 1);
        if (__OFADD__(v140, 1))
        {
          break;
        }

        if (v141 >= v195)
        {
          v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
          (*(*(v152 - 8) + 56))(v48, 1, 1, v152);
          v139 = 0;
          goto LABEL_73;
        }

        v139 = *(v196 + 8 * v141);
        ++v140;
        if (v139)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
      goto LABEL_111;
    }

    while (1)
    {
      v141 = v140;
LABEL_72:
      v143 = __clz(__rbit64(v139));
      v139 &= v139 - 1;
      v144 = v143 | (v141 << 6);
      v146 = v208;
      v145 = v209;
      v147 = v205;
      v148 = v202;
      (*(v205 + 16))(v202, *(v208 + 48) + *(v205 + 72) * v144, v209);
      v3 = v203;
      sub_22CEFEB00(*(v146 + 56) + *(v204 + 72) * v144, v203, MEMORY[0x277CB9790]);
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      v150 = *(v149 + 48);
      (*(v147 + 32))(v48, v148, v145);
      sub_22CF033C4(v3, &v48[v150]);
      (*(*(v149 - 8) + 56))(v48, 0, 1, v149);
      v15 = v141;
      a1 = v207;
LABEL_73:
      v102 = v206;
      sub_22CF03428(v48, v206);
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      if ((*(*(v151 - 8) + 48))(v102, 1, v151) == 1)
      {

        return 0;
      }

      sub_22CF033C4(v102 + *(v151 + 48), a1);
      if (sub_22CF03498(a1, 0))
      {
        v159 = sub_22D01496C();
        sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
        v160 = a1;
        v82 = swift_allocError();
        (*(*(v159 - 8) + 104))(v161, *MEMORY[0x277CB94B0], v159);

        v162 = MEMORY[0x277CB9790];
        v163 = v160;
        goto LABEL_109;
      }

      if ((sub_22CF04684(a1) & 1) == 0)
      {
        if (qword_28143FB28 != -1)
        {
          goto LABEL_116;
        }

        goto LABEL_93;
      }

      if (sub_22CF048A8(a1))
      {
        break;
      }

      if ((sub_22D005A2C(a1) & 1) == 0)
      {
        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v184 = sub_22D01637C();
        __swift_project_value_buffer(v184, qword_281444420);
        v185 = v199;
        sub_22CEFEB00(a1, v199, MEMORY[0x277CB9790]);
        v186 = sub_22D01636C();
        v187 = sub_22D0168EC();
        if (os_log_type_enabled(v186, v187))
        {
          v188 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          v212 = v189;
          *v188 = 136446210;
          v190 = sub_22D014ECC();
          v192 = v191;
          sub_22CEFD754(v185, MEMORY[0x277CB9790]);
          v193 = sub_22CEEE31C(v190, v192, &v212);

          *(v188 + 4) = v193;
          _os_log_impl(&dword_22CEE1000, v186, v187, "Target does not include NSSupportsLiveActivities key in its Info.plist %{public}s", v188, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v189);
          MEMORY[0x2318C6860](v189, -1, -1);
          MEMORY[0x2318C6860](v188, -1, -1);
        }

        else
        {

          sub_22CEFD754(v185, MEMORY[0x277CB9790]);
        }

        v180 = sub_22D01496C();
        sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
        v82 = swift_allocError();
        v182 = v194;
        v183 = MEMORY[0x277CB9488];
        goto LABEL_108;
      }

      sub_22CEFD754(a1, MEMORY[0x277CB9790]);
      (*v211)(v102, v209);
      v140 = v15;
      if (!v139)
      {
        goto LABEL_65;
      }
    }

    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v175 = sub_22D01637C();
    __swift_project_value_buffer(v175, qword_281444420);
    v165 = v200;
    sub_22CEFEB00(a1, v200, MEMORY[0x277CB9790]);
    v166 = sub_22D01636C();
    v167 = sub_22D0168EC();
    if (os_log_type_enabled(v166, v167))
    {
      v168 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v212 = v169;
      *v168 = 136380675;
      v176 = sub_22D014ECC();
      v178 = v177;
      sub_22CEFD754(v165, MEMORY[0x277CB9790]);
      v179 = sub_22CEEE31C(v176, v178, &v212);

      *(v168 + 4) = v179;
      v174 = "Scene target is restricted: %{private}s";
      goto LABEL_99;
    }

LABEL_100:

    sub_22CEFD754(v165, MEMORY[0x277CB9790]);
    goto LABEL_101;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  swift_once();
LABEL_38:
  v109 = sub_22D01637C();
  __swift_project_value_buffer(v109, qword_281444420);
  v110 = v211;
  (*(v211 + 16))(v23, a1, v102);

  a1 = sub_22D01636C();
  v111 = sub_22D0168EC();
  if (!os_log_type_enabled(a1, v111))
  {
    (*(v110 + 8))(v23, v102);

LABEL_89:
    v81 = sub_22D01496C();
    sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
    v82 = swift_allocError();
    v84 = v158;
    v85 = MEMORY[0x277CB9490];
    goto LABEL_20;
  }

  v112 = swift_slowAlloc();
  *v112 = 134349312;
  v113 = sub_22D014D4C();
  v115 = v114 >> 62;
  if ((v114 >> 62) > 1)
  {
    if (v115 != 2)
    {
      sub_22CEE7524(v113, v114);
      v117 = 0;
      goto LABEL_88;
    }

    v154 = *(v113 + 16);
    v153 = *(v113 + 24);
    v113 = sub_22CEE7524(v113, v114);
    v155 = __OFSUB__(v153, v154);
    v117 = v153 - v154;
    if (!v155)
    {
      goto LABEL_88;
    }

    __break(1u);
  }

  else if (!v115)
  {
    v116 = BYTE6(v114);
    sub_22CEE7524(v113, v114);
    v117 = v116;
LABEL_88:
    (*(v110 + 8))(v23, v102);
    *(v112 + 4) = v117;
    *(v112 + 12) = 2050;
    *(v112 + 14) = 4096;

    _os_log_impl(&dword_22CEE1000, a1, v111, "Request attribute size %{public}ld exceeds maximum size of %{public}ld", v112, 0x16u);
    MEMORY[0x2318C6860](v112, -1, -1);

    goto LABEL_89;
  }

  v156 = HIDWORD(v113);
  v157 = v113;
  sub_22CEE7524(v113, v114);
  if (!__OFSUB__(v156, v157))
  {
    v117 = v156 - v157;
    goto LABEL_88;
  }

  __break(1u);
LABEL_116:
  swift_once();
LABEL_93:
  v164 = sub_22D01637C();
  __swift_project_value_buffer(v164, qword_281444420);
  v165 = v201;
  sub_22CEFEB00(a1, v201, MEMORY[0x277CB9790]);
  v166 = sub_22D01636C();
  v167 = sub_22D0168EC();
  if (!os_log_type_enabled(v166, v167))
  {
    goto LABEL_100;
  }

  v168 = swift_slowAlloc();
  v169 = swift_slowAlloc();
  v212 = v169;
  *v168 = 136446210;
  v170 = sub_22D014ECC();
  v172 = v171;
  sub_22CEFD754(v165, MEMORY[0x277CB9790]);
  v173 = sub_22CEEE31C(v170, v172, &v212);

  *(v168 + 4) = v173;
  v174 = "Target does not have user consent to request activities %{public}s";
LABEL_99:
  _os_log_impl(&dword_22CEE1000, v166, v167, v174, v168, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v169);
  MEMORY[0x2318C6860](v169, -1, -1);
  MEMORY[0x2318C6860](v168, -1, -1);

LABEL_101:
  v180 = sub_22D01496C();
  sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8], MEMORY[0x277CB94D0]);
  v82 = swift_allocError();
  v182 = v181;
  v183 = MEMORY[0x277CB94C0];
LABEL_108:
  (*(*(v180 - 8) + 104))(v182, *v183, v180);

  v162 = MEMORY[0x277CB9790];
  v163 = v207;
LABEL_109:
  sub_22CEFD754(v163, v162);
  (*v211)(v102, v209);
  return v82;
}

uint64_t sub_22D004290(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D014EFC();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01502C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D014C7C();
  if (MEMORY[0x2318C3DC0]())
  {

    sub_22D014F8C();
    (*(v10 + 16))(v8, v13, v9);
    swift_storeEnumTagMultiPayload();
    v14 = __swift_project_boxed_opaque_existential_1((v2 + *(*v2 + 144)), *(v2 + *(*v2 + 144) + 24));
    v15 = *v14;
    v16 = *(*(*v14 + 40) + 16);
    os_unfair_lock_lock(v16);
    swift_beginAccess();
    v17 = *(v15 + 48);

    v18 = sub_22CF24034(a1, a2, v17);

    os_unfair_lock_unlock(v16);
    if (v18 & 1) != 0 && (sub_22D005A2C(v8))
    {
      v19 = sub_22CF04684(v8);
    }

    else
    {
      v19 = 0;
    }

    sub_22CEFD754(v8, MEMORY[0x277CB9790]);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_22D004508(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v7 = v6 - 8;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v22[-v13];
  v15 = *a1;
  v16 = a1[1];
  *v14 = v15;
  v14[1] = v16;
  sub_22CEFEB00(a2, &v22[*(v7 + 56) - v13], type metadata accessor for Activity);
  sub_22CEEB6DC(v14, v11, &unk_27D9F3840, &unk_22D01A2B0);

  v17 = &v11[*(v7 + 56)];
  v18 = *(v17 + *(type metadata accessor for Activity(0) + 28));

  sub_22CEFD754(v17, type metadata accessor for Activity);
  v23 = a3;
  sub_22CF4CFD4(sub_22D00645C, v22, v18);
  v20 = v19;

  sub_22CEEC3D8(v14, &unk_27D9F3840, &unk_22D01A2B0);
  return v20 & 1;
}

unint64_t sub_22D0046B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22D01679C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22CFCE10C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_22CFCE10C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22D01677C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22D0166EC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22D0166EC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22D01679C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_22CFCE10C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22D01679C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22CFCE10C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22CFCE10C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22D0166EC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_22D004A70(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_22CF03BE4(result, a2, a3);

    return v6;
  }

  return result;
}

unsigned __int8 *sub_22D004AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_22D00648C();

  result = sub_22D01678C();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22D005080(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22D016C8C();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
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

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22D005080(uint64_t a1, unint64_t a2)
{
  v2 = sub_22D01679C();
  v6 = sub_22D005100(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22D005100(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22D016A9C();
    if (!v9 || (v10 = v9, v11 = sub_22CEEEC30(v9, 0), v12 = sub_22D005258(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22D0166CC();

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
      return sub_22D0166CC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22D016C8C();
LABEL_4:

  return sub_22D0166CC();
}

unint64_t sub_22D005258(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_22D005478(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22D01675C();
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
          result = sub_22D016C8C();
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

    result = sub_22D005478(v12, a6, a7);
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

    result = sub_22D01672C();
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

unint64_t sub_22D005478(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22D01676C();
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
    v5 = MEMORY[0x2318C58A0](15, a1 >> 16);
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

uint64_t sub_22D0054F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_22D016C8C();
  }

  result = sub_22D0055C0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_22D0055C0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_22D005478(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22D01674C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22D005478(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22D005478(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_22D01674C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
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

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_22D005A2C(uint64_t a1)
{
  v2 = sub_22D01502C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D014EFC();
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v46 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v46 - v21;
  sub_22CEFEB00(a1, &v46 - v21, MEMORY[0x277CB9790]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22CEFD754(v22, MEMORY[0x277CB9790]);
    return 1;
  }

  else
  {
    sub_22CEFEB00(a1, v19, MEMORY[0x277CB9790]);
    v48 = *(v3 + 32);
    v48(v6, v19, v2);
    v24 = sub_22D014F9C();
    v26 = v25;
    v49 = *(v3 + 8);
    v49(v6, v2);
    v27 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v28 = sub_22CEE8CD0(v24, v26, 0);
    if (v28)
    {
      v44 = v28;
      v45 = [v28 supportsLiveActivities];

      v49(v22, v2);
      return v45;
    }

    else
    {
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v29 = sub_22D01637C();
      __swift_project_value_buffer(v29, qword_281444420);
      sub_22CEFEB00(a1, v15, MEMORY[0x277CB9790]);
      v30 = sub_22D01636C();
      v31 = sub_22D0168EC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v46 = v32;
        v47 = swift_slowAlloc();
        v50 = v47;
        *v32 = 136446210;
        v33 = MEMORY[0x277CB9790];
        sub_22CEFEB00(v15, v11, MEMORY[0x277CB9790]);
        v48(v6, v11, v2);
        v34 = v31;
        v35 = sub_22D014F9C();
        v37 = v36;
        v38 = v6;
        v39 = v49;
        v49(v38, v2);
        sub_22CEFD754(v15, v33);
        v40 = sub_22CEEE31C(v35, v37, &v50);

        v41 = v46;
        *(v46 + 1) = v40;
        v42 = v41;
        _os_log_impl(&dword_22CEE1000, v30, v34, "App does not exist: %{public}s", v41, 0xCu);
        v43 = v47;
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x2318C6860](v43, -1, -1);
        MEMORY[0x2318C6860](v42, -1, -1);
      }

      else
      {

        sub_22CEFD754(v15, MEMORY[0x277CB9790]);
        v39 = v49;
      }

      v39(v22, v2);
      return 0;
    }
  }
}

uint64_t sub_22D005EE4(void *a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() identifierWithPid_];
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = v2;
  v4 = [objc_opt_self() predicateMatchingIdentifier_];
  v5 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22D0187A0;
  *(v6 + 32) = sub_22D01667C();
  *(v6 + 40) = v7;
  v8 = sub_22D0167CC();

  [v5 setEndowmentNamespaces_];

  v30[0] = 0;
  v9 = [objc_opt_self() statesForPredicate:v4 withDescriptor:v5 error:v30];
  v10 = v30[0];
  if (!v9)
  {
    v22 = v30[0];
    v23 = sub_22D01416C();

    swift_willThrow();
LABEL_21:
    v21 = 0;
    return v21 & 1;
  }

  v11 = v9;
  sub_22CEE82F8(0, &qword_28143D930, 0x277D46FA8);
  v12 = sub_22D0167DC();
  v13 = v10;

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (sub_22D016B7C() != 1)
  {
LABEL_15:

    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v24 = sub_22D01637C();
    __swift_project_value_buffer(v24, qword_281444420);
    v25 = a1;
    v26 = sub_22D01636C();
    v27 = sub_22D0168EC();
    if (!os_log_type_enabled(v26, v27))
    {

      goto LABEL_21;
    }

    v28 = swift_slowAlloc();
    *v28 = 67240192;
    *(v28 + 4) = [v25 pid];

    _os_log_impl(&dword_22CEE1000, v26, v27, "Found multiple process state matches for pid: %{public}d", v28, 8u);
    MEMORY[0x2318C6860](v28, -1, -1);

    goto LABEL_19;
  }

  if (!sub_22D016B7C())
  {

LABEL_19:

    goto LABEL_21;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x2318C5DE0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  v16 = [v15 endowmentNamespaces];
  if (!v16)
  {

    goto LABEL_21;
  }

  v17 = v16;
  v18 = sub_22D01685C();

  v19 = sub_22D01667C();
  v21 = sub_22CF24034(v19, v20, v18);

  return v21 & 1;
}

unint64_t sub_22D00631C()
{
  result = qword_28143D918;
  if (!qword_28143D918)
  {
    sub_22CEE82F8(255, &qword_28143D920, 0x277D46F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D918);
  }

  return result;
}

unint64_t sub_22D006384()
{
  result = qword_27D9F3D10;
  if (!qword_27D9F3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3D10);
  }

  return result;
}

unint64_t sub_22D0063D8()
{
  result = qword_27D9F3D18;
  if (!qword_27D9F3D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F3D08, &qword_22D01D0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3D18);
  }

  return result;
}

unint64_t sub_22D00648C()
{
  result = qword_27D9F3D28;
  if (!qword_27D9F3D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3D28);
  }

  return result;
}

uint64_t sub_22D006510()
{
  MEMORY[0x2318C6860](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

id sub_22D006550(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D0153EC();
  sub_22D016A3C();
  (*(v5 + 8))(v8, v4);
  sub_22D0153DC();
  v9 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22D00667C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_22D0153DC();
  v7 = sub_22D01666C();

  v8 = [objc_opt_self() interfaceWithIdentifier_];

  v9 = objc_opt_self();
  v10 = [v9 protocolForProtocol_];
  [v8 setClient_];

  v11 = [v9 protocolForProtocol_];
  [v8 setServer_];

  v12 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a4;
  v23 = sub_22D0080C4;
  v24 = v14;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22D008590;
  v22 = &block_descriptor_37_2;
  v15 = _Block_copy(&v19);

  [a1 setInterruptionHandler_];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a4;
  v23 = sub_22D0080EC;
  v24 = v17;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22D008590;
  v22 = &block_descriptor_44_1;
  v18 = _Block_copy(&v19);

  [a1 setInvalidationHandler_];
  _Block_release(v18);
}

void sub_22D006980(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (qword_28143FAF0 != -1)
  {
    swift_once();
  }

  v6 = sub_22D01637C();
  __swift_project_value_buffer(v6, qword_2814443A8);
  v7 = sub_22D01636C();
  v8 = sub_22D01690C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22CEE1000, v7, v8, a4, v9, 2u);
    MEMORY[0x2318C6860](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(*(Strong + OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_lock) + 16);
    v12 = Strong;

    os_unfair_lock_lock(v11);
    swift_beginAccess();
    sub_22CFB3684(0, a3);
    swift_endAccess();
    os_unfair_lock_unlock(v11);

    v13 = __swift_project_boxed_opaque_existential_1(&v12[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_assertionManager], *&v12[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_assertionManager + 24]);
    v14 = *v13;
    v15 = *(*(*v13 + 48) + 16);
    os_unfair_lock_lock(v15);
    sub_22CF692C8(v14, a3);
    os_unfair_lock_unlock(v15);
  }
}

id sub_22D006CF0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_22D006D8C(uint64_t a1)
{
  v3 = sub_22D0154AC();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v35 - v10;
  if ([*(v1 + OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41[0] = v39;
  v41[1] = v40;
  if (*(&v40 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3DE0, &unk_22D01D150);
    if (swift_dynamicCast())
    {
      v12 = v38;
      if (qword_28143FAF0 != -1)
      {
        swift_once();
      }

      v13 = sub_22D01637C();
      __swift_project_value_buffer(v13, qword_2814443A8);
      v14 = *(v4 + 16);
      v14(v11, a1, v3);
      v15 = sub_22D01636C();
      v16 = sub_22D01690C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v37 = a1;
        v18 = v17;
        v19 = swift_slowAlloc();
        v36 = v12;
        v20 = v19;
        *&v41[0] = v19;
        *v18 = 136446210;
        v14(v8, v11, v3);
        v21 = sub_22D01669C();
        v23 = v22;
        (*(v4 + 8))(v11, v3);
        v24 = sub_22CEEE31C(v21, v23, v41);

        *(v18 + 4) = v24;
        _os_log_impl(&dword_22CEE1000, v15, v16, "Informing client of invalidated assertion: %{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        v25 = v20;
        v12 = v36;
        MEMORY[0x2318C6860](v25, -1, -1);
        MEMORY[0x2318C6860](v18, -1, -1);
      }

      else
      {

        (*(v4 + 8))(v11, v3);
      }

      v30 = sub_22D01548C();
      v31 = sub_22D0141EC();
      v33 = v32;

      v34 = sub_22D0141DC();
      [v12 didInvalidate_];

      sub_22CEE7524(v31, v33);
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_22CFAA9A8(v41);
  }

  if (qword_28143FAF0 != -1)
  {
    swift_once();
  }

  v26 = sub_22D01637C();
  __swift_project_value_buffer(v26, qword_2814443A8);
  v27 = sub_22D01636C();
  v28 = sub_22D0168EC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_22CEE1000, v27, v28, "Client does not implement expected interface", v29, 2u);
    MEMORY[0x2318C6860](v29, -1, -1);
  }
}

uint64_t sub_22D0071B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01534C();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01546C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D0141DC();
  sub_22D01541C();

  v14 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager], *&v2[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager + 24]);
  v21[3] = type metadata accessor for AssertionServiceClient();
  v21[4] = &off_28402E888;
  v21[0] = v2;
  v15 = *v14;
  v16 = v2;
  v17 = v15;
  sub_22CF6A944(v21, v7);
  if (v3)
  {
    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    sub_22D007AC8();
    v18 = sub_22D01550C();
    v17 = sub_22D0141EC();

    (*(v22 + 8))(v7, v4);
    (*(v9 + 8))(v12, v8);
  }

  return v17;
}

uint64_t sub_22D00740C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D01534C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D0141DC();
  sub_22D007AC8();
  sub_22D0154FC();

  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager], *&v2[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager + 24]);
  v12[3] = type metadata accessor for AssertionServiceClient();
  v12[4] = &off_28402E888;
  v12[0] = v2;
  v9 = v2;
  sub_22CF6C29C(v7, v12);
  (*(v4 + 8))(v7, v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_22D007634(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D0153CC();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01538C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_22D0141DC();
  sub_22D01537C();

  v14 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager], *&v2[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager + 24]);
  v21[3] = type metadata accessor for AssertionServiceClient();
  v21[4] = &off_28402E888;
  v21[0] = v2;
  v15 = *v14;
  v16 = v2;
  v17 = v15;
  sub_22CF6D860(v12, v21, v7);
  if (v3)
  {
    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v18 = sub_22D0153AC();
    v17 = sub_22D0141EC();

    (*(v22 + 8))(v7, v4);
    (*(v9 + 8))(v12, v8);
  }

  return v17;
}

id sub_22D007884(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v7 = a3;
  v8 = a1;
  v9 = sub_22D0141EC();
  v11 = v10;

  v12 = a5(v9, v11);
  v14 = v13;

  sub_22CEE7524(v9, v11);
  v15 = sub_22D0141DC();
  sub_22CEE7524(v12, v14);

  return v15;
}

unint64_t sub_22D007AC8()
{
  result = qword_28143DAF8;
  if (!qword_28143DAF8)
  {
    sub_22D01534C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143DAF8);
  }

  return result;
}

uint64_t sub_22D007B20(void *a1, uint64_t a2)
{
  v11 = type metadata accessor for AssertionServiceClient();
  v12 = &off_28402E888;
  v10[0] = a1;
  v4 = *(*(a2 + 48) + 16);
  v5 = a1;
  os_unfair_lock_lock(v4);
  v6 = [*(*__swift_project_boxed_opaque_existential_1(v10 v11) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
  v7 = [v6 pid];

  sub_22CEE3A84(v10, v9);
  swift_beginAccess();
  sub_22CFB32AC(v9, v7);
  swift_endAccess();
  os_unfair_lock_unlock(v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

id sub_22D007C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssertionManager();
  v16[3] = v4;
  v16[4] = &off_284029D68;
  v16[0] = a2;
  v5 = type metadata accessor for AssertionServiceClient();
  v6 = objc_allocWithZone(v5);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v16, v4);
  MEMORY[0x28223BE20](v7, v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v15[3] = v4;
  v15[4] = &off_284029D68;
  v15[0] = v11;
  *&v6[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_connection] = a1;
  sub_22CEE3A84(v15, &v6[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager]);
  v14.receiver = v6;
  v14.super_class = v5;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v12;
}

void sub_22D007D64(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_assertionManager];
  sub_22CEE3A84(&v2[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_assertionManager], aBlock);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, v29);
  MEMORY[0x28223BE20](v5, v5);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v10 = a1;
  v11 = sub_22D007C10(v10, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v12 = [v10 remoteProcess];
  v13 = [v12 pid];

  v14 = *(*&v2[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_lock] + 16);
  os_unfair_lock_lock(v14);
  v15 = OBJC_IVAR____TtC11SessionCore22AssertionServiceServer__lock_clients;
  swift_beginAccess();
  v16 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *&v2[v15];
  *&v2[v15] = 0x8000000000000000;
  sub_22CFC00F4(v16, v13, isUniquelyReferenced_nonNull_native);
  *&v2[v15] = v32;
  swift_endAccess();
  os_unfair_lock_unlock(v14);
  v18 = __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
  v29 = type metadata accessor for AssertionServiceClient();
  v30 = &off_28402E888;
  aBlock[0] = v16;
  v19 = *v18;
  v20 = *__swift_project_boxed_opaque_existential_1(aBlock, v29);
  v21 = v16;
  sub_22D007B20(v20, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v2;
  *(v22 + 32) = v13;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22D0080B8;
  *(v23 + 24) = v22;
  v30 = sub_22CEE5B1C;
  v31 = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  v29 = &block_descriptor_30;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v2;

  [v10 configureConnection_];
  _Block_release(v24);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    [v10 activate];
  }
}

uint64_t sub_22D00811C(uint64_t a1)
{
  v1 = sub_22D014DDC();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v10 = sub_22CEE8CD0(v3, v4, 1);

    v11 = [v10 localizedName];

    v12 = sub_22D01667C();
    return v12;
  }

  else
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v6 = sub_22D01637C();
    __swift_project_value_buffer(v6, qword_281444498);
    v7 = sub_22D01636C();
    v8 = sub_22D0168EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22CEE1000, v7, v8, "No asset provider bundle ID provided", v9, 2u);
      MEMORY[0x2318C6860](v9, -1, -1);
    }

    return 0;
  }
}

double sub_22D008438(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 40);
    if (v5)
    {
      v6 = *(Strong + 48);

      v5(a3);

      return sub_22CF80A18(v5, v6);
    }

    else
    {
    }
  }

  else
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_2814443F0);
    v9 = sub_22D01636C();
    v10 = sub_22D0168FC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, "Wake manager unexpectedly deallocated", v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }
  }

  return result;
}

void sub_22D008590(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22D0085F8()
{
  v1 = *(v0 + 16);
  if (v1 && ([v1 cancel], (v2 = *(v0 + 16)) != 0))
  {
    [v2 invalidate];
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
  }

  sub_22CF80A18(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t sub_22D008660()
{
  sub_22D0085F8();

  return swift_deallocClassInstance();
}

void *sub_22D0086B8()
{
  v13[0] = sub_22D01697C();
  v1 = *(v13[0] - 8);
  MEMORY[0x28223BE20](v13[0], v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D01691C();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_22D01653C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v0[2] = 0;
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *(v9 + 16) = v10;
  *v10 = 0;
  v0[3] = v9;
  sub_22CEEC38C();
  sub_22D0164EC();
  v13[1] = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v13[0]);
  v11 = sub_22D0169BC();
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = v11;
  return v0;
}

double sub_22D0088FC(void *a1)
{
  v3 = *(sub_22D01430C() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_22D008438(a1, v4, v5);
}

uint64_t sub_22D008970()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return swift_deallocClassInstance();
}

id sub_22D0089DC(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

id sub_22D008A54(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014B7C();
  sub_22D016A3C();
  (*(v5 + 8))(v8, v4);
  sub_22D014B6C();
  v9 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22D008B80(void *a1, uint64_t a2, char *a3, int a4)
{
  sub_22D014B6C();
  v8 = sub_22D01666C();

  v9 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22D0089DC;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_47_5;
  v10 = _Block_copy(&v22);
  v11 = &unk_284040670;

  v12 = objc_opt_self();
  v13 = [v12 protocolForProtocol:v11 interpreter:v10];
  _Block_release(v10);

  [v9 setClient_];
  v14 = [v12 protocolForProtocol_];
  [v9 setServer_];

  v15 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v26 = sub_22D00A5F8;
  v27 = v16;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_53_2;
  v17 = _Block_copy(&v22);
  v18 = a3;

  [a1 setInterruptionHandler_];
  _Block_release(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a4;
  v26 = sub_22D00A620;
  v27 = v19;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_59_2;
  v20 = _Block_copy(&v22);
  v21 = v18;

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

void sub_22D008EF4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = sub_22D01637C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01635C();
  v12 = sub_22D01636C();
  v13 = sub_22D0168EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22CEE1000, v12, v13, a4, v14, 2u);
    MEMORY[0x2318C6860](v14, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v15 = *(*(a2 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_lock) + 16);
  os_unfair_lock_lock(v15);
  swift_beginAccess();
  sub_22CFB3698(0, a3);
  swift_endAccess();
  os_unfair_lock_unlock(v15);
}

id sub_22D009224(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_lock;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_bufferedQoSUpdate] = 0;
  v1[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_pendingAck] = 0;
  v6 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_predicate;
  v7 = sub_22D0147AC();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_connection] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for QoSObservationServiceClient(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_22D00932C(void *a1)
{
  v3 = sub_22D01637C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D014CDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v1 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  aBlock = v36;
  v32 = v37;
  if (*(&v37 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3EE8, &unk_22D01D340);
    if (swift_dynamicCast())
    {
      v13 = v35;
      *&v36 = 0;
      v14 = *(*(v1 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_lock) + 16);
      os_unfair_lock_lock(v14);
      sub_22D009794(v1, a1, &v36);
      os_unfair_lock_unlock(v14);
      if (!v36)
      {
        return swift_unknownObjectRelease();
      }

      sub_22D014CCC();
      sub_22D00A108(&unk_27D9F3EF0, MEMORY[0x277CB9658], MEMORY[0x277CB9650]);
      v30 = v13;
      v15 = v1;
      v16 = sub_22D01517C();
      v29 = sub_22D0141EC();
      v18 = v17;

      sub_22D01566C();
      v19 = sub_22D01563C();
      v20 = sub_22D0141DC();
      v21 = swift_allocObject();
      *(v21 + 16) = v15;
      *(v21 + 24) = v19;
      v33 = sub_22D00A150;
      v34 = v21;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v32 = sub_22CF217E0;
      *(&v32 + 1) = &block_descriptor_32;
      v22 = v9;
      v23 = _Block_copy(&aBlock);
      v24 = v15;

      [v30 activityQoSDidChange:v20 completion:v23];
      sub_22CEE7524(v29, v18);
      _Block_release(v23);

      swift_unknownObjectRelease();

      (*(v22 + 8))(v12, v8);
    }
  }

  else
  {
    sub_22CEEC3D8(&aBlock, &qword_27D9F2B10, &unk_22D01B930);
  }

  sub_22D01635C();
  v26 = sub_22D01636C();
  v27 = sub_22D0168EC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22CEE1000, v26, v27, "Client does not implement expected interface", v28, 2u);
    MEMORY[0x2318C6860](v28, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22D009794(uint64_t a1, void *a2, void **a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3ED8, qword_22D01D328);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v19 - v8;
  v10 = sub_22D0147AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_predicate;
  swift_beginAccess();
  sub_22D00A158(a1 + v15, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_22CEEC3D8(v9, &unk_27D9F3ED8, qword_22D01D328);
  }

  (*(v11 + 32))(v14, v9, v10);
  if (*(a1 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_pendingAck))
  {
    *(a1 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_bufferedQoSUpdate) = a2;
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_pendingAck) = 1;
    if (sub_22D01478C())
    {

      MEMORY[0x28223BE20](v17, v18);
      *(&v19 - 2) = v14;
      *a3 = sub_22CF79DF0(sub_22D00A1C8, (&v19 - 4), a2);
    }

    else
    {
      *a3 = a2;
    }
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_22D0099F8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_lock) + 16);
  os_unfair_lock_lock(v3);
  *(a2 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_pendingAck) = 0;
  v4 = *(a2 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_bufferedQoSUpdate);
  *(a2 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_bufferedQoSUpdate) = 0;
  os_unfair_lock_unlock(v3);
  if (v4)
  {
    sub_22D00932C(v4);
  }

  return sub_22D01562C();
}

id sub_22D009AC8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for QoSObservationServiceClient(uint64_t a1)
{
  result = qword_27D9F3E58;
  if (!qword_27D9F3E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22D009BD4(uint64_t a1)
{
  sub_22D009C9C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22D009C9C(uint64_t a1)
{
  if (!qword_27D9F3E68)
  {
    sub_22D0147AC();
    v1 = sub_22D016A8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9F3E68);
    }
  }
}

uint64_t sub_22D009CF4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3ED8, qword_22D01D328);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(*(v1 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_lock) + 16);
    os_unfair_lock_lock(v9);
    v10 = sub_22D0147AC();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v6, a1, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    v12 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_predicate;
    swift_beginAccess();
    sub_22D00A098(v6, v1 + v12);
    swift_endAccess();
    os_unfair_lock_unlock(v9);
    v13 = *(*(v8 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_lock) + 16);
    os_unfair_lock_lock(v13);
    v14 = *(v8 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer__lock_qos);

    os_unfair_lock_unlock(v13);
    sub_22D00932C(v14);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22D00A098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3ED8, qword_22D01D328);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D00A108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22D00A158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3ED8, qword_22D01D328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22D00A200(void *a1)
{
  v2 = v1;
  v4 = sub_22D01637C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 remoteProcess];
  v10 = sub_22D01666C();
  v11 = [v9 hasEntitlement_];

  if (v11)
  {
    v12 = objc_allocWithZone(type metadata accessor for QoSObservationServiceClient(0));
    v13 = a1;
    v14 = sub_22D009224(v13);
    v15 = [v13 remoteProcess];
    v16 = [v15 pid];

    *&v14[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_delegate + 8] = &off_28402EAB8;
    swift_unknownObjectWeakAssign();
    v17 = *(*&v2[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_lock] + 16);
    os_unfair_lock_lock(v17);
    v18 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer__lock_clients;
    swift_beginAccess();
    v19 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *&v2[v18];
    *&v2[v18] = 0x8000000000000000;
    sub_22CFC0108(v19, v16, isUniquelyReferenced_nonNull_native);
    *&v2[v18] = v32;
    swift_endAccess();
    os_unfair_lock_unlock(v17);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v2;
    *(v21 + 32) = v16;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_22D00A5EC;
    *(v22 + 24) = v21;
    aBlock[4] = sub_22CEE5B1C;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEE5AA0;
    aBlock[3] = &block_descriptor_44_2;
    v23 = _Block_copy(aBlock);
    v24 = v19;
    v25 = v2;

    [v13 configureConnection_];
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [v13 activate];
    }
  }

  else
  {
    sub_22D01635C();
    v27 = sub_22D01636C();
    v28 = sub_22D0168EC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22CEE1000, v27, v28, "Process is not entitled to listen to the QoS service", v29, 2u);
      MEMORY[0x2318C6860](v29, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    [a1 invalidate];
  }
}

double sub_22D00A688(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_22D00A700();
    v4 = *(v3[2] + 16);
    os_unfair_lock_lock(v4);
    sub_22CF1E8A0(v3);
    os_unfair_lock_unlock(v4);
  }

  return result;
}

uint64_t sub_22D00A700()
{
  v1 = type metadata accessor for Activity(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = (&v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v6);
  sub_22D00A8B0(v0, v14);
  os_unfair_lock_unlock(v6);
  v7 = v14[1];
  v8 = *(v14[0] + 16);
  if (v8)
  {
    v9 = v14[2];
    v10 = v14[0] + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_22CF0CCBC(v10, v5, type metadata accessor for Activity);
      sub_22D00AEC0(v5, v7, v9);
      sub_22CF0F640(v5, type metadata accessor for Activity);
      v10 += v11;
      --v8;
    }

    while (v8);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_22D00A8B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v50 - v5;
  v7 = sub_22D01430C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Activity(0);
  v11 = *(v65 - 8);
  v13 = MEMORY[0x28223BE20](v65, v12);
  v59 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v63 = (&v50 - v17);
  MEMORY[0x28223BE20](v16, v18);
  v58 = &v50 - v19;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = *(a1 + 128);
    swift_beginAccess();
    v55 = a1;
    v20 = *(a1 + 112);
    v21 = v20 + 64;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 64);
    v25 = (v22 + 63) >> 6;
    v57 = (v8 + 8);
    v53 = (v11 + 56);
    v61 = v20;
    swift_bridgeObjectRetain_n();
    v26 = 0;
    v62 = MEMORY[0x277D84F90];
    v56 = v6;
    v54 = v7;
    v27 = v63;
    v64 = v11;
    while (v24)
    {
LABEL_12:
      v29 = *(v11 + 72);
      v30 = v58;
      sub_22CF0CCBC(*(v61 + 56) + v29 * (__clz(__rbit64(v24)) | (v26 << 6)), v58, type metadata accessor for Activity);
      sub_22D00BD30(v30, v27, type metadata accessor for Activity);
      v31 = v60;
      sub_22D0142DC();
      sub_22CF1A1AC(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v32 = v27;
      v33 = sub_22D01663C();
      (*v57)(v31, v7);
      if (v33)
      {
        v11 = v64;
        v27 = v32;
      }

      else
      {
        sub_22CF0CCBC(v32, v59, type metadata accessor for Activity);
        v34 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_22CFCE2B8(0, v34[2] + 1, 1, v34);
        }

        v36 = v34[2];
        v35 = v34[3];
        if (v36 >= v35 >> 1)
        {
          v34 = sub_22CFCE2B8((v35 > 1), v36 + 1, 1, v34);
        }

        v34[2] = v36 + 1;
        v37 = *(v64 + 80);
        v62 = v34;
        sub_22D00BD30(v59, v34 + ((v37 + 32) & ~v37) + v36 * v29, type metadata accessor for Activity);
        v38 = *v63;
        v39 = v63[1];
        v40 = v55;
        swift_beginAccess();
        v41 = sub_22CEEC698(v38, v39);
        if (v42)
        {
          v43 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = *(v40 + 112);
          v66 = v45;
          *(v40 + 112) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22CFB6320();
            v45 = v66;
          }

          v46 = v56;
          sub_22D00BD30(*(v45 + 56) + v43 * v29, v56, type metadata accessor for Activity);
          sub_22CFBCCB8(v43, v45);
          *(v40 + 112) = v45;

          v47 = 0;
        }

        else
        {
          v47 = 1;
          v46 = v56;
        }

        (*v53)(v46, v47, 1, v65);
        sub_22CEEC3D8(v46, &qword_27D9F3810, &unk_22D018FA0);
        swift_endAccess();
        v7 = v54;
        v27 = v63;
        v11 = v64;
      }

      v24 &= v24 - 1;
      sub_22CF0F640(v27, type metadata accessor for Activity);
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v25)
      {

        v48 = v52;
        v49 = Strong;
        *v52 = v62;
        v48[1] = v49;
        v48[2] = v50;
        return;
      }

      v24 = *(v21 + 8 * v28);
      ++v26;
      if (v24)
      {
        v26 = v28;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  sub_22D016CFC();
  __break(1u);
}

void sub_22D00AEC0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v77 = a2;
  v4 = sub_22D0164CC();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v80 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22D01653C();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v7);
  v78 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityParticipantEvent(0);
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v73 = v13;
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v68 - v15;
  v17 = type metadata accessor for Activity(0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = (&v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19, v22);
  v24 = (&v68 - v23);
  if (qword_28143DA88 != -1)
  {
    swift_once();
  }

  v25 = sub_22D01637C();
  __swift_project_value_buffer(v25, qword_2814442D8);
  sub_22CF0CCBC(a1, v24, type metadata accessor for Activity);
  v26 = sub_22D01636C();
  v27 = sub_22D01690C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v70 = v21;
    v29 = v28;
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136446210;
    v69 = v17;
    v31 = a1;
    v32 = *v24;
    v33 = v24[1];

    sub_22CF0F640(v24, type metadata accessor for Activity);
    v34 = sub_22CEEE31C(v32, v33, aBlock);
    a1 = v31;

    *(v29 + 4) = v34;
    v17 = v69;
    _os_log_impl(&dword_22CEE1000, v26, v27, "Starting delayed activity: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x2318C6860](v30, -1, -1);
    v35 = v29;
    v21 = v70;
    MEMORY[0x2318C6860](v35, -1, -1);
  }

  else
  {

    sub_22CF0F640(v24, type metadata accessor for Activity);
  }

  v36 = *(a1 + *(v17 + 36));
  if (*(v36 + 16))
  {
    v37 = v17;
    v38 = sub_22D01483C();
    v39 = a1;
    v40 = *(v38 - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = v39[1];
    v70 = *v39;
    v69 = v42;
    v43 = (v39 + *(v37 + 52));
    v44 = v43[1];
    v68 = *v43;
    v45 = v71;
    sub_22CF0CCBC(v39, &v16[v71[6]], type metadata accessor for Activity);
    type metadata accessor for ActivityParticipantEvent.EventType(0);
    swift_storeEnumTagMultiPayload();
    (*(v40 + 16))(&v16[v45[7]], v36 + v41, v38);
    v46 = v45[9];
    v47 = *(v37 + 56);
    v48 = sub_22D0146BC();
    v49 = *(v48 - 8);
    (*(v49 + 16))(&v16[v46], v39 + v47, v48);
    (*(v49 + 56))(&v16[v46], 0, 1, v48);
    v50 = v69;
    *v16 = v70;
    *(v16 + 1) = v50;
    *(v16 + 2) = v68;
    *(v16 + 3) = v44;
    v51 = &v16[v45[8]];
    v52 = v76;
    *v51 = v76;
    *(v51 + 1) = &off_28402EC88;
    v16[v45[10]] = 0;
    v71 = *(v52 + 64);
    v53 = v74;
    sub_22CF0CCBC(v16, v74, type metadata accessor for ActivityParticipantEvent);
    v54 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v55 = swift_allocObject();
    v56 = v75;
    *(v55 + 16) = v77;
    *(v55 + 24) = v56;
    sub_22D00BD30(v53, v55 + v54, type metadata accessor for ActivityParticipantEvent);
    aBlock[4] = sub_22CFA5C9C;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEF8B58;
    aBlock[3] = &block_descriptor_33;
    v57 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    v58 = v78;
    sub_22D0164EC();
    v84 = MEMORY[0x277D84F90];
    sub_22CF1A1AC(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
    sub_22CF0EDA8();
    v59 = v80;
    v60 = v83;
    sub_22D016ADC();
    MEMORY[0x2318C5B10](0, v58, v59, v57);
    _Block_release(v57);
    (*(v82 + 8))(v59, v60);
    (*(v79 + 8))(v58, v81);
    sub_22CF0F640(v16, type metadata accessor for ActivityParticipantEvent);
  }

  else
  {
    sub_22CF0CCBC(a1, v21, type metadata accessor for Activity);
    v61 = sub_22D01636C();
    v62 = sub_22D0168EC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v63 = 136446210;
      v65 = *v21;
      v66 = v21[1];

      sub_22CF0F640(v21, type metadata accessor for Activity);
      v67 = sub_22CEEE31C(v65, v66, aBlock);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_22CEE1000, v61, v62, "No content sources exist for delayed activity: %{public}s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x2318C6860](v64, -1, -1);
      MEMORY[0x2318C6860](v63, -1, -1);
    }

    else
    {

      sub_22CF0F640(v21, type metadata accessor for Activity);
    }
  }
}

uint64_t sub_22D00B770()
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v2 = MEMORY[0x28223BE20](v70, v1);
  v69 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v68 = (&v59 - v6);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v67 = (&v59 - v9);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v66 = (&v59 - v12);
  MEMORY[0x28223BE20](v11, v13);
  v65 = &v59 - v14;
  v59 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v59);
  swift_beginAccess();
  v15 = *(v0 + 112);
  v16 = *(v15 + 16);
  v78 = MEMORY[0x277D84F90];
  if (v16)
  {
    v79 = MEMORY[0x277D84F90];

    sub_22CF4414C(0, v16, 0);
    v78 = v79;
    v17 = v15 + 64;
    v18 = sub_22D016AEC();
    v19 = 0;
    v20 = *(v15 + 36);
    v60 = v15 + 72;
    v61 = v16;
    v63 = v15 + 64;
    v62 = v20;
    v64 = v15;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v15 + 32))
    {
      if ((*(v17 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_26;
      }

      if (v20 != *(v15 + 36))
      {
        goto LABEL_27;
      }

      v72 = 1 << v18;
      v73 = v18 >> 6;
      v71 = v19;
      v22 = v70;
      v23 = *(v70 + 48);
      v24 = *(v15 + 56);
      v25 = (*(v15 + 48) + 16 * v18);
      v27 = *v25;
      v26 = v25[1];
      v28 = type metadata accessor for Activity(0);
      v29 = v65;
      sub_22CF0CCBC(v24 + *(*(v28 - 8) + 72) * v18, &v65[v23], type metadata accessor for Activity);
      v30 = v66;
      *v66 = v27;
      *(v30 + 8) = v26;
      v31 = *(v22 + 48);
      sub_22D00BD30(&v29[v23], v30 + v31, type metadata accessor for Activity);
      v32 = v67;
      *v67 = v27;
      *(v32 + 8) = v26;
      sub_22CF0CCBC(v30 + v31, v32 + *(v22 + 48), type metadata accessor for Activity);
      v33 = v68;
      sub_22CEEB6DC(v32, v68, &unk_27D9F3840, &unk_22D01A2B0);
      v34 = *v33;
      v76 = v33[1];
      v77 = v34;
      v74 = *(v22 + 48);
      v35 = v69;
      sub_22CEEB6DC(v32, v69, &unk_27D9F3840, &unk_22D01A2B0);
      swift_bridgeObjectRetain_n();

      v36 = *(v22 + 48);
      v75 = sub_22CF0B174();
      v38 = v37;
      v39 = v32;
      v40 = v78;
      sub_22CEEC3D8(v39, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F640(v35 + v36, type metadata accessor for Activity);
      sub_22CF0F640(v33 + v74, type metadata accessor for Activity);
      sub_22CEEC3D8(v30, &unk_27D9F3840, &unk_22D01A2B0);
      v79 = v40;
      v42 = *(v40 + 16);
      v41 = *(v40 + 24);
      v78 = v40;
      if (v42 >= v41 >> 1)
      {
        sub_22CF4414C((v41 > 1), v42 + 1, 1);
        v78 = v79;
      }

      v44 = v77;
      v43 = v78;
      *(v78 + 16) = v42 + 1;
      v45 = (v43 + 48 * v42);
      v46 = v75;
      v47 = v76;
      v45[4] = v44;
      v45[5] = v47;
      v45[6] = v46;
      v45[7] = v38;
      v45[9] = MEMORY[0x277D837D0];
      v15 = v64;
      v21 = 1 << *(v64 + 32);
      if (v18 >= v21)
      {
        goto LABEL_28;
      }

      v17 = v63;
      v48 = *(v63 + 8 * v73);
      if ((v48 & v72) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v20) = v62;
      if (v62 != *(v64 + 36))
      {
        goto LABEL_30;
      }

      v49 = v48 & (-2 << (v18 & 0x3F));
      if (v49)
      {
        v21 = __clz(__rbit64(v49)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v50 = v73 << 6;
        v51 = v73 + 1;
        v52 = (v60 + 8 * v73);
        while (v51 < (v21 + 63) >> 6)
        {
          v54 = *v52++;
          v53 = v54;
          v50 += 64;
          ++v51;
          if (v54)
          {
            sub_22CF44CF8(v18, v62, 0);
            v21 = __clz(__rbit64(v53)) + v50;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v18, v62, 0);
      }

LABEL_4:
      v19 = v71 + 1;
      v18 = v21;
      if (v71 + 1 == v61)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v78 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
      v55 = sub_22D016D3C();
    }

    else
    {
      v55 = MEMORY[0x277D84F98];
    }

    v79 = v55;

    sub_22CF623EC(v56, 1, &v79);

    v57 = v79;
    os_unfair_lock_unlock(v59);
    return v57;
  }

  return result;
}

uint64_t sub_22D00BD30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D00BE10(void *a1)
{
  v2 = v1;
  v4 = sub_22D015FDC();
  v53 = *(v4 - 8);
  v54 = v4;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v50 = &v47 - v9;
  v57 = sub_22D01697C();
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01691C();
  MEMORY[0x28223BE20](v14, v15);
  v16 = sub_22D01653C();
  MEMORY[0x28223BE20](v16 - 8, v17);
  sub_22D01608C();
  *(v1 + 16) = sub_22D01607C();
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *(v18 + 16) = v19;
  *v19 = 0;
  *(v2 + 32) = v18;
  v56 = sub_22CEEC38C();
  sub_22D0164FC();
  v58 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  v20 = v2;
  sub_22D016ADC();
  (*(v10 + 104))(v13, *MEMORY[0x277D85268], v57);
  v21 = a1;
  *(v20 + 24) = sub_22D0169BC();
  if (qword_281442150 != -1)
  {
    swift_once();
  }

  v22 = qword_2814444F8;
  *(v20 + 40) = qword_2814444F8;
  if (v22)
  {

    v23 = sub_22CF51E8C();
    v48 = v21;
    v49 = v20;

    v24 = *(v23 + 2);
    v52 = v23;
    v25 = 0;
    if (v24)
    {
      v26 = v54;
      v27 = *(v53 + 16);
      v28 = &v23[(*(v53 + 80) + 32) & ~*(v53 + 80)];
      v55 = *(v53 + 72);
      v56 = v27;
      v29 = v50;
      v57 = v53 + 16;
      v30 = (v53 + 8);
      v31 = 0xE000000000000000;
      v32 = v24;
      do
      {
        v56(v29, v28, v26);
        v58 = v25;
        v59 = v31;

        MEMORY[0x2318C5860](8236, 0xE200000000000000);
        v33 = sub_22D015FBC();
        MEMORY[0x2318C5860](v33);

        v25 = v58;
        v31 = v59;
        (*v30)(v29, v26);
        v28 += v55;
        --v32;
      }

      while (v32);
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v34 = sub_22D01637C();
    __swift_project_value_buffer(v34, qword_2814443C0);

    v35 = sub_22D01636C();
    v36 = sub_22D01690C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v58 = v38;
      *v37 = 136446210;
      v39 = sub_22CEEE31C(v25, v31, &v58);

      *(v37 + 4) = v39;
      _os_log_impl(&dword_22CEE1000, v35, v36, "Restored tokens for environments: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x2318C6860](v38, -1, -1);
      MEMORY[0x2318C6860](v37, -1, -1);
    }

    else
    {
    }

    v20 = v49;
    v40 = v54;
    v41 = v51;
    if (v24)
    {
      v42 = *(v53 + 16);
      v43 = &v52[(*(v53 + 80) + 32) & ~*(v53 + 80)];
      v44 = *(v53 + 72);
      v45 = (v53 + 8);
      do
      {
        v42(v41, v43, v40);
        sub_22D01606C();
        (*v45)(v41, v40);
        v43 += v44;
        --v24;
      }

      while (v24);
    }
  }

  else
  {
  }

  return v20;
}

uint64_t sub_22D00C490(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D015FDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v8);
  v9 = sub_22D01606C();
  if (v9)
  {
    v13[1] = sub_22D01566C();
    (*(v5 + 16))(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    (*(v5 + 32))(v11 + v10, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

    sub_22D01565C();
    sub_22D01564C();
  }

  os_unfair_lock_unlock(v8);
  return v9 & 1;
}

uint64_t sub_22D00C644(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D015FDC();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v13 = *(a3 + 40);
  if (v13)
  {
    v20[3] = a2;
    v21 = a1;
    v20[1] = v12;
    v20[2] = v20;
    MEMORY[0x28223BE20](v10, v11);
    v20[0] = a4;
    v20[-2] = a4;
    v14 = *(v13 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v15 = sub_22CF3D558(v14);
    v16 = *(*(v13 + 96) + 16);

    os_unfair_lock_lock(v16);
    MEMORY[0x28223BE20](v17, v18);
    v20[-4] = sub_22D00CBCC;
    v20[-3] = &v20[-4];
    v20[-2] = v15;
    sub_22D0143FC();
    os_unfair_lock_unlock(v16);

    sub_22CF3DC24();

    a1 = v21;
  }

  return a1(v10);
}

uint64_t sub_22D00CA64()
{
  v1 = *(*(*v0 + 32) + 16);
  os_unfair_lock_lock(v1);
  v2 = sub_22D01605C();
  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_22D00CAAC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*v2 + 32) + 16);
  os_unfair_lock_lock(v3);
  sub_22D01604C();

  os_unfair_lock_unlock(v3);
}

uint64_t sub_22D00CB48(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(sub_22D015FDC() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_22D00C644(a1, a2, v6, v7);
}

void *sub_22D00CBF8()
{
  v0 = sub_22D0162BC();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v37 - v7;

  v9 = sub_22CF5255C();

  v10 = v9;
  v45 = *(v9 + 2);
  if (!v45)
  {

    return MEMORY[0x277D84F98];
  }

  v11 = 0;
  v44 = &v9[(*(v1 + 80) + 32) & ~*(v1 + 80)];
  v43 = v1 + 16;
  v41 = (v1 + 8);
  v37 = (v1 + 40);
  v38 = (v1 + 32);
  v12 = MEMORY[0x277D84F98];
  v39 = v9;
  v40 = v1;
  v42 = v8;
  v46 = v5;
  while (v11 < *(v10 + 2))
  {
    v14 = *(v1 + 72);
    v15 = *(v1 + 16);
    v15(v8, &v44[v14 * v11], v0);
    v16 = sub_22D01624C();
    v17 = v8;
    v19 = v18;
    v20 = v5;
    v21 = v0;
    v15(v20, v17, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v12;
    v23 = sub_22CEEC698(v16, v19);
    v25 = v12[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_20;
    }

    v29 = v24;
    if (v12[3] < v28)
    {
      sub_22CFBC2E4(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_22CEEC698(v16, v19);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v29)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v35 = v23;
    sub_22CFB8818();
    v23 = v35;
    if (v29)
    {
LABEL_3:
      v13 = v23;

      v12 = v47;
      v0 = v21;
      (*v37)(v47[7] + v13 * v14, v46, v21);
      v8 = v42;
      (*v41)(v42, v21);
      goto LABEL_4;
    }

LABEL_12:
    v31 = v46;
    v12 = v47;
    v47[(v23 >> 6) + 8] |= 1 << v23;
    v32 = (v12[6] + 16 * v23);
    *v32 = v16;
    v32[1] = v19;
    v0 = v21;
    (*v38)(v12[7] + v23 * v14, v31, v21);
    v8 = v42;
    (*v41)(v42, v21);
    v33 = v12[2];
    v27 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v27)
    {
      goto LABEL_21;
    }

    v12[2] = v34;
LABEL_4:
    ++v11;
    v5 = v46;
    v10 = v39;
    v1 = v40;
    if (v45 == v11)
    {

      return v12;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

uint64_t sub_22D00CFB0(uint64_t a1)
{
  v14 = a1;
  v13 = sub_22D01697C();
  v2 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01691C();
  MEMORY[0x28223BE20](v6, v7);
  v8 = sub_22D01653C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  sub_22CEEC38C();
  sub_22D0164EC();
  v15 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v13);
  v10 = sub_22D0169BC();
  *(v1 + 16) = v14;
  *(v1 + 24) = v10;
  return v1;
}

uint64_t sub_22D00D1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22D0162BC();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_22CF5255C();
  v18[0] = a3;

  v11 = *(v10 + 2);
  result = v19;
  if (v11)
  {
    v13 = 0;
    v18[1] = v19 + 16;
    v14 = (v19 + 8);
    while (v13 < *(v10 + 2))
    {
      (*(result + 16))(v9, &v10[((*(result + 80) + 32) & ~*(result + 80)) + *(result + 72) * v13], v6);
      if (sub_22D01624C() == a1 && v15 == a2)
      {

LABEL_10:

        v17 = v18[0];
        (*(v19 + 32))(v18[0], v9, v6);
        return (*(v19 + 56))(v17, 0, 1, v6);
      }

      v16 = sub_22D016DFC();

      if (v16)
      {
        goto LABEL_10;
      }

      ++v13;
      (*v14)(v9, v6);
      result = v19;
      if (v11 == v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    return (*(v19 + 56))(v18[0], 1, 1, v6);
  }

  return result;
}

uint64_t sub_22D00D45C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = sub_22D0162BC();
  MEMORY[0x28223BE20](v4, v5);
  v6 = *(a3 + 16);
  v7 = *(v6 + 16);
  type metadata accessor for ActivityDatabase.MutableStore();
  swift_allocObject();
  sub_22CF3D558(v7);
  v8 = *(*(v6 + 96) + 16);

  os_unfair_lock_lock(v8);
  sub_22D0143FC();
  os_unfair_lock_unlock(v8);

  sub_22CF3DC24();

  return a1(v9);
}

uint64_t sub_22D00D808(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 + 16);
  type metadata accessor for ActivityDatabase.MutableStore();
  swift_allocObject();
  sub_22CF3D558(v5);
  v6 = *(*(v4 + 96) + 16);

  os_unfair_lock_lock(v6);
  sub_22D0143FC();
  os_unfair_lock_unlock(v6);

  sub_22CF3DC24();

  return a1();
}

double sub_22D00DB50(uint64_t a1)
{
  v3 = sub_22D0162BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v7 = *v1;
  sub_22D01566C();
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_22D01565C();
  sub_22D01564C();

  return result;
}

double sub_22D00DCD0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22D01566C();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;

  sub_22D01565C();
  sub_22D01564C();

  return result;
}

uint64_t sub_22D00DDD0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  sub_22D0162BC();
  v5 = *(v2 + 16);

  return sub_22D00D45C(a1, a2, v5);
}

void sub_22D00DE80(void *a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v24 = sub_22D01697C();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01691C();
  MEMORY[0x28223BE20](v6, v7);
  v8 = sub_22D01653C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  *&v2[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_listener] = 0;
  *&v2[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_serverStartupToken] = -1;
  v10 = OBJC_IVAR____TtC11SessionCore19AuthorizationServer_lock;
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  *v12 = 0;
  *&v2[v10] = v11;
  *&v2[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_clients] = MEMORY[0x277D84FA0];
  v22[1] = sub_22CEE82F8(0, &qword_28143FA08, 0x277D85C78);
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D011BD4(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v3 + 104))(v23, *MEMORY[0x277D85268], v24);
  v13 = v25;
  *&v2[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_requestProcessingQueue] = sub_22D0169BC();
  *&v2[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_authorizationManager] = v26;
  v14 = type metadata accessor for AuthorizationServer();
  v30.receiver = v2;
  v30.super_class = v14;

  v15 = objc_msgSendSuper2(&v30, sel_init);
  v28 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_22D011C1C;
  *(v16 + 24) = &v27;
  aBlock[4] = sub_22CEE5B1C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_71;
  v17 = _Block_copy(aBlock);
  v18 = objc_opt_self();
  v19 = v15;

  v20 = [v18 listenerWithConfigurator_];

  _Block_release(v17);

  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v21 = *&v19[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_listener];
    *&v19[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_listener] = v20;
  }
}

id sub_22D00E2F4(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014B5C();
  sub_22D016A3C();
  (*(v5 + 8))(v8, v4);
  sub_22D014B4C();
  v9 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22D00E420(void *a1, void *a2, char *a3)
{
  sub_22D014B4C();
  v6 = sub_22D01666C();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol_];
  [v7 setClient_];

  v10 = [v8 protocolForProtocol_];
  [v7 setServer_];

  v11 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  v24 = sub_22D011ADC;
  v25 = v12;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D008590;
  v23 = &block_descriptor_54_0;
  v13 = _Block_copy(&v20);
  v14 = a3;
  v15 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v13);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v24 = sub_22D011B00;
  v25 = v16;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D008590;
  v23 = &block_descriptor_60;
  v17 = _Block_copy(&v20);
  v18 = v14;
  v19 = v15;

  [a1 setInvalidationHandler_];
  _Block_release(v17);
}

void sub_22D00E70C(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  if (qword_28143DAB8 != -1)
  {
    swift_once();
  }

  v7 = sub_22D01637C();
  __swift_project_value_buffer(v7, qword_281444338);
  v8 = sub_22D01636C();
  v9 = sub_22D0168EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22CEE1000, v8, v9, a4, v10, 2u);
    MEMORY[0x2318C6860](v10, -1, -1);
  }

  v11 = *(*(a2 + OBJC_IVAR____TtC11SessionCore19AuthorizationServer_lock) + 16);
  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v12 = sub_22CF61360(a3);
  swift_endAccess();

  os_unfair_lock_unlock(v11);
}

char *sub_22D00E9D0(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4060, &unk_22D01D5C0);
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v40 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4070, &unk_22D01D5D0);
  v50 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v32 - v15;
  v17 = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_cancellables] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationLevelBundlesObserving] = v17;
  *&v2[OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection] = a1;
  v42 = a2;
  *&v2[OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager] = a2;
  v18 = type metadata accessor for AuthorizationServiceClient();
  v53.receiver = v2;
  v53.super_class = v18;
  v41 = a1;

  v49 = objc_msgSendSuper2(&v53, sel_init);
  v37 = OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager;
  v19 = v49;

  v20 = sub_22CF46328();

  v51 = v20;
  v21 = sub_22CEE82F8(0, &qword_28143FA08, 0x277D85C78);
  v22 = sub_22D01698C();
  v52 = v22;
  v47 = sub_22D01693C();
  v23 = *(v47 - 8);
  v46 = *(v23 + 56);
  v48 = v23 + 56;
  v46(v12, 1, 1, v47);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4080, &qword_22D01C7B0);
  v39 = MEMORY[0x277CBCD90];
  v35 = sub_22CEE8394(&qword_28143D9E0, &unk_27D9F4080, &qword_22D01C7B0, MEMORY[0x277CBCD90]);
  v45 = sub_22D011B24();
  sub_22D01647C();
  sub_22CEEC3D8(v12, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = MEMORY[0x277CBCD60];
  v34 = sub_22CEE8394(&qword_28143DA28, &unk_27D9F4070, &unk_22D01D5D0, MEMORY[0x277CBCD60]);
  sub_22D0164AC();

  v24 = *(v50 + 8);
  v50 += 8;
  v33 = v24;
  v24(v16, v13);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v25 = sub_22CF463EC();

  v51 = v25;
  v32 = v21;
  v26 = sub_22D01698C();
  v52 = v26;
  v46(v12, 1, 1, v47);
  sub_22D01647C();
  sub_22CEEC3D8(v12, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22D0164AC();

  v33(v16, v13);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v27 = sub_22CF464B0();

  v51 = v27;
  v28 = sub_22D01698C();
  v52 = v28;
  v46(v12, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F36B0, &unk_22D01D5E0);
  sub_22CEE8394(&unk_28143D9E8, &unk_27D9F36B0, &unk_22D01D5E0, v39);
  v29 = v40;
  sub_22D01647C();
  sub_22CEEC3D8(v12, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22CEE8394(&qword_28143DA30, &unk_27D9F4060, &unk_22D01D5C0, v38);
  v30 = v43;
  sub_22D0164AC();

  (*(v44 + 8))(v29, v30);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  return v19;
}

void sub_22D00F138(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_22D00F204(v4, v3);
  }
}

void sub_22D00F1A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_22D00F740(v2);
  }
}

void sub_22D00F204(uint64_t a1, int a2)
{
  v5 = sub_22D014A5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection);
  v11 = [v10 remoteProcess];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    v13 = sub_22D01667C();
    v15 = v14;

    if ([v10 remoteTarget])
    {
      sub_22D016ACC();
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    v55[0] = v53;
    v55[1] = v54;
    if (*(&v54 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F4050, &qword_22D01D5A8);
      if (swift_dynamicCast())
      {
        v47 = v9;
        v49 = v5;
        v50 = a2;
        v21 = a1 + 64;
        v20 = *(a1 + 64);
        v51 = v52;
        v22 = 1 << *(a1 + 32);
        v23 = -1;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        v24 = v23 & v20;
        v25 = (v22 + 63) >> 6;
        v45 = (v6 + 8);

        v26 = 0;
        v48 = a1;
        v46 = v13;
        while (v24)
        {
LABEL_25:
          v38 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          v39 = (*(a1 + 48) + 16 * (v38 | (v26 << 6)));
          v40 = *v39 == v13 && v39[1] == v15;
          if (v40 || (sub_22D016DFC() & 1) != 0)
          {
            v27 = v47;
            sub_22D014A3C();
            sub_22D011BD4(&unk_27D9F3FD0, MEMORY[0x277CB9558], MEMORY[0x277CB9550]);
            v28 = v49;
            v29 = sub_22D01517C();
            v30 = sub_22D0141EC();
            v32 = v31;

            v33 = sub_22D0141DC();
            v34 = &selRef_frequentUpdatesAuthorizationDidChangeWithOptions_;
            if ((v50 & 1) == 0)
            {
              v34 = &selRef_activityAuthorizationDidChangeWithOptions_;
            }

            [v51 *v34];
            sub_22CEE7524(v30, v32);

            v35 = v27;
            v13 = v46;
            v36 = v28;
            a1 = v48;
            (*v45)(v35, v36);
          }
        }

        while (1)
        {
          v37 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v37 >= v25)
          {

            swift_unknownObjectRelease();

            return;
          }

          v24 = *(v21 + 8 * v37);
          ++v26;
          if (v24)
          {
            v26 = v37;
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {

      sub_22CEEC3D8(v55, &qword_27D9F2B10, &unk_22D01B930);
    }

    if (qword_28143DAB8 == -1)
    {
LABEL_34:
      v41 = sub_22D01637C();
      __swift_project_value_buffer(v41, qword_281444338);
      v42 = sub_22D01636C();
      v43 = sub_22D0168EC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_22CEE1000, v42, v43, "No remote target for expected interface", v44, 2u);
        MEMORY[0x2318C6860](v44, -1, -1);
      }

      return;
    }

LABEL_39:
    swift_once();
    goto LABEL_34;
  }

  if (qword_28143DAB8 != -1)
  {
    swift_once();
  }

  v16 = sub_22D01637C();
  __swift_project_value_buffer(v16, qword_281444338);
  v51 = sub_22D01636C();
  v17 = sub_22D0168EC();
  if (os_log_type_enabled(v51, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22CEE1000, v51, v17, "No bundle identifier for client's process", v18, 2u);
    MEMORY[0x2318C6860](v18, -1, -1);
  }

  v19 = v51;
}

double sub_22D00F740(uint64_t a1)
{
  v57 = a1;
  v2 = sub_22D014AFC();
  v56 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v66 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v55 = v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3FE0, qword_22D01D590);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = (v54 - v14);
  v61 = v1;
  if ([*(v1 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
  }

  v67[0] = v69;
  v67[1] = v70;
  if (!*(&v70 + 1))
  {
    sub_22CEEC3D8(v67, &qword_27D9F2B10, &unk_22D01B930);
LABEL_38:
    if (qword_28143DAB8 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F4050, &qword_22D01D5A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v54[0] = v68;
  v16 = v57 + 64;
  v17 = 1 << *(v57 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v57 + 64);
  v20 = OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationLevelBundlesObserving;

  v60 = v20;
  swift_beginAccess();
  v21 = 0;
  v22 = (v17 + 63) >> 6;
  v54[1] = (v56 + 16);
  v64 = (v56 + 32);
  v59 = (v56 + 8);
  v65 = v12;
  v62 = v15;
  v58 = v16;
  v63 = v2;
  while (v19)
  {
    v23 = v21;
LABEL_23:
    v26 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = v26 | (v23 << 6);
    v28 = (*(v57 + 48) + 16 * v27);
    v30 = *v28;
    v29 = v28[1];
    v31 = v56;
    v32 = v55;
    (*(v56 + 16))(v55, *(v57 + 56) + *(v56 + 72) * v27, v2);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F4058, &unk_22D01D5B0);
    v34 = *(v33 + 48);
    v35 = v65;
    *v65 = v30;
    *(v35 + 1) = v29;
    v12 = v35;
    (*(v31 + 32))(&v35[v34], v32, v2);
    (*(*(v33 - 8) + 56))(v12, 0, 1, v33);

    v15 = v62;
LABEL_24:
    sub_22D011848(v12, v15);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F4058, &unk_22D01D5B0);
    if ((*(*(v36 - 8) + 48))(v15, 1, v36) == 1)
    {
      swift_unknownObjectRelease();

      return result;
    }

    v37 = *v15;
    v38 = v15[1];
    v2 = v63;
    (*v64)(v66, v15 + *(v36 + 48), v63);
    v39 = *(v61 + v60);
    if (!*(v39 + 16))
    {
      goto LABEL_11;
    }

    sub_22D016EAC();

    sub_22D0166DC();
    v40 = sub_22D016ECC();
    v41 = -1 << *(v39 + 32);
    v42 = v40 & ~v41;
    if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
    {
LABEL_10:

      v15 = v62;
      v2 = v63;
LABEL_11:

      goto LABEL_12;
    }

    v43 = ~v41;
    while (1)
    {
      v44 = (*(v39 + 48) + 16 * v42);
      v45 = *v44 == v37 && v44[1] == v38;
      if (v45 || (sub_22D016DFC() & 1) != 0)
      {
        break;
      }

      v42 = (v42 + 1) & v43;
      if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v46 = sub_22D01666C();

    sub_22D014AEC();
    v47 = sub_22D0168AC();
    [v54[0] activityAuthorizationLevelDidChangeForBundleIdentifier:v46 authorizationCount:v47];

    v15 = v62;
    v2 = v63;
LABEL_12:
    (*v59)(v66, v2);
    v12 = v65;
    v16 = v58;
  }

  if (v22 <= v21 + 1)
  {
    v24 = v21 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F4058, &unk_22D01D5B0);
      (*(*(v48 - 8) + 56))(v12, 1, 1, v48);
      v19 = 0;
      v21 = v25;
      goto LABEL_24;
    }

    v19 = *(v16 + 8 * v23);
    ++v21;
    if (v19)
    {
      v21 = v23;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_44:
  swift_once();
LABEL_39:
  v49 = sub_22D01637C();
  __swift_project_value_buffer(v49, qword_281444338);
  v50 = sub_22D01636C();
  v51 = sub_22D0168EC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_22CEE1000, v50, v51, "No remote target for expected interface", v52, 2u);
    MEMORY[0x2318C6860](v52, -1, -1);
  }

  return result;
}

id sub_22D00FE98(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22D00FF60(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2608, &qword_22D018B68);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v10 = sub_22D01666C();
  v11 = [v9 hasEntitlement_];

  if (v11)
  {
    v12 = sub_22D014A4C();
    sub_22D014A2C();
    sub_22CF46968(v12 & 1, a1, a2, v8);
    return sub_22CEEC3D8(v8, &qword_27D9F2608, &qword_22D018B68);
  }

  else
  {
    sub_22D0117D8();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }
}

void sub_22D010104(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v6 = sub_22D01666C();
  v7 = [v5 hasEntitlement_];

  if (v7)
  {
    v8 = *(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager);
    v9 = sub_22D014A4C();
    v10 = *(v8 + 72);
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v9 & 1;
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_22D011838;
    *(v12 + 24) = v11;
    v16[4] = sub_22CEF4034;
    v16[5] = v12;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_22CEF3C20;
    v16[3] = &block_descriptor_39_0;
    v13 = _Block_copy(v16);

    dispatch_sync(v10, v13);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_22D0117D8();
  swift_allocError();
  *v15 = 1;
  swift_willThrow();
}

uint64_t sub_22D01034C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, char *))
{
  v23[1] = a5;
  v24 = a6;
  v8 = sub_22D014A5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D01667C();
  v15 = v14;
  v16 = a4;
  v17 = a1;
  v18 = sub_22D0141EC();
  v20 = v19;

  v21 = sub_22D0141DC();
  sub_22D011BD4(&unk_27D9F3FD0, MEMORY[0x277CB9558], MEMORY[0x277CB9550]);
  sub_22D01516C();

  v24(v13, v15, v12);

  sub_22CEE7524(v18, v20);
  (*(v9 + 8))(v12, v8);
  return 1;
}

void sub_22D010570(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v6 = sub_22D01666C();
  v7 = [v5 hasEntitlement_];

  if (v7)
  {
    v8 = *(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager);
    v9 = *(v8 + 72);
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = a1;
    v10[4] = a2;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_22D01182C;
    *(v11 + 24) = v10;
    v14[4] = sub_22CEF3C48;
    v14[5] = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_22CEF3C20;
    v14[3] = &block_descriptor_34;
    v12 = _Block_copy(v14);

    dispatch_sync(v9, v12);
    _Block_release(v12);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_22D0117D8();
  swift_allocError();
  *v13 = 1;
  swift_willThrow();
}

uint64_t sub_22D010828()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_22D01667C();

    MEMORY[0x28223BE20](v3, v4);
    sub_22D01699C();

    return v10;
  }

  else
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v6 = sub_22D01637C();
    __swift_project_value_buffer(v6, qword_281444338);
    v7 = sub_22D01636C();
    v8 = sub_22D0168EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22CEE1000, v7, v8, "No remote process found for connection", v9, 2u);
      MEMORY[0x2318C6860](v9, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_22D010A10(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D014AFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v11 = sub_22D01666C();
  v12 = [v10 hasEntitlement_];

  if (v12)
  {
    MEMORY[0x28223BE20](v13, v14);
    *&v22[-32] = v15;
    *&v22[-24] = a1;
    *&v22[-16] = a2;
    sub_22D01699C();
    sub_22D014AEC();
    v16 = sub_22D0168AC();
    (*(v6 + 8))(v9, v5);
    return v16;
  }

  else
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v18 = sub_22D01637C();
    __swift_project_value_buffer(v18, qword_281444338);
    v19 = sub_22D01636C();
    v20 = sub_22D0168EC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22CEE1000, v19, v20, "The requesting process is not entitled to request for activities authorization level.", v21, 2u);
      MEMORY[0x2318C6860](v21, -1, -1);
    }

    sub_22CEE82F8(0, &qword_27D9F3FC0, 0x277CCABB0);
    return sub_22D016A4C();
  }
}

id sub_22D010D1C(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v6 = sub_22D01666C();
  v7 = [v5 hasEntitlement_];

  if (v7)
  {
    swift_beginAccess();

    sub_22CEE54CC(&v13, a1, a2);
    swift_endAccess();
  }

  else
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_281444338);
    v9 = sub_22D01636C();
    v10 = sub_22D0168EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, "The requesting process is not entitled to request for activities authorization level.", v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }
  }

  return v7;
}

id sub_22D010EE0(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v6 = sub_22D01666C();
  v7 = [v5 hasEntitlement_];

  if (v7)
  {
    swift_beginAccess();
    sub_22CF3C4B0(a1, a2);
    swift_endAccess();
  }

  else
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_281444338);
    v9 = sub_22D01636C();
    v10 = sub_22D0168EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, "The requesting process is not entitled to request for activities authorization level.", v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }
  }

  return v7;
}

uint64_t sub_22D011098(uint64_t a1, uint64_t a2)
{
  v3 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v4 = sub_22D01666C();
  v5 = [v3 hasEntitlement_];

  if (v5)
  {
    MEMORY[0x28223BE20](v6, v7);
    sub_22D01699C();
    return v13;
  }

  else
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v9 = sub_22D01637C();
    __swift_project_value_buffer(v9, qword_281444338);
    v10 = sub_22D01636C();
    v11 = sub_22D0168EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22CEE1000, v10, v11, "The requesting process is not entitled to request for activities authorization", v12, 2u);
      MEMORY[0x2318C6860](v12, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_22D01127C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_281444338);
    v9 = sub_22D01636C();
    v10 = sub_22D0168EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, "No remote process found for connection", v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }

    return 0;
  }

  v3 = sub_22D01667C();
  v5 = v4;

  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v7 = sub_22CEE8CD0(v3, v5, 0);
  if (!v7 || (v13 = v7, v14 = [v7 supportsLiveActivitiesFrequentUpdates], v13, (v14 & 1) == 0))
  {

    return 0;
  }

  MEMORY[0x28223BE20](v15, v16);
  sub_22D01699C();

  return v17;
}

id sub_22D0114CC(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v6 = sub_22D01666C();
  v7 = [v5 hasEntitlement_];

  if (!v7)
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v10 = sub_22D01637C();
    __swift_project_value_buffer(v10, qword_281444338);
    v11 = sub_22D01636C();
    v12 = sub_22D0168EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22CEE1000, v11, v12, "The requesting process is not entitled to request for activities authorization", v13, 2u);
      MEMORY[0x2318C6860](v13, -1, -1);
    }

    return 0;
  }

  v8 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  result = sub_22CEE8CD0(a1, a2, 0);
  if (result)
  {
    v14 = result;
    v15 = [result supportsLiveActivitiesFrequentUpdates];

    if (v15)
    {
      MEMORY[0x28223BE20](v16, v17);
      sub_22D01699C();
      return v18;
    }

    return 0;
  }

  return result;
}

uint64_t sub_22D011708(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_22D01667C();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = a4(v6, v8);

  return a4 & 1;
}

unint64_t sub_22D011770()
{
  if (*v0)
  {
    return 0xD000000000000046;
  }

  else
  {
    return 0xD00000000000002DLL;
  }
}

unint64_t sub_22D0117D8()
{
  result = qword_27D9F3FC8;
  if (!qword_27D9F3FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3FC8);
  }

  return result;
}

uint64_t sub_22D011848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3FE0, qword_22D01D590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22D0118B8(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_authorizationManager];
  v5 = objc_allocWithZone(type metadata accessor for AuthorizationServiceClient());

  v6 = a1;
  v7 = sub_22D00E9D0(v6, v4);
  v8 = *(*&v2[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_lock] + 16);
  os_unfair_lock_lock(v8);
  swift_beginAccess();
  v9 = v7;
  sub_22CF7703C(&v16, v9);
  swift_endAccess();

  os_unfair_lock_unlock(v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22D011AD4;
  *(v11 + 24) = v10;
  aBlock[4] = sub_22CEE5B24;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_48_0;
  v12 = _Block_copy(aBlock);
  v13 = v9;
  v14 = v2;

  [v6 configureConnection_];
  _Block_release(v12);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    [v6 activate];
  }
}

unint64_t sub_22D011B24()
{
  result = qword_28143FA10;
  if (!qword_28143FA10)
  {
    sub_22CEE82F8(255, &qword_28143FA08, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143FA10);
  }

  return result;
}

uint64_t sub_22D011BD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22D011C3C()
{
  result = qword_27D9F4090;
  if (!qword_27D9F4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F4090);
  }

  return result;
}

void *sub_22D011CDC(void *a1)
{
  v57 = a1;
  v2 = sub_22D015C8C();
  v54 = *(v2 - 8);
  v55 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v49 - v7;
  v56 = sub_22D01697C();
  v9 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D01691C();
  MEMORY[0x28223BE20](v13, v14);
  v15 = sub_22D01653C();
  MEMORY[0x28223BE20](v15 - 8, v16);
  sub_22D015D2C();
  v17 = v1;
  v1[2] = sub_22D015D1C();
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *(v18 + 16) = v19;
  *v19 = 0;
  v17[3] = v18;
  v53 = sub_22CEEC38C();
  sub_22D0164FC();
  v58 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v9 + 104))(v12, *MEMORY[0x277D85268], v56);
  v20 = v57;
  v21 = v17;
  v17[4] = sub_22D0169BC();
  if (qword_281442150 != -1)
  {
    swift_once();
  }

  v22 = qword_2814444F8;
  v17[5] = qword_2814444F8;
  if (v22)
  {

    v23 = sub_22CF4F824();
    v50 = v20;
    v51 = v17;

    v24 = *(v23 + 2);
    v25 = v55;
    v53 = v23;
    v26 = 0;
    if (v24)
    {
      v27 = *(v54 + 16);
      v28 = &v23[(*(v54 + 80) + 32) & ~*(v54 + 80)];
      v56 = *(v54 + 72);
      v57 = v27;
      v29 = (v54 + 8);
      v30 = 0xE000000000000000;
      v31 = v24;
      (v27)(v8, v28, v55);
      while (1)
      {
        v33 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v33 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (v33)
        {
          v58 = v26;
          v59 = v30;

          MEMORY[0x2318C5860](8236, 0xE200000000000000);
          v32 = sub_22D015C3C();
          MEMORY[0x2318C5860](v32);

          v25 = v55;

          v26 = v58;
          v30 = v59;
        }

        else
        {
          v26 = sub_22D015C3C();
          v35 = v34;

          v30 = v35;
        }

        (*v29)(v8, v25);
        v28 += v56;
        if (!--v31)
        {
          break;
        }

        (v57)(v8, v28, v25);
      }
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v36 = sub_22D01637C();
    __swift_project_value_buffer(v36, qword_2814443C0);

    v37 = sub_22D01636C();
    v38 = sub_22D01690C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58 = v40;
      *v39 = 136446210;
      v41 = sub_22CEEE31C(v26, v30, &v58);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_22CEE1000, v37, v38, "Restored subscriptions with identifiers: %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x2318C6860](v40, -1, -1);
      MEMORY[0x2318C6860](v39, -1, -1);
    }

    else
    {
    }

    v21 = v51;
    v42 = v52;
    if (v24)
    {
      v43 = *(v54 + 16);
      v44 = v53 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v45 = *(v54 + 72);
      v46 = (v54 + 8);
      v47 = v55;
      do
      {
        v43(v42, v44, v47);
        sub_22D015CEC();
        (*v46)(v42, v47);
        v44 += v45;
        --v24;
      }

      while (v24);
    }
  }

  else
  {
  }

  return v21;
}

uint64_t sub_22D012374()
{

  return swift_deallocClassInstance();
}

double sub_22D0123E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D015C8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  sub_22D015CEC();
  if ((sub_22D015BCC() & 1) == 0)
  {
    sub_22D01566C();
    (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
    v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    (*(v5 + 32))(v10 + v9, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

    sub_22D01565C();
    sub_22D01564C();
  }

  return result;
}

uint64_t sub_22D01257C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (v3)
  {
    v9 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v4);
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    MEMORY[0x28223BE20](v6, v7);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v9;
  }

  return a1();
}

uint64_t sub_22D012864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v7 = sub_22D015C8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v39 - v14;
  v40 = a2;
  v41 = a3;
  sub_22D015D0C();
  v16 = *(v8 + 48);
  v42 = v7;
  if (v16(v15, 1, v7) == 1)
  {
    v17 = v41;
    sub_22CF886DC(v15);
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v18 = sub_22D01637C();
    __swift_project_value_buffer(v18, qword_2814443C0);

    v19 = sub_22D01636C();
    v20 = sub_22D01690C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_22CEEE31C(v40, v17, &v44);
      _os_log_impl(&dword_22CEE1000, v19, v20, "Subscription does not exist with identifier: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x2318C6860](v22, -1, -1);
      MEMORY[0x2318C6860](v21, -1, -1);
    }

    v23 = 1;
  }

  else
  {
    v24 = *(v8 + 32);
    v25 = v43;
    v26 = v15;
    v27 = v42;
    v24(v43, v26, v42);
    v28 = sub_22D01566C();
    v29 = *(a1 + 32);
    v39[1] = v28;
    v39[2] = v29;
    v30 = v8;
    v31 = v27;
    (*(v30 + 16))(v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v27);
    v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v33 = (v9 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    v35 = v31;
    v8 = v30;
    v24(v34 + v32, v11, v35);
    v36 = (v34 + v33);
    v37 = v41;
    *v36 = v40;
    v36[1] = v37;

    sub_22D01565C();
    sub_22D01564C();

    v23 = 0;
  }

  return (*(v8 + 56))(v43, v23, 1, v42);
}

uint64_t sub_22D012C10(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (v3)
  {
    v9 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v4);
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    MEMORY[0x28223BE20](v6, v7);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v9;
  }

  return a1(a1);
}

uint64_t sub_22D012F3C(uint64_t a1)
{
  v1 = sub_22D015C3C();
  sub_22CF51010(v1, v2);
}

void sub_22D012F90(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v43 = a5;
  v40 = a4;
  v8 = sub_22D0161DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v13 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v39 - v15;
  v41 = a2;
  v42 = a3;
  v17 = v40;
  v18 = sub_22D015CFC();
  if (*(v18 + 16))
  {
    v39 = sub_22D01566C();
    (*(v9 + 16))(v16, v17, v8);
    v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = a1;
    *(v20 + 3) = v18;
    v21 = v42;
    *(v20 + 4) = v41;
    *(v20 + 5) = v21;
    (*(v9 + 32))(&v20[v19], v16, v8);

    sub_22D01565C();
    sub_22D01564C();
  }

  else
  {
    v22 = v9;
    v23 = v41;
    v24 = v42;

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v25 = sub_22D01637C();
    __swift_project_value_buffer(v25, qword_2814443C0);
    v26 = v8;
    (*(v22 + 16))(v13, v17, v8);
    v27 = v24;

    v28 = sub_22D01636C();
    v29 = sub_22D01690C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v23;
      v31 = v22;
      v32 = swift_slowAlloc();
      v33 = v13;
      v34 = swift_slowAlloc();
      v44 = v34;
      *v32 = 136446466;
      *(v32 + 4) = sub_22CEEE31C(v30, v27, &v44);
      *(v32 + 12) = 2082;
      v35 = sub_22D0161CC();
      v37 = v36;
      (*(v31 + 8))(v33, v26);
      v38 = sub_22CEEE31C(v35, v37, &v44);

      *(v32 + 14) = v38;
      _os_log_impl(&dword_22CEE1000, v28, v29, "Subscriptions do not exist with environmentName: %{public}s; topic: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v34, -1, -1);
      MEMORY[0x2318C6860](v32, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v13, v26);
    }

    v18 = MEMORY[0x277D84F90];
  }

  *v43 = v18;
}

uint64_t sub_22D013364(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v13 = sub_22D0161DC();
  v15 = MEMORY[0x28223BE20](v13, v14);
  v18 = *(a3 + 40);
  if (v18)
  {
    v25[0] = a5;
    v25[1] = a7;
    v25[4] = a2;
    v26 = a1;
    v25[2] = v17;
    v25[3] = v25;
    MEMORY[0x28223BE20](v15, v16);
    v25[-2] = a4;
    v19 = *(v18 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v20 = sub_22CF3D558(v19);
    v21 = *(*(v18 + 96) + 16);

    os_unfair_lock_lock(v21);
    MEMORY[0x28223BE20](v22, v23);
    v25[-4] = sub_22D013E4C;
    v25[-3] = &v25[-4];
    v25[-2] = v20;
    sub_22D0143FC();
    os_unfair_lock_unlock(v21);

    sub_22CF3DC24();

    a1 = v26;
  }

  return a1(v15);
}

uint64_t sub_22D0137BC(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_22D015C8C();
  result = MEMORY[0x28223BE20](v4, v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v13 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v18 = *(v11 + 56);
    v19 = (v11 - 8);
    v20 = v12;
    while (1)
    {
      v14 = v11;
      v20(v9, v13, v4);
      v15 = sub_22D015C3C();
      sub_22CF51010(v15, v16);
      if (v2)
      {
        break;
      }

      (*v19)(v9, v4);

      v13 += v18;
      --v10;
      v11 = v14;
      if (!v10)
      {
        return result;
      }
    }

    (*v19)(v9, v4);
  }

  return result;
}

void sub_22D0139A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*(v3 + 24) + 16);
  os_unfair_lock_lock(v4);
  sub_22D0123E8(v3, a1);

  os_unfair_lock_unlock(v4);
}

void sub_22D013A00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(*(v7 + 24) + 16);
  os_unfair_lock_lock(v8);
  sub_22D012864(v7, a1, a2, a3);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_22D013A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*(v7 + 24) + 16);
  os_unfair_lock_lock(v8);
  sub_22D012F90(v7, a1, a2, a3, &v10);
  os_unfair_lock_unlock(v8);
  return v10;
}

void sub_22D013B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(*v5 + 24) + 16);
  os_unfair_lock_lock(v6);
  sub_22D015CBC();

  os_unfair_lock_unlock(v6);
}

void sub_22D013BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = *(*(*v5 + 24) + 16);
  os_unfair_lock_lock(v9);
  a5(a1, a2);

  os_unfair_lock_unlock(v9);
}

uint64_t sub_22D013C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*v2 + 24) + 16);
  os_unfair_lock_lock(v3);
  v4 = sub_22D015CDC();
  os_unfair_lock_unlock(v3);
  return v4 & 1;
}

uint64_t sub_22D013CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*v3 + 24) + 16);
  os_unfair_lock_lock(v4);
  v5 = sub_22D015CCC();
  os_unfair_lock_unlock(v4);
  return v5 & 1;
}

uint64_t sub_22D013D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(*v5 + 24) + 16);
  os_unfair_lock_lock(v6);
  v7 = sub_22D015CAC();
  os_unfair_lock_unlock(v6);
  return v7 & 1;
}

uint64_t sub_22D013DC4(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(sub_22D0161DC() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_22D013364(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_22D013E68(uint64_t (*a1)(void), uint64_t a2)
{
  sub_22D015C8C();
  v5 = *(v2 + 16);

  return sub_22D012C10(a1, a2, v5);
}

uint64_t sub_22D013F38(uint64_t (*a1)(void), uint64_t a2)
{
  sub_22D015C8C();
  v5 = *(v2 + 16);

  return sub_22D01257C(a1, a2, v5);
}
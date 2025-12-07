uint64_t sub_216AEABAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v7 = (a1 + *(type metadata accessor for ExpandableTextView(0, &v11) + 100));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v11) = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  return sub_21700AEC4();
}

uint64_t sub_216AEAC30@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a6;
  v30 = a7;
  v28 = a4;
  v31 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2468, &qword_2170425F0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v18 = *(a2 - 1);
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v28 - v23;
  sub_2166C24DC(a1, a2, a5);
  v35 = a2;
  v36 = a3;
  v37 = v28;
  v38 = a5;
  v39 = v29;
  v40 = v30;
  v25 = type metadata accessor for ExpandableTextView(0, &v35);
  sub_216AEAE94(v25, v17);
  (*(v18 + 16))(v21, v24, a2);
  v35 = v21;
  sub_216683A80(v17, v14, &qword_27CAC2468, &qword_2170425F0);
  v36 = v14;
  v34[0] = a2;
  v34[1] = v12;
  v32 = a5;
  v33 = sub_216AECAD4();
  sub_216984F84(&v35, 2, v34);
  sub_216697664(v17, &qword_27CAC2468, &qword_2170425F0);
  v26 = *(v18 + 8);
  v26(v24, a2);
  sub_216697664(v14, &qword_27CAC2468, &qword_2170425F0);
  return (v26)(v21, a2);
}

uint64_t sub_216AEAE94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24A8, &qword_217042608);
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  sub_216AEB0BC(v3, v7, v8, v9, v10, v11, v12, a2 + *(v6 + 44));
  v13 = sub_2170091A4();
  v26 = 0;
  sub_216AEB62C(v3, v7, v8, v9, v10, v11, v12, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v28, __src, sizeof(v28));
  sub_216683A80(__dst, &v23, &qword_27CAC24B0, &qword_217042610);
  sub_216697664(v28, &qword_27CAC24B0, &qword_217042610);
  memcpy(&v25[7], __dst, 0x60uLL);
  LOBYTE(v3) = v26;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2468, &qword_2170425F0) + 36);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24B8, &qword_217042618) + 36);
  v16 = *MEMORY[0x277CE13C0];
  v17 = sub_21700B434();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = v13;
  *(v14 + 8) = 0;
  *(v14 + 16) = v3;
  memcpy((v14 + 17), v25, 0x67uLL);
  v18 = sub_21700B3B4();
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24A0, &qword_217042600);
  v22 = (v14 + *(result + 36));
  *v22 = v18;
  v22[1] = v20;
  return result;
}

uint64_t sub_216AEB0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v58 = a7;
  v56 = a6;
  v55 = a5;
  v53 = a4;
  v52 = a3;
  v51 = a2;
  v62 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC0D8, &qword_217042620);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24C0, &qword_217042628);
  MEMORY[0x28223BE20](v54);
  v13 = &v47 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24C8, &qword_217042630);
  MEMORY[0x28223BE20](v57);
  v15 = &v47 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24D0, &unk_217042638);
  MEMORY[0x28223BE20](v59);
  v61 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v20);
  v60 = &v47 - v21;
  sub_21700B3B4();
  sub_2170083C4();
  v50 = v71;
  v49 = v73;
  v48 = v75;
  v47 = v76;
  v79 = 1;
  v78 = v72;
  v77 = v74;
  v65 = sub_216983738(158);
  v66 = v22;
  v67 = 0;
  v68 = MEMORY[0x277D84F90];
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
  sub_2167C4D74();
  sub_21700A304();

  v65 = v51;
  v66 = v52;
  v67 = v53;
  v68 = v55;
  v69 = v56;
  v70 = v58;
  v23 = type metadata accessor for ExpandableTextView(0, &v65);
  v24 = *(v62 + *(v23 + 92));
  if (!v24)
  {
    v24 = sub_217009E94();
  }

  KeyPath = swift_getKeyPath();
  (*(v63 + 32))(v13, v11, v64);
  v26 = &v13[*(v54 + 36)];
  *v26 = KeyPath;
  v26[1] = v24;

  v27 = sub_21700AD14();
  v28 = swift_getKeyPath();
  sub_2167C5834(v13, v15, &qword_27CAC24C0, &qword_217042628);
  v29 = &v15[*(v57 + 36)];
  *v29 = v28;
  v29[1] = v27;
  LOBYTE(v27) = sub_217009C94();
  sub_217007F24();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_2167C5834(v15, v19, &qword_27CAC24C8, &qword_217042630);
  v38 = &v19[*(v59 + 36)];
  *v38 = v27;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = v60;
  sub_2167C5834(v19, v60, &qword_27CAC24D0, &unk_217042638);
  v40 = v79;
  v41 = v78;
  v42 = v77;
  v43 = v61;
  sub_216683A80(v39, v61, &qword_27CAC24D0, &unk_217042638);
  *a8 = 0;
  *(a8 + 8) = v40;
  *(a8 + 16) = v50;
  *(a8 + 24) = v41;
  *(a8 + 32) = v49;
  *(a8 + 40) = v42;
  v44 = v47;
  *(a8 + 48) = v48;
  *(a8 + 56) = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24D8, &qword_217042678);
  sub_216683A80(v43, a8 + *(v45 + 48), &qword_27CAC24D0, &unk_217042638);
  sub_216697664(v39, &qword_27CAC24D0, &unk_217042638);
  return sub_216697664(v43, &qword_27CAC24D0, &unk_217042638);
}

uint64_t sub_216AEB62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v35 = a7;
  v36 = a1;
  v37 = a8;
  v13 = sub_217008934();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v39[0] = a2;
  v39[1] = a3;
  v39[2] = a4;
  v39[3] = a5;
  v39[4] = a6;
  v39[5] = v35;
  v20 = type metadata accessor for ExpandableTextView(0, v39);
  sub_216C0C9E4(v20, v21, v22, v23, v24, v25, v26, v27, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7]);
  (*(v14 + 104))(v16, *MEMORY[0x277CDFA90], v13);
  LOBYTE(a6) = sub_217008924();
  v28 = *(v14 + 8);
  v28(v16, v13);
  v28(v19, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB95E8, &unk_217027360);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_217013D90;
  if (a6)
  {
    *(v29 + 32) = sub_21700ACC4();
    v30 = sub_21700ACD4();
  }

  else
  {
    *(v29 + 32) = sub_21700ACD4();
    v30 = sub_21700ACC4();
  }

  *(v29 + 40) = v30;
  MEMORY[0x21CE9C070](v29);
  sub_21700B574();
  sub_21700B584();
  sub_2170085D4();
  sub_21700B3B4();
  sub_2170083C4();
  v31 = sub_21700ACC4();
  memcpy(v38, __src, sizeof(v38));
  v32 = v37;
  memcpy(v37, __src, 0x58uLL);
  v32[11] = v31;
  sub_216683A80(v38, v39, &qword_27CABC490, &qword_217026C50);
  memcpy(v39, __src, sizeof(v39));
  return sub_216697664(v39, &qword_27CABC490, &qword_217026C50);
}

uint64_t sub_216AEB8F4(uint64_t a1)
{
  v2 = sub_21700A014();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_217008E44();
}

void sub_216AEB9BC(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_216AEBA80(&qword_27CAB6820, type metadata accessor for Key, &unk_2170139C8);
  v3 = sub_21700E344();

  [a2 setLinkTextAttributes_];
}

uint64_t sub_216AEBA80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_216AEBB10(uint64_t a1)
{
  sub_216AECEE0(319, qword_280E33788, type metadata accessor for ModalPresentationDescriptor, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_216AEC7E4(319, &qword_27CAC2388, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_216AEC7E4(319, qword_27CAC2390, MEMORY[0x277CE0AE0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216AEBC24(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_21700F164();
    if (v2 <= 0x3F)
    {
      sub_21700F164();
      if (v3 <= 0x3F)
      {
        sub_216AEC7E4(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_216AEC7E4(319, qword_27CAC2390, MEMORY[0x277CE0AE0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21700D284();
            if (v6 <= 0x3F)
            {
              sub_216AEC7E4(319, &qword_280E2A590, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_216AECEE0(319, &qword_27CAC2418, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
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

uint64_t sub_216AEBDEC(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v44 = a3[2];
  v49 = *(v44 - 8);
  v41 = a3[3];
  v48 = *(v41 - 8);
  v3 = *(v48 + 84);
  v4 = v3 - 1;
  if (!v3)
  {
    v4 = 0;
  }

  v45 = *(*(v44 - 8) + 84);
  v43 = v4;
  if (v4 <= v45)
  {
    v4 = *(*(v44 - 8) + 84);
  }

  v39 = a3[4];
  v47 = *(v39 - 8);
  v5 = *(v47 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v42 = v6;
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v38 = sub_21700D284();
  v8 = *(v38 - 8);
  v37 = *(v8 + 84);
  if (v7 <= v37)
  {
    v9 = *(v8 + 84);
  }

  else
  {
    v9 = v7;
  }

  v40 = v9;
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_217008934() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  if (v3)
  {
    v13 = *(v48 + 64);
  }

  else
  {
    v13 = *(v48 + 64) + 1;
  }

  v14 = *(v48 + 80);
  v15 = *(v47 + 80);
  if (v5)
  {
    v16 = *(v47 + 64);
  }

  else
  {
    v16 = *(v47 + 64) + 1;
  }

  v17 = *(v8 + 80);
  if (!a2)
  {
    return 0;
  }

  v18 = *(v49 + 64) + v14;
  v19 = v16 + 7;
  v20 = v17 + 8;
  v21 = a1;
  if (a2 <= v10)
  {
    goto LABEL_43;
  }

  v22 = *(v11 + 80) & 0xF8 | 7;
  v23 = v12 + ((v22 + ((*(v8 + 64) + ((v20 + ((((((((((v19 + ((v13 + v15 + (v18 & ~v14)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v22) + 1;
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_28;
  }

  v26 = ((a2 - v10 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v26))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v26 <= 0xFF)
    {
      if (v26 < 2)
      {
        goto LABEL_43;
      }

LABEL_28:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_43;
      }

LABEL_35:
      v27 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v27 = 0;
      }

      if (v23)
      {
        if (v23 > 3)
        {
          LODWORD(v23) = 4;
        }

        switch(v23)
        {
          case 2:
            LODWORD(v23) = *a1;
            break;
          case 3:
            LODWORD(v23) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v23) = *a1;
            break;
          default:
            LODWORD(v23) = *a1;
            break;
        }
      }

      return v10 + (v23 | v27) + 1;
    }

    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_35;
    }
  }

LABEL_43:
  if (v45 == v10)
  {
    v28 = v45;
    v29 = v44;
LABEL_45:

    return __swift_getEnumTagSinglePayload(v21, v28, v29);
  }

  v31 = (a1 + v18) & ~v14;
  if (v43 == v10)
  {
    if (v3 >= 2)
    {
      v32 = v3;
      v33 = v41;
      goto LABEL_65;
    }

    return 0;
  }

  v31 = (v31 + v13 + v15) & ~v15;
  if (v42 == v10)
  {
    if (v5 >= 2)
    {
      v32 = v5;
      v33 = v39;
LABEL_65:
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, v32, v33);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v34 = (v19 + v31) & 0xFFFFFFFFFFFFFFF8;
  if (v40 > 0x7FFFFFFE)
  {
    v21 = ((v20 + ((((((((v34 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
    v28 = v37;
    v29 = v38;
    goto LABEL_45;
  }

  v35 = *(v34 + 8);
  if (v35 >= 0xFFFFFFFF)
  {
    LODWORD(v35) = -1;
  }

  if ((v35 + 1) >= 2)
  {
    return v35;
  }

  else
  {
    return 0;
  }
}

void sub_216AEC2A4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v44 = a4[2];
  v48 = *(v44 - 8);
  v42 = a4[3];
  v4 = *(v42 - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v45 = *(*(v44 - 8) + 84);
  v43 = v6;
  if (v6 <= v45)
  {
    v6 = *(*(v44 - 8) + 84);
  }

  v40 = a4[4];
  v46 = *(v40 - 8);
  v7 = *(v46 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v41 = v8;
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  v38 = sub_21700D284();
  v47 = *(v38 - 8);
  v37 = *(v47 + 84);
  if (v9 <= v37)
  {
    v10 = *(v47 + 84);
  }

  else
  {
    v10 = v9;
  }

  v39 = v10;
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_217008934();
  v13 = v5;
  v14 = 0;
  v15 = *(v12 - 8);
  if (*(v15 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v17 = *(v4 + 64);
  if (!v13)
  {
    ++v17;
  }

  v18 = *(v4 + 80);
  v19 = *(v48 + 64) + v18;
  v20 = *(v46 + 80);
  v21 = *(v46 + 64);
  if (!v7)
  {
    ++v21;
  }

  v22 = v21 + 7;
  v23 = *(v47 + 80);
  v24 = *(v15 + 80) & 0xF8 | 7;
  v25 = v16 + ((v24 + ((*(v47 + 64) + ((v23 + 8 + ((((((((((v22 + ((v17 + v20 + (v19 & ~v18)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v24) + 1;
  v26 = 8 * v25;
  if (a3 > v11)
  {
    if (v25 <= 3)
    {
      v27 = ((a3 - v11 + ~(-1 << v26)) >> v26) + 1;
      if (HIWORD(v27))
      {
        v14 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v14 = v28;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  v29 = a2;
  if (v11 >= a2)
  {
    v32 = a1;
    switch(v14)
    {
      case 1:
        a1[v25] = 0;
        if (a2)
        {
          goto LABEL_46;
        }

        return;
      case 2:
        *&a1[v25] = 0;
        if (a2)
        {
          goto LABEL_46;
        }

        return;
      case 3:
LABEL_69:
        __break(1u);
        return;
      case 4:
        *&a1[v25] = 0;
        goto LABEL_45;
      default:
LABEL_45:
        if (!a2)
        {
          return;
        }

LABEL_46:
        v34 = v45;
        if (v45 == v11)
        {
          v35 = v44;
        }

        else
        {
          v32 = (&a1[v19] & ~v18);
          if (v43 == v11)
          {
            v29 = a2 + 1;
            v34 = v13;
            v35 = v42;
          }

          else
          {
            v32 = (&v32[v17 + v20] & ~v20);
            if (v41 == v11)
            {
              v29 = a2 + 1;
              v34 = v7;
              v35 = v40;
            }

            else
            {
              v36 = (&v32[v22] & 0xFFFFFFFFFFFFFFF8);
              if (v39 <= 0x7FFFFFFE)
              {
                if (a2 > 0x7FFFFFFE)
                {
                  *v36 = 0;
                  v36[1] = 0;
                  *v36 = a2 - 0x7FFFFFFF;
                }

                else
                {
                  v36[1] = a2;
                }

                return;
              }

              v32 = ((v23 + 8 + ((((((((v36 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v23);
              v34 = v37;
              v35 = v38;
            }
          }
        }

        __swift_storeEnumTagSinglePayload(v32, v29, v34, v35);
        break;
    }
  }

  else
  {
    v30 = ~v11 + a2;
    if (v25 < 4)
    {
      v31 = (v30 >> v26) + 1;
      if (v25)
      {
        v33 = v30 & ~(-1 << v26);
        bzero(a1, v25);
        if (v25 == 3)
        {
          *a1 = v33;
          a1[2] = BYTE2(v33);
        }

        else if (v25 == 2)
        {
          *a1 = v33;
        }

        else
        {
          *a1 = v30;
        }
      }
    }

    else
    {
      bzero(a1, v25);
      *a1 = v30;
      v31 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v25] = v31;
        break;
      case 2:
        *&a1[v25] = v31;
        break;
      case 3:
        goto LABEL_69;
      case 4:
        *&a1[v25] = v31;
        break;
      default:
        return;
    }
  }
}

void sub_216AEC7E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_216AEC89C()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v7 = *(type metadata accessor for ExpandableTextView(0, v10) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_216AE833C(v8, v1, v2, v3, v4, v5, v6);
}

unint64_t sub_216AEC978()
{
  result = qword_27CAC2478;
  if (!qword_27CAC2478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2478);
  }

  return result;
}

uint64_t sub_216AEC9E4()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v7 = *(type metadata accessor for ExpandableTextView(0, v10) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_216AEABAC(v8, v1, v2, v3, v4, v5, v6);
}

unint64_t sub_216AECAD4()
{
  result = qword_27CAC2480;
  if (!qword_27CAC2480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468, &qword_2170425F0);
    sub_2166D9530(&qword_27CAC2488, &qword_27CAC2490, &qword_2170425F8, MEMORY[0x277CE1138]);
    sub_2166D9530(&qword_27CAC2498, &qword_27CAC24A0, &qword_217042600, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2480);
  }

  return result;
}

void sub_216AECBD8(uint64_t a1)
{
  sub_216AEC7E4(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_217005C64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_216AECCB8(uint64_t a1)
{
  result = type metadata accessor for ScrollableParagraphView.Content(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216AECD60(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216AECDB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollableParagraphView.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_216AECE44(uint64_t a1)
{
  sub_216AECEE0(319, &qword_27CAC2530, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_216AECEE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_216AECF44()
{
  result = qword_27CAC2538;
  if (!qword_27CAC2538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2540, &qword_217042718);
    sub_216AEBA80(&qword_27CAC2510, type metadata accessor for ScrollableTextView, &unk_2170427B0);
    sub_216AEBA80(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2538);
  }

  return result;
}

uint64_t type metadata accessor for JSSearchPage(uint64_t a1)
{
  result = qword_280E44AB8;
  if (!qword_280E44AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216AED0EC(uint64_t a1)
{
  sub_21700D194();
  if (v1 <= 0x3F)
  {
    sub_21682D344(319);
    if (v2 <= 0x3F)
    {
      sub_216AED200(319);
      if (v3 <= 0x3F)
      {
        sub_21668C3B0(319, &qword_280E29F68, &type metadata for SearchSuggestion, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_21668C3B0(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216AED200(uint64_t a1)
{
  if (!qword_27CAC2550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2558, &qword_217042818);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAC2550);
    }
  }
}

uint64_t sub_216AED264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v41 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v46 = v14;
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v40 = v15;
  MEMORY[0x28223BE20](v16);
  v17 = sub_21700D194();
  OUTLINED_FUNCTION_1();
  v39 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for JSSearchPage(0);
  v22 = v49[8];
  v43 = a3;
  v23 = (a3 + v22);
  *v23 = 0;
  v23[1] = 0;
  v24 = a1;
  sub_21700CE04();
  v25 = v44;
  v48 = v7;
  v26 = *(v7 + 16);
  v27 = v5;
  v42 = v26;
  v26(v12, v44, v5);
  v28 = v45;
  sub_21700D134();
  if (v28)
  {
    (*(v48 + 8))(v25, v5);
    return (*(v46 + 8))(v24, v47);
  }

  else
  {
    (*(v39 + 32))(v43, v21, v17);
    v45 = 0;
    v30 = v24;
    sub_21700CE04();
    v31 = v41;
    v38 = v27;
    v42(v41, v25, v27);
    _s7SectionVMa(0);
    sub_216691E80(&qword_280E2C638, _s7SectionVMa, &unk_2170551A4);
    v32 = sub_21700E944();
    v33 = v43;
    *(v43 + v49[5]) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2558, &qword_217042818);
    sub_21700CE04();
    v34 = v27;
    v35 = v42;
    v42(v31, v25, v34);
    sub_216AEDCE0();
    sub_21700D734();
    *(v33 + v49[6]) = v50;
    sub_21700CE04();
    v36 = v38;
    v35(v31, v25, v38);
    sub_216AEDD44();
    v37 = sub_21700E944();
    (*(v48 + 8))(v25, v36);
    result = (*(v46 + 8))(v30, v47);
    *(v33 + v49[7]) = v37;
  }

  return result;
}

void sub_216AED700()
{
  _s7SectionVMa(0);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = var50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for JSSearchPage(0) + 20));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = sub_21678389C(v8, v5);
      sub_2168C0B98(v11, v12, v13, v14, v15, v16, v17, v18, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
      v20 = v19;
      sub_216A4D170(v5);
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216937908(0, *(v10 + 16) + 1, 1, v10);
          v10 = v23;
        }

        v22 = *(v10 + 16);
        v21 = *(v10 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_216937908(v21 > 1, v22 + 1, 1, v10);
          v10 = v24;
        }

        *(v10 + 16) = v22 + 1;
        *(v10 + 8 * v22 + 32) = v20;
      }

      v8 += v9;
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v25 = 0;
  v26 = *(v10 + 16);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v26 == v25)
    {

      return;
    }

    if (v25 >= *(v10 + 16))
    {
      break;
    }

    v28 = *(v10 + 8 * v25 + 32);
    v29 = *(v28 + 16);
    v30 = *(v27 + 16);
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      goto LABEL_31;
    }

    sub_21700DF14();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v31 > *(v27 + 24) >> 1)
    {
      if (v30 <= v31)
      {
        v33 = v30 + v29;
      }

      else
      {
        v33 = v30;
      }

      sub_2169375D4(isUniquelyReferenced_nonNull_native, v33, 1, v27);
      v27 = v34;
    }

    if (*(v28 + 16))
    {
      v35 = (*(v27 + 24) >> 1) - *(v27 + 16);
      sub_217006924();
      if (v35 < v29)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v36 = *(v27 + 16);
        v37 = __OFADD__(v36, v29);
        v38 = v36 + v29;
        if (v37)
        {
          goto LABEL_34;
        }

        *(v27 + 16) = v38;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_32;
      }
    }

    ++v25;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_216AED9C0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  sub_2167839C8(v2);
  return v2;
}

uint64_t sub_216AEDA54(uint64_t a1)
{
  result = sub_216691E80(&qword_280E44AF0, type metadata accessor for JSSearchPage, &unk_217042820);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216AEDAF4(uint64_t a1)
{
  result = sub_216691E80(&qword_280E44AD8, type metadata accessor for JSSearchPage, &unk_217042848);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216AEDB4C(void *a1)
{
  a1[1] = sub_216691E80(&qword_280E44AE8, type metadata accessor for JSSearchPage, &unk_217042874);
  a1[2] = sub_216691E80(&qword_280E44AE0, type metadata accessor for JSSearchPage, &unk_2170428A4);
  result = sub_216691E80(&qword_280E44AD0, type metadata accessor for JSSearchPage, &unk_2170428F8);
  a1[3] = result;
  return result;
}

uint64_t sub_216AEDC88(uint64_t a1)
{
  result = sub_216691E80(qword_280E44AF8, type metadata accessor for JSSearchPage, &unk_2170428DC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216AEDCE0()
{
  result = qword_280E3A080;
  if (!qword_280E3A080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2558, &qword_217042818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3A080);
  }

  return result;
}

unint64_t sub_216AEDD44()
{
  result = qword_280E40898;
  if (!qword_280E40898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E40898);
  }

  return result;
}

uint64_t sub_216AEDDAC(uint64_t a1)
{
  v2 = sub_21700D2A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NoticeActionType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NoticeManager();
  sub_21700D4B4();
  if (v22)
  {
    sub_216AEE1EC(a1, v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00, &qword_2170313E0);
    switch(__swift_getEnumTagSinglePayload(v8, 11, v9))
    {
      case 1u:
        LOBYTE(v22) = 0;
        goto LABEL_21;
      case 2u:
        v19 = 1;
        goto LABEL_20;
      case 3u:
        v19 = 2;
        goto LABEL_20;
      case 4u:
        v19 = 3;
        goto LABEL_20;
      case 5u:
        v19 = 4;
        goto LABEL_20;
      case 6u:
        v19 = 5;
        goto LABEL_20;
      case 7u:
        v19 = 6;
        goto LABEL_20;
      case 8u:
        v19 = 7;
        goto LABEL_20;
      case 9u:
        v19 = 8;
        goto LABEL_20;
      case 0xAu:
        v19 = 9;
        goto LABEL_20;
      case 0xBu:
        v19 = 10;
LABEL_20:
        LOBYTE(v22) = v19;
LABEL_21:
        sub_2167C6288(&v22);
        break;
      default:

        sub_216AEE250(v8);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    v18 = sub_21700E1F4();
  }

  else
  {
    if (qword_27CAB5D20 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_27CAC2560);

    v11 = sub_217007C84();
    v12 = sub_21700ED84();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446210;
      v15 = sub_21700D474();
      v17 = sub_2166A85FC(v15, v16, &v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_216679000, v11, v12, "NoticeManager not present in object graph %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA0], v2);
    return sub_21700E1F4();
  }

  return v18;
}

uint64_t sub_216AEE168()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC2560);
  __swift_project_value_buffer(v0, qword_27CAC2560);
  return sub_217007C94();
}

uint64_t sub_216AEE1EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeActionType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216AEE250(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistAddableItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for GroupedTextListLockupView(uint64_t a1)
{
  result = qword_280E35920;
  if (!qword_280E35920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216AEE320(uint64_t a1)
{
  type metadata accessor for GroupedTextListLockup(319);
  if (v1 <= 0x3F)
  {
    sub_2166DB904();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216AEE3C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 0;
  }

  if (result >= a2)
  {
    __break(1u);
    return result;
  }

  return a2 - 1;
}

void sub_216AEE3EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 40 * v3;
    v5 = *(v4 - 8);
    v9 = *v4;
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    sub_21700DF14();
    sub_21700DF14();
    v8 = v9;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = xmmword_217042990;
  }

  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
}

uint64_t sub_216AEE488@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2578, &qword_217042A68);
  return sub_216AEE4DC(v2, a2 + *(v4 + 44));
}

uint64_t sub_216AEE4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2580, &qword_217042A70);
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v84 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2588, &unk_217042A78);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = (&v80 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18, &unk_217025B60);
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v80 - v13;
  v14 = sub_21700D284();
  v90 = *(v14 - 8);
  v91 = v14;
  MEMORY[0x28223BE20](v14);
  v89 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE08, &qword_217025B20);
  MEMORY[0x28223BE20](v16);
  v93 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - v19;
  MEMORY[0x28223BE20](v21);
  v92 = &v80 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v80 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = (&v80 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = &v80 - v33;
  v87 = type metadata accessor for GroupedTextListLockup(0);
  v35 = *(v87 + 24);
  v95 = a1;
  v96 = v35;
  sub_216681B04(a1 + v35, v34, &qword_27CABBE20, qword_217034D80);
  v36 = type metadata accessor for ModalPresentationDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v36) == 1)
  {
    sub_216697664(v34, &qword_27CABBE20, qword_217034D80);
    v37 = 1;
    v38 = v97;
  }

  else
  {
    v82 = v9;
    v39 = v97;
    v40 = *(v34 + 4);
    v41 = *(v34 + 5);
    sub_21700DF14();
    sub_216AEF930(v34);
    if (!v41)
    {
      goto LABEL_9;
    }

    v42 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v42 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (v42)
    {
      sub_216681B04(v95 + v96, v31, &qword_27CABBE20, qword_217034D80);
      if (__swift_getEnumTagSinglePayload(v31, 1, v36) == 1)
      {
        sub_216697664(v31, &qword_27CABBE20, qword_217034D80);
        v80 = 0;
        v81 = 0;
      }

      else
      {
        v43 = *v31;
        v80 = v31[1];
        v81 = v43;
        sub_21700DF14();
        sub_216AEF930(v31);
      }

      v44 = v82;
      sub_216681B04(v95 + v96, v28, &qword_27CABBE20, qword_217034D80);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v36);
      v46 = v88;
      if (EnumTagSinglePayload == 1)
      {
        sub_216697664(v28, &qword_27CABBE20, qword_217034D80);
        v47 = 0;
        v48 = 0;
      }

      else
      {
        v47 = *(v28 + 4);
        v48 = *(v28 + 5);
        sub_21700DF14();
        sub_216AEF930(v28);
      }

      v49 = v95;
      sub_216681B04(v95 + v96, v25, &qword_27CABBE20, qword_217034D80);
      v50 = __swift_getEnumTagSinglePayload(v25, 1, v36);
      v51 = v91;
      if (v50 == 1)
      {
        sub_216697664(v25, &qword_27CABBE20, qword_217034D80);
        __swift_storeEnumTagSinglePayload(v46, 1, 1, v51);
        v52 = v89;
        sub_21700D234();
        v53 = __swift_getEnumTagSinglePayload(v46, 1, v51);
        v54 = v90;
        if (v53 != 1)
        {
          sub_216697664(v46, &qword_27CABBE18, &unk_217025B60);
        }
      }

      else
      {
        v55 = *(v36 + 40);
        v54 = v90;
        (*(v90 + 16))(v46, &v25[v55], v91);
        sub_216AEF930(v25);
        __swift_storeEnumTagSinglePayload(v46, 0, 1, v51);
        v52 = v89;
        (*(v54 + 32))(v89, v46, v51);
      }

      v56 = &v20[v16[25]];
      v98 = 0;
      sub_21700AEA4();
      v57 = v100;
      *v56 = v99;
      *(v56 + 1) = v57;
      v58 = v16[26];
      *&v20[v58] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE10, &unk_217034D70);
      swift_storeEnumTagMultiPayload();
      sub_216681B04(v49 + v96, v20, &qword_27CABBE20, qword_217034D80);
      v59 = type metadata accessor for ParagraphView(0);
      *&v20[*(v59 + 20)] = 0;
      *&v20[*(v59 + 24)] = 0;
      v60 = 1;
      v20[v16[17]] = 1;
      v20[v16[18]] = 1;
      v61 = &v20[v16[20]];
      v62 = v80;
      *v61 = v81;
      *(v61 + 1) = v62;
      v63 = &v20[v16[19]];
      *v63 = v47;
      *(v63 + 1) = v48;
      *&v20[v16[21]] = 3;
      *&v20[v16[23]] = 0;
      v64 = &v20[v16[22]];
      *v64 = 0;
      *(v64 + 1) = 0;
      (*(v54 + 32))(&v20[v16[24]], v52, v51);
      v65 = v92;
      sub_216AEF98C(v20, v92);
      v66 = *(v49 + *(v87 + 28));
      if (v66)
      {
        v67 = v83;
        sub_216AEEDE4(v66, v83);
        v69 = v84;
        v68 = v85;
        v70 = *(v85 + 16);
        v71 = v86;
        v70(v84, v67, v86);
        v72 = v94;
        *v94 = 0x4042000000000000;
        *(v72 + 8) = 0;
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC25A8, &qword_217042AD8);
        v70((v72 + *(v73 + 48)), v69, v71);
        v74 = *(v68 + 8);
        v74(v67, v71);
        v74(v69, v71);
        v60 = 0;
      }

      else
      {
        v72 = v94;
      }

      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2598, &qword_217042AC8);
      __swift_storeEnumTagSinglePayload(v72, v60, 1, v75);
      v76 = v93;
      sub_216681B04(v65, v93, &qword_27CABBE08, &qword_217025B20);
      sub_2167336C0(v72, v44);
      v38 = v97;
      sub_216681B04(v76, v97, &qword_27CABBE08, &qword_217025B20);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC25A0, &qword_217042AD0);
      sub_2167336C0(v44, v38 + *(v77 + 48));
      sub_216733728(v72);
      sub_216697664(v65, &qword_27CABBE08, &qword_217025B20);
      sub_216733728(v44);
      sub_216697664(v76, &qword_27CABBE08, &qword_217025B20);
      v37 = 0;
    }

    else
    {
LABEL_9:
      v37 = 1;
      v38 = v39;
    }
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2590, &qword_217042A88);
  return __swift_storeEnumTagSinglePayload(v38, v37, 1, v78);
}

uint64_t sub_216AEEDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_2170090F4();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2170099D4();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC25B0, &qword_217042AE0);
  MEMORY[0x28223BE20](v27);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC25B8, &qword_217042AE8);
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  *v9 = sub_2170093C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC25C0, &unk_217042AF0) + 44);
  v34 = a1;
  KeyPath = swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2A0, &unk_217040220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC25C8, &unk_217042B20);
  sub_2166D9530(&qword_27CABE2A8, &qword_27CABE2A0, &unk_217040220, MEMORY[0x277D83980]);
  sub_216AEFA04();
  v13 = v27;
  v14 = v12;
  sub_2166D9530(&qword_27CAC25D8, &qword_27CAC25C8, &unk_217042B20, MEMORY[0x277CE14C0]);
  sub_21700B154();
  sub_2170099B4();
  v15 = sub_2166D9530(&qword_27CAC25E0, &qword_27CAC25B0, &qword_217042AE0, MEMORY[0x277CE1198]);
  sub_21700A784();
  (*(v28 + 8))(v7, v29);
  sub_216697664(v9, &qword_27CAC25B0, &qword_217042AE0);
  v16 = v30 + *(type metadata accessor for GroupedTextListLockupView(0) + 20);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    sub_21700ED94();
    v18 = sub_217009C34();
    sub_217007BC4();

    v19 = v22;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v17, 0);
    (*(v23 + 8))(v19, v24);
  }

  v34 = v13;
  v35 = v15;
  swift_getOpaqueTypeConformance2();
  v20 = v32;
  sub_21700AB94();
  return (*(v31 + 8))(v14, v20);
}

uint64_t sub_216AEF2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 16);
  v58[0] = *a1;
  v58[1] = v5;
  v59 = *(a1 + 32);
  v7 = *a1;
  v6 = *(a1 + 8);
  v63[0] = v58[0];
  v32 = *(&v58[0] + 1);
  v25 = *&v58[0];
  sub_216681B04(v63, v43, &qword_27CABAA40, &unk_217014260);
  v34 = sub_217009E64();
  KeyPath = swift_getKeyPath();
  *(&v33 + 1) = sub_21700AD34();
  *&v33 = swift_getKeyPath();
  v62 = *(a1 + 16);
  v29 = *(&v62 + 1);
  v24 = v62;
  sub_216681B04(&v62, v43, &qword_27CABAA40, &unk_217014260);
  v28 = sub_217009D54();
  v27 = swift_getKeyPath();
  v26 = sub_217009CA4();
  sub_216AEE3EC(a2, &v53);
  v8 = v53;
  if (v54 == 1)
  {
    sub_216681B04(v63, v43, &qword_27CABAA40, &unk_217014260);
    sub_216681B04(&v62, v43, &qword_27CABAA40, &unk_217014260);
    sub_21691E69C(v7, v6);
    sub_21691E69C(v8, 1);
  }

  else
  {
    v60[0] = v53;
    v60[1] = v54;
    v60[2] = v55;
    v60[3] = v56;
    v61 = v57 & 1;
    sub_216AD3CF0(v58, v60);
    sub_216681B04(v63, v43, &qword_27CABAA40, &unk_217014260);
    sub_216681B04(&v62, v43, &qword_27CABAA40, &unk_217014260);

    sub_216697664(v63, &qword_27CABAA40, &unk_217014260);
    sub_216697664(&v62, &qword_27CABAA40, &unk_217014260);
  }

  sub_217007F24();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v52 = 0;
  if (qword_27CAB6118 != -1)
  {
    swift_once();
  }

  if (v29)
  {
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = 0;
  }

  if (v29)
  {
    v18 = v24;
  }

  else
  {
    v18 = 0;
  }

  if (v32)
  {
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = 0;
  }

  if (v32)
  {
    v20 = v25;
  }

  else
  {
    v20 = 0;
  }

  v21 = qword_27CB22AA0;
  v22 = swift_getKeyPath();
  *&v38 = v20;
  *(&v38 + 1) = v32;
  *&v39 = 0;
  *(&v39 + 1) = v19;
  *&v40 = KeyPath;
  *(&v40 + 1) = v34;
  v41 = v33;
  v37[0] = v38;
  v37[1] = v39;
  v37[2] = v40;
  v37[3] = v33;
  __src[0] = v18;
  __src[1] = v29;
  __src[2] = 0;
  __src[3] = v17;
  __src[4] = v27;
  __src[5] = v28;
  LOBYTE(__src[6]) = v26;
  __src[7] = v10;
  __src[8] = v12;
  __src[9] = v14;
  __src[10] = v16;
  LOBYTE(__src[11]) = 0;
  __src[12] = v22;
  __src[13] = v21;
  memcpy(&v37[4], __src, 0x70uLL);
  memcpy(a3, v37, 0xB0uLL);
  v43[0] = v18;
  v43[1] = v29;
  v43[2] = 0;
  v43[3] = v17;
  v43[4] = v27;
  v43[5] = v28;
  v44 = v26;
  v45 = v10;
  v46 = v12;
  v47 = v14;
  v48 = v16;
  v49 = 0;
  v50 = v22;
  v51 = v21;

  sub_216681B04(&v38, v35, &qword_27CABA1C0, &unk_217039CA0);
  sub_216681B04(__src, v35, &qword_27CAC25E8, &qword_217042B98);
  sub_216697664(v43, &qword_27CAC25E8, &qword_217042B98);
  v35[0] = v20;
  v35[1] = v32;
  v35[2] = 0;
  v35[3] = v19;
  v35[4] = KeyPath;
  v35[5] = v34;
  v36 = v33;
  return sub_216697664(v35, &qword_27CABA1C0, &unk_217039CA0);
}

uint64_t sub_216AEF6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216AEF89C(a1, a2);
  v3 = a2 + *(type metadata accessor for GroupedTextListLockupView(0) + 20);
  result = swift_getKeyPath();
  *v3 = result;
  *(v3 + 8) = 0;
  return result;
}

uint64_t sub_216AEF78C(uint64_t a1)
{
  result = sub_216AEF7E4(qword_280E35938, type metadata accessor for GroupedTextListLockupView, &unk_2170429CC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216AEF7E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216AEF838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupedTextListLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216AEF89C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupedTextListLockup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216AEF900@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008FE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216AEF930(uint64_t a1)
{
  v2 = type metadata accessor for ModalPresentationDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216AEF98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE08, &qword_217025B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216AEFA04()
{
  result = qword_27CAC25D0;
  if (!qword_27CAC25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC25D0);
  }

  return result;
}

uint64_t sub_216AEFB58(void *a1, uint64_t a2)
{
  sub_216AEFC84();
  v2 = sub_21700F124();
  v3 = sub_21700F134();

  return v3;
}

uint64_t sub_216AEFC1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F0, &qword_21701ACB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216AEFC84()
{
  result = qword_280E29AF8;
  if (!qword_280E29AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29AF8);
  }

  return result;
}

void sub_216AEFD04(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_21667E91C(v3, v4);
  v5 = [objc_opt_self() defaultCenter];
  v6 = v5;
  if (qword_27CAB5EC8 != -1)
  {
    OUTLINED_FUNCTION_0_142(&qword_27CAB5EC8);
    v5 = v6;
  }

  [v5 addObserver:v2 selector:sel_eventDidFire name:qword_27CAC4B68 object:0];
}

void sub_216AEFDD0()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_27CAB5EC8 != -1)
  {
    OUTLINED_FUNCTION_0_142(&qword_27CAB5EC8);
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_27CAC4B68 object:0];
}

unint64_t sub_216AEFE7C(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 8)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_216AEFEF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216AEFE7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_216AEFF28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216733814(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216AEFF5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216AEFEC8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_216AEFF84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216AEFECC();
  *a1 = result;
  return result;
}

uint64_t sub_216AEFFAC(uint64_t a1)
{
  v2 = sub_216AF04B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216AEFFE8(uint64_t a1)
{
  v2 = sub_216AF04B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2690, &qword_217042C60);
  OUTLINED_FUNCTION_1();
  v23 = v7;
  v24 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = sub_21700D0C4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216AF04B4();
  v25 = v10;
  v17 = v26;
  sub_21700F964();
  if (!v17)
  {
    v26 = v5;
    v18 = v23;
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_5_73();
    sub_21700F694();
    sub_21700D064();
    LOBYTE(v28) = 0;
    OUTLINED_FUNCTION_5_73();
    sub_21700F674();
    sub_21700D014();
    LOBYTE(v28) = 2;
    OUTLINED_FUNCTION_5_73();
    sub_21700F664();
    sub_21700CFF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF890, &qword_217033E20);
    v27 = 3;
    sub_216AF08FC(&qword_27CAC26A0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_6_68();
    sub_21700F6A4();
    sub_21700D094();
    OUTLINED_FUNCTION_10_57(4);
    sub_21700F674();
    sub_21700CFD4();
    sub_217005EF4();
    LOBYTE(v28) = 5;
    OUTLINED_FUNCTION_4_79();
    sub_216AF0A04(v20, v21, MEMORY[0x277CC9280]);
    OUTLINED_FUNCTION_6_68();
    sub_21700F644();
    sub_21700D034();
    OUTLINED_FUNCTION_10_57(6);
    sub_21700F614();
    sub_21700D054();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC26A8, &qword_217042C68);
    v27 = 7;
    sub_216AF0968(&qword_27CAC26B0, &qword_27CAC26B8, &protocol conformance descriptor for JSNetworkPerformanceMetrics, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_6_68();
    sub_21700F6A4();
    sub_21700D0B4();
    (*(v18 + 8))(v25, v24);
    (*(v13 + 32))(v22, v16, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_216AF04B4()
{
  result = qword_27CAC2698;
  if (!qword_27CAC2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2698);
  }

  return result;
}

uint64_t NetResponse.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC26C0, &qword_217042C70);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216AF04B4();
  sub_21700F974();
  sub_21700D004();
  LOBYTE(v14) = 0;
  OUTLINED_FUNCTION_3_98();
  sub_21700F734();
  if (!v1)
  {
    sub_21700D074();
    LOBYTE(v14) = 1;
    OUTLINED_FUNCTION_3_98();
    sub_21700F754();
    sub_21700CFE4();
    LOBYTE(v14) = 2;
    OUTLINED_FUNCTION_0_143();
    sub_21700F724();

    v14 = sub_21700D084();
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF890, &qword_217033E20);
    sub_216AF08FC(&qword_27CAC26C8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_3_98();
    sub_21700F764();

    sub_21700CFC4();
    LOBYTE(v14) = 4;
    OUTLINED_FUNCTION_3_98();
    sub_21700F734();
    sub_21700D024();
    LOBYTE(v14) = 5;
    sub_217005EF4();
    OUTLINED_FUNCTION_4_79();
    sub_216AF0A04(v10, v11, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_3_98();
    sub_21700F704();
    sub_216846CF0(v5);
    sub_21700D044();
    LOBYTE(v14) = 6;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6D4();

    v14 = sub_21700D0A4();
    v13 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC26A8, &qword_217042C68);
    sub_216AF0968(&qword_27CAC26D0, &qword_27CAC26D8, &protocol conformance descriptor for JSNetworkPerformanceMetrics, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_3_98();
    sub_21700F764();
  }

  v7 = OUTLINED_FUNCTION_8_63();
  return v8(v7);
}

uint64_t sub_216AF08FC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF890, &qword_217033E20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216AF0968(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC26A8, &qword_217042C68);
    sub_216AF0A04(a2, MEMORY[0x277D222D0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216AF0A04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216AF0A4C(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_216AF0AA8(char a1)
{
  result = 0x4C525565676170;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x65736E6F70736572;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6174536573726170;
      break;
    case 7:
      result = 0x646E456573726170;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t sub_216AF0C50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216AF0A4C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_216AF0C80@<X0>(unint64_t *a1@<X8>)
{
  result = sub_216AF0AA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216AF0CC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216AF0A98(a1);
  *a2 = result;
  return result;
}

uint64_t sub_216AF0CF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216AF0A9C();
  *a1 = result;
  return result;
}

uint64_t sub_216AF0D18(uint64_t a1)
{
  v2 = sub_216AF113C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216AF0D54(uint64_t a1)
{
  v2 = sub_216AF113C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JSNetworkPerformanceMetrics.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC26E0, &qword_217042C78);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216AF113C();
  sub_21700F964();
  if (!v1)
  {
    OUTLINED_FUNCTION_1_121();
    sub_21700F614();
    OUTLINED_FUNCTION_1_121();
    sub_21700F614();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    OUTLINED_FUNCTION_1_121();
    sub_21700F624();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    OUTLINED_FUNCTION_1_121();
    sub_21700F634();
    sub_21700DE34();
    v4 = OUTLINED_FUNCTION_9_2();
    v5(v4);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_216AF113C()
{
  result = qword_27CAC26E8;
  if (!qword_27CAC26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC26E8);
  }

  return result;
}

uint64_t JSNetworkPerformanceMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC26F0, &unk_217042C80);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216AF113C();
  sub_21700F974();
  sub_21700DE44();
  v10[15] = 0;
  OUTLINED_FUNCTION_0_143();
  sub_21700F6D4();
  if (v1)
  {
    (*(v5 + 8))(v8, v3);
  }

  else
  {

    sub_21700DE74();
    v10[14] = 1;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6D4();

    sub_21700DE04();
    v10[13] = 2;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    sub_21700DE14();
    v10[12] = 3;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    sub_21700DDF4();
    v10[11] = 4;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    sub_21700DE24();
    v10[10] = 5;
    OUTLINED_FUNCTION_3_98();
    sub_21700F6E4();
    sub_21700DDE4();
    v10[9] = 6;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    sub_21700DDD4();
    v10[8] = 7;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    sub_21700DE64();
    v10[7] = 8;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    sub_21700DE54();
    v10[6] = 9;
    OUTLINED_FUNCTION_0_143();
    sub_21700F6F4();
    return (*(v5 + 8))(v8, v3);
  }
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216AF16CC()
{
  result = qword_27CAC26F8;
  if (!qword_27CAC26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC26F8);
  }

  return result;
}

unint64_t sub_216AF1724()
{
  result = qword_27CAC2700;
  if (!qword_27CAC2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2700);
  }

  return result;
}

unint64_t sub_216AF177C()
{
  result = qword_27CAC2708;
  if (!qword_27CAC2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2708);
  }

  return result;
}

unint64_t sub_216AF17D4()
{
  result = qword_27CAC2710;
  if (!qword_27CAC2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2710);
  }

  return result;
}

unint64_t sub_216AF182C()
{
  result = qword_27CAC2718;
  if (!qword_27CAC2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2718);
  }

  return result;
}

unint64_t sub_216AF1884()
{
  result = qword_27CAC2720;
  if (!qword_27CAC2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2720);
  }

  return result;
}

void sub_216AF18DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (**a5)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  v9 = (a4 + OBJC_IVAR____TtC7MusicUI19URLProtocolDelegate_tabViewController);
  v10 = *(a4 + OBJC_IVAR____TtC7MusicUI19URLProtocolDelegate_tabViewController + 24);
  if (!v10)
  {
    _Block_copy(a5);
    goto LABEL_7;
  }

  v11 = v9[4];
  v12 = __swift_project_boxed_opaque_existential_1(v9, *(a4 + OBJC_IVAR____TtC7MusicUI19URLProtocolDelegate_tabViewController + 24));
  v13 = *(v10 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v14);
  v17 = *(v11 + 8);
  _Block_copy(a5);
  v17(aBlock, v10, v11);
  (*(v13 + 8))(v16, v10);
  v18 = v29;
  if (!v29)
  {
    sub_21669987C(aBlock, &unk_27CAC2800, &qword_217042FF8);
    goto LABEL_7;
  }

  v19 = v30;
  __swift_project_boxed_opaque_existential_1(aBlock, v29);
  v20 = (*(v19 + 7))(v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  if (!v20)
  {
LABEL_7:
    v26 = sub_21700E4D4();
    v27 = sub_21700E4D4();
    v23 = AMSError();

    v24 = sub_217005D24();
    (a5)[2](a5, 0, v24);

    goto LABEL_8;
  }

  sub_216AF1DC8();
  v21 = a3;
  v22 = v20;
  v23 = sub_216BA2300(v21, v22);
  v24 = [v23 performAuthentication];
  v30 = sub_216AF1DC0;
  v31 = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_216BA4A28;
  v29 = &block_descriptor_21;
  v25 = _Block_copy(aBlock);

  [v24 addFinishBlock_];
  _Block_release(v25);

LABEL_8:
  _Block_release(a5);
}

id sub_216AF1CF4()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC7MusicUI19URLProtocolDelegate_tabViewController];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t sub_216AF1DC8()
{
  result = qword_27CAC4810;
  if (!qword_27CAC4810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAC4810);
  }

  return result;
}

uint64_t sub_216AF1E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageToolbarContentView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  sub_216DE8DC8();
  v12 = *&v7[*(v4 + 40)];
  sub_21700DF14();
  result = sub_216AF2FA8(v7, type metadata accessor for Page.Header);
  if (!v12)
  {

LABEL_12:
    v18 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v18, 1, v8);
  }

  v23 = v11;
  v24 = a2;
  v14 = *(v12 + 16);
  if (!v14)
  {
LABEL_10:

    v18 = 1;
    a2 = v24;
    return __swift_storeEnumTagSinglePayload(a2, v18, 1, v8);
  }

  v15 = 0;
  v16 = v12 + 32;
  while (2)
  {
    if (v15 < *(v12 + 16))
    {
      sub_216826904(v16, v25);
      ++v15;
      switch(v25[0])
      {
        case 1:
        case 2:
        case 3:
        case 4:
          v17 = sub_21700F7D4();

          result = sub_2168269C4(v25);
          if (v17)
          {
            goto LABEL_9;
          }

          v19 = v23;
          *v23 = v12;
          sub_216CCAAE0();

          OUTLINED_FUNCTION_1_122();
          v20 = v19;
          a2 = v24;
          sub_216AF2EE8(v20, v24, v21);
          v18 = 0;
          return __swift_storeEnumTagSinglePayload(a2, v18, 1, v8);
        default:

          result = sub_2168269C4(v25);
LABEL_9:
          v16 += 56;
          if (v14 == v15)
          {
            goto LABEL_10;
          }

          continue;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for PageToolbarContentView(uint64_t a1)
{
  result = qword_280E39138;
  if (!qword_280E39138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216AF2128(uint64_t a1)
{
  sub_216AF21AC();
  if (v1 <= 0x3F)
  {
    sub_2170067A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216AF21AC()
{
  if (!qword_280E29F98)
  {
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29F98);
    }
  }
}

uint64_t sub_216AF2218()
{
  v1 = type metadata accessor for PageToolbarContentView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v8[1] = *v0;
  swift_getKeyPath();
  sub_216AF2F48(v0, v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageToolbarContentView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_1_122();
  sub_216AF2EE8(v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, v6);
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02C8, &unk_217040410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2820, &qword_2170430C0);
  sub_216AF2C40();
  sub_216AF2CA4();
  return sub_21700B154();
}

uint64_t sub_216AF23C0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v45 = a3;
  v39 = type metadata accessor for ContextAccessoryButtonView(0);
  MEMORY[0x28223BE20](v39);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ContextAccessoryButton(0);
  MEMORY[0x28223BE20](v40);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2860, &qword_2170430D8);
  MEMORY[0x28223BE20](v44);
  v42 = &v34 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2868, &unk_2170430E0);
  MEMORY[0x28223BE20](v36);
  v37 = &v34 - v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2838, &qword_2170430C8);
  MEMORY[0x28223BE20](v43);
  v38 = &v34 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB648, &unk_217023EE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2848, &qword_2170430D0);
  MEMORY[0x28223BE20](v35);
  v18 = &v34 - v17;
  v19 = type metadata accessor for PopoverAccessoryButton(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  v48[0] = *a1;
  v25 = v48[0];
  sub_216826960((a1 + 8), v49);
  if (v25 == 3)
  {
    v27 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330, &qword_21701C9E0);
    if (swift_dynamicCast())
    {
      v28 = v7;
      sub_216AF2EE8(v10, v7, type metadata accessor for ContextAccessoryButton);
      sub_216AF2F48(v7, v5, type metadata accessor for ContextAccessoryButton);
      v29 = *(type metadata accessor for PageToolbarContentView(0) + 20);
      v30 = *(v39 + 20);
      v31 = sub_2170067A4();
      (*(*(v31 - 8) + 16))(&v5[v30], v27 + v29, v31);
      sub_216AF2F48(v5, v37, type metadata accessor for ContextAccessoryButtonView);
      swift_storeEnumTagMultiPayload();
      sub_216AF2DEC();
      sub_216AF2EA0(&qword_27CAC2858, type metadata accessor for ContextAccessoryButtonView, &unk_217031A7C);
      v32 = v38;
      sub_217009554();
      sub_216681B04(v32, v42, &qword_27CAC2838, &qword_2170430C8);
      swift_storeEnumTagMultiPayload();
      sub_216AF2D30();
      sub_217009554();
      sub_216697664(v32, &qword_27CAC2838, &qword_2170430C8);
      sub_216AF2FA8(v5, type metadata accessor for ContextAccessoryButtonView);
      sub_216AF2FA8(v28, type metadata accessor for ContextAccessoryButton);
      return __swift_destroy_boxed_opaque_existential_1Tm(v49);
    }
  }

  else if (v25 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330, &qword_21701C9E0);
    if (swift_dynamicCast())
    {
      sub_216AF2EE8(v24, v21, type metadata accessor for PopoverAccessoryButton);
      sub_216AF2F48(v21, v16, type metadata accessor for PopoverAccessoryButton);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v19);
      v47 = 0;
      memset(v46, 0, sizeof(v46));
      sub_2168B6FB0(v16, v46, v18);
      sub_216681B04(v18, v37, &qword_27CAC2848, &qword_2170430D0);
      swift_storeEnumTagMultiPayload();
      sub_216AF2DEC();
      sub_216AF2EA0(&qword_27CAC2858, type metadata accessor for ContextAccessoryButtonView, &unk_217031A7C);
      v26 = v38;
      sub_217009554();
      sub_216681B04(v26, v42, &qword_27CAC2838, &qword_2170430C8);
      swift_storeEnumTagMultiPayload();
      sub_216AF2D30();
      sub_217009554();
      sub_216697664(v26, &qword_27CAC2838, &qword_2170430C8);
      sub_216697664(v18, &qword_27CAC2848, &qword_2170430D0);
      sub_216AF2FA8(v21, type metadata accessor for PopoverAccessoryButton);
      return __swift_destroy_boxed_opaque_existential_1Tm(v49);
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_216AF2D30();
  sub_217009554();
  return sub_216697664(v48, &qword_27CABDC08, &unk_21702C330);
}

uint64_t sub_216AF2BC0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PageToolbarContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_216AF23C0(a1, v6, a2);
}

unint64_t sub_216AF2C40()
{
  result = qword_27CAC02D8;
  if (!qword_27CAC02D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC02C8, &unk_217040410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC02D8);
  }

  return result;
}

unint64_t sub_216AF2CA4()
{
  result = qword_27CAC2828;
  if (!qword_27CAC2828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2820, &qword_2170430C0);
    sub_216AF2D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2828);
  }

  return result;
}

unint64_t sub_216AF2D30()
{
  result = qword_27CAC2830;
  if (!qword_27CAC2830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2838, &qword_2170430C8);
    sub_216AF2DEC();
    sub_216AF2EA0(&qword_27CAC2858, type metadata accessor for ContextAccessoryButtonView, &unk_217031A7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2830);
  }

  return result;
}

unint64_t sub_216AF2DEC()
{
  result = qword_27CAC2840;
  if (!qword_27CAC2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2848, &qword_2170430D0);
    sub_216AF2EA0(&qword_27CAC2850, type metadata accessor for PopoverSelectorToolbarContentView, &unk_217023F14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2840);
  }

  return result;
}

uint64_t sub_216AF2EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216AF2EE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216AF2F48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216AF2FA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216AF3000()
{
  result = qword_27CAC2870;
  if (!qword_27CAC2870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2878, qword_2170430F0);
    sub_216AF2CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2870);
  }

  return result;
}

uint64_t sub_216AF3084(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v5 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = *(a1 - 8);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12, v2, a1);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    (*(v10 + 8))(v14, a1);
    return MEMORY[0x277D84FA0];
  }

  sub_216AF64B8(v14, v9);
  v15 = OUTLINED_FUNCTION_19_1(*(v5 + 20));
  sub_216AF651C(v15, v16, v17);
  OUTLINED_FUNCTION_116();
  if (swift_getEnumCaseMultiPayload() != 25)
  {
    OUTLINED_FUNCTION_14_48();
    OUTLINED_FUNCTION_15_48();
    return MEMORY[0x277D84FA0];
  }

  OUTLINED_FUNCTION_15_48();
  v18 = sub_216F0EDEC();
  OUTLINED_FUNCTION_14_48();
  return v18;
}

void sub_216AF325C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_37_31(v1, v2, v3);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_103_1();
  v8 = OUTLINED_FUNCTION_18_39();
  v12 = type metadata accessor for PresentationItem.Destination(v8, v9, v10, v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  if (!sub_216AF49C0())
  {
  }

  v14 = OUTLINED_FUNCTION_18_39();
  type metadata accessor for PresentationItem(v14, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_31_36();
  v19(v18);
  v20 = OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_39_20(v7 + v12, v21, v22, v20);
  OUTLINED_FUNCTION_86_0();
  sub_216AF4A04();
  OUTLINED_FUNCTION_27_34();
  v24 = *(v0 + *(v23 + 528));
  if (!v24)
  {
    if (sub_216AF4554())
    {

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144(&qword_27CAB5D30);
      }

      v25 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v25, qword_27CAC2880);
      v26 = sub_217007C84();
      v27 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v27))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!sub_216AF457C())
      {

        sub_216AF4568(v36);

        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_29_31();
        OUTLINED_FUNCTION_4_80(v38, v39, v37);
        goto LABEL_16;
      }

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144(&qword_27CAB5D30);
      }

      v28 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v28, qword_27CAC2880);
      v26 = sub_217007C84();
      v29 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v29))
      {
        goto LABEL_15;
      }
    }

    v30 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_13_46(v30);
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    OUTLINED_FUNCTION_56_1();
LABEL_15:

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38_24();
  v24(v7);
  OUTLINED_FUNCTION_20_37();
LABEL_16:

  OUTLINED_FUNCTION_26();
}

void sub_216AF3510()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v64 = v5;
  v65 = v4;
  v7 = v6;
  v8 = *v1;
  v9 = type metadata accessor for MusicAppDestinationContext(0);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = OUTLINED_FUNCTION_12_41();
  v17 = type metadata accessor for PresentationItem.Destination(v13, v14, v15, v16);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_78();
  MEMORY[0x28223BE20](v21);
  v23 = &v63 - v22;
  if (qword_280E2B900 != -1)
  {
    OUTLINED_FUNCTION_16_45(&qword_280E2B900);
  }

  if ((byte_280E73A81 & 1) == 0)
  {
    v63 = v3;
    if (!sub_216AF49C0())
    {
    }

    v43 = OUTLINED_FUNCTION_12_41();
    type metadata accessor for PresentationItem(v43, v44, v45, v46);
    (*(v19 + 16))(v23, v7, v17);
    OUTLINED_FUNCTION_11_53();
    sub_216AF651C(v65, v12, v47);

    v48 = sub_216AF4A04();
    v49 = *(v1 + *(*v1 + 520));
    if (v49)
    {
      OUTLINED_FUNCTION_38_24();
      v49(v48);
      OUTLINED_FUNCTION_20_37();
LABEL_25:

      goto LABEL_26;
    }

    if (sub_216AF4554())
    {

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144(&qword_27CAB5D30);
      }

      v50 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v50, qword_27CAC2880);
      v51 = sub_217007C84();
      v52 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v52))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (!sub_216AF457C())
      {

        sub_216AF4518(v61);

        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_29_31();
        OUTLINED_FUNCTION_4_80(v64, v63, v62);
        goto LABEL_25;
      }

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144(&qword_27CAB5D30);
      }

      v53 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v53, qword_27CAC2880);
      v51 = sub_217007C84();
      v54 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v54))
      {
        goto LABEL_24;
      }
    }

    v55 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_13_46(v55);
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v56, v57, v58, v59, v60, 2u);
    OUTLINED_FUNCTION_56_1();
LABEL_24:

    goto LABEL_25;
  }

  if (qword_27CAB5D30 != -1)
  {
    OUTLINED_FUNCTION_0_144(&qword_27CAB5D30);
  }

  v24 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v24, qword_27CAC2880);
  v25 = *(v19 + 16);
  v25(v8, v7, v17);
  v26 = sub_217007C84();
  v27 = sub_21700ED84();
  if (OUTLINED_FUNCTION_8_64(v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v66 = v29;
    *v28 = 136446210;
    v25(v23, v8, v17);
    v30 = sub_21700E594();
    v32 = v31;
    v33 = OUTLINED_FUNCTION_116();
    v34(v33);
    v35 = sub_2166A85FC(v30, v32, &v66);

    *(v28 + 4) = v35;
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x21CEA1440](v29, -1, -1);
    OUTLINED_FUNCTION_56_1();
  }

  else
  {

    v41 = OUTLINED_FUNCTION_116();
    v42(v41);
  }

LABEL_26:
  OUTLINED_FUNCTION_26();
}

void sub_216AF39A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  OUTLINED_FUNCTION_49();
  v50 = v10;
  v51 = v11;
  v52 = v12;
  v14 = v13;
  v15 = type metadata accessor for MusicAppDestinationContext(0);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_103_1();
  v20 = *(v19 + 504);
  OUTLINED_FUNCTION_103_1();
  v22 = *(v21 + 512);
  v24 = type metadata accessor for PresentationItem.Destination(0, v20, v22, v23);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = &v49 - v28;
  if (!sub_216AF49C0())
  {
  }

  type metadata accessor for PresentationItem(0, v20, v22, v30);
  v32 = *(v26 + 16);
  v31 = v26 + 16;
  v32(v29, v14, v24);
  OUTLINED_FUNCTION_11_53();
  sub_216AF651C(v52, v18, v33);

  sub_216AF4A04();
  OUTLINED_FUNCTION_27_34();
  v35 = *(v9 + *(v34 + 544));
  if (!v35)
  {
    if (sub_216AF4554())
    {

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144(&qword_27CAB5D30);
      }

      v36 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v36, qword_27CAC2880);
      v37 = sub_217007C84();
      v38 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v38))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!sub_216AF457C())
      {

        sub_216AF4540(v47);

        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_29_31();
        OUTLINED_FUNCTION_4_80(v50, v51, v48);
        goto LABEL_16;
      }

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144(&qword_27CAB5D30);
      }

      v39 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v39, qword_27CAC2880);
      v37 = sub_217007C84();
      v40 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v40))
      {
        goto LABEL_15;
      }
    }

    v41 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_13_46(v41);
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v42, v43, v44, v45, v46, 2u);
    OUTLINED_FUNCTION_56_1();
LABEL_15:

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38_24();
  v35(v31);
  OUTLINED_FUNCTION_20_37();
LABEL_16:

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216AF3C9C()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + *(v1 + 560));
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_38_24();
    v2(v3);
    sub_21667E91C(v2, v0);
    return 1;
  }

  result = sub_216AF49C0();
  if (result)
  {
    Strong = swift_weakLoadStrong();

    if (!Strong)
    {
      return 0;
    }

    if (sub_216AF4504())
    {

      sub_216AF4518(0);
    }

    else if (sub_216AF452C())
    {

      sub_216AF4540(0);
    }

    else if (sub_216AF4554())
    {

      sub_216AF4568(0);
    }

    else if (sub_216AF457C())
    {

      sub_216AF4590(0);
    }

    else if (sub_216AF45A4())
    {

      sub_216AF465C(0);
    }

    return 1;
  }

  return result;
}

void sub_216AF3DB0()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v66 = v5;
  v67 = v4;
  v6 = *v1;
  v7 = type metadata accessor for MusicAppDestinationContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = OUTLINED_FUNCTION_12_41();
  v16 = type metadata accessor for PresentationItem.Destination(v12, v13, v14, v15);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_78();
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  if (qword_280E2B900 != -1)
  {
    OUTLINED_FUNCTION_16_45(&qword_280E2B900);
  }

  if ((byte_280E73A81 & 1) == 0)
  {
    v65 = v3;
    if (!sub_216AF49C0())
    {
    }

    v42 = OUTLINED_FUNCTION_12_41();
    type metadata accessor for PresentationItem(v42, v43, v44, v45);
    (*(v18 + 16))(v22, v67, v16);
    *(v11 + 32) = 0;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    v46 = *(v7 + 20);
    v47 = sub_217005EF4();
    OUTLINED_FUNCTION_39_20(v11 + v46, v48, v49, v47);
    v50 = sub_216AF4A04();
    v51 = *(v1 + *(*v1 + 552));
    if (v51)
    {
      OUTLINED_FUNCTION_38_24();
      v51(v50);
      OUTLINED_FUNCTION_20_37();
LABEL_25:

      goto LABEL_26;
    }

    if (sub_216AF4554())
    {

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144(&qword_27CAB5D30);
      }

      v52 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v52, qword_27CAC2880);
      v53 = sub_217007C84();
      v54 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v54))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (!sub_216AF457C())
      {

        sub_216AF4540(v63);

        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_29_31();
        OUTLINED_FUNCTION_4_80(v66, v65, v64);
        goto LABEL_25;
      }

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144(&qword_27CAB5D30);
      }

      v55 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v55, qword_27CAC2880);
      v53 = sub_217007C84();
      v56 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v56))
      {
        goto LABEL_24;
      }
    }

    v57 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_13_46(v57);
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v58, v59, v60, v61, v62, 2u);
    OUTLINED_FUNCTION_56_1();
LABEL_24:

    goto LABEL_25;
  }

  if (qword_27CAB5D30 != -1)
  {
    OUTLINED_FUNCTION_0_144(&qword_27CAB5D30);
  }

  v23 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v23, qword_27CAC2880);
  v24 = *(v18 + 16);
  v24(v6, v67, v16);
  v25 = sub_217007C84();
  v26 = sub_21700ED84();
  if (OUTLINED_FUNCTION_8_64(v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v68 = v28;
    *v27 = 136446210;
    v24(v22, v6, v16);
    v29 = sub_21700E594();
    v31 = v30;
    v32 = OUTLINED_FUNCTION_116();
    v33(v32);
    v34 = sub_2166A85FC(v29, v31, &v68);

    *(v27 + 4) = v34;
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x21CEA1440](v28, -1, -1);
    OUTLINED_FUNCTION_56_1();
  }

  else
  {

    v40 = OUTLINED_FUNCTION_116();
    v41(v40);
  }

LABEL_26:
  OUTLINED_FUNCTION_26();
}

void sub_216AF424C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_37_31(v1, v2, v3);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_103_1();
  v8 = OUTLINED_FUNCTION_18_39();
  v12 = type metadata accessor for PresentationItem.Destination(v8, v9, v10, v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  if (!sub_216AF49C0())
  {
  }

  v14 = OUTLINED_FUNCTION_18_39();
  type metadata accessor for PresentationItem(v14, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_31_36();
  v19(v18);
  v20 = OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_39_20(v7 + v12, v21, v22, v20);
  OUTLINED_FUNCTION_86_0();
  sub_216AF4A04();
  OUTLINED_FUNCTION_27_34();
  v24 = *(v0 + *(v23 + 536));
  if (!v24)
  {
    if (sub_216AF4554())
    {

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144(&qword_27CAB5D30);
      }

      v25 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v25, qword_27CAC2880);
      v26 = sub_217007C84();
      v27 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v27))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!sub_216AF457C())
      {

        sub_216AF4590(v36);

        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_29_31();
        OUTLINED_FUNCTION_4_80(v38, v39, v37);
        goto LABEL_16;
      }

      if (qword_27CAB5D30 != -1)
      {
        OUTLINED_FUNCTION_0_144(&qword_27CAB5D30);
      }

      v28 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v28, qword_27CAC2880);
      v26 = sub_217007C84();
      v29 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v29))
      {
        goto LABEL_15;
      }
    }

    v30 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_13_46(v30);
    OUTLINED_FUNCTION_6_69();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    OUTLINED_FUNCTION_56_1();
LABEL_15:

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38_24();
  v24(v7);
  OUTLINED_FUNCTION_20_37();
LABEL_16:

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216AF45B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_86_0();
  sub_217007DE4();

  return v3;
}

uint64_t sub_216AF4670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216AF4728()
{
  result = sub_216AF4504();
  if (!result)
  {
    result = sub_216AF452C();
    if (!result)
    {

      return sub_216AF45A4();
    }
  }

  return result;
}

uint64_t sub_216AF4764()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (v0 + *(v1 + 152));
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];

    v3(v5);
    sub_21667E91C(v3, v4);
    v6 = *v2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v2[1];
  *v2 = 0;
  v2[1] = 0;

  return sub_21667E91C(v6, v7);
}

uint64_t sub_216AF47E8()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_16_0();
  type metadata accessor for PresentationItem(255, v4, *(v3 + 88), v5);
  sub_21700F164();
  v6 = sub_217007E14();
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  OUTLINED_FUNCTION_0_1();
  v10 = OUTLINED_FUNCTION_19_1(*(v9 + 104));
  (v8)(v10);
  OUTLINED_FUNCTION_0_1();
  v12 = OUTLINED_FUNCTION_19_1(*(v11 + 112));
  (v8)(v12);
  OUTLINED_FUNCTION_0_1();
  v14 = OUTLINED_FUNCTION_19_1(*(v13 + 120));
  (v8)(v14);
  OUTLINED_FUNCTION_0_1();
  v16 = OUTLINED_FUNCTION_19_1(*(v15 + 128));
  (v8)(v16);
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_1();
  sub_21667E91C(*(v0 + *(v18 + 152)), *(v0 + *(v18 + 152) + 8));
  return v0;
}

uint64_t sub_216AF497C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  type metadata accessor for PresentationSource(0, *(a1 + 80), *(a1 + 88), a2);
  result = sub_217007D64();
  *a3 = result;
  return result;
}

uint64_t sub_216AF49C0()
{
  if (!sub_216AF4728())
  {
    return 0;
  }

  v0 = sub_216AF4A58();

  return v0;
}

uint64_t sub_216AF4A04()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_86_0();
  sub_216AF4BE4(v1, v2);
  return v0;
}

uint64_t sub_216AF4A58()
{
  if (sub_216AF4728())
  {
    v0 = sub_216AF4A58();

    return v0;
  }

  else
  {
  }
}

uint64_t sub_216AF4AB8()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_123(*(v1 + 520));
  OUTLINED_FUNCTION_1_123(*(v2 + 528));
  OUTLINED_FUNCTION_1_123(*(v3 + 536));
  OUTLINED_FUNCTION_1_123(*(v4 + 544));
  OUTLINED_FUNCTION_1_123(*(v5 + 552));
  v7 = (v0 + *(v6 + 560));
  v8 = *v7;
  v9 = v7[1];

  return sub_21667E91C(v8, v9);
}

uint64_t sub_216AF4B44()
{
  sub_216AF47E8();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_123(*(v1 + 520));
  OUTLINED_FUNCTION_1_123(*(v2 + 528));
  OUTLINED_FUNCTION_1_123(*(v3 + 536));
  OUTLINED_FUNCTION_1_123(*(v4 + 544));
  OUTLINED_FUNCTION_1_123(*(v5 + 552));
  sub_21667E91C(*(v0 + *(v6 + 560)), *(v0 + *(v6 + 560) + 8));
  return v0;
}

uint64_t sub_216AF4BE4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_6();
  v6 = *(v5 + 520);
  OUTLINED_FUNCTION_16_0();
  v10 = type metadata accessor for PresentationItem.Destination(0, v8, *(v7 + 512), v9);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v2 + v6, a1, v10);
  OUTLINED_FUNCTION_0_1();
  sub_216AF651C(a2, v2 + *(v12 + 528), type metadata accessor for MusicAppDestinationContext);
  sub_216692D28();
  sub_216AF657C(a2, type metadata accessor for MusicAppDestinationContext);
  (*(v11 + 8))(a1, v10);
  return v2;
}

uint64_t sub_216AF4D1C()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v1 + 520);
  OUTLINED_FUNCTION_16_0();
  type metadata accessor for PresentationItem.Destination(0, v4, *(v3 + 512), v5);
  OUTLINED_FUNCTION_34();
  (*(v6 + 8))(v0 + v2);
  OUTLINED_FUNCTION_0_1();
  return sub_216AF657C(v0 + *(v7 + 528), type metadata accessor for MusicAppDestinationContext);
}

uint64_t sub_216AF4DC8()
{
  sub_216AF47E8();
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 520);
  OUTLINED_FUNCTION_103_1();
  type metadata accessor for PresentationItem.Destination(0, v4, *(v3 + 512), v5);
  OUTLINED_FUNCTION_34();
  (*(v6 + 8))(v0 + v2);
  OUTLINED_FUNCTION_0_1();
  sub_216AF657C(v0 + *(v7 + 528), type metadata accessor for MusicAppDestinationContext);
  return v0;
}

uint64_t sub_216AF4EA0(void (*a1)(void))
{
  a1();

  return MEMORY[0x2821FE8D8](v1);
}

uint64_t sub_216AF4EFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v3 > v4)
  {
    v4 = v3;
  }

  v78 = v4;
  v76 = *(*(sub_21700D284() - 8) + 64);
  v71 = *(sub_217005EF4() - 8);
  v72 = *(v71 + 80);
  v75 = *(sub_21700C084() - 8);
  v62 = *(v75 + 80);
  v74 = *(sub_21700BA44() - 8);
  v59 = *(v74 + 80);
  v69 = *(sub_21700C1E4() - 8);
  v57 = *(v69 + 80);
  v73 = *(sub_2170073D4() - 8);
  v56 = *(v73 + 80);
  v70 = *(sub_217007324() - 8);
  v55 = *(v70 + 80);
  v68 = *(sub_21700C384() - 8);
  v54 = *(v68 + 80);
  v60 = sub_2170072A4() - 8;
  v67 = *v60;
  v53 = *(*v60 + 80);
  v66 = *(sub_217006F54() - 8);
  v52 = *(v66 + 80);
  v64 = *(sub_21700C924() - 8);
  v50 = *(v64 + 80);
  v65 = *(sub_21700C2F4() - 8);
  v51 = *(v65 + 80);
  v63 = *(sub_21700C8E4() - 8);
  v5 = *(v63 + 80);
  v61 = *(sub_21700C734() - 8);
  v6 = *(v61 + 80);
  v58 = *(sub_217006E94() - 8);
  v7 = *(v58 + 80);
  v8 = *(sub_21700C4B4() - 8);
  v9 = v8;
  v10 = v72 | ((v62 | v59 | v57 | v56 | v55 | v54 | v53 | v52 | v50 | v6 | v7) | (*(v8 + 80) | v72 | v51 | v5)) & 0xF8 | 7u;
  v11 = (v76 + v10) & ~v10;
  v12 = *(v71 + 64);
  v13 = *(v75 + 64);
  v14 = *(v69 + 64);
  if (*(v71 + 84))
  {
    v15 = *(v71 + 64);
  }

  else
  {
    v15 = v12 + 1;
  }

  v16 = v15 + ((v72 + 113) & ~v72);
  v17 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 <= v16)
  {
    v17 = v15 + ((v72 + 113) & ~v72);
  }

  if (*(v74 + 64) <= v13)
  {
    v18 = *(v75 + 64);
  }

  else
  {
    v18 = *(v74 + 64);
  }

  if (v14 > v18)
  {
    v18 = *(v69 + 64);
  }

  if (v17 <= v18 + 1)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = v17;
  }

  if (v19 <= v13 + 1)
  {
    v20 = v13 + 1;
  }

  else
  {
    v20 = v19;
  }

  if (v20 <= v13)
  {
    v20 = *(v75 + 64);
  }

  if (v20 <= *(v73 + 64))
  {
    v21 = *(v73 + 64);
  }

  else
  {
    v21 = v20;
  }

  if (v21 <= *(v70 + 64))
  {
    v21 = *(v70 + 64);
  }

  if (v21 <= *(v68 + 64))
  {
    v21 = *(v68 + 64);
  }

  if (v21 <= *(v67 + 64))
  {
    v21 = *(v67 + 64);
  }

  if (v21 <= *(v66 + 64))
  {
    v22 = *(v66 + 64);
  }

  else
  {
    v22 = v21;
  }

  if (v22 <= ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v23 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v64 + 64);
  v25 = ((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v23 > v25)
  {
    v25 = v23;
  }

  if (v25 <= ((v16 + v72) & ~v72) + v12)
  {
    v26 = ((v16 + v72) & ~v72) + v12;
  }

  else
  {
    v26 = v25;
  }

  v27 = *(v65 + 64) + ((v14 + v51) & ~v51);
  if (!*(v65 + 84))
  {
    ++v27;
  }

  if (v26 > v27)
  {
    v27 = v26;
  }

  v28 = *(v63 + 64) + ((v24 + v5) & ~v5);
  if (!*(v63 + 84))
  {
    ++v28;
  }

  if (v27 <= v28)
  {
    v27 = v28;
  }

  if (v27 <= *(v61 + 64))
  {
    v27 = *(v61 + 64);
  }

  if (*(v58 + 64) <= v24)
  {
    v29 = *(v64 + 64);
  }

  else
  {
    v29 = *(v58 + 64);
  }

  if (v13 <= v29)
  {
    v13 = v29;
  }

  v30 = *(v8 + 64);
  if (!*(v9 + 84))
  {
    ++v30;
  }

  v31 = v12 + ((v72 + 16 + ((((((v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v72) + 2;
  if (v31 <= v13)
  {
    v31 = v13;
  }

  if (v31 <= 0x18)
  {
    v31 = 24;
  }

  if (v27 <= v31 + 1)
  {
    v32 = v31 + 1;
  }

  else
  {
    v32 = v27;
  }

  if (v32 <= v16)
  {
    v32 = v15 + ((v72 + 113) & ~v72);
  }

  if (v32 <= v12 + ((v72 + 16) & ~v72))
  {
    v32 = v12 + ((v72 + 16) & ~v72);
  }

  if (v32 <= 0x88)
  {
    v32 = 136;
  }

  v33 = (v15 + (v72 | 7) + ((((v11 + v32 + 8) & 0xFFFFFFFFFFFFFFF8) + v72 + 17) & ~v72)) & ~(v72 | 7);
  v34 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(sub_21700D7A4() - 8);
  v36 = *(v35 + 80);
  v37 = (v34 + (v36 | 7) + v33 + 56) & ~(v36 | 7);
  v38 = (v36 + 40) & ~v36;
  v39 = *(v35 + 64);
  if (!*(v35 + 84))
  {
    ++v39;
  }

  v40 = ((((((((((v39 + v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v37 + 16;
  if (v78 > v40)
  {
    v40 = v78;
  }

  v41 = 48;
  if (v40 > 0x30)
  {
    v41 = v40;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_96;
  }

  v42 = v41 + 1;
  v43 = 8 * (v41 + 1);
  if ((v41 + 1) <= 3)
  {
    v46 = ((a2 + ~(-1 << v43) - 245) >> v43) + 1;
    if (HIWORD(v46))
    {
      v44 = *(a1 + v42);
      if (!v44)
      {
        goto LABEL_96;
      }

      goto LABEL_88;
    }

    if (v46 > 0xFF)
    {
      v44 = *(a1 + v42);
      if (!*(a1 + v42))
      {
        goto LABEL_96;
      }

      goto LABEL_88;
    }

    if (v46 < 2)
    {
LABEL_96:
      v48 = *(a1 + v41);
      if (v48 >= 0xB)
      {
        return (v48 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v44 = *(a1 + v42);
  if (!*(a1 + v42))
  {
    goto LABEL_96;
  }

LABEL_88:
  v47 = (v44 - 1) << v43;
  if (v42 > 3)
  {
    v47 = 0;
  }

  if (v42)
  {
    if (v42 > 3)
    {
      LODWORD(v42) = 4;
    }

    switch(v42)
    {
      case 2:
        LODWORD(v42) = *a1;
        break;
      case 3:
        LODWORD(v42) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v42) = *a1;
        break;
      default:
        LODWORD(v42) = *a1;
        break;
    }
  }

  return (v42 | v47) + 246;
}

void sub_216AF58C0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v4 > v5)
  {
    v5 = v4;
  }

  v79 = v5;
  v78 = *(*(sub_21700D284() - 8) + 64);
  v73 = *(sub_217005EF4() - 8);
  v74 = *(v73 + 80);
  v77 = *(sub_21700C084() - 8);
  v64 = *(v77 + 80);
  v76 = *(sub_21700BA44() - 8);
  v61 = *(v76 + 80);
  v71 = *(sub_21700C1E4() - 8);
  v59 = *(v71 + 80);
  v75 = *(sub_2170073D4() - 8);
  v58 = *(v75 + 80);
  v72 = *(sub_217007324() - 8);
  v57 = *(v72 + 80);
  v70 = *(sub_21700C384() - 8);
  v56 = *(v70 + 80);
  v62 = sub_2170072A4() - 8;
  v69 = *v62;
  v55 = *(*v62 + 80);
  v68 = *(sub_217006F54() - 8);
  v54 = *(v68 + 80);
  v66 = *(sub_21700C924() - 8);
  v52 = *(v66 + 80);
  v67 = *(sub_21700C2F4() - 8);
  v53 = *(v67 + 80);
  v65 = *(sub_21700C8E4() - 8);
  v6 = *(v65 + 80);
  v63 = *(sub_21700C734() - 8);
  v7 = *(v63 + 80);
  v60 = *(sub_217006E94() - 8);
  v8 = *(v60 + 80);
  v9 = *(sub_21700C4B4() - 8);
  v10 = v9;
  v11 = v74 | ((v64 | v61 | v59 | v58 | v57 | v56 | v55 | v54 | v52 | v7 | v8) | (*(v9 + 80) | v74 | v53 | v6)) & 0xF8 | 7u;
  v12 = (v78 + v11) & ~v11;
  v13 = *(v73 + 64);
  v14 = *(v77 + 64);
  v15 = *(v71 + 64);
  if (*(v73 + 84))
  {
    v16 = *(v73 + 64);
  }

  else
  {
    v16 = v13 + 1;
  }

  v17 = v16 + ((v74 + 113) & ~v74);
  v18 = ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v18 <= v17)
  {
    v18 = v16 + ((v74 + 113) & ~v74);
  }

  if (*(v76 + 64) <= v14)
  {
    v19 = *(v77 + 64);
  }

  else
  {
    v19 = *(v76 + 64);
  }

  if (v15 > v19)
  {
    v19 = *(v71 + 64);
  }

  if (v18 <= v19 + 1)
  {
    v20 = v19 + 1;
  }

  else
  {
    v20 = v18;
  }

  if (v20 <= v14 + 1)
  {
    v21 = v14 + 1;
  }

  else
  {
    v21 = v20;
  }

  if (v21 <= v14)
  {
    v21 = *(v77 + 64);
  }

  if (v21 <= *(v75 + 64))
  {
    v22 = *(v75 + 64);
  }

  else
  {
    v22 = v21;
  }

  if (v22 <= *(v72 + 64))
  {
    v22 = *(v72 + 64);
  }

  if (v22 <= *(v70 + 64))
  {
    v22 = *(v70 + 64);
  }

  if (v22 <= *(v69 + 64))
  {
    v22 = *(v69 + 64);
  }

  if (v22 <= *(v68 + 64))
  {
    v23 = *(v68 + 64);
  }

  else
  {
    v23 = v22;
  }

  if (v23 <= ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v24 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v66 + 64);
  v26 = ((v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v24 > v26)
  {
    v26 = v24;
  }

  if (v26 <= ((v17 + v74) & ~v74) + v13)
  {
    v27 = ((v17 + v74) & ~v74) + v13;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(v67 + 64) + ((v15 + v53) & ~v53);
  if (!*(v67 + 84))
  {
    ++v28;
  }

  if (v27 > v28)
  {
    v28 = v27;
  }

  v29 = *(v65 + 64) + ((v25 + v6) & ~v6);
  if (!*(v65 + 84))
  {
    ++v29;
  }

  if (v28 <= v29)
  {
    v28 = v29;
  }

  if (v28 <= *(v63 + 64))
  {
    v28 = *(v63 + 64);
  }

  if (*(v60 + 64) <= v25)
  {
    v30 = *(v66 + 64);
  }

  else
  {
    v30 = *(v60 + 64);
  }

  if (v14 <= v30)
  {
    v14 = v30;
  }

  v31 = *(v9 + 64);
  if (!*(v10 + 84))
  {
    ++v31;
  }

  v32 = v13 + ((v74 + 16 + ((((((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v74) + 2;
  if (v32 <= v14)
  {
    v32 = v14;
  }

  if (v32 <= 0x18)
  {
    v32 = 24;
  }

  if (v28 <= v32 + 1)
  {
    v33 = v32 + 1;
  }

  else
  {
    v33 = v28;
  }

  if (v33 <= v17)
  {
    v33 = v16 + ((v74 + 113) & ~v74);
  }

  if (v33 <= v13 + ((v74 + 16) & ~v74))
  {
    v33 = v13 + ((v74 + 16) & ~v74);
  }

  if (v33 <= 0x88)
  {
    v33 = 136;
  }

  v34 = (v16 + (v74 | 7) + ((((v12 + v33 + 8) & 0xFFFFFFFFFFFFFFF8) + v74 + 17) & ~v74)) & ~(v74 | 7);
  v35 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(sub_21700D7A4() - 8);
  v37 = *(v36 + 80);
  v38 = (v35 + (v37 | 7) + v34 + 56) & ~(v37 | 7);
  v39 = (v37 + 40) & ~v37;
  v40 = *(v36 + 64);
  if (!*(v36 + 84))
  {
    ++v40;
  }

  v41 = ((((((((((v40 + v39 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v38 + 16;
  if (v79 > v41)
  {
    v41 = v79;
  }

  if (v41 <= 0x30)
  {
    v41 = 48;
  }

  v42 = v41 + 1;
  v43 = 8 * (v41 + 1);
  if (a3 < 0xF6)
  {
    v46 = 0;
    v44 = a1;
    v45 = a2;
  }

  else
  {
    v44 = a1;
    v45 = a2;
    if (v42 <= 3)
    {
      v49 = ((a3 + ~(-1 << v43) - 245) >> v43) + 1;
      if (HIWORD(v49))
      {
        v46 = 4;
      }

      else
      {
        if (v49 < 0x100)
        {
          v50 = 1;
        }

        else
        {
          v50 = 2;
        }

        if (v49 >= 2)
        {
          v46 = v50;
        }

        else
        {
          v46 = 0;
        }
      }
    }

    else
    {
      v46 = 1;
    }
  }

  if (v45 > 0xF5)
  {
    v47 = v45 - 246;
    if (v42 < 4)
    {
      v48 = (v47 >> v43) + 1;
      if (v41 != -1)
      {
        v51 = v47 & ~(-1 << v43);
        bzero(v44, v42);
        if (v42 == 3)
        {
          *v44 = v51;
          v44[2] = BYTE2(v51);
        }

        else if (v42 == 2)
        {
          *v44 = v51;
        }

        else
        {
          *v44 = v47;
        }
      }
    }

    else
    {
      bzero(v44, v41 + 1);
      *v44 = v47;
      v48 = 1;
    }

    switch(v46)
    {
      case 1:
        v44[v42] = v48;
        break;
      case 2:
        *&v44[v42] = v48;
        break;
      case 3:
LABEL_111:
        __break(1u);
        break;
      case 4:
        *&v44[v42] = v48;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v46)
    {
      case 1:
        v44[v42] = 0;
        if (!v45)
        {
          return;
        }

        goto LABEL_100;
      case 2:
        *&v44[v42] = 0;
        goto LABEL_99;
      case 3:
        goto LABEL_111;
      case 4:
        *&v44[v42] = 0;
        if (!v45)
        {
          return;
        }

        goto LABEL_100;
      default:
LABEL_99:
        if (v45)
        {
LABEL_100:
          v44[v41] = -v45;
        }

        break;
    }
  }
}

void sub_216AF6304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for ObjectGraph(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_216AF6388@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700F3D4();
  *a1 = result;
  return result;
}

uint64_t sub_216AF63B4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC2880);
  __swift_project_value_buffer(v0, qword_27CAC2880);
  return sub_217007C94();
}

uint64_t sub_216AF64B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216AF651C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216AF657C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216AF6600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v96 = a3;
  v4 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v4 - 8);
  v88 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v87 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v14 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v93 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v85 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v84 = &v81 - v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v86 = &v81 - v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v81 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v81 - v26;
  sub_21700D7A4();
  sub_21700CE04();
  v92 = v8;
  v28 = *(v8 + 16);
  v94 = v6;
  v29 = v6;
  v30 = v14;
  v31 = v93;
  v89 = v28;
  v28(v13, v99, v29);
  v82 = v27;
  v83 = v13;
  sub_21700D734();
  v95 = a1;
  sub_21700CE04();
  v32 = sub_21700CDB4();
  v34 = v33;
  v35 = *(v31 + 1);
  v90 = v30;
  v93 = v35;
  (v35)(v24, v30);
  if (v34)
  {
    v36 = type metadata accessor for SocialProfileFollowRequestLockup(0);
    v97 = v32;
    v98 = v34;
    v37 = v96;
    sub_21700F364();
    v38 = v86;
    sub_21700CE04();
    v39 = v87;
    v40 = v99;
    v89(v87, v99, v94);
    v41 = v88;
    v42 = v91;
    ContentDescriptor.init(deserializing:using:)(v38, v39, v43, v44, v45, v46, v47, v48, v81, v82, SWORD2(v82), SBYTE6(v82), SHIBYTE(v82), v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
    v49 = v37;
    v91 = v42;
    if (!v42)
    {
      sub_216A29168(v41, v37 + *(v36 + 24), type metadata accessor for ContentDescriptor);
      type metadata accessor for Artwork(0);
      v50 = v36;
      v51 = v82;
      sub_21700CE04();
      v89(v83, v40, v94);
      v81 = v50;
      sub_216AF71A4(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
      v52 = v96;
      sub_21700D734();
      sub_21700CE04();
      v53 = sub_21700CDB4();
      v55 = v54;
      v56 = v90;
      v57 = v93;
      (v93)(v51, v90);
      v58 = (v52 + *(v50 + 28));
      v59 = v52;
      *v58 = v53;
      v58[1] = v55;
      sub_21700CE04();
      v60 = sub_21700CDB4();
      v62 = v61;
      v63 = OUTLINED_FUNCTION_6_70();
      v57(v63);
      v64 = v81;
      v65 = (v52 + *(v81 + 32));
      *v65 = v60;
      v65[1] = v62;
      v66 = v84;
      sub_21700CE04();
      LOBYTE(v60) = sub_21700CD44();
      v67 = v93;
      (v93)(v66, v56);
      *(v59 + *(v64 + 36)) = v60 & 1;
      v68 = v85;
      v69 = v95;
      sub_21700CE04();
      LOBYTE(v60) = sub_21700CD44();
      v67(v68, v56);
      *(v59 + *(v81 + 40)) = v60 & 1;
      sub_21700CE04();
      v70 = v99;
      sub_21700D2E4();
      v71 = OUTLINED_FUNCTION_6_70();
      (v67)(v71);
      sub_21700CE04();
      sub_21700D2E4();
      v72 = OUTLINED_FUNCTION_6_70();
      (v67)(v72);
      sub_21700CE04();
      sub_21700D2E4();
      (*(v92 + 8))(v70, v94);
      v67(v69, v56);
      v73 = OUTLINED_FUNCTION_6_70();
      return (v67)(v73);
    }
  }

  else
  {
    v75 = sub_21700E2E4();
    sub_216AF71A4(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v76 = swift_allocError();
    v78 = v77;
    v79 = type metadata accessor for SocialProfileFollowRequestLockup(0);
    *v78 = 25705;
    v78[1] = 0xE200000000000000;
    v78[2] = v79;
    (*(*(v75 - 8) + 104))(v78, *MEMORY[0x277D22530], v75);
    v91 = v76;
    swift_willThrow();
    v49 = v96;
    v40 = v99;
  }

  (*(v92 + 8))(v40, v94);
  (v93)(v95, v90);
  result = sub_216697664(v49, &qword_27CAB6D58, &unk_217014E30);
  if (v34)
  {
    v80 = type metadata accessor for SocialProfileFollowRequestLockup(0);
    return sub_216788110(v49 + *(v80 + 20));
  }

  return result;
}

uint64_t sub_216AF6DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598, qword_217037510);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for SocialProfileFollowRequestLockup(0);
  if ((MEMORY[0x21CEA0160](a1 + v15[5], a2 + v15[5]) & 1) == 0 || (static ContentDescriptor.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_4_67();
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_32;
    }

    v20 = *v18 == *v19 && v16 == v17;
    if (!v20 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v17)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_4_67();
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_32:
    v28 = 0;
    return v28 & 1;
  }

  if (!v22)
  {
    goto LABEL_32;
  }

  v25 = *v23 == *v24 && v21 == v22;
  if (!v25 && (sub_21700F7D4() & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  if (*(a1 + v15[9]) != *(a2 + v15[9]) || *(a1 + v15[10]) != *(a2 + v15[10]))
  {
    goto LABEL_32;
  }

  v26 = v15[14];
  v27 = *(v11 + 48);
  sub_216681B04(a1 + v26, v14, &qword_27CAB6D60, &qword_217014E40);
  sub_216681B04(a2 + v26, &v14[v27], &qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_5_3(v14);
  if (v20)
  {
    OUTLINED_FUNCTION_5_3(&v14[v27]);
    if (v20)
    {
      sub_216697664(v14, &qword_27CAB6D60, &qword_217014E40);
      v28 = 1;
      return v28 & 1;
    }

    goto LABEL_31;
  }

  sub_216681B04(v14, v10, &qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_5_3(&v14[v27]);
  if (v29)
  {
    sub_216A2910C(v10);
LABEL_31:
    sub_216697664(v14, &qword_27CABE598, qword_217037510);
    goto LABEL_32;
  }

  sub_216A29168(&v14[v27], v7, type metadata accessor for Artwork);
  v31 = sub_21700C4A4();
  if (v31)
  {
    v28 = sub_21688ADC8(&v10[*(v4 + 20)], &v7[*(v4 + 20)]);
  }

  else
  {
    v28 = 0;
  }

  sub_216A2910C(v7);
  sub_216A2910C(v10);
  sub_216697664(v14, &qword_27CAB6D60, &qword_217014E40);
  return v28 & 1;
}

uint64_t sub_216AF71A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216AF71EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MenuBuilder();
  OUTLINED_FUNCTION_0_145();
  sub_216AF73B0(v6, v7, &unk_21705881C);
  OUTLINED_FUNCTION_2_101();
  *a3 = sub_217008CF4();
  a3[1] = v8;
  type metadata accessor for SocialGraphController(0);
  sub_216AF73B0(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
  OUTLINED_FUNCTION_2_101();
  a3[2] = sub_217008CF4();
  a3[3] = v9;
  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_216AF73B0(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
  OUTLINED_FUNCTION_2_101();
  a3[4] = sub_217008CF4();
  a3[5] = v10;
  v11 = type metadata accessor for SocialProfileContextMenu(0);
  v12 = v11[7];
  *(a3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v13 = v11[8];
  sub_21700AEA4();
  *(a3 + v13) = v15;
  sub_216AF7D48(a1, a3 + v11[9], type metadata accessor for SocialProfileDescriptor);
  return sub_216AF7D48(a2, a3 + v11[10], type metadata accessor for MenuConfiguration);
}

uint64_t sub_216AF73B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SocialProfileContextMenu(uint64_t a1)
{
  result = qword_280E35F70;
  if (!qword_280E35F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216AF746C(uint64_t a1)
{
  sub_2167B83B4(319);
  if (v1 <= 0x3F)
  {
    sub_216AF7568(319);
    if (v2 <= 0x3F)
    {
      sub_216A949B4(319);
      if (v3 <= 0x3F)
      {
        sub_2167EE974(319);
        if (v4 <= 0x3F)
        {
          sub_216AF75FC();
          if (v5 <= 0x3F)
          {
            type metadata accessor for SocialProfileDescriptor(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for MenuConfiguration(319);
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

void sub_216AF7568(uint64_t a1)
{
  if (!qword_280E2ACB0)
  {
    type metadata accessor for SocialGraphController(255);
    sub_216AF73B0(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
    v1 = sub_217008D04();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2ACB0);
    }
  }
}

void sub_216AF75FC()
{
  if (!qword_280E2A580)
  {
    v0 = sub_21700AEE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A580);
    }
  }
}

uint64_t sub_216AF7668@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for SocialProfileContextMenu(0);
  OUTLINED_FUNCTION_1();
  v32 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v7 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v13 = v2[9];

    sub_216C0C548(v14, v15, v16, v17, v18, v19, v20, v21, v31, v32, v33, v34, v35, *(&v35 + 1), v36, v37, v38, v39, v40, v41);
    v22 = sub_216C64FC8(v1 + v13, v12, v1 + v2[10]);

    (*(v9 + 8))(v12, v7);
    type metadata accessor for MenuBuilder();
    v23 = v33;
    sub_216C647A0(v22);

    v35 = *(v1 + v2[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28A0, &qword_217043630);
    sub_21700AEB4();
    v24 = v34;
    *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28A8, &unk_217043638) + 52)) = v24;
    sub_216AF7CE4(v1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v26 = swift_allocObject();
    sub_216AF7D48(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for SocialProfileContextMenu);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28B0, qword_217043648);
    v28 = (v23 + *(result + 36));
    *v28 = sub_216AF7DA8;
    v28[1] = v26;
    v28[2] = 0;
    v28[3] = 0;
  }

  else
  {
    type metadata accessor for MenuBuilder();
    OUTLINED_FUNCTION_0_145();
    sub_216AF73B0(v29, v30, &unk_21705881C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216AF7930(uint64_t a1)
{
  v2 = type metadata accessor for SocialProfileContextMenu(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB770, &unk_217024010);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  if (*(a1 + 16))
  {
    sub_216AF7CE4(a1, &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    sub_216AF7D48(&v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for SocialProfileContextMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB790, &qword_217024070);
    sub_2166D9530(&qword_280E2A2F8, &qword_27CABB790, &qword_217024070, MEMORY[0x277D21A98]);

    sub_21700D1D4();
    sub_21700D1F4();

    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    type metadata accessor for SocialGraphController(0);
    sub_216AF73B0(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216AF7BE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for SocialProfileContextMenu(0);
  v5 = a2 + *(v4 + 36);
  v6 = (v5 + *(type metadata accessor for SocialProfileDescriptor(0) + 20));
  v8 = *v6;
  v7 = v6[1];
  v15 = v8;
  v16 = v7;
  v13[2] = &v15;
  result = sub_216CA1DA8(sub_216AF7E78, v13, v3);
  if (result)
  {
    v10 = (a2 + *(v4 + 32));
    v12 = *v10;
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28A0, &qword_217043630);
    result = sub_21700AEB4();
    if (__OFADD__(v14, 1))
    {
      __break(1u);
    }

    else
    {
      v13[4] = v12;
      v13[5] = v11;
      v13[3] = v14 + 1;
      sub_21700AEC4();
    }
  }

  return result;
}

uint64_t sub_216AF7CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfileContextMenu(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216AF7D48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216AF7DA8()
{
  v1 = *(type metadata accessor for SocialProfileContextMenu(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_216AF7930(v2);
}

uint64_t sub_216AF7E08(uint64_t *a1)
{
  v3 = *(type metadata accessor for SocialProfileContextMenu(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216AF7BE4(a1, v4);
}

unint64_t sub_216AF7E98()
{
  result = qword_27CAC28B8;
  if (!qword_27CAC28B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC28B0, qword_217043648);
    sub_2166D9530(&qword_27CAC28C0, &qword_27CAC28A8, &unk_217043638, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC28B8);
  }

  return result;
}

void sub_216AF7F78(uint64_t a1)
{
  if (!qword_280E29F10)
  {
    type metadata accessor for PlaylistAddableItem(255);
    v1 = sub_21700E984();
    if (!v2)
    {
      atomic_store(v1, &qword_280E29F10);
    }
  }
}

uint64_t sub_216AF7FF8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a2;
  v105 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v103 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  v96 = v13 - v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  v95 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  v94 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_4();
  v93[5] = v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  v93[4] = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_4();
  v93[3] = v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_4();
  v93[2] = v26;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v27);
  v29 = v93 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v93 - v31;
  sub_21700D7A4();
  OUTLINED_FUNCTION_8_59();
  sub_21700CE04();
  v33 = *(v103 + 16);
  v107 = v4;
  v101 = v33;
  v102 = v103 + 16;
  v33(v8, v110, v4);
  v100 = v8;
  sub_21700D734();
  v99 = a1;
  sub_21700CE04();
  v34 = sub_21700CDB4();
  v36 = v35;
  v37 = *(v11 + 8);
  v104 = v9;
  v106 = v11 + 8;
  v38 = v37;
  v37(v29, v9);
  if (v36)
  {
    v39 = type metadata accessor for AlbumTrackLockup(0);
    v108 = v34;
    v109 = v36;
    v40 = v105;
    sub_21700F364();
    v41 = v99;
    sub_21700CE04();
    v42 = v39;
    OUTLINED_FUNCTION_12_48();
    v43 = v110;
    sub_21700D2E4();
    v98 = v38;
    v38(v32, v104);
    v44 = type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v45 = v100;
    v46 = v43;
    v47 = v43;
    v48 = v107;
    v101(v100, v46, v107);
    v97 = v42;
    v93[1] = sub_2166D286C(qword_280E40390, type metadata accessor for ContentDescriptor);
    v93[0] = v44;
    sub_21700D734();
    type metadata accessor for Artwork(0);
    sub_21700CE04();
    v49 = v47;
    v50 = v101;
    v101(v45, v49, v48);
    sub_2166D286C(&qword_280E2BF60, type metadata accessor for Artwork);
    v51 = v40;
    sub_21700D734();
    sub_21700CE04();
    v52 = sub_21700CDB4();
    v54 = v53;
    v98(v32, v104);
    v55 = v97;
    v56 = (v51 + v97[7]);
    *v56 = v52;
    v56[1] = v54;
    sub_21700CE04();
    v50(v45, v110, v107);
    sub_216AC6598();
    v57 = v55[8];
    v58 = v55;
    v59 = v105;
    *(v105 + v57) = v60;
    sub_21700CE04();
    sub_21700CD24();
    v61 = v104;
    v62 = v98;
    v98(v32, v104);
    OUTLINED_FUNCTION_15_49(v58[9]);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    sub_21700CD94();
    v63 = OUTLINED_FUNCTION_10_53();
    v62(v63);
    OUTLINED_FUNCTION_15_49(v58[10]);
    sub_21700CE04();
    OUTLINED_FUNCTION_12_48();
    sub_21700D2E4();
    v64 = v61;
    (v62)(v32, v61);
    sub_21700CE04();
    sub_21700CD44();
    v65 = OUTLINED_FUNCTION_7_72();
    v62(v65);
    OUTLINED_FUNCTION_10_59(v58[11]);
    OUTLINED_FUNCTION_11_0();
    sub_21700CE04();
    sub_21700CD44();
    v66 = OUTLINED_FUNCTION_7_72();
    v62(v66);
    OUTLINED_FUNCTION_10_59(v58[12]);
    sub_21700CE04();
    sub_21700CD44();
    v67 = OUTLINED_FUNCTION_7_72();
    v62(v67);
    OUTLINED_FUNCTION_10_59(v58[13]);
    sub_21700CE04();
    sub_21700CD44();
    v68 = OUTLINED_FUNCTION_7_72();
    v62(v68);
    OUTLINED_FUNCTION_10_59(v58[14]);
    v69 = v94;
    sub_21700CE04();
    sub_21700CD44();
    v70 = v69;
    v71 = v64;
    (v62)(v70, v64);
    OUTLINED_FUNCTION_10_59(v58[15]);
    sub_21700CE04();
    v72 = sub_21700CDB4();
    v74 = v73;
    v75 = OUTLINED_FUNCTION_10_53();
    v62(v75);
    v76 = (v59 + v58[17]);
    *v76 = v72;
    v76[1] = v74;
    OUTLINED_FUNCTION_11_0();
    v77 = v95;
    sub_21700CE04();
    sub_21700CD44();
    (v62)(v77, v71);
    OUTLINED_FUNCTION_10_59(v58[18]);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v101(v100, v110, v107);
    OUTLINED_FUNCTION_12_48();
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    OUTLINED_FUNCTION_12_48();
    sub_21700D2E4();
    v78 = OUTLINED_FUNCTION_10_53();
    v62(v78);
    v79 = v96;
    sub_21700CE04();
    sub_21700CD44();
    v80 = v79;
    v81 = v71;
    (v62)(v80, v71);
    OUTLINED_FUNCTION_10_59(v58[19]);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    OUTLINED_FUNCTION_12_48();
    v82 = v110;
    sub_21700D2E4();
    v83 = OUTLINED_FUNCTION_10_53();
    v62(v83);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    OUTLINED_FUNCTION_12_48();
    sub_21700D2E4();
    (v62)(v32, v71);
    sub_21700CE04();
    v84 = sub_21700CDB4();
    v86 = v85;
    (*(v103 + 8))(v82, v107);
    (v62)(v41, v81);
    result = (v62)(v32, v81);
    v88 = (v59 + v97[24]);
    *v88 = v84;
    v88[1] = v86;
  }

  else
  {
    v89 = sub_21700E2E4();
    sub_2166D286C(&qword_280E2A0F8, MEMORY[0x277D22548]);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    v91 = v90;
    v92 = type metadata accessor for AlbumTrackLockup(0);
    *v91 = 25705;
    v91[1] = 0xE200000000000000;
    v91[2] = v92;
    (*(*(v89 - 8) + 104))(v91, *MEMORY[0x277D22530], v89);
    swift_willThrow();
    (*(v103 + 8))(v110, v107);
    v38(v99, v104);
    return sub_216697664(v105, &qword_27CAB6D58, &unk_217014E30);
  }

  return result;
}

void sub_216AF8C28(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v118 = a3;
  v10 = type metadata accessor for ContentDescriptor(0);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  v116 = v12 - v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  v117 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v119 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v120 = &v110 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v21 = OUTLINED_FUNCTION_36(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77();
  v121 = v22 - v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  v124 = &v110 - v25;
  v26 = type metadata accessor for Artwork(0);
  v27 = OUTLINED_FUNCTION_36(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v110 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  v35 = OUTLINED_FUNCTION_36(v34);
  MEMORY[0x28223BE20](v35);
  v37 = &v110 - v36;
  if (!sub_216F60DF4())
  {

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28D0, &unk_2170437F0);
    sub_2167880BC();
    swift_allocError();
    *v54 = xmmword_217014E10;
    *(v54 + 16) = v53;
    swift_willThrow();
    OUTLINED_FUNCTION_1_124();
    return;
  }

  v110 = a1;
  v114 = a4;
  v115 = a2;
  v38 = a5;
  v39 = sub_216F60C44();
  v41 = v40;
  v42 = type metadata accessor for AlbumTrackLockup(0);
  v43 = v42[5];
  v122 = v39;
  v123 = v41;
  v112 = v43;
  sub_21700F364();
  *&v44 = OUTLINED_FUNCTION_48(v38 + v42[6]);
  v111 = v45;
  v113 = v42;
  v46 = v38;
  v47 = v38 + v42[23];
  *(v47 + 32) = 0;
  *v47 = v44;
  *(v47 + 16) = v44;
  if (sub_216F619E4())
  {
    sub_216F6165C();
    sub_21691A084(v33, v30, type metadata accessor for Artwork);
    sub_216C7DA84(v30, v37);
    v48 = v5;
    if (v5)
    {
      OUTLINED_FUNCTION_6_71();
      v49 = 0;
      v50 = 0;
      v51 = v46;
      v52 = v113;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_6_71();
    v55 = 0;
  }

  else
  {
    v55 = 1;
    v48 = v5;
  }

  v51 = v46;
  v56 = type metadata accessor for Artwork(0);
  v57 = 1;
  __swift_storeEnumTagSinglePayload(v37, v55, 1, v56);
  v52 = v113;
  sub_21678818C(v37, v46 + v113[25], &qword_27CAB6D60, &qword_217014E40);
  v58 = sub_216F61A44();
  v59 = (v46 + v52[7]);
  *v59 = v58;
  v59[1] = v60;
  v61 = sub_216F61F84();
  v62 = v110;
  v63 = v121;
  if (v61)
  {
    sub_216F61D00();
    v64 = OUTLINED_FUNCTION_4_81();
    v65 = v119;
    sub_21691A084(v64, v119, v66);
    sub_21689C518(v65, v67, v68, v69, v70, v71, v72, v73, v110, v111, SWORD1(v111), SWORD2(v111), SBYTE6(v111), SHIBYTE(v111), v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
    if (v48)
    {
      OUTLINED_FUNCTION_0_146();
      v50 = 0;
      v49 = 1;
      goto LABEL_15;
    }

    v119 = v47;
    OUTLINED_FUNCTION_0_146();
    v57 = 0;
  }

  else
  {
    v119 = v47;
  }

  v74 = type metadata accessor for ContentDescriptor(0);
  v75 = v124;
  __swift_storeEnumTagSinglePayload(v124, v57, 1, v74);
  sub_21678818C(v75, v51 + v52[26], &qword_27CAB6A00, &unk_217016B60);
  v76 = sub_216F61FE4();
  OUTLINED_FUNCTION_13_47(v76, v52[11]);
  sub_216F62088();
  v78 = v77;
  v79 = sub_2167A74D4();
  v81 = sub_216F76E04(v78, v80, &type metadata for Link, v79);
  if (!v48)
  {
    *(v51 + v52[8]) = v81;
    v82 = sub_216F62290();
    v83 = v51 + v52[9];
    *v83 = v82;
    *(v83 + 8) = 0;
    v84 = sub_216F62534();
    v85 = v51 + v52[10];
    *v85 = v84;
    *(v85 + 8) = 0;
    v86 = sub_216F627E4();
    OUTLINED_FUNCTION_13_47(v86, v52[12]);
    v87 = sub_216F62A8C();
    OUTLINED_FUNCTION_13_47(v87, v52[13]);
    v88 = sub_216F62B30();
    OUTLINED_FUNCTION_13_47(v88, v52[14]);
    v89 = sub_216F62BD4();
    OUTLINED_FUNCTION_13_47(v89, v52[19]);
    v90 = sub_216F62C78();
    OUTLINED_FUNCTION_13_47(v90, v52[15]);
    if (sub_216F630E0())
    {
      sub_216F62D1C();
      v91 = OUTLINED_FUNCTION_4_81();
      v92 = v116;
      sub_21691A084(v91, v116, v93);
      sub_21689C518(v92, v94, v95, v96, v97, v98, v99, v100, v110, v111, SWORD1(v111), SWORD2(v111), SBYTE6(v111), SHIBYTE(v111), v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      OUTLINED_FUNCTION_0_146();
      v101 = 0;
    }

    else
    {
      v101 = 1;
    }

    OUTLINED_FUNCTION_1_124();
    __swift_storeEnumTagSinglePayload(v63, v101, 1, v74);
    sub_21678818C(v63, v51 + v52[16], &qword_27CAB6A00, &unk_217016B60);
    *&v102 = OUTLINED_FUNCTION_48(v51 + v52[20]);
    v103 = v51 + v52[21];
    *(v103 + 32) = 0;
    *v103 = v102;
    *(v103 + 16) = v102;
    v104 = (v51 + v52[17]);
    v105 = v114;
    *v104 = v118;
    v104[1] = v105;
    v106 = sub_21700D7A4();
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v106);
    OUTLINED_FUNCTION_48(v51 + v52[22]);
    *(v51 + v52[18]) = v107;
    v108 = (v51 + v52[24]);
    v109 = v115;
    *v108 = v62;
    v108[1] = v109;
    return;
  }

  v49 = 1;
  v50 = 1;
  v47 = v119;
LABEL_15:
  OUTLINED_FUNCTION_1_124();

  sub_216788110(v51 + v112);
  sub_216697664(v111, &qword_27CAB6DB0, &qword_217016C00);
  if (v49)
  {
  }

  sub_216697664(v47, &qword_27CAB6DB0, &qword_217016C00);
  if (v49)
  {
    sub_216697664(v51 + v52[25], &qword_27CAB6D60, &qword_217014E40);
  }

  if (v50)
  {
    sub_216697664(v51 + v52[26], &qword_27CAB6A00, &unk_217016B60);
  }
}

uint64_t sub_216AF9344(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216AF939C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216AF93F0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_216AF94C0(uint64_t a1)
{
  type metadata accessor for MusicEvent.Event(319);
  if (v1 <= 0x3F)
  {
    sub_2166D7C24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216AF9544(uint64_t a1)
{
  sub_2170061E4();
  if (v1 <= 0x3F)
  {
    sub_216AF95CC(319);
    if (v2 <= 0x3F)
    {
      sub_216AF964C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_216AF95CC(uint64_t a1)
{
  if (!qword_280E4A4E8)
  {
    sub_2170061E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74E8, &qword_217030A40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E4A4E8);
    }
  }
}

void sub_216AF964C()
{
  if (!qword_280E30318)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E30318);
    }
  }
}

uint64_t sub_216AF96B0(uint64_t a1, uint64_t a2)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28E0, &qword_217043958);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v84 = &v80 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v82 = v8 - v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v85 = &v80 - v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  v86 = &v80 - v13;
  sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v88 = v15;
  v89 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v87 = &v80 - v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v80 - v22;
  type metadata accessor for MusicEvent.Event(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v80 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v80 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28E8, qword_217043960);
  v35 = OUTLINED_FUNCTION_36(v34);
  MEMORY[0x28223BE20](v35);
  v37 = &v80 - v36;
  v39 = &v80 + *(v38 + 56) - v36;
  sub_2168CF038(a1, &v80 - v36);
  sub_2168CF038(a2, v39);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2168CF038(v37, v30);
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0, &qword_21705EE80) + 48);
      if (OUTLINED_FUNCTION_8_65() != 1)
      {
        sub_216697664(&v30[v46], &qword_27CAB74E8, &qword_217030A40);
        (*(v88 + 1))(v30, v89);
        goto LABEL_53;
      }

      v47 = v87;
      v48 = v88;
      v49 = v89;
      v81 = *(v88 + 4);
      v81(v87, v39, v89);
      v50 = v86;
      sub_2168CF09C(&v30[v46], v86);
      v51 = &v39[v46];
      v52 = v47;
      v53 = v85;
      sub_2168CF09C(v51, v85);
      LOBYTE(v47) = sub_217006184();
      v54 = v30;
      v55 = *(v48 + 1);
      v55(v54, v49);
      if ((v47 & 1) == 0)
      {
        OUTLINED_FUNCTION_9_64(v53);
        OUTLINED_FUNCTION_9_64(v50);
        v55(v52, v49);
        goto LABEL_65;
      }

      v88 = v55;
      v56 = v84;
      v57 = *(v83 + 48);
      sub_2168CF10C(v50, v84);
      sub_2168CF10C(v53, v56 + v57);
      OUTLINED_FUNCTION_15_6(v56);
      if (v44)
      {
        OUTLINED_FUNCTION_9_64(v53);
        OUTLINED_FUNCTION_9_64(v50);
        v88(v87, v49);
        OUTLINED_FUNCTION_15_6(v56 + v57);
        if (v44)
        {
          sub_216697664(v56, &qword_27CAB74E8, &qword_217030A40);
          goto LABEL_59;
        }

        goto LABEL_64;
      }

      v64 = v82;
      sub_2168CF10C(v56, v82);
      OUTLINED_FUNCTION_15_6(v56 + v57);
      if (v65)
      {
        OUTLINED_FUNCTION_9_64(v85);
        OUTLINED_FUNCTION_9_64(v86);
        v66 = v88;
        v88(v87, v49);
        v66(v64, v49);
LABEL_64:
        sub_216697664(v56, &qword_27CAC28E0, &qword_217043958);
        goto LABEL_65;
      }

      v81(v18, (v56 + v57), v49);
      OUTLINED_FUNCTION_1_125();
      sub_216AFB364(v67, v68, MEMORY[0x277CC9598]);
      v69 = sub_21700E494();
      v70 = v88;
      v88(v18, v49);
      OUTLINED_FUNCTION_51();
      sub_216697664(v71, v72, v73);
      OUTLINED_FUNCTION_51();
      sub_216697664(v74, v75, v76);
      v70(v87, v49);
      v70(v64, v49);
      OUTLINED_FUNCTION_51();
      sub_216697664(v77, v78, v79);
      if (v69)
      {
LABEL_59:
        sub_216AFB3AC(v37);
        v58 = 1;
      }

      else
      {
LABEL_65:
        sub_216AFB3AC(v37);
LABEL_54:
        v58 = 0;
      }

      return v58 & 1;
    case 2u:
      sub_2168CF038(v37, v27);
      v41 = *(v27 + 8);
      v40 = *(v27 + 16);
      if (OUTLINED_FUNCTION_8_65() != 2)
      {

        goto LABEL_53;
      }

      v43 = *(v39 + 1);
      v42 = *(v39 + 2);
      if ((sub_21688AE10(*v27) & 1) == 0)
      {

        goto LABEL_65;
      }

      v44 = v41 == v43 && v40 == v42;
      if (v44)
      {

        goto LABEL_59;
      }

      OUTLINED_FUNCTION_5_74();
      v45 = sub_21700F7D4();

      if (v45)
      {
        goto LABEL_59;
      }

      goto LABEL_65;
    case 3u:
      if (OUTLINED_FUNCTION_8_65() == 3)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 4u:
      if (OUTLINED_FUNCTION_8_65() == 4)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 5u:
      if (OUTLINED_FUNCTION_8_65() == 5)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 6u:
      if (OUTLINED_FUNCTION_8_65() == 6)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 7u:
      if (OUTLINED_FUNCTION_8_65() == 7)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 8u:
      if (OUTLINED_FUNCTION_8_65() == 8)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 9u:
      if (OUTLINED_FUNCTION_8_65() == 9)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0xAu:
      if (OUTLINED_FUNCTION_8_65() == 10)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0xBu:
      if (OUTLINED_FUNCTION_8_65() == 11)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0xCu:
      if (OUTLINED_FUNCTION_8_65() == 12)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0xDu:
      if (OUTLINED_FUNCTION_8_65() == 13)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0xEu:
      if (OUTLINED_FUNCTION_8_65() == 14)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0xFu:
      if (OUTLINED_FUNCTION_8_65() == 15)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0x10u:
      if (OUTLINED_FUNCTION_8_65() == 16)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0x11u:
      if (OUTLINED_FUNCTION_8_65() == 17)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 0x12u:
      if (OUTLINED_FUNCTION_8_65() == 18)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    default:
      sub_2168CF038(v37, v33);
      if (!OUTLINED_FUNCTION_8_65())
      {
        v59 = v88;
        v60 = v39;
        v61 = v89;
        (*(v88 + 4))(v23, v60, v89);
        v58 = sub_217006184();
        v62 = *(v59 + 1);
        v62(v23, v61);
        v62(v33, v61);
        sub_216AFB3AC(v37);
        return v58 & 1;
      }

      (*(v88 + 1))(v33, v89);
LABEL_53:
      sub_216697664(v37, &qword_27CAC28E8, qword_217043960);
      goto LABEL_54;
  }
}

uint64_t sub_216AF9EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_77();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  type metadata accessor for MusicEvent.Event(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168CF038(v1, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0, &qword_21705EE80) + 48);
      v32 = *(v12 + 32);
      v32(v16, v22, v10);
      sub_2168CF09C(&v22[v27], v9);
      MEMORY[0x21CEA0720](5);
      OUTLINED_FUNCTION_1_125();
      sub_216AFB364(v28, v29, MEMORY[0x277CC9588]);
      sub_21700E434();
      sub_2168CF10C(v9, v6);
      if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
      {
        sub_21700F914();
        sub_216697664(v9, &qword_27CAB74E8, &qword_217030A40);
        return (*(v12 + 8))(v16, v10);
      }

      else
      {
        v32(v19, v6, v10);
        sub_21700F914();
        sub_21700E434();
        v30 = *(v12 + 8);
        v30(v19, v10);
        sub_216697664(v9, &qword_27CAB74E8, &qword_217030A40);
        return (v30)(v16, v10);
      }

    case 2u:
      MEMORY[0x21CEA0720](6);
      sub_21700E614();

      OUTLINED_FUNCTION_51();
      sub_21700E614();

    case 3u:
      v26 = 0;
      goto LABEL_23;
    case 4u:
      v26 = 1;
      goto LABEL_23;
    case 5u:
      v26 = 2;
      goto LABEL_23;
    case 6u:
      v26 = 3;
      goto LABEL_23;
    case 7u:
      v26 = 7;
      goto LABEL_23;
    case 8u:
      v26 = 8;
      goto LABEL_23;
    case 9u:
      v26 = 9;
      goto LABEL_23;
    case 0xAu:
      v26 = 10;
      goto LABEL_23;
    case 0xBu:
      v26 = 11;
      goto LABEL_23;
    case 0xCu:
      v26 = 12;
      goto LABEL_23;
    case 0xDu:
      v26 = 13;
      goto LABEL_23;
    case 0xEu:
      v26 = 14;
      goto LABEL_23;
    case 0xFu:
      v26 = 15;
      goto LABEL_23;
    case 0x10u:
      v26 = 16;
      goto LABEL_23;
    case 0x11u:
      v26 = 17;
      goto LABEL_23;
    case 0x12u:
      v26 = 18;
LABEL_23:
      result = MEMORY[0x21CEA0720](v26);
      break;
    default:
      (*(v12 + 32))(v19, v22, v10);
      MEMORY[0x21CEA0720](4);
      OUTLINED_FUNCTION_1_125();
      sub_216AFB364(v23, v24, MEMORY[0x277CC9588]);
      sub_21700E434();
      result = (*(v12 + 8))(v19, v10);
      break;
  }

  return result;
}

uint64_t sub_216AFA420@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v124 = a2;
  v127 = a3;
  sub_21700D214();
  OUTLINED_FUNCTION_1();
  v119 = v5;
  v120 = v4;
  MEMORY[0x28223BE20](v4);
  v118 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  v113 = v9 - v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v116 = &v111 - v12;
  sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v114 = v14;
  v115 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v112 = v15 - v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v111 - v18;
  v20 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77();
  v111 = (v24 - v25);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  v121 = &v111 - v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v111 - v31;
  v33 = 0xE400000000000000;
  v125 = a1;
  sub_21700CE04();
  v122 = sub_21700CDB4();
  v123 = v20;
  v35 = v34;
  v36 = *(v22 + 8);
  v126 = v22 + 8;
  v36(v32, v20);
  if (v35)
  {
    v37 = 0xD000000000000011;
    OUTLINED_FUNCTION_17_5();
    v39 = v122;
    v40 = v122 == 0xD00000000000001DLL && v38 == v35;
    v117 = v36;
    if (v40)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_5_74();
    if (sub_21700F7D4())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_17_5();
    if (v39 == 0xD000000000000011 && v61 == v35)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_5_74();
    if (sub_21700F7D4())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_17_5();
    if (v39 == 0xD00000000000001ALL && v63 == v35)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_5_74();
    if (sub_21700F7D4())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_17_5();
    if (v39 == 0xD000000000000018 && v65 == v35)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_5_74();
    if (sub_21700F7D4())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_17_5();
    if (v39 == 0xD00000000000001BLL && v67 == v35)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_5_74();
    if (sub_21700F7D4())
    {
      goto LABEL_7;
    }

    if (v39 == 0x6144657461647075 && v35 == 0xEA00000000006574)
    {

      v71 = v116;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_5_74();
    v70 = sub_21700F7D4();
    v71 = v116;
    if (v70)
    {

LABEL_44:
      OUTLINED_FUNCTION_10_60();
      sub_21700CD54();
      v41 = v123;
      OUTLINED_FUNCTION_11_54();
      (v36)();
      v72 = v115;
      if (__swift_getEnumTagSinglePayload(v71, 1, v115) == 1)
      {
        v54 = 1702125924;
        v73 = v71;
LABEL_46:
        sub_216697664(v73, &qword_27CAB74E8, &qword_217030A40);
        v55 = MEMORY[0x277D22530];
        v33 = 0xE400000000000000;
        goto LABEL_12;
      }

      v74 = *(v114 + 32);
      v74(v19, v71, v72);
      v74(v127, v19, v72);
      type metadata accessor for MusicEvent.Event(0);
LABEL_48:
      swift_storeEnumTagMultiPayload();
      goto LABEL_9;
    }

    v54 = 1702125924;
    v75 = v39 == 0x6974617269707865 && v35 == 0xEE00657461446E6FLL;
    if (v75 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0))
    {

      OUTLINED_FUNCTION_10_60();
      v73 = v113;
      sub_21700CD54();
      v41 = v123;
      OUTLINED_FUNCTION_11_54();
      (v36)();
      v76 = v115;
      if (__swift_getEnumTagSinglePayload(v73, 1, v115) == 1)
      {
        goto LABEL_46;
      }

      v77 = v114;
      v78 = v112;
      (*(v114 + 32))(v112, v73, v76);
      v122 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0, &qword_21705EE80) + 48);
      (*(v77 + 16))(v127, v78, v76);
      sub_21700CE04();
      sub_21700CD54();
      OUTLINED_FUNCTION_11_54();
      (v36)();
      (*(v77 + 8))(v78, v76);
      type metadata accessor for MusicEvent.Event(0);
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_17_5();
    v80 = v122 == 0xD000000000000015 && v79 == v35;
    if (v80 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD000000000000018) ? (v82 = v81 == v35) : (v82 = 0), v82 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD000000000000011) ? (v84 = v83 == v35) : (v84 = 0), v84 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD00000000000001CLL) ? (v86 = v85 == v35) : (v86 = 0), v86 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD00000000000001ELL) ? (v88 = v87 == v35) : (v88 = 0), v88 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_12_49(), v40) ? (v90 = v35 == v89) : (v90 = 0), v90 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD00000000000001CLL) ? (v92 = v91 == v35) : (v92 = 0), v92 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD00000000000001ELL) ? (v94 = v93 == v35) : (v94 = 0), v94 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), v122 == 0xD000000000000015) ? (v96 = v95 == v35) : (v96 = 0), v96 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0) || ((OUTLINED_FUNCTION_17_5(), OUTLINED_FUNCTION_12_49(), v40) ? (v98 = v97 == v35) : (v98 = 0), v98 || (OUTLINED_FUNCTION_5_74(), (sub_21700F7D4() & 1) != 0)))))))))))
    {
LABEL_7:

      OUTLINED_FUNCTION_0_147();
LABEL_8:
      swift_storeEnumTagMultiPayload();
      v37 = v125;
      v41 = v123;
LABEL_9:
      v42 = v121;
      sub_21700CE04();
      v43 = v118;
      v44 = v119;
      v45 = v120;
      (*(v119 + 104))(v118, *MEMORY[0x277D21C38], v120);
      v46 = sub_21700CCE4();
      v48 = v47;
      sub_21700CF34();
      OUTLINED_FUNCTION_34();
      (*(v49 + 8))(v124);
      v50 = v37;
      v51 = v117;
      v117(v50, v41);
      (*(v44 + 8))(v43, v45);
      v51(v42, v41);
      result = type metadata accessor for MusicEvent(0);
      v53 = &v127[*(result + 20)];
      *v53 = v46;
      v53[8] = v48 & 1;
      return result;
    }

    OUTLINED_FUNCTION_17_5();
    OUTLINED_FUNCTION_12_49();
    if (!v40 || v99 != v35)
    {
      OUTLINED_FUNCTION_5_74();
      if ((sub_21700F7D4() & 1) == 0)
      {
        OUTLINED_FUNCTION_17_5();
        OUTLINED_FUNCTION_12_49();
        if (!v40 || v109 != v35)
        {
          OUTLINED_FUNCTION_5_74();
          if ((sub_21700F7D4() & 1) == 0)
          {
            v55 = MEMORY[0x277D22520];
            v54 = v122;
            v33 = v35;
            goto LABEL_12;
          }
        }

        goto LABEL_7;
      }
    }

    v33 = 0xE500000000000000;
    v101 = v121;
    v54 = 0x65706F6373;
    sub_21700CE04();
    sub_216AFB408();
    sub_21700CD14();
    v36(v101, v123);
    v102 = v128;
    if (v128 != 2)
    {
      v54 = 1684957547;
      v33 = 0xE400000000000000;
      v103 = v111;
      sub_21700CE04();
      v104 = sub_21700CDB4();
      v106 = v105;
      v36(v103, v123);
      if (v106)
      {
        v107 = v102 & 1;
        v108 = v127;
        *v127 = v107;
        *(v108 + 1) = v104;
        *(v108 + 2) = v106;
        type metadata accessor for MusicEvent.Event(0);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v54 = 1701667182;
  }

  v55 = MEMORY[0x277D22530];
LABEL_12:
  v56 = sub_21700E2E4();
  sub_216AFB364(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
  swift_allocError();
  v58 = v57;
  v59 = type metadata accessor for MusicEvent(0);
  *v58 = v54;
  v58[1] = v33;
  v58[2] = v59;
  (*(*(v56 - 8) + 104))(v58, *v55, v56);
  swift_willThrow();
  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v60 + 8))(v124);
  OUTLINED_FUNCTION_11_54();
  return (v36)();
}

uint64_t sub_216AFB138(uint64_t a1)
{
  sub_216AF9EF0(a1);
  v2 = (v1 + *(type metadata accessor for MusicEvent(0) + 20));
  if (*(v2 + 8) == 1)
  {
    return sub_21700F914();
  }

  v4 = *v2;
  sub_21700F914();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x21CEA0740](v5);
}

uint64_t sub_216AFB1AC(uint64_t a1, uint64_t a2)
{
  if ((sub_216AF96B0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MusicEvent(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = a2 + v4;
  result = *(v7 + 8);
  if ((v6 & 1) == 0)
  {
    return (*v5 == *v7) & ~result;
  }

  return result;
}

uint64_t sub_216AFB22C(uint64_t (*a1)(_BYTE *))
{
  sub_21700F8F4();
  a1(v3);
  return sub_21700F944();
}

uint64_t sub_216AFB2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_21700F8F4();
  a4(v6);
  return sub_21700F944();
}

uint64_t sub_216AFB364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216AFB3AC(uint64_t a1)
{
  v2 = type metadata accessor for MusicEvent.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216AFB408()
{
  result = qword_280E30310;
  if (!qword_280E30310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E30310);
  }

  return result;
}

unint64_t sub_216AFB46C(uint64_t a1)
{
  *(a1 + 8) = sub_216AFB49C();
  result = sub_216AFB4F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216AFB49C()
{
  result = qword_280E35C38;
  if (!qword_280E35C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E35C38);
  }

  return result;
}

unint64_t sub_216AFB4F0()
{
  result = qword_280E35C40[0];
  if (!qword_280E35C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35C40);
  }

  return result;
}

uint64_t sub_216AFB544()
{
  v1 = v0;
  *(v0 + 24) = 0;
  v2 = *MEMORY[0x277D7F958];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD68, &unk_217043AC0);
  swift_allocObject();
  *(v0 + 16) = sub_21700CC44();
  v3 = [objc_opt_self() sharedPrivacyInfo];
  v4 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_216AFB980;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_216A4FD0C;
  v8[3] = &block_descriptor_22;
  v5 = _Block_copy(v8);

  v6 = [v3 beginObservingPrivacyAcknowledgementForIdentifier:v2 handler:v5];
  _Block_release(v5);

  *(v1 + 24) = v6;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_216AFB6A4(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216AFB704(a2 & 1);
  }

  return result;
}

uint64_t sub_216AFB704(char a1)
{
  if (qword_27CAB5D38 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CAC2900);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2166A85FC(0xD000000000000027, 0x80000002170887D0, &v8);
    *(v5 + 12) = 1024;
    *(v5 + 14) = a1 & 1;
    _os_log_impl(&dword_216679000, v3, v4, "%s - isPrivacyAcknowledgementRequired: %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x21CEA1440](v6, -1, -1);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  v9 = a1 & 1;

  sub_21700CC34();
}

uint64_t sub_216AFB880()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC2900);
  __swift_project_value_buffer(v0, qword_27CAC2900);
  return sub_217007C94();
}

uint64_t sub_216AFB900()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_216AFB928()
{
  sub_216AFB900();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216AFB998()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF550();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216AFB9E4()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF528();
  return OUTLINED_FUNCTION_1_11(v0);
}

void sub_216AFBA30()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v154 = v3;
  v149 = v4;
  v127 = v5;
  v143 = v6;
  v151 = v7;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  OUTLINED_FUNCTION_1();
  v131 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v11 = OUTLINED_FUNCTION_8_0(v10);
  updated = type metadata accessor for SocialProfileUpdater.UserProfileUpdateProperties(v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38, &unk_217017F60);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v133 = v16 - v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v148 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  v147 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v141 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_70(&v126 - v25);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2948, &qword_217044008);
  OUTLINED_FUNCTION_1();
  v138 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2940, &qword_217044000);
  OUTLINED_FUNCTION_1();
  v152 = v30;
  v153 = v29;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77();
  v150 = v35 - v36;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  v155 = v38;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v39);
  v41 = &v126 - v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_53_1();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  v135 = v43;
  v44 = *(v43 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  v47 = &v126 - v46;
  v48 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__isUpdating;
  LOBYTE(v156) = 0;
  sub_217007DA4();
  v134 = *(v44 + 32);
  v134(v0 + v48, v47, v43);
  v49 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__artwork;
  type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  sub_2166A6EA4();
  v54 = v136;
  v145 = v41;
  v146 = v33;
  sub_217007DA4();
  v144 = v1;
  sub_216697664(v1, &qword_27CAB6D60, &qword_217014E40);
  v55 = *(v152 + 4);
  v142 = v49;
  v55(v2 + v49, v54, v153);
  v56 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__pickedImage;
  v156 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABD310, &qword_21702A090);
  v57 = v137;
  sub_217007DA4();
  (*(v138 + 32))(v2 + v56, v57, v139);
  v58 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__isDiscoverableByContact;
  LOBYTE(v156) = 0;
  sub_217007DA4();
  v59 = v135;
  v60 = v134;
  v134(v2 + v58, v47, v135);
  v61 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__isContactCheckAllowed;
  LOBYTE(v156) = 0;
  sub_217007DA4();
  v60(v2 + v61, v47, v59);
  v62 = v151;
  *(v2 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_objectGraph) = v151;
  type metadata accessor for UserSocialProfileCoordinator(0);
  v63 = type metadata accessor for ObjectGraph(0);

  OUTLINED_FUNCTION_7_4();
  v64 = v140;
  sub_21700E094();
  v65 = OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_userSocialProfileCoordinator;
  *(v2 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_userSocialProfileCoordinator) = v156;
  sub_2166A6EA4();
  v66 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  OUTLINED_FUNCTION_46_0(v64);
  if (v117)
  {
    sub_216697664(v64, &qword_27CAB7A38, &unk_217017F60);
LABEL_5:
    sub_216CAC834();
    OUTLINED_FUNCTION_98_0();

    goto LABEL_6;
  }

  v67 = (v64 + v66[7]);
  v62 = *v67;
  v63 = v67[1];
  sub_21700DF14();
  OUTLINED_FUNCTION_1_126();
  sub_216B042D4(v64, v68);
  if (!v63)
  {
    goto LABEL_5;
  }

LABEL_6:
  v69 = v143;
  OUTLINED_FUNCTION_25_33(v2 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__name);
  v158 = v62;
  v159 = v63;
  sub_21700DF14();
  sub_217007DA4();
  swift_endAccess();
  v70 = v141;
  sub_2166A6EA4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v66);
  v143 = v62;
  v140 = v63;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v70, &qword_27CAB7A38, &unk_217017F60);
  }

  else
  {
    v72 = (v70 + v66[8]);
    v73 = *v72;
    v74 = v72[1];
    sub_21700DF14();
    OUTLINED_FUNCTION_1_126();
    sub_216B042D4(v70, v75);
    if (v74)
    {
      goto LABEL_20;
    }
  }

  v76 = v65;
  v77 = *(v2 + v65);
  v73 = *&v77[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v78 = *(v73 + 16);
  v74 = v77;
  os_unfair_lock_lock(v78);
  v79 = *&v74[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v80 = *(v73 + 16);
  v81 = v79;
  os_unfair_lock_unlock(v80);

  if (v79 && (sub_2167DEA8C(v81), v82))
  {
    OUTLINED_FUNCTION_98_0();
  }

  else
  {
    if (v149)
    {
      v73 = v127;
    }

    else
    {
      v73 = 0;
    }

    if (v149)
    {
      v74 = v149;
    }

    else
    {
      v74 = 0xE000000000000000;
    }

    sub_21700DF14();
    swift_bridgeObjectRelease_n();
  }

  v65 = v76;
LABEL_20:
  OUTLINED_FUNCTION_25_33(v2 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__handle);
  v141 = v73;
  v158 = v73;
  v159 = v74;
  v139 = v74;
  sub_21700DF14();
  sub_217007DA4();
  swift_endAccess();
  swift_beginAccess();
  sub_2166A6EA4();
  sub_2166A6EA4();
  v83 = v142;
  OUTLINED_FUNCTION_25_33(v2 + v142);
  (*(v152 + 1))(v2 + v83, v153);
  sub_2166A6EA4();
  sub_217007DA4();
  v84 = OUTLINED_FUNCTION_82_14();
  sub_216697664(v84, v85, &qword_217014E40);
  swift_endAccess();
  v86 = v154;
  v87 = v147;
  sub_2166A6EA4();
  OUTLINED_FUNCTION_46_0(v87);
  if (v117)
  {
    sub_216697664(v87, &qword_27CAB7A38, &unk_217017F60);
  }

  else
  {
    v88 = *(v87 + v66[9]);
    OUTLINED_FUNCTION_1_126();
    sub_216B042D4(v87, v89);
    if (v88 != 2)
    {
      goto LABEL_27;
    }
  }

  v90 = *(v2 + v65);
  v91 = *&v90[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v92 = *(v91 + 16);
  v93 = v90;
  os_unfair_lock_lock(v92);
  v94 = *&v93[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v95 = *(v91 + 16);
  v96 = v94;
  os_unfair_lock_unlock(v95);

  if (v94)
  {
    LOBYTE(v88) = [v96 isPrivate];
  }

  else
  {
    LOBYTE(v88) = 0;
  }

LABEL_27:
  OUTLINED_FUNCTION_25_33(v2 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__isProfilePrivate);
  v97 = v88 & 1;
  LOBYTE(v157) = v97;
  sub_217007DA4();
  swift_endAccess();
  v98 = v148;
  sub_2166A6EA4();
  OUTLINED_FUNCTION_46_0(v98);
  LODWORD(v153) = v97;
  if (v117)
  {
    sub_216697664(v98, &qword_27CAB7A38, &unk_217017F60);
    v101 = 0;
  }

  else
  {
    v99 = *(v98 + v66[10]);
    OUTLINED_FUNCTION_1_126();
    sub_216B042D4(v98, v100);
    v101 = v99 ^ 1;
  }

  OUTLINED_FUNCTION_25_33(v2 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__isListeningToEnabled);
  LOBYTE(v157) = v101 & 1;
  sub_217007DA4();
  swift_endAccess();
  v102 = MEMORY[0x277D84F90];
  if (v69)
  {
    v103 = v69;
  }

  else
  {
    v103 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_25_33(v2 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__playlistDescriptors);
  v157 = v103;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2918, &qword_217043B38);
  sub_217007DA4();
  swift_endAccess();
  if (v69)
  {
    v148 = v65;
    v152 = v66;
    v104 = sub_2166BF3C8(v69);
    sub_21700DF14();
    v105 = 0;
    while (1)
    {
      if (v104 == v105)
      {

        v86 = v154;
        v66 = v152;
        v65 = v148;
        goto LABEL_49;
      }

      if ((v69 & 0xC000000000000001) != 0)
      {
        v106 = MEMORY[0x21CEA0220](v105, v69);
      }

      else
      {
        if (v105 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v106 = *(v69 + 8 * v105 + 32);
      }

      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        break;
      }

      if (sub_216B02EE8())
      {
        v109 = *(v106 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier);
        v108 = *(v106 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier + 8);
        sub_21700DF14();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v147 = v109;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21693776C();
          v102 = v113;
        }

        v111 = *(v102 + 16);
        if (v111 >= *(v102 + 24) >> 1)
        {
          sub_21693776C();
          v102 = v114;
        }

        *(v102 + 16) = v111 + 1;
        v112 = v102 + 16 * v111;
        *(v112 + 32) = v147;
        *(v112 + 40) = v108;
        v105 = v107;
      }

      else
      {

        ++v105;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_49:
  OUTLINED_FUNCTION_25_33(v2 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater__socialProfileSharedPlaylistIDs);
  v157 = v102;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
  sub_217007DA4();
  swift_endAccess();
  *(*(v2 + v65) + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs) = v102;
  sub_21700DF14();

  sub_2166A6EA4();
  OUTLINED_FUNCTION_46_0(v86);
  v115 = v133;
  if (v117)
  {

    v116 = 2;
LABEL_54:
    v121 = v128;
    v122 = v140;
    *v128 = v143;
    v121[1] = v122;
    v123 = v139;
    v121[2] = v141;
    v121[3] = v123;
    v124 = updated;
    sub_2167A4788();
    *(v121 + v124[7]) = v153;
    *(v121 + v124[8]) = v116;
    *(v121 + v124[9]) = v102;
    sub_216B043C4();
    OUTLINED_FUNCTION_143();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00, &qword_21701BD60);
    sub_2166D9530(&qword_280E2A2C8, &qword_27CAB8F00, &qword_21701BD60, MEMORY[0x277D21A98]);

    sub_21700D1D4();
    v125 = v130;
    sub_21700D1F4();

    __swift_destroy_boxed_opaque_existential_1Tm(&v156);
    (*(v131 + 8))(v125, v132);
    sub_216697664(v155, &qword_27CAB6D60, &qword_217014E40);
    sub_216697664(v86, &qword_27CAB7A38, &unk_217017F60);
    OUTLINED_FUNCTION_26();
    return;
  }

  sub_2166A6EA4();
  OUTLINED_FUNCTION_46_0(v115);
  if (!v117)
  {

    v118 = *(v115 + v66[10]);
    OUTLINED_FUNCTION_1_126();
    sub_216B042D4(v119, v120);
    v116 = (v118 & 1) == 0;
    goto LABEL_54;
  }

LABEL_57:
  __break(1u);
}

uint64_t sub_216AFC99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216AFCA14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2166A6EA4();

  sub_217007DF4();
  OUTLINED_FUNCTION_51();
  return sub_216697664(v2, v3, v4);
}

uint64_t sub_216AFCB18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71_13();
  OUTLINED_FUNCTION_34_25();
  return sub_217007DF4();
}

uint64_t sub_216AFCB74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71_13();
  OUTLINED_FUNCTION_34_25();
  sub_217007DF4();
  return sub_216AFF780();
}

uint64_t sub_216AFCBD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216B00FE0();
  }

  return result;
}

uint64_t sub_216AFCC2C(uint64_t a1)
{
  v3 = sub_216AFF318();
  v4 = sub_2166BF3C8(v3);
  v5 = (a1 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier);
  v6 = -v4;
  v7 = 4;
  while (v6 + v7 != 4)
  {
    v8 = v7 - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x21CEA0220](v7 - 4, v3);
    }

    else
    {
      if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v1 = *(v3 + 8 * v7);
    }

    if (*(v1 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier) == *v5 && *(v1 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier + 8) == v5[1])
    {

      goto LABEL_20;
    }

    v10 = sub_21700F7D4();

    if (v10)
    {

LABEL_20:
      v1 = sub_216AFF318();
      sub_216C746F0();
      if ((v1 & 0xC000000000000001) == 0)
      {
        v12 = *(v1 + 8 * v7);

        goto LABEL_22;
      }

LABEL_30:
      v12 = MEMORY[0x21CEA0220](v8, v1);
LABEL_22:

      swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_51();
      v13 = sub_217007DD4();
      *v14 = !*v14;
      v13(v19, 0);

      swift_getKeyPath();
      swift_getKeyPath();

      v15 = sub_217007DD4();
      v17 = v16;
      v18 = *v16;
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v17 = v18;
      if (!result || v18 < 0 || (v18 & 0x4000000000000000) != 0)
      {
        result = sub_216E17104();
        v18 = result;
        *v17 = result;
      }

      if (v8 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      else
      {
        *((v18 & 0xFFFFFFFFFFFFFF8) + 8 * v7) = v12;

        v15(v19, 0);

        sub_216B00B3C();
      }

      return result;
    }

    ++v7;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_29;
    }
  }
}

void sub_216AFCEF8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_217007DD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2918, &qword_217043B38);
  sub_2166D9530(&qword_27CAC2930, &qword_27CAC2918, &qword_217043B38, MEMORY[0x277D83960]);
  sub_21700E484();
  v2(&v3, 0);

  sub_216B00B3C();
}

uint64_t sub_216AFD014(char a1, uint64_t a2, unint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_40();
  sub_216AFF304(1);
  if (sub_216B010A0())
  {
    OUTLINED_FUNCTION_53();
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = a1 & 1;
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;
    v11 = sub_2166AF2EC();
    sub_21700DF14();
    OUTLINED_FUNCTION_68_13();
    swift_retain_n();
    v12 = sub_21700EE84();
    v19[3] = v11;
    v19[4] = MEMORY[0x277D225C0];
    v19[0] = v12;
    sub_21700E1C4();

    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_8();
    sub_217007DE4();

    type metadata accessor for Artwork(0);
    v14 = OUTLINED_FUNCTION_49_1();
    OUTLINED_FUNCTION_31_2(v14, v15, v16);
    if (v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    sub_216697664(v4, &qword_27CAB6D60, &qword_217014E40);
    sub_216B01774(a1 & 1, 0, v18, 0, a2, a3);
    return sub_216B04394(0, v18);
  }
}

void sub_216AFD240()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v60 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v7);
  v64 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v61 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v10);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v63 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v14 = OUTLINED_FUNCTION_8_0(v13);
  updated = type metadata accessor for SocialOnboardingUpdateUserAttributesAction(v14);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_36(v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18_40();
  v21 = sub_21700E384();
  if (sub_216AFF270(v21))
  {
    v27 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_70_10();
    *(&v69 + 1) = v27;
    *&v68 = sub_216AFF32C();
    *(&v68 + 1) = v28;
    OUTLINED_FUNCTION_72_15();
    v29 = OUTLINED_FUNCTION_35_29();
    sub_216939F54(v29, v30);
    sub_216788110(&v77);
    if (!v2)
    {
      goto LABEL_7;
    }

    v31 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v31 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      sub_21700DF14();
      OUTLINED_FUNCTION_70_10();
      *(&v69 + 1) = v27;
      *&v68 = v4;
      *(&v68 + 1) = v2;
      OUTLINED_FUNCTION_72_15();
      v32 = OUTLINED_FUNCTION_35_29();
    }

    else
    {
LABEL_7:
      OUTLINED_FUNCTION_70_10();
      *(&v69 + 1) = v27;
      *&v68 = sub_216AFF340();
      *(&v68 + 1) = v34;
      OUTLINED_FUNCTION_72_15();
      v32 = OUTLINED_FUNCTION_35_29();
    }

    sub_216939F54(v32, v33);
    v21 = v74;
    sub_216788110(&v77);
  }

  sub_21681AAB4(v21, v22, v23, v24, v25, v26, &v77);
  v74 = v77;
  v75 = v78;
  v35 = v80;
  v76 = v79;
  v36 = v81;
  v37 = v82;
  v38 = sub_216AFF430();
  if (v38 && (v39 = v38, v40 = UIImagePNGRepresentation(v38), v39, v40))
  {
    v41 = sub_217005FB4();
    v43 = v42;

    sub_21677A510(v35, v36);
    v35 = v41;
    v36 = v43;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_217007DE4();

    type metadata accessor for Artwork(0);
    v44 = OUTLINED_FUNCTION_49_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, v45, v46);
    sub_216697664(v0, &qword_27CAB6D60, &qword_217014E40);
    if (EnumTagSinglePayload == 1)
    {
      v37 = 1;
    }
  }

  sub_21700D234();
  v48 = v78;
  v49 = v77;
  v66[1] = v78;
  v66[0] = v77;
  *v67 = v79;
  *&v67[8] = v35;
  *&v67[16] = v36;
  v67[24] = v37;
  v50 = (v18 + *(updated + 20));
  *(v50 + 41) = *&v67[9];
  v51 = *v67;
  v50[1] = v48;
  v50[2] = v51;
  *v50 = v49;
  sub_21681AEB4(v66, &v68);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_21700E094();
  *(&v69 + 1) = updated;
  OUTLINED_FUNCTION_23_36();
  v70 = sub_216B03464(v52, v53, &unk_21701BEAC);
  __swift_allocate_boxed_opaque_existential_1(&v68);
  OUTLINED_FUNCTION_20_38();
  sub_216B0432C();
  (*(v61 + 16))(v59, v65, v64);
  (*(v60 + 104))(v59, *MEMORY[0x277D21E10], v62);
  sub_21700D5E4();
  (*(v60 + 8))(v59, v62);
  __swift_destroy_boxed_opaque_existential_1Tm(&v68);
  v54 = sub_2166AF2EC();
  OUTLINED_FUNCTION_68_13();
  swift_retain_n();
  v55 = sub_21700EE84();
  *(&v69 + 1) = v54;
  v70 = MEMORY[0x277D225C0];
  *&v68 = v55;
  sub_21700E1C4();

  OUTLINED_FUNCTION_68_13();

  (*(v61 + 8))(v65, v64);
  (*(v63 + 8))(v57, v58);
  OUTLINED_FUNCTION_22_37();
  sub_216B042D4(v18, v56);
  __swift_destroy_boxed_opaque_existential_1Tm(&v68);
  v68 = v74;
  v69 = v75;
  v70 = v76;
  v71 = v35;
  v72 = v36;
  v73 = v37;
  sub_21681AEEC(&v68);
  OUTLINED_FUNCTION_26();
}

void sub_216AFD94C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v39 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v4);
  sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v43 = v6;
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v42 = v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v41 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_4_1();
  updated = type metadata accessor for SocialOnboardingUpdateUserAttributesAction(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v16 = v15;
  sub_21700E384();
  if (v1)
  {
    v45 = 0x7461766972507369;
    v46 = 0xE900000000000065;
    sub_21700F364();
    v17 = sub_216AFF500();
    v18 = OUTLINED_FUNCTION_39_21(v17);
    OUTLINED_FUNCTION_36_28(v18);
    sub_216788110(v50);
  }

  OUTLINED_FUNCTION_83_13();
  v19 = sub_216AFF528();
  v20 = OUTLINED_FUNCTION_39_21(v19);
  OUTLINED_FUNCTION_36_28(v20);
  sub_216788110(v50);
  v45 = 0xD000000000000015;
  v46 = 0x8000000217082A90;
  OUTLINED_FUNCTION_83_13();
  v21 = sub_216AFF550();
  v22 = OUTLINED_FUNCTION_39_21(v21);
  OUTLINED_FUNCTION_36_28(v22);
  sub_216788110(v50);
  sub_21681AAB4(v49, v23, v24, v25, v26, v27, v50);
  sub_21700D234();
  v28 = (v16 + *(updated + 20));
  v29 = v50[1];
  *v28 = v50[0];
  v28[1] = v29;
  v28[2] = *v51;
  *(v28 + 41) = *&v51[9];
  type metadata accessor for ObjectGraph(0);
  OUTLINED_FUNCTION_82_14();
  sub_21700E094();
  OUTLINED_FUNCTION_34_25();
  sub_21700E094();
  v47 = updated;
  OUTLINED_FUNCTION_23_36();
  v48 = sub_216B03464(v30, v31, &unk_21701BEAC);
  __swift_allocate_boxed_opaque_existential_1(&v45);
  OUTLINED_FUNCTION_20_38();
  sub_216B0432C();
  v32 = OUTLINED_FUNCTION_26_22();
  v33(v32);
  (*(v39 + 104))(v38, *MEMORY[0x277D21E10], v40);
  sub_21700D5E4();
  (*(v39 + 8))(v38, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(&v45);
  v34 = sub_2166AF2EC();

  v35 = sub_21700EE84();
  v47 = v34;
  v48 = MEMORY[0x277D225C0];
  v45 = v35;
  sub_21700E1C4();

  (*(v43 + 8))(v42, v44);
  (*(v41 + 8))(v11, v37);
  OUTLINED_FUNCTION_22_37();
  sub_216B042D4(v16, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(&v45);
  OUTLINED_FUNCTION_26();
}

void sub_216AFDE5C()
{
  OUTLINED_FUNCTION_49();
  v77 = v1;
  v75 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  v6 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v67 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v10 = v9;
  OUTLINED_FUNCTION_4_1();
  v73 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v69 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  v70 = v13 - v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v17 = OUTLINED_FUNCTION_36(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v76 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v72 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_70(&v66 - v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  v68 = xmmword_217013DA0;
  *(inited + 16) = xmmword_217013DA0;
  v29 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = v29;
  *(inited + 48) = 1701736260;
  *(inited + 56) = 0xE400000000000000;
  v30 = sub_21700E384();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v6);
  sub_21700D6F4();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  *&v80 = v30;
  sub_2166EF9C4(&v80, v79);
  v34 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v78 = v34;
  OUTLINED_FUNCTION_10();
  sub_2166EF9D4();
  v35 = v78;
  v81 = v29;
  *&v80 = 0x657461676976616ELL;
  *(&v80 + 1) = 0xE800000000000000;
  sub_2166EF9C4(&v80, v79);
  swift_isUniquelyReferenced_nonNull_native();
  v78 = v35;
  OUTLINED_FUNCTION_10();
  sub_2166EF9D4();
  v36 = v78;
  v71 = v23;
  sub_2166A6EA4();
  OUTLINED_FUNCTION_31_2(v20, 1, v6);
  if (v37)
  {
    sub_216697664(v20, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v38 = v67;
    (*(v67 + 32))(v10, v20, v6);
    v39 = sub_217005DE4();
    v81 = v29;
    *&v80 = v39;
    *(&v80 + 1) = v40;
    sub_2166EF9C4(&v80, v79);
    swift_isUniquelyReferenced_nonNull_native();
    v78 = v36;
    OUTLINED_FUNCTION_10();
    sub_2166EF9D4();
    v36 = v78;
    (*(v38 + 8))(v10, v6);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v41 = sub_21700CF84();
  v42 = __swift_project_value_buffer(v41, qword_280E73DB0);
  v43 = v74;
  MEMORY[0x21CE9DD70](25965, 0xE200000000000000, 0x6D65744964697247, 0xEE006E6F74747542, v36, v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v44 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v68;
  v46 = v45 + v44;
  v47 = v75;
  (*(v3 + 16))(v46, v43, v75);
  v48 = OUTLINED_FUNCTION_74_0();
  v49(v48);
  OUTLINED_FUNCTION_7_4();
  sub_21700D244();
  (*(v3 + 8))(v43, v47);
  v50 = OUTLINED_FUNCTION_26_22();
  v51(v50);
  sub_216697664(v71, &qword_27CABA820, &unk_217018CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0, &unk_21701EC70);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_217018C90;
  sub_21700D234();
  *(v52 + 56) = type metadata accessor for CompleteSocialOnboardingAction(0);
  *(v52 + 64) = sub_216B03464(qword_280E30DD0, type metadata accessor for CompleteSocialOnboardingAction, &unk_217053220);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v52 + 32));
  v54 = *(v72 + 32);
  v55 = v76;
  v54(boxed_opaque_existential_1, v0, v76);
  sub_21700D234();
  v56 = type metadata accessor for DismissModalPresentationAction(0);
  *(v52 + 96) = v56;
  OUTLINED_FUNCTION_8_66();
  v59 = sub_216B03464(v57, v58, &unk_21706A900);
  *(v52 + 104) = v59;
  v60 = __swift_allocate_boxed_opaque_existential_1((v52 + 72));
  v54(v60, v0, v55);
  v61 = v60 + *(v56 + 20);
  *v61 = 0;
  v61[8] = 1;
  sub_21700D234();
  *(v52 + 136) = v56;
  *(v52 + 144) = v59;
  v62 = __swift_allocate_boxed_opaque_existential_1((v52 + 112));
  v54(v62, v0, v55);
  v63 = v62 + *(v56 + 20);
  *v63 = 0;
  v63[8] = 1;
  sub_21700D234();
  v64 = type metadata accessor for OpenSocialProfilePageAction(0);
  *(v52 + 176) = v64;
  *(v52 + 184) = sub_216B03464(&qword_27CABA688, type metadata accessor for OpenSocialProfilePageAction, &protocol conformance descriptor for OpenSocialProfilePageAction);
  v65 = __swift_allocate_boxed_opaque_existential_1((v52 + 152));
  v54((v65 + *(v64 + 20)), v0, v55);
  *v65 = 0;
  v65[1] = 0;
  sub_21700D394();
  OUTLINED_FUNCTION_26();
}

void sub_216AFE67C()
{
  OUTLINED_FUNCTION_49();
  v51 = v0;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v48 = v1;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_105();
  v47 = v3;
  v4 = OUTLINED_FUNCTION_4_1();
  v46 = type metadata accessor for PresentAlertAction(v4);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v44 = v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v49 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v43 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v12);
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  sub_216AFF304(0);
  v19 = sub_216983738(335);
  v41 = v20;
  v42 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
  v21 = (_s6ActionVMa(0) - 8);
  v22 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_217013DA0;
  v24 = v23 + v22;
  v40 = sub_216983738(181);
  v39 = v25;
  sub_217006214();
  v38 = sub_2170061F4();
  v37 = v26;
  v27 = *(v14 + 8);
  v28 = OUTLINED_FUNCTION_26_22();
  v27(v28);
  sub_217007F04();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_217006214();
  sub_2170061F4();
  OUTLINED_FUNCTION_84_1();
  v33 = OUTLINED_FUNCTION_26_22();
  v27(v33);
  v34 = (v23 + v22 + v21[8]);
  *v34 = v18;
  v34[1] = v22;
  *v24 = v38;
  *(v24 + 8) = v37;
  *(v24 + 16) = v40;
  *(v24 + 24) = v39;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0;
  sub_2167A4788();
  sub_216933384(v42, v41, v23, 0, 0, v53);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_21700D234();
  v35 = v44 + *(v46 + 20);
  v36 = v53[1];
  *v35 = v53[0];
  *(v35 + 16) = v36;
  *(v35 + 32) = v54;
  v52[3] = v46;
  v52[4] = sub_216B03464(qword_280E3EB18, type metadata accessor for PresentAlertAction, &unk_21703EA34);
  __swift_allocate_boxed_opaque_existential_1(v52);
  sub_216B0432C();
  (*(v48 + 104))(v47, *MEMORY[0x277D21E18], v50);
  sub_21700D5E4();

  (*(v48 + 8))(v47, v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  if (v51)
  {
    sub_216B00058();
  }

  sub_216B042D4(v44, type metadata accessor for PresentAlertAction);
  (*(v49 + 8))(v43, v45);
  OUTLINED_FUNCTION_26();
}

void sub_216AFEBA8()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_79_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_67_0();
  v9 = type metadata accessor for PromptSuggestedHandleAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  sub_216AFF304(0);
  sub_21700D234();
  v14 = (v13 + *(v9 + 20));
  *v14 = v4;
  v14[1] = v2;
  type metadata accessor for ObjectGraph(0);
  sub_21700DF14();
  OUTLINED_FUNCTION_33_26();
  sub_21700E094();
  v20[3] = v9;
  v20[4] = sub_216B03464(&qword_27CAC0D68, type metadata accessor for PromptSuggestedHandleAction, &unk_21703003C);
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_216B0432C();
  v15 = OUTLINED_FUNCTION_51_10();
  v16(v15);
  OUTLINED_FUNCTION_56_17();
  sub_21700D5E4();
  (*(v6 + 8))(v0, v19);
  v17 = OUTLINED_FUNCTION_57_16();
  v18(v17);
  sub_216B042D4(v13, type metadata accessor for PromptSuggestedHandleAction);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  OUTLINED_FUNCTION_26();
}

void sub_216AFEE24()
{
  OUTLINED_FUNCTION_49();
  v2 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598, qword_217037510);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = sub_216AFF32C();
  v18 = v0 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_initialProperties;
  v19 = v16 == *(v0 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_initialProperties) && v17 == *(v0 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_initialProperties + 8);
  if (v19)
  {
  }

  else
  {
    v20 = sub_21700F7D4();

    if ((v20 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (sub_216AFF340() == *(v18 + 16) && v21 == *(v18 + 24))
  {
  }

  else
  {
    v23 = sub_21700F7D4();

    if ((v23 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v38 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  updated = type metadata accessor for SocialProfileUpdater.UserProfileUpdateProperties(0);
  v24 = *(v7 + 48);
  sub_2166A6EA4();
  sub_2166A6EA4();
  OUTLINED_FUNCTION_31_2(v10, 1, v2);
  if (!v19)
  {
    sub_2166A6EA4();
    OUTLINED_FUNCTION_31_2(&v10[v24], 1, v2);
    if (!v28)
    {
      OUTLINED_FUNCTION_9_65();
      v32 = v38;
      sub_216B043C4();
      v33 = sub_21700C4A4();
      if (v33)
      {
        v34 = sub_21688ADC8(v1 + *(v2 + 20), v32 + *(v2 + 20));
        sub_216B042D4(v32, type metadata accessor for Artwork);
        sub_216697664(v15, &qword_27CAB6D60, &qword_217014E40);
        sub_216B042D4(v1, type metadata accessor for Artwork);
        sub_216697664(v10, &qword_27CAB6D60, &qword_217014E40);
        if ((v34 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }

      sub_216B042D4(v32, type metadata accessor for Artwork);
      OUTLINED_FUNCTION_51();
      sub_216697664(v35, v36, v37);
      sub_216B042D4(v1, type metadata accessor for Artwork);
      OUTLINED_FUNCTION_51();
LABEL_29:
      sub_216697664(v31, v29, v30);
      goto LABEL_30;
    }

    sub_216697664(v15, &qword_27CAB6D60, &qword_217014E40);
    sub_216B042D4(v1, type metadata accessor for Artwork);
LABEL_28:
    v29 = &qword_27CABE598;
    v30 = qword_217037510;
    v31 = v10;
    goto LABEL_29;
  }

  sub_216697664(v15, &qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_31_2(&v10[v24], 1, v2);
  if (!v19)
  {
    goto LABEL_28;
  }

  sub_216697664(v10, &qword_27CAB6D60, &qword_217014E40);
LABEL_20:
  if ((sub_216AFF500() & 1) == *(v18 + *(updated + 28)))
  {
    sub_216AFF7D4();
    sub_216E20CEC();
    v26 = v25;

    if ((v26 & 1) != 0 && (sub_216AFF87C() & 1) == 0)
    {
      v27 = sub_216AFF430();
      if (v27)
      {
      }
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_26();
}

BOOL sub_216AFF270(uint64_t a1)
{
  v1 = sub_216AFF32C();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = sub_216AFF340();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  return v8 != 0;
}

uint64_t sub_216AFF354(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_4();
  sub_217007DE4();

  return v3;
}

uint64_t sub_216AFF3BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_4();
  sub_217007DE4();
}

uint64_t sub_216AFF430()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216AFF4A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71_13();
  OUTLINED_FUNCTION_34_25();
  return sub_217007DF4();
}

uint64_t sub_216AFF5A4()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216AFF32C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_216AFF5E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_21700DF14();
  return a5(v7, v6);
}

uint64_t sub_216AFF650()
{
  OUTLINED_FUNCTION_92();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  sub_2166A6EA4();
  return sub_216AFCA14();
}

uint64_t sub_216AFF6E8()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF500();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216AFF734()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216AFF514();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216AFF780()
{
  v1 = *(v0 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_userSocialProfileCoordinator);
  *(v1 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs) = sub_216AFF7D4();
}

uint64_t sub_216AFF7E8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_4();
  sub_217007DE4();

  return v3;
}

uint64_t sub_216AFF87C()
{
  v1 = v0 + OBJC_IVAR____TtC7MusicUI20SocialProfileUpdater_initialProperties;
  v2 = *(v1 + *(type metadata accessor for SocialProfileUpdater.UserProfileUpdateProperties(0) + 32));
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_216AFF514() ^ v2;
  }

  return v3 & 1;
}

void sub_216AFF8D0()
{
  OUTLINED_FUNCTION_49();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  sub_21700DA84();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v20 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_40();
  v9 = type metadata accessor for DismissModalPresentationAction(0);
  v22[3] = v9;
  OUTLINED_FUNCTION_8_66();
  v22[4] = sub_216B03464(v10, v11, &unk_21706A900);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  sub_21700D234();
  v13 = boxed_opaque_existential_1 + *(v9 + 20);
  *v13 = 0;
  v13[8] = 1;
  type metadata accessor for ObjectGraph(0);
  OUTLINED_FUNCTION_80_12();
  sub_21700E094();
  OUTLINED_FUNCTION_33_26();
  sub_21700E094();
  v14 = OUTLINED_FUNCTION_61_13();
  v15(v14);
  v16 = OUTLINED_FUNCTION_51_10();
  v17(v16);
  OUTLINED_FUNCTION_56_17();
  sub_21700D5E4();

  (*(v3 + 8))(v0, v21);
  v18 = OUTLINED_FUNCTION_57_16();
  v19(v18);
  (*(v20 + 8))(v1, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  OUTLINED_FUNCTION_26();
}

void sub_216AFFB5C()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v37 = v2;
  v38 = v1;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v35 = v4;
  OUTLINED_FUNCTION_4_1();
  v33 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v34 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v32 = v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v36 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v31 = v10;
  OUTLINED_FUNCTION_4_1();
  v11 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v15);
  v39 = sub_21700D3B4();
  OUTLINED_FUNCTION_1();
  v30 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  v19 = v18;
  sub_21700D234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0, &unk_21701EC70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_217013D90;
  sub_21700D234();
  v21 = type metadata accessor for DismissModalPresentationAction(0);
  *(v20 + 56) = v21;
  OUTLINED_FUNCTION_8_66();
  *(v20 + 64) = sub_216B03464(v22, v23, &unk_21706A900);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 32));
  v25 = *(v13 + 32);
  v25(boxed_opaque_existential_1, v0, v11);
  v26 = boxed_opaque_existential_1 + *(v21 + 20);
  *v26 = 0;
  v26[8] = 1;
  sub_21700D234();
  v27 = type metadata accessor for PopToRootAction(0);
  *(v20 + 96) = v27;
  *(v20 + 104) = sub_216B03464(qword_280E424C0, type metadata accessor for PopToRootAction, &unk_217059F54);
  v28 = __swift_allocate_boxed_opaque_existential_1((v20 + 72));
  v25(v28, v0, v11);
  *(v28 + *(v27 + 20)) = 1;
  OUTLINED_FUNCTION_26_22();
  sub_21700D394();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_21700E094();
  v41[3] = v39;
  v41[4] = MEMORY[0x277D21D10];
  v29 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(v30 + 16))(v29, v19, v39);
  (*(v34 + 16))(v35, v32, v33);
  (*(v37 + 104))(v35, *MEMORY[0x277D21E10], v38);
  sub_21700D5E4();

  (*(v37 + 8))(v35, v38);
  (*(v34 + 8))(v32, v33);
  (*(v36 + 8))(v31, v40);
  (*(v30 + 8))(v19, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  OUTLINED_FUNCTION_26();
}

void sub_216B00058()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v21 = v3;
  v22 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  sub_21700DA84();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v20 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_40();
  v9 = type metadata accessor for PopAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  sub_216AFF304(0);
  sub_21700D234();
  type metadata accessor for ObjectGraph(0);
  OUTLINED_FUNCTION_80_12();
  sub_21700E094();
  OUTLINED_FUNCTION_33_26();
  sub_21700E094();
  v23[3] = v9;
  v23[4] = sub_216B03464(&qword_280E2B650, type metadata accessor for PopAction, &unk_217063020);
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_216B0432C();
  v14 = OUTLINED_FUNCTION_61_13();
  v15(v14);
  v16 = OUTLINED_FUNCTION_51_10();
  v17(v16);
  OUTLINED_FUNCTION_56_17();
  sub_21700D5E4();

  (*(v21 + 8))(v0, v22);
  v18 = OUTLINED_FUNCTION_57_16();
  v19(v18);
  (*(v20 + 8))(v1, v6);
  sub_216B042D4(v13, type metadata accessor for PopAction);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  OUTLINED_FUNCTION_26();
}

void sub_216B00350()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320, &unk_217019D00);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v74 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2928, &qword_217043CD0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  v12 = sub_21700E0D4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  v76[0] = v2;
  v19 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v12);
    v26 = &qword_27CAC2928;
    v27 = &qword_217043CD0;
    v28 = v11;
    goto LABEL_6;
  }

  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  (*(v14 + 32))(v18, v11, v12);
  sub_21700E0B4();
  v20 = sub_21700D704();
  v21 = OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_31_2(v21, v22, v20);
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_32_22();
    v25(v24);
    v26 = qword_27CAB8320;
    v27 = &unk_217019D00;
    v28 = v7;
LABEL_6:
    sub_216697664(v28, v26, v27);
LABEL_7:
    sub_216AFE67C();
LABEL_8:
    OUTLINED_FUNCTION_26();
    return;
  }

  v32 = sub_21700D6C4();
  v34 = v33;
  v75 = *(*(v20 - 8) + 8);
  v75(v7, v20);
  if (!v34)
  {
    goto LABEL_80;
  }

  v35 = HIBYTE(v34) & 0xF;
  v36 = v32 & 0xFFFFFFFFFFFFLL;
  if ((v34 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v34) & 0xF;
  }

  else
  {
    v37 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

LABEL_80:
    v56 = OUTLINED_FUNCTION_32_22();
    v57(v56);
    goto LABEL_7;
  }

  if ((v34 & 0x1000000000000000) != 0)
  {
    v70 = OUTLINED_FUNCTION_82_14();
    sub_216B03978(v70, v71, 10);
    v40 = v72;
    v55 = v73;
LABEL_79:

    if ((v55 & 1) == 0)
    {
      switch(sub_2169CA52C(v40))
      {
        case 4u:
          sub_21700E0B4();
          OUTLINED_FUNCTION_31_2(v0, 1, v20);
          if (v23)
          {
            sub_216697664(v0, qword_27CAB8320, &unk_217019D00);
            v60 = 0;
            v63 = 0;
          }

          else
          {
            v61 = sub_21700D6C4();
            v63 = v62;
            v75(v0, v20);
            if (v63)
            {
              v60 = v61;
            }

            else
            {
              v60 = 0;
            }
          }

          sub_216AFEBA8();
          OUTLINED_FUNCTION_143();
          v64 = swift_allocObject();
          swift_weakInit();
          v65 = swift_allocObject();
          v65[2] = v64;
          v65[3] = v60;
          v65[4] = v63;
          v66 = sub_2166AF2EC();

          v67 = sub_21700EE84();
          v76[3] = v66;
          v76[4] = MEMORY[0x277D225C0];
          v76[0] = v67;
          sub_21700E1C4();

          v68 = OUTLINED_FUNCTION_32_22();
          v69(v68);
          __swift_destroy_boxed_opaque_existential_1Tm(v76);
          break;
        case 6u:
          goto LABEL_80;
        default:
          sub_216AFE67C();
          v58 = OUTLINED_FUNCTION_32_22();
          v59(v58);
          break;
      }

      goto LABEL_8;
    }

    goto LABEL_80;
  }

  if ((v34 & 0x2000000000000000) == 0)
  {
    if ((v32 & 0x1000000000000000) != 0)
    {
      v38 = ((v34 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      OUTLINED_FUNCTION_82_14();
      v38 = sub_21700F444();
    }

    v39 = *v38;
    if (v39 == 43)
    {
      if (v36 >= 1)
      {
        if (v36 != 1)
        {
          v40 = 0;
          if (v38)
          {
            while (1)
            {
              OUTLINED_FUNCTION_14_17();
              if (!v23 & v41)
              {
                goto LABEL_77;
              }

              OUTLINED_FUNCTION_11_55();
              if (!v23)
              {
                goto LABEL_77;
              }

              v40 = v48 + v47;
              if (__OFADD__(v48, v47))
              {
                goto LABEL_77;
              }

              OUTLINED_FUNCTION_42_5();
              if (v23)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_68;
        }

        goto LABEL_77;
      }

      goto LABEL_95;
    }

    if (v39 != 45)
    {
      if (v36)
      {
        v40 = 0;
        if (v38)
        {
          while (1)
          {
            v51 = *v38 - 48;
            if (v51 > 9)
            {
              goto LABEL_77;
            }

            v52 = 10 * v40;
            if ((v40 * 10) >> 64 != (10 * v40) >> 63)
            {
              goto LABEL_77;
            }

            v40 = v52 + v51;
            if (__OFADD__(v52, v51))
            {
              goto LABEL_77;
            }

            ++v38;
            if (!--v36)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_68;
      }

LABEL_77:
      v40 = 0;
      v44 = 1;
      goto LABEL_78;
    }

    if (v36 >= 1)
    {
      if (v36 != 1)
      {
        v40 = 0;
        if (v38)
        {
          while (1)
          {
            OUTLINED_FUNCTION_14_17();
            if (!v23 & v41)
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_11_55();
            if (!v23)
            {
              goto LABEL_77;
            }

            v40 = v43 - v42;
            if (__OFSUB__(v43, v42))
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_42_5();
            if (v23)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_68:
        v44 = 0;
LABEL_78:
        v77 = v44;
        v55 = v44;
        goto LABEL_79;
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v76[0] = v32;
  v76[1] = v34 & 0xFFFFFFFFFFFFFFLL;
  if (v32 != 43)
  {
    if (v32 != 45)
    {
      if (v35)
      {
        while (1)
        {
          OUTLINED_FUNCTION_14_17();
          if (!v23 & v41)
          {
            break;
          }

          OUTLINED_FUNCTION_11_55();
          if (!v23)
          {
            break;
          }

          v40 = v54 + v53;
          if (__OFADD__(v54, v53))
          {
            break;
          }

          OUTLINED_FUNCTION_42_5();
          if (v23)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    if (v35)
    {
      if (v35 != 1)
      {
        OUTLINED_FUNCTION_75_12();
        while (1)
        {
          OUTLINED_FUNCTION_14_17();
          if (!v23 & v41)
          {
            break;
          }

          OUTLINED_FUNCTION_11_55();
          if (!v23)
          {
            break;
          }

          v40 = v46 - v45;
          if (__OFSUB__(v46, v45))
          {
            break;
          }

          OUTLINED_FUNCTION_42_5();
          if (v23)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_94;
  }

  if (v35)
  {
    if (v35 != 1)
    {
      OUTLINED_FUNCTION_75_12();
      while (1)
      {
        OUTLINED_FUNCTION_14_17();
        if (!v23 & v41)
        {
          break;
        }

        OUTLINED_FUNCTION_11_55();
        if (!v23)
        {
          break;
        }

        v40 = v50 + v49;
        if (__OFADD__(v50, v49))
        {
          break;
        }

        OUTLINED_FUNCTION_42_5();
        if (v23)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_77;
  }

LABEL_96:
  __break(1u);
}

uint64_t sub_216B009E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_21700D2A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277D21CA8], v6);
    v11 = sub_21700D294();
    (*(v7 + 8))(v9, v6);
    if (v11)
    {
      sub_216AFD014(1, a3, a4);
    }
  }

  return result;
}

void sub_216B00B3C()
{
  v1 = v0;
  v2 = sub_216AFF318();
  v3 = sub_2166BF3C8(v2);
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CEA0220](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    if (sub_216B02EE8())
    {
      v13 = v1;
      v7 = *(v6 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier);
      v8 = *(v6 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_identifier + 8);
      sub_21700DF14();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v5 = v11;
      }

      v9 = *(v5 + 16);
      if (v9 >= *(v5 + 24) >> 1)
      {
        sub_21693776C();
        v5 = v12;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v8;
      ++v4;
      v1 = v13;
    }

    else
    {

      ++v4;
    }
  }

  sub_216AFCB74();
}

uint64_t sub_216B00CC4()
{
  sub_216AFF7D4();
  type metadata accessor for SocialProfileUpdater.UserProfileUpdateProperties(0);
  sub_216E20CEC();
  v1 = v0;

  if (v1)
  {
    return 0;
  }

  else
  {
    return sub_216CAD8A0();
  }
}

void sub_216B00D3C(char a1, char a2)
{
  if (sub_216B00CC4())
  {
    OUTLINED_FUNCTION_143();
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = a1 & 1;
    OUTLINED_FUNCTION_143();
    swift_allocObject();
    swift_weakInit();
    v6 = sub_2166AF2EC();

    v7 = sub_21700EE84();
    v8[3] = v6;
    v8[4] = MEMORY[0x277D225C0];
    v8[0] = v7;
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    sub_216B01DA0(a2 & 1);
    if (a1)
    {

      sub_216AFF8D0();
    }
  }
}

uint64_t sub_216B00EAC(_BYTE *a1, uint64_t a2, char a3)
{
  if (*a1 != 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_216AFE67C();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216B01DA0(1);
  }

  if (a3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_216AFF8D0();
    }
  }

  return result;
}

uint64_t sub_216B00F84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216AFE67C();
  }

  return result;
}

uint64_t sub_216B00FE0()
{
  v0 = sub_216AFF318();
  result = sub_2166BF3C8(v0);
  v2 = result;
  for (i = 0; v2 != i; ++i)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x21CEA0220](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    sub_216B02834(0);
  }
}

UIImage *sub_216B010A0()
{
  v0 = sub_216AFF430();
  v1 = v0;
  if (v0)
  {
    v2 = UIImagePNGRepresentation(v0);

    if (v2)
    {
      v3 = sub_217005FB4();
      v5 = v4;

      sub_216CADA4C();
      v1 = v6;
      sub_21677A524(v3, v5);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void sub_216B01228(void *a1, char a2)
{
  if (sub_216B0113C())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v2;
    *(v5 + 32) = a2 & 1;
    v6 = sub_2166AF2EC();
    OUTLINED_FUNCTION_68_13();
    swift_retain_n();
    v7 = a1;
    v8 = sub_21700EE84();
    v9[3] = v6;
    v9[4] = MEMORY[0x277D225C0];
    v9[0] = v8;
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {

    sub_216B00D3C(a2 & 1, 1);
  }
}

void sub_216B01350(_BYTE *a1, void *a2, uint64_t a3, int a4)
{
  v8 = sub_21700B5A4();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_21700B5E4();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_21700B604();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v21 = &v27[-v20];
  if (*a1 == 1)
  {
    v22 = v19;
    v31 = v19;
    sub_2166AF2EC();
    v32 = a3;
    v29 = sub_21700EE84();
    sub_21700B5F4();
    sub_21700B634();
    v30 = *(v15 + 8);
    v30(v17, v22);
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    aBlock[4] = sub_216B0345C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2169F0990;
    aBlock[3] = &block_descriptor_23;
    v24 = _Block_copy(aBlock);
    v25 = a2;
    sub_21700B5C4();
    v36 = MEMORY[0x277D84F90];
    sub_216B03464(&qword_280E2A480, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
    v28 = a4;
    sub_2166D9530(&qword_280E29E50, &unk_27CABC970, &unk_2170187C0, MEMORY[0x277D83970]);
    sub_21700F214();
    v26 = v29;
    MEMORY[0x21CE9FC70](v21, v13, v10, v24);
    _Block_release(v24);

    (*(v35 + 8))(v10, v8);
    (*(v33 + 8))(v13, v34);
    v30(v21, v31);

    sub_216B00D3C(v28 & 1, 1);
  }
}
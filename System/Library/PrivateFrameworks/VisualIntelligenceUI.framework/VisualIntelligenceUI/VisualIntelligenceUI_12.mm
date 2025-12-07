uint64_t _s22VisualIntelligenceCore11CVDetectionO0aB2UIE15backgroundColor9isEnabled05SwiftE00G0VSb_tF_0(__n128 a1)
{
  v2 = v1;
  v3 = sub_21E13E2F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB020, &qword_21E14FAE8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = sub_21E13D874();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v2, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x277D78EB0])
  {
    (*(v12 + 96))(v15, v11);
    v17 = swift_projectBox();
    (*(v8 + 16))(v10, v17, v7);
    v18 = sub_21E13DD14();
    v20 = sub_21E067B88(v18, v19);
    v21 = sub_21E066994(v20);
    (*(v8 + 8))(v10, v7);
LABEL_3:

    return v21;
  }

  if (v16 == *MEMORY[0x277D78E58])
  {
    goto LABEL_5;
  }

  if (v16 == *MEMORY[0x277D78E80])
  {
    (*(v12 + 8))(v15, v11);
    return _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  else
  {
    if (v16 == *MEMORY[0x277D78E98])
    {
      (*(v12 + 96))(v15, v11);
      v23 = swift_projectBox();
      (*(v4 + 16))(v6, v23, v3);
      v24 = sub_21E13E2E4();
      v26 = sub_21E067B88(v24, v25);
      v21 = sub_21E066994(v26);
      (*(v4 + 8))(v6, v3);
      goto LABEL_3;
    }

    if (v16 == *MEMORY[0x277D78E90])
    {
LABEL_5:
      (*(v12 + 8))(v15, v11);
      return sub_21E1414D4();
    }

    if (v16 == *MEMORY[0x277D78E88])
    {
      (*(v12 + 8))(v15, v11);
      return sub_21E1414E4();
    }

    else if (v16 == *MEMORY[0x277D78EA0] || v16 == *MEMORY[0x277D78EA8])
    {
      (*(v12 + 8))(v15, v11);
      return sub_21E1414B4();
    }

    else if (v16 == *MEMORY[0x277D78E60])
    {
      (*(v12 + 8))(v15, v11);
      return sub_21E1414F4();
    }

    else if (v16 == *MEMORY[0x277D78E68] || v16 == *MEMORY[0x277D78DE0] || v16 == *MEMORY[0x277D78EB8])
    {
      (*(v12 + 8))(v15, v11);
      return sub_21E141434();
    }

    else if (v16 == *MEMORY[0x277D78E70] || v16 == *MEMORY[0x277D78E78])
    {
      (*(v12 + 8))(v15, v11);
      return sub_21E141504();
    }

    else
    {
      result = sub_21E142B04();
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_21E0685B4()
{
  result = qword_27CEAB9A0;
  if (!qword_27CEAB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB9A0);
  }

  return result;
}

uint64_t sub_21E068608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB9A8, &unk_21E151B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E068678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB9A8, &unk_21E151B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E0686E4()
{
  result = qword_27CEAB9B0;
  if (!qword_27CEAB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB9B0);
  }

  return result;
}

uint64_t sub_21E0687C0(uint64_t a1)
{
  result = sub_21E068F44(qword_27CEAB9C8, MEMORY[0x277D78EC0], MEMORY[0x277D78EC8]);
  *(a1 + 8) = result;
  return result;
}

void sub_21E06888C(uint64_t a1)
{
  sub_21E068CCC(319, &qword_27CEABA50, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_21E068CCC(319, &qword_27CEABA58, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21E06897C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 17;
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
    if (v5 > 0xFE)
    {
      return (*(v4 + 48))(&a1[v6 + 9] & ~v6);
    }

    v17 = a1[8];
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

void sub_21E068AD8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((((v9 + 9) & ~v9) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 17;
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
      if (v7 > 0xFE)
      {
        v17 = *(v6 + 56);
        v18 = &a1[v9 + 9] & ~v9;

        v17(v18);
      }

      else if (a2 > 0xFE)
      {
        a1[8] = 0;
        *a1 = a2 - 255;
      }

      else
      {
        a1[8] = -a2;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
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

void sub_21E068CCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_21E068D1C()
{
  result = qword_27CEABA60;
  if (!qword_27CEABA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABA68, &qword_21E151C88);
    sub_21E068DD4();
    sub_21DF23E5C(&qword_27CEABAB0, &qword_27CEAB9A8, &unk_21E151B00, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABA60);
  }

  return result;
}

unint64_t sub_21E068DD4()
{
  result = qword_27CEABA70;
  if (!qword_27CEABA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABA78, &qword_21E151C90);
    sub_21E068E8C();
    sub_21DF23E5C(&qword_27CEABAA0, &qword_27CEABAA8, &qword_21E151CA8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABA70);
  }

  return result;
}

unint64_t sub_21E068E8C()
{
  result = qword_27CEABA80;
  if (!qword_27CEABA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABA88, &qword_21E151C98);
    sub_21DF23E5C(&qword_27CEABA90, &qword_27CEABA98, &qword_21E151CA0, MEMORY[0x277CDF6D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABA80);
  }

  return result;
}

uint64_t sub_21E068F44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *NewActionModel.dataDetectors.getter()
{
  v0 = sub_21E13E3F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_21E13D994();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_21DFE76F0(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21DF23614(v6, &qword_27CEA6D98, &qword_21E145DC0);
    return 0;
  }

  (*(v8 + 32))(v13, v6, v7);
  (*(v8 + 16))(v10, v13, v7);
  if ((*(v8 + 88))(v10, v7) != *MEMORY[0x277D78F38])
  {
LABEL_7:
    v21 = *(v8 + 8);
    v21(v13, v7);
    v21(v10, v7);
    return 0;
  }

  (*(v8 + 96))(v10, v7);
  (*(v1 + 32))(v3, v10, v0);
  v14 = sub_21E13E3E4();
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = sub_21DF5BDD8(*(v14 + 16), 0);
    v18 = *(sub_21E13F274() - 8);
    v19 = v17;
    sub_21DF5ECBC(&v24, &v17[(*(v18 + 80) + 32) & ~*(v18 + 80)], v16, v15);
    v10 = v20;
    sub_21DF5F790();
    if (v10 != v16)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  (*(v1 + 8))(v3, v0);
  (*(v8 + 8))(v13, v7);
  return v19;
}

char *NewActionModel.dataDetectorsAsItems(entity:filterForUI:)(uint64_t a1, char a2)
{
  v107 = a1;
  v99 = *v2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B0, &unk_21E1477F0);
  MEMORY[0x28223BE20](v98);
  v97 = v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8, &qword_21E1557F0);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v108 = v87 - v8;
  MEMORY[0x28223BE20](v9);
  v96 = v87 - v10;
  v95 = sub_21E13D344();
  v11 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_21E13F1B4();
  v13 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_21E13F1F4();
  v15 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76B8, &qword_21E1472A8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v87 - v18;
  v20 = sub_21E13F274();
  v115 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v89 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v109 = v87 - v23;
  MEMORY[0x28223BE20](v24);
  v105 = v87 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = v87 - v27;
  v29 = NewActionModel.dataDetectors.getter();
  if (!v29)
  {
    return MEMORY[0x277D84F90];
  }

  v30 = v29;
  v111 = v20;
  if ((a2 & 1) == 0)
  {
LABEL_18:
    v117 = v30;

    sub_21E06B17C(&v117, v44);

    v45 = v101;
    if (*(v117 + 16))
    {
      v46 = *(v117 + 16);
      v100 = 0;
      v114 = *(v115 + 16);
      v47 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v87[1] = v117;
      v48 = (v117 + v47);
      v93 = (v115 + 56);
      v92 = (v11 + 8);
      v110 = *(v115 + 72);
      v91 = (v115 + 48);
      v88 = (v115 + 32);
      v115 += 16;
      v112 = (v115 - 8);
      v102 = (v13 + 1);
      v113 = MEMORY[0x277D84F90];
      v49 = v109;
      v50 = v46;
      v114(v109, v117 + v47, v20);
      while (1)
      {
        v51 = sub_21E13F224();
        if (v52)
        {
          v53 = v51;
          v54 = v52;
          v55 = sub_21E13F254();
          if (v56)
          {
            v57 = v56;
            v105 = v48;
            v106 = v50;
            v104 = v55;
            v58 = swift_allocObject();
            *(v58 + 32) = 1;
            *(v58 + 40) = 0;
            *(v58 + 48) = 0;
            *(v58 + 72) = 0;
            *(v58 + 80) = 0;
            v59 = *v93;
            (*v93)(v58 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable, 1, 1, v20);
            v60 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
            v61 = sub_21E13EEE4();
            (*(*(v61 - 8) + 56))(v58 + v60, 1, 1, v61);
            *(v58 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected) = 0;
            *(v58 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) = 1;
            sub_21E13D3F4();
            v62 = v94;
            _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
            v63 = sub_21E13D314();
            v65 = v64;
            (*v92)(v62, v95);
            *(v58 + 16) = v63;
            *(v58 + 24) = v65;
            *(v58 + 56) = v53;
            *(v58 + 64) = v54;
            *(v58 + 88) = v104;
            *(v58 + 96) = v57;
            v66 = v96;
            v114(v96, v109, v20);
            v59(v66, 0, 1, v20);
            v67 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
            swift_beginAccess();
            v68 = v108;
            sub_21E06C7C8(v58 + v67, v108);
            v69 = *(v98 + 48);
            v70 = v97;
            sub_21E06C7C8(v68, v97);
            sub_21E06C7C8(v66, v70 + v69);
            v71 = *v91;
            if ((*v91)(v70, 1, v20) == 1)
            {
              v72 = v71(v70 + v69, 1, v20);
              v48 = v105;
              if (v72 == 1)
              {
                sub_21DF23614(v70, &qword_27CEA77B8, &qword_21E1557F0);
                sub_21DF23614(v108, &qword_27CEA77B8, &qword_21E1557F0);
                goto LABEL_36;
              }

LABEL_33:
              sub_21DF23614(v70, &qword_27CEA77B0, &unk_21E1477F0);
              sub_21DF23614(v108, &qword_27CEA77B8, &qword_21E1557F0);
              goto LABEL_34;
            }

            v76 = v90;
            sub_21E06C7C8(v70, v90);
            if (v71(v70 + v69, 1, v20) == 1)
            {
              (*v112)(v76, v20);
              v48 = v105;
              goto LABEL_33;
            }

            v79 = v89;
            (*v88)(v89, v70 + v69, v20);
            sub_21E06C8C4(&qword_27CEA77C0, MEMORY[0x277D796D0], MEMORY[0x277D796E0]);
            v80 = sub_21E142074();
            v81 = *v112;
            (*v112)(v79, v20);
            v81(v76, v20);
            sub_21DF23614(v70, &qword_27CEA77B8, &qword_21E1557F0);
            sub_21DF23614(v108, &qword_27CEA77B8, &qword_21E1557F0);
            v48 = v105;
            if (v80)
            {
LABEL_36:
              swift_beginAccess();
              sub_21E06C854(v66, v58 + v67);
              swift_endAccess();
            }

            else
            {
LABEL_34:
              KeyPath = swift_getKeyPath();
              MEMORY[0x28223BE20](KeyPath);
              v87[-2] = v58;
              v87[-1] = v66;
              v116 = v58;
              sub_21E06C8C4(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
              v78 = v100;
              sub_21E13D3B4();
              v100 = v78;
            }

            v45 = v101;
            v50 = v106;
            sub_21DF23614(v66, &qword_27CEA77B8, &qword_21E1557F0);
            v20 = v111;
            v49 = v109;
            (*v112)(v109, v111);

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v82 = v113;
            }

            else
            {
              v82 = sub_21E06ABFC(0, *(v113 + 2) + 1, 1, v113);
            }

            v84 = *(v82 + 2);
            v83 = *(v82 + 3);
            if (v84 >= v83 >> 1)
            {
              v82 = sub_21E06ABFC((v83 > 1), v84 + 1, 1, v82);
            }

            *(v82 + 2) = v84 + 1;
            v113 = v82;
            v85 = &v82[16 * v84];
            *(v85 + 4) = v107;
            *(v85 + 5) = v58;
            goto LABEL_21;
          }
        }

        sub_21E13EBD4();
        v73 = sub_21E13F1A4();
        v74 = sub_21E142564();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_21DF05000, v73, v74, "Attempting to create a DataDetectorActionable, but the title or image name are missing", v75, 2u);
          MEMORY[0x223D540B0](v75, -1, -1);
        }

        (*v102)(v45, v103);
        (*v112)(v49, v20);
LABEL_21:
        v48 += v110;
        if (!--v50)
        {

          return v113;
        }

        v114(v49, v48, v20);
      }
    }

    return MEMORY[0x277D84F90];
  }

  v93 = v13;
  v100 = v11;
  v114 = *(v29 + 2);
  if (!v114)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_17:

    v30 = v32;
    v11 = v100;
    v13 = v93;
    goto LABEL_18;
  }

  v31 = 0;
  v104 = (v15 + 8);
  v102 = (v115 + 32);
  v112 = (v115 + 8);
  v113 = (v115 + 16);
  v32 = MEMORY[0x277D84F90];
  while (v31 < *(v30 + 16))
  {
    v33 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v34 = *(v115 + 72);
    (*(v115 + 16))(v28, v30 + v33 + v34 * v31, v20);
    sub_21E13F244();
    v35 = sub_21E13F1D4();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v19, 1, v35) == 1)
    {
      sub_21DF23614(v19, &qword_27CEA76B8, &qword_21E1472A8);
    }

    else
    {
      v37 = sub_21E13F1C4();
      v38 = (*(v36 + 8))(v19, v35);
      v39 = v106;
      MEMORY[0x223D52DD0](v38);

      LOBYTE(v37) = sub_21E13F1E4();
      (*v104)(v39, v110);
      if (v37)
      {
        v40 = *v102;
        (*v102)(v105, v28, v111);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21DF5BF68(0, *(v32 + 16) + 1, 1);
          v32 = v117;
        }

        v43 = *(v32 + 16);
        v42 = *(v32 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_21DF5BF68((v42 > 1), v43 + 1, 1);
          v32 = v117;
        }

        *(v32 + 16) = v43 + 1;
        v20 = v111;
        (v40)(v32 + v33 + v43 * v34, v105, v111);
        goto LABEL_7;
      }
    }

    v20 = v111;
    (*v112)(v28, v111);
LABEL_7:
    if (v114 == ++v31)
    {
      goto LABEL_17;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

char *sub_21E06A15C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABAE0, &unk_21E1580A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21E06A260(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7728, &qword_21E147740);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_21E06A364(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABAD8, &qword_21E151CF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA84F8, &qword_21E1491B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E06A498(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABAD0, &qword_21E151CF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_21E06A5D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7780, &qword_21E14FB50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_21E06A6D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABAE8, &qword_21E151D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7768, &qword_21E147780);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21E06A830(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_21E06AA0C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7748, &qword_21E147760);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7740, &qword_21E147758) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7740, &qword_21E147758) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21E06ABFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76F0, &qword_21E147700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21E06AD08(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7730, &qword_21E147748);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E06AE50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD2C0, &qword_21E1476D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21E06AF54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76D0, &qword_21E1476B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E06B060(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABAC8, &qword_21E151CE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void sub_21E06B17C(uint64_t *a1, __n128 a2)
{
  v3 = *(sub_21E13F274() - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_21E101928(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_21E06B224(v6);
  *a1 = v4;
}

void sub_21E06B224(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21E142AA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v5 = v3;
      v6 = v2 / 2;
      if (v2 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21E13F274();
        v7 = sub_21E142314();
        *(v7 + 16) = v6;
      }

      v8 = *(sub_21E13F274() - 8);
      v10[0] = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v10[1] = v6;
      sub_21E06B5F8(v10, v9, v11, a1, v5);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21E06B350(0, v2, 1, a1, v4);
  }
}

void sub_21E06B350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __n128 a5)
{
  v9 = sub_21E13F274();
  MEMORY[0x28223BE20](v9);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v34 - v12;
  v15 = MEMORY[0x28223BE20](v13);
  v48 = &v34 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v14 + 16);
    v18 = v14 + 16;
    v20 = *(v18 + 56);
    v45 = (v18 - 8);
    v46 = v19;
    v47 = v18;
    v42 = (v18 + 16);
    v43 = v17;
    v21 = (v17 + v20 * (a3 - 1));
    v41 = -v20;
    v22 = a1 - a3;
    v35 = v20;
    v23 = v17 + v20 * a3;
LABEL_5:
    v39 = v21;
    v40 = a3;
    v37 = v23;
    v38 = v22;
    v50 = v22;
    v24 = v21;
    while (1)
    {
      v25 = v48;
      v26 = v46;
      (v46)(v48, v23, v9, v15);
      v27 = v49;
      v26(v49, v24, v9);
      v28 = sub_21E13F264();
      v29 = sub_21E13F264();
      v30 = *v45;
      (*v45)(v27, v9);
      v30(v25, v9);
      if (v28 >= v29)
      {
LABEL_4:
        a3 = v40 + 1;
        v21 = &v39[v35];
        v22 = v38 - 1;
        v23 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v23, v9);
      swift_arrayInitWithTakeFrontToBack();
      v31(v24, v32, v9);
      v24 += v41;
      v23 += v41;
      if (__CFADD__(v50++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21E06B5F8(int64_t *a1, __n128 a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = v5;
  v120 = a1;
  v10 = sub_21E13F274();
  MEMORY[0x28223BE20](v10);
  v124 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v134 = &v117 - v13;
  MEMORY[0x28223BE20](v14);
  v140 = &v117 - v15;
  v18 = MEMORY[0x28223BE20](v16);
  v139 = &v117 - v19;
  v20 = a4[1];
  v129 = v17;
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_94:
    v6 = *v120;
    if (!*v120)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v129;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v22 = sub_21E101914(v22);
    }

    v142 = v22;
    v113 = *(v22 + 2);
    if (v113 >= 2)
    {
      while (*a4)
      {
        v114 = *&v22[16 * v113];
        v115 = *&v22[16 * v113 + 24];
        sub_21E06BFDC(*a4 + *(v10 + 72) * v114, *a4 + *(v10 + 72) * *&v22[16 * v113 + 16], *a4 + *(v10 + 72) * v115, v6, v112);
        if (v7)
        {
          goto LABEL_104;
        }

        if (v115 < v114)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_21E101914(v22);
        }

        if (v113 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v116 = &v22[16 * v113];
        *v116 = v114;
        *(v116 + 1) = v115;
        v142 = v22;
        sub_21E101888(v113 - 1);
        v22 = v142;
        v113 = *(v142 + 2);
        if (v113 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v118 = a5;
  v21 = 0;
  v137 = (v17 + 8);
  v138 = v17 + 16;
  v136 = (v17 + 32);
  v22 = MEMORY[0x277D84F90];
  v122 = a4;
  v141 = v10;
  while (1)
  {
    v130 = v22;
    if (v21 + 1 >= v20)
    {
      v34 = v21 + 1;
    }

    else
    {
      v131 = v20;
      v119 = v7;
      v23 = *a4;
      v121 = v21;
      v24 = v129[9];
      v6 = &v23[v24 * (v21 + 1)];
      v25 = v23;
      v135 = v23;
      v26 = v10;
      v27 = v129[2];
      v28 = v139;
      v27(v139, v6, v26, v18);
      v29 = &v25[v24 * v21];
      v30 = v140;
      v127 = v27;
      (v27)(v140, v29, v26);
      v132 = sub_21E13F264();
      v128 = sub_21E13F264();
      v31 = v129[1];
      v31(v30, v26);
      v126 = v31;
      v31(v28, v26);
      v32 = v121 + 2;
      v133 = v24;
      v33 = &v135[v24 * (v121 + 2)];
      while (1)
      {
        v34 = v131;
        if (v131 == v32)
        {
          break;
        }

        v35 = v127;
        LODWORD(v135) = v132 < v128;
        v36 = v139;
        v37 = v141;
        (v127)(v139, v33, v141);
        v38 = v140;
        v35(v140, v6, v37);
        v39 = sub_21E13F264();
        v40 = sub_21E13F264();
        v41 = v126;
        (v126)(v38, v37);
        v41(v36, v37);
        v22 = v130;
        ++v32;
        v33 += v133;
        v6 += v133;
        if (((v135 ^ (v39 >= v40)) & 1) == 0)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v7 = v119;
      v21 = v121;
      a4 = v122;
      v10 = v141;
      if (v132 < v128)
      {
        if (v34 < v121)
        {
          goto LABEL_123;
        }

        if (v121 < v34)
        {
          v42 = v133 * (v34 - 1);
          v6 = v34 * v133;
          v131 = v34;
          v43 = v34;
          v44 = v121;
          v45 = v121 * v133;
          do
          {
            if (v44 != --v43)
            {
              v46 = *a4;
              if (!v46)
              {
                goto LABEL_129;
              }

              v47 = *v136;
              (*v136)(v124, &v46[v45], v10);
              if (v45 < v42 || &v46[v45] >= &v46[v6])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v47(&v46[v42], v124, v10);
              a4 = v122;
              v22 = v130;
            }

            ++v44;
            v42 -= v133;
            v6 -= v133;
            v45 += v133;
          }

          while (v44 < v43);
          v7 = v119;
          v21 = v121;
          v34 = v131;
        }
      }
    }

    v48 = a4[1];
    if (v34 < v48)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v118)
      {
        if (__OFADD__(v21, v118))
        {
          goto LABEL_124;
        }

        if (v21 + v118 >= v48)
        {
          v6 = a4[1];
        }

        else
        {
          v6 = v21 + v118;
        }

        if (v6 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v6)
        {
          break;
        }
      }
    }

    v6 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_21E06A15C(0, *(v22 + 2) + 1, 1, v22);
    }

    v50 = *(v22 + 2);
    v49 = *(v22 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      v22 = sub_21E06A15C((v49 > 1), v50 + 1, 1, v22);
    }

    *(v22 + 2) = v51;
    v52 = &v22[16 * v50];
    *(v52 + 4) = v21;
    *(v52 + 5) = v6;
    v53 = *v120;
    if (!*v120)
    {
      goto LABEL_131;
    }

    v125 = v6;
    if (v50)
    {
      while (1)
      {
        v6 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v22 + 4);
          v55 = *(v22 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_52:
          if (v57)
          {
            goto LABEL_110;
          }

          v70 = &v22[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_113;
          }

          v76 = &v22[16 * v6 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_117;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v6 = v51 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v80 = &v22[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_66:
        if (v75)
        {
          goto LABEL_112;
        }

        v83 = &v22[16 * v6];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_115;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_73:
        v91 = v6 - 1;
        if (v6 - 1 >= v51)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a4)
        {
          goto LABEL_128;
        }

        v92 = *&v22[16 * v91 + 32];
        v93 = *&v22[16 * v6 + 40];
        sub_21E06BFDC(*a4 + v129[9] * v92, *a4 + v129[9] * *&v22[16 * v6 + 32], *a4 + v129[9] * v93, v53, v18);
        if (v7)
        {
          goto LABEL_104;
        }

        if (v93 < v92)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_21E101914(v22);
        }

        if (v91 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v94 = &v22[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        v142 = v22;
        sub_21E101888(v6);
        v22 = v142;
        v51 = *(v142 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v22[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_108;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_109;
      }

      v65 = &v22[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_111;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_114;
      }

      if (v69 >= v61)
      {
        v87 = &v22[16 * v6 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_118;
        }

        if (v56 < v90)
        {
          v6 = v51 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a4[1];
    v21 = v125;
    if (v125 >= v20)
    {
      goto LABEL_94;
    }
  }

  v119 = v7;
  v95 = *a4;
  v96 = v129[9];
  v135 = v129[2];
  v97 = &v95[v96 * (v34 - 1)];
  v132 = -v96;
  v133 = v95;
  v121 = v21;
  v98 = (v21 - v34);
  v123 = v96;
  v99 = &v95[v34 * v96];
  v125 = v6;
LABEL_85:
  v131 = v34;
  v126 = v99;
  v127 = v98;
  v128 = v97;
  v100 = v97;
  while (1)
  {
    v101 = v139;
    v102 = v135;
    (v135)(v139, v99, v10);
    v103 = v140;
    v102(v140, v100, v141);
    v104 = sub_21E13F264();
    v105 = sub_21E13F264();
    v106 = *v137;
    v107 = v103;
    v10 = v141;
    (*v137)(v107, v141);
    v106(v101, v10);
    if (v104 >= v105)
    {
LABEL_84:
      v34 = v131 + 1;
      v97 = v128 + v123;
      v98 = v127 - 1;
      v6 = v125;
      v99 = &v126[v123];
      if (v131 + 1 != v125)
      {
        goto LABEL_85;
      }

      v7 = v119;
      v21 = v121;
      a4 = v122;
      v22 = v130;
      if (v125 < v121)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v108 = *v136;
    v109 = v134;
    (*v136)(v134, v99, v10);
    swift_arrayInitWithTakeFrontToBack();
    v108(v100, v109, v10);
    v100 += v132;
    v99 += v132;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_21E06BFDC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, __n128 a5)
{
  v62 = sub_21E13F274();
  v9 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v48 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v65 = a1;
  v64 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v18;
    if (v18 >= 1)
    {
      v33 = -v14;
      v52 = a4;
      v53 = (v9 + 16);
      v51 = (v9 + 8);
      v34 = v32;
      v61 = a1;
      v54 = v33;
      do
      {
        v49 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v37 = a3;
        v55 = v35;
        v56 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v65 = v35;
            v63 = v49;
            goto LABEL_58;
          }

          v38 = v37;
          v50 = v32;
          v60 = v37 + v33;
          v39 = v34 + v33;
          v40 = *v53;
          v41 = v58;
          v42 = v34 + v33;
          v43 = v34;
          v44 = v62;
          (*v53)(v58, v42, v62);
          v45 = v59;
          (v40)(v59, v36, v44);
          v57 = sub_21E13F264();
          v46 = sub_21E13F264();
          v47 = *v51;
          (*v51)(v45, v44);
          v47(v41, v44);
          if (v57 < v46)
          {
            break;
          }

          v32 = v39;
          v37 = v60;
          if (v38 < v43 || v60 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v56;
            a1 = v61;
          }

          else
          {
            v36 = v56;
            a1 = v61;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v39;
          v33 = v54;
          v35 = v55;
          if (v39 <= v52)
          {
            a2 = v55;
            goto LABEL_57;
          }
        }

        v34 = v43;
        if (v38 < v55 || v60 >= v55)
        {
          a3 = v60;
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v61;
          v32 = v50;
          v33 = v54;
        }

        else
        {
          a3 = v60;
          a2 = v56;
          a1 = v61;
          v32 = v50;
          v33 = v54;
          if (v38 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v52);
    }

LABEL_57:
    v65 = a2;
    v63 = v32;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v17;
    v63 = a4 + v17;
    v60 = a3;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v9 + 16);
      v55 = v14;
      v56 = v9 + 16;
      v53 = (v9 + 8);
      v54 = v20;
      do
      {
        v61 = a1;
        v21 = v58;
        v22 = v62;
        v23 = v54;
        v54(v58, a2, v62);
        v24 = v59;
        v23(v59, a4, v22);
        v25 = a2;
        v26 = sub_21E13F264();
        v27 = sub_21E13F264();
        v28 = *v53;
        (*v53)(v24, v22);
        v28(v21, v22);
        if (v26 >= v27)
        {
          v29 = v55;
          v31 = a4 + v55;
          v30 = v61;
          if (v61 < a4 || v61 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v61 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = v31;
          a4 += v29;
        }

        else
        {
          v29 = v55;
          a2 = v25 + v55;
          v30 = v61;
          if (v61 < v25 || v61 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v61 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v30 + v29;
        v65 = a1;
      }

      while (a4 < v57 && a2 < v60);
    }
  }

LABEL_58:
  sub_21E06C5F0(&v65, &v64, &v63, MEMORY[0x277D796D0]);
}

uint64_t sub_21E06C5F0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_21E06C6D8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7778, &unk_21E147790);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_21E06C7C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8, &qword_21E1557F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E06C854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8, &qword_21E1557F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E06C8C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E06C90C()
{
  swift_getKeyPath();
  sub_21E06D3B8();
  sub_21E13D3C4();
}

uint64_t sub_21E06C980@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E06D3B8();
  sub_21E13D3C4();

  *a2 = *(v3 + 56);
}

void sub_21E06CA28(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  if (v3 == *(a1 + 16))
  {
    if (v3)
    {
      v4 = v2 == a1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 56) = a1;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (a1 + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E06D3B8();
    sub_21E13D3B4();
  }
}

void sub_21E06CB7C()
{
  if (!v0[4])
  {
    v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_update];
    v2 = v0[4];
    v0[4] = v1;
    v3 = v1;

    if (v3)
    {
      v4 = [objc_opt_self() mainRunLoop];
      [v3 addToRunLoop:v4 forMode:*MEMORY[0x277CBE738]];
    }

    swift_getKeyPath();
    sub_21E06D3B8();
    sub_21E13D3C4();

    v5 = *(v0[7] + 16);
    swift_beginAccess();
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      while (v7 < *(v0[2] + 16))
      {
        v8 = CACurrentMediaTime();
        swift_beginAccess();
        v9 = v0[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v0[2] = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = sub_21E00E474(v9);
        }

        if (v7 >= *(v9 + 2))
        {
          __break(1u);
          return;
        }

        v11 = &v9[v6];
        *(v11 + 5) = v8 - v7 * 3.14159265 * 0.125;
        v11[48] = 0;
        v0[2] = v9;
        swift_endAccess();
        v6 += 24;
        if (v5 == ++v7)
        {
          return;
        }
      }
    }
  }
}

void sub_21E06CD74()
{
  [*(v0 + 32) invalidate];
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;

  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = v2 + v4;
    if (*(v2 + v4 + 48))
    {
      goto LABEL_3;
    }

    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
    v9 = CACurrentMediaTime();
    swift_beginAccess();
    v10 = *(v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_21E00E474(v10);
    }

    if (v5 >= *(v10 + 2))
    {
      break;
    }

    v12 = fmod(v7 + ((v9 - v8) / 3.0 + (v9 - v8) / 3.0) * 3.14159265, 6.28318531);
    v13 = &v10[v4];
    *&v10[v4 + 32] = v12;
    *(v0 + 16) = v10;
    if (v5 >= *(v10 + 2))
    {
      goto LABEL_13;
    }

    *(v13 + 5) = 0;
    v13[48] = 1;
    *(v0 + 16) = v10;
    swift_endAccess();
LABEL_3:
    ++v5;
    v4 += 24;
    if (v3 == v5)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_21E06CEF8()
{
  v1 = v0;
  v2 = CACurrentMediaTime();
  swift_getKeyPath();
  sub_21E06D3B8();
  sub_21E13D3C4();

  v3 = *(*(v0 + 56) + 16);
  result = swift_beginAccess();
  if (v3)
  {
    v5 = 0;
    for (i = 0; v3 != i; ++i)
    {
      v7 = *(v1 + 16);
      if (i >= *(v7 + 16))
      {
        break;
      }

      v8 = v7 + v5;
      if ((*(v8 + 48) & 1) == 0)
      {
        v9 = fmod(*(v8 + 32) + ((v2 - *(v8 + 40)) / 3.0 + (v2 - *(v8 + 40)) / 3.0) * 3.14159265, 6.28318531);
        v10 = sin(v9);
        swift_getKeyPath();
        sub_21E13D3C4();

        swift_getKeyPath();
        sub_21E13D3E4();

        v11 = *(v1 + 56);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 56) = v11;
        if ((result & 1) == 0)
        {
          result = sub_21E00E44C(v11);
          v11 = result;
        }

        if (i >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        *(v11 + 8 * i + 32) = (v10 + 1.0) * 0.5 * 0.8 + 0.2;
        *(v1 + 56) = v11;
        swift_getKeyPath();
        sub_21E13D3D4();
      }

      v5 += 24;
    }
  }

  return result;
}

uint64_t sub_21E06D170()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI27VIUIPeriodicOpacityAnimator___observationRegistrar;
  v3 = sub_21E13D404();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VIUIPeriodicOpacityAnimator(uint64_t a1)
{
  result = qword_27CEABB00;
  if (!qword_27CEABB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E06D28C(uint64_t a1)
{
  result = sub_21E13D404();
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VIUIPeriodicOpacityAnimator.OpacityAnimationMetadata(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VIUIPeriodicOpacityAnimator.OpacityAnimationMetadata(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_21E06D3B8()
{
  result = qword_27CEA8790;
  if (!qword_27CEA8790)
  {
    type metadata accessor for VIUIPeriodicOpacityAnimator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8790);
  }

  return result;
}

void sub_21E06D410()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t type metadata accessor for ColorSchemeTracker(uint64_t a1)
{
  result = qword_280F6A970;
  if (!qword_280F6A970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E06D4EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_21E1414A4();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB10, &qword_21E151F18) + 36);
  sub_21DF491DC(v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21E13F444();
    result = (*(*(v13 - 8) + 32))(a1 + v12, v10, v13);
  }

  else
  {
    sub_21E142574();
    v15 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    result = (*(v5 + 8))(v7, v4);
  }

  *a1 = v11;
  return result;
}

uint64_t sub_21E06D704()
{
  v0 = sub_21E13F444();
  __swift_allocate_value_buffer(v0, qword_27CEB76F8);
  v1 = __swift_project_value_buffer(v0, qword_27CEB76F8);
  v2 = *MEMORY[0x277CDF3D0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_21E06D78C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CEA67D8 != -1)
  {
    swift_once();
  }

  v3 = sub_21E13F444();
  v4 = __swift_project_value_buffer(v3, qword_27CEB76F8);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_21E06D834(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_21E13F444();
  v5 = (*(*(v4 - 8) + 8))(a1, v4);
  return a2(v5);
}

unint64_t sub_21E06D8B0()
{
  result = qword_280F68F78;
  if (!qword_280F68F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABB10, &qword_21E151F18);
    sub_21E06D93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F78);
  }

  return result;
}

unint64_t sub_21E06D93C()
{
  result = qword_280F68DE8;
  if (!qword_280F68DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABB18, &unk_21E151F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68DE8);
  }

  return result;
}

uint64_t FeedbackControlBar.init(action:result:feedbackController:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, char *a8@<X8>)
{
  v47 = a5;
  v48 = a6;
  v45 = a3;
  v46 = a4;
  v43 = a1;
  v44 = a2;
  v10 = sub_21E13D344();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = *a7;
  v41 = a7[1];
  v42 = v17;
  v40 = a7[2];
  v18 = *(a7 + 1);
  v38 = *(a7 + 2);
  v39 = v18;
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for FeedbackControlBar(0);
  v20 = v19[9];
  v37 = v19[8];
  v21 = &a8[v20];
  v49 = 0;
  sub_21E141704();
  v22 = v51;
  *v21 = v50;
  *(v21 + 1) = v22;
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v23 = *(v11 + 16);
  v23(v13, v16, v10);
  sub_21E141704();
  v24 = *(v11 + 8);
  v24(v16, v10);
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v23(v13, v16, v10);
  sub_21E141704();
  v24(v16, v10);
  v25 = v19[7];
  v26 = sub_21E13DF64();
  (*(*(v26 - 8) + 56))(&a8[v25], 1, 1, v26);
  v27 = v19[5];
  v28 = sub_21E13D994();
  v29 = *(v28 - 8);
  (*(v29 + 32))(&a8[v27], v43, v28);
  result = (*(v29 + 56))(&a8[v27], 0, 1, v28);
  v31 = &a8[v19[6]];
  v32 = v45;
  *v31 = v44;
  *(v31 + 1) = v32;
  v33 = &a8[v19[12]];
  v34 = v47;
  *v33 = v46;
  *(v33 + 1) = v34;
  *(v33 + 2) = v48;
  v35 = &a8[v19[13]];
  LOBYTE(v34) = v41;
  *v35 = v42;
  v35[1] = v34;
  v35[2] = v40;
  v36 = v38;
  *(v35 + 1) = v39;
  *(v35 + 2) = v36;
  *&a8[v37] = 0;
  return result;
}

uint64_t ReportAConcernButton.init(action:result:feedbackController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for ReportAConcernButton(0);
  v15 = v14[6];
  v16 = sub_21E13DF64();
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = sub_21E13D994();
  v18 = *(v17 - 8);
  (*(v18 + 32))(a7, a1, v17);
  result = (*(v18 + 56))(a7, 0, 1, v17);
  v20 = (a7 + v14[5]);
  *v20 = a2;
  v20[1] = a3;
  v21 = (a7 + v14[7]);
  *v21 = a4;
  v21[1] = a5;
  v21[2] = a6;
  return result;
}

uint64_t sub_21E06DE44@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21DF236C0(v2, &v14 - v9, &qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E13F444();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21E142574();
    v13 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t FeedbackControlBar.yOffset.setter(double a1)
{
  result = type metadata accessor for FeedbackControlBar(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t FeedbackControlBar.init(resultLookupState:feedbackController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v31 = a3;
  v32 = a4;
  v29 = a1;
  v30 = a2;
  v6 = sub_21E13D344();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for FeedbackControlBar(0);
  *&a5[v13[8]] = 0x4047000000000000;
  v14 = &a5[v13[9]];
  v33 = 0;
  sub_21E141704();
  v15 = v35;
  *v14 = v34;
  *(v14 + 1) = v15;
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v16 = *(v7 + 16);
  v16(v9, v12, v6);
  sub_21E141704();
  v17 = *(v7 + 8);
  v17(v12, v6);
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v16(v9, v12, v6);
  sub_21E141704();
  v17(v12, v6);
  v18 = v13[7];
  v19 = sub_21E13DF64();
  v20 = *(v19 - 8);
  (*(v20 + 32))(&a5[v18], v29, v19);
  (*(v20 + 56))(&a5[v18], 0, 1, v19);
  v21 = v13[5];
  v22 = sub_21E13D994();
  result = (*(*(v22 - 8) + 56))(&a5[v21], 1, 1, v22);
  v24 = &a5[v13[6]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &a5[v13[12]];
  v26 = v31;
  *v25 = v30;
  *(v25 + 1) = v26;
  *(v25 + 2) = v32;
  v27 = &a5[v13[13]];
  *v27 = 0;
  v27[2] = 0;
  *(v27 + 1) = 0;
  *(v27 + 2) = 0;
  return result;
}

uint64_t FeedbackControlBar.FeedbackSelection.hashValue.getter()
{
  v1 = *v0;
  sub_21E142C14();
  MEMORY[0x223D53460](v1);
  return sub_21E142C44();
}

uint64_t sub_21E06E460@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_21E13D304();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeedbackControlBar(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABBB8, &qword_21E152148);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  *v11 = sub_21E140004();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC00, &qword_21E1521D0);
  sub_21E06E8C0(v1, &v11[*(v12 + 44)]);
  v13 = *(v1 + *(v6 + 40));
  v14 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABBD0, &qword_21E152150) + 36)];
  *v14 = 0;
  *(v14 + 1) = v13;
  v15 = v1;
  v30 = v1;
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v31;
  sub_21E077ACC(v15, v31, type metadata accessor for FeedbackControlBar);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_21E077B34(v16, v18 + v17, type metadata accessor for FeedbackControlBar);
  v19 = &v11[*(v9 + 36)];
  *v19 = sub_21E077B9C;
  v19[1] = v18;
  v19[2] = 0;
  v19[3] = 0;
  v20 = v2 + *(v6 + 56);
  v38 = *v20;
  v39 = *(v20 + 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8, &qword_21E147E98);
  MEMORY[0x223D52200](&v37, v21);
  v22 = v37;
  swift_getKeyPath();
  v38 = v22;
  sub_21E078B1C(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3C4();

  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController__lastResetDate;
  swift_beginAccess();
  v24 = v34;
  v25 = v35;
  (*(v3 + 16))(v34, v22 + v23, v35);

  v26 = v31;
  sub_21E077ACC(v30, v31, type metadata accessor for FeedbackControlBar);
  v27 = swift_allocObject();
  sub_21E077B34(v26, v27 + v17, type metadata accessor for FeedbackControlBar);
  sub_21E076FA8();
  sub_21E078B1C(&qword_27CEAA468, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  sub_21E141334();

  (*(v3 + 8))(v24, v25);
  return sub_21DF23614(v11, &qword_27CEABBB8, &qword_21E152148);
}

uint64_t sub_21E06E8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC18, &qword_21E152230);
  MEMORY[0x28223BE20](v123);
  v119 = (&v101 - v3);
  v117 = sub_21E13F444();
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v112 = &v101 - v6;
  v118 = sub_21E141D94();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v114 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13D384();
  MEMORY[0x28223BE20](v8 - 8);
  v104 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E1420E4();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for FeedbackControlBar(0);
  v12 = v11 - 8;
  v101 = *(v11 - 8);
  v13 = *(v101 + 64);
  MEMORY[0x28223BE20](v11);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC20, &qword_21E152238);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v15 = &v101 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC28, &qword_21E152240);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v101 - v17;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC30, &qword_21E152248);
  MEMORY[0x28223BE20](v105);
  v107 = &v101 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC38, &qword_21E152250);
  MEMORY[0x28223BE20](v20 - 8);
  v106 = &v101 - v21;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC40, &qword_21E152258);
  MEMORY[0x28223BE20](v109);
  v108 = &v101 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC48, &qword_21E152260);
  MEMORY[0x28223BE20](v23 - 8);
  v110 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v111 = &v101 - v26;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC50, &qword_21E152268);
  MEMORY[0x28223BE20](v120);
  v122 = &v101 - v27;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC58, &qword_21E152270);
  MEMORY[0x28223BE20](v121);
  v29 = &v101 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC60, &qword_21E152278);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v101 - v34;
  if (*(a1 + *(v12 + 60)))
  {
    goto LABEL_6;
  }

  if (qword_280F69E50 != -1)
  {
    swift_once();
  }

  if (byte_280F6FD20 != 1)
  {
LABEL_6:
    sub_21E077ACC(a1, &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeedbackControlBar);
    v58 = (*(v101 + 80) + 16) & ~*(v101 + 80);
    v59 = swift_allocObject();
    v60 = sub_21E077B34(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v59 + v58, type metadata accessor for FeedbackControlBar);
    MEMORY[0x28223BE20](v60);
    *(&v101 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC68, &qword_21E152280);
    sub_21E0787A4(&qword_27CEABC70, &qword_27CEABC68, &qword_21E152280, sub_21E077FB8);
    sub_21E141764();
    sub_21E142084();
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      v61 = [objc_opt_self() mainBundle];
    }

    sub_21E13D374();
    v125 = sub_21E142184();
    v126 = v62;
    sub_21DF23E5C(&qword_27CEABCA8, &qword_27CEABC20, &qword_21E152238, MEMORY[0x277CDF028]);
    sub_21DF252E0();
    v63 = v103;
    sub_21E141024();

    (*(v102 + 8))(v15, v63);
    v64 = sub_21E141CC4();
    v66 = v65;
    v67 = [objc_opt_self() secondarySystemFillColor];
    v68 = sub_21E141414();
    v69 = v112;
    sub_21E06DE44(v112);
    v70 = v115;
    v71 = v113;
    v72 = v117;
    (*(v115 + 104))(v113, *MEMORY[0x277CDF3D0], v117);
    v73 = sub_21E13F434();
    v74 = *(v70 + 8);
    v74(v71, v72);
    v74(v69, v72);
    v75 = v116;
    v76 = MEMORY[0x277CE13B0];
    if ((v73 & 1) == 0)
    {
      v76 = MEMORY[0x277CE13B8];
    }

    v77 = v114;
    v78 = v118;
    (*(v116 + 104))(v114, *v76, v118);
    v79 = v107;
    v80 = &v107[*(v105 + 36)];
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABCB0, &qword_21E1522A0);
    (*(v75 + 32))(&v80[*(v81 + 36)], v77, v78);
    *v80 = v68;
    *(v80 + 4) = 256;
    v82 = &v80[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABCB8, &qword_21E1522A8) + 36)];
    *v82 = v64;
    v82[1] = v66;
    sub_21DF3DE9C(v18, v79, &qword_27CEABC28, &qword_21E152240);
    v83 = v106;
    sub_21DF3DE9C(v79, v106, &qword_27CEABC30, &qword_21E152248);
    LOBYTE(v80) = sub_21E140964();
    sub_21E13F374();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = v83;
    v93 = v108;
    sub_21DF3DE9C(v92, v108, &qword_27CEABC38, &qword_21E152250);
    v94 = v93 + *(v109 + 36);
    *v94 = v80;
    *(v94 + 8) = v85;
    *(v94 + 16) = v87;
    *(v94 + 24) = v89;
    *(v94 + 32) = v91;
    *(v94 + 40) = 0;
    sub_21E0781BC();
    v95 = v111;
    sub_21E141164();
    sub_21DF23614(v93, &qword_27CEABC40, &qword_21E152258);
    v52 = &qword_27CEABC48;
    v53 = &qword_21E152260;
    v96 = v110;
    sub_21DF236C0(v95, v110, &qword_27CEABC48, &qword_21E152260);
    v97 = v119;
    *v119 = 0;
    *(v97 + 8) = 1;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABCF0, &qword_21E1522B0);
    sub_21DF236C0(v96, v97 + *(v98 + 48), &qword_27CEABC48, &qword_21E152260);
    sub_21DF23614(v96, &qword_27CEABC48, &qword_21E152260);
    sub_21DF236C0(v97, v122, &qword_27CEABC18, &qword_21E152230);
    swift_storeEnumTagMultiPayload();
    v99 = MEMORY[0x277CE14C0];
    sub_21DF23E5C(&qword_27CEABCF8, &qword_27CEABC58, &qword_21E152270, MEMORY[0x277CE14C0]);
    sub_21DF23E5C(&qword_27CEABD00, &qword_27CEABC18, &qword_21E152230, v99);
    sub_21E1402F4();
    sub_21DF23614(v97, &qword_27CEABC18, &qword_21E152230);
    v57 = v95;
  }

  else
  {
    *v35 = sub_21E140004();
    *(v35 + 1) = 0x4014000000000000;
    v35[16] = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD08, &qword_21E1522B8);
    sub_21E06F750(a1, &v35[*(v36 + 44)]);
    v37 = sub_21E140904();
    sub_21E13F374();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD10, &qword_21E1522C0) + 36)];
    *v46 = v37;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    v47 = sub_21E141CC4();
    v49 = v48;
    v50 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD18, &qword_21E1522C8) + 36)];
    sub_21E0732A8(v50);
    v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD20, &qword_21E1522D0) + 36));
    *v51 = v47;
    v51[1] = v49;
    v52 = &qword_27CEABC60;
    v53 = &qword_21E152278;
    sub_21DF236C0(v35, v32, &qword_27CEABC60, &qword_21E152278);
    *v29 = 0;
    v29[8] = 1;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD28, &unk_21E1522D8);
    sub_21DF236C0(v32, &v29[*(v54 + 48)], &qword_27CEABC60, &qword_21E152278);
    v55 = &v29[*(v54 + 64)];
    *v55 = 0;
    v55[8] = 1;
    sub_21DF23614(v32, &qword_27CEABC60, &qword_21E152278);
    sub_21DF236C0(v29, v122, &qword_27CEABC58, &qword_21E152270);
    swift_storeEnumTagMultiPayload();
    v56 = MEMORY[0x277CE14C0];
    sub_21DF23E5C(&qword_27CEABCF8, &qword_27CEABC58, &qword_21E152270, MEMORY[0x277CE14C0]);
    sub_21DF23E5C(&qword_27CEABD00, &qword_27CEABC18, &qword_21E152230, v56);
    sub_21E1402F4();
    sub_21DF23614(v29, &qword_27CEABC58, &qword_21E152270);
    v57 = v35;
  }

  return sub_21DF23614(v57, v52, v53);
}

uint64_t sub_21E06F750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD38, &qword_21E1522F0);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v48 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD40, &qword_21E1522F8);
  MEMORY[0x28223BE20](v59);
  v63 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v48 - v7;
  MEMORY[0x28223BE20](v8);
  v62 = &v48 - v9;
  v10 = sub_21E13D384();
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E1420E4();
  MEMORY[0x28223BE20](v12 - 8);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for FeedbackControlBar(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD48, &qword_21E152300);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v20 = &v48 - v19;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD50, &qword_21E152308);
  MEMORY[0x28223BE20](v49);
  v57 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  MEMORY[0x28223BE20](v25);
  v53 = &v48 - v26;
  sub_21E077ACC(a1, v18, type metadata accessor for FeedbackControlBar);
  v27 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v52 = v17;
  v28 = swift_allocObject();
  sub_21E077B34(v18, v28 + v27, type metadata accessor for FeedbackControlBar);
  v55 = a1;
  v66 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD58, &qword_21E152310);
  sub_21E0787A4(&qword_27CEABD60, &qword_27CEABD58, &qword_21E152310, sub_21E07856C);
  sub_21E141764();
  sub_21E142084();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v29 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  v67 = sub_21E142184();
  v68 = v30;
  sub_21DF23E5C(&qword_27CEABD98, &qword_27CEABD48, &qword_21E152300, MEMORY[0x277CDF028]);
  sub_21DF252E0();
  v31 = v51;
  sub_21E141024();

  (*(v50 + 8))(v20, v31);
  v32 = v53;
  sub_21E13FB44();
  sub_21DF23614(v24, &qword_27CEABD50, &qword_21E152308);
  v33 = v55;
  sub_21E077ACC(v55, v18, type metadata accessor for FeedbackControlBar);
  v34 = swift_allocObject();
  v35 = sub_21E077B34(v18, v34 + v27, type metadata accessor for FeedbackControlBar);
  MEMORY[0x28223BE20](v35);
  *(&v48 - 2) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDA0, &qword_21E152330);
  sub_21E0787A4(&qword_27CEABDA8, &qword_27CEABDA0, &qword_21E152330, sub_21E078858);
  v36 = v56;
  sub_21E141764();
  sub_21E142084();
  v37 = v36;
  if (!sub_21E1426B4())
  {
    v38 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  v67 = sub_21E142184();
  v68 = v39;
  sub_21DF23E5C(&qword_27CEABDD0, &qword_27CEABD38, &qword_21E1522F0, MEMORY[0x277CDF028]);
  v40 = v58;
  v41 = v61;
  sub_21E141024();

  (*(v60 + 8))(v37, v41);
  v42 = v62;
  sub_21E13FB44();
  sub_21DF23614(v40, &qword_27CEABD40, &qword_21E1522F8);
  v43 = v57;
  sub_21DF236C0(v32, v57, &qword_27CEABD50, &qword_21E152308);
  v44 = v63;
  sub_21DF236C0(v42, v63, &qword_27CEABD40, &qword_21E1522F8);
  v45 = v64;
  sub_21DF236C0(v43, v64, &qword_27CEABD50, &qword_21E152308);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDD8, &qword_21E152348);
  sub_21DF236C0(v44, v45 + *(v46 + 48), &qword_27CEABD40, &qword_21E1522F8);
  sub_21DF23614(v42, &qword_27CEABD40, &qword_21E1522F8);
  sub_21DF23614(v32, &qword_27CEABD50, &qword_21E152308);
  sub_21DF23614(v44, &qword_27CEABD40, &qword_21E1522F8);
  return sub_21DF23614(v43, &qword_27CEABD50, &qword_21E152308);
}

uint64_t sub_21E0700A8(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackControlBar(0);
  v3 = v2 - 8;
  v25 = *(v2 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_21E13D344();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = (a1 + *(v3 + 44));
  v17 = *(v16 + 1);
  v27 = *v16;
  v28 = v17;
  v26 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08, &qword_21E152200);
  sub_21E141724();

  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  (*(v10 + 16))(v12, v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70, qword_21E1520B8);
  sub_21E141724();
  (*(v10 + 8))(v15, v9);
  v18 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v18 impactOccurred];

  v19 = sub_21E1423F4();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  sub_21E077ACC(a1, v5, type metadata accessor for FeedbackControlBar);
  sub_21E1423C4();
  v20 = sub_21E1423B4();
  v21 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v20;
  *(v22 + 24) = v23;
  sub_21E077B34(v5, v22 + v21, type metadata accessor for FeedbackControlBar);
  sub_21E0C2E04(0, 0, v8, &unk_21E152388, v22);
}

uint64_t sub_21E070418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  v4[6] = swift_task_alloc();
  v6 = sub_21E142994();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_21E1423C4();
  v4[11] = sub_21E1423B4();
  v8 = sub_21E142364();
  v4[12] = v8;
  v4[13] = v7;

  return MEMORY[0x2822009F8](sub_21E0705A8, v8, v7);
}

uint64_t sub_21E0705A8()
{
  v1 = sub_21E142C94();
  v3 = v2;
  sub_21E142BB4();
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_21E07068C;

  return sub_21E077260(v1, v3, 0, 0, 1);
}

uint64_t sub_21E07068C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_21E079500;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_21E070820;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21E070820()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[2];

  v5 = sub_21E1423F4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_21E077ACC(v4, v1, type metadata accessor for FeedbackControlBar);
  v6 = sub_21E1423B4();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_21E077B34(v1, v8 + v7, type metadata accessor for FeedbackControlBar);
  sub_21E0C2E04(0, 0, v2, &unk_21E152398, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21E070998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838, &qword_21E1520B0);
  v4[11] = swift_task_alloc();
  sub_21E1423C4();
  v4[12] = sub_21E1423B4();
  v6 = sub_21E142364();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x2822009F8](sub_21E070A68, v6, v5);
}

uint64_t sub_21E070A68()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = type metadata accessor for FeedbackControlBar(0);
  v4 = v3[7];
  sub_21DF236C0(v2 + v4, v1, &qword_27CEA8838, &qword_21E1520B0);
  v5 = sub_21E13DF64();
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_21DF23614(v1, &qword_27CEA8838, &qword_21E1520B0);
  v7 = (v2 + v3[12]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  if (v6 == 1)
  {
    v11 = v0[10];
    v0[2] = v9;
    v0[3] = v8;
    v0[4] = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8, &qword_21E147E98);
    MEMORY[0x223D52200](v12);
    v0[17] = v0[8];
    v13 = v3[5];
    v14 = (v11 + v3[6]);
    v15 = *v14;
    v16 = v14[1];
    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_21E070DF0;

    return sub_21E119428(v11 + v13, v15, v16, 1);
  }

  else
  {
    v0[5] = v9;
    v0[6] = v8;
    v0[7] = v10;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8, &qword_21E147E98);
    MEMORY[0x223D52200](v19);
    v0[15] = v0[9];
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_21E070CAC;

    return sub_21E11A71C(v2 + v4, 1);
  }
}

uint64_t sub_21E070CAC()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21E0794E8, v3, v2);
}

uint64_t sub_21E070DF0()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21E0794E8, v3, v2);
}

uint64_t sub_21E070F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v4 = sub_21E140054();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD88, &qword_21E152328);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD70, &qword_21E152318);
  MEMORY[0x28223BE20](v12);
  v14 = v25 - v13;
  v25[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDE0, &qword_21E152350);
  sub_21E078A64();
  sub_21E141684();
  sub_21E140044();
  sub_21DF23E5C(&qword_27CEABD90, &qword_27CEABD88, &qword_21E152328, MEMORY[0x277CDEFF0]);
  sub_21E078B1C(&qword_280F68E88, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  sub_21E140DA4();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v15 = [objc_opt_self() labelColor];
  v16 = sub_21E141414();
  KeyPath = swift_getKeyPath();
  v18 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD80, &qword_21E152320) + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  LOBYTE(v16) = sub_21E140914();
  sub_21E13F374();
  v19 = &v14[*(v12 + 36)];
  *v19 = v16;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  sub_21E07856C();
  sub_21E141164();
  return sub_21DF23614(v14, &qword_27CEABD70, &qword_21E152318);
}

uint64_t sub_21E0712C0@<X0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_21E140C64();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

double sub_21E0713A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v33 = sub_21E141E64();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_21E13D344();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21E141E44();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E141624();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 + *(type metadata accessor for FeedbackControlBar(0) + 36));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v36) = v16;
  *(&v36 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08, &qword_21E152200);
  sub_21E141714();
  sub_21E141634();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v11);
  v28 = sub_21E141664();

  (*(v12 + 8))(v14, v11);
  sub_21E141CC4();
  sub_21E13F664();
  LOBYTE(v35) = 1;
  *&v34[6] = v36;
  *&v34[22] = v37;
  *&v34[38] = v38;
  sub_21E141E34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70, qword_21E1520B8);
  sub_21E141714();
  sub_21E141E54();
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDE0, &qword_21E152350) + 36);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDF8, &qword_21E152358);
  v20 = v31;
  v21 = v33;
  (*(v31 + 16))(v18 + *(v19 + 36), v5, v33);
  v22 = v18 + *(v19 + 40);
  v23 = v30;
  (*(v6 + 16))(v22, v8, v30);
  sub_21E078B1C(&qword_27CEABE00, MEMORY[0x277CE1570], MEMORY[0x277CE1568]);
  v24 = v29;
  sub_21E141E24();
  (*(v20 + 8))(v5, v21);
  (*(v6 + 8))(v8, v23);
  (*(v32 + 8))(v10, v24);
  *a2 = v28;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v25 = *&v34[16];
  *(a2 + 18) = *v34;
  *(a2 + 34) = v25;
  result = *&v34[32];
  *(a2 + 50) = *&v34[32];
  *(a2 + 64) = *&v34[46];
  return result;
}

uint64_t sub_21E07189C(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackControlBar(0);
  v3 = v2 - 8;
  v25 = *(v2 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_21E13D344();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = (a1 + *(v3 + 44));
  v17 = *(v16 + 1);
  v27 = *v16;
  v28 = v17;
  v26 = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08, &qword_21E152200);
  sub_21E141724();

  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  (*(v10 + 16))(v12, v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70, qword_21E1520B8);
  sub_21E141724();
  (*(v10 + 8))(v15, v9);
  v18 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v18 impactOccurred];

  v19 = sub_21E1423F4();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  sub_21E077ACC(a1, v5, type metadata accessor for FeedbackControlBar);
  sub_21E1423C4();
  v20 = sub_21E1423B4();
  v21 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v20;
  *(v22 + 24) = v23;
  sub_21E077B34(v5, v22 + v21, type metadata accessor for FeedbackControlBar);
  sub_21E0C2E04(0, 0, v8, &unk_21E152368, v22);
}

uint64_t sub_21E071C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  v4[6] = swift_task_alloc();
  v6 = sub_21E142994();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_21E1423C4();
  v4[11] = sub_21E1423B4();
  v7 = swift_task_alloc();
  v4[12] = v7;
  *v7 = v4;
  v7[1] = sub_21E071DF4;
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v4 + 17, 0, 0, 0xD000000000000017, 0x800000021E15B6B0, sub_21DFF37E8, 0, v8);
}

uint64_t sub_21E071DF4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_21E0720CC;
  }

  else
  {
    v2 = sub_21E071F08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21E071F08()
{
  *(v0 + 137) = *(v0 + 136);
  v2 = sub_21E142364();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return MEMORY[0x2822009F8](sub_21E071F88, v2, v1);
}

uint64_t sub_21E071F88()
{
  if (*(v0 + 137))
  {
    v1 = sub_21E142C94();
    v3 = v2;
    sub_21E142BB4();
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_21E0721CC;

    return sub_21E077260(v1, v3, 0, 0, 1);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_21E0720CC()
{
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E072150, v2, v1);
}

uint64_t sub_21E072150()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E0721CC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E0794EC;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E072360;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21E072360()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];

  v5 = sub_21E1423F4();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_21E077ACC(v4, v2, type metadata accessor for FeedbackControlBar);
  v6 = sub_21E1423B4();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_21E077B34(v2, v8 + v7, type metadata accessor for FeedbackControlBar);
  sub_21E0C2E04(0, 0, v1, &unk_21E152378, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21E0724D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838, &qword_21E1520B0);
  v4[11] = swift_task_alloc();
  sub_21E1423C4();
  v4[12] = sub_21E1423B4();
  v6 = sub_21E142364();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x2822009F8](sub_21E0725A8, v6, v5);
}

uint64_t sub_21E0725A8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = type metadata accessor for FeedbackControlBar(0);
  v4 = v3[7];
  sub_21DF236C0(v2 + v4, v1, &qword_27CEA8838, &qword_21E1520B0);
  v5 = sub_21E13DF64();
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_21DF23614(v1, &qword_27CEA8838, &qword_21E1520B0);
  v7 = (v2 + v3[12]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  if (v6 == 1)
  {
    v11 = v0[10];
    v0[2] = v9;
    v0[3] = v8;
    v0[4] = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8, &qword_21E147E98);
    MEMORY[0x223D52200](v12);
    v0[17] = v0[8];
    v13 = v3[5];
    v14 = (v11 + v3[6]);
    v15 = *v14;
    v16 = v14[1];
    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_21E070DF0;

    return sub_21E118DDC(v11 + v13, v15, v16);
  }

  else
  {
    v0[5] = v9;
    v0[6] = v8;
    v0[7] = v10;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8, &qword_21E147E98);
    MEMORY[0x223D52200](v19);
    v0[15] = v0[9];
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_21E0727E4;

    return sub_21E11A0D0(v2 + v4);
  }
}

uint64_t sub_21E0727E4()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21E072928, v3, v2);
}

uint64_t sub_21E072928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E072990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a2;
  v4 = sub_21E140054();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD88, &qword_21E152328);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDB8, &qword_21E152338);
  MEMORY[0x28223BE20](v12);
  v14 = v29 - v13;
  v29[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDE0, &qword_21E152350);
  sub_21E078A64();
  sub_21E141684();
  sub_21E140044();
  sub_21DF23E5C(&qword_27CEABD90, &qword_27CEABD88, &qword_21E152328, MEMORY[0x277CDEFF0]);
  sub_21E078B1C(&qword_280F68E88, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  sub_21E140DA4();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  LOBYTE(v11) = sub_21E140914();
  sub_21E13F374();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDC8, &qword_21E152340) + 36)];
  *v23 = v11;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = [objc_opt_self() labelColor];
  v25 = sub_21E141414();
  KeyPath = swift_getKeyPath();
  v27 = &v14[*(v12 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_21E078858();
  sub_21E141164();
  return sub_21DF23614(v14, &qword_27CEABDB8, &qword_21E152338);
}

uint64_t sub_21E072D38@<X0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  result = sub_21E140C64();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_21E072DB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v33 = sub_21E141E64();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_21E13D344();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21E141E44();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E141624();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 + *(type metadata accessor for FeedbackControlBar(0) + 36));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v36) = v16;
  *(&v36 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08, &qword_21E152200);
  sub_21E141714();
  sub_21E141634();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v11);
  v28 = sub_21E141664();

  (*(v12 + 8))(v14, v11);
  sub_21E141CC4();
  sub_21E13F664();
  LOBYTE(v35) = 1;
  *&v34[6] = v36;
  *&v34[22] = v37;
  *&v34[38] = v38;
  sub_21E141E34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70, qword_21E1520B8);
  sub_21E141714();
  sub_21E141E54();
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDE0, &qword_21E152350) + 36);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDF8, &qword_21E152358);
  v20 = v31;
  v21 = v33;
  (*(v31 + 16))(v18 + *(v19 + 36), v5, v33);
  v22 = v18 + *(v19 + 40);
  v23 = v30;
  (*(v6 + 16))(v22, v8, v30);
  sub_21E078B1C(&qword_27CEABE00, MEMORY[0x277CE1570], MEMORY[0x277CE1568]);
  v24 = v29;
  sub_21E141E24();
  (*(v20 + 8))(v5, v21);
  (*(v6 + 8))(v8, v23);
  (*(v32 + 8))(v10, v24);
  *a2 = v28;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v25 = *&v34[16];
  *(a2 + 18) = *v34;
  *(a2 + 34) = v25;
  result = *&v34[32];
  *(a2 + 50) = *&v34[32];
  *(a2 + 64) = *&v34[46];
  return result;
}

uint64_t sub_21E0732A8@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_21E13F444();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v25 = sub_21E141D94();
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EF8, &qword_21E146240);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_21E140144();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  v17 = [objc_opt_self() secondarySystemFillColor];
  *&v14[*(v12 + 60)] = sub_21E141414();
  *&v14[*(v12 + 64)] = 256;
  sub_21E06DE44(v7);
  (*(v2 + 104))(v4, *MEMORY[0x277CDF3D0], v1);
  v18 = sub_21E13F434();
  v19 = *(v2 + 8);
  v19(v4, v1);
  v19(v7, v1);
  v20 = MEMORY[0x277CE13B0];
  if ((v18 & 1) == 0)
  {
    v20 = MEMORY[0x277CE13B8];
  }

  v21 = v25;
  (*(v8 + 104))(v10, *v20, v25);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD30, &qword_21E1522E8);
  v23 = v26;
  (*(v8 + 32))(v26 + *(v22 + 36), v10, v21);
  return sub_21E0784C8(v14, v23);
}

uint64_t sub_21E0735C0(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackControlBar(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-v8];
  v10 = a1 + *(v3 + 44);
  v11 = *(v10 + 8);
  v19[16] = *v10;
  v20 = v11;
  v19[15] = 3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08, &qword_21E152200);
  sub_21E141724();

  v12 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v12 impactOccurred];

  v13 = sub_21E1423F4();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_21E077ACC(a1, v6, type metadata accessor for FeedbackControlBar);
  sub_21E1423C4();
  v14 = sub_21E1423B4();
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_21E077B34(v6, v16 + v15, type metadata accessor for FeedbackControlBar);
  sub_21E0C2E04(0, 0, v9, &unk_21E1523B8, v16);
}

uint64_t sub_21E073824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  v4[6] = swift_task_alloc();
  v6 = sub_21E142994();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_21E1423C4();
  v4[11] = sub_21E1423B4();
  v7 = swift_task_alloc();
  v4[12] = v7;
  *v7 = v4;
  v7[1] = sub_21E073A0C;
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v4 + 17, 0, 0, 0xD000000000000017, 0x800000021E15B6B0, sub_21DFF37E8, 0, v8);
}

uint64_t sub_21E073A0C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_21E073CE4;
  }

  else
  {
    v2 = sub_21E073B20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21E073B20()
{
  *(v0 + 137) = *(v0 + 136);
  v2 = sub_21E142364();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return MEMORY[0x2822009F8](sub_21E073BA0, v2, v1);
}

uint64_t sub_21E073BA0()
{
  if (*(v0 + 137))
  {
    v1 = sub_21E142C94();
    v3 = v2;
    sub_21E142BB4();
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_21E073D68;

    return sub_21E077260(v1, v3, 0, 0, 1);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_21E073CE4()
{
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E0794FC, v2, v1);
}

uint64_t sub_21E073D68()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E0794F0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E073EFC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21E073EFC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];

  v5 = sub_21E1423F4();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_21E077ACC(v4, v2, type metadata accessor for FeedbackControlBar);
  v6 = sub_21E1423B4();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_21E077B34(v2, v8 + v7, type metadata accessor for FeedbackControlBar);
  sub_21E0C2E04(0, 0, v1, &unk_21E1523C8, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21E074074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838, &qword_21E1520B0);
  v4[11] = swift_task_alloc();
  sub_21E1423C4();
  v4[12] = sub_21E1423B4();
  v6 = sub_21E142364();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x2822009F8](sub_21E074144, v6, v5);
}

uint64_t sub_21E074144()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = type metadata accessor for FeedbackControlBar(0);
  v4 = v3[7];
  sub_21DF236C0(v2 + v4, v1, &qword_27CEA8838, &qword_21E1520B0);
  v5 = sub_21E13DF64();
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_21DF23614(v1, &qword_27CEA8838, &qword_21E1520B0);
  v7 = (v2 + v3[12]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  if (v6 == 1)
  {
    v11 = v0[10];
    v0[2] = v9;
    v0[3] = v8;
    v0[4] = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8, &qword_21E147E98);
    MEMORY[0x223D52200](v12);
    v0[17] = v0[8];
    v13 = v3[5];
    v14 = (v11 + v3[6]);
    v15 = *v14;
    v16 = v14[1];
    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_21E070DF0;

    return sub_21E119A84(v11 + v13, v15, v16);
  }

  else
  {
    v0[5] = v9;
    v0[6] = v8;
    v0[7] = v10;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8, &qword_21E147E98);
    MEMORY[0x223D52200](v19);
    v0[15] = v0[9];
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_21E070CAC;

    return sub_21E11AD78(v2 + v4);
  }
}

uint64_t sub_21E074380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v4 = sub_21E140054();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC98, &qword_21E152298);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC80, &qword_21E152288);
  MEMORY[0x28223BE20](v12);
  v14 = v25 - v13;
  v25[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABE08, &qword_21E1523A0);
  sub_21E079250();
  sub_21E141684();
  sub_21E140044();
  sub_21DF23E5C(&qword_27CEABCA0, &qword_27CEABC98, &qword_21E152298, MEMORY[0x277CDEFF0]);
  sub_21E078B1C(&qword_280F68E88, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  sub_21E140DA4();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v15 = [objc_opt_self() labelColor];
  v16 = sub_21E141414();
  KeyPath = swift_getKeyPath();
  v18 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC90, &qword_21E152290) + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  LOBYTE(v16) = sub_21E140914();
  sub_21E13F374();
  v19 = &v14[*(v12 + 36)];
  *v19 = v16;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  sub_21E077FB8();
  sub_21E141164();
  return sub_21DF23614(v14, &qword_27CEABC80, &qword_21E152288);
}

double sub_21E07470C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = sub_21E141E64();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21E141E44();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E141624();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(type metadata accessor for FeedbackControlBar(0) + 36));
  v11 = *(v10 + 1);
  LOBYTE(v49) = *v10;
  *(&v49 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08, &qword_21E152200);
  sub_21E141714();
  v12 = 0xD00000000000001BLL;
  sub_21E141634();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
  v37 = sub_21E141664();

  (*(v7 + 8))(v9, v6);
  sub_21E141CC4();
  sub_21E13F664();
  v47 = 1;
  *&v46[6] = v49;
  *&v46[22] = v50;
  *&v46[38] = v51;
  v13 = sub_21E140924();
  sub_21E13F374();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v48 = 0;
  v22 = v36;
  sub_21E141E34();
  v23 = *(v10 + 1);
  v43 = *v10;
  v44 = v23;
  sub_21E141714();
  if (v45 == 3)
  {
    v24 = "exclamationmark.bubble";
  }

  else
  {
    v12 = 0xD000000000000016;
    v24 = "hand.thumbsup.fill";
  }

  v25 = v24 | 0x8000000000000000;
  v26 = v38;
  sub_21E141E54();
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABE08, &qword_21E1523A0) + 36);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABE20, &qword_21E1523A8);
  v29 = v39;
  v30 = v41;
  (*(v39 + 16))(v27 + *(v28 + 36), v26, v41);
  v31 = (v27 + *(v28 + 40));
  *v31 = v12;
  v31[1] = v25;
  sub_21E078B1C(&qword_27CEABE00, MEMORY[0x277CE1570], MEMORY[0x277CE1568]);
  v32 = v40;
  sub_21E141E24();
  (*(v29 + 8))(v26, v30);
  (*(v42 + 8))(v22, v32);
  v33 = *&v46[16];
  *(a2 + 18) = *v46;
  *a2 = v37;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v33;
  result = *&v46[32];
  *(a2 + 50) = *&v46[32];
  *(a2 + 64) = *&v46[46];
  *(a2 + 72) = v13;
  *(a2 + 80) = v15;
  *(a2 + 88) = v17;
  *(a2 + 96) = v19;
  *(a2 + 104) = v21;
  *(a2 + 112) = 0;
  return result;
}

void sub_21E074BE8(uint64_t a1)
{
  v2 = sub_21E13D4B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for FeedbackControlBar(0);
  v15 = (a1 + *(v14 + 48));
  v52 = *v15;
  v53 = *(v15 + 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8, &qword_21E147E98);
  MEMORY[0x223D52200](&v50, v16);
  v17 = v50;
  swift_getKeyPath();
  v52 = v17;
  sub_21E078B1C(&qword_280F6A900, type metadata accessor for FeedbackController, &protocol conformance descriptor for FeedbackController);
  sub_21E13D3C4();

  swift_beginAccess();
  v18 = *(v17 + 16);

  v47 = sub_21E141ED4();
  v20 = v19;
  LODWORD(v17) = ~v19;

  if (!v17)
  {
    goto LABEL_4;
  }

  if (v20)
  {
    sub_21DF34758(v47, v20);
LABEL_4:
    v21 = a1 + *(v14 + 36);
    v22 = *(v21 + 8);
    LOBYTE(v50) = *v21;
    v51 = v22;
    LOBYTE(v48) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08, &qword_21E152200);
    sub_21E141724();
    goto LABEL_5;
  }

  sub_21E13D4C4();
  v23 = *MEMORY[0x277D084F8];
  v44 = v3;
  v42 = *(v3 + 104);
  v42(v10, v23, v2);
  v24 = sub_21E078B1C(&qword_27CEABC10, MEMORY[0x277D08518], MEMORY[0x277D08520]);
  v45 = v13;
  sub_21E142284();
  v41 = v24;
  sub_21E142284();
  v43 = a1;
  if (v50 == v48 && v51 == v49)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_21E142B14();
  }

  v26 = v10;
  v27 = *(v44 + 8);
  v27(v26, v2);

  if (v25)
  {
    v28 = v43 + *(v14 + 36);
    v29 = *(v28 + 8);
    LOBYTE(v50) = *v28;
    v51 = v29;
    LOBYTE(v48) = 3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08, &qword_21E152200);
    sub_21E141724();
    sub_21DF34758(v47, v20);
    v27(v45, v2);
    goto LABEL_5;
  }

  v42(v7, *MEMORY[0x277D08510], v2);
  sub_21E142284();
  sub_21E142284();
  if (v50 == v48 && v51 == v49)
  {
    v27(v7, v2);

LABEL_17:
    v31 = v43 + *(v14 + 36);
    v32 = *(v31 + 8);
    LOBYTE(v50) = *v31;
    v51 = v32;
    LOBYTE(v48) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08, &qword_21E152200);
    sub_21E141724();
    sub_21DF34758(v47, v20);
    v27(v45, v2);
    goto LABEL_5;
  }

  v30 = sub_21E142B14();
  v27(v7, v2);

  if (v30)
  {
    goto LABEL_17;
  }

  v33 = v46;
  v42(v46, *MEMORY[0x277D084E8], v2);
  v34 = v45;
  sub_21E142284();
  sub_21E142284();
  if (v50 == v48 && v51 == v49)
  {
    v35 = v33;
    v36 = v27;
    v27(v35, v2);
  }

  else
  {
    v37 = sub_21E142B14();
    v38 = v33;
    v36 = v27;
    v27(v38, v2);

    if ((v37 & 1) == 0)
    {
      v27(v34, v2);
      sub_21DF34758(v47, v20);
      return;
    }
  }

  v39 = v43 + *(v14 + 36);
  v40 = *(v39 + 8);
  LOBYTE(v50) = *v39;
  v51 = v40;
  LOBYTE(v48) = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08, &qword_21E152200);
  sub_21E141724();
  sub_21DF34758(v47, v20);
  v36(v34, v2);
LABEL_5:
}

uint64_t sub_21E075294(uint64_t a1)
{
  type metadata accessor for FeedbackControlBar(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08, &qword_21E152200);
  sub_21E141724();
}

uint64_t ReportAConcernButton.init(resultLookupState:feedbackController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ReportAConcernButton(0);
  v11 = v10[6];
  v12 = sub_21E13DF64();
  v13 = *(v12 - 8);
  (*(v13 + 32))(a5 + v11, a1, v12);
  (*(v13 + 56))(a5 + v11, 0, 1, v12);
  v14 = sub_21E13D994();
  result = (*(*(v14 - 8) + 56))(a5, 1, 1, v14);
  v16 = (a5 + v10[5]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a5 + v10[7]);
  *v17 = a2;
  v17[1] = a3;
  v17[2] = a4;
  return result;
}

uint64_t ReportAConcernButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19[2] = a1;
  v2 = sub_21E13D384();
  MEMORY[0x28223BE20](v2 - 8);
  v19[1] = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E1420E4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for ReportAConcernButton(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB20, &qword_21E151F68);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB28, &qword_21E151F70);
  MEMORY[0x28223BE20](v19[0]);
  v13 = v19 - v12;
  sub_21E077ACC(v1, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReportAConcernButton);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_21E077B34(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ReportAConcernButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB30, &qword_21E151F78);
  sub_21E0787A4(&qword_27CEABB38, &qword_27CEABB30, &qword_21E151F78, sub_21E07671C);
  sub_21E141764();
  sub_21E142084();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v16 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  v19[3] = sub_21E142184();
  v19[4] = v17;
  sub_21DF23E5C(&qword_27CEABB60, &qword_27CEABB20, &qword_21E151F68, MEMORY[0x277CDF028]);
  sub_21DF252E0();
  sub_21E141024();

  (*(v9 + 8))(v11, v8);
  sub_21E13FB44();
  return sub_21DF23614(v13, &qword_27CEABB28, &qword_21E151F70);
}

uint64_t sub_21E075898(uint64_t a1)
{
  v2 = type metadata accessor for ReportAConcernButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v9 impactOccurred];

  v10 = sub_21E1423F4();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_21E077ACC(a1, v5, type metadata accessor for ReportAConcernButton);
  sub_21E1423C4();
  v11 = sub_21E1423B4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21E077B34(v5, v13 + v12, type metadata accessor for ReportAConcernButton);
  sub_21E0C2E04(0, 0, v8, &unk_21E1521A8, v13);
}

uint64_t sub_21E075AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for ReportAConcernButton(0) - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  v4[6] = swift_task_alloc();
  v6 = sub_21E142994();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_21E1423C4();
  v4[11] = sub_21E1423B4();
  v7 = swift_task_alloc();
  v4[12] = v7;
  *v7 = v4;
  v7[1] = sub_21E075CB0;
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v4 + 17, 0, 0, 0xD000000000000017, 0x800000021E15B6B0, sub_21DFF37E8, 0, v8);
}

uint64_t sub_21E075CB0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_21E073CE4;
  }

  else
  {
    v2 = sub_21E075DC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21E075DC4()
{
  *(v0 + 137) = *(v0 + 136);
  v2 = sub_21E142364();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return MEMORY[0x2822009F8](sub_21E075E44, v2, v1);
}

uint64_t sub_21E075E44()
{
  if (*(v0 + 137))
  {
    v1 = sub_21E142C94();
    v3 = v2;
    sub_21E142BB4();
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_21E075F88;

    return sub_21E077260(v1, v3, 0, 0, 1);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_21E075F88()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E0794F4;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E07611C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21E07611C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];

  v5 = sub_21E1423F4();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_21E077ACC(v4, v2, type metadata accessor for ReportAConcernButton);
  v6 = sub_21E1423B4();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_21E077B34(v2, v8 + v7, type metadata accessor for ReportAConcernButton);
  sub_21E0C2E04(0, 0, v1, &unk_21E1521C0, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21E076294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838, &qword_21E1520B0);
  v4[11] = swift_task_alloc();
  sub_21E1423C4();
  v4[12] = sub_21E1423B4();
  v6 = sub_21E142364();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x2822009F8](sub_21E076364, v6, v5);
}

uint64_t sub_21E076364()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = type metadata accessor for ReportAConcernButton(0);
  v4 = v3[6];
  sub_21DF236C0(v2 + v4, v1, &qword_27CEA8838, &qword_21E1520B0);
  v5 = sub_21E13DF64();
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_21DF23614(v1, &qword_27CEA8838, &qword_21E1520B0);
  v7 = (v2 + v3[7]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  if (v6 == 1)
  {
    v11 = v0[10];
    v0[2] = v9;
    v0[3] = v8;
    v0[4] = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8, &qword_21E147E98);
    MEMORY[0x223D52200](v12);
    v0[17] = v0[8];
    v13 = (v11 + v3[5]);
    v14 = *v13;
    v15 = v13[1];
    v16 = swift_task_alloc();
    v0[18] = v16;
    *v16 = v0;
    v16[1] = sub_21E070DF0;
    v17 = v0[10];

    return sub_21E119A84(v17, v14, v15);
  }

  else
  {
    v0[5] = v9;
    v0[6] = v8;
    v0[7] = v10;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8, &qword_21E147E98);
    MEMORY[0x223D52200](v19);
    v0[15] = v0[9];
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_21E070CAC;

    return sub_21E11AD78(v2 + v4);
  }
}

uint64_t sub_21E0765A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB48, &qword_21E151F80);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABBF0, &qword_21E152160);
  sub_21E0771D4();
  sub_21E141684();
  v3 = [objc_opt_self() labelColor];
  v4 = sub_21E141414();
  KeyPath = swift_getKeyPath();
  v6 = &v2[*(v0 + 36)];
  *v6 = KeyPath;
  v6[1] = v4;
  sub_21E07671C();
  sub_21E141164();
  return sub_21DF23614(v2, &qword_27CEABB48, &qword_21E151F80);
}

unint64_t sub_21E07671C()
{
  result = qword_27CEABB40;
  if (!qword_27CEABB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABB48, &qword_21E151F80);
    sub_21DF23E5C(&qword_27CEABB50, &qword_27CEABB58, &unk_21E151F88, MEMORY[0x277CDEFF0]);
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48, &qword_21E14A040, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABB40);
  }

  return result;
}

unint64_t sub_21E076804()
{
  result = qword_27CEABB68;
  if (!qword_27CEABB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABB68);
  }

  return result;
}

uint64_t sub_21E076890@<X0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_21E140C64();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_21E076974(uint64_t a1@<X8>)
{
  v2 = sub_21E141624();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  sub_21E141634();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_21E141664();

  (*(v3 + 8))(v5, v2);
  sub_21E141CC4();
  sub_21E13F664();
  v14 = 1;
  *&v13[6] = v15;
  *&v13[22] = v16;
  *&v13[38] = v17;
  LOBYTE(v2) = sub_21E140924();
  sub_21E13F374();
  v7 = *&v13[16];
  *(a1 + 18) = *v13;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v7;
  *(a1 + 50) = *&v13[32];
  *(a1 + 64) = *&v13[46];
  *(a1 + 72) = v2;
  *(a1 + 80) = v8;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10;
  *(a1 + 104) = v11;
  *(a1 + 112) = 0;
}

void sub_21E076B60(uint64_t a1)
{
  sub_21E076DA4(319, &qword_280F69040, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21E076DA4(319, &qword_27CEABB88, MEMORY[0x277D78FA8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21E01B0DC(319, &qword_27CEA98A8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21E076DA4(319, &qword_27CEABB90, MEMORY[0x277D79298], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21E01B0DC(319, &qword_27CEABB98, &type metadata for FeedbackControlBar.FeedbackSelection, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_21E076DA4(319, &qword_27CEABBA0, MEMORY[0x277CC95F0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_21E076DA4(319, &qword_280F68D08, type metadata accessor for FeedbackController, MEMORY[0x277CE11F8]);
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

void sub_21E076DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21E076E40(uint64_t a1)
{
  sub_21E076DA4(319, &qword_27CEABB88, MEMORY[0x277D78FA8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21E01B0DC(319, &qword_27CEA98A8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21E076DA4(319, &qword_27CEABB90, MEMORY[0x277D79298], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21E076DA4(319, &qword_280F68D08, type metadata accessor for FeedbackController, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21E076FA8()
{
  result = qword_27CEABBC0;
  if (!qword_27CEABBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABBB8, &qword_21E152148);
    sub_21E077034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABBC0);
  }

  return result;
}

unint64_t sub_21E077034()
{
  result = qword_27CEABBC8;
  if (!qword_27CEABBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABBD0, &qword_21E152150);
    sub_21DF23E5C(&qword_27CEABBD8, &qword_27CEABBE0, &qword_21E152158, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABBC8);
  }

  return result;
}

unint64_t sub_21E0770EC()
{
  result = qword_27CEABBE8;
  if (!qword_27CEABBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABB28, &qword_21E151F70);
    sub_21DF23E5C(&qword_27CEABB60, &qword_27CEABB20, &qword_21E151F68, MEMORY[0x277CDF028]);
    sub_21E078B1C(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABBE8);
  }

  return result;
}

unint64_t sub_21E0771D4()
{
  result = qword_27CEABBF8;
  if (!qword_27CEABBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABBF0, &qword_21E152160);
    sub_21DFC281C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABBF8);
  }

  return result;
}

uint64_t sub_21E077260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_21E142984();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21E077360, 0, 0);
}

uint64_t sub_21E077360()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_21E142994();
  v5 = sub_21E078B1C(&qword_280F68C00, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_21E142B94();
  sub_21E078B1C(&qword_280F68C08, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_21E1429A4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21E0774F0;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_21E0774F0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21E0776AC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_21E0776AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E077718(uint64_t a1)
{
  v4 = *(type metadata accessor for ReportAConcernButton(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E075AC8(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_23Tm()
{
  v1 = type metadata accessor for ReportAConcernButton(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_21E13D994();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = *(v1 + 24);
  v7 = sub_21E13DF64();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_21E0779DC(uint64_t a1)
{
  v4 = *(type metadata accessor for ReportAConcernButton(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E076294(a1, v6, v7, v1 + v5);
}

uint64_t sub_21E077ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E077B34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E077BC8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_37Tm()
{
  v1 = type metadata accessor for FeedbackControlBar(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  v6 = sub_21E13D994();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = v1[7];
  v9 = sub_21E13DF64();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v3 + v1[10];
  v12 = sub_21E13D344();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70, qword_21E1520B8);

  v13(v3 + v1[11], v12);

  return swift_deallocObject();
}

unint64_t sub_21E077FB8()
{
  result = qword_27CEABC78;
  if (!qword_27CEABC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC80, &qword_21E152288);
    sub_21E078044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABC78);
  }

  return result;
}

unint64_t sub_21E078044()
{
  result = qword_27CEABC88;
  if (!qword_27CEABC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC90, &qword_21E152290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC98, &qword_21E152298);
    sub_21E140054();
    sub_21DF23E5C(&qword_27CEABCA0, &qword_27CEABC98, &qword_21E152298, MEMORY[0x277CDEFF0]);
    sub_21E078B1C(&qword_280F68E88, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48, &qword_21E14A040, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABC88);
  }

  return result;
}

unint64_t sub_21E0781BC()
{
  result = qword_27CEABCC0;
  if (!qword_27CEABCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC40, &qword_21E152258);
    sub_21E078248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABCC0);
  }

  return result;
}

unint64_t sub_21E078248()
{
  result = qword_27CEABCC8;
  if (!qword_27CEABCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC38, &qword_21E152250);
    sub_21E0782D4();
    sub_21E078474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABCC8);
  }

  return result;
}

unint64_t sub_21E0782D4()
{
  result = qword_27CEABCD0;
  if (!qword_27CEABCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC30, &qword_21E152248);
    sub_21E07838C();
    sub_21DF23E5C(&qword_27CEABCE0, &qword_27CEABCB8, &qword_21E1522A8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABCD0);
  }

  return result;
}

unint64_t sub_21E07838C()
{
  result = qword_27CEABCD8;
  if (!qword_27CEABCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC28, &qword_21E152240);
    sub_21DF23E5C(&qword_27CEABCA8, &qword_27CEABC20, &qword_21E152238, MEMORY[0x277CDF028]);
    sub_21E078B1C(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABCD8);
  }

  return result;
}

unint64_t sub_21E078474()
{
  result = qword_27CEABCE8;
  if (!qword_27CEABCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABCE8);
  }

  return result;
}

uint64_t sub_21E0784C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EF8, &qword_21E146240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E07856C()
{
  result = qword_27CEABD68;
  if (!qword_27CEABD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABD70, &qword_21E152318);
    sub_21E0785F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABD68);
  }

  return result;
}

unint64_t sub_21E0785F8()
{
  result = qword_27CEABD78;
  if (!qword_27CEABD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABD80, &qword_21E152320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABD88, &qword_21E152328);
    sub_21E140054();
    sub_21DF23E5C(&qword_27CEABD90, &qword_27CEABD88, &qword_21E152328, MEMORY[0x277CDEFF0]);
    sub_21E078B1C(&qword_280F68E88, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48, &qword_21E14A040, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABD78);
  }

  return result;
}

uint64_t sub_21E0787A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21E078B1C(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E078858()
{
  result = qword_27CEABDB0;
  if (!qword_27CEABDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABDB8, &qword_21E152338);
    sub_21E078910();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48, &qword_21E14A040, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABDB0);
  }

  return result;
}

unint64_t sub_21E078910()
{
  result = qword_27CEABDC0;
  if (!qword_27CEABDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABDC8, &qword_21E152340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABD88, &qword_21E152328);
    sub_21E140054();
    sub_21DF23E5C(&qword_27CEABD90, &qword_27CEABD88, &qword_21E152328, MEMORY[0x277CDEFF0]);
    sub_21E078B1C(&qword_280F68E88, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABDC0);
  }

  return result;
}

unint64_t sub_21E078A64()
{
  result = qword_27CEABDE8;
  if (!qword_27CEABDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABDE0, &qword_21E152350);
    sub_21DFC281C();
    sub_21DF23E5C(&qword_27CEABDF0, &qword_27CEABDF8, &qword_21E152358, MEMORY[0x277CDE430]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABDE8);
  }

  return result;
}

uint64_t sub_21E078B1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E078B64(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF4AA04;

  return sub_21E071C0C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_61Tm()
{
  v1 = type metadata accessor for FeedbackControlBar(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  v6 = sub_21E13D994();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = v1[7];
  v9 = sub_21E13DF64();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v3 + v1[10];
  v12 = sub_21E13D344();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70, qword_21E1520B8);

  v13(v3 + v1[11], v12);

  return swift_deallocObject();
}

uint64_t sub_21E078F70(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E0724D8(a1, v6, v7, v1 + v5);
}

uint64_t sub_21E079068(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E070418(a1, v6, v7, v1 + v5);
}

uint64_t sub_21E079158(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E070998(a1, v6, v7, v1 + v5);
}

unint64_t sub_21E079250()
{
  result = qword_27CEABE10;
  if (!qword_27CEABE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABE08, &qword_21E1523A0);
    sub_21E0771D4();
    sub_21DF23E5C(&qword_27CEABE18, &qword_27CEABE20, &qword_21E1523A8, MEMORY[0x277CDE430]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABE10);
  }

  return result;
}

uint64_t sub_21E079308(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E073824(a1, v6, v7, v1 + v5);
}

uint64_t sub_21E0793F8(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E074074(a1, v6, v7, v1 + v5);
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

void sub_21E079734(uint64_t a1)
{
  sub_21DF37A78(319);
  if (v1 <= 0x3F)
  {
    sub_21DF3EF6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21E0797D0(uint64_t a1)
{
  sub_21DF37A78(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_21DF3EF6C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21E079880(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_21E13F444() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v10 + 7;
  if (v11 < a2)
  {
    v13 = ((((v12 + ((v6 + v9 + 2) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v14 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = a2 - v11 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    v25 = v11 + (v21 | v20);
    return (v25 + 1);
  }

LABEL_29:
  v22 = (a1 + v6 + v9 + 2) & ~v9;
  if (v8 < 0x7FFFFFFE)
  {
    v24 = *(((((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    v25 = v24 - 1;
    if (v25 < 0)
    {
      v25 = -1;
    }

    return (v25 + 1);
  }

  v23 = *(*(*(a3 + 16) - 8) + 48);

  return v23(v22);
}

void sub_21E079A6C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_21E13F444() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 64) + 7;
  v15 = ((((v14 + ((v9 + v12 + 2) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((v14 + ((v9 + v12 + 2) & ~v12)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v22 = (a1 + v9 + v12 + 2) & ~v12;
      if (v11 < 0x7FFFFFFE)
      {
        v24 = ((((v14 + v22) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v24 = (a2 - 0x7FFFFFFF);
          v24[1] = 0;
        }

        else
        {
          v24[1] = a2;
        }
      }

      else
      {
        v23 = *(v10 + 56);

        v23(v22, a2);
      }

      return;
    }
  }

  if (((((v14 + ((v9 + v12 + 2) & ~v12)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((((v14 + ((v9 + v12 + 2) & ~v12)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_21E079CD4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_21E079D70(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), double a6)
{
  v11 = a4(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17[-v12];
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  swift_storeEnumTagMultiPayload();
  *(v13 + v11[5]) = a1;
  *(v13 + v11[6]) = a6;
  v14 = v13 + v11[7];
  v17[15] = 0;
  sub_21E141704();
  v15 = v18;
  *v14 = v17[16];
  *(v14 + 1) = v15;
  MEMORY[0x223D51B40](v13, a2, v11, a3);
  return sub_21E07CB6C(v13, a5);
}

uint64_t sub_21E079EB0@<X0>(void (*a1)(char *, uint64_t, int *)@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a1;
  v92 = a3;
  v93 = *(a2 - 1);
  MEMORY[0x28223BE20](a1);
  v98 = v4;
  v91 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v97 = *(v6 - 8);
  MEMORY[0x28223BE20](v7);
  v75 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *(v9 + 24);
  v11 = type metadata accessor for InterpolatingBackgroundMaterial(0, v6, v99, v10);
  v77 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v74 = &v68 - v12;
  swift_getWitnessTable();
  v69 = sub_21E140464();
  v13 = sub_21E13FB54();
  v94 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v68 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7648, &qword_21E146E50);
  v16 = sub_21E13FB54();
  v83 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v82 = &v68 - v17;
  v18 = sub_21E13FB54();
  v86 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v84 = &v68 - v19;
  v20 = sub_21E13FB54();
  v89 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v88 = &v68 - v21;
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v111 = WitnessTable;
  v112 = v23;
  v70 = v13;
  v24 = swift_getWitnessTable();
  v25 = sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648, &qword_21E146E50, MEMORY[0x277CE01A0]);
  v71 = v24;
  v109 = v24;
  v110 = v25;
  v85 = v16;
  v26 = swift_getWitnessTable();
  v27 = MEMORY[0x277CE0790];
  v72 = v26;
  v107 = v26;
  v108 = MEMORY[0x277CE0790];
  v87 = v18;
  v73 = swift_getWitnessTable();
  v105 = v73;
  v106 = v27;
  v28 = a2;
  v29 = swift_getWitnessTable();
  v90 = v20;
  v101 = v20;
  v102 = MEMORY[0x277D839B0];
  v79 = v29;
  v103 = v29;
  v104 = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v76 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v31);
  v78 = &v68 - v33;
  v34 = v96;
  v35 = v96 + a2[10];
  v36 = v75;
  (*(v97 + 16))(v75, v35, v6, v32);
  v37 = v34;
  v38 = sub_21E07A9C4(v28);
  v39 = v74;
  v97 = v6;
  sub_21DFF6F1C(v36, v38, v6, v99, v74);
  MEMORY[0x223D51B40](v39, v69, v11, WitnessTable);
  (*(v77 + 8))(v39, v11);
  LODWORD(v77) = *(v37 + v28[9]);
  if (v77 == 1)
  {
    sub_21E141D74();
    sub_21E141CF4();
  }

  else
  {
    sub_21E141D64();
  }

  v40 = (v37 + v28[12]);
  v41 = *v40;
  v42 = *(v40 + 1);
  LOBYTE(v101) = v41;
  v102 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
  sub_21E141714();
  LOBYTE(v101) = v100;
  v43 = v82;
  v44 = v70;
  sub_21E141384();

  (*(v94 + 8))(v15, v44);
  v45 = v93;
  v46 = *(v93 + 16);
  v94 = v93 + 16;
  v95 = v46;
  v47 = v91;
  v46(v91, v37, v28);
  v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v49 = swift_allocObject();
  v50 = v99;
  *(v49 + 16) = v97;
  *(v49 + 24) = v50;
  v93 = *(v45 + 32);
  (v93)(v49 + v48, v47, v28);
  v51 = v84;
  v52 = v85;
  sub_21E141314();

  (*(v83 + 8))(v43, v52);
  v95(v47, v96, v28);
  v53 = swift_allocObject();
  v54 = v99;
  *(v53 + 16) = v97;
  *(v53 + 24) = v54;
  (v93)(v53 + v48, v47, v28);
  v55 = v88;
  v56 = v87;
  sub_21E140E04();

  (*(v86 + 8))(v51, v56);
  LOBYTE(v101) = v77;
  v95(v47, v96, v28);
  v57 = swift_allocObject();
  v58 = v99;
  *(v57 + 16) = v97;
  *(v57 + 24) = v58;
  (v93)(v57 + v48, v47, v28);
  v59 = v76;
  v60 = v90;
  v61 = MEMORY[0x277D839B0];
  v62 = v79;
  v63 = MEMORY[0x277D839C8];
  sub_21E141324();

  (*(v89 + 8))(v55, v60);
  v101 = v60;
  v102 = v61;
  v103 = v62;
  v104 = v63;
  swift_getOpaqueTypeConformance2();
  v64 = v78;
  v65 = OpaqueTypeMetadata2;
  sub_21DFE2A0C();
  v66 = *(v80 + 8);
  v66(v59, v65);
  sub_21DFE2A0C();
  return (v66)(v64, v65);
}

uint64_t sub_21E07A9C4(uint64_t a1)
{
  v3 = sub_21E13F444();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v21[-v8];
  if (*(v1 + *(a1 + 36)) == 1)
  {
    v10 = (v1 + *(a1 + 48));
    v11 = *v10;
    v12 = *(v10 + 1);
    v21[16] = v11;
    v22 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
    sub_21E141714();
    v13 = v21[15];
    sub_21E021DE8(v9);
    (*(v4 + 104))(v6, *MEMORY[0x277CDF3C0], v3);
    v14 = sub_21E13F434();
    v15 = *(v4 + 8);
    v15(v6, v3);
    v15(v9, v3);
    if (v14)
    {
      v16 = 4;
    }

    else
    {
      v16 = 1;
    }

    if (v14)
    {
      v17 = 5;
    }

    else
    {
      v17 = 2;
    }

    if (v13 == 1)
    {
      return v17;
    }

    else
    {
      return v16;
    }
  }

  else
  {
    sub_21E021DE8(&v21[-v8]);
    (*(v4 + 104))(v6, *MEMORY[0x277CDF3C0], v3);
    v19 = sub_21E13F434();
    v20 = *(v4 + 8);
    v20(v6, v3);
    v20(v9, v3);
    if (v19)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21E07ABF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MorphingContainerBackgroundModifier(0, a2, a3, a4);
  if (*(a1 + *(result + 36)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
    return sub_21E141724();
  }

  return result;
}

uint64_t sub_21E07AC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MorphingContainerBackgroundModifier(0, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
  return sub_21E141724();
}

uint64_t sub_21E07ACEC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MorphingContainerBackgroundModifier(0, a4, a5, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
  return sub_21E141724();
}

uint64_t sub_21E07AD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v43 = a2;
  v3 = type metadata accessor for BreathingScaleEffectModifier(0);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = v4;
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF18, &qword_21E152588);
  MEMORY[0x28223BE20](v35);
  v7 = &v35 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF20, &qword_21E152590);
  MEMORY[0x28223BE20](v37);
  v9 = &v35 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF28, &qword_21E152598);
  MEMORY[0x28223BE20](v38);
  v11 = &v35 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF30, &qword_21E1525A0);
  MEMORY[0x28223BE20](v40);
  v41 = &v35 - v12;
  v13 = v2 + *(v3 + 28);
  v14 = *v13;
  v15 = *(v13 + 8);
  v45 = *v13;
  v46 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
  sub_21E141714();
  v16 = 1.0;
  if (v44 == 1)
  {
    if (*(v2 + *(v3 + 20)))
    {
      v16 = 0.95;
    }

    else
    {
      v16 = 1.0;
    }
  }

  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v18 = v17;
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF38, &unk_21E1525A8);
  (*(*(v21 - 8) + 16))(v7, v36, v21);
  v22 = &v7[*(v35 + 36)];
  *v22 = v16;
  *(v22 + 1) = v16;
  *(v22 + 2) = v18;
  *(v22 + 3) = v20;
  LODWORD(v36) = *(v2 + *(v3 + 20));
  if (v36 == 1)
  {
    sub_21E141D74();
    v23 = v2;
    v24 = sub_21E141CF4();
  }

  else
  {
    v24 = sub_21E141D64();
    v23 = v2;
  }

  v45 = v14;
  v46 = v15;
  sub_21E141714();
  v25 = v44;
  sub_21DF3DE9C(v7, v9, &qword_27CEABF18, &qword_21E152588);
  v26 = &v9[*(v37 + 36)];
  *v26 = v24;
  v26[8] = v25;
  sub_21E07C5D8(v23, v5, type metadata accessor for BreathingScaleEffectModifier);
  v27 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v28 = swift_allocObject();
  sub_21E07C640(v5, v28 + v27, type metadata accessor for BreathingScaleEffectModifier);
  sub_21DF3DE9C(v9, v11, &qword_27CEABF20, &qword_21E152590);
  v29 = &v11[*(v38 + 36)];
  *v29 = sub_21E07C6A8;
  v29[1] = v28;
  v29[2] = 0;
  v29[3] = 0;
  sub_21E07C5D8(v23, v5, type metadata accessor for BreathingScaleEffectModifier);
  v30 = swift_allocObject();
  sub_21E07C640(v5, v30 + v27, type metadata accessor for BreathingScaleEffectModifier);
  v31 = v41;
  sub_21DF3DE9C(v11, v41, &qword_27CEABF28, &qword_21E152598);
  v32 = (v31 + *(v40 + 36));
  *v32 = 0;
  v32[1] = 0;
  v32[2] = sub_21E07C708;
  v32[3] = v30;
  v45 = v36;
  sub_21E07C5D8(v23, v5, type metadata accessor for BreathingScaleEffectModifier);
  v33 = swift_allocObject();
  sub_21E07C640(v5, v33 + v27, type metadata accessor for BreathingScaleEffectModifier);
  sub_21E07C7F4(&qword_27CEABF40, &qword_27CEABF30, &qword_21E1525A0, sub_21E07C878);
  sub_21E141324();

  return sub_21DF23614(v31, &qword_27CEABF30, &qword_21E1525A0);
}

uint64_t sub_21E07B300(uint64_t a1)
{
  v25 = a1;
  v26 = sub_21E141E74();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21E141E94();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BreathingScaleEffectModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_21E141EB4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  sub_21DFA9C80();
  v23 = sub_21E1425C4();
  sub_21E141EA4();
  sub_21E141EC4();
  v24 = *(v10 + 8);
  v24(v12, v9);
  sub_21E07C5D8(v25, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BreathingScaleEffectModifier);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_21E07C640(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for BreathingScaleEffectModifier);
  aBlock[4] = sub_21E07CA98;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E079CD4;
  aBlock[3] = &block_descriptor_8;
  v18 = _Block_copy(aBlock);

  sub_21E141E84();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21E01968C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E70, qword_21E1495C0);
  sub_21DF23E5C(&qword_280F68CA8, &qword_27CEA6E70, qword_21E1495C0, MEMORY[0x277D83970]);
  v19 = v26;
  sub_21E142764();
  v20 = v23;
  MEMORY[0x223D52DF0](v15, v5, v2, v18);
  _Block_release(v18);

  (*(v29 + 8))(v2, v19);
  (*(v27 + 8))(v5, v28);
  return (v24)(v15, v9);
}

uint64_t sub_21E07B7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a1;
  v54 = a2;
  v4 = type metadata accessor for BreathingContentEffectModifier(0);
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = v5;
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_21E13F444();
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v39[-v11];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABEC8, &qword_21E152558);
  MEMORY[0x28223BE20](v46);
  v14 = &v39[-v13];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABED0, &qword_21E152560);
  MEMORY[0x28223BE20](v47);
  v16 = &v39[-v15];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABED8, &qword_21E152568);
  MEMORY[0x28223BE20](v48);
  v49 = &v39[-v17];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABEE0, &unk_21E152570);
  MEMORY[0x28223BE20](v51);
  v52 = &v39[-v18];
  v19 = (v2 + *(v4 + 28));
  v20 = *v19;
  v21 = *(v19 + 1);
  v43 = v20;
  v56 = v20;
  v44 = v21;
  v57 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
  sub_21E141714();
  v22 = 1.0;
  if (v55 == 1 && *(v2 + *(v4 + 20)) == 1)
  {
    sub_21E021DE8(v12);
    v23 = v42;
    (*(v7 + 104))(v9, *MEMORY[0x277CDF3C0], v42);
    v40 = sub_21E13F434();
    v41 = v3;
    v24 = *(v7 + 8);
    v24(v9, v23);
    v24(v12, v23);
    v3 = v41;
    if (v40)
    {
      v22 = 0.7;
    }

    else
    {
      v22 = 0.75;
    }
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABEE8, &qword_21E152580);
  (*(*(v25 - 8) + 16))(v14, v45, v25);
  *&v14[*(v46 + 36)] = v22;
  v26 = *(v3 + *(v4 + 20));
  if (v26 == 1)
  {
    sub_21E141D74();
    v27 = sub_21E141CF4();
  }

  else
  {
    v27 = sub_21E141D64();
  }

  v56 = v43;
  v57 = v44;
  sub_21E141714();
  v28 = v55;
  sub_21DF3DE9C(v14, v16, &qword_27CEABEC8, &qword_21E152558);
  v29 = &v16[*(v47 + 36)];
  *v29 = v27;
  v29[8] = v28;
  sub_21E07C5D8(v3, v6, type metadata accessor for BreathingContentEffectModifier);
  v30 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v31 = swift_allocObject();
  sub_21E07C640(v6, v31 + v30, type metadata accessor for BreathingContentEffectModifier);
  v32 = v49;
  sub_21DF3DE9C(v16, v49, &qword_27CEABED0, &qword_21E152560);
  v33 = &v32[*(v48 + 36)];
  *v33 = sub_21E07BFC4;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  sub_21E07C5D8(v3, v6, type metadata accessor for BreathingContentEffectModifier);
  v34 = swift_allocObject();
  sub_21E07C640(v6, v34 + v30, type metadata accessor for BreathingContentEffectModifier);
  v35 = v52;
  sub_21DF3DE9C(v32, v52, &qword_27CEABED8, &qword_21E152568);
  v36 = &v35[*(v51 + 36)];
  *v36 = 0;
  v36[1] = 0;
  v36[2] = sub_21E07C130;
  v36[3] = v34;
  v56 = v26;
  sub_21E07C5D8(v3, v6, type metadata accessor for BreathingContentEffectModifier);
  v37 = swift_allocObject();
  sub_21E07C640(v6, v37 + v30, type metadata accessor for BreathingContentEffectModifier);
  sub_21E07C7F4(&qword_27CEABEF0, &qword_27CEABEE0, &unk_21E152570, sub_21E07C19C);
  sub_21E141324();

  return sub_21DF23614(v35, &qword_27CEABEE0, &unk_21E152570);
}

uint64_t sub_21E07BE4C(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2(0);
  if (*(a1 + *(result + 20)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
    return sub_21E141724();
  }

  return result;
}

uint64_t sub_21E07BED4(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
  return sub_21E141724();
}

uint64_t sub_21E07BF48(uint64_t a1, char *a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
  return sub_21E141724();
}

uint64_t objectdestroyTm_21(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v1 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_21E07C19C()
{
  result = qword_27CEABEF8;
  if (!qword_27CEABEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABED8, &qword_21E152568);
    sub_21E07C930(&qword_27CEABF00, &qword_27CEABED0, &qword_21E152560, sub_21E07C254);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABEF8);
  }

  return result;
}

unint64_t sub_21E07C254()
{
  result = qword_27CEABF08;
  if (!qword_27CEABF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABEC8, &qword_21E152558);
    sub_21DF23E5C(&qword_27CEABF10, &qword_27CEABEE8, &qword_21E152580, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABF08);
  }

  return result;
}

uint64_t sub_21E07C33C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for MorphingContainerBackgroundModifier(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t objectdestroy_25Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for MorphingContainerBackgroundModifier(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21E13F444();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v4 + v7 + *(v6 + 40), v5);

  return swift_deallocObject();
}

uint64_t sub_21E07C53C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for MorphingContainerBackgroundModifier(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_21E07ACEC(a1, a2, v10, v7, v8);
}

uint64_t sub_21E07C5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E07C640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E07C6A8()
{
  v1 = *(type metadata accessor for BreathingScaleEffectModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21E07B300(v2);
}

uint64_t sub_21E07C7F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21E07C878()
{
  result = qword_27CEABF48;
  if (!qword_27CEABF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABF28, &qword_21E152598);
    sub_21E07C930(&qword_27CEABF50, &qword_27CEABF20, &qword_21E152590, sub_21E07C9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABF48);
  }

  return result;
}

uint64_t sub_21E07C930(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648, &qword_21E146E50, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E07C9E0()
{
  result = qword_27CEABF58;
  if (!qword_27CEABF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABF18, &qword_21E152588);
    sub_21DF23E5C(&qword_27CEABF60, &qword_27CEABF38, &unk_21E1525A8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABF58);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E07CB6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA15ModifiedContentVyAHyAHyAHyAA01_c9Modifier_I0Vy018VisualIntelligenceB009Breathingi6EffectJ0VGAA08_OpacityN0VGAA010_AnimationJ0VySbGGAA017_AppearanceActionJ0VGAWG_SbQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_21E07C7F4(a4, a2, a3, a5);
  return swift_getOpaqueTypeConformance2();
}

uint64_t InternalAccessoryControlViewModifier.body(content:)(uint64_t a1)
{
  v2 = sub_21E1419A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF68, &qword_21E152620);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  v9 = sub_21E141514();

  KeyPath = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF70, &qword_21E152658);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF78, &unk_21E152660) + 36)];
  *v12 = KeyPath;
  v12[1] = v9;
  LOBYTE(a1) = sub_21E140914();
  sub_21E13F374();
  v13 = &v8[*(v6 + 36)];
  *v13 = a1;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_21E141964();
  sub_21E07F6E8(&qword_27CEABF80, &qword_27CEABF68, &qword_21E152620, sub_21E07EBB8);
  sub_21E06560C();
  sub_21E140E54();
  (*(v3 + 8))(v5, v2);
  return sub_21DF23614(v8, &qword_27CEABF68, &qword_21E152620);
}

uint64_t ControlMaterialProvider.resolveLayers(in:)()
{
  v0 = sub_21E141424();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF98, &qword_21E152670);
  sub_21E141C44();
  v4 = swift_allocObject();
  v6 = xmmword_21E145380;
  *(v4 + 16) = xmmword_21E145380;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFA0, &qword_21E152678);
  sub_21E141C24();
  *(swift_allocObject() + 16) = v6;
  sub_21E141C14();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0EE0], v0);
  sub_21E141544();
  sub_21E141C34();

  return v4;
}

uint64_t sub_21E07D1A8()
{
  v0 = sub_21E141424();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF98, &qword_21E152670);
  sub_21E141C44();
  v4 = swift_allocObject();
  v6 = xmmword_21E145380;
  *(v4 + 16) = xmmword_21E145380;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFA0, &qword_21E152678);
  sub_21E141C24();
  *(swift_allocObject() + 16) = v6;
  sub_21E141C14();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0EE0], v0);
  sub_21E141544();
  sub_21E141C34();

  return v4;
}

uint64_t sub_21E07D480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v58 = a3;
  v57 = sub_21E13F444();
  v5 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC028, &qword_21E152A48);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC030, &qword_21E152A50);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v16 = sub_21E140904();
  sub_21E13F374();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC038, &qword_21E152A58);
  (*(*(v25 - 8) + 16))(v11, a1, v25);
  v26 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC040, &qword_21E152A60) + 36)];
  *v26 = v16;
  *(v26 + 1) = v18;
  *(v26 + 2) = v20;
  *(v26 + 3) = v22;
  *(v26 + 4) = v24;
  v26[40] = 0;
  LOBYTE(a1) = sub_21E140974();
  sub_21E13F374();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC048, &qword_21E152A68) + 36)];
  *v35 = a1;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_21E141CC4();
  v38 = v37;
  v39 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC050, &qword_21E152A70) + 36)];
  *v39 = sub_21E141CC4();
  v39[1] = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC058, &qword_21E152A78);
  sub_21E07D8B8(v3, v39 + *(v41 + 44));
  v42 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC060, &qword_21E152A80) + 36));
  *v42 = v36;
  v42[1] = v38;
  v43 = sub_21E141524();
  KeyPath = swift_getKeyPath();
  v45 = &v11[*(v9 + 44)];
  *v45 = KeyPath;
  v45[1] = v43;
  v46 = MEMORY[0x277CDF3D0];
  if ((v3 & 1) == 0)
  {
    v46 = MEMORY[0x277CDF3C0];
  }

  v47 = v57;
  (*(v5 + 104))(v7, *v46, v57);
  v48 = swift_getKeyPath();
  v49 = &v15[*(v13 + 44)];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730, &qword_21E14B790);
  (*(v5 + 32))(v49 + *(v50 + 28), v7, v47);
  *v49 = v48;
  sub_21DF3DE9C(v11, v15, &qword_27CEAC028, &qword_21E152A48);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC068, &unk_21E152AC0);
  v52 = v58;
  v53 = v58 + *(v51 + 36);
  v54 = *MEMORY[0x277CE0118];
  v55 = sub_21E140144();
  (*(*(v55 - 8) + 104))(v53, v54, v55);
  *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E38, &qword_21E1461A0) + 36)) = 256;
  return sub_21DF3DE9C(v15, v52, &qword_27CEAC030, &qword_21E152A50);
}

uint64_t sub_21E07D8B8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v44 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC070, &qword_21E152AD0);
  MEMORY[0x28223BE20](v42);
  v3 = &v36[-v2];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC078, &qword_21E152AD8);
  MEMORY[0x28223BE20](v38);
  v5 = &v36[-v4];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC080, &qword_21E152AE0);
  MEMORY[0x28223BE20](v39);
  v7 = &v36[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC088, &qword_21E152AE8);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v41 = &v36[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC090, &qword_21E152AF0);
  MEMORY[0x28223BE20](v12);
  v40 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v36[-v15];
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_21E140144();
  v19 = *(*(v18 - 8) + 104);
  v19(v16, v17, v18);
  sub_21E07F258();
  sub_21E141C54();
  *&v16[*(v12 + 56)] = 256;
  if (v37)
  {
    v19(v7, v17, v18);
    sub_21E141BF4();
    *&v7[*(v12 + 56)] = 256;
    v20 = &v7[*(v39 + 36)];
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730, &qword_21E14B790) + 28);
    v22 = *MEMORY[0x277CDF3D0];
    v23 = sub_21E13F444();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = swift_getKeyPath();
    sub_21DF236C0(v7, v5, &qword_27CEAC080, &qword_21E152AE0);
    swift_storeEnumTagMultiPayload();
    sub_21E07F2AC();
    sub_21DF23E5C(&qword_27CEAC0C0, &qword_27CEAC070, &qword_21E152AD0, MEMORY[0x277CDF3A0]);
    v24 = v41;
    sub_21E1402F4();
    v25 = v7;
    v26 = &qword_27CEAC080;
    v27 = &qword_21E152AE0;
  }

  else
  {
    v19(v3, v17, v18);
    sub_21E141484();
    v28 = sub_21E141514();

    _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
    sub_21E141514();

    v29 = v42;
    v30 = &v3[*(v42 + 52)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0A0, &qword_21E152AF8);
    sub_21E13F4B4();

    *v30 = v28;
    _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
    sub_21E141514();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0A8, &qword_21E152B00);
    sub_21E13F4B4();

    *&v3[*(v29 + 56)] = 256;
    sub_21DF236C0(v3, v5, &qword_27CEAC070, &qword_21E152AD0);
    swift_storeEnumTagMultiPayload();
    sub_21E07F2AC();
    sub_21DF23E5C(&qword_27CEAC0C0, &qword_27CEAC070, &qword_21E152AD0, MEMORY[0x277CDF3A0]);
    v24 = v41;
    sub_21E1402F4();
    v25 = v3;
    v26 = &qword_27CEAC070;
    v27 = &qword_21E152AD0;
  }

  sub_21DF23614(v25, v26, v27);
  v31 = v40;
  sub_21DF236C0(v16, v40, &qword_27CEAC090, &qword_21E152AF0);
  v32 = v43;
  sub_21DF236C0(v24, v43, &qword_27CEAC088, &qword_21E152AE8);
  v33 = v44;
  sub_21DF236C0(v31, v44, &qword_27CEAC090, &qword_21E152AF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0C8, &qword_21E152B08);
  sub_21DF236C0(v32, v33 + *(v34 + 48), &qword_27CEAC088, &qword_21E152AE8);
  sub_21DF23614(v24, &qword_27CEAC088, &qword_21E152AE8);
  sub_21DF23614(v16, &qword_27CEAC090, &qword_21E152AF0);
  sub_21DF23614(v32, &qword_27CEAC088, &qword_21E152AE8);
  return sub_21DF23614(v31, &qword_27CEAC090, &qword_21E152AF0);
}

uint64_t CapsuleInsetSpreadShadowModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E141CC4();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFA8, &qword_21E152680) + 36);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_21E140144();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_21E141484();
  v10 = sub_21E141514();

  v11 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB0, &qword_21E152688) + 36);
  *v11 = v10;
  *(v11 + 8) = xmmword_21E1525F0;
  *(v11 + 24) = 0x402E000000000000;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v13 = v12;
  v15 = v14;
  v16 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB8, &qword_21E152690) + 36));
  *v16 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  v16[1].i64[0] = v13;
  v16[1].i64[1] = v15;
  v17 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFC0, &qword_21E152698) + 36));
  *v17 = v4;
  v17[1] = v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFC8, &qword_21E1526A0);
  v19 = *(*(v18 - 8) + 16);

  return v19(a2, a1, v18);
}

uint64_t sub_21E07E0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E141CC4();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFA8, &qword_21E152680) + 36);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_21E140144();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_21E141484();
  v10 = sub_21E141514();

  v11 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB0, &qword_21E152688) + 36);
  *v11 = v10;
  *(v11 + 8) = xmmword_21E1525F0;
  *(v11 + 24) = 0x402E000000000000;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v13 = v12;
  v15 = v14;
  v16 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB8, &qword_21E152690) + 36));
  *v16 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  v16[1].i64[0] = v13;
  v16[1].i64[1] = v15;
  v17 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFC0, &qword_21E152698) + 36));
  *v17 = v4;
  v17[1] = v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFC8, &qword_21E1526A0);
  v19 = *(*(v18 - 8) + 16);

  return v19(a2, a1, v18);
}

uint64_t sub_21E07E298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0D0, &qword_21E152B10);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0D8, &qword_21E152B18) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  LOBYTE(a1) = sub_21E140914();
  sub_21E13F374();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0E0, &qword_21E152B20) + 36);
  *v16 = a1;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = sub_21E141CC4();
  v19 = v18;
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0E8, &qword_21E152B28) + 36));
  *v20 = sub_21E141CC4();
  v20[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0F0, &qword_21E152B30);
  sub_21E07E49C(v20 + *(v22 + 44));
  v23 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0F8, &qword_21E152B38) + 36));
  *v23 = v17;
  v23[1] = v19;
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC100, &qword_21E152B40) + 36));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730, &qword_21E14B790) + 28);
  v26 = *MEMORY[0x277CDF3C0];
  v27 = sub_21E13F444();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  result = swift_getKeyPath();
  *v24 = result;
  return result;
}

uint64_t sub_21E07E49C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC108, &qword_21E152B48);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v19 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC110, &qword_21E152B50);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_21E07F258();
  sub_21E141C54();
  *&v14[*(v9 + 64)] = 256;
  sub_21E141484();
  v15 = sub_21E141514();

  _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  sub_21E141514();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0A0, &qword_21E152AF8);
  sub_21E13F4B4();

  *v7 = v15;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  sub_21E141514();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0A8, &qword_21E152B00);
  sub_21E13F4B4();

  *(v7 + *(v2 + 64)) = 256;
  sub_21DF236C0(v14, v11, &qword_27CEAC110, &qword_21E152B50);
  sub_21DF236C0(v7, v4, &qword_27CEAC108, &qword_21E152B48);
  v16 = v20;
  sub_21DF236C0(v11, v20, &qword_27CEAC110, &qword_21E152B50);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC118, &unk_21E152B58);
  sub_21DF236C0(v4, v16 + *(v17 + 48), &qword_27CEAC108, &qword_21E152B48);
  sub_21DF23614(v7, &qword_27CEAC108, &qword_21E152B48);
  sub_21DF23614(v14, &qword_27CEAC110, &qword_21E152B50);
  sub_21DF23614(v4, &qword_27CEAC108, &qword_21E152B48);
  return sub_21DF23614(v11, &qword_27CEAC110, &qword_21E152B50);
}

uint64_t CircleInsetSpreadShadowModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E141CC4();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFD0, &qword_21E1526A8) + 36);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_21E140144();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_21E141484();
  v10 = sub_21E141514();

  v11 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB0, &qword_21E152688) + 36);
  *v11 = v10;
  *(v11 + 8) = xmmword_21E1525F0;
  *(v11 + 24) = 0x402E000000000000;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v13 = v12;
  v15 = v14;
  v16 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB8, &qword_21E152690) + 36));
  *v16 = vdupq_n_s64(0x3FEE666666666666uLL);
  v16[1].i64[0] = v13;
  v16[1].i64[1] = v15;
  v17 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFC0, &qword_21E152698) + 36));
  *v17 = v4;
  v17[1] = v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFD8, &qword_21E1526B0);
  v19 = *(*(v18 - 8) + 16);

  return v19(a2, a1, v18);
}

uint64_t sub_21E07E950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E141CC4();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFD0, &qword_21E1526A8) + 36);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_21E140144();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_21E141484();
  v10 = sub_21E141514();

  v11 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB0, &qword_21E152688) + 36);
  *v11 = v10;
  *(v11 + 8) = xmmword_21E1525F0;
  *(v11 + 24) = 0x402E000000000000;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v13 = v12;
  v15 = v14;
  v16 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB8, &qword_21E152690) + 36));
  *v16 = vdupq_n_s64(0x3FEE666666666666uLL);
  v16[1].i64[0] = v13;
  v16[1].i64[1] = v15;
  v17 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFC0, &qword_21E152698) + 36));
  *v17 = v4;
  v17[1] = v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFD8, &qword_21E1526B0);
  v19 = *(*(v18 - 8) + 16);

  return v19(a2, a1, v18);
}

uint64_t View.controlCircleStyle()(uint64_t a1, uint64_t a2)
{
  v6[0] = sub_21E07EC9C();
  v6[1] = v4;
  MEMORY[0x223D51B40](v6, a1, &type metadata for ControlCircleStyling, a2);
}

unint64_t sub_21E07EBB8()
{
  result = qword_27CEABF88;
  if (!qword_27CEABF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABF78, &unk_21E152660);
    sub_21DF23E5C(&qword_27CEABF90, &qword_27CEABF70, &qword_21E152658, MEMORY[0x277CE04B0]);
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48, &qword_21E14A040, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABF88);
  }

  return result;
}

uint64_t sub_21E07EC9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA6858, &unk_21E147300);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21E144A20;
  sub_21E07F390();
  v1 = [objc_opt_self() textAssistantReplacementBuildInPalette];
  v2 = sub_21E142604();
  [v2 setDuration_];
  [v2 setDirection_];
  v3 = [objc_opt_self() directionalLightWithConfiguration_];
  v4 = [objc_allocWithZone(MEMORY[0x277D76028]) initWithLightSource_];

  *(v0 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC120, &qword_21E152B68);
  sub_21E141704();
  return v6;
}

unint64_t sub_21E07EDFC()
{
  result = qword_27CEABFE0;
  if (!qword_27CEABFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABFE0);
  }

  return result;
}

unint64_t sub_21E07EE54()
{
  result = qword_27CEABFE8;
  if (!qword_27CEABFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABFE8);
  }

  return result;
}

unint64_t sub_21E07EF20()
{
  result = qword_27CEABFF0;
  if (!qword_27CEABFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABFA8, &qword_21E152680);
    sub_21DF23E5C(&qword_27CEABFF8, &qword_27CEABFC8, &qword_21E1526A0, MEMORY[0x277CE04B0]);
    sub_21DF23E5C(&qword_27CEAC000, &qword_27CEABFC0, &qword_21E152698, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABFF0);
  }

  return result;
}

unint64_t sub_21E07F004()
{
  result = qword_27CEAC008;
  if (!qword_27CEAC008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABFD0, &qword_21E1526A8);
    sub_21DF23E5C(&qword_27CEAC010, &qword_27CEABFD8, &qword_21E1526B0, MEMORY[0x277CE04B0]);
    sub_21DF23E5C(&qword_27CEAC000, &qword_27CEABFC0, &qword_21E152698, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC008);
  }

  return result;
}

unint64_t sub_21E07F0E8()
{
  result = qword_27CEAC018;
  if (!qword_27CEAC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC018);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx018VisualIntelligenceB021ControlCapsuleStylingVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_21E13FB54();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_21E07F1AC()
{
  result = qword_27CEAC020;
  if (!qword_27CEAC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC020);
  }

  return result;
}

unint64_t sub_21E07F258()
{
  result = qword_27CEAC098;
  if (!qword_27CEAC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC098);
  }

  return result;
}

unint64_t sub_21E07F2AC()
{
  result = qword_27CEAC0B0;
  if (!qword_27CEAC0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC080, &qword_21E152AE0);
    sub_21DF23E5C(&qword_27CEAC0B8, &qword_27CEAC090, &qword_21E152AF0, MEMORY[0x277CDF3A0]);
    sub_21DF23E5C(&qword_280F68DE0, &qword_27CEA9730, &qword_21E14B790, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC0B0);
  }

  return result;
}

unint64_t sub_21E07F390()
{
  result = qword_27CEAA6D8;
  if (!qword_27CEAA6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEAA6D8);
  }

  return result;
}

unint64_t sub_21E07F3DC()
{
  result = qword_27CEAC128;
  if (!qword_27CEAC128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC068, &unk_21E152AC0);
    sub_21E07F494();
    sub_21DF23E5C(&qword_27CEA6E60, &qword_27CEA6E38, &qword_21E1461A0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC128);
  }

  return result;
}

unint64_t sub_21E07F494()
{
  result = qword_27CEAC130;
  if (!qword_27CEAC130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC030, &qword_21E152A50);
    sub_21E07F54C();
    sub_21DF23E5C(&qword_280F68DE0, &qword_27CEA9730, &qword_21E14B790, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC130);
  }

  return result;
}

unint64_t sub_21E07F54C()
{
  result = qword_27CEAC138;
  if (!qword_27CEAC138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC028, &qword_21E152A48);
    sub_21E07F604();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48, &qword_21E14A040, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC138);
  }

  return result;
}

unint64_t sub_21E07F604()
{
  result = qword_27CEAC140;
  if (!qword_27CEAC140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC050, &qword_21E152A70);
    sub_21E07F6E8(&qword_27CEAC148, &qword_27CEAC048, &qword_21E152A68, sub_21E07F76C);
    sub_21DF23E5C(&qword_27CEAC160, &qword_27CEAC060, &qword_21E152A80, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC140);
  }

  return result;
}

uint64_t sub_21E07F6E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21E07F76C()
{
  result = qword_27CEAC150;
  if (!qword_27CEAC150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC040, &qword_21E152A60);
    sub_21DF23E5C(&qword_27CEAC158, &qword_27CEAC038, &qword_21E152A58, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC150);
  }

  return result;
}

unint64_t sub_21E07F824()
{
  result = qword_27CEAC168;
  if (!qword_27CEAC168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC100, &qword_21E152B40);
    sub_21E07F8DC();
    sub_21DF23E5C(&qword_280F68DE0, &qword_27CEA9730, &qword_21E14B790, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC168);
  }

  return result;
}

unint64_t sub_21E07F8DC()
{
  result = qword_27CEAC170;
  if (!qword_27CEAC170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC0E8, &qword_21E152B28);
    sub_21E07F6E8(&qword_27CEAC178, &qword_27CEAC0E0, &qword_21E152B20, sub_21E07F9C0);
    sub_21DF23E5C(&qword_27CEAC190, &qword_27CEAC0F8, &qword_21E152B38, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC170);
  }

  return result;
}

unint64_t sub_21E07F9C0()
{
  result = qword_27CEAC180;
  if (!qword_27CEAC180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC0D8, &qword_21E152B18);
    sub_21DF23E5C(&qword_27CEAC188, &qword_27CEAC0D0, &qword_21E152B10, MEMORY[0x277CE04B0]);
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48, &qword_21E14A040, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC180);
  }

  return result;
}

char *VIUVisualIntelligenceOmnibar.__allocating_init(omniBar:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Omnibar(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = objc_allocWithZone(v2);
  *&v10[OBJC_IVAR___VIUVisualIntelligenceOmnibar_analysisResult] = 0;
  sub_21E02C8A4(a1, &v10[OBJC_IVAR___VIUVisualIntelligenceOmnibar_omniBar]);
  sub_21E02C8A4(a1, v9);
  v11 = objc_allocWithZone(type metadata accessor for VIUOmnibarHostingController(0));
  sub_21E02C8A4(v9, v6);
  v12 = sub_21E140204();
  sub_21E07FFF0(v9);
  *&v10[OBJC_IVAR___VIUVisualIntelligenceOmnibar_hostingController] = v12;
  v23.receiver = v10;
  v23.super_class = v2;
  v13 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR___VIUVisualIntelligenceOmnibar_hostingController;
  v15 = [*&v13[OBJC_IVAR___VIUVisualIntelligenceOmnibar_hostingController] view];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    [v13 bounds];
    [v17 setFrame_];

    [v17 setAutoresizingMask_];
    v18 = objc_opt_self();
    v19 = v17;
    v20 = [v18 clearColor];
    [v19 setBackgroundColor_];
  }

  result = [*&v13[v14] view];
  if (result)
  {
    v22 = result;
    [v13 addSubview_];

    sub_21E07FFF0(a1);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *VIUVisualIntelligenceOmnibar.init(omniBar:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Omnibar(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  *&v2[OBJC_IVAR___VIUVisualIntelligenceOmnibar_analysisResult] = 0;
  sub_21E02C8A4(a1, &v2[OBJC_IVAR___VIUVisualIntelligenceOmnibar_omniBar]);
  sub_21E02C8A4(a1, v9);
  objc_allocWithZone(type metadata accessor for VIUOmnibarHostingController(0));
  sub_21E02C8A4(v9, v6);
  v10 = sub_21E140204();
  sub_21E07FFF0(v9);
  *&v2[OBJC_IVAR___VIUVisualIntelligenceOmnibar_hostingController] = v10;
  v11 = type metadata accessor for VIUVisualIntelligenceOmnibar(0);
  v22.receiver = v2;
  v22.super_class = v11;
  v12 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR___VIUVisualIntelligenceOmnibar_hostingController;
  v14 = [*&v12[OBJC_IVAR___VIUVisualIntelligenceOmnibar_hostingController] view];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    [v12 bounds];
    [v16 setFrame_];

    [v16 setAutoresizingMask_];
    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 clearColor];
    [v18 setBackgroundColor_];
  }

  result = [*&v12[v13] view];
  if (result)
  {
    v21 = result;
    [v12 addSubview_];

    sub_21E07FFF0(a1);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E07FF30(uint64_t a1)
{
  v3 = type metadata accessor for Omnibar(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_21E02C8A4(a1, v5);
  v7 = sub_21E140204();
  sub_21E07FFF0(a1);
  return v7;
}

uint64_t sub_21E07FFF0(uint64_t a1)
{
  v2 = type metadata accessor for Omnibar(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id VIUVisualIntelligenceOmnibar.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_21E080290(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21E0802F8(uint64_t a1)
{
  result = type metadata accessor for Omnibar(319);
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

double FeatureOnboardingOverlay.init(experience:fullScreenRequested:continueAction:cancellationAction:)@<D0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  sub_21E141704();
  *(a7 + 64) = v15;
  *(a7 + 72) = v16;
  sub_21E141704();
  result = v15;
  *(a7 + 80) = v15;
  *(a7 + 88) = v16;
  *(a7 + 17) = v13;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  *(a7 + 56) = a2;
  return result;
}

VisualIntelligenceUI::FeatureOnboardingOverlayExperience_optional __swiftcall FeatureOnboardingOverlayExperience.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21E142A34();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeatureOnboardingOverlayExperience.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656D63416B7361;
  v3 = 1769105779;
  v4 = 0x617261746E6F6DLL;
  if (v1 != 3)
  {
    v4 = 0x6F4C6C6175736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6165536567616D69;
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

void sub_21E080620(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x656D63416B7361;
  v5 = 0xE400000000000000;
  v6 = 1769105779;
  v7 = 0xE700000000000000;
  v8 = 0x617261746E6F6DLL;
  if (v2 != 3)
  {
    v8 = 0x6F4C6C6175736976;
    v7 = 0xEC00000070556B6FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6165536567616D69;
    v3 = 0xEB00000000686372;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21E0806D4()
{
  sub_21E142C14();
  sub_21E142204();

  return sub_21E142C44();
}

double sub_21E0807C0(uint64_t a1)
{
  sub_21E142204();

  return result;
}

uint64_t sub_21E080898(uint64_t a1)
{
  sub_21E142C14();
  sub_21E142204();

  return sub_21E142C44();
}

uint64_t FeatureOnboardingOverlay.body.getter@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v46 = sub_21E140364();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1A8, &qword_21E152C38);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v6 = &v38 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1B0, &qword_21E152C40);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v38 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1B8, &qword_21E152C48);
  MEMORY[0x28223BE20](v39);
  v9 = &v38 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1C0, &qword_21E152C50);
  MEMORY[0x28223BE20](v38);
  v11 = &v38 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1C8, &qword_21E152C58);
  MEMORY[0x28223BE20](v47);
  v13 = &v38 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1D0, &qword_21E152C60);
  MEMORY[0x28223BE20](v48);
  v15 = &v38 - v14;
  v16 = v2[3];
  v60 = v2[2];
  v61 = v16;
  v17 = v2[5];
  v62 = v2[4];
  v63 = v17;
  v18 = v2[1];
  v58 = *v2;
  v59 = v18;
  v50 = &v58;
  sub_21E1408F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1D8, &qword_21E152C68);
  sub_21DF23E5C(&qword_27CEAC1E0, &qword_27CEAC1D8, &qword_21E152C68, MEMORY[0x277CE11A8]);
  sub_21E13F3C4();
  sub_21E140354();
  v19 = sub_21E1408F4();
  sub_21E1408E4();
  sub_21E1408E4();
  if (sub_21E1408E4() != v19)
  {
    sub_21E1408E4();
  }

  sub_21DF23E5C(&qword_27CEAC1E8, &qword_27CEAC1A8, &qword_21E152C38, MEMORY[0x277CDD6E0]);
  v20 = v40;
  v21 = v44;
  sub_21E141104();
  (*(v45 + 8))(v4, v46);
  (*(v43 + 8))(v6, v21);
  v22 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  KeyPath = swift_getKeyPath();
  (*(v41 + 32))(v9, v20, v42);
  v24 = &v9[*(v39 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = &v11[*(v38 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730, &qword_21E14B790) + 28);
  v27 = *MEMORY[0x277CDF3C0];
  v28 = sub_21E13F444();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  sub_21DF3DE9C(v9, v11, &qword_27CEAC1B8, &qword_21E152C48);
  sub_21E141CC4();
  sub_21E13FCE4();
  sub_21DF3DE9C(v11, v13, &qword_27CEAC1C0, &qword_21E152C50);
  v29 = ((BYTE1(v59) & 0xFE) != 2) & ~BYTE8(v61);
  v30 = &v13[*(v47 + 36)];
  v31 = v56;
  *(v30 + 4) = v55;
  *(v30 + 5) = v31;
  *(v30 + 6) = v57;
  v32 = v52;
  *v30 = v51;
  *(v30 + 1) = v32;
  v33 = v54;
  *(v30 + 2) = v53;
  *(v30 + 3) = v33;
  sub_21DF3DE9C(v13, v15, &qword_27CEAC1C8, &qword_21E152C58);
  v34 = &v15[*(v48 + 36)];
  *v34 = v29;
  v34[1] = 0;
  v35 = v49;
  sub_21DF3DE9C(v15, v49, &qword_27CEAC1D0, &qword_21E152C60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1F0, &qword_21E152CD8);
  v37 = (v35 + *(result + 36));
  *v37 = sub_21E081798;
  v37[1] = 0;
  v37[2] = 0;
  v37[3] = 0;
  return result;
}

uint64_t sub_21E0810A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_21E141CC4();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC230, &qword_21E152F48);
  return sub_21E0810F8(a1, a2 + *(v5 + 44));
}

uint64_t sub_21E0810F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC238, &qword_21E152F50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC240, &qword_21E152F58);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC248, &qword_21E152F60);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = v27 - v18;
  if (*(a1 + 56))
  {
    v27[0] = v10;
    v27[1] = a1;
    v28 = a2;
    v29 = 0;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA82D8, &qword_21E148A30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E147C80;
    v22 = sub_21E1408D4();
    *(inited + 32) = v22;
    v23 = sub_21E1408F4();
    *(inited + 33) = v23;
    sub_21E1408E4();
    sub_21E1408E4();
    if (sub_21E1408E4() != v22)
    {
      sub_21E1408E4();
    }

    sub_21E1408E4();
    if (sub_21E1408E4() != v23)
    {
      sub_21E1408E4();
    }

    v24 = v27[0];
    sub_21E141CC4();
    sub_21E141144();
    (*(v11 + 32))(v20, v13, v24);
    (*(v11 + 56))(v20, 0, 1, v24);
    a2 = v28;
  }

  else
  {
    (*(v11 + 56))(v27 - v18, 1, 1, v10, v19);
  }

  sub_21E0814D4(v9);
  sub_21DF236C0(v20, v16, &qword_27CEAC248, &qword_21E152F60);
  sub_21DF236C0(v9, v6, &qword_27CEAC238, &qword_21E152F50);
  sub_21DF236C0(v16, a2, &qword_27CEAC248, &qword_21E152F60);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC250, &unk_21E152F68);
  sub_21DF236C0(v6, a2 + *(v25 + 48), &qword_27CEAC238, &qword_21E152F50);
  sub_21DF23614(v9, &qword_27CEAC238, &qword_21E152F50);
  sub_21DF23614(v20, &qword_27CEAC248, &qword_21E152F60);
  sub_21DF23614(v6, &qword_27CEAC238, &qword_21E152F50);
  return sub_21DF23614(v16, &qword_27CEAC248, &qword_21E152F60);
}

uint64_t sub_21E0814D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC258, &qword_21E152F78);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC260, &qword_21E152F80);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v35 - v9;
  v11 = sub_21E13D934();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2[3];
  v37[2] = v2[2];
  v38 = v15;
  v16 = v2[5];
  v39 = v2[4];
  v40 = v16;
  v17 = v2[1];
  v37[0] = *v2;
  v37[1] = v17;
  sub_21E13D924();
  v18 = sub_21E13D914();
  v20 = v19;
  (*(v12 + 8))(v14, v11);
  v21 = sub_21E1401C4();
  v22 = 0x4034000000000000;
  if (BYTE8(v38))
  {
    v22 = 0x4050000000000000;
  }

  *v6 = v21;
  *(v6 + 1) = v22;
  v6[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC268, &qword_21E152F88);
  sub_21E081878(v37, v18, v20, &v6[*(v23 + 44)]);

  v24 = sub_21E140914();
  sub_21E13F374();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_21DF3DE9C(v6, v10, &qword_27CEAC258, &qword_21E152F78);
  v33 = &v10[*(v8 + 44)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  sub_21E140974();
  memset(v35, 0, sizeof(v35));
  v36 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC238, &qword_21E152F50);
  sub_21E1405A4();
  return sub_21DF3DE9C(v10, a1, &qword_27CEAC260, &qword_21E152F80);
}

uint64_t sub_21E081798()
{
  v0 = sub_21E13D444();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v5, 0, sizeof(v5));
  sub_21E13D454();
  sub_21E13D434();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21E081878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v392 = a2;
  v393 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC270, &qword_21E152F90);
  MEMORY[0x28223BE20](v6 - 8);
  v387 = &v311 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v386 = (&v311 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC278, &qword_21E152F98);
  MEMORY[0x28223BE20](v10);
  v327 = &v311 - v11;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC280, &qword_21E152FA0);
  MEMORY[0x28223BE20](v324);
  v323 = &v311 - v12;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC288, &qword_21E152FA8);
  MEMORY[0x28223BE20](v325);
  v326 = &v311 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v328 = &v311 - v15;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC290, &qword_21E152FB0);
  MEMORY[0x28223BE20](v377);
  v353 = &v311 - v16;
  v342 = sub_21E13D384();
  v341 = *(v342 - 8);
  MEMORY[0x28223BE20](v342);
  v363 = &v311 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = sub_21E140A64();
  v357 = *(v358 - 8);
  MEMORY[0x28223BE20](v358);
  v356 = &v311 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC298, &qword_21E152FB8);
  MEMORY[0x28223BE20](v359);
  v360 = &v311 - v19;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2A0, &qword_21E152FC0);
  MEMORY[0x28223BE20](v362);
  v345 = &v311 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2A8, &qword_21E152FC8);
  MEMORY[0x28223BE20](v21 - 8);
  v350 = &v311 - v22;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2B0, &qword_21E152FD0);
  MEMORY[0x28223BE20](v346);
  v351 = &v311 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v347 = &v311 - v25;
  MEMORY[0x28223BE20](v26);
  v352 = &v311 - v27;
  v340 = sub_21E13D0A4();
  MEMORY[0x28223BE20](v340);
  v339 = &v311 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2B8, &qword_21E152FD8);
  MEMORY[0x28223BE20](v29 - 8);
  v338 = &v311 - v30;
  v31 = sub_21E1420E4();
  MEMORY[0x28223BE20](v31 - 8);
  v322 = &v311 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v320 = &v311 - v34;
  MEMORY[0x28223BE20](v35);
  v319 = &v311 - v36;
  MEMORY[0x28223BE20](v37);
  v344 = &v311 - v38;
  MEMORY[0x28223BE20](v39);
  v337 = &v311 - v40;
  v41 = sub_21E1420C4();
  MEMORY[0x28223BE20](v41 - 8);
  v343 = &v311 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v335 = &v311 - v44;
  v367 = sub_21E13D0C4();
  v366 = *(v367 - 8);
  MEMORY[0x28223BE20](v367);
  v336 = &v311 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v365 = &v311 - v47;
  v349 = sub_21E13E1A4();
  v348 = *(v349 - 8);
  MEMORY[0x28223BE20](v349);
  v364 = &v311 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2C0, &qword_21E152FE0);
  MEMORY[0x28223BE20](v381);
  v383 = &v311 - v49;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2C8, &qword_21E152FE8);
  MEMORY[0x28223BE20](v374);
  v375 = &v311 - v50;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2D0, &unk_21E152FF0);
  MEMORY[0x28223BE20](v382);
  v376 = &v311 - v51;
  v52 = sub_21E1400C4();
  MEMORY[0x28223BE20](v52 - 8);
  v334 = &v311 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  MEMORY[0x28223BE20](v55);
  v371 = &v311 - v56;
  MEMORY[0x28223BE20](v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7200, &qword_21E146530);
  MEMORY[0x28223BE20](v58 - 8);
  v315 = &v311 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v332 = &v311 - v61;
  MEMORY[0x28223BE20](v62);
  v369 = &v311 - v63;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD1C0, &qword_21E153000);
  MEMORY[0x28223BE20](v390);
  v318 = &v311 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v314 = &v311 - v66;
  MEMORY[0x28223BE20](v67);
  v331 = &v311 - v68;
  MEMORY[0x28223BE20](v69);
  v71 = &v311 - v70;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2D8, &qword_21E153008);
  v378 = *(v379 - 8);
  MEMORY[0x28223BE20](v379);
  v313 = &v311 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v330 = &v311 - v74;
  MEMORY[0x28223BE20](v75);
  v368 = &v311 - v76;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2E0, &qword_21E153010);
  MEMORY[0x28223BE20](v389);
  v312 = &v311 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v329 = &v311 - v79;
  MEMORY[0x28223BE20](v80);
  v82 = &v311 - v81;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2E8, &qword_21E153018);
  MEMORY[0x28223BE20](v380);
  v317 = &v311 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v316 = &v311 - v85;
  MEMORY[0x28223BE20](v86);
  v333 = &v311 - v87;
  MEMORY[0x28223BE20](v88);
  v90 = &v311 - v89;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2F0, &qword_21E153020);
  MEMORY[0x28223BE20](v373);
  v321 = &v311 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v355 = &v311 - v93;
  MEMORY[0x28223BE20](v94);
  v354 = &v311 - v95;
  MEMORY[0x28223BE20](v96);
  v361 = &v311 - v97;
  MEMORY[0x28223BE20](v98);
  v372 = &v311 - v99;
  MEMORY[0x28223BE20](v100);
  v370 = &v311 - v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2F8, &qword_21E153028);
  MEMORY[0x28223BE20](v102 - 8);
  MEMORY[0x28223BE20](v103);
  v391 = &v311 - v104;
  v394 = a1;
  v105 = *(a1 + 17);
  v388 = a4;
  v384 = v10;
  v385 = v106;
  if (v105)
  {
    v107 = sub_21E142B14();

    if (v107)
    {
      goto LABEL_4;
    }

    if (v105 == 1)
    {
    }

    else
    {
      v135 = sub_21E142B14();

      if ((v135 & 1) == 0)
      {
        v134 = v394;
        v132 = v391;
        if (v105 == 2 || v105 == 3)
        {
          v209 = sub_21E142B14();

          if ((v209 & 1) == 0)
          {
            v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC300, &qword_21E153030);
            (*(*(v210 - 8) + 56))(v132, 1, 1, v210);
            goto LABEL_36;
          }
        }

        else
        {
        }

        sub_21E1400D4();
        v211 = sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v212 = [objc_opt_self() mainBundle];
        }

        v213 = sub_21E140C64();
        v215 = v214;
        v395 = v213;
        v396 = v214;
        v217 = v216 & 1;
        v397 = v216 & 1;
        v398 = v218;
        v219 = v315;
        sub_21E141164();
        sub_21DF3DE8C(v213, v215, v217);

        v220 = sub_21E1409A4();
        KeyPath = swift_getKeyPath();
        v222 = v314;
        sub_21DF3DE9C(v219, v314, &qword_27CEA7200, &qword_21E146530);
        v223 = (v222 + *(v390 + 36));
        *v223 = KeyPath;
        v223[1] = v220;
        sub_21E1409F4();
        v224 = sub_21E085E10();
        v225 = v313;
        v393 = v224;
        sub_21E140D84();
        sub_21DF23614(v222, &qword_27CEAD1C0, &qword_21E153000);
        v226 = swift_getKeyPath();
        v227 = v312;
        (*(v378 + 32))(v312, v225, v379);
        v228 = v227 + *(v389 + 36);
        *v228 = v226;
        *(v228 + 8) = 1;
        v229 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
        v230 = v316;
        sub_21DF3DE9C(v227, v316, &qword_27CEAC2E0, &qword_21E153010);
        v231 = v380;
        *(v230 + *(v380 + 36)) = v229;
        sub_21E142084();
        if (!sub_21E1426B4())
        {
          v232 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v395 = sub_21E142184();
        v396 = v233;
        v234 = sub_21E085EC8();
        sub_21DF252E0();
        v392 = v234;
        sub_21E141024();

        sub_21DF23614(v230, &qword_27CEAC2E8, &qword_21E153018);
        sub_21E142084();
        v235 = sub_21E1426B4();
        v236 = v231;
        v379 = v211;
        if (!v235)
        {
          v237 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v238 = sub_21E142184();
        v240 = v239;
        v395 = v238;
        v396 = v239;

        v241 = sub_21E140C94();
        v243 = v242;
        v395 = v241;
        v396 = v242;
        v245 = v244 & 1;
        v397 = v244 & 1;
        v398 = v246;
        v247 = v318;
        sub_21E141164();
        sub_21DF3DE8C(v241, v243, v245);

        v248 = sub_21E1409A4();
        v249 = swift_getKeyPath();
        v250 = (v247 + *(v390 + 36));
        *v250 = v249;
        v250[1] = v248;
        sub_21E1409F4();
        v251 = v317;
        sub_21E140D84();
        sub_21DF23614(v247, &qword_27CEAD1C0, &qword_21E153000);
        v252 = swift_getKeyPath();
        v253 = v251 + *(v389 + 36);
        *v253 = v252;
        *(v253 + 8) = 1;
        *(v251 + *(v236 + 36)) = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
        v395 = v238;
        v396 = v240;
        sub_21E141024();
        sub_21DF23614(v251, &qword_27CEAC2E8, &qword_21E153018);

        sub_21E142084();
        if (!sub_21E1426B4())
        {
          v254 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v255 = sub_21E142184();
        v257 = v256;
        v395 = v255;
        v396 = v256;

        v258 = sub_21E140C94();
        v260 = v259;
        v395 = v258;
        v396 = v259;
        v262 = v261 & 1;
        v397 = v261 & 1;
        v398 = v263;
        v264 = v360;
        sub_21E141164();
        sub_21DF3DE8C(v258, v260, v262);

        v265 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
        v266 = swift_getKeyPath();
        v267 = (v264 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC330, &qword_21E1530E0) + 36));
        *v267 = v266;
        v267[1] = v265;
        sub_21E140994();
        v268 = v357;
        v269 = v356;
        v270 = v358;
        (*(v357 + 104))(v356, *MEMORY[0x277CE0A10], v358);
        v271 = sub_21E140A94();

        (*(v268 + 8))(v269, v270);
        v272 = swift_getKeyPath();
        v273 = (v264 + *(v359 + 36));
        *v273 = v272;
        v273[1] = v271;
        sub_21E1409E4();
        sub_21E086074();
        v274 = v323;
        sub_21E140D84();
        sub_21DF23614(v264, &qword_27CEAC298, &qword_21E152FB8);
        v275 = swift_getKeyPath();
        v276 = v274 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC348, &qword_21E1530E8) + 36);
        *v276 = v275;
        *(v276 + 8) = 1;
        _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
        v277 = sub_21E141514();

        *(v274 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC350, &qword_21E1530F0) + 36)) = v277;
        LOBYTE(v275) = sub_21E140924();
        sub_21E13F374();
        v278 = v274 + *(v362 + 36);
        *v278 = v275;
        *(v278 + 8) = v279;
        *(v278 + 16) = v280;
        *(v278 + 24) = v281;
        *(v278 + 32) = v282;
        *(v278 + 40) = 0;
        v283 = swift_getKeyPath();
        v284 = v274 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC358, &unk_21E153128) + 36);
        *v284 = v283;
        *(v284 + 8) = 0;
        *(v284 + 16) = 1;
        *(v274 + *(v324 + 36)) = 256;
        v395 = v255;
        v396 = v257;
        sub_21E0861E4();
        v285 = v328;
        sub_21E141024();
        sub_21DF23614(v274, &qword_27CEAC280, &qword_21E152FA0);

        v286 = swift_getKeyPath();
        v287 = swift_allocObject();
        v134 = v394;
        v288 = *(v394 + 48);
        v287[3] = *(v394 + 32);
        v287[4] = v288;
        v289 = *(v134 + 80);
        v287[5] = *(v134 + 64);
        v287[6] = v289;
        v290 = *(v134 + 16);
        v287[1] = *v134;
        v287[2] = v290;
        v291 = (v285 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC388, &qword_21E153168) + 36));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC390, &qword_21E153170);
        sub_21E0865A4(v134, &v395);
        sub_21E13F7D4();
        *v291 = v286;
        LOBYTE(v286) = sub_21E140934();
        sub_21E13F374();
        v292 = v285 + *(v325 + 36);
        *v292 = v286;
        *(v292 + 8) = v293;
        *(v292 + 16) = v294;
        *(v292 + 24) = v295;
        *(v292 + 32) = v296;
        *(v292 + 40) = 0;
        v297 = v361;
        sub_21DF236C0(v354, v361, &qword_27CEAC2F0, &qword_21E153020);
        v298 = v321;
        sub_21DF236C0(v355, v321, &qword_27CEAC2F0, &qword_21E153020);
        v299 = v326;
        sub_21DF236C0(v285, v326, &qword_27CEAC288, &qword_21E152FA8);
        v300 = v327;
        sub_21DF236C0(v297, v327, &qword_27CEAC2F0, &qword_21E153020);
        v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC398, &qword_21E153178);
        sub_21DF236C0(v298, v300 + *(v301 + 48), &qword_27CEAC2F0, &qword_21E153020);
        sub_21DF236C0(v299, v300 + *(v301 + 64), &qword_27CEAC288, &qword_21E152FA8);
        sub_21DF23614(v299, &qword_27CEAC288, &qword_21E152FA8);
        sub_21DF23614(v298, &qword_27CEAC2F0, &qword_21E153020);
        sub_21DF23614(v297, &qword_27CEAC2F0, &qword_21E153020);
        sub_21DF236C0(v300, v383, &qword_27CEAC278, &qword_21E152F98);
        swift_storeEnumTagMultiPayload();
        sub_21E0865DC();
        sub_21DF23E5C(&qword_27CEAC3B8, &qword_27CEAC278, &qword_21E152F98, MEMORY[0x277CE14C0]);
        v132 = v391;
        sub_21E1402F4();
        sub_21DF23614(v300, &qword_27CEAC278, &qword_21E152F98);
        sub_21DF23614(v328, &qword_27CEAC288, &qword_21E152FA8);
        sub_21DF23614(v355, &qword_27CEAC2F0, &qword_21E153020);
        sub_21DF23614(v354, &qword_27CEAC2F0, &qword_21E153020);
LABEL_35:
        v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC300, &qword_21E153030);
        (*(*(v302 - 8) + 56))(v132, 0, 1, v302);
        goto LABEL_36;
      }
    }

    sub_21E13E154();
    v136 = sub_21E13E174();
    v369 = sub_21E13E194();
    v370 = v137;
    v371 = sub_21E13E184();
    v392 = v138;
    sub_21E1400B4();
    sub_21E1400A4();
    sub_21E141634();
    sub_21E140084();

    sub_21E1400A4();
    v393 = v136;
    sub_21E140094();
    sub_21E1400A4();
    sub_21E1400E4();
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      v139 = [objc_opt_self() mainBundle];
    }

    v140 = sub_21E140C64();
    v142 = v141;
    v395 = v140;
    v396 = v141;
    v144 = v143 & 1;
    v397 = v143 & 1;
    v398 = v145;
    v146 = v332;
    sub_21E141164();
    sub_21DF3DE8C(v140, v142, v144);

    v147 = sub_21E140A44();
    v148 = swift_getKeyPath();
    v149 = v331;
    sub_21DF3DE9C(v146, v331, &qword_27CEA7200, &qword_21E146530);
    v150 = (v149 + *(v390 + 36));
    *v150 = v148;
    v150[1] = v147;
    sub_21E1409F4();
    sub_21E085E10();
    v151 = v330;
    sub_21E140D84();
    sub_21DF23614(v149, &qword_27CEAD1C0, &qword_21E153000);
    v152 = swift_getKeyPath();
    v153 = v329;
    (*(v378 + 32))(v329, v151, v379);
    v154 = v153 + *(v389 + 36);
    *v154 = v152;
    *(v154 + 8) = 1;
    v155 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
    v156 = v333;
    sub_21DF3DE9C(v153, v333, &qword_27CEAC2E0, &qword_21E153010);
    *(v156 + *(v380 + 36)) = v155;
    sub_21E1400B4();
    sub_21E1400A4();
    sub_21E140094();
    sub_21E1400A4();
    sub_21E1400E4();
    if (!sub_21E1426B4())
    {
      v157 = [objc_opt_self() mainBundle];
    }

    v158 = sub_21E140C64();
    v160 = v159;
    v162 = v161;
    sub_21E085EC8();
    sub_21E141014();
    sub_21DF3DE8C(v158, v160, v162 & 1);

    sub_21DF23614(v156, &qword_27CEAC2E8, &qword_21E153018);
    sub_21E1420B4();
    sub_21E1420A4();
    sub_21E142094();
    sub_21E1420A4();
    sub_21E142094();

    sub_21E1420A4();
    sub_21E142094();

    sub_21E1420A4();
    sub_21E1420D4();
    if (!sub_21E1426B4())
    {
      v163 = [objc_opt_self() mainBundle];
    }

    (*(v341 + 56))(v338, 1, 1, v342);
    v395 = MEMORY[0x277D84F90];
    sub_21E086750(&qword_27CEAC3C0, MEMORY[0x277CC8B58], MEMORY[0x277CC8B60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC3C8, &qword_21E153180);
    sub_21DF23E5C(&qword_27CEAC3D0, &qword_27CEAC3C8, &qword_21E153180, MEMORY[0x277D83970]);
    sub_21E142764();
    v164 = v365;
    sub_21E13D0B4();
    (*(v366 + 16))(v336, v164, v367);
    v165 = sub_21E140C74();
    v167 = v166;
    v395 = v165;
    v396 = v166;
    v169 = v168 & 1;
    v397 = v168 & 1;
    v398 = v170;
    v171 = v360;
    sub_21E141164();
    sub_21DF3DE8C(v165, v167, v169);

    v172 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
    v173 = swift_getKeyPath();
    v174 = (v171 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC330, &qword_21E1530E0) + 36));
    *v174 = v173;
    v174[1] = v172;
    sub_21E140994();
    v175 = v357;
    v176 = v356;
    v177 = v358;
    (*(v357 + 104))(v356, *MEMORY[0x277CE0A10], v358);
    v178 = sub_21E140A94();

    (*(v175 + 8))(v176, v177);
    v179 = swift_getKeyPath();
    v180 = (v171 + *(v359 + 36));
    *v180 = v179;
    v180[1] = v178;
    sub_21E1409E4();
    sub_21E086074();
    v181 = v345;
    sub_21E140D84();
    sub_21DF23614(v171, &qword_27CEAC298, &qword_21E152FB8);
    v182 = swift_getKeyPath();
    v183 = v181 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC348, &qword_21E1530E8) + 36);
    *v183 = v182;
    *(v183 + 8) = 1;
    _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
    v184 = sub_21E141514();

    *(v181 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC350, &qword_21E1530F0) + 36)) = v184;
    LOBYTE(v182) = sub_21E140924();
    sub_21E13F374();
    v185 = v181 + *(v362 + 36);
    *v185 = v182;
    *(v185 + 8) = v186;
    *(v185 + 16) = v187;
    *(v185 + 24) = v188;
    *(v185 + 32) = v189;
    *(v185 + 40) = 0;
    sub_21E1420B4();
    sub_21E1420A4();
    sub_21E142094();

    sub_21E1420A4();
    sub_21E1420D4();
    v190 = sub_21E1426B4();
    v191 = v394;
    if (!v190)
    {
      v192 = [objc_opt_self() mainBundle];
    }

    sub_21E13D374();
    v395 = sub_21E142184();
    v396 = v193;
    sub_21E086328();
    sub_21DF252E0();
    v194 = v350;
    sub_21E141024();

    sub_21DF23614(v181, &qword_27CEAC2A0, &qword_21E152FC0);
    v195 = swift_getKeyPath();
    v196 = swift_allocObject();
    v197 = v191[3];
    v196[3] = v191[2];
    v196[4] = v197;
    v198 = v191[5];
    v196[5] = v191[4];
    v196[6] = v198;
    v199 = v191[1];
    v196[1] = *v191;
    v196[2] = v199;
    v200 = v347;
    v201 = &v347[*(v346 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC390, &qword_21E153170);
    sub_21E0865A4(v191, &v395);
    sub_21E13F7D4();
    *v201 = v195;
    sub_21DF3DE9C(v194, v200, &qword_27CEAC2A8, &qword_21E152FC8);
    v202 = v352;
    sub_21DF3DE9C(v200, v352, &qword_27CEAC2B0, &qword_21E152FD0);
    v203 = v361;
    sub_21DF236C0(v372, v361, &qword_27CEAC2F0, &qword_21E153020);
    v204 = v351;
    sub_21DF236C0(v202, v351, &qword_27CEAC2B0, &qword_21E152FD0);
    v205 = v353;
    sub_21DF236C0(v203, v353, &qword_27CEAC2F0, &qword_21E153020);
    v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC3D8, &qword_21E153188);
    sub_21DF236C0(v204, v205 + *(v206 + 48), &qword_27CEAC2B0, &qword_21E152FD0);
    sub_21DF23614(v204, &qword_27CEAC2B0, &qword_21E152FD0);
    sub_21DF23614(v203, &qword_27CEAC2F0, &qword_21E153020);
    sub_21DF236C0(v205, v375, &qword_27CEAC290, &qword_21E152FB0);
    swift_storeEnumTagMultiPayload();
    sub_21E086694();
    v207 = MEMORY[0x277CE14C0];
    sub_21DF23E5C(&qword_27CEAC3B0, &qword_27CEAC290, &qword_21E152FB0, MEMORY[0x277CE14C0]);
    v208 = v376;
    sub_21E1402F4();
    sub_21DF236C0(v208, v383, &qword_27CEAC2D0, &unk_21E152FF0);
    swift_storeEnumTagMultiPayload();
    sub_21E0865DC();
    sub_21DF23E5C(&qword_27CEAC3B8, &qword_27CEAC278, &qword_21E152F98, v207);
    v132 = v391;
    v134 = v394;
    sub_21E1402F4();
    sub_21DF23614(v208, &qword_27CEAC2D0, &unk_21E152FF0);
    sub_21DF23614(v205, &qword_27CEAC290, &qword_21E152FB0);
    sub_21DF23614(v202, &qword_27CEAC2B0, &qword_21E152FD0);
    (*(v366 + 8))(v365, v367);
    sub_21DF23614(v372, &qword_27CEAC2F0, &qword_21E153020);
    (*(v348 + 8))(v364, v349);
    goto LABEL_35;
  }

LABEL_4:
  sub_21E1400B4();
  sub_21E1400A4();
  sub_21E141634();
  sub_21E140084();

  sub_21E1400A4();
  sub_21E140094();
  v372 = "rvice and Privacy Policy";
  sub_21E1400A4();
  sub_21E1400E4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v108 = [objc_opt_self() mainBundle];
  }

  v109 = sub_21E140C64();
  v111 = v110;
  v395 = v109;
  v396 = v110;
  v113 = v112 & 1;
  v397 = v112 & 1;
  v398 = v114;
  v115 = v369;
  sub_21E141164();
  sub_21DF3DE8C(v109, v111, v113);

  v116 = sub_21E140A44();
  v117 = swift_getKeyPath();
  sub_21DF3DE9C(v115, v71, &qword_27CEA7200, &qword_21E146530);
  v118 = &v71[*(v390 + 36)];
  *v118 = v117;
  v118[1] = v116;
  sub_21E1409F4();
  sub_21E085E10();
  v119 = v368;
  sub_21E140D84();
  sub_21DF23614(v71, &qword_27CEAD1C0, &qword_21E153000);
  v120 = swift_getKeyPath();
  (*(v378 + 32))(v82, v119, v379);
  v121 = &v82[*(v389 + 36)];
  *v121 = v120;
  v121[8] = 1;
  v122 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  sub_21DF3DE9C(v82, v90, &qword_27CEAC2E0, &qword_21E153010);
  *&v90[*(v380 + 36)] = v122;
  sub_21E1400B4();
  sub_21E1400A4();
  sub_21E140094();
  sub_21E1400A4();
  sub_21E1400E4();
  if (!sub_21E1426B4())
  {
    v123 = [objc_opt_self() mainBundle];
  }

  v124 = sub_21E140C64();
  v126 = v125;
  v128 = v127;
  sub_21E085EC8();
  v129 = v370;
  sub_21E141014();
  sub_21DF3DE8C(v124, v126, v128 & 1);

  sub_21DF23614(v90, &qword_27CEAC2E8, &qword_21E153018);
  sub_21DF236C0(v129, v375, &qword_27CEAC2F0, &qword_21E153020);
  swift_storeEnumTagMultiPayload();
  sub_21E086694();
  v130 = MEMORY[0x277CE14C0];
  sub_21DF23E5C(&qword_27CEAC3B0, &qword_27CEAC290, &qword_21E152FB0, MEMORY[0x277CE14C0]);
  v131 = v376;
  sub_21E1402F4();
  sub_21DF236C0(v131, v383, &qword_27CEAC2D0, &unk_21E152FF0);
  swift_storeEnumTagMultiPayload();
  sub_21E0865DC();
  sub_21DF23E5C(&qword_27CEAC3B8, &qword_27CEAC278, &qword_21E152F98, v130);
  v132 = v391;
  sub_21E1402F4();
  sub_21DF23614(v131, &qword_27CEAC2D0, &unk_21E152FF0);
  sub_21DF23614(v129, &qword_27CEAC2F0, &qword_21E153020);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC300, &qword_21E153030);
  (*(*(v133 - 8) + 56))(v132, 0, 1, v133);
  v134 = v394;
LABEL_36:
  v303 = sub_21E1401C4();
  v304 = v386;
  *v386 = v303;
  *(v304 + 8) = 0x4000000000000000;
  *(v304 + 16) = 0;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC308, &qword_21E153038);
  sub_21E084CE8(v134, v304 + *(v305 + 44));
  v306 = v385;
  sub_21DF236C0(v132, v385, &qword_27CEAC2F8, &qword_21E153028);
  v307 = v387;
  sub_21DF236C0(v304, v387, &qword_27CEAC270, &qword_21E152F90);
  v308 = v388;
  sub_21DF236C0(v306, v388, &qword_27CEAC2F8, &qword_21E153028);
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC310, &qword_21E153040);
  sub_21DF236C0(v307, v308 + *(v309 + 48), &qword_27CEAC270, &qword_21E152F90);
  sub_21DF23614(v304, &qword_27CEAC270, &qword_21E152F90);
  sub_21DF23614(v132, &qword_27CEAC2F8, &qword_21E153028);
  sub_21DF23614(v307, &qword_27CEAC270, &qword_21E152F90);
  return sub_21DF23614(v306, &qword_27CEAC2F8, &qword_21E153028);
}

uint64_t sub_21E084B50(uint64_t a1)
{
  v3 = sub_21E13FF94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 16) == 1)
  {
  }

  else
  {

    sub_21E142574();
    v8 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();
    sub_21DF446B8();
    (*(v4 + 8))(v6, v3);
    v7 = v10;
  }

  LOBYTE(v10) = 1;
  v7(a1, &v10);

  return sub_21E13F7C4();
}

uint64_t sub_21E084CE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC3E0, &qword_21E153190);
  MEMORY[0x28223BE20](v38);
  v39 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC3E8, &qword_21E153198);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC3F0, &qword_21E1531A0);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC3F8, &qword_21E1531A8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC400, &qword_21E1531B0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC408, &qword_21E1531B8);
  MEMORY[0x28223BE20](v17 - 8);
  v41 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B00, &unk_21E14D0E0);
  sub_21DFB8B9C();
  sub_21E141764();
  sub_21DF23E5C(&qword_27CEAC410, &qword_27CEAC3F8, &qword_21E1531A8, MEMORY[0x277CDF028]);
  sub_21E0867FC();
  sub_21E140DD4();
  (*(v11 + 8))(v13, v10);
  *&v16[*(v14 + 36)] = sub_21E1404A4();
  sub_21E086850();
  sub_21E141164();
  v22 = sub_21DF23614(v16, &qword_27CEAC400, &qword_21E1531B0);
  v23 = a1[5];
  v24 = 1;
  if (v23)
  {
    v25 = a1[6];
    MEMORY[0x28223BE20](v22);
    *(&v36 - 2) = a1;
    sub_21DF09028(v23, v25);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC430, &qword_21E1531C8);
    sub_21E086A04();
    v26 = v39;
    sub_21E141764();
    v27 = sub_21E140904();
    v28 = v26 + *(v38 + 36);
    *v28 = v27;
    *(v28 + 8) = 0u;
    *(v28 + 24) = 0u;
    *(v28 + 40) = 1;
    sub_21E086B48();
    v29 = v37;
    sub_21E141164();
    sub_21DF1F1DC(v23, v25);
    sub_21DF23614(v26, &qword_27CEAC3E0, &qword_21E153190);
    v30 = v40;
    sub_21DF3DE9C(v29, v40, &qword_27CEAC3E8, &qword_21E153198);
    v24 = 0;
  }

  else
  {
    v30 = v40;
  }

  (*(v42 + 56))(v30, v24, 1, v43);
  v31 = v41;
  sub_21DF236C0(v21, v41, &qword_27CEAC408, &qword_21E1531B8);
  v32 = v44;
  sub_21E08698C(v30, v44);
  v33 = v45;
  sub_21DF236C0(v31, v45, &qword_27CEAC408, &qword_21E1531B8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC428, &qword_21E1531C0);
  sub_21E08698C(v32, v33 + *(v34 + 48));
  sub_21DF23614(v30, &qword_27CEAC3F0, &qword_21E1531A0);
  sub_21DF23614(v21, &qword_27CEAC408, &qword_21E1531B8);
  sub_21DF23614(v32, &qword_27CEAC3F0, &qword_21E1531A0);
  return sub_21DF23614(v31, &qword_27CEAC408, &qword_21E1531B8);
}
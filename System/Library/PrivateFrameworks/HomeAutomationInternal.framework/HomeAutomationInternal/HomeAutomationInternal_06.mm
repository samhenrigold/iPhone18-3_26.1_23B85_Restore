uint64_t sub_252999524()
{
  v75 = sub_252E36324();
  v1 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v61 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v4 = MEMORY[0x28223BE20](v3);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v60 = &v54 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v62 = &v54 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v64 = &v54 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v63 = &v54 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = (&v54 - v23);
  v25 = sub_252997898(*(v0 + 24));
  v26 = v25;
  v77 = MEMORY[0x277D84F90];
  if (v25 >> 62)
  {
    goto LABEL_81;
  }

  v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v28 = MEMORY[0x277D84F90];
  v66 = v3;
  v55 = v13;
  v56 = v18;
  v68 = v24;
  if (v27)
  {
    v76 = v1;
    v1 = 0;
    v24 = (v26 & 0xC000000000000001);
    v13 = v26 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v24)
      {
        MEMORY[0x2530ADF00](v1, v26);
        v18 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v1 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v18 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          v27 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      MEMORY[0x2530AD700]();
      v3 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v1;
      if (v18 == v27)
      {
        v1 = v76;
        v28 = v77;
        v3 = v66;
        break;
      }
    }
  }

  v18 = sub_252DF8E6C(v28);

  if (!(v18 >> 62))
  {
    v13 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_68;
    }

    goto LABEL_17;
  }

  v13 = sub_252E378C4();
  if (v13)
  {
LABEL_17:
    v29 = 0;
    v67 = v18 & 0xFFFFFFFFFFFFFF8;
    v73 = (v1 + 56);
    v74 = v18 & 0xC000000000000001;
    v76 = (v1 + 48);
    v58 = (v1 + 32);
    v65 = (v1 + 8);
    v69 = v18;
    v72 = v13;
    while (1)
    {
      if (v74)
      {
        v1 = MEMORY[0x2530ADF00](v29, v18);
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v29 >= *(v67 + 16))
        {
          goto LABEL_76;
        }

        v1 = *(v18 + 8 * v29 + 32);

        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          v71 = v3;
          sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
LABEL_33:
          v9 = 0;
          v26 = 0x656E746867697262;
          v24 = &qword_27F540298;
          v3 = &qword_27F540758;
          while (2)
          {
            if (v74)
            {
              v1 = MEMORY[0x2530ADF00](v9, v69);
            }

            else
            {
              if (v9 >= *(v67 + 16))
              {
                goto LABEL_79;
              }

              v1 = *(v69 + 8 * v9 + 32);
            }

            v18 = v9 + 1;
            v36 = v64;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_77;
            }

            v37 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
            sub_252E37024();
            v38 = v75;
            v70(v36, 0, 1, v75);
            v13 = *(v66 + 12);
            v39 = v1 + v37;
            v40 = v60;
            sub_252956C1C(v39, v60);
            sub_252956C1C(v36, v40 + v13);
            if ((v71)(v40, 1, v38) == 1)
            {

              sub_25293847C(v36, v24, &unk_252E3C270);
              if ((v71)(v40 + v13, 1, v38) == 1)
              {
                sub_25293847C(v40, &qword_27F540298, &unk_252E3C270);
                v46 = v57;
LABEL_49:
                v9 = 0;
                v77 = MEMORY[0x277D84F90];
                v26 = &qword_27F540298;
                v24 = &qword_27F540758;
                v47 = v69;
                while (2)
                {
                  if (v74)
                  {
                    v3 = MEMORY[0x2530ADF00](v9, v47);
                  }

                  else
                  {
                    if (v9 >= *(v67 + 16))
                    {
                      goto LABEL_80;
                    }

                    v3 = *(v47 + 8 * v9 + 32);
                  }

                  v18 = v9 + 1;
                  v1 = v62;
                  if (__OFADD__(v9, 1))
                  {
                    goto LABEL_78;
                  }

                  v48 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
                  sub_252E37024();
                  v70(v1, 0, 1, v75);
                  v13 = *(v66 + 12);
                  v49 = v3 + v48;
                  v50 = v75;
                  sub_252956C1C(v49, v46);
                  sub_252956C1C(v1, v46 + v13);
                  if ((v71)(v46, 1, v50) == 1)
                  {
                    sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);
                    if ((v71)(v46 + v13, 1, v50) != 1)
                    {
LABEL_62:
                      sub_25293847C(v46, &qword_27F540758, &unk_252E4D160);
                      goto LABEL_63;
                    }

                    sub_25293847C(v46, &qword_27F540298, &unk_252E3C270);
                  }

                  else
                  {
                    v1 = v55;
                    sub_252956C1C(v46, v55);
                    if ((v71)(v46 + v13, 1, v50) == 1)
                    {
                      sub_25293847C(v62, &qword_27F540298, &unk_252E3C270);
                      (*v65)(v1, v50);
                      goto LABEL_62;
                    }

                    v51 = v61;
                    (*v58)(v61, v46 + v13, v50);
                    sub_25299EBD8(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
                    LODWORD(v68) = sub_252E36EF4();
                    v13 = *v65;
                    (*v65)(v51, v50);
                    sub_25293847C(v62, &qword_27F540298, &unk_252E3C270);
                    (v13)(v1, v50);
                    v24 = &qword_27F540758;
                    sub_25293847C(v46, &qword_27F540298, &unk_252E3C270);
                    if (v68)
                    {
                    }

                    else
                    {
LABEL_63:
                      sub_252E37A94();
                      sub_252E37AC4();
                      sub_252E37AD4();
                      sub_252E37AA4();
                    }

                    v46 = v57;
                    v47 = v69;
                  }

                  ++v9;
                  if (v18 == v72)
                  {

                    v18 = v77;
                    goto LABEL_68;
                  }

                  continue;
                }
              }

LABEL_35:
              sub_25293847C(v40, &qword_27F540758, &unk_252E4D160);
            }

            else
            {
              v41 = v56;
              sub_252956C1C(v40, v56);
              if ((v71)(v40 + v13, 1, v38) == 1)
              {

                sub_25293847C(v64, v24, &unk_252E3C270);
                (*v65)(v41, v38);
                goto LABEL_35;
              }

              v42 = v26;
              v43 = v24;
              v44 = v61;
              (*v58)(v61, v40 + v13, v38);
              sub_25299EBD8(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
              LODWORD(v68) = sub_252E36EF4();

              v1 = v65;
              v13 = *v65;
              v45 = v44;
              v24 = v43;
              v26 = v42;
              (*v65)(v45, v38);
              sub_25293847C(v64, v24, &unk_252E3C270);
              (v13)(v41, v38);
              v3 = &qword_27F540758;
              sub_25293847C(v40, v24, &unk_252E3C270);
              v46 = v57;
              if (v68)
              {
                goto LABEL_49;
              }
            }

            ++v9;
            if (v18 == v72)
            {
              v18 = v69;
              goto LABEL_68;
            }

            continue;
          }
        }
      }

      v31 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
      v24 = v68;
      sub_252E37024();
      v18 = v75;
      v70 = *v73;
      v70(v24, 0, 1, v75);
      v26 = v3;
      v13 = *(v3 + 12);
      v32 = v1 + v31;
      v33 = v18;
      sub_252956C1C(v32, v9);
      sub_252956C1C(v24, v9 + v13);
      v3 = *v76;
      if ((*v76)(v9, 1, v18) == 1)
      {
        break;
      }

      v34 = v63;
      sub_252956C1C(v9, v63);
      if ((v3)(v9 + v13, 1, v33) == 1)
      {

        sub_25293847C(v68, &qword_27F540298, &unk_252E3C270);
        (*v65)(v34, v33);
LABEL_19:
        sub_25293847C(v9, &qword_27F540758, &unk_252E4D160);
        v3 = v26;
        goto LABEL_20;
      }

      v71 = v3;
      v35 = v61;
      (*v58)(v61, v9 + v13, v33);
      sub_25299EBD8(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
      v26 = v34;
      v18 = v33;
      v59 = sub_252E36EF4();

      v1 = v65;
      v3 = v66;
      v13 = *v65;
      (*v65)(v35, v33);
      v24 = &qword_27F540298;
      sub_25293847C(v68, &qword_27F540298, &unk_252E3C270);
      (v13)(v26, v33);
      sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
      if (v59)
      {
        goto LABEL_33;
      }

LABEL_20:
      ++v29;
      v13 = v72;
      v18 = v69;
      if (v30 == v72)
      {
        goto LABEL_68;
      }
    }

    sub_25293847C(v24, &qword_27F540298, &unk_252E3C270);
    if ((v3)(v9 + v13, 1, v18) == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_19;
  }

LABEL_68:
  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
      goto LABEL_70;
    }

LABEL_85:

    return 0;
  }

  result = sub_252E378C4();
  if (result != 1)
  {
    goto LABEL_85;
  }

LABEL_70:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v53 = MEMORY[0x2530ADF00](0, v18);
    goto LABEL_73;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v53 = *(v18 + 32);

LABEL_73:

    return v53;
  }

  __break(1u);
  return result;
}

uint64_t sub_25299A2D0@<X0>(unint64_t a1@<X8>)
{
  v82 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v81 - v6;
  v8 = sub_252997898(*(v1 + 24));
  v9 = v8;
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_25:
    v11 = sub_252E378C4();
    v83 = v5;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_26:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v83 = v5;
  if (!v11)
  {
    goto LABEL_26;
  }

LABEL_3:
  v12 = 0;
  v84 = v9 & 0xC000000000000001;
  v13 = MEMORY[0x277D84F90];
  do
  {
    v14 = v12;
    v15 = v13;
    while (1)
    {
      if (v84)
      {
        v16 = MEMORY[0x2530ADF00](v14, v9);
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v14 >= *(v10 + 16))
        {
          goto LABEL_24;
        }

        v16 = *(v9 + 8 * v14 + 32);

        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      v17 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v17)
      {
        break;
      }

LABEL_6:

      ++v14;
      if (v12 == v11)
      {
        v13 = v15;
        goto LABEL_27;
      }
    }

    sub_252956C1C(v17 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v7);
    v5 = sub_252E36324();
    v18 = *(v5 - 1);
    if ((*(v18 + 48))(v7, 1, v5) == 1)
    {
      sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
      goto LABEL_6;
    }

    v81 = v10;
    v19 = sub_252E36304();
    v21 = v20;
    (*(v18 + 8))(v7, v5);

    v13 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_2529F7A80(0, *(v15 + 2) + 1, 1, v15);
    }

    v24 = *(v13 + 2);
    v23 = *(v13 + 3);
    v5 = (v24 + 1);
    if (v24 >= v23 >> 1)
    {
      v13 = sub_2529F7A80((v23 > 1), v24 + 1, 1, v13);
    }

    *(v13 + 2) = v5;
    v25 = &v13[16 * v24];
    *(v25 + 4) = v19;
    *(v25 + 5) = v21;
    v10 = v81;
  }

  while (v12 != v11);
LABEL_27:

  v26 = sub_252CC54B8(MEMORY[0x277D84F90]);
  v27 = *(v13 + 2);
  if (!v27)
  {
LABEL_43:

    v49 = 1 << *(v26 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & *(v26 + 64);
    if (v51)
    {
      v52 = 0;
      v53 = __clz(__rbit64(v51));
      v28 = (v51 - 1) & v51;
      v54 = (v49 + 63) >> 6;
LABEL_51:
      v57 = (*(v26 + 48) + 16 * v53);
      v9 = *v57;
      v30 = v57[1];
      v58 = *(*(v26 + 56) + 8 * v53);

      if (!v28)
      {
        goto LABEL_54;
      }

      do
      {
LABEL_52:
        while (1)
        {
          v59 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          v60 = v59 | (v52 << 6);
          v61 = *(*(v26 + 56) + 8 * v60);
          if (v58 < v61)
          {
            break;
          }

          if (!v28)
          {
            goto LABEL_54;
          }
        }

        v63 = (*(v26 + 48) + 16 * v60);
        v9 = *v63;
        v64 = v63[1];

        v30 = v64;
        v58 = v61;
      }

      while (v28);
      while (1)
      {
LABEL_54:
        v62 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          __break(1u);
          goto LABEL_75;
        }

        if (v62 >= v54)
        {
          break;
        }

        v28 = *(v26 + 64 + 8 * v62);
        ++v52;
        if (v28)
        {
          v52 = v62;
          goto LABEL_52;
        }
      }

      v28 = v83;
      if (!v30)
      {
        goto LABEL_70;
      }

      v65 = qword_27F53F2C8;

      if (v65 != -1)
      {
        goto LABEL_79;
      }

      goto LABEL_62;
    }

    v55 = 0;
    v54 = (v49 + 63) >> 6;
    v28 = v83;
    while (v54 - 1 != v51)
    {
      v52 = v51 + 1;
      v56 = *(v26 + 8 * v51 + 72);
      v55 -= 64;
      ++v51;
      if (v56)
      {
        v28 = (v56 - 1) & v56;
        v53 = __clz(__rbit64(v56)) - v55;
        goto LABEL_51;
      }
    }

LABEL_70:
    v72 = sub_252E36324();
    v79 = *(*(v72 - 8) + 56);
    v79(v28, 1, 1, v72);
    v79(v82, 1, 1, v72);
LABEL_71:
    sub_252E36324();
    result = (*(*(v72 - 8) + 48))(v28, 1, v72);
    if (result != 1)
    {
      return sub_25293847C(v28, &qword_27F540298, &unk_252E3C270);
    }

    return result;
  }

  v28 = 0;
  v29 = (v13 + 40);
  v30 = 1;
  while (2)
  {
    if (v28 < *(v13 + 2))
    {
      v31 = *(v29 - 1);
      v9 = *v29;

      v32 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v26;
      v33 = sub_252A44A10(v31, v9);
      v35 = *(v26 + 16);
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_76;
      }

      v39 = v34;
      if (*(v26 + 24) >= v38)
      {
        if (v32)
        {
          goto LABEL_35;
        }

        v48 = v33;
        sub_252E035F4();
        v33 = v48;
        v26 = v85;
        if ((v39 & 1) == 0)
        {
LABEL_36:
          *(v26 + 8 * (v33 >> 6) + 64) |= 1 << v33;
          v41 = (*(v26 + 48) + 16 * v33);
          *v41 = v31;
          v41[1] = v9;
          *(*(v26 + 56) + 8 * v33) = 0;
          v42 = *(v26 + 16);
          v37 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v37)
          {
            goto LABEL_78;
          }

          *(v26 + 16) = v43;
          v44 = v33;

          v33 = v44;
        }
      }

      else
      {
        sub_252DFF440(v38, v32);
        v26 = v85;
        v33 = sub_252A44A10(v31, v9);
        if ((v39 & 1) != (v40 & 1))
        {
          result = sub_252E37E24();
          __break(1u);
          return result;
        }

LABEL_35:
        if ((v39 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v45 = *(v26 + 56);
      v46 = *(v45 + 8 * v33);
      v37 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v37)
      {
        goto LABEL_77;
      }

      ++v28;
      *(v45 + 8 * v33) = v47;

      v29 += 2;
      if (v27 == v28)
      {
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  swift_once();
LABEL_62:
  v66 = off_27F541CF8;
  if (*(off_27F541CF8 + 2) && (v67 = sub_252A44A10(v9, v30), (v68 & 1) != 0))
  {
    v69 = v67;

    v70 = (v66[7] + v69);
  }

  else
  {
    v70 = &v85;
    v71._countAndFlagsBits = v9;
    v71._object = v30;
    StateSemantic.init(rawValue:)(v71);
  }

  if (*v70 == 77)
  {
    v72 = sub_252E36324();
    v73 = *(*(v72 - 8) + 56);
    v73(v28, 1, 1, v72);
    v74 = v82;
    sub_252E37024();

    v73(v74, 0, 1, v72);
    goto LABEL_71;
  }

  LOBYTE(v85) = *v70;
  StateSemantic.rawValue.getter();
  sub_252E37024();

  v75 = sub_252E36324();
  v76 = *(v75 - 8);
  v77 = *(v76 + 56);
  v77(v28, 0, 1, v75);

  v78 = v82;
  (*(v76 + 32))(v82, v28, v75);
  return (v77)(v78, 0, 1, v75);
}

char *sub_25299AB0C@<X0>(uint64_t a1@<X8>)
{
  v14[0] = a1;
  v2 = sub_252E36324();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1;
  result = sub_25299875C();
  v7 = result;
  v8 = *(result + 2);
  if (v8)
  {
    v9 = 0;
    v14[1] = v3 + 16;
    while (v9 < *(v7 + 2))
    {
      v10 = *(v3 + 16);
      v11 = v10(v5, &v7[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9], v2);
      MEMORY[0x28223BE20](v11);
      v14[-2] = v5;
      if (sub_252998158(sub_25299EBB8, &v14[-4], v12))
      {

        v13 = v14[0];
        v10(v14[0], v5, v2);
        (*(v3 + 56))(v13, 0, 1, v2);
        return (*(v3 + 8))(v5, v2);
      }

      ++v9;
      result = (*(v3 + 8))(v5, v2);
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return (*(v3 + 56))(v14[0], 1, 1, v2);
  }

  return result;
}

uint64_t sub_25299AD34(uint64_t *a1, uint64_t a2)
{
  v5 = sub_252E36324();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *a1;
  v18 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_types);
  if (*(v18 + 16) && sub_2529A6CA0(a2, v18))
  {
    goto LABEL_6;
  }

  v28 = v2;
  v19 = OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type;
  (*(v6 + 16))(v16, a2, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v20 = *(v8 + 48);
  sub_252956C1C(v17 + v19, v10);
  sub_252956C1C(v16, &v10[v20]);
  v21 = *(v6 + 48);
  if (v21(v10, 1, v5) != 1)
  {
    sub_252956C1C(v10, v14);
    if (v21(&v10[v20], 1, v5) != 1)
    {
      v23 = v27;
      (*(v6 + 32))(v27, &v10[v20], v5);
      sub_25299EBD8(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
      v22 = sub_252E36EF4();
      v24 = *(v6 + 8);
      v24(v23, v5);
      sub_25293847C(v16, &qword_27F540298, &unk_252E3C270);
      v24(v14, v5);
      sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
      return v22 & 1;
    }

    sub_25293847C(v16, &qword_27F540298, &unk_252E3C270);
    (*(v6 + 8))(v14, v5);
    goto LABEL_9;
  }

  sub_25293847C(v16, &qword_27F540298, &unk_252E3C270);
  if (v21(&v10[v20], 1, v5) != 1)
  {
LABEL_9:
    sub_25293847C(v10, &qword_27F540758, &unk_252E4D160);
    v22 = 0;
    return v22 & 1;
  }

  sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
LABEL_6:
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_25299B138()
{
  v1 = *(v0 + 24);
  v11 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_21:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = v3;
    while ((v1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2530ADF00](v5, v1);
      v3 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_34;
      }

      v7 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room);

      v8 = swift_unknownObjectRelease();
      if (v7)
      {
        goto LABEL_15;
      }

LABEL_9:
      v5 = v3;
      if (v3 == v2)
      {
        goto LABEL_23;
      }
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v3 = v5 + 1;
    if (!*(*(v1 + 32 + 8 * v5) + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room))
    {
      goto LABEL_9;
    }

LABEL_15:
    MEMORY[0x2530AD700](v8);
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v4 = v11;
  }

  while (v3 != v2);
LABEL_23:
  v9 = sub_252DF8E14(v4);

  if (v9 >> 62)
  {
    result = sub_252E378C4();
    if (result != 1)
    {
      goto LABEL_30;
    }

LABEL_25:
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2530ADF00](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v10 = *(v9 + 32);
    }

    return v10;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result == 1)
  {
    goto LABEL_25;
  }

LABEL_30:

  return 0;
}

uint64_t sub_25299B360()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v79 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v89 = &v78 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v78 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v78 - v9;
  v91 = MEMORY[0x277D84FA0];
  v11 = *(v0 + 24);
  v12 = v11 >> 62;
  if (v11 >> 62)
  {
    if (sub_252E378C4() == 1)
    {
      goto LABEL_3;
    }

    result = sub_252E378C4();
LABEL_22:
    if (result < 2)
    {
      v43 = MEMORY[0x277D84FA0];
      goto LABEL_79;
    }

    v83 = v11 & 0xC000000000000001;
    if ((v11 & 0xC000000000000001) != 0)
    {
      goto LABEL_87;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(*(v11 + 32) + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);

      if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
      {
        goto LABEL_89;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_91:
    __break(1u);
    return result;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result != 1)
  {
    goto LABEL_22;
  }

LABEL_3:
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_74;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(*(v11 + 32) + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);

    if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
    {
      goto LABEL_76;
    }

LABEL_7:
    v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_77;
    }

    goto LABEL_8;
  }

  __break(1u);
  do
  {
    __break(1u);
LABEL_87:
    v28 = *(MEMORY[0x2530ADF00](0, v11) + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);

    swift_unknownObjectRelease();
    if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
    {
LABEL_89:
      v87 = v28;
      v29 = sub_252E378C4();
    }

    else
    {
LABEL_27:
      v87 = v28;
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v84 = v11;
    if (v29)
    {
      v86 = v12;
      v90[0] = MEMORY[0x277D84F90];
      result = sub_2529AA380(0, v29 & ~(v29 >> 63), 0);
      if (v29 < 0)
      {
        goto LABEL_91;
      }

      v30 = 0;
      v31 = v90[0];
      v32 = v87;
      v88 = v87 & 0xC000000000000001;
      do
      {
        if (v88)
        {
          v33 = MEMORY[0x2530ADF00](v30, v32);
        }

        else
        {
          v33 = *(v32 + 8 * v30 + 32);
        }

        sub_252956C1C(v33 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v8);
        v34 = sub_252E36324();
        v35 = *(v34 - 8);
        if ((*(v35 + 48))(v8, 1, v34) == 1)
        {

          sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
          v36 = 0;
          v37 = 0;
        }

        else
        {
          v38 = sub_252E36314();
          v32 = v87;
          v36 = v38;
          v37 = v39;

          (*(v35 + 8))(v8, v34);
        }

        v90[0] = v31;
        v41 = *(v31 + 16);
        v40 = *(v31 + 24);
        v10 = (v41 + 1);
        if (v41 >= v40 >> 1)
        {
          sub_2529AA380((v40 > 1), v41 + 1, 1);
          v32 = v87;
          v31 = v90[0];
        }

        ++v30;
        *(v31 + 16) = v10;
        v42 = v31 + 16 * v41;
        *(v42 + 32) = v36;
        *(v42 + 40) = v37;
      }

      while (v29 != v30);

      v12 = v86;
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
    }

    v43 = sub_252C75A1C(v31);

    v91 = v43;
    v11 = MEMORY[0x277D84F90];
    if (v12)
    {
      v46 = v84;
      v47 = sub_252E378C4();
      v44 = v46;
      v45 = v47;
      if (!v47)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v44 = v84;
      v45 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_79;
      }
    }

    v8 = 0;
    v80 = v44 + 32;
    v81 = v44 & 0xFFFFFFFFFFFFFF8;
    v82 = v45;
    while (v83)
    {
      v49 = MEMORY[0x2530ADF00](v8);
      v50 = __OFADD__(v8++, 1);
      if (v50)
      {
        goto LABEL_71;
      }

LABEL_55:
      v51 = *(v49 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);
      if (v51 >> 62)
      {
        v52 = sub_252E378C4();
        v87 = v49;
        if (!v52)
        {
LABEL_70:
          v10 = v11;
          goto LABEL_48;
        }
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v87 = v49;
        if (!v52)
        {
          goto LABEL_70;
        }
      }

      v86 = v8;
      v90[0] = v11;
      v8 = v52 & ~(v52 >> 63);

      v11 = v90;
      sub_2529AA380(0, v8, 0);
      if (v52 < 0)
      {
        goto LABEL_72;
      }

      v85 = v43;
      v53 = 0;
      v54 = v89;
      v10 = v90[0];
      v55 = v51;
      v88 = v51 & 0xC000000000000001;
      v56 = v52;
      do
      {
        if (v88)
        {
          v57 = MEMORY[0x2530ADF00](v53, v55);
        }

        else
        {
          v57 = *(v55 + 8 * v53 + 32);
        }

        sub_252956C1C(v57 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v54);
        v58 = sub_252E36324();
        v59 = *(v58 - 8);
        if ((*(v59 + 48))(v54, 1, v58) == 1)
        {

          sub_25293847C(v54, &qword_27F540298, &unk_252E3C270);
          v60 = 0;
          v61 = 0;
        }

        else
        {
          v62 = sub_252E36314();
          v54 = v89;
          v60 = v62;
          v61 = v63;

          (*(v59 + 8))(v54, v58);
        }

        v90[0] = v10;
        v65 = *(v10 + 2);
        v64 = *(v10 + 3);
        if (v65 >= v64 >> 1)
        {
          sub_2529AA380((v64 > 1), v65 + 1, 1);
          v54 = v89;
          v10 = v90[0];
        }

        ++v53;
        *(v10 + 2) = v65 + 1;
        v66 = &v10[16 * v65];
        *(v66 + 4) = v60;
        *(v66 + 5) = v61;
        v55 = v51;
      }

      while (v56 != v53);
      v43 = v85;

      v11 = MEMORY[0x277D84F90];
      v45 = v82;
      v8 = v86;
LABEL_48:
      v48 = sub_252C75A1C(v10);

      v43 = sub_252DFAE54(v48, v43);

      v91 = v43;
      if (v8 == v45)
      {
        goto LABEL_79;
      }
    }

    if (v8 >= *(v81 + 16))
    {
      goto LABEL_73;
    }

    v49 = *(v80 + 8 * v8);

    v50 = __OFADD__(v8++, 1);
    if (!v50)
    {
      goto LABEL_55;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    v14 = *(MEMORY[0x2530ADF00](0, v11) + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);

    swift_unknownObjectRelease();
    if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_76:
    v12 = sub_252E378C4();
    if (!v12)
    {
LABEL_77:

      v16 = MEMORY[0x277D84F90];
      goto LABEL_78;
    }

LABEL_8:
    v88 = v14;
    v90[0] = MEMORY[0x277D84F90];
    v11 = v90;
    sub_2529AA380(0, v12 & ~(v12 >> 63), 0);
  }

  while (v12 < 0);
  v15 = 0;
  v16 = v90[0];
  v17 = v88;
  v89 = (v88 & 0xC000000000000001);
  do
  {
    if (v89)
    {
      v18 = MEMORY[0x2530ADF00](v15, v17);
    }

    else
    {
      v18 = *(v17 + 8 * v15 + 32);
    }

    sub_252956C1C(v18 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v10);
    v19 = sub_252E36324();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v10, 1, v19) == 1)
    {

      sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v23 = sub_252E36314();
      v17 = v88;
      v21 = v23;
      v22 = v24;

      (*(v20 + 8))(v10, v19);
    }

    v90[0] = v16;
    v26 = *(v16 + 16);
    v25 = *(v16 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_2529AA380((v25 > 1), v26 + 1, 1);
      v17 = v88;
      v16 = v90[0];
    }

    ++v15;
    *(v16 + 16) = v26 + 1;
    v27 = v16 + 16 * v26;
    *(v27 + 32) = v21;
    *(v27 + 40) = v22;
  }

  while (v12 != v15);

LABEL_78:
  v43 = sub_252C75A1C(v16);

  v91 = v43;
LABEL_79:
  if (*(v43 + 16) == 1)
  {
    type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v67 = swift_allocObject();
    v68 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v69 = sub_252E36324();
    v70 = *(*(v69 - 8) + 56);
    v71 = 1;
    v70(v67 + v68, 1, 1, v69);
    v72 = sub_252E37834();
    sub_25299EA80(v72, *(v43 + 36));
    v74 = v73;

    if (v74)
    {
      v75 = v79;
      sub_252E37024();

      v76 = v75;
      v71 = 0;
    }

    else
    {
      v76 = v79;
    }

    v70(v76, v71, 1, v69);
    swift_beginAccess();
    sub_252956BAC(v76, v67 + v68);
    swift_endAccess();
    sub_25293847C(v76, &qword_27F540298, &unk_252E3C270);
    type metadata accessor for HomeAutomationHomeLocation(0);
    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    sub_252956C1C(v67 + v68, v77 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_25293847C(v67 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
    swift_deallocClassInstance();
    return v77;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_25299BE58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  sub_252B680FC(v3);
  v6 = sub_252B631FC();

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(v6 + 32);

  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  sub_252956C1C(v7 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v5);

  v8 = sub_252E36324();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    v11 = sub_252E36304();
    v13 = v12;
    (*(v9 + 8))(v5, v8);
    v14 = v11 == 1836019570 && v13 == 0xE400000000000000;
    if (v14 || (sub_252E37DB4() & 1) != 0)
    {

      v15 = &OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room;
    }

    else
    {
      v16 = v11 == 1701736314 && v13 == 0xE400000000000000;
      if (v16 || (sub_252E37DB4() & 1) != 0)
      {

        v17 = sub_252C864D8(*(v1 + 24));
        v18 = sub_252DF8E14(v17);

        return v18;
      }

      if (v11 == 1701670760 && v13 == 0xE400000000000000)
      {
      }

      else
      {
        v20 = sub_252E37DB4();

        if ((v20 & 1) == 0)
        {
          return MEMORY[0x277D84F90];
        }
      }

      v15 = &OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home;
    }

    return sub_2529985B8(v15);
  }

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  return MEMORY[0x277D84F90];
}

uint64_t sub_25299C0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v50 = a2;
  v48 = a1;
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v47 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = *(v3 + 24);
  v56 = MEMORY[0x277D84F90];
  v35 = v12;
  if (v12 >> 62)
  {
    goto LABEL_47;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v14 = v48;
  if (v13)
  {
LABEL_3:
    v38 = v35 & 0xFFFFFFFFFFFFFF8;
    v39 = v35 & 0xC000000000000001;
    v36 = v13;
    v37 = v35 + 32;
    v52 = (v5 + 48);
    v40 = (v5 + 32);
    v42 = (v5 + 8);
    v43 = (v5 + 56);
    v5 = 0;
    v46 = v11;
    while (1)
    {
      if (v39)
      {
        v49 = MEMORY[0x2530ADF00](v5, v35);
        v15 = __OFADD__(v5++, 1);
        if (v15)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v5 >= *(v38 + 16))
        {
          goto LABEL_46;
        }

        v49 = *(v37 + 8 * v5);

        v15 = __OFADD__(v5++, 1);
        if (v15)
        {
          goto LABEL_45;
        }
      }

      v44 = v5;
      v16 = *(v49 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      v17 = v16 >> 62 ? sub_252E378C4() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;

      if (v17)
      {
        break;
      }

LABEL_34:

LABEL_35:
      v5 = v44;
      if (v44 == v36)
      {
        return v56;
      }
    }

    v18 = 0;
    v54 = v16 & 0xFFFFFFFFFFFFFF8;
    v55 = v16 & 0xC000000000000001;
    v53 = v16;
    while (1)
    {
      if (v55)
      {
        v19 = MEMORY[0x2530ADF00](v18, v16);
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v18 >= *(v54 + 16))
        {
          goto LABEL_44;
        }

        v19 = *(v16 + 8 * v18 + 32);

        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          v13 = sub_252E378C4();
          v14 = v48;
          if (!v13)
          {
            return MEMORY[0x277D84F90];
          }

          goto LABEL_3;
        }
      }

      v21 = sub_252A481A4(v19 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
      if ((v22 & 1) != 0 || v21 != v14)
      {

        goto LABEL_12;
      }

      v23 = v4;
      v24 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (!v24)
      {

        v4 = v23;
        v16 = v53;
        goto LABEL_12;
      }

      v25 = v47;
      sub_252956C1C(v24 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v47);
      v51 = *v52;
      if (v51(v25, 1, v23) != 1)
      {
        break;
      }

      sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
      if (*(v24 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
      {

        v11 = v46;
        sub_25296EBC4(v46);

        v4 = v23;
        goto LABEL_24;
      }

      v11 = v46;
      sub_252E37024();

      v4 = v23;
      (*v43)(v11, 0, 1, v23);
      v16 = v53;
LABEL_27:
      v29 = sub_252E36304();
      v31 = v30;
      (*v42)(v11, v4);
      if (v29 == v50 && v31 == v45)
      {

        goto LABEL_38;
      }

      v32 = sub_252E37DB4();

      v14 = v48;
      if (v32)
      {

LABEL_38:
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v14 = v48;
        goto LABEL_35;
      }

LABEL_12:
      ++v18;
      if (v20 == v17)
      {
        goto LABEL_34;
      }
    }

    v26 = v41;
    v27 = *v40;
    (*v40)(v41, v25, v23);
    v11 = v46;
    v27(v46, v26, v23);
    v5 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
    (*v43)(v11, 0, 1, v23);
    v4 = v23;
LABEL_24:
    v28 = v51(v11, 1, v4);
    v16 = v53;
    if (v28 == 1)
    {
      sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);

      v14 = v48;
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25299C704(uint64_t a1)
{
  v2 = *(v1 + 24);
  v21 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_32:
    v14 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  while (1)
  {
    v4 = 0;
    v18 = v2 & 0xFFFFFFFFFFFFFF8;
    v19 = v2 & 0xC000000000000001;
    v16 = v2;
    v17 = v3;
LABEL_6:
    if (v19)
    {
      break;
    }

    if (v4 >= *(v18 + 16))
    {
      goto LABEL_30;
    }

    v6 = __OFADD__(v4++, 1);
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v3 = sub_252E378C4();
    if (!v3)
    {
      goto LABEL_32;
    }
  }

  v5 = MEMORY[0x2530ADF00](v4, v16);
  v6 = __OFADD__(v4++, 1);
  if (v6)
  {
    goto LABEL_29;
  }

LABEL_9:
  v7 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
  if (v7 >> 62)
  {
    v8 = sub_252E378C4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7 & 0xC000000000000001;

  v9 = 0;
  do
  {
    if (v8 == v9)
    {

      goto LABEL_5;
    }

    if (v2)
    {
      v10 = MEMORY[0x2530ADF00](v9, v7);
      if (__OFADD__(v9, 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v10 = *(v7 + 8 * v9 + 32);

      if (__OFADD__(v9, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    v11 = sub_252A481A4(v10 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
    v13 = v12;

    ++v9;
  }

  while ((v13 & 1) != 0 || v11 != a1);

  sub_252E37A94();
  sub_252E37AC4();
  sub_252E37AD4();
  sub_252E37AA4();
LABEL_5:
  if (v4 != v17)
  {
    goto LABEL_6;
  }

  v14 = v21;
LABEL_33:
  type metadata accessor for HomeAutomationEntityResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v14;
  return result;
}

uint64_t sub_25299C950(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  for (result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_252E378C4())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v16 = v2;
    v2 = &OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states;
    v18 = v5;
    v19 = result;
    v17 = v6;
    while (2)
    {
      if (v5)
      {
        v7 = MEMORY[0x2530ADF00](v4, v16);
        v8 = __OFADD__(v4++, 1);
        if (!v8)
        {
LABEL_7:
          v9 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
          if (v9 >> 62)
          {
            v10 = sub_252E378C4();
          }

          else
          {
            v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v11 = 0;
          v2 = v9 & 0xC000000000000001;
          while (v10 != v11)
          {
            if (v2)
            {
              v12 = MEMORY[0x2530ADF00](v11, v9);
              if (__OFADD__(v11, 1))
              {
                goto LABEL_27;
              }
            }

            else
            {
              if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v12 = *(v9 + 8 * v11 + 32);

              if (__OFADD__(v11, 1))
              {
LABEL_27:
                __break(1u);
LABEL_28:
                __break(1u);
                goto LABEL_29;
              }
            }

            v13 = sub_252A481A4(v12 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
            v15 = v14;

            ++v11;
            if ((v15 & 1) == 0 && v13 == a1)
            {

              return 1;
            }
          }

          v5 = v18;
          v6 = v17;
          v2 = &OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states;
          if (v4 != v19)
          {
            continue;
          }

          return 0;
        }
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_30;
        }

        v8 = __OFADD__(v4++, 1);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      break;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  return result;
}

uint64_t sub_25299CB2C(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v75 = a1;
  v3 = sub_252E36324();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v53[1] = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v55 = v53 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v56 = v53 - v10;
  MEMORY[0x28223BE20](v9);
  v67 = v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v62 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v53 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v53 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v53 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v53 - v24;
  v26 = *(v2 + 24);
  v79 = MEMORY[0x277D84F90];
  v61 = v26;
  if (v26 >> 62)
  {
    goto LABEL_71;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v27)
  {
LABEL_3:
    v72 = v23;
    v28 = 0;
    v60 = v26 & 0xC000000000000001;
    v59 = v26 & 0xFFFFFFFFFFFFFF8;
    v58 = v26 + 32;
    v23 = (v4 + 48);
    v70 = (v4 + 32);
    v76 = (v4 + 56);
    v68 = (v4 + 8);
    v54 = xmmword_252E3C290;
    v63 = v17;
    v66 = v20;
    v57 = v27;
    v69 = (v4 + 48);
    while (1)
    {
      if (v60)
      {
        v29 = MEMORY[0x2530ADF00](v28);
        v30 = __OFADD__(v28, 1);
        v31 = v28 + 1;
        if (v30)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v28 >= *(v59 + 16))
        {
          goto LABEL_70;
        }

        v30 = __OFADD__(v28, 1);
        v31 = v28 + 1;
        if (v30)
        {
          goto LABEL_69;
        }
      }

      v32 = *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      v64 = v29;
      v65 = v31;
      v33 = v32 >> 62 ? sub_252E378C4() : *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v33)
      {
        break;
      }

LABEL_4:

LABEL_5:
      v28 = v65;
      if (v65 == v57)
      {
        return v79;
      }
    }

    v17 = 0;
    v77 = v32 & 0xFFFFFFFFFFFFFF8;
    v78 = v32 & 0xC000000000000001;
    v73 = v33;
    v74 = v32;
    while (1)
    {
      if (v78)
      {
        v34 = MEMORY[0x2530ADF00](v17, v32);
        v20 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v17 >= *(v77 + 16))
        {
          goto LABEL_68;
        }

        v34 = *(v32 + 8 * v17 + 32);

        v20 = (v17 + 1);
        if (__OFADD__(v17, 1))
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
          v27 = sub_252E378C4();
          v26 = v61;
          if (!v27)
          {
            return MEMORY[0x277D84F90];
          }

          goto LABEL_3;
        }
      }

      v35 = *(v34 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (!v35)
      {
        goto LABEL_15;
      }

      v36 = v72;
      sub_252956C1C(v35 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v72);
      v37 = *v23;
      if ((*v23)(v36, 1, v3) != 1)
      {
        v39 = *v70;
        v4 = v67;
        (*v70)(v67, v36, v3);
        goto LABEL_47;
      }

      sub_25293847C(v36, &qword_27F540298, &unk_252E3C270);
      v4 = *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
      if (!v4)
      {
        sub_252E37024();

        goto LABEL_52;
      }

      if (sub_25296E640())
      {
        v38 = v66;
        sub_252E360D4();

        if (v37(v38, 1, v3) != 1)
        {

          v39 = *v70;
          v40 = &v82;
          goto LABEL_46;
        }
      }

      else
      {
        v38 = v66;
        (*v76)(v66, 1, 1, v3);
      }

      sub_25293847C(v38, &qword_27F540298, &unk_252E3C270);
      v41 = sub_252A47810(v4 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
      v42 = qword_2864A0BE8 == v41 || unk_2864A0BF0 == v41;
      if (v42 || v41 != 1)
      {
        v43 = sub_252E37DB4();

        if ((v43 & 1) == 0)
        {
          v38 = v63;
          (*v76)(v63, 1, 1, v3);
LABEL_43:
          sub_25293847C(v38, &qword_27F540298, &unk_252E3C270);
          if (!sub_25296F198())
          {
            v38 = v62;
            (*v76)(v62, 1, 1, v3);
LABEL_50:
            sub_25293847C(v38, &qword_27F540298, &unk_252E3C270);
            if (*(v4 + 32))
            {

              (*v76)(v25, 1, 1, v3);
              v33 = v73;
              v32 = v74;
LABEL_14:
              sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
LABEL_15:

              goto LABEL_16;
            }

            v47 = *(v4 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
            v48 = swift_allocObject();
            *(v48 + 16) = v54;
            *(v48 + 56) = MEMORY[0x277D839F8];
            *(v48 + 64) = MEMORY[0x277D83A80];
            *(v48 + 32) = v47;
            sub_252E36F64();
            sub_252E37024();

LABEL_52:
            v33 = v73;
            v32 = v74;
            (*v76)(v25, 0, 1, v3);
            goto LABEL_53;
          }

          v38 = v62;
          sub_252E36284();

          if (v37(v38, 1, v3) == 1)
          {
            goto LABEL_50;
          }

          v39 = *v70;
          v40 = &v80;
          goto LABEL_46;
        }
      }

      else
      {
      }

      sub_252E361B4();
      swift_allocObject();
      sub_252E361A4();
      sub_252E36134();

      sub_252E36124();

      swift_beginAccess();
      v44 = *(v4 + 16);
      if (v44)
      {
        v45 = v44;

        sub_252E360F4();
      }

      v38 = v63;
      sub_252E361C4();

      if (v37(v38, 1, v3) == 1)
      {
        goto LABEL_43;
      }

      v39 = *v70;
      v40 = &v81;
LABEL_46:
      v4 = *(v40 - 32);
      v39(v4, v38, v3);
LABEL_47:
      v39(v25, v4, v3);
      (*v76)(v25, 0, 1, v3);
      v23 = v69;
      v46 = v37(v25, 1, v3);
      v33 = v73;
      v32 = v74;
      if (v46 == 1)
      {
        goto LABEL_14;
      }

LABEL_53:
      v49 = sub_252E36304();
      v51 = v50;
      (*v68)(v25, v3);
      if (v49 == v75 && v51 == v71)
      {

        goto LABEL_61;
      }

      v4 = sub_252E37DB4();

      if (v4)
      {

LABEL_61:
        sub_252E37A94();
        v4 = *(v79 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        goto LABEL_5;
      }

LABEL_16:
      ++v17;
      if (v20 == v33)
      {
        goto LABEL_4;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25299D5A8(uint64_t a1)
{
  v36 = a1;
  v2 = sub_252E36324();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  MEMORY[0x28223BE20](v43);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v42 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v31 - v10;
  v11 = *(v1 + 24);
  v46 = MEMORY[0x277D84F90];
  if (v11 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v13 = 0;
    v40 = v11 & 0xFFFFFFFFFFFFFF8;
    v41 = v11 & 0xC000000000000001;
    v37 = (v3 + 56);
    v38 = i;
    v14 = (v3 + 48);
    v31 = (v3 + 32);
    v34 = (v3 + 8);
    v35 = (v3 + 48);
    v15 = &unk_252E3C270;
    v39 = v11;
    while (v41)
    {
      v3 = MEMORY[0x2530ADF00](v13, v11);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_29;
      }

LABEL_10:
      if (qword_27F53F2A0 != -1)
      {
        swift_once();
      }

      v18 = off_27F541CD0;
      if (*(off_27F541CD0 + 2) && (v19 = sub_252A488EC(), (v20 & 1) != 0))
      {
        v45 = *(v18[7] + v19);
        AccessoryTypeSemantic.rawValue.getter();
        sub_252E362F4();
        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      v22 = v44;
      (*v37)(v44, v21, 1, v2);
      v23 = *(v43 + 48);
      sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v6);
      sub_252956C1C(v22, &v6[v23]);
      v24 = *v14;
      if ((*v14)(v6, 1, v2) == 1)
      {
        sub_25293847C(v44, &qword_27F540298, v15);
        if (v24(&v6[v23], 1, v2) == 1)
        {
          sub_25293847C(v6, &qword_27F540298, v15);
          goto LABEL_21;
        }
      }

      else
      {
        sub_252956C1C(v6, v42);
        if (v24(&v6[v23], 1, v2) != 1)
        {
          v25 = v32;
          v26 = v15;
          v27 = v42;
          (*v31)(v32, &v6[v23], v2);
          sub_25299EBD8(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
          v33 = sub_252E36EF4();
          v28 = *v34;
          (*v34)(v25, v2);
          sub_25293847C(v44, &qword_27F540298, v26);
          v29 = v27;
          v15 = v26;
          v28(v29, v2);
          sub_25293847C(v6, &qword_27F540298, v26);
          if (v33)
          {
LABEL_21:
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          v16 = v38;
          v11 = v39;
          v14 = v35;
          goto LABEL_6;
        }

        sub_25293847C(v44, &qword_27F540298, v15);
        (*v34)(v42, v2);
      }

      sub_25293847C(v6, &qword_27F540758, &unk_252E4D160);
      v16 = v38;
      v11 = v39;
LABEL_6:
      ++v13;
      if (v17 == v16)
      {
        return v46;
      }
    }

    if (v13 >= *(v40 + 16))
    {
      goto LABEL_30;
    }

    v3 = *(v11 + 8 * v13 + 32);

    v17 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_10;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t *sub_25299DB10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  sub_25299AB0C(&v11 - v2);
  v4 = sub_252E36324();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
  if (v5 == 1)
  {
    return sub_252C88C98(0, 0, 0, 0);
  }

  v6 = *(v0 + 24);
  if (v6 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_4;
    }

    return sub_252C88C98(0, 0, 0, 0);
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return sub_252C88C98(0, 0, 0, 0);
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x2530ADF00](0, v6);
    goto LABEL_7;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);

LABEL_7:
    v9 = sub_252999524();
    v10 = sub_252C8A08C(v8, v9);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_25299DC9C()
{
  v1 = *(v0 + 24);
  v8 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2530ADF00](v3, v1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_13;
      }

LABEL_7:
      sub_252C8A08C(v4, 0);

      MEMORY[0x2530AD700](v6);
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v3;
      if (v5 == i)
      {
        return v8;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v4 = *(v1 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25299DDFC(unint64_t a1)
{
  v97 = sub_252E36324();
  v3 = *(v97 - 8);
  v4 = MEMORY[0x28223BE20](v97);
  v80 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v76 - v7;
  MEMORY[0x28223BE20](v6);
  v96 = &v76 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v87 = &v76 - v15;
  MEMORY[0x28223BE20](v14);
  v90 = &v76 - v16;
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  inited = swift_initStackObject();
  v18 = MEMORY[0x277D84F90];
  *(inited + 16) = MEMORY[0x277D84F90];
  v99 = v18;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v77 = v1;
    v86 = a1 & 0xC000000000000001;
    v79 = a1 & 0xFFFFFFFFFFFFFF8;
    v81 = a1;
    v78 = a1 + 32;
    v94 = (v3 + 56);
    v83 = (v3 + 32);
    v76 = inited;

    inited = 0;
    v84 = v13;
    v85 = v8;
    v82 = i;
    while (v86)
    {
      v1 = MEMORY[0x2530ADF00](inited, v81);
      v20 = __OFADD__(inited++, 1);
      if (v20)
      {
        goto LABEL_60;
      }

LABEL_10:
      v21 = sub_252CD941C();
      v22 = sub_2529F7B8C(0, 1, 1, MEMORY[0x277D84F90]);
      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_2529F7B8C((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      *&v22[8 * v24 + 32] = v21;
      v25 = sub_252CD94E0();
      v88 = inited;
      if (v26)
      {
        v92 = v22;
      }

      else
      {
        v28 = *(v22 + 2);
        v27 = *(v22 + 3);
        if (v28 >= v27 >> 1)
        {
          v73 = v25;
          v22 = sub_2529F7B8C((v27 > 1), v28 + 1, 1, v22);
          v25 = v73;
        }

        *(v22 + 2) = v28 + 1;
        v92 = v22;
        *&v22[8 * v28 + 32] = v25;
      }

      type metadata accessor for HomeAutomationEntityResponse.Builder(0);
      v29 = swift_allocObject();
      v30 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
      v31 = *v94;
      v91 = 1;
      v32 = v97;
      v31(v29 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, 1, 1, v97);
      v31(v29 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v32);
      *(v29 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
      v33 = MEMORY[0x277D84F90];
      *(v29 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
      *(v29 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
      v31(v29 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v32);
      *(v29 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v33;
      *(v29 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v33;

      v95 = v1;
      v34 = v90;
      sub_252E37024();

      v93 = v31;
      v31(v34, 0, 1, v32);
      swift_beginAccess();
      sub_252956BAC(v34, v29 + v30);
      swift_endAccess();
      v35 = v34;
      v36 = v95;
      sub_25293847C(v35, &qword_27F540298, &unk_252E3C270);
      v37 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v38 = [*(v36 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
      if (v38)
      {
        v39 = v38;
        type metadata accessor for Accessory(0);
        swift_allocObject();
        v40 = [*(sub_252D4CE7C(v39) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
        v41 = v84;
        v42 = v83;
        if (v40)
        {
          v43 = v40;
          type metadata accessor for Room(0);
          swift_allocObject();
          sub_2529A1E08(v43);

          v44 = v87;
          sub_252E37024();

          v91 = 0;
        }

        else
        {

          v91 = 1;
          v44 = v87;
        }
      }

      else
      {
        v44 = v87;
        v41 = v84;
        v42 = v83;
      }

      v45 = 1;
      (v93)(v44, v91, 1, v97);
      sub_252AD6B04(v44);

      sub_25293847C(v44, &qword_27F540298, &unk_252E3C270);
      v46 = [*(v36 + v37) accessory];
      if (v46)
      {
        v47 = v46;
        type metadata accessor for Accessory(0);
        swift_allocObject();
        v48 = [*(sub_252D4CE7C(v47) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
        v49 = v85;
        if (v48)
        {
          v50 = v48;
          type metadata accessor for Home(0);
          swift_allocObject();
          sub_2529E65BC(v50);

          sub_252E37024();

          v45 = 0;
        }

        else
        {

          v45 = 1;
        }
      }

      else
      {
        v49 = v85;
      }

      (v93)(v41, v45, 1, v97);
      v51 = sub_252AD6E30(v41);

      v52 = v41;
      v8 = &qword_27F540298;
      inited = &unk_252E3C270;
      sub_25293847C(v52, &qword_27F540298, &unk_252E3C270);
      v53 = sub_252CD941C();
      v54 = sub_252E25FC4(v53);
      v56 = v90;
      static SemanticMapper.getSemanticKey(for:)(v54, v55 & 1, v90);
      v57 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
      swift_beginAccess();
      v93 = v51;
      sub_252956BAC(v56, v51 + v57);
      swift_endAccess();
      sub_25293847C(v56, &qword_27F540298, &unk_252E3C270);
      v58 = v92;
      v59 = *(v92 + 2);
      v89 = v37;
      if (v59)
      {
        if (qword_27F53F2A0 != -1)
        {
          swift_once();
        }

        v60 = v58 + 32;
        v8 = off_27F541CD0;
        v61 = MEMORY[0x277D84F90];
        do
        {
          if (*(v8 + 16))
          {
            v62 = sub_252A488EC();
            if (v63)
            {
              LOBYTE(v98) = *(*(v8 + 56) + v62);
              AccessoryTypeSemantic.rawValue.getter();
              sub_252E362F4();
              v64 = *v42;
              (*v42)(v96, v49, v97);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v61 = sub_2529F7F74(0, *(v61 + 2) + 1, 1, v61);
              }

              inited = *(v61 + 2);
              v65 = *(v61 + 3);
              if (inited >= v65 >> 1)
              {
                v61 = sub_2529F7F74((v65 > 1), inited + 1, 1, v61);
              }

              *(v61 + 2) = inited + 1;
              v64(&v61[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * inited], v96, v97);
            }
          }

          v60 += 8;
          --v59;
        }

        while (v59);
      }

      else
      {
        v61 = MEMORY[0x277D84F90];
      }

      v13 = v93;
      *&v93[OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types] = v61;

      v66 = [*(v95 + v89) accessory];
      if (!v66)
      {
        goto LABEL_55;
      }

      a1 = v66;
      type metadata accessor for Accessory(0);
      swift_allocObject();
      sub_252D4CE7C(a1);
      v8 = sub_252D523AC();

      if (v8 >> 62)
      {
        v67 = sub_252E378C4();
        if (!v67)
        {
LABEL_54:

LABEL_55:

          v69 = MEMORY[0x277D84F90];
          inited = v88;
          goto LABEL_56;
        }
      }

      else
      {
        v67 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v67)
        {
          goto LABEL_54;
        }
      }

      v98 = MEMORY[0x277D84F90];
      v1 = &v98;
      sub_2529AA4E0(0, v67 & ~(v67 >> 63), 0);
      if (v67 < 0)
      {
        goto LABEL_61;
      }

      v68 = 0;
      v69 = v98;
      v70 = v80;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v68, v8);
        }

        else
        {
        }

        sub_252E37024();

        v98 = v69;
        v72 = *(v69 + 16);
        v71 = *(v69 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_2529AA4E0((v71 > 1), v72 + 1, 1);
          v70 = v80;
          v69 = v98;
        }

        ++v68;
        *(v69 + 16) = v72 + 1;
        (*(v3 + 32))(v69 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v72, v70, v97);
      }

      while (v67 != v68);

      inited = v88;
      v13 = v93;
LABEL_56:
      sub_252AD6B10(v69);

      type metadata accessor for HomeAutomationEntityResponse(0);
      swift_allocObject();
      a1 = sub_2529605C0(v13);
      v1 = &v99;
      MEMORY[0x2530AD700]();
      if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();

      if (inited == v82)
      {
        v74 = v99;

        inited = v76;

        v1 = v77;
        goto LABEL_65;
      }
    }

    if (inited >= *(v79 + 16))
    {
      goto LABEL_62;
    }

    v1 = *(v78 + 8 * inited);

    v20 = __OFADD__(inited++, 1);
    if (!v20)
    {
      goto LABEL_10;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v74 = MEMORY[0x277D84F90];
LABEL_65:
  *(inited + 16) = v74;

  return (v1[17])(inited);
}

uint64_t sub_25299EA80(unint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    sub_252DB000C();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  sub_2529AE52C(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

unint64_t sub_25299EB54()
{
  result = qword_27F540E38;
  if (!qword_27F540E38)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540610, &qword_252E3CF98);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F540E38);
  }

  return result;
}

uint64_t sub_25299EBD8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_25299EC20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v5 = 0;
  v22 = a1 & 0xFFFFFFFFFFFFFF8;
  v23 = a1 & 0xC000000000000001;
  v20 = a1;
  v21 = v4;
  v24 = a3 & 1;
  do
  {
    if (v23)
    {
      a1 = MEMORY[0x2530ADF00](v5, v20);
      v6 = __OFADD__(v5++, 1);
      if (v6)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v5 >= *(v22 + 16))
      {
        goto LABEL_34;
      }

      v6 = __OFADD__(v5++, 1);
      if (v6)
      {
        goto LABEL_33;
      }
    }

    v7 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
    if (v7 >> 62)
    {
      v8 = sub_252E378C4();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8)
    {
      v9 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          a1 = MEMORY[0x2530ADF00](v9, v7);
          v10 = a1;
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v10 = *(v7 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            v17 = a1;
            v18 = a3;
            v19 = sub_252E378C4();
            a3 = v18;
            v4 = v19;
            a1 = v17;
            if (!v4)
            {
              return MEMORY[0x277D84F90];
            }

            goto LABEL_3;
          }
        }

        v12 = sub_252A481A4(v10 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
        if ((v13 & 1) != 0 || v12 != a2)
        {
        }

        else
        {
          v14 = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

          if (v14)
          {
            v15 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

            if (v15 == v24)
            {

              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              a1 = sub_252E37AA4();
              goto LABEL_5;
            }
          }
        }

        ++v9;
      }

      while (v11 != v8);
    }

LABEL_5:
    ;
  }

  while (v5 != v21);
  return v25;
}

uint64_t sub_25299EEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25299EEDC, 0, 0);
}

uint64_t sub_25299EEDC()
{
  v1 = [*(v0 + 32) matchedEntities];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntity();
    sub_252E37264();
  }

  v3 = *(v0 + 40);
  v4 = sub_252C6CB2C();

  v5 = *(v4 + 24);

  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_25299F044;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  return sub_252C6BEDC(v8, v9, &unk_252E3EF50, v6);
}

uint64_t sub_25299F044()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25299F154(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25299F174, 0, 0);
}

uint64_t sub_25299F174()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_25299F248;
  v3 = v0[3];

  return sub_252C11F30(0, v1, v3);
}

uint64_t sub_25299F248(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_25299F36C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  memcpy(__dst, v0 + 14, sizeof(__dst));
  sub_25299F5D4(__dst);
  return swift_deallocClassInstance();
}

uint64_t sub_25299F424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_25299EEB8(a1, a2, a3);
}

void *sub_25299F4D8@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DiscoverCapabilityResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_25299F53C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_25299F154(v2, v3);
}

uint64_t sub_25299F5D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25299F63C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_252E33DB4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25299F700, 0, 0);
}

uint64_t sub_25299F700()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  sub_252E34044();
  v4 = sub_252E33DA4();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = sub_252E34024();
  v0[18] = v7;
  v8 = sub_252E34034();
  v0[19] = v8;
  v9 = v4 == 0x72656767697274 && v6 == 0xE700000000000000;
  if (v9 || (sub_252E37DB4() & 1) != 0)
  {

    v10 = swift_task_alloc();
    v0[20] = v10;
    *v10 = v0;
    v10[1] = sub_25299FBD0;
    v11 = v0[12];

    return sub_25299FFC8(v11, v8);
  }

  if (v4 == 0x6174616D6F747561 && v6 == 0xEF6B736154656C62)
  {
  }

  else
  {
    v13 = sub_252E37DB4();

    if ((v13 & 1) == 0)
    {
      v25 = v0[14];
      sub_252929E74(v25 + 24, (v0 + 2));
      v26 = v0[5];
      v27 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v26);
      v28 = *(v25 + 16);

      sub_252943BD0(sub_2529A1790, v28, 1, v26, v27);

      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      goto LABEL_19;
    }
  }

  v14 = [v7 automatableTask];
  if (v14)
  {
    v15 = v14;
    type metadata accessor for ControlAutomateHomeIntent();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
      v18 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
      v19 = v17;

      v20 = [v18 init];
      v0[22] = v20;
      v21 = v20;
      [v21 setUserTask_];
      type metadata accessor for HomeFilter();
      v22 = sub_252E37254();

      [v21 setFilters_];

      [v21 setTime_];
      v23 = swift_task_alloc();
      v0[23] = v23;
      *v23 = v0;
      v23[1] = sub_25299FD54;
      v24 = v0[12];

      return sub_2529A0380(v24, v7, v21, v8);
    }
  }

  v30 = v0[14];
  sub_252929E74(v30 + 24, (v0 + 7));
  v31 = v0[10];
  v32 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v31);
  v33 = *(v30 + 16);

  sub_252943BD0(sub_2529A17B4, v33, 1, v31, v32);

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
LABEL_19:

  v29 = v0[1];

  return v29();
}

uint64_t sub_25299FBD0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_25299FEE0;
  }

  else
  {
    v2 = sub_25299FCE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25299FCE4()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25299FD54()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_25299FF50;
  }

  else
  {
    v2 = sub_25299FE68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25299FE68()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25299FEE0()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25299FF50()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25299FFC8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_25299FFEC, 0, 0);
}

uint64_t sub_25299FFEC()
{
  v1 = sub_252E2136C([*(v0 + 64) unsupportedReason]);
  if ((v2 & 1) != 0 || (v1 <= 6 ? (v7 = ((1 << v1) & 0x76) == 0) : (v7 = 1), v7))
  {
    v3 = *(v0 + 72);
    sub_2529515FC(3, 8, 0xD000000000000010, 0x8000000252E6DE90);
    sub_252929E74(v3 + 24, v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    v6 = *(v3 + 16);

    sub_252943BD0(sub_2529A17B4, v6, 1, v4, v5);
  }

  else
  {
    v8 = *(v0 + 72);
    v15 = vdupq_n_s64(v1);
    sub_252929E74(v8 + 24, v0 + 16);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v12 = vand_s8(vmovn_s32(vuzp1q_s32(vceqq_s64(v15, xmmword_252E3EF60), vceqq_s64(v15, xmmword_252E3EF70))), 0x1000100010001);
    *(v11 + 24) = vuzp1_s8(v12, v12).u32[0];

    sub_252943BD0(sub_2529A1778, v11, 1, v9, v10);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2529A0210(uint64_t a1, char a2, char a3, char a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v9 = swift_allocObject();
  *(v9 + 32) = 0x54726F6972507369;
  *(v9 + 40) = 0xEF6E694D656E4F6FLL;
  v10 = MEMORY[0x277D839B0];
  *(v9 + 16) = xmmword_252E3EF80;
  *(v9 + 48) = a2;
  *(v9 + 72) = v10;
  *(v9 + 80) = 0x646E6F7965427369;
  *(v9 + 88) = 0xEF72616559656E4FLL;
  *(v9 + 96) = a3;
  *(v9 + 120) = v10;
  *(v9 + 128) = 0xD000000000000010;
  *(v9 + 136) = 0x8000000252E6DEE0;
  *(v9 + 144) = a4;
  *(v9 + 168) = v10;
  strcpy((v9 + 176), "isDateInterval");
  *(v9 + 191) = -18;
  *(v9 + 216) = v10;
  *(v9 + 192) = a5;

  sub_252E362B4();
}

uint64_t sub_2529A0380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_2529A03A8, 0, 0);
}

uint64_t sub_2529A03A8()
{
  v1 = sub_252E21380([*(v0 + 80) unsupportedReason]);
  if (v2)
  {
    goto LABEL_2;
  }

  if (v1 <= 3)
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        v42 = *(v0 + 88);
        sub_252929E74(v42 + 24, v0 + 16);
        v4 = *(v0 + 40);
        v5 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
        v6 = *(v42 + 16);

        v7 = sub_2529A1754;
        goto LABEL_3;
      }

      if (v1 != 3)
      {
        goto LABEL_2;
      }
    }

LABEL_21:
    v24 = v1;
    v25 = [*(v0 + 72) filters];
    if (v25)
    {
      v26 = v25;
      v27 = *(v0 + 72);
      type metadata accessor for HomeFilter();
      v28 = sub_252E37264();

      v29 = type metadata accessor for HomeStore(0);
      v30 = static HomeStore.shared.getter(v29);
      v31 = [v27 userTask];
      v32 = HomeStore.services(matching:supporting:)(v28, v31);
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        v43 = *(v0 + 64);
        type metadata accessor for HomeAutomationEntityResponses();
        v35 = sub_252DE9FF0(v43, v32);
        goto LABEL_28;
      }

      sub_252929F10(v32, 1);
    }

    v35 = 0;
LABEL_28:
    v44 = *(v0 + 88);
    v45 = *(v0 + 64);
    sub_252929E74(v44 + 24, v0 + 16);
    v46 = *(v0 + 40);
    v47 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v46);
    v48 = swift_allocObject();
    *(v48 + 16) = v44;
    *(v48 + 24) = v45;
    *(v48 + 32) = v35;
    *(v48 + 40) = v24;
    *(v48 + 48) = 0;

    v49 = v45;

    sub_252943BD0(sub_2529A1744, v48, 1, v46, v47);

    goto LABEL_4;
  }

  if (v1 <= 5)
  {
    if (v1 == 4)
    {
      v36 = *(v0 + 88);
      sub_252929E74(v36 + 24, v0 + 16);
      v37 = *(v0 + 40);
      v38 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v37);
      v39 = *(v36 + 16);

      v41 = sub_2529A14E0(v40);
      (*(v38 + 56))(sub_2529A14BC, v39, 1, v41, 0, 0, v37, v38);

      goto LABEL_4;
    }

    v8 = *(v0 + 88);
    sub_2529515FC(3, 11, 0xD000000000000037, 0x8000000252E6DD30);
    sub_252929E74(v8 + 24, v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    v6 = *(v8 + 16);

    v7 = sub_2529A17B4;
    goto LABEL_3;
  }

  if (v1 == 6)
  {
    goto LABEL_21;
  }

  if (v1 != 7)
  {
LABEL_2:
    v3 = *(v0 + 88);
    sub_2529515FC(3, 8, 0xD000000000000017, 0x8000000252E6DD10);
    sub_252929E74(v3 + 24, v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    v6 = *(v3 + 16);

    v7 = sub_2529A17B4;
    goto LABEL_3;
  }

  v11 = [*(v0 + 64) automatableTask];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for ControlAutomateHomeIntent();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(v0 + 88);
      v15 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
      v16 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
      v17 = v15;

      v18 = [v16 init];
      [v18 setUserTask_];
      type metadata accessor for HomeFilter();
      v19 = sub_252E37254();

      [v18 setFilters_];

      [v18 setTime_];
      sub_252929E74(v14 + 24, v0 + 16);
      v20 = *(v0 + 40);
      v21 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v20);
      v22 = swift_allocObject();
      *(v22 + 16) = v14;
      *(v22 + 24) = v18;

      v23 = v18;
      sub_252943BD0(sub_2529A14B4, v22, 1, v20, v21);

      goto LABEL_4;
    }
  }

  v50 = *(v0 + 88);
  sub_252929E74(v50 + 24, v0 + 16);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  v6 = *(v50 + 16);

  v7 = sub_2529A17B4;
LABEL_3:
  sub_252943BD0(v7, v6, 1, v4, v5);
LABEL_4:

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2529A09DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v33 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v33 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v33 - v13;
  v33[0] = *(a1 + 16);

  sub_252C51E70();
  if (!v15)
  {
    sub_252C51FFC();
    if (v17)
    {

      sub_252C51FFC();
      if (!v18)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_252C4BEAC();
      if (!v19)
      {
        goto LABEL_10;
      }

      sub_252C4BEAC();
      if (!v20)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    sub_252E37024();

    v21 = sub_252E36324();
    (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
    goto LABEL_11;
  }

  sub_252C51E70();
  if (v16)
  {
    goto LABEL_9;
  }

LABEL_10:
  v22 = sub_252E36324();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
LABEL_11:
  sub_252C4BEAC();
  if (v23)
  {
    sub_252E37024();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_252E36324();
  v26 = *(v25 - 8);
  v27 = 1;
  (*(v26 + 56))(v12, v24, 1, v25);
  if ((sub_252C4B680(0x24) & 1) == 0)
  {
    v27 = sub_252C4B680(0x29);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_252E3C280;
  *(v28 + 32) = 0xD00000000000001ELL;
  *(v28 + 40) = 0x8000000252E6DE40;
  sub_252956C1C(v14, v9);
  v29 = *(v26 + 48);
  if (v29(v9, 1, v25) == 1)
  {
    sub_252938BBC(v9);
    *(v28 + 48) = 0u;
    *(v28 + 64) = 0u;
  }

  else
  {
    *(v28 + 72) = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v28 + 48));
    (*(v26 + 32))(boxed_opaque_existential_0, v9, v25);
  }

  *(v28 + 80) = 0x656D614E656D6F68;
  *(v28 + 88) = 0xE800000000000000;
  sub_252956C1C(v12, v6);
  if (v29(v6, 1, v25) == 1)
  {
    sub_252938BBC(v6);
    *(v28 + 96) = 0u;
    *(v28 + 112) = 0u;
  }

  else
  {
    *(v28 + 120) = v25;
    v31 = __swift_allocate_boxed_opaque_existential_0((v28 + 96));
    (*(v26 + 32))(v31, v6, v25);
  }

  *(v28 + 128) = 0x7571655256547369;
  *(v28 + 136) = 0xEB00000000747365;
  *(v28 + 168) = MEMORY[0x277D839B0];
  *(v28 + 144) = v27 & 1;
  sub_252E362B4();

  sub_252938BBC(v12);
  return sub_252938BBC(v14);
}

uint64_t sub_2529A0E28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for HomeAutomationAutomation.Builder();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;

  *(v9 + 16) = sub_252DF1700([a2 trigger]);
  v10 = sub_252E1DFD0(v9);
  v11 = [a2 automatableTask];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for ControlAutomateHomeIntent();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
      v15 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
      v16 = v14;

      v17 = [v15 init];
      [v17 setUserTask_];
      type metadata accessor for HomeFilter();
      v18 = sub_252E37254();

      [v17 setFilters_];

      [v17 setTime_];
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_6:
  v19 = sub_252B680FC(v11);
  swift_beginAccess();
  v20 = *(v19 + 16);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = (v20 + 504 * v21 - 472);
    memcpy(__dst, v22, sizeof(__dst));
    memmove(__src, v22, 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    sub_2529353AC(__dst, v33);

    memcpy(v33, __src, 0x1F8uLL);
  }

  else
  {

    sub_25293DEE0(v33);
  }

  memcpy(__src, v33, sizeof(__src));
  v23 = sub_252953488(v17, __src, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_252E3EF90;
  *(v24 + 32) = 0x6974616D6F747561;
  *(v24 + 40) = 0xEA00000000006E6FLL;
  v25 = type metadata accessor for HomeAutomationAutomation();
  *(v24 + 48) = v10;
  *(v24 + 72) = v25;
  strcpy((v24 + 80), "intentContext");
  *(v24 + 94) = -4864;
  v26 = type metadata accessor for HomeAutomationIntentContext(0);
  *(v24 + 96) = v23;
  *(v24 + 120) = v26;
  *(v24 + 128) = 0x65736E6F70736572;
  *(v24 + 136) = 0xE900000000000073;
  if (a3)
  {
    v27 = type metadata accessor for HomeAutomationEntityResponses();
    v28 = a3;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    *(v24 + 152) = 0;
    *(v24 + 160) = 0;
  }

  *(v24 + 144) = v28;
  *(v24 + 168) = v27;
  *(v24 + 176) = 0xD000000000000014;
  v29 = MEMORY[0x277D839B0];
  *(v24 + 184) = 0x8000000252E6DDD0;
  *(v24 + 192) = (a4 == 6) & ~a5;
  *(v24 + 216) = v29;
  *(v24 + 224) = 0x6974656C65447369;
  *(v24 + 232) = 0xEF726F7272456E6FLL;
  *(v24 + 264) = v29;
  *(v24 + 240) = 0;

  sub_252E362B4();
}

uint64_t sub_2529A1240()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_2529A12AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_25299F63C(a1, a2);
}

uint64_t sub_2529A1378()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v1 = sub_252E34024();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2529A13F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AutomateHomeUnsupportedValueFlowStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9E00](a1, a2, v9, a4);
}

uint64_t sub_2529A14E0(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v1 + 16), v19);

  v2 = sub_252C97064(0xD000000000000015, 0x8000000252E6A2B0, 0x6E6F6D6D6F43, 0xE600000000000000, v19);
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v4)
  {
    v5 = sub_252E33C64();
    swift_allocObject();
    v6 = sub_252E33C54();
    v17[3] = v5;
    v17[4] = MEMORY[0x277D5BD58];
    v17[0] = v6;
    sub_252E33F34();
    swift_allocObject();
    sub_252E33C54();
    v7 = sub_252E334C4();
    swift_allocObject();
    v8 = sub_252E334B4();
    v18[3] = v7;
    v18[4] = MEMORY[0x277D5B808];
    v18[0] = v8;
    sub_252947E5C(1, v2, v4);
    v10 = v9;

    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544D60);
    v12 = sub_252E36AC4();
    v13 = sub_252E374D4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_252BE2CE0(0xD000000000000015, 0x8000000252E6A2B0, v19);
      _os_log_impl(&dword_252917000, v12, v13, "Unable to get localized string for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x2530AED00](v15, -1, -1);
      MEMORY[0x2530AED00](v14, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v10;
}

uint64_t sub_2529A17B8(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_252E378C4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_2529A18DC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_252E34804();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

void *sub_2529A1AB0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_2529A1BC4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    sub_25293F638(0, &qword_27F540E58, 0x277CD1EE0);
    sub_2529A3D38();
    sub_252E373E4();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_252E37904())
        {
          goto LABEL_20;
        }

        sub_25293F638(0, &qword_27F540E58, 0x277CD1EE0);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_25291AE30(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_25291AE30(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2529A1E08(void *a1)
{
  v3 = sub_252E32E84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = a1;
  v7 = a1;
  v8 = [v7 uniqueIdentifier];
  sub_252E32E64();

  v9 = [v7 name];
  v10 = sub_252E36F34();
  v12 = v11;

  v13 = [v7 assistantIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = sub_252E36F34();
    v17 = v16;
  }

  else
  {

    v15 = 0;
    v17 = 0;
  }

  (*(v4 + 32))(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v6, v3);
  v18 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  *v18 = v10;
  v18[1] = v12;
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
  v19 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
  *v19 = v15;
  v19[1] = v17;
  return v1;
}

void *sub_2529A2020(void *a1)
{
  v3 = sub_252E32E84();
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = a1[3];
  v52 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v13 = v52;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v13);
    type metadata accessor for Room(0);
    swift_deallocPartialClassInstance();
    return v11;
  }

  v12 = v7;
  LOBYTE(v53[0]) = 0;
  sub_252950ADC(&qword_27F540498, MEMORY[0x277CC9618]);
  sub_252E37C64();
  v15 = v3;
  LOBYTE(v54) = 1;
  sub_252950A60();
  sub_252E37C64();
  v16 = v52;
  v17 = v5;
  v18 = v53[0];
  LOBYTE(v53[0]) = 2;
  v48 = sub_252E37C04();
  v49 = v18;
  v50 = v19;
  LOBYTE(v53[0]) = 3;
  v20 = sub_252E37BA4();
  v42 = v12;
  v44 = v9;
  v46 = v21;
  v47 = v15;
  v22 = v20;
  v23 = type metadata accessor for HomeStore(0);
  v24 = static HomeStore.shared.getter(v23);
  v25 = sub_2529D9884();

  MEMORY[0x28223BE20](v26);
  v28 = v48;
  v27 = v49;
  *(&v40 - 6) = v17;
  *(&v40 - 5) = v28;
  *(&v40 - 4) = v50;
  *(&v40 - 3) = v22;
  v41 = v22;
  *(&v40 - 2) = v46;
  *(&v40 - 1) = v27;
  v29 = sub_2529A17B8(sub_2529A3DC0, (&v40 - 8), v25);
  v43 = 0;

  v45 = v29;
  if (!v29)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v34 = sub_252E36AD4();
    v35 = __swift_project_value_buffer(v34, qword_27F544CB8);
    sub_252CC4050(0xD000000000000021, 0x8000000252E6DFB0, 0xD00000000000006ALL, 0x8000000252E6DFE0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 43);
    strcpy(v53, "identifier: ");
    BYTE5(v53[1]) = 0;
    HIWORD(v53[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8, MEMORY[0x277CC9628]);
    v36 = sub_252E37D94();
    MEMORY[0x2530AD570](v36);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006ALL, 0x8000000252E6DFE0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 44);

    v53[0] = 0x203A656D616ELL;
    v53[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v48, v50);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006ALL, 0x8000000252E6DFE0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 45);

    v53[0] = 0;
    v53[1] = 0xE000000000000000;
    sub_252E379F4();

    v53[0] = 0xD000000000000015;
    v53[1] = 0x8000000252E6AA20;
    v54 = v41;
    v55 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v37 = sub_252E36F94();
    MEMORY[0x2530AD570](v37);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006ALL, 0x8000000252E6DFE0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 46);

    strcpy(v53, "entityType: ");
    BYTE5(v53[1]) = 0;
    HIWORD(v53[1]) = -5120;
    v54 = v49;
    v38 = sub_252E36F94();
    MEMORY[0x2530AD570](v38);

    v11 = v35;
    sub_252CC4050(v53[0], v53[1], 0xD00000000000006ALL, 0x8000000252E6DFE0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v42 + 8))(v44, v6);
    (*(v51 + 8))(v17, v47);
    v13 = v16;
    goto LABEL_4;
  }

  v30 = v45;

  v31 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate);

  v11 = v56;
  *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v31;
  sub_252929E74(v16, v53);
  v32 = v43;
  v33 = Entity.init(from:)(v53);
  if (v32)
  {
    (*(v12 + 8))(v44, v6);

    (*(v51 + 8))(v17, v47);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v11 = v33;
    (*(v12 + 8))(v44, v6);

    v39 = *(v51 + 8);

    v39(v17, v47);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return v11;
}

BOOL sub_2529A2878(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 3;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 3;
      }
    }
  }

  return 0;
}

uint64_t sub_2529A2974(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = sub_2529F2818(a1);

  v9 = v2;
  v8[2] = &v9;
  LOBYTE(v2) = sub_252A00B58(sub_2529A3DA0, v8, v6);

  return v2 & 1;
}

uint64_t sub_2529A2A0C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) accessories];
  sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
  v2 = sub_252E37264();

  v31 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_31;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v7 matterNodeID];
      if (!v10)
      {
        goto LABEL_16;
      }

      v11 = [v8 matterNodeID];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 unsignedLongLongValue];

        if (!v13)
        {
          goto LABEL_16;
        }
      }

      v14 = sub_252E37434();
      v16 = v15;
      if (v14 == sub_252E36F34() && v16 == v17)
      {
      }

      else
      {
        v18 = sub_252E37DB4();

        if ((v18 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (([v8 isBridged] & 1) == 0)
      {
        type metadata accessor for MatterAccessory(0);
        v20 = swift_allocObject();
        v21 = [v8 matterNodeID];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 unsignedLongLongValue];

          *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v23;
          if (!v23)
          {
LABEL_25:
            if (qword_27F53F4B0 != -1)
            {
              swift_once();
            }

            v24 = sub_252E36AD4();
            __swift_project_value_buffer(v24, qword_27F544CB8);
            sub_252E379F4();

            v25 = [v8 name];
            v26 = sub_252E36F34();
            v28 = v27;

            MEMORY[0x2530AD570](v26, v28);

            MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
            sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, 0x8000000252E6B7C0, 0x293A5F2874696E69, 0xE800000000000000, 19);

            v5 = v2 & 0xC000000000000001;
            v6 = v2 & 0xFFFFFFFFFFFFFF8;
          }

          v19 = v8;
          goto LABEL_17;
        }

        *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
        goto LABEL_25;
      }

LABEL_16:
      type metadata accessor for Accessory(0);
      swift_allocObject();
      v19 = v8;
LABEL_17:
      sub_252D4CE7C(v19);
      MEMORY[0x2530AD700]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
        v6 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      sub_252E372D4();
      ++v4;
      if (v9 == i)
      {
        v29 = v31;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_34:

  return v29;
}

uint64_t sub_2529A2E84()
{
  v0 = type metadata accessor for HomeStore(0);
  v1 = static HomeStore.shared.getter(v0);
  v2 = sub_2529D8DC0();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_252E378C4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v15 = OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate;
      v16 = v2 & 0xC000000000000001;
      do
      {
        if (v16)
        {
          v5 = MEMORY[0x2530ADF00](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return v5;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(v2 + 8 * v4 + 32);

          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        v7 = OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate;
        v8 = [*(v5 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) rooms];
        sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
        v9 = sub_252E37264();

        v10 = sub_252C75928(v9);

        v19 = v10;
        sub_252DA6C70(&v18, [*(v5 + v7) roomForEntireHome]);

        v11 = sub_2529A39B4(v19, sub_252E11384, sub_252E08104);

        v19 = *(v17 + v15);
        MEMORY[0x28223BE20](v12);
        v14[2] = &v19;
        LOBYTE(v10) = sub_252A00B74(sub_2529A3C14, v14, v11);

        if (v10)
        {
          goto LABEL_13;
        }

        ++v4;
      }

      while (v6 != v3);
    }
  }

  return 0;
}

uint64_t sub_2529A30FC()
{
  v1 = v0;
  v2 = sub_2529A2A0C();
  if (v2 >> 62)
  {
    v11 = sub_252E378C4();

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

    return v10;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_252E379F4();
  v4 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

  v13 = v4;
  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6DF40);
  v5 = sub_2529A2A0C();
  v6 = type metadata accessor for Accessory(0);
  v7 = MEMORY[0x2530AD730](v5, v6);
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  return v13;
}

char *sub_2529A3254()
{
  v0 = sub_2529A2A0C();
  if (!(v0 >> 62))
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v1)
    {
      goto LABEL_3;
    }

LABEL_15:

    return sub_252AD24A4(1, 8224, 0xE200000000000000);
  }

  v14 = sub_252E378C4();

  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = sub_2529A2A0C();
  v3 = v2;
  if (v2 >> 62)
  {
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_19:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_2529508A0();
    v15 = sub_252E36EA4();
    v17 = v16;

    sub_252E379F4();

    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E6DF60);
    MEMORY[0x2530AD570](v15, v17);

    MEMORY[0x2530AD570](32010, 0xE200000000000000);
    v18 = sub_252AD24A4(1, 8224, 0xE200000000000000);

    return v18;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_5:
  v19 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      (*(*v7 + 472))();
      v8 = sub_252AD24A4(1, 8224, 0xE200000000000000);
      v10 = v9;

      v12 = *(v19 + 16);
      v11 = *(v19 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2529AA3A0((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v19 + 16) = v12 + 1;
      v13 = v19 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v4 != v6);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t Room.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Room.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_2529A3834(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E50, &qword_252E3F0A8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E48, &qword_252E3F0A0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_2529A39B4(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_252E378C4();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_25291AE30(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

void sub_2529A3A74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540248, &unk_252E3F0B0);
      v7 = *(sub_252E36324() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_252E36324();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t type metadata accessor for Room(uint64_t a1)
{
  result = qword_2814B0998;
  if (!qword_2814B0998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2529A3D38()
{
  result = qword_27F540E60;
  if (!qword_27F540E60)
  {
    v3 = sub_25293F638(255, &qword_27F540E58, 0x277CD1EE0);
    result = swift_getWitnessTable(MEMORY[0x277D85378], v3, v0, v1);
    atomic_store(result, &qword_27F540E60);
  }

  return result;
}

uint64_t sub_2529A3E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_252E34014();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529A3ED0, 0, 0);
}

uint64_t sub_2529A3ED0()
{
  v1 = [*(v0 + 112) userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 taskType];

    v4 = v3 == 2;
  }

  else
  {
    sub_252C515AC();
    v4 = 0;
  }

  v5 = *(v0 + 112);
  if (sub_252C6E240(v5) == 2)
  {
    v6 = 70.0;
  }

  else
  {
    v6 = 21.0;
  }

  v7 = sub_252C6E240(v5);
  v8 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v9 = sub_252E36F04();
  v10 = [v8 initWithIdentifier:0 displayString:v9];

  v11 = v10;
  [v11 setDoubleValue_];
  [v11 setUnit_];
  [v11 setType_];

  v12 = sub_252D0842C();
  if (v12 && (v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , v13))
  {
    v14 = sub_25296E640();
  }

  else
  {
    v14 = 0;
  }

  *(v0 + 168) = v14;
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v17 = *(v0 + 112);
  v18 = swift_allocObject();
  *(v0 + 176) = v18;
  *(v18 + 16) = v15;
  *(v18 + 24) = v4;
  *(v18 + 32) = v14;

  *(v0 + 280) = sub_252DC6D48(v17, v16);
  if (v16)
  {
    v19 = *(v0 + 128);
    v20 = *(v19 + 48);
    v21 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1((v19 + 24), v20);

    if (v4)
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    v24 = sub_252C05A94(v22, v23);
    *(v0 + 184) = v24;
    v33 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

    v25 = swift_task_alloc();
    *(v0 + 192) = v25;
    *v25 = v0;
    v25[1] = sub_2529A4318;

    return v33(0xD00000000000002BLL, 0x8000000252E6E0A0, v24);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 128);
    v28 = sub_252E36AD4();
    __swift_project_value_buffer(v28, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v29 = *(v27 + 96);
    __swift_project_boxed_opaque_existential_1((v27 + 72), v29);
    sub_252AD7CC4();
    v30 = swift_task_alloc();
    *(v0 + 240) = v30;
    *v30 = v0;
    v30[1] = sub_2529A46A0;
    v31 = *(v0 + 160);

    return sub_252BDB88C(v0 + 16, &unk_252E3F138, v18, v31, 0, 0, 0, v29);
  }
}

uint64_t sub_2529A4318(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_2529A4604;
  }

  else
  {
    v4 = sub_2529A444C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529A444C()
{
  v1 = *(v0 + 120);

  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_2529A44F0;

  return sub_252E174F4(v1);
}

uint64_t sub_2529A44F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_2529A496C;
  }

  else
  {
    v4 = sub_2529A4810;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529A4604()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529A46A0()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 248) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2529A4EC8;
  }

  else
  {
    v5 = sub_2529A4D98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529A4810()
{
  v1 = *(v0 + 200);
  *(v0 + 96) = v1;
  v2 = (v0 + 96);
  v3 = *(v0 + 224);
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = *(v0 + 128);
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  *(v10 + 16) = v2;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  *(v0 + 264) = v11;
  *v11 = v0;
  v11[1] = sub_2529A4A08;
  v12 = *(v0 + 280);
  v13 = *(v0 + 152);

  return sub_252BDB88C(v0 + 56, &unk_252E3F140, v10, v13, 0, 0, v12, v9);
}

uint64_t sub_2529A496C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529A4A08()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 272) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2529A4CE0;
  }

  else
  {

    v5 = sub_2529A4B88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529A4B88()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 224);
  v9 = *(v0 + 200);
  v10 = *(v0 + 120);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2529A4CE0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2529A4D98()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2529A4EC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529A4F50(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2529A4F74, 0, 0);
}

uint64_t sub_2529A4F74()
{
  v1 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 24), *(*(v0 + 16) + 48));

  if (v1)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_252C05A94(v2, v3);
  *(v0 + 32) = v4;
  v7 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_2529A5084;

  return v7(0xD00000000000002BLL, 0x8000000252E6E0A0, v4);
}

uint64_t sub_2529A5084(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_2529A523C;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_2529A51D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529A51D0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_2529A523C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529A52CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_2529A3E00(a1, a2, a3);
}

void *sub_2529A5380@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for BackToComfortableTemperatureResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_2529A53E4(void *a1)
{
  if (sub_252C4B5D4())
  {
    v2 = [a1 userTask];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 attribute];

      if (v4 == 6)
      {
        v5 = sub_252CCFCB8();
        if (v5)
        {
          v6 = *(sub_252B680FC(v5) + 49);

          return v6;
        }
      }
    }

    else
    {
      sub_252C515AC();
    }
  }

  return 0;
}

uint64_t sub_2529A5474()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_2529A4F50(v2, v3, v4);
}

uint64_t sub_2529A5520()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B7BC;

  return sub_252BA2CEC(v2);
}

unint64_t sub_2529A55C8(uint64_t a1)
{
  v115 = MEMORY[0x277D84F90];
  v103 = *(a1 + 16);
  if (!v103)
  {
    return v115;
  }

  v1 = 0;
  v104 = a1;
  v2 = a1 + 32;
  v108 = 0x8000000252E679B0;
  v109 = 0x8000000252E679D0;
  v106 = 0x8000000252E67960;
  v107 = 0x8000000252E67980;
  v105 = 0x8000000252E67940;
  v100 = 0;
  v102 = a1 + 32;
  do
  {
    memcpy(v114, (v2 + 504 * v1), sizeof(v114));
    v3 = v114[47];
    ++v1;
    v4 = *(v114[47] + 16);
    sub_2529353AC(v114, v113);
    v5 = (v3 + 32);

    while (2)
    {
      if (v4)
      {
        switch(*v5)
        {
          case 1:

            break;
          default:
            v6 = sub_252E37DB4();

            ++v5;
            --v4;
            if ((v6 & 1) == 0)
            {
              continue;
            }

            break;
        }

        sub_252935408(v114);

        v12 = 0;
        v13 = MEMORY[0x277D84F90];
        v14 = v102;
        v15 = v103;
        while (v12 < v15)
        {
          memcpy(v113, (v14 + 504 * v12), sizeof(v113));
          v16 = __OFADD__(v12++, 1);
          if (v16)
          {
            goto LABEL_56;
          }

          v17 = v113[47];
          v18 = *(v113[47] + 16);
          sub_2529353AC(v113, v112);
          v19 = (v17 + 32);
          while (2)
          {
            if (v18)
            {
              switch(*v19)
              {
                case 1:

                  goto LABEL_30;
                default:
                  v20 = sub_252E37DB4();

                  ++v19;
                  --v18;
                  if ((v20 & 1) == 0)
                  {
                    continue;
                  }

                  goto LABEL_30;
              }
            }

            break;
          }

          v21 = v113[24];
          if ((sub_2529A78B0(10, v113[24]) || sub_2529A78B0(9, v21)) && sub_2529A78C8(1, v113[17]) && (memcpy(v112, v113, sizeof(v112)), sub_252A13A70(), (v22 & 1) == 0))
          {
LABEL_30:
            v110[0] = v13;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2529AA480(0, *(v13 + 16) + 1, 1);
              v13 = v110[0];
            }

            v24 = *(v13 + 16);
            v23 = *(v13 + 24);
            v15 = v103;
            if (v24 >= v23 >> 1)
            {
              sub_2529AA480((v23 > 1), v24 + 1, 1);
              v13 = v110[0];
            }

            *(v13 + 16) = v24 + 1;
            memcpy((v13 + 504 * v24 + 32), v113, 0x1F8uLL);
          }

          else
          {
            sub_252935408(v113);
            v15 = v103;
          }

          v14 = v102;
          if (v12 == v15)
          {
            v101 = v13;
            if (qword_27F53F520 == -1)
            {
              goto LABEL_36;
            }

            goto LABEL_59;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        swift_once();
LABEL_36:
        v25 = sub_252E36AD4();
        __swift_project_value_buffer(v25, qword_27F544E08);
        v113[0] = 0;
        v113[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E6E0D0);
        v26 = MEMORY[0x2530AD730](v101, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v26);

        sub_252CC3D90(v113[0], v113[1], 0xD000000000000098, 0x8000000252E6E120);

        sub_252CC3D90(0xD000000000000027, 0x8000000252E6E1C0, 0xD000000000000098, 0x8000000252E6E120);
        v27 = 0;
        v104 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v27 >= v15)
          {
            goto LABEL_57;
          }

          v28 = (v14 + 504 * v27);
          memcpy(v113, v28, sizeof(v113));
          v16 = __OFADD__(v27++, 1);
          if (v16)
          {
            goto LABEL_58;
          }

          v29 = memcpy(v112, v28, sizeof(v112));
          MEMORY[0x28223BE20](v29);
          v99 = v112;
          sub_2529353AC(v113, v110);
          if ((sub_2529EDA1C(sub_25295AD78, v98, v101) & 1) == 0)
          {
            goto LABEL_47;
          }

          v30 = *(v113[47] + 16);
          v31 = (v113[47] + 32);

          while (2)
          {
            if (v30)
            {
              switch(*v31)
              {
                case 1:

                  break;
                default:
                  v32 = sub_252E37DB4();

                  ++v31;
                  --v30;
                  if ((v32 & 1) == 0)
                  {
                    continue;
                  }

                  break;
              }

              v14 = v102;
              v15 = v103;
LABEL_47:
              v33 = v104;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v111 = v33;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_2529AA480(0, *(v104 + 16) + 1, 1);
                v104 = v111;
              }

              v36 = *(v104 + 16);
              v35 = *(v104 + 24);
              if (v36 >= v35 >> 1)
              {
                sub_2529AA480((v35 > 1), v36 + 1, 1);
                v104 = v111;
              }

              v37 = v104;
              *(v104 + 16) = v36 + 1;
              memcpy((v37 + 504 * v36 + 32), v113, 0x1F8uLL);
              if (v27 == v15)
              {
LABEL_52:

                return v104;
              }
            }

            else
            {

              sub_252935408(v113);
              v14 = v102;
              v15 = v103;
              if (v27 == v103)
              {
                goto LABEL_52;
              }
            }

            break;
          }
        }
      }

      break;
    }

    sub_252935408(v114);

    v2 = v102;
  }

  while (v1 != v103);
  v7 = 32;
  v8 = v103;
  v9 = v104;
  do
  {
    memcpy(v114, (v104 + v7), sizeof(v114));
    v10 = v114[24];
    sub_2529353AC(v114, v113);
    if (sub_2529A78B0(10, v10))
    {
      sub_252935408(v114);
    }

    else
    {
      v11 = sub_2529A78B0(9, v10);
      sub_252935408(v114);
      if (!v11)
      {
        return v115;
      }
    }

    v7 += 504;
    --v8;
  }

  while (v8);
  v39 = MEMORY[0x277D84F90];
  v40 = 32;
  v41 = v103;
  do
  {
    memcpy(v114, (v9 + v40), sizeof(v114));
    if (LOBYTE(v114[39]) != 2 && (v114[39] & 1) != 0 && !*(v114[50] + 16) && !*(v114[51] + 16) && !*(v114[52] + 16) && !*(v114[53] + 16) && !*(v114[54] + 16) && !*(v114[55] + 16) && !*(v114[56] + 16) && !*(v114[57] + 16))
    {
      if (!*(v114[58] + 16) && !*(v114[59] + 16) && !*(v114[60] + 16))
      {
        sub_2529353AC(v114, v113);
        v112[0] = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA480(0, *(v39 + 16) + 1, 1);
          v39 = v112[0];
        }

        v43 = *(v39 + 16);
        v42 = *(v39 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_2529AA480((v42 > 1), v43 + 1, 1);
          v39 = v112[0];
        }

        *(v39 + 16) = v43 + 1;
        memcpy((v39 + 504 * v43 + 32), v114, 0x1F8uLL);
      }

      v9 = v104;
    }

    v40 += 504;
    --v41;
  }

  while (v41);
  v44 = 0;
  v109 = MEMORY[0x277D84F90];
  do
  {
    v45 = 504 * v44 + 32;
    v46 = v44;
    v47 = v103;
    while (1)
    {
      if (v46 >= v47)
      {
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      memcpy(v114, (v104 + v45), sizeof(v114));
      v44 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_153;
      }

      v48 = memcpy(v113, (v104 + v45), sizeof(v113));
      MEMORY[0x28223BE20](v48);
      v99 = v113;
      sub_2529353AC(v114, v112);
      if ((sub_2529EDA1C(sub_25295AD98, v98, v39) & 1) == 0)
      {
        break;
      }

      sub_252935408(v114);
      ++v46;
      v45 += 504;
      v47 = v103;
      if (v44 == v103)
      {
        goto LABEL_92;
      }
    }

    v49 = v109;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v110[0] = v49;
    if ((v50 & 1) == 0)
    {
      sub_2529AA480(0, *(v49 + 16) + 1, 1);
      v49 = v110[0];
    }

    v52 = *(v49 + 16);
    v51 = *(v49 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_2529AA480((v51 > 1), v52 + 1, 1);
      v49 = v110[0];
    }

    *(v49 + 16) = v52 + 1;
    v109 = v49;
    memcpy((v49 + 504 * v52 + 32), v114, 0x1F8uLL);
  }

  while (v44 != v103);
LABEL_92:
  v115 = v109;
  v53 = *(v39 + 16);
  if (v53)
  {
    v54 = 0;
    v108 = v53 - 1;
    v55 = MEMORY[0x277D84F90];
LABEL_94:
    v56 = (v39 + 32 + 504 * v54);
    v57 = v54;
    while (v57 < *(v39 + 16))
    {
      memcpy(v114, v56, sizeof(v114));
      v54 = v57 + 1;
      v58 = v114[17];
      sub_2529353AC(v114, v113);
      if (sub_2529A78C8(5, v58))
      {
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v112[0] = v55;
        if ((v59 & 1) == 0)
        {
          sub_2529AA480(0, *(v55 + 16) + 1, 1);
          v55 = v112[0];
        }

        v60 = v55;
        v61 = *(v55 + 16);
        v62 = *(v60 + 24);
        if (v61 >= v62 >> 1)
        {
          sub_2529AA480((v62 > 1), v61 + 1, 1);
          v60 = v112[0];
        }

        *(v60 + 16) = v61 + 1;
        memcpy((v60 + 504 * v61 + 32), v114, 0x1F8uLL);
        v55 = v60;
        if (v108 != v57)
        {
          goto LABEL_94;
        }

LABEL_104:
        v63 = 0;
        v64 = v39 + 32;
        v65 = MEMORY[0x277D84F90];
        v107 = v39 + 32;
LABEL_105:
        v66 = v65;
        v67 = (v64 + 504 * v63);
        v68 = v63;
        while (v68 < *(v39 + 16))
        {
          memcpy(v114, v67, sizeof(v114));
          v63 = v68 + 1;
          v69 = v114[17];
          sub_2529353AC(v114, v113);
          if (sub_2529A78C8(1, v69))
          {
            v65 = v66;
            v70 = swift_isUniquelyReferenced_nonNull_native();
            v112[0] = v66;
            v71 = v55;
            if ((v70 & 1) == 0)
            {
              sub_2529AA480(0, *(v65 + 16) + 1, 1);
              v65 = v112[0];
            }

            v73 = *(v65 + 16);
            v72 = *(v65 + 24);
            if (v73 >= v72 >> 1)
            {
              sub_2529AA480((v72 > 1), v73 + 1, 1);
              v65 = v112[0];
            }

            *(v65 + 16) = v73 + 1;
            memcpy((v65 + 504 * v73 + 32), v114, 0x1F8uLL);
            v64 = v107;
            v55 = v71;
            if (v108 != v68)
            {
              goto LABEL_105;
            }

            goto LABEL_117;
          }

          sub_252935408(v114);
          v67 += 504;
          ++v68;
          if (v53 == v63)
          {
            v65 = v66;
            goto LABEL_117;
          }
        }

        goto LABEL_156;
      }

      sub_252935408(v114);
      v56 += 504;
      ++v57;
      if (v53 == v54)
      {
        goto LABEL_104;
      }
    }

    goto LABEL_155;
  }

  v55 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
LABEL_117:
  v107 = v55;
  v108 = v65;
  v74 = *(v39 + 16);
  if (v74)
  {
    v75 = 0;
    v76 = v39 + 32;
    v106 = v74 - 1;
    v77 = MEMORY[0x277D84F90];
LABEL_119:
    v78 = (v76 + 504 * v75);
    v79 = v75;
    while (v79 < *(v39 + 16))
    {
      memcpy(v114, v78, sizeof(v114));
      v75 = v79 + 1;
      v80 = v114[17];
      sub_2529353AC(v114, v113);
      if (sub_2529A78C8(20, v80))
      {
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v112[0] = v77;
        v105 = v76;
        if ((v81 & 1) == 0)
        {
          sub_2529AA480(0, *(v77 + 16) + 1, 1);
          v77 = v112[0];
        }

        v65 = v108;
        v83 = *(v77 + 16);
        v82 = *(v77 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_2529AA480((v82 > 1), v83 + 1, 1);
          v65 = v108;
          v77 = v112[0];
        }

        *(v77 + 16) = v83 + 1;
        memcpy((v77 + 504 * v83 + 32), v114, 0x1F8uLL);
        v76 = v105;
        if (v106 != v79)
        {
          goto LABEL_119;
        }

        goto LABEL_131;
      }

      sub_252935408(v114);
      v78 += 504;
      ++v79;
      if (v74 == v75)
      {
        v65 = v108;
        goto LABEL_131;
      }
    }

    goto LABEL_157;
  }

  v77 = MEMORY[0x277D84F90];
LABEL_131:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402D8, &qword_252E3C110);
  v84 = swift_allocObject();
  v84[4] = v107;
  v84[5] = v65;
  v84[6] = v77;

  v85 = 0;
  v86 = MEMORY[0x277D84F90];
LABEL_132:
  v87 = 3;
  if (v85 > 3)
  {
    v87 = v85;
  }

  while (v85 != 3)
  {
    if (v87 == v85)
    {
      goto LABEL_154;
    }

    v88 = v84[v85++ + 4];
    if (*(v88 + 16))
    {

      v89 = swift_isUniquelyReferenced_nonNull_native();
      v114[0] = v86;
      if ((v89 & 1) == 0)
      {
        sub_2529AA5E0(0, *(v86 + 16) + 1, 1);
        v86 = v114[0];
      }

      v91 = *(v86 + 16);
      v90 = *(v86 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_2529AA5E0((v90 > 1), v91 + 1, 1);
        v86 = v114[0];
      }

      *(v86 + 16) = v91 + 1;
      *(v86 + 8 * v91 + 32) = v88;
      goto LABEL_132;
    }
  }

  v92 = v104;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402E0, &qword_252E3C118);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v93 = *(v86 + 16);

  if (v93 < 2)
  {

    if (qword_27F53F520 == -1)
    {
LABEL_144:
      v94 = sub_252E36AD4();
      __swift_project_value_buffer(v94, qword_27F544E08);
      sub_252CC3D90(0xD000000000000030, 0x8000000252E6E1F0, 0xD000000000000098, 0x8000000252E6E120);
    }

LABEL_158:
    swift_once();
    goto LABEL_144;
  }

  v96 = v107;
  v95 = v108;
  if (*(v107 + 16))
  {

    v97 = v96;
    goto LABEL_150;
  }

  if (*(v77 + 16))
  {

    v97 = v77;
    goto LABEL_150;
  }

  v97 = v95;
  if (*(v95 + 16))
  {
LABEL_150:
    sub_25297AA34(v97);
    return v115;
  }

  return v92;
}

BOOL Array<A>.containsResume()(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2530ADF00](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 runState];

    v4 = v5 + 1;
  }

  while (v8 != 17);
  return v3 != v5;
}

uint64_t Array<A>.contains(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_32;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = 0;
    v27 = a2 & 0xFFFFFFFFFFFFFF8;
    v28 = a2 & 0xC000000000000001;
    v26 = a2 + 32;
    v25 = a2;
LABEL_5:
    if (v28)
    {
      v4 = MEMORY[0x2530ADF00](v3, v25);
    }

    else
    {
      if (v3 >= *(v27 + 16))
      {
        goto LABEL_31;
      }

      v4 = *(v26 + 8 * v3);
    }

    v5 = v4;
    if (!__OFADD__(v3++, 1))
    {
      break;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v23 = a2;
    v24 = sub_252E378C4();
    a2 = v23;
    v2 = v24;
    if (!v24)
    {
      return 0;
    }
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    v9 = MEMORY[0x277D84F90];
    do
    {
      v13 = *v8++;
      v12 = v13;
      if (v13 != 14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA460(0, *(v9 + 16) + 1, 1);
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2529AA460((v10 > 1), v11 + 1, 1);
        }

        *(v9 + 16) = v11 + 1;
        *(v9 + 8 * v11 + 32) = v12;
      }

      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v14 = *(v9 + 16);
  if (!v14)
  {
    goto LABEL_28;
  }

  v15 = 0;
  while (2)
  {
    if (v15 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v16 = *(v9 + 32 + 8 * v15++);
    v17 = [v5 cleanModes];
    v18 = sub_252E37264();

    v19 = *(v18 + 16);
    v20 = 32;
    do
    {
      if (!v19)
      {

        if (v3 == v2)
        {
          return 0;
        }

        goto LABEL_5;
      }

      v21 = *(v18 + v20);
      v20 += 8;
      --v19;
    }

    while (v21 != v16);

    if (v15 != v14)
    {
      continue;
    }

    break;
  }

LABEL_28:

  return 1;
}

BOOL sub_2529A6C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_2529A6CA0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_252E36324();
    ++v2;
    sub_2529AECD4(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
  }

  while ((sub_252E36EF4() & 1) == 0);
  return v3 != v4;
}

BOOL sub_2529A6DAC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701670771;
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  v5 = a1;
  do
  {
    v7 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v9 = *v4;
    if (v9 <= 1)
    {
      if (*v4)
      {
        v10 = 1701670771;
      }

      else
      {
        v10 = 6647407;
      }

      if (*v4)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE300000000000000;
      }
    }

    else if (v9 == 2)
    {
      v11 = 0xE300000000000000;
      v10 = 7105633;
    }

    else
    {
      if (v9 == 3)
      {
        v10 = 1752461154;
      }

      else
      {
        v10 = 0x747065637865;
      }

      if (v9 == 3)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }
    }

    if (v5 == 3)
    {
      v12 = 1752461154;
    }

    else
    {
      v12 = 0x747065637865;
    }

    if (v5 == 3)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    if (v5 == 2)
    {
      v12 = 7105633;
      v13 = 0xE300000000000000;
    }

    if (v5)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v2 = 6647407;
      v14 = 0xE300000000000000;
    }

    if (v5 <= 1)
    {
      v15 = v2;
    }

    else
    {
      v15 = v12;
    }

    if (v5 <= 1)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    if (v10 == v15 && v11 == v16)
    {

      return v7 != 0;
    }

    v6 = sub_252E37DB4();

    v2 = 1701670771;
    ++v4;
  }

  while ((v6 & 1) == 0);
  return v7 != 0;
}

BOOL sub_2529A6F34(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xEA0000000000746ELL;
    v9 = 0x69685F6573756F68;
    switch(*v4)
    {
      case 1:
        v8 = 0xE900000000000074;
        v9 = 0x6E69685F6D6F6F72;
        break;
      case 2:
        v8 = 0xE700000000000000;
        v9 = 0x657265685F6E69;
        break;
      case 3:
        v8 = 0xE500000000000000;
        v9 = 0x6572656874;
        break;
      case 4:
        v8 = 0xE400000000000000;
        v9 = 1936287860;
        break;
      case 5:
        v9 = 0x725F6E6F6D6D6F63;
        v8 = 0xEC000000736D6F6FLL;
        break;
      case 6:
        v8 = 0xE400000000000000;
        v9 = 1819042152;
        break;
      case 7:
        v8 = 0xE700000000000000;
        v9 = 0x6E65686374696BLL;
        break;
      case 8:
        v10 = 1769367916;
        goto LABEL_25;
      case 9:
        v10 = 1768843620;
LABEL_25:
        v9 = v10 | 0x6F72676E00000000;
        v8 = 0xEA00000000006D6FLL;
        break;
      case 0xA:
        v8 = 0xE800000000000000;
        v9 = 0x65636E6172746E65;
        break;
      case 0xB:
        v8 = 0xE800000000000000;
        v9 = 0x6D6F6F7268746162;
        break;
      case 0xC:
        v8 = 0xE600000000000000;
        v9 = 0x65636966666FLL;
        break;
      case 0xD:
        v8 = 0xE700000000000000;
        v11 = 1919182178;
        goto LABEL_27;
      case 0xE:
        v9 = 0x625F72657473616DLL;
        v8 = 0xEE006D6F6F726465;
        break;
      case 0xF:
        v8 = 0xE800000000000000;
        v9 = 0x746E656D65736162;
        break;
      case 0x10:
        v8 = 0xE400000000000000;
        v9 = 1685217657;
        break;
      case 0x11:
        v8 = 0xE300000000000000;
        v9 = 7174503;
        break;
      case 0x12:
        v9 = 0x6F6F725F79616C70;
        v8 = 0xE90000000000006DLL;
        break;
      case 0x13:
        v8 = 0xE700000000000000;
        v11 = 1918858868;
LABEL_27:
        v9 = v11 | 0x6D6F6F00000000;
        break;
      case 0x14:
        v8 = 0xE800000000000000;
        v9 = 0x706F68736B726F77;
        break;
      default:
        break;
    }

    v12 = 0xEA0000000000746ELL;
    v13 = 0x69685F6573756F68;
    switch(a1)
    {
      case 1:
        v12 = 0xE900000000000074;
        if (v9 == 0x6E69685F6D6F6F72)
        {
          goto LABEL_66;
        }

        goto LABEL_2;
      case 2:
        v12 = 0xE700000000000000;
        if (v9 != 0x657265685F6E69)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 3:
        v12 = 0xE500000000000000;
        if (v9 != 0x6572656874)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 4:
        v12 = 0xE400000000000000;
        if (v9 != 1936287860)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 5:
        v12 = 0xEC000000736D6F6FLL;
        if (v9 != 0x725F6E6F6D6D6F63)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 6:
        v12 = 0xE400000000000000;
        if (v9 != 1819042152)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 7:
        v12 = 0xE700000000000000;
        if (v9 != 0x6E65686374696BLL)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 8:
        v13 = 0x6F72676E6976696CLL;
        v12 = 0xEA00000000006D6FLL;
        goto LABEL_65;
      case 9:
        v12 = 0xEA00000000006D6FLL;
        if (v9 != 0x6F72676E696E6964)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 10:
        v12 = 0xE800000000000000;
        if (v9 != 0x65636E6172746E65)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 11:
        v12 = 0xE800000000000000;
        if (v9 != 0x6D6F6F7268746162)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 12:
        v12 = 0xE600000000000000;
        if (v9 != 0x65636966666FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 13:
        v12 = 0xE700000000000000;
        v14 = 1919182178;
        goto LABEL_69;
      case 14:
        v12 = 0xEE006D6F6F726465;
        if (v9 != 0x625F72657473616DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 15:
        v12 = 0xE800000000000000;
        if (v9 != 0x746E656D65736162)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 16:
        v12 = 0xE400000000000000;
        if (v9 != 1685217657)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 17:
        v12 = 0xE300000000000000;
        if (v9 != 7174503)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 18:
        v12 = 0xE90000000000006DLL;
        if (v9 != 0x6F6F725F79616C70)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 19:
        v12 = 0xE700000000000000;
        v14 = 1918858868;
LABEL_69:
        if (v9 != (v14 | 0x6D6F6F00000000))
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      case 20:
        v12 = 0xE800000000000000;
        if (v9 != 0x706F68736B726F77)
        {
          goto LABEL_2;
        }

        goto LABEL_66;
      default:
LABEL_65:
        if (v9 != v13)
        {
          goto LABEL_2;
        }

LABEL_66:
        if (v8 != v12)
        {
LABEL_2:
          v5 = sub_252E37DB4();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_2529A7478(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xEB00000000656D6FLL;
    v9 = 0x48746E6572727563;
    switch(*v4)
    {
      case 1:
        v9 = 0x6C706552726F6F64;
        v8 = 0xEF746E656D656361;
        break;
      case 2:
        v9 = 0x4966664F6E727574;
        v8 = 0xEC0000005654416ELL;
        break;
      case 3:
        v8 = 0xE700000000000000;
        v9 = 0x7972616D697270;
        break;
      case 4:
        v8 = 0xE600000000000000;
        v9 = 0x656372756F73;
        break;
      case 5:
        v9 = 0xD000000000000012;
        v8 = 0x8000000252E67940;
        break;
      case 6:
        v9 = 0xD000000000000010;
        v8 = 0x8000000252E67960;
        break;
      case 7:
        v9 = 0x45656C6946636F76;
        v8 = 0xED0000797469746ELL;
        break;
      case 8:
        v9 = 0xD000000000000014;
        v8 = 0x8000000252E67980;
        break;
      case 9:
        v9 = 0x636E657265666572;
        v8 = 0xEE00656D6F486465;
        break;
      case 0xA:
        v9 = 0xD000000000000010;
        v8 = 0x8000000252E679B0;
        break;
      case 0xB:
        v9 = 0x6465766C6F736572;
        v8 = 0xEE00797469746E45;
        break;
      case 0xC:
        v9 = 0xD00000000000001FLL;
        v8 = 0x8000000252E679D0;
        break;
      default:
        break;
    }

    v10 = 0x48746E6572727563;
    v11 = 0xEB00000000656D6FLL;
    switch(a1)
    {
      case 1:
        v11 = 0xEF746E656D656361;
        if (v9 == 0x6C706552726F6F64)
        {
          goto LABEL_41;
        }

        goto LABEL_2;
      case 2:
        v11 = 0xEC0000005654416ELL;
        if (v9 != 0x4966664F6E727574)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 3:
        v11 = 0xE700000000000000;
        if (v9 != 0x7972616D697270)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 4:
        v11 = 0xE600000000000000;
        if (v9 != 0x656372756F73)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 5:
        v11 = 0x8000000252E67940;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 6:
        v11 = 0x8000000252E67960;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 7:
        v11 = 0xED0000797469746ELL;
        if (v9 != 0x45656C6946636F76)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 8:
        v11 = 0x8000000252E67980;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 9:
        v12 = 0x636E657265666572;
        v13 = 0x656D6F486465;
        goto LABEL_27;
      case 10:
        v10 = 0xD000000000000010;
        v11 = 0x8000000252E679B0;
        goto LABEL_40;
      case 11:
        v12 = 0x6465766C6F736572;
        v13 = 0x797469746E45;
LABEL_27:
        v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v9 != v12)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      case 12:
        v11 = 0x8000000252E679D0;
        if (v9 != 0xD00000000000001FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_41;
      default:
LABEL_40:
        if (v9 != v10)
        {
          goto LABEL_2;
        }

LABEL_41:
        if (v8 != v11)
        {
LABEL_2:
          v5 = sub_252E37DB4();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_2529A78F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = a3(*v6);
    v11 = v10;
    if (v9 == a3(a1) && v11 == v12)
    {

      return v7 != 0;
    }

    v14 = sub_252E37DB4();

    ++v6;
  }

  while ((v14 & 1) == 0);
  return v7 != 0;
}

uint64_t sub_2529A79C8(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + ((v7 << 9) | (8 * v8))) == result)
    {
      return 1;
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2529A7A64(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_252E36324();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v23 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  MEMORY[0x28223BE20](v25);
  v10 = &v23 - v9;
  v11 = *(a2 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = (v4 + 48);
  v23 = (v4 + 32);
  v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v7 + 72);
  v27 = (v4 + 8);
  v28 = v14;
  v15 = v25;
  while (1)
  {
    v16 = *(v15 + 48);
    sub_252938414(v13, v10, &qword_27F540298, &unk_252E3C270);
    sub_252938414(v29, &v10[v16], &qword_27F540298, &unk_252E3C270);
    v17 = *v12;
    if ((*v12)(v10, 1, v3) == 1)
    {
      break;
    }

    sub_252938414(v10, v30, &qword_27F540298, &unk_252E3C270);
    if (v17(&v10[v16], 1, v3) == 1)
    {
      (*v27)(v30, v3);
      goto LABEL_4;
    }

    v18 = v24;
    (*v23)(v24, &v10[v16], v3);
    sub_2529AECD4(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
    v26 = sub_252E36EF4();
    v19 = v12;
    v20 = *v27;
    v21 = v18;
    v15 = v25;
    (*v27)(v21, v3);
    v20(v30, v3);
    v12 = v19;
    sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
    if (v26)
    {
      return 1;
    }

LABEL_5:
    v13 += v28;
    if (!--v11)
    {
      return 0;
    }
  }

  if (v17(&v10[v16], 1, v3) != 1)
  {
LABEL_4:
    sub_25293847C(v10, &qword_27F540758, &unk_252E4D160);
    goto LABEL_5;
  }

  sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
  return 1;
}

BOOL sub_2529A7E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v8 = a3();
    v10 = v9;
    if (v8 == a3() && v10 == v11)
    {

      return v6 != 0;
    }

    v13 = sub_252E37DB4();

    ++v5;
  }

  while ((v13 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2529A7F24(void *a1, unint64_t a2)
{
  v4 = sub_2529FE6DC(&unk_2864A35A0);
  if (a2 >> 62)
  {
    goto LABEL_78;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_72:

    return 13;
  }

  while (1)
  {
    v6 = 0;
    v62 = a2 & 0xC000000000000001;
    v63 = v4;
    v58 = a2 & 0xFFFFFFFFFFFFFF8;
    v59 = a2;
    v57 = a2 + 32;
    v60 = v5;
    v61 = a1;
LABEL_4:
    if (v62)
    {
      v7 = MEMORY[0x2530ADF00](v6, v59);
      v8 = __OFADD__(v6, 1);
      v9 = v6 + 1;
      if (!v8)
      {
        break;
      }

      goto LABEL_76;
    }

    if (v6 >= *(v58 + 16))
    {
      goto LABEL_77;
    }

    v7 = *(v57 + 8 * v6);
    v8 = __OFADD__(v6, 1);
    v9 = v6 + 1;
    if (!v8)
    {
      break;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v5 = sub_252E378C4();
    if (!v5)
    {
      goto LABEL_72;
    }
  }

  v64 = v9;
  v65 = v7;
  if (!a1)
  {
    v33 = [v7 cleanModes];
    v34 = sub_252E37264();

    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = (v34 + 32);
      v37 = MEMORY[0x277D84F90];
      do
      {
        v39 = *v36++;
        v38 = v39;
        if (v39 <= 0xF)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_2529F7F9C(0, *(v37 + 2) + 1, 1, v37);
          }

          v41 = *(v37 + 2);
          v40 = *(v37 + 3);
          if (v41 >= v40 >> 1)
          {
            v37 = sub_2529F7F9C((v40 > 1), v41 + 1, 1, v37);
          }

          *(v37 + 2) = v41 + 1;
          *&v37[8 * v41 + 32] = v38;
        }

        --v35;
      }

      while (v35);
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

    a1 = sub_252C75B70(v37);
    goto LABEL_46;
  }

  v10 = v7;
  v11 = a1;
  v12 = [v10 cleanModes];
  v13 = sub_252E37264();

  v14 = *(v13 + 16);
  if (!v14)
  {

    v16 = MEMORY[0x277D84F90];
    v26 = *(MEMORY[0x277D84F90] + 16);
    if (v26)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  do
  {
    v17 = *(v13 + 32 + 8 * v15);
    v18 = [v11 cleanModes];
    v19 = sub_252E37264();

    v20 = *(v19 + 16);
    v21 = 32;
    do
    {
      if (!v20)
      {

        goto LABEL_14;
      }

      v22 = *(v19 + v21);
      v21 += 8;
      --v20;
    }

    while (v22 != v17);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA3C0(0, v16[2] + 1, 1);
      v16 = v67;
    }

    v25 = v16[2];
    v24 = v16[3];
    if (v25 >= v24 >> 1)
    {
      sub_2529AA3C0((v24 > 1), v25 + 1, 1);
      v16 = v67;
    }

    v16[2] = v25 + 1;
    v16[v25 + 4] = v17;
LABEL_14:
    ++v15;
  }

  while (v15 != v14);

  v4 = v63;
  v26 = v16[2];
  if (!v26)
  {
LABEL_42:
    v28 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

LABEL_24:
  v27 = v16 + 4;
  v28 = MEMORY[0x277D84F90];
  do
  {
    v30 = *v27++;
    v29 = v30;
    if (v30 <= 0xF)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_2529F7F9C(0, *(v28 + 2) + 1, 1, v28);
      }

      v32 = *(v28 + 2);
      v31 = *(v28 + 3);
      if (v32 >= v31 >> 1)
      {
        v28 = sub_2529F7F9C((v31 > 1), v32 + 1, 1, v28);
      }

      *(v28 + 2) = v32 + 1;
      *&v28[8 * v32 + 32] = v29;
    }

    --v26;
  }

  while (v26);
LABEL_43:

  a1 = sub_252C75B70(v28);

LABEL_46:

  if (*(v4 + 16) <= a1[2] >> 3)
  {
    v67 = a1;
    a1 = &v67;
    sub_2529AA700(v4);
    v42 = v67;
  }

  else
  {
    v42 = sub_2529AADC0(v4, a1);
  }

  v43 = 1 << *(v42 + 32);
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  else
  {
    v44 = -1;
  }

  a2 = v44 & v42[7];
  v4 = (v43 + 63) >> 6;

  v45 = 0;
  v66 = MEMORY[0x277D84F90];
  while (a2)
  {
LABEL_58:
    if (qword_27F53F6E8 != -1)
    {
      swift_once();
    }

    a2 &= a2 - 1;
    v47 = off_27F545908;
    if (*(off_27F545908 + 2) && (v48 = sub_252A488EC(), (v49 & 1) != 0))
    {
      v52 = *(v47[7] + v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_2529F80F0(0, *(v66 + 2) + 1, 1, v66);
      }

      v54 = *(v66 + 2);
      v53 = *(v66 + 3);
      a1 = (v54 + 1);
      if (v54 >= v53 >> 1)
      {
        v66 = sub_2529F80F0((v53 > 1), v54 + 1, 1, v66);
      }

      *(v66 + 2) = a1;
      v66[v54 + 32] = v52;
    }

    else
    {
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v50 = sub_252E36AD4();
      v51 = __swift_project_value_buffer(v50, qword_27F544CD0);
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E6E290);
      sub_252E37AE4();
      a1 = v51;
      sub_252CC4050(v67, v68, 0xD000000000000079, 0x8000000252E6E2D0, 0xD000000000000013, 0x8000000252E6E350, 65);
    }
  }

  while (1)
  {
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v46 >= v4)
    {
      break;
    }

    a2 = v42[v46 + 7];
    ++v45;
    if (a2)
    {
      v45 = v46;
      goto LABEL_58;
    }
  }

  if (!*(v66 + 2))
  {

    a1 = v61;
    v4 = v63;
    v6 = v64;
    if (v64 != v60)
    {
      goto LABEL_4;
    }

    goto LABEL_72;
  }

  if (*(v66 + 2))
  {
    v56 = v66[32];

    return v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2529A8628(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v36 = v1 & 0xC000000000000001;
    v31 = v1 + 32;
    v32 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D84F90];
    v30 = xmmword_252E3C290;
    v33 = i;
    v34 = v1;
    while (1)
    {
      if (v36)
      {
        v6 = MEMORY[0x2530ADF00](v3, v1);
      }

      else
      {
        if (v3 >= *(v32 + 16))
        {
          goto LABEL_41;
        }

        v6 = *(v31 + 8 * v3);
      }

      v7 = v6;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v9 = [v6 targetAreas];
      if (!v9)
      {
        goto LABEL_35;
      }

      v10 = v9;
      type metadata accessor for HomeAttributeTargetArea();
      v11 = sub_252E37264();

      v37 = v4;
      if (v11 >> 62)
      {
        v12 = sub_252E378C4();
        if (!v12)
        {
LABEL_31:
          v5 = MEMORY[0x277D84F90];
          goto LABEL_32;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_31;
        }
      }

      v1 = 0;
      v5 = MEMORY[0x277D84F90];
      do
      {
        v13 = v1;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x2530ADF00](v13, v11);
          }

          else
          {
            if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v14 = *(v11 + 8 * v13 + 32);
          }

          v15 = v14;
          v1 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v16 = [v14 name];
          if (v16)
          {
            break;
          }

          ++v13;
          if (v1 == v12)
          {
            goto LABEL_32;
          }
        }

        v17 = v16;
        v18 = sub_252E36F34();
        v35 = v19;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_2529F7A80(0, *(v5 + 16) + 1, 1, v5);
        }

        v21 = *(v5 + 16);
        v20 = *(v5 + 24);
        if (v21 >= v20 >> 1)
        {
          v5 = sub_2529F7A80((v20 > 1), v21 + 1, 1, v5);
        }

        *(v5 + 16) = v21 + 1;
        v22 = v5 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v35;
      }

      while (v1 != v12);
LABEL_32:

      if (!*(v5 + 16))
      {

        i = v33;
        v1 = v34;
        v4 = v37;
LABEL_35:
        v23 = [v7 targetMap];
        if (v23 && (v24 = v23, v25 = [v23 name], v24, v25))
        {

          v26 = sub_252E36F34();
          v28 = v27;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
          v5 = swift_allocObject();
          *(v5 + 16) = v30;
          *(v5 + 32) = v26;
          *(v5 + 40) = v28;
        }

        else
        {

          v5 = v4;
        }

        goto LABEL_5;
      }

      i = v33;
      v1 = v34;
LABEL_5:
      v4 = v5;
      if (v3 == i)
      {
        return v5;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  return MEMORY[0x277D84F90];
}

void HomeAttributeCleaningJob.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E6E230);
  v2 = HomeAttributeStateType.description.getter([v0 runState]);
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](0x6E61656C6320200ALL, 0xEF203A7365646F4DLL);
  v3 = [v0 cleanModes];
  v4 = sub_252E37264();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {
      v8 = 0xE400000000000000;
      v9 = 1869903201;
      switch(*(v4 + 32 + 8 * v6))
      {
        case 0:
          v8 = 0xE700000000000000;
          v9 = 0x6E776F6E6B6E75;
          goto LABEL_20;
        case 1:
          v8 = 0xE600000000000000;
          v9 = 0x6D7575636176;
          goto LABEL_20;
        case 2:
          v8 = 0xE300000000000000;
          v9 = 7368557;
          goto LABEL_20;
        case 3:
          v8 = 0xE800000000000000;
          v9 = 0x6E6F697461636176;
          goto LABEL_20;
        case 4:
          v9 = 0x61656C4370656564;
          v8 = 0xE90000000000006ELL;
          goto LABEL_20;
        case 5:
          goto LABEL_20;
        case 6:
          v8 = 0xE500000000000000;
          v9 = 0x6B63697571;
          goto LABEL_20;
        case 7:
          v8 = 0xE500000000000000;
          v9 = 0x7465697571;
          goto LABEL_20;
        case 8:
          v8 = 0xE300000000000000;
          v9 = 7889261;
          goto LABEL_20;
        case 9:
          v9 = 1701736302;
          goto LABEL_20;
        case 0xALL:
          v8 = 0xE900000000000079;
          v9 = 0x6772656E45776F6CLL;
          goto LABEL_20;
        case 0xBLL:
          v8 = 0xE500000000000000;
          v9 = 0x746867696ELL;
          goto LABEL_20;
        case 0xCLL:
          v8 = 0xE300000000000000;
          v9 = 7954788;
          goto LABEL_20;
        case 0xDLL:
          v8 = 0xE300000000000000;
          v9 = 7235949;
          goto LABEL_20;
        case 0xELL:
          v8 = 0xE500000000000000;
          v9 = 0x7465736E75;
          goto LABEL_20;
        case 0xFLL:
          v8 = 0xE800000000000000;
          v9 = 0x6573696F4E776F6CLL;
LABEL_20:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_2529F7A80(0, *(v7 + 2) + 1, 1, v7);
          }

          v11 = *(v7 + 2);
          v10 = *(v7 + 3);
          if (v11 >= v10 >> 1)
          {
            v7 = sub_2529F7A80((v10 > 1), v11 + 1, 1, v7);
          }

          *(v7 + 2) = v11 + 1;
          v12 = &v7[16 * v11];
          *(v12 + 4) = v9;
          *(v12 + 5) = v8;
          break;
        default:
          break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_28:

    v13 = MEMORY[0x2530AD730](v7, MEMORY[0x277D837D0]);
    v15 = v14;

    MEMORY[0x2530AD570](v13, v15);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6E260);
    v16 = [v1 targetAreas];
    if (v16)
    {
      v17 = type metadata accessor for HomeAttributeTargetArea();
      sub_252E37264();

      v16 = MEMORY[0x2530AD730](v18, v17);
      v20 = v19;
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v20 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v21 = sub_252E36F94();
    MEMORY[0x2530AD570](v21);

    MEMORY[0x2530AD570](0x656772617420200ALL, 0xEE00203A70614D74);
    v22 = [v1 targetMap];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 description];

      sub_252E36F34();
    }

    v25 = sub_252E36F94();
    MEMORY[0x2530AD570](v25);

    MEMORY[0x2530AD570](32010, 0xE200000000000000);
  }
}

uint64_t HomeAttributeCleaningJob.isEqual(_:)(uint64_t a1)
{
  sub_252938414(a1, v25, &qword_27F541E80, &qword_252E3DFA0);
  if (!v26)
  {
    sub_25293847C(v25, &qword_27F541E80, &qword_252E3DFA0);
    goto LABEL_20;
  }

  type metadata accessor for HomeAttributeCleaningJob();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v22 = 0;
    return v22 & 1;
  }

  v2 = [v24 runState];
  if (v2 != [v1 runState])
  {
    goto LABEL_19;
  }

  v3 = [v24 cleanModes];
  v4 = sub_252E37264();

  v5 = sub_252C76054(v4);

  v6 = [v1 cleanModes];
  v7 = sub_252E37264();

  v8 = sub_252C76054(v7);

  LOBYTE(v7) = sub_2529A9A94(v5, v8);

  if ((v7 & 1) == 0)
  {
    goto LABEL_19;
  }

  v9 = [v24 targetAreas];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for HomeAttributeTargetArea();
    v11 = sub_252E37264();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = sub_252C75DC0(v11);

  v13 = [v1 targetAreas];
  if (v13)
  {
    v14 = v13;
    type metadata accessor for HomeAttributeTargetArea();
    v15 = sub_252E37264();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_252C75DC0(v15);

  sub_2529A9BE8(v12, v16);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_19;
  }

  v19 = [v24 targetMap];
  v20 = [v1 targetMap];
  v21 = v20;
  if (!v19)
  {

    if (!v21)
    {
      v22 = 1;
      return v22 & 1;
    }

    goto LABEL_20;
  }

  if (!v20)
  {

LABEL_19:
    goto LABEL_20;
  }

  type metadata accessor for HomeAttributeTargetMap();
  v22 = sub_252E37694();

  return v22 & 1;
}

uint64_t sub_2529A91A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v39 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v40 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(result + 48) + 152 * (v10 | (v3 << 6));
      v14 = *(v13 + 16);
      v74[0] = *v13;
      v74[1] = v14;
      v15 = *(v13 + 80);
      v17 = *(v13 + 32);
      v16 = *(v13 + 48);
      v74[4] = *(v13 + 64);
      v74[5] = v15;
      v74[2] = v17;
      v74[3] = v16;
      v19 = *(v13 + 112);
      v18 = *(v13 + 128);
      v20 = *(v13 + 96);
      v75 = *(v13 + 144);
      v74[7] = v19;
      v74[8] = v18;
      v74[6] = v20;
      v21 = *(v13 + 112);
      v70 = *(v13 + 96);
      v71 = v21;
      v72 = *(v13 + 128);
      v73 = *(v13 + 144);
      v22 = *(v13 + 48);
      v66 = *(v13 + 32);
      v67 = v22;
      v23 = *(v13 + 80);
      v24 = *(v13 + 96);
      v68 = *(v13 + 64);
      v69 = v23;
      v25 = *(v13 + 16);
      v64 = *v13;
      v65 = v25;
      v60 = v24;
      v61 = *(v13 + 112);
      v62 = *(v13 + 128);
      v63 = *(v13 + 144);
      v56 = *(v13 + 32);
      v57 = *(v13 + 48);
      v58 = *(v13 + 64);
      v59 = *(v13 + 80);
      v54 = *v13;
      v55 = *(v13 + 16);
      sub_252E37EC4();
      sub_25297DE08(v74, v52);
      sub_252A34930(&v42);
      v26 = sub_252E37F14();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v9 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v29 = ~v27;
      while (1)
      {
        v30 = *(a2 + 48) + 152 * v28;
        v31 = *(v30 + 16);
        v52[0] = *v30;
        v52[1] = v31;
        v32 = *(v30 + 80);
        v34 = *(v30 + 32);
        v33 = *(v30 + 48);
        v52[4] = *(v30 + 64);
        v52[5] = v32;
        v52[2] = v34;
        v52[3] = v33;
        v36 = *(v30 + 112);
        v35 = *(v30 + 128);
        v37 = *(v30 + 96);
        v53 = *(v30 + 144);
        v52[7] = v36;
        v52[8] = v35;
        v52[6] = v37;
        v48 = *(v30 + 96);
        v49 = *(v30 + 112);
        v50 = *(v30 + 128);
        v51 = *(v30 + 144);
        v44 = *(v30 + 32);
        v45 = *(v30 + 48);
        v46 = *(v30 + 64);
        v47 = *(v30 + 80);
        v42 = *v30;
        v43 = *(v30 + 16);
        sub_25297DE08(v52, v41);
        v38 = sub_252A39200(&v42, &v64);
        v60 = v48;
        v61 = v49;
        v62 = v50;
        v63 = v51;
        v56 = v44;
        v57 = v45;
        v58 = v46;
        v59 = v47;
        v54 = v42;
        v55 = v43;
        sub_2529AEC80(&v54);
        if (v38)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v9 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v48 = v70;
      v49 = v71;
      v50 = v72;
      v51 = v73;
      v44 = v66;
      v45 = v67;
      v46 = v68;
      v47 = v69;
      v42 = v64;
      v43 = v65;
      sub_2529AEC80(&v42);
      result = v39;
      v7 = v40;
      if (!v40)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    v60 = v70;
    v61 = v71;
    v62 = v72;
    v63 = v73;
    v56 = v66;
    v57 = v67;
    v58 = v68;
    v59 = v69;
    v54 = v64;
    v55 = v65;
    sub_2529AEC80(&v54);
    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2529A9538(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_252E37EC4();

    sub_252E37044();
    v16 = sub_252E37F14();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_252E37DB4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2529A96F0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x2821FCF40](a1, a2);
    }

    v6 = a2;
    v5 = v2;
    goto LABEL_17;
  }

  if (v3)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v4 = a2;
    }

    v5 = a1;
    v6 = v4;
LABEL_17:

    return sub_2529AA15C(v6, v5);
  }

  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v8 = 0;
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v31 = a2 + 56;
  v28 = a1 + 56;
  v29 = a1;
  v27 = v13;
  if (!v12)
  {
    goto LABEL_27;
  }

  do
  {
    v14 = __clz(__rbit64(v12));
    v30 = (v12 - 1) & v12;
LABEL_32:
    v17 = *(*(a1 + 48) + 8 * (v14 | (v8 << 6)));
    sub_252E37EC4();
    sub_252E32E84();
    sub_2529AECD4(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

    sub_252E36E94();
    v18 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    MEMORY[0x2530AE390](*(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
    v19 = (v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

    sub_252E37044();

    v20 = sub_252E37F14();
    v21 = -1 << *(v2 + 32);
    v22 = v20 & ~v21;
    if (((*(v31 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_48:

      return 0;
    }

    v23 = ~v21;
    while (1)
    {
      v24 = *(*(v2 + 48) + 8 * v22);

      if ((sub_252E32E54() & 1) == 0 || *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v17 + v18))
      {

        goto LABEL_35;
      }

      if (*(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v19 && *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v19[1])
      {
        break;
      }

      v26 = sub_252E37DB4();

      if (v26)
      {
        goto LABEL_45;
      }

LABEL_35:
      v22 = (v22 + 1) & v23;
      if (((*(v31 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

LABEL_45:

    v9 = v28;
    a1 = v29;
    v13 = v27;
    v12 = v30;
  }

  while (v30);
LABEL_27:
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
      return 1;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v30 = (v16 - 1) & v16;
      goto LABEL_32;
    }
  }

  __break(1u);
  return MEMORY[0x2821FCF40](a1, a2);
}

uint64_t sub_2529A9A94(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_252E37EB4();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_2529A9BE8(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_2529AA260(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = type metadata accessor for HomeAttributeTargetArea();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_252E37684();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_252E37694();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

Swift::Bool __swiftcall HomeAttributeCleaningJob.containsCleanModes(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = *(a1._rawValue + 2);
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v9 = *v4++;
      v8 = v9;
      if (v9 != 14)
      {
        LOBYTE(a1._rawValue) = swift_isUniquelyReferenced_nonNull_native();
        if ((a1._rawValue & 1) == 0)
        {
          LOBYTE(a1._rawValue) = sub_2529AA460(0, *(v5 + 16) + 1, 1);
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          LOBYTE(a1._rawValue) = sub_2529AA460((v6 > 1), v7 + 1, 1);
        }

        *(v5 + 16) = v7 + 1;
        *(v5 + 8 * v7 + 32) = v8;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v10 = *(v5 + 16);
  if (v10)
  {
    v11 = 0;
    while (2)
    {
      if (v11 >= *(v5 + 16))
      {
        __break(1u);
        return a1._rawValue;
      }

      v12 = *(v5 + 32 + 8 * v11++);
      v13 = [v2 cleanModes];
      v14 = sub_252E37264();

      v15 = *(v14 + 16);
      v16 = 32;
      do
      {
        if (!v15)
        {

          LOBYTE(a1._rawValue) = 0;
          return a1._rawValue;
        }

        v17 = *(v14 + v16);
        v16 += 8;
        --v15;
      }

      while (v17 != v12);

      if (v11 != v10)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(a1._rawValue) = 1;
  return a1._rawValue;
}

BOOL Array<A>.contains(_:)(id a1, unint64_t a2)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v6, a2);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_14;
      }

      v8 = *(a2 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = [v8 runState];

    v6 = v7 + 1;
  }

  while (v10 != a1);
  return v5 != v7;
}

uint64_t sub_2529AA15C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_252E378C4();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_252E37914();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_2529AA260(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_252E378C4())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_252E37914();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

char *sub_2529AA360(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_252931AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA380(void *a1, int64_t a2, char a3)
{
  result = sub_252931AE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA3A0(char *a1, int64_t a2, char a3)
{
  result = sub_252931C1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA3C0(char *a1, int64_t a2, char a3)
{
  result = sub_252931D28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA3E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_252931E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA400(void *a1, int64_t a2, char a3)
{
  result = sub_252931E40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA420(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_252931F74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA440(void *a1, int64_t a2, char a3)
{
  result = sub_252931F88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA460(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2529320BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA480(char *a1, int64_t a2, char a3)
{
  result = sub_2529321CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA4A0(char *a1, int64_t a2, char a3)
{
  result = sub_2529322F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA4C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2529323FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA4E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_252932410(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA500(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_252932438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA520(void *a1, int64_t a2, char a3)
{
  result = sub_25293245C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA540(char *a1, int64_t a2, char a3)
{
  result = sub_2529325A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA560(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2529326A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA580(char *a1, int64_t a2, char a3)
{
  result = sub_2529327A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA5A0(char *a1, int64_t a2, char a3)
{
  result = sub_2529328C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA5C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2529329BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA5E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2529329E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA600(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_252932B38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA620(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_252932E8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA640(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_252932EB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA660(char *a1, int64_t a2, char a3)
{
  result = sub_252932EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA680(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_252932FE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA6A0(void *a1, int64_t a2, char a3)
{
  result = sub_252933008(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2529AA6C0(void *a1, int64_t a2, char a3)
{
  result = sub_25293313C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2529AA6E0(char *a1, int64_t a2, char a3)
{
  result = sub_252933270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2529AA700(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_2529ACE1C(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_2529AA7F8(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_252E378C4())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for HomeEntityResponse();
    sub_2529AECD4(&qword_27F540340, type metadata accessor for HomeEntityResponse, MEMORY[0x277D85378]);
    sub_252E373E4();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_25291AE30(a1);
      return;
    }

    while (1)
    {
      v16 = sub_2529ACF28(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_252E37904())
      {
        type metadata accessor for HomeEntityResponse();
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}
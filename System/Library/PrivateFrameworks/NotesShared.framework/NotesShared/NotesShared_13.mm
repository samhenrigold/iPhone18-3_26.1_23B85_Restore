uint64_t _s11NotesShared21NoteEditActivityEventV7ParentsO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v55 = &v52 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v56 = &v52 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v57 = &v52 - v16;
  v17 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = (&v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19, v22);
  v24 = (&v52 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43138, &qword_2150C5EF8);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v29 = &v52 - v28;
  v30 = (&v52 + *(v27 + 56) - v28);
  sub_214FB6440(a1, &v52 - v28, type metadata accessor for NoteEditActivityEvent.Parents);
  sub_214FB6440(a2, v30, type metadata accessor for NoteEditActivityEvent.Parents);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_214FB6440(v29, v24, type metadata accessor for NoteEditActivityEvent.Parents);
    v46 = *v24;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v48 = *v30;
      sub_214D55670(0, &qword_280C24220, 0x277D82BB8);
      v44 = sub_2150A5780();

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_214FB6440(v29, v21, type metadata accessor for NoteEditActivityEvent.Parents);
  v31 = *v21;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B0, &unk_2150C7D90);
  v33 = *(v32 + 48);
  v34 = *(v32 + 64);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v47 = *(v5 + 8);
    v47(v21 + v34, v4);
    v47(v21 + v33, v4);
LABEL_9:
    sub_214F302D4(v29, &qword_27CA43138, &qword_2150C5EF8);
LABEL_15:
    v44 = 0;
    return v44 & 1;
  }

  v53 = *v30;
  v35 = *(v5 + 32);
  v35(v57, v21 + v33, v4);
  v35(v56, v21 + v34, v4);
  v36 = v30 + v33;
  v37 = v55;
  v35(v55, v36, v4);
  v38 = v30 + v34;
  v39 = v54;
  v35(v54, v38, v4);
  sub_214D55670(0, &qword_280C24220, 0x277D82BB8);
  v40 = v53;
  v41 = sub_2150A5780();

  if ((v41 & 1) == 0)
  {
    v49 = *(v5 + 8);
    v49(v39, v4);
    v49(v37, v4);
    v49(v56, v4);
    v50 = v57;
LABEL_14:
    v49(v50, v4);
    sub_214FB64A8(v29, type metadata accessor for NoteEditActivityEvent.Parents);
    goto LABEL_15;
  }

  v42 = v57;
  if ((sub_2150A39B0() & 1) == 0)
  {
    v49 = *(v5 + 8);
    v49(v39, v4);
    v49(v37, v4);
    v49(v56, v4);
    v50 = v42;
    goto LABEL_14;
  }

  v43 = v56;
  v44 = sub_2150A39B0();
  v45 = *(v5 + 8);
  v45(v39, v4);
  v45(v37, v4);
  v45(v43, v4);
  v45(v42, v4);
LABEL_11:
  sub_214FB64A8(v29, type metadata accessor for NoteEditActivityEvent.Parents);
  return v44 & 1;
}

uint64_t _s11NotesShared21NoteEditActivityEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2150A3920() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for NoteEditActivityEvent(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v8 = *(a1 + v5 + 8);
  v7 = *(a1 + v5 + 16);
  v9 = a2 + v5;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v6)
  {
    v12 = 1702129518;
  }

  else
  {
    v12 = 0x7265646C6F66;
  }

  if (v6)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (*v9)
  {
    v14 = 1702129518;
  }

  else
  {
    v14 = 0x7265646C6F66;
  }

  if (*v9)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v17 = sub_2150A6270();

    if ((v17 & 1) == 0)
    {

      return 0;
    }
  }

  if (v8 == v11 && v7 == v10)
  {
  }

  else
  {
    v19 = sub_2150A6270();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = v4[6];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  v24 = v4[9];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);

  return sub_214FAECF4(v25, v26);
}

id sub_214FB49F8(unint64_t isUniquelyReferenced_nonNull_bridgeObject, void *a2, void *a3)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
LABEL_49:
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_2150A59D0();
    isUniquelyReferenced_nonNull_bridgeObject = v30;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
      v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
      v31 = isUniquelyReferenced_nonNull_bridgeObject;
      v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
      v5 = MEMORY[0x277D84F90];
      v32 = v3;
      while (1)
      {
        if (v35)
        {
          isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x216062780](v4, v31);
        }

        else
        {
          if (v4 >= *(v34 + 16))
          {
            goto LABEL_44;
          }

          isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v4);
        }

        v7 = isUniquelyReferenced_nonNull_bridgeObject;
        v8 = __OFADD__(v4++, 1);
        if (v8)
        {
          goto LABEL_43;
        }

        result = [a3 attributedString];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v10 = result;
        v11 = [a2 editsByAddingCheckmarkEditsToEdit:v7 inAttributedString:result];

        sub_214D55670(0, &qword_27CA42488, off_278192FF0);
        v12 = sub_2150A4ED0();

        v13 = v12 >> 62;
        if (v12 >> 62)
        {
          v14 = sub_2150A59D0();
        }

        else
        {
          v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 = v5 >> 62;
        if (v5 >> 62)
        {
          isUniquelyReferenced_nonNull_bridgeObject = sub_2150A59D0();
          v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
          if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        else
        {
          isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
          if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
          {
            goto LABEL_42;
          }
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (v15)
          {
            goto LABEL_23;
          }

          v40 = v5;
          v17 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *(v17 + 24) >> 1)
          {
            v18 = v3;
            v19 = v14;
            goto LABEL_25;
          }
        }

        else
        {
          if (v15)
          {
LABEL_23:
            v18 = v3;
            sub_2150A59D0();
            goto LABEL_24;
          }

          v40 = v5;
        }

        v18 = v3;
LABEL_24:
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_2150A5BD0();
        v40 = isUniquelyReferenced_nonNull_bridgeObject;
        v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_25:
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v13)
        {
          isUniquelyReferenced_nonNull_bridgeObject = sub_2150A59D0();
          v22 = isUniquelyReferenced_nonNull_bridgeObject;
          if (!isUniquelyReferenced_nonNull_bridgeObject)
          {
LABEL_4:

            v6 = v19 <= 0;
            v3 = v18;
            if (!v6)
            {
              goto LABEL_45;
            }

            goto LABEL_6;
          }
        }

        else
        {
          v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v22)
          {
            goto LABEL_4;
          }
        }

        if (((v21 >> 1) - v20) < v19)
        {
          goto LABEL_46;
        }

        v38 = v19;
        v23 = v17 + 8 * v20 + 32;
        if (v13)
        {
          if (v22 < 1)
          {
            goto LABEL_48;
          }

          sub_214F43BCC(&qword_27CA43178, &qword_27CA43170, &qword_2150C5F40, MEMORY[0x277D83988]);
          for (i = 0; i != v22; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43170, &qword_2150C5F40);
            v25 = sub_214F47F8C(v39, i, v12);
            v27 = *v26;
            (v25)(v39, 0);
            *(v23 + 8 * i) = v27;
          }
        }

        else
        {
          swift_arrayInitWithCopy();
        }

        v3 = v32;
        if (v38 >= 1)
        {
          v28 = *(v17 + 16);
          v8 = __OFADD__(v28, v38);
          v29 = v28 + v38;
          if (v8)
          {
            goto LABEL_47;
          }

          *(v17 + 16) = v29;
        }

LABEL_6:
        v5 = v40;
        if (v4 == v3)
        {
          return v5;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_214FB4DDC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43160, &qword_2150C5F30);
    v5 = sub_2150A5EA0();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v7 = v5;

  sub_214FB2E44(a1, a2, 1, &v7);
  return v7;
}

void *_s11NotesShared21NoteEditActivityEventV6events3for2in14afterTimestamp06recentK0SayACGSo29ICTTMergeableAttributedStringC_AC7ParentsO10Foundation4DateVSgAQtFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v184 = a3;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42730, &qword_2150C5F00);
  v186 = *(v201 - 8);
  v8 = MEMORY[0x28223BE20](v201, v7);
  v196 = (&v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8, v10);
  v195 = (&v174 - v12);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v194 = &v174 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v187 = &v174 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v191 = &v174 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v203 = &v174 - v23;
  v24 = sub_2150A3A00();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v193 = &v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v200 = &v174 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v190 = &v174 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v183 = &v174 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v189 = &v174 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v204 = &v174 - v43;
  MEMORY[0x28223BE20](v42, v44);
  v46 = &v174 - v45;
  v47 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v47, v48);
  v50 = (&v174 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_214FB6440(a2, v50, type metadata accessor for NoteEditActivityEvent.Parents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v52 = *v50;
  v202 = v24;
  v206 = v25;
  if (EnumCaseMultiPayload == 1)
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B0, &unk_2150C7D90);
    v54 = *(v53 + 48);
    v55 = *(v53 + 64);
    v56 = [v52 note];

    v57 = *&v25->super._cd_rc;
    v58 = v50 + v55;
    v24 = v202;
    v57(v58, v202);
    v57(v50 + v54, v24);
    v52 = v56;
    if (!v56)
    {
      return MEMORY[0x277D84F90];
    }
  }

  v59 = v52;
  ActivityEventObject.init(cloudSyncingObject:)(v59);
  if (!v208)
  {

    return MEMORY[0x277D84F90];
  }

  v180 = v208;
  v181 = a2;
  v182 = a4;
  v61 = v207[0];
  p_cd_objectID = v207[1];
  v62 = objc_allocWithZone(ICTTTextEditGrouper);
  v185 = v59;
  v63 = [v62 initWithNote_];
  v64 = [a1 edits];
  sub_214D55670(0, &qword_27CA42488, off_278192FF0);
  v65 = sub_2150A4ED0();

  v66 = v63;
  v67 = a1;
  v68 = sub_214FB49F8(v65, v66, v67);
  v176 = 0;

  v177 = v66;

  v175 = v67;
  if (v68 >> 62)
  {
    goto LABEL_84;
  }

  for (i = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2150A59D0())
  {
    v70 = v206;
    v71 = MEMORY[0x277D84F90];
    v197 = v68;
    v179 = p_cd_objectID;
    v178 = v61;
    if (i)
    {
      break;
    }

LABEL_16:
    v207[0] = v71;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43140, &qword_2150C5F08);
    sub_214F43BCC(&qword_27CA43148, &qword_27CA43140, &qword_2150C5F08, MEMORY[0x277D83970]);
    sub_214FB63F8(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v68 = v207;
    v80 = sub_2150A4D50();

    v81 = *(v80 + 16);
    v82 = MEMORY[0x277D84F90];
    p_cd_managedObjectContext = v80;
    if (!v81)
    {
      goto LABEL_23;
    }

    v207[0] = MEMORY[0x277D84F90];
    v199 = v185;
    sub_214F86A20(0, v81, 0);
    v61 = 0;
    v83 = v207[0];
    v198 = v80 + ((LOBYTE(v70->_cryptoStrategy) + 32) & ~LOBYTE(v70->_cryptoStrategy));
    p_cd_stateFlags = &v70->super._cd_stateFlags;
    do
    {
      if (v61 >= *(v80 + 16))
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v84 = v206;
      v85 = v204;
      v86 = v83;
      (*&v206->super._cd_stateFlags)(v204, v198 + v206->_decryptedValues * v61, v24);
      v87 = sub_2150A39A0();
      v68 = [(ICCloudSyncingObject *)v199 userIDForReplicaID:v87];

      p_cd_objectID = sub_2150A4AD0();
      v89 = v88;

      v84[1](v85, v24);
      v83 = v86;
      v207[0] = v86;
      v91 = *&v86->super._cd_stateFlags;
      cd_rawData = v86->super._cd_rawData;
      v46 = v91 + 1;
      if (v91 >= cd_rawData >> 1)
      {
        v68 = v207;
        sub_214F86A20((cd_rawData > 1), v91 + 1, 1);
        v83 = v207[0];
      }

      v61 = (v61 + 1);
      *&v83->super._cd_stateFlags = v46;
      v92 = &v83->super.super.isa + 2 * v91;
      v92[4] = p_cd_objectID;
      v92[5] = v89;
      v24 = v202;
      v80 = p_cd_managedObjectContext;
    }

    while (v81 != v61);
    v93 = v83;

    v82 = v93;
    v70 = v206;
LABEL_23:
    v68 = v201;
    v94 = *&v82->super._cd_stateFlags;
    v95 = v190;
    v198 = v94;
    v199 = v82;
    if (v94)
    {
      v46 = 0;
      v204 = &v70->super._cd_stateFlags;
      p_cd_stateFlags = &v70->super._cd_rc;
      p_cd_objectID = &v82->super._cd_objectID;
      v188 = MEMORY[0x277D84F90];
      v96 = &qword_27CA42730;
      v61 = &qword_2150C5F00;
      while (1)
      {
        if (v46 >= *&v82->super._cd_stateFlags)
        {
          goto LABEL_82;
        }

        v97 = *(v80 + 16);
        if (v46 == v97)
        {
          goto LABEL_42;
        }

        if (v46 >= v97)
        {
          goto LABEL_83;
        }

        v98 = *p_cd_objectID;
        v99 = v206;
        v100 = v80 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + v206->_decryptedValues * v46;
        v101 = *(v68 + 48);
        v102 = v191;
        *v191 = *(p_cd_objectID - 1);
        *(v102 + 1) = v98;
        v99[2](&v102[v101], v100, v24);
        v103 = v102;
        v104 = v203;
        v105 = v96;
        sub_214FB6CE4(v103, v203, v96, &qword_2150C5F00);
        v106 = *v104;
        v107 = v104[1];
        v108 = objc_opt_self();

        v109 = [v108 CR_unknown];
        v110 = v189;
        sub_2150A39C0();

        v111 = sub_2150A3990();
        v113 = v112;
        (v99[1])(v110, v24);
        if (v106 == v111 && v107 == v113)
        {
        }

        else
        {
          v114 = sub_2150A6270();

          if ((v114 & 1) == 0)
          {
            v96 = v105;
            v61 = &qword_2150C5F00;
            sub_214FB6CE4(v203, v187, v105, &qword_2150C5F00);
            v115 = v188;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v117 = v115;
            v207[0] = v115;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_214F86E68(0, *(v115 + 16) + 1, 1);
              v117 = v207[0];
            }

            v95 = v190;
            v119 = *(v117 + 16);
            v118 = *(v117 + 24);
            v68 = v201;
            if (v119 >= v118 >> 1)
            {
              sub_214F86E68((v118 > 1), v119 + 1, 1);
              v68 = v201;
              v117 = v207[0];
            }

            *(v117 + 16) = v119 + 1;
            v120 = (*(v186 + 80) + 32) & ~*(v186 + 80);
            v188 = v117;
            sub_214FB6CE4(v187, v117 + v120 + *(v186 + 72) * v119, v96, &qword_2150C5F00);
            v94 = v198;
            v80 = p_cd_managedObjectContext;
            goto LABEL_27;
          }
        }

        v96 = v105;
        v61 = &qword_2150C5F00;
        sub_214F302D4(v203, v105, &qword_2150C5F00);
        v68 = v201;
        v94 = v198;
        v80 = p_cd_managedObjectContext;
        v95 = v190;
LABEL_27:
        ++v46;
        p_cd_objectID += 2;
        v82 = v199;
        if (v94 == v46)
        {
          goto LABEL_42;
        }
      }
    }

    v188 = MEMORY[0x277D84F90];
LABEL_42:

    v121 = *(v188 + 16);
    if (v121)
    {
      v207[0] = MEMORY[0x277D84F90];
      v122 = v188;
      sub_214F86E24(0, v121, 0);
      v123 = v207[0];
      v124 = v122 + ((*(v186 + 80) + 32) & ~*(v186 + 80));
      v125 = *(v186 + 72);
      v191 = &v206->super._cd_stateFlags;
      p_cd_stateFlags = v125;
      v126 = v183;
      p_cd_managedObjectContext = &v206->super._cd_managedObjectContext;
      do
      {
        v204 = v121;
        v127 = v194;
        sub_214F43C14(v124, v194, &qword_27CA42730, &qword_2150C5F00);
        v128 = v195;
        sub_214F43C14(v127, v195, &qword_27CA42730, &qword_2150C5F00);
        v129 = v128[1];
        v130 = *(v201 + 48);
        v131 = v196;
        *v196 = *v128;
        *(v131 + 8) = v129;
        v203 = *p_cd_managedObjectContext;
        (v203)(v131 + v130, v128 + v130, v24);
        (*v191)(v126, v131 + v130, v24);
        sub_214F302D4(v131, &qword_27CA42730, &qword_2150C5F00);
        sub_214F302D4(v127, &qword_27CA42730, &qword_2150C5F00);
        v207[0] = v123;
        v133 = *(v123 + 2);
        v132 = *(v123 + 3);
        if (v133 >= v132 >> 1)
        {
          sub_214F86E24((v132 > 1), v133 + 1, 1);
          v126 = v183;
          v123 = v207[0];
        }

        *(v123 + 2) = v133 + 1;
        (v203)(&v123[((LOBYTE(v206->_cryptoStrategy) + 32) & ~LOBYTE(v206->_cryptoStrategy)) + v206->_decryptedValues * v133], v126, v24);
        v124 += p_cd_stateFlags;
        v121 = (v204 - 1);
      }

      while (v204 != 1);
      p_cd_managedObjectContext = v123;

      v61 = v206;
      v95 = v190;
      v94 = v198;
      v134 = v199;
      v46 = v200;
      if (v198)
      {
LABEL_48:
        v135 = 0;
        p_cd_objectID = v61 + 1;
        v136 = &v134->super._cd_objectID;
        v203 = (v94 - 1);
        v68 = MEMORY[0x277D84F90];
        v204 = &v134->super._cd_objectID;
LABEL_49:
        v206 = v68;
        v137 = &v136[16 * v135];
        v138 = v135;
        while (v138 < *&v134->super._cd_stateFlags)
        {
          v140 = *(v137 - 1);
          v139 = *v137;
          v141 = objc_opt_self();

          v142 = [v141 CR_unknown];
          sub_2150A39C0();

          v143 = sub_2150A3990();
          v68 = v144;
          (*p_cd_objectID)(v95, v24);
          if (v140 == v143 && v139 == v68)
          {
          }

          else
          {
            v145 = sub_2150A6270();

            if ((v145 & 1) == 0)
            {
              v68 = v206;
              v146 = swift_isUniquelyReferenced_nonNull_native();
              v207[0] = v68;
              if ((v146 & 1) == 0)
              {
                sub_214F86A20(0, *(v68 + 16) + 1, 1);
                v68 = v207[0];
              }

              v148 = *(v68 + 16);
              v147 = *(v68 + 24);
              if (v148 >= v147 >> 1)
              {
                sub_214F86A20((v147 > 1), v148 + 1, 1);
                v68 = v207[0];
              }

              v135 = v138 + 1;
              *(v68 + 16) = v148 + 1;
              v149 = v68 + 16 * v148;
              *(v149 + 32) = v140;
              *(v149 + 40) = v139;
              v136 = v204;
              v134 = v199;
              v46 = v200;
              if (v203 != v138)
              {
                goto LABEL_49;
              }

              goto LABEL_66;
            }

            v68 = v139;
          }

          ++v138;

          v137 += 2;
          v134 = v199;
          v46 = v200;
          if (v198 == v138)
          {
            v68 = v206;
            goto LABEL_66;
          }
        }

        goto LABEL_80;
      }
    }

    else
    {

      p_cd_managedObjectContext = MEMORY[0x277D84F90];
      v61 = v206;
      v134 = v199;
      v46 = v200;
      if (v94)
      {
        goto LABEL_48;
      }
    }

    v68 = MEMORY[0x277D84F90];
LABEL_66:

    v150 = p_cd_managedObjectContext;

    v199 = sub_214FB4DDC(v151, v68);

    v152 = *(v150 + 2);
    v206 = v185;
    v204 = v152;
    if (!v152)
    {
      v154 = MEMORY[0x277D84F90];
LABEL_78:
      v165 = v206;

      v166 = sub_214F842F0(v154);

      MEMORY[0x28223BE20](v167, v168);
      v169 = v177;
      *(&v174 - 10) = v166;
      *(&v174 - 9) = v169;
      v170 = v184;
      *(&v174 - 8) = v199;
      *(&v174 - 7) = v170;
      *(&v174 - 6) = v175;
      *(&v174 - 40) = v178 & 1;
      v171 = v180;
      *(&v174 - 4) = v179;
      *(&v174 - 3) = v171;
      v172 = v181;
      *(&v174 - 2) = v182;
      *(&v174 - 1) = v172;
      v173 = sub_214FD2090(sub_214FB6D4C, (&v174 - 12), v197);

      return v173;
    }

    v153 = 0;
    v203 = (v61 + 2);
    v201 = (v61 + 1);
    p_cd_objectID = v61 + 4;
    v154 = MEMORY[0x277D84F90];
    v155 = p_cd_managedObjectContext;
    while (v153 < *(v155 + 2))
    {
      v156 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v157 = v61[9];
      (v61[2])(v46, &v155[v156 + v157 * v153], v24);
      v68 = sub_2150A39A0();
      v158 = [(ICCloudSyncingObject *)v206 trustsTimestampsFromReplicaID:v68];

      if (v158)
      {
        v159 = v46;
        v160 = *p_cd_objectID;
        (*p_cd_objectID)(v193, v159, v24);
        v161 = swift_isUniquelyReferenced_nonNull_native();
        v207[0] = v154;
        if ((v161 & 1) == 0)
        {
          v68 = v207;
          sub_214F86E24(0, *(v154 + 16) + 1, 1);
          v154 = v207[0];
        }

        v163 = *(v154 + 16);
        v162 = *(v154 + 24);
        if (v163 >= v162 >> 1)
        {
          v68 = v207;
          sub_214F86E24((v162 > 1), v163 + 1, 1);
          v154 = v207[0];
        }

        *(v154 + 16) = v163 + 1;
        v164 = v154 + v156 + v163 * v157;
        v24 = v202;
        v160(v164, v193, v202);
        v46 = v200;
      }

      else
      {
        (*v201)(v46, v24);
      }

      ++v153;
      v155 = p_cd_managedObjectContext;
      if (v204 == v153)
      {
        goto LABEL_78;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    ;
  }

  v207[0] = MEMORY[0x277D84F90];
  result = sub_214F86E24(0, i & ~(i >> 63), 0);
  if ((i & 0x8000000000000000) == 0)
  {
    v73 = 0;
    v71 = v207[0];
    v74 = v68;
    p_cd_objectID = (v68 & 0xC000000000000001);
    do
    {
      if (p_cd_objectID)
      {
        v75 = MEMORY[0x216062780](v73, v74);
      }

      else
      {
        v75 = *(v74 + 8 * v73 + 32);
      }

      v76 = v75;
      v77 = [v76 replicaID];
      sub_2150A39C0();

      v207[0] = v71;
      v79 = *(v71 + 16);
      v78 = *(v71 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_214F86E24((v78 > 1), v79 + 1, 1);
        v71 = v207[0];
      }

      ++v73;
      *(v71 + 16) = v79 + 1;
      (v206->super._cd_managedObjectContext)(v71 + ((LOBYTE(v206->_cryptoStrategy) + 32) & ~LOBYTE(v206->_cryptoStrategy)) + v206->_decryptedValues * v79, v46, v24);
      v74 = v197;
    }

    while (i != v73);
    v70 = v206;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t _s11NotesShared21NoteEditActivityEventV6events3for14afterTimestamp06recentJ0SayACGSo12ICAttachmentC_10Foundation4DateVSgANtFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6 - 8, v9);
  v11 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v32 - v13;
  v15 = [a1 attachmentModel];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {

    return MEMORY[0x277D84F90];
  }

  v36 = MEMORY[0x277D84F90];
  v17 = v16;
  v18 = [v16 table];
  v33 = v15;
  v34 = v18;
  sub_214F43C14(a2, v14, &qword_27CA41DD0, &unk_2150C2740);
  sub_214F43C14(a3, v11, &qword_27CA41DD0, &unk_2150C2740);
  v19 = *(v7 + 80);
  v20 = (v19 + 40) & ~v19;
  v21 = a1;
  v22 = (v8 + v19 + v20) & ~v19;
  v23 = swift_allocObject();
  v23[2] = v17;
  v23[3] = v21;
  v24 = v21;
  v23[4] = &v36;
  sub_214FB6CE4(v14, v23 + v20, &qword_27CA41DD0, &unk_2150C2740);
  sub_214FB6CE4(v11, v23 + v22, &qword_27CA41DD0, &unk_2150C2740);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_214FB6C1C;
  *(v25 + 24) = v23;
  aBlock[4] = sub_214FB6D9C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21506A584;
  aBlock[3] = &block_descriptor_28;
  v26 = _Block_copy(aBlock);
  v27 = v33;
  v28 = v24;

  v29 = v34;
  [v34 enumerateColumnsWithBlock_];

  _Block_release(v26);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if ((v29 & 1) == 0)
  {
    v31 = v36;

    return v31;
  }

  __break(1u);
  return result;
}

unint64_t sub_214FB6390()
{
  result = qword_27CA430A8;
  if (!qword_27CA430A8)
  {
    sub_214D55670(255, &qword_27CA42488, off_278192FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA430A8);
  }

  return result;
}

uint64_t sub_214FB63F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_214FB6440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214FB64A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_214FB650C()
{
  result = qword_27CA430C0;
  if (!qword_27CA430C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA430C0);
  }

  return result;
}

void sub_214FB6618(uint64_t a1)
{
  sub_2150A3960();
  if (v1 <= 0x3F)
  {
    sub_214FB66D0(319);
    if (v2 <= 0x3F)
    {
      sub_214FB678C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214FB66D0(uint64_t a1)
{
  if (!qword_27CA430D8)
  {
    type metadata accessor for NoteEditActivityEvent.Parents(255);
    sub_214D55670(255, &qword_27CA430E0, 0x277CCA898);
    sub_214FB63F8(&qword_27CA430E8, type metadata accessor for NoteEditActivityEvent.Parents, &protocol conformance descriptor for NoteEditActivityEvent.Parents);
    v1 = sub_2150A4960();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA430D8);
    }
  }
}

void sub_214FB678C(uint64_t a1)
{
  if (!qword_27CA430F0)
  {
    type metadata accessor for NoteEditActivityEvent.Parents(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA430F8, &qword_2150C5E88);
    sub_214FB63F8(&qword_27CA430E8, type metadata accessor for NoteEditActivityEvent.Parents, &protocol conformance descriptor for NoteEditActivityEvent.Parents);
    v1 = sub_2150A4960();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA430F0);
    }
  }
}

void sub_214FB68A4(uint64_t a1)
{
  sub_214D55670(319, &qword_27CA43100, off_278192E00);
  if (v1 <= 0x3F)
  {
    sub_214FB6928(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_214FB6928(uint64_t a1)
{
  if (!qword_27CA43108)
  {
    sub_214D55670(255, &qword_27CA44A30, off_278192998);
    sub_2150A3A00();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CA43108);
    }
  }
}

void sub_214FB6A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_2150A3A00() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740) - 8);
  v11 = *(v10 + 80);
  sub_214FAFD6C(a1, a2, a3, *(v3 + 16), v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11), v3 + ((*(v10 + 64) + v11 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11)) & ~v11));
}

uint64_t sub_214FB6BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214FB6C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 40) & ~v8;
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  v13 = v3 + ((*(v7 + 64) + v8 + v9) & ~v8);

  return sub_214FAF9B8(a1, a2, a3, v10, v11, v12, v3 + v9, v13);
}

uint64_t sub_214FB6CE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_214FB6DA0(uint64_t a1, uint64_t a2)
{
  *&v46 = (*(a2 + 16))();
  v40 = a1;
  v41 = a2;
  v5 = sub_2150A4FD0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42650, &qword_2150C3E40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_214F86288(sub_214FBB4E4, v39, v5, v6, v7, WitnessTable, MEMORY[0x277D84950], &v42);

  if (!v2)
  {
    v11 = MEMORY[0x277D84F90];
    v37 = *(v9 + 16);
    if (v37)
    {
      v12 = 0;
      v13 = v9 + 32;
      while (v12 < *(v9 + 16))
      {
        sub_214F43C14(v13, &v46, &unk_27CA42650, &qword_2150C3E40);
        v14 = *(&v48 + 1);
        v15 = v49;
        __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
        if ((*(v15 + 16))(v14, v15))
        {
          result = sub_214F302D4(&v46, &unk_27CA42650, &qword_2150C3E40);
        }

        else
        {
          v42 = v46;
          v43 = v47;
          v44 = v48;
          v45 = v49;
          result = swift_isUniquelyReferenced_nonNull_native();
          v50 = v11;
          if ((result & 1) == 0)
          {
            result = sub_214F86D80(0, *(v11 + 16) + 1, 1);
            v11 = v50;
          }

          v17 = *(v11 + 16);
          v16 = *(v11 + 24);
          if (v17 >= v16 >> 1)
          {
            result = sub_214F86D80((v16 > 1), v17 + 1, 1);
            v11 = v50;
          }

          *(v11 + 16) = v17 + 1;
          v18 = v11 + 56 * v17;
          v19 = v42;
          v20 = v43;
          v21 = v44;
          *(v18 + 80) = v45;
          *(v18 + 48) = v20;
          *(v18 + 64) = v21;
          *(v18 + 32) = v19;
        }

        ++v12;
        v13 += 56;
        if (v37 == v12)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:

      v22 = *(v11 + 16);
      if (!v22)
      {

        return 0;
      }

      *&v42 = MEMORY[0x277D84F90];
      v38 = v22;
      result = sub_214F86BFC(0, v22, 0);
      v23 = v38;
      v24 = 0;
      v25 = v42;
      v26 = v11 + 32;
      while (v24 < *(v11 + 16))
      {
        sub_214F43C14(v26, &v46, &unk_27CA42650, &qword_2150C3E40);
        v27 = sub_214FBA6D0(v46, *(&v46 + 1), &v47);
        result = sub_214F302D4(&v46, &unk_27CA42650, &qword_2150C3E40);
        *&v42 = v25;
        v29 = *(v25 + 16);
        v28 = *(v25 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_214F86BFC((v28 > 1), v29 + 1, 1);
          v23 = v38;
          v25 = v42;
        }

        ++v24;
        *(v25 + 16) = v29 + 1;
        *(v25 + 8 * v29 + 32) = v27;
        v26 += 56;
        if (v23 == v24)
        {

          *&v42 = 0;
          *(&v42 + 1) = 0xE000000000000000;
          *&v46 = 0;
          *(&v46 + 1) = 0xE000000000000000;
          sub_2150A49F0();
          MEMORY[0x2160617E0](91, 0xE100000000000000);
          v50 = 1;
          v30 = sub_2150A6100();
          MEMORY[0x2160617E0](v30);

          sub_2150A49F0();
          v42 = v46;
          MEMORY[0x2160617E0](0x73646E616D6D6F43, 0xE800000000000000);
          *&v46 = 0;
          *(&v46 + 1) = 0xE000000000000000;
          sub_2150A49F0();
          MEMORY[0x2160617E0](91, 0xE100000000000000);
          v50 = 0;
          v31 = sub_2150A6100();
          MEMORY[0x2160617E0](v31);

          sub_2150A49F0();
          MEMORY[0x2160617E0](v46, *(&v46 + 1));

          MEMORY[0x2160617E0](10, 0xE100000000000000);
          v32 = sub_215067CAC(v25);

          v33 = *(v32 + 16);
          if (v33)
          {
            v34 = *(*(v32 + 32) + 16);
          }

          else
          {
            v34 = 0;
          }

          v35 = 32;
          while (v33)
          {
            v36 = *(*(v32 + v35) + 16);
            v35 += 8;
            --v33;
            if (v36 != v34)
            {
              __break(1u);
              break;
            }
          }

          v46 = v34;
          *&v47 = v32;
          BYTE8(v47) = 0;
          *&v48 = 64;
          BYTE8(v48) = 0;
          sub_214F963BC();
          MEMORY[0x2160617E0]();

          return v42;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_214FB7320(uint64_t a1, uint64_t a2)
{
  Commands.defaultCommand()(a1, a2, v42);
  if (!v3)
  {
    v6 = v43;
    v7 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v8 = (*(v7 + 32))(v6, v7);
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = v43;
      v13 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v14 = (*(v13 + 32))(v12, v13);
      MEMORY[0x2160617E0](v14);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      v15 = 0xE100000000000000;
      v40 = 10;
    }

    else
    {
      v40 = 0;
      v15 = 0xE000000000000000;
    }

    v41 = v15;
    v16 = v43;
    v17 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v18 = sub_214FB9D10(v16, v17);
    v20 = v19;
    v21 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v39 = v18;
      sub_2150A5B20();
      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 0;
      v22 = sub_2150A6100();
      MEMORY[0x2160617E0](v22);

      sub_2150A49F0();

      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 1;
      v23 = sub_2150A6100();
      MEMORY[0x2160617E0](v23);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      v24 = (*(*(a2 + 8) + 32))(a1);
      MEMORY[0x2160617E0](v24);

      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 0;
      v25 = sub_2150A6100();
      MEMORY[0x2160617E0](v25);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      v26 = v43;
      v27 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v28 = (*(v27 + 24))(v26, v27);
      MEMORY[0x2160617E0](v28);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      MEMORY[0x2160617E0](v40, v41);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      MEMORY[0x2160617E0](v39, v20);
    }

    else
    {

      sub_2150A5B20();
      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 0;
      v29 = sub_2150A6100();
      MEMORY[0x2160617E0](v29);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 1;
      v30 = sub_2150A6100();
      MEMORY[0x2160617E0](v30);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      v31 = (*(*(a2 + 8) + 32))(a1);
      MEMORY[0x2160617E0](v31);

      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 0;
      v32 = sub_2150A6100();
      MEMORY[0x2160617E0](v32);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      v33 = v43;
      v34 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v35 = (*(v34 + 24))(v33, v34);
      MEMORY[0x2160617E0](v35);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      MEMORY[0x2160617E0](v40, v41);

      MEMORY[0x2160617E0](10, 0xE100000000000000);
      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 2;
      v36 = sub_2150A6100();
      MEMORY[0x2160617E0](v36);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      MEMORY[0x2160617E0](0xD00000000000002CLL, 0x80000002150E5890);
      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v45 = 0;
      v37 = sub_2150A6100();
      MEMORY[0x2160617E0](v37);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);
    }

    v2 = 0;
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  return v2;
}

uint64_t sub_214FB7B38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + 16);
  v5 = v4(a1, v3);
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v9 = sub_2150A6100();
    MEMORY[0x2160617E0](v9);

    sub_2150A49F0();
    v10 = (*(v3 + 8))(a1, v3);
    MEMORY[0x2160617E0](v10);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v11 = sub_2150A6100();
    MEMORY[0x2160617E0](v11);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](10, 0xE100000000000000);
    v12 = v4(a1, v3);
  }

  else
  {
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v14 = sub_2150A6100();
    MEMORY[0x2160617E0](v14);

    sub_2150A49F0();
    v15 = (*(v3 + 8))(a1, v3);
    MEMORY[0x2160617E0](v15);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v16 = sub_2150A6100();
    MEMORY[0x2160617E0](v16);

    sub_2150A49F0();
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  MEMORY[0x2160617E0](v12, v13);

  return 0;
}

uint64_t sub_214FB7EB8()
{
  sub_2150A5B20();
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v0 = sub_2150A6100();
  MEMORY[0x2160617E0](v0);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x7861746E7953, 0xE600000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v1 = sub_2150A6100();
  MEMORY[0x2160617E0](v1);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x202020200ALL, 0xE500000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v2 = sub_2150A6100();
  MEMORY[0x2160617E0](v2);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x6F6F747365746F6ELL, 0xEA0000000000206CLL);
  v3 = _sSS11NotesSharedE11typeSummary7forNameS2S_tFZ_0(0x646E616D6D6F63, 0xE700000000000000);
  MEMORY[0x2160617E0](v3);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v4 = sub_2150A6100();
  MEMORY[0x2160617E0](v4);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](547782882, 0xA400000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v5 = sub_2150A6100();
  MEMORY[0x2160617E0](v5);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v6 = sub_2150A6100();
  MEMORY[0x2160617E0](v6);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](2960680, 0xE300000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v7 = sub_2150A6100();
  MEMORY[0x2160617E0](v7);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  v8 = _sSS11NotesSharedE11typeSummary7forNameS2S_tFZ_0(0x6E6F6974706FLL, 0xE600000000000000);
  MEMORY[0x2160617E0](v8);

  MEMORY[0x2160617E0](32, 0xE100000000000000);
  v9 = sub_214FBA4AC(0x65756C6176, 0xE500000000000000);
  MEMORY[0x2160617E0](v9);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v10 = sub_2150A6100();
  MEMORY[0x2160617E0](v10);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](10911970, 0xA300000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v11 = sub_2150A6100();
  MEMORY[0x2160617E0](v11);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x202D202020200ALL, 0xE700000000000000);
  v12 = _sSS11NotesSharedE11typeSummary7forNameS2S_tFZ_0(97, 0xE100000000000000);
  MEMORY[0x2160617E0](v12);

  MEMORY[0x2160617E0](0xD000000000000033, 0x80000002150E56A0);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v13 = sub_2150A6100();
  MEMORY[0x2160617E0](v13);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v14 = sub_2150A6100();
  MEMORY[0x2160617E0](v14);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](40, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v15 = sub_2150A6100();
  MEMORY[0x2160617E0](v15);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v16 = sub_2150A6100();
  MEMORY[0x2160617E0](v16);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](97, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v17 = sub_2150A6100();
  MEMORY[0x2160617E0](v17);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v18 = sub_2150A6100();
  MEMORY[0x2160617E0](v18);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](124, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v19 = sub_2150A6100();
  MEMORY[0x2160617E0](v19);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v20 = sub_2150A6100();
  MEMORY[0x2160617E0](v20);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](98, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v21 = sub_2150A6100();
  MEMORY[0x2160617E0](v21);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v22 = sub_2150A6100();
  MEMORY[0x2160617E0](v22);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v23 = sub_2150A6100();
  MEMORY[0x2160617E0](v23);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x6520736E61656D20, 0xEE00207265687469);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v24 = sub_2150A6100();
  MEMORY[0x2160617E0](v24);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](97, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v25 = sub_2150A6100();
  MEMORY[0x2160617E0](v25);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](544370464, 0xE400000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v26 = sub_2150A6100();
  MEMORY[0x2160617E0](v26);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](98, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v27 = sub_2150A6100();
  MEMORY[0x2160617E0](v27);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x202D202020200ALL, 0xE700000000000000);
  v28 = sub_214FBA4AC(97, 0xE100000000000000);
  MEMORY[0x2160617E0](v28);

  MEMORY[0x2160617E0](0xD00000000000005ALL, 0x80000002150E56E0);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v29 = sub_2150A6100();
  MEMORY[0x2160617E0](v29);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](5457241, 0xE300000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v30 = sub_2150A6100();
  MEMORY[0x2160617E0](v30);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](8236, 0xE200000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v31 = sub_2150A6100();
  MEMORY[0x2160617E0](v31);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](20302, 0xE200000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v32 = sub_2150A6100();
  MEMORY[0x2160617E0](v32);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](8236, 0xE200000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v33 = sub_2150A6100();
  MEMORY[0x2160617E0](v33);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](1702195828, 0xE400000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v34 = sub_2150A6100();
  MEMORY[0x2160617E0](v34);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](8236, 0xE200000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v35 = sub_2150A6100();
  MEMORY[0x2160617E0](v35);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x65736C6166, 0xE500000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v36 = sub_2150A6100();
  MEMORY[0x2160617E0](v36);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](8236, 0xE200000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v37 = sub_2150A6100();
  MEMORY[0x2160617E0](v37);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](49, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v38 = sub_2150A6100();
  MEMORY[0x2160617E0](v38);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0x20726F202CLL, 0xE500000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v39 = sub_2150A6100();
  MEMORY[0x2160617E0](v39);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](48, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v40 = sub_2150A6100();
  MEMORY[0x2160617E0](v40);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0xD000000000000054, 0x80000002150E5740);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v41 = sub_2150A6100();
  MEMORY[0x2160617E0](v41);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](5457241, 0xE300000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v42 = sub_2150A6100();
  MEMORY[0x2160617E0](v42);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](0xD0000000000000E2, 0x80000002150E57A0);
  return 0;
}

uint64_t sub_214FB96A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2150A6540();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v35 + 1) = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  sub_2150A64F0();
  v12 = sub_2150A6530();
  (*(v7 + 8))(v10, v6);
  v25 = v3;
  v24 = a1;
  v26 = a2;
  v13 = sub_214FB99C4(v3, a1, a2);
  v23 = v12;
  sub_2150A5D70();
  sub_2150A5EC0();
  if (*(&v33 + 1))
  {
    v14 = MEMORY[0x277D84F90];
    do
    {
      v29 = v31;
      v30[0] = v32;
      v30[1] = v33;
      (v13)(v34, v31, *(&v31 + 1), v30);
      v18 = v34[0];
      v17 = v34[1];
      v27 = v36;
      v28 = v35;
      sub_214F302D4(&v29, &qword_27CA43188, &qword_2150C5F48);
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_21505F74C(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_21505F74C((v19 > 1), v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        v15 = &v14[6 * v20];
        v15[4] = v18;
        v15[5] = v17;
        v16 = v27;
        *(v15 + 3) = v28;
        *(v15 + 4) = v16;
      }

      sub_2150A5EC0();
    }

    while (*(&v33 + 1));
  }

  (*(v26 + 40))(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43180, &qword_2150CD0D0);
  v21 = sub_2150A4F20();

  return v21;
}

uint64_t (*sub_214FB99C4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_214FBB504;
}

double sub_214FB9AE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a6@<X8>)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_214F50074(a3, &v14);
  sub_214F43C14(v13, v11, &qword_27CA43188, &qword_2150C5F48);
  v7 = v11[0];
  v8 = v11[1];

  sub_214FBB540(v7, v8, v12, v15);

  sub_214F302D4(v13, &qword_27CA43188, &qword_2150C5F48);
  __swift_destroy_boxed_opaque_existential_0(v12);
  v9 = v15[1];
  *a6 = v15[0];
  a6[1] = v9;
  result = *&v16;
  a6[2] = v16;
  return result;
}

uint64_t sub_214FB9BCC(uint64_t a1, uint64_t a2)
{
  v2 = sub_214FB96A4(a1, a2);
  v3 = *(v2 + 16);
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_214F86A20(0, v3, 0);
    v4 = (v2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v12 + 16);
      v7 = *(v12 + 24);

      if (v8 >= v7 >> 1)
      {
        sub_214F86A20((v7 > 1), v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      v9 = v12 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 6;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
  sub_214F86A40();
  v10 = sub_2150A4A20();

  return v10;
}

uint64_t sub_214FB9D10(uint64_t a1, uint64_t a2)
{
  v2 = sub_214FB96A4(a1, a2);
  v3 = *(v2 + 16);
  if (v3)
  {
    v27 = MEMORY[0x277D84F90];
    v4 = v2;
    sub_214F86BFC(0, v3, 0);
    result = v4;
    v6 = 0;
    v7 = v27;
    v8 = (result + 72);
    v26 = result;
    while (v6 < *(result + 16))
    {
      v9 = *(v8 - 5);
      v10 = *(v8 - 4);
      v11 = *(v8 - 3);
      v12 = *(v8 - 2);
      v13 = *(v8 - 1);
      v14 = *v8;

      sub_214FBA078(v9, v10, v11, v12, v13, v14);
      v16 = v15;

      v18 = *(v27 + 16);
      v17 = *(v27 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_214F86BFC((v17 > 1), v18 + 1, 1);
      }

      ++v6;
      *(v27 + 16) = v18 + 1;
      *(v27 + 8 * v18 + 32) = v16;
      v8 += 6;
      result = v26;
      if (v3 == v6)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_9:
    sub_2150A5B20();
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v19 = sub_2150A6100();
    MEMORY[0x2160617E0](v19);

    sub_2150A49F0();

    MEMORY[0x2160617E0](0x746E656D75677241, 0xE900000000000073);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v20 = sub_2150A6100();
    MEMORY[0x2160617E0](v20);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](10, 0xE100000000000000);
    v21 = sub_215067CAC(v7);

    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = *(*(v21 + 32) + 16);
    }

    else
    {
      v23 = 0;
    }

    v24 = 32;
    while (v22)
    {
      v25 = *(*(v21 + v24) + 16);
      v24 += 8;
      --v22;
      if (v25 != v23)
      {
        __break(1u);
        break;
      }
    }

    sub_214F963BC();
    MEMORY[0x2160617E0]();

    return 0;
  }

  return result;
}

double sub_214FBA078(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  MEMORY[0x2160617E0](a1, a2);
  if (a6)
  {
    sub_214D6E6C4();
    v9 = sub_2150A5870();
    v10 = *(v9 + 16);
    if (v10)
    {
      v28 = a4;
      v29 = MEMORY[0x277D84F90];
      sub_214F86A20(0, v10, 0);
      v11 = (v9 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;

        MEMORY[0x2160617E0](v12, v13);

        v15 = *(v29 + 16);
        v14 = *(v29 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_214F86A20((v14 > 1), v15 + 1, 1);
        }

        *(v29 + 16) = v15 + 1;
        v16 = v29 + 16 * v15;
        *(v16 + 32) = 0x2020202020202020;
        *(v16 + 40) = 0xE800000000000000;
        v11 += 2;
        --v10;
      }

      while (v10);

      a4 = v28;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
    sub_214F86A40();
    v21 = sub_2150A4A20();
    v23 = v22;

    if (a4)
    {
      v24 = a4;
    }

    else
    {
      a3 = 0;
      v24 = 0xE000000000000000;
    }

    MEMORY[0x2160617E0](a3, v24);

    MEMORY[0x2160617E0](10, 0xE100000000000000);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v25 = sub_2150A6100();
    MEMORY[0x2160617E0](v25);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](v21, v23);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v26 = sub_2150A6100();
    MEMORY[0x2160617E0](v26);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0, &qword_2150C2720);
    v27 = swift_allocObject();
    *&result = 2;
    *(v27 + 16) = xmmword_2150C29C0;
    *(v27 + 32) = 538976288;
    *(v27 + 40) = 0xE400000000000000;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0xE000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0, &qword_2150C2720);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2150C29C0;
    *(v17 + 32) = 538976288;
    *(v17 + 40) = 0xE400000000000000;
    if (a4)
    {
      v18 = a3;
    }

    else
    {
      v18 = 0;
    }

    v19 = 0xE000000000000000;
    if (a4)
    {
      v19 = a4;
    }

    *(v17 + 48) = v18;
    *(v17 + 56) = v19;
  }

  return result;
}

double AnyCommand.argumentSummary(for:name:includingType:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>)
{
  sub_214FBB0F8(a2, a3, a4, a5, v8);
  v6 = v8[1];
  *a1 = v8[0];
  a1[1] = v6;
  result = *&v9;
  a1[2] = v9;
  return result;
}

uint64_t sub_214FBA4AC(uint64_t a1, uint64_t a2)
{
  v5 = _sSS11NotesSharedE11typeSummary7forNameS2S_tFZ_0(a1, a2);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v2 = sub_2150A6100();
  MEMORY[0x2160617E0](v2);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](63, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v3 = sub_2150A6100();
  MEMORY[0x2160617E0](v3);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  return v5;
}

void *sub_214FBA634@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  *a4 = (*(*(a2 + 8) + 32))(a1);
  a4[1] = v9;
  result = Commands.defaultCommand()(a1, a2, a4 + 2);
  if (v4)
  {

    *a3 = v4;
  }

  return result;
}

uint64_t sub_214FBA6D0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v4 = sub_2150A6100();
  MEMORY[0x2160617E0](v4);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  v5 = sub_2150A4B40();
  MEMORY[0x2160617E0](v5);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v6 = sub_2150A6100();
  MEMORY[0x2160617E0](v6);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](32, 0xE100000000000000);
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v9 = sub_214FB9BCC(v7, v8);
  MEMORY[0x2160617E0](v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0, &qword_2150C2720);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2150C29C0;
  *(v10 + 32) = 538976288;
  *(v10 + 40) = 0xE400000000000000;
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  *(v10 + 48) = (*(v12 + 24))(v11, v12);
  *(v10 + 56) = v13;
  return v10;
}

unint64_t sub_214FBA930(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2150A4BF0();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2150A4D40();
}

uint64_t sub_214FBA9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 24);
  v7 = *(v6() + 16);

  if (v7)
  {
    (v6)(a1, a2);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v8 = sub_2150A6100();
    MEMORY[0x2160617E0](v8);

    sub_2150A49F0();
    MEMORY[0x2160617E0](124, 0xE100000000000000);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v9 = sub_2150A6100();
    MEMORY[0x2160617E0](v9);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v10 = sub_2150A6100();
    MEMORY[0x2160617E0](v10);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
    sub_214F86A40();
    v11 = sub_2150A4A20();
    v22 = v12;
    v23 = v11;

    sub_2150A5B20();
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v13 = sub_2150A6100();
    MEMORY[0x2160617E0](v13);

    sub_2150A49F0();

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v14 = sub_2150A6100();
    MEMORY[0x2160617E0](v14);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](40, 0xE100000000000000);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v15 = sub_2150A6100();
    MEMORY[0x2160617E0](v15);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v16 = sub_2150A6100();
    MEMORY[0x2160617E0](v16);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](v23, v22);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v17 = sub_2150A6100();
    MEMORY[0x2160617E0](v17);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v18 = sub_2150A6100();
    MEMORY[0x2160617E0](v18);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](41, 0xE100000000000000);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v19 = sub_2150A6100();
    MEMORY[0x2160617E0](v19);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    result = (*(a2 + 8))(a1);
  }

  else
  {
    result = (*(a2 + 8))(a1, a2);
  }

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = result;
  a3[3] = v21;
  a3[4] = 0;
  a3[5] = 0;
  return result;
}

uint64_t sub_214FBB0F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  if ((*(v11 + 16))(v10, v11))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    result = 0;
    v16 = 0;
  }

  else
  {
    if (a4)
    {
      v17 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v17);
      v29 = (*(v18 + 72))(a2, a3, v17, v18);
      v30 = v19;
    }

    else
    {
      v29 = 0;
      v30 = 0xE000000000000000;
    }

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v20 = sub_2150A6100();
    MEMORY[0x2160617E0](v20);

    sub_2150A49F0();
    MEMORY[0x2160617E0](11565, 0xE200000000000000);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v21 = sub_2150A6100();
    MEMORY[0x2160617E0](v21);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v22 = sub_2150A6100();
    MEMORY[0x2160617E0](v22);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](a2, a3);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v23 = sub_2150A6100();
    MEMORY[0x2160617E0](v23);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](32, 0xE100000000000000);
    MEMORY[0x2160617E0](v29, v30);

    v12 = 0xE000000000000000;
    v24 = a1[3];
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v24);
    v13 = (*(v25 + 32))(v24, v25);
    v14 = v26;
    v27 = a1[3];
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    result = (*(v28 + 40))(v27, v28);
  }

  *a5 = 0;
  a5[1] = v12;
  a5[2] = v13;
  a5[3] = v14;
  a5[4] = result;
  a5[5] = v16;
  return result;
}

__n128 sub_214FBB540@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v39[0] = a1;
  v39[1] = a2;
  sub_214F50074(a3, v40);
  sub_214F50074(v40, v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43190, &qword_2150C5F50);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43198, &qword_2150C5F58);
    if (swift_dynamicCast())
    {
      sub_214D7A458(&v37, v34);
      if (a2)
      {
        v41.n128_u64[0] = v5;
        v41.n128_u64[1] = a2;
        swift_bridgeObjectRetain_n();
        v9 = sub_2150A4D30();
        v11 = sub_214FBDA8C(v9, v10);
        v13 = v12;

        v14 = sub_214FBA930(1uLL, v11, v13);
        v16 = v15;
        v18 = v17;
        v20 = v19;

        v5 = MEMORY[0x216061730](v14, v16, v18, v20);
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = v35;
      v24 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v25 = (*(v24 + 8))(v23, v24);
      if (v26)
      {
        v27 = v25;
        v28 = v26;

        v5 = v27;
        v22 = v28;
LABEL_10:
        v41.n128_u64[0] = v5;
        v41.n128_u64[1] = v22;
        v29 = sub_2150A4D30();
        sub_214FBB0F8(v34, v29, v30, 1, &v41);
        v32 = v42;
        v33 = v41;
        v7 = v43;
        v8 = v44;

        __swift_destroy_boxed_opaque_existential_0(v34);
        goto LABEL_13;
      }

      if (v22)
      {
        goto LABEL_10;
      }

      __swift_destroy_boxed_opaque_existential_0(v34);
    }

    v7 = 0;
    v8 = 0;
    v32 = 0u;
    v33 = 0u;
    goto LABEL_13;
  }

  sub_214FBA9E0(v37, *(&v37 + 1), &v41);
  v32 = v42;
  v33 = v41;
  v7 = v43;
  v8 = v44;
LABEL_13:
  __swift_destroy_boxed_opaque_existential_0(v38);
  sub_214F302D4(v39, &qword_27CA43188, &qword_2150C5F48);
  result = v33;
  *a4 = v33;
  *(a4 + 16) = v32;
  *(a4 + 32) = v7;
  *(a4 + 40) = v8;
  return result;
}

uint64_t sub_214FBB814@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2150A30D0();
  if (!v4)
  {
    v18 = sub_2150A30E0();
    (*(*(v18 - 8) + 8))(a1, v18);
LABEL_15:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_16;
  }

  v5 = v4;
  sub_2150A4AD0();
  sub_2150A5A70();
  if (!*(v5 + 16) || (v6 = sub_214FB1AC4(v22), (v7 & 1) == 0))
  {

    sub_214FB6A0C(v22);
    v23 = 0u;
    v24 = 0u;
    goto LABEL_13;
  }

  sub_214F50074(*(v5 + 56) + 32 * v6, &v23);
  sub_214FB6A0C(v22);

  if (!*(&v24 + 1))
  {
LABEL_13:
    v17 = sub_2150A30E0();
    (*(*(v17 - 8) + 8))(a1, v17);
LABEL_16:
    result = sub_214FBC238(&v23);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA431B0, &qword_2150C6018);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = sub_2150A30E0();
    result = (*(*(v19 - 8) + 8))(a1, v19);
    goto LABEL_17;
  }

  v8 = v22[0];
  v9 = sub_2150A30D0();
  if (!v9)
  {
    v21 = sub_2150A30E0();
    (*(*(v21 - 8) + 8))(a1, v21);

    goto LABEL_15;
  }

  v10 = v9;
  sub_2150A4AD0();
  sub_2150A5A70();
  if (!*(v10 + 16) || (v11 = sub_214FB1AC4(v22), (v12 & 1) == 0))
  {

    v20 = sub_2150A30E0();
    (*(*(v20 - 8) + 8))(a1, v20);
    sub_214FB6A0C(v22);
    v23 = 0u;
    v24 = 0u;
    goto LABEL_21;
  }

  sub_214F50074(*(v10 + 56) + 32 * v11, &v23);
  v13 = sub_2150A30E0();
  (*(*(v13 - 8) + 8))(a1, v13);
  sub_214FB6A0C(v22);

  if (!*(&v24 + 1))
  {
LABEL_21:

    goto LABEL_16;
  }

  sub_214FBC2A0(0, v14);
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v22[0];
    *a2 = v8;
    a2[1] = v16;
    return result;
  }

LABEL_17:
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t ICCloudConfiguration.waitForConfigurationChange(where:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_2150A30E0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA431A0, &unk_2150C5F68);
  v3[13] = swift_task_alloc();
  v5 = sub_2150A5640();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214FBBD20, 0, 0);
}

uint64_t sub_214FBBD20(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  sub_2150A5660();

  sub_2150A5630();
  v4 = sub_214FBC190();
  v5 = swift_task_alloc();
  v2[17] = v5;
  *v5 = v2;
  v5[1] = sub_214FBBE24;
  v6 = v2[13];
  v7 = v2[14];

  return MEMORY[0x282200308](v6, v7, v4);
}

uint64_t sub_214FBBE24()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_214FBC104;
  }

  else
  {
    v2 = sub_214FBBF38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214FBBF54()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  if (*(v3 + 48))(v1, 1, v2) == 1 || (v4 = v0[12], (*(v3 + 32))(v4, v1, v2), sub_214FBB814(v4, v0 + 2), (v5 = v0[2]) != 0) && (v6 = v0[7], v7 = v0[3], v0[4] = v5, v0[5] = v7, v8 = v6(v0 + 4), sub_214FBC1E8(v5, v7), (v8))
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = sub_214FBC190();
    v12 = swift_task_alloc();
    v0[17] = v12;
    *v12 = v0;
    v12[1] = sub_214FBBE24;
    v13 = v0[13];
    v14 = v0[14];

    return MEMORY[0x282200308](v13, v14, v11);
  }
}

uint64_t sub_214FBC104()
{
  *(v0 + 48) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

unint64_t sub_214FBC190()
{
  result = qword_27CA431A8;
  if (!qword_27CA431A8)
  {
    sub_2150A5640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA431A8);
  }

  return result;
}

void sub_214FBC1E8(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_214FBC238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178, &qword_2150C6010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214FBC2A0(uint64_t a1, uint64_t a2)
{
  result = qword_27CA431B8;
  if (!qword_27CA431B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA431B8);
  }

  return result;
}

id ICTTTextEditGroup.init(edits:latestTimestamp:userID:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v8 = sub_2150A3A00();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v26 - v14;
  sub_214FBC57C(0, v16);
  v17 = sub_2150A4EB0();

  sub_214F5D4A4(a2, v15);
  v18 = sub_2150A3960();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v15, 1, v18) != 1)
  {
    v20 = sub_2150A38F0();
    (*(v19 + 8))(v15, v18);
  }

  if (!a4)
  {
    v21 = [objc_opt_self() CR_unknown];
    sub_2150A39C0();

    sub_2150A3990();
    (*(v26 + 8))(v11, v8);
  }

  v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v23 = sub_2150A4A90();

  v24 = [v22 initWithEdits:v17 latestTimestamp:v20 userID:v23 range:{v27, v28}];

  sub_214F5D43C(a2);
  return v24;
}

unint64_t sub_214FBC57C(uint64_t a1, uint64_t a2)
{
  result = qword_27CA42488;
  if (!qword_27CA42488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA42488);
  }

  return result;
}

uint64_t sub_214FBC5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocError();
  (*(*(a4 - 8) + 32))(v9, a1, a4);

  return MEMORY[0x282200958](a2, v8);
}

uint64_t sub_214FBC65C@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2150A6560();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13[-v10];
  a1(v6);
  swift_storeEnumTagMultiPayload();
  return (*(v8 + 32))(a3, v11, v7);
}

uint64_t ICLegacyContext.fetch<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [v3 managedObjectContext];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2150A56E0();
  }

  else
  {
    type metadata accessor for ICError(0);
    v6 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48, &unk_2150C2B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    *(inited + 32) = sub_2150A4AD0();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v9;
    *(inited + 48) = 0xD00000000000002ALL;
    *(inited + 56) = 0x80000002150E58C0;
    sub_214FA4BBC(inited);
    swift_setDeallocating();
    sub_214F88894(inited + 32);
    sub_214F888FC();
    sub_2150A35B0();
    swift_willThrow();
  }

  return v6;
}

uint64_t ICLegacyContext.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_214FBC988, 0, 0);
}

uint64_t sub_214FBC988()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = swift_allocObject();
  v0[8] = v6;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v5;
  v6[6] = v3;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v2;
  swift_unknownObjectRetain();

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_214FBCAC0;
  v9 = v0[6];
  v10 = v0[2];

  return withUnsafeRethrowingContinuation<A>(_:rethrow:)(v10, sub_214FBD448, v6, sub_214FBD504, v7, v9);
}

uint64_t sub_214FBCAC0()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214FBCC08, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214FBCC08()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_214FBCC74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a1;
  v14[4] = sub_214FBD4D0;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_214F44018;
  v14[3] = &block_descriptor_14;
  v13 = _Block_copy(v14);

  [a2 performBlock_];
  _Block_release(v13);
}

uint64_t sub_214FBCD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = v16 - v13;
  v12();
  (*(v7 + 16))(v10, v14, a5);
  (*(v7 + 32))(*(*(a3 + 64) + 40), v10, a5);
  swift_continuation_throwingResume();
  return (*(v7 + 8))(v14, a5);
}

uint64_t ICLegacyContext.performAndWait<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = a2;
  v6[2] = a3;
  v6[3] = a4;
  return sub_214FBCF6C(sub_214FBD458, v7, sub_214F81934, v6, a3, a4, a5);
}

uint64_t sub_214FBCF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a3;
  v31 = a5;
  v32 = a2;
  v27 = a4;
  v30 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA41DD8, &unk_2150C2A90);
  v9 = sub_2150A6560();
  v10 = sub_2150A57E0();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v27 - v17;
  v19 = *(v9 - 1);
  (*(v19 + 56))(&v27 - v17, 1, 1, v9);
  v20 = swift_allocObject();
  v21 = v32;
  v20[2] = v31;
  v20[3] = a6;
  v20[4] = v18;
  v20[5] = a1;
  v20[6] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_214FBD480;
  *(v22 + 24) = v20;
  aBlock[4] = sub_214F5D418;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214F34100;
  aBlock[3] = &block_descriptor_9;
  v23 = _Block_copy(aBlock);

  [aBlock[7] performBlockAndWait_];
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(v11 + 16))(v15, v18, v10);
  result = (*(v19 + 48))(v15, 1, v9);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v25 = v29;
  sub_214FAAA08(v9, aBlock, v30);
  if (v25)
  {
    v26 = aBlock[0];
    v28(aBlock[0]);
  }

  (*(v11 + 8))(v18, v10);
}

uint64_t sub_214FBD2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA41DD8, &unk_2150C2A90);
  v9 = sub_2150A6560();
  v10 = sub_2150A57E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v16 - v13;
  v19 = a4;
  v20 = a5;
  v21 = a2;
  v22 = a3;
  sub_214FBC65C(sub_214FBD498, v18, &v16 - v13);
  (*(*(v9 - 8) + 56))(v14, 0, 1, v9);
  return (*(v11 + 40))(v17, v14, v10);
}

uint64_t sub_214FBD498(void *a1)
{
  result = (*(v1 + 32))();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t StringProtocol.converting(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x28223BE20](a1, a2);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v6) = *v5;
  v17[15] = *v8;
  v17[14] = v6;
  (*(v9 + 16))(v7, v4);
  v10 = sub_2150A4D30();
  v12 = sub_214FBD648(v10, v11);
  v14 = v13;

  v15 = sub_214FBDA8C(v12, v14);

  return v15;
}

uint64_t sub_214FBD648(uint64_t a1, unint64_t a2)
{
  if (*v2)
  {
    if (*v2 == 1)
    {

      sub_2150238C4(1, a1, a2);

      v5 = sub_2150A57F0();

      sub_214FBA930(1uLL, a1, a2);

      sub_214F99030();
      sub_2150A4C00();

      return v5;
    }

    else
    {
      v6 = objc_allocWithZone(type metadata accessor for CustomReplacementRegularExpression());
      v7 = sub_21506780C(0xD000000000000012, 0x80000002150E59B0, sub_214FBD930, 0, 0);
      v8 = sub_2150A4BC0();

      sub_2150A4D30();
      v9 = sub_2150A4A90();

      v10 = sub_2150A4A90();
      v11 = [v7 stringByReplacingMatchesInString:v9 options:0 range:0 withTemplate:{v8, v10}];

      a1 = sub_2150A4AD0();
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_214FBD930(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  if (*(v2 + 16) != 2)
  {

    return v1;
  }

  result = sub_2150A4D40();
  if (*(v2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    sub_2150A4D40();
    sub_2150A5800();

    v4 = sub_2150A4BC0();
    v5 = sub_2150A5830();
    v6 = __OFADD__(v4, v5);
    result = v4 + v5;
    if (!v6)
    {
      MEMORY[0x216061750](result);
      sub_214F99030();
      sub_2150A4C00();
      sub_2150A4C00();

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_214FBDA8C(uint64_t a1, unint64_t a2)
{
  if (*v2)
  {
    if (*v2 == 1)
    {

      sub_2150238C4(1, a1, a2);

      v5 = sub_2150A5800();

      sub_214FBA930(1uLL, a1, a2);

      sub_214F99030();
      sub_2150A4C00();

      return v5;
    }

    else
    {
      v6 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v7 = sub_215067730(0xD000000000000011, 0x80000002150E58F0, 0);
      v8 = sub_2150A4BC0();

      sub_2150A4D30();
      v9 = sub_2150A4A90();

      v10 = sub_2150A4A90();
      v11 = [v7 stringByReplacingMatchesInString:v9 options:0 range:0 withTemplate:{v8, v10}];

      sub_2150A4AD0();
      v12 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v13 = sub_215067730(0xD000000000000017, 0x80000002150E5990, 0);
      v14 = sub_2150A4BC0();

      sub_2150A4D30();
      v15 = sub_2150A4A90();

      v16 = sub_2150A4A90();
      v17 = [v13 stringByReplacingMatchesInString:v15 options:0 range:0 withTemplate:{v14, v16}];

      sub_2150A4AD0();

      a1 = sub_2150A4B40();
    }
  }

  else
  {
  }

  return a1;
}

uint64_t String.Cases.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_2150A5EE0();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t String.Cases.rawValue.getter()
{
  v1 = 0x6D61437265707075;
  if (*v0 != 1)
  {
    v1 = 0x736143626162656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D61437265776F6CLL;
  }
}

uint64_t sub_214FBDF48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D61437265707075;
  if (v2 == 1)
  {
    v4 = 0xEE00657361436C65;
  }

  else
  {
    v3 = 0x736143626162656BLL;
    v4 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6D61437265776F6CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE00657361436C65;
  }

  v7 = 0x6D61437265707075;
  if (*a2 == 1)
  {
    v8 = 0xEE00657361436C65;
  }

  else
  {
    v7 = 0x736143626162656BLL;
    v8 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6D61437265776F6CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE00657361436C65;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2150A6270();
  }

  return v11 & 1;
}

unint64_t sub_214FBE058()
{
  result = qword_27CA431C0;
  if (!qword_27CA431C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA431C0);
  }

  return result;
}

uint64_t sub_214FBE0AC()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FBE15C(uint64_t a1)
{
  sub_2150A4BB0();
}

uint64_t sub_214FBE1F8()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

void sub_214FBE2B0(uint64_t *a1@<X8>)
{
  v2 = 0xEE00657361436C65;
  v3 = *v1;
  v4 = 0x6D61437265707075;
  v5 = 0xE900000000000065;
  if (v3 == 1)
  {
    v5 = 0xEE00657361436C65;
  }

  else
  {
    v4 = 0x736143626162656BLL;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6D61437265776F6CLL;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

unint64_t sub_214FBE320()
{
  result = qword_27CA431C8;
  if (!qword_27CA431C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA431D0, &qword_2150C60C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA431C8);
  }

  return result;
}

uint64_t NotificationSource.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_214FBE408, 0, 0);
}

uint64_t sub_214FBE408()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_214F4C734;
  v2 = *(v0 + 16);

  return sub_214FBE4A4(v2);
}

uint64_t sub_214FBE4A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *MEMORY[0x277D85000] & *v1;
  return MEMORY[0x2822009F8](sub_214FBE4FC, 0, 0);
}

uint64_t sub_214FBE4FC()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_2150A57E0();
  *v4 = v0;
  v4[1] = sub_214FBE610;
  v6 = v0[2];

  return MEMORY[0x282200830](v6, &unk_2150C6358, v2, sub_214FC0FA0, v3, 0, 0, v5);
}

void sub_214FBE610()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_214FBE74C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214FBE7E4;

  return NotificationSource.Iterator.next()(a1);
}

uint64_t sub_214FBE7E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214FBE8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_214FBE9A8;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v12);
}

uint64_t sub_214FBE9A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id NotificationSource.makeAsyncIterator()@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void sub_214FBEAB0(void **a1@<X8>)
{
  NotificationSource.makeAsyncIterator()(a1);
  v2 = *v1;
}

void sub_214FBEADC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_2150A57E0();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v20 - v9;
  v11 = *(v4 - 8);
  v13 = MEMORY[0x28223BE20](v8, v12);
  v15 = *v2;
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      *v2 = 0;
      *(v2 + 8) = 2;
      v16 = v13;
      (*(v11 + 16))(v10, a1, v4);
      (*(v11 + 56))(v10, 0, 1, v4);
      (*(v6 + 32))(*(*(v15 + 64) + 40), v10, v16);
      swift_continuation_resume();
    }

    else if (!v15)
    {
      sub_214F5B154(v4, v4);
      swift_allocObject();
      v17 = sub_2150A4EF0();
      (*(v11 + 16))(v18, a1, v4);
      sub_214F59104(v17, v4);
      *v2 = v19;
      *(v2 + 8) = 0;
    }
  }

  else
  {
    v21 = *v2;
    (*(v11 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    sub_2150A4FD0();
    sub_2150A4F90();
    *v2 = v21;
    *(v2 + 8) = 0;
  }
}

uint64_t sub_214FBED60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = sub_2150A57E0();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v21 - v10;
  v12 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v9, v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  if (*(v3 + 8))
  {
    if (*(v3 + 8) == 2)
    {
      if (v17)
      {
        (*(v12 + 56))(v11, 1, 1, v5);
        (*(v7 + 32))(*(*(a1 + 64) + 40), v11, v6);
        return swift_continuation_resume();
      }

      else
      {
        *v3 = a1;
        *(v3 + 8) = 1;
      }
    }

    else
    {
      result = sub_2150A5E10();
      __break(1u);
    }
  }

  else
  {
    v22 = a1;
    v24 = v17;
    sub_2150A4FD0();
    swift_getWitnessTable();
    sub_2150A54A0();
    v18 = v24;
    v23 = v24;
    swift_getWitnessTable();
    if (sub_2150A5450())
    {

      v18 = 0;
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    v20 = v22;
    *v3 = v18;
    *(v3 + 8) = v19;
    (*(v12 + 16))(v11, v16, v5);
    (*(v12 + 56))(v11, 0, 1, v5);
    (*(v7 + 32))(*(*(v20 + 64) + 40), v11, v6);
    swift_continuation_resume();
    return (*(v12 + 8))(v16, v5);
  }

  return result;
}

uint64_t sub_214FBF094(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2150A57E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  if (v9 == 1)
  {
    (*(*(v2 - 8) + 56))(v7, v9, 1, v2);
    (*(v4 + 32))(*(*(v8 + 64) + 40), v7, v3);
    result = swift_continuation_resume();
  }

  else
  {
    result = sub_214D5B0F0(*v1, v9);
  }

  *v1 = 1;
  *(v1 + 8) = 2;
  return result;
}

void sub_214FBF1D8()
{
  ObjectType = swift_getObjectType();
  v1 = qword_27CA431E8;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 48) + ((v8 << 9) | (8 * v9)));
    v11 = [objc_opt_self() defaultCenter];
    [v11 _removeObserver_];
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v13.receiver = v0;
      v13.super_class = ObjectType;
      objc_msgSendSuper2(&v13, sel_dealloc);
      return;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_214FBF35C(uint64_t a1)
{
}

uint64_t sub_214FBF3BC(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *MEMORY[0x277D85000] & *a2;
  return MEMORY[0x2822009F8](sub_214FBF414, 0, 0);
}

uint64_t sub_214FBF414()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  sub_2150A57E0();
  *v3 = v0;
  v3[1] = sub_214FBF50C;
  v4 = v0[2];

  return sub_214FBF6EC(v4, 0, 0, sub_214FC0FEC, v2);
}

uint64_t sub_214FBF50C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_214FBF620(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + qword_27CA431F8);
  type metadata accessor for NotificationSource.Observer.State(0, *((*MEMORY[0x277D85000] & *a2) + 0x50), a3, a4);
  v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_214FC0FF4(v4 + v5, v7, v8, v9);
  os_unfair_lock_unlock((v4 + v6));
}

uint64_t sub_214FBF6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_2150A5010();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_214FBF780, v6, v8);
}

uint64_t sub_214FBF780()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_214FBF828;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_214FBF828()
{
  v1 = *(*v0 + 8);

  return v1();
}

void sub_214FBF900(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + qword_27CA431F8);
  type metadata accessor for NotificationSource.Observer.State(0, *((*MEMORY[0x277D85000] & *a1) + 0x50), a3, a4);
  v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_214FC0FA8(v4 + v5, v7, v8, v9);
  os_unfair_lock_unlock((v4 + v6));
}

uint64_t sub_214FBF9F4(uint64_t *a1, void *a2)
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

    v8 = a2;

    v9 = sub_2150A59E0();

    if (v9)
    {

      sub_214D55670(0, &qword_280C24528, 0x277CCABD0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2150A59D0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_214FC0830(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_214FC3A2C(v20 + 1);
    }

    v18 = v8;
    sub_214FC0E00(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_214D55670(0, &qword_280C24528, 0x277CCABD0);
  v11 = sub_2150A5770();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2150783EC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2150A5780();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_214FBFC2C(uint64_t *a1, void *a2)
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

    v8 = a2;

    v9 = sub_2150A59E0();

    if (v9)
    {

      sub_214D55670(0, &qword_280C24888, 0x277CBC5D0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2150A59D0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_214FC0A20(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_214FC3A40(v20 + 1);
    }

    v18 = v8;
    sub_214FC0E00(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_214D55670(0, &qword_280C24888, 0x277CBC5D0);
  v11 = sub_2150A5770();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_21507857C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2150A5780();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_214FBFE64(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_214FA94F4(&qword_280C241B0, MEMORY[0x277CC9600]);
  v34 = a2;
  v12 = sub_2150A49A0();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_214FA94F4(&qword_280C241A8, MEMORY[0x277CC9610]);
      v22 = sub_2150A4A80();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_21507870C(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_214FC011C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2150A64B0();
  sub_2150A4BB0();
  v8 = sub_2150A64E0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2150A6270() & 1) != 0)
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

    sub_2150789B0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_214FC02AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_214FC02F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_214FC0338(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_214FC0350(uint64_t *a1, void *a2)
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

    v8 = a2;

    v9 = sub_2150A59E0();

    if (v9)
    {

      sub_214D55670(0, &qword_27CA44A80, 0x277CBE448);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2150A59D0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_214FC0C10(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_214FC3FE0(v20 + 1);
    }

    v18 = v8;
    sub_214FC0E00(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_214D55670(0, &qword_27CA44A80, 0x277CBE448);
  v11 = sub_2150A5770();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_215078B30(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2150A5780();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_214FC0588(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_2150A64B0();
  sub_2150A4BB0();

  v5 = sub_2150A64E0();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v29 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v28 = ~v6;
    v8 = 0x6C6F686563616C70;
    v30 = v4;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      v10 = v9 == 2 ? 0x726F707075736E75 : v8;
      v11 = v9 == 2 ? 0xEB00000000646574 : 0xEB00000000726564;
      v12 = *(*(v4 + 48) + v7) ? 0x6C61636F6CLL : 0xD000000000000011;
      v13 = *(*(v4 + 48) + v7) ? 0xE500000000000000 : 0x80000002150E1960;
      v14 = *(*(v4 + 48) + v7) <= 1u ? v12 : v10;
      v15 = *(*(v4 + 48) + v7) <= 1u ? v13 : v11;
      v16 = v3 == 2 ? 0x726F707075736E75 : v8;
      v17 = v3 == 2 ? 0xEB00000000646574 : 0xEB00000000726564;
      v18 = v3 ? 0x6C61636F6CLL : 0xD000000000000011;
      v19 = v3 ? 0xE500000000000000 : 0x80000002150E1960;
      v20 = v3 <= 1u ? v18 : v16;
      v21 = v3 <= 1u ? v19 : v17;
      v31 = v7;
      if (v14 == v20 && v15 == v21)
      {
        break;
      }

      v22 = v8;
      v23 = sub_2150A6270();

      if (v23)
      {
        goto LABEL_45;
      }

      v4 = v30;
      v7 = (v31 + 1) & v28;
      v8 = v22;
      if (((*(v29 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    result = 0;
    v3 = *(*(v30 + 48) + v31);
  }

  else
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v26;
    sub_215078CC0(v3, v7, isUniquelyReferenced_nonNull_native);
    *v26 = v32;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_214FC0830(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43208, &unk_2150C6340);
    v2 = sub_2150A5AB0();
    v15 = v2;
    sub_2150A5980();
    if (sub_2150A5A10())
    {
      sub_214D55670(0, &qword_280C24528, 0x277CCABD0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_214FC3A2C(v9 + 1);
        }

        v2 = v15;
        result = sub_2150A5770();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_2150A5A10());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_214FC0A20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43200, &qword_2150C6338);
    v2 = sub_2150A5AB0();
    v15 = v2;
    sub_2150A5980();
    if (sub_2150A5A10())
    {
      sub_214D55670(0, &qword_280C24888, 0x277CBC5D0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_214FC3A40(v9 + 1);
        }

        v2 = v15;
        result = sub_2150A5770();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_2150A5A10());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_214FC0C10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42458, &qword_2150C3A40);
    v2 = sub_2150A5AB0();
    v15 = v2;
    sub_2150A5980();
    if (sub_2150A5A10())
    {
      sub_214D55670(0, &qword_27CA44A80, 0x277CBE448);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_214FC3FE0(v9 + 1);
        }

        v2 = v15;
        result = sub_2150A5770();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_2150A5A10());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_214FC0E00(uint64_t a1, uint64_t a2)
{
  sub_2150A5770();
  result = sub_2150A5960();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_214FC0EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for NotificationSource.Observer.State(0, v5, a3, a4);
  sub_214FBEADC(v6, v7);
}

uint64_t sub_214FC0F00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F53FB0;

  return sub_214FBF3BC(a1, v4);
}

uint64_t sub_214FC0FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for NotificationSource.Observer.State(0, v5, a3, a4);
  return sub_214FBED60(v6, v7);
}

void sub_214FC1048(uint64_t a1, char a2)
{
  v2 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2150A59D0();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v38 = MEMORY[0x277D84F90];
    sub_214F86FAC(0, v3 & ~(v3 >> 63), 0);
    v4 = v38;
    if (v32)
    {
      v5 = sub_2150A5970();
    }

    else
    {
      v5 = sub_2150A5940();
      v6 = *(v2 + 36);
    }

    v35 = v5;
    v36 = v6;
    v37 = v32 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v29 = v2 + 56;
      v28 = v2 + 64;
      v30 = v3;
      while (v7 < v3)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_36;
        }

        v10 = v35;
        v11 = v36;
        v12 = v37;
        v13 = v2;
        sub_214FB4088(v35, v36, v37, v2);
        ICObjectReferences<>.init(attachment:recursivelyIncludeChildren:)(v34, v14, a2 & 1);
        v15 = v34[0];
        v38 = v4;
        v17 = *(v4 + 16);
        v16 = *(v4 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_214F86FAC((v16 > 1), v17 + 1, 1);
          v4 = v38;
        }

        *(v4 + 16) = v17 + 1;
        *(v4 + 8 * v17 + 32) = v15;
        v33 = v4;
        if (v32)
        {
          if (!v12)
          {
            goto LABEL_41;
          }

          v2 = v13;
          if (sub_2150A5990())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v3 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43248, &qword_2150C63D8);
          v8 = sub_2150A5310();
          sub_2150A5A40();
          v8(v34, 0);
        }

        else
        {
          if (v12)
          {
            goto LABEL_42;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v2 = v13;
          v18 = 1 << *(v13 + 32);
          if (v10 >= v18)
          {
            goto LABEL_37;
          }

          v19 = v10 >> 6;
          v20 = *(v29 + 8 * (v10 >> 6));
          if (((v20 >> v10) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v13 + 36) != v11)
          {
            goto LABEL_39;
          }

          v21 = v20 & (-2 << (v10 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_214D5A7C8(v10, v11, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_32;
              }
            }

            sub_214D5A7C8(v10, v11, 0);
          }

LABEL_32:
          v27 = *(v13 + 36);
          v35 = v18;
          v36 = v27;
          v37 = 0;
          v3 = v30;
        }

        v4 = v33;
        if (v7 == v3)
        {
          sub_214D5A7C8(v35, v36, v37);
          return;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}

uint64_t sub_214FC138C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA43210);
  v1 = __swift_project_value_buffer(v0, qword_27CA43210);
  if (qword_27CA414B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CA42840);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ICModernObjectProvider.__allocating_init(context:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

double ICModernObjectProvider.object(for:)@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(v2 + 16);
  v6 = v4 >> 62;
  v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  if (!(v4 >> 62))
  {
    v7 = v4;
  }

  if (v6 > 1)
  {
    v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  v24[0] = 0;
  v9 = [v5 existingObjectWithID:v8 error:v24];
  v23 = v24[0];
  if (v9)
  {
    *(a2 + 24) = sub_214D55670(0, &qword_27CA43228, 0x277CBE438);
    *a2 = v9;

    v10 = v23;
  }

  else
  {
    v12 = v24[0];
    v13 = sub_2150A35D0();

    swift_willThrow();
    if (qword_27CA41658 != -1)
    {
      swift_once();
    }

    v14 = sub_2150A3F30();
    __swift_project_value_buffer(v14, qword_27CA43210);

    v15 = sub_2150A3F10();
    v16 = sub_2150A5560();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v17 = 138412290;
      if (v6)
      {
        v20 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v4;
      }

      v21 = *(v20 + 16);
      *(v17 + 4) = v21;
      *v18 = v21;
      v22 = v21;
      _os_log_impl(&dword_214D51000, v15, v16, "Modern Notes object does not exist in context {identifier: %@}", v17, 0xCu);
      sub_214F302D4(v19, &qword_27CA41DF0, &qword_2150C2940);
      MEMORY[0x216064AF0](v19, -1, -1);
      MEMORY[0x216064AF0](v17, -1, -1);
    }

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t ICModernObjectProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void ICObjectReferences<>.init(object:recursivelyIncludeChildren:forPagesHandoff:)(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, char a4@<W2>)
{
  v5 = a2;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    ICObjectReferences<>.init(account:recursivelyIncludeChildren:)(v8, v5 & 1, &v25);
    v9 = v25;
  }

  else
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      ICObjectReferences<>.init(folder:recursivelyIncludeChildren:)(v10, v5 & 1, &v25);
      v9 = v25;
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        ICObjectReferences<>.init(note:recursivelyIncludeChildren:forPagesHandoff:)(&v25, v11, v5 & 1, a4 & 1);
        v9 = v25;
      }

      else
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          ICObjectReferences<>.init(attachment:recursivelyIncludeChildren:)(&v25, v12, v5 & 1);
          v9 = v25;
        }

        else
        {
          if (qword_27CA41658 != -1)
          {
            swift_once();
          }

          v13 = sub_2150A3F30();
          __swift_project_value_buffer(v13, qword_27CA43210);
          v14 = a1;
          v15 = sub_2150A3F10();
          v16 = sub_2150A5570();

          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v25 = v18;
            *v17 = 136315138;
            v19 = [v14 identifier];
            if (v19)
            {
              v20 = v19;
              v21 = sub_2150A4AD0();
              v23 = v22;
            }

            else
            {
              v23 = 0xA300000000000000;
              v21 = 9732322;
            }

            v24 = sub_214F7723C(v21, v23, &v25);

            *(v17 + 4) = v24;
            _os_log_impl(&dword_214D51000, v15, v16, "Cannot create reference for object {identifier: %s}", v17, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v18);
            MEMORY[0x216064AF0](v18, -1, -1);
            MEMORY[0x216064AF0](v17, -1, -1);
          }

          v9 = 0xF000000000000007;
        }
      }
    }
  }

  *a3 = v9;
}

void ICObjectReferences<>.init(account:recursivelyIncludeChildren:)(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v15 = swift_allocObject();
    v15[2] = [a1 objectID];
    v16 = [a1 name];
    v17 = sub_2150A4AD0();
    v19 = v18;

    v15[3] = v17;
    v15[4] = v19;

    v15[5] = MEMORY[0x277D84F90];
LABEL_17:
    *a3 = v15;
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20, &qword_2150C3010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  *(inited + 32) = [a1 defaultFolder];
  v6 = [a1 visibleSubFolders];
  sub_214D55670(0, &qword_27CA44B90, off_278192CE0);
  v7 = sub_2150A4ED0();

  v26 = inited;
  sub_2150689F8(v7);
  if (!(inited >> 62))
  {
    v8 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_15:

    v10 = MEMORY[0x277D84F90];
LABEL_16:
    v15 = swift_allocObject();
    v15[2] = [a1 objectID];
    v20 = [a1 name];
    v21 = sub_2150A4AD0();
    v23 = v22;

    v15[3] = v21;
    v15[4] = v23;
    v15[5] = v10;
    goto LABEL_17;
  }

  v8 = sub_2150A59D0();
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v26 = MEMORY[0x277D84F90];
  sub_214F86FAC(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v24 = a3;
    v9 = 0;
    v10 = v26;
    do
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x216062780](v9, inited);
      }

      else
      {
        v11 = *(inited + 8 * v9 + 32);
      }

      ICObjectReferences<>.init(folder:recursivelyIncludeChildren:)(v11, 1, &v25);
      v12 = v25;
      v26 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_214F86FAC((v13 > 1), v14 + 1, 1);
        v10 = v26;
      }

      ++v9;
      *(v10 + 16) = v14 + 1;
      *(v10 + 8 * v14 + 32) = v12;
    }

    while (v8 != v9);

    a3 = v24;
    goto LABEL_16;
  }

  __break(1u);
}

void ICObjectReferences<>.init(folder:recursivelyIncludeChildren:)(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v107[1] = *MEMORY[0x277D85DE8];
  v94 = a3;
  if ((a2 & 1) == 0)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = [a1 objectID];
    v14 = [a1 title];
    v15 = sub_2150A4AD0();
    v17 = v16;

    *(v13 + 24) = v15;
    *(v13 + 32) = v17;

    v18 = MEMORY[0x277D84F90];
LABEL_95:
    *(v13 + 40) = v18;
    *v94 = v13 | 0x4000000000000000;
    return;
  }

  v93 = a1;
  v4 = [v93 visibleSubFolders];
  sub_214D55670(0, &qword_27CA44B90, off_278192CE0);
  v5 = sub_2150A4ED0();

  if (v5 >> 62)
  {
    v6 = sub_2150A59D0();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      v106 = MEMORY[0x277D84F90];
      sub_214F86FAC(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
LABEL_102:
        __break(1u);
      }

      v7 = 0;
      v8 = v106;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x216062780](v7, v5);
        }

        else
        {
          v9 = *(v5 + 8 * v7 + 32);
        }

        ICObjectReferences<>.init(folder:recursivelyIncludeChildren:)(v9, 1, v107);
        v10 = v107[0];
        v106 = v8;
        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_214F86FAC((v11 > 1), v12 + 1, 1);
          v8 = v106;
        }

        ++v7;
        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v10;
      }

      while (v6 != v7);
      v91 = v8;

      goto LABEL_16;
    }
  }

  v91 = MEMORY[0x277D84F90];
LABEL_16:
  v19 = [v93 visibleNotes];

  sub_214D55670(0, &qword_27CA43100, off_278192E00);
  v20 = sub_2150A4ED0();

  if (v20 >> 62)
  {
    goto LABEL_100;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v92 = v20;
    v22 = MEMORY[0x277D84F90];
    if (!v21)
    {
LABEL_94:

      v13 = swift_allocObject();
      v86 = v93;
      *(v13 + 16) = [v93 objectID];
      v87 = [v86 title];
      v88 = sub_2150A4AD0();
      v90 = v89;

      *(v13 + 24) = v88;
      *(v13 + 32) = v90;
      v106 = v91;
      sub_215068B08(v22);

      v18 = v106;
      goto LABEL_95;
    }

    v23 = 0;
    v103 = v92 & 0xFFFFFFFFFFFFFF8;
    v104 = v92 & 0xC000000000000001;
    v101 = 0;
    v102 = v92 + 32;
    v24 = &selRef_mergeUnappliedEncryptedRecordsQueue;
    v99 = v21;
    while (1)
    {
      if (v104)
      {
        v25 = MEMORY[0x216062780](v23, v92);
      }

      else
      {
        if (v23 >= *(v103 + 16))
        {
          goto LABEL_99;
        }

        v25 = *(v102 + 8 * v23);
      }

      v26 = v25;
      v27 = __OFADD__(v23++, 1);
      if (v27)
      {
        goto LABEL_98;
      }

      if (([v25 isPasswordProtected] & 1) == 0)
      {
        break;
      }

      v28 = swift_allocObject();
      *(v28 + 16) = [v26 objectID];
      v29 = [v26 title];
      if (v29)
      {
        v30 = v29;
        v31 = sub_2150A4AD0();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      *(v28 + 24) = v31;
      *(v28 + 32) = v33;

      *(v28 + 40) = MEMORY[0x277D84F90];
LABEL_83:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_215060214(0, v22[2] + 1, 1, v22);
      }

      v81 = v22[2];
      v80 = v22[3];
      v20 = v81 + 1;
      if (v81 >= v80 >> 1)
      {
        v22 = sub_215060214((v80 > 1), v81 + 1, 1, v22);
      }

      v22[2] = v20;
      v22[v81 + 4] = v28 | 0x8000000000000000;
      if (v23 == v21)
      {
        goto LABEL_94;
      }
    }

    v34 = [v26 attachments];
    if (!v34)
    {
      v54 = 0;
LABEL_77:
      v28 = swift_allocObject();
      *(v28 + 16) = [v26 objectID];
      v74 = [v26 title];
      if (v74)
      {
        v75 = v74;
        v76 = sub_2150A4AD0();
        v78 = v77;
      }

      else
      {
        v76 = 0;
        v78 = 0;
      }

      *(v28 + 24) = v76;
      *(v28 + 32) = v78;

      v79 = MEMORY[0x277D84F90];
      if (v54)
      {
        v79 = v54;
      }

      *(v28 + 40) = v79;
      v24 = &selRef_mergeUnappliedEncryptedRecordsQueue;
      goto LABEL_83;
    }

    v35 = v34;
    sub_214D55670(0, &qword_27CA44A30, off_278192998);
    sub_214FC4C18(&qword_27CA41E30, &qword_27CA44A30, off_278192998, MEMORY[0x277D85378]);
    v36 = sub_2150A52E0();

    v100 = v22;
    if ((v36 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x277D84FA0];
      v106 = MEMORY[0x277D84FA0];
      sub_2150A5980();
      v39 = sub_2150A5A10();
      if (v39)
      {
        v21 = v99;
        while (1)
        {
          v105 = v39;
          swift_dynamicCast();
          v40 = v107[0];
          if (([v107[0] v24[98]] & 1) == 0 && (objc_msgSend(v40, sel_markedForDeletion) & 1) == 0)
          {
            v41 = [v40 parentAttachment];
            if (!v41)
            {
              v42 = v107[0];
              v43 = *(v38 + 16);
              if (*(v38 + 24) <= v43)
              {
                sub_214FC3FF4(v43 + 1, &qword_27CA42470, &unk_2150C63E0);
              }

              v38 = v106;
              v20 = v42;
              v44 = sub_2150A5770();
              v45 = v38 + 56;
              v46 = -1 << *(v38 + 32);
              v47 = v44 & ~v46;
              v48 = v47 >> 6;
              if (((-1 << v47) & ~*(v38 + 56 + 8 * (v47 >> 6))) != 0)
              {
                v49 = __clz(__rbit64((-1 << v47) & ~*(v38 + 56 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v50 = 0;
                v51 = (63 - v46) >> 6;
                do
                {
                  if (++v48 == v51 && (v50 & 1) != 0)
                  {
                    goto LABEL_97;
                  }

                  v52 = v48 == v51;
                  if (v48 == v51)
                  {
                    v48 = 0;
                  }

                  v50 |= v52;
                  v53 = *(v45 + 8 * v48);
                }

                while (v53 == -1);
                v49 = __clz(__rbit64(~v53)) + (v48 << 6);
              }

              *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
              *(*(v38 + 48) + 8 * v49) = v42;
              ++*(v38 + 16);
              v24 = &selRef_mergeUnappliedEncryptedRecordsQueue;
              goto LABEL_36;
            }
          }

LABEL_36:
          v39 = sub_2150A5A10();
          if (!v39)
          {
            goto LABEL_75;
          }
        }
      }

      v21 = v99;
LABEL_75:

      goto LABEL_76;
    }

    v55 = *(v36 + 32);
    v56 = v55 & 0x3F;
    v57 = (1 << v55) + 63;
    v58 = v57 >> 6;
    v59 = 8 * (v57 >> 6);
    if (v56 <= 0xD)
    {
      goto LABEL_55;
    }

    v82 = 8 * (v57 >> 6);

    if (swift_stdlib_isStackAllocationSafe())
    {

      v59 = v82;
LABEL_55:
      v95 = &v91;
      v96 = v58;
      MEMORY[0x28223BE20](v37, v59);
      v97 = &v91 - ((v60 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v97, v60);
      v98 = 0;
      v61 = 0;
      v20 = v36 + 56;
      v62 = 1 << *(v36 + 32);
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      else
      {
        v63 = -1;
      }

      v64 = v63 & *(v36 + 56);
      v65 = (v62 + 63) >> 6;
      while (v64)
      {
        v66 = __clz(__rbit64(v64));
        v64 &= v64 - 1;
LABEL_67:
        v69 = v66 | (v61 << 6);
        v70 = *(*(v36 + 48) + 8 * v69);
        if (([v70 needsInitialFetchFromCloud] & 1) != 0 || objc_msgSend(v70, sel_markedForDeletion) || (v71 = objc_msgSend(v70, sel_parentAttachment), v70, (v70 = v71) != 0))
        {
        }

        else
        {
          *&v97[(v69 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v69;
          v27 = __OFADD__(v98++, 1);
          if (v27)
          {
            goto LABEL_102;
          }
        }
      }

      v67 = v61;
      while (1)
      {
        v61 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        if (v61 >= v65)
        {
          v38 = sub_214FC46E8(v97, v96, v98, v36);
          v21 = v99;
          goto LABEL_76;
        }

        v68 = *(v20 + 8 * v61);
        ++v67;
        if (v68)
        {
          v66 = __clz(__rbit64(v68));
          v64 = (v68 - 1) & v68;
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      v21 = sub_2150A59D0();
      continue;
    }

    break;
  }

  v83 = swift_slowAlloc();

  v84 = v101;
  v85 = sub_214FC4658(v83, v58, v36, sub_214FC3490);
  v101 = v84;
  if (!v84)
  {
    v38 = v85;
    swift_bridgeObjectRelease_n();
    MEMORY[0x216064AF0](v83, -1, -1);
    v21 = v99;
LABEL_76:
    v72 = v101;
    sub_214FC1048(v38, 1);
    v54 = v73;
    v101 = v72;

    v22 = v100;
    goto LABEL_77;
  }

  swift_bridgeObjectRelease_n();
  MEMORY[0x216064AF0](v83, -1, -1);
  __break(1u);
}

void ICObjectReferences<>.init(note:recursivelyIncludeChildren:forPagesHandoff:)(unint64_t *__return_ptr a1@<X8>, id a2@<X0>, char a3@<W1>, char a4@<W2>)
{
  v64 = *MEMORY[0x277D85DE8];
  if ((a3 & 1) == 0 || [a2 isPasswordProtected] && (a4 & 1) == 0)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = [a2 objectID];
    v8 = [a2 title];
    if (v8)
    {
      v9 = v8;
      v10 = sub_2150A4AD0();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    *(v7 + 24) = v10;
    *(v7 + 32) = v12;

    v13 = MEMORY[0x277D84F90];
    goto LABEL_59;
  }

  v14 = [a2 attachments];
  if (!v14)
  {
    v34 = 0;
    goto LABEL_54;
  }

  v15 = v14;
  sub_214D55670(0, &qword_27CA44A30, off_278192998);
  sub_214FC4C18(&qword_27CA41E30, &qword_27CA44A30, off_278192998, MEMORY[0x277D85378]);
  v16 = sub_2150A52E0();

  if ((v16 & 0xC000000000000001) == 0)
  {
    v35 = *(v16 + 32);
    v58 = ((1 << v35) + 63) >> 6;
    v24 = 8 * v58;
    if ((v35 & 0x3Fu) <= 0xD)
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  v60 = a1;
  v18 = MEMORY[0x277D84FA0];
  v63 = MEMORY[0x277D84FA0];
  sub_2150A5980();
  v19 = sub_2150A5A10();
  if (!v19)
  {
LABEL_32:

    a1 = v60;
    goto LABEL_53;
  }

  a1 = &selRef_initWithUserQueryString_userQueryContext_;
  while (1)
  {
    v61 = v19;
    swift_dynamicCast();
    if ([v62[0] needsInitialFetchFromCloud] & 1) != 0 || (objc_msgSend(v62[0], sel_markedForDeletion))
    {
      goto LABEL_16;
    }

    v20 = [v62[0] parentAttachment];
    if (!v20)
    {
      break;
    }

LABEL_16:
LABEL_17:
    v19 = sub_2150A5A10();
    if (!v19)
    {
      goto LABEL_32;
    }
  }

  v21 = v62[0];
  v22 = v18[2];
  if (v18[3] <= v22)
  {
    sub_214FC3FF4(v22 + 1, &qword_27CA42470, &unk_2150C63E0);
  }

  v18 = v63;
  v16 = v62[0];
  v23 = sub_2150A5770();
  v25 = v63 + 56;
  v26 = -1 << *(v63 + 32);
  v27 = v23 & ~v26;
  v28 = v27 >> 6;
  if (((-1 << v27) & ~*(v63 + 56 + 8 * (v27 >> 6))) != 0)
  {
    v29 = __clz(__rbit64((-1 << v27) & ~*(v63 + 56 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
    *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    *(v18[6] + 8 * v29) = v21;
    ++v18[2];
    goto LABEL_17;
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v25 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_31;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_62:
    v55 = v24;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v24 = v55;
LABEL_35:
    v57[1] = v57;
    MEMORY[0x28223BE20](v17, v24);
    v59 = v57 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v59, v36);
    v60 = 0;
    v37 = 0;
    v38 = 1 << *(v16 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v16 + 56);
    v41 = (v38 + 63) >> 6;
    while (v40)
    {
      v42 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
LABEL_46:
      v45 = v42 | (v37 << 6);
      v46 = *(*(v16 + 48) + 8 * v45);
      if ([v46 needsInitialFetchFromCloud] || (objc_msgSend(v46, sel_markedForDeletion) & 1) != 0 || (v47 = objc_msgSend(v46, sel_parentAttachment), v46, (v46 = v47) != 0))
      {
      }

      else
      {
        *&v59[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
        v48 = __OFADD__(v60, 1);
        v60 = (v60 + 1);
        if (v48)
        {
          __break(1u);
LABEL_52:
          v18 = sub_214FC46E8(v59, v58, v60, v16);
          goto LABEL_53;
        }
      }
    }

    v43 = v37;
    while (1)
    {
      v37 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v37 >= v41)
      {
        goto LABEL_52;
      }

      v44 = *(v16 + 56 + 8 * v37);
      ++v43;
      if (v44)
      {
        v42 = __clz(__rbit64(v44));
        v40 = (v44 - 1) & v44;
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  v56 = swift_slowAlloc();
  v18 = sub_214FC4658(v56, v58, v16, sub_214FC3490);

  MEMORY[0x216064AF0](v56, -1, -1);
LABEL_53:
  sub_214FC1048(v18, 1);
  v34 = v49;

LABEL_54:
  v7 = swift_allocObject();
  *(v7 + 16) = [a2 objectID];
  v50 = [a2 title];
  if (v50)
  {
    v51 = v50;
    v52 = sub_2150A4AD0();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  *(v7 + 24) = v52;
  *(v7 + 32) = v54;

  v13 = MEMORY[0x277D84F90];
  if (v34)
  {
    v13 = v34;
  }

LABEL_59:
  *(v7 + 40) = v13;
  *a1 = v7 | 0x8000000000000000;
}

void ICObjectReferences<>.init(attachment:recursivelyIncludeChildren:)(unint64_t *__return_ptr a1@<X8>, id a2@<X0>, char a3@<W1>)
{
  v61 = *MEMORY[0x277D85DE8];
  if ((a3 & 1) == 0)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = [a2 objectID];
    v25 = [a2 title];
    if (v25)
    {
      v26 = v25;
      v27 = sub_2150A4AD0();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    *(v24 + 24) = v27;
    *(v24 + 32) = v29;
    *(v24 + 40) = 0;

    *(v24 + 48) = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v5 = [a2 subAttachments];
  if (!v5)
  {
    v30 = 0;
    goto LABEL_48;
  }

  v6 = v5;
  sub_214D55670(0, &qword_27CA44A30, off_278192998);
  sub_214FC4C18(&qword_27CA41E30, &qword_27CA44A30, off_278192998, MEMORY[0x277D85378]);
  v7 = sub_2150A52E0();

  v57 = a1;
  if ((v7 & 0xC000000000000001) == 0)
  {
    v31 = *(v7 + 32);
    v54 = ((1 << v31) + 63) >> 6;
    v14 = 8 * v54;
    if ((v31 & 0x3Fu) <= 0xD)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

  v9 = MEMORY[0x277D84FA0];
  v60 = MEMORY[0x277D84FA0];
  sub_2150A5980();
  v10 = sub_2150A5A10();
  if (!v10)
  {
LABEL_25:

    goto LABEL_47;
  }

  while (1)
  {
    v58 = v10;
    swift_dynamicCast();
    if (([v59[0] needsInitialFetchFromCloud] & 1) == 0 && (objc_msgSend(v59[0], sel_markedForDeletion) & 1) == 0)
    {
      break;
    }

LABEL_7:
    v10 = sub_2150A5A10();
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  v11 = v59[0];
  v12 = v9[2];
  if (v9[3] <= v12)
  {
    sub_214FC3FF4(v12 + 1, &qword_27CA42470, &unk_2150C63E0);
  }

  v9 = v60;
  v7 = v59[0];
  v13 = sub_2150A5770();
  v15 = v60 + 56;
  v16 = -1 << *(v60 + 32);
  v17 = v13 & ~v16;
  v18 = v17 >> 6;
  if (((-1 << v17) & ~*(v60 + 56 + 8 * (v17 >> 6))) != 0)
  {
    v19 = __clz(__rbit64((-1 << v17) & ~*(v60 + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(v9[6] + 8 * v19) = v11;
    ++v9[2];
    goto LABEL_7;
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v15 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_22;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v14 = v51;
LABEL_30:
    v53 = &v53;
    MEMORY[0x28223BE20](v8, v14);
    v55 = &v53 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v55, v32);
    v56 = 0;
    v33 = 0;
    v34 = 1 << *(v7 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v7 + 56);
    v37 = (v34 + 63) >> 6;
    while (v36)
    {
      v38 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
LABEL_41:
      v41 = v38 | (v33 << 6);
      v42 = *(*(v7 + 48) + 8 * v41);
      if ([v42 needsInitialFetchFromCloud])
      {
      }

      else
      {
        v43 = [v42 markedForDeletion];

        if ((v43 & 1) == 0)
        {
          *&v55[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
          if (__OFADD__(v56++, 1))
          {
            __break(1u);
LABEL_46:
            v9 = sub_214FC46E8(v55, v54, v56, v7);
            goto LABEL_47;
          }
        }
      }
    }

    v39 = v33;
    while (1)
    {
      v33 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v33 >= v37)
      {
        goto LABEL_46;
      }

      v40 = *(v7 + 56 + 8 * v33);
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v36 = (v40 - 1) & v40;
        goto LABEL_41;
      }
    }
  }

  v52 = swift_slowAlloc();
  v9 = sub_214FC4658(v52, v54, v7, sub_214FC350C);

  MEMORY[0x216064AF0](v52, -1, -1);
LABEL_47:
  v30 = sub_214FC1048(v9);

  a1 = v57;
LABEL_48:
  v24 = swift_allocObject();
  *(v24 + 16) = [a2 objectID];
  v45 = [a2 title];
  if (v45)
  {
    v46 = v45;
    v47 = sub_2150A4AD0();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  *(v24 + 24) = v47;
  *(v24 + 32) = v49;

  v50 = MEMORY[0x277D84F90];
  if (v30)
  {
    v50 = v30;
  }

  *(v24 + 48) = v50;
  *(v24 + 40) = 0;
LABEL_54:
  *a1 = v24 | 0xC000000000000000;
}

uint64_t sub_214FC3490(id *a1)
{
  v1 = *a1;
  if ([*a1 needsInitialFetchFromCloud] & 1) != 0 || (objc_msgSend(v1, sel_markedForDeletion))
  {
    return 0;
  }

  v2 = [v1 parentAttachment];
  if (v2)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_214FC350C(id *a1)
{
  v1 = *a1;
  if ([*a1 needsInitialFetchFromCloud])
  {
    return 0;
  }

  else
  {
    return [v1 markedForDeletion] ^ 1;
  }
}

void sub_214FC35E0(unint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v32 = a1;
  ICModernObjectProvider.object(for:)(&v32, v31);
  if (!v31[3])
  {
    sub_214F302D4(v31, &qword_27CA42178, &qword_2150C6010);
    goto LABEL_6;
  }

  sub_214D55670(0, &qword_27CA43240, off_278192BC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    if (qword_27CA41658 != -1)
    {
      swift_once();
    }

    v6 = sub_2150A3F30();
    __swift_project_value_buffer(v6, qword_27CA43210);

    v7 = sub_2150A3F10();
    v8 = sub_2150A5560();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 138412290;
      if (a1 >> 62)
      {
        v12 = a1 & 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = a1;
      }

      v13 = *(v12 + 16);
      *(v9 + 4) = v13;
      *v10 = v13;
      v14 = v13;
      _os_log_impl(&dword_214D51000, v7, v8, "Cannot get object {identifier: %@}", v9, 0xCu);
      sub_214F302D4(v11, &qword_27CA41DF0, &qword_2150C2940);
      MEMORY[0x216064AF0](v11, -1, -1);
      MEMORY[0x216064AF0](v9, -1, -1);
    }

    *a2 = a1;
    goto LABEL_14;
  }

  v4 = v32;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      ICObjectReferences<>.init(folder:recursivelyIncludeChildren:)(v15, 1, v31);
      goto LABEL_21;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      ICObjectReferences<>.init(note:recursivelyIncludeChildren:forPagesHandoff:)(v31, v16, 1, 0);
      goto LABEL_21;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      ICObjectReferences<>.init(attachment:recursivelyIncludeChildren:)(v31, v17, 1);
      goto LABEL_21;
    }

    if (qword_27CA41658 != -1)
    {
      swift_once();
    }

    v18 = sub_2150A3F30();
    __swift_project_value_buffer(v18, qword_27CA43210);
    v19 = v4;
    v20 = sub_2150A3F10();
    v21 = sub_2150A5570();

    if (os_log_type_enabled(v20, v21))
    {
      v30 = v21;
      v22 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31[0] = v29;
      *v22 = 136315138;
      v23 = [v19 identifier];
      if (v23)
      {
        v24 = v23;
        v25 = sub_2150A4AD0();
        v27 = v26;
      }

      else
      {
        v27 = 0xA300000000000000;
        v25 = 9732322;
      }

      v28 = sub_214F7723C(v25, v27, v31);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_214D51000, v20, v30, "Cannot create reference for object {identifier: %s}", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x216064AF0](v29, -1, -1);
      MEMORY[0x216064AF0](v22, -1, -1);
    }

    *a2 = a1;
LABEL_14:

    return;
  }

  ICObjectReferences<>.init(account:recursivelyIncludeChildren:)(v5, 1, v31);
LABEL_21:
  *a2 = v31[0];
}

uint64_t sub_214FC3A54(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2150A3A00();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43238, &qword_2150C63D0);
  result = sub_2150A5AA0();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_214FC4CF0();
      result = sub_2150A49A0();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_214FC3D80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42468, &unk_2150C63F0);
  result = sub_2150A5AA0();
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
      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
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

uint64_t sub_214FC3FF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2150A5AA0();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_2150A5770();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_214FC4214(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42420, &qword_2150C3A28);
  result = sub_2150A5AA0();
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
      sub_2150A64B0();
      sub_2150A4BB0();

      result = sub_2150A64E0();
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

void sub_214FC44EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_214FC46E8(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_214FC4658(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_214FC44EC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_214FC46E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42470, &unk_2150C63E0);
  result = sub_2150A5AC0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_2150A5770();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_214FC48DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42420, &qword_2150C3A28);
  result = sub_2150A5AC0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_2150A64B0();
    sub_2150A4BB0();

    result = sub_2150A64E0();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214FC4C18(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_214D55670(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214FC4CF0()
{
  result = qword_280C241B0;
  if (!qword_280C241B0)
  {
    sub_2150A3A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C241B0);
  }

  return result;
}

uint64_t sub_214FC4D60()
{
  v1 = *(v0 + 48);
  (*(v0 + 24))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t withCheckedRethrowingContinuation<A>(_:rethrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a5;
  v6[2] = a1;
  v11 = swift_task_alloc();
  v6[5] = v11;
  *v11 = v6;
  v11[1] = sub_214FC4EF0;

  return sub_214FC5024(a1, 0, 0, 0xD00000000000002DLL, 0x80000002150E5AB0, a2, a3, a6);
}

uint64_t sub_214FC4EF0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214FC6E7C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214FC5024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_214F557A8;

  return MEMORY[0x2822008A0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_214FC5110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214F53FB0;

  return _TaskGroupProtocol.waitForResults()(a1, a2, a3);
}

uint64_t _TaskGroupProtocol.waitForResults()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = swift_getAssociatedTypeWitness();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214FC5270, 0, 0);
}

uint64_t sub_214FC5270()
{
  v2 = v0[3];
  v1 = v0[4];
  swift_getAssociatedConformanceWitness();
  sub_2150A54B0();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = *(v1 + 16);
  *v4 = v0;
  v4[1] = sub_214FC5380;
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[2];
  v9 = v0[3];

  return MEMORY[0x282200540](v8, v6, &unk_2150C6430, v3, v9, v7, v5);
}

uint64_t sub_214FC5380()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214FC54C8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214FC54C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214FC5534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[6] = AssociatedTypeWitness;
  v4[7] = *(AssociatedTypeWitness - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214FC560C, 0, 0);
}

uint64_t sub_214FC560C()
{
  (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2150A5490();

  v1 = v0[1];

  return v1();
}

uint64_t sub_214FC56F8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_214F557A8;

  return sub_214FC5534(a1, a2, v7, v6);
}

uint64_t sub_214FC57BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214F557A8;

  return _TaskGroupProtocol.waitForResults()(a1, a2, a3);
}

uint64_t sub_214FC586C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214FBE7E4;

  return MEMORY[0x2822002D8](a1, a2);
}

uint64_t sub_214FC5918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_214FC6E80;

  return MEMORY[0x2822002D0](a1, a2, a3, a5);
}

uint64_t ThrowingTaskGroup.waitForAll(cancelOnFirstError:)(char a1, void *a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 168) = a1;
  *(v3 + 32) = a2[2];
  v5 = sub_2150A57E0();
  *(v3 + 40) = v5;
  *(v3 + 48) = *(v5 - 8);
  *(v3 + 56) = swift_task_alloc();
  v6 = a2[3];
  *(v3 + 64) = v6;
  *(v3 + 72) = a2[4];
  v7 = sub_2150A5200();
  *(v3 + 80) = v7;
  *(v3 + 88) = *(v7 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214FC5BA0, 0, 0);
}

uint64_t sub_214FC5BA0()
{
  if (*(v0 + 168) == 1)
  {
    *(v0 + 144) = **(v0 + 24);
    sub_2150A51B0();
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *v1 = v0;
    v1[1] = sub_214FC5CF4;
    v2 = *(v0 + 128);
    v3 = *(v0 + 80);
    v4 = *(v0 + 56);

    return MEMORY[0x2822004E8](v4, 0, 0, v3, v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    v5[1] = sub_214FC5FA8;
    v6 = *(v0 + 16);

    return sub_214FC634C(0, 0, v6);
  }
}

uint64_t sub_214FC5CF4()
{

  if (v0)
  {
    v1 = sub_214FC615C;
  }

  else
  {
    v1 = sub_214FC5E04;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_214FC5E04()
{
  v1 = v0[7];
  if ((*(*(v0[4] - 8) + 48))(v1, 1) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    (*(v0[6] + 8))(v1, v0[5]);
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_214FC5CF4;
    v5 = v0[16];
    v6 = v0[10];
    v7 = v0[7];

    return MEMORY[0x2822004E8](v7, 0, 0, v6, v5);
  }
}

uint64_t sub_214FC5FA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214FC615C()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[8];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v7 = *(v5 + 32);
  v7(v1, v2, v6);
  v7(v3, v1, v6);
  sub_2150A5210();
  (*(v5 + 16))(v4, v3, v6);
  v8 = sub_2150A6230();
  v9 = v0[14];
  if (v8)
  {
    (*(v0[13] + 8))(v0[14], v0[8]);
  }

  else
  {
    v10 = v0[8];
    swift_allocError();
    v7(v11, v9, v10);
  }

  v12 = v0[15];
  v13 = v0[13];
  v14 = v0[8];
  swift_willThrow();
  (*(v13 + 8))(v12, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_214FC634C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a3 + 16);
  v6 = sub_2150A57E0();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = sub_2150A5010();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[10] = v7;
  v4[11] = v9;

  return MEMORY[0x2822009F8](sub_214FC6454, v7, v9);
}

uint64_t sub_214FC6454()
{
  v1 = *(v0 + 32);
  *(v0 + 96) = **(v0 + 40);
  *(v0 + 104) = *(v1 + 24);
  *(v0 + 112) = *(v1 + 32);
  if (sub_2150A51E0())
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 120) = 0;
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_214FC656C;
    v5 = *(v0 + 72);
    v6 = *(v0 + 32);
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);

    return sub_214FC6DB8(v5, v7, v8, v6);
  }
}

uint64_t sub_214FC656C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_214FC66A8;
  }

  else
  {
    v5 = sub_214FC67DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_214FC66A8()
{
  v1 = v0[17];
  if (v0[15])
  {

    v1 = v0[15];
  }

  if (sub_2150A51E0())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[15] = v1;
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_214FC656C;
    v5 = v0[9];
    v6 = v0[4];
    v7 = v0[2];
    v8 = v0[3];

    return sub_214FC6DB8(v5, v7, v8, v6);
  }
}

uint64_t sub_214FC67DC()
{
  v1 = v0[9];
  v2 = (*(*(v0[6] - 8) + 48))(v1, 1);
  (*(v0[8] + 8))(v1, v0[7]);
  if (v2 == 1)
  {
    v3 = v0[15];
    if (sub_2150A51E0())
    {
      if (v3)
      {
        swift_willThrow();
      }

      v4 = v0[1];

      return v4();
    }

    v0[15] = v3;
  }

  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_214FC656C;
  v7 = v0[9];
  v8 = v0[4];
  v9 = v0[2];
  v10 = v0[3];

  return sub_214FC6DB8(v7, v9, v10, v8);
}

uint64_t sub_214FC69AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214FC69F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F557A8;

  return MEMORY[0x2822004D8](a1, a2);
}

uint64_t sub_214FC6AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_214FC6B6C;

  return MEMORY[0x2822004D0](a1, a2, a3, a5);
}

uint64_t sub_214FC6B6C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t dispatch thunk of _TaskGroupProtocol.waitForResults()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214F53FB0;

  return v9(a1, a2, a3);
}

uint64_t sub_214FC6DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_214F557A8;

  return MEMORY[0x2822004D0](a1, a2, a3, a4);
}

uint64_t sub_214FC6E88()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA43258);
  v1 = __swift_project_value_buffer(v0, qword_27CA43258);
  if (qword_27CA415E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CA42B58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id ICQueryResultsController.query.getter()
{
  v1 = OBJC_IVAR___ICQueryResultsControllerObjC_query;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ICQueryResultsController.query.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ICQueryResultsControllerObjC_query;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ICQueryResultsController.fetchRequest.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_2150A4A90();
  v2 = [v0 initWithEntityName_];

  [v2 setResultType_];
  swift_beginAccess();
  swift_beginAccess();
  v3 = ICQueryType.predicate.getter();
  [v2 setPredicate_];

  return v2;
}

id ICQueryResultsController.__allocating_init(managedObjectContext:query:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___ICQueryResultsControllerObjC_managedObjectContext] = a1;
  *&v5[OBJC_IVAR___ICQueryResultsControllerObjC_query] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ICQueryResultsController.init(managedObjectContext:query:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___ICQueryResultsControllerObjC_managedObjectContext] = a1;
  *&v2[OBJC_IVAR___ICQueryResultsControllerObjC_query] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t ICQueryResultsController.performFetch()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_2150A4A90();
  v2 = [v0 initWithEntityName_];

  [v2 setResultType_];
  swift_beginAccess();
  swift_beginAccess();
  v3 = ICQueryType.predicate.getter();
  [v2 setPredicate_];

  sub_214D55670(0, &qword_27CA44A80, 0x277CBE448);
  v4 = sub_2150A56E0();

  v5 = sub_214F84524(v4);

  return v5;
}

id ICQueryResultsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICQueryResultsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_214FC7854()
{
  result = qword_27CA42510[0];
  if (!qword_27CA42510[0])
  {
    sub_214D55670(255, &qword_27CA44A80, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA42510);
  }

  return result;
}

NotesShared::FolderID __swiftcall FolderID.init(contextType:managedIdentifier:)(NotesShared::ManagedEntityContextType_optional contextType, Swift::String managedIdentifier)
{
  *v2 = *contextType.value;
  *(v2 + 8) = managedIdentifier;
  result.managedIdentifier = managedIdentifier;
  result.contextType = contextType;
  return result;
}

uint64_t FolderID.managedIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FolderID.managedIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t FolderID.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2150A3750();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21 - v11;
  v13 = objc_opt_self();
  v14 = sub_2150A36B0();
  v15 = [v13 objectIDURIRepresentationForFolderMentionedInLegacyShowFolderURL_];

  if (v15)
  {
    sub_2150A36F0();

    (*(v5 + 32))(v12, v9, v4);
    v15 = sub_2150A3650();
    v17 = v16;
    v18 = *(v5 + 8);
    v18(a1, v4);
    result = (v18)(v12, v4);
    v20 = 2;
  }

  else
  {
    result = (*(v5 + 8))(a1, v4);
    v20 = 0;
    v17 = 0;
  }

  *a2 = v20;
  a2[1] = v15;
  a2[2] = v17;
  return result;
}

uint64_t FolderID.hash(into:)(uint64_t a1)
{
  if (*v1 == 2)
  {
    sub_2150A64D0();
  }

  else
  {
    sub_2150A64D0();
    sub_2150A4BB0();
  }

  return sub_2150A4BB0();
}

uint64_t FolderID.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  sub_2150A64D0();
  if (v1 != 2)
  {
    sub_2150A4BB0();
  }

  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214FC7CD8()
{
  v1 = *(v0 + 8);

  return v1;
}

_BYTE *sub_214FC7D08@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_214FC7D3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  sub_214F3005C(*v0, *(v0 + 1), *(v0 + 2), &v9 - v3);
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_214F5C454(v4);
    return 0;
  }

  else
  {
    v8 = sub_2150A3650();
    (*(v6 + 8))(v4, v5);
    return v8;
  }
}

uint64_t sub_214FC7E70(uint64_t a1)
{
  if (*v1 == 2)
  {
    sub_2150A64D0();
  }

  else
  {
    sub_2150A64D0();
    sub_2150A4BB0();
  }

  return sub_2150A4BB0();
}

uint64_t sub_214FC7F24()
{
  v1 = *v0;
  sub_2150A64B0();
  sub_2150A64D0();
  if (v1 != 2)
  {
    sub_2150A4BB0();
  }

  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t _s11NotesShared8FolderIDV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  if (v2 == 2)
  {
    if (v5 == 2)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (v5 == 2)
  {
    return 0;
  }

  if (v2)
  {
    v9 = 1819112552;
  }

  else
  {
    v9 = 0x6E7265646F6DLL;
  }

  if (v2)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5)
  {
    v11 = 1819112552;
  }

  else
  {
    v11 = 0x6E7265646F6DLL;
  }

  if (v5)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (v9 != v11 || v10 != v12)
  {
    v14 = sub_2150A6270();

    if (v14)
    {
      goto LABEL_25;
    }

    return 0;
  }

LABEL_25:
  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_2150A6270();
}

unint64_t sub_214FC8108(uint64_t a1)
{
  *(a1 + 8) = sub_214FC8138();
  result = sub_214FC818C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214FC8138()
{
  result = qword_27CA43280;
  if (!qword_27CA43280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43280);
  }

  return result;
}

unint64_t sub_214FC818C()
{
  result = qword_27CA43288;
  if (!qword_27CA43288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43288);
  }

  return result;
}

unint64_t sub_214FC81E0(void *a1)
{
  a1[1] = sub_214FC8218();
  a1[2] = sub_214FC826C();
  result = sub_214FC82C0();
  a1[3] = result;
  return result;
}

unint64_t sub_214FC8218()
{
  result = qword_27CA43290;
  if (!qword_27CA43290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43290);
  }

  return result;
}

unint64_t sub_214FC826C()
{
  result = qword_27CA43298;
  if (!qword_27CA43298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43298);
  }

  return result;
}

unint64_t sub_214FC82C0()
{
  result = qword_27CA432A0;
  if (!qword_27CA432A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA432A0);
  }

  return result;
}

unint64_t sub_214FC8318()
{
  result = qword_280C23348[0];
  if (!qword_280C23348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C23348);
  }

  return result;
}

uint64_t sub_214FC836C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214FC83B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NotesServiceAPIAsyncClient.__allocating_init(codeService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t NotesServiceAPI.PingOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432A8, &qword_2150C6750);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_214F43C14(a1, v6, &qword_27CA432A8, &qword_2150C6750);
  v8 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432A8, &qword_2150C6750);
  return v8;
}

uint64_t NotesServiceAPI.PingOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432A8, &qword_2150C6750);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_214F43C14(a1, &v7 - v4, &qword_27CA432A8, &qword_2150C6750);
  v5 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432A8, &qword_2150C6750);
  return v5;
}

uint64_t NotesServiceAPI.SendMentionNotificationV2Operation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432B0, &qword_2150C6758);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_214F43C14(a1, v6, &qword_27CA432B0, &qword_2150C6758);
  v8 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432B0, &qword_2150C6758);
  return v8;
}

uint64_t NotesServiceAPI.SendMentionNotificationV2Operation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432B0, &qword_2150C6758);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_214F43C14(a1, &v7 - v4, &qword_27CA432B0, &qword_2150C6758);
  v5 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432B0, &qword_2150C6758);
  return v5;
}

uint64_t NotesServiceAPI.DidCompleteInstallOrUpdateOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432B8, &qword_2150C6760);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_214F43C14(a1, v6, &qword_27CA432B8, &qword_2150C6760);
  v8 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432B8, &qword_2150C6760);
  return v8;
}

uint64_t NotesServiceAPI.DidCompleteInstallOrUpdateOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432B8, &qword_2150C6760);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_214F43C14(a1, &v7 - v4, &qword_27CA432B8, &qword_2150C6760);
  v5 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432B8, &qword_2150C6760);
  return v5;
}

uint64_t NotesServiceAPI.RunGarbageCollectorOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432C0, &qword_2150C6768);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_214F43C14(a1, v6, &qword_27CA432C0, &qword_2150C6768);
  v8 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432C0, &qword_2150C6768);
  return v8;
}

uint64_t NotesServiceAPI.RunGarbageCollectorOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432C0, &qword_2150C6768);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_214F43C14(a1, &v7 - v4, &qword_27CA432C0, &qword_2150C6768);
  v5 = sub_2150A3BB0();
  sub_214F302D4(a1, &qword_27CA432C0, &qword_2150C6768);
  return v5;
}

uint64_t NotesServiceAPIAsync.ping(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PingRequest(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11NotesShared11PingRequestVACycfC_0();
  (*(a4 + 8))(v11, a1, a2, a3, a4);
  return sub_214FC9588(v11, type metadata accessor for PingRequest);
}

uint64_t NotesServiceAPIAsync.sendMentionNotificationV2(recipientUserID:senderName:noteTitle:mentionSnippet:shareRecordName:shareOwnerUserID:noteRecordName:inlineAttachmentRecordName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v30 = a8;
  v29 = a7;
  v33 = a14;
  v32 = a15;
  v34 = a16;
  v31 = a17;
  v28[2] = a11;
  v28[1] = a10;
  v28[0] = a9;
  v23 = type metadata accessor for MentionNotificationRequestV2(0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = v29;
  v42 = v30;
  v43 = a9;
  v44 = a10;
  v45 = a11;
  v46 = a12;
  v47 = a13;
  sub_214FC9540(&qword_27CA432C8, type metadata accessor for MentionNotificationRequestV2, &protocol conformance descriptor for MentionNotificationRequestV2);
  sub_2150A3DB0();
  (*(v31 + 16))(v26, v33, v32, v34);
  return sub_214FC9588(v26, type metadata accessor for MentionNotificationRequestV2);
}

void *sub_214FC8E78(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = result;
  if (a3)
  {

    *v22 = a2;
    v22[1] = a3;
  }

  if (a5)
  {

    v22[2] = a4;
    v22[3] = a5;
  }

  if (a7)
  {

    v22[4] = a6;
    v22[5] = a7;
  }

  if (a9)
  {

    v22[6] = a8;
    v22[7] = a9;
  }

  if (a11)
  {

    v22[8] = a10;
    v22[9] = a11;
  }

  if (a13)
  {

    v22[10] = a12;
    v22[11] = a13;
  }

  if (a15)
  {

    v22[12] = a14;
    v22[13] = a15;
  }

  if (a17)
  {

    v22[14] = a16;
    v22[15] = a17;
  }

  return result;
}

uint64_t NotesServiceAPIAsync.didCompleteInstallOrUpdate(previousBuildNumber:previousVersion:currentBuildNumber:currentVersion:platformName:continuationToken:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v28 = a8;
  v27 = a7;
  v30 = a13;
  v31 = a12;
  v32 = a14;
  v29 = a15;
  v26 = a9;
  updated = type metadata accessor for DidCompleteInstallOrUpdateRequest(0);
  MEMORY[0x28223BE20](updated, v22);
  v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = v27;
  v40 = v28;
  v41 = a9;
  v42 = a10;
  v43 = a11;
  sub_214FC9540(qword_280C23720, type metadata accessor for DidCompleteInstallOrUpdateRequest, &protocol conformance descriptor for DidCompleteInstallOrUpdateRequest);
  sub_2150A3DB0();
  (*(v29 + 24))(v24, v31, v30, v32);
  return sub_214FC9588(v24, type metadata accessor for DidCompleteInstallOrUpdateRequest);
}

void *sub_214FC9188(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v18 = result;
  if (a3)
  {

    *v18 = a2;
    v18[1] = a3;
  }

  if (a5)
  {

    v18[2] = a4;
    v18[3] = a5;
  }

  if (a7)
  {

    v18[4] = a6;
    v18[5] = a7;
  }

  if (a9)
  {

    v18[6] = a8;
    v18[7] = a9;
  }

  if (a11)
  {

    v18[8] = a10;
    v18[9] = a11;
  }

  if (a13 >> 60 != 15)
  {
    v21 = v18[10];
    v22 = v18[11];
    sub_214FCA120(a12, a13);
    result = sub_214F7EDE4(v21, v22);
    v18[10] = a12;
    v18[11] = a13;
  }

  return result;
}

uint64_t NotesServiceAPIAsync.runGarbageCollector(continuationToken:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for RunGarbageCollectorRequest(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  v19 = a2;
  sub_214FC9540(&qword_27CA432D0, type metadata accessor for RunGarbageCollectorRequest, &protocol conformance descriptor for RunGarbageCollectorRequest);
  sub_2150A3DB0();
  (*(a6 + 32))(v15, a3, a4, a5, a6);
  return sub_214FC9588(v15, type metadata accessor for RunGarbageCollectorRequest);
}

uint64_t *sub_214FC9414(uint64_t *result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result;
    sub_214FCA120(a2, a3);
    result = sub_214F7EDE4(v3, v4);
    *v5 = a2;
    v5[1] = a3;
  }

  return result;
}

uint64_t sub_214FC9540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_214FC9588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_214FC95E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432A8, &qword_2150C6750);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - v10;
  sub_214FC9D14(a1, &v15 - v10, type metadata accessor for PingRequest);
  v12 = type metadata accessor for PingRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for NotesServiceAPI.PingOperation(0));
  sub_214F43C14(v11, v8, &qword_27CA432A8, &qword_2150C6750);
  v13 = sub_2150A3BB0();
  sub_214F302D4(v11, &qword_27CA432A8, &qword_2150C6750);
  v14 = v13;

  sub_2150A3BA0();

  sub_2150A5510();
}

void sub_214FC97AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432B0, &qword_2150C6758);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - v10;
  sub_214FC9D14(a1, &v15 - v10, type metadata accessor for MentionNotificationRequestV2);
  v12 = type metadata accessor for MentionNotificationRequestV2(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for NotesServiceAPI.SendMentionNotificationV2Operation(0));
  sub_214F43C14(v11, v8, &qword_27CA432B0, &qword_2150C6758);
  v13 = sub_2150A3BB0();
  sub_214F302D4(v11, &qword_27CA432B0, &qword_2150C6758);
  v14 = v13;

  sub_2150A3BA0();

  sub_2150A5510();
}

void sub_214FC9984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432B8, &qword_2150C6760);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - v10;
  sub_214FC9D14(a1, &v15 - v10, type metadata accessor for DidCompleteInstallOrUpdateRequest);
  updated = type metadata accessor for DidCompleteInstallOrUpdateRequest(0);
  (*(*(updated - 8) + 56))(v11, 0, 1, updated);
  objc_allocWithZone(type metadata accessor for NotesServiceAPI.DidCompleteInstallOrUpdateOperation(0));
  sub_214F43C14(v11, v8, &qword_27CA432B8, &qword_2150C6760);
  v13 = sub_2150A3BB0();
  sub_214F302D4(v11, &qword_27CA432B8, &qword_2150C6760);
  v14 = v13;

  sub_2150A3BA0();

  sub_2150A5510();
}

void sub_214FC9B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA432C0, &qword_2150C6768);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - v10;
  sub_214FC9D14(a1, &v15 - v10, type metadata accessor for RunGarbageCollectorRequest);
  v12 = type metadata accessor for RunGarbageCollectorRequest(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for NotesServiceAPI.RunGarbageCollectorOperation(0));
  sub_214F43C14(v11, v8, &qword_27CA432C0, &qword_2150C6768);
  v13 = sub_2150A3BB0();
  sub_214F302D4(v11, &qword_27CA432C0, &qword_2150C6768);
  v14 = v13;

  sub_2150A3BA0();

  sub_2150A5510();
}

uint64_t sub_214FC9D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NotesServiceAPIAsyncClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_214FCA120(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void __swiftcall ICDeviceManagementRestrictionsManager.init()(ICDeviceManagementRestrictionsManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static ICDeviceManagementRestrictionsManager.shared.getter()
{
  if (qword_280C24228 != -1)
  {
    swift_once();
  }

  v1 = qword_280C24230;

  return v1;
}

Swift::Void __swiftcall ICDeviceManagementRestrictionsManager.registerObserver()()
{
  v3 = sub_214D6A6C8(v0, v1);
  [v3 registerObserver_];

  [v2 updateRestrictions];
}

id ICDeviceManagementRestrictionsManager.init()()
{
  *(v0 + OBJC_IVAR___ICDeviceManagementRestrictionsManager____lazy_storage___connection) = 0;
  *(v0 + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isMathPaperSolvingAllowed) = 1;
  *(v0 + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isKeyboardMathSolvingAllowed) = 1;
  *(v0 + OBJC_IVAR___ICDeviceManagementRestrictionsManager__isCalculatorModeScientificAllowed) = 1;
  v2.super_class = ICDeviceManagementRestrictionsManager;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for ICDeviceManagementRestrictionsManager(uint64_t a1, uint64_t a2)
{
  result = qword_27CA43330;
  if (!qword_27CA43330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA43330);
  }

  return result;
}

void String.height(_:_:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_2150A4A90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA433A0, &qword_2150C6888);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_214FCA5D4(0, v9);
  *(inited + 40) = a1;
  v10 = v8;
  v11 = a1;
  sub_214FA54FC(inited);
  swift_setDeallocating();
  sub_214FCA620(inited + 32);
  type metadata accessor for Key(0);
  sub_214FCA688();
  v12 = sub_2150A4910();

  [v6 boundingRectWithSize:3 options:v12 attributes:0 context:{a4, 1.79769313e308}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21.origin.x = v14;
  v21.origin.y = v16;
  v21.size.width = v18;
  v21.size.height = v20;
  CGRectGetHeight(v21);
}

unint64_t sub_214FCA5D4(uint64_t a1, uint64_t a2)
{
  result = qword_27CA433A8;
  if (!qword_27CA433A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA433A8);
  }

  return result;
}

uint64_t sub_214FCA620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F08, &unk_2150C5440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214FCA688()
{
  result = qword_27CA419F0;
  if (!qword_27CA419F0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA419F0);
  }

  return result;
}

Swift::Bool __swiftcall UnkeyedDecodingContainer.skip(count:)(Swift::Int count)
{
  if (count < 1)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v2 = 1;
    while (1)
    {
      v3 = sub_2150A6150();
      if (v3)
      {
        break;
      }

      sub_214FCA7E4();
      sub_2150A6140();
      if (count == v2)
      {
        break;
      }

      if (__OFADD__(v2++, 1))
      {
        __break(1u);
        return (v3 & 1) == 0;
      }
    }

    return (v3 & 1) == 0;
  }

  return result;
}

unint64_t sub_214FCA7E4()
{
  result = qword_27CA433B0;
  if (!qword_27CA433B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA433B0);
  }

  return result;
}

uint64_t sub_214FCA848(uint64_t a1)
{
  swift_getObjectType();
  sub_214FA9E9C(a1, v5);
  if (!v6)
  {
    sub_214FBC238(v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_2150A4A80();

  return v2 & 1;
}

uint64_t sub_214FCA96C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_214FCA848(v8);

  sub_214FBC238(v8);
  return v6 & 1;
}

uint64_t sub_214FCAA60(_OWORD *a1)
{
  v2 = swift_allocObject();
  sub_214D72488(a1, (v2 + 16));
  return v2;
}

uint64_t sub_214FCAAA4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t Cache.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Cache.init(name:)(a1, a2);
  return v4;
}

uint64_t sub_214FCAB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = sub_2150A57E0();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v18 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a3, v6);
  (*(v8 + 16))(v12, a1, v7);
  return Cache.subscript.setter(v12, v15);
}

void (*Cache.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x48uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *v2;
  v9 = sub_2150A57E0();
  v7[1] = v9;
  v10 = *(v9 - 8);
  v7[2] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[3] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v7[4] = v12;
  v14 = *(v8 + 80);
  v7[5] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v7[6] = v15;
  v17 = *(v15 + 64);
  if (v5)
  {
    v7[7] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v7[7] = malloc(*(v15 + 64));
    v18 = malloc(v17);
  }

  v7[8] = v18;
  (*(v16 + 16))();
  Cache.subscript.getter(a2, v13);
  return sub_214FCAE9C;
}

void sub_214FCAE9C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v10 = v2[2];
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v3, v4, v5);
    Cache.subscript.setter(v8, v3);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    Cache.subscript.setter(v7, v4);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t Cache.subscript.getter@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v26 = a3;
  v27 = a2;
  v29 = a4;
  v28 = *(*v5 + 80);
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v24 - v7;
  v10 = *(v9 + 88);
  v11 = sub_2150A57E0();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v24 - v18;
  Cache.subscript.getter(a1, &v24 - v18);
  v20 = *(v10 - 8);
  if ((*(v20 + 48))(v19, 1, v10) != 1)
  {
    return (*(v20 + 32))(v29, v19, v10);
  }

  v21 = (*(v12 + 8))(v19, v11);
  v22 = v29;
  v27(v21);
  (*(v25 + 16))(v8, a1, v28);
  (*(v20 + 16))(v16, v22, v10);
  (*(v20 + 56))(v16, 0, 1, v10);
  return Cache.subscript.setter(v16, v8);
}

uint64_t Cache.name.getter()
{
  v1 = [*(v0 + 16) name];
  v2 = sub_2150A4AD0();

  return v2;
}

uint64_t Cache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id ICTTTextEditFilter.init(allowedUserIDs:allowedAttachmentIDs:allowsMissingTimestamps:allowsMissingUsers:fromDate:toDate:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v30 - v18;
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = v20;
  if (a1)
  {
    v22 = sub_2150A52D0();
  }

  else
  {
    v22 = 0;
  }

  [v20 setAllowedUserIDs_];

  if (a2)
  {
    v23 = sub_2150A52D0();
  }

  else
  {
    v23 = 0;
  }

  [v20 setAllowedAttachmentIDs_];

  [v20 setAllowsMissingTimestamps_];
  [v20 setAllowsMissingUsers_];
  sub_214F5D4A4(a5, v19);
  v24 = sub_2150A3960();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = 0;
  if (v26(v19, 1, v24) != 1)
  {
    v27 = sub_2150A38F0();
    (*(v25 + 8))(v19, v24);
  }

  [v20 setFromDate_];

  sub_214F5D4A4(a6, v16);
  if (v26(v16, 1, v24) == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_2150A38F0();
    (*(v25 + 8))(v16, v24);
  }

  [v20 setToDate_];

  sub_214F5D43C(a6);
  sub_214F5D43C(a5);
  return v20;
}

void __swiftcall ICTTTextEditFilter.init(mentions:)(ICTTTextEditFilter *__return_ptr retstr, Swift::OpaquePointer mentions)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v55 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v59 = &v55 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v58 = &v55 - v16;
  v60 = MEMORY[0x277D84F90];
  if (mentions._rawValue >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((mentions._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2150A59D0())
  {
    v18 = MEMORY[0x277D84F90];
    v56 = v11;
    v57 = v7;
    if (i)
    {
      v19 = 0;
      while (1)
      {
        if ((mentions._rawValue & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x216062780](v19, mentions._rawValue);
        }

        else
        {
          if (v19 >= *((mentions._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v20 = *(mentions._rawValue + v19 + 4);
        }

        v21 = v20;
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if ([v20 isMentionAttachment])
        {
          v11 = &v60;
          sub_2150A5CB0();
          v7 = *(v60 + 16);
          sub_2150A5CF0();
          sub_2150A5D00();
          sub_2150A5CC0();
        }

        else
        {
        }

        ++v19;
        if (v22 == i)
        {
          v23 = v60;
          v18 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_16:

    v60 = v18;
    if ((v23 & 0x8000000000000000) == 0 && (v23 & 0x4000000000000000) == 0)
    {
      mentions._rawValue = *(v23 + 16);
      if (!mentions._rawValue)
      {
        break;
      }

      goto LABEL_19;
    }

    mentions._rawValue = sub_2150A59D0();
    if (!mentions._rawValue)
    {
      break;
    }

LABEL_19:
    v24 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x216062780](v24, v23);
      }

      else
      {
        if (v24 >= *(v23 + 16))
        {
          goto LABEL_33;
        }

        v25 = *(v23 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if ([v25 isVisible])
      {
        v11 = &v60;
        sub_2150A5CB0();
        v7 = *(v60 + 16);
        sub_2150A5CF0();
        sub_2150A5D00();
        sub_2150A5CC0();
      }

      else
      {
      }

      ++v24;
      if (v27 == mentions._rawValue)
      {
        v28 = v60;
        goto LABEL_37;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_37:

  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
LABEL_59:
    v29 = sub_2150A59D0();
    if (v29)
    {
      goto LABEL_40;
    }

    goto LABEL_60;
  }

  v29 = *(v28 + 16);
  if (!v29)
  {
LABEL_60:
    v31 = MEMORY[0x277D84F90];
    goto LABEL_61;
  }

LABEL_40:
  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  do
  {
    v32 = v30;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x216062780](v32, v28);
        v30 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v32 >= *(v28 + 16))
        {
          goto LABEL_58;
        }

        v33 = *(v28 + 8 * v32 + 32);
        v30 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      v34 = v33;
      v35 = [v34 identifier];
      if (v35)
      {
        break;
      }

      ++v32;
      if (v30 == v29)
      {
        goto LABEL_61;
      }
    }

    v36 = v35;
    v37 = sub_2150A4AD0();
    v39 = v38;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_21505F4D0(0, *(v31 + 2) + 1, 1, v31);
    }

    v41 = *(v31 + 2);
    v40 = *(v31 + 3);
    if (v41 >= v40 >> 1)
    {
      v31 = sub_21505F4D0((v40 > 1), v41 + 1, 1, v31);
    }

    *(v31 + 2) = v41 + 1;
    v42 = &v31[16 * v41];
    *(v42 + 4) = v37;
    *(v42 + 5) = v39;
  }

  while (v30 != v29);
LABEL_61:

  sub_214F8448C(v31);

  v43 = sub_2150A3960();
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v46 = v58;
  v45(v58, 1, 1, v43);
  v45(v59, 1, 1, v43);
  v47 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v47 setAllowedUserIDs_];
  v48 = sub_2150A52D0();

  [v47 setAllowedAttachmentIDs_];

  [v47 setAllowsMissingTimestamps_];
  [v47 setAllowsMissingUsers_];
  v49 = v46;
  v50 = v56;
  sub_214F5D4A4(v49, v56);
  v51 = *(v44 + 48);
  v52 = 0;
  if (v51(v50, 1, v43) != 1)
  {
    v52 = sub_2150A38F0();
    (*(v44 + 8))(v50, v43);
  }

  [v47 setFromDate_];

  v53 = v57;
  sub_214F5D4A4(v59, v57);
  if (v51(v53, 1, v43) == 1)
  {
    v54 = 0;
  }

  else
  {
    v54 = sub_2150A38F0();
    (*(v44 + 8))(v53, v43);
  }

  [v47 setToDate_];

  sub_214F5D43C(v59);
  sub_214F5D43C(v58);
}

id ICTTTextEditFilter.init(editEvent:)(uint64_t a1)
{
  v3 = sub_2150A30A0();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v53 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v52 = &v46 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v55 = &v46 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0, &qword_2150C2720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  v26 = type metadata accessor for NoteEditActivityEvent(0);
  v27 = (a1 + *(v26 + 24));
  v28 = v27[1];
  *(inited + 32) = *v27;
  *(inited + 40) = v28;

  v49 = sub_214F809F8(inited);
  swift_setDeallocating();
  sub_214F8467C(inited + 32);
  v29 = *(v26 + 28);
  v54 = a1;
  LODWORD(v29) = *(a1 + v29);
  v50 = v22;
  v51 = v1;
  v47 = v8;
  if (v29 > 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_2150A6270();
  }

  NoteEditActivityEvent.timeInterval.getter(v11);
  v30 = v55;
  sub_2150A3090();
  v31 = *(v4 + 8);
  v31(v11, v3);
  v32 = sub_2150A3960();
  v33 = *(v32 - 8);
  v34 = v3;
  v35 = *(v33 + 56);
  v35(v30, 0, 1, v32);
  v36 = v47;
  NoteEditActivityEvent.timeInterval.getter(v47);
  v37 = v50;
  sub_2150A3060();
  v31(v36, v34);
  v35(v37, 0, 1, v32);
  v38 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39 = sub_2150A52D0();

  [v38 setAllowedUserIDs_];

  [v38 setAllowedAttachmentIDs_];
  [v38 setAllowsMissingTimestamps_];
  [v38 setAllowsMissingUsers_];
  v40 = v52;
  sub_214F5D4A4(v55, v52);
  v41 = *(v33 + 48);
  v42 = 0;
  if (v41(v40, 1, v32) != 1)
  {
    v42 = sub_2150A38F0();
    (*(v33 + 8))(v40, v32);
  }

  [v38 setFromDate_];

  v43 = v53;
  sub_214F5D4A4(v37, v53);
  if (v41(v43, 1, v32) == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = sub_2150A38F0();
    (*(v33 + 8))(v43, v32);
  }

  [v38 setToDate_];

  sub_214FCD694(v54, type metadata accessor for NoteEditActivityEvent);
  sub_214F5D43C(v37);
  sub_214F5D43C(v55);
  return v38;
}

void ICTTTextEditFilter.init(persistedEvent:resolver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PersistedActivityEvent(0);
  sub_214FCD62C(a1 + *(v10 + 28), v9, type metadata accessor for PersistedActivityEvent.Activities);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 6)
  {
    sub_214FCD694(a1, type metadata accessor for PersistedActivityEvent);
    swift_unknownObjectRelease();
    sub_214FCD694(v9, type metadata accessor for PersistedActivityEvent.Activities);
  }

  else if (EnumCaseMultiPayload == 6)
  {
    sub_214FCD694(a1, type metadata accessor for PersistedActivityEvent);
    swift_unknownObjectRelease();
    v26 = sub_2150A3A00();
    (*(*(v26 - 8) + 8))(v9, v26);
  }

  else if (EnumCaseMultiPayload == 7)
  {
    v30 = v3;
    v31 = a1;
    v12 = *v9;
    v13 = *v9 + 56;
    v36 = MEMORY[0x277D84F90];
    v34 = v12;
    v14 = *(v12 + 16);
    v32._rawValue = MEMORY[0x277D84F90];
    v33 = a3 + 64;
    swift_unknownObjectRetain();
    v15 = 0;
    v29 = v13;
LABEL_5:
    v16 = (v13 + 32 * v15);
    while (1)
    {
      if (v14 == v15)
      {
        swift_unknownObjectRelease();

        ICTTTextEditFilter.init(mentions:)(v27, v32);
        swift_unknownObjectRelease();
        sub_214FCD694(v31, type metadata accessor for PersistedActivityEvent);
        return;
      }

      if (v15 >= *(v34 + 16))
      {
        break;
      }

      ++v15;
      v17 = v16 + 4;
      v18 = *(v16 - 1);
      v19 = *v16;
      v20 = *(v16 - 3);
      v21 = *(v16 - 2);
      ObjectType = swift_getObjectType();
      v35[0] = v20;
      v35[1] = v21;
      v35[2] = v18;
      v35[3] = v19;
      v23 = *(a3 + 64);

      v24 = v23(v35, ObjectType, a3);

      v16 = v17;
      if (v24)
      {
        MEMORY[0x216061A60](v25);
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2150A4F10();
        }

        sub_2150A4F70();
        v32._rawValue = v36;
        v13 = v29;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
    sub_214FCD694(a1, type metadata accessor for PersistedActivityEvent);
    swift_unknownObjectRelease();
  }
}
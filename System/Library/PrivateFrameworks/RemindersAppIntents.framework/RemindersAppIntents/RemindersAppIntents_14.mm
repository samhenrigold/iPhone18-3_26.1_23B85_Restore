uint64_t sub_261C68878(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v95[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
  v7 = [swift_getObjCClassFromMetadata() cdEntityName];
  v8 = sub_261CFFA74();
  v10 = v9;

  if (v8 == v4 && v10 == v5)
  {

LABEL_10:
    v17 = *(a3 + 16);
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v18 = sub_261CFFC54();
    v95[0] = 0;
    v19 = [v17 fetchListSectionsWithObjectIDs:v18 error:v95];

    v20 = v95[0];
    if (v19)
    {
      sub_261B3B918();
      v21 = sub_261CFF8F4();
      v22 = v20;

      sub_261B35108(v21);
LABEL_12:

LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD9F0, &qword_261D03110);
      sub_261CFF904();
    }

    goto LABEL_29;
  }

  v12 = sub_261D00614();

  if (v12)
  {
    goto LABEL_10;
  }

  sub_261B05020(0, &qword_27FEDA5E8, 0x277D44818);
  v13 = [swift_getObjCClassFromMetadata() cdEntityName];
  v14 = sub_261CFFA74();
  v16 = v15;

  if (v14 == v4 && v16 == v5)
  {

    goto LABEL_15;
  }

  v24 = sub_261D00614();

  if (v24)
  {
LABEL_15:
    v25 = *(a3 + 16);
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v26 = sub_261CFFC54();
    v95[0] = 0;
    v27 = [v25 fetchSmartListSectionsWithObjectIDs:v26 error:v95];

    v20 = v95[0];
    if (v27)
    {
      sub_261B3B918();
      v28 = sub_261CFF8F4();
      v29 = v20;

      sub_261B3511C(v28);
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  sub_261B05020(0, &qword_27FEDA5F0, 0x277D448B8);
  v30 = [swift_getObjCClassFromMetadata() cdEntityName];
  v31 = sub_261CFFA74();
  v33 = v32;

  if (v31 == v4 && v33 == v5)
  {

    goto LABEL_21;
  }

  v34 = sub_261D00614();

  if (v34)
  {
LABEL_21:
    v35 = *(a3 + 16);
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v36 = sub_261CFFC54();
    v95[0] = 0;
    v37 = [v35 fetchTemplateSectionsWithObjectIDs:v36 error:v95];

    v20 = v95[0];
    if (v37)
    {
      sub_261B3B918();
      v38 = sub_261CFF8F4();
      v39 = v20;

      sub_261B35130(v38);
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  v40 = [objc_opt_self() cdEntityName];
  v41 = sub_261CFFA74();
  v43 = v42;

  if (v41 == v4 && v43 == v5)
  {

    goto LABEL_27;
  }

  v44 = sub_261D00614();

  if (v44)
  {
LABEL_27:
    v45 = *(a3 + 16);
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v46 = sub_261CFFC54();
    v95[0] = 0;
    v47 = [v45 fetchListsWithObjectIDs:v46 error:v95];

    v20 = v95[0];
    if (v47)
    {
      sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
      sub_261B3B918();
      v48 = sub_261CFF8F4();
      v49 = v20;

      sub_261B34B90(v48);
      goto LABEL_12;
    }

LABEL_29:
    v50 = v20;
    sub_261CFD654();

    return swift_willThrow();
  }

  v51 = [objc_opt_self() cdEntityName];
  v52 = sub_261CFFA74();
  v54 = v53;

  if (v52 == v4 && v54 == v5)
  {
  }

  else
  {
    v55 = sub_261D00614();

    if ((v55 & 1) == 0)
    {
      v72 = [objc_opt_self() cdEntityName];
      v73 = sub_261CFFA74();
      v75 = v74;

      if (v73 == v4 && v75 == v5)
      {
      }

      else
      {
        v76 = sub_261D00614();

        if ((v76 & 1) == 0)
        {
          if (qword_27FED9C28 != -1)
          {
            swift_once();
          }

          v87 = sub_261CFF7A4();
          __swift_project_value_buffer(v87, qword_27FEDD890);
          sub_261CFD104();
          v88 = sub_261CFF784();
          v89 = sub_261CFFE74();

          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v95[0] = v91;
            *v90 = 136446210;
            *(v90 + 4) = sub_261B879C8(v4, v5, v95);
            _os_log_impl(&dword_261AE2000, v88, v89, "[SectionEntitySectionQueryPerforming] Unknown section entity name: %{public}s", v90, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v91);
            MEMORY[0x26671D560](v91, -1, -1);
            MEMORY[0x26671D560](v90, -1, -1);
          }

          sub_261C3AB78(MEMORY[0x277D84F90]);
          goto LABEL_13;
        }
      }

      if (qword_27FED9C28 == -1)
      {
        goto LABEL_55;
      }

      goto LABEL_73;
    }
  }

  v56 = *(a3 + 16);
  v95[0] = 0;
  v57 = [v56 fetchCustomSmartListsWithError_];
  v58 = v95[0];
  if (!v57)
  {
    v71 = v95[0];
    sub_261CFD654();

    return swift_willThrow();
  }

  v59 = v57;
  sub_261B05020(0, &unk_27FEDB000, 0x277D447F8);
  v6 = sub_261CFFC64();
  v60 = v58;

  if (v6 >> 62)
  {
    v61 = sub_261D00274();
    if (v61)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v61 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
LABEL_38:
      v95[0] = MEMORY[0x277D84F90];
      sub_261B3A3A0(0, v61 & ~(v61 >> 63), 0);
      if ((v61 & 0x8000000000000000) == 0)
      {
        v62 = 0;
        v63 = v95[0];
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v64 = MEMORY[0x26671CA10](v62, v6);
          }

          else
          {
            if ((v62 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_64:
              __break(1u);
            }

            if (v62 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_64;
            }

            v64 = *(v6 + 8 * v62 + 32);
          }

          v65 = v64;
          v66 = [v64 objectID];
          v95[0] = v63;
          v68 = v63[2];
          v67 = v63[3];
          if (v68 >= v67 >> 1)
          {
            v93 = v65;
            v70 = v66;
            sub_261B3A3A0((v67 > 1), v68 + 1, 1);
            v66 = v70;
            v63 = v95[0];
          }

          ++v62;
          v63[2] = v68 + 1;
          v69 = &v63[2 * v68];
          v69[4] = v66;
          v69[5] = v65;
        }

        while (v61 != v62);

        goto LABEL_67;
      }

      __break(1u);
LABEL_73:
      swift_once();
LABEL_55:
      v77 = sub_261CFF7A4();
      __swift_project_value_buffer(v77, qword_27FEDD890);
      sub_261CFD104();
      v78 = sub_261CFF784();
      v79 = sub_261CFFE74();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v95[0] = v81;
        *v80 = 136446210;
        v82 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        v83 = MEMORY[0x26671C340](v6, v82);
        v85 = sub_261B879C8(v83, v84, v95);

        *(v80 + 4) = v85;
        _os_log_impl(&dword_261AE2000, v78, v79, "[SectionEntitySectionQueryPerforming] Template section is not currently supported in RemindersAppIntent: %{public}s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x26671D560](v81, -1, -1);
        MEMORY[0x26671D560](v80, -1, -1);
      }

      sub_261B01D70();
      swift_allocError();
      *v86 = 31;
      return swift_willThrow();
    }
  }

  v63 = MEMORY[0x277D84F90];
LABEL_67:
  if (v63[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD240, &qword_261D031B0);
    v92 = sub_261D00544();
  }

  else
  {
    v92 = MEMORY[0x277D84F98];
  }

  v95[0] = v92;
  sub_261C6F19C(v63, 1, v95);
  if (!v94)
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_261C69378(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v115 = a2;
  v110 = a3;
  v114 = a4;
  v116[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v4 - 8);
  v109 = (&v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SectionEntity(0);
  v112 = *(v6 - 8);
  v113 = v6;
  MEMORY[0x28223BE20](v6);
  v111 = (&v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AppEntityID(0);
  v8 = objc_allocWithZone(MEMORY[0x277D44700]);
  v9 = sub_261CFD814();
  v10 = sub_261CFFA54();
  v11 = [v8 initWithUUID:v9 entityName:v10];

  v12 = objc_allocWithZone(MEMORY[0x277D44700]);
  v13 = sub_261CFD814();
  v14 = sub_261CFFA54();
  v15 = [v12 initWithUUID:v13 entityName:v14];

  v16 = sub_261CADDC8(v15, v115);
  if (!v16)
  {
    if (qword_27FED9C28 != -1)
    {
      swift_once();
    }

    v25 = sub_261CFF7A4();
    __swift_project_value_buffer(v25, qword_27FEDD890);
    v26 = v11;
    v27 = sub_261CFF784();
    v28 = sub_261CFFE64();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_261AE2000, v27, v28, "[SectionEntitySectionQueryPerforming] Could not fetch section with %{public}@", v29, 0xCu);
      sub_261AE6A40(v30, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v30, -1, -1);
      MEMORY[0x26671D560](v29, -1, -1);
      v26 = v27;
      v27 = v31;
    }

    (*(v112 + 56))(v114, 1, 1, v113);
    return;
  }

  v17 = [v11 entityName];
  v18 = sub_261CFFA74();
  v20 = v19;

  sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
  v21 = [swift_getObjCClassFromMetadata() cdEntityName];
  v22 = sub_261CFFA74();
  v24 = v23;

  if (v22 == v18 && v24 == v20)
  {

LABEL_11:

    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = v111;
      sub_261C66A58(v33, v111);

      swift_unknownObjectRelease();
LABEL_13:
      v35 = v114;
      sub_261C6FCC8(v34, v114, type metadata accessor for SectionEntity);
      (*(v112 + 56))(v35, 0, 1, v113);
      return;
    }

    if (qword_27FED9C28 != -1)
    {
      swift_once();
    }

    v36 = sub_261CFF7A4();
    __swift_project_value_buffer(v36, qword_27FEDD890);
    v37 = v11;
    v38 = sub_261CFF784();
    v39 = sub_261CFFE74();

    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_19;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138543362;
    *(v40 + 4) = v37;
    *v41 = v37;
    v42 = v37;
    v43 = "[SectionEntitySectionQueryPerforming] Should not happen that the section fetched with a list section ID not being a REMListSection: %{public}@";
    goto LABEL_18;
  }

  v32 = sub_261D00614();

  if (v32)
  {
    goto LABEL_11;
  }

  sub_261B05020(0, &qword_27FEDA5E8, 0x277D44818);
  v46 = [swift_getObjCClassFromMetadata() cdEntityName];
  v47 = sub_261CFFA74();
  v49 = v48;

  if (v47 != v18 || v49 != v20)
  {
    v50 = sub_261D00614();

    if (v50)
    {
      goto LABEL_25;
    }

    sub_261B05020(0, &qword_27FEDA5F0, 0x277D448B8);
    v60 = [swift_getObjCClassFromMetadata() cdEntityName];
    v61 = sub_261CFFA74();
    v63 = v62;

    if (v61 == v18 && v63 == v20)
    {
LABEL_68:

      goto LABEL_39;
    }

    v65 = sub_261D00614();

    if (v65)
    {
LABEL_39:

      goto LABEL_40;
    }

    v73 = [objc_opt_self() cdEntityName];
    v74 = sub_261CFFA74();
    v76 = v75;

    if (v74 == v18 && v76 == v20)
    {
    }

    else
    {
      v77 = sub_261D00614();

      if ((v77 & 1) == 0)
      {
        v84 = [objc_opt_self() cdEntityName];
        v85 = sub_261CFFA74();
        v87 = v86;

        if (v85 == v18 && v87 == v20)
        {
        }

        else
        {
          v88 = sub_261D00614();

          if ((v88 & 1) == 0)
          {
            v97 = [objc_opt_self() cdEntityName];
            v98 = sub_261CFFA74();
            v100 = v99;

            if (v98 != v18 || v100 != v20)
            {
              v103 = sub_261D00614();

              if ((v103 & 1) == 0)
              {
                if (qword_27FED9C28 != -1)
                {
                  swift_once();
                }

                v104 = sub_261CFF7A4();
                __swift_project_value_buffer(v104, qword_27FEDD890);
                v37 = v11;
                v38 = sub_261CFF784();
                v39 = sub_261CFFE74();

                if (!os_log_type_enabled(v38, v39))
                {
                  goto LABEL_19;
                }

                v40 = swift_slowAlloc();
                v41 = swift_slowAlloc();
                *v40 = 138543362;
                *(v40 + 4) = v37;
                *v41 = v37;
                v105 = v37;
                v43 = "[SectionEntitySectionQueryPerforming] Unknown section entity type: %{public}@";
                goto LABEL_18;
              }

LABEL_40:
              if (qword_27FED9C28 != -1)
              {
                swift_once();
              }

              v66 = sub_261CFF7A4();
              __swift_project_value_buffer(v66, qword_27FEDD890);
              v37 = v11;
              v67 = sub_261CFF784();
              v68 = sub_261CFFE74();

              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                v70 = swift_slowAlloc();
                *v69 = 138543362;
                *(v69 + 4) = v37;
                *v70 = v37;
                v71 = v37;
                _os_log_impl(&dword_261AE2000, v67, v68, "[SectionEntitySectionQueryPerforming] Template section is not currently supported in RemindersAppIntent: %{public}@", v69, 0xCu);
                sub_261AE6A40(v70, &unk_27FEDA730, &unk_261D035C0);
                MEMORY[0x26671D560](v70, -1, -1);
                MEMORY[0x26671D560](v69, -1, -1);
              }

              sub_261B01D70();
              swift_allocError();
              v45 = 31;
              goto LABEL_20;
            }

            goto LABEL_68;
          }
        }

        objc_opt_self();
        v89 = swift_dynamicCastObjCClass();
        if (v89)
        {
          v90 = v89;
          swift_unknownObjectRetain();
          v91 = [v90 customContext];
          if (v91)
          {

            v92 = [v90 parentListID];
            if (v92)
            {
              v93 = v92;
              v94 = *(v110 + 16);
              v116[0] = 0;
              v95 = [v94 fetchListWithObjectID:v93 error:v116];
              v96 = v116[0];
              if (!v95)
              {
                v108 = v96;
                swift_unknownObjectRelease();
                sub_261CFD654();

                swift_willThrow();
                swift_unknownObjectRelease();

                return;
              }
            }

            else
            {
              v95 = 0;
            }

            v106 = v95;
            swift_unknownObjectRetain();
            v107 = v109;
            sub_261B750A0(v90, v95, v109);
            v34 = v111;
            sub_261CF3F80(v107, v111);

            swift_unknownObjectRelease_n();
            v81 = v107;
LABEL_52:
            sub_261C6F13C(v81, type metadata accessor for ListEntity);
            goto LABEL_13;
          }

          swift_unknownObjectRelease();
        }

        if (qword_27FED9C28 != -1)
        {
          swift_once();
        }

        v101 = sub_261CFF7A4();
        __swift_project_value_buffer(v101, qword_27FEDD890);
        v37 = v11;
        v38 = sub_261CFF784();
        v39 = sub_261CFFE74();

        if (!os_log_type_enabled(v38, v39))
        {
          goto LABEL_19;
        }

        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138543362;
        *(v40 + 4) = v37;
        *v41 = v37;
        v102 = v37;
        v43 = "[SectionEntitySectionQueryPerforming] Should not happen that the CSL fetched with a CSL ID not being a REMSmartList: %{public}@";
        goto LABEL_18;
      }
    }

    objc_opt_self();
    v78 = swift_dynamicCastObjCClass();
    if (!v78)
    {
      if (qword_27FED9C28 != -1)
      {
        swift_once();
      }

      v82 = sub_261CFF7A4();
      __swift_project_value_buffer(v82, qword_27FEDD890);
      v37 = v11;
      v38 = sub_261CFF784();
      v39 = sub_261CFFE74();

      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_19;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138543362;
      *(v40 + 4) = v37;
      *v41 = v37;
      v83 = v37;
      v43 = "[SectionEntitySectionQueryPerforming] Should not happen that the list fetched with a list ID not being a REMList: %{public}@";
      goto LABEL_18;
    }

    v79 = v78;
    swift_unknownObjectRetain();
    v80 = v109;
    sub_261B73240(v79, v109);
    v34 = v111;
    sub_261CF3F80(v80, v111);

    swift_unknownObjectRelease();
    v81 = v80;
    goto LABEL_52;
  }

LABEL_25:

  objc_opt_self();
  v51 = swift_dynamicCastObjCClass();
  if (!v51)
  {
    if (qword_27FED9C28 != -1)
    {
      swift_once();
    }

    v58 = sub_261CFF7A4();
    __swift_project_value_buffer(v58, qword_27FEDD890);
    v37 = v11;
    v38 = sub_261CFF784();
    v39 = sub_261CFFE74();

    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_19;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138543362;
    *(v40 + 4) = v37;
    *v41 = v37;
    v59 = v37;
    v43 = "[SectionEntitySectionQueryPerforming] Should not happen that the section fetched with a smartList section ID not being a REMSmartListSection: %{public}@";
LABEL_18:
    _os_log_impl(&dword_261AE2000, v38, v39, v43, v40, 0xCu);
    sub_261AE6A40(v41, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v41, -1, -1);
    MEMORY[0x26671D560](v40, -1, -1);
LABEL_19:

    sub_261B01D70();
    swift_allocError();
    v45 = 20;
LABEL_20:
    *v44 = v45;
    swift_willThrow();

    swift_unknownObjectRelease();
    return;
  }

  v52 = v51;
  v53 = [v51 smartList];
  v54 = [v53 parentListID];

  if (!v54)
  {
    v56 = 0;
    goto LABEL_37;
  }

  v55 = *(v110 + 16);
  v116[0] = 0;
  v56 = [v55 fetchListWithObjectID:v54 error:v116];
  v57 = v116[0];
  if (v56)
  {

LABEL_37:
    v64 = v52;
    v34 = v111;
    sub_261C67444(v64, v56, v111);
    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  v72 = v57;
  sub_261CFD654();

  swift_willThrow();
  swift_unknownObjectRelease();
}

uint64_t sub_261C6A314()
{
  v11 = v0;
  if (qword_27FED9C28 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDD890);
  sub_261CFD104();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_261B879C8(v5, v4, &v10);
    _os_log_impl(&dword_261AE2000, v2, v3, "[SectionEntitySectionQueryPerforming] Query all (list) sections matching string %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  sub_261C6A4D8(*(v0 + 24), *(v0 + 32), 0, MEMORY[0x277D84F90], 0, 1, 0, *(*(v0 + 40) + 16), *(v0 + 16));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_261C6A4D8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v259 = a8;
  LODWORD(v245) = a7;
  LODWORD(v254) = a6;
  v255 = a5;
  v222 = a4;
  LODWORD(v241) = a3;
  v248 = a1;
  v249 = a2;
  v227 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v9 - 8);
  v215 = &v208 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v11 - 8);
  v228 = &v208 - v12;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA5C0, &qword_261D031A0);
  v221 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v223 = &v208 - v13;
  v229 = sub_261CFD6A4();
  v220 = *(v229 - 8);
  v14 = MEMORY[0x28223BE20](v229);
  v213 = &v208 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v211 = &v208 - v16;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7A8, &qword_261D10A40);
  v237 = *(v236 - 8);
  v17 = MEMORY[0x28223BE20](v236);
  v231 = &v208 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v230 = &v208 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v212 = &v208 - v22;
  MEMORY[0x28223BE20](v21);
  v219 = &v208 - v23;
  v252 = type metadata accessor for ListEntity(0);
  v226 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v232 = &v208 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v238);
  v261 = &v208 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v233 = &v208 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v240 = &v208 - v30;
  MEMORY[0x28223BE20](v29);
  v239 = &v208 - v31;
  v247 = type metadata accessor for SectionEntity(0);
  v257 = *(v247 - 8);
  v32 = MEMORY[0x28223BE20](v247);
  v234 = &v208 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v224 = &v208 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v216 = &v208 - v37;
  MEMORY[0x28223BE20](v36);
  v253 = (&v208 - v38);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD8F0, &qword_261D0F100);
  v258 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v217 = &v208 - v39;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8B0, &qword_261D0F0D0);
  v256 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v41 = &v208 - v40;
  v42 = sub_261CFF3D4();
  v250 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v44 = &v208 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_261CFF404();
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v208 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD8F8, &qword_261D0F108);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v208 - v51;
  v53 = v260;
  result = sub_261CFF414();
  if (v53)
  {
    return result;
  }

  v208 = v44;
  v209 = v42;
  v210 = v41;
  v260 = 0;
  v246 = v50;
  v235 = v49;
  sub_261CFF534();
  v55 = sub_261CFF134();
  (*(v46 + 8))(v48, v45);
  v56 = *(v55 + 16);
  v251 = v52;
  if (!v56)
  {

    v60 = MEMORY[0x277D84F90];
LABEL_12:
    v69 = *(v60 + 16);
    v70 = MEMORY[0x277D84F90];
    v71 = v261;
    v72 = v258;
    if (v69)
    {
      v73 = 0;
      v59 = v60 + 32;
      while (v73 < *(v60 + 16))
      {
        v74 = *(v59 + 8 * v73);
        v75 = *(v74 + 16);
        v76 = v70[2];
        v77 = v76 + v75;
        if (__OFADD__(v76, v75))
        {
          goto LABEL_131;
        }

        sub_261CFD104();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v77 > v70[3] >> 1)
        {
          if (v76 <= v77)
          {
            v79 = v76 + v75;
          }

          else
          {
            v79 = v76;
          }

          v70 = sub_261B41C94(isUniquelyReferenced_nonNull_native, v79, 1, v70);
        }

        v71 = v261;
        if (*(v74 + 16))
        {
          if ((v70[3] >> 1) - v70[2] < v75)
          {
            goto LABEL_137;
          }

          swift_arrayInitWithCopy();

          if (v75)
          {
            v80 = v70[2];
            v81 = __OFADD__(v80, v75);
            v82 = v80 + v75;
            if (v81)
            {
              goto LABEL_140;
            }

            v70[2] = v82;
          }
        }

        else
        {

          if (v75)
          {
            goto LABEL_132;
          }
        }

        ++v73;
        v72 = v258;
        if (v69 == v73)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

LABEL_29:

    v264 = v70;
    v83 = v222;
    v60 = *(v222 + 16);
    if (v60)
    {
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD900, &qword_261D0F110);
      v59 = 0;
      v85 = v256;
      v250 = v83 + ((*(v256 + 80) + 32) & ~*(v256 + 80));
      v258 = v256 + 16;
      v259 = v84;
      v86 = (v256 + 8);
      v248 = (v72 + 8);
      v87 = 1;
      do
      {
        LODWORD(v249) = v87;
        v88 = v225;
        v89 = v210;
        while (1)
        {
          if (v59 >= v60)
          {
            goto LABEL_133;
          }

          v90 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_134;
          }

          (*(v85 + 16))(v89, v250 + *(v85 + 72) * v59, v88);
          v91 = sub_261CFCB74();
          v262[0] = swift_getKeyPath();
          v263 = v91;
          v83 = sub_261CFF974();

          if (v83)
          {
            break;
          }

          (*v86)(v89, v88);
          ++v59;
          v92 = v90 == v60;
          v71 = v261;
          v93 = v255;
          v85 = v256;
          v94 = v254;
          if (v92)
          {
            v97 = v249;
            goto LABEL_42;
          }
        }

        swift_getKeyPath();
        sub_261CFCB84();
        v95 = v217;
        sub_261CFD544();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA5D0, &qword_261D0A790);
        v249 = sub_261B01D28(&qword_27FEDD918, &unk_27FEDA5D0, &qword_261D0A790, MEMORY[0x277D83960]);
        sub_261B01D28(&qword_27FEDD920, &unk_27FEDA5D0, &qword_261D0A790, MEMORY[0x277D83980]);
        sub_261B01D28(&qword_27FEDD928, &qword_27FEDD8F0, &qword_261D0F100, MEMORY[0x277CC8C98]);
        v83 = &v264;
        v96 = v218;
        sub_261CFF964();
        (*v248)(v95, v96);
        (*v86)(v89, v88);
        v87 = 0;
        v97 = 0;
        v59 = v90;
        v92 = v90 == v60;
        v71 = v261;
        v93 = v255;
        v85 = v256;
        v94 = v254;
      }

      while (!v92);
    }

    else
    {
      v97 = 1;
      v93 = v255;
      v94 = v254;
    }

LABEL_42:
    v98 = v229;
    v59 = v246;
    v99 = v251;
    v100 = v252;
    v101 = v226;
    if ((v94 & 1) == 0)
    {
      v102 = v264[2];
      if (v102 > v93)
      {
        if (__OFSUB__(v102, v93))
        {
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
          sub_261D00654();
          __break(1u);
          goto LABEL_146;
        }

        sub_261C6EE08(v102 - v93);
      }
    }

    if ((v97 & 1) == 0)
    {
      (*(v220 + 56))(v228, 1, 1, v98);
      sub_261C6F064(&qword_280D224C8, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
      sub_261C6F064(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
      sub_261CFCFB4();
      v121 = v235;
      return (*(v59 + 8))(v99, v121);
    }

    v103 = v264[2];
    v250 = v264;
    v245 = v103;
    if (v103)
    {
      v104 = *(v247 + 36);
      v105 = v264 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
      v256 = *(v257 + 72);
      v258 = v104;
      v259 = v101 + 48;
      v106 = MEMORY[0x277D84F90];
      do
      {
        sub_261C6F0D4(v105, v253, type metadata accessor for SectionEntity);
        v107 = v239;
        sub_261CFCA04();
        v108 = *v259;
        if ((*v259)(v107, 1, v100))
        {
          sub_261AE6A40(v107, &unk_27FEDE0C0, &unk_261D02500);
          v109 = 0;
        }

        else
        {
          sub_261C6F0D4(v107 + *(v100 + 20), v71, type metadata accessor for AppEntityID);
          sub_261AE6A40(v107, &unk_27FEDE0C0, &unk_261D02500);
          v110 = objc_allocWithZone(MEMORY[0x277D44700]);
          v111 = sub_261CFD814();
          v112 = sub_261CFFA54();
          v113 = v110;
          v71 = v261;
          v109 = [v113 initWithUUID:v111 entityName:v112];

          v100 = v252;
          sub_261C6F13C(v71, type metadata accessor for AppEntityID);
        }

        v114 = v240;
        sub_261CFCA04();
        if (v108(v114, 1, v100))
        {
          sub_261C6F13C(v253, type metadata accessor for SectionEntity);
          sub_261AE6A40(v114, &unk_27FEDE0C0, &unk_261D02500);
          v115 = 0;
          v116 = 0;
        }

        else
        {
          v117 = v232;
          sub_261C6F0D4(v114, v232, type metadata accessor for ListEntity);
          sub_261AE6A40(v114, &unk_27FEDE0C0, &unk_261D02500);
          sub_261CFCA04();
          v115 = v262[0];
          v116 = v262[1];
          sub_261C6F13C(v117, type metadata accessor for ListEntity);
          sub_261C6F13C(v253, type metadata accessor for SectionEntity);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_261B41EC8(0, v106[2] + 1, 1, v106);
        }

        v119 = v106[2];
        v118 = v106[3];
        if (v119 >= v118 >> 1)
        {
          v106 = sub_261B41EC8((v118 > 1), v119 + 1, 1, v106);
        }

        v106[2] = v119 + 1;
        v120 = &v106[3 * v119];
        v120[4] = v109;
        v120[5] = v115;
        v120[6] = v116;
        v105 += v256;
        v103 = (v103 - 1);
        v100 = v252;
      }

      while (v103);
      v122 = v221;
      v123 = v219;
    }

    else
    {
      v106 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        v124 = MEMORY[0x277D84F98];
        v122 = v221;
        v123 = v219;
LABEL_65:
        v262[0] = v124;
        v125 = v260;
        sub_261C6F4EC(v106, 1, v262);
        v83 = v125;
        if (!v125)
        {

          v126 = v262[0];
          v127 = sub_261CFD104();
          v128 = sub_261C6F7A8(v127);
          v260 = 0;

          v129 = v128 + 8;
          v130 = 1 << *(v128 + 32);
          v131 = -1;
          if (v130 < 64)
          {
            v131 = ~(-1 << v130);
          }

          v60 = v131 & v128[8];
          v59 = (v130 + 63) >> 6;
          v253 = (v220 + 56);
          v248 = (v122 + 32);
          v254 = (v237 + 16);
          v256 = v237 + 32;
          v243 = v237 + 8;
          v242 = v237 + 40;
          v132 = sub_261CFD104();
          v133 = 0;
          v255 = MEMORY[0x277D84F98];
          v259 = v132;
          while (v60)
          {
LABEL_75:
            v136 = __clz(__rbit64(v60));
            v60 &= v60 - 1;
            v137 = (v133 << 9) | (8 * v136);
            v138 = *(*(v132 + 48) + v137);
            if (v138 && *(v126 + 16))
            {
              v139 = *(*(v132 + 56) + v137);
              v140 = v138;
              sub_261CFD104();
              v141 = sub_261B37DF8(v138);
              if (v142)
              {
                v143 = (*(v126 + 56) + 16 * v141);
                v144 = v143[1];
                v240 = *v143;
                v239 = v144;
                sub_261CFD104();
                v241 = v140;

                v145 = *(v139 + 16);
                v225 = v126;
                v232 = v139;
                if (v145)
                {
                  v263 = MEMORY[0x277D84F90];
                  v258 = v145;
                  sub_261B3A1F4(0, v145, 0);
                  v146 = v263;
                  v147 = v139 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
                  v244 = *(v257 + 72);
                  v148 = v224;
                  v149 = v228;
                  v150 = v216;
                  do
                  {
                    v249 = v147;
                    sub_261C6F0D4(v147, v150, type metadata accessor for SectionEntity);
                    sub_261C6F0D4(v150, v148, type metadata accessor for SectionEntity);
                    sub_261CFD2D4();
                    sub_261CFD664();
                    (*v253)(v149, 1, 1, v229);
                    v151 = sub_261CFD074();
                    (*(*(v151 - 8) + 56))(v215, 1, 1, v151);
                    sub_261C6F064(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
                    sub_261CFC7F4();
                    sub_261C6F13C(v150, type metadata accessor for SectionEntity);
                    v263 = v146;
                    v153 = *(v146 + 16);
                    v152 = *(v146 + 24);
                    if (v153 >= v152 >> 1)
                    {
                      sub_261B3A1F4((v152 > 1), v153 + 1, 1);
                      v146 = v263;
                    }

                    *(v146 + 16) = v153 + 1;
                    (*(v221 + 32))(v146 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v153, v223, v214);
                    v92 = v258-- == 1;
                    v149 = v228;
                    v148 = v224;
                    v150 = v216;
                    v147 = v249 + v244;
                  }

                  while (!v92);
                  v154 = v236;
                  v155 = v211;
                  v123 = v219;
                }

                else
                {
                  v146 = MEMORY[0x277D84F90];
                  v155 = v211;
                  v154 = v236;
                }

                sub_261CFD664();
                v156 = sub_261C6F064(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
                MEMORY[0x2667195E0](v155, v146, v247, v156);
                (*v254)(v212, v123, v154);
                v83 = v255;
                v157 = swift_isUniquelyReferenced_nonNull_native();
                v262[0] = v83;
                v158 = sub_261B37CA4(v241);
                v160 = *(v83 + 16);
                v161 = (v159 & 1) == 0;
                v81 = __OFADD__(v160, v161);
                v162 = v160 + v161;
                if (v81)
                {
                  goto LABEL_143;
                }

                v163 = v159;
                if (*(v83 + 24) >= v162)
                {
                  v165 = v212;
                  if ((v157 & 1) == 0)
                  {
                    v174 = v158;
                    sub_261CA4B58();
                    v165 = v212;
                    v158 = v174;
                  }
                }

                else
                {
                  sub_261CA3744(v162, v157);
                  v83 = v262[0];
                  v158 = sub_261B37CA4(v241);
                  if ((v163 & 1) != (v164 & 1))
                  {
                    goto LABEL_145;
                  }

                  v165 = v212;
                }

                v166 = v262[0];
                v255 = v262[0];
                if (v163)
                {
                  v167 = v237;
                  v168 = v236;
                  (*(v237 + 40))(*(v262[0] + 56) + *(v237 + 72) * v158, v165, v236);

                  v169 = v241;

                  (*(v167 + 8))(v123, v168);
                }

                else
                {
                  *(v262[0] + 8 * (v158 >> 6) + 64) |= 1 << v158;
                  v170 = v241;
                  *(v166[6] + 8 * v158) = v241;
                  v83 = v237;
                  v171 = v236;
                  (*(v237 + 32))(v166[7] + *(v237 + 72) * v158, v165, v236);

                  (*(v83 + 8))(v123, v171);
                  v172 = v166[2];
                  v81 = __OFADD__(v172, 1);
                  v173 = v172 + 1;
                  if (v81)
                  {
                    goto LABEL_144;
                  }

                  v166[2] = v173;
                }

                v126 = v225;
                v132 = v259;
              }

              else
              {

                v132 = v259;
              }
            }
          }

          v134 = v234;
          while (1)
          {
            v135 = v133 + 1;
            if (__OFADD__(v133, 1))
            {
              goto LABEL_135;
            }

            if (v135 >= v59)
            {
              break;
            }

            v60 = v129[v135];
            ++v133;
            if (v60)
            {
              v133 = v135;
              v123 = v219;
              goto LABEL_75;
            }
          }

          v262[0] = MEMORY[0x277D84F90];
          v175 = v245;
          if (v245)
          {
            v59 = v246;
            v176 = *(v247 + 36);
            v177 = v250 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
            v258 = *(v257 + 72);
            v259 = v176;
            v178 = (v226 + 48);
            v257 = MEMORY[0x277D84F90];
            v179 = v252;
            v180 = v233;
            do
            {
              sub_261C6F0D4(v177, v134, type metadata accessor for SectionEntity);
              sub_261CFCA04();
              if ((*v178)(v180, 1, v179))
              {
                sub_261C6F13C(v134, type metadata accessor for SectionEntity);
                sub_261AE6A40(v180, &unk_27FEDE0C0, &unk_261D02500);
              }

              else
              {
                v181 = v180 + *(v179 + 20);
                v182 = v180;
                v183 = v261;
                sub_261C6F0D4(v181, v261, type metadata accessor for AppEntityID);
                sub_261AE6A40(v182, &unk_27FEDE0C0, &unk_261D02500);
                v184 = objc_allocWithZone(MEMORY[0x277D44700]);
                v185 = sub_261CFD814();
                v186 = sub_261CFFA54();
                [v184 initWithUUID:v185 entityName:v186];

                sub_261C6F13C(v183, type metadata accessor for AppEntityID);
                v187 = sub_261C6F13C(v134, type metadata accessor for SectionEntity);
                MEMORY[0x26671C310](v187);
                if (*((v262[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v262[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_261CFFC84();
                }

                sub_261CFFCB4();
                v257 = v262[0];
                v59 = v246;
                v179 = v252;
                v180 = v233;
                v134 = v234;
              }

              v177 += v258;
              v175 = (v175 - 1);
            }

            while (v175);
          }

          else
          {
            v257 = MEMORY[0x277D84F90];
            v59 = v246;
          }

          v262[0] = v257;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE100, &qword_261D05750);
          sub_261B01D28(&qword_27FEDD910, &unk_27FEDE100, &qword_261D05750, MEMORY[0x277D83970]);
          sub_261B3B918();
          v60 = sub_261CFFC34();

          if (v60 >> 62)
          {
            goto LABEL_141;
          }

          for (i = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
          {
            v121 = v235;
            v99 = v251;
            v189 = v255;
            if (!i)
            {
              break;
            }

            v190 = 0;
            v261 = v60 & 0xC000000000000001;
            v259 = v60 & 0xFFFFFFFFFFFFFF8;
            v191 = MEMORY[0x277D84F90];
            v258 = i;
            while (1)
            {
              if (v261)
              {
                v192 = MEMORY[0x26671CA10](v190, v60);
              }

              else
              {
                if (v190 >= *(v259 + 16))
                {
                  goto LABEL_139;
                }

                v192 = *(v60 + 8 * v190 + 32);
              }

              v59 = v192;
              v193 = v190 + 1;
              if (__OFADD__(v190, 1))
              {
                break;
              }

              if (*(v189 + 16))
              {
                v194 = sub_261B37CA4(v192);
                if (v195)
                {
                  v196 = v60;
                  v197 = v237;
                  v198 = *(v237 + 72);
                  v199 = *(v189 + 56) + v198 * v194;
                  v200 = v231;
                  v201 = v236;
                  (*(v237 + 16))(v231, v199, v236);

                  v202 = *(v197 + 32);
                  v203 = v200;
                  v204 = v230;
                  v202(v230, v203, v201);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v191 = sub_261B41CBC(0, *(v191 + 2) + 1, 1, v191);
                  }

                  v206 = *(v191 + 2);
                  v205 = *(v191 + 3);
                  v207 = v237;
                  if (v206 >= v205 >> 1)
                  {
                    v191 = sub_261B41CBC((v205 > 1), v206 + 1, 1, v191);
                    v207 = v237;
                  }

                  *(v191 + 2) = v206 + 1;
                  v202(&v191[((*(v207 + 80) + 32) & ~*(v207 + 80)) + v206 * v198], v204, v236);
                  v121 = v235;
                  v99 = v251;
                  v189 = v255;
                  v60 = v196;
                  i = v258;
                }

                else
                {

                  v121 = v235;
                }
              }

              else
              {
              }

              ++v190;
              v59 = v246;
              if (v193 == i)
              {
                goto LABEL_126;
              }
            }

LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            ;
          }

LABEL_126:

          (*v253)(v228, 1, 1, v229);
          sub_261C6F064(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
          sub_261CFCFC4();
          return (*(v59 + 8))(v99, v121);
        }

LABEL_146:

        __break(1u);
        return result;
      }

      v122 = v221;
      v123 = v219;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDF40, &qword_261D0F140);
    v124 = sub_261D00544();
    goto LABEL_65;
  }

  v262[0] = MEMORY[0x277D84F90];
  sub_261B3A1D4(0, v56, 0);
  v57 = 0;
  v58 = v250;
  v244 = v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
  v259 = v262[0];
  v243 = v250 + 16;
  LODWORD(v242) = v245 & 1;
  v245 = (v250 + 8);
  LODWORD(v241) = v241 & 1;
  v59 = v209;
  v60 = v208;
  while (1)
  {
    if (v57 >= *(v55 + 16))
    {
      goto LABEL_136;
    }

    (*(v58 + 16))(v60, v244 + *(v58 + 72) * v57, v59);
    v61 = sub_261CFF1A4();
    MEMORY[0x28223BE20](v61);
    *(&v208 - 6) = v60;
    *(&v208 - 40) = v242;
    v62 = v249;
    *(&v208 - 4) = v248;
    *(&v208 - 3) = v62;
    *(&v208 - 16) = v241;
    v63 = v260;
    v64 = sub_261C6662C(sub_261C6F0AC, (&v208 - 8), v61);
    v260 = v63;
    if (v63)
    {
      break;
    }

    v65 = v64;

    (*v245)(v60, v59);
    v66 = v259;
    v262[0] = v259;
    v68 = *(v259 + 16);
    v67 = *(v259 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_261B3A1D4((v67 > 1), v68 + 1, 1);
      v60 = v208;
      v59 = v209;
      v66 = v262[0];
    }

    ++v57;
    *(v66 + 16) = v68 + 1;
    v259 = v66;
    *(v66 + 8 * v68 + 32) = v65;
    v58 = v250;
    v52 = v251;
    if (v56 == v57)
    {

      v60 = v259;
      goto LABEL_12;
    }
  }

  (*(v246 + 8))(v52, v235);

  (*v245)(v60, v59);
}

uint64_t REMStoreIntentPerformer.entities(query:matching:mode:sortedBy:limit:excludeSectionlessSections:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v9 + 48) = a6;
  *(v9 + 56) = v8;
  *(v9 + 74) = a8;
  *(v9 + 73) = a7;
  *(v9 + 32) = a3;
  *(v9 + 40) = a5;
  *(v9 + 72) = a4;
  *(v9 + 24) = a1;
  *(v9 + 64) = *v8;
  return MEMORY[0x2822009F8](sub_261C6C5A4, 0, 0);
}

uint64_t sub_261C6C5A4()
{
  v26 = v0;
  if (qword_27FED9C28 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDD890);
  sub_261CFD104();
  sub_261CFD104();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v24 = *(v0 + 73);
    v4 = *(v0 + 72);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25[0] = v8;
    *v7 = 134218754;
    *(v7 + 4) = *(v6 + 16);

    *(v7 + 12) = 2082;
    v9 = v4 & 1;
    *(v0 + 16) = v4 & 1;
    v10 = sub_261CFFAB4();
    v12 = sub_261B879C8(v10, v11, v25);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2082;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8B0, &qword_261D0F0D0);
    v14 = MEMORY[0x26671C340](v5, v13);
    v16 = sub_261B879C8(v14, v15, v25);

    *(v7 + 24) = v16;
    *(v7 + 32) = 2082;
    if (v24)
    {
      v17 = 0xE300000000000000;
      v18 = 7104878;
    }

    else
    {
      *(v0 + 16) = *(v0 + 48);
      v18 = sub_261CFFAB4();
      v17 = v20;
    }

    v21 = sub_261B879C8(v18, v17, v25);

    *(v7 + 34) = v21;
    _os_log_impl(&dword_261AE2000, v2, v3, "[SectionEntitySectionPropertyQueryPerforming] Query (list) sections matching comparators.count %ld, mode %{public}s, sorted by %{public}s, limit %{public}s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  else
  {
    v19 = *(v0 + 72);

    v9 = v19 & 1;
  }

  sub_261C6A4D8(*(v0 + 32), v9, 1, *(v0 + 40), *(v0 + 48), *(v0 + 73) & 1, *(v0 + 74), *(*(v0 + 56) + 16), *(v0 + 24));
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_261C6C878@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v194 = a5;
  v192 = a4;
  v193 = a3;
  v185 = a2;
  v221 = a1;
  v196 = a6;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD940, &qword_261D04B70);
  v234 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v235 = &v177 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298);
  MEMORY[0x28223BE20](v7 - 8);
  v179 = &v177 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v191 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v190 = &v177 - v12;
  v186 = type metadata accessor for SectionEntityID(0);
  MEMORY[0x28223BE20](v186);
  v223 = (&v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v220 = sub_261CFF184();
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v218 = &v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for SectionEntity(0);
  v195 = *(v230 - 8);
  v15 = MEMORY[0x28223BE20](v230);
  v231 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v236 = (&v177 - v17);
  v214 = sub_261CFEC94();
  MEMORY[0x28223BE20](v214);
  v215 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_261CFD674();
  v240 = *(v243 - 1);
  MEMORY[0x28223BE20](v243);
  v226 = &v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_261CFD884();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v232 = &v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_261CFFA44();
  MEMORY[0x28223BE20](v21 - 8);
  v225 = &v177 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v23 - 8);
  v238 = &v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v217 = &v177 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v216 = &v177 - v29;
  MEMORY[0x28223BE20](v28);
  v229 = &v177 - v30;
  v242 = sub_261CFF384();
  v31 = *(v242 - 8);
  v32 = MEMORY[0x28223BE20](v242);
  v34 = &v177 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v241 = &v177 - v35;
  v36 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v36);
  v38 = (&v177 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v237 = type metadata accessor for ListEntity(0);
  v187 = *(v237 - 1);
  v39 = MEMORY[0x28223BE20](v237);
  v188 = &v177 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v189 = &v177 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v222 = &v177 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v239 = (&v177 - v46);
  MEMORY[0x28223BE20](v45);
  v227 = &v177 - v47;
  v48 = sub_261CFF394();
  v49 = [v48 entityName];
  v50 = sub_261CFFA74();
  v52 = v51;

  v53 = [v48 uuid];
  sub_261CFD834();

  v184 = v36;
  v54 = *(v36 + 24);
  v55 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v56 = *(v55 - 8);
  v57 = *(v56 + 56);
  v181 = v56 + 56;
  v57(v38 + v54, 1, 1, v55);
  *v38 = v50;
  v38[1] = v52;
  v228 = v38;
  v58 = v241;
  v59 = sub_261CFF3A4();
  v61 = v60;
  sub_261CFF3B4();
  v62 = v242;
  (*(v31 + 16))(v34, v58, v242);
  v63 = (*(v31 + 88))(v34, v62);
  v64 = v63 == *MEMORY[0x277D45520];
  v183 = v55;
  v182 = v57;
  v213 = v59;
  v212 = v61;
  if (!v64)
  {
    if (v63 == *MEMORY[0x277D45510])
    {
      v209 = 1;
      goto LABEL_6;
    }

    if (v63 != *MEMORY[0x277D45518])
    {
LABEL_36:
      result = sub_261D00604();
      __break(1u);
      return result;
    }
  }

  v209 = 0;
LABEL_6:
  (*(v31 + 8))(v58, v62);
  v65 = type metadata accessor for GroupEntity(0);
  (*(*(v65 - 8) + 56))(v229, 1, 1, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v206 = sub_261AFF54C();
  v66 = sub_261CFCA44();
  v67 = v239;
  v211 = v66;
  *v239 = v66;
  v68 = v67;
  v69 = v237[6];
  v70 = v237;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v210 = sub_261CFCB24();
  *(v68 + v69) = v210;
  v208 = v70[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v241) = *MEMORY[0x277CC9110];
  v71 = v240 + 104;
  v242 = *(v240 + 104);
  v72 = v226;
  v73 = v243;
  (v242)();
  v240 = v71;
  v74 = v238;
  sub_261CFD6B4();
  v75 = MEMORY[0x2667199E0](v74, &type metadata for UpdateListNameAppIntent);
  v76 = v239;
  *(v239 + v208) = v75;
  v77 = v237;
  v207 = v237[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v78 = v241;
  (v242)(v72, v241, v73);
  v79 = v238;
  sub_261CFD6B4();
  v80 = sub_261AFF5A0();
  v208 = MEMORY[0x2667199D0](v79, &type metadata for UpdateListColorAppIntent, v80);
  *(v76 + v207) = v208;
  v205 = v77[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  sub_261CFD874();
  v81 = v73;
  v82 = v242;
  (v242)(v72, v78, v81);
  v83 = v238;
  sub_261CFD6B4();
  v84 = sub_261AFF5F4();
  v207 = MEMORY[0x2667199D0](v83, &type metadata for UpdateListBadgeAppIntent, v84);
  v85 = v239;
  *(v239 + v205) = v207;
  v204 = v237[10];
  v86 = v237;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  sub_261CFD874();
  v82(v72, v78, v243);
  v87 = v238;
  sub_261CFD6B4();
  v88 = sub_261C6F064(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  v205 = MEMORY[0x2667199D0](v87, &type metadata for UpdateListParentAppIntent, v88);
  *(v85 + v204) = v205;
  v203 = v86[11];
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v89 = v241;
  v91 = v242;
  v90 = v243;
  (v242)(v72, v241, v243);
  sub_261CFD6B4();
  v204 = sub_261CFCA84();
  v92 = v239;
  *(v239 + v203) = v204;
  v202 = v237[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v91(v72, v89, v90);
  sub_261CFD6B4();
  sub_261C6F064(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v203 = sub_261CFCA54();
  v93 = v92;
  *(v92 + v202) = v203;
  v94 = v237;
  v201 = v237[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v95 = v72;
  v96 = v72;
  v97 = v241;
  v98 = v243;
  (v242)(v96, v241, v243);
  v99 = v238;
  sub_261CFD6B4();
  v202 = MEMORY[0x2667199F0](v99, &type metadata for UpdateListIsPinnedAppIntent);
  *(v93 + v201) = v202;
  v200 = v94[14];
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v100 = v242;
  (v242)(v95, v97, v98);
  v101 = v99;
  sub_261CFD6B4();
  v201 = MEMORY[0x2667199F0](v99, &type metadata for UpdateListShowsCompletedAppIntent);
  v102 = v239;
  *(v239 + v200) = v201;
  v199 = v94[15];
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v103 = v241;
  v104 = v243;
  v100(v95, v241, v243);
  sub_261CFD6B4();
  v200 = MEMORY[0x2667199F0](v101, &type metadata for UpdateListAutoCategorizeAppIntent);
  *(v102 + v199) = v200;
  v105 = v237;
  v198 = v237[16];
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  sub_261CFD874();
  v106 = v103;
  v107 = v242;
  (v242)(v95, v106, v104);
  sub_261CFD6B4();
  v108 = sub_261AFF648();
  v109 = MEMORY[0x2667199C0](v101, &type metadata for UpdateListListLayoutAppIntent, v108);
  v110 = v239;
  v199 = v109;
  *(v239 + v198) = v109;
  v197 = v105[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v107(v95, v241, v243);
  sub_261CFD6B4();
  v111 = sub_261AFF69C();
  v198 = MEMORY[0x2667199C0](v101, &type metadata for UpdateListSortingStyleAppIntent, v111);
  *(v110 + v197) = v198;
  v112 = v105[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  (v242)(v95, v241, v243);
  sub_261CFD6B4();
  *(v110 + v112) = MEMORY[0x2667199C0](v101, &type metadata for UpdateListTypeAppIntent, v206);
  v113 = (v110 + v105[19]);
  *v113 = 0;
  v113[1] = 0;
  v114 = v105[20];
  *(v110 + v114) = 0;
  sub_261C6F0D4(v228, v110 + v105[5], type metadata accessor for AppEntityID);
  v115 = v209;
  *(v110 + v105[21]) = v209;
  v206 = v114;
  if (v115)
  {
    v116 = sub_261D00614();
  }

  else
  {
    v116 = 1;
  }

  type metadata accessor for AnyListEntityLazyImage(0);
  v117 = swift_allocObject();
  *&v246 = MEMORY[0x277D84F90];
  sub_261C6F064(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0, MEMORY[0x277D83970]);
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v117 + 128) = sub_261CFECA4();
  v118 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v119 = sub_261CFD074();
  (*(*(v119 - 8) + 56))(v117 + v118, 1, 1, v119);
  *(v117 + 16) = v116 & 1;
  *(v117 + 17) = *v250;
  *(v117 + 20) = *&v250[3];
  *(v117 + 24) = 0u;
  *(v117 + 40) = 0u;
  *(v117 + 56) = 0u;
  *(v117 + 72) = 0u;
  *(v117 + 88) = 0u;
  *(v117 + 104) = 0u;
  *(v117 + 120) = 256;
  v120 = v239;
  *(v239 + v105[22]) = v117;
  LOBYTE(v246) = 0;
  sub_261CFD2E4();
  LOBYTE(v246) = 0;
  sub_261CFD2E4();
  LOBYTE(v246) = 0;
  sub_261CFD2E4();
  LOBYTE(v246) = 2;
  sub_261CFD2E4();
  LOBYTE(v246) = 10;
  sub_261CFD2E4();
  LOBYTE(v246) = 2;
  sub_261CFD2E4();
  v249 = 0;
  v247 = 0u;
  v248 = 0u;
  v246 = 0u;
  sub_261CFD2E4();
  *&v248 = 0;
  v246 = 0u;
  v247 = 0u;
  sub_261CFD2E4();
  v121 = v229;
  v122 = v216;
  sub_261AFB668(v229, v216, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v122, v217, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v122, &unk_27FEDD950, &unk_261D01440);
  *v113 = 0;
  v113[1] = 0;
  *(v120 + v206) = 0;
  *&v246 = 0;
  sub_261CFCA14();
  *&v246 = 0;
  sub_261CFCA14();
  *&v246 = v213;
  *(&v246 + 1) = v212;
  sub_261CFCA14();
  LOBYTE(v246) = 0;
  sub_261CFCA14();
  sub_261AE6A40(v121, &unk_27FEDD950, &unk_261D01440);
  sub_261C6F13C(v228, type metadata accessor for AppEntityID);
  v123 = v120;
  v124 = v227;
  sub_261C6FCC8(v123, v227, type metadata accessor for ListEntity);
  v125 = v218;
  sub_261CFF194();
  v126 = v219;
  v127 = v220;
  v128 = (*(v219 + 11))(v125, v220);
  if (v128 == *MEMORY[0x277D453E0])
  {
    (*(v126 + 12))(v125, v127);
    v129 = *v125;
    v239 = *(v125 + 1);
    v229 = *(v125 + 2);

    v130 = v129;
    v131 = [v130 entityName];
    v132 = sub_261CFFA74();
    v134 = v133;

    v135 = v130;
    v228 = v130;
    v136 = [v130 uuid];
    v137 = v184;
    v138 = v223;
    sub_261CFD834();

    v182(v138 + *(v137 + 24), 1, 1, v183);
    *v138 = v132;
    v138[1] = v134;
    swift_storeEnumTagMultiPayload();
    v219 = type metadata accessor for ListEntity;
    sub_261C6F0D4(v124, v222, type metadata accessor for ListEntity);
    v221 = sub_261CFCB24();
    v139 = v236;
    *v236 = v221;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
    v216 = sub_261C6F064(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    v220 = sub_261CFCA64();
    v139[1] = v220;
    v217 = *(v230 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
    sub_261CFF9B4();
    sub_261CFD874();
    v140 = v226;
    v141 = v242;
    v142 = v243;
    (v242)(v226, v241, v243);
    v143 = v238;
    sub_261CFD6B4();
    v218 = MEMORY[0x2667199E0](v143, &type metadata for UpdateSectionDisplayNameAppIntent);
    *(v139 + v217) = v218;
    v144 = v230;
    v215 = *(v230 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
    sub_261CFF9B4();
    sub_261CFD874();
    v145 = v241;
    v141(v140, v241, v142);
    sub_261CFD6B4();
    v217 = MEMORY[0x2667199F0](v143, &type metadata for UpdateSectionIsCollapsedAppIntent);
    v146 = v236;
    *&v215[v236] = v217;
    v215 = v144[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
    sub_261CFF9B4();
    sub_261CFD874();
    v147 = v145;
    v148 = v242;
    (v242)(v140, v147, v243);
    sub_261CFD6C4();
    v216 = sub_261CFCA54();
    *&v215[v146] = v216;
    v215 = v144[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
    sub_261CFF9B4();
    sub_261CFD874();
    v148(v140, v241, v243);
    sub_261CFD6C4();
    sub_261C6F064(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
    *&v215[v146] = sub_261CFCA54();
    v149 = v223;
    sub_261C6F0D4(v223, v146 + v144[6], type metadata accessor for SectionEntityID);
    v150 = v222;
    v151 = v190;
    v152 = v219;
    sub_261C6F0D4(v222, v190, v219);
    (*(v187 + 56))(v151, 0, 1, v237);
    sub_261AFB668(v151, v191, &unk_27FEDE0C0, &unk_261D02500);
    sub_261CFCA14();
    sub_261AE6A40(v151, &unk_27FEDE0C0, &unk_261D02500);
    v153 = v239;
    *&v246 = v239;
    *(&v246 + 1) = v229;
    v154 = v229;
    sub_261CFD104();
    sub_261CFD2E4();
    LOBYTE(v246) = 0;
    sub_261CFD2E4();
    *&v246 = v153;
    *(&v246 + 1) = v154;
    sub_261CFCA14();
    v155 = v189;
    sub_261C6F0D4(v150, v189, v152);
    sub_261C6F0D4(v155, v188, v152);
    sub_261CFCA14();

    sub_261C6F13C(v155, type metadata accessor for ListEntity);
    sub_261C6F13C(v150, type metadata accessor for ListEntity);
    sub_261C6F13C(v149, type metadata accessor for SectionEntityID);
    v156 = v224;
    v157 = v235;
    goto LABEL_15;
  }

  v156 = v224;
  if (v128 != *MEMORY[0x277D453D8])
  {
    sub_261D00604();
    __break(1u);
    goto LABEL_36;
  }

  v157 = v235;
  if (v185)
  {
    v158 = type metadata accessor for ListEntity;
    v159 = v124;
    goto LABEL_33;
  }

  sub_261CF3F80(v124, v236);
LABEL_15:
  if ((v194 & 1) == 0)
  {
    v168 = v236;
    sub_261CFD2D4();
    if (*(&v246 + 1))
    {
      v169 = v179;
      sub_261CFD874();
      (*(v177 + 56))(v169, 0, 1, v178);
      sub_261B3BA3C();
      v170 = sub_261D00194();
      v172 = v171;
      sub_261AE6A40(v169, &qword_27FEDA708, &qword_261D03298);

      *&v246 = v170;
      *(&v246 + 1) = v172;
      v244 = v193;
      v245 = v192;
      v173 = sub_261D00184();
      sub_261C6F13C(v227, type metadata accessor for ListEntity);

      if (v173)
      {
        v174 = v168;
LABEL_31:
        v175 = v196;
        sub_261C6FCC8(v174, v196, type metadata accessor for SectionEntity);
        return (*(v195 + 56))(v175, 0, 1, v230);
      }
    }

    else
    {
      sub_261C6F13C(v227, type metadata accessor for ListEntity);
    }

    v158 = type metadata accessor for SectionEntity;
    v159 = v168;
LABEL_33:
    sub_261C6F13C(v159, v158);
    return (*(v195 + 56))(v196, 1, 1, v230);
  }

  v160 = sub_261CFD1E4();
  v161 = v160;
  v162 = *(v193 + 16);
  if (!v162)
  {
    LOBYTE(v165) = v160;
LABEL_29:
    sub_261C6F13C(v227, type metadata accessor for ListEntity);
    if (v165)
    {
      v174 = v236;
      goto LABEL_31;
    }

    v158 = type metadata accessor for SectionEntity;
    v159 = v236;
    goto LABEL_33;
  }

  v243 = *(v234 + 16);
  v163 = (v234 + 8);
  v164 = v193 + ((*(v234 + 80) + 32) & ~*(v234 + 80));
  v234 += 16;
  v242 = *(v234 + 56);
  v165 = v160;
  v166 = v233;
  while (1)
  {
    (v243)(v157, v164, v166);
    if ((v161 ^ v165))
    {
      (*v163)(v157, v166);
      goto LABEL_29;
    }

    v167 = v231;
    sub_261C6F0D4(v236, v231, type metadata accessor for SectionEntity);
    *&v246 = v167;
    v165 = sub_261CFDAD4();
    (*v163)(v157, v166);
    if (v156)
    {
      break;
    }

    sub_261C6F13C(v167, type metadata accessor for SectionEntity);
    v164 += v242;
    --v162;
    v157 = v235;
    if (!v162)
    {
      goto LABEL_29;
    }
  }

  sub_261C6F13C(v227, type metadata accessor for ListEntity);
  sub_261C6F13C(v236, type metadata accessor for SectionEntity);
  return sub_261C6F13C(v167, type metadata accessor for SectionEntity);
}

unint64_t sub_261C6EE08(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return sub_261C6F42C(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_261C6EE30(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_261B0D584;

  return REMStoreIntentPerformer.entities(query:for:)(v4, a2);
}

uint64_t sub_261C6EEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.entities(query:matching:)(a1, v8, a3, a4);
}

uint64_t sub_261C6EF7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_261AF4BDC;

  return REMStoreIntentPerformer.entities(query:matching:mode:sortedBy:limit:excludeSectionlessSections:)(a1, v16, a3, a4 & 1, a5, a6, a7 & 1, a8);
}

uint64_t sub_261C6F064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261C6F0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261C6F13C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_261C6F19C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v7 = *(result + 40);
  v8 = *a3;
  v9 = *(result + 32);
  swift_unknownObjectRetain();
  result = sub_261B37CA4(v9);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v15) = v10;
  if (v8[3] < v14)
  {
    sub_261CA4344(v14, v5 & 1);
    result = sub_261B37CA4(v9);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    result = sub_261D00654();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v17 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17[(result >> 6) + 8] |= 1 << result;
    *(v17[6] + 8 * result) = v9;
    *(v17[7] + 8 * result) = v7;
    v21 = v17[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v17[2] = v22;
    v15 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_261CA51C4();
  result = v20;
  v17 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = *(v17[7] + 8 * result);
  v19 = result;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  *(v17[7] + 8 * v19) = v18;
  result = swift_unknownObjectRelease();
  v15 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 56);
    v3 = 1;
    while (1)
    {
      v6 = *v5;
      v25 = *a3;
      v7 = *(v5 - 1);
      swift_unknownObjectRetain();
      result = sub_261B37CA4(v7);
      v27 = v25[2];
      v28 = (v26 & 1) == 0;
      v13 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v13)
      {
        goto LABEL_23;
      }

      v9 = v26;
      if (v25[3] < v29)
      {
        sub_261CA4344(v29, 1);
        result = sub_261B37CA4(v7);
        if ((v9 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      v31 = *a3;
      if (v9)
      {
        v23 = *(v31[7] + 8 * result);
        v24 = result;
        swift_unknownObjectRetain();

        swift_unknownObjectRelease();
        *(v31[7] + 8 * v24) = v23;
        result = swift_unknownObjectRelease();
      }

      else
      {
        v31[(result >> 6) + 8] |= 1 << result;
        *(v31[6] + 8 * result) = v7;
        *(v31[7] + 8 * result) = v6;
        v32 = v31[2];
        v13 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v31[2] = v33;
      }

      v5 += 2;
      if (!--v15)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_261C6F42C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_261B41C94(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_261C146CC(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_261C6F4EC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = a3;
    LOBYTE(v5) = a2;
    v6 = result;
    v7 = *(result + 32);
    v43 = *(result + 40);
    v8 = *(result + 48);
    v9 = *a3;
    sub_261CFD104();
    v10 = v7;
    result = sub_261B37DF8(v7);
    v12 = *(v9 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    LOBYTE(v16) = v11;
    v44 = v4;
    if (*(v9 + 24) < v15)
    {
      sub_261CA3490(v15, v5 & 1);
      result = sub_261B37DF8(v7);
      if ((v16 & 1) == (v17 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD938, &unk_261D0F170);
      result = sub_261D00654();
      __break(1u);
    }

    if ((v5 & 1) == 0)
    {
      v24 = result;
      sub_261CA49F0();
      result = v24;
      v18 = *v44;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

LABEL_7:
    v18 = *v4;
    if (v16)
    {
LABEL_8:
      v19 = 16 * result;
      v20 = (v18[7] + 16 * result);
      v22 = *v20;
      v21 = v20[1];
      sub_261CFD104();

      v23 = (v18[7] + v19);
      *v23 = v22;
      v23[1] = v21;

LABEL_12:
      v16 = v3 - 1;
      v4 = v44;
      if (v3 == 1)
      {
        return result;
      }

      v5 = (v6 + 72);
      while (1)
      {
        v8 = *(v5 - 2);
        v3 = *(v5 - 1);
        v6 = *v5;
        v33 = *v4;
        sub_261CFD104();
        v7 = v8;
        result = sub_261B37DF8(v8);
        v35 = *(v33 + 16);
        v36 = (v34 & 1) == 0;
        v14 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v14)
        {
          goto LABEL_23;
        }

        v10 = v34;
        if (*(v33 + 24) < v37)
        {
          sub_261CA3490(v37, 1);
          result = sub_261B37DF8(v8);
          if ((v10 & 1) != (v38 & 1))
          {
            goto LABEL_5;
          }
        }

        v39 = *v4;
        if (v10)
        {
          v28 = 16 * result;
          v29 = (v39[7] + 16 * result);
          v31 = *v29;
          v30 = v29[1];
          sub_261CFD104();

          v32 = (v39[7] + v28);
          *v32 = v31;
          v32[1] = v30;
        }

        else
        {
          v39[(result >> 6) + 8] |= 1 << result;
          *(v39[6] + 8 * result) = v8;
          v40 = (v39[7] + 16 * result);
          *v40 = v3;
          v40[1] = v6;
          v41 = v39[2];
          v14 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v14)
          {
            goto LABEL_24;
          }

          v39[2] = v42;
        }

        v5 += 3;
        --v16;
        v4 = v44;
        if (!v16)
        {
          return result;
        }
      }
    }

LABEL_10:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = v7;
    v25 = (v18[7] + 16 * result);
    *v25 = v43;
    v25[1] = v8;
    v26 = v18[2];
    v14 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v27;
    goto LABEL_12;
  }

  return result;
}

void *sub_261C6F7A8(uint64_t a1)
{
  v45 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v45);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v51 = type metadata accessor for SectionEntity(0);
  v6 = MEMORY[0x28223BE20](v51);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  v11 = MEMORY[0x277D84F98];
  v53 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v47 = *(v8 + 80);
  v13 = *(v8 + 72);
  v49 = (v47 + 32) & ~v47;
  v14 = a1 + v49;
  v46 = xmmword_261D03450;
  v48 = &v43 - v9;
  v52 = v13;
  while (1)
  {
    sub_261C6F0D4(v14, v10, type metadata accessor for SectionEntity);
    sub_261CFCA04();
    v17 = type metadata accessor for ListEntity(0);
    if ((*(*(v17 - 8) + 48))(v5, 1, v17))
    {
      sub_261AE6A40(v5, &unk_27FEDE0C0, &unk_261D02500);
      v18 = 0;
    }

    else
    {
      v19 = v44;
      sub_261C6F0D4(&v5[*(v17 + 20)], v44, type metadata accessor for AppEntityID);
      sub_261AE6A40(v5, &unk_27FEDE0C0, &unk_261D02500);
      v20 = objc_allocWithZone(MEMORY[0x277D44700]);
      v21 = sub_261CFD814();
      v22 = sub_261CFFA54();
      v18 = [v20 initWithUUID:v21 entityName:v22];

      v23 = v19;
      v10 = v48;
      sub_261C6F13C(v23, type metadata accessor for AppEntityID);
    }

    v25 = sub_261B37DF8(v18);
    v26 = v11[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v11[3] < v28)
    {
      sub_261CA347C(v28, 1);
      v11 = v53;
      v30 = sub_261B37DF8(v18);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_22;
      }

      v25 = v30;
    }

    if (v29)
    {

      v32 = v11[7];
      sub_261C6FCC8(v10, v50, type metadata accessor for SectionEntity);
      v33 = *(v32 + 8 * v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v25) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_261B41C94(0, v33[2] + 1, 1, v33);
        *(v32 + 8 * v25) = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        v33 = sub_261B41C94((v35 > 1), v36 + 1, 1, v33);
        *(v32 + 8 * v25) = v33;
      }

      v33[2] = v36 + 1;
      v15 = v33 + v49;
      v16 = v52;
      sub_261C6FCC8(v50, &v15[v36 * v52], type metadata accessor for SectionEntity);
      v10 = v48;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD930, &qword_261D03358);
      v37 = v49;
      v38 = swift_allocObject();
      *(v38 + 16) = v46;
      sub_261C6FCC8(v10, v38 + v37, type metadata accessor for SectionEntity);
      v11[(v25 >> 6) + 8] |= 1 << v25;
      *(v11[6] + 8 * v25) = v18;
      *(v11[7] + 8 * v25) = v38;
      v39 = v11[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_21;
      }

      v11[2] = v41;
      v16 = v52;
    }

    v14 += v16;
    if (!--v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD938, &unk_261D0F170);
  result = sub_261D00654();
  __break(1u);
  return result;
}

uint64_t sub_261C6FCC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261C6FD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a2;
  v5 = type metadata accessor for SectionEntity(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9 - 8];
  UpdateSectionAppIntent.init()(&v18);
  v11 = v18;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  sub_261B2EAD0(a1, v10);
  sub_261B2EAD0(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B2EB34(v10);

  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD2D4();
  sub_261CFCBC4();
  sub_261CFD2D4();
  sub_261CFCBC4();
  sub_261CFCA04();
  sub_261CFCBC4();
  sub_261AE498C(v16, &v18);
  sub_261AE498C(&v18, v17);
  sub_261CFC674();
  __swift_destroy_boxed_opaque_existential_0(&v18);

  *a3 = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  return result;
}

uint64_t UpdateSectionAppIntent.perform()(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  sub_261CFFD24();
  *(v2 + 104) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 112) = v5;
  *(v2 + 120) = v4;

  return MEMORY[0x2822009F8](sub_261C7004C, v5, v4);
}

uint64_t sub_261C7004C()
{
  sub_261B30804(v0 + 16, v0 + 56);
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_261BC28BC;
  v2 = *(v0 + 96);

  return sub_261C54060(v2, "UpdateSectionAppIntent", 22, 2, v0 + 16);
}

uint64_t sub_261C7017C(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateSectionAppIntent.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t static UpdateSectionAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDD9F8 = a1;
  return result;
}

uint64_t sub_261C703D0()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDDA00);
  __swift_project_value_buffer(v6, qword_27FEDDA00);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateSectionAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C30 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDA00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateSectionAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t sub_261C70978(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for SectionEntity(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261B2EAD0(a1, &v10 - v7);
  sub_261B2EAD0(v8, v6);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B2EB34(v8);
}

uint64_t UpdateSectionAppIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for SectionEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B2EAD0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t (*UpdateSectionAppIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C70BFC(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateSectionAppIntent.displayName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261C70D6C(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateSectionAppIntent.isCollapsed.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateSectionAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v77 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v1 - 8);
  v61 = &v47 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v47 - v4;
  v75 = sub_261CFD674();
  v78 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v59 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD6A4();
  v71 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v58 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_261CFD184();
  v13 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v51 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v57 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v47 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v47 - v24;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  v26 = *(v11 + 56);
  v70 = v11 + 56;
  v74 = v26;
  v27 = v25;
  v26(v25, 1, 1, v10);
  v55 = sub_261CFF994();
  v80 = 0;
  v81 = 0;
  v28 = *(v55 - 8);
  v54 = *(v28 + 56);
  v56 = v28 + 56;
  v52 = v22;
  v54(v22, 1, 1, v55);
  v29 = sub_261CFC834();
  v30 = *(v29 - 8);
  v72 = *(v30 + 56);
  v73 = v30 + 56;
  v72(v19, 1, 1, v29);
  v76 = *MEMORY[0x277CBA308];
  v63 = *(v13 + 104);
  v67 = v13 + 104;
  v31 = v51;
  v63(v51);
  *v77 = sub_261CFCD04();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA398, &unk_261D02CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v66 = *MEMORY[0x277CC9110];
  v32 = *(v78 + 104);
  v78 += 104;
  v65 = v32;
  v33 = v59;
  v32(v59);
  sub_261CFD6B4();
  v48 = v27;
  v74(v27, 1, 1, v71);
  v34 = type metadata accessor for SectionEntity(0);
  (*(*(v34 - 8) + 56))(v60, 1, 1, v34);
  v49 = v19;
  v64 = v29;
  v35 = v72;
  v72(v19, 1, 1, v29);
  v35(v57, 1, 1, v29);
  v36 = v31;
  v37 = v31;
  v38 = v62;
  v39 = v63;
  (v63)(v37, v76, v62);
  sub_261BB64D0();
  v40 = v36;
  v77[1] = sub_261CFCC34();
  sub_261CFF9B4();
  sub_261CFD874();
  v65(v33, v66, v75);
  sub_261CFD6B4();
  v41 = v48;
  v74(v48, 1, 1, v71);
  v80 = 0;
  v81 = 0;
  v54(v52, 1, 1, v55);
  v42 = v49;
  v72(v49, 1, 1, v64);
  (v39)(v40, v76, v38);
  v43 = sub_261CFCD24();
  v44 = v77;
  v77[2] = v43;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  sub_261CFF9B4();
  sub_261CFD874();
  v65(v33, v66, v75);
  sub_261CFD6B4();
  v74(v41, 1, 1, v71);
  LOBYTE(v80) = 2;
  v45 = sub_261CFFCE4();
  (*(*(v45 - 8) + 56))(v61, 1, 1, v45);
  v72(v42, 1, 1, v64);
  (v63)(v40, v76, v62);
  v44[3] = sub_261CFCD44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A8, &qword_261D02CF0);
  v79 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v44[4] = result;
  return result;
}

unint64_t sub_261C7198C()
{
  result = qword_27FEDDA18;
  if (!qword_27FEDDA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDA18);
  }

  return result;
}

uint64_t sub_261C71A64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C30 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDA00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C71B54(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  sub_261CFFD24();
  *(v2 + 104) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 112) = v5;
  *(v2 + 120) = v4;

  return MEMORY[0x2822009F8](sub_261C71BFC, v5, v4);
}

uint64_t sub_261C71BFC()
{
  sub_261B30804(v0 + 16, v0 + 56);
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_261BC3C30;
  v2 = *(v0 + 96);

  return sub_261C54060(v2, "UpdateSectionAppIntent", 22, 2, v0 + 16);
}

uint64_t sub_261C71CC8(uint64_t a1)
{
  v2 = sub_261C30BF4();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t destroy for UpdateSectionAppIntent(void *a1)
{
}

uint64_t *initializeWithCopy for UpdateSectionAppIntent(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for UpdateSectionAppIntent(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  return a1;
}

void *assignWithTake for UpdateSectionAppIntent(void *a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 1) = *(a2 + 16);

  a1[4] = *(a2 + 32);

  return a1;
}

uint64_t dispatch thunk of UpdateSectionIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_261C7201C()
{
  result = qword_27FEDA3F8;
  if (!qword_27FEDA3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA3B0, &qword_261D02D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA3F8);
  }

  return result;
}

uint64_t CreateListAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v64 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  MEMORY[0x28223BE20](v1 - 8);
  v53 = &v44[-v2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v44[-v4];
  v57 = sub_261CFD674();
  v50 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v49 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_261CFD6A4();
  v62 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v56 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_261CFD184();
  v13 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v15 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v44[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v44[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v44[-v23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC20, &unk_261D03A70);
  v25 = *(v11 + 56);
  v61 = v11 + 56;
  v63 = v25;
  v25(v24, 1, 1, v10);
  LOBYTE(v70) = 0;
  v26 = sub_261CFC834();
  v58 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v59 = v28;
  v60 = v27 + 56;
  v54 = v21;
  v28(v21, 1, 1, v26);
  v51 = v19;
  v28(v19, 1, 1, v26);
  v65 = *MEMORY[0x277CBA308];
  v29 = *(v13 + 104);
  v66 = v13 + 104;
  v67 = v29;
  v55 = v15;
  v29(v15);
  sub_261AFF54C();
  *v64 = sub_261CFCBF4();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v31 = v50[13];
  v32 = v49;
  v45 = *MEMORY[0x277CC9110];
  v30 = v45;
  v33 = v57;
  (v31)(v49, v45, v57);
  v50 = v31;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  (v31)(v32, v30, v33);
  sub_261CFD6C4();
  v63(v24, 0, 1, v62);
  v34 = sub_261CFF994();
  v70 = 0;
  v71 = 0;
  (*(*(v34 - 8) + 56))(v52, 1, 1, v34);
  v59(v54, 1, 1, v58);
  v67(v55, v65, v68);
  v35 = sub_261CFCD24();
  v36 = v64;
  v64[1] = v35;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB140, &unk_261D051A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v37 = v45;
  v38 = v57;
  v39 = v50;
  (v50)(v32, v45, v57);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v39(v32, v37, v38);
  sub_261CFD6C4();
  v63(v24, 0, 1, v62);
  v40 = type metadata accessor for GroupEntity(0);
  (*(*(v40 - 8) + 56))(v53, 1, 1, v40);
  v41 = v58;
  v42 = v59;
  v59(v54, 1, 1, v58);
  v42(v51, 1, 1, v41);
  v67(v55, v65, v68);
  sub_261C73B88(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  v36[2] = sub_261CFCC34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDA38, &qword_261D0F318);
  v69 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v36[3] = result;
  return result;
}

uint64_t sub_261C72ACC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261B7CD38(a1, &v10 - v7);
  sub_261B7CD38(v8, v6);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B7CDA8(v8);
}

uint64_t CreateListAppIntent.group.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B7CD38(a1, &v5 - v3);
  sub_261CFCBC4();
  return sub_261B7CDA8(a1);
}

uint64_t sub_261C72C7C(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*CreateListAppIntent.type.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C72DEC()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDDA20);
  __swift_project_value_buffer(v6, qword_27FEDDA20);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static CreateListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C38 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDA20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*CreateListAppIntent.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*CreateListAppIntent.group.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t CreateListAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261C73548, v5, v4);
}

uint64_t sub_261C73548()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_261B06958;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C5C7D0(v6, "CreateListAppIntent", 19, 2, v4, v5, v2, v3);
}

uint64_t sub_261C7363C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  sub_261CFFD24();
  v5[16] = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  v5[17] = v7;
  v5[18] = v6;

  return MEMORY[0x2822009F8](sub_261C736DC, v7, v6);
}

uint64_t sub_261C736DC()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  sub_261B24B0C(0, v4, v3, v1, v2);
  sub_261CFC664();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[7] = v4;
  v0[8] = v3;
  v0[9] = v1;
  v0[10] = v2;
  v10 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_261B06CB8;
  v8 = v0[11];

  return v10(v8, v0 + 7, v5, v6);
}

uint64_t static CreateListAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDA40, &qword_261D0F348);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDA48, &qword_261D0F350);
  MEMORY[0x28223BE20](v1);
  sub_261B31558();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDA50, &qword_261D0F380);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDA58, &qword_261D0F3B0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261C73A74()
{
  swift_getKeyPath();
  sub_261B31558();
  v0 = sub_261CFCDA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_261D030F0;
  *(v1 + 32) = v0;
  sub_261CFCDA4();
  v2 = sub_261CFD104();

  return v2;
}

unint64_t sub_261C73B34()
{
  result = qword_27FEDDA60;
  if (!qword_27FEDDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDA60);
  }

  return result;
}

uint64_t sub_261C73B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261C73BD4()
{
  result = qword_27FEDDA68;
  if (!qword_27FEDDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDA68);
  }

  return result;
}

unint64_t sub_261C73C2C()
{
  result = qword_27FEDDA70;
  if (!qword_27FEDDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDA70);
  }

  return result;
}

uint64_t sub_261C73CD0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C38 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDA20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C73D80(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261C73E24, v5, v4);
}

uint64_t sub_261C73E24()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_261B07CF8;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C5C7D0(v6, "CreateListAppIntent", 19, 2, v4, v5, v2, v3);
}

uint64_t dispatch thunk of CreateListIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_261C74064()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDA98);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDA98);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C7412C()
{
  sub_261C759F4(v0 + 16);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_261C74198(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_261CFE5A4();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  v5 = sub_261CFE504();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  sub_261CFFD24();
  *(v3 + 96) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v3 + 104) = v7;
  *(v3 + 112) = v6;

  return MEMORY[0x2822009F8](sub_261C74304, v7, v6);
}

uint64_t sub_261C74304()
{
  if (qword_27FED9C40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDDA98);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 136);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_261AE2000, v2, v3, "ReminderCreationUI: commit editing {allowingUserConfirmation: %{BOOL}d}", v5, 8u);
    MEMORY[0x26671D560](v5, -1, -1);
  }

  v6 = *(v0 + 24);

  v7 = *(v6 + 40);
  *(v0 + 120) = v7;
  if (v7)
  {
    v8 = *(*(v0 + 24) + 48);
    v9 = MEMORY[0x277D45E08];
    if (*(v0 + 136))
    {
      v9 = MEMORY[0x277D45E10];
    }

    (*(*(v0 + 40) + 104))(*(v0 + 48), *v9, *(v0 + 32));
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_261C74548;
    v12 = *(v0 + 88);
    v13 = *(v0 + 48);

    return MEMORY[0x2821A8570](v12, v13, ObjectType, v8);
  }

  else
  {

    **(v0 + 16) = 1;

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_261C74548()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 112);
  v6 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_261C75A1C, v6, v5);
}

uint64_t sub_261C746CC(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_261CFE5A4();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  v5 = sub_261CFE504();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  sub_261CFFD24();
  *(v3 + 96) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v3 + 104) = v7;
  *(v3 + 112) = v6;

  return MEMORY[0x2822009F8](sub_261C74838, v7, v6);
}

uint64_t sub_261C74838()
{
  if (qword_27FED9C40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDDA98);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 136);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_261AE2000, v2, v3, "ReminderCreationUI: cancel editing {allowingUserConfirmation: %{BOOL}d}", v5, 8u);
    MEMORY[0x26671D560](v5, -1, -1);
  }

  v6 = *(v0 + 24);

  v7 = *(v6 + 40);
  *(v0 + 120) = v7;
  if (v7)
  {
    v8 = *(*(v0 + 24) + 48);
    v9 = MEMORY[0x277D45E08];
    if (*(v0 + 136))
    {
      v9 = MEMORY[0x277D45E10];
    }

    (*(*(v0 + 40) + 104))(*(v0 + 48), *v9, *(v0 + 32));
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_261C74A7C;
    v12 = *(v0 + 88);
    v13 = *(v0 + 48);

    return MEMORY[0x2821A8568](v12, v13, ObjectType, v8);
  }

  else
  {

    **(v0 + 16) = 1;

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_261C74A7C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 112);
  v6 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_261C74C00, v6, v5);
}

uint64_t sub_261C74C00()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  v6 = *(v5 + 16);
  v6(v2, v1, v4);
  v6(v3, v2, v4);
  v7 = (*(v5 + 88))(v3, v4);
  if (v7 == *MEMORY[0x277D45E00])
  {
    v8 = 0;
LABEL_7:
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v11 = *(v0 + 56);
    v12 = *(v0 + 64);
    swift_unknownObjectRelease();
    v13 = *(v12 + 8);
    v13(v9, v11);
    v13(v10, v11);
    **(v0 + 16) = v8;

    v14 = *(v0 + 8);

    return v14();
  }

  if (v7 == *MEMORY[0x277D45DF8])
  {
    v8 = 1;
    goto LABEL_7;
  }

  if (v7 == *MEMORY[0x277D45DF0])
  {
    v8 = 2;
    goto LABEL_7;
  }

  return sub_261D00604();
}

uint64_t sub_261C74DFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_261C74E5C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_261C74EF0;
}

void sub_261C74EF0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_261C74F74()
{
  if (!*(v0 + 40))
  {
    return 0;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v1 = sub_261CFE4F4();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_261C75028(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*(v3 + 40))
  {
    return 0;
  }

  v5 = *(v3 + 48);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(a3) = a3(ObjectType, v5);
  swift_unknownObjectRelease();
  return a3 & 1;
}

uint64_t sub_261C750A4(uint64_t result)
{
  if (*(v1 + 40))
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    swift_unknownObjectRetain();
    sub_261CFE4B4();
    return swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t sub_261C75154(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF4BDC;

  return sub_261C74198(a1, a2);
}

uint64_t sub_261C751FC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return sub_261C746CC(a1, a2);
}

uint64_t sub_261C752A4()
{
  v0 = sub_261CFED34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFF674();
  v4 = *MEMORY[0x277D45918];
  v5 = sub_261CFF644();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D44EA8], v0);
  MEMORY[0x26671BD30](v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_261C753E8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, &off_287446A08, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261C754B4()
{
  qword_27FED9E08 = 0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, &off_287446A08, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261C75548()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDAB0, &qword_261D0F650);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_261CFED34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFF674();
  v9 = *MEMORY[0x277D45928];
  v10 = sub_261CFF644();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  (*(v6 + 104))(v8, *MEMORY[0x277D44EA8], v5);
  MEMORY[0x26671BD30](v8);
  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v0 + 24);
    v13 = sub_261CFE6F4();
    if (v13)
    {
      v14 = v13;
      v15 = sub_261CFE6E4();
      if (qword_27FED9B40 != -1)
      {
        swift_once();
      }

      objc_setAssociatedObject(v14, qword_27FEDC830, v15, 1);

      sub_261C17528(v14, *(v1 + 32));
      v26 = v14;
      v16 = v14;
      v17 = [v16 displayDate];
      if (v17)
      {

        qword_27FED9E08 |= 1uLL;
      }

      sub_261B71AAC();
      sub_261CFE1E4();

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDAB8, &qword_261D0F658);
      v19 = (*(*(v18 - 8) + 48))(v4, 1, v18);
      sub_261C7598C(v4);
      if (v19 != 1)
      {
        qword_27FED9E08 |= 2uLL;
      }

      ObjectType = swift_getObjectType();
      (*(v12 + 24))(v1, &off_287446A08, v16, ObjectType, v12);
    }

    else
    {
      if (qword_27FED9C40 != -1)
      {
        swift_once();
      }

      v21 = sub_261CFF7A4();
      __swift_project_value_buffer(v21, qword_27FEDDA98);
      v22 = sub_261CFF784();
      v23 = sub_261CFFE64();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_261AE2000, v22, v23, "ReminderCreationUI: unexpectedly got optimisticReminder=nil from reminderDetailDidCommit", v24, 2u);
        MEMORY[0x26671D560](v24, -1, -1);
      }

      qword_27FED9E08 = 0;
      v25 = swift_getObjectType();
      (*(v12 + 16))(v1, &off_287446A08, v25, v12);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261C7598C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDAB0, &qword_261D0F650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RemindersInCalendarEditingResult.hashValue.getter()
{
  v1 = *v0;
  sub_261D006C4();
  MEMORY[0x26671CDA0](v1);
  return sub_261D006F4();
}

unint64_t sub_261C75AAC()
{
  result = qword_27FEDDAC0;
  if (!qword_27FEDDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDAC0);
  }

  return result;
}

uint64_t AnyListEntityLazyImage.displayRepresentationImage.getter()
{
  sub_261CFECB4();
  sub_261CFCDA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  sub_261CFF654();
}

uint64_t AnyListEntityLazyImage.__allocating_init(for:)(__int128 *a1)
{
  v2 = sub_261CFEC94();
  MEMORY[0x28223BE20](v2);
  v3 = swift_allocObject();
  v11 = a1[4];
  *v12 = a1[5];
  *&v12[10] = *(a1 + 90);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  sub_261BA9C40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B7C19C();
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v3 + 128) = sub_261CFECA4();
  v4 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v5 = sub_261CFD074();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + 80) = v11;
  *(v3 + 96) = *v12;
  *(v3 + 106) = *&v12[10];
  *(v3 + 16) = v7;
  *(v3 + 32) = v8;
  *(v3 + 48) = v9;
  *(v3 + 64) = v10;
  return v3;
}

uint64_t sub_261C75D6C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDAC8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDAC8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_OWORD *AnyListEntityLazyImage.init(for:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_261CFEC94();
  MEMORY[0x28223BE20](v4);
  v12 = a1[4];
  *v13 = a1[5];
  *&v13[10] = *(a1 + 90);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  sub_261BA9C40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B7C19C();
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v1 + 128) = sub_261CFECA4();
  v5 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v6 = sub_261CFD074();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v2[5] = v12;
  v2[6] = *v13;
  *(v2 + 106) = *&v13[10];
  v2[1] = v8;
  v2[2] = v9;
  v2[3] = v10;
  v2[4] = v11;
  return v2;
}

uint64_t sub_261C75FB8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  swift_beginAccess();
  sub_261BA9C98(a1 + v9, v8);
  v10 = sub_261CFD074();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_261BBB1CC(v8);
    (*(v11 + 56))(a3, 1, 1, v10);
    sub_261CFCDA4();
    sub_261C77E20(a3, a1, a2);

    swift_beginAccess();
    sub_261C77DB0(a3, a1 + v9);
    return swift_endAccess();
  }

  else
  {
    (*(v11 + 32))(a3, v8, v10);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }
}

uint64_t sub_261C7618C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = a2[4];
  v8 = a2[6];
  v24 = a2[5];
  v25[0] = v8;
  *(v25 + 10) = *(a2 + 106);
  v9 = a2[2];
  v21[0] = a2[1];
  v21[1] = v9;
  v10 = a2[4];
  v12 = a2[1];
  v11 = a2[2];
  v22 = a2[3];
  v23 = v10;
  v13 = a2[6];
  v19 = v24;
  v20[0] = v13;
  *(v20 + 10) = *(a2 + 106);
  v15 = v12;
  v16 = v11;
  v17 = v22;
  v18 = v7;
  sub_261C78058(v21, v26);
  sub_261C762B8(&v15, v6);
  v26[4] = v19;
  v27[0] = v20[0];
  *(v27 + 10) = *(v20 + 10);
  v26[0] = v15;
  v26[1] = v16;
  v26[2] = v17;
  v26[3] = v18;
  sub_261C78090(v26);
  return sub_261C780C0(v6, a1);
}

void sub_261C762B8(char *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v89 = sub_261CFDC94();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD044();
  v92 = *(v4 - 8);
  v93 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v84 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v85 = &v77 - v8;
  MEMORY[0x28223BE20](v7);
  v91 = &v77 - v9;
  v10 = sub_261CFDED4();
  v99 = *(v10 - 1);
  v100 = v10;
  MEMORY[0x28223BE20](v10);
  v98 = (&v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_261CFF8D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v17 = a1[7];
  v18 = *(a1 + 5);
  v19 = *(a1 + 1);
  v20 = *(a1 + 1);
  v97 = *(a1 + 2);
  v22 = *(a1 + 3);
  v21 = *(a1 + 4);
  v94 = v20;
  v95 = v22;
  v96 = v21;
  v23 = *(a1 + 6);
  v90 = *(a1 + 5);
  v78 = v23;
  v24 = *(a1 + 8);
  v86 = *(a1 + 7);
  v79 = v24;
  v25 = *(a1 + 10);
  v80 = *(a1 + 9);
  v81 = v25;
  v26 = *(a1 + 12);
  v82 = *(a1 + 11);
  v83 = v26;
  v27 = a1[104];
  v28 = a1[105];
  sub_261B05020(0, &qword_280D21DD8, 0x277D85C78);
  *v15 = sub_261CFFF04();
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  LOBYTE(a1) = sub_261CFF8E4();
  (*(v13 + 8))(v15, v12);
  if (a1)
  {
    v29 = v16;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        LOBYTE(v102) = v16;
        *(&v102 + 1) = v19;
        HIBYTE(v102) = (v19 | ((v18 | (v17 << 16)) << 32)) >> 48;
        *(&v102 + 5) = (v19 | ((v18 | (v17 << 16)) << 32)) >> 32;
        v103 = v94;
        v104 = v97;
        v105 = v95;
        v106 = v96;
        v31 = sub_261CA695C();
        sub_261C76E38(v31, v101);
      }

      else
      {
        sub_261C7711C(v101);
      }

      return;
    }

    if (!v28)
    {
      v17 = **(&unk_279AFAA28 + v16);
      v19 = sub_261CFFEC4();
      v15 = sub_261CFFEB4();
      v27 = [objc_allocWithZone(sub_261CFDF14()) initWithFrame_];
      if (v19)
      {
        v30 = v19;
        sub_261CFDEF4();
      }

      else
      {
        v36 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];
        sub_261C77438(v36);
      }

      v38 = v98;
      v37 = v99;
      *v98 = 0;
      (v37)[13](v38, *MEMORY[0x277D45CB8], v100);
      sub_261CFDF04();
      [v27 setTintColor_];
      v39 = [objc_opt_self() ttr_systemWhiteColor];
      sub_261CFDEB4();
      v40 = sub_261D000A4();
      if (v40)
      {
        v41 = v40;
        v42 = UIImagePNGRepresentation(v40);
        if (v42)
        {
          v43 = v42;
          sub_261CFD774();
          v99 = v17;
          v100 = v19;

          v44 = v91;
          sub_261CFD034();
          v45 = v92;
          v46 = v15;
          v47 = v93;
          (*(v92 + 16))(v85, v44, v93);
          v48 = v101;
          sub_261CFD054();

          (*(v45 + 8))(v44, v47);
          v49 = sub_261CFD074();
          (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
          return;
        }
      }

      if (qword_27FED9C48 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_43;
    }

    if (v27 == 2)
    {
      v32 = 0;
      v33 = v97;
      if (v97)
      {
LABEL_10:
        v102 = v94;
        v103 = v33;
        v104 = v95;
        v105 = v96;
        v106 = v90;
        v34 = sub_261CA695C();
        goto LABEL_26;
      }
    }

    else
    {
      if (v86)
      {
        v102 = v78;
        v103 = v86;
        v104 = v79;
        v105 = v80;
        v106 = v81;
        v107 = v82;
        v108 = v83;
        sub_261CFD104();
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        v35 = sub_261B42C3C(v27 & 1);
      }

      else
      {
        v35 = 0;
      }

      sub_261CFDCC4();
      v55 = v87;
      sub_261CFDCB4();
      v56 = sub_261CFDC84();

      (*(v88 + 8))(v55, v89);
      v32 = v56;
      v33 = v97;
      if (v97)
      {
        goto LABEL_10;
      }
    }

    v34 = 0;
LABEL_26:
    v57 = [objc_allocWithZone(sub_261CFDF14()) initWithFrame_];
    if (v34)
    {
      v58 = v34;
    }

    else
    {
      v58 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];
      v34 = 0;
    }

    v59 = v34;
    sub_261C77438(v58);

    v61 = v98;
    v60 = v99;
    *v98 = 0;
    (v60)[13](v61, *MEMORY[0x277D45CB8], v100);
    sub_261CFDF04();
    [v57 setTintColor_];
    v62 = [objc_opt_self() ttr_systemWhiteColor];
    sub_261CFDEB4();
    v63 = sub_261D000A4();
    if (v63)
    {
      v64 = v63;
      v65 = UIImagePNGRepresentation(v63);
      if (v65)
      {
        v100 = v59;
        v66 = v65;
        sub_261CFD774();

        v67 = v84;
        if (v29)
        {
          sub_261CFD034();
        }

        else
        {
          sub_261CFD024();
        }

        v73 = v92;
        v74 = v93;
        (*(v92 + 16))(v91, v67, v93);
        v75 = v101;
        sub_261CFD054();

        (*(v73 + 8))(v67, v74);
        v76 = sub_261CFD074();
        (*(*(v76 - 8) + 56))(v75, 0, 1, v76);

LABEL_41:
        return;
      }
    }

    if (qword_27FED9C48 != -1)
    {
      swift_once();
    }

    v68 = sub_261CFF7A4();
    __swift_project_value_buffer(v68, qword_27FEDDAC8);
    v69 = sub_261CFF784();
    v70 = sub_261CFFE64();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_261AE2000, v69, v70, "AnyListEntityLazyImage.displayRepresentationImageForList: cannot load image data", v71, 2u);
      MEMORY[0x26671D560](v71, -1, -1);
    }

    v72 = sub_261CFD074();
    (*(*(v72 - 8) + 56))(v101, 1, 1, v72);

    goto LABEL_41;
  }

  __break(1u);
LABEL_43:
  swift_once();
LABEL_20:
  v50 = sub_261CFF7A4();
  __swift_project_value_buffer(v50, qword_27FEDDAC8);
  v51 = sub_261CFF784();
  v52 = sub_261CFFE64();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_261AE2000, v51, v52, "AnyListEntityLazyImage.displayRepresentationImageForList: cannot load image data", v53, 2u);
    MEMORY[0x26671D560](v53, -1, -1);
  }

  v54 = sub_261CFD074();
  (*(*(v54 - 8) + 56))(v101, 1, 1, v54);
}

uint64_t sub_261C76E38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261CFD044();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = [objc_allocWithZone(sub_261CFDF14()) initWithFrame_];
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];
  }

  v7 = a1;
  sub_261C77438(v6);
  v8 = [objc_opt_self() ttr_systemWhiteColor];
  sub_261CFDEB4();
  v9 = sub_261D000A4();
  if (v9)
  {
    v10 = v9;
    v11 = UIImagePNGRepresentation(v9);
    if (v11)
    {
      v12 = v11;
      sub_261CFD774();

      sub_261CFD034();
      sub_261CFD054();

      v13 = sub_261CFD074();
      return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
    }
  }

  if (qword_27FED9C48 != -1)
  {
    swift_once();
  }

  v15 = sub_261CFF7A4();
  __swift_project_value_buffer(v15, qword_27FEDDAC8);
  v16 = sub_261CFF784();
  v17 = sub_261CFFE64();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_261AE2000, v16, v17, "AnyListEntityLazyImage.displayRepresentationImageForBadge: cannot load image data", v18, 2u);
    MEMORY[0x26671D560](v18, -1, -1);
  }

  v19 = sub_261CFD074();
  v20 = *(*(v19 - 8) + 56);

  return v20(a2, 1, 1, v19);
}

uint64_t sub_261C7711C@<X0>(uint64_t a1@<X8>)
{
  sub_261B05020(0, &qword_27FEDDAE0, 0x277D755B8);
  v2 = sub_261D000D4();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setContentMode_];
    v5 = [objc_opt_self() secondaryLabelColor];
    [v4 setTintColor_];

    v6 = sub_261D000A4();
    if (v6)
    {
      v7 = v6;
      v8 = UIImagePNGRepresentation(v6);
      if (v8)
      {
        v9 = v8;
        sub_261CFD774();

        sub_261CFD064();
        v10 = 0;
        goto LABEL_16;
      }
    }

    if (qword_27FED9C48 != -1)
    {
      swift_once();
    }

    v14 = sub_261CFF7A4();
    __swift_project_value_buffer(v14, qword_27FEDDAC8);
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_261AE2000, v15, v16, "AnyListEntityLazyImage.displayRepresentationImage: cannot load group image data", v17, 2u);
      MEMORY[0x26671D560](v17, -1, -1);
    }
  }

  else
  {
    if (qword_27FED9C48 != -1)
    {
      swift_once();
    }

    v11 = sub_261CFF7A4();
    __swift_project_value_buffer(v11, qword_27FEDDAC8);
    v3 = sub_261CFF784();
    v12 = sub_261CFFE64();
    if (os_log_type_enabled(v3, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261AE2000, v3, v12, "AnyListEntityLazyImage.displayRepresentationImage: cannot load group image: rectangle.stack", v13, 2u);
      MEMORY[0x26671D560](v13, -1, -1);
    }
  }

  v10 = 1;
LABEL_16:

  v18 = sub_261CFD074();
  v19 = *(*(v18 - 8) + 56);

  return v19(a1, v10, 1, v18);
}

uint64_t sub_261C77438(void *a1)
{
  v2 = [a1 emoji];
  if (v2)
  {
    v3 = v2;
    sub_261CFFA74();

    v4 = sub_261CFDEE4();
    v5.n128_u64[0] = 30.0;

    return MEMORY[0x2821A81F8](v4, v5);
  }

  else
  {
    v6 = [a1 emblem];
    if (v6)
    {
      v7 = v6;
      sub_261CFFFC4();
    }

    else
    {
      sub_261CFFFC4();
    }

    return sub_261CFDEF4();
  }
}

uint64_t AnyListEntityLazyImage.deinit()
{
  sub_261C77574(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), HIBYTE(*(v0 + 120)));

  sub_261BBB1CC(v0 + OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage);
  return v0;
}

void sub_261C77574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  if (a15 == 2)
  {
  }

  else if (a15 == 1)
  {
    sub_261AF9C70(a2, a3, a4, a5, a6);

    sub_261AF98C8(a7, a8, a9, a10, a11, a12, a13);
  }
}

uint64_t AnyListEntityLazyImage.__deallocating_deinit()
{
  sub_261C77574(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), HIBYTE(*(v0 + 120)));

  sub_261BBB1CC(v0 + OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AnyListEntityLazyImage(uint64_t a1)
{
  result = qword_280D220C0;
  if (!qword_280D220C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261C77770(uint64_t a1)
{
  sub_261C77844(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_261C77844(uint64_t a1)
{
  if (!qword_280D22DC0)
  {
    sub_261CFD074();
    v1 = sub_261D00154();
    if (!v2)
    {
      atomic_store(v1, &qword_280D22DC0);
    }
  }
}

void sub_261C7789C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  if (a15 == 2)
  {
    sub_261CFCDA4();
    sub_261CFD104();
    sub_261CFCDA4();

    sub_261CFCDA4();
  }

  else if (a15 == 1)
  {
    sub_261AF9C0C(a2, a3, a4, a5, a6);

    sub_261AF9844(a7, a8, a9, a10, a11, a12, a13);
  }
}

uint64_t initializeWithCopy for AnyListEntityLazyImage.Parameters(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  v18 = *(a2 + 105);
  sub_261C7789C(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 105) = v18;
  return a1;
}

uint64_t assignWithCopy for AnyListEntityLazyImage.Parameters(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  v28 = *(a2 + 96);
  v29 = *(a2 + 104);
  v30 = *(a2 + 105);
  sub_261C7789C(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27, v28, v29, v30);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v25;
  *(a1 + 80) = v26;
  *(a1 + 88) = v27;
  *(a1 + 96) = v28;
  *(a1 + 104) = v29;
  *(a1 + 105) = v30;
  sub_261C77574(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, SHIBYTE(v23));
  return a1;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for AnyListEntityLazyImage.Parameters(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  v19 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v19;
  *(a1 + 96) = v3;
  *(a1 + 104) = v4;
  sub_261C77574(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16, SHIBYTE(v16));
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyListEntityLazyImage.Parameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 106))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 105);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyListEntityLazyImage.Parameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 105) = -a2;
    }
  }

  return result;
}

uint64_t sub_261C77D50(uint64_t a1)
{
  if (*(a1 + 105) <= 2u)
  {
    return *(a1 + 105);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_261C77D68(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    LOBYTE(a2) = 3;
    *(result + 104) = 0;
  }

  *(result + 105) = a2;
  return result;
}

uint64_t sub_261C77DB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C77E20(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  if ([objc_opt_self() isMainThread])
  {

    return sub_261C7618C(a1, a2);
  }

  else
  {
    sub_261B05020(0, &qword_280D21DD8, 0x277D85C78);
    v6 = sub_261CFFF04();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_261C78004;
    *(v7 + 24) = v10;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_261C78010;
    *(v8 + 24) = v7;
    aBlock[4] = sub_261C78038;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261C92E40;
    aBlock[3] = &block_descriptor_2;
    v9 = _Block_copy(aBlock);
    sub_261CFCDA4();

    dispatch_sync(v6, v9);

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_261CFCDA4();
}

uint64_t sub_261C780C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double ListBadgeEntity.init(emblem:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0x3A6D656C626D65;
  *&v10 = 0xE700000000000000;
  MEMORY[0x26671C210]();
  ListBadgeEntity.init(id:emblem:emoji:)(0x3A6D656C626D65, 0xE700000000000000, a1, a2, 0, 0, &v9);
  v6 = v11;
  v7 = v12;
  *a3 = v9;
  result = *&v10;
  *(a3 + 8) = v10;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  return result;
}

uint64_t ListBadgeEntity.init(id:emblem:emoji:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *&v31 = a5;
  *(&v31 + 1) = a6;
  *&v30 = a3;
  *(&v30 + 1) = a4;
  v32 = a1;
  v33 = a2;
  v34 = a7;
  v29[0] = sub_261CFEC94();
  MEMORY[0x28223BE20](v29[0]);
  v29[1] = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD674();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFD884();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_261CFFA44();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v14 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v9 + 104);
  v16(v11, v15, v8);
  sub_261CFD6C4();
  v17 = sub_261CFCB14();
  sub_261CFF9B4();
  sub_261CFD874();
  v16(v11, v15, v8);
  sub_261CFD6C4();
  v18 = sub_261CFCB14();
  v35 = v30;
  v19 = *(&v30 + 1);
  sub_261CFD104();
  sub_261CFCA14();
  v35 = v31;
  result = sub_261CFCA14();
  if (v19)
  {

    type metadata accessor for AnyListEntityLazyImage(0);
    v21 = swift_allocObject();
    *&v35 = MEMORY[0x277D84F90];
    sub_261BA9C40();
    v22 = v33;
    sub_261CFD104();
    sub_261CFCDA4();
    sub_261CFCDA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
    sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0, MEMORY[0x277D83970]);
    sub_261D001D4();
    sub_261CFECB4();
    swift_allocObject();
    *(v21 + 128) = sub_261CFECA4();
    v23 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
    v24 = sub_261CFD074();
    result = (*(*(v24 - 8) + 56))(v21 + v23, 1, 1, v24);
    v25 = v35;
    *(v21 + 72) = v36;
    v26 = v38;
    *(v21 + 88) = v37;
    *(v21 + 104) = v26;
    v27 = v32;
    *(v21 + 16) = v32;
    *(v21 + 24) = v22;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    *(v21 + 48) = 0;
    *(v21 + 120) = v39;
    *(v21 + 56) = v25;
    *(v21 + 121) = 2;
  }

  else
  {
    v21 = 0;
    v27 = v32;
    v22 = v33;
  }

  v28 = v34;
  *v34 = v27;
  v28[1] = v22;
  v28[2] = v17;
  v28[3] = v18;
  v28[4] = v21;
  return result;
}

uint64_t ListBadgeEntity.id.getter()
{
  v1 = *v0;
  sub_261CFD104();
  return v1;
}

uint64_t ListBadgeEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_261C7871C(void *a1, void *a2)
{
  sub_261CFCDA4();
  sub_261CFD104();
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ListBadgeEntity.emblem.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261C788B0(void *a1, void *a2)
{
  sub_261CFCDA4();
  sub_261CFD104();
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ListBadgeEntity.emoji.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t sub_261C78A10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_261CFD674();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_261CFD234();
  __swift_allocate_value_buffer(v10, qword_27FEDDAE8);
  __swift_project_value_buffer(v10, qword_27FEDDAE8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6C4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t static ListBadgeEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C50 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDAE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ListBadgeEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9C50 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDAE8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ListBadgeEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FED9C50 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFD234();
  __swift_project_value_buffer(v1, qword_27FEDDAE8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261C78F34@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C50 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDAE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261C78FF4(uint64_t a1)
{
  if (qword_27FED9C50 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDAE8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t ListBadgeEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v24 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = sub_261CFD074();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFD6A4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  v20 = v1[3];
  v21 = v1[4];
  v27 = *v1;
  v28 = *(v1 + 1);
  v29 = v20;
  v30 = v21;
  sub_261C794D8(&v24 - v18);
  if (!v21)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_5;
  }

  AnyListEntityLazyImage.displayRepresentationImage.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_5:
    sub_261BBB1CC(v8);
    (*(v14 + 16))(v17, v19, v13);
    (*(v14 + 56))(v25, 1, 1, v13);
    (*(v10 + 56))(v24, 1, 1, v9);
    sub_261CFD0A4();
    return (*(v14 + 8))(v19, v13);
  }

  (*(v10 + 32))(v12, v8, v9);
  (*(v14 + 16))(v17, v19, v13);
  (*(v14 + 56))(v25, 1, 1, v13);
  v22 = v24;
  (*(v10 + 16))(v24, v12, v9);
  (*(v10 + 56))(v22, 0, 1, v9);
  sub_261CFD0A4();
  (*(v10 + 8))(v12, v9);
  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_261C794D8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = sub_261CFD674();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_261CFD884();
  MEMORY[0x28223BE20](v2 - 8);
  v18 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFFA44();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA24();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFCA04();
  v10 = v24;
  if (v24)
  {
    v11 = v23;
    if (qword_27FED9C60 != -1)
    {
      v17 = v23;
      swift_once();
      v11 = v17;
    }

    v12 = qword_27FEF3EF8;
    if (*(qword_27FEF3EF8 + 16))
    {
      v13 = sub_261B37CE8(v11, v10);
      v15 = v14;

      if (v15)
      {
        (*(v7 + 16))(v9, *(v12 + 56) + *(v7 + 72) * v13, v6);
        return (*(v7 + 32))(v22, v9, v6);
      }
    }

    else
    {
    }
  }

  sub_261CFCA04();
  if (v24)
  {
    sub_261CFFA14();
    sub_261CFFA04();
    sub_261CFF9E4();

    sub_261CFFA04();
    return sub_261CFD684();
  }

  else
  {
    sub_261CFF9B4();
    sub_261CFD874();
    (*(v19 + 104))(v20, *MEMORY[0x277CC9110], v21);
    return sub_261CFD6C4();
  }
}

uint64_t sub_261C79898@<X0>(void *a1@<X8>)
{
  if (qword_27FED9C58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDDB00;
  return sub_261CFCDA4();
}

uint64_t static ListBadgeEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9C58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDDB00;
  return sub_261CFCDA4();
}

uint64_t sub_261C79998(uint64_t a1)
{
  v2 = sub_261AFF5F4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261C799E8(uint64_t a1)
{
  v2 = sub_261C7A080();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261C79A34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA338, &qword_261D02AE0);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  qword_27FEDDB00 = result;
  return result;
}

uint64_t static ListBadgeEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27FED9C58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDDB00 = v1;
}

uint64_t (*static ListBadgeEntity.defaultQuery.modify(uint64_t a1))(void)
{
  if (qword_27FED9C58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ListBadgeEntity.init(emoji:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a1;
  v20 = a2;
  v23 = a3;
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v11 - 8);
  v24 = 0x3A696A6F6D65;
  v25 = 0xE600000000000000;
  MEMORY[0x26671C210](a1, a2);
  v21 = v25;
  v22 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v12 = *MEMORY[0x277CC9110];
  v13 = *(v6 + 104);
  v13(v8, v12, v5);
  sub_261CFD6C4();
  v14 = sub_261CFCB14();
  sub_261CFF9B4();
  sub_261CFD874();
  v13(v8, v12, v5);
  sub_261CFD6C4();
  v15 = sub_261CFCB14();
  v24 = 0;
  v25 = 0;
  sub_261CFCA14();
  v24 = v19;
  v25 = v20;
  result = sub_261CFCA14();
  v17 = v23;
  v18 = v21;
  *v23 = v22;
  v17[1] = v18;
  v17[2] = v14;
  v17[3] = v15;
  v17[4] = 0;
  return result;
}

unint64_t sub_261C79EC8()
{
  result = qword_27FEDDB08;
  if (!qword_27FEDDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB08);
  }

  return result;
}

unint64_t sub_261C79F20()
{
  result = qword_27FEDDB10;
  if (!qword_27FEDDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB10);
  }

  return result;
}

unint64_t sub_261C79F78()
{
  result = qword_27FEDDB18;
  if (!qword_27FEDDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB18);
  }

  return result;
}

unint64_t sub_261C79FD4()
{
  result = qword_27FEDDB20;
  if (!qword_27FEDDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB20);
  }

  return result;
}

unint64_t sub_261C7A028()
{
  result = qword_27FEDDB28;
  if (!qword_27FEDDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB28);
  }

  return result;
}

unint64_t sub_261C7A080()
{
  result = qword_27FEDDB30;
  if (!qword_27FEDDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB30);
  }

  return result;
}

unint64_t sub_261C7A11C()
{
  result = qword_27FEDDB48;
  if (!qword_27FEDDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB48);
  }

  return result;
}

uint64_t destroy for ListBadgeEntity(void *a1)
{
}

void *initializeWithCopy for ListBadgeEntity(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

void *assignWithCopy for ListBadgeEntity(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_261CFD104();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  return a1;
}

void *assignWithTake for ListBadgeEntity(void *a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 8);

  *(a1 + 3) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for ListBadgeEntity(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for ListBadgeEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261C7A3B4()
{
  v0 = sub_261CFD884();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v264 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_261CFD674();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v264 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB848, &qword_261D07720);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD230, &qword_261D0F9D0);
  v9 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v277 = *(*(v8 - 8) + 72);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_261D0F780;
  v268 = v10;
  v11 = (v10 + v9);
  *v11 = 0x746C7561666564;
  v11[1] = 0xE700000000000000;
  v12 = v10 + v9;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v274 = __swift_project_value_buffer(v3, qword_280D27028);
  v272 = *(v4 + 16);
  v272(v6, v274, v3);
  v269 = v2;
  sub_261CFD874();
  v276 = v12;
  sub_261CFD6C4();
  v13 = v277;
  v14 = (v12 + v277);
  v275 = v8;
  v271 = v3;
  *v14 = 0x6B72616D6B6F6F62;
  v14[1] = 0xEA00000000003173;
  sub_261CFF9B4();
  v15 = v274;
  v16 = v3;
  v17 = v272;
  v272(v6, v274, v16);
  sub_261CFD874();
  sub_261CFD6C4();
  v18 = 2 * v13;
  v19 = v276;
  v20 = (v276 + 2 * v13);
  v273 = v4 + 16;
  *v20 = 0x6B72616D6B6F6F62;
  v20[1] = 0xEA00000000003273;
  sub_261CFF9B4();
  v21 = v15;
  v22 = v271;
  v17(v6, v21, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v23 = v277;
  v24 = v19 + v18 + v277;
  v270 = *(v275 + 48);
  strcpy(v24, "celebration1");
  *(v24 + 13) = 0;
  *(v24 + 14) = -5120;
  sub_261CFF9B4();
  v25 = v274;
  v26 = v22;
  v17(v6, v274, v22);
  sub_261CFD874();
  sub_261CFD6C4();
  v27 = 4 * v23;
  v28 = v19 + 4 * v23;
  v29 = v275;
  v270 = *(v275 + 48);
  strcpy(v28, "celebration2");
  *(v28 + 13) = 0;
  *(v28 + 14) = -5120;
  sub_261CFF9B4();
  v17(v6, v25, v26);
  v30 = v17;
  sub_261CFD874();
  sub_261CFD6C4();
  v31 = v277;
  v32 = (v276 + v27 + v277);
  v270 = *(v29 + 48);
  *v32 = 0x6F69746163756465;
  v32[1] = 0xEA0000000000316ELL;
  sub_261CFF9B4();
  v33 = v274;
  v30(v6, v274, v26);
  sub_261CFD874();
  sub_261CFD6C4();
  v34 = v276;
  v35 = (v276 + 6 * v31);
  *v35 = 0x6F69746163756465;
  v35[1] = 0xEA0000000000326ELL;
  sub_261CFF9B4();
  v36 = v26;
  v37 = v26;
  v38 = v272;
  v272(v6, v33, v36);
  sub_261CFD874();
  sub_261CFD6C4();
  v270 = 8 * v31;
  v39 = (v34 + 7 * v31);
  v40 = v275;
  v267 = *(v275 + 48);
  *v39 = 0x6F69746163756465;
  v39[1] = 0xEA0000000000336ELL;
  sub_261CFF9B4();
  v41 = v274;
  v38(v6, v274, v37);
  v42 = v38;
  sub_261CFD874();
  sub_261CFD6C4();
  v43 = v276;
  v44 = v270;
  v45 = (v276 + v270);
  v267 = *(v40 + 48);
  *v45 = 0x6F69746163756465;
  v45[1] = 0xEA0000000000346ELL;
  sub_261CFF9B4();
  v42(v6, v41, v37);
  sub_261CFD874();
  sub_261CFD6C4();
  v46 = v277;
  v47 = (v43 + v44 + v277);
  *v47 = 0x6F69746163756465;
  v47[1] = 0xEA0000000000356ELL;
  sub_261CFF9B4();
  v48 = v274;
  v49 = v37;
  v50 = v37;
  v51 = v272;
  v272(v6, v274, v49);
  sub_261CFD874();
  sub_261CFD6C4();
  v52 = v276;
  v53 = (v276 + 10 * v46);
  v270 = *(v275 + 48);
  *v53 = 0x3165636E616E6966;
  v53[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v51(v6, v48, v50);
  sub_261CFD874();
  sub_261CFD6C4();
  v54 = (v52 + 11 * v46);
  v55 = v275;
  *v54 = 0x3265636E616E6966;
  v54[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v56 = v50;
  v57 = v50;
  v58 = v272;
  v272(v6, v48, v57);
  sub_261CFD874();
  sub_261CFD6C4();
  v60 = v276;
  v59 = v277;
  v61 = (v276 + 12 * v277);
  v270 = *(v55 + 48);
  *v61 = 0x3365636E616E6966;
  v61[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v62 = v274;
  v58(v6, v274, v56);
  sub_261CFD874();
  sub_261CFD6C4();
  v63 = (v60 + 13 * v59);
  v64 = v275;
  v270 = *(v275 + 48);
  *v63 = 0x7373656E746966;
  v63[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v65 = v62;
  v66 = v62;
  v67 = v272;
  v272(v6, v66, v56);
  sub_261CFD874();
  sub_261CFD6C4();
  v68 = (v60 + 14 * v277);
  v270 = *(v64 + 48);
  *v68 = 0x3674726F7073;
  v68[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v67(v6, v65, v56);
  sub_261CFD874();
  sub_261CFD6C4();
  v270 = 16 * v277;
  v69 = (v60 + 15 * v277);
  v70 = v60;
  v267 = *(v64 + 48);
  *v69 = 1685024614;
  v69[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v71 = v274;
  v72 = v56;
  v73 = v272;
  v272(v6, v274, v56);
  sub_261CFD874();
  sub_261CFD6C4();
  v74 = (v70 + v270);
  *v74 = 1701734775;
  v74[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v73(v6, v71, v56);
  sub_261CFD874();
  sub_261CFD6C4();
  v75 = v277;
  v76 = (v70 + v270 + v277);
  v270 = *(v275 + 48);
  *v76 = 0x3168746C616568;
  v76[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v77 = v274;
  v73(v6, v274, v72);
  sub_261CFD874();
  sub_261CFD6C4();
  v78 = (v70 + 18 * v75);
  *v78 = 0x3268746C616568;
  v78[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v79 = v77;
  v80 = v272;
  v272(v6, v77, v72);
  sub_261CFD874();
  sub_261CFD6C4();
  v82 = v276;
  v81 = v277;
  v83 = (v276 + 19 * v277);
  v84 = v275;
  v270 = *(v275 + 48);
  *v83 = 0x6C7974736566696CLL;
  v83[1] = 0xEA00000000003165;
  sub_261CFF9B4();
  v85 = v79;
  v86 = v271;
  v80(v6, v85, v271);
  v87 = v80;
  sub_261CFD874();
  sub_261CFD6C4();
  v88 = (v82 + 20 * v81);
  v89 = v81;
  v270 = *(v84 + 48);
  v90 = v84;
  *v88 = 0x6C7974736566696CLL;
  v88[1] = 0xEA00000000003265;
  sub_261CFF9B4();
  v91 = v274;
  v87(v6, v274, v86);
  sub_261CFD874();
  sub_261CFD6C4();
  v92 = v276;
  v93 = (v276 + 21 * v89);
  v267 = *(v90 + 48);
  v270 = 0xE900000000000031;
  *v93 = 0x6E6F697461636F6CLL;
  v93[1] = 0xE900000000000031;
  sub_261CFF9B4();
  v94 = v91;
  v95 = v271;
  v87(v6, v94, v271);
  v96 = v87;
  sub_261CFD874();
  sub_261CFD6C4();
  v97 = v277;
  v98 = (v92 + 22 * v277);
  v99 = v275;
  v266 = *(v275 + 48);
  v267 = 0xE900000000000032;
  *v98 = 0x6E6F697461636F6CLL;
  v98[1] = 0xE900000000000032;
  sub_261CFF9B4();
  v100 = v274;
  v96(v6, v274, v95);
  sub_261CFD874();
  sub_261CFD6C4();
  v101 = v276;
  v102 = (v276 + 23 * v97);
  v265 = *(v99 + 48);
  v266 = 0xE900000000000033;
  *v102 = 0x6E6F697461636F6CLL;
  v102[1] = 0xE900000000000033;
  sub_261CFF9B4();
  v103 = v100;
  v104 = v95;
  v105 = v272;
  v272(v6, v103, v95);
  sub_261CFD874();
  sub_261CFD6C4();
  v106 = v277;
  v107 = (v101 + 24 * v277);
  *v107 = 0x31616964656DLL;
  v107[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v108 = v274;
  v105(v6, v274, v104);
  sub_261CFD874();
  sub_261CFD6C4();
  v109 = v276;
  v110 = (v276 + 25 * v106);
  v111 = v106;
  v112 = v275;
  v265 = *(v275 + 48);
  *v110 = 0x32616964656DLL;
  v110[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v113 = v108;
  v114 = v271;
  v105(v6, v113, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v115 = (v109 + 26 * v111);
  *v115 = 0x33616964656DLL;
  v115[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v116 = v274;
  v105(v6, v274, v114);
  sub_261CFD874();
  sub_261CFD6C4();
  v117 = v276;
  v118 = v277;
  v119 = (v276 + 27 * v277);
  v265 = *(v112 + 48);
  *v119 = 0x34616964656DLL;
  v119[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v120 = v116;
  v121 = v116;
  v122 = v271;
  v272(v6, v121, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v123 = (v117 + 28 * v118);
  *v123 = 0x35616964656DLL;
  v123[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v124 = v120;
  v125 = v122;
  v126 = v122;
  v127 = v272;
  v272(v6, v124, v125);
  sub_261CFD874();
  sub_261CFD6C4();
  v128 = v117;
  v129 = (v117 + 29 * v277);
  v265 = *(v112 + 48);
  *v129 = 0x3165727574616ELL;
  v129[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v130 = v274;
  v127(v6, v274, v126);
  sub_261CFD874();
  sub_261CFD6C4();
  v131 = v277;
  v132 = (v128 + 30 * v277);
  *v132 = 0x3265727574616ELL;
  v132[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v133 = v130;
  v134 = v271;
  v127(v6, v133, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v135 = 32 * v131;
  v136 = 31 * v131;
  v265 = 32 * v131;
  v137 = v276;
  v138 = (v276 + v136);
  v264 = *(v112 + 48);
  *v138 = 0x31656C706F6570;
  v138[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v139 = v274;
  v140 = v272;
  v272(v6, v274, v134);
  sub_261CFD874();
  sub_261CFD6C4();
  v141 = (v137 + v135);
  v142 = v137;
  *v141 = 0x32656C706F6570;
  v141[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v143 = v271;
  v140(v6, v139, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v144 = v277;
  v145 = (v142 + v265 + v277);
  v146 = v275;
  v265 = *(v275 + 48);
  *v145 = 0x33656C706F6570;
  v145[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v147 = v139;
  v148 = v272;
  v272(v6, v139, v143);
  sub_261CFD874();
  sub_261CFD6C4();
  v149 = (v276 + 34 * v144);
  *v149 = 829711728;
  v149[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v148(v6, v139, v143);
  sub_261CFD874();
  sub_261CFD6C4();
  v151 = v276;
  v150 = v277;
  v152 = (v276 + 35 * v277);
  v265 = *(v146 + 48);
  *v152 = 846488944;
  v152[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v153 = v272;
  v272(v6, v139, v143);
  sub_261CFD874();
  sub_261CFD6C4();
  v154 = (v151 + 36 * v150);
  v155 = v275;
  v265 = *(v275 + 48);
  *v154 = 863266160;
  v154[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v153(v6, v147, v143);
  sub_261CFD874();
  sub_261CFD6C4();
  v156 = (v151 + 37 * v277);
  v265 = *(v155 + 48);
  v157 = v270;
  *v156 = 0x676E6970706F6873;
  v156[1] = v157;
  v270 = 0x676E6970706F6853;
  sub_261CFF9B4();
  v153(v6, v147, v143);
  sub_261CFD874();
  sub_261CFD6C4();
  v265 = *(v155 + 48);
  v158 = v276;
  v159 = v277;
  v160 = (v276 + 38 * v277);
  *v160 = 0x676E6970706F6873;
  v160[1] = v267;
  sub_261CFF9B4();
  v161 = v274;
  v153(v6, v274, v143);
  sub_261CFD874();
  sub_261CFD6C4();
  v267 = *(v275 + 48);
  v162 = (v158 + 39 * v159);
  v163 = v159;
  *v162 = 0x676E6970706F6873;
  v162[1] = v266;
  sub_261CFF9B4();
  v164 = v271;
  v153(v6, v161, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v165 = (v158 + 40 * v163);
  v166 = v275;
  v270 = *(v275 + 48);
  *v165 = 0x676E6970706F6873;
  v165[1] = 0xE900000000000034;
  sub_261CFF9B4();
  v153(v6, v161, v164);
  v167 = v153;
  sub_261CFD874();
  sub_261CFD6C4();
  v168 = v276;
  v169 = (v276 + 41 * v163);
  v270 = *(v166 + 48);
  *v169 = 0x3174726F7073;
  v169[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v170 = v274;
  v171 = v271;
  v167(v6, v274, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v172 = (v168 + 42 * v163);
  v173 = v163;
  v174 = v275;
  v270 = *(v275 + 48);
  *v172 = 0x3274726F7073;
  v172[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v175 = v170;
  v176 = v171;
  v177 = v272;
  v272(v6, v175, v171);
  sub_261CFD874();
  sub_261CFD6C4();
  v178 = (v276 + 43 * v173);
  *v178 = 0x3374726F7073;
  v178[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v179 = v274;
  v177(v6, v274, v176);
  v180 = v177;
  sub_261CFD874();
  sub_261CFD6C4();
  v181 = v276;
  v182 = v277;
  v183 = (v276 + 44 * v277);
  v270 = *(v174 + 48);
  *v183 = 0x3474726F7073;
  v183[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v184 = v179;
  v185 = v271;
  v180(v6, v184, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v186 = (v181 + 45 * v182);
  v270 = *(v174 + 48);
  *v186 = 0x3574726F7073;
  v186[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v187 = v274;
  v180(v6, v274, v185);
  sub_261CFD874();
  sub_261CFD6C4();
  v188 = (v181 + 46 * v182);
  v189 = v275;
  *v188 = 0x726F70736E617274;
  v188[1] = 0xEA00000000003174;
  sub_261CFF9B4();
  v190 = v187;
  v191 = v272;
  v272(v6, v190, v185);
  sub_261CFD874();
  sub_261CFD6C4();
  v192 = v277;
  v193 = (v181 + 47 * v277);
  v270 = *(v189 + 48);
  *v193 = 0x726F70736E617274;
  v193[1] = 0xEA00000000003274;
  sub_261CFF9B4();
  v191(v6, v274, v185);
  sub_261CFD874();
  sub_261CFD6C4();
  v194 = (v181 + 48 * v192);
  v270 = *(v189 + 48);
  *v194 = 0x726F70736E617274;
  v194[1] = 0xEA00000000003374;
  sub_261CFF9B4();
  v195 = v274;
  v191(v6, v274, v185);
  sub_261CFD874();
  sub_261CFD6C4();
  v196 = v277;
  v197 = (v181 + 49 * v277);
  *v197 = 0x726F70736E617274;
  v197[1] = 0xEA00000000003474;
  sub_261CFF9B4();
  v191(v6, v195, v185);
  sub_261CFD874();
  sub_261CFD6C4();
  v198 = v276;
  v199 = (v276 + 50 * v196);
  *v199 = 0x6E6F697461636176;
  v199[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v191(v6, v195, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v200 = v277;
  v201 = (v198 + 51 * v277);
  *v201 = 0x3272656874616577;
  v201[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v202 = v271;
  v203 = v272;
  v272(v6, v195, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v204 = v276;
  v205 = (v276 + 52 * v200);
  v270 = *(v275 + 48);
  *v205 = 0x3172656874616577;
  v205[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v206 = v202;
  v203(v6, v274, v202);
  sub_261CFD874();
  sub_261CFD6C4();
  v207 = v277;
  v208 = (v204 + 53 * v277);
  *v208 = 0x3372656874616577;
  v208[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v209 = v274;
  v210 = v206;
  v211 = v272;
  v272(v6, v274, v210);
  sub_261CFD874();
  sub_261CFD6C4();
  v212 = (v204 + 54 * v207);
  v213 = v275;
  *v212 = 0x3472656874616577;
  v212[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v214 = v271;
  v211(v6, v209, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v215 = v276;
  v216 = v277;
  v217 = (v276 + 55 * v277);
  v270 = *(v213 + 48);
  *v217 = 0x3572656874616577;
  v217[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v218 = v274;
  v219 = v214;
  v220 = v272;
  v272(v6, v274, v219);
  sub_261CFD874();
  sub_261CFD6C4();
  v221 = (v215 + 56 * v216);
  v270 = *(v213 + 48);
  *v221 = 0x316B726F77;
  v221[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v220(v6, v218, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v222 = v276;
  v223 = (v276 + 57 * v216);
  *v223 = 0x326B726F77;
  v223[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v224 = v271;
  v220(v6, v218, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v225 = v277;
  v226 = (v222 + 58 * v277);
  v270 = *(v275 + 48);
  *v226 = 0x336B726F77;
  v226[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v227 = v218;
  v220(v6, v218, v224);
  sub_261CFD874();
  sub_261CFD6C4();
  v228 = (v276 + 59 * v225);
  *v228 = 0x346B726F77;
  v228[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v220(v6, v218, v224);
  sub_261CFD874();
  sub_261CFD6C4();
  v230 = v276;
  v229 = v277;
  v231 = (v276 + 60 * v277);
  v270 = *(v275 + 48);
  *v231 = 0x356B726F77;
  v231[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v220(v6, v227, v224);
  sub_261CFD874();
  sub_261CFD6C4();
  v232 = (v230 + 61 * v229);
  v270 = *(v275 + 48);
  *v232 = 0x31747065636E6F63;
  v232[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v220(v6, v227, v224);
  sub_261CFD874();
  sub_261CFD6C4();
  v233 = (v230 + 62 * v229);
  *v233 = 0x32747065636E6F63;
  v233[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v234 = v224;
  v220(v6, v227, v224);
  sub_261CFD874();
  sub_261CFD6C4();
  v235 = v276;
  v270 = v277 << 6;
  v236 = (v276 + 63 * v277);
  v237 = v275;
  v267 = *(v275 + 48);
  *v236 = 0x33747065636E6F63;
  v236[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v220(v6, v227, v234);
  v238 = v220;
  sub_261CFD874();
  sub_261CFD6C4();
  v239 = v270;
  v240 = (v235 + v270);
  v267 = *(v237 + 48);
  *v240 = 0x376C6F626D7973;
  v240[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v241 = v274;
  v242 = v271;
  v238(v6, v274, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v243 = v277;
  v244 = (v235 + v239 + v277);
  v270 = *(v275 + 48);
  *v244 = 0x346C6F626D7973;
  v244[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v245 = v242;
  v246 = v272;
  v272(v6, v241, v242);
  sub_261CFD874();
  sub_261CFD6C4();
  v247 = v276;
  v248 = (v276 + 66 * v243);
  v270 = *(v275 + 48);
  *v248 = 0x336C6F626D7973;
  v248[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v249 = v274;
  v250 = v245;
  v251 = v246;
  v246(v6, v274, v250);
  sub_261CFD874();
  sub_261CFD6C4();
  v252 = (v247 + 67 * v243);
  v253 = v275;
  *v252 = 0x326C6F626D7973;
  v252[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v254 = v271;
  v251(v6, v249, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v255 = v276;
  v256 = v277;
  v257 = (v276 + 68 * v277);
  v270 = *(v253 + 48);
  *v257 = 0x356C6F626D7973;
  v257[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v251(v6, v249, v254);
  sub_261CFD874();
  sub_261CFD6C4();
  v258 = (v255 + 69 * v256);
  *v258 = 0x366C6F626D7973;
  v258[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v259 = v249;
  v260 = v271;
  v251(v6, v259, v271);
  sub_261CFD874();
  sub_261CFD6C4();
  v261 = (v276 + 70 * v256);
  *v261 = 0x316C6F626D7973;
  v261[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v251(v6, v274, v260);
  sub_261CFD874();
  sub_261CFD6C4();
  v262 = sub_261C39E1C(v268);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEF3EF8 = v262;
  return result;
}

id sub_261C7D36C(uint64_t a1)
{
  v2 = sub_261C84BF4();
  v3 = sub_261C84F24();
  if (*(v2 + 2) || *(v3 + 2))
  {
    v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v5 = sub_261CFFC54();

    v6 = sub_261CFFC54();

    v7 = [v4 initWithPhones:v5 emails:v6];

    v8 = sub_261CFC954();
    (*(*(v8 - 8) + 8))(a1, v8);
  }

  else
  {

    if (qword_27FED9C68 != -1)
    {
      swift_once();
    }

    v10 = sub_261CFF7A4();
    __swift_project_value_buffer(v10, qword_27FEDDB50);
    v11 = sub_261CFF784();
    v12 = sub_261CFFE64();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261AE2000, v11, v12, "Both intentPerson.phones and intentPerson.emails is nil or empty, will not create REMContactRepresentation.", v13, 2u);
      MEMORY[0x26671D560](v13, -1, -1);
    }

    v14 = sub_261CFC954();
    (*(*(v14 - 8) + 8))(a1, v14);
    return 0;
  }

  return v7;
}

uint64_t ReminderEntity.init(reminderChangeItem:parentReminderChangeItem:subtaskChangeItems:recurrentInstanceSpecifier:)@<X0>(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v36 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  MEMORY[0x28223BE20](v10 - 8);
  v35 = v28 - v11;
  v12 = [a1 listChangeItem];
  if (!v12 || (v13 = v12, v14 = [v12 storage], v13, (v34 = v14) == 0))
  {

    sub_261B01D70();
    swift_allocError();
    *v24 = 11;
    swift_willThrow();

    v25 = a4;
    return sub_261AE6A40(v25, &qword_27FEDA108, &unk_261D020C0);
  }

  v15 = [a1 storage];
  v16 = [a1 accountCapabilities];
  v17 = v16;
  if (a2)
  {
    v31 = [a2 storage];
    v32 = v17;
    v33 = v15;
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_16:
    v26 = 0;
LABEL_20:
    v27 = v35;
    sub_261AFB668(a4, v35, &qword_27FEDA108, &unk_261D020C0);
    sub_261C7EDC4(v33, v34, v32, v31, v26, v27, v36);

    v25 = a4;
    return sub_261AE6A40(v25, &qword_27FEDA108, &unk_261D020C0);
  }

  v31 = 0;
  v32 = v16;
  v33 = v15;
  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_5:
  v30 = a2;
  if (!(a3 >> 62))
  {
    v18 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_18:

    v26 = MEMORY[0x277D84F90];
LABEL_19:
    a2 = v30;
    goto LABEL_20;
  }

  v18 = sub_261D00274();
  if (!v18)
  {
    goto LABEL_18;
  }

LABEL_7:
  v28[1] = v5;
  v29 = a4;
  v37 = MEMORY[0x277D84F90];
  result = sub_261D003A4();
  if ((v18 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x26671CA10](v20, a3);
      }

      else
      {
        v21 = *(a3 + 8 * v20 + 32);
      }

      v22 = v21;
      ++v20;
      v23 = [v21 storage];

      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
    }

    while (v18 != v20);

    v26 = v37;
    a4 = v29;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_261C7D878@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v128 = a2;
  v127 = a1;
  v140 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v4 - 8);
  v126 = &v119 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0D8, &qword_261D050F0);
  MEMORY[0x28223BE20](v6 - 8);
  v129 = &v119 - v7;
  v125 = sub_261CFC8A4();
  v124 = *(v125 - 8);
  v8 = MEMORY[0x28223BE20](v125);
  v133 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v136 = &v119 - v10;
  v134 = sub_261CFC864();
  v138 = *(v134 - 8);
  v11 = MEMORY[0x28223BE20](v134);
  v131 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v119 - v13;
  v151 = sub_261CFC8D4();
  v135 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v150 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261CFC914();
  v16 = *(v15 - 8);
  v152 = v15;
  v153 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v141 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v130 = &v119 - v19;
  v158 = sub_261CFC8F4();
  v139 = *(v158 - 8);
  v20 = MEMORY[0x28223BE20](v158);
  v149 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v137 = &v119 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA650, &qword_261D03210);
  v24 = *(v23 - 8);
  v156 = v23;
  v157 = v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v119 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v119 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = (&v119 - v34);
  sub_261B05020(0, &qword_280D21DD8, 0x277D85C78);
  sub_261CFFF04();
  sub_261CFED04();
  sub_261CFECF4();
  sub_261CFEDF4();
  swift_allocObject();
  v36 = sub_261CFEDD4();
  sub_261CFEDE4();
  v154 = v3;
  v37 = sub_261CFEDC4();
  v39 = v38;

  v159 = v37;
  v160 = v39 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDB68, &qword_261D0F9D8);
  sub_261D00704();
  sub_261C867EC(v37);
  v40 = v161;
  sub_261CFEDE4();
  v41 = sub_261CFEDB4();
  v43 = v42;

  v159 = v41;
  v160 = v43 & 1;
  sub_261D00704();
  sub_261C867EC(v41);
  if (v40)
  {
    v44 = v140;
    IntentPerson.init(fromContact:meCard:)(v40, v161, v140);

    v45 = sub_261CFC954();
    v46 = *(*(v45 - 8) + 56);
    v47 = v44;
    return v46(v47, 0, 1, v45);
  }

  v146 = v33;
  v147 = v30;
  v148 = v27;
  v123 = v161;
  v122 = v36;
  v48 = v154;
  v49 = [v154 emails];
  v50 = sub_261CFFC64();

  v51 = *(v50 + 16);
  if (v51)
  {
    v159 = MEMORY[0x277D84F90];
    sub_261B39F64(0, v51, 0);
    v52 = v159;
    v40 = (v139 + 104);
    v155 = *(v139 + 104);
    v145 = v50;
    v53 = (v50 + 40);
    do
    {
      v54 = *(v53 - 1);
      v55 = *v53;
      v56 = (v35 + *(v156 + 48));
      *v35 = v54;
      v35[1] = v55;
      *v56 = v54;
      v56[1] = v55;
      v155();
      v159 = v52;
      v58 = v52[2];
      v57 = v52[3];
      swift_bridgeObjectRetain_n();
      if (v58 >= v57 >> 1)
      {
        sub_261B39F64((v57 > 1), v58 + 1, 1);
        v52 = v159;
      }

      v52[2] = v58 + 1;
      sub_261BB4448(v35, v52 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + v157[9] * v58, &qword_27FEDA650, &qword_261D03210);
      v53 += 2;
      --v51;
    }

    while (v51);

    v48 = v154;
  }

  else
  {

    v52 = MEMORY[0x277D84F90];
  }

  v59 = [v48 phones];
  v60 = sub_261CFFC64();

  v61 = *(v60 + 16);
  if (v61)
  {
    v159 = MEMORY[0x277D84F90];
    sub_261B39F64(0, v61, 0);
    v62 = v159;
    v155 = *(v139 + 104);
    LODWORD(v154) = *MEMORY[0x277CB9D88];
    v145 = v60;
    v63 = (v60 + 40);
    v40 = v146;
    do
    {
      v64 = *(v63 - 1);
      v65 = *v63;
      v66 = (v40 + *(v156 + 48));
      *v40 = v64;
      v40[1] = v65;
      *v66 = v64;
      v66[1] = v65;
      v155();
      v159 = v62;
      v68 = v62[2];
      v67 = v62[3];
      swift_bridgeObjectRetain_n();
      if (v68 >= v67 >> 1)
      {
        sub_261B39F64((v67 > 1), v68 + 1, 1);
        v62 = v159;
      }

      v62[2] = v68 + 1;
      sub_261BB4448(v40, v62 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + v157[9] * v68, &qword_27FEDA650, &qword_261D03210);
      v63 += 2;
      --v61;
    }

    while (v61);
  }

  else
  {

    v62 = MEMORY[0x277D84F90];
  }

  v161 = v52;
  sub_261BBB8E4(v62);
  v69 = v161;
  v70 = v138;
  v71 = v137;
  if (v161[2])
  {
    v72 = (*(v157 + 80) + 32) & ~*(v157 + 80);
    sub_261AFB668(v161 + v72, v147, &qword_27FEDA650, &qword_261D03210);
    v73 = v69[2];
    if (v73)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v159 = v69;
      v75 = v158;
      v76 = v139;
      v77 = v135;
      if (!isUniquelyReferenced_nonNull_native || (v73 - 1) > v69[3] >> 1)
      {
        v69 = sub_261B41870(isUniquelyReferenced_nonNull_native, v73, 1, v69);
        v159 = v69;
      }

      sub_261C1456C(0, 1, 0);
      v78 = v147[1];
      v121 = *v147;
      v120 = v78;
      (*(v76 + 32))(v71, v147 + *(v156 + 48), v75);
      v79 = v69[2];
      if (!v79)
      {

        v102 = *(v76 + 16);
        v92 = v70;
        LODWORD(v155) = *MEMORY[0x277CB9D48];
        v157 = MEMORY[0x277D84F90];
        v94 = v130;
        v89 = v129;
        v90 = v136;
        v91 = v134;
        v93 = v132;
        v102(v149, v71, v75);
LABEL_34:
        (*(v135 + 104))(v150, v155, v151);
        sub_261CFC924();
        v103 = v127;
        v104 = v128;
        *v93 = v127;
        v93[1] = v104;
        (*(v92 + 104))(v93, *MEMORY[0x277CB9CC8], v91);
        v105 = v120;
        *v90 = v121;
        *(v90 + 1) = v105;
        v106 = v124;
        v107 = v92;
        v108 = v125;
        (*(v124 + 104))(v90, *MEMORY[0x277CB9CF8], v125);
        (*(v107 + 16))(v131, v93, v91);
        (*(v106 + 16))(v133, v90, v108);
        v110 = v152;
        v109 = v153;
        (*(v153 + 16))(v89, v94, v152);
        (*(v109 + 56))(v89, 0, 1, v110);
        v111 = v123;
        if (v123)
        {
          sub_261CFD104();
          v112 = [v111 identifier];
          v113 = sub_261CFFA74();
          v115 = v114;

          v116 = v140;
          if (v113 == v103 && v115 == v104)
          {
          }

          else
          {
            sub_261D00614();
          }

          v117 = v123;
        }

        else
        {
          sub_261CFD104();
          v117 = 0;
          v116 = v140;
        }

        v118 = sub_261CFD074();
        (*(*(v118 - 8) + 56))(v126, 1, 1, v118);
        sub_261CFC874();

        (*(v106 + 8))(v136, v108);
        (*(v138 + 8))(v132, v134);
        (*(v153 + 8))(v130, v110);
        (*(v139 + 8))(v137, v158);
        v45 = sub_261CFC954();
        v46 = *(*(v45 - 8) + 56);
        v47 = v116;
        return v46(v47, 0, 1, v45);
      }

      v161 = MEMORY[0x277D84F90];
      sub_261B39EE0(0, v79, 0);
      v70 = 0;
      v62 = v161;
      v154 = v69;
      v146 = v69 + v72;
      v80 = *MEMORY[0x277CB9D48];
      v143 = v153 + 32;
      v144 = (v77 + 104);
      v145 = (v76 + 16);
      v81 = v136;
      v40 = v141;
      v147 = ((v76 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v142 = v79;
      LODWORD(v155) = v80;
      while (v70 < *(v154 + 2))
      {
        v82 = v62;
        v83 = v81;
        v84 = v148;
        sub_261AFB668(&v146[v157[9] * v70], v148, &qword_27FEDA650, &qword_261D03210);
        v85 = v84 + *(v156 + 48);
        v141 = *v145;
        (v141)(v149, v85, v158);
        (*v144)(v150, v80, v151);
        sub_261CFC924();
        v86 = v84;
        v81 = v83;
        v62 = v82;
        sub_261AE6A40(v86, &qword_27FEDA650, &qword_261D03210);
        v161 = v82;
        v88 = v82[2];
        v87 = v82[3];
        if (v88 >= v87 >> 1)
        {
          sub_261B39EE0((v87 > 1), v88 + 1, 1);
          v81 = v136;
          v62 = v161;
        }

        ++v70;
        v62[2] = v88 + 1;
        (*(v153 + 32))(v62 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v88, v40, v152);
        v80 = v155;
        if (v142 == v70)
        {
          v157 = v62;

          v89 = v129;
          v90 = v81;
          v91 = v134;
          v92 = v138;
          v93 = v132;
          v94 = v130;
          (v141)(v149, v137, v158);
          goto LABEL_34;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_45;
  }

  v62 = v140;
  v40 = v128;
  v70 = v127;
  if (qword_27FED9C68 != -1)
  {
LABEL_45:
    swift_once();
  }

  v95 = sub_261CFF7A4();
  __swift_project_value_buffer(v95, qword_27FEDDB50);
  sub_261CFD104();
  v96 = sub_261CFF784();
  v97 = sub_261CFFE64();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v161 = v99;
    *v98 = 136315138;
    *(v98 + 4) = sub_261B879C8(v70, v40, &v161);
    _os_log_impl(&dword_261AE2000, v96, v97, "Both contactHandles.phones and contactHandles.emails is nil or empty, will not create IntentPerson for %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    MEMORY[0x26671D560](v99, -1, -1);
    MEMORY[0x26671D560](v98, -1, -1);
  }

  v100 = sub_261CFC954();
  return (*(*(v100 - 8) + 56))(v62, 1, 1, v100);
}

uint64_t ReminderEntity.init(reminder:subtasks:recurrentInstanceSpecifier:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = [a1 storage];
  v12 = [a1 list];
  v13 = [v12 storage];

  v14 = sub_261CFFDF4();
  v15 = [a1 parentReminder];
  if (v15)
  {
    v16 = v15;
    v28 = [v15 storage];

    v29 = v14;
    v30 = v13;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v23 = 0;
LABEL_16:
    sub_261AFB668(a3, v10, &qword_27FEDA108, &unk_261D020C0);
    sub_261C7EDC4(v11, v30, v29, v28, v23, v10, a4);

    return sub_261AE6A40(a3, &qword_27FEDA108, &unk_261D020C0);
  }

  v28 = 0;
  v29 = v14;
  v30 = v13;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (!(a2 >> 62))
  {
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  v17 = sub_261D00274();
  if (!v17)
  {
LABEL_15:

    v23 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

LABEL_5:
  v31 = MEMORY[0x277D84F90];
  result = sub_261D003A4();
  if ((v17 & 0x8000000000000000) == 0)
  {
    v25 = v11;
    v26 = a4;
    v27 = a3;
    v19 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x26671CA10](v19, a2);
      }

      else
      {
        v20 = *(a2 + 8 * v19 + 32);
      }

      v21 = v20;
      ++v19;
      v22 = [v20 storage];

      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
    }

    while (v17 != v19);

    v23 = v31;
    a4 = v26;
    a3 = v27;
    v11 = v25;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_261C7ECFC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDB50);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDB50);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C7EDC4@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, void *a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v326 = a5;
  v310 = a4;
  v327 = a2;
  v328 = a3;
  v322 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v302 = &v244 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v301 = &v244 - v12;
  v13 = sub_261CFD564();
  MEMORY[0x28223BE20](v13 - 8);
  v298 = &v244 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v300 = &v244 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v299 = &v244 - v18;
  v324 = sub_261CFD674();
  v323 = *(v324 - 8);
  MEMORY[0x28223BE20](v324);
  v292 = &v244 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_261CFD884();
  MEMORY[0x28223BE20](v20 - 8);
  v291 = &v244 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_261CFFA44();
  MEMORY[0x28223BE20](v22 - 8);
  v306 = &v244 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v24 - 8);
  v289 = &v244 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v294 = &v244 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v293 = &v244 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v314 = &v244 - v32;
  MEMORY[0x28223BE20](v31);
  v313 = &v244 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v307 = &v244 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v297 = &v244 - v38;
  MEMORY[0x28223BE20](v37);
  v312 = &v244 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v296 = &v244 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v295 = &v244 - v44;
  MEMORY[0x28223BE20](v43);
  v320 = &v244 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v288 = &v244 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v287 = &v244 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v319 = &v244 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v318 = &v244 - v54;
  MEMORY[0x28223BE20](v53);
  v317 = &v244 - v55;
  v56 = type metadata accessor for ListEntity(0);
  v57 = MEMORY[0x28223BE20](v56 - 8);
  v283 = &v244 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v284 = &v244 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v316 = &v244 - v62;
  MEMORY[0x28223BE20](v61);
  v309 = (&v244 - v63);
  v325 = type metadata accessor for ReminderEntity(0);
  v64 = *(v325 - 1);
  MEMORY[0x28223BE20](v325);
  v66 = (&v244 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  MEMORY[0x28223BE20](v67 - 8);
  v69 = &v244 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v71 = MEMORY[0x28223BE20](v70 - 8);
  v290 = &v244 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v311 = &v244 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v304 = (&v244 - v76);
  MEMORY[0x28223BE20](v75);
  v321 = &v244 - v77;
  v78 = type metadata accessor for AppEntityID(0);
  v79 = v78 - 8;
  v80 = MEMORY[0x28223BE20](v78);
  v315 = &v244 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v83 = (&v244 - v82);
  v84 = [a1 objectID];
  v85 = v83 + *(v79 + 32);
  v303 = a6;
  sub_261AFB668(a6, v85, &qword_27FEDA108, &unk_261D020C0);
  v86 = [v84 entityName];
  v87 = sub_261CFFA74();
  v89 = v88;

  v90 = [v84 uuid];
  sub_261CFD834();

  *v83 = v87;
  v83[1] = v89;
  v308 = v83;
  v329 = a1;
  v91 = [a1 titleAsString];
  if (v91)
  {
    v92 = v91;
    v286 = sub_261CFFA74();
    v285 = v93;
  }

  else
  {
    v286 = 0;
    v285 = 0xE000000000000000;
  }

  v94 = *(v64 + 56);
  v95 = v321;
  v96 = v325;
  v94(v321, 1, 1, v325);
  v97 = v310;
  if (v310)
  {
    v98 = type metadata accessor for RecurrentInstanceSpecifier(0);
    (*(*(v98 - 8) + 56))(v69, 1, 1, v98);
    v99 = v97;
    v100 = v327;
    v101 = v328;
    v102 = v304;
    sub_261C7EDC4(v99, v100, v101, 0, 0, v69, v304);
    v97 = &unk_27FEDE110;
    sub_261AE6A40(v95, &unk_27FEDE110, &unk_261D035B0);
    v94(v102, 0, 1, v96);
    sub_261BB4448(v102, v95, &unk_27FEDE110, &unk_261D035B0);
  }

  if (!v326)
  {
    v330 = 0;
LABEL_19:
    v64 = 0;
    goto LABEL_22;
  }

  if (v326 >> 62)
  {
    v103 = v326;
    v104 = sub_261D00274();
    if (v104)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v103 = v326;
    v104 = *((v326 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v104)
    {
LABEL_9:
      *&v334 = MEMORY[0x277D84F90];
      v105 = &v334;
      v106 = sub_261B39DB8(0, v104 & ~(v104 >> 63), 0);
      if (v104 < 0)
      {
        __break(1u);
        goto LABEL_84;
      }

      v107 = 0;
      v330 = v334;
      v108 = v103;
      v109 = v103 & 0xC000000000000001;
      v110 = v329;
      do
      {
        if (v109)
        {
          v111 = MEMORY[0x26671CA10](v107, v108);
        }

        else
        {
          v111 = *(v108 + 8 * v107 + 32);
        }

        v112 = v111;
        v113 = type metadata accessor for RecurrentInstanceSpecifier(0);
        (*(*(v113 - 8) + 56))(v69, 1, 1, v113);
        v114 = v327;
        v115 = v328;
        v116 = v110;
        sub_261C7EDC4(v112, v114, v115, v110, MEMORY[0x277D84F90], v69, v66);
        v117 = v330;
        *&v334 = v330;
        v119 = *(v330 + 16);
        v118 = *(v330 + 24);
        if (v119 >= v118 >> 1)
        {
          sub_261B39DB8((v118 > 1), v119 + 1, 1);
          v117 = v334;
        }

        ++v107;
        *(v117 + 16) = v119 + 1;
        v120 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v330 = v117;
        sub_261B837B0(v66, v117 + v120 + *(v64 + 72) * v119);
        v108 = v326;
      }

      while (v104 != v107);

      goto LABEL_19;
    }
  }

  v64 = 0;
  v330 = MEMORY[0x277D84F90];
LABEL_22:
  v121 = v317;
  v122 = v327;
  v123 = v309;
  v305 = v122;
  sub_261C81A3C(v122, v309);
  sub_261B01DC4(v308, v315, type metadata accessor for AppEntityID);
  sub_261B01DC4(v123, v316, type metadata accessor for ListEntity);
  v124 = v329;
  v282 = [v329 isCompleted];
  v125 = [v124 completionDate];
  if (v125)
  {
    v126 = v125;
    sub_261CFD7C4();

    v127 = 0;
  }

  else
  {
    v127 = 1;
  }

  v128 = sub_261CFD7E4();
  v129 = *(*(v128 - 8) + 56);
  v130 = 1;
  v129(v121, v127, 1, v128);
  v131 = [v329 creationDate];
  if (v131)
  {
    v132 = v318;
    v133 = v131;
    sub_261CFD7C4();

    v134 = v132;
    v130 = 0;
  }

  else
  {
    v134 = v318;
  }

  v135 = 1;
  v129(v134, v130, 1, v128);
  v136 = [v329 lastModifiedDate];
  if (v136)
  {
    v137 = v319;
    v138 = v136;
    sub_261CFD7C4();

    v139 = v137;
    v135 = 0;
  }

  else
  {
    v139 = v319;
  }

  v129(v139, v135, 1, v128);
  v105 = v329;
  sub_261C82D98(v320);
  v140 = [v105 fetchedDueDateDeltaAlerts];
  if (v140)
  {
    v141 = v140;
    sub_261B05020(0, &qword_27FEDDB70, 0x277D44608);
    v97 = sub_261CFFC64();

    if (v97 >> 62)
    {
      v142 = sub_261D00274();
      if (v142)
      {
LABEL_34:
        v143 = __OFSUB__(v142, 1);
        v106 = v142 - 1;
        if (!v143)
        {
          if ((v97 & 0xC000000000000001) == 0)
          {
            if ((v106 & 0x8000000000000000) != 0)
            {
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            if (v106 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

            v144 = *(v97 + 8 * v106 + 32);
            goto LABEL_39;
          }

LABEL_85:
          v144 = MEMORY[0x26671CA10](v106, v97);
LABEL_39:
          v145 = v144;

          EarlyAlertEntity.init(dueDateDeltaInterval:)([v145 dueDateDelta], &v334);

          v146 = v334;
          v280 = v335;
          v147 = &v312;
          goto LABEL_43;
        }

LABEL_84:
        __break(1u);
        goto LABEL_85;
      }
    }

    else
    {
      v142 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v142)
      {
        goto LABEL_34;
      }
    }
  }

  v334 = 0u;
  v335 = 0u;
  v146 = 0uLL;
  v281 = 0u;
  v147 = &v310;
LABEL_43:
  *(v147 - 16) = v146;
  sub_261C8350C(v312);
  sub_261C83674(v333);
  v148 = v333[0];
  v276 = v333[1];
  v275 = v333[2];
  sub_261C83950(v313);
  sub_261C83D54(v305, v314);
  v149 = [v105 notesAsString];
  if (v149)
  {
    v150 = v149;
    v151 = sub_261CFFA74();
    v153 = v152;
  }

  else
  {
    v151 = 0;
    v153 = 0;
  }

  v154 = v321;
  if ([v328 supportsFlagged])
  {
    if ([v105 flagged] <= 0)
    {
      v155 = 1;
    }

    else
    {
      v155 = 2;
    }

    v274 = v155;
  }

  else
  {
    v274 = 0;
  }

  [v105 priority];
  v327 = REMReminderPriorityLevelForPriority();
  sub_261AFB668(v154, v311, &unk_27FEDE110, &unk_261D035B0);
  v156 = [v105 hashtags];
  v279 = v151;
  v278 = v153;
  v277 = v148;
  if (v156)
  {
    v157 = v156;
    sub_261B05020(0, &qword_27FEDD488, 0x277D44648);
    sub_261C8680C();
    v158 = sub_261CFFD64();

    *&v331 = sub_261BC6AE0(v158);
    sub_261C85690(&v331);
    if (v64)
    {
LABEL_89:

      __break(1u);
      return result;
    }

    v159 = v331;
    if ((v331 & 0x8000000000000000) != 0 || (v331 & 0x4000000000000000) != 0)
    {
      v160 = sub_261D00274();
      v161 = v325;
      if (v160)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v160 = *(v331 + 16);
      v161 = v325;
      if (v160)
      {
LABEL_57:
        *&v331 = MEMORY[0x277D84F90];
        sub_261B39FA4(0, v160 & ~(v160 >> 63), 0);
        if ((v160 & 0x8000000000000000) == 0)
        {
          v162 = 0;
          v163 = v331;
          do
          {
            v164 = v163;
            if ((v159 & 0xC000000000000001) != 0)
            {
              v165 = MEMORY[0x26671CA10](v162, v159);
            }

            else
            {
              v165 = *(v159 + 8 * v162 + 32);
            }

            v166 = v165;
            v167 = [v165 name];
            v168 = sub_261CFFA74();
            v170 = v169;

            v163 = v164;
            *&v331 = v164;
            v171 = v164[2];
            v172 = v163[3];
            if (v171 >= v172 >> 1)
            {
              sub_261B39FA4((v172 > 1), v171 + 1, 1);
              v163 = v331;
            }

            ++v162;
            v163[2] = v171 + 1;
            v173 = &v163[2 * v171];
            v173[4] = v168;
            v173[5] = v170;
          }

          while (v160 != v162);
          v273 = v163;

          goto LABEL_67;
        }

        __break(1u);
        goto LABEL_87;
      }
    }

    v273 = MEMORY[0x277D84F90];
    goto LABEL_70;
  }

  v273 = 0;
LABEL_67:
  v161 = v325;
LABEL_70:
  if (v327 >= 4)
  {
    v174 = 0;
  }

  else
  {
    v174 = v327;
  }

  v264 = v174;
  v265 = sub_261C8427C();
  v266 = sub_261C848F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC998, &qword_261D0B628);
  v267 = sub_261CFCAB4();
  v175 = v322;
  *v322 = v267;
  v176 = v175;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A0, &unk_261D11CA0);
  v268 = sub_261CFCB24();
  v176[1] = v268;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A8, &qword_261D0B630);
  v269 = sub_261CFCAA4();
  v176[2] = v269;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B0, &unk_261D11CB0);
  v271 = sub_261CFCAF4();
  v176[3] = v271;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B8, &qword_261D0B638);
  sub_261AE8384(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v272 = sub_261CFCA64();
  v176[4] = v272;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C0, &unk_261D11CC0);
  v257 = sub_261AE8384(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  v270 = sub_261CFCA64();
  v176[5] = v270;
  v177 = v176;
  v262 = v161[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  sub_261CFF9B4();
  sub_261CFD874();
  v178 = *MEMORY[0x277CC9110];
  v179 = *(v323 + 104);
  v323 += 104;
  v180 = v292;
  v181 = v324;
  v179(v292, v178, v324);
  sub_261CFD6C4();
  v263 = sub_261CFCB14();
  *(v177 + v262) = v263;
  v261 = v161[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v327) = v178;
  v179(v180, v178, v181);
  sub_261CFD6C4();
  sub_261AE8384(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v262 = sub_261CFCA54();
  *(v177 + v261) = v262;
  v182 = v325;
  v260 = v325[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D0, &qword_261D0B640);
  sub_261CFF9B4();
  sub_261CFD874();
  v183 = v324;
  v179(v180, v178, v324);
  sub_261CFD6C4();
  v261 = sub_261CFCB34();
  *(v177 + v260) = v261;
  v259 = v182[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D8, &unk_261D11CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v184 = v327;
  v179(v180, v327, v183);
  v185 = v179;
  sub_261CFD6C4();
  v260 = sub_261CFCAD4();
  v186 = v322;
  *(v322 + v259) = v260;
  v187 = v325;
  v258 = v325[15];
  sub_261CFF9B4();
  sub_261CFD874();
  v188 = v324;
  v185(v180, v184, v324);
  sub_261CFD6C4();
  v259 = sub_261CFCAD4();
  *(v186 + v258) = v259;
  v255 = v187[16];
  sub_261CFF9B4();
  sub_261CFD874();
  v189 = v327;
  v326 = v185;
  v185(v180, v327, v188);
  sub_261CFD6C4();
  v258 = sub_261CFCAD4();
  v190 = v322;
  *(v322 + v255) = v258;
  v191 = v325;
  v255 = v325[17];
  sub_261CFF9B4();
  sub_261CFD874();
  v185(v180, v189, v188);
  sub_261CFD6C4();
  v256 = sub_261CFCA94();
  *(v190 + v255) = v256;
  v192 = v191[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E0, &qword_261D0B648);
  sub_261CFF9B4();
  sub_261CFD874();
  (v326)(v180, v327, v324);
  sub_261CFD6C4();
  sub_261B51818();
  v255 = sub_261CFCA54();
  *(v190 + v192) = v255;
  v253 = v191[19];
  v193 = v191;
  sub_261CFF9B4();
  sub_261CFD874();
  v194 = v327;
  v195 = v324;
  v196 = v326;
  (v326)(v180, v327, v324);
  sub_261CFD6C4();
  v254 = sub_261CFCAE4();
  *(v190 + v253) = v254;
  v252 = v193[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E8, &unk_261D11CF0);
  sub_261CFF9B4();
  sub_261CFD874();
  v197 = v195;
  v196(v180, v194, v195);
  sub_261CFD6C4();
  sub_261B5186C();
  v253 = sub_261CFCA54();
  v198 = v322;
  *(v322 + v252) = v253;
  v199 = v325;
  v251 = v325[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F0, &qword_261D0B650);
  sub_261CFF9B4();
  sub_261CFD874();
  v200 = v197;
  v201 = v326;
  (v326)(v180, v194, v200);
  sub_261CFD6C4();
  v252 = sub_261CFCA84();
  *(v198 + v251) = v252;
  v250 = v199[22];
  sub_261CFF9B4();
  sub_261CFD874();
  v202 = v324;
  v201(v180, v194, v324);
  sub_261CFD6C4();
  v251 = sub_261CFCA84();
  *(v198 + v250) = v251;
  v203 = v325;
  v249 = v325[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v204 = v327;
  v201(v180, v327, v202);
  sub_261CFD6C4();
  v250 = sub_261CFCB14();
  v205 = v322;
  *(v322 + v249) = v250;
  v248 = v203[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F8, &qword_261D0B658);
  sub_261CFF9B4();
  sub_261CFD874();
  v201(v180, v204, v202);
  sub_261CFD6C4();
  sub_261B52470();
  v249 = sub_261CFCA34();
  *(v205 + v248) = v249;
  v206 = v205;
  v207 = v325;
  v247 = v325[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA00, &unk_261D11D00);
  sub_261CFF9B4();
  sub_261CFD874();
  v208 = v204;
  v209 = v324;
  v210 = v326;
  (v326)(v180, v208, v324);
  sub_261CFD6C4();
  sub_261B524C4();
  v248 = sub_261CFCA34();
  *(v206 + v247) = v248;
  v246 = v207[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA08, &qword_261D0B660);
  sub_261CFF9B4();
  sub_261CFD874();
  v211 = v327;
  v210(v180, v327, v209);
  sub_261CFD6C4();
  v247 = sub_261CFCA54();
  v212 = v322;
  *(v322 + v246) = v247;
  v246 = v325[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  (v326)(v180, v211, v209);
  sub_261CFD6C4();
  v257 = sub_261CFCA54();
  *(v212 + v246) = v257;
  v213 = v325;
  v245 = v325[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA10, &qword_261D0B668);
  sub_261CFF9B4();
  sub_261CFD874();
  v214 = v211;
  v215 = v211;
  v216 = v324;
  v217 = v326;
  (v326)(v180, v214, v324);
  sub_261CFD6C4();
  v246 = sub_261CFCB14();
  *(v322 + v245) = v246;
  v244 = v213[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA18, &unk_261D11D20);
  sub_261CFF9B4();
  sub_261CFD874();
  v217(v180, v215, v216);
  sub_261CFD6C4();
  v245 = sub_261CFCA74();
  v218 = v322;
  *(v322 + v244) = v245;
  v219 = v213[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA20, &qword_261D0B670);
  sub_261CFF9B4();
  sub_261CFD874();
  v217(v180, v327, v324);
  sub_261CFD6C4();
  v326 = sub_261CFCAC4();
  *(v218 + v219) = v326;
  sub_261B01DC4(v315, v218 + v213[10], type metadata accessor for AppEntityID);
  v220 = v284;
  sub_261B01DC4(v316, v284, type metadata accessor for ListEntity);
  sub_261B01DC4(v220, v283, type metadata accessor for ListEntity);
  sub_261CFCA14();
  v327 = type metadata accessor for ListEntity;
  sub_261BAF87C(v220, type metadata accessor for ListEntity);
  LOBYTE(v331) = v282;
  sub_261CFCA14();
  v221 = v287;
  sub_261AFB668(v317, v287, &qword_27FEDAB68, &unk_261D11C90);
  v222 = v288;
  sub_261AFB668(v221, v288, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v221, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v318, v221, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v221, v222, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v221, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v319, v221, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v221, v222, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v221, &qword_27FEDAB68, &unk_261D11C90);
  v223 = v295;
  sub_261AFB668(v320, v295, &qword_27FEDA160, &qword_261D02220);
  v224 = v296;
  sub_261AFB668(v223, v296, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v223, &qword_27FEDA160, &qword_261D02220);
  v331 = v281;
  v332 = v280;
  sub_261CFCA14();
  v225 = v297;
  sub_261AFB668(v312, v297, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v225, v307, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v225, &qword_27FEDA9A0, &unk_261D034A0);
  *&v331 = v277;
  *(&v331 + 1) = v276;
  *&v332 = v275;
  sub_261CFCA14();
  v226 = v293;
  sub_261AFB668(v313, v293, &unk_27FEDB0B0, &unk_261D035D0);
  v227 = v294;
  sub_261AFB668(v226, v294, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v226, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v314, v226, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v226, v227, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v226, &unk_27FEDB0B0, &unk_261D035D0);
  *&v331 = v279;
  *(&v331 + 1) = v278;
  sub_261CFD104();
  sub_261CFCA14();
  LOBYTE(v331) = v274;
  sub_261CFCA14();
  LOBYTE(v331) = v264;
  sub_261CFCA14();
  v228 = v304;
  sub_261AFB668(v311, v304, &unk_27FEDE110, &unk_261D035B0);
  sub_261AFB668(v228, v290, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCA14();
  sub_261AE6A40(v228, &unk_27FEDE110, &unk_261D035B0);
  v229 = v330;
  *&v331 = v330;
  sub_261CFD104();
  sub_261CFCA14();
  v230 = v273;
  *&v331 = v273;
  sub_261CFD104();
  sub_261CFCA14();
  v231 = v265;
  v232 = MEMORY[0x277D84F90];
  if (!v265)
  {
    v231 = MEMORY[0x277D84F90];
  }

  *&v331 = v231;
  sub_261CFCA14();
  v233 = v266;
  if (!v266)
  {
    v233 = v232;
  }

  *&v331 = v233;
  sub_261CFCA14();
  *&v331 = v286;
  *(&v331 + 1) = v285;
  sub_261CFCA14();
  sub_261CFD554();
  v234 = v299;
  sub_261CFD534();
  v235 = sub_261CFD524();
  (*(*(v235 - 8) + 56))(v234, 0, 1, v235);
  sub_261AFB668(v234, v300, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCA14();
  sub_261AE6A40(v234, &qword_27FEDA9A8, &qword_261D034B0);
  if (v230)
  {
    v236 = v230;
  }

  else
  {
    v236 = v232;
  }

  *&v331 = v236;
  sub_261CFCA14();
  v237 = v320;
  sub_261AFB668(v320, v223, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v223, v224, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v223, &qword_27FEDA160, &qword_261D02220);
  v238 = v312;
  sub_261AFB668(v312, v225, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v225, v307, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v225, &qword_27FEDA9A0, &unk_261D034A0);
  v239 = type metadata accessor for SectionEntity(0);
  v240 = v301;
  (*(*(v239 - 8) + 56))(v301, 1, 1, v239);
  sub_261AFB668(v240, v302, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCA14();
  sub_261AE6A40(v240, &qword_27FEDA1E0, &unk_261D02300);
  v241 = MEMORY[0x277D84F90];
  if (v229)
  {
    v241 = v229;
  }

  *&v331 = v241;
  sub_261CFCA14();

  sub_261AE6A40(v303, &qword_27FEDA108, &unk_261D020C0);
  sub_261AE6A40(v311, &unk_27FEDE110, &unk_261D035B0);
  sub_261AE6A40(v314, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v313, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v238, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AE6A40(v237, &qword_27FEDA160, &qword_261D02220);
  sub_261AE6A40(v319, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v318, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v317, &qword_27FEDAB68, &unk_261D11C90);
  v242 = v327;
  sub_261BAF87C(v316, v327);
  sub_261BAF87C(v315, type metadata accessor for AppEntityID);
  sub_261BAF87C(v309, v242);
  sub_261AE6A40(v321, &unk_27FEDE110, &unk_261D035B0);
  return sub_261BAF87C(v308, type metadata accessor for AppEntityID);
}

uint64_t sub_261C81A3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v123 = a2;
  v113 = sub_261CFEC94();
  MEMORY[0x28223BE20](v113);
  v112 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD674();
  v121 = *(v4 - 8);
  v122 = v4;
  MEMORY[0x28223BE20](v4);
  v97 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v115 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v114 = &v92 - v15;
  MEMORY[0x28223BE20](v14);
  v117 = &v92 - v16;
  v17 = type metadata accessor for AppEntityID(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = (&v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = a1;
  v21 = [a1 objectID];
  v22 = [v21 entityName];
  v23 = sub_261CFFA74();
  v25 = v24;

  v26 = [v21 uuid];
  sub_261CFD834();

  v27 = *(v18 + 32);
  v28 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v29 = *(*(v28 - 8) + 56);
  v116 = v20;
  v29(v20 + v27, 1, 1, v28);
  *v20 = v23;
  v20[1] = v25;
  v30 = [a1 name];
  v110 = sub_261CFFA74();
  v109 = v31;

  v32 = type metadata accessor for GroupEntity(0);
  (*(*(v32 - 8) + 56))(v117, 1, 1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v105 = sub_261AFF54C();
  v108 = sub_261CFCA44();
  v33 = v123;
  *v123 = v108;
  v34 = type metadata accessor for ListEntity(0);
  v35 = *(v34 + 24);
  v36 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v107 = sub_261CFCB24();
  *(v33 + v35) = v107;
  v106 = v36[7];
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  sub_261CFD874();
  v120 = *MEMORY[0x277CC9110];
  v38 = v122;
  v39 = v121 + 104;
  v119 = *(v121 + 104);
  v40 = v97;
  v119(v97);
  sub_261CFD6B4();
  v41 = MEMORY[0x2667199E0](v10, &type metadata for UpdateListNameAppIntent);
  *(v33 + v106) = v41;
  v104 = v37[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v42 = v40;
  v43 = v120;
  v44 = v38;
  v45 = v119;
  (v119)(v40, v120, v44);
  v46 = v10;
  sub_261CFD6B4();
  v47 = sub_261AFF5A0();
  v106 = MEMORY[0x2667199D0](v10, &type metadata for UpdateListColorAppIntent, v47);
  v48 = v123;
  *(v123 + v104) = v106;
  v103 = v37[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  sub_261CFD874();
  v49 = v43;
  v50 = v122;
  v121 = v39;
  v45(v42, v49, v122);
  sub_261CFD6B4();
  v51 = sub_261AFF5F4();
  v104 = MEMORY[0x2667199D0](v10, &type metadata for UpdateListBadgeAppIntent, v51);
  *(v48 + v103) = v104;
  v102 = v37[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  sub_261CFD874();
  v52 = v120;
  v53 = v119;
  (v119)(v42, v120, v50);
  v54 = v42;
  sub_261CFD6B4();
  v55 = sub_261AE8384(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  v56 = v46;
  v103 = MEMORY[0x2667199D0](v46, &type metadata for UpdateListParentAppIntent, v55);
  v57 = v123;
  *(v123 + v102) = v103;
  v101 = v37[11];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v58 = v52;
  v59 = v52;
  v60 = v122;
  v53(v54, v58, v122);
  v118 = v56;
  sub_261CFD6B4();
  v102 = sub_261CFCA84();
  *(v57 + v101) = v102;
  v100 = v37[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v61 = v60;
  v62 = v60;
  v63 = v119;
  (v119)(v54, v59, v61);
  v64 = v118;
  v65 = v54;
  sub_261CFD6B4();
  sub_261AE8384(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v101 = sub_261CFCA54();
  v66 = v123;
  *(v123 + v100) = v101;
  v99 = v37[13];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v67 = v120;
  (v63)(v65, v120, v62);
  sub_261CFD6B4();
  v100 = MEMORY[0x2667199F0](v64, &type metadata for UpdateListIsPinnedAppIntent);
  *(v66 + v99) = v100;
  v98 = v37[14];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v68 = v122;
  v69 = v119;
  (v119)(v65, v67, v122);
  v70 = v118;
  sub_261CFD6B4();
  v99 = MEMORY[0x2667199F0](v70, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v66 + v98) = v99;
  v96 = v37[15];
  v71 = v37;
  v94 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v72 = v68;
  v73 = v68;
  v74 = v69;
  (v69)(v65, v67, v72);
  v75 = v118;
  sub_261CFD6B4();
  v76 = v75;
  v98 = MEMORY[0x2667199F0](v75, &type metadata for UpdateListAutoCategorizeAppIntent);
  v77 = v123;
  *(v123 + v96) = v98;
  v95 = v71[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  sub_261CFD874();
  v78 = v120;
  (v74)(v65, v120, v73);
  sub_261CFD6B4();
  v79 = sub_261AFF648();
  v96 = MEMORY[0x2667199C0](v76, &type metadata for UpdateListListLayoutAppIntent, v79);
  *(v77 + v95) = v96;
  v80 = v94;
  v93 = v94[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v81 = v122;
  (v74)(v65, v78, v122);
  sub_261CFD6B4();
  v82 = sub_261AFF69C();
  v95 = MEMORY[0x2667199C0](v76, &type metadata for UpdateListSortingStyleAppIntent, v82);
  v83 = v123;
  *(v123 + v93) = v95;
  v84 = v80[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  (v119)(v65, v120, v81);
  sub_261CFD6B4();
  *(v83 + v84) = MEMORY[0x2667199C0](v76, &type metadata for UpdateListTypeAppIntent, v105);
  v85 = (v83 + v80[19]);
  *v85 = 0;
  v85[1] = 0;
  v122 = v80[20];
  *(v83 + v122) = 0;
  sub_261B01DC4(v116, v83 + v80[5], type metadata accessor for AppEntityID);
  *(v83 + v80[21]) = 0;
  type metadata accessor for AnyListEntityLazyImage(0);
  v86 = swift_allocObject();
  *&v124 = MEMORY[0x277D84F90];
  sub_261AE8384(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B91FF0(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0);
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v86 + 128) = sub_261CFECA4();
  v87 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v88 = sub_261CFD074();
  (*(*(v88 - 8) + 56))(v86 + v87, 1, 1, v88);
  *(v86 + 16) = 1;
  *(v86 + 24) = 0u;
  *(v86 + 40) = 0u;
  *(v86 + 56) = 0u;
  *(v86 + 72) = 0u;
  *(v86 + 88) = 0u;
  *(v86 + 104) = 0u;
  *(v86 + 120) = 0;
  *(v86 + 121) = 1;
  *(v83 + v80[22]) = v86;
  LOBYTE(v124) = 0;
  sub_261CFD2E4();
  LOBYTE(v124) = 0;
  sub_261CFD2E4();
  LOBYTE(v124) = 0;
  sub_261CFD2E4();
  LOBYTE(v124) = 2;
  sub_261CFD2E4();
  LOBYTE(v124) = 10;
  sub_261CFD2E4();
  LOBYTE(v124) = 2;
  sub_261CFD2E4();
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v124 = 0u;
  sub_261CFD2E4();
  *&v126 = 0;
  v124 = 0u;
  v125 = 0u;
  sub_261CFD2E4();
  v89 = v117;
  v90 = v114;
  sub_261AFB668(v117, v114, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v90, v115, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v90, &unk_27FEDD950, &unk_261D01440);
  *v85 = 0;
  v85[1] = 0;
  *(v83 + v122) = 0;
  *&v124 = 0;
  sub_261CFCA14();
  *&v124 = 0;
  sub_261CFCA14();
  *&v124 = v110;
  *(&v124 + 1) = v109;
  sub_261CFCA14();
  LOBYTE(v124) = 0;
  sub_261CFCA14();

  sub_261AE6A40(v89, &unk_27FEDD950, &unk_261D01440);
  return sub_261BAF87C(v116, type metadata accessor for AppEntityID);
}

uint64_t sub_261C82D98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDBA0, &qword_261D0F9E8);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v62 - v4;
  v5 = sub_261CFD894();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v67 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFDA84();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v62 - v10;
  v11 = sub_261CFDAC4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - v15;
  v17 = sub_261CFD7E4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_261CFD4E4();
  v75 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v64 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - v24;
  v26 = v2;
  v27 = [v2 displayDate];
  if (v27)
  {
    v28 = v27;
    v63 = v21;
    v29 = [v26 allDay];
    v30 = [v28 date];
    sub_261CFD7C4();

    v31 = sub_261CFD794();
    (*(v18 + 8))(v20, v17);
    v32 = [v28 timeZone];
    v33 = v28;
    if (v32)
    {
      v62 = v11;
      v34 = v16;
      v35 = v25;
      v36 = v31;
      v37 = v29;
      v38 = v28;
      v39 = v65;
      v40 = v32;
      sub_261CFDAB4();

      v41 = *(v12 + 32);
      v42 = v66;
      v43 = v39;
      v33 = v38;
      v29 = v37;
      v31 = v36;
      v25 = v35;
      v16 = v34;
      v11 = v62;
      v41(v66, v43, v62);
      (*(v12 + 56))(v42, 0, 1, v11);
      v41(v16, v42, v11);
      v44 = v74;
    }

    else
    {
      v48 = v66;
      (*(v12 + 56))(v66, 1, 1, v11);
      sub_261CFDA94();
      v49 = (*(v12 + 48))(v48, 1, v11);
      v44 = v74;
      if (v49 != 1)
      {
        sub_261AE6A40(v48, &qword_27FEDC888, &qword_261D0B198);
      }
    }

    v50 = objc_opt_self();
    v51 = sub_261CFDAA4();
    (*(v12 + 8))(v16, v11);
    v52 = [v50 rem:v31 dateComponentsWithDate:v51 timeZone:v29 isAllDay:?];

    sub_261CFD484();
    v53 = v63;
    if (v29)
    {
      v54 = v64;
      sub_261CFD454();
      (*(v75 + 8))(v25, v53);
      (*(v75 + 32))(v25, v54, v53);
    }

    v56 = v69;
    v55 = v70;
    v57 = v67;
    (*(v69 + 104))(v67, *MEMORY[0x277CC9830], v70);
    v58 = v68;
    sub_261CFD8A4();
    (*(v56 + 8))(v57, v55);
    v60 = v71;
    v59 = v72;
    v61 = v73;
    (*(v71 + 16))(v73, v58, v72);
    (*(v60 + 56))(v61, 0, 1, v59);
    sub_261CFD4C4();

    (*(v60 + 8))(v58, v59);
    (*(v75 + 32))(v44, v25, v53);
    return (*(v75 + 56))(v44, 0, 1, v53);
  }

  else
  {
    v45 = v74;
    v46 = *(v75 + 56);

    return v46(v45, 1, 1, v21);
  }
}

void sub_261C8350C(uint64_t a1@<X8>)
{
  v3 = [v1 recurrenceRules];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  sub_261B05020(0, &qword_27FEDA9E0, 0x277D44740);
  v5 = sub_261CFFC64();

  if (v5 >> 62)
  {
    if (sub_261D00274())
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

LABEL_12:
    v7 = sub_261CFDA54();
    v8 = *(*(v7 - 8) + 56);

    v8(a1, 1, 1, v7);
    return;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26671CA10](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v9 = v6;

  REMRecurrenceRule.foundationTypeRecurrenceRule.getter(a1);
}

void sub_261C83674(void *a1@<X8>)
{
  v3 = [v1 alarms];
  if (!v3)
  {
    goto LABEL_36;
  }

  v4 = v3;
  sub_261B05020(0, &qword_27FEDA1A0, 0x277D44570);
  v5 = sub_261CFFC64();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = sub_261D00274();
  if (!v6)
  {
LABEL_35:

LABEL_36:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

LABEL_4:
  v21 = a1;
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v8)
    {
      v9 = MEMORY[0x26671CA10](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    a1 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v11 = [v9 trigger];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++v7;
    if (a1 == v6)
    {
      goto LABEL_16;
    }
  }

  v12 = [v10 trigger];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

LABEL_16:
    v15 = 0;
    while (1)
    {
      if (v8)
      {
        v16 = MEMORY[0x26671CA10](v15, v5);
      }

      else
      {
        if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v16 = *(v5 + 8 * v15 + 32);
      }

      v10 = v16;
      a1 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_32;
      }

      v17 = [v16 trigger];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v15;
      if (a1 == v6)
      {

LABEL_29:
        *v21 = 0;
        v21[1] = 0;
        v21[2] = 0;
        return;
      }
    }

    v18 = [v10 trigger];
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      sub_261B53B70(v19, &v22);
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v14 = v13;

  sub_261B53780(v14, &v22);
LABEL_27:

  v20 = v23;
  *v21 = v22;
  v21[2] = v20;
}

uint64_t sub_261C83950@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261CFD754();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v30 - v9);
  v11 = [v2 contactHandles];
  if (v11)
  {
    v12 = v11;
    v13 = [v2 objectID];
    v14 = [v13 urlRepresentation];

    sub_261CFD734();
    v15 = sub_261CFD6F4();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    sub_261C7D878(v15, v17, v10);

    v18 = sub_261CFC954();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v10, 1, v18) == 1)
    {
      sub_261AE6A40(v10, &unk_27FEDB0B0, &unk_261D035D0);
      if (qword_27FED9C68 != -1)
      {
        swift_once();
      }

      v20 = sub_261CFF7A4();
      __swift_project_value_buffer(v20, qword_27FEDDB50);
      v21 = v2;
      v22 = sub_261CFF784();
      v23 = sub_261CFFE64();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = [v21 objectID];
        *(v24 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&dword_261AE2000, v22, v23, "Failed to convert contact to IntentPerson for {reminderID: %@}", v24, 0xCu);
        sub_261AE6A40(v25, &unk_27FEDA730, &unk_261D035C0);
        MEMORY[0x26671D560](v25, -1, -1);
        MEMORY[0x26671D560](v24, -1, -1);
      }

      return (*(v19 + 56))(a1, 1, 1, v18);
    }

    else
    {

      (*(v19 + 32))(a1, v10, v18);
      return (*(v19 + 56))(a1, 0, 1, v18);
    }
  }

  else
  {
    v28 = sub_261CFC954();
    v29 = *(*(v28 - 8) + 56);

    return v29(a1, 1, 1, v28);
  }
}

uint64_t sub_261C83D54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v9 = [v3 currentAssignment];
  if (!v9)
  {
LABEL_30:
    v38 = sub_261CFC954();
    v39 = *(*(v38 - 8) + 56);

    return v39(a2, 1, 1, v38);
  }

  v10 = v9;
  v11 = [a1 sharees];
  if (!v11)
  {

    goto LABEL_30;
  }

  v12 = v11;
  sub_261B05020(0, &qword_27FEDA9D0, 0x277D447E8);
  v13 = sub_261CFFC64();

  v41 = v8;
  v42 = a2;
  v40 = v3;
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = sub_261D00274();
  if (!v14)
  {
LABEL_28:

LABEL_29:
    a2 = v42;
    goto LABEL_30;
  }

LABEL_5:
  v15 = 0;
  v43 = v13 & 0xC000000000000001;
  while (1)
  {
    if (v43)
    {
      v16 = MEMORY[0x26671CA10](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
    v19 = [v17 objectID];
    v20 = v10;
    v21 = [v10 assigneeID];
    v22 = sub_261D000F4();

    if (v22)
    {
      break;
    }

    ++v15;
    v10 = v20;
    if (v18 == v14)
    {
      goto LABEL_28;
    }
  }

  if ([v20 status] != 1)
  {

    goto LABEL_29;
  }

  v23 = v41;
  sub_261B76B88(v41);
  v24 = sub_261CFC954();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_261AE6A40(v23, &unk_27FEDB0B0, &unk_261D035D0);
    if (qword_27FED9C68 != -1)
    {
      swift_once();
    }

    v26 = sub_261CFF7A4();
    __swift_project_value_buffer(v26, qword_27FEDDB50);
    v27 = v40;
    v28 = v17;
    v29 = sub_261CFF784();
    v30 = sub_261CFFE64();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412546;
      v33 = [v27 objectID];
      *(v31 + 4) = v33;
      *v32 = v33;
      *(v31 + 12) = 2112;
      v34 = [v28 objectID];
      *(v31 + 14) = v34;
      v32[1] = v34;
      _os_log_impl(&dword_261AE2000, v29, v30, "Failed to convert assignee to IntentPerson for {reminderID: %@, assigneeID: %@}", v31, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v32, -1, -1);
      MEMORY[0x26671D560](v31, -1, -1);
      v35 = v29;
    }

    else
    {
      v35 = v28;
      v28 = v29;
    }

    return (*(v25 + 56))(v42, 1, 1, v24);
  }

  else
  {

    v36 = v42;
    (*(v25 + 32))(v42, v23, v24);
    return (*(v25 + 56))(v36, 0, 1, v24);
  }
}

id sub_261C8427C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA990, &unk_261D03490);
  MEMORY[0x28223BE20](v1 - 8);
  v43 = &v37 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_261CFD754();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v37 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v51 = sub_261CFC7E4();
  v45 = *(v51 - 8);
  v14 = MEMORY[0x28223BE20](v51);
  v42 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v37 - v16;
  result = [v0 attachments];
  if (result)
  {
    v18 = result;
    sub_261B05020(0, &qword_27FEDDB78, 0x277D445A0);
    v19 = sub_261CFFC64();

    v57 = v19;
    sub_261B05020(0, &qword_27FEDDB98, 0x277D44658);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDB88, &qword_261D0F9E0);
    sub_261B91FF0(&qword_27FEDDB90, &qword_27FEDDB88, &qword_261D0F9E0);
    v20 = sub_261CFFC14();

    if (v20 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261D00274())
    {
      v21 = 0;
      v54 = v20 & 0xFFFFFFFFFFFFFF8;
      v55 = v20 & 0xC000000000000001;
      v48 = (v7 + 8);
      v49 = (v7 + 32);
      v38 = (v7 + 48);
      v39 = (v7 + 16);
      v7 = i;
      v46 = (v45 + 32);
      v56 = MEMORY[0x277D84F90];
      v40 = v5;
      v41 = v20;
      v47 = v13;
      while (1)
      {
        if (v55)
        {
          v22 = MEMORY[0x26671CA10](v21, v20);
        }

        else
        {
          if (v21 >= *(v54 + 16))
          {
            goto LABEL_24;
          }

          v22 = *(v20 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v25 = [v22 fileURL];
        if (v25)
        {
          v26 = v52;
          v27 = v25;
          sub_261CFD734();

          (*v49)(v13, v26, v6);
          if (sub_261CFD6E4())
          {
            (*v39)(v53, v13, v6);
            sub_261CFD6D4();
            if ((*v38)(v5, 1, v6) == 1)
            {
              sub_261AE6A40(v5, &qword_27FEDB238, &unk_261D056F0);
              v28 = v6;
              v29 = v48;
            }

            else
            {
              sub_261CFD714();
              v29 = v48;
              (*v48)(v5, v6);
              v28 = v6;
            }

            v30 = [v23 uti];
            sub_261CFFA74();

            sub_261CFF6B4();
            v31 = v42;
            sub_261CFC7D4();

            (*v29)(v47, v28);
            v32 = *v46;
            (*v46)(v50, v31, v51);
            v33 = v56;
            v6 = v28;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_261B41894(0, v33[2] + 1, 1, v33);
            }

            v5 = v40;
            v20 = v41;
            v7 = i;
            v35 = v33[2];
            v34 = v33[3];
            v56 = v33;
            v13 = v47;
            if (v35 >= v34 >> 1)
            {
              v56 = sub_261B41894((v34 > 1), v35 + 1, 1, v56);
            }

            v36 = v56;
            v56[2] = v35 + 1;
            v32(&v36[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v35], v50, v51);
          }

          else
          {

            (*v48)(v13, v6);
          }
        }

        else
        {
        }

        ++v21;
        if (v24 == v7)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v56 = MEMORY[0x277D84F90];
LABEL_27:

    result = v56;
    if (!v56[2])
    {

      return 0;
    }
  }

  return result;
}

void *sub_261C848F0()
{
  v20 = sub_261CFD754();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [v0 attachments];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  sub_261B05020(0, &qword_27FEDDB78, 0x277D445A0);
  v6 = sub_261CFFC64();

  v21 = v6;
  sub_261B05020(0, &qword_27FEDDB80, 0x277D448E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDB88, &qword_261D0F9E0);
  sub_261B91FF0(&qword_27FEDDB90, &qword_27FEDDB88, &qword_261D0F9E0);
  v7 = sub_261CFFC14();

  if (v7 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261D00274())
  {
    v9 = 0;
    v18 = v7 & 0xFFFFFFFFFFFFFF8;
    v19 = v7 & 0xC000000000000001;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v19)
      {
        v11 = MEMORY[0x26671CA10](v9, v7);
      }

      else
      {
        if (v9 >= *(v18 + 16))
        {
          goto LABEL_17;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = [v11 url];
      sub_261CFD734();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_261B418BC(0, v10[2] + 1, 1, v10);
      }

      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        v10 = sub_261B418BC((v15 > 1), v16 + 1, 1, v10);
      }

      v10[2] = v16 + 1;
      (*(v1 + 32))(v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v16, v3, v20);
      ++v9;
      if (v13 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_20:

  if (!v10[2])
  {

    return 0;
  }

  return v10;
}
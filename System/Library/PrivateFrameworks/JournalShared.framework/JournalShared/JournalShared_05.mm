uint64_t sub_2556E0ED4(void *a1, void *a2)
{
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  v218 = v4;
  v219 = v5;
  MEMORY[0x28223BE20](v4);
  v214 = &v203 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v216 = &v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v217 = &v203 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v206 = &v203 - v13;
  MEMORY[0x28223BE20](v12);
  v207 = &v203 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF050, qword_255759D18);
  MEMORY[0x28223BE20](v15 - 8);
  v208 = &v203 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  MEMORY[0x28223BE20](v17 - 8);
  v215 = &v203 - v18;
  v19 = type metadata accessor for MergeableEntryAttributes(0);
  v210 = *(v19 - 8);
  v211 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v209 = &v203 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v212 = &v203 - v23;
  MEMORY[0x28223BE20](v22);
  v213 = &v203 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v25 - 8);
  v222 = (&v203 - v26);
  v27 = sub_25574F020();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v221 = &v203 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v203 - v31;
  v33 = [a1 recordSystemFields];
  if (v33 && (v34 = v33, v35 = sub_25574EF90(), v37 = v36, v34, sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0), (v38 = CKRecord.init(systemFields:)(v35, v37)) != 0) && (v39 = v38, v40 = [v38 recordChangeTag], v39, v40))
  {
    v41 = sub_2557501B0();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = [a2 recordChangeTag];
  if (!v44)
  {
    if (!v43)
    {
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_22;
  }

  v205 = v41;
  v45 = v32;
  v46 = v27;
  v47 = v28;
  v48 = a2;
  v49 = a1;
  v50 = v44;
  v51 = sub_2557501B0();
  v53 = v52;

  a1 = v49;
  a2 = v48;
  v28 = v47;
  v27 = v46;
  v32 = v45;
  if (!v43)
  {
    if (!v53)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!v53)
  {
    goto LABEL_15;
  }

  if (v205 == v51 && v43 == v53)
  {
  }

  else
  {
    v54 = sub_255750EB0();

    if ((v54 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_17:
  v204 = a1;
  if (qword_27F7BD790 != -1)
  {
    swift_once();
  }

  v55 = sub_25574F2C0();
  __swift_project_value_buffer(v55, qword_27F7BF000);
  v56 = a2;
  v57 = sub_25574F2A0();
  v58 = sub_255750760();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v223 = v32;
    v224 = v60;
    v205 = v27;
    v61 = a2;
    v62 = v60;
    *v59 = 136315138;
    v63 = sub_255750920();
    v65 = sub_2556E474C(v63, v64, &v224);

    *(v59 + 4) = v65;
    _os_log_impl(&dword_255661000, v57, v58, "Will reprocess %s record even though local and remote have the same change tag.", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    v66 = v62;
    a2 = v61;
    v27 = v205;
    v32 = v223;
    MEMORY[0x259C3F520](v66, -1, -1);
    MEMORY[0x259C3F520](v59, -1, -1);
  }

  a1 = v204;
LABEL_22:
  v67 = [a1 updatedDate];
  if (!v67)
  {
    if (qword_27F7BD790 != -1)
    {
      swift_once();
    }

    v90 = sub_25574F2C0();
    __swift_project_value_buffer(v90, qword_27F7BF000);
    v91 = a1;
    v92 = sub_25574F2A0();
    v93 = sub_255750780();

    v94 = os_log_type_enabled(v92, v93);
    v95 = v219;
    if (v94)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v224 = v97;
      *v96 = 136315138;
      v98 = [v91 id];
      if (v98)
      {
        v99 = v216;
        v100 = v98;
        sub_25574F080();

        v101 = *(v95 + 56);
        v102 = v99;
        v103 = 0;
      }

      else
      {
        v101 = *(v95 + 56);
        v99 = v216;
        v102 = v216;
        v103 = 1;
      }

      v119 = v218;
      v101(v102, v103, 1, v218);
      v120 = v217;
      sub_255675060(v99, v217, &unk_27F7BED20, &unk_2557551D0);
      if ((*(v95 + 48))(v120, 1, v119))
      {
        v121 = 7104878;
        sub_255674B20(v120, &unk_27F7BED20, &unk_2557551D0);
        v122 = 0xE300000000000000;
      }

      else
      {
        v123 = v214;
        (*(v95 + 16))(v214, v120, v119);
        sub_255674B20(v120, &unk_27F7BED20, &unk_2557551D0);
        v124 = v119;
        v121 = sub_25574F040();
        v122 = v125;
        (*(v95 + 8))(v123, v124);
      }

      v126 = sub_2556E474C(v121, v122, &v224);

      *(v96 + 4) = v126;
      _os_log_impl(&dword_255661000, v92, v93, "Journal entry %s has no updatedDate", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v97);
      MEMORY[0x259C3F520](v97, -1, -1);
      MEMORY[0x259C3F520](v96, -1, -1);
    }

    sub_25568B1D0();
    swift_allocError();
    *v127 = 2;
    return swift_willThrow();
  }

  v68 = v67;
  sub_25574EFF0();

  v69 = [a2 encryptedValues];
  v70 = sub_255750180();
  v71 = [v69 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v223 = v32;
  if (!v71)
  {
    v72 = v222;
    (*(v28 + 56))(v222, 1, 1, v27);
    goto LABEL_36;
  }

  v224 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
  v72 = v222;
  v73 = swift_dynamicCast();
  (*(v28 + 56))(v72, v73 ^ 1u, 1, v27);
  if ((*(v28 + 48))(v72, 1, v27) == 1)
  {
LABEL_36:
    sub_255674B20(v72, &qword_27F7BEB40, &unk_255754E40);
    if (qword_27F7BD790 != -1)
    {
      swift_once();
    }

    v104 = sub_25574F2C0();
    __swift_project_value_buffer(v104, qword_27F7BF000);
    v105 = a2;
    v106 = sub_25574F2A0();
    v107 = sub_255750780();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v224 = v109;
      *v108 = 136315138;
      v110 = [v105 recordID];
      v111 = v28;
      v112 = [v110 recordName];

      v113 = sub_2557501B0();
      v115 = v114;

      v28 = v111;
      v116 = sub_2556E474C(v113, v115, &v224);

      *(v108 + 4) = v116;
      _os_log_impl(&dword_255661000, v106, v107, "CKRecord %s has no updatedDate", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v109);
      MEMORY[0x259C3F520](v109, -1, -1);
      MEMORY[0x259C3F520](v108, -1, -1);
    }

    sub_25568B1D0();
    swift_allocError();
    *v117 = 1;
    swift_willThrow();
    return (*(v28 + 8))(v223, v27);
  }

  v217 = v28;
  v74 = *(v28 + 32);
  v205 = v27;
  v74(v221, v72, v27);
  if (qword_27F7BD790 != -1)
  {
    swift_once();
  }

  v75 = sub_25574F2C0();
  v76 = __swift_project_value_buffer(v75, qword_27F7BF000);
  v77 = a2;
  v78 = sub_25574F2A0();
  v79 = sub_255750770();

  if (os_log_type_enabled(v78, v79))
  {
    v222 = v76;
    v80 = swift_slowAlloc();
    v216 = swift_slowAlloc();
    v226 = v216;
    *v80 = 136315650;
    v81 = [v77 recordID];
    v82 = [v81 recordName];

    v83 = sub_2557501B0();
    v85 = v84;

    v86 = sub_2556E474C(v83, v85, &v226);

    *(v80 + 4) = v86;
    *(v80 + 12) = 2080;
    v87 = v220;
    v88 = sub_2556E27C4(0x7265566C65646F6DLL, 0xEC0000006E6F6973);
    if (v87)
    {

      v88 = 0;
      v89 = 0;
    }

    v220 = 0;
    v224 = v88;
    v225 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF068, &unk_255759D38);
    v128 = sub_2557501D0();
    v130 = sub_2556E474C(v128, v129, &v226);

    *(v80 + 14) = v130;
    *(v80 + 22) = 2080;
    if (qword_27F7BD6D8 != -1)
    {
      swift_once();
    }

    v224 = NSManagedObjectModel.modelVersion.getter();
    v225 = v131;
    v132 = sub_2557501D0();
    v134 = sub_2556E474C(v132, v133, &v226);

    *(v80 + 24) = v134;
    _os_log_impl(&dword_255661000, v78, v79, "Entry record %s has model version: %s; compared to current: %s", v80, 0x20u);
    v135 = v216;
    swift_arrayDestroy();
    MEMORY[0x259C3F520](v135, -1, -1);
    MEMORY[0x259C3F520](v80, -1, -1);
  }

  else
  {
  }

  v136 = sub_25574EFD0();
  v137 = v77;
  v138 = sub_25574F2A0();
  v139 = sub_2557507A0();

  v140 = os_log_type_enabled(v138, v139);
  if (v136)
  {
    if (v140)
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v224 = v142;
      *v141 = 136315138;
      v143 = [v137 recordID];
      v144 = [v143 recordName];

      v145 = sub_2557501B0();
      v146 = a1;
      v148 = v147;

      v149 = sub_2556E474C(v145, v148, &v224);
      a1 = v146;

      *(v141 + 4) = v149;
      _os_log_impl(&dword_255661000, v138, v139, "Local change is newer than remote for id %s", v141, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v142);
      MEMORY[0x259C3F520](v142, -1, -1);
      MEMORY[0x259C3F520](v141, -1, -1);
    }

    v150 = v205;
    v151 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    [v137 encodeSystemFieldsWithCoder_];
    v152 = [v151 encodedData];
    v153 = sub_25574EF90();
    v155 = v154;

    v156 = sub_25574EF80();
    sub_2556755A8(v153, v155);
    [a1 setRecordSystemFields_];

    sub_2556DF18C(v137);
    goto LABEL_62;
  }

  if (v140)
  {
    v157 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v224 = v222;
    *v157 = 136315138;
    v158 = [v137 recordID];
    v159 = [v158 recordName];

    v160 = sub_2557501B0();
    v161 = a1;
    v163 = v162;

    v164 = sub_2556E474C(v160, v163, &v224);
    a1 = v161;

    *(v157 + 4) = v164;
    _os_log_impl(&dword_255661000, v138, v139, "Remote change is newer than local for id %s.", v157, 0xCu);
    v165 = v222;
    __swift_destroy_boxed_opaque_existential_1(v222);
    MEMORY[0x259C3F520](v165, -1, -1);
    MEMORY[0x259C3F520](v157, -1, -1);
  }

  v150 = v205;
  v166 = v215;
  v167 = v220;
  sub_2556DC848(v137);
  v168 = v167;
  if (v167)
  {

    v168 = 0;
  }

  v169 = [a1 mergeableAttributes];
  if (!v169)
  {
    goto LABEL_62;
  }

  v170 = v169;
  v171 = v212;
  sub_255678960(v169 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v212, type metadata accessor for MergeableEntryAttributes);

  v172 = v213;
  sub_2556DFBE0(v171, v213);
  sub_2556ADC0C(0xD000000000000013, 0x8000000255752490, v166);
  if (v168)
  {
    sub_2556C0F6C(v172, type metadata accessor for MergeableEntryAttributes);
LABEL_62:
    v173 = *(v217 + 8);
    v173(v221, v150);
    return (v173)(v223, v150);
  }

  v174 = (*(v210 + 48))(v166, 1, v211);
  v175 = v217;
  if (v174 == 1)
  {
    sub_2556C0F6C(v172, type metadata accessor for MergeableEntryAttributes);
    v176 = *(v175 + 8);
    v176(v221, v150);
    v176(v223, v150);
    return sub_255674B20(v166, &qword_27F7BE7E8, &unk_255757F00);
  }

  else
  {
    v177 = v166;
    v178 = v209;
    sub_2556DFBE0(v177, v209);
    sub_2556E26E0(&qword_27F7BF060, type metadata accessor for MergeableEntryAttributes, &protocol conformance descriptor for MergeableEntryAttributes);
    v179 = v208;
    sub_25574FD60();
    v180 = type metadata accessor for MergeableEntryAttributes.ObservableDifference(0);
    if ((*(*(v180 - 8) + 48))(v179, 1, v180) == 1)
    {
      sub_2556C0F6C(v178, type metadata accessor for MergeableEntryAttributes);
      sub_2556C0F6C(v172, type metadata accessor for MergeableEntryAttributes);
      v181 = *(v175 + 8);
      v181(v221, v150);
      v181(v223, v150);
      return sub_255674B20(v179, &qword_27F7BF050, qword_255759D18);
    }

    else
    {
      sub_255674B20(v179, &qword_27F7BF050, qword_255759D18);
      if ([a1 isUploadedToCloud])
      {
        v182 = a1;
        v183 = sub_25574F2A0();
        v184 = sub_2557507A0();

        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          v224 = v222;
          *v185 = 136315138;
          v186 = [v182 id];
          if (v186)
          {
            v187 = v206;
            v188 = v186;
            sub_25574F080();

            v189 = 0;
            v190 = v218;
          }

          else
          {
            v189 = 1;
            v190 = v218;
            v187 = v206;
          }

          v191 = v207;
          v193 = v219;
          (*(v219 + 56))(v187, v189, 1, v190);
          sub_255675060(v187, v191, &unk_27F7BED20, &unk_2557551D0);
          if ((*(v193 + 48))(v191, 1, v190))
          {
            v194 = 7104878;
            sub_255674B20(v191, &unk_27F7BED20, &unk_2557551D0);
            v195 = 0xE300000000000000;
          }

          else
          {
            v196 = v214;
            (*(v193 + 16))(v214, v191, v190);
            sub_255674B20(v191, &unk_27F7BED20, &unk_2557551D0);
            v194 = sub_25574F040();
            v195 = v197;
            (*(v193 + 8))(v196, v218);
          }

          v198 = sub_2556E474C(v194, v195, &v224);

          *(v185 + 4) = v198;
          _os_log_impl(&dword_255661000, v183, v184, "Entry %s was updated to match remote, with merged changes. Marking entry as needing upload.", v185, 0xCu);
          v199 = v222;
          __swift_destroy_boxed_opaque_existential_1(v222);
          MEMORY[0x259C3F520](v199, -1, -1);
          MEMORY[0x259C3F520](v185, -1, -1);

          v175 = v217;
        }

        else
        {
        }

        v200 = v209;
        [v182 setIsUploadedToCloud_];
        sub_2556C0F6C(v200, type metadata accessor for MergeableEntryAttributes);
        sub_2556C0F6C(v213, type metadata accessor for MergeableEntryAttributes);
        v201 = *(v175 + 8);
        v202 = v205;
        v201(v221, v205);
        return (v201)(v223, v202);
      }

      else
      {
        sub_2556C0F6C(v209, type metadata accessor for MergeableEntryAttributes);
        sub_2556C0F6C(v172, type metadata accessor for MergeableEntryAttributes);
        v192 = *(v175 + 8);
        v192(v221, v150);
        return (v192)(v223, v150);
      }
    }
  }
}

uint64_t sub_2556E2678(uint64_t a1)
{
  result = sub_2556E26E0(&unk_27F7BF040, type metadata accessor for JournalEntryMO, &protocol conformance descriptor for JournalEntryMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2556E26E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2556E27C4(uint64_t a1, unint64_t a2)
{
  v5 = [v2 encryptedValues];
  v6 = sub_255750180();
  v7 = [v5 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (!v7)
  {
    return 0;
  }

  v30 = v7;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    return v29;
  }

  else
  {
    if (qword_27F7BD798 != -1)
    {
      swift_once();
    }

    v9 = sub_25574F2C0();
    __swift_project_value_buffer(v9, qword_27F7BF0B0);
    swift_unknownObjectRetain();
    v10 = v2;

    v11 = sub_25574F2A0();
    v12 = sub_255750780();

    swift_unknownObjectRelease();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v13 = 136447234;
      v27 = v12;
      v14 = sub_255750920();
      v16 = sub_2556E474C(v14, v15, &v29);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_2556E474C(a1, a2, &v29);
      *(v13 + 22) = 2082;
      *(v13 + 24) = sub_2556E474C(0x676E69727453, 0xE600000000000000, &v29);
      *(v13 + 32) = 2080;
      v30 = v7;
      swift_unknownObjectRetain();
      v17 = sub_2557501D0();
      v19 = sub_2556E474C(v17, v18, &v29);

      *(v13 + 34) = v19;
      *(v13 + 42) = 2080;
      v20 = [v10 recordID];
      v21 = [v20 recordName];

      v22 = sub_2557501B0();
      v24 = v23;

      v25 = sub_2556E474C(v22, v24, &v29);

      *(v13 + 44) = v25;
      _os_log_impl(&dword_255661000, v11, v27, "Found value at %{public}s.%{public}s in record, but not expected type %{public}s. Found value: %s. Record ID: %s", v13, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v28, -1, -1);
      MEMORY[0x259C3F520](v13, -1, -1);
    }

    sub_25568B1D0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_2556E2B44@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v7 = [v3 encryptedValues];
  v8 = sub_255750180();
  v9 = [v7 objectForKeyedSubscript_];

  result = swift_unknownObjectRelease();
  if (!v9)
  {
    v11 = xmmword_25575A0D0;
    goto LABEL_5;
  }

  v33 = v9;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
  if (swift_dynamicCast())
  {
    result = swift_unknownObjectRelease();
    v11 = v32;
LABEL_5:
    *a3 = v11;
    return result;
  }

  v32 = xmmword_25575A0D0;
  sub_2556A15B8(0, 0xF000000000000000);
  if (qword_27F7BD798 != -1)
  {
    swift_once();
  }

  v12 = sub_25574F2C0();
  __swift_project_value_buffer(v12, qword_27F7BF0B0);
  swift_unknownObjectRetain();
  v13 = v3;

  v14 = sub_25574F2A0();
  v15 = sub_255750780();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v32 = v31;
    *v16 = 136447234;
    v30 = v15;
    v17 = sub_255750920();
    v19 = sub_2556E474C(v17, v18, &v32);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_2556E474C(a1, a2, &v32);
    *(v16 + 22) = 2082;
    *(v16 + 24) = sub_2556E474C(1635017028, 0xE400000000000000, &v32);
    *(v16 + 32) = 2080;
    v33 = v9;
    swift_unknownObjectRetain();
    v20 = sub_2557501D0();
    v22 = sub_2556E474C(v20, v21, &v32);

    *(v16 + 34) = v22;
    *(v16 + 42) = 2080;
    v23 = [v13 recordID];
    v24 = [v23 recordName];

    v25 = sub_2557501B0();
    v27 = v26;

    v28 = sub_2556E474C(v25, v27, &v32);

    *(v16 + 44) = v28;
    _os_log_impl(&dword_255661000, v14, v30, "Found value at %{public}s.%{public}s in record, but not expected type %{public}s. Found value: %s. Record ID: %s", v16, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x259C3F520](v31, -1, -1);
    MEMORY[0x259C3F520](v16, -1, -1);
  }

  sub_25568B1D0();
  swift_allocError();
  *v29 = 0;
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t sub_2556E2EE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = [v3 encryptedValues];
  v11 = sub_255750180();
  v12 = [v10 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (v12)
  {
    v41 = v12;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
    v13 = sub_25574F020();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      v14 = *(v13 - 8);
      v15 = *(v14 + 56);
      v15(v9, 0, 1, v13);
      (*(v14 + 32))(a3, v9, v13);
      return (v15)(a3, 0, 1, v13);
    }

    else
    {
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      sub_255674B20(v9, &qword_27F7BEB40, &unk_255754E40);
      if (qword_27F7BD798 != -1)
      {
        swift_once();
      }

      v18 = sub_25574F2C0();
      __swift_project_value_buffer(v18, qword_27F7BF0B0);
      swift_unknownObjectRetain();
      v19 = v3;

      v20 = sub_25574F2A0();
      v21 = sub_255750780();

      swift_unknownObjectRelease();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v41 = v39;
        *v22 = 136447234;
        v38 = v21;
        v23 = sub_255750920();
        v25 = sub_2556E474C(v23, v24, &v41);

        *(v22 + 4) = v25;
        *(v22 + 12) = 2082;
        *(v22 + 14) = sub_2556E474C(a1, a2, &v41);
        *(v22 + 22) = 2082;
        *(v22 + 24) = sub_2556E474C(1702125892, 0xE400000000000000, &v41);
        *(v22 + 32) = 2080;
        v40 = v12;
        swift_unknownObjectRetain();
        v26 = sub_2557501D0();
        v28 = sub_2556E474C(v26, v27, &v41);

        *(v22 + 34) = v28;
        *(v22 + 42) = 2080;
        v29 = [v19 recordID];
        v30 = [v29 recordName];

        v31 = sub_2557501B0();
        v33 = v32;

        v34 = sub_2556E474C(v31, v33, &v41);

        *(v22 + 44) = v34;
        _os_log_impl(&dword_255661000, v20, v38, "Found value at %{public}s.%{public}s in record, but not expected type %{public}s. Found value: %s. Record ID: %s", v22, 0x34u);
        v35 = v39;
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v35, -1, -1);
        MEMORY[0x259C3F520](v22, -1, -1);
      }

      sub_25568B1D0();
      swift_allocError();
      *v36 = 0;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v17 = sub_25574F020();
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }
}

uint64_t sub_2556E33D8(uint64_t a1, unint64_t a2)
{
  v5 = [v2 encryptedValues];
  v6 = sub_255750180();
  v7 = [v5 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (!v7)
  {
    v8 = 0;
    return v8 | ((v7 == 0) << 16);
  }

  v30 = v7;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    v8 = v29;
    return v8 | ((v7 == 0) << 16);
  }

  if (qword_27F7BD798 != -1)
  {
    swift_once();
  }

  v10 = sub_25574F2C0();
  __swift_project_value_buffer(v10, qword_27F7BF0B0);
  swift_unknownObjectRetain();
  v11 = v2;

  v12 = sub_25574F2A0();
  v13 = sub_255750780();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v14 = 136447234;
    v31 = v13;
    v15 = sub_255750920();
    v17 = sub_2556E474C(v15, v16, &v30);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_2556E474C(a1, a2, &v30);
    *(v14 + 22) = 2082;
    *(v14 + 24) = sub_2556E474C(0x3631746E49, 0xE500000000000000, &v30);
    *(v14 + 32) = 2080;
    swift_unknownObjectRetain();
    v18 = sub_2557501D0();
    v20 = sub_2556E474C(v18, v19, &v30);

    *(v14 + 34) = v20;
    *(v14 + 42) = 2080;
    v21 = [v11 recordID];
    v22 = [v21 recordName];

    v23 = sub_2557501B0();
    v25 = v24;

    v26 = sub_2556E474C(v23, v25, &v30);

    *(v14 + 44) = v26;
    _os_log_impl(&dword_255661000, v12, v31, "Found value at %{public}s.%{public}s in record, but not expected type %{public}s. Found value: %s. Record ID: %s", v14, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x259C3F520](v28, -1, -1);
    MEMORY[0x259C3F520](v14, -1, -1);
  }

  sub_25568B1D0();
  swift_allocError();
  *v27 = 0;
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t sub_2556E3764(uint64_t a1, unint64_t a2)
{
  v5 = [v2 encryptedValues];
  v6 = sub_255750180();
  v7 = [v5 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (!v7)
  {
    return 2;
  }

  v30 = v7;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    return v29;
  }

  else
  {
    if (qword_27F7BD798 != -1)
    {
      swift_once();
    }

    v9 = sub_25574F2C0();
    __swift_project_value_buffer(v9, qword_27F7BF0B0);
    swift_unknownObjectRetain();
    v10 = v2;

    v11 = sub_25574F2A0();
    v12 = sub_255750780();

    swift_unknownObjectRelease();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v13 = 136447234;
      v27 = v12;
      v14 = sub_255750920();
      v16 = sub_2556E474C(v14, v15, &v30);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_2556E474C(a1, a2, &v30);
      *(v13 + 22) = 2082;
      *(v13 + 24) = sub_2556E474C(1819242306, 0xE400000000000000, &v30);
      *(v13 + 32) = 2080;
      swift_unknownObjectRetain();
      v17 = sub_2557501D0();
      v19 = sub_2556E474C(v17, v18, &v30);

      *(v13 + 34) = v19;
      *(v13 + 42) = 2080;
      v20 = [v10 recordID];
      v21 = [v20 recordName];

      v22 = sub_2557501B0();
      v24 = v23;

      v25 = sub_2556E474C(v22, v24, &v30);

      *(v13 + 44) = v25;
      _os_log_impl(&dword_255661000, v11, v27, "Found value at %{public}s.%{public}s in record, but not expected type %{public}s. Found value: %s. Record ID: %s", v13, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v28, -1, -1);
      MEMORY[0x259C3F520](v13, -1, -1);
    }

    sub_25568B1D0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t CKRecord.encryptedValueForKey<A>(_:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_255750950();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v45 - v12;
  v47 = v5;
  v14 = [v5 encryptedValues];
  v46 = a1;
  v48 = a2;
  v15 = sub_255750180();
  v16 = [v14 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (!v16)
  {
    return (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  }

  v17 = a4;
  v50 = v16;
  swift_unknownObjectRetain();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    v19 = *(a3 - 8);
    v20 = *(v19 + 56);
    v20(v13, 0, 1, a3);
    (*(v19 + 32))(v17, v13, a3);
    return (v20)(v17, 0, 1, a3);
  }

  else
  {
    v45[1] = v18;
    (*(*(a3 - 8) + 56))(v13, 1, 1, a3);
    (*(v11 + 8))(v13, v10);
    if (qword_27F7BD798 != -1)
    {
      swift_once();
    }

    v22 = sub_25574F2C0();
    __swift_project_value_buffer(v22, qword_27F7BF0B0);
    swift_unknownObjectRetain();
    v23 = v47;
    v24 = v48;

    v25 = sub_25574F2A0();
    v26 = sub_255750780();

    swift_unknownObjectRelease();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50 = v47;
      *v27 = 136447234;
      v28 = sub_255750920();
      v30 = sub_2556E474C(v28, v29, &v50);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_2556E474C(v46, v24, &v50);
      *(v27 + 22) = 2082;
      v31 = sub_255751020();
      v33 = sub_2556E474C(v31, v32, &v50);

      *(v27 + 24) = v33;
      *(v27 + 32) = 2080;
      v49 = v16;
      swift_unknownObjectRetain();
      v34 = sub_2557501D0();
      v36 = sub_2556E474C(v34, v35, &v50);

      *(v27 + 34) = v36;
      *(v27 + 42) = 2080;
      v37 = [v23 recordID];
      v38 = [v37 recordName];

      v39 = sub_2557501B0();
      v41 = v40;

      v42 = sub_2556E474C(v39, v41, &v50);

      *(v27 + 44) = v42;
      _os_log_impl(&dword_255661000, v25, v26, "Found value at %{public}s.%{public}s in record, but not expected type %{public}s. Found value: %s. Record ID: %s", v27, 0x34u);
      v43 = v47;
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v43, -1, -1);
      MEMORY[0x259C3F520](v27, -1, -1);
    }

    sub_25568B1D0();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t CKRecord.encryptedValueForKey<A>(_:as:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  result = sub_2556E2B44(a1, a2, &v11);
  if (!v5)
  {
    v9 = *(&v11 + 1);
    if (*(&v11 + 1) >> 60 == 15)
    {
      return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
    }

    else
    {
      v10 = v11;
      sub_255674F54(v11, *(&v11 + 1));
      sub_25574F4C0();
      (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
      return sub_2556A15B8(v10, v9);
    }
  }

  return result;
}

uint64_t CKRecord.encodedSystemFields.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v0 encodeSystemFieldsWithCoder_];
  v2 = [v1 encodedData];
  v3 = sub_25574EF90();

  return v3;
}

uint64_t sub_2556E43D8()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BF0B0);
  v1 = __swift_project_value_buffer(v0, qword_27F7BF0B0);
  if (qword_27F7BD5C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

CKRecord __swiftcall CKRecord.init(recordType:recordName:zone:)(Swift::String recordType, Swift::String recordName, CKRecordZone zone)
{
  sub_2556E4CF4();
  v4 = [(objc_class *)zone.super.isa zoneID];
  sub_255750740();
  v5 = sub_255750910();

  return v5;
}

id CKRecord.init(systemFields:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v5 = sub_2556E4D40(a1, a2);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];
  sub_2556755A8(a1, a2);

  if (!v6)
  {
    return 0;
  }

  return v6;
}

unint64_t sub_2556E474C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2556E4818(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_255678EBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2556E4818(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2556E4924(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_255750BA0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2556E4924(uint64_t a1, unint64_t a2)
{
  v3 = sub_2556E4970(a1, a2);
  sub_2556E4AA0(&unk_2867893C8);
  return v3;
}

void *sub_2556E4970(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2556E4B8C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_255750BA0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_255750210();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2556E4B8C(v10, 0);
        result = sub_255750AF0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2556E4AA0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2556E4C00(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2556E4B8C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BF0E0, &unk_25575A0E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2556E4C00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BF0E0, &unk_25575A0E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2556E4CF4()
{
  result = qword_27F7BF0D0;
  if (!qword_27F7BF0D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BF0D0);
  }

  return result;
}

id sub_2556E4D40(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_25574EF80();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_25574ED90();

    swift_willThrow();
  }

  return v4;
}

uint64_t MotionActivityAssetMetadata.activityType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MotionActivityAssetMetadata.localizedActivityName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MotionActivityAssetMetadata.steps.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MotionActivityAssetMetadata.startTime.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = v2 + *(type metadata accessor for MotionActivityAssetMetadata(0) + 32);

  return sub_2556700F4(v4, a2);
}

uint64_t type metadata accessor for MotionActivityAssetMetadata(uint64_t a1)
{
  result = qword_27F7BF130;
  if (!qword_27F7BF130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MotionActivityAssetMetadata.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MotionActivityAssetMetadata(0) + 36);

  return sub_2556700F4(v3, a1);
}

uint64_t MotionActivityAssetMetadata.init(activityType:activityTypeEnum:localizedActivityName:steps:startTime:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v12 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v12;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v13 = type metadata accessor for MotionActivityAssetMetadata(0);
  sub_2556719B8(a8, a9 + *(v13 + 32));
  v14 = a9 + *(v13 + 36);

  return sub_2556719B8(a10, v14);
}

uint64_t sub_2556E4FEC()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0x7370657473;
  v4 = 0x6D69547472617473;
  if (v1 != 4)
  {
    v4 = 0x656D6954646E65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0xD000000000000015;
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

uint64_t sub_2556E50B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2556E6190(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2556E50EC(uint64_t a1)
{
  v2 = sub_2556E53EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556E5128(uint64_t a1)
{
  v2 = sub_2556E53EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MotionActivityAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF0F0, &qword_25575A0F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556E53EC();
  sub_255750FF0();
  v17 = 0;
  sub_255750E00();
  if (!v2)
  {
    v16 = *(v3 + 16);
    v15 = 1;
    sub_2556E5440();
    sub_255750DF0();
    v14 = 2;
    sub_255750DB0();
    v13 = 3;
    sub_255750DB0();
    type metadata accessor for MotionActivityAssetMetadata(0);
    v12 = 4;
    sub_25574F020();
    sub_255671850(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
    v11 = 5;
    sub_255750DF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2556E53EC()
{
  result = qword_27F7BF0F8;
  if (!qword_27F7BF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF0F8);
  }

  return result;
}

unint64_t sub_2556E5440()
{
  result = qword_27F7BF100;
  if (!qword_27F7BF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF100);
  }

  return result;
}

uint64_t MotionActivityAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF108, &qword_25575A100);
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for MotionActivityAssetMetadata(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2556E53EC();
  v16 = v28;
  sub_255750FE0();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v17 = v8;
  v18 = v26;
  v36 = 0;
  *v14 = sub_255750D50();
  *(v14 + 1) = v20;
  v28 = v20;
  v34 = 1;
  sub_2556E590C();
  sub_255750D40();
  v14[16] = v35;
  v33 = 2;
  *(v14 + 3) = sub_255750D00();
  *(v14 + 4) = v21;
  v32 = 3;
  *(v14 + 5) = sub_255750D00();
  *(v14 + 6) = v22;
  sub_25574F020();
  v31 = 4;
  sub_255671850(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_255750D40();
  v28 = 0;
  sub_2556719B8(v17, &v14[*(v12 + 32)]);
  v30 = 5;
  v23 = v28;
  sub_255750D40();
  v28 = v23;
  (*(v18 + 8))(v11, v27);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);

    return sub_255687634(&v14[*(v12 + 32)]);
  }

  else
  {
    sub_2556719B8(v6, &v14[*(v12 + 36)]);
    sub_2556E5960(v14, v25);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return sub_2556E59C4(v14);
  }
}

unint64_t sub_2556E590C()
{
  result = qword_27F7BF110;
  if (!qword_27F7BF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF110);
  }

  return result;
}

uint64_t sub_2556E5960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionActivityAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556E59C4(uint64_t a1)
{
  v2 = type metadata accessor for MotionActivityAssetMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

JournalShared::MotionActivityTypeEnum_optional __swiftcall MotionActivityTypeEnum.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MotionActivityTypeEnum.rawValue.getter()
{
  v1 = 0xD000000000000031;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000002ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

uint64_t sub_2556E5B00(uint64_t a1)
{
  *(a1 + 8) = sub_255671850(&qword_27F7BF118, type metadata accessor for MotionActivityAssetMetadata, &protocol conformance descriptor for MotionActivityAssetMetadata);
  result = sub_255671850(&qword_27F7BF120, type metadata accessor for MotionActivityAssetMetadata, &protocol conformance descriptor for MotionActivityAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556E5B84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "tMotionActivityTypeWalking";
  v4 = 0xD000000000000031;
  if (v2 == 1)
  {
    v5 = 0xD00000000000002ALL;
  }

  else
  {
    v5 = 0xD000000000000031;
  }

  if (v2 == 1)
  {
    v6 = "tMotionActivityTypeWalking";
  }

  else
  {
    v6 = "tMotionActivityTypeRunning";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000002ALL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "oment";
  }

  if (*a2 == 1)
  {
    v4 = 0xD00000000000002ALL;
  }

  else
  {
    v3 = "tMotionActivityTypeRunning";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000002ALL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "oment";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255750EB0();
  }

  return v11 & 1;
}

unint64_t sub_2556E5C5C()
{
  result = qword_27F7BF128;
  if (!qword_27F7BF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF128);
  }

  return result;
}

uint64_t sub_2556E5CB0()
{
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556E5D48(uint64_t a1)
{
  sub_2557501F0();
}

uint64_t sub_2556E5DCC(uint64_t a1)
{
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

void sub_2556E5E6C(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ALL;
  v3 = "tMotionActivityTypeWalking";
  v4 = 0xD000000000000031;
  if (*v1 == 1)
  {
    v4 = 0xD00000000000002ALL;
  }

  else
  {
    v3 = "tMotionActivityTypeRunning";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "oment";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

void sub_2556E5F9C(uint64_t a1)
{
  sub_25566BFA8(319, &qword_27F7BF140, &type metadata for MotionActivityTypeEnum);
  if (v1 <= 0x3F)
  {
    sub_25566BFA8(319, &qword_27F7BE538, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_25566E80C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2556E608C()
{
  result = qword_27F7BF148;
  if (!qword_27F7BF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF148);
  }

  return result;
}

unint64_t sub_2556E60E4()
{
  result = qword_27F7BF150;
  if (!qword_27F7BF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF150);
  }

  return result;
}

unint64_t sub_2556E613C()
{
  result = qword_27F7BF158;
  if (!qword_27F7BF158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF158);
  }

  return result;
}

uint64_t sub_2556E6190(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000255752F30 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000255752F50 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7370657473 && a2 == 0xE500000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_2556E63A0()
{
  result = qword_27F7BF160;
  if (!qword_27F7BF160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF160);
  }

  return result;
}

uint64_t PodcastAssetMetadata.mediaId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PodcastAssetMetadata.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PodcastAssetMetadata.author.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t type metadata accessor for PodcastAssetMetadata(uint64_t a1)
{
  result = qword_27F7BF1A0;
  if (!qword_27F7BF1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PodcastAssetMetadata.mediaType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PodcastAssetMetadata(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, char a11, char *a12)
{
  v15 = *a12;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v16 = type metadata accessor for PodcastAssetMetadata(0);
  sub_255675060(a7, a9 + v16[7], &qword_27F7BE270, &unk_25575A3F0);
  result = sub_255675060(a8, a9 + v16[8], &qword_27F7BEB40, &unk_255754E40);
  v18 = a9 + v16[9];
  *v18 = a10;
  v18[8] = a11 & 1;
  *(a9 + v16[10]) = v15;
  return result;
}

unint64_t sub_2556E6684()
{
  v1 = *v0;
  v2 = 0x6449616964656DLL;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x707954616964656DLL;
  }

  v4 = 0x4C5255616964656DLL;
  if (v1 != 3)
  {
    v4 = 0x79616C50656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x726F68747561;
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

uint64_t sub_2556E6764@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2556E77B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2556E6798(uint64_t a1)
{
  v2 = sub_2556E6B34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556E67D4(uint64_t a1)
{
  v2 = sub_2556E6B34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PodcastAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF168, &qword_25575A400);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556E6B34();
  sub_255750FF0();
  v11[15] = 0;
  sub_255750E00();
  if (!v2)
  {
    v11[14] = 1;
    sub_255750DB0();
    v11[13] = 2;
    sub_255750DB0();
    v9 = type metadata accessor for PodcastAssetMetadata(0);
    v11[12] = 3;
    sub_25574EF10();
    sub_2556E732C(&qword_27F7BDC20, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_255750DF0();
    v11[11] = 4;
    sub_25574F020();
    sub_2556E732C(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
    v11[10] = 5;
    sub_255750DE0();
    v11[9] = *(v3 + *(v9 + 40));
    v11[8] = 6;
    sub_2556E6B88();
    sub_255750DF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2556E6B34()
{
  result = qword_27F7BF170;
  if (!qword_27F7BF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF170);
  }

  return result;
}

unint64_t sub_2556E6B88()
{
  result = qword_27F7BF178;
  if (!qword_27F7BF178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF178);
  }

  return result;
}

uint64_t PodcastAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF180, &qword_25575A408);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PodcastAssetMetadata(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2556E6B34();
  v15 = v32;
  sub_255750FE0();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v16 = v8;
  v17 = v29;
  v18 = v30;
  v41 = 0;
  *v13 = sub_255750D50();
  v13[1] = v20;
  v28 = v20;
  v40 = 1;
  v13[2] = sub_255750D00();
  v13[3] = v21;
  v39 = 2;
  v22 = sub_255750D00();
  v32 = 0;
  v13[4] = v22;
  v13[5] = v23;
  sub_25574EF10();
  v38 = 3;
  sub_2556E732C(&qword_27F7BDC40, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v24 = v32;
  sub_255750D40();
  if (v24)
  {
    (*(v17 + 8))(v10, v31);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_255675060(v16, v13 + v11[7], &qword_27F7BE270, &unk_25575A3F0);
    sub_25574F020();
    v37 = 4;
    sub_2556E732C(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_255750D40();
    sub_255675060(v5, v13 + v11[8], &qword_27F7BEB40, &unk_255754E40);
    v36 = 5;
    v25 = sub_255750D30();
    v26 = v13 + v11[9];
    *v26 = v25;
    v26[8] = v27 & 1;
    v34 = 6;
    sub_2556E7194();
    sub_255750D40();
    (*(v17 + 8))(0, v31);
    *(v13 + v11[10]) = v35;
    sub_2556E71E8(v13, v18);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return sub_2556E724C(v13);
  }
}

unint64_t sub_2556E7194()
{
  result = qword_27F7BF188;
  if (!qword_27F7BF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF188);
  }

  return result;
}

uint64_t sub_2556E71E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556E724C(uint64_t a1)
{
  v2 = type metadata accessor for PodcastAssetMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556E72A8(uint64_t a1)
{
  *(a1 + 8) = sub_2556E732C(&qword_27F7BF190, type metadata accessor for PodcastAssetMetadata, &protocol conformance descriptor for PodcastAssetMetadata);
  result = sub_2556E732C(&qword_27F7BF198, type metadata accessor for PodcastAssetMetadata, &protocol conformance descriptor for PodcastAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556E732C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2556E73CC(uint64_t a1)
{
  sub_25566BFA8(319, &qword_27F7BE538, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2556E7508(319, &qword_27F7BDC70, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      sub_2556E7508(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_25566BFA8(319, &qword_27F7BEC00, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          sub_25566BFA8(319, &qword_27F7BF1B0, &type metadata for MediaViewType);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2556E7508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PodcastAssetMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PodcastAssetMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2556E76B0()
{
  result = qword_27F7BF1B8;
  if (!qword_27F7BF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF1B8);
  }

  return result;
}

unint64_t sub_2556E7708()
{
  result = qword_27F7BF1C0;
  if (!qword_27F7BF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF1C0);
  }

  return result;
}

unint64_t sub_2556E7760()
{
  result = qword_27F7BF1C8;
  if (!qword_27F7BF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF1C8);
  }

  return result;
}

uint64_t sub_2556E77B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449616964656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C5255616964656DLL && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000255752F70 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v6 = sub_255750EB0();

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

uint64_t JournalFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

unint64_t sub_2556E7AAC()
{
  result = qword_27F7BF1D0;
  if (!qword_27F7BF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF1D0);
  }

  return result;
}

uint64_t static Identifiable<>.fetch(id:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_25574F0D0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25574F030();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2556B224C(v9);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    static Identifiable<>.fetch(id:context:)(v13, a3, a4);
    if (v4)
    {
      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      v16 = v15;
      (*(v11 + 8))(v13, v10);
      return v16;
    }
  }
}

uint64_t static Identifiable<>.fetch(ids:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_2556E84A0(a1, a2, a3, a4, &qword_27F7BEB38, &qword_25575EA60, &qword_27F7BF1E0);
}

{
  return sub_2556E84A0(a1, a2, a3, a4, &qword_27F7BE728, &qword_255757898, &unk_27F7BF210);
}

void static Identifiable<>.fetch(id:context:)(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = sub_25574F0D0();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_255755060;
  v10 = sub_25574F050();
  *(v9 + 56) = sub_255669A88(0, &unk_27F7BF1F0, 0x277CCAD78);
  *(v9 + 64) = sub_2556E8720();
  *(v9 + 32) = v10;
  v11 = sub_255750750();
  [v8 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  v12 = sub_2557508C0();
  if (v3)
  {

    return;
  }

  v13 = v12;
  v35 = v7;
  v36 = v8;
  v14 = (v12 >> 62);
  if (v12 >> 62)
  {
    v15 = sub_255750A30();
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v5;
  v17 = v38;
  if (v15 < 2)
  {
    goto LABEL_11;
  }

  if (qword_27F7BD5B8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v18 = sub_25574F2C0();
    __swift_project_value_buffer(v18, qword_27F7C04B0);
    v19 = v35;
    (*(v17 + 16))(v35, a1, v16);

    a1 = sub_25574F2A0();
    v20 = sub_255750780();
    if (os_log_type_enabled(a1, v20))
    {
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39 = v33;
      *v17 = 134218498;
      v34 = v20;
      if (v14)
      {
        v21 = sub_255750A30();
      }

      else
      {
        v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v17 + 4) = v21;

      *(v17 + 12) = 2080;
      v24 = sub_255751020();
      v26 = sub_2556E474C(v24, v25, &v39);

      *(v17 + 14) = v26;
      *(v17 + 22) = 2080;
      sub_2556E8788();
      v27 = v35;
      v28 = sub_255750E60();
      v30 = v29;
      (*(v38 + 8))(v27, v5);
      v31 = sub_2556E474C(v28, v30, &v39);

      *(v17 + 24) = v31;
      _os_log_impl(&dword_255661000, a1, v34, "Found %ld %s objects with id %s", v17, 0x20u);
      v16 = v33;
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v16, -1, -1);
      MEMORY[0x259C3F520](v17, -1, -1);

      v23 = v13 & 0xFFFFFFFFFFFFFF8;
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    else
    {

      v22 = *(v17 + 8);
      v17 += 8;
      v22(v19, v16);
LABEL_11:
      v23 = v13 & 0xFFFFFFFFFFFFFF8;
      if (!v14)
      {
LABEL_12:
        v14 = v36;
        if (!*(v23 + 16))
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }
    }

    v32 = sub_255750A30();
    v14 = v36;
    if (!v32)
    {
LABEL_21:

      return;
    }

LABEL_13:
    if ((v13 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_16;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  MEMORY[0x259C3E830](0, v13);
LABEL_16:

  if (!swift_dynamicCastUnknownClass())
  {
    swift_unknownObjectRelease();
  }
}

void static NSManagedObject.iterativeDeleteAll(context:)(void *a1)
{
  v3 = v1;
  v5 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  sub_2557508C0();
  if (v2)
  {
    goto LABEL_2;
  }

  v6 = sub_255750CC0();

  if (!v6)
  {
    goto LABEL_2;
  }

  if (!sub_255750410())
  {

LABEL_2:

    return;
  }

  v13 = v5;
  for (i = 0; ; ++i)
  {
    v8 = sub_2556E87E0(v12, i, v6, v3);
    v10 = *v9;
    (v8)(v12, 0);
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [a1 deleteObject_];

    if (v11 == sub_255750410())
    {

      return;
    }
  }

  __break(1u);
}

void static NSManagedObject.batchDeleteAll(context:)(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [swift_getObjCClassFromMetadata() fetchRequest];
  v3 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v8[0] = 0;
  v4 = [a1 executeRequest:v3 error:v8];
  if (v4)
  {
    v5 = v4;
    v6 = v8[0];
  }

  else
  {
    v7 = v8[0];
    sub_25574ED90();

    swift_willThrow();
  }
}

uint64_t sub_2556E84A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v11 = v7;
  v13 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_255755060;
  *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  *(v14 + 64) = sub_2556E89A0(a7, a5, a6);
  *(v14 + 32) = a1;

  v15 = sub_255750750();
  [v13 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  sub_2557508C0();
  if (!v7)
  {
    v11 = sub_255750CC0();

    if (!v11)
    {
      v11 = sub_2557503D0();
    }
  }

  return v11;
}

uint64_t static Identifiable<>.fetchAll(context:)(uint64_t a1, uint64_t a2)
{
  v3 = [swift_getObjCClassFromMetadata() fetchRequest];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  sub_2557508C0();
  if (!v2)
  {
    v4 = sub_255750CC0();

    if (!v4)
    {
      v4 = sub_2557503D0();
    }
  }

  return v4;
}

unint64_t sub_2556E8720()
{
  result = qword_27F7BDD68;
  if (!qword_27F7BDD68)
  {
    sub_255669A88(255, &unk_27F7BF1F0, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDD68);
  }

  return result;
}

unint64_t sub_2556E8788()
{
  result = qword_27F7BF200;
  if (!qword_27F7BF200)
  {
    sub_25574F0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF200);
  }

  return result;
}

uint64_t (*sub_2556E87E0(uint64_t (**a1)(), uint64_t a2, uint64_t a3, uint64_t (*a4)()))()
{
  v8 = *(a4 - 1);
  v9 = v8;
  a1[1] = a4;
  a1[2] = v8;
  v10 = *(v8 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  a1[3] = v11;
  v13 = sub_2557503F0();
  sub_2557503A0();
  if (v13)
  {
    (*(v9 + 16))(v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, a4);
    return sub_2556E8954;
  }

  result = sub_255750B50();
  if (v10 == 8)
  {
    *a1 = result;
    (*(v9 + 16))(v12, a1, a4);
    swift_unknownObjectRelease();
    return sub_2556E8954;
  }

  __break(1u);
  return result;
}

void sub_2556E8954(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

uint64_t sub_2556E89A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t MergeableTextList.markerFormatString.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MergeableTextList.init(startingItemNumber:markerFormatString:listOptions:unknownProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for MergeableTextList(0) + 28);
  sub_25574FB20();
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v13 = sub_25574FB30();
  v14 = *(*(v13 - 8) + 40);

  return v14(&a6[v12], a5, v13);
}

uint64_t MergeableTextList.hash(into:)(uint64_t a1)
{
  MEMORY[0x259C3EC60](*v1);
  sub_2557501F0();
  MEMORY[0x259C3EC60](v1[3]);
  type metadata accessor for MergeableTextList(0);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  return sub_2557500A0();
}

uint64_t MergeableTextList.hashValue.getter()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v0);
  sub_2557501F0();
  MEMORY[0x259C3EC60](v0[3]);
  type metadata accessor for MergeableTextList(0);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556E8C5C()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v0);
  sub_2557501F0();
  MEMORY[0x259C3EC60](v0[3]);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556E8D20(uint64_t a1)
{
  MEMORY[0x259C3EC60](*v1);
  sub_2557501F0();
  MEMORY[0x259C3EC60](v1[3]);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  return sub_2557500A0();
}

uint64_t sub_2556E8DC8(uint64_t a1)
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v1);
  sub_2557501F0();
  MEMORY[0x259C3EC60](v1[3]);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t MergeableTextList.debugDescription.getter()
{
  v4 = *(v0 + 8);

  MEMORY[0x259C3DED0](23328, 0xE200000000000000);
  v1 = sub_255750E60();
  MEMORY[0x259C3DED0](v1);

  MEMORY[0x259C3DED0](58, 0xE100000000000000);
  v2 = sub_255750E60();
  MEMORY[0x259C3DED0](v2);

  MEMORY[0x259C3DED0](10589, 0xE200000000000000);
  return v4;
}

uint64_t MergeableTextLists.init(textLists:unknownProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for MergeableTextLists(0) + 20);
  sub_25574FB20();
  *a3 = a1;
  v7 = sub_25574FB30();
  v8 = *(*(v7 - 8) + 40);

  return v8(&a3[v6], a2, v7);
}

uint64_t static MergeableTextLists.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_2556E9068(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MergeableTextLists(0);

  return sub_25574FAF0();
}

uint64_t sub_2556E9068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableTextList(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_17:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_2556EBDE8(v13, v10, type metadata accessor for MergeableTextList);
      sub_2556EBDE8(v14, v7, type metadata accessor for MergeableTextList);
      if (*v10 != *v7)
      {
        break;
      }

      v16 = v10[1] == v7[1] && v10[2] == v7[2];
      if (!v16 && (sub_255750EB0() & 1) == 0 || v10[3] != v7[3])
      {
        break;
      }

      v17 = sub_25574FAF0();
      sub_2556EC028(v7);
      sub_2556EC028(v10);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_2556EC028(v7);
    sub_2556EC028(v10);
    goto LABEL_17;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t MergeableTextLists.hash(into:)(uint64_t a1)
{
  sub_2556EBAB8(a1, *v1);
  type metadata accessor for MergeableTextLists(0);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  return sub_2557500A0();
}

uint64_t MergeableTextLists.hashValue.getter()
{
  sub_255750F80();
  sub_2556EBAB8(v2, *v0);
  type metadata accessor for MergeableTextLists(0);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556E939C()
{
  sub_255750F80();
  sub_2556EBAB8(v2, *v0);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556E9444(uint64_t a1)
{
  sub_2556EBAB8(a1, *v1);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  return sub_2557500A0();
}

uint64_t sub_2556E94D0(uint64_t a1)
{
  sub_255750F80();
  sub_2556EBAB8(v3, *v1);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556E9574(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_2556E9068(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_25574FAF0();
}

void MergeableTextLists.debugDescription.getter()
{
  type metadata accessor for MergeableTextList(0);

  JUMPOUT(0x259C3E060);
}

void sub_2556E9624()
{
  type metadata accessor for MergeableTextList(0);

  JUMPOUT(0x259C3E060);
}

uint64_t MergeableTextLists.copy(renamingReferences:)@<X0>(uint64_t *a2@<X8>)
{
  v4 = sub_25574FB30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556EBDE8(v2, a2, type metadata accessor for MergeableTextLists);
  type metadata accessor for MergeableTextList(0);
  sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList, &protocol conformance descriptor for MergeableTextList);
  v8 = sub_255750450();

  *a2 = v8;
  v9 = type metadata accessor for MergeableTextLists(0);
  sub_25574FB00();
  return (*(v5 + 40))(a2 + *(v9 + 20), v7, v4);
}

uint64_t MergeableTextLists.visitReferences(_:)(uint64_t a1)
{
  type metadata accessor for MergeableTextList(0);
  sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList, &protocol conformance descriptor for MergeableTextList);
  sub_255750440();
  type metadata accessor for MergeableTextLists(0);
  return sub_25574FAE0();
}

uint64_t MergeableTextLists.encode(to:)()
{
  result = sub_25574FF70();
  if (!v0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF228, &unk_25575A6E0);
    sub_2556EBD34();
    sub_25574FF80();

    type metadata accessor for MergeableTextLists(0);
    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableTextLists.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v54 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v61 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v54 - v11;
  v65 = sub_25574FB30();
  v13 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for MergeableTextLists(0) + 20);
  v67 = a2;
  sub_25574FB20();
  v17 = v66;
  v18 = sub_25574FEE0();
  v66 = v17;
  if (v17)
  {

    goto LABEL_3;
  }

  v55 = v12;
  v56 = v10;
  v62 = v7;
  v63 = v6;
  v60 = v15;
  v64 = v18;
  if (sub_25574FF00())
  {
    type metadata accessor for MergeableTextList(0);
    sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList, &protocol conformance descriptor for MergeableTextList);
    v22 = v66;
    v23 = sub_255750460();
    v24 = v22;
    if (v22)
    {

LABEL_3:
      v19 = v67;
      v20 = v65;
      return (*(v13 + 8))(v19 + v16, v20);
    }

    v57 = v16;
    v58 = v13;
    v59 = a1;
  }

  else
  {
    v57 = v16;
    v58 = v13;
    v59 = a1;
    type metadata accessor for MergeableTextList(0);
    sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList, &protocol conformance descriptor for MergeableTextList);
    v23 = sub_255750430();
    v24 = v66;
  }

  v54[1] = v23;
  *v67 = v23;
  v25 = sub_25574FEF0();
  v26 = sub_255676334(v25);

  v69 = v26;
  sub_255676690(1);
  v27 = v69 + 56;
  v28 = 1 << *(v69 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v69 + 56);
  v31 = (v28 + 63) >> 6;
  v32 = (v61 + 56);
  v33 = v69;

  v34 = 0;
  v66 = MEMORY[0x277D84F90];
  while (1)
  {
    v35 = v34;
    if (!v30)
    {
      break;
    }

LABEL_17:
    v36 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v37 = *(*(v33 + 48) + ((v34 << 9) | (8 * v36)));
    if (sub_25574FF00())
    {
      v40 = v62;
      v39 = v63;
      *v63 = v37;
      v41 = v39;
      sub_25574F310();
      if (v24)
      {
LABEL_32:

        v19 = v67;
        v20 = v65;
        v16 = v57;
        v13 = v58;
        return (*(v13 + 8))(v19 + v16, v20);
      }

      (*v32)(v41, 0, 1, v40);
      v42 = v41;
      v43 = v55;
      sub_2556AA69C(v42, v55);
      sub_2556AA69C(v43, v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_25569874C(0, v66[2] + 1, 1, v66);
      }

      v44 = v61;
      v46 = v66[2];
      v45 = v66[3];
      v47 = v56;
      if (v46 >= v45 >> 1)
      {
        v49 = sub_25569874C((v45 > 1), v46 + 1, 1, v66);
        v44 = v61;
        v66 = v49;
        v47 = v56;
      }

      v48 = v66;
      v66[2] = v46 + 1;
      sub_2556AA69C(v47, v48 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v46);
    }

    else
    {
      v38 = v63;
      (*v32)(v63, 1, 1, v62);
      sub_2556DB128(v38);
    }
  }

  while (1)
  {
    v34 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v34 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v34);
    ++v35;
    if (v30)
    {
      goto LABEL_17;
    }
  }

  v50 = v66;
  if (v66[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
    v51 = sub_255750C90();
  }

  else
  {
    v51 = MEMORY[0x277D84F98];
  }

  v19 = v67;
  v13 = v58;
  v52 = v65;
  v16 = v57;
  v53 = v60;
  v68 = v51;
  sub_2556EAF20(v50, 1, &v68);
  if (v24)
  {

    v20 = v52;
    return (*(v13 + 8))(v19 + v16, v20);
  }

  sub_25574FB40();

  return (*(v13 + 40))(v19 + v16, v53, v52);
}

uint64_t sub_2556E9F9C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_25574FB30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556EBDE8(v3, a3, type metadata accessor for MergeableTextLists);
  type metadata accessor for MergeableTextList(0);
  sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList, &protocol conformance descriptor for MergeableTextList);
  v10 = sub_255750450();

  *a3 = v10;
  sub_25574FB00();
  return (*(v7 + 40))(a3 + *(a2 + 20), v9, v6);
}

uint64_t sub_2556EA11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2556EBCEC(&qword_27F7BE9A0, type metadata accessor for MergeableTextLists, &protocol conformance descriptor for MergeableTextLists);
  sub_2556EBCEC(&qword_27F7BF240, type metadata accessor for MergeableTextLists, &protocol conformance descriptor for MergeableTextLists);

  return sub_25574FDD0();
}

uint64_t sub_2556EA1E8(uint64_t a1)
{
  type metadata accessor for MergeableTextList(0);
  sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList, &protocol conformance descriptor for MergeableTextList);
  sub_255750440();
  return sub_25574FAE0();
}

uint64_t sub_2556EA29C()
{
  result = sub_25574FF70();
  if (!v0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF228, &unk_25575A6E0);
    sub_2556EBD34();
    sub_25574FF80();

    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableTextList.copy(renamingReferences:)@<X0>(char *a2@<X8>)
{
  v4 = sub_25574FB30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556EBDE8(v2, a2, type metadata accessor for MergeableTextList);
  v8 = v2[1];
  *a2 = *v2;
  v9 = v2[2];

  *(a2 + 1) = v8;
  *(a2 + 2) = v9;
  *(a2 + 3) = v2[3];
  v10 = type metadata accessor for MergeableTextList(0);
  sub_25574FB00();
  return (*(v5 + 40))(&a2[*(v10 + 28)], v7, v4);
}

uint64_t MergeableTextList.encode(to:)()
{
  result = sub_25574FF70();
  if (!v0)
  {
    sub_25574FF80();

    sub_25574FF80();

    sub_25574FF80();
    type metadata accessor for MergeableTextList(0);
    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableTextList.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v59 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v70 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = sub_25574FB30();
  v71 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2[3] = 0;
  v72 = *(type metadata accessor for MergeableTextList(0) + 28);
  v73 = a2;
  sub_25574FB20();
  v17 = sub_25574FEE0();
  if (v2)
  {

    v18 = v71;
    v19 = v72;
    v20 = v14;
    return (*(v18 + 8))(v73 + v19, v20);
  }

  else
  {
    v22 = v17;
    v65 = v11;
    v66 = v16;
    v64 = v13;
    v69 = v8;
    if (sub_25574FF00())
    {
      v23 = sub_2557505E0();
    }

    else
    {
      v23 = sub_2557505D0();
    }

    *v73 = v23;
    if (sub_25574FF00())
    {
      v24 = sub_255750260();
    }

    else
    {
      v24 = sub_255750250();
    }

    v26 = v25;
    v27 = v73;
    v73[1] = v24;
    v27[2] = v25;
    v28 = sub_25574FF00();
    v67 = v7;
    if (v28)
    {
      v29 = sub_255750970();
      v60 = v26;
      v61 = v14;
      v62 = a1;
      v73[3] = v29;
    }

    else
    {
      v60 = v26;
      v61 = v14;
      v62 = a1;
    }

    v68 = v22;
    v30 = sub_25574FEF0();
    v31 = sub_255676334(v30);

    v75 = v31;
    sub_255676690(1);
    sub_255676690(2);
    sub_255676690(3);
    v32 = v75 + 56;
    v33 = 1 << *(v75 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v75 + 56);
    v36 = (v33 + 63) >> 6;
    v37 = (v70 + 56);
    v38 = v75;

    v39 = 0;
    v63 = MEMORY[0x277D84F90];
    while (1)
    {
      v40 = v39;
      if (!v35)
      {
        break;
      }

LABEL_20:
      v41 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v42 = *(*(v38 + 48) + ((v39 << 9) | (8 * v41)));
      if (sub_25574FF00())
      {
        v44 = v67;
        *v67 = v42;
        sub_25574F310();
        (*v37)(v44, 0, 1, v69);
        v45 = v44;
        v46 = v64;
        sub_2556AA69C(v45, v64);
        sub_2556AA69C(v46, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_25569874C(0, v63[2] + 1, 1, v63);
        }

        v47 = v70;
        v49 = v63[2];
        v48 = v63[3];
        v50 = v65;
        if (v49 >= v48 >> 1)
        {
          v52 = sub_25569874C((v48 > 1), v49 + 1, 1, v63);
          v47 = v70;
          v63 = v52;
          v50 = v65;
        }

        v51 = v63;
        v63[2] = v49 + 1;
        sub_2556AA69C(v50, v51 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v49);
      }

      else
      {
        v43 = v67;
        (*v37)(v67, 1, 1, v69);
        sub_2556DB128(v43);
      }
    }

    while (1)
    {
      v39 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);

        v20 = v61;
        v19 = v72;
        v18 = v71;
        return (*(v18 + 8))(v73 + v19, v20);
      }

      if (v39 >= v36)
      {
        break;
      }

      v35 = *(v32 + 8 * v39);
      ++v40;
      if (v35)
      {
        goto LABEL_20;
      }
    }

    v53 = v63;
    if (v63[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v54 = sub_255750C90();
    }

    else
    {
      v54 = MEMORY[0x277D84F98];
    }

    v55 = v61;
    v56 = v71;
    v57 = v72;
    v74 = v54;
    sub_2556EB4EC(v53, 1, &v74);
    v58 = v66;
    sub_25574FB40();

    return (*(v56 + 40))(v73 + v57, v58, v55);
  }
}

uint64_t sub_2556EACB8@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_25574FB30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556EBDE8(v3, a3, type metadata accessor for MergeableTextList);
  v10 = v3[1];
  *a3 = *v3;
  v11 = v3[2];

  *(a3 + 1) = v10;
  *(a3 + 2) = v11;
  *(a3 + 3) = v3[3];
  sub_25574FB00();
  return (*(v7 + 40))(&a3[*(a2 + 28)], v9, v6);
}

uint64_t sub_2556EADFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList, &protocol conformance descriptor for MergeableTextList);
  sub_2556EBCEC(&qword_27F7BF238, type metadata accessor for MergeableTextList, &protocol conformance descriptor for MergeableTextList);

  return sub_25574FDD0();
}

void sub_2556EAF20(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  v62 = *(a1 + 16);
  if (!v62)
  {
    goto LABEL_23;
  }

  LODWORD(v59) = a2;
  v57 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v61 = *(v13 + 72);
  v63 = a1;
  v56 = v17;
  sub_2556AAA64(a1 + v17, &v55 - v14);
  v58 = v8;
  v18 = *(v8 + 32);
  v69 = *v15;
  v19 = v69;
  v60 = v16;
  v64 = v7;
  v65 = v10;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v22 = sub_255742798(v19);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (v59)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v25, v59 & 1);
  v27 = sub_255742798(v19);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_13:
      v33 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v33[6] + 8 * v22) = v19;
      v34 = v33[7];
      v59 = *(v58 + 72);
      v35 = (v34 + v59 * v22);
      v36 = v64;
      v18(v35, v65, v64);
      v37 = v33[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v33[2] = v39;
        v40 = v63;
        if (v62 != 1)
        {
          v41 = v63 + v61 + v56;
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            sub_2556AAA64(v41, v15);
            v69 = *v15;
            v43 = v69;
            v18(v65, v15 + v60, v36);
            v44 = *a3;
            v45 = sub_255742798(v43);
            v47 = v44[2];
            v48 = (v46 & 1) == 0;
            v38 = __OFADD__(v47, v48);
            v49 = v47 + v48;
            if (v38)
            {
              goto LABEL_24;
            }

            v50 = v46;
            if (v44[3] < v49)
            {
              sub_255743F6C(v49, 1);
              v45 = sub_255742798(v43);
              if ((v50 & 1) != (v51 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v50)
            {
              goto LABEL_10;
            }

            v52 = *a3;
            *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
            *(v52[6] + 8 * v45) = v43;
            v36 = v64;
            v18((v52[7] + v59 * v45), v65, v64);
            v53 = v52[2];
            v38 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v38)
            {
              goto LABEL_25;
            }

            ++v42;
            v52[2] = v54;
            v41 += v61;
            v40 = v63;
            if (v62 == v42)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v29 = sub_25574F750();
    sub_2556EBCEC(&qword_27F7BE110, MEMORY[0x277CFB5B0], MEMORY[0x277CFB5B8]);
    v30 = swift_allocError();
    *v31 = 0xD00000000000002CLL;
    v31[1] = 0x80000002557530D0;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277CFB5A8], v29);
    swift_willThrow();
    v68 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v58 + 8))(v65, v64);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

void sub_2556EB4EC(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  v62 = *(a1 + 16);
  if (!v62)
  {
    goto LABEL_23;
  }

  LODWORD(v59) = a2;
  v57 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v61 = *(v13 + 72);
  v63 = a1;
  v56 = v17;
  sub_2556AAA64(a1 + v17, &v55 - v14);
  v58 = v8;
  v18 = *(v8 + 32);
  v69 = *v15;
  v19 = v69;
  v60 = v16;
  v64 = v7;
  v65 = v10;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v22 = sub_255742798(v19);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (v59)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v25, v59 & 1);
  v27 = sub_255742798(v19);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_13:
      v33 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v33[6] + 8 * v22) = v19;
      v34 = v33[7];
      v59 = *(v58 + 72);
      v35 = (v34 + v59 * v22);
      v36 = v64;
      v18(v35, v65, v64);
      v37 = v33[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v33[2] = v39;
        v40 = v63;
        if (v62 != 1)
        {
          v41 = v63 + v61 + v56;
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            sub_2556AAA64(v41, v15);
            v69 = *v15;
            v43 = v69;
            v18(v65, v15 + v60, v36);
            v44 = *a3;
            v45 = sub_255742798(v43);
            v47 = v44[2];
            v48 = (v46 & 1) == 0;
            v38 = __OFADD__(v47, v48);
            v49 = v47 + v48;
            if (v38)
            {
              goto LABEL_24;
            }

            v50 = v46;
            if (v44[3] < v49)
            {
              sub_255743F6C(v49, 1);
              v45 = sub_255742798(v43);
              if ((v50 & 1) != (v51 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v50)
            {
              goto LABEL_10;
            }

            v52 = *a3;
            *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
            *(v52[6] + 8 * v45) = v43;
            v36 = v64;
            v18((v52[7] + v59 * v45), v65, v64);
            v53 = v52[2];
            v38 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v38)
            {
              goto LABEL_25;
            }

            ++v42;
            v52[2] = v54;
            v41 += v61;
            v40 = v63;
            if (v62 == v42)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v29 = sub_25574F750();
    sub_2556EBCEC(&qword_27F7BE110, MEMORY[0x277CFB5B0], MEMORY[0x277CFB5B8]);
    v30 = swift_allocError();
    *v31 = 0xD00000000000002BLL;
    v31[1] = 0x80000002557530A0;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277CFB5A8], v29);
    swift_willThrow();
    v68 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v58 + 8))(v65, v64);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

uint64_t sub_2556EBAB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MergeableTextList(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a2 + 16);
  result = MEMORY[0x259C3EC60](v7);
  if (v7)
  {
    v9 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_2556EBDE8(v9, v6, type metadata accessor for MergeableTextList);
      MEMORY[0x259C3EC60](*v6);
      sub_2557501F0();
      MEMORY[0x259C3EC60](v6[3]);
      sub_25574FB30();
      sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
      sub_2557500A0();
      result = sub_2556EC028(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t _s13JournalShared17MergeableTextListV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_255750EB0() & 1) == 0 || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for MergeableTextList(0);

  return sub_25574FAF0();
}

uint64_t sub_2556EBCEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2556EBD34()
{
  result = qword_27F7BF230;
  if (!qword_27F7BF230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BF228, &unk_25575A6E0);
    sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList, &protocol conformance descriptor for MergeableTextList);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF230);
  }

  return result;
}

uint64_t sub_2556EBDE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2556EC028(uint64_t a1)
{
  v2 = type metadata accessor for MergeableTextList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ThirdPartyMediaAssetMetadata.song.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ThirdPartyMediaAssetMetadata.albumName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ThirdPartyMediaAssetMetadata.artistName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t type metadata accessor for ThirdPartyMediaAssetMetadata(uint64_t a1)
{
  result = qword_27F7BF348;
  if (!qword_27F7BF348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ThirdPartyMediaAssetMetadata.appName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ThirdPartyMediaAssetMetadata(0) + 36));

  return v1;
}

__n128 ThirdPartyMediaAssetMetadata.appBackgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ThirdPartyMediaAssetMetadata(0) + 44);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 ThirdPartyMediaAssetMetadata.appBackgroundColor.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ThirdPartyMediaAssetMetadata(0) + 44);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t ThirdPartyMediaAssetMetadata.colorVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ThirdPartyMediaAssetMetadata(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t ThirdPartyMediaAssetMetadata.colorVariant.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ThirdPartyMediaAssetMetadata(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t sub_2556EC3C8()
{
  v1 = 1802658148;
  if (*v0 != 1)
  {
    v1 = 0x6B72614479726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_2556EC418@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2556EE8D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2556EC440(uint64_t a1)
{
  v2 = sub_2556EC998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556EC47C(uint64_t a1)
{
  v2 = sub_2556EC998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2556EC4C4(uint64_t a1)
{
  v2 = sub_2556ECA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556EC500(uint64_t a1)
{
  v2 = sub_2556ECA40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2556EC53C(uint64_t a1)
{
  v2 = sub_2556ECA94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556EC578(uint64_t a1)
{
  v2 = sub_2556ECA94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2556EC5B4(uint64_t a1)
{
  v2 = sub_2556EC9EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556EC5F0(uint64_t a1)
{
  v2 = sub_2556EC9EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThirdPartyMediaAssetMetadata.ColorVariant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF290, &qword_25575AA70);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF298, &qword_25575AA78);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2A0, &qword_25575AA80);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2A8, &qword_25575AA88);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556EC998();
  sub_255750FF0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_2556ECA40();
      v9 = v21;
      sub_255750DA0();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_2556EC9EC();
      v9 = v24;
      sub_255750DA0();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_2556ECA94();
    sub_255750DA0();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_2556EC998()
{
  result = qword_27F7BF2B0;
  if (!qword_27F7BF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF2B0);
  }

  return result;
}

unint64_t sub_2556EC9EC()
{
  result = qword_27F7BF2B8;
  if (!qword_27F7BF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF2B8);
  }

  return result;
}

unint64_t sub_2556ECA40()
{
  result = qword_27F7BF2C0;
  if (!qword_27F7BF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF2C0);
  }

  return result;
}

unint64_t sub_2556ECA94()
{
  result = qword_27F7BF2C8;
  if (!qword_27F7BF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF2C8);
  }

  return result;
}

uint64_t ThirdPartyMediaAssetMetadata.ColorVariant.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

uint64_t ThirdPartyMediaAssetMetadata.ColorVariant.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2D0, &qword_25575AA90);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2D8, &qword_25575AA98);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2E0, &qword_25575AAA0);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2E8, &qword_25575AAA8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2556EC998();
  v15 = v36;
  sub_255750FE0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_255750D90();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_25569051C();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_255750B90();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEA8, &qword_25575AAB0);
      *v24 = &type metadata for ThirdPartyMediaAssetMetadata.ColorVariant;
      sub_255750CF0();
      sub_255750B80();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_2556ECA40();
          sub_255750CE0();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_2556EC9EC();
          v26 = v17;
          sub_255750CE0();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_2556ECA94();
        sub_255750CE0();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

__n128 ThirdPartyMediaAssetMetadata.init(mediaType:song:albumName:artistName:mediaURL:appName:startTime:appBackgroundColor:colorVariant:)@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14)
{
  v19 = *a1;
  v29 = *a14;
  v20 = type metadata accessor for ThirdPartyMediaAssetMetadata(0);
  v21 = v20[12];
  v22 = a9 + v20[11];
  *(a9 + v21) = 3;
  *a9 = v19;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  sub_255675060(a8, a9 + v20[8], &qword_27F7BE270, &unk_25575A3F0);
  v23 = (a9 + v20[9]);
  *v23 = a10;
  v23[1] = a11;
  sub_255675060(a12, a9 + v20[10], &qword_27F7BEB40, &unk_255754E40);
  result = *a13;
  v25 = *(a13 + 16);
  *v22 = *a13;
  *(v22 + 16) = v25;
  *(v22 + 32) = *(a13 + 32);
  *(a9 + v21) = v29;
  return result;
}

uint64_t sub_2556ED21C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x707954616964656DLL;
    v6 = 0x6D614E6D75626C61;
    if (a1 != 2)
    {
      v6 = 0x614E747369747261;
    }

    if (a1)
    {
      v5 = 1735290739;
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
    v1 = 0x6D69547472617473;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x726156726F6C6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x4C5255616964656DLL;
    if (a1 != 4)
    {
      v3 = 0x656D614E707061;
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

uint64_t sub_2556ED344@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2556EE9E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2556ED36C(uint64_t a1)
{
  v2 = sub_2556ED7BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556ED3A8(uint64_t a1)
{
  v2 = sub_2556ED7BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThirdPartyMediaAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2F0, &qword_25575AAB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556ED7BC();
  sub_255750FF0();
  LOBYTE(v14[0]) = *v3;
  v16 = 0;
  sub_2556E6B88();
  sub_255750E30();
  if (!v2)
  {
    LOBYTE(v14[0]) = 1;
    sub_255750DB0();
    LOBYTE(v14[0]) = 2;
    sub_255750DB0();
    LOBYTE(v14[0]) = 3;
    sub_255750DB0();
    v9 = type metadata accessor for ThirdPartyMediaAssetMetadata(0);
    LOBYTE(v14[0]) = 4;
    sub_25574EF10();
    sub_2556EE210(&qword_27F7BDC20, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_255750DF0();
    LOBYTE(v14[0]) = 5;
    sub_255750DB0();
    LOBYTE(v14[0]) = 6;
    sub_25574F020();
    sub_2556EE210(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
    v10 = &v3[*(v9 + 44)];
    v11 = v10[32];
    v12 = *(v10 + 1);
    v14[0] = *v10;
    v14[1] = v12;
    v15 = v11;
    v16 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF300, &qword_25575AAC0);
    sub_2556EDFD0(&qword_27F7BF308, MEMORY[0x277D84AF0]);
    sub_255750DF0();
    LOBYTE(v14[0]) = v3[*(v9 + 48)];
    v16 = 8;
    sub_2556ED810();
    sub_255750DF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2556ED7BC()
{
  result = qword_27F7BF2F8;
  if (!qword_27F7BF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF2F8);
  }

  return result;
}

unint64_t sub_2556ED810()
{
  result = qword_27F7BF310;
  if (!qword_27F7BF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF310);
  }

  return result;
}

uint64_t ThirdPartyMediaAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF318, &qword_25575AAC8);
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for ThirdPartyMediaAssetMetadata(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 48);
  v14[v15] = 3;
  v16 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2556ED7BC();
  v17 = v40;
  sub_255750FE0();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v40 = v7;
  v35 = v15;
  v18 = v38;
  v45 = 0;
  sub_2556E7194();
  v19 = v39;
  sub_255750D80();
  *v14 = v42;
  LOBYTE(v42) = 1;
  *(v14 + 1) = sub_255750D00();
  *(v14 + 2) = v20;
  LOBYTE(v42) = 2;
  *(v14 + 3) = sub_255750D00();
  *(v14 + 4) = v21;
  LOBYTE(v42) = 3;
  v22 = sub_255750D00();
  v34 = v11;
  *(v14 + 5) = v22;
  *(v14 + 6) = v23;
  sub_25574EF10();
  LOBYTE(v42) = 4;
  sub_2556EE210(&qword_27F7BDC40, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v24 = v40;
  sub_255750D40();
  v25 = v34;
  sub_255675060(v24, &v14[v34[8]], &qword_27F7BE270, &unk_25575A3F0);
  LOBYTE(v42) = 5;
  v26 = sub_255750D00();
  v27 = &v14[v25[9]];
  *v27 = v26;
  v27[1] = v28;
  sub_25574F020();
  LOBYTE(v42) = 6;
  sub_2556EE210(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_255750D40();
  sub_255675060(v37, &v14[v25[10]], &qword_27F7BEB40, &unk_255754E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF300, &qword_25575AAC0);
  v45 = 7;
  sub_2556EDFD0(&qword_27F7BF320, MEMORY[0x277D84AF8]);
  sub_255750D40();
  v29 = &v14[v25[11]];
  v30 = v44;
  v31 = v43;
  *v29 = v42;
  *(v29 + 1) = v31;
  v29[32] = v30;
  v45 = 8;
  sub_2556EE020();
  sub_255750D40();
  (*(v18 + 8))(v10, v19);
  v32 = v36;
  v14[v35] = v42;
  sub_2556EE074(v14, v32);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_2556EE0D8(v14);
}

uint64_t sub_2556EDFD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BF300, &qword_25575AAC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2556EE020()
{
  result = qword_27F7BF328;
  if (!qword_27F7BF328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF328);
  }

  return result;
}

uint64_t sub_2556EE074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThirdPartyMediaAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556EE0D8(uint64_t a1)
{
  v2 = type metadata accessor for ThirdPartyMediaAssetMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2556EE138()
{
  result = qword_27F7BF330;
  if (!qword_27F7BF330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF330);
  }

  return result;
}

uint64_t sub_2556EE18C(uint64_t a1)
{
  *(a1 + 8) = sub_2556EE210(&qword_27F7BF338, type metadata accessor for ThirdPartyMediaAssetMetadata, &protocol conformance descriptor for ThirdPartyMediaAssetMetadata);
  result = sub_2556EE210(&qword_27F7BF340, type metadata accessor for ThirdPartyMediaAssetMetadata, &protocol conformance descriptor for ThirdPartyMediaAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556EE210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2556EE2B0(uint64_t a1)
{
  sub_25566BFA8(319, &qword_27F7BE538, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2556E7508(319, &qword_27F7BDC70, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      sub_2556E7508(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_2556EE3F0(319);
        if (v4 <= 0x3F)
        {
          sub_25566BFA8(319, &qword_27F7BF360, &type metadata for ThirdPartyMediaAssetMetadata.ColorVariant);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2556EE3F0(uint64_t a1)
{
  if (!qword_27F7BF358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BF300, &qword_25575AAC0);
    v1 = sub_255750950();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BF358);
    }
  }
}

unint64_t sub_2556EE4B8()
{
  result = qword_27F7BF368;
  if (!qword_27F7BF368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF368);
  }

  return result;
}

unint64_t sub_2556EE510()
{
  result = qword_27F7BF370;
  if (!qword_27F7BF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF370);
  }

  return result;
}

unint64_t sub_2556EE568()
{
  result = qword_27F7BF378;
  if (!qword_27F7BF378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF378);
  }

  return result;
}

unint64_t sub_2556EE5C0()
{
  result = qword_27F7BF380;
  if (!qword_27F7BF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF380);
  }

  return result;
}

unint64_t sub_2556EE618()
{
  result = qword_27F7BF388;
  if (!qword_27F7BF388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF388);
  }

  return result;
}

unint64_t sub_2556EE670()
{
  result = qword_27F7BF390;
  if (!qword_27F7BF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF390);
  }

  return result;
}

unint64_t sub_2556EE6C8()
{
  result = qword_27F7BF398;
  if (!qword_27F7BF398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF398);
  }

  return result;
}

unint64_t sub_2556EE720()
{
  result = qword_27F7BF3A0;
  if (!qword_27F7BF3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF3A0);
  }

  return result;
}

unint64_t sub_2556EE778()
{
  result = qword_27F7BF3A8;
  if (!qword_27F7BF3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF3A8);
  }

  return result;
}

unint64_t sub_2556EE7D0()
{
  result = qword_27F7BF3B0;
  if (!qword_27F7BF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF3B0);
  }

  return result;
}

unint64_t sub_2556EE828()
{
  result = qword_27F7BF3B8;
  if (!qword_27F7BF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF3B8);
  }

  return result;
}

unint64_t sub_2556EE880()
{
  result = qword_27F7BF3C0;
  if (!qword_27F7BF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF3C0);
  }

  return result;
}

uint64_t sub_2556EE8D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B72614479726576 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2556EE9E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1735290739 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C5255616964656DLL && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000255753100 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726156726F6C6F63 && a2 == 0xEC000000746E6169)
  {

    return 8;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t NSAttributedString.getAttributedStringAsData()()
{
  v29 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v3 = [v2 length];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = ObjectType;
  ObjectType = swift_allocObject();
  ObjectType[2] = sub_2556EF7A0;
  ObjectType[3] = v5;
  aBlock[4] = sub_2556EF7A8;
  aBlock[5] = ObjectType;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2556EF6D0;
  aBlock[3] = &block_descriptor_1;
  v6 = _Block_copy(aBlock);
  v2 = v2;

  [v2 enumerateAttributesInRange:0 options:v4 usingBlock:{0, v6}];
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v7 = [v0 length];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF3E8, &qword_25575B0C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255755060;
  v9 = *MEMORY[0x277D74090];
  *(inited + 32) = *MEMORY[0x277D74090];
  v10 = *MEMORY[0x277D74130];
  type metadata accessor for DocumentType(0);
  *(inited + 64) = v11;
  *(inited + 40) = v10;
  v12 = v9;
  v13 = v10;
  sub_2556EF914(inited);
  swift_setDeallocating();
  sub_255674B20(inited + 32, &qword_27F7BF3F0, &qword_25575B0C8);
  type metadata accessor for DocumentAttributeKey(0);
  sub_25566CD08(&qword_27F7BDB08, type metadata accessor for DocumentAttributeKey, &unk_255754D60);
  v14 = sub_255750070();

  aBlock[0] = 0;
  v15 = [v0 dataFromRange:0 documentAttributes:v7 error:{v14, aBlock}];

  v16 = aBlock[0];
  if (v15)
  {
    v17 = sub_25574EF90();

    return v17;
  }

  v18 = v16;
  ObjectType = sub_25574ED90();

  swift_willThrow();
  if (qword_27F7BD7A0 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v19 = sub_25574F2C0();
  __swift_project_value_buffer(v19, qword_27F7BF3C8);
  v20 = ObjectType;
  v21 = sub_25574F2A0();
  v22 = sub_255750780();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = ObjectType;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_255661000, v21, v22, "WARNING: failed to turn NSAttributedString to Data: %@", v23, 0xCu);
    sub_255674B20(v24, &qword_27F7BEC80, &qword_255757E90);
    MEMORY[0x259C3F520](v24, -1, -1);
    MEMORY[0x259C3F520](v23, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2556EF1A8()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BF3C8);
  v1 = __swift_project_value_buffer(v0, qword_27F7BF3C8);
  if (qword_27F7BD5B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2556EF270()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF420, &qword_25575B0E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25575B0B0;
  v1 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v2 = *MEMORY[0x277D740E8];
  v3 = *MEMORY[0x277D74118];
  *(inited + 40) = *MEMORY[0x277D740E8];
  *(inited + 48) = v3;
  v4 = *MEMORY[0x277D741F0];
  v5 = *MEMORY[0x277D74150];
  *(inited + 56) = *MEMORY[0x277D741F0];
  *(inited + 64) = v5;
  v6 = *MEMORY[0x277D74148];
  v7 = *MEMORY[0x277D74200];
  *(inited + 72) = *MEMORY[0x277D74148];
  *(inited + 80) = v7;
  v8 = *MEMORY[0x277D740C0];
  v9 = *MEMORY[0x277D74060];
  *(inited + 88) = *MEMORY[0x277D740C0];
  *(inited + 96) = v9;
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = sub_255725FC8(inited);
  swift_setDeallocating();
  type metadata accessor for Key(0);
  result = swift_arrayDestroy();
  off_27F7BF3E0 = v19;
  return result;
}

uint64_t static NSAttributedString.allowedAttributes.getter()
{
  if (qword_27F7BD7A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2556EF418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = a3;
  v32 = a5;
  v30 = a2;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v34 = v9;
  v35 = v5;
  while (v8)
  {
    v12 = v11;
LABEL_17:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    v17 = *(*(a1 + 48) + 8 * v16);
    sub_255678EBC(*(a1 + 56) + 32 * v16, v39);
    *&v36 = v17;
    sub_255663374(v39, (&v36 + 8));
    v18 = v17;
LABEL_18:
    v40[0] = v36;
    v40[1] = v37;
    v41 = v38;
    if (!v36)
    {
    }

    if (qword_27F7BD7A8 != -1)
    {
      swift_once();
    }

    v19 = off_27F7BF3E0;
    if (*(off_27F7BF3E0 + 2) && (sub_2557501B0(), sub_255750F80(), sub_2557501F0(), v20 = sub_255750FD0(), , v21 = -1 << v19[32], v22 = v20 & ~v21, ((*&v19[((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v22) & 1) != 0))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = sub_2557501B0();
        v26 = v25;
        if (v24 == sub_2557501B0() && v26 == v27)
        {
          break;
        }

        v29 = sub_255750EB0();

        if (v29)
        {
          goto LABEL_31;
        }

        v22 = (v22 + 1) & v23;
        if (((*&v19[((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v22) & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_30:
      [v32 removeAttribute:v36 range:{v30, v31, v30, v31, v32}];
LABEL_31:
    }

    result = __swift_destroy_boxed_opaque_existential_1(v40 + 1);
    v9 = v34;
    v5 = v35;
  }

  if (v9 <= v11 + 1)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v8 = 0;
      v38 = 0;
      v11 = v14;
      v36 = 0u;
      v37 = 0u;
      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2556EF6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_25566CD08(&qword_27F7BDB18, type metadata accessor for Key, &unk_255754548);
  v9 = sub_255750080();
  v8(v9, a3, a4, a5);
}

unint64_t sub_2556EF7D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF448, &qword_25575B110);
    v3 = sub_255750C90();
    v4 = a1 + 32;

    while (1)
    {
      sub_255663294(v4, v13, &qword_27F7BF450, &qword_25575B118);
      result = sub_255674984(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_255663374(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_2556EF914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF428, &qword_25575B0F0);
    v3 = sub_255750C90();
    v4 = a1 + 32;

    while (1)
    {
      sub_255663294(v4, &v11, &qword_27F7BF3F0, &qword_25575B0C8);
      v5 = v11;
      result = sub_255674870(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_255663374(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

id WrappedMergeableAppStorage.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2556CB860(a1, v3 + OBJC_IVAR___WrappedMergeableAppStorage_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2556EFB28(a1);
  return v4;
}

id WrappedMergeableAppStorage.init(_:)(uint64_t a1)
{
  sub_2556CB860(a1, v1 + OBJC_IVAR___WrappedMergeableAppStorage_value);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WrappedMergeableAppStorage(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2556EFB28(a1);
  return v3;
}

uint64_t sub_2556EFB28(uint64_t a1)
{
  v2 = type metadata accessor for MergeableAppStorage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WrappedMergeableAppStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2556EFC40(uint64_t a1)
{
  v2 = type metadata accessor for WrappedMergeableAppStorage(0);
  v3 = objc_allocWithZone(v2);
  sub_2556CB860(a1, v3 + OBJC_IVAR___WrappedMergeableAppStorage_value);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2556EFB28(a1);
  return v4;
}

id sub_2556EFD1C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t MusicAssetMetadata.mediaId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for MusicAssetMetadata(uint64_t a1)
{
  result = qword_27F7BF4A0;
  if (!qword_27F7BF4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicAssetMetadata.artistName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicAssetMetadata(0) + 24));

  return v1;
}

uint64_t MusicAssetMetadata.song.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicAssetMetadata(0) + 28));

  return v1;
}

uint64_t MusicAssetMetadata.albumName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicAssetMetadata(0) + 32));

  return v1;
}

uint64_t MusicAssetMetadata.mediaType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MusicAssetMetadata(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14)
{
  v27 = *a14;
  *a9 = a1;
  a9[1] = a2;
  v20 = type metadata accessor for MusicAssetMetadata(0);
  sub_255675060(a3, a9 + v20[5], &qword_27F7BE270, &unk_25575A3F0);
  v21 = (a9 + v20[6]);
  *v21 = a4;
  v21[1] = a5;
  v22 = (a9 + v20[7]);
  *v22 = a6;
  v22[1] = a7;
  v23 = (a9 + v20[8]);
  *v23 = a8;
  v23[1] = a10;
  v24 = a9 + v20[9];
  *v24 = a11;
  v24[8] = a12 & 1;
  result = sub_255675060(a13, a9 + v20[10], &qword_27F7BEB40, &unk_255754E40);
  *(a9 + v20[11]) = v27;
  return result;
}

uint64_t sub_2556F00B4()
{
  v1 = *v0;
  v2 = 0x6449616964656DLL;
  v3 = 0x6D69547472617473;
  if (v1 != 6)
  {
    v3 = 0x707954616964656DLL;
  }

  v4 = 0x6D614E6D75626C61;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x614E747369747261;
  if (v1 != 2)
  {
    v5 = 1735290739;
  }

  if (*v0)
  {
    v2 = 0x4C5255616964656DLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2556F01B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2556F11C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2556F01E8(uint64_t a1)
{
  v2 = sub_2556F0598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556F0224(uint64_t a1)
{
  v2 = sub_2556F0598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF478, &qword_25575B1A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556F0598();
  sub_255750FF0();
  v11[15] = 0;
  sub_255750E00();
  if (!v2)
  {
    v9 = type metadata accessor for MusicAssetMetadata(0);
    v11[14] = 1;
    sub_25574EF10();
    sub_2556F0D7C(&qword_27F7BDC20, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_255750DF0();
    v11[13] = 2;
    sub_255750DB0();
    v11[12] = 3;
    sub_255750DB0();
    v11[11] = 4;
    sub_255750DB0();
    v11[10] = 5;
    sub_255750DE0();
    v11[9] = 6;
    sub_25574F020();
    sub_2556F0D7C(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
    v11[8] = *(v3 + *(v9 + 44));
    v11[7] = 7;
    sub_2556E6B88();
    sub_255750DF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2556F0598()
{
  result = qword_27F7BF480;
  if (!qword_27F7BF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF480);
  }

  return result;
}

uint64_t MusicAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF488, &qword_25575B1A8);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for MusicAssetMetadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2556F0598();
  v14 = v38;
  sub_255750FE0();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v38 = v8;
  v34 = v5;
  v15 = v36;
  v48 = 0;
  *v12 = sub_255750D50();
  v12[1] = v16;
  sub_25574EF10();
  v47 = 1;
  sub_2556F0D7C(&qword_27F7BDC40, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v17 = v38;
  sub_255750D40();
  v18 = v15;
  sub_255675060(v17, v12 + v10[5], &qword_27F7BE270, &unk_25575A3F0);
  v46 = 2;
  v19 = sub_255750D00();
  v20 = (v12 + v10[6]);
  *v20 = v19;
  v20[1] = v21;
  v45 = 3;
  v22 = sub_255750D00();
  v23 = (v12 + v10[7]);
  *v23 = v22;
  v23[1] = v24;
  v44 = 4;
  v25 = sub_255750D00();
  v26 = (v12 + v10[8]);
  *v26 = v25;
  v26[1] = v27;
  v43 = 5;
  v28 = sub_255750D30();
  v29 = v12 + v10[9];
  *v29 = v28;
  v29[8] = v30 & 1;
  sub_25574F020();
  v42 = 6;
  sub_2556F0D7C(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v31 = v34;
  sub_255750D40();
  sub_255675060(v31, v12 + v10[10], &qword_27F7BEB40, &unk_255754E40);
  v40 = 7;
  sub_2556E7194();
  sub_255750D40();
  (*(v18 + 8))(0, v37);
  *(v12 + v10[11]) = v41;
  sub_2556F0C38(v12, v35);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_2556F0C9C(v12);
}

uint64_t sub_2556F0C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556F0C9C(uint64_t a1)
{
  v2 = type metadata accessor for MusicAssetMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556F0CF8(uint64_t a1)
{
  *(a1 + 8) = sub_2556F0D7C(&qword_27F7BF490, type metadata accessor for MusicAssetMetadata, &protocol conformance descriptor for MusicAssetMetadata);
  result = sub_2556F0D7C(&qword_27F7BF498, type metadata accessor for MusicAssetMetadata, &protocol conformance descriptor for MusicAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556F0D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2556F0E1C(uint64_t a1)
{
  sub_2556E7508(319, &qword_27F7BDC70, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_25566BFA8(319, &qword_27F7BE538, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BEC00, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_2556E7508(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
        if (v4 <= 0x3F)
        {
          sub_25566BFA8(319, &qword_27F7BF1B0, &type metadata for MediaViewType);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MusicAssetMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicAssetMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2556F10BC()
{
  result = qword_27F7BF4B0;
  if (!qword_27F7BF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF4B0);
  }

  return result;
}

unint64_t sub_2556F1114()
{
  result = qword_27F7BF4B8;
  if (!qword_27F7BF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF4B8);
  }

  return result;
}

unint64_t sub_2556F116C()
{
  result = qword_27F7BF4C0;
  if (!qword_27F7BF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF4C0);
  }

  return result;
}

uint64_t sub_2556F11C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449616964656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C5255616964656DLL && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1735290739 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000255752F70 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    return 7;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t MergeableEntryAssetsPlacement.gridAssetIDs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MergeableEntryAssetsPlacement.gridAssetIDs.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2556F1594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_255663294(a1, &v9 - v6, &unk_27F7BED20, &unk_2557551D0);
  sub_255663294(v7, v5, &unk_27F7BED20, &unk_2557551D0);
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  sub_25574F370();
  return sub_255674B20(v7, &unk_27F7BED20, &unk_2557551D0);
}

uint64_t MergeableEntryAssetsPlacement.slimAssetID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_255663294(a1, &v5 - v3, &unk_27F7BED20, &unk_2557551D0);
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  sub_25574F370();
  return sub_255674B20(a1, &unk_27F7BED20, &unk_2557551D0);
}

void (*MergeableEntryAssetsPlacement.slimAssetID.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  *(v3 + 32) = sub_25574F350();
  return sub_25568C2F0;
}

uint64_t sub_2556F183C(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  return a1(v2);
}

uint64_t sub_2556F1898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  return a4(v5);
}

uint64_t sub_2556F18F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F3A0();
  return (*(v3 + 8))(v8, v2);
}

uint64_t MergeableEntryAssetsPlacement.$slimAssetID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F3A0();
  return (*(v3 + 8))(a1, v2);
}

void (*MergeableEntryAssetsPlacement.$slimAssetID.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 20);
  sub_25574F390();
  return sub_25568C824;
}

uint64_t MergeableEntryAssetsPlacement.hiddenAssetIDs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MergeableEntryAssetsPlacement.hiddenAssetIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MergeableEntryAssetsPlacement.canvasAssetIDs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MergeableEntryAssetsPlacement.canvasAssetIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MergeableEntryAssetsPlacement.init(gridAssetIDs:slimAssetID:hiddenAssetIDs:canvasAssetIDs:unknownProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v29 = a2;
  v30 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = MEMORY[0x28223BE20](v27);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  v12 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v13 = *(v12 + 20);
  v28 = v12;
  v14 = sub_25574F0D0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_255663294(v11, v9, &unk_27F7BED20, &unk_2557551D0);
  v26[1] = sub_255663D60();
  sub_25574F340();
  sub_255674B20(v11, &unk_27F7BED20, &unk_2557551D0);
  v31 = *(v12 + 32);
  sub_25574F850();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v16 = *(v15 - 8);
  v17 = v30;
  (*(v16 + 16))(a6, v30, v15);
  v18 = v29;
  sub_255663294(v29, v11, &unk_27F7BED20, &unk_2557551D0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  (*(*(v19 - 8) + 8))(a6 + v13, v19);
  sub_255663294(v11, v9, &unk_27F7BED20, &unk_2557551D0);
  sub_25574F340();
  sub_255674B20(v18, &unk_27F7BED20, &unk_2557551D0);
  (*(v16 + 8))(v17, v15);
  sub_255674B20(v11, &unk_27F7BED20, &unk_2557551D0);
  v20 = v28;
  v21 = *(v28 + 24);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v23 = *(*(v22 - 8) + 32);
  v23(a6 + v21, v32, v22);
  v23(a6 + *(v20 + 28), v33, v22);
  v24 = sub_25574F860();
  return (*(*(v24 - 8) + 40))(a6 + v31, v34, v24);
}

BOOL MergeableEntryAssetsPlacement.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v87 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v79 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v82 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v85 = &v72 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v81 = &v72 - v15;
  MEMORY[0x28223BE20](v14);
  v84 = &v72 - v16;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v86 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v78 = &v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v80 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v72 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v77 = &v72 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v72 - v30;
  v88 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  MEMORY[0x28223BE20](v88);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556FB2D8(v2, v33, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
  v89 = a1;
  v34 = MergeableEntryAssetsPlacement.Partial.canMerge(delta:)(a1);
  sub_2556FB278(v33, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
  if (v34)
  {
    v75 = v34;
    v74 = v7;
    v76 = v4;
    sub_255663294(v2, v31, &qword_27F7BF4F0, &qword_25575B3D0);
    v73 = v24;
    v35 = v2;
    v36 = *(v24 + 48);
    v37 = v36(v31, 1, v23);
    sub_255674B20(v31, &qword_27F7BF4F0, &qword_25575B3D0);
    if (v37 == 1)
    {
      sub_25568DF1C(v89, v35, &qword_27F7BF4F0, &qword_25575B3D0);
    }

    else
    {
      sub_255663294(v89, v29, &qword_27F7BF4F0, &qword_25575B3D0);
      if (v36(v29, 1, v23) == 1)
      {
        sub_255674B20(v29, &qword_27F7BF4F0, &qword_25575B3D0);
      }

      else
      {
        v38 = v73;
        v39 = v77;
        (*(v73 + 32))(v77, v29, v23);
        if (!v36(v35, 1, v23))
        {
          sub_25574F590();
        }

        (*(v38 + 8))(v39, v23);
      }
    }

    v40 = v86;
    v41 = v88;
    v42 = v88[5];
    sub_255663294(v35 + v42, v22, &qword_27F7BF4F8, &qword_25575B3D8);
    v43 = *(v40 + 48);
    v44 = v83;
    v45 = v43(v22, 1, v83);
    sub_255674B20(v22, &qword_27F7BF4F8, &qword_25575B3D8);
    v46 = v41[5];
    if (v45 == 1)
    {
      sub_25568DF1C(v89 + v46, v35 + v42, &qword_27F7BF4F8, &qword_25575B3D8);
      v47 = v76;
    }

    else
    {
      v48 = v80;
      sub_255663294(v89 + v46, v80, &qword_27F7BF4F8, &qword_25575B3D8);
      v49 = v43(v48, 1, v44);
      v47 = v76;
      if (v49 == 1)
      {
        sub_255674B20(v48, &qword_27F7BF4F8, &qword_25575B3D8);
      }

      else
      {
        v50 = v86;
        v51 = v78;
        (*(v86 + 32))(v78, v48, v44);
        if (!v43((v35 + v42), 1, v44))
        {
          sub_25574F450();
        }

        (*(v50 + 8))(v51, v44);
      }
    }

    v52 = v87;
    v53 = v88;
    v54 = v88[6];
    v55 = v84;
    sub_255663294(v35 + v54, v84, &qword_27F7BF500, &unk_25575B3E0);
    v56 = *(v52 + 48);
    v57 = v56(v55, 1, v47);
    sub_255674B20(v55, &qword_27F7BF500, &unk_25575B3E0);
    v58 = v53[6];
    if (v57 == 1)
    {
      sub_25568DF1C(v89 + v58, v35 + v54, &qword_27F7BF500, &unk_25575B3E0);
    }

    else
    {
      v59 = v81;
      sub_255663294(v89 + v58, v81, &qword_27F7BF500, &unk_25575B3E0);
      if (v56(v59, 1, v47) == 1)
      {
        sub_255674B20(v59, &qword_27F7BF500, &unk_25575B3E0);
      }

      else
      {
        v60 = v87;
        v61 = v79;
        (*(v87 + 32))(v79, v59, v47);
        if (!v56(v35 + v54, 1, v47))
        {
          sub_25574FCA0();
        }

        (*(v60 + 8))(v61, v47);
      }
    }

    v62 = v88;
    v63 = v88[7];
    v64 = v85;
    sub_255663294(v35 + v63, v85, &qword_27F7BF500, &unk_25575B3E0);
    v65 = v56(v64, 1, v47);
    sub_255674B20(v64, &qword_27F7BF500, &unk_25575B3E0);
    v66 = v62[7];
    if (v65 == 1)
    {
      sub_25568DF1C(v89 + v66, v35 + v63, &qword_27F7BF500, &unk_25575B3E0);
      LOBYTE(v34) = v75;
    }

    else
    {
      v67 = v82;
      sub_255663294(v89 + v66, v82, &qword_27F7BF500, &unk_25575B3E0);
      v68 = v56(v67, 1, v47);
      LOBYTE(v34) = v75;
      if (v68 == 1)
      {
        sub_255674B20(v67, &qword_27F7BF500, &unk_25575B3E0);
      }

      else
      {
        v69 = v87;
        v70 = v74;
        (*(v87 + 32))(v74, v67, v47);
        if (!v56(v35 + v63, 1, v47))
        {
          sub_25574FCA0();
        }

        (*(v69 + 8))(v70, v47);
      }
    }
  }

  return v34;
}

BOOL MergeableEntryAssetsPlacement.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v58 = &v52 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v55 = &v52 - v8;
  MEMORY[0x28223BE20](v7);
  v61 = &v52 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v62 = *(v59 - 8);
  v10 = MEMORY[0x28223BE20](v59);
  v52 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v57 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v60 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v56 = &v52 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v52 - v28;
  sub_255663294(a1, v25, &qword_27F7BF4F0, &qword_25575B3D0);
  v30 = *(v27 + 48);
  if (v30(v25, 1, v26) == 1)
  {
    v23 = v25;
    v31 = v63;
LABEL_5:
    sub_255674B20(v23, &qword_27F7BF4F0, &qword_25575B3D0);
    v32 = a1;
    goto LABEL_6;
  }

  (*(v27 + 32))(v29, v25, v26);
  v31 = v63;
  sub_255663294(v63, v23, &qword_27F7BF4F0, &qword_25575B3D0);
  if (v30(v23, 1, v26) == 1)
  {
    (*(v27 + 8))(v29, v26);
    goto LABEL_5;
  }

  v45 = sub_25574F5A0();
  v46 = *(v27 + 8);
  v46(v29, v26);
  v46(v23, v26);
  v32 = a1;
  if ((v45 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v33 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  sub_255663294(v32 + v33[5], v17, &qword_27F7BF4F8, &qword_25575B3D8);
  v34 = v60;
  v35 = *(v60 + 48);
  if (v35(v17, 1, v18) == 1)
  {
LABEL_9:
    sub_255674B20(v17, &qword_27F7BF4F8, &qword_25575B3D8);
    v37 = v61;
    v38 = v62;
    goto LABEL_10;
  }

  v36 = v56;
  (*(v34 + 32))(v56, v17, v18);
  v17 = v57;
  sub_255663294(v31 + v33[5], v57, &qword_27F7BF4F8, &qword_25575B3D8);
  if (v35(v17, 1, v18) == 1)
  {
    (*(v34 + 8))(v36, v18);
    goto LABEL_9;
  }

  v47 = sub_25574F480();
  v48 = *(v34 + 8);
  v48(v36, v18);
  v48(v17, v18);
  v37 = v61;
  v38 = v62;
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  sub_255663294(v32 + v33[6], v37, &qword_27F7BF500, &unk_25575B3E0);
  v39 = *(v38 + 48);
  v40 = v59;
  if (v39(v37, 1, v59) != 1)
  {
    v41 = v54;
    (*(v38 + 32))(v54, v37, v40);
    v37 = v55;
    sub_255663294(v31 + v33[6], v55, &qword_27F7BF500, &unk_25575B3E0);
    if (v39(v37, 1, v40) != 1)
    {
      LODWORD(v62) = sub_25574FCB0();
      v49 = *(v38 + 8);
      v31 = v63;
      v49(v41, v40);
      v49(v37, v40);
      if ((v62 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    (*(v38 + 8))(v41, v40);
  }

  sub_255674B20(v37, &qword_27F7BF500, &unk_25575B3E0);
LABEL_14:
  v42 = v58;
  sub_255663294(v32 + v33[7], v58, &qword_27F7BF500, &unk_25575B3E0);
  if (v39(v42, 1, v40) == 1)
  {
LABEL_17:
    sub_255674B20(v42, &qword_27F7BF500, &unk_25575B3E0);
    return 1;
  }

  v43 = v52;
  (*(v38 + 32))(v52, v42, v40);
  v42 = v53;
  sub_255663294(v31 + v33[7], v53, &qword_27F7BF500, &unk_25575B3E0);
  if (v39(v42, 1, v40) == 1)
  {
    (*(v38 + 8))(v43, v40);
    goto LABEL_17;
  }

  v50 = sub_25574FCB0();
  v51 = *(v38 + 8);
  v51(v43, v40);
  v51(v42, v40);
  return (v50 & 1) != 0;
}

uint64_t MergeableEntryAssetsPlacement.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  sub_255663294(v2, &v24 - v13, &qword_27F7BF4F0, &qword_25575B3D0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_255674B20(v14, &qword_27F7BF4F0, &qword_25575B3D0);
  }

  else
  {
    sub_25574F570();
    (*(v16 + 8))(v14, v15);
  }

  v17 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  sub_255663294(v2 + v17[5], v11, &qword_27F7BF4F8, &qword_25575B3D8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_255674B20(v11, &qword_27F7BF4F8, &qword_25575B3D8);
  }

  else
  {
    sub_25574F3B0();
    (*(v19 + 8))(v11, v18);
  }

  sub_255663294(v2 + v17[6], v8, &qword_27F7BF500, &unk_25575B3E0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v8, 1, v20) == 1)
  {
    sub_255674B20(v8, &qword_27F7BF500, &unk_25575B3E0);
  }

  else
  {
    sub_25574FC80();
    (*(v21 + 8))(v8, v20);
  }

  sub_255663294(v2 + v17[7], v6, &qword_27F7BF500, &unk_25575B3E0);
  if (v22(v6, 1, v20) == 1)
  {
    return sub_255674B20(v6, &qword_27F7BF500, &unk_25575B3E0);
  }

  sub_25574FC80();
  return (*(v21 + 8))(v6, v20);
}

uint64_t MergeableEntryAssetsPlacement.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v12 = *(v11 - 8);
  v50 = *(v12 + 56);
  v51 = v11;
  v49 = v12 + 56;
  v50(a2, 1, 1);
  v13 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v14 = v13[5];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v55 = v14;
  v57 = v17;
  v48 = v16 + 56;
  v17(a2 + v14, 1, 1, v15);
  v18 = v13[6];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = v20 + 56;
  v21(a2 + v18, 1, 1, v19);
  v23 = v13[7];
  v21(a2 + v23, 1, 1, v19);
  v24 = v58;
  sub_25574FE90();
  if (v24)
  {

    v25 = a2;
    return sub_2556FB278(v25, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
  }

  v43 = v18;
  v44 = v23;
  v45 = v22;
  v46 = v21;
  v58 = 0;
  v47 = a2;
  if (sub_25574FED0())
  {
    sub_25574F0D0();
    sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v26 = v56;
    v27 = v58;
    sub_25574F580();
    v28 = v57;
    if (v27)
    {
      goto LABEL_13;
    }

    v58 = 0;
    (v50)(v26, 0, 1, v51);
    sub_25568CFC8(v26, v47, &qword_27F7BF4F0, &qword_25575B3D0);
  }

  else
  {
    v28 = v57;
  }

  v29 = sub_25574FED0();
  v30 = v55;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
    sub_255663D60();
    v31 = v54;
    v32 = v58;
    sub_25574F420();
    if (v32)
    {
LABEL_13:

      v25 = v47;
      return sub_2556FB278(v25, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    }

    v58 = 0;
    v28(v31, 0, 1, v15);
    sub_25568CFC8(v31, v47 + v30, &qword_27F7BF4F8, &qword_25575B3D8);
  }

  v33 = sub_25574FED0();
  v34 = v52;
  v35 = v53;
  v57 = v19;
  if (v33)
  {
    sub_25574F0D0();
    sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v36 = v58;
    sub_25574FC90();
    v37 = v46;
    if (v36)
    {
      goto LABEL_13;
    }

    v58 = 0;
    v46(v34, 0, 1, v57);
    v39 = v47;
    sub_25568CFC8(v34, v47 + v43, &qword_27F7BF500, &unk_25575B3E0);
  }

  else
  {
    v37 = v46;
    v39 = v47;
  }

  v40 = sub_25574FED0();
  v41 = v44;
  if (!v40)
  {
  }

  sub_25574F0D0();
  sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v42 = v58;
  sub_25574FC90();

  v25 = v39;
  if (!v42)
  {
    v37(v35, 0, 1, v57);
    return sub_25568CFC8(v35, v39 + v41, &qword_27F7BF500, &unk_25575B3E0);
  }

  return sub_2556FB278(v25, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
}

uint64_t MergeableEntryAssetsPlacement.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v44 = &v41 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v47 = *(v49 - 8);
  v4 = MEMORY[0x28223BE20](v49);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  v21 = v51;
  result = sub_25574FF10();
  if (!v21)
  {
    v41 = v10;
    v42 = v13;
    v43 = v7;
    v23 = v49;
    v24 = v50;
    v51 = 0;
    sub_255663294(v50, v16, &qword_27F7BF4F0, &qword_25575B3D0);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_255674B20(v16, &qword_27F7BF4F0, &qword_25575B3D0);
    }

    else
    {
      (*(v18 + 32))(v20, v16, v17);
      sub_255669798(&qword_27F7BF528, &qword_27F7BF510, &qword_25575B3F0, MEMORY[0x277CFB550]);
      v25 = v51;
      sub_25574FF60();
      (*(v18 + 8))(v20, v17);
      if (v25)
      {
      }

      v51 = 0;
    }

    v26 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
    v27 = v41;
    sub_255663294(v24 + *(v26 + 20), v41, &qword_27F7BF4F8, &qword_25575B3D8);
    v28 = v48;
    v29 = v11;
    v30 = (*(v48 + 48))(v27, 1, v11);
    v31 = v42;
    v32 = v43;
    if (v30 == 1)
    {
      sub_255674B20(v27, &qword_27F7BF4F8, &qword_25575B3D8);
    }

    else
    {
      (*(v28 + 32))(v42, v27, v29);
      sub_255669798(&qword_27F7BF520, &qword_27F7BEDB0, &unk_255759240, MEMORY[0x277CFB4F0]);
      v33 = v51;
      sub_25574FF60();
      (*(v28 + 8))(v31, v29);
      if (v33)
      {
      }

      v51 = 0;
    }

    v34 = v44;
    v48 = v26;
    sub_255663294(v24 + *(v26 + 24), v44, &qword_27F7BF500, &unk_25575B3E0);
    v35 = v47;
    v36 = *(v47 + 48);
    v37 = v23;
    if (v36(v34, 1, v23) == 1)
    {
      sub_255674B20(v34, &qword_27F7BF500, &unk_25575B3E0);
      v39 = v45;
      v38 = v46;
LABEL_14:
      sub_255663294(v24 + *(v48 + 28), v38, &qword_27F7BF500, &unk_25575B3E0);
      if (v36(v38, 1, v37) == 1)
      {

        return sub_255674B20(v38, &qword_27F7BF500, &unk_25575B3E0);
      }

      (*(v35 + 32))(v39, v38, v37);
      sub_255669798(&qword_27F7BF518, &qword_27F7BF508, &qword_25575E670, MEMORY[0x277CFB6E0]);
      sub_25574FF60();
      (*(v35 + 8))(v39, v37);
    }

    (*(v35 + 32))(v32, v34, v23);
    sub_255669798(&qword_27F7BF518, &qword_27F7BF508, &qword_25575E670, MEMORY[0x277CFB6E0]);
    v40 = v51;
    sub_25574FF60();
    (*(v35 + 8))(v32, v23);
    v39 = v45;
    v38 = v46;
    if (!v40)
    {
      v51 = 0;
      goto LABEL_14;
    }
  }

  return result;
}

void *MergeableEntryAssetsPlacement.debugDescription.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF530, &qword_25575B3F8);
  v82 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v84 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v88 = &v78 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v78 - v5;
  v7 = sub_25574F0D0();
  v85 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v89 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v78 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE090, &qword_255755C40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_255755060;
  *(v12 + 32) = 0xD00000000000001ELL;
  *(v12 + 40) = 0x80000002557532E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_255669798(&qword_27F7BEA98, &qword_27F7BEA90, &unk_25575B390, MEMORY[0x277CFB590]);
  sub_255750650();
  sub_2557506B0();
  v90 = v7;
  if (v91[0] != v93)
  {
    v91[0] = 0;
    v91[1] = 0xE000000000000000;
    sub_255750B00();

    strcpy(v91, "gridAssetIDs: ");
    HIBYTE(v91[1]) = -18;
    v93 = sub_25574F620();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
    sub_255669798(&qword_27F7BE730, &qword_27F7BE728, &qword_255757898, MEMORY[0x277D83958]);
    v13 = sub_2557500C0();
    v15 = v14;

    MEMORY[0x259C3DED0](v13, v15);

    v16 = v91[0];
    v17 = v91[1];
    v19 = *(v12 + 16);
    v18 = *(v12 + 24);
    if (v19 >= v18 >> 1)
    {
      v12 = sub_255698E88((v18 > 1), v19 + 1, 1, v12);
    }

    *(v12 + 16) = v19 + 1;
    v20 = v12 + 16 * v19;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    v7 = v90;
  }

  v21 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  sub_25574F360();
  v22 = v85;
  v23 = (*(v85 + 48))(v6, 1, v7);
  v83 = v0;
  if (v23 == 1)
  {
    sub_255674B20(v6, &unk_27F7BED20, &unk_2557551D0);
  }

  else
  {
    v24 = v21;
    (*(v22 + 32))(v11, v6, v7);
    strcpy(v91, "slimAssetID: ");
    HIWORD(v91[1]) = -4864;
    sub_2556647F4(&qword_27F7BF200, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v25 = sub_255750E60();
    MEMORY[0x259C3DED0](v25);

    v26 = v91[0];
    v27 = v91[1];
    v29 = *(v12 + 16);
    v28 = *(v12 + 24);
    if (v29 >= v28 >> 1)
    {
      v12 = sub_255698E88((v28 > 1), v29 + 1, 1, v12);
    }

    v30 = v90;
    (*(v85 + 8))(v11, v90);
    *(v12 + 16) = v29 + 1;
    v31 = v12 + 16 * v29;
    v7 = v30;
    *(v31 + 32) = v26;
    *(v31 + 40) = v27;
    v21 = v24;
  }

  v32 = *(v21 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if ((sub_25574FCC0() & 1) == 0)
  {
    v91[0] = 0;
    v91[1] = 0xE000000000000000;
    sub_255750B00();

    v93 = 0xD000000000000010;
    v94 = 0x8000000255753300;
    sub_255669798(&qword_27F7BF538, &qword_27F7BE0C8, &qword_255755C60, MEMORY[0x277CFB720]);
    v33 = sub_255750680();
    v34 = MEMORY[0x277D84F90];
    v80 = v21;
    if (v33)
    {
      v35 = v33;
      v92 = MEMORY[0x277D84F90];
      sub_2556A9D18(0, v33 & ~(v33 >> 63), 0);
      v78 = v32;
      v79 = v92;
      v36 = v88;
      result = sub_255750650();
      if (v35 < 0)
      {
        __break(1u);
        goto LABEL_34;
      }

      v81 = v12;
      v86 = (v85 + 8);
      v87 = (v85 + 16);
      v38 = v79;
      do
      {
        v39 = sub_255750710();
        v40 = v89;
        (*v87)(v89);
        v39(v91, 0);
        v41 = sub_25574F040();
        v88 = v42;
        (*v86)(v40, v7);
        v92 = v38;
        v44 = *(v38 + 16);
        v43 = *(v38 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_2556A9D18((v43 > 1), v44 + 1, 1);
          v38 = v92;
        }

        *(v38 + 16) = v44 + 1;
        v45 = v38 + 16 * v44;
        v46 = v88;
        *(v45 + 32) = v41;
        *(v45 + 40) = v46;
        sub_2557506C0();
        --v35;
        v7 = v90;
      }

      while (v35);
      (*(v82 + 8))(v36, v83);
      v12 = v81;
      v34 = v38;
    }

    v91[0] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
    sub_255669798(&qword_27F7BE730, &qword_27F7BE728, &qword_255757898, MEMORY[0x277D83958]);
    v47 = sub_2557500C0();
    v49 = v48;

    MEMORY[0x259C3DED0](v47, v49);

    v50 = v93;
    v51 = v94;
    v53 = *(v12 + 16);
    v52 = *(v12 + 24);
    if (v53 >= v52 >> 1)
    {
      v12 = sub_255698E88((v52 > 1), v53 + 1, 1, v12);
    }

    *(v12 + 16) = v53 + 1;
    v54 = v12 + 16 * v53;
    *(v54 + 32) = v50;
    *(v54 + 40) = v51;
    v7 = v90;
  }

  if (sub_25574FCC0())
  {
LABEL_32:
    v91[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
    sub_255669798(&qword_27F7BE730, &qword_27F7BE728, &qword_255757898, MEMORY[0x277D83958]);
    v75 = sub_2557500C0();
    v77 = v76;

    v91[0] = v75;
    v91[1] = v77;

    MEMORY[0x259C3DED0](62, 0xE100000000000000);

    return v91[0];
  }

  v91[0] = 0;
  v91[1] = 0xE000000000000000;
  sub_255750B00();

  v93 = 0xD000000000000010;
  v94 = 0x8000000255753320;
  sub_255669798(&qword_27F7BF538, &qword_27F7BE0C8, &qword_255755C60, MEMORY[0x277CFB720]);
  v55 = sub_255750680();
  v56 = MEMORY[0x277D84F90];
  if (!v55)
  {
LABEL_29:
    v91[0] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
    sub_255669798(&qword_27F7BE730, &qword_27F7BE728, &qword_255757898, MEMORY[0x277D83958]);
    v67 = sub_2557500C0();
    v69 = v68;

    MEMORY[0x259C3DED0](v67, v69);

    v70 = v93;
    v71 = v94;
    v73 = *(v12 + 16);
    v72 = *(v12 + 24);
    if (v73 >= v72 >> 1)
    {
      v12 = sub_255698E88((v72 > 1), v73 + 1, 1, v12);
    }

    *(v12 + 16) = v73 + 1;
    v74 = v12 + 16 * v73;
    *(v74 + 32) = v70;
    *(v74 + 40) = v71;
    goto LABEL_32;
  }

  v57 = v55;
  v92 = MEMORY[0x277D84F90];
  sub_2556A9D18(0, v55 & ~(v55 >> 63), 0);
  v56 = v92;
  result = sub_255750650();
  if ((v57 & 0x8000000000000000) == 0)
  {
    v81 = v12;
    v58 = v84;
    v86 = (v85 + 8);
    v87 = (v85 + 16);
    do
    {
      v59 = sub_255750710();
      v60 = v89;
      (*v87)(v89);
      v59(v91, 0);
      v61 = sub_25574F040();
      v88 = v62;
      (*v86)(v60, v7);
      v92 = v56;
      v64 = *(v56 + 16);
      v63 = *(v56 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_2556A9D18((v63 > 1), v64 + 1, 1);
        v56 = v92;
      }

      *(v56 + 16) = v64 + 1;
      v65 = v56 + 16 * v64;
      v66 = v88;
      *(v65 + 32) = v61;
      *(v65 + 40) = v66;
      sub_2557506C0();
      --v57;
      v7 = v90;
    }

    while (v57);
    (*(v82 + 8))(v58, v83);
    v12 = v81;
    goto LABEL_29;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2556F5C50@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25574F040();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *CRAttributedString<>.canvasAssetIDs.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v40 - v1;
  v3 = sub_25574F0D0();
  v44 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v50 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B0, &unk_25575B400);
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8A8, &unk_255758170);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B8, &unk_255758180);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  sub_25574F9C0();
  KeyPath = swift_getKeyPath();
  v51 = swift_getKeyPath();
  v40 = v19;
  v41 = v11;
  (*(v11 + 16))(v14, v19, v10);
  sub_255669798(&qword_27F7BE8C8, &qword_27F7BE8B8, &unk_255758180, MEMORY[0x277CFB620]);
  v20 = v46;
  sub_255750290();
  v21 = sub_255669798(&qword_27F7BE8D0, &qword_27F7BE8B8, &unk_255758180, MEMORY[0x277CFB628]);
  v22 = v53;
  v52 = v17;
  v49 = v21;
  sub_255750960();
  v23 = v22;
  v47 = v20[6];
  v48 = (v20 + 6);
  if (v47(v22, 1, v5) == 1)
  {
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    v28 = v20[4];
    v27 = (v20 + 4);
    v29 = (v27 - 24);
    v30 = (v44 + 48);
    v45 = (v44 + 32);
    v46 = v28;
    v24 = MEMORY[0x277D84F90];
    v42 = v10;
    v43 = v2;
    (v28)(v7, v23, v5);
    while (1)
    {
      swift_getAtKeyPath();
      (*v29)(v7, v5);
      if ((*v30)(v2, 1, v3) == 1)
      {
        sub_255674B20(v2, &unk_27F7BED20, &unk_2557551D0);
      }

      else
      {
        v32 = v7;
        v33 = v27;
        v34 = v5;
        v35 = v3;
        v36 = *v45;
        v37 = v35;
        (*v45)(v50, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_255698A7C(0, v24[2] + 1, 1, v24);
        }

        v39 = v24[2];
        v38 = v24[3];
        if (v39 >= v38 >> 1)
        {
          v24 = sub_255698A7C((v38 > 1), v39 + 1, 1, v24);
        }

        v24[2] = v39 + 1;
        (v36)(v24 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v39, v50, v37);
        v3 = v37;
        v5 = v34;
        v27 = v33;
        v7 = v32;
        v10 = v42;
        v2 = v43;
      }

      sub_255750960();
      v31 = v53;
      if (v47(v53, 1, v5) == 1)
      {
        break;
      }

      (v46)(v7, v31, v5);
    }
  }

  v25 = *(v41 + 8);
  v25(v52, v10);
  v25(v40, v10);
  return v24;
}

uint64_t sub_2556F62C4(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE8B0, &unk_25575B400);
  sub_2556C74E8();
  return sub_25574F970();
}

uint64_t MergeableEntryAssetsPlacement.merge(_:)(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeableEntryAssetsPlacement.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t MergeableEntryAssetsPlacement.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v27 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v26 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v12 = sub_25574F500();
  v23 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  sub_25574F4F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v25 = a1;
  sub_25574F6A0();
  sub_25574F4E0();
  v16 = *(v13 + 8);
  v22[1] = v13 + 8;
  v16(v15, v12);
  v17 = v16;
  v28 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F390();
  sub_25574F390();
  sub_25574F460();
  v18 = v27;
  v19 = *(v27 + 8);
  v19(v11, v4);
  (*(v18 + 16))(v26, v9, v4);
  sub_25574F3A0();
  v19(v9, v4);
  sub_25574F4E0();
  v20 = v23;
  v17(v15, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC50();
  sub_25574F4E0();
  v17(v15, v20);
  sub_25574FC50();
  sub_25574F4E0();
  v17(v15, v20);
  sub_25574F810();
  sub_25574F4E0();
  return (v17)(v15, v20);
}

uint64_t MergeableEntryAssetsPlacement.actionUndoingDifference(from:)@<X0>(uint64_t a2@<X8>)
{
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E8, &qword_25575B3C8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v30 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E0, &qword_25575B3C0);
  MEMORY[0x28223BE20](v13 - 8);
  v33 = &v30 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D8, &qword_25575B3B8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F600();
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F390();
  sub_25574F390();
  sub_25574F3F0();
  v18 = *(v7 + 8);
  v18(v10, v6);
  v19 = v6;
  v21 = v30;
  v20 = v31;
  v18(v12, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBE0();
  sub_25574FBE0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF540, &qword_25575B498);
  if ((*(*(v22 - 8) + 48))(v17, 1, v22) == 1 && (v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF548, &unk_25575B4A0), (*(*(v23 - 8) + 48))(v33, 1, v23) == 1) && (v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF550, &qword_25575E6C0), v25 = *(*(v24 - 8) + 48), v25(v21, 1, v24) == 1) && v25(v20, 1, v24) == 1)
  {
    sub_255674B20(v17, &qword_27F7BF4D8, &qword_25575B3B8);
    v26 = type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction(0);
    (*(*(v26 - 8) + 56))(v32, 1, 1, v26);
  }

  else
  {
    v27 = v32;
    sub_255663294(v17, v32, &qword_27F7BF4D8, &qword_25575B3B8);
    v28 = type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction(0);
    sub_255663294(v33, v27 + v28[5], &qword_27F7BF4E0, &qword_25575B3C0);
    sub_255663294(v21, v27 + v28[6], &qword_27F7BF4E8, &qword_25575B3C8);
    sub_255663294(v20, v27 + v28[7], &qword_27F7BF4E8, &qword_25575B3C8);
    sub_255674B20(v17, &qword_27F7BF4D8, &qword_25575B3B8);
    (*(*(v28 - 1) + 56))(v27, 0, 1, v28);
  }

  sub_255674B20(v20, &qword_27F7BF4E8, &qword_25575B3C8);
  sub_255674B20(v21, &qword_27F7BF4E8, &qword_25575B3C8);
  return sub_255674B20(v33, &qword_27F7BF4E0, &qword_25575B3C0);
}

uint64_t MergeableEntryAssetsPlacement.apply(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v17 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v16 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF558, &qword_25575B4B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v9, &qword_27F7BF558, &qword_25575B4B0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_255674B20(v9, &qword_27F7BF558, &qword_25575B4B0);
  }

  sub_2556FB214(v9, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F660();
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F390();
  sub_25574F430();
  v15 = v17;
  (*(v17 + 16))(v16, v6, v2);
  sub_25574F3A0();
  (*(v15 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FC20();
  sub_25574FC20();
  return sub_2556FB278(v13, type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction);
}

uint64_t MergeableEntryAssetsPlacement.hasDelta(from:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F710() & 1) != 0 || (type metadata accessor for MergeableEntryAssetsPlacement(0), sub_25574F390(), sub_25574F390(), v8 = sub_25574F490(), v9 = *(v2 + 8), v9(v5, v1), v9(v7, v1), (v8) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FD00()) || (sub_25574FD00())
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25574F840();
  }

  return v10 & 1;
}

uint64_t MergeableEntryAssetsPlacement.copy(renamingReferences:)@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_25574F860();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  MEMORY[0x28223BE20](v6);
  v29 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v28 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  sub_2556FB2D8(v2, a2, type metadata accessor for MergeableEntryAssetsPlacement);
  sub_25574F630();
  (*(v16 + 40))(a2, v18, v15);
  v19 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F390();
  sub_25574F410();
  v20 = v28;
  v21 = *(v28 + 8);
  v21(v12, v9);
  (*(v20 + 16))(v12, v14, v9);
  sub_25574F3A0();
  v21(v14, v9);
  v22 = v29;
  v23 = v30;
  sub_25574FC00();
  v24 = *(v31 + 40);
  v24(a2 + v19[6], v22, v23);
  sub_25574FC00();
  v24(a2 + v19[7], v22, v23);
  v25 = v32;
  sub_25574F800();
  return (*(v33 + 40))(a2 + v19[8], v25, v34);
}

uint64_t MergeableEntryAssetsPlacement.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_25574F860();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v29 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v32 = &v29 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v33 = &v29 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v34 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v17 = *(v16 + 20);
  v18 = sub_25574F0D0();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  sub_255663294(v15, v13, &unk_27F7BED20, &unk_2557551D0);
  sub_255663D60();
  v44 = v17;
  v19 = v35;
  sub_25574F340();
  sub_255674B20(v15, &unk_27F7BED20, &unk_2557551D0);
  v43 = v16;
  v37 = *(v16 + 32);
  sub_25574F850();
  sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v20 = v36;
  sub_25574F560();
  if (v20)
  {
    (*(v45 + 8))(v19 + v44, v42);
    return (*(v40 + 8))(v19 + v37, v41);
  }

  else
  {
    v21 = v9;
    v22 = v32;
    (*(v34 + 32))(v19, v21, v31);
    v23 = v33;
    sub_25574F330();
    (*(v45 + 40))(v19 + v44, v23, v42);
    sub_25574FB80();
    v24 = v39;
    v26 = v19 + *(v43 + 24);
    v36 = *(v38 + 32);
    v36(v26, v22, v39);
    v27 = v30;
    sub_25574FB80();
    v36(v19 + *(v43 + 28), v27, v24);
    v28 = v29;
    sub_25574F780();
    return (*(v40 + 40))(v19 + v37, v28, v41);
  }
}

uint64_t MergeableEntryAssetsPlacement.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  if (sub_25574F790() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F5B0()) && (sub_25574F390(), v4 = sub_25574F380(), (*(v1 + 8))(v3, v0), (v4) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FB90()))
  {
    v5 = sub_25574FB90();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t MergeableEntryAssetsPlacement.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F390();
  sub_25574F3B0();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBA0();
  sub_25574FBA0();
  return sub_25574F7A0();
}

uint64_t MergeableEntryAssetsPlacement.newRefs(from:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v16 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v8 = sub_25574F6E0();
  sub_255692FAC(v8);
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F390();
  sub_25574F390();
  v9 = sub_25574F470();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  sub_255692FAC(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v11 = sub_25574FCD0();
  sub_255692FAC(v11);
  v12 = sub_25574FCD0();
  sub_255692FAC(v12);
  v13 = sub_25574F830();
  sub_255692FAC(v13);
  return v16;
}

Swift::Bool __swiftcall MergeableEntryAssetsPlacement.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F610() & 1) != 0 || (type metadata accessor for MergeableEntryAssetsPlacement(0), sub_25574F390(), v4 = sub_25574F400(), (*(v1 + 8))(v3, v0), (v4) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FBF0()) || (sub_25574FBF0())
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25574F7D0();
  }

  return v5 & 1;
}

uint64_t MergeableEntryAssetsPlacement.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F390();
  sub_25574F3C0();
  (*(v3 + 16))(v6, v8, v2);
  sub_25574F3A0();
  (*(v3 + 8))(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBB0();
  sub_25574FBB0();
  return MEMORY[0x259C3D480](a1);
}

uint64_t MergeableEntryAssetsPlacement.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v69 = *(v2 - 8);
  v70 = v2;
  MEMORY[0x28223BE20](v2);
  v68 = &v60 - v3;
  v4 = sub_25574F770();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v64 = &v60 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v60 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v66 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v60 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v60 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v60 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v60 - v25;
  v71 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v74 = v1;
  sub_25574F7C0();
  v27 = *(v5 + 104);
  v73 = *MEMORY[0x277CFB5F0];
  v72 = v27;
  v27(v24);
  v28 = sub_25574F760();
  v29 = *(v5 + 8);
  v29(v24, v4);
  if (v28)
  {
    return (*(v5 + 32))(v75, v26, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5E0();
  v62 = sub_2556647F4(&qword_27F7BDED8, MEMORY[0x277CFB600], MEMORY[0x277CFB608]);
  v31 = sub_2557500E0();
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33 = v26;
  }

  else
  {
    v33 = v18;
  }

  if (v32)
  {
    v18 = v26;
  }

  v29(v33, v4);
  v34 = *(v5 + 32);
  v34(v21, v18, v4);
  v34(v26, v21, v4);
  v72(v24, v73, v4);
  v35 = sub_25574F760();
  v29(v24, v4);
  if (v35)
  {
    return (v34)(v75, v26, v4);
  }

  v36 = v70;
  v61 = v34;
  v37 = v68;
  sub_25574F390();
  v60 = v29;
  v38 = v66;
  sub_25574F3D0();
  (*(v69 + 8))(v37, v36);
  v39 = sub_2557500E0();
  v40 = (v39 & 1) == 0;
  v41 = (v39 & 1) != 0 ? v26 : v38;
  v42 = v40 ? v26 : v38;
  v43 = v60;
  v34 = v61;
  v60(v41, v4);
  v44 = v67;
  v34(v67, v42, v4);
  v34(v26, v44, v4);
  v72(v24, v73, v4);
  v45 = sub_25574F760();
  v43(v24, v4);
  if (v45)
  {
    return (v34)(v75, v26, v4);
  }

  v46 = v34;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v48 = v64;
  v70 = v47;
  sub_25574FBC0();
  v49 = sub_2557500E0();
  v50 = (v49 & 1) == 0;
  if (v49)
  {
    v51 = v26;
  }

  else
  {
    v51 = v48;
  }

  if (v50)
  {
    v52 = v26;
  }

  else
  {
    v52 = v48;
  }

  v43(v51, v4);
  v53 = v65;
  v46(v65, v52, v4);
  v46(v26, v53, v4);
  v72(v24, v73, v4);
  v54 = sub_25574F760();
  v43(v24, v4);
  if (v54)
  {
    return (v46)(v75, v26, v4);
  }

  v55 = v63;
  sub_25574FBC0();
  v56 = sub_2557500E0();
  v57 = v75;
  if (v56)
  {
    v43(v26, v4);
    v58 = v57;
    v59 = v55;
  }

  else
  {
    v43(v55, v4);
    v58 = v57;
    v59 = v26;
  }

  return (v61)(v58, v59, v4);
}

uint64_t MergeableEntryAssetsPlacement.observableDifference(from:with:)@<X0>(uint64_t a3@<X8>)
{
  v37 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D0, &qword_25575B3B0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  MEMORY[0x28223BE20](v14 - 8);
  v33 = &v32 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4C8, &unk_25575B3A0);
  MEMORY[0x28223BE20](v16 - 8);
  v34 = &v32 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5F0();
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F390();
  sub_25574F390();
  v18 = v33;
  sub_25574F3E0();
  v19 = *(v8 + 8);
  v19(v11, v7);
  v20 = v7;
  v21 = v35;
  v19(v13, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBD0();
  v22 = v34;
  v23 = v36;
  sub_25574FBD0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF560, &qword_25575B4B8);
  if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1 && (v25 = sub_25574FB50(), (*(*(v25 - 8) + 48))(v18, 1, v25) == 1) && (v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF568, &unk_25575B4C0), v27 = *(*(v26 - 8) + 48), v27(v21, 1, v26) == 1) && v27(v23, 1, v26) == 1)
  {
    sub_255674B20(v22, &qword_27F7BF4C8, &unk_25575B3A0);
    v28 = type metadata accessor for MergeableEntryAssetsPlacement.ObservableDifference(0);
    (*(*(v28 - 8) + 56))(v37, 1, 1, v28);
  }

  else
  {
    v29 = v37;
    sub_255663294(v22, v37, &qword_27F7BF4C8, &unk_25575B3A0);
    v30 = type metadata accessor for MergeableEntryAssetsPlacement.ObservableDifference(0);
    sub_255663294(v18, v29 + v30[5], &qword_27F7BDDD0, &qword_25575D7A0);
    sub_255663294(v21, v29 + v30[6], &qword_27F7BF4D0, &qword_25575B3B0);
    sub_255663294(v23, v29 + v30[7], &qword_27F7BF4D0, &qword_25575B3B0);
    sub_255674B20(v22, &qword_27F7BF4C8, &unk_25575B3A0);
    (*(*(v30 - 1) + 56))(v29, 0, 1, v30);
  }

  sub_255674B20(v23, &qword_27F7BF4D0, &qword_25575B3B0);
  sub_255674B20(v21, &qword_27F7BF4D0, &qword_25575B3B0);
  return sub_255674B20(v18, &qword_27F7BDDD0, &qword_25575D7A0);
}

uint64_t MergeableEntryAssetsPlacement.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  result = sub_25574FF10();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    sub_255669798(&qword_27F7BF570, &qword_27F7BEA90, &unk_25575B390, MEMORY[0x277CFB578]);
    sub_25574FF60();
    type metadata accessor for MergeableEntryAssetsPlacement(0);
    sub_25574F390();
    sub_255669798(&qword_27F7BF520, &qword_27F7BEDB0, &unk_255759240, MEMORY[0x277CFB4F0]);
    sub_25574FF60();
    (*(v2 + 8))(v4, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    sub_255669798(&qword_27F7BF578, &qword_27F7BE0C8, &qword_255755C60, MEMORY[0x277CFB708]);
    sub_25574FF60();
    sub_25574FF60();
    sub_25574F820();
  }

  return result;
}

uint64_t MergeableEntryAssetsPlacement.delta(_:from:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v47 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v55 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v56 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v54 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v52 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v47 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v51 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v53 = &v47 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v49 = a2;
  sub_25574F680();
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  sub_25574F390();
  sub_25574F390();
  sub_25574F440();
  v27 = *(v54 + 8);
  v27(v15, v12);
  v27(v17, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v28 = v12;
  sub_25574FC30();
  v29 = v22;
  v30 = v53;
  sub_25574FC30();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1 && (*(v54 + 48))(v29, 1, v28) == 1 && (v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670), v34 = *(*(v33 - 8) + 48), v34(v56, 1, v33) == 1) && v34(v55, 1, v33) == 1)
  {
    sub_255674B20(v30, &qword_27F7BF4F0, &qword_25575B3D0);
    v35 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
    (*(*(v35 - 8) + 56))(v50, 1, 1, v35);
  }

  else
  {
    sub_255663294(v30, v51, &qword_27F7BF4F0, &qword_25575B3D0);
    sub_255663294(v29, v52, &qword_27F7BF4F8, &qword_25575B3D8);
    v36 = v47;
    sub_255663294(v56, v47, &qword_27F7BF500, &unk_25575B3E0);
    v49 = v29;
    v37 = v48;
    sub_255663294(v55, v48, &qword_27F7BF500, &unk_25575B3E0);
    v38 = v50;
    (*(v32 + 56))(v50, 1, 1, v31);
    v39 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
    v40 = v39[5];
    (*(v54 + 56))(v38 + v40, 1, 1, v28);
    v41 = v39[6];
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
    v43 = *(*(v42 - 8) + 56);
    v43(v38 + v41, 1, 1, v42);
    v44 = v39[7];
    v43(v38 + v44, 1, 1, v42);
    sub_25568CFC8(v51, v38, &qword_27F7BF4F0, &qword_25575B3D0);
    sub_25568CFC8(v52, v38 + v40, &qword_27F7BF4F8, &qword_25575B3D8);
    sub_25568CFC8(v36, v38 + v41, &qword_27F7BF500, &unk_25575B3E0);
    v45 = v38 + v44;
    v29 = v49;
    sub_25568CFC8(v37, v45, &qword_27F7BF500, &unk_25575B3E0);
    sub_255674B20(v53, &qword_27F7BF4F0, &qword_25575B3D0);
    (*(*(v39 - 1) + 56))(v38, 0, 1, v39);
  }

  sub_255674B20(v55, &qword_27F7BF500, &unk_25575B3E0);
  sub_255674B20(v56, &qword_27F7BF500, &unk_25575B3E0);
  return sub_255674B20(v29, &qword_27F7BF4F8, &qword_25575B3D8);
}

BOOL MergeableEntryAssetsPlacement.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v46 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v41 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v44 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v43 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v41 - v23;
  v49 = a1;
  sub_255663294(a1, v20, &qword_27F7BF4F0, &qword_25575B3D0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_255674B20(v20, &qword_27F7BF4F0, &qword_25575B3D0);
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    v25 = sub_25574F6F0();
    (*(v22 + 8))(v24, v21);
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v26 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  sub_255663294(v49 + v26[5], v12, &qword_27F7BF4F8, &qword_25575B3D8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_255674B20(v12, &qword_27F7BF4F8, &qword_25575B3D8);
  }

  else
  {
    v27 = v43;
    (*(v14 + 32))(v43, v12, v13);
    type metadata accessor for MergeableEntryAssetsPlacement(0);
    v28 = v44;
    sub_25574F390();
    v29 = sub_25574F480();
    v30 = *(v14 + 8);
    v30(v28, v13);
    v30(v27, v13);
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  v31 = v46;
  sub_255663294(v49 + v26[6], v46, &qword_27F7BF500, &unk_25575B3E0);
  v33 = v47;
  v32 = v48;
  v34 = *(v47 + 48);
  if (v34(v31, 1, v48) == 1)
  {
    sub_255674B20(v31, &qword_27F7BF500, &unk_25575B3E0);
  }

  else
  {
    v35 = v42;
    (*(v33 + 32))(v42, v31, v32);
    type metadata accessor for MergeableEntryAssetsPlacement(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
    v36 = sub_25574FCE0();
    (*(v33 + 8))(v35, v32);
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  v37 = v45;
  sub_255663294(v49 + v26[7], v45, &qword_27F7BF500, &unk_25575B3E0);
  if (v34(v37, 1, v32) == 1)
  {
    sub_255674B20(v37, &qword_27F7BF500, &unk_25575B3E0);
    return 1;
  }

  v38 = v41;
  (*(v33 + 32))(v41, v37, v32);
  type metadata accessor for MergeableEntryAssetsPlacement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v39 = sub_25574FCE0();
  (*(v33 + 8))(v38, v32);
  return (v39 & 1) != 0;
}

BOOL MergeableEntryAssetsPlacement.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v55 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v54 = &v45[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v52 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v51 = &v45[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v53 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v50 = &v45[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v45[-v18];
  MEMORY[0x28223BE20](v17);
  v48 = &v45[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v45[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v45[-v26];
  v28 = MergeableEntryAssetsPlacement.canMerge(delta:)(a1);
  if (v28)
  {
    v46 = v28;
    v47 = a1;
    sub_255663294(a1, v23, &qword_27F7BF4F0, &qword_25575B3D0);
    v29 = (*(v25 + 48))(v23, 1, v24);
    v49 = v1;
    if (v29 == 1)
    {
      sub_255674B20(v23, &qword_27F7BF4F0, &qword_25575B3D0);
    }

    else
    {
      (*(v25 + 32))(v27, v23, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
      sub_25574F690();
      (*(v25 + 8))(v27, v24);
    }

    v31 = v56;
    v30 = v57;
    v32 = v53;
    v33 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
    v34 = v47;
    sub_255663294(v47 + v33[5], v13, &qword_27F7BF4F8, &qword_25575B3D8);
    if ((*(v32 + 48))(v13, 1, v14) == 1)
    {
      sub_255674B20(v13, &qword_27F7BF4F8, &qword_25575B3D8);
    }

    else
    {
      v35 = *(v32 + 32);
      v56 = v33;
      v36 = v48;
      v35(v48, v13, v14);
      type metadata accessor for MergeableEntryAssetsPlacement(0);
      sub_25574F390();
      sub_25574F450();
      (*(v32 + 16))(v50, v19, v14);
      v30 = v57;
      sub_25574F3A0();
      v37 = *(v32 + 8);
      v37(v19, v14);
      v38 = v36;
      v33 = v56;
      v37(v38, v14);
    }

    v39 = v54;
    sub_255663294(v34 + v33[6], v54, &qword_27F7BF500, &unk_25575B3E0);
    v40 = *(v31 + 6);
    if (v40(v39, 1, v30) == 1)
    {
      sub_255674B20(v39, &qword_27F7BF500, &unk_25575B3E0);
    }

    else
    {
      v41 = v51;
      (*(v31 + 4))(v51, v39, v30);
      type metadata accessor for MergeableEntryAssetsPlacement(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
      sub_25574FC40();
      (*(v31 + 1))(v41, v30);
    }

    v42 = v55;
    sub_255663294(v34 + v33[7], v55, &qword_27F7BF500, &unk_25575B3E0);
    if (v40(v42, 1, v30) == 1)
    {
      sub_255674B20(v42, &qword_27F7BF500, &unk_25575B3E0);
    }

    else
    {
      v43 = v52;
      (*(v31 + 4))(v52, v42, v30);
      type metadata accessor for MergeableEntryAssetsPlacement(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
      sub_25574FC40();
      (*(v31 + 1))(v43, v30);
    }

    LOBYTE(v28) = v46;
  }

  return v28;
}

uint64_t sub_2556FA940(uint64_t a1)
{
  v2 = sub_2556647F4(&qword_27F7BF590, type metadata accessor for MergeableEntryAssetsPlacement, &protocol conformance descriptor for MergeableEntryAssetsPlacement);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_2556FA9D0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  sub_25574F390();
  sub_25574F3B0();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBA0();
  sub_25574FBA0();
  return sub_25574F7A0();
}

uint64_t sub_2556FAB40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F610() & 1) != 0 || (sub_25574F390(), v4 = sub_25574F400(), (*(v1 + 8))(v3, v0), (v4) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FBF0()) || (sub_25574FBF0())
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25574F7D0();
  }

  return v5 & 1;
}

uint64_t sub_2556FACA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  sub_25574F390();
  sub_25574F3C0();
  (*(v3 + 16))(v6, v8, v2);
  sub_25574F3A0();
  (*(v3 + 8))(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_25574FBB0();
  sub_25574FBB0();
  return MEMORY[0x259C3D480](a1);
}

uint64_t sub_2556FAE78(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeableEntryAssetsPlacement.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2556FB0A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  if (sub_25574F790() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F5B0()) && (sub_25574F390(), v4 = sub_25574F380(), (*(v1 + 8))(v3, v0), (v4) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), (sub_25574FB90()))
  {
    v5 = sub_25574FB90();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_2556FB214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableEntryAssetsPlacement.MutatingAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556FB278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2556FB2D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s13JournalShared29MergeableEntryAssetsPlacementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_255669798(&qword_27F7BF650, &qword_27F7BEA90, &unk_25575B390, MEMORY[0x277CFB580]);
  if (sub_255750100() & 1) != 0 && (type metadata accessor for MergeableEntryAssetsPlacement(0), sub_25574F390(), sub_25574F390(), sub_255669798(&qword_27F7BF658, &qword_27F7BEDB0, &unk_255759240, MEMORY[0x277CFB4F8]), v9 = sub_255750100(), v10 = *(v3 + 8), v10(v6, v2), v10(v8, v2), (v9) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60), sub_255669798(&qword_27F7BF660, &qword_27F7BE0C8, &qword_255755C60, MEMORY[0x277CFB710]), (sub_255750100()) && (sub_255750100())
  {
    v11 = sub_25574F7E0();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_2556FB7B8(uint64_t a1)
{
  sub_255672600(319, &qword_27F7BF5E8, &qword_27F7BF560, &qword_25575B4B8);
  if (v1 <= 0x3F)
  {
    sub_2556FB884(319);
    if (v2 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BF5F0, &qword_27F7BF568, &unk_25575B4C0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2556FB884(uint64_t a1)
{
  if (!qword_27F7BDF80)
  {
    sub_25574FB50();
    v1 = sub_255750950();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BDF80);
    }
  }
}

void sub_2556FB904(uint64_t a1)
{
  sub_255672600(319, &qword_27F7BF608, &qword_27F7BF540, &qword_25575B498);
  if (v1 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BF610, &qword_27F7BF548, &unk_25575B4A0);
    if (v2 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BF618, &qword_27F7BF550, &qword_25575E6C0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2556FBA10(uint64_t a1)
{
  sub_255672600(319, &qword_27F7BF630, &qword_27F7BF510, &qword_25575B3F0);
  if (v1 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BF638, &qword_27F7BEDB0, &unk_255759240);
    if (v2 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BF640, &qword_27F7BF508, &qword_25575E670);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id WrappedMergeableEntryAttributes.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_255678764(a1, v3 + OBJC_IVAR___WrappedMergeableEntryAttributes_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2556740EC(a1);
  return v4;
}

id WrappedMergeableEntryAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2556FBC74(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t DrawingAssetMetadata.drawingData.getter()
{
  v1 = *v0;
  sub_255674F54(*v0, *(v0 + 8));
  return v1;
}

uint64_t DrawingAssetMetadata.indexableContent.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DrawingAssetMetadata.init(drawingData:indexableContent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_2556FBD30()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x44676E6977617264;
  }
}

uint64_t sub_2556FBD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44676E6977617264 && a2 == 0xEB00000000617461;
  if (v6 || (sub_255750EB0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002557533F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255750EB0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2556FBE60(uint64_t a1)
{
  v2 = sub_2556FC078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556FBE9C(uint64_t a1)
{
  v2 = sub_2556FC078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DrawingAssetMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF690, &qword_25575B8C0);
  v12 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v11[1] = v1[3];
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255674F54(v7, v8);
  sub_2556FC078();
  sub_255750FF0();
  v13 = v7;
  v14 = v8;
  v15 = 0;
  sub_255687198();
  sub_255750E30();
  sub_2556755A8(v13, v14);
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_255750DB0();
  }

  return (*(v12 + 8))(v6, v4);
}

unint64_t sub_2556FC078()
{
  result = qword_27F7BF698;
  if (!qword_27F7BF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF698);
  }

  return result;
}

uint64_t DrawingAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF6A0, &qword_25575B8C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556FC078();
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_255675208();
  sub_255750D80();
  v9 = v17;
  v16 = v18;
  LOBYTE(v17) = 1;
  v10 = sub_255750D00();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = v16;
  *a2 = v9;
  a2[1] = v13;
  a2[2] = v10;
  a2[3] = v12;
  sub_255674F54(v9, v13);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_2556755A8(v9, v13);
}

unint64_t sub_2556FC2F8(uint64_t a1)
{
  *(a1 + 8) = sub_2556FC328();
  result = sub_2556FC37C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2556FC328()
{
  result = qword_27F7BF6A8;
  if (!qword_27F7BF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6A8);
  }

  return result;
}

unint64_t sub_2556FC37C()
{
  result = qword_27F7BF6B0;
  if (!qword_27F7BF6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6B0);
  }

  return result;
}

uint64_t sub_2556FC400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_2556FC45C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_2556FC4D4()
{
  result = qword_27F7BF6B8;
  if (!qword_27F7BF6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6B8);
  }

  return result;
}

unint64_t sub_2556FC52C()
{
  result = qword_27F7BF6C0;
  if (!qword_27F7BF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6C0);
  }

  return result;
}

unint64_t sub_2556FC584()
{
  result = qword_27F7BF6C8;
  if (!qword_27F7BF6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6C8);
  }

  return result;
}

uint64_t sub_2556FC5D8()
{
  v0 = AssetSource.rawValue.getter();
  v2 = v1;
  if (v0 == AssetSource.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_255750EB0();
  }

  return v5 & 1;
}

unint64_t sub_2556FC678()
{
  result = qword_27F7BF6D0;
  if (!qword_27F7BF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6D0);
  }

  return result;
}

uint64_t sub_2556FC6CC()
{
  sub_255750F80();
  AssetSource.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556FC734(uint64_t a1)
{
  AssetSource.rawValue.getter();
  sub_2557501F0();
}

uint64_t sub_2556FC798(uint64_t a1)
{
  sub_255750F80();
  AssetSource.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

unint64_t sub_2556FC8B8()
{
  result = qword_27F7BF6D8;
  if (!qword_27F7BF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF6D8);
  }

  return result;
}

uint64_t sub_2556FC944()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF6F8, &qword_25575BC58);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_25574F290();
  __swift_allocate_value_buffer(v3, qword_27F7BF6E0);
  __swift_project_value_buffer(v3, qword_27F7BF6E0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_25574F280();
}

uint64_t static AppInfo.exportContentType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F7BD7B8 != -1)
  {
    swift_once();
  }

  v2 = sub_25574F290();
  v3 = __swift_project_value_buffer(v2, qword_27F7BF6E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2556FCB78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal, &protocol conformance descriptor for ObservableJournal);
  sub_25574F190();

  v4 = (v3 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__title);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_2556FCC44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2556FCDA0(v1, v2);
}

uint64_t sub_2556FCC84()
{
  swift_getKeyPath();
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal, &protocol conformance descriptor for ObservableJournal);
  sub_25574F190();

  v1 = (v0 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t type metadata accessor for ObservableJournal(uint64_t a1)
{
  result = qword_27F7BF730;
  if (!qword_27F7BF730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2556FCDA0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__title);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_255750EB0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal, &protocol conformance descriptor for ObservableJournal);
  sub_25574F180();
}

uint64_t sub_2556FCF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__title);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t (*sub_2556FCFA4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC13JournalShared17ObservableJournal___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal, &protocol conformance descriptor for ObservableJournal);
  sub_25574F190();

  *v4 = v1;
  swift_getKeyPath();
  sub_25574F1B0();

  v4[7] = sub_2556FCB18(v4);
  return sub_2556FD0DC;
}

uint64_t sub_2556FD14C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal, &protocol conformance descriptor for ObservableJournal);
  sub_25574F190();

  v4 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__color;
  swift_beginAccess();
  return sub_255663294(v3 + v4, a2, &qword_27F7BFFE0, &qword_25575BCB0);
}

uint64_t sub_2556FD224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_255663294(a1, &v6 - v3, &qword_27F7BFFE0, &qword_25575BCB0);
  return sub_2556FD3A8(v4);
}

uint64_t sub_2556FD2D0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal, &protocol conformance descriptor for ObservableJournal);
  sub_25574F190();

  v3 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__color;
  swift_beginAccess();
  return sub_255663294(v5 + v3, a1, &qword_27F7BFFE0, &qword_25575BCB0);
}

uint64_t sub_2556FD3A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__color;
  swift_beginAccess();
  sub_255663294(v1 + v6, v5, &qword_27F7BFFE0, &qword_25575BCB0);
  v7 = sub_2557026CC(v5, a1);
  sub_255674B20(v5, &qword_27F7BFFE0, &qword_25575BCB0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal, &protocol conformance descriptor for ObservableJournal);
    sub_25574F180();
  }

  else
  {
    sub_255663294(a1, v5, &qword_27F7BFFE0, &qword_25575BCB0);
    swift_beginAccess();
    sub_25570296C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_255674B20(a1, &qword_27F7BFFE0, &qword_25575BCB0);
}

uint64_t sub_2556FD5B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_255663294(a2, &v9 - v5, &qword_27F7BFFE0, &qword_25575BCB0);
  v7 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__color;
  swift_beginAccess();
  sub_25570296C(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t (*sub_2556FD68C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC13JournalShared17ObservableJournal___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal, &protocol conformance descriptor for ObservableJournal);
  sub_25574F190();

  *v4 = v1;
  swift_getKeyPath();
  sub_25574F1B0();

  v4[7] = sub_2556FD0E8(v4);
  return sub_2556FD7C4;
}

void sub_2556FD7D0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_25574F1A0();

  free(v3);
}

uint64_t sub_2556FD864@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal, &protocol conformance descriptor for ObservableJournal);
  sub_25574F190();

  v3 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
  swift_beginAccess();
  v4 = sub_25574F0D0();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_2556FD95C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal, &protocol conformance descriptor for ObservableJournal);
  sub_25574F190();

  v4 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
  swift_beginAccess();
  v5 = sub_25574F0D0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_2556FDA54(uint64_t a1)
{
  v2 = sub_25574F0D0();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_2556FDB20(v4);
}

uint64_t sub_2556FDB20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_255703208(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v14[0] = a1;
  LOBYTE(a1) = sub_255750100();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal, &protocol conformance descriptor for ObservableJournal);
    sub_25574F180();
  }

  return (v10)(v14[0], v4);
}
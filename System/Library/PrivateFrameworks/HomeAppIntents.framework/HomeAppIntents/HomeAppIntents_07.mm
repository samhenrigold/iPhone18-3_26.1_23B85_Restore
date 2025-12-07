uint64_t sub_2527C0C70(uint64_t a1, void *a2)
{
  v22[3] = &type metadata for AutomateAttributeValueIntent;
  v22[4] = &off_2864973A8;
  v4 = swift_allocObject();
  v22[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = *(a1 + 48);
  sub_25276E828(v22, v21);
  sub_2527C3DF8(a1, v20);
  v6 = a2;
  v7 = sub_2528C0890();
  v8 = sub_2528C0D10();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136446466;
    sub_25276E828(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v12 = sub_2528C0A10();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v15 = sub_2527389AC(v12, v14, &v19);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = a2;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_252711000, v7, v8, "HomeAppIntents: Finished performing %{public}s: failed with error %@", v9, 0x16u);
    sub_2527213D8(v10, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x2530A8D80](v11, -1, -1);
    MEMORY[0x2530A8D80](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_2527C0E90@<X0>(uint64_t *a1@<X8>)
{
  v64 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9B8, &unk_2528D3400);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = v55 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9C0, &qword_2528C9570);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = v55 - v6;
  v73 = sub_2528BE950();
  v7 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v68 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v55 - v16;
  v18 = sub_2528BEC40();
  v71 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE30, &unk_2528C6090);
  sub_2528BEC20();
  v22 = *(v19 + 56);
  v75 = v19 + 56;
  v76 = v22;
  v22(v17, 1, 1, v18);
  v23 = sub_2528BE630();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v24 + 56;
  v25(v14, 1, 1, v23);
  v69 = *MEMORY[0x277CBA308];
  v77 = *(v7 + 104);
  v27 = v73;
  v77(v9);
  v66 = v7 + 104;
  sub_2527604A4();
  v65 = v21;
  v70 = v17;
  v61 = sub_2528BE7C0();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCD8, &qword_2528C5B68);
  sub_2528BEC20();
  v28 = v17;
  v29 = v71;
  v76(v28, 1, 1, v71);
  v80 = 0;
  v30 = v14;
  v74 = v26;
  v25(v14, 1, 1, v23);
  v31 = v68;
  v25(v68, 1, 1, v23);
  v32 = v9;
  (v77)(v9, v69, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCE0, &unk_2528C5B70);
  v59 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FCCE8, &qword_27F4FCCE0, &unk_2528C5B70, MEMORY[0x277CBA480]);
  sub_2527C3FAC(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  v33 = v70;
  v60 = sub_2528BE7E0();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v76(v33, 1, 1, v29);
  v34 = type metadata accessor for HomeEntity(0);
  (*(*(v34 - 8) + 56))(v58, 1, 1, v34);
  v72 = v25;
  v25(v30, 1, 1, v23);
  v25(v31, 1, 1, v23);
  v35 = v69;
  v36 = v73;
  (v77)(v32, v69, v73);
  sub_2527C3FAC(&qword_27F4FCC90, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);
  v37 = v70;
  v58 = sub_2528BE7F0();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCB8, &unk_2528C60B0);
  sub_2528BEC20();
  v76(v37, 1, 1, v71);
  v78 = 0;
  v67 = v23;
  v38 = v72;
  v72(v30, 1, 1, v23);
  v38(v68, 1, 1, v23);
  v39 = v77;
  (v77)(v32, v35, v36);
  sub_2527C3FAC(&qword_27F4FCCD0, type metadata accessor for RoomEntity, &protocol conformance descriptor for RoomEntity);
  v40 = v70;
  v57 = sub_2528BE7F0();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9C8, &qword_2528C9578);
  sub_2528BEC20();
  v41 = v71;
  v42 = v76;
  v76(v40, 1, 1, v71);
  v72(v30, 1, 1, v67);
  v43 = v69;
  (v39)(v32, v69, v73);
  sub_2527C3FAC(&qword_27F4FD9A0, type metadata accessor for TriggerEventType, &unk_2528C24F8);
  v56 = sub_2528BE7C0();
  v55[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9D0, &qword_2528C9580);
  sub_2528BEC20();
  v42(v40, 1, 1, v41);
  v44 = type metadata accessor for TriggerRecurrenceWeekdaysEntity(0);
  (*(*(v44 - 8) + 56))(v62, 1, 1, v44);
  v45 = v67;
  v46 = v72;
  v72(v30, 1, 1, v67);
  v46(v68, 1, 1, v45);
  v47 = v73;
  (v77)(v32, v43, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9D8, &qword_2528C9588);
  sub_25272275C(&qword_27F4FD9E0, &qword_27F4FD9D8, &qword_2528C9588, v59);
  sub_2527C3FAC(&qword_27F4FBD40, type metadata accessor for TriggerRecurrenceWeekdaysEntity, &unk_2528C2158);
  v48 = v70;
  v49 = sub_2528BE7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9E8, &qword_2528C9590);
  sub_2528BEC20();
  v76(v48, 1, 1, v71);
  v50 = sub_2528C0940();
  v78 = 0;
  v79 = 0;
  (*(*(v50 - 8) + 56))(v63, 1, 1, v50);
  v72(v30, 1, 1, v67);
  (v77)(v32, v43, v47);
  result = sub_2528BE800();
  v52 = v64;
  v53 = v60;
  *v64 = v61;
  v52[1] = v53;
  v54 = v57;
  v52[2] = v58;
  v52[3] = v54;
  v52[4] = v56;
  v52[5] = v49;
  v52[6] = result;
  return result;
}

uint64_t sub_2527C1AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t *a6@<X8>)
{
  v53 = a3;
  v55 = a1;
  v56 = a2;
  v58 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD988, &qword_2528C9540);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v57 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v43 - v12;
  v13 = sub_2528BEC40();
  MEMORY[0x28223BE20](v13 - 8);
  v43 = sub_2528BECF0();
  v14 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2528BEE30();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - v22;
  v24 = type metadata accessor for TriggerEventType(0);
  v50 = *(v24 - 8);
  v51 = v24;
  MEMORY[0x28223BE20](v24);
  v44 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *a5;
  v47 = type metadata accessor for TriggerEventType;
  sub_2527C3E7C(a3, v44, type metadata accessor for TriggerEventType);
  v26 = a4;
  sub_2528BF2F0();
  v27 = sub_2528BEE20();
  v48 = v28;
  v49 = v27;
  v29 = *(v18 + 8);
  v29(v23, v17);
  sub_2528BF2F0();
  sub_2528BEE00();
  v29(v21, v17);
  v30 = sub_2528BECB0();
  v45 = v31;
  v46 = v30;
  (*(v14 + 8))(v16, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v32 = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  v43 = v32;
  sub_2528BEA50();
  sub_2528BEC20();
  v33 = sub_2528BE730();
  sub_2528BEA50();
  sub_2528BEC20();
  v34 = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD998, &qword_2528C9558);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_2527C3FAC(&qword_27F4FD9A0, type metadata accessor for TriggerEventType, &unk_2528C24F8);
  v35 = sub_2528BE700();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9A8, &unk_2528C9560);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_2527C3CE4();
  v36 = sub_2528BE700();
  v59 = v55;
  v60 = v56;
  sub_2528BEA50();
  sub_2528BE6C0();
  v37 = v44;
  v38 = v54;
  sub_2527C3E7C(v44, v54, v47);
  (*(v50 + 56))(v38, 0, 1, v51);
  sub_25272006C(v38, v57, &qword_27F4FD988, &qword_2528C9540);
  sub_2528BE6C0();
  sub_2527213D8(v38, &qword_27F4FD988, &qword_2528C9540);
  v59 = v49;
  v60 = v48;
  sub_2528BE6C0();
  v59 = v46;
  v60 = v45;
  sub_2528BE6C0();
  LOBYTE(v59) = v52;
  sub_2528BE6C0();
  v39 = sub_2528BF400();
  (*(*(v39 - 8) + 8))(v26, v39);
  sub_2527C3F4C(v53, type metadata accessor for TriggerEventType);
  sub_2527C3F4C(v37, type metadata accessor for TriggerEventType);

  v40 = v43;

  v42 = v58;
  *v58 = v40;
  v42[1] = v33;
  v42[2] = v34;
  v42[3] = v35;
  v42[4] = v36;
  return result;
}

uint64_t sub_2527C2134(uint64_t a1)
{
  v2 = sub_2528C07B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_25273A60C(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

void sub_2527C227C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v185 = a3;
  v195 = a2;
  v164 = sub_2528BF290();
  v198 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD658, &qword_2528D35A0);
  MEMORY[0x28223BE20](v5 - 8);
  v160 = &v146 - v6;
  v162 = sub_2528BFC70();
  v7 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v161 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v9 - 8);
  v184 = &v146 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  MEMORY[0x28223BE20](v11 - 8);
  v183 = &v146 - v12;
  v190 = sub_2528BFB20();
  v13 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v159 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_2528BFF90();
  v15 = *(v173 - 8);
  v16 = MEMORY[0x28223BE20](v173);
  v152 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v146 - v18;
  v20 = sub_2528BECF0();
  v196 = *(v20 - 8);
  v197 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v176 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v188 = &v146 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v146 - v25;
  v171 = sub_2528BF9D0();
  v27 = *(v171 - 8);
  v28 = MEMORY[0x28223BE20](v171);
  v168 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v170 = &v146 - v30;
  v31 = type metadata accessor for DeviceEntity(0);
  v178 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v182 = &v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v192 = &v146 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v146 - v37;
  MEMORY[0x28223BE20](v36);
  v177 = &v146 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE40, &qword_2528C61C0);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v191 = &v146 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v189 = &v146 - v43;
  v45 = a1 + 64;
  v44 = *(a1 + 64);
  v46 = 1 << *(a1 + 32);
  v47 = -1;
  v202 = MEMORY[0x277D84FA0];
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v44;
  v172 = (v46 + 63) >> 6;
  v166 = v27 + 16;
  ++v196;
  v165 = v27 + 32;
  v169 = v27;
  v167 = (v27 + 8);
  v150 = v15 + 16;
  v149 = v15 + 32;
  v153 = v15;
  v151 = (v15 + 8);
  v175 = (v13 + 48);
  v158 = (v13 + 32);
  v157 = (v198 + 8);
  v156 = (v7 + 48);
  v147 = (v7 + 32);
  v148 = (v7 + 8);
  v155 = (v13 + 8);
  v174 = (v13 + 56);
  v179 = a1;

  v49 = 0;
  *&v50 = 136315394;
  v186 = v50;
  v154 = v19;
  v187 = v26;
  v199 = v38;
  v181 = a1 + 64;
  while (v48)
  {
    v52 = v49;
LABEL_16:
    v57 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v58 = v57 | (v52 << 6);
    v59 = v179;
    v60 = v177;
    sub_2527C3E7C(*(v179 + 48) + *(v178 + 72) * v58, v177, type metadata accessor for DeviceEntity);
    v61 = *(*(v59 + 56) + 8 * v58);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
    v63 = *(v62 + 48);
    v64 = v60;
    v55 = v191;
    sub_2527C3EE4(v64, v191, type metadata accessor for DeviceEntity);
    *(v55 + v63) = v61;
    (*(*(v62 - 8) + 56))(v55, 0, 1, v62);

    v56 = v192;
LABEL_17:
    v65 = v189;
    sub_25274AA0C(v55, v189, &qword_27F4FCE40, &qword_2528C61C0);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
    if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
    {

      if (!*(v202 + 16))
      {

        type metadata accessor for HomeAppIntentError(0);
        sub_2527C3FAC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      return;
    }

    v67 = *(v65 + *(v66 + 48));
    v68 = v199;
    sub_2527C3EE4(v65, v199, type metadata accessor for DeviceEntity);
    v201 = MEMORY[0x277D84FA0];
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v69 = sub_2528C08B0();
    v70 = __swift_project_value_buffer(v69, qword_27F5025C8);
    sub_2527C3E7C(v68, v56, type metadata accessor for DeviceEntity);

    v194 = v70;
    v71 = sub_2528C0890();
    v72 = sub_2528C0D10();

    v73 = os_log_type_enabled(v71, v72);
    v198 = v67;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v75 = v56;
      v180 = swift_slowAlloc();
      v200 = v180;
      *v74 = v186;
      v76 = DeviceEntity.debugDescription.getter();
      v78 = v77;
      sub_2527C3F4C(v75, type metadata accessor for DeviceEntity);
      v79 = sub_2527389AC(v76, v78, &v200);

      *(v74 + 4) = v79;
      *(v74 + 12) = 2080;
      v80 = MEMORY[0x2530A81A0](v67, &type metadata for Attribute);
      v82 = sub_2527389AC(v80, v81, &v200);

      *(v74 + 14) = v82;
      _os_log_impl(&dword_252711000, v71, v72, "Trying to create actions for %s with %s", v74, 0x16u);
      v83 = v180;
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v83, -1, -1);
      v84 = v74;
      v85 = v187;
      MEMORY[0x2530A8D80](v84, -1, -1);
    }

    else
    {

      sub_2527C3F4C(v56, type metadata accessor for DeviceEntity);
      v85 = v187;
    }

    v86 = sub_2528BF370();
    sub_252819FA8(v85);
    v87 = v188;
    if (*(v86 + 16) && (v88 = sub_252785C40(v85), (v89 & 1) != 0))
    {
      v90 = v169;
      v91 = v168;
      v92 = v171;
      (*(v169 + 16))(v168, *(v86 + 56) + *(v169 + 72) * v88, v171);
      v93 = *v196;
      (*v196)(v85, v197);

      v94 = v170;
      v95 = (*(v90 + 32))(v170, v91, v92);
      MEMORY[0x28223BE20](v95);
      *(&v146 - 2) = v94;
      v96 = v193;
      sub_2528538E4(sub_2527C4020, (&v146 - 4), v198);
      v193 = v96;
      if (v96)
      {

        sub_2527C3F4C(v199, type metadata accessor for DeviceEntity);

        (*v167)(v94, v92);
        return;
      }

      v98 = v97;
      swift_beginAccess();
      sub_2527C2134(v98);
      swift_endAccess();

      (*v167)(v94, v92);
    }

    else
    {

      v93 = *v196;
      (*v196)(v85, v197);
      v99 = sub_2528BF3A0();
      sub_252819FA8(v87);
      if (*(v99 + 16) && (v100 = sub_252785C40(v87), (v101 & 1) != 0))
      {
        v102 = v153;
        v103 = v152;
        v104 = v93;
        v105 = v173;
        (*(v153 + 16))(v152, *(v99 + 56) + *(v153 + 72) * v100, v173);
        v180 = v104;
        v104(v87, v197);

        v106 = v154;
        v107 = (*(v102 + 32))(v154, v103, v105);
        MEMORY[0x28223BE20](v107);
        *(&v146 - 2) = v106;
        v108 = v193;
        sub_2528538E4(sub_2527C4010, (&v146 - 4), v198);
        v193 = v108;
        if (v108)
        {

          sub_2527C3F4C(v199, type metadata accessor for DeviceEntity);

          (*v151)(v106, v173);
          return;
        }

        v110 = v109;
        swift_beginAccess();
        sub_2527C2134(v110);
        swift_endAccess();

        (*v151)(v106, v173);
        v93 = v180;
      }

      else
      {

        v93(v87, v197);
      }
    }

    v111 = v184;
    sub_25272006C(v185, v184, &qword_27F4FCDB8, &unk_2528C5CC0);
    v112 = sub_2528C00D0();
    v113 = *(v112 - 8);
    if ((*(v113 + 48))(v111, 1, v112) == 1)
    {

      sub_2527213D8(v111, &qword_27F4FCDB8, &unk_2528C5CC0);
      v114 = v183;
      (*v174)(v183, 1, 1, v190);
LABEL_36:
      sub_2527213D8(v114, &qword_27F4FCEF0, &unk_2528C6AB0);
      v118 = v199;
      v119 = v182;
      goto LABEL_43;
    }

    v115 = v176;
    sub_252819FA8(v176);
    v116 = v183;
    sub_2528C0080();
    v93(v115, v197);
    v114 = v116;
    (*(v113 + 8))(v111, v112);
    v117 = v190;
    if ((*v175)(v116, 1, v190) == 1)
    {

      goto LABEL_36;
    }

    v120 = v159;
    (*v158)(v159, v114, v117);
    v121 = v163;
    sub_2528BFAB0();
    v122 = sub_2528BF0E0();
    (*v157)(v121, v164);
    v123 = v160;
    StateSnapshot.staticAccessory(withNodeID:)(v122, v160);
    v124 = v162;
    v125 = (*v156)(v123, 1, v162);
    v126 = v161;
    v127 = v198;
    if (v125 == 1)
    {

      sub_2527213D8(v123, &qword_27F4FD658, &qword_2528D35A0);
      (*v155)(v120, v117);
    }

    else
    {
      v129 = (*v147)(v161, v123, v124);
      MEMORY[0x28223BE20](v129);
      *(&v146 - 2) = v120;
      *(&v146 - 1) = v126;
      v130 = v193;
      sub_2528538E4(sub_2527C3FF4, (&v146 - 4), v127);
      v193 = v130;
      if (v130)
      {

        sub_2527C3F4C(v199, type metadata accessor for DeviceEntity);

        (*v148)(v126, v124);
        (*v155)(v120, v190);

        return;
      }

      v132 = v131;

      swift_beginAccess();
      sub_2527C2134(v132);
      swift_endAccess();

      (*v148)(v126, v124);
      (*v155)(v120, v190);
    }

    v118 = v199;
    v119 = v182;
LABEL_43:
    sub_2527C3E7C(v118, v119, type metadata accessor for DeviceEntity);
    v133 = sub_2528C0890();
    v134 = sub_2528C0D10();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v200 = v136;
      *v135 = v186;
      v137 = DeviceEntity.debugDescription.getter();
      v138 = v119;
      v140 = v139;
      sub_2527C3F4C(v138, type metadata accessor for DeviceEntity);
      v141 = sub_2527389AC(v137, v140, &v200);

      *(v135 + 4) = v141;
      *(v135 + 12) = 2080;
      swift_beginAccess();
      sub_2528C07B0();
      sub_2527C3FAC(&qword_27F4FC6A8, MEMORY[0x277D16EC8], MEMORY[0x277D16ED0]);

      v142 = sub_2528C0C80();
      v144 = v143;

      v145 = sub_2527389AC(v142, v144, &v200);
      v118 = v199;

      *(v135 + 14) = v145;
      _os_log_impl(&dword_252711000, v133, v134, "Created actions for %s: %s", v135, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v136, -1, -1);
      MEMORY[0x2530A8D80](v135, -1, -1);
    }

    else
    {

      sub_2527C3F4C(v119, type metadata accessor for DeviceEntity);
    }

    swift_beginAccess();

    sub_2527B939C(v51);
    sub_2527C3F4C(v118, type metadata accessor for DeviceEntity);

    v45 = v181;
  }

  if (v172 <= v49 + 1)
  {
    v53 = v49 + 1;
  }

  else
  {
    v53 = v172;
  }

  v54 = v53 - 1;
  v55 = v191;
  v56 = v192;
  while (1)
  {
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v52 >= v172)
    {
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
      (*(*(v128 - 8) + 56))(v55, 1, 1, v128);
      v48 = 0;
      v49 = v54;
      goto LABEL_17;
    }

    v48 = *(v45 + 8 * v52);
    ++v49;
    if (v48)
    {
      v49 = v52;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_2527C395C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD988, &qword_2528C9540);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = sub_2528BEC40();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v9 = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEA50();
  sub_2528BEC20();
  v10 = sub_2528BE730();
  sub_2528BEA50();
  sub_2528BEC20();
  v11 = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD998, &qword_2528C9558);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_2527C3FAC(&qword_27F4FD9A0, type metadata accessor for TriggerEventType, &unk_2528C24F8);
  v12 = sub_2528BE700();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9A8, &unk_2528C9560);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_2527C3CE4();
  v13 = sub_2528BE700();
  v16 = 0;
  v17 = 0;
  sub_2528BEA50();
  sub_2528BE6C0();
  v14 = type metadata accessor for TriggerEventType(0);
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_25272006C(v7, v5, &qword_27F4FD988, &qword_2528C9540);
  sub_2528BE6C0();
  sub_2527213D8(v7, &qword_27F4FD988, &qword_2528C9540);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2528BE6C0();
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2528BE6C0();
  LOBYTE(v16) = 20;
  sub_2528BE6C0();

  *a1 = v9;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
  return result;
}

unint64_t sub_2527C3CE4()
{
  result = qword_27F4FD9B0;
  if (!qword_27F4FD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD9B0);
  }

  return result;
}

unint64_t sub_2527C3D38()
{
  result = qword_27F4FD9F0;
  if (!qword_27F4FD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD9F0);
  }

  return result;
}

uint64_t sub_2527C3D8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD948, &qword_2528C94A0);

  return sub_2527BB610();
}

unint64_t sub_2527C3E30()
{
  result = qword_27F4FDA18;
  if (!qword_27F4FDA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4FDA18);
  }

  return result;
}

uint64_t sub_2527C3E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527C3EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527C3F4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2527C3FAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_14Tm(void (*a1)(void))
{

  a1(*(v1 + 64));

  return MEMORY[0x2821FE8E8](v1, 72, 7);
}

uint64_t objectdestroy_39Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t getEnumTagSinglePayload for AutomationOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 20;
  if (a2 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 20;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 20;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 20;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 0x14;
  v9 = v7 - 20;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AutomationOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 20;
  if (a3 + 20 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xEC)
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2527C42A8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x14)
  {
    return v1 - 19;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2527C42BC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 19;
  }

  return result;
}

unint64_t sub_2527C42E0()
{
  result = qword_27F4FDA80;
  if (!qword_27F4FDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDA80);
  }

  return result;
}

unint64_t sub_2527C4338()
{
  result = qword_27F4FDA88;
  if (!qword_27F4FDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDA88);
  }

  return result;
}

unint64_t sub_2527C4390()
{
  result = qword_27F4FDA90;
  if (!qword_27F4FDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDA90);
  }

  return result;
}

unint64_t sub_2527C43E4()
{
  result = qword_27F4FDA98;
  if (!qword_27F4FDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDA98);
  }

  return result;
}

unint64_t sub_2527C443C()
{
  result = qword_27F4FDAA0;
  if (!qword_27F4FDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAA0);
  }

  return result;
}

unint64_t sub_2527C4494()
{
  result = qword_27F4FDAA8;
  if (!qword_27F4FDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAA8);
  }

  return result;
}

unint64_t sub_2527C44EC()
{
  result = qword_27F4FDAB0;
  if (!qword_27F4FDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAB0);
  }

  return result;
}

unint64_t sub_2527C4544()
{
  result = qword_27F4FDAB8;
  if (!qword_27F4FDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAB8);
  }

  return result;
}

unint64_t sub_2527C45E0()
{
  result = qword_27F4FDAD0;
  if (!qword_27F4FDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAD0);
  }

  return result;
}

unint64_t sub_2527C4638()
{
  result = qword_27F4FDAD8;
  if (!qword_27F4FDAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAD8);
  }

  return result;
}

unint64_t sub_2527C4690()
{
  result = qword_27F4FDAE0;
  if (!qword_27F4FDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAE0);
  }

  return result;
}

unint64_t sub_2527C46E8()
{
  result = qword_27F4FDAE8;
  if (!qword_27F4FDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAE8);
  }

  return result;
}

unint64_t sub_2527C473C()
{
  result = qword_27F4FDAF0;
  if (!qword_27F4FDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAF0);
  }

  return result;
}

unint64_t sub_2527C4794()
{
  result = qword_27F4FDAF8;
  if (!qword_27F4FDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAF8);
  }

  return result;
}

unint64_t sub_2527C47EC()
{
  result = qword_27F4FDB00;
  if (!qword_27F4FDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB00);
  }

  return result;
}

unint64_t sub_2527C4844()
{
  result = qword_27F4FDB08;
  if (!qword_27F4FDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB08);
  }

  return result;
}

unint64_t sub_2527C489C()
{
  result = qword_27F4FDB10;
  if (!qword_27F4FDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB10);
  }

  return result;
}

unint64_t sub_2527C4938()
{
  result = qword_27F4FDB28;
  if (!qword_27F4FDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB28);
  }

  return result;
}

unint64_t sub_2527C4990()
{
  result = qword_27F4FDB30;
  if (!qword_27F4FDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB30);
  }

  return result;
}

unint64_t sub_2527C49E8()
{
  result = qword_27F4FDB38;
  if (!qword_27F4FDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB38);
  }

  return result;
}

unint64_t sub_2527C4AC4()
{
  result = qword_27F4FDB60;
  if (!qword_27F4FDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB60);
  }

  return result;
}

unint64_t sub_2527C4B18()
{
  result = qword_27F4FDB68;
  if (!qword_27F4FDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB68);
  }

  return result;
}

uint64_t sub_2527C4B90()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FDB70);
  __swift_project_value_buffer(v0, qword_27F4FDB70);
  return sub_2528BE9D0();
}

uint64_t static DashboardViewType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FDB70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527C4C9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC00, &unk_2528C9F90);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3F8, &qword_2528C7EE0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17D0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v5 = sub_25278E9A0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDB88 = v5;
  return result;
}

double static DashboardViewType.caseDisplayRepresentations.getter(uint64_t a1, uint64_t a2)
{
  if (qword_27F4FB6F8 != -1)
  {
    swift_once();
  }

  return result;
}

HomeAppIntents::DashboardViewType_optional __swiftcall DashboardViewType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DashboardViewType.rawValue.getter()
{
  v1 = 0x73656E656373;
  if (*v0 != 1)
  {
    v1 = 0x657469726F766166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736172656D6163;
  }
}

uint64_t sub_2527C4F4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x73656E656373;
  if (v2 != 1)
  {
    v4 = 0x657469726F766166;
    v3 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x736172656D6163;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x73656E656373;
  if (*a2 != 1)
  {
    v8 = 0x657469726F766166;
    v7 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x736172656D6163;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2528C1060();
  }

  return v11 & 1;
}

void sub_2527C505C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73656E656373;
  if (v2 != 1)
  {
    v5 = 0x657469726F766166;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736172656D6163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2527C50C0()
{
  result = qword_27F4FDB90;
  if (!qword_27F4FDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB90);
  }

  return result;
}

unint64_t sub_2527C5118()
{
  result = qword_27F4FDB98;
  if (!qword_27F4FDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB98);
  }

  return result;
}

unint64_t sub_2527C5170()
{
  result = qword_27F4FDBA0;
  if (!qword_27F4FDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBA0);
  }

  return result;
}

unint64_t sub_2527C51C8()
{
  result = qword_27F4FDBA8;
  if (!qword_27F4FDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBA8);
  }

  return result;
}

uint64_t sub_2527C521C()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527C52C0(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_2527C5350(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

unint64_t sub_2527C53F4()
{
  result = qword_27F4FDBB0;
  if (!qword_27F4FDBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FDBB8, &qword_2528C9DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBB0);
  }

  return result;
}

unint64_t sub_2527C546C()
{
  result = qword_27F4FDBC0;
  if (!qword_27F4FDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBC0);
  }

  return result;
}

unint64_t sub_2527C54C0()
{
  result = qword_27F4FDBC8;
  if (!qword_27F4FDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBC8);
  }

  return result;
}

unint64_t sub_2527C5514()
{
  result = qword_27F4FDBD0;
  if (!qword_27F4FDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBD0);
  }

  return result;
}

unint64_t sub_2527C556C()
{
  result = qword_27F4FDBD8;
  if (!qword_27F4FDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBD8);
  }

  return result;
}

uint64_t sub_2527C55C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FDB70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2527C56B8()
{
  result = qword_27F4FDBE0;
  if (!qword_27F4FDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBE0);
  }

  return result;
}

uint64_t sub_2527C570C(uint64_t a1)
{
  v2 = sub_2527C56B8();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2527C575C()
{
  result = qword_27F4FDBE8;
  if (!qword_27F4FDBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBE8);
  }

  return result;
}

unint64_t sub_2527C57B4()
{
  result = qword_27F4FDBF0;
  if (!qword_27F4FDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBF0);
  }

  return result;
}

unint64_t sub_2527C580C()
{
  result = qword_27F4FDBF8;
  if (!qword_27F4FDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBF8);
  }

  return result;
}

double sub_2527C5860(uint64_t a1, uint64_t a2)
{
  if (qword_27F4FB6F8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_2527C58BC(uint64_t a1)
{
  v2 = sub_2527C556C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t getEnumTagSinglePayload for DashboardViewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DashboardViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2527C5A7C()
{
  result = qword_27F4FDC08;
  if (!qword_27F4FDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC08);
  }

  return result;
}

uint64_t sub_2527C5AD0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32) >> 6;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      sub_2528C0E70();

      v9 = 0x203D20444970616DLL;
      v6 = sub_2528C1040();
      MEMORY[0x2530A80B0](v6);

      MEMORY[0x2530A80B0](0x203D20656D616E20, 0xE800000000000000);
      MEMORY[0x2530A80B0](v1, v2);
    }

    else
    {
      v9 = 0;
      MEMORY[0x2530A80B0](0x20646E616D6D6F63, 0xEA0000000000203DLL);
      sub_2528C0ED0();
    }
  }

  else
  {
    if (v3)
    {
      sub_2528C0E70();

      v9 = 0x3D20444961657261;
      v7 = sub_2528C1040();
      MEMORY[0x2530A80B0](v7);

      MEMORY[0x2530A80B0](0x203D20656D616E20, 0xE800000000000000);
      MEMORY[0x2530A80B0](v1, v2);
      MEMORY[0x2530A80B0](0x3D20444970616D20, 0xE900000000000020);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDE90, &unk_2528CAE60);
      v5 = sub_2528C0A10();
    }

    else
    {
      sub_2528C0E70();

      v9 = 0x65746174536E7572;
      v4 = RobotVacuumCleanerRunState.rawValue.getter();
      MEMORY[0x2530A80B0](v4);

      MEMORY[0x2530A80B0](0x6F4D6E61656C6320, 0xEE00203D20736564);
      v5 = MEMORY[0x2530A81A0](v1, &type metadata for RobotVacuumCleanerCleanMode);
    }

    MEMORY[0x2530A80B0](v5);
  }

  return v9;
}

unint64_t sub_2527C5DA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2528BEC40();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = *(v1 + 32) >> 6;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);

      sub_2528BEC20();
      v8 = sub_2528BE760();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
      sub_2528BEC20();
      v9 = sub_2528BE730();
      sub_2528BE6C0();
      sub_2528BE6C0();
      a1[3] = &type metadata for PossibleValuesForAttribute.ServiceMapCase;
      result = sub_2527C74EC();
      a1[4] = result;
      *a1 = v8;
      a1[1] = v9;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC10, &qword_2528CA030);
      sub_2528BEC20();
      sub_2527C7444();
      v13 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for PossibleValuesForAttribute.RvcCurrentRunCase;
      result = sub_2527C7498();
      a1[4] = result;
      *a1 = v13;
    }
  }

  else if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);

    sub_2528BEC20();
    v10 = sub_2528BE760();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
    sub_2528BEC20();
    v11 = sub_2528BE730();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC30, &qword_2528CA038);
    sub_2528BEC20();
    v12 = sub_2528BE760();
    sub_2528BE6C0();
    sub_2528BE6C0();
    sub_2528BE6C0();
    a1[3] = &type metadata for PossibleValuesForAttribute.ServiceAreaCase;
    result = sub_2527C7540();
    a1[4] = result;
    *a1 = v10;
    a1[1] = v11;
    a1[2] = v12;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC40, &qword_2528CA040);

    sub_2528BEC20();
    sub_2527C7594();
    v5 = sub_2528BE6E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC50, &unk_2528CA048);
    sub_2528BEC20();
    sub_2527C75E8();
    v6 = sub_2528BE6E0();
    sub_2528BE6C0();
    sub_2528BE6C0();
    a1[3] = &type metadata for PossibleValuesForAttribute.RvcCase;
    result = sub_2527C763C();
    a1[4] = result;
    *a1 = v5;
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_2527C615C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC68, &qword_2528CA058);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v14 = &v13 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC70, &qword_2528CA060);
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC78, &qword_2528CA068);
  v15 = *(v5 - 8);
  v16 = v5;
  MEMORY[0x28223BE20](v5);
  v13 = &v13 - v6;
  v7 = sub_2527C7690();
  MEMORY[0x2530A60E0](v7, &type metadata for PossibleValuesForAttribute, &type metadata for PossibleValuesForAttribute.RvcCase.Resolver, v7);
  v8 = sub_2527C76E4();
  MEMORY[0x2530A60E0](v8, &type metadata for PossibleValuesForAttribute, &type metadata for PossibleValuesForAttribute.ServiceAreaCase.Resolver, v8);
  v9 = sub_2527C7738();
  MEMORY[0x2530A60E0](v9, &type metadata for PossibleValuesForAttribute, &type metadata for PossibleValuesForAttribute.ServiceMapCase.Resolver, v9);
  v10 = sub_2527C778C();
  MEMORY[0x2530A60E0](v10, &type metadata for PossibleValuesForAttribute, &type metadata for PossibleValuesForAttribute.RvcCurrentRunCase.Resolver, v10);
  sub_2527C5A7C();
  sub_2528BEAA0();
  v32 = v7;
  v33 = &type metadata for PossibleValuesForAttribute.RvcCase.Resolver;
  sub_2528BEA90();
  v30 = &type metadata for PossibleValuesForAttribute.RvcCase.Resolver;
  v31 = &type metadata for PossibleValuesForAttribute.ServiceAreaCase.Resolver;
  v28 = v7;
  v29 = v8;
  v11 = v14;
  sub_2528BEA90();
  v25 = &type metadata for PossibleValuesForAttribute.RvcCase.Resolver;
  v26 = &type metadata for PossibleValuesForAttribute.ServiceAreaCase.Resolver;
  v27 = &type metadata for PossibleValuesForAttribute.ServiceMapCase.Resolver;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  sub_2528BEA90();
  (*(v19 + 8))(v11, v21);
  (*(v17 + 8))(v4, v18);
  return (*(v15 + 8))(v13, v16);
}

uint64_t sub_2527C64E8(uint64_t a1, _OWORD *a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = *a2;
  return MEMORY[0x2822009F8](sub_2527C6510, 0, 0);
}

uint64_t sub_2527C6510()
{
  v1 = *(v0 + 24);
  sub_2528BE6B0();
  v2 = *(v0 + 48);
  sub_2528BE6B0();
  v3 = *(v0 + 16);
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2527C65A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC40, &qword_2528CA040);
  sub_2528BEC20();
  sub_2527C7594();
  v3 = sub_2528BE6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC50, &unk_2528CA048);
  sub_2528BEC20();
  sub_2527C75E8();
  result = sub_2528BE6E0();
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t sub_2527C66A8(uint64_t a1)
{
  v2 = sub_2527C8A88();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527C66F4(uint64_t a1)
{
  sub_2527C8A88();

  return sub_2528BE550();
}

uint64_t sub_2527C6780(uint64_t a1)
{
  v2 = sub_2527C7CC0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527C67CC(uint64_t a1)
{
  v2 = sub_2527C7A70();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527C6840(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = *a2;
  *(v2 + 56) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_2527C6870, 0, 0);
}

uint64_t sub_2527C6870()
{
  v1 = v0[4];
  sub_2528BE6B0();
  v2 = v0[2];
  sub_2528BE6B0();
  v3 = v0[2];
  v4 = v0[3];
  sub_2528BE6B0();
  v5 = v0[2];
  v6 = *(v0 + 24) | 0x40;
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  v7 = v0[1];

  return v7();
}

uint64_t sub_2527C6924@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
  sub_2528BEC20();
  v3 = sub_2528BE760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v4 = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC30, &qword_2528CA038);
  sub_2528BEC20();
  result = sub_2528BE760();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = result;
  return result;
}

uint64_t sub_2527C6A50(uint64_t a1)
{
  v2 = sub_2527C8A34();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527C6A9C(uint64_t a1)
{
  sub_2527C8A34();

  return sub_2528BE550();
}

uint64_t sub_2527C6B28(uint64_t a1)
{
  v2 = sub_2527C8018();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527C6B74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  sub_2528BEC20();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_2528BE8D0();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_2528BE900();
}

uint64_t sub_2527C6D3C(uint64_t a1)
{
  v2 = sub_2527C7DC8();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527C6DAC(uint64_t a1, _OWORD *a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = *a2;
  return MEMORY[0x2822009F8](sub_2527C6DD4, 0, 0);
}

uint64_t sub_2527C6DD4()
{
  v1 = v0[4];
  sub_2528BE6B0();
  v2 = v0[2];
  sub_2528BE6B0();
  v3 = v0[2];
  v4 = v0[3];
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0x80;
  v5 = v0[1];

  return v5();
}

uint64_t sub_2527C6E6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
  sub_2528BEC20();
  v3 = sub_2528BE760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  result = sub_2528BE730();
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t sub_2527C6F50(uint64_t a1)
{
  v2 = sub_2527C89E0();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527C6F9C(uint64_t a1)
{
  sub_2527C89E0();

  return sub_2528BE550();
}

uint64_t sub_2527C7028(uint64_t a1)
{
  v2 = sub_2527C8370();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527C7074(uint64_t a1)
{
  v2 = sub_2527C8120();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527C70EC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2527C7110, 0, 0);
}

uint64_t sub_2527C7110()
{
  v1 = *(v0 + 16);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = -64;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2527C718C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC10, &qword_2528CA030);
  sub_2528BEC20();
  sub_2527C7444();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_2527C723C(uint64_t a1)
{
  v2 = sub_2527C898C();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527C7288(uint64_t a1)
{
  sub_2527C898C();

  return sub_2528BE550();
}

uint64_t sub_2527C7314(uint64_t a1)
{
  v2 = sub_2527C86C8();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527C7360(uint64_t a1)
{
  v2 = sub_2527C8478();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527C73AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C35E0;
  v1 = sub_2527C763C();
  *(v0 + 32) = &type metadata for PossibleValuesForAttribute.RvcCase;
  *(v0 + 40) = v1;
  v2 = sub_2527C7540();
  *(v0 + 48) = &type metadata for PossibleValuesForAttribute.ServiceAreaCase;
  *(v0 + 56) = v2;
  v3 = sub_2527C74EC();
  *(v0 + 64) = &type metadata for PossibleValuesForAttribute.ServiceMapCase;
  *(v0 + 72) = v3;
  v4 = sub_2527C7498();
  *(v0 + 80) = &type metadata for PossibleValuesForAttribute.RvcCurrentRunCase;
  *(v0 + 88) = v4;
  return v0;
}

unint64_t sub_2527C7444()
{
  result = qword_27F4FDC18;
  if (!qword_27F4FDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC18);
  }

  return result;
}

unint64_t sub_2527C7498()
{
  result = qword_27F4FDC20;
  if (!qword_27F4FDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC20);
  }

  return result;
}

unint64_t sub_2527C74EC()
{
  result = qword_27F4FDC28;
  if (!qword_27F4FDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC28);
  }

  return result;
}

unint64_t sub_2527C7540()
{
  result = qword_27F4FDC38;
  if (!qword_27F4FDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC38);
  }

  return result;
}

unint64_t sub_2527C7594()
{
  result = qword_27F4FDC48;
  if (!qword_27F4FDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC48);
  }

  return result;
}

unint64_t sub_2527C75E8()
{
  result = qword_27F4FDC58;
  if (!qword_27F4FDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC58);
  }

  return result;
}

unint64_t sub_2527C763C()
{
  result = qword_27F4FDC60;
  if (!qword_27F4FDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC60);
  }

  return result;
}

unint64_t sub_2527C7690()
{
  result = qword_27F4FDC80;
  if (!qword_27F4FDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC80);
  }

  return result;
}

unint64_t sub_2527C76E4()
{
  result = qword_27F4FDC88;
  if (!qword_27F4FDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC88);
  }

  return result;
}

unint64_t sub_2527C7738()
{
  result = qword_27F4FDC90;
  if (!qword_27F4FDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC90);
  }

  return result;
}

unint64_t sub_2527C778C()
{
  result = qword_27F4FDC98;
  if (!qword_27F4FDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC98);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2527C7880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 33))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2527C78D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

unint64_t sub_2527C7968()
{
  result = qword_27F4FDCB0;
  if (!qword_27F4FDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCB0);
  }

  return result;
}

unint64_t sub_2527C79C0()
{
  result = qword_27F4FDCB8;
  if (!qword_27F4FDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCB8);
  }

  return result;
}

unint64_t sub_2527C7A14()
{
  result = qword_27F4FBD88;
  if (!qword_27F4FBD88)
  {
    sub_2528BECF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBD88);
  }

  return result;
}

unint64_t sub_2527C7A70()
{
  result = qword_27F4FDCC0;
  if (!qword_27F4FDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCC0);
  }

  return result;
}

unint64_t sub_2527C7AC4()
{
  result = qword_27F4FDCC8;
  if (!qword_27F4FDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCC8);
  }

  return result;
}

unint64_t sub_2527C7B1C()
{
  result = qword_27F4FDCD0;
  if (!qword_27F4FDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCD0);
  }

  return result;
}

unint64_t sub_2527C7B74()
{
  result = qword_27F4FDCD8;
  if (!qword_27F4FDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCD8);
  }

  return result;
}

unint64_t sub_2527C7BCC()
{
  result = qword_27F4FDCE0;
  if (!qword_27F4FDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCE0);
  }

  return result;
}

unint64_t sub_2527C7C24()
{
  result = qword_27F4FDCE8;
  if (!qword_27F4FDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCE8);
  }

  return result;
}

unint64_t sub_2527C7CC0()
{
  result = qword_27F4FDD00;
  if (!qword_27F4FDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD00);
  }

  return result;
}

unint64_t sub_2527C7D18()
{
  result = qword_27F4FDD08;
  if (!qword_27F4FDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD08);
  }

  return result;
}

unint64_t sub_2527C7D70()
{
  result = qword_27F4FDD10;
  if (!qword_27F4FDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD10);
  }

  return result;
}

unint64_t sub_2527C7DC8()
{
  result = qword_27F4FDD18;
  if (!qword_27F4FDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD18);
  }

  return result;
}

unint64_t sub_2527C7E1C()
{
  result = qword_27F4FDD20;
  if (!qword_27F4FDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD20);
  }

  return result;
}

unint64_t sub_2527C7E74()
{
  result = qword_27F4FDD28;
  if (!qword_27F4FDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD28);
  }

  return result;
}

unint64_t sub_2527C7ECC()
{
  result = qword_27F4FDD30;
  if (!qword_27F4FDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD30);
  }

  return result;
}

unint64_t sub_2527C7F24()
{
  result = qword_27F4FDD38;
  if (!qword_27F4FDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD38);
  }

  return result;
}

unint64_t sub_2527C7F7C()
{
  result = qword_27F4FDD40;
  if (!qword_27F4FDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD40);
  }

  return result;
}

unint64_t sub_2527C8018()
{
  result = qword_27F4FDD58;
  if (!qword_27F4FDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD58);
  }

  return result;
}

unint64_t sub_2527C8070()
{
  result = qword_27F4FDD60;
  if (!qword_27F4FDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD60);
  }

  return result;
}

unint64_t sub_2527C80C8()
{
  result = qword_27F4FDD68;
  if (!qword_27F4FDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD68);
  }

  return result;
}

unint64_t sub_2527C8120()
{
  result = qword_27F4FDD70;
  if (!qword_27F4FDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD70);
  }

  return result;
}

unint64_t sub_2527C8174()
{
  result = qword_27F4FDD78;
  if (!qword_27F4FDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD78);
  }

  return result;
}

unint64_t sub_2527C81CC()
{
  result = qword_27F4FDD80;
  if (!qword_27F4FDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD80);
  }

  return result;
}

unint64_t sub_2527C8224()
{
  result = qword_27F4FDD88;
  if (!qword_27F4FDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD88);
  }

  return result;
}

unint64_t sub_2527C827C()
{
  result = qword_27F4FDD90;
  if (!qword_27F4FDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD90);
  }

  return result;
}

unint64_t sub_2527C82D4()
{
  result = qword_27F4FDD98;
  if (!qword_27F4FDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD98);
  }

  return result;
}

unint64_t sub_2527C8370()
{
  result = qword_27F4FDDB0;
  if (!qword_27F4FDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDB0);
  }

  return result;
}

unint64_t sub_2527C83C8()
{
  result = qword_27F4FDDB8;
  if (!qword_27F4FDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDB8);
  }

  return result;
}

unint64_t sub_2527C8420()
{
  result = qword_27F4FDDC0;
  if (!qword_27F4FDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDC0);
  }

  return result;
}

unint64_t sub_2527C8478()
{
  result = qword_27F4FDDC8;
  if (!qword_27F4FDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDC8);
  }

  return result;
}

unint64_t sub_2527C84CC()
{
  result = qword_27F4FDDD0;
  if (!qword_27F4FDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDD0);
  }

  return result;
}

unint64_t sub_2527C8524()
{
  result = qword_27F4FDDD8;
  if (!qword_27F4FDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDD8);
  }

  return result;
}

unint64_t sub_2527C857C()
{
  result = qword_27F4FDDE0;
  if (!qword_27F4FDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDE0);
  }

  return result;
}

unint64_t sub_2527C85D4()
{
  result = qword_27F4FDDE8;
  if (!qword_27F4FDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDE8);
  }

  return result;
}

unint64_t sub_2527C862C()
{
  result = qword_27F4FDDF0;
  if (!qword_27F4FDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDF0);
  }

  return result;
}

unint64_t sub_2527C86C8()
{
  result = qword_27F4FDE08;
  if (!qword_27F4FDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE08);
  }

  return result;
}

unint64_t sub_2527C8720()
{
  result = qword_27F4FDE10;
  if (!qword_27F4FDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE10);
  }

  return result;
}

unint64_t sub_2527C8778()
{
  result = qword_27F4FDE18;
  if (!qword_27F4FDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE18);
  }

  return result;
}

unint64_t sub_2527C87D0()
{
  result = qword_27F4FDE20;
  if (!qword_27F4FDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE20);
  }

  return result;
}

unint64_t sub_2527C8828()
{
  result = qword_27F4FDE28;
  if (!qword_27F4FDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE28);
  }

  return result;
}

unint64_t sub_2527C898C()
{
  result = qword_27F4FDE70;
  if (!qword_27F4FDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE70);
  }

  return result;
}

unint64_t sub_2527C89E0()
{
  result = qword_27F4FDE78;
  if (!qword_27F4FDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE78);
  }

  return result;
}

unint64_t sub_2527C8A34()
{
  result = qword_27F4FDE80;
  if (!qword_27F4FDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE80);
  }

  return result;
}

unint64_t sub_2527C8A88()
{
  result = qword_27F4FDE88;
  if (!qword_27F4FDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE88);
  }

  return result;
}

unint64_t RobotVacuumCleanerRunState.rawValue.getter()
{
  result = 0x646570706F7473;
  switch(*v0)
  {
    case 1:
      result = 0x676E696E6E7572;
      break;
    case 2:
      result = 0x646573756170;
      break;
    case 3:
      result = 0x726F727265;
      break;
    case 4:
      result = 0x43676E696B656573;
      break;
    case 5:
      result = 0x676E696772616863;
      break;
    case 6:
      result = 0x64656B636F64;
      break;
    case 7:
      result = 0x676E697974706D65;
      break;
    case 8:
      result = 0x676E696E61656C63;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0x676E697461647075;
      break;
    case 0xB:
      result = 0x6B63757473;
      break;
    case 0xC:
    case 0x19:
      result = 0xD000000000000018;
      break;
    case 0xD:
      result = 0x4D6E694274737564;
      break;
    case 0xE:
      result = 0x466E694274737564;
      break;
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 0x10:
      result = 0x6E61547265746177;
      break;
    case 0x11:
      result = 0xD000000000000010;
      break;
    case 0x12:
    case 0x14:
    case 0x16:
      result = 0xD000000000000015;
      break;
    case 0x13:
      result = 0x6574746142776F6CLL;
      break;
    case 0x15:
      result = 0xD000000000000012;
      break;
    case 0x17:
      result = 0x614A736C65656877;
      break;
    case 0x18:
      result = 0x6D614A6873757262;
      break;
    case 0x1A:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2527C8DF0()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FDE98);
  __swift_project_value_buffer(v0, qword_27F4FDE98);
  return sub_2528BE9D0();
}

uint64_t sub_2527C8E78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE740, &unk_2528CD960);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3E8, &qword_2528C7ED0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v5 = sub_25278EB88(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDEB0 = v5;
  return result;
}

uint64_t AirParticulateSize.rawValue.getter()
{
  if (*v0)
  {
    return 0x3031657A6973;
  }

  else
  {
    return 0x355F32657A6973;
  }
}

uint64_t sub_2527C9058(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x3031657A6973;
  }

  else
  {
    v3 = 0x355F32657A6973;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x3031657A6973;
  }

  else
  {
    v5 = 0x355F32657A6973;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2528C1060();
  }

  return v8 & 1;
}

uint64_t sub_2527C90FC()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527C917C(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_2527C91E8(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527C9270(uint64_t *a1@<X8>)
{
  v2 = 0x355F32657A6973;
  if (*v1)
  {
    v2 = 0x3031657A6973;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2527C92D0(uint64_t a1)
{
  v2 = sub_2527CF380();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527C9340(uint64_t a1)
{
  v2 = sub_2527CF314();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527C93EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE738, &unk_2528CD950);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3D8, &qword_2528C7EC0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v5 = sub_25278ED70(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDED0 = v5;
  return result;
}

uint64_t AirPurifierMode.rawValue.getter()
{
  if (*v0)
  {
    return 0x6974616D6F747561;
  }

  else
  {
    return 0x6C61756E616DLL;
  }
}

uint64_t sub_2527C95B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6974616D6F747561;
  }

  else
  {
    v3 = 0x6C61756E616DLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000063;
  }

  if (*a2)
  {
    v5 = 0x6974616D6F747561;
  }

  else
  {
    v5 = 0x6C61756E616DLL;
  }

  if (*a2)
  {
    v6 = 0xE900000000000063;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2528C1060();
  }

  return v8 & 1;
}

uint64_t sub_2527C9660()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527C96E4(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_2527C9754(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527C97E0(uint64_t *a1@<X8>)
{
  v2 = 0x6C61756E616DLL;
  if (*v1)
  {
    v2 = 0x6974616D6F747561;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000063;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2527C9844(uint64_t a1)
{
  v2 = sub_2527CF7DC();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527C98B4(uint64_t a1)
{
  v2 = sub_2527CF770();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527C9910()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FDED8);
  __swift_project_value_buffer(v0, qword_27F4FDED8);
  return sub_2528BE9D0();
}

uint64_t sub_2527C9998()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE730, &unk_2528CD940);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3C8, &qword_2528C7EB0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17D0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v5 = sub_25278EF58(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDEF0 = v5;
  return result;
}

HomeAppIntents::AirPurifierState_optional __swiftcall AirPurifierState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AirPurifierState.rawValue.getter()
{
  v1 = 1701602409;
  if (*v0 != 1)
  {
    v1 = 0x657669746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697463616E69;
  }
}

uint64_t sub_2527C9BF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  if (v2 != 1)
  {
    v4 = 0x657669746361;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6576697463616E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701602409;
  if (*a2 != 1)
  {
    v8 = 0x657669746361;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6576697463616E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2528C1060();
  }

  return v11 & 1;
}

uint64_t sub_2527C9CE4()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527C9D7C(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_2527C9E00(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527C9EA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701602409;
  if (v2 != 1)
  {
    v5 = 0x657669746361;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6576697463616E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2527C9F18(uint64_t a1)
{
  v2 = sub_2527CFC38();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527C9F88(uint64_t a1)
{
  v2 = sub_2527CFBCC();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CA02C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE728, &unk_2528CD930);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3B8, &qword_2528C7EA0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17F0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v5 = sub_25278F140(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDF10 = v5;
  return result;
}

HomeAppIntents::AirQuality_optional __swiftcall AirQuality.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AirQuality.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1919508838;
  v4 = 0x726F697265666E69;
  if (v1 != 4)
  {
    v4 = 1919905648;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E656C6C65637865;
  if (v1 != 1)
  {
    v5 = 1685024615;
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

uint64_t sub_2527CA37C(uint64_t a1)
{
  sub_2528C0A40();
}

void sub_2527CA468(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1919508838;
  v7 = 0xE800000000000000;
  v8 = 0x726F697265666E69;
  if (v2 != 4)
  {
    v8 = 1919905648;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000074;
  v10 = 0x6E656C6C65637865;
  if (v2 != 1)
  {
    v10 = 1685024615;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2527CA534(uint64_t a1)
{
  v2 = sub_2527D0094();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CA5A4(uint64_t a1)
{
  v2 = sub_2527D0028();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CA650()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE720, &unk_2528CD920);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3A8, &qword_2528C7E90) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17D0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v5 = sub_25278F328(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDF30 = v5;
  return result;
}

HomeAppIntents::ChargingState_optional __swiftcall ChargingState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChargingState.rawValue.getter()
{
  v1 = 0x6572676F72506E69;
  if (*v0 != 1)
  {
    v1 = 0x6772616843746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_2527CA8DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6572676F72506E69;
  v4 = 0xEA00000000007373;
  if (v2 != 1)
  {
    v3 = 0x6772616843746F6ELL;
    v4 = 0xED0000656C626165;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6572676F72506E69;
  v8 = 0xEA00000000007373;
  if (*a2 != 1)
  {
    v7 = 0x6772616843746F6ELL;
    v8 = 0xED0000656C626165;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2528C1060();
  }

  return v11 & 1;
}

uint64_t sub_2527CA9F8()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CAAA4(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_2527CAB3C(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527CABF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (v2 != 1)
  {
    v5 = 0x6772616843746F6ELL;
    v4 = 0xED0000656C626165;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2527CAC7C(uint64_t a1)
{
  v2 = sub_2527D04F0();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CACEC(uint64_t a1)
{
  v2 = sub_2527D0484();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CAD90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE718, &unk_2528CD910);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD398, &qword_2528C7E80) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C35E0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v5 = sub_25278F510(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDF50 = v5;
  return result;
}

HomeAppIntents::LockState_optional __swiftcall LockState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LockState.rawValue.getter()
{
  v1 = 0x64656B636F6C6E75;
  v2 = 0x64656D6D616ALL;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x64656B636F6CLL;
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

uint64_t sub_2527CB050()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CB10C(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_2527CB1B4(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527CB278(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x64656B636F6C6E75;
  v4 = 0xE600000000000000;
  v5 = 0x64656D6D616ALL;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x64656B636F6CLL;
    v2 = 0xE600000000000000;
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

uint64_t sub_2527CB314(uint64_t a1)
{
  v2 = sub_2527D094C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CB384(uint64_t a1)
{
  v2 = sub_2527D08E0();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CB430()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE710, &unk_2528CD900);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD388, &qword_2528C7E70) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528CAE70;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v5 = sub_25278F6F8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDF70 = v5;
  return result;
}

HomeAppIntents::PositionState_optional __swiftcall PositionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PositionState.rawValue.getter()
{
  v1 = *v0;
  v2 = 1852141679;
  v3 = 0x676E696E65706FLL;
  v4 = 0x676E69736F6C63;
  if (v1 != 3)
  {
    v4 = 0x646570706F7473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465736F6C63;
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

uint64_t sub_2527CB73C()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CB814(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_2527CB8D8(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527CB9B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  v5 = 0x676E696E65706FLL;
  v6 = 0x676E69736F6C63;
  if (v2 != 3)
  {
    v6 = 0x646570706F7473;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x6465736F6C63;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2527CBA70(uint64_t a1)
{
  v2 = sub_2527D0DA8();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CBAE0(uint64_t a1)
{
  v2 = sub_2527D0D3C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CBB3C()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FDF78);
  __swift_project_value_buffer(v0, qword_27F4FDF78);
  return sub_2528BE9D0();
}

uint64_t sub_2527CBBC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE708, &unk_2528CD8F0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD378, &qword_2528C7E60) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528CAE80;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v4[6 * v1] = 6;
  sub_2528BE8C0();
  v4[7 * v1] = 7;
  sub_2528BE8C0();
  v4[8 * v1] = 8;
  sub_2528BE8C0();
  v4[9 * v1] = 9;
  sub_2528BE8C0();
  v4[10 * v1] = 10;
  sub_2528BE8C0();
  v4[11 * v1] = 11;
  sub_2528BE8C0();
  v4[12 * v1] = 12;
  sub_2528BE8C0();
  v4[13 * v1] = 13;
  sub_2528BE8C0();
  v5 = sub_25278F8E0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDF90 = v5;
  return result;
}

HomeAppIntents::RobotVacuumCleanerCleanMode_optional __swiftcall RobotVacuumCleanerCleanMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RobotVacuumCleanerCleanMode.rawValue.getter()
{
  result = 0x6D7575636176;
  switch(*v0)
  {
    case 1:
      result = 7368557;
      break;
    case 2:
      result = 0x68546D7575636176;
      break;
    case 3:
      result = 0x61656C4370656564;
      break;
    case 4:
      result = 1869903201;
      break;
    case 5:
      result = 0x7465697571;
      break;
    case 6:
      result = 0x6B63697571;
      break;
    case 7:
      result = 0x6573696F4E776F6CLL;
      break;
    case 8:
      result = 0x6772656E45776F6CLL;
      break;
    case 9:
      result = 0x6E6F697461636176;
      break;
    case 0xA:
      result = 0x746867696ELL;
      break;
    case 0xB:
      result = 7954788;
      break;
    case 0xC:
      result = 7235949;
      break;
    case 0xD:
      result = 7889261;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2527CC17C@<X0>(uint64_t *a1@<X8>)
{
  result = RobotVacuumCleanerCleanMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2527CC1C8(uint64_t a1)
{
  v2 = sub_2527C75E8();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CC238(uint64_t a1)
{
  v2 = sub_2527D1198();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CC2C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE700, &unk_2528CD8E0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD368, &qword_2528C7E50) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17D0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v5 = sub_25278FAF0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDFB0 = v5;
  return result;
}

HomeAppIntents::RobotVacuumBasicRunStateCommand_optional __swiftcall RobotVacuumBasicRunStateCommand.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RobotVacuumBasicRunStateCommand.rawValue.getter()
{
  v1 = 0x656D75736572;
  if (*v0 != 1)
  {
    v1 = 0x6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6573756170;
  }
}

uint64_t sub_2527CC524(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656D75736572;
  if (v2 != 1)
  {
    v3 = 0x6C65636E6163;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6573756170;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x656D75736572;
  if (*a2 != 1)
  {
    v6 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6573756170;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2528C1060();
  }

  return v9 & 1;
}

uint64_t sub_2527CC614()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CC6AC(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_2527CC730(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527CC7D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656D75736572;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6573756170;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_2527CC848(uint64_t a1)
{
  v2 = sub_2527C7444();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CC8B8(uint64_t a1)
{
  v2 = sub_2527D154C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CC954(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2528BE9D0();
}

uint64_t sub_2527CC9D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE6F8, &unk_2528CD8D0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD358, &qword_2528C7E40) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528CAE90;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v4[6 * v1] = 6;
  sub_2528BE8C0();
  v4[7 * v1] = 7;
  sub_2528BE8C0();
  v4[8 * v1] = 8;
  sub_2528BE8C0();
  v4[9 * v1] = 9;
  sub_2528BE8C0();
  v4[10 * v1] = 10;
  sub_2528BE8C0();
  v4[11 * v1] = 11;
  sub_2528BE8C0();
  v4[12 * v1] = 12;
  sub_2528BE8C0();
  v4[13 * v1] = 13;
  sub_2528BE8C0();
  v4[14 * v1] = 14;
  sub_2528BE8C0();
  v4[15 * v1] = 15;
  sub_2528BE8C0();
  v4[16 * v1] = 16;
  sub_2528BE8C0();
  v4[17 * v1] = 17;
  sub_2528BE8C0();
  v4[18 * v1] = 18;
  sub_2528BE8C0();
  v4[19 * v1] = 19;
  sub_2528BE8C0();
  v4[20 * v1] = 20;
  sub_2528BE8C0();
  v4[21 * v1] = 21;
  sub_2528BE8C0();
  v4[22 * v1] = 22;
  sub_2528BE8C0();
  v4[23 * v1] = 23;
  sub_2528BE8C0();
  v4[24 * v1] = 24;
  sub_2528BE8C0();
  v4[25 * v1] = 25;
  sub_2528BE8C0();
  v4[26 * v1] = 26;
  sub_2528BE8C0();
  v5 = sub_25278FCD8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDFD0 = v5;
  return result;
}

HomeAppIntents::RobotVacuumCleanerRunState_optional __swiftcall RobotVacuumCleanerRunState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C1070();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2527CD1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2528C1060();
  }

  return v11 & 1;
}

uint64_t sub_2527CD26C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_2528C1130();
  a3(v4);
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CD2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_2528C0A40();
}

uint64_t sub_2527CD374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_2528C1130();
  a4(v5);
  sub_2528C0A40();

  return sub_2528C1180();
}

unint64_t sub_2527CD3EC@<X0>(unint64_t *a1@<X8>)
{
  result = RobotVacuumCleanerRunState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2527CD46C(uint64_t a1)
{
  v2 = sub_2527C7594();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CD4DC(uint64_t a1)
{
  v2 = sub_2527D1954();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CD538()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FDFD8);
  __swift_project_value_buffer(v0, qword_27F4FDFD8);
  return sub_2528BE9D0();
}

uint64_t sub_2527CD5C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE6F0, &unk_2528CD8C0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD348, &qword_2528C7E30) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528CAE70;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v5 = sub_25278FEE8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDFF0 = v5;
  return result;
}

HomeAppIntents::SecuritySystemState_optional __swiftcall SecuritySystemState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SecuritySystemState.rawValue.getter()
{
  v1 = *v0;
  v2 = 6710895;
  v3 = 2036430689;
  v4 = 0x746867696ELL;
  if (v1 != 3)
  {
    v4 = 0x6572656767697274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701670760;
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

uint64_t sub_2527CD8B4()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CD980(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_2527CDA38(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527CDB0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6710895;
  v5 = 0xE400000000000000;
  v6 = 2036430689;
  v7 = 0xE500000000000000;
  v8 = 0x746867696ELL;
  if (v2 != 3)
  {
    v8 = 0x6572656767697274;
    v7 = 0xE900000000000064;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701670760;
    v3 = 0xE400000000000000;
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

uint64_t sub_2527CDBB8(uint64_t a1)
{
  v2 = sub_2527D1D74();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CDC28(uint64_t a1)
{
  v2 = sub_2527D1D08();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CDCD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE6E8, &unk_2528CD8B0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD338, &qword_2528C7E20) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17F0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v5 = sub_2527900D0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FE010 = v5;
  return result;
}

HomeAppIntents::ThermostatMode_optional __swiftcall ThermostatMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ThermostatMode.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 1952540008;
  v4 = 1819242339;
  if (v1 != 4)
  {
    v4 = 1869903201;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6710895;
  if (v1 != 1)
  {
    v5 = 28271;
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

uint64_t sub_2527CDFE8(uint64_t a1)
{
  sub_2528C0A40();
}

void sub_2527CE0B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 1952540008;
  v6 = 1819242339;
  if (v2 != 4)
  {
    v6 = 1869903201;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = 0xE300000000000000;
  v8 = 6710895;
  if (v2 != 1)
  {
    v8 = 28271;
    v7 = 0xE200000000000000;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2527CE168(uint64_t a1)
{
  v2 = sub_2527D21D0();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CE1D8(uint64_t a1)
{
  v2 = sub_2527D2164();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CE234()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FE018);
  __swift_project_value_buffer(v0, qword_27F4FE018);
  return sub_2528BE9D0();
}

uint64_t sub_2527CE2BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE6E0, &unk_2528CD8A0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD328, &qword_2528C7E10) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17F0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v5 = sub_2527902B8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FE030 = v5;
  return result;
}

HomeAppIntents::HumidifierDehumidifierMode_optional __swiftcall HumidifierDehumidifierMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HumidifierDehumidifierMode.rawValue.getter()
{
  v1 = *v0;
  v2 = 6710895;
  v3 = 0x6964696D75686564;
  v4 = 1869903201;
  if (v1 != 4)
  {
    v4 = 1701736302;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 28271;
  if (v1 != 1)
  {
    v5 = 0x79666964696D7568;
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

uint64_t sub_2527CE5F8(uint64_t a1)
{
  sub_2528C0A40();
}

void sub_2527CE6DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6710895;
  v5 = 0xEA00000000007966;
  v6 = 0x6964696D75686564;
  v7 = 1869903201;
  if (v2 != 4)
  {
    v7 = 1701736302;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xE200000000000000;
  v9 = 28271;
  if (v2 != 1)
  {
    v9 = 0x79666964696D7568;
    v8 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_2527CE7A0(uint64_t a1)
{
  v2 = sub_2527D262C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CE810(uint64_t a1)
{
  v2 = sub_2527D25C0();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CE86C()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FE038);
  __swift_project_value_buffer(v0, qword_27F4FE038);
  return sub_2528BE9D0();
}

uint64_t sub_2527CE8F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE6D8, &unk_2528CD890);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD318, &qword_2528C7E00) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v5 = sub_2527904A0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FE050 = v5;
  return result;
}

uint64_t RotationDirection.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7369776B636F6C63;
  }
}

uint64_t sub_2527CEAD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7369776B636F6C63;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x80000002528E4FB0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7369776B636F6C63;
  }

  if (*a2)
  {
    v6 = 0x80000002528E4FB0;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2528C1060();
  }

  return v8 & 1;
}

uint64_t sub_2527CEB80()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CEC0C(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_2527CEC84(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527CED18(unint64_t *a1@<X8>)
{
  v2 = 0x80000002528E4FB0;
  v3 = 0x7369776B636F6C63;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE900000000000065;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2527CED84(uint64_t a1)
{
  v2 = sub_2527D2A88();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CEDF4(uint64_t a1)
{
  v2 = sub_2527D2A1C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CEE98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE6D0, &unk_2528CD880);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD308, &qword_2528C7DF0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v5 = sub_252790688(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FE070 = v5;
  return result;
}

uint64_t sub_2527CF01C@<X0>(char *a4@<X8>)
{
  v5 = sub_2528C0F30();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t DeltaType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6573616572636564;
  }

  else
  {
    return 0x6573616572636E69;
  }
}

unint64_t sub_2527CF0B4()
{
  result = qword_27F4FE078;
  if (!qword_27F4FE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE078);
  }

  return result;
}

unint64_t sub_2527CF10C()
{
  result = qword_27F4FE080;
  if (!qword_27F4FE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE080);
  }

  return result;
}

unint64_t sub_2527CF164()
{
  result = qword_27F4FE088;
  if (!qword_27F4FE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE088);
  }

  return result;
}

unint64_t sub_2527CF1BC()
{
  result = qword_27F4FE090;
  if (!qword_27F4FE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE090);
  }

  return result;
}

unint64_t sub_2527CF214()
{
  result = qword_27F4FE098;
  if (!qword_27F4FE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE098);
  }

  return result;
}

unint64_t sub_2527CF268()
{
  result = qword_27F4FE0A0;
  if (!qword_27F4FE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0A0);
  }

  return result;
}

unint64_t sub_2527CF2BC()
{
  result = qword_27F4FE0A8;
  if (!qword_27F4FE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0A8);
  }

  return result;
}

unint64_t sub_2527CF314()
{
  result = qword_27F4FE0B0;
  if (!qword_27F4FE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0B0);
  }

  return result;
}

unint64_t sub_2527CF380()
{
  result = qword_27F4FE0B8;
  if (!qword_27F4FE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0B8);
  }

  return result;
}

unint64_t sub_2527CF3D8()
{
  result = qword_27F4FE0C0;
  if (!qword_27F4FE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0C0);
  }

  return result;
}

unint64_t sub_2527CF430()
{
  result = qword_27F4FE0C8;
  if (!qword_27F4FE0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0C8);
  }

  return result;
}

unint64_t sub_2527CF488()
{
  result = qword_27F4FE0D0;
  if (!qword_27F4FE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0D0);
  }

  return result;
}

unint64_t sub_2527CF510()
{
  result = qword_27F4FE0E8;
  if (!qword_27F4FE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0E8);
  }

  return result;
}

unint64_t sub_2527CF568()
{
  result = qword_27F4FE0F0;
  if (!qword_27F4FE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0F0);
  }

  return result;
}

unint64_t sub_2527CF5C0()
{
  result = qword_27F4FE0F8;
  if (!qword_27F4FE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0F8);
  }

  return result;
}

unint64_t sub_2527CF618()
{
  result = qword_27F4FE100;
  if (!qword_27F4FE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE100);
  }

  return result;
}

unint64_t sub_2527CF670()
{
  result = qword_27F4FE108;
  if (!qword_27F4FE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE108);
  }

  return result;
}

unint64_t sub_2527CF6C4()
{
  result = qword_27F4FE110;
  if (!qword_27F4FE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE110);
  }

  return result;
}

unint64_t sub_2527CF718()
{
  result = qword_27F4FE118;
  if (!qword_27F4FE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE118);
  }

  return result;
}

unint64_t sub_2527CF770()
{
  result = qword_27F4FE120;
  if (!qword_27F4FE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE120);
  }

  return result;
}

unint64_t sub_2527CF7DC()
{
  result = qword_27F4FE128;
  if (!qword_27F4FE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE128);
  }

  return result;
}

unint64_t sub_2527CF834()
{
  result = qword_27F4FE130;
  if (!qword_27F4FE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE130);
  }

  return result;
}

unint64_t sub_2527CF88C()
{
  result = qword_27F4FE138;
  if (!qword_27F4FE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE138);
  }

  return result;
}

unint64_t sub_2527CF8E4()
{
  result = qword_27F4FE140;
  if (!qword_27F4FE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE140);
  }

  return result;
}

unint64_t sub_2527CF96C()
{
  result = qword_27F4FE158;
  if (!qword_27F4FE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE158);
  }

  return result;
}

unint64_t sub_2527CF9C4()
{
  result = qword_27F4FE160;
  if (!qword_27F4FE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE160);
  }

  return result;
}

unint64_t sub_2527CFA1C()
{
  result = qword_27F4FE168;
  if (!qword_27F4FE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE168);
  }

  return result;
}

unint64_t sub_2527CFA74()
{
  result = qword_27F4FE170;
  if (!qword_27F4FE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE170);
  }

  return result;
}

unint64_t sub_2527CFACC()
{
  result = qword_27F4FE178;
  if (!qword_27F4FE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE178);
  }

  return result;
}

unint64_t sub_2527CFB20()
{
  result = qword_27F4FE180;
  if (!qword_27F4FE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE180);
  }

  return result;
}

unint64_t sub_2527CFB74()
{
  result = qword_27F4FE188;
  if (!qword_27F4FE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE188);
  }

  return result;
}

unint64_t sub_2527CFBCC()
{
  result = qword_27F4FE190;
  if (!qword_27F4FE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE190);
  }

  return result;
}

unint64_t sub_2527CFC38()
{
  result = qword_27F4FE198;
  if (!qword_27F4FE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE198);
  }

  return result;
}

unint64_t sub_2527CFC90()
{
  result = qword_27F4FE1A0;
  if (!qword_27F4FE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1A0);
  }

  return result;
}

unint64_t sub_2527CFCE8()
{
  result = qword_27F4FE1A8;
  if (!qword_27F4FE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1A8);
  }

  return result;
}

unint64_t sub_2527CFD40()
{
  result = qword_27F4FE1B0;
  if (!qword_27F4FE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1B0);
  }

  return result;
}

unint64_t sub_2527CFDC8()
{
  result = qword_27F4FE1C8;
  if (!qword_27F4FE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1C8);
  }

  return result;
}

unint64_t sub_2527CFE20()
{
  result = qword_27F4FE1D0;
  if (!qword_27F4FE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1D0);
  }

  return result;
}

unint64_t sub_2527CFE78()
{
  result = qword_27F4FE1D8;
  if (!qword_27F4FE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1D8);
  }

  return result;
}

unint64_t sub_2527CFED0()
{
  result = qword_27F4FE1E0;
  if (!qword_27F4FE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1E0);
  }

  return result;
}

unint64_t sub_2527CFF28()
{
  result = qword_27F4FE1E8;
  if (!qword_27F4FE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1E8);
  }

  return result;
}

unint64_t sub_2527CFF7C()
{
  result = qword_27F4FE1F0;
  if (!qword_27F4FE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1F0);
  }

  return result;
}

unint64_t sub_2527CFFD0()
{
  result = qword_27F4FE1F8;
  if (!qword_27F4FE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1F8);
  }

  return result;
}

unint64_t sub_2527D0028()
{
  result = qword_27F4FE200;
  if (!qword_27F4FE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE200);
  }

  return result;
}

unint64_t sub_2527D0094()
{
  result = qword_27F4FE208;
  if (!qword_27F4FE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE208);
  }

  return result;
}

unint64_t sub_2527D00EC()
{
  result = qword_27F4FE210;
  if (!qword_27F4FE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE210);
  }

  return result;
}

unint64_t sub_2527D0144()
{
  result = qword_27F4FE218;
  if (!qword_27F4FE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE218);
  }

  return result;
}

unint64_t sub_2527D019C()
{
  result = qword_27F4FE220;
  if (!qword_27F4FE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE220);
  }

  return result;
}

unint64_t sub_2527D0224()
{
  result = qword_27F4FE238;
  if (!qword_27F4FE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE238);
  }

  return result;
}

unint64_t sub_2527D027C()
{
  result = qword_27F4FE240;
  if (!qword_27F4FE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE240);
  }

  return result;
}

unint64_t sub_2527D02D4()
{
  result = qword_27F4FE248;
  if (!qword_27F4FE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE248);
  }

  return result;
}

unint64_t sub_2527D032C()
{
  result = qword_27F4FE250;
  if (!qword_27F4FE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE250);
  }

  return result;
}

unint64_t sub_2527D0384()
{
  result = qword_27F4FE258;
  if (!qword_27F4FE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE258);
  }

  return result;
}

unint64_t sub_2527D03D8()
{
  result = qword_27F4FE260;
  if (!qword_27F4FE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE260);
  }

  return result;
}

unint64_t sub_2527D042C()
{
  result = qword_27F4FE268;
  if (!qword_27F4FE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE268);
  }

  return result;
}

unint64_t sub_2527D0484()
{
  result = qword_27F4FE270;
  if (!qword_27F4FE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE270);
  }

  return result;
}

unint64_t sub_2527D04F0()
{
  result = qword_27F4FE278;
  if (!qword_27F4FE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE278);
  }

  return result;
}

unint64_t sub_2527D0548()
{
  result = qword_27F4FE280;
  if (!qword_27F4FE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE280);
  }

  return result;
}

unint64_t sub_2527D05A0()
{
  result = qword_27F4FE288;
  if (!qword_27F4FE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE288);
  }

  return result;
}

unint64_t sub_2527D05F8()
{
  result = qword_27F4FE290;
  if (!qword_27F4FE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE290);
  }

  return result;
}

unint64_t sub_2527D0680()
{
  result = qword_27F4FE2A8;
  if (!qword_27F4FE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2A8);
  }

  return result;
}

unint64_t sub_2527D06D8()
{
  result = qword_27F4FE2B0;
  if (!qword_27F4FE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2B0);
  }

  return result;
}

unint64_t sub_2527D0730()
{
  result = qword_27F4FE2B8;
  if (!qword_27F4FE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2B8);
  }

  return result;
}

unint64_t sub_2527D0788()
{
  result = qword_27F4FE2C0;
  if (!qword_27F4FE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2C0);
  }

  return result;
}

unint64_t sub_2527D07E0()
{
  result = qword_27F4FE2C8;
  if (!qword_27F4FE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2C8);
  }

  return result;
}

unint64_t sub_2527D0834()
{
  result = qword_27F4FE2D0;
  if (!qword_27F4FE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2D0);
  }

  return result;
}

unint64_t sub_2527D0888()
{
  result = qword_27F4FE2D8;
  if (!qword_27F4FE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2D8);
  }

  return result;
}

unint64_t sub_2527D08E0()
{
  result = qword_27F4FE2E0;
  if (!qword_27F4FE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2E0);
  }

  return result;
}

unint64_t sub_2527D094C()
{
  result = qword_27F4FE2E8;
  if (!qword_27F4FE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2E8);
  }

  return result;
}

unint64_t sub_2527D09A4()
{
  result = qword_27F4FE2F0;
  if (!qword_27F4FE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2F0);
  }

  return result;
}

unint64_t sub_2527D09FC()
{
  result = qword_27F4FE2F8;
  if (!qword_27F4FE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2F8);
  }

  return result;
}

unint64_t sub_2527D0A54()
{
  result = qword_27F4FE300;
  if (!qword_27F4FE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE300);
  }

  return result;
}

unint64_t sub_2527D0ADC()
{
  result = qword_27F4FE318;
  if (!qword_27F4FE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE318);
  }

  return result;
}

unint64_t sub_2527D0B34()
{
  result = qword_27F4FE320;
  if (!qword_27F4FE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE320);
  }

  return result;
}

unint64_t sub_2527D0B8C()
{
  result = qword_27F4FE328;
  if (!qword_27F4FE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE328);
  }

  return result;
}

unint64_t sub_2527D0BE4()
{
  result = qword_27F4FE330;
  if (!qword_27F4FE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE330);
  }

  return result;
}

unint64_t sub_2527D0C3C()
{
  result = qword_27F4FE338;
  if (!qword_27F4FE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE338);
  }

  return result;
}

unint64_t sub_2527D0C90()
{
  result = qword_27F4FE340;
  if (!qword_27F4FE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE340);
  }

  return result;
}

unint64_t sub_2527D0CE4()
{
  result = qword_27F4FE348;
  if (!qword_27F4FE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE348);
  }

  return result;
}

unint64_t sub_2527D0D3C()
{
  result = qword_27F4FE350;
  if (!qword_27F4FE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE350);
  }

  return result;
}

unint64_t sub_2527D0DA8()
{
  result = qword_27F4FE358;
  if (!qword_27F4FE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE358);
  }

  return result;
}

unint64_t sub_2527D0E00()
{
  result = qword_27F4FE360;
  if (!qword_27F4FE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE360);
  }

  return result;
}

unint64_t sub_2527D0E58()
{
  result = qword_27F4FE368;
  if (!qword_27F4FE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE368);
  }

  return result;
}

unint64_t sub_2527D0EB0()
{
  result = qword_27F4FE370;
  if (!qword_27F4FE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE370);
  }

  return result;
}

unint64_t sub_2527D0F38()
{
  result = qword_27F4FE388;
  if (!qword_27F4FE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE388);
  }

  return result;
}

unint64_t sub_2527D0F90()
{
  result = qword_27F4FE390;
  if (!qword_27F4FE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE390);
  }

  return result;
}

unint64_t sub_2527D0FE8()
{
  result = qword_27F4FE398;
  if (!qword_27F4FE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE398);
  }

  return result;
}

unint64_t sub_2527D1040()
{
  result = qword_27F4FE3A0;
  if (!qword_27F4FE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3A0);
  }

  return result;
}

unint64_t sub_2527D1098()
{
  result = qword_27F4FE3A8;
  if (!qword_27F4FE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3A8);
  }

  return result;
}

unint64_t sub_2527D10EC()
{
  result = qword_27F4FE3B0;
  if (!qword_27F4FE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3B0);
  }

  return result;
}

unint64_t sub_2527D1140()
{
  result = qword_27F4FE3B8;
  if (!qword_27F4FE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3B8);
  }

  return result;
}

unint64_t sub_2527D1198()
{
  result = qword_27F4FE3C0;
  if (!qword_27F4FE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3C0);
  }

  return result;
}

unint64_t sub_2527D1208()
{
  result = qword_27F4FE3C8;
  if (!qword_27F4FE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3C8);
  }

  return result;
}

unint64_t sub_2527D1260()
{
  result = qword_27F4FE3D0;
  if (!qword_27F4FE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3D0);
  }

  return result;
}

unint64_t sub_2527D12EC()
{
  result = qword_27F4FE3E0;
  if (!qword_27F4FE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3E0);
  }

  return result;
}

unint64_t sub_2527D1344()
{
  result = qword_27F4FE3E8;
  if (!qword_27F4FE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3E8);
  }

  return result;
}

unint64_t sub_2527D139C()
{
  result = qword_27F4FE3F0;
  if (!qword_27F4FE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3F0);
  }

  return result;
}

unint64_t sub_2527D13F4()
{
  result = qword_27F4FE3F8;
  if (!qword_27F4FE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3F8);
  }

  return result;
}

unint64_t sub_2527D144C()
{
  result = qword_27F4FE400;
  if (!qword_27F4FE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE400);
  }

  return result;
}

unint64_t sub_2527D14A0()
{
  result = qword_27F4FE408;
  if (!qword_27F4FE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE408);
  }

  return result;
}

unint64_t sub_2527D14F4()
{
  result = qword_27F4FE410;
  if (!qword_27F4FE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE410);
  }

  return result;
}

unint64_t sub_2527D154C()
{
  result = qword_27F4FE418;
  if (!qword_27F4FE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE418);
  }

  return result;
}

unint64_t sub_2527D15BC()
{
  result = qword_27F4FE420;
  if (!qword_27F4FE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE420);
  }

  return result;
}

unint64_t sub_2527D1614()
{
  result = qword_27F4FE428;
  if (!qword_27F4FE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE428);
  }

  return result;
}

unint64_t sub_2527D166C()
{
  result = qword_27F4FE430;
  if (!qword_27F4FE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE430);
  }

  return result;
}

unint64_t sub_2527D16F4()
{
  result = qword_27F4FE448;
  if (!qword_27F4FE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE448);
  }

  return result;
}

unint64_t sub_2527D174C()
{
  result = qword_27F4FE450;
  if (!qword_27F4FE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE450);
  }

  return result;
}

unint64_t sub_2527D17A4()
{
  result = qword_27F4FE458;
  if (!qword_27F4FE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE458);
  }

  return result;
}

unint64_t sub_2527D17FC()
{
  result = qword_27F4FE460;
  if (!qword_27F4FE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE460);
  }

  return result;
}

unint64_t sub_2527D1854()
{
  result = qword_27F4FE468;
  if (!qword_27F4FE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE468);
  }

  return result;
}

unint64_t sub_2527D18A8()
{
  result = qword_27F4FE470;
  if (!qword_27F4FE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE470);
  }

  return result;
}

unint64_t sub_2527D18FC()
{
  result = qword_27F4FE478;
  if (!qword_27F4FE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE478);
  }

  return result;
}

unint64_t sub_2527D1954()
{
  result = qword_27F4FE480;
  if (!qword_27F4FE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE480);
  }

  return result;
}

unint64_t sub_2527D19C4()
{
  result = qword_27F4FE488;
  if (!qword_27F4FE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE488);
  }

  return result;
}

unint64_t sub_2527D1A1C()
{
  result = qword_27F4FE490;
  if (!qword_27F4FE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE490);
  }

  return result;
}

unint64_t sub_2527D1AA8()
{
  result = qword_27F4FE4A8;
  if (!qword_27F4FE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4A8);
  }

  return result;
}

unint64_t sub_2527D1B00()
{
  result = qword_27F4FE4B0;
  if (!qword_27F4FE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4B0);
  }

  return result;
}

unint64_t sub_2527D1B58()
{
  result = qword_27F4FE4B8;
  if (!qword_27F4FE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4B8);
  }

  return result;
}

unint64_t sub_2527D1BB0()
{
  result = qword_27F4FE4C0;
  if (!qword_27F4FE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4C0);
  }

  return result;
}

unint64_t sub_2527D1C08()
{
  result = qword_27F4FE4C8;
  if (!qword_27F4FE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4C8);
  }

  return result;
}

unint64_t sub_2527D1C5C()
{
  result = qword_27F4FE4D0;
  if (!qword_27F4FE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4D0);
  }

  return result;
}

unint64_t sub_2527D1CB0()
{
  result = qword_27F4FE4D8;
  if (!qword_27F4FE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4D8);
  }

  return result;
}

unint64_t sub_2527D1D08()
{
  result = qword_27F4FE4E0;
  if (!qword_27F4FE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4E0);
  }

  return result;
}

unint64_t sub_2527D1D74()
{
  result = qword_27F4FE4E8;
  if (!qword_27F4FE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4E8);
  }

  return result;
}

unint64_t sub_2527D1DCC()
{
  result = qword_27F4FE4F0;
  if (!qword_27F4FE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4F0);
  }

  return result;
}

unint64_t sub_2527D1E24()
{
  result = qword_27F4FE4F8;
  if (!qword_27F4FE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4F8);
  }

  return result;
}

unint64_t sub_2527D1E7C()
{
  result = qword_27F4FE500;
  if (!qword_27F4FE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE500);
  }

  return result;
}

unint64_t sub_2527D1F04()
{
  result = qword_27F4FE518;
  if (!qword_27F4FE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE518);
  }

  return result;
}

unint64_t sub_2527D1F5C()
{
  result = qword_27F4FE520;
  if (!qword_27F4FE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE520);
  }

  return result;
}

unint64_t sub_2527D1FB4()
{
  result = qword_27F4FE528;
  if (!qword_27F4FE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE528);
  }

  return result;
}

unint64_t sub_2527D200C()
{
  result = qword_27F4FE530;
  if (!qword_27F4FE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE530);
  }

  return result;
}

unint64_t sub_2527D2064()
{
  result = qword_27F4FE538;
  if (!qword_27F4FE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE538);
  }

  return result;
}

unint64_t sub_2527D20B8()
{
  result = qword_27F4FE540;
  if (!qword_27F4FE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE540);
  }

  return result;
}

unint64_t sub_2527D210C()
{
  result = qword_27F4FE548;
  if (!qword_27F4FE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE548);
  }

  return result;
}

unint64_t sub_2527D2164()
{
  result = qword_27F4FE550;
  if (!qword_27F4FE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE550);
  }

  return result;
}

unint64_t sub_2527D21D0()
{
  result = qword_27F4FE558;
  if (!qword_27F4FE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE558);
  }

  return result;
}

unint64_t sub_2527D2228()
{
  result = qword_27F4FE560;
  if (!qword_27F4FE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE560);
  }

  return result;
}

unint64_t sub_2527D2280()
{
  result = qword_27F4FE568;
  if (!qword_27F4FE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE568);
  }

  return result;
}

unint64_t sub_2527D22D8()
{
  result = qword_27F4FE570;
  if (!qword_27F4FE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE570);
  }

  return result;
}

unint64_t sub_2527D2360()
{
  result = qword_27F4FE588;
  if (!qword_27F4FE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE588);
  }

  return result;
}

unint64_t sub_2527D23B8()
{
  result = qword_27F4FE590;
  if (!qword_27F4FE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE590);
  }

  return result;
}

unint64_t sub_2527D2410()
{
  result = qword_27F4FE598;
  if (!qword_27F4FE598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE598);
  }

  return result;
}

unint64_t sub_2527D2468()
{
  result = qword_27F4FE5A0;
  if (!qword_27F4FE5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5A0);
  }

  return result;
}

unint64_t sub_2527D24C0()
{
  result = qword_27F4FE5A8;
  if (!qword_27F4FE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5A8);
  }

  return result;
}

unint64_t sub_2527D2514()
{
  result = qword_27F4FE5B0;
  if (!qword_27F4FE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5B0);
  }

  return result;
}

unint64_t sub_2527D2568()
{
  result = qword_27F4FE5B8;
  if (!qword_27F4FE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5B8);
  }

  return result;
}

unint64_t sub_2527D25C0()
{
  result = qword_27F4FE5C0;
  if (!qword_27F4FE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5C0);
  }

  return result;
}

unint64_t sub_2527D262C()
{
  result = qword_27F4FE5C8;
  if (!qword_27F4FE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5C8);
  }

  return result;
}

unint64_t sub_2527D2684()
{
  result = qword_27F4FE5D0;
  if (!qword_27F4FE5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5D0);
  }

  return result;
}

unint64_t sub_2527D26DC()
{
  result = qword_27F4FE5D8;
  if (!qword_27F4FE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5D8);
  }

  return result;
}

unint64_t sub_2527D2734()
{
  result = qword_27F4FE5E0;
  if (!qword_27F4FE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5E0);
  }

  return result;
}

unint64_t sub_2527D27BC()
{
  result = qword_27F4FE5F8;
  if (!qword_27F4FE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5F8);
  }

  return result;
}

unint64_t sub_2527D2814()
{
  result = qword_27F4FE600;
  if (!qword_27F4FE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE600);
  }

  return result;
}

unint64_t sub_2527D286C()
{
  result = qword_27F4FE608;
  if (!qword_27F4FE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE608);
  }

  return result;
}

unint64_t sub_2527D28C4()
{
  result = qword_27F4FE610;
  if (!qword_27F4FE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE610);
  }

  return result;
}

unint64_t sub_2527D291C()
{
  result = qword_27F4FE618;
  if (!qword_27F4FE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE618);
  }

  return result;
}

unint64_t sub_2527D2970()
{
  result = qword_27F4FE620;
  if (!qword_27F4FE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE620);
  }

  return result;
}

unint64_t sub_2527D29C4()
{
  result = qword_27F4FE628;
  if (!qword_27F4FE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE628);
  }

  return result;
}

unint64_t sub_2527D2A1C()
{
  result = qword_27F4FE630;
  if (!qword_27F4FE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE630);
  }

  return result;
}

unint64_t sub_2527D2A88()
{
  result = qword_27F4FE638;
  if (!qword_27F4FE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE638);
  }

  return result;
}

unint64_t sub_2527D2AE0()
{
  result = qword_27F4FE640;
  if (!qword_27F4FE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE640);
  }

  return result;
}

unint64_t sub_2527D2B38()
{
  result = qword_27F4FE648;
  if (!qword_27F4FE648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE648);
  }

  return result;
}

unint64_t sub_2527D2B90()
{
  result = qword_27F4FE650;
  if (!qword_27F4FE650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE650);
  }

  return result;
}

void sub_2527D2C20(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

unint64_t sub_2527D2C50()
{
  result = qword_27F4FE668;
  if (!qword_27F4FE668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE668);
  }

  return result;
}

unint64_t sub_2527D2CA8()
{
  result = qword_27F4FE670;
  if (!qword_27F4FE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE670);
  }

  return result;
}

unint64_t sub_2527D2D00()
{
  result = qword_27F4FE678;
  if (!qword_27F4FE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE678);
  }

  return result;
}

unint64_t sub_2527D2D58()
{
  result = qword_27F4FE680;
  if (!qword_27F4FE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE680);
  }

  return result;
}

uint64_t sub_2527D2DAC()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527D2E18(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_2527D2E68(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527D2ED0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2528C1060();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_2527D2F50()
{
  result = qword_27F4FE688;
  if (!qword_27F4FE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE688);
  }

  return result;
}

unint64_t sub_2527D2FA4()
{
  result = qword_27F4FE690;
  if (!qword_27F4FE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE690);
  }

  return result;
}

unint64_t sub_2527D2FF8()
{
  result = qword_27F4FE698;
  if (!qword_27F4FE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE698);
  }

  return result;
}

unint64_t sub_2527D3050()
{
  result = qword_27F4FE6A0;
  if (!qword_27F4FE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE6A0);
  }

  return result;
}

uint64_t sub_2527D3134(uint64_t a1)
{
  v2 = sub_25277AE58();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2527D3184()
{
  result = qword_27F4FE6A8;
  if (!qword_27F4FE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE6A8);
  }

  return result;
}

unint64_t sub_2527D31DC()
{
  result = qword_27F4FE6B0;
  if (!qword_27F4FE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE6B0);
  }

  return result;
}

unint64_t sub_2527D3234()
{
  result = qword_27F4FE6B8;
  if (!qword_27F4FE6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE6B8);
  }

  return result;
}

uint64_t sub_2527D32AC(uint64_t a1)
{
  v2 = sub_2527D3050();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t getEnumTagSinglePayload for RobotVacuumCleanerCleanMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RobotVacuumCleanerCleanMode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RobotVacuumCleanerRunState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RobotVacuumCleanerRunState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GetDeviceInfoEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GetDeviceInfoEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_2527D387C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_2528C0E00();
  if (result == (1 << *(a1 + 32)))
  {
    v5 = 63;
  }

  else
  {
    result = sub_252868FC0(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2527D38F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = sub_2528C0E00();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v13 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    sub_2527D63AC(v6, &v6[v10], v7, *(a1 + 36), 0, a1);
    v11 = sub_2528BECF0();
    (*(*(v11 - 8) + 32))(a2, v6, v11);
    sub_2527D71D8(&v6[v10], a2 + *(v4 + 48));
    return (*(v13 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_2527D3AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2528C0E00();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_252869014(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_2528BECF0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_2527D3B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25272006C(a3, v25 - v10, &qword_27F4FCDA0, &unk_2528C6AC0);
  v12 = sub_2528C0C40();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_2528BEA50();
  if (v14 == 1)
  {
    sub_2527213D8(v11, &qword_27F4FCDA0, &unk_2528C6AC0);
  }

  else
  {
    sub_2528C0C30();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2528C0BD0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2528C0A30() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_2528BEA50();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2527213D8(a3, &qword_27F4FCDA0, &unk_2528C6AC0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2527213D8(a3, &qword_27F4FCDA0, &unk_2528C6AC0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2527D3E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25272006C(a3, v25 - v10, &qword_27F4FCDA0, &unk_2528C6AC0);
  v12 = sub_2528C0C40();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_2528BEA50();
  if (v14 == 1)
  {
    sub_2527213D8(v11, &qword_27F4FCDA0, &unk_2528C6AC0);
  }

  else
  {
    sub_2528C0C30();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2528C0BD0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2528C0A30() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_2528BEA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE848, &qword_2528CDDE8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_2527213D8(a3, &qword_27F4FCDA0, &unk_2528C6AC0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2527213D8(a3, &qword_27F4FCDA0, &unk_2528C6AC0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE848, &qword_2528CDDE8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2527D4188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25272006C(a3, v25 - v10, &qword_27F4FCDA0, &unk_2528C6AC0);
  v12 = sub_2528C0C40();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_2528BEA50();
  if (v14 == 1)
  {
    sub_2527213D8(v11, &qword_27F4FCDA0, &unk_2528C6AC0);
  }

  else
  {
    sub_2528C0C30();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2528C0BD0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2528C0A30() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_2528BEA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE838, &qword_2528CDDB8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_2527213D8(a3, &qword_27F4FCDA0, &unk_2528C6AC0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2527213D8(a3, &qword_27F4FCDA0, &unk_2528C6AC0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE838, &qword_2528CDDB8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2527D449C()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F4FE748);
  __swift_project_value_buffer(v0, qword_27F4FE748);
  return sub_2528BEC20();
}

uint64_t sub_2527D4570(char *a1, uint64_t *a2)
{
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

void (*ShowErrorIntent.destination.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_2528BE780();
  return sub_25272EE48;
}

uint64_t sub_2527D46BC(uint64_t a1, void *a2)
{
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

void (*ShowErrorIntent.errorDisplayType.modify(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_2528BE780();
  return sub_2527D72A4;
}

uint64_t ShowErrorIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v30 = sub_2528BE950();
  v1 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v21[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21[-v10];
  v12 = sub_2528BEC40();
  v27 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE780, &qword_2528CD970);
  sub_2528BEC20();
  v26 = *(v13 + 56);
  v26(v11, 1, 1, v12);
  v32 = 4;
  v14 = sub_2528BE630();
  v15 = *(*(v14 - 8) + 56);
  v16 = v8;
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  v22 = *MEMORY[0x277CBA308];
  v17 = *(v1 + 104);
  v23 = v1 + 104;
  v24 = v17;
  v17(v29);
  sub_2527233F0();
  v18 = sub_2528BE7D0();
  v19 = v28;
  *v28 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE788, &qword_2528CD978);
  sub_2528BEC20();
  v26(v11, 1, 1, v27);
  v31 = 1;
  v15(v16, 1, 1, v14);
  v15(v6, 1, 1, v14);
  v24(v29, v22, v30);
  sub_2527D601C();
  result = sub_2528BE7D0();
  v19[1] = result;
  return result;
}

uint64_t ShowErrorIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  *(v2 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0);
  *(v2 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  *(v2 + 56) = swift_task_alloc();
  v3 = sub_2528BF400();
  *(v2 + 64) = v3;
  v4 = *(v3 - 8);
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 + 64);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  *(v2 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v2 + 112) = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  *(v2 + 120) = v5;
  *(v2 + 128) = *(v5 + 64);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  v6 = sub_2528BE8B0();
  *(v2 + 152) = v6;
  *(v2 + 160) = *(v6 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = *v1;

  return MEMORY[0x2822009F8](sub_2527D4EA4, 0, 0);
}

uint64_t sub_2527D4EA4()
{
  v22 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  *(v0 + 192) = __swift_project_value_buffer(v1, qword_27F5025C8);
  sub_2528BEA50();
  sub_2528BEA50();
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315394;
    sub_2528BE790();
    *(v0 + 218) = *(v0 + 217);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE7A8, &unk_2528CD998);
    v6 = sub_2528C0DB0();
    v8 = sub_2527389AC(v6, v7, &v21);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    sub_2528BE790();
    *(v4 + 14) = sub_2527389AC(0x636972656E6567, 0xE700000000000000, &v21);
    _os_log_impl(&dword_252711000, v2, v3, "Show Error Intent perform() called - destination: %s errorDisplayType: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 152);
  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  v20 = *(v0 + 176);
  sub_2528BE790();
  *(v0 + 219) = *(v0 + 216);
  *(v0 + 16) = v20;
  sub_2527D6070();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v10 + 8))(v9, v11);
  v14 = type metadata accessor for HomeEntity(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = sub_2528C05D0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_task_alloc();
  *(v0 + 200) = v16;
  *v16 = v0;
  v16[1] = sub_2527D51F8;
  v17 = *(v0 + 104);
  v18 = *(v0 + 112);

  return sub_25277ECE4(v18, 0, 0, v17);
}

uint64_t sub_2527D51F8(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  *(*v1 + 208) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527D5354, 0, 0);
}

uint64_t sub_2527D5354()
{
  v1 = *(v0 + 48);
  sub_2527D38F8(*(v0 + 208), v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  if (v3 == 1)
  {
    sub_2527213D8(v6, &qword_27F4FCDA8, &unk_2528C5CB0);
    (*(v5 + 56))(v7, 1, 1, v4);
  }

  else
  {
    v8 = *(v2 + 48);
    v9 = *(v5 + 16);
    v10 = *(v0 + 48);
    v9(*(v0 + 56), v6 + v8, *(v0 + 64));
    sub_2527D6704(v10 + v8);
    (*(v5 + 56))(v7, 0, 1, v4);
    v11 = sub_2528BECF0();
    (*(*(v11 - 8) + 8))(v10, v11);
    if ((*(v5 + 48))(v7, 1, v4) != 1)
    {
      v37 = *(v0 + 219);
      v17 = *(v0 + 144);
      v33 = *(v0 + 136);
      v18 = *(v0 + 120);
      v32 = v9;
      v20 = *(v0 + 88);
      v19 = *(v0 + 96);
      v21 = *(v0 + 72);
      v34 = *(v0 + 80);
      v22 = *(v0 + 64);
      v23 = *(v0 + 40);
      v35 = *(v21 + 32);
      v36 = v19;
      v35(v19);
      v24 = sub_2528C0C40();
      (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
      v25 = v19;
      v26 = v22;
      v32(v20, v25, v22);
      sub_25272006C(v17, v33, &qword_27F4FCE00, &qword_2528C5D20);
      v27 = (*(v21 + 80) + 65) & ~*(v21 + 80);
      v28 = (v34 + *(v18 + 80) + v27) & ~*(v18 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      v30 = MEMORY[0x277D84F90];
      *(v29 + 32) = MEMORY[0x277D84F90];
      *(v29 + 40) = 3;
      *(v29 + 48) = v30;
      *(v29 + 56) = v30;
      *(v29 + 64) = v37;
      (v35)(v29 + v27, v20, v26);
      sub_2527D6760(v33, v29 + v28);
      sub_2527D3E74(0, 0, v23, &unk_2528CD990, v29);

      (*(v21 + 8))(v36, v26);
      sub_2527213D8(v17, &qword_27F4FCE00, &qword_2528C5D20);
      sub_2528BE670();

      v16 = *(v0 + 8);
      goto LABEL_8;
    }
  }

  sub_2527213D8(*(v0 + 56), &qword_27F4FCD98, &qword_2528C6200);
  v12 = sub_2528C0890();
  v13 = sub_2528C0CF0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_252711000, v12, v13, "No snapshot found for current home", v14, 2u);
    MEMORY[0x2530A8D80](v14, -1, -1);
  }

  v15 = *(v0 + 144);

  sub_2527D66B0();
  swift_allocError();
  swift_willThrow();
  sub_2527213D8(v15, &qword_27F4FCE00, &qword_2528C5D20);

  v16 = *(v0 + 8);
LABEL_8:

  return v16();
}

uint64_t sub_2527D5910(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25271F3AC;

  return ShowErrorIntent.perform()(a1);
}

uint64_t sub_2527D59AC(uint64_t a1)
{
  v2 = sub_2527D6070();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_2527D59E8()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FE760);
  __swift_project_value_buffer(v0, qword_27F4FE760);
  return sub_2528BE9D0();
}

uint64_t sub_2527D5A84@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_2527D5B28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE840, &qword_2528CDDC8);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2F8, &qword_2528CDDD0) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2528C3910;
  sub_2528BE8C0();
  v3 = sub_252790904(v2);
  swift_setDeallocating();
  sub_2527213D8(v2 + v1, &qword_27F4FD2F8, &qword_2528CDDD0);
  result = swift_deallocClassInstance();
  qword_27F4FE778 = v3;
  return result;
}

double static ErrorDisplayType.caseDisplayRepresentations.getter(uint64_t a1, uint64_t a2)
{
  if (qword_27F4FB820 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t ErrorDisplayType.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2528C0F30();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2527D5D0C()
{
  sub_2528C1130();
  sub_2528C0A40();
  return sub_2528C1180();
}

uint64_t sub_2527D5D78(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();
  return sub_2528C1180();
}

uint64_t sub_2527D5DC8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2528C0F30();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2527D5E70@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_2527D5F18(uint64_t a1)
{
  v2 = sub_2527D601C();

  return MEMORY[0x28210B458](a1, v2);
}

double sub_2527D5F64(uint64_t a1, uint64_t a2)
{
  if (qword_27F4FB820 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_2527D5FC0(uint64_t a1)
{
  v2 = sub_2527D6CC4();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_2527D601C()
{
  result = qword_27F4FE790;
  if (!qword_27F4FE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE790);
  }

  return result;
}

unint64_t sub_2527D6070()
{
  result = qword_27F4FE798;
  if (!qword_27F4FE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE798);
  }

  return result;
}

uint64_t sub_2527D60C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2527D72A0;

  return v6(a1);
}

uint64_t sub_2527D61BC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2527D62B4;

  return v6(a1);
}

uint64_t sub_2527D62B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2527D63AC(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = sub_2528BECF0();
  (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
  v12 = *(a6 + 56);
  v13 = v12 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * a3;

  return sub_2527D723C(v13, a2);
}

uint64_t sub_2527D64A8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2527D659C;

  return v5(v2 + 32);
}

uint64_t sub_2527D659C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_2527D66B0()
{
  result = qword_27F4FE7A0;
  if (!qword_27F4FE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7A0);
  }

  return result;
}

uint64_t sub_2527D6704(uint64_t a1)
{
  v2 = type metadata accessor for HomeEntity.SnapshotPair(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2527D6760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527D67D0(uint64_t a1)
{
  sub_2528BF400();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25271F3AC;

  return sub_2528AC090(a1, v3, v4, v5, v9, v6, v7, v8);
}

unint64_t sub_2527D696C()
{
  result = qword_27F4FE7B0;
  if (!qword_27F4FE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7B0);
  }

  return result;
}

unint64_t sub_2527D69C4()
{
  result = qword_27F4FE7B8;
  if (!qword_27F4FE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7B8);
  }

  return result;
}

unint64_t sub_2527D6A64()
{
  result = qword_27F4FE7C0;
  if (!qword_27F4FE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7C0);
  }

  return result;
}

unint64_t sub_2527D6ABC()
{
  result = qword_27F4FE7C8;
  if (!qword_27F4FE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7C8);
  }

  return result;
}

unint64_t sub_2527D6B14()
{
  result = qword_27F4FE7D0;
  if (!qword_27F4FE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7D0);
  }

  return result;
}

unint64_t sub_2527D6B6C()
{
  result = qword_27F4FE7D8;
  if (!qword_27F4FE7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7D8);
  }

  return result;
}

unint64_t sub_2527D6BC4()
{
  result = qword_27F4FE7E0;
  if (!qword_27F4FE7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7E0);
  }

  return result;
}

unint64_t sub_2527D6C18()
{
  result = qword_27F4FE7E8;
  if (!qword_27F4FE7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7E8);
  }

  return result;
}

unint64_t sub_2527D6C6C()
{
  result = qword_27F4FE7F0;
  if (!qword_27F4FE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7F0);
  }

  return result;
}

unint64_t sub_2527D6CC4()
{
  result = qword_27F4FE7F8;
  if (!qword_27F4FE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7F8);
  }

  return result;
}

unint64_t sub_2527D6D90()
{
  result = qword_27F4FE800;
  if (!qword_27F4FE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE800);
  }

  return result;
}

unint64_t sub_2527D6DE8()
{
  result = qword_27F4FE808;
  if (!qword_27F4FE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE808);
  }

  return result;
}

unint64_t sub_2527D6E40()
{
  result = qword_27F4FE810;
  if (!qword_27F4FE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE810);
  }

  return result;
}

uint64_t sub_2527D6EF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2527228B0;

  return sub_2527D60C4(a1, v4);
}

uint64_t sub_2527D6FB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2527228B0;

  return sub_2527D61BC(a1, v4);
}

uint64_t sub_2527D7068(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25271F3AC;

  return sub_2527D61BC(a1, v4);
}

uint64_t sub_2527D7120(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2527228B0;

  return sub_2527D64A8(a1, v4);
}

uint64_t sub_2527D71D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity.SnapshotPair(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527D723C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity.SnapshotPair(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527D72B0()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F4FE850);
  __swift_project_value_buffer(v0, qword_27F4FE850);
  return sub_2528BEC20();
}

uint64_t static AutomateSceneIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB828 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FE850);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static AutomateSceneIntent.title.setter(uint64_t a1)
{
  if (qword_27F4FB828 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FE850);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static AutomateSceneIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F4FB828 != -1)
  {
    swift_once();
  }

  v1 = sub_2528BEC40();
  __swift_project_value_buffer(v1, qword_27F4FE850);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2527D7568@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB828 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FE850);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2527D7628(uint64_t a1)
{
  if (qword_27F4FB828 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FE850);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static AutomateSceneIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F4FE868 = a1;
  return result;
}

uint64_t AutomateSceneIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9C0, &qword_2528C9570);
  MEMORY[0x28223BE20](v1 - 8);
  v43 = &v36 - v2;
  v45 = sub_2528BE950();
  v51 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC470, &unk_2528CDE00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v36 - v15;
  v17 = sub_2528BEC40();
  v38 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD870, &unk_2528CDE10);
  sub_2528BEC20();
  v21 = *(v18 + 56);
  v39 = v18 + 56;
  v40 = v21;
  v21(v16, 1, 1, v17);
  v22 = type metadata accessor for SceneEntity(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = sub_2528BE630();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v46 = v25;
  v47 = v24 + 56;
  v25(v10, 1, 1, v23);
  v42 = v8;
  v25(v8, 1, 1, v23);
  v49 = *MEMORY[0x277CBA308];
  v48 = *(v51 + 104);
  v51 += 104;
  v37 = v4;
  v26 = v45;
  v48(v4);
  sub_2527D8374(&qword_27F4FC518, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);
  v44 = v20;
  v27 = v10;
  v28 = sub_2528BE7F0();
  v29 = v50;
  *v50 = v28;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9C8, &qword_2528C9578);
  sub_2528BEC20();
  v30 = v38;
  v31 = v40;
  v40(v16, 1, 1, v38);
  v46(v27, 1, 1, v23);
  v32 = v37;
  (v48)(v37, v49, v26);
  sub_2527D8374(&qword_27F4FD9A0, type metadata accessor for TriggerEventType, &unk_2528C24F8);
  v29[1] = sub_2528BE7C0();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9D0, &qword_2528C9580);
  sub_2528BEC20();
  v31(v16, 1, 1, v30);
  v33 = type metadata accessor for TriggerRecurrenceWeekdaysEntity(0);
  (*(*(v33 - 8) + 56))(v43, 1, 1, v33);
  v34 = v46;
  v46(v27, 1, 1, v23);
  v34(v42, 1, 1, v23);
  (v48)(v32, v49, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9D8, &qword_2528C9588);
  sub_25272275C(&qword_27F4FD9E0, &qword_27F4FD9D8, &qword_2528C9588, MEMORY[0x277CBA480]);
  sub_2527D8374(&qword_27F4FBD40, type metadata accessor for TriggerRecurrenceWeekdaysEntity, &unk_2528C2158);
  result = sub_2528BE7E0();
  v50[2] = result;
  return result;
}

uint64_t sub_2527D7F08()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_252711000, v2, v3, "Running AutomateSceneIntent", v4, 2u);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  sub_2528BE670();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2527D8070(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25271F3AC;

  return AutomateSceneIntent.perform()(a1);
}

uint64_t sub_2527D810C(uint64_t a1)
{
  v2 = sub_2527D8310();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_2527D8148()
{
  v0 = type metadata accessor for TriggerRecurrenceWeekdaysEntity(0);
  v1 = sub_2527C3D38();
  MEMORY[0x2530A60E0](v1, v0, &type metadata for TriggerRecurrenceWeekdaysEntity.Resolver, v1);
  sub_2527D8374(&qword_27F4FBD28, type metadata accessor for TriggerRecurrenceWeekdaysEntity, &unk_2528C22A8);

  return sub_2528BEAA0();
}

unint64_t sub_2527D81F8()
{
  result = qword_27F4FE870;
  if (!qword_27F4FE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE870);
  }

  return result;
}

unint64_t sub_2527D8250()
{
  result = qword_27F4FE878;
  if (!qword_27F4FE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE878);
  }

  return result;
}

unint64_t sub_2527D8310()
{
  result = qword_27F4FE880;
  if (!qword_27F4FE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE880);
  }

  return result;
}

uint64_t sub_2527D8374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_2527D83BC(uint64_t a1)
{
  v112 = a1;
  v118 = sub_2528BF240();
  v127 = *(v118 - 8);
  v2 = MEMORY[0x28223BE20](v118);
  v114 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v115 = &v92 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v117 = &v92 - v7;
  MEMORY[0x28223BE20](v6);
  v116 = &v92 - v8;
  v9 = sub_2528BECF0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v109 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v92 - v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE888, &unk_2528CDF60);
  v14 = MEMORY[0x28223BE20](v110);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v92 - v17);
  v19 = sub_2528C07B0();
  v111 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2528BFD50();
  MEMORY[0x28223BE20](v22);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = *(v1 + 8);
  v29 = *(v1 + 16);
  v28 = *(v1 + 24);
  v30 = *(v1 + 32);
  if ((v30 >> 1) - 62 < 3)
  {
    v109 = *(v1 + 8);
    v110 = v29;
    v111 = v28;
    LODWORD(v113) = v30;
    v119 = v26;
    v31 = v116;
    sub_2528BF460();
    v32 = *MEMORY[0x277D15640];
    v33 = v127;
    v35 = v117;
    v34 = v118;
    v108 = *(v127 + 13);
    v108(v117, v32, v118);
    v36 = sub_2527E412C(&qword_27F4FE890, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
    sub_2528C0AD0();
    v107 = v36;
    sub_2528C0AD0();
    if (v122 == v120 && v123 == v121)
    {
      v37 = 1;
    }

    else
    {
      v37 = sub_2528C1060();
    }

    v75 = *(v33 + 8);
    v75(v35, v34);
    v127 = (v33 + 8);
    v75(v31, v34);

    if (v37)
    {
      v122 = v119;
      v123 = v109;
      v44 = v112;
      v124 = v110;
      v125 = v111;
      v126 = v113;
      v76 = v94;
      v77 = sub_25283C73C(&v122);
      if (!v76)
      {
        return v77;
      }
    }

    else
    {
      v78 = v115;
      sub_2528BF460();
      v79 = v114;
      v108(v114, *MEMORY[0x277D15698], v34);
      sub_2528C0AD0();
      sub_2528C0AD0();
      if (v122 == v120 && v123 == v121)
      {
        v75(v79, v34);
        v75(v78, v34);
      }

      else
      {
        v89 = sub_2528C1060();
        v75(v79, v34);
        v75(v78, v34);

        if ((v89 & 1) == 0)
        {
          type metadata accessor for HomeAppIntentError(0);
          sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
          v44 = swift_allocError();
          *v91 = 58;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          return v44;
        }
      }

      v122 = v119;
      v123 = v109;
      v44 = v112;
      v124 = v110;
      v125 = v111;
      v126 = v113;
      v90 = v94;
      v77 = sub_25283D37C(&v122);
      if (!v90)
      {
        return v77;
      }
    }

    return v44;
  }

  v118 = v21;
  v107 = v19;
  v108 = v18;
  v127 = v16;
  if (v30 >> 1 != 36)
  {
    v122 = v26;
    v123 = v27;
    v124 = v29;
    v125 = v28;
    v126 = v30;
    v80 = v94;
    v81 = v26;
    v82 = v30;
    v83 = v28;
    v84 = v29;
    v85 = v27;
    v86 = sub_2527D8FD8();
    v44 = v112;
    if (!v80)
    {
      v122 = v81;
      v123 = v85;
      v124 = v84;
      v125 = v83;
      v126 = v82;
      sub_2527DB2A4(v86, &v122);
      v88 = v87;

      return v88;
    }

    return v44;
  }

  v38 = v26;
  v39 = v23;
  sub_2528BF640();
  v40 = sub_2528BFD20();
  v41 = v25;
  v42 = v40;
  (*(v39 + 8))(v41, v22);
  v43 = *(v42 + 16);
  if (!v43)
  {

    return MEMORY[0x277D84F90];
  }

  v122 = MEMORY[0x277D84F90];
  sub_25282F1D8(0, v43, 0);
  v44 = v122;
  v45 = v42 + 64;
  result = sub_2528C0E00();
  v47 = result;
  v48 = 0;
  v96 = *(v42 + 36);
  v106 = v10 + 16;
  v105 = v10 + 32;
  v104 = v10 + 8;
  v103 = *MEMORY[0x277D16EB0];
  v102 = (v111 + 104);
  v101 = v111 + 32;
  v49 = *(v42 + 32);
  v93 = v42 + 72;
  v100 = xmmword_2528C3910;
  v99 = v38 & 1;
  v50 = v110;
  v51 = v108;
  v95 = v43;
  v97 = v42 + 64;
  v98 = v42;
  while ((v47 & 0x8000000000000000) == 0 && v47 < 1 << v49)
  {
    if ((*(v45 + 8 * (v47 >> 6)) & (1 << v47)) == 0)
    {
      goto LABEL_40;
    }

    v114 = 1 << v47;
    v115 = v47 >> 6;
    v113 = v48;
    v54 = *(v50 + 48);
    v55 = *(v42 + 48);
    v116 = *(v10 + 72);
    v56 = v50;
    (*(v10 + 16))(v51, v55 + v116 * v47, v9);
    v57 = *(v42 + 56);
    v58 = sub_2528BFE80();
    v117 = v44;
    v59 = v58;
    v60 = *(v58 - 8);
    (*(v60 + 16))(&v51[v54], v57 + *(v60 + 72) * v47, v58);
    (*(v10 + 32))(v127, v51, v9);
    (*(v60 + 32))(&v127[*(v56 + 48)], &v51[v54], v59);
    sub_2528BFE70();
    sub_2528BFE60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC828, &qword_2528C48D8);
    v61 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v100;
    sub_2528BF900();
    sub_252744890(v62);
    swift_setDeallocating();
    v63 = v62 + v61;
    v64 = v107;
    (*(v10 + 8))(v63, v9);
    swift_deallocClassInstance();
    v44 = v117;
    v65 = v118;
    sub_2528C0780();
    (*v102)(v65, v103, v64);
    sub_2527213D8(v127, &qword_27F4FE888, &unk_2528CDF60);
    v122 = v44;
    v67 = *(v44 + 16);
    v66 = *(v44 + 24);
    if (v67 >= v66 >> 1)
    {
      sub_25282F1D8((v66 > 1), v67 + 1, 1);
      v44 = v122;
    }

    *(v44 + 16) = v67 + 1;
    result = (*(v111 + 32))(v44 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v67, v65, v64);
    v42 = v98;
    v49 = *(v98 + 32);
    v52 = 1 << v49;
    if (v47 >= 1 << v49)
    {
      goto LABEL_41;
    }

    v45 = v97;
    v68 = *(v97 + 8 * v115);
    if ((v68 & v114) == 0)
    {
      goto LABEL_42;
    }

    if (v96 != *(v98 + 36))
    {
      goto LABEL_43;
    }

    v69 = v68 & (-2 << (v47 & 0x3F));
    if (v69)
    {
      v52 = __clz(__rbit64(v69)) | v47 & 0x7FFFFFFFFFFFFFC0;
      v50 = v110;
      v51 = v108;
      v53 = v95;
    }

    else
    {
      v70 = v115 << 6;
      v71 = v115 + 1;
      v72 = (v93 + 8 * v115);
      v50 = v110;
      v51 = v108;
      v53 = v95;
      while (v71 < (v52 + 63) >> 6)
      {
        v74 = *v72++;
        v73 = v74;
        v70 += 64;
        ++v71;
        if (v74)
        {
          v52 = __clz(__rbit64(v73)) + v70;
          break;
        }
      }
    }

    v48 = v113 + 1;
    v47 = v52;
    if (v113 + 1 == v53)
    {

      return v44;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}
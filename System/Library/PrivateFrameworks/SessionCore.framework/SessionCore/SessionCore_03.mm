uint64_t sub_22CF315DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a2;
  v27 = a1;
  v7 = sub_22D01486C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v26 - v18;
  if (a4 >> 60 == 15 || (v20 = sub_22D0141DC()) == 0)
  {
    v23 = sub_22D0146BC();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  }

  else
  {
    v21 = v20;
    v22 = sub_22D0146BC();
    sub_22CEE83DC(&qword_28143F6E8, MEMORY[0x277CB9250], MEMORY[0x277CB9248]);
    sub_22D01516C();

    (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  }

  sub_22CEF0368(v16, v19, &qword_27D9F22F8, &unk_22D018940);
  v24 = sub_22D0141DC();
  sub_22CEE83DC(&qword_2814439E0, MEMORY[0x277CB9378], MEMORY[0x277CB9370]);
  sub_22D01516C();

  sub_22CF318C8(v27, v28, v19, v11);
  (*(v8 + 8))(v11, v7);
  return sub_22CEEC3D8(v19, &qword_27D9F22F8, &unk_22D018940);
}

uint64_t sub_22CF318C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2300, &qword_22D01A830);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = sub_22D01483C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = a3;
    sub_22CEE84BC([*(v4 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection) remoteProcess]);
    (*(v14 + 104))(v12, *MEMORY[0x277CB9348], v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    (*(v14 + 32))(v17, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22D0187A0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    sub_22CF31C20(inited, v17, a4, v20);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_22CEE5804(inited + 32);
    return (*(v14 + 8))(v17, v13);
  }

  return result;
}

void sub_22CF31C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v132 = a3;
  v133 = a4;
  v117 = a2;
  v131 = type metadata accessor for ActivityParticipantEvent(0);
  MEMORY[0x28223BE20](v131, v7);
  v9 = (&v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = sub_22D01436C();
  v10 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v11);
  v105 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_22D01483C();
  v13 = *(v143 - 8);
  v15 = MEMORY[0x28223BE20](v143, v14);
  v116 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v115 = &v102 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v130 = &v102 - v21;
  v134 = sub_22D0146BC();
  v22 = *(v134 - 8);
  v24 = MEMORY[0x28223BE20](v134, v23);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v129 = &v102 - v28;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v30 = MEMORY[0x28223BE20](v128, v29);
  v127 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v136 = &v102 - v33;
  v34 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2328, &qword_22D019B80);
  v141 = v5;
  v126 = v34;
  sub_22D01699C();
  v135 = v144[0];
  if (v144[0])
  {
    v35 = *(a1 + 16);
    if (v35)
    {
      v140 = 0;
      v114 = v26;
      v36 = v144[1];
      ObjectType = swift_getObjectType();
      v124 = ObjectType;
      v125 = v36;
      v122 = *(v36 + 24);
      v123 = v36 + 24;
      v121 = (v22 + 48);
      v113 = (v22 + 32);
      v112 = (v22 + 16);
      v139 = (v13 + 16);
      v120 = (v13 + 8);
      v111 = (v22 + 8);
      v104 = (v10 + 8);
      v39 = (a1 + 40);
      *&v40 = 136446467;
      v103 = v40;
      *&v40 = 136446723;
      v102 = v40;
      v41 = v117;
      v42 = v134;
      do
      {
        v138 = v35;
        v45 = *(v39 - 1);
        v44 = *v39;
        MEMORY[0x28223BE20](ObjectType, v38);
        v51 = v141;
        *(&v102 - 4) = v133;
        *(&v102 - 3) = v51;
        *(&v102 - 2) = v45;
        *(&v102 - 1) = v44;

        v52 = v140;
        sub_22D01699C();
        v140 = v52;
        v53 = v136;
        v54 = v127;
        sub_22CF32F64(v136, v127);
        v55 = (*v121)(v54, 1, v42);
        v137 = v139 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        if (v55 == 1)
        {
          v56 = v44;
          v57 = v45;
          sub_22CEEC3D8(v54, &qword_27D9F22F8, &unk_22D018940);
          v58 = v116;
          if (qword_28143FB58 != -1)
          {
            swift_once();
          }

          v59 = sub_22D01637C();
          __swift_project_value_buffer(v59, qword_281444498);
          v142 = *v139;
          v142(v58, v41, v143);
          v60 = v56;

          v61 = sub_22D01636C();
          v62 = sub_22D01690C();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = v58;
            v64 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            v144[0] = v118;
            *v64 = v103;
            v119 = v57;
            *(v64 + 4) = sub_22CEEE31C(v57, v60, v144);
            *(v64 + 12) = 2081;
            v142(v115, v63, v143);
            v65 = sub_22D01669C();
            v67 = v66;
            v68 = v63;
            v53 = v136;
            (*v120)(v68, v143);
            v69 = sub_22CEEE31C(v65, v67, v144);

            *(v64 + 14) = v69;
            v41 = v117;
            _os_log_impl(&dword_22CEE1000, v61, v62, "Ending activity %{public}s for XPC participant content source %{private}s", v64, 0x16u);
            v70 = v118;
            swift_arrayDestroy();
            MEMORY[0x2318C6860](v70, -1, -1);
            MEMORY[0x2318C6860](v64, -1, -1);

            v42 = v134;
            v44 = v60;
            v45 = v119;
          }

          else
          {

            (*v120)(v58, v143);
            v42 = v134;
            v43 = v57;
            v44 = v60;
            v45 = v43;
          }
        }

        else
        {
          v71 = v129;
          (*v113)(v129, v54, v42);
          if (qword_28143FB58 != -1)
          {
            swift_once();
          }

          v72 = sub_22D01637C();
          __swift_project_value_buffer(v72, qword_281444498);
          v73 = v114;
          (*v112)(v114, v71, v42);
          v142 = *v139;
          v142(v130, v41, v143);

          v74 = sub_22D01636C();
          v75 = sub_22D01690C();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v118 = v44;
            v77 = v76;
            v110 = swift_slowAlloc();
            v144[0] = v110;
            *v77 = v102;
            v119 = v45;
            *(v77 + 4) = sub_22CEEE31C(v45, v118, v144);
            *(v77 + 12) = 2082;
            v78 = v105;
            v109 = v75;
            sub_22D01466C();
            sub_22CEF87FC(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v79 = v106;
            v80 = sub_22D016DEC();
            v82 = v81;
            v83 = v78;
            v84 = v143;
            (*v104)(v83, v79);
            v107 = v74;
            v108 = *v111;
            v108(v73, v134);
            v85 = sub_22CEEE31C(v80, v82, v144);

            *(v77 + 14) = v85;
            *(v77 + 22) = 2081;
            v86 = v130;
            v87 = v142;
            v142(v115, v130, v84);
            v88 = sub_22D01669C();
            v90 = v89;
            v91 = v84;
            v45 = v119;
            (*v120)(v86, v91);
            v92 = sub_22CEEE31C(v88, v90, v144);
            v41 = v117;

            *(v77 + 24) = v92;
            v93 = v107;
            _os_log_impl(&dword_22CEE1000, v107, v109, "Ending activity %{public}s with payload %{public}s for XPC participant content source %{private}s", v77, 0x20u);
            v94 = v110;
            swift_arrayDestroy();
            MEMORY[0x2318C6860](v94, -1, -1);
            v95 = v77;
            v44 = v118;
            MEMORY[0x2318C6860](v95, -1, -1);

            v96 = v134;
            v108(v129, v134);
            v42 = v96;
            v53 = v136;
            v46 = v87;
            goto LABEL_6;
          }

          (*v120)(v130, v143);
          v97 = *v111;
          (*v111)(v73, v42);
          v97(v129, v42);
          v53 = v136;
        }

        v46 = v142;
LABEL_6:
        v47 = v131;
        v48 = *(v131 + 24);
        v49 = sub_22D01486C();
        (*(*(v49 - 8) + 16))(v9 + v48, v132, v49);
        type metadata accessor for ActivityParticipantEvent.EventType(0);
        swift_storeEnumTagMultiPayload();
        v46(v9 + v47[7], v41, v143);
        sub_22CF32F64(v53, v9 + v47[9]);
        *v9 = v45;
        v9[1] = v44;
        v9[2] = 0;
        v9[3] = 0;
        v50 = (v9 + v47[8]);
        *v50 = v141;
        v50[1] = &off_28402A298;
        *(v9 + v47[10]) = 0;

        v122(v9, v124, v125);
        sub_22CF289A8(v9, type metadata accessor for ActivityParticipantEvent);
        ObjectType = sub_22CEEC3D8(v53, &qword_27D9F22F8, &unk_22D018940);
        v39 += 2;
        v35 = v138 - 1;
      }

      while (v138 != 1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v98 = sub_22D01637C();
    __swift_project_value_buffer(v98, qword_281444498);
    v99 = sub_22D01636C();
    v100 = sub_22D0168EC();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_22CEE1000, v99, v100, "XPCInputParticipant has no ActivityManager", v101, 2u);
      MEMORY[0x2318C6860](v101, -1, -1);
    }
  }
}

void sub_22CF32948(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v55 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v53 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A78, &unk_22D01B130);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v54 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v47 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v47 - v24;
  sub_22CF32F64(a1, &v47 - v24);
  v26 = sub_22D0146BC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(v25, 1, v26) != 1)
  {
    (*(v27 + 32))(a5, v25, v26);
    (*(v27 + 56))(a5, 0, 1, v26);
    goto LABEL_12;
  }

  v50 = v28;
  v51 = a5;
  swift_beginAccess();
  v29 = *(a2 + 128);
  v30 = *(v29 + 16);
  v52 = a4;
  if (!v30)
  {
    goto LABEL_7;
  }

  v31 = sub_22CEEC698(v56, a4);
  if ((v32 & 1) == 0)
  {

LABEL_7:
    v34 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
    (*(*(v34 - 8) + 56))(v21, 1, 1, v34);
    goto LABEL_8;
  }

  v33 = *(v29 + 56);
  v48 = v31;
  v49 = v33;
  v34 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
  v47 = *(v34 - 8);
  sub_22CF0CB84(v49 + *(v47 + 72) * v48, v21, type metadata accessor for XPCInputParticipant.ActivityUpdate);

  (*(v47 + 56))(v21, 0, 1, v34);
LABEL_8:
  type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
  v35 = 1;
  v36 = (*(*(v34 - 8) + 48))(v21, 1, v34);
  v37 = v51;
  if (!v36)
  {
    (*(v27 + 16))(v51, &v21[*(v34 + 24)], v26);
    v35 = 0;
  }

  sub_22CEEC3D8(v21, &qword_27D9F2A78, &unk_22D01B130);
  (*(v27 + 56))(v37, v35, 1, v26);
  v38 = v50(v25, 1, v26);
  a4 = v52;
  if (v38 != 1)
  {
    sub_22CEEC3D8(v25, &qword_27D9F22F8, &unk_22D018940);
  }

LABEL_12:
  v39 = type metadata accessor for Activity(0);
  v40 = v53;
  (*(*(v39 - 8) + 56))(v53, 1, 1, v39);
  swift_beginAccess();

  v41 = v40;
  v42 = v56;
  sub_22CF0BC5C(v41, v56, a4);
  swift_endAccess();
  v43 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
  v44 = v54;
  (*(*(v43 - 8) + 56))(v54, 1, 1, v43);
  swift_beginAccess();

  sub_22CF26EA8(v44, v42, a4);
  swift_endAccess();
  v45 = sub_22D01430C();
  v46 = v55;
  (*(*(v45 - 8) + 56))(v55, 1, 1, v45);
  swift_beginAccess();

  sub_22CF3318C(v46, v42, a4);
  swift_endAccess();
  sub_22CF28F14();
}

uint64_t sub_22CF32F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF32FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22CEEC698(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CF28A08(type metadata accessor for XPCInputParticipant.ActivityUpdate, &qword_27D9F2A10, &qword_22D0196B0, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
    v19 = *(v12 - 8);
    sub_22CEF0B08(v11 + *(v19 + 72) * v8, a3, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    sub_22CF28D18(v8, v10, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_22CF3318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = sub_22D01430C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F2648, &unk_22D018BC0);
    sub_22CF33364(a2, a3, v10);

    return sub_22CEEC3D8(v10, &qword_27D9F2648, &unk_22D018BC0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22CFBF420(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_22CF33364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22CEEC698(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CFB8840(MEMORY[0x277CC9578], &qword_27D9F31B0, &qword_22D01B128);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_22D01430C();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_22CF28D18(v8, v10, MEMORY[0x277CC9578]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_22D01430C();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_22CF3350C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v107 = a3;
  v108 = a4;
  v84 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3A28, &qword_22D01C3C8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v102 = &v82 - v7;
  v94 = sub_22D01515C();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v8);
  v92 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22D01524C();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v10);
  v88 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_22D0151EC();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v12);
  v85 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3A30, qword_22D01C3D0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v104 = &v82 - v16;
  v17 = sub_22D014F2C();
  v111 = *(v17 - 8);
  v112 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v103 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D01525C();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v98 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v82 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v82 - v30;
  v32 = sub_22D01637C();
  v33 = *(v32 - 8);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v100 = &v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v82 - v38;
  sub_22D01635C();
  v40 = *(v21 + 16);
  v40(v31, a1, v20);
  v106 = a1;
  v97 = v21 + 16;
  v96 = v40;
  v40(v28, a1, v20);
  v41 = sub_22D01636C();
  v42 = sub_22D01690C();
  v43 = os_log_type_enabled(v41, v42);
  v110 = v33;
  v101 = v20;
  v99 = v21;
  v109 = v32;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v83 = v42;
    v45 = v44;
    v105 = swift_slowAlloc();
    v113[0] = v105;
    *v45 = 136446467;
    v46 = sub_22D0151CC();
    v47 = v21;
    v49 = v48;
    v50 = *(v47 + 8);
    v50(v31, v20);
    v51 = sub_22CEEE31C(v46, v49, v113);

    *(v45 + 4) = v51;
    *(v45 + 12) = 2081;
    sub_22CF34230(qword_28143DB00, MEMORY[0x277D4D418], MEMORY[0x277D4D420]);
    v52 = sub_22D016DEC();
    v54 = v53;
    v95 = v50;
    v50(v28, v20);
    v55 = sub_22CEEE31C(v52, v54, v113);

    *(v45 + 14) = v55;
    _os_log_impl(&dword_22CEE1000, v41, v83, "Requesting alert with identifier: %{public}s; %{private}s", v45, 0x16u);
    v56 = v105;
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v56, -1, -1);
    MEMORY[0x2318C6860](v45, -1, -1);

    (*(v110 + 8))(v39, v109);
  }

  else
  {

    v57 = *(v21 + 8);
    v57(v28, v20);
    v95 = v57;
    v57(v31, v20);
    (*(v33 + 8))(v39, v32);
  }

  v58 = sub_22D0151CC();
  v60 = v59;
  sub_22D01408C();
  swift_allocObject();
  v61 = sub_22D01407C();
  v62 = sub_22D01523C();
  v64 = v63;
  sub_22CF34230(&qword_28143F640, MEMORY[0x277CB97B0], MEMORY[0x277CB97C0]);
  v65 = v104;
  v66 = v112;
  v105 = v61;
  sub_22D01406C();
  v110 = v58;
  sub_22CEE7524(v62, v64);
  v67 = v111;
  (*(v111 + 56))(v65, 0, 1, v66);
  (*(v67 + 32))(v103, v65, v66);
  v68 = v85;
  sub_22D0151FC();
  v69 = v88;
  sub_22D0151DC();
  (*(v86 + 8))(v68, v87);
  v70 = v89;
  v71 = v90;
  if ((*(v89 + 88))(v69, v90) != *MEMORY[0x277D4D410])
  {
    (*(v70 + 8))(v69, v71);
  }

  v72 = sub_22D01522C();
  v73 = v91;
  if (v72 & 1) == 0 && (v84)
  {
    v74 = sub_22D0151CC();
    sub_22CF34278(v103, v74, v75);
  }

  sub_22D01522C();
  v76 = v92;
  sub_22D01514C();
  v77 = swift_allocObject();
  v78 = v108;
  *(v77 + 16) = v107;
  *(v77 + 24) = v78;
  swift_beginAccess();
  sub_22CEE3A84(v73 + 32, v113);
  __swift_project_boxed_opaque_existential_1(v113, v113[3]);
  v79 = off_28402B600;
  type metadata accessor for AlertServiceServer();

  v80 = v103;
  v79(v110, v60, v103, v76, sub_22CF3E1DC, v77);

  (*(v93 + 8))(v76, v94);
  (*(v111 + 8))(v80, v112);
  return __swift_destroy_boxed_opaque_existential_1Tm(v113);
}

uint64_t sub_22CF341F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF34230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CF34278(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v63[1] = *MEMORY[0x277D85DE8];
  v62 = sub_22D01637C();
  v7 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62, v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v60 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v60 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v60 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v60 - v25;
  v27 = sub_22CF349E0(a1, a2, a3);
  v28 = *(v3 + 72);
  v63[0] = 0;
  v61 = v27;
  v29 = [v28 resolveBehaviorForEventDetails_error_];
  if (!v29)
  {
    v37 = v63[0];
    v38 = sub_22D01416C();

    swift_willThrow();
    sub_22D01635C();

    v39 = v38;
    v40 = sub_22D01636C();
    v41 = sub_22D0168EC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63[0] = v43;
      *v42 = 136446466;
      *(v42 + 4) = sub_22CEEE31C(a2, a3, v63);
      *(v42 + 12) = 2082;
      swift_getErrorValue();
      v44 = sub_22D016E2C();
      v46 = sub_22CEEE31C(v44, v45, v63);

      *(v42 + 14) = v46;
      _os_log_impl(&dword_22CEE1000, v40, v41, "%{public}s Could not determine interruption suppression state: %{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v43, -1, -1);
      MEMORY[0x2318C6860](v42, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v11, v62);
    return 1;
  }

  v30 = v29;
  v31 = v63[0];
  v32 = [v30 interruptionSuppression];
  if (!v32)
  {
    sub_22D01635C();

    v51 = sub_22D01636C();
    v52 = sub_22D01690C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63[0] = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_22CEEE31C(a2, a3, v63);
      _os_log_impl(&dword_22CEE1000, v51, v52, "%{public}s DND says suppression state is none", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x2318C6860](v54, -1, -1);
      MEMORY[0x2318C6860](v53, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v19, v62);
    return 1;
  }

  if (v32 == 1)
  {
    sub_22D01635C();

    v47 = sub_22D01636C();
    v48 = sub_22D01690C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v63[0] = v50;
      *v49 = 136446210;
      *(v49 + 4) = sub_22CEEE31C(a2, a3, v63);
      _os_log_impl(&dword_22CEE1000, v47, v48, "%{public}s DND says suppression state is silence", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x2318C6860](v50, -1, -1);
      MEMORY[0x2318C6860](v49, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v23, v62);
  }

  else if (v32 == 2)
  {
    sub_22D01635C();

    v33 = sub_22D01636C();
    v34 = sub_22D01690C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v63[0] = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_22CEEE31C(a2, a3, v63);
      _os_log_impl(&dword_22CEE1000, v33, v34, "%{public}s DND says suppression state is delayDelivery", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x2318C6860](v36, -1, -1);
      MEMORY[0x2318C6860](v35, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v26, v62);
  }

  else
  {
    sub_22D01635C();

    v55 = sub_22D01636C();
    v56 = sub_22D0168EC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v63[0] = v58;
      *v57 = 136446210;
      *(v57 + 4) = sub_22CEEE31C(a2, a3, v63);
      _os_log_impl(&dword_22CEE1000, v55, v56, "%{public}s DND says suppression state is an unexpected value", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x2318C6860](v58, -1, -1);
      MEMORY[0x2318C6860](v57, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v15, v62);
  }

  return 0;
}

id sub_22CF349E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D05A18]) init];
  v4 = sub_22D01666C();
  [v3 setThreadIdentifier_];

  v5 = sub_22D01666C();
  [v3 setIdentifier_];

  sub_22D014F0C();
  v6 = sub_22D01666C();

  [v3 setBundleIdentifier_];

  [v3 setUrgency_];
  return v3;
}

void sub_22CF34AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = sub_22D01666C();
  sub_22D014F2C();
  sub_22CF34C48(&qword_28143F638, MEMORY[0x277CB97B0], MEMORY[0x277CB97A8]);
  v11 = sub_22D01517C();
  v12 = sub_22D01512C();
  v14[4] = a5;
  v14[5] = a6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22CF217E0;
  v14[3] = &block_descriptor_15;
  v13 = _Block_copy(v14);

  [v9 presentAlertWithActivityIdentifier:v10 payload:v11 options:v12 completion:v13];
  _Block_release(v13);
}

uint64_t sub_22CF34C48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22CF34DA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, void (**a8)(void, void))
{
  v56 = a1;
  v57 = a2;
  v10 = sub_22D01637C();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22D01515C();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v14);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D014F2C();
  v52 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = swift_allocObject();
  *(v62 + 16) = a8;
  _Block_copy(a8);
  v21 = sub_22D0141DC();
  sub_22CF34C48(&qword_28143F638, MEMORY[0x277CB97B0], MEMORY[0x277CB97A8]);
  v63 = v20;
  v53 = v17;
  sub_22D01516C();

  v22 = sub_22D0141DC();
  v64 = v16;
  sub_22D01513C();

  v23 = *(*&a7[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_lock] + 16);
  os_unfair_lock_lock(v23);
  v24 = OBJC_IVAR____TtC11SessionCore18AlertServiceServer__lock_clients;
  swift_beginAccess();
  v58 = a7;
  v25 = *&a7[v24];

  os_unfair_lock_unlock(v23);
  if ((v25 & 0xC000000000000001) == 0)
  {
    if (*(v25 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    sub_22D01635C();
    v30 = sub_22D01636C();
    v31 = sub_22D0168EC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22CEE1000, v30, v31, "No clients registered for alert service", v32, 2u);
      MEMORY[0x2318C6860](v32, -1, -1);
    }

    (v65)[1](v13, v66);
    v33 = sub_22D014C3C();
    sub_22CF34C48(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
    v34 = swift_allocError();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277CB95D0], v33);
    v36 = sub_22D01415C();
    (a8)[2](a8, v36);

    (*(v54 + 8))(v64, v55);
    (*(v52 + 8))(v63, v53);
LABEL_25:

    return;
  }

  if (!sub_22D016B7C())
  {
    goto LABEL_6;
  }

LABEL_3:
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  v59 = swift_allocObject();
  v60 = v25;
  *(v59 + 16) = 0;
  if ((v25 & 0xC000000000000001) != 0)
  {

    sub_22D016B3C();
    _s11SessionCore6ClientCMa_0();
    sub_22CF34C48(&qword_27D9F3110, _s11SessionCore6ClientCMa_0, MEMORY[0x277D85378]);
    sub_22D01689C();
    v25 = v69;
    v26 = v70;
    v28 = v71;
    v27 = v72;
    v29 = v73;
  }

  else
  {
    v37 = -1 << *(v25 + 32);
    v26 = v25 + 56;
    v28 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v29 = v39 & *(v25 + 56);

    v27 = 0;
  }

  v51[1] = v28;
  v40 = (v28 + 64) >> 6;
  v41 = v58;
  if (v25 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v42 = v27;
    v43 = v29;
    v44 = v27;
    if (!v29)
    {
      break;
    }

LABEL_18:
    v45 = (v43 - 1) & v43;
    v46 = *(*(v25 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));
    if (!v46)
    {
LABEL_24:
      sub_22CEE57FC(v25);

      (*(v54 + 8))(v64, v55);
      (*(v52 + 8))(v63, v53);

      goto LABEL_25;
    }

    while (1)
    {
      v65 = *&v41[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_queue];
      v48 = swift_allocObject();
      v49 = v59;
      v48[2] = v41;
      v48[3] = v49;
      v66 = v45;
      v48[4] = v61;
      v48[5] = v60;
      v48[6] = sub_22CF3DFE4;
      v48[7] = v62;

      v50 = v41;

      sub_22CF355F8(v56, v57, v63, v64, v65, sub_22CF3DDA4, v48);

      v27 = v44;
      v29 = v66;
      if ((v25 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      v47 = sub_22D016BAC();
      if (v47)
      {
        v67 = v47;
        _s11SessionCore6ClientCMa_0();
        swift_dynamicCast();
        v46 = v68;
        v44 = v27;
        v45 = v29;
        if (v68)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v44 >= v40)
    {
      goto LABEL_24;
    }

    v43 = *(v26 + 8 * v44);
    ++v42;
    if (v43)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_22CF35548()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF355A0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_22CF355F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(), uint64_t a7)
{
  v8 = v7;
  v54 = a6;
  v55 = a7;
  v53 = a5;
  v49[1] = a3;
  v49[2] = a4;
  v50 = a1;
  v10 = sub_22D0164CC();
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22D01653C();
  v14 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v15);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D01637C();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = v49 - v25;
  if ([*(v8 + OBJC_IVAR____TtC11SessionCoreP33_353B8C47142C77ABAD422CF2B8B621406Client_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  aBlock = v61;
  v58 = v62;
  if (*(&v62 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3100, &qword_22D01AD80);
    if (swift_dynamicCast())
    {
      v53 = v56;
      sub_22D01635C();

      v27 = sub_22D01636C();
      v28 = sub_22D01690C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *&aBlock = v30;
        *v29 = 136446210;
        *(v29 + 4) = sub_22CEEE31C(v50, a2, &aBlock);
        _os_log_impl(&dword_22CEE1000, v27, v28, "Asking client to present alert: %{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x2318C6860](v30, -1, -1);
        MEMORY[0x2318C6860](v29, -1, -1);
      }

      (*(v19 + 8))(v26, v18);
      sub_22D014F2C();
      sub_22CF34C48(&qword_28143F638, MEMORY[0x277CB97B0], MEMORY[0x277CB97A8]);
      v37 = sub_22D01517C();
      v38 = sub_22D0141EC();
      v40 = v39;

      v41 = sub_22D01512C();
      v42 = sub_22D0141EC();
      v44 = v43;

      v45 = sub_22D01666C();
      v46 = sub_22D0141DC();
      v47 = sub_22D0141DC();
      v59 = v54;
      v60 = v55;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v58 = sub_22CF217E0;
      *(&v58 + 1) = &block_descriptor_30;
      v48 = _Block_copy(&aBlock);

      [v53 presentAlertWithActivityIdentifier:v45 payload:v46 options:v47 completion:v48];
      _Block_release(v48);

      sub_22CEE7524(v42, v44);
      sub_22CEE7524(v38, v40);
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_22CFAA9A8(&aBlock);
  }

  sub_22D01635C();
  v31 = sub_22D01636C();
  v32 = sub_22D0168EC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_22CEE1000, v31, v32, "Client does not implement expected interface", v33, 2u);
    MEMORY[0x2318C6860](v33, -1, -1);
  }

  (*(v19 + 8))(v23, v18);
  v34 = swift_allocObject();
  v35 = v55;
  *(v34 + 16) = v54;
  *(v34 + 24) = v35;
  v59 = sub_22CFAAA10;
  v60 = v34;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v58 = sub_22CEF8B58;
  *(&v58 + 1) = &block_descriptor_27_0;
  v36 = _Block_copy(&aBlock);

  sub_22D0164EC();
  *&v61 = MEMORY[0x277D84F90];
  sub_22CF34C48(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v17, v13, v36);
  _Block_release(v36);
  (*(v52 + 8))(v13, v10);
  (*(v14 + 8))(v17, v51);
}

uint64_t sub_22CF35D10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22CF35D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = v10;
  v227 = a8;
  v228 = a7;
  v229 = a6;
  v230 = a5;
  v234 = a4;
  v224 = a3;
  v242 = a1;
  v226 = type metadata accessor for ActivityManagerEvent(0);
  MEMORY[0x28223BE20](v226, v13);
  v243 = &v211[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v218 = sub_22D01486C();
  v217 = *(v218 - 8);
  MEMORY[0x28223BE20](v218, v15);
  v216 = &v211[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v225 = &v211[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v211[-v22];
  v223 = sub_22D0146BC();
  v222 = *(v223 - 8);
  MEMORY[0x28223BE20](v223, v24);
  v26 = &v211[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_22D01430C();
  v239 = *(v27 - 8);
  v240 = v27;
  v29 = MEMORY[0x28223BE20](v27, v28);
  v215 = &v211[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v29, v31);
  v219 = &v211[-v33];
  v35 = MEMORY[0x28223BE20](v32, v34);
  v221 = &v211[-v36];
  v38 = MEMORY[0x28223BE20](v35, v37);
  v237 = &v211[-v39];
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = &v211[-v42];
  MEMORY[0x28223BE20](v41, v44);
  v231 = &v211[-v45];
  v233 = sub_22D01495C();
  v232 = *(v233 - 8);
  MEMORY[0x28223BE20](v233, v46);
  v235 = &v211[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v236 = type metadata accessor for Activity(0);
  v238 = *(v236 - 8);
  v49 = MEMORY[0x28223BE20](v236, v48);
  v220 = &v211[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = MEMORY[0x28223BE20](v49, v51);
  v54 = &v211[-v53];
  MEMORY[0x28223BE20](v52, v55);
  v241 = &v211[-v56];
  v57 = sub_22D01659C();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v59);
  v61 = &v211[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = v11[5];
  *v61 = v62;
  (*(v58 + 104))(v61, *MEMORY[0x277D85200], v57);
  v63 = v62;
  v64 = sub_22D0165BC();
  v66 = *(v58 + 8);
  v65 = v58 + 8;
  v66(v61, v57);
  if ((v64 & 1) == 0)
  {
    __break(1u);
LABEL_70:
    swift_once();
LABEL_16:
    v87 = sub_22D01637C();
    __swift_project_value_buffer(v87, qword_281444498);

    v88 = sub_22D01636C();
    v89 = sub_22D0168EC();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v245 = v91;
      *v90 = 136446210;
      *(v90 + 4) = sub_22CEEE31C(v64, v65, &v245);
      _os_log_impl(&dword_22CEE1000, v88, v89, "Received an update for an activity with no subscribers: %{public}s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x2318C6860](v91, -1, -1);
      MEMORY[0x2318C6860](v90, -1, -1);
    }

    goto LABEL_28;
  }

  swift_beginAccess();
  v67 = v11[3];
  v65 = a2;
  v64 = v242;
  if (!*(v67 + 16))
  {
LABEL_15:
    if (qword_28143FB58 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

  v68 = v11;

  v69 = sub_22CEEC698(v64, a2);
  if ((v70 & 1) == 0)
  {

    goto LABEL_15;
  }

  v71 = *(*(v67 + 56) + 8 * v69);

  swift_beginAccess();
  v72 = v11[4];
  if (!*(v72 + 16))
  {
LABEL_19:

    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v92 = sub_22D01637C();
    __swift_project_value_buffer(v92, qword_281444498);

    v93 = sub_22D01636C();
    v94 = sub_22D0168EC();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v244 = v96;
      *v95 = 136446210;
      *(v95 + 4) = sub_22CEEE31C(v64, v65, &v244);
      _os_log_impl(&dword_22CEE1000, v93, v94, "Received stop for an activity that does not exist: %{public}s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      MEMORY[0x2318C6860](v96, -1, -1);
      MEMORY[0x2318C6860](v95, -1, -1);
    }

    v97 = sub_22D014C3C();
    sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
    v98 = swift_allocError();
    (*(*(v97 - 8) + 104))(v99, *MEMORY[0x277CB95D0], v97);
    swift_willThrow();
    goto LABEL_24;
  }

  v73 = sub_22CEEC698(v64, v65);
  if ((v74 & 1) == 0)
  {

    goto LABEL_19;
  }

  v214 = v71;
  sub_22CEFEA98(*(v72 + 56) + *(v238 + 72) * v73, v54, type metadata accessor for Activity);

  v75 = v54;
  v76 = v241;
  sub_22CF0A72C(v75, v241, type metadata accessor for Activity);
  if (sub_22CF0B5E0() == 1)
  {
    v77 = v235;
    sub_22D01484C();
    v78 = v231;
    sub_22D01491C();
    (*(v232 + 8))(v77, v233);
    sub_22D0142DC();
    sub_22CEF88D4(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v79 = v240;
    v212 = sub_22D01663C();
    v213 = v68;
    v80 = v76;
    v81 = *(v239 + 8);
    v81(v43, v79);
    v81(v78, v79);
    v76 = v80;
    v68 = v213;
    if (v212)
    {
      ObjectType = swift_getObjectType();
      if (((*(v229 + 40))(ObjectType) & 1) == 0)
      {

        if (qword_28143FB58 != -1)
        {
          swift_once();
        }

        v167 = sub_22D01637C();
        __swift_project_value_buffer(v167, qword_281444498);

        v168 = sub_22D01636C();
        v169 = sub_22D0168EC();

        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v244 = v171;
          *v170 = 136446210;
          *(v170 + 4) = sub_22CEEE31C(v64, v65, &v244);
          _os_log_impl(&dword_22CEE1000, v168, v169, "Received an update for a zombie activity: %{public}s", v170, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v171);
          MEMORY[0x2318C6860](v171, -1, -1);
          MEMORY[0x2318C6860](v170, -1, -1);
        }

        v172 = sub_22D014C3C();
        sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
        v98 = swift_allocError();
        (*(*(v172 - 8) + 104))(v173, *MEMORY[0x277CB95D0], v172);
        swift_willThrow();
        goto LABEL_55;
      }
    }
  }

  v83 = v236;

  v84 = sub_22D01482C();

  if ((v84 & 1) == 0 && (sub_22D0147EC() & 1) == 0 && (sub_22D0147FC() & 1) == 0)
  {

    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v174 = sub_22D01637C();
    __swift_project_value_buffer(v174, qword_281444498);

    v175 = sub_22D01636C();
    v176 = sub_22D0168EC();

    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v244 = v178;
      *v177 = 136446210;
      *(v177 + 4) = sub_22CEEE31C(v64, v65, &v244);
      _os_log_impl(&dword_22CEE1000, v175, v176, "Received stop from a content source that cannot contribute to the activity: %{public}s", v177, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v178);
      MEMORY[0x2318C6860](v178, -1, -1);
      MEMORY[0x2318C6860](v177, -1, -1);
    }

    v179 = sub_22D014C3C();
    sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
    v98 = swift_allocError();
    v181 = v180;
    v182 = (v180 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2338, &unk_22D018960) + 64));
    *v181 = 6581829;
    v181[1] = 0xE300000000000000;
    sub_22D01480C();
    *v182 = v64;
    v182[1] = v65;
    (*(*(v179 - 8) + 104))(v181, *MEMORY[0x277CB95D8], v179);
    swift_willThrow();

LABEL_55:
    sub_22CF0A5FC(v241, type metadata accessor for Activity);
LABEL_24:
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v100 = sub_22D01637C();
    __swift_project_value_buffer(v100, qword_281444498);
    v101 = sub_22D01415C();
    v102 = [v101 localizedDescription];
    v103 = sub_22D01667C();
    v105 = v104;

    v88 = v101;

    v106 = sub_22D01636C();
    v107 = sub_22D0168EC();

    if (!os_log_type_enabled(v106, v107))
    {

      return;
    }

    v243 = v103;
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v244 = v109;
    *v108 = 136446978;
    *(v108 + 4) = sub_22CEEE31C(0xD00000000000001DLL, 0x800000022D0215C0, &v244);
    *(v108 + 12) = 2082;
    v110 = [v88 domain];
    v111 = sub_22D01667C();
    v113 = v112;

    v114 = sub_22CEEE31C(v111, v113, &v244);

    *(v108 + 14) = v114;
    *(v108 + 22) = 2048;
    v115 = [v88 code];

    *(v108 + 24) = v115;
    *(v108 + 32) = 2082;
    v116 = sub_22CEEE31C(v243, v105, &v244);

    *(v108 + 34) = v116;
    _os_log_impl(&dword_22CEE1000, v106, v107, "%{public}s: %{public}s (%ld) %{public}s", v108, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v109, -1, -1);
    MEMORY[0x2318C6860](v108, -1, -1);

LABEL_28:
    return;
  }

  sub_22CEEB6DC(v224, v23, &qword_27D9F22F8, &unk_22D018940);
  v85 = v222;
  v86 = v223;
  if ((*(v222 + 48))(v23, 1, v223) == 1)
  {
    sub_22CEEC3D8(v23, &qword_27D9F22F8, &unk_22D018940);
  }

  else
  {
    (*(v85 + 32))(v26, v23, v86);
    (*(v85 + 40))(&v76[*(v83 + 56)], v26, v86);
  }

  if (qword_28143FB58 != -1)
  {
    swift_once();
  }

  v117 = sub_22D01637C();
  v118 = __swift_project_value_buffer(v117, qword_281444498);

  v119 = sub_22D01636C();
  v120 = sub_22D01690C();

  v121 = os_log_type_enabled(v119, v120);
  v228 = v118;
  if (v121)
  {
    v122 = v68;
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v244 = v124;
    *v123 = 136446210;
    *(v123 + 4) = sub_22CEEE31C(v64, v65, &v244);
    _os_log_impl(&dword_22CEE1000, v119, v120, "Stopping activity: %{public}s", v123, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v124);
    v125 = v124;
    v83 = v236;
    MEMORY[0x2318C6860](v125, -1, -1);
    v126 = v123;
    v68 = v122;
    MEMORY[0x2318C6860](v126, -1, -1);
  }

  v127 = a10;
  v128 = a9;
  v129 = v235;
  sub_22D01484C();
  sub_22D01491C();
  (*(v232 + 8))(v129, v233);
  sub_22CF37A40();
  if ((v130 & 1) != 0 || (v131 = v220, sub_22CEFEA98(v241, v220, type metadata accessor for Activity), v132 = v231, sub_22D0142DC(), sub_22CEF88D4(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]), LODWORD(v234) = a10, v133 = v240, v134 = sub_22D01663C(), v135 = v239 + 8, v136 = v132, v137 = *(v239 + 8), v138 = v133, v127 = v234, v137(v136, v138), sub_22CF0A5FC(v131, type metadata accessor for Activity), (v134 & 1) == 0))
  {
    swift_beginAccess();

    v165 = v242;
    sub_22CF0FE54(0, v242, v65);
    swift_endAccess();
    v166 = v225;
    (*(v238 + 56))(v225, 1, 1, v83);
    swift_beginAccess();

    sub_22CF0BC5C(v166, v165, v65);
    swift_endAccess();
    v163 = 4;
    v164 = v241;
  }

  else
  {
    v233 = a9;
    v213 = v68;
    v139 = v137;
    v140 = v231;
    sub_22D0142DC();
    v141 = v221;
    sub_22D01425C();
    v142 = v240;
    v139(v140, v240);
    v143 = v237;
    v144 = sub_22D01663C();
    v145 = *(v239 + 16);
    if (v144)
    {
      v146 = v141;
    }

    else
    {
      v146 = v143;
    }

    v147 = v219;
    v145(v219, v146, v142);
    sub_22D0142DC();
    v148 = sub_22D01428C();
    v149 = v140;
    v150 = v139;
    v139(v149, v142);
    v232 = v135;
    if (v148)
    {
      v151 = v147;
      v152 = sub_22D01636C();
      v153 = sub_22D01690C();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v244 = v155;
        *v154 = 136446210;
        swift_beginAccess();
        v156 = sub_22CF0B174();
        v158 = sub_22CEEE31C(v156, v157, &v244);

        *(v154 + 4) = v158;
        _os_log_impl(&dword_22CEE1000, v152, v153, "Activity: %{public}s should be discarded now", v154, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v155);
        MEMORY[0x2318C6860](v155, -1, -1);
        MEMORY[0x2318C6860](v154, -1, -1);
      }

      v159 = v240;
      v160 = v236;
      v128 = v233;
      v68 = v213;
      swift_beginAccess();

      v161 = v242;
      sub_22CF0FE54(0, v242, v65);
      swift_endAccess();
      v162 = v225;
      (*(v238 + 56))(v225, 1, 1, v160);
      swift_beginAccess();

      sub_22CF0BC5C(v162, v161, v65);
      swift_endAccess();
      v150(v151, v159);
      v150(v221, v159);
      v163 = 4;
      v164 = v241;
    }

    else
    {
      v183 = v215;
      v145(v215, v147, v142);

      v184 = sub_22D01636C();
      v185 = sub_22D01690C();

      if (os_log_type_enabled(v184, v185))
      {
        v186 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        v244 = v231;
        *v186 = 136446466;
        *(v186 + 4) = sub_22CEEE31C(v242, v65, &v244);
        *(v186 + 12) = 2082;
        sub_22CEF88D4(&unk_281443A20, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v187 = sub_22D016DEC();
        v189 = v188;
        v139(v183, v142);
        v190 = sub_22CEEE31C(v187, v189, &v244);

        *(v186 + 14) = v190;
        _os_log_impl(&dword_22CEE1000, v184, v185, "Activity: %{public}s should be discarded at %{public}s", v186, 0x16u);
        v191 = v231;
        swift_arrayDestroy();
        MEMORY[0x2318C6860](v191, -1, -1);
        MEMORY[0x2318C6860](v186, -1, -1);
      }

      else
      {

        v139(v183, v142);
      }

      v164 = v241;
      v192 = v236;
      sub_22D01492C();
      v193 = v216;
      sub_22D01485C();
      v194 = *(v192 + 60);
      sub_22CEEC3D8(&v164[v194], &qword_27D9F26E0, &unk_22D018F80);
      v195 = v217;
      v196 = v218;
      (*(v217 + 16))(&v164[v194], v193, v218);
      (*(v195 + 56))(&v164[v194], 0, 1, v196);
      v197 = v225;
      sub_22CEFEA98(v164, v225, type metadata accessor for Activity);
      (*(v238 + 56))(v197, 0, 1, v192);
      v68 = v213;
      swift_beginAccess();

      sub_22CF0BC5C(v197, v242, v65);
      swift_endAccess();
      (*(v195 + 8))(v193, v196);
      v139(v219, v142);
      v139(v221, v142);
      v163 = 2;
      v128 = v233;
    }

    v127 = v234;
  }

  swift_beginAccess();
  v198 = v243;
  sub_22CEFEA98(v164, v243, type metadata accessor for Activity);
  v199 = *(v229 + 8);
  v200 = v226;
  v198[*(v226 + 20)] = v163;
  v201 = &v198[v200[6]];
  v202 = v230;
  *v201 = v230;
  v201[1] = v199;
  v203 = &v198[v200[7]];
  *v203 = v227;
  v203[1] = v128;
  v198[v200[8]] = v127 & 1;
  type metadata accessor for ActivityManager.QueueActivityManager();
  v204 = swift_allocObject();
  *(v204 + 16) = v68;
  v205 = v214;
  v206 = *(v214 + 16);
  if (v206)
  {

    swift_unknownObjectRetain();
    v207 = (v205 + 40);
    do
    {
      if (*(v207 - 1) != v202)
      {
        v208 = swift_getObjectType();
        v209 = *v207;
        v210 = *(*v207 + 16);
        swift_unknownObjectRetain();

        v210(v243, v204, &off_28402C298, v208, v209);
        swift_unknownObjectRelease();
      }

      v207 += 2;
      --v206;
    }

    while (v206);

    v164 = v241;
  }

  else
  {

    swift_unknownObjectRetain();
  }

  sub_22CF0A5FC(v243, type metadata accessor for ActivityManagerEvent);
  (*(v239 + 8))(v237, v240);
  sub_22CF0A5FC(v164, type metadata accessor for Activity);
}

void sub_22CF37A40()
{
  v54 = sub_22D014EFC();
  v51 = *(v54 - 8);
  v2 = MEMORY[0x28223BE20](v54, v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2, v5);
  v50 = &v40 - v6;
  v55 = sub_22D0149AC();
  v7 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v8);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v40 - v16;
  v18 = *(v0 + *(type metadata accessor for Activity(0) + 28));
  v19 = *(v18 + 64);
  v42 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v41 = (v20 + 63) >> 6;
  v43 = v7 + 32;
  v44 = v7 + 16;
  v48 = v7;
  v52 = v18;
  v53 = (v7 + 8);

  v23 = 0;
  v49 = v4;
  v45 = v14;
  v46 = v17;
  v24 = v47;
  if (v22)
  {
    while (1)
    {
      v25 = v23;
LABEL_12:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v28 | (v25 << 6);
      v30 = v52;
      v31 = v48;
      v32 = v55;
      (*(v48 + 16))(v24, *(v52 + 48) + *(v48 + 72) * v29, v55);
      v33 = *(v30 + 56);
      v34 = v50;
      sub_22CEFEB00(v33 + *(v51 + 72) * v29, v50, MEMORY[0x277CB9790]);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      v36 = *(v35 + 48);
      v37 = *(v31 + 32);
      v14 = v45;
      v37(v45, v24, v32);
      sub_22CF033C4(v34, &v14[v36]);
      (*(*(v35 - 8) + 56))(v14, 0, 1, v35);
      v27 = v25;
      v4 = v49;
      v17 = v46;
LABEL_13:
      sub_22CF03428(v14, v17);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      if ((*(*(v38 - 8) + 48))(v17, 1, v38) == 1)
      {

        return;
      }

      sub_22CF033C4(&v17[*(v38 + 48)], v4);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_22CEFD754(v4, MEMORY[0x277CB9790]);
      (*v53)(v17, v55);
      v23 = v27;
      if (!v22)
      {
        goto LABEL_5;
      }
    }

    sub_22CEFD754(v4, MEMORY[0x277CB9790]);
    (*v53)(v17, v55);
  }

  else
  {
LABEL_5:
    if (v41 <= v23 + 1)
    {
      v26 = v23 + 1;
    }

    else
    {
      v26 = v41;
    }

    v27 = v26 - 1;
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v41)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
        (*(*(v39 - 8) + 56))(v14, 1, 1, v39);
        v22 = 0;
        goto LABEL_13;
      }

      v22 = *(v42 + 8 * v25);
      ++v23;
      if (v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22CF37F44(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      sub_22D016EAC();

      sub_22D0166DC();
      v9 = sub_22D016ECC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22CF380F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v12 - v7;
  v9 = *(*(v2 + 32) + 16);
  os_unfair_lock_lock(v9);
  v10 = type metadata accessor for Activity(0);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  swift_beginAccess();

  sub_22CF0BC5C(v8, a1, a2);
  swift_endAccess();
  sub_22D01566C();
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = a1;
  v11[4] = a2;

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v9);
}

uint64_t sub_22CF3829C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF38300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = a3;
  v87 = a2;
  v86 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v94 = &v78 - v6;
  v93 = sub_22D01534C();
  v80 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v7);
  v92 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_22D0154AC();
  v9 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v10);
  v102 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22D0154EC();
  v12 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v13);
  v99 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Assertion(0);
  v15 = *(v103 - 8);
  v17 = MEMORY[0x28223BE20](v103, v16);
  v101 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v98 = (&v78 - v21);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v78 - v23;
  v25 = v3[19];
  v26 = v3[20];
  v97 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 16, v25);
  v27 = (*(v26 + 8))(v25, v26);
  v28 = v27;
  v29 = *(v27 + 16);
  if (v29)
  {
    v30 = sub_22CF75FC8(*(v27 + 16), 0, &qword_27D9F20C0, &qword_22D0188E8, type metadata accessor for Assertion);
    v31 = sub_22CF7B348(v107, v30 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v29, v28, type metadata accessor for Assertion, type metadata accessor for Assertion);
    sub_22CEE57FC(*&v107[0]);
    if (v31 != v29)
    {
      __break(1u);
LABEL_47:
      result = sub_22D016CFC();
      __break(1u);
      return result;
    }

    v32 = v30;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v96 = v15;
  v79 = v9;
  v90 = v32[2];
  if (v90)
  {
    v33 = 0;
    v89 = (v12 + 16);
    v88 = *MEMORY[0x277D4D4B0];
    v85 = *MEMORY[0x277D4D498];
    v84 = *MEMORY[0x277D4D490];
    v83 = *MEMORY[0x277D4D4A8];
    v81 = *MEMORY[0x277D4D4A0];
    v82 = (v12 + 8);
    v34 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v33 >= v32[2])
      {
        __break(1u);
        goto LABEL_45;
      }

      v35 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      v36 = *(v96 + 72);
      v37 = v32;
      sub_22CF07D60(v32 + v35 + v36 * v33, v24, type metadata accessor for Assertion);
      v38 = v99;
      v39 = v100;
      (*v89)(v99, &v24[*(v103 + 20)], v100);
      v40 = (*(v12 + 88))(v38, v39);
      if (v40 != v88)
      {
        if (v40 == v85)
        {
          goto LABEL_7;
        }

        if (v40 == v84)
        {
          (*v82)(v99, v100);
        }

        else if (v40 != v83 && v40 != v81)
        {
          goto LABEL_47;
        }
      }

      if (sub_22D01554C() == v86 && v41 == v87)
      {

LABEL_21:
        sub_22CF7BE5C(v24, v98, type metadata accessor for Assertion);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v107[0] = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22CF44084(0, *(v34 + 16) + 1, 1);
          v34 = *&v107[0];
        }

        v45 = v34;
        v46 = *(v34 + 16);
        v47 = *(v45 + 24);
        if (v46 >= v47 >> 1)
        {
          sub_22CF44084((v47 > 1), v46 + 1, 1);
          v45 = *&v107[0];
        }

        *(v45 + 16) = v46 + 1;
        sub_22CF7BE5C(v98, v45 + v35 + v46 * v36, type metadata accessor for Assertion);
        v34 = v45;
        goto LABEL_8;
      }

      v43 = sub_22D016DFC();

      if (v43)
      {
        goto LABEL_21;
      }

LABEL_7:
      sub_22CF1CB18(v24, type metadata accessor for Assertion);
LABEL_8:
      ++v33;
      v32 = v37;
      if (v90 == v33)
      {
        goto LABEL_30;
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_30:

  if (qword_28143FAF0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v48 = sub_22D01637C();
  __swift_project_value_buffer(v48, qword_2814443A8);

  v49 = sub_22D01636C();
  v50 = sub_22D01690C();

  v51 = os_log_type_enabled(v49, v50);
  v52 = v96;
  if (v51)
  {
    v53 = v34;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v107[0] = v55;
    *v54 = 136446210;
    v56 = MEMORY[0x2318C5950](v53, v103);
    v58 = sub_22CEEE31C(v56, v57, v107);

    *(v54 + 4) = v58;
    _os_log_impl(&dword_22CEE1000, v49, v50, "Invalidating assertions for activity: %{public}s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x2318C6860](v55, -1, -1);
    v59 = v54;
    v34 = v53;
    MEMORY[0x2318C6860](v59, -1, -1);
  }

  v60 = v34;
  v61 = *(v34 + 16);
  if (v61)
  {
    v100 = v97[6];
    v62 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v90 = v60;
    v63 = v60 + v62;
    swift_beginAccess();
    v98 = (v80 + 16);
    v64 = (v79 + 8);
    v99 = *(v52 + 72);
    v65 = &unk_27D9F29F8;
    do
    {
      v67 = v65;
      v68 = v101;
      sub_22CF07D60(v63, v101, type metadata accessor for Assertion);
      (*v98)(v92, v68, v93);
      sub_22CEEB6DC(v68 + *(v103 + 24), v94, &qword_27D9F2680, &qword_22D019670);
      sub_22D01547C();
      v69 = v97;
      v70 = v97[19];
      v71 = v97[20];
      __swift_project_boxed_opaque_existential_1(v97 + 16, v70);
      (*(v71 + 32))(v68, v70, v71);
      v72 = *(v100 + 16);
      os_unfair_lock_lock(v72);
      v73 = sub_22D01531C();
      v74 = v69[7];
      if (*(v74 + 16) && (v75 = sub_22CEE637C(v73), (v76 & 1) != 0))
      {
        sub_22CEE3A84(*(v74 + 56) + 40 * v75, v107);
      }

      else
      {
        v108 = 0;
        memset(v107, 0, sizeof(v107));
      }

      os_unfair_lock_unlock(v72);
      v65 = v67;
      sub_22CEEB6DC(v107, &v104, v67, &qword_22D019688);
      if (v105)
      {
        sub_22CEF44D4(&v104, v106);
        __swift_project_boxed_opaque_existential_1(v106, v106[3]);
        v66 = v102;
        sub_22D006D8C(v102);
        sub_22CEEC3D8(v107, v67, &qword_22D019688);
        (*v64)(v66, v91);
        sub_22CF1CB18(v101, type metadata accessor for Assertion);
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
      }

      else
      {
        sub_22CEEC3D8(v107, v67, &qword_22D019688);
        (*v64)(v102, v91);
        sub_22CF1CB18(v101, type metadata accessor for Assertion);
        sub_22CEEC3D8(&v104, v67, &qword_22D019688);
      }

      v63 += v99;
      --v61;
    }

    while (v61);
  }

  return sub_22CF38E78();
}

uint64_t sub_22CF38E78()
{
  v1 = v0;
  v150 = sub_22D01555C();
  v2 = *(v150 - 8);
  v4 = MEMORY[0x28223BE20](v150, v3);
  v145 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v144 = &v136 - v7;
  v8 = sub_22D0154EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v163 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v13 = MEMORY[0x28223BE20](v166, v12);
  v146 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v149 = &v136 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v136 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v152 = &v136 - v23;
  if (qword_28143FAF0 != -1)
  {
LABEL_48:
    swift_once();
  }

  v24 = sub_22D01637C();
  v157 = __swift_project_value_buffer(v24, qword_2814443A8);
  v25 = sub_22D01636C();
  v26 = sub_22D01690C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22CEE1000, v25, v26, "Resolving all assertions", v27, 2u);
    MEMORY[0x2318C6860](v27, -1, -1);
  }

  v28 = v1[6];
  v151 = *(v28 + 16);
  os_unfair_lock_lock(v151);
  os_unfair_lock_assert_owner(*(v28 + 16));
  v29 = v1[19];
  v30 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v29);
  v31 = (*(v30 + 8))(v29, v30);
  sub_22CF39DE8(v31);
  v33 = v32;

  v153 = sub_22CF3A374(v33);
  sub_22CF3A490();
  v155 = v34;
  os_unfair_lock_assert_owner(*(v28 + 16));
  v35 = v1[19];
  v36 = v1[20];
  v154 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 16, v35);
  v37 = (*(v36 + 8))(v35, v36);
  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 64);
  v42 = (v39 + 63) >> 6;
  v162 = (v9 + 16);
  v161 = (v9 + 88);
  v160 = *MEMORY[0x277D4D4B0];
  v158 = (v9 + 8);
  v143 = (v9 + 96);
  v148 = (v2 + 16);
  v147 = (v2 + 8);
  v167 = v37;

  v2 = 0;
  v156 = MEMORY[0x277D84F98];
  v1 = &qword_22D018B60;
  v164 = v8;
  v43 = v152;
  v159 = v42;
  v165 = v38;
LABEL_7:
  v44 = v2;
  if (!v41)
  {
    goto LABEL_9;
  }

  do
  {
    v45 = v1;
    v2 = v44;
LABEL_13:
    v46 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v47 = v46 | (v2 << 6);
    v48 = v167;
    v49 = *(v167 + 48);
    v50 = sub_22D01534C();
    v51 = *(v50 - 8);
    v52 = v51;
    v53 = v49 + *(v51 + 72) * v47;
    v54 = *(v51 + 16);
    v168 = v50;
    v54(v43, v53);
    v55 = v43;
    v56 = *(v48 + 56);
    v57 = type metadata accessor for Assertion(0);
    v58 = v56 + *(*(v57 - 8) + 72) * v47;
    v59 = v166;
    sub_22CF07D60(v58, v55 + *(v166 + 48), type metadata accessor for Assertion);
    v1 = v45;
    sub_22CEEB6DC(v55, v21, &qword_27D9F2600, v45);
    v60 = &v21[*(v59 + 48)];
    v61 = v163;
    v8 = v164;
    (*v162)(v163, v60 + *(v57 + 20), v164);
    sub_22CF1CB18(v60, type metadata accessor for Assertion);
    v62 = (*v161)(v61, v8);
    if (v62 == v160)
    {
      v141 = v52;
      v64 = v168;
      (*v143)(v61, v8);
      v138 = *v61;
      v65 = v149;
      sub_22CEEB6DC(v55, v149, &qword_27D9F2600, v1);
      v66 = v65 + *(v166 + 48);
      v142 = v57;
      v67 = v66 + *(v57 + 40);
      v68 = v144;
      v69 = v150;
      v140 = *v148;
      v140(v144, v67, v150);
      sub_22CF1CB18(v66, type metadata accessor for Assertion);
      v70 = sub_22D01554C();
      v72 = v71;
      v139 = *v147;
      v139(v68, v69);
      v73 = v156;
      v74 = v55;
      if (*(v156 + 16))
      {
        v75 = sub_22CEEC698(v70, v72);
        v77 = v76;

        if (v77)
        {
          v78 = *(*(v73 + 56) + 8 * v75);
          goto LABEL_21;
        }
      }

      else
      {
      }

      v78 = 1;
LABEL_21:
      v137 = *(v141 + 8);
      v137(v149, v64);
      v79 = v138;
      if (sub_22D014BBC())
      {
        v80 = v78;
      }

      else
      {
        v80 = v79;
      }

      v141 = v80;
      v81 = v146;
      sub_22CEEB6DC(v74, v146, &qword_27D9F2600, v1);
      v82 = v81 + *(v166 + 48);
      v83 = v145;
      v84 = v150;
      v140(v145, v82 + *(v142 + 40), v150);
      sub_22CF1CB18(v82, type metadata accessor for Assertion);
      v85 = sub_22D01554C();
      v87 = v86;
      v139(v83, v84);
      v88 = v156;
      LODWORD(v142) = swift_isUniquelyReferenced_nonNull_native();
      v169 = v88;
      v8 = v85;
      v9 = sub_22CEEC698(v85, v87);
      v90 = *(v88 + 16);
      v91 = (v89 & 1) == 0;
      v92 = v90 + v91;
      if (__OFADD__(v90, v91))
      {
        goto LABEL_50;
      }

      if (*(v88 + 24) >= v92)
      {
        v38 = v165;
        if (v142)
        {
          goto LABEL_30;
        }

        v93 = v89;
        sub_22CFB6680();
      }

      else
      {
        v93 = v89;
        sub_22CFB938C(v92, v142);
        v94 = sub_22CEEC698(v8, v87);
        if ((v93 & 1) != (v95 & 1))
        {
          goto LABEL_52;
        }

        v9 = v94;
      }

      v89 = v93;
      v38 = v165;
LABEL_30:
      v96 = v168;
      if (v89)
      {

        v156 = v169;
        *(v169[7] + 8 * v9) = v141;
        sub_22CEEC3D8(v152, &qword_27D9F2600, v1);
      }

      else
      {
        v97 = v169;
        v169[(v9 >> 6) + 8] |= 1 << v9;
        v98 = (v97[6] + 16 * v9);
        *v98 = v8;
        v98[1] = v87;
        *(v97[7] + 8 * v9) = v141;
        sub_22CEEC3D8(v152, &qword_27D9F2600, v1);
        v99 = v97[2];
        v100 = __OFADD__(v99, 1);
        v101 = v99 + 1;
        if (v100)
        {
          goto LABEL_51;
        }

        v156 = v97;
        v97[2] = v101;
        v38 = v165;
      }

      v102 = v137;
      v137(v146, v96);
      v102(v21, v96);
      v42 = v159;
      v43 = v152;
      goto LABEL_7;
    }

    sub_22CEEC3D8(v55, &qword_27D9F2600, v1);
    (*v158)(v61, v8);
    v63 = *(v52 + 8);
    v9 = v52 + 8;
    v63(v21, v168);
    v44 = v2;
    v43 = v55;
    v42 = v159;
    v38 = v165;
  }

  while (v41);
  while (1)
  {
LABEL_9:
    v2 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v2 >= v42)
    {
      break;
    }

    v41 = *(v38 + 8 * v2);
    ++v44;
    if (v41)
    {
      v45 = v1;
      goto LABEL_13;
    }
  }

  v103 = v154;
  swift_beginAccess();
  v104 = v153;
  v103[9] = v153;

  v103[13] = v155;

  swift_beginAccess();
  v103[8] = v156;

  os_unfair_lock_unlock(v151);
  v105 = sub_22D01636C();
  v106 = sub_22D01690C();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v169 = v108;
    *v107 = 136446210;

    v109 = sub_22D01686C();
    v111 = v110;

    v112 = sub_22CEEE31C(v109, v111, &v169);

    *(v107 + 4) = v112;
    _os_log_impl(&dword_22CEE1000, v105, v106, "Resolved prominent activities: %{public}s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    MEMORY[0x2318C6860](v108, -1, -1);
    MEMORY[0x2318C6860](v107, -1, -1);
  }

  v113 = sub_22D01636C();
  v114 = sub_22D01690C();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v169 = v116;
    *v115 = 136446210;
    v117 = sub_22D014E7C();

    v119 = MEMORY[0x2318C5950](v118, v117);
    v121 = v120;

    v122 = sub_22CEEE31C(v119, v121, &v169);

    *(v115 + 4) = v122;
    _os_log_impl(&dword_22CEE1000, v113, v114, "Resolved presenters: %{public}s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    MEMORY[0x2318C6860](v116, -1, -1);
    MEMORY[0x2318C6860](v115, -1, -1);
  }

  v123 = sub_22D01636C();
  v124 = sub_22D01690C();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v169 = v126;
    *v125 = 136446210;

    v127 = sub_22D0165FC();
    v129 = v128;

    v130 = sub_22CEEE31C(v127, v129, &v169);

    *(v125 + 4) = v130;
    _os_log_impl(&dword_22CEE1000, v123, v124, "Resolved QoS: %{public}s", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    MEMORY[0x2318C6860](v126, -1, -1);
    MEMORY[0x2318C6860](v125, -1, -1);
  }

  v131 = *(v104 + 16);
  if (!v131)
  {
    v132 = MEMORY[0x277D84F90];
LABEL_46:
    v169 = v132;
    sub_22D01643C();

    v169 = v155;

    sub_22D01643C();

    v169 = v156;

    sub_22D01643C();

    sub_22CF3B060();
    sub_22CF3BABC();
    sub_22CF3BDD4();
  }

  v132 = sub_22CEE561C(*(v104 + 16), 0);
  v133 = sub_22CEE56A4(&v169, v132 + 4, v131, v104);
  v134 = v169;

  sub_22CEE57FC(v134);
  if (v133 == v131)
  {
    goto LABEL_46;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

void sub_22CF39DE8(uint64_t a1)
{
  v73 = sub_22D0154EC();
  v2 = *(v73 - 8);
  MEMORY[0x28223BE20](v73 - 8, v3);
  v72 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v6 = MEMORY[0x28223BE20](v74, v5);
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v57 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v71 = &v57 - v13;
  v61 = MEMORY[0x277D84F98];
  v76 = MEMORY[0x277D84F98];
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v69 = (v2 + 88);
  v70 = (v2 + 16);
  v68 = *MEMORY[0x277D4D4A8];
  v65 = (v2 + 8);
  v75 = a1;

  v19 = 0;
  v66 = v18;
  for (i = a1 + 64; ; v14 = i)
  {
    v20 = v19;
    if (!v17)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v19 = v20;
LABEL_10:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = v21 | (v19 << 6);
      v23 = v75;
      v24 = *(v75 + 48);
      v25 = sub_22D01534C();
      v64 = *(v25 - 8);
      v63 = *(v64 + 72);
      v26 = *(v64 + 16);
      v27 = v71;
      v62 = v25;
      v26(v71, v24 + v63 * v22);
      v28 = *(v23 + 56);
      v29 = type metadata accessor for Assertion(0);
      v30 = v74;
      sub_22CF07D60(v28 + *(*(v29 - 8) + 72) * v22, v27 + *(v74 + 48), type metadata accessor for Assertion);
      sub_22CEF0368(v27, v11, &qword_27D9F2600, &qword_22D018B60);
      v31 = v72;
      v32 = v73;
      (*v70)(v72, &v11[*(v30 + 48) + *(v29 + 20)], v73);
      v33 = (*v69)(v31, v32);
      if (v33 == v68)
      {
        break;
      }

      (*v65)(v31, v32);
      sub_22CEEC3D8(v11, &qword_27D9F2600, &qword_22D018B60);
      v20 = v19;
      v18 = v66;
      v14 = i;
      if (!v17)
      {
LABEL_7:
        while (1)
        {
          v19 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v19 >= v18)
          {

            return;
          }

          v17 = *(v14 + 8 * v19);
          ++v20;
          if (v17)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v34 = v62;
    v35 = sub_22D01554C();
    v58 = v36;
    v59 = v35;
    sub_22CEF0368(v11, v60, &qword_27D9F2600, &qword_22D018B60);
    v37 = v61[2];
    if (v61[3] <= v37)
    {
      sub_22CFB8FA4(v37 + 1, 1);
    }

    v38 = v76;
    sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
    v39 = v34;
    v40 = sub_22D01661C();
    v41 = v38 + 64;
    v61 = v38;
    v42 = -1 << *(v38 + 32);
    v43 = v40 & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v38 + 64 + 8 * (v43 >> 6))) == 0)
    {
      break;
    }

    v45 = __clz(__rbit64((-1 << v43) & ~*(v38 + 64 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
    v47 = v63;
    v46 = v64;
LABEL_25:
    v52 = *(v74 + 48);
    *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v53 = v61;
    v54 = v60;
    (*(v46 + 32))(v61[6] + v45 * v47, v60, v39);
    v55 = (v53[7] + 16 * v45);
    v56 = v58;
    *v55 = v59;
    v55[1] = v56;
    ++v53[2];
    sub_22CF1CB18(v54 + v52, type metadata accessor for Assertion);
    v18 = v66;
  }

  v48 = 0;
  v49 = (63 - v42) >> 6;
  v47 = v63;
  v46 = v64;
  while (++v44 != v49 || (v48 & 1) == 0)
  {
    v50 = v44 == v49;
    if (v44 == v49)
    {
      v44 = 0;
    }

    v48 |= v50;
    v51 = *(v41 + 8 * v44);
    if (v51 != -1)
    {
      v45 = __clz(__rbit64(~v51)) + (v44 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_22CF3A374(uint64_t a1)
{
  result = MEMORY[0x2318C59E0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_22CEE54CC(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22CF3A490()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v24 - v4;
  os_unfair_lock_assert_owner(*(v0[6] + 16));
  v25 = MEMORY[0x277D84F98];
  v6 = v0[19];
  v7 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = v8;
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  while (v13)
  {
    v16 = v15;
LABEL_9:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = v17 | (v16 << 6);
    v19 = *(v9 + 48);
    v20 = sub_22D01534C();
    (*(*(v20 - 8) + 16))(v5, v19 + *(*(v20 - 8) + 72) * v18, v20);
    v21 = *(v9 + 56);
    v22 = v21 + *(*(type metadata accessor for Assertion(0) - 8) + 72) * v18;
    v23 = *(v2 + 48);
    sub_22CF07D60(v22, &v5[v23], type metadata accessor for Assertion);
    sub_22CF71E9C(v5, &v5[v23], v1, &v25);
    sub_22CEEC3D8(v5, &qword_27D9F2600, &qword_22D018B60);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      sub_22CF3A6E0(v25);

      return;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22CF3A6E0(uint64_t a1)
{
  v33 = sub_22D014E7C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v36 = v1;
  v39 = MEMORY[0x277D84F90];
  sub_22CF4416C(0, v6, 0);
  v7 = v39;
  v34 = a1 + 64;
  v8 = sub_22D016AEC();
  v9 = v3;
  v10 = v8;
  v11 = 0;
  v37 = *(a1 + 36);
  v32 = v9;
  v30 = a1 + 72;
  v31 = v9 + 32;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v34 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v37 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v6;
    v15 = (*(a1 + 48) + 16 * v10);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v10);
    v38[0] = *v15;
    v38[1] = v16;
    v38[2] = v17;

    v18 = v36;
    sub_22CF72438(v38, v35);
    v36 = v18;
    if (v18)
    {
      goto LABEL_28;
    }

    v39 = v7;
    v20 = *(v7 + 16);
    v19 = *(v7 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_22CF4416C((v19 > 1), v20 + 1, 1);
      v7 = v39;
    }

    *(v7 + 16) = v20 + 1;
    (*(v32 + 32))(v7 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20, v35, v33);
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v21 = *(v34 + 8 * v13);
    if ((v21 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    if (v37 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v22 = v21 & (-2 << (v10 & 0x3F));
    if (v22)
    {
      v12 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v13 << 6;
      v24 = v13 + 1;
      v25 = (v30 + 8 * v13);
      while (v24 < (v12 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          sub_22CF44CF8(v10, v37, 0);
          v12 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      sub_22CF44CF8(v10, v37, 0);
    }

LABEL_4:
    ++v11;
    v10 = v12;
    v6 = v14;
    if (v11 == v14)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  __break(1u);
  return result;
}

void sub_22CF3AA38(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(*(Strong + OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_lock) + 16);

    os_unfair_lock_lock(v5);
    *&v4[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer__lock_prominentActivityIdentifiers] = v2;

    v6 = OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer__lock_clients;
    swift_beginAccess();
    v7 = *&v4[v6];
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    while (v10)
    {
      v13 = v12;
LABEL_10:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = *(*(v7 + 56) + ((v13 << 9) | (8 * v14)));
      sub_22CF2FA4C(v2);
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        os_unfair_lock_unlock(v5);

        return;
      }

      v10 = *(v7 + 64 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

double sub_22CF3ABD4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(*(Strong + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_lock) + 16);
    v6 = Strong;

    os_unfair_lock_lock(v5);
    sub_22CF3AC6C(v6, v2);
    os_unfair_lock_unlock(v5);
  }

  return result;
}

void sub_22CF3AC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D014E7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer__lock_presentations;
  swift_beginAccess();
  *(a1 + v9) = MEMORY[0x277D84F98];

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v50 = v4;
    v51 = (v5 + 16);
    v12 = *(v5 + 72);
    v47 = (v5 + 40);
    v48 = (v5 + 32);
    v49 = v12;
    while (1)
    {
      v52 = v10;
      v16 = sub_22D014E6C();
      v18 = v17;
      swift_beginAccess();
      v19 = *v51;
      v20 = v8;
      v53 = v11;
      v19(v8, v11, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *(a1 + v9);
      v22 = v54;
      *(a1 + v9) = 0x8000000000000000;
      v23 = sub_22CEEC698(v16, v18);
      v25 = v22[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        break;
      }

      v29 = v24;
      if (v22[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = v23;
          sub_22CFB7BB4();
          v23 = v35;
        }
      }

      else
      {
        sub_22CFBB1B0(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_22CEEC698(v16, v18);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_28;
        }
      }

      v8 = v20;
      v31 = v49;
      if (v29)
      {
        v13 = v23;

        v14 = v54;
        v4 = v50;
        (*v47)(v54[7] + v13 * v31, v8, v50);
        v15 = v53;
      }

      else
      {
        v14 = v54;
        v54[(v23 >> 6) + 8] |= 1 << v23;
        v32 = (v14[6] + 16 * v23);
        *v32 = v16;
        v32[1] = v18;
        v4 = v50;
        (*v48)(v14[7] + v23 * v31, v8, v50);
        v33 = v14[2];
        v27 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        v15 = v53;
        if (v27)
        {
          goto LABEL_27;
        }

        v14[2] = v34;
      }

      *(a1 + v9) = v14;

      swift_endAccess();
      v11 = v15 + v31;
      v10 = v52 - 1;
      if (v52 == 1)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v36 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer__lock_clients;
    swift_beginAccess();
    v37 = *(a1 + v36);
    v38 = 1 << *(v37 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v37 + 64);
    v41 = (v38 + 63) >> 6;

    v42 = 0;
    while (v40)
    {
      v43 = v42;
LABEL_22:
      v44 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v45 = *(*(v37 + 56) + ((v43 << 9) | (8 * v44)));

      sub_22CF83C98(v46);
    }

    while (1)
    {
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v43 >= v41)
      {

        return;
      }

      v40 = *(v37 + 64 + 8 * v43);
      ++v42;
      if (v40)
      {
        v42 = v43;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_22D016E1C();
  __break(1u);
}

void sub_22CF3B060()
{
  v1 = v0;
  v2 = sub_22D01430C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v40 - v13;
  if (qword_28143FAF0 != -1)
  {
    swift_once();
  }

  v15 = sub_22D01637C();
  __swift_project_value_buffer(v15, qword_2814443A8);
  v16 = sub_22D01636C();
  v17 = sub_22D01690C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22CEE1000, v16, v17, "Scheduling expiration timer", v18, 2u);
    MEMORY[0x2318C6860](v18, -1, -1);
  }

  sub_22CF3B58C(v14);
  sub_22D01423C();
  v19 = sub_22D01428C();
  v20 = *(v3 + 8);
  v20(v11, v2);
  if (v19)
  {
    sub_22D0142DC();
    sub_22D01424C();
    v22 = v21;
    v20(v11, v2);
    (*(v3 + 16))(v7, v14, v2);
    v23 = sub_22D01636C();
    v24 = v20;
    v25 = sub_22D01690C();
    if (os_log_type_enabled(v23, v25))
    {
      v26 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v26 = 136446210;
      sub_22CF7C4D4(&unk_281443A20, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v27 = sub_22D016DEC();
      v41 = v1;
      v29 = v28;
      v24(v7, v2);
      v30 = sub_22CEEE31C(v27, v29, &v43);
      v1 = v41;

      *(v26 + 4) = v30;
      _os_log_impl(&dword_22CEE1000, v23, v25, "Expiration timer will fire at %{public}s", v26, 0xCu);
      v31 = v42;
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x2318C6860](v31, -1, -1);
      MEMORY[0x2318C6860](v26, -1, -1);
    }

    else
    {

      v24(v7, v2);
    }

    v35 = *(v1 + 168);
    v36 = *(*(v35 + 24) + 16);

    os_unfair_lock_lock(v36);
    sub_22CFA98A8();
    os_unfair_lock_unlock(v36);

    v37 = *(v1 + 120);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = *(*(v35 + 24) + 16);

    os_unfair_lock_lock(v39);
    sub_22CFA9024(v37, sub_22CF7B57C, v38, v22);
    os_unfair_lock_unlock(v39);

    v24(v14, v2);
  }

  else
  {
    v32 = sub_22D01636C();
    v33 = sub_22D01690C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22CEE1000, v32, v33, "Expiration timer does not need to restart", v34, 2u);
      MEMORY[0x2318C6860](v34, -1, -1);
    }

    v20(v14, v2);
  }
}

uint64_t sub_22CF3B554()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_22CF3B58C(uint64_t a1@<X8>)
{
  v57 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v3 = MEMORY[0x28223BE20](v60, v2);
  v69 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v68 = &v56 - v6;
  v7 = sub_22D01430C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v58 = &v56 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v56 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v56 - v20;
  v22 = v1[19];
  v23 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v22);
  v24 = (*(v23 + 8))(v22, v23);
  sub_22D01423C();
  v26 = *(v8 + 16);
  v25 = v8 + 16;
  v64 = v18;
  v65 = v7;
  v56 = v21;
  v26(v18, v21, v7);
  v27 = v24 + 64;
  v28 = 1 << *(v24 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v24 + 64);
  v31 = (v28 + 63) >> 6;
  v61 = (v25 - 8);
  v62 = (v25 + 16);
  v63 = v24;

  v32 = 0;
  while (v30)
  {
LABEL_17:
    v42 = __clz(__rbit64(v30)) | (v32 << 6);
    v43 = v63;
    v44 = *(v63 + 48);
    v45 = sub_22D01534C();
    v66 = *(v45 - 8);
    v46 = v68;
    (*(v66 + 16))(v68, v44 + *(v66 + 72) * v42, v45);
    v47 = *(v43 + 56);
    v48 = type metadata accessor for Assertion(0);
    v49 = v47 + *(*(v48 - 8) + 72) * v42;
    v50 = v60;
    sub_22CF07D60(v49, v46 + *(v60 + 48), type metadata accessor for Assertion);
    v51 = v69;
    sub_22CEEB6DC(v46, v69, &qword_27D9F2600, &qword_22D018B60);
    v52 = v51 + *(v50 + 48);
    v53 = *(v52 + *(v48 + 36) + 8);
    v67 = v45;
    v54 = v59;
    if (v53)
    {
      sub_22D01423C();
    }

    else
    {
      sub_22D01425C();
    }

    v30 &= v30 - 1;
    sub_22CF1CB18(v52, type metadata accessor for Assertion);
    sub_22CF7C4D4(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v33 = v64;
    v34 = v54;
    v35 = v65;
    v36 = sub_22D01663C();
    sub_22CEEC3D8(v68, &qword_27D9F2600, &qword_22D018B60);
    if (v36)
    {
      v37 = v33;
    }

    else
    {
      v37 = v34;
    }

    if (v36)
    {
      v38 = v34;
    }

    else
    {
      v38 = v33;
    }

    (*v61)(v37, v35);
    v39 = *v62;
    v40 = v58;
    (*v62)(v58, v38, v35);
    (*(v66 + 8))(v69, v67);
    v39(v33, v40, v35);
  }

  while (1)
  {
    v41 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v41 >= v31)
    {
      v55 = v65;
      (*v61)(v56, v65);

      (*v62)(v57, v64, v55);

      return;
    }

    v30 = *(v27 + 8 * v41);
    ++v32;
    if (v30)
    {
      v32 = v41;
      goto LABEL_17;
    }
  }

  __break(1u);
}

double sub_22CF3BABC()
{
  v1 = sub_22D01697C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01691C();
  MEMORY[0x28223BE20](v6, v7);
  v8 = sub_22D01653C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = v0[19];
  v11 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v10);
  v12 = *((*(v11 + 8))(v10, v11) + 16);

  if (v12)
  {
    v14 = sub_22CEE82F8(0, &qword_28143FA08, 0x277D85C78);
    v16[1] = "Unknown attribute";
    v16[2] = v14;
    sub_22D0164EC();
    v16[3] = MEMORY[0x277D84F90];
    sub_22CF7C4D4(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    v16[0] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
    sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
    sub_22D016ADC();
    (*(v2 + 104))(v5, *MEMORY[0x277D85260], v16[0]);
    v15 = sub_22D0169BC();
    sub_22D01566C();

    sub_22D01565C();
    sub_22D01564C();
  }

  return result;
}

void sub_22CF3BDD4()
{
  v1 = v0[19];
  v2 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v1);
  v3 = *((*(v2 + 8))(v1, v2) + 16);

  if (v3)
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v4 = sub_22D01637C();
    __swift_project_value_buffer(v4, qword_2814443A8);
    v5 = sub_22D01636C();
    v6 = sub_22D01690C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22CEE1000, v5, v6, "Scheduling assertion purge", v7, 2u);
      MEMORY[0x2318C6860](v7, -1, -1);
    }

    sub_22D01566C();

    sub_22D01564C();
  }
}

void sub_22CF3BF74(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19 - v5;
  v7 = *(*(v1 + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
  os_unfair_lock_lock(v7);
  v8 = *a1;
  v9 = a1[1];
  v10 = type metadata accessor for Activity(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  swift_beginAccess();

  sub_22CF0BC5C(v6, v8, v9);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_clients;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = *(v12 + 16);
  if (!v13)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v20 = v7;
  v21 = a1;
  v14 = sub_22CF1C2FC(v13, 0);
  v15 = sub_22CF102C0(&v22, v14 + 4, v13, v12);
  v16 = v22;

  sub_22CEE57FC(v16);
  if (v15 == v13)
  {
    v7 = v20;
    a1 = v21;
LABEL_5:
    os_unfair_lock_unlock(v7);
    MEMORY[0x28223BE20](v17, v18);
    *(&v19 - 2) = a1;
    sub_22CF1685C(sub_22CF3C1BC, (&v19 - 4), v14);
    sub_22CF0EE0C(a1, byte_27D9F36F0, *&qword_27D9F36F8);

    return;
  }

  __break(1u);
}

void sub_22CF3C1D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  sub_22CF16990(a2);
  if (v4)
  {
    v5 = *(*(v3 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock) + 16);
    os_unfair_lock_lock(v5);
    *(v3 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_pendingChangeAck) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F20F0, &qword_22D018918);
    v6 = sub_22D014C8C();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22D0187A0;
    v10 = *MEMORY[0x277CB9610];
    v11 = sub_22D014C4C();
    (*(*(v11 - 8) + 104))(v9 + v8, v10, v11);
    (*(v7 + 104))(v9 + v8, *MEMORY[0x277CB9630], v6);
    sub_22CFD7A04(v9, *a2, a2[1]);
    v13 = v12;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    os_unfair_lock_unlock(v5);
    sub_22CF1C384(v13);
  }
}

double sub_22CF3C3B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CF28F14();
  }

  return result;
}

double sub_22CF3C408(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  swift_beginAccess();
  sub_22CF3C4B0(v3, v4);
  swift_endAccess();

  if (!*(*(a1 + 24) + 16))
  {
    if (*(a1 + 32))
    {

      sub_22D01562C();
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_22CF3C4B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22D016EAC();
  sub_22D0166DC();
  v6 = sub_22D016ECC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22D016DFC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22CF60134();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_22CF3C5EC(v8);
  *v2 = v16;
  return v12;
}

void sub_22CF3C5EC(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22D016AFC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22D016EAC();

        sub_22D0166DC();
        v10 = sub_22D016ECC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_22CF3C7B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D01525C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01637C();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01635C();
  (*(v5 + 16))(v8, a1, v4);
  v13 = sub_22D01636C();
  v14 = sub_22D01690C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v9;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = a1;
    v18 = v17;
    v30[0] = v17;
    *v16 = 136446210;
    v19 = sub_22D0151CC();
    v28 = v2;
    v21 = v20;
    (*(v5 + 8))(v8, v4);
    v22 = sub_22CEEE31C(v19, v21, v30);
    v2 = v28;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_22CEE1000, v13, v14, "Dismissing alert: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2318C6860](v18, -1, -1);
    MEMORY[0x2318C6860](v16, -1, -1);

    (*(v29 + 8))(v12, v26);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v29 + 8))(v12, v9);
  }

  sub_22D0151CC();
  swift_beginAccess();
  v23 = *__swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  v24 = sub_22D01666C();

  [v23 dismissAlertWithActivityIdentifier_];
}

void sub_22CF3CB30(uint64_t a1, unint64_t a2)
{
  v5 = sub_22D01637C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v2 + OBJC_IVAR____TtC11SessionCore18AlertServiceServer_lock) + 16);
  os_unfair_lock_lock(v10);
  v11 = OBJC_IVAR____TtC11SessionCore18AlertServiceServer__lock_clients;
  swift_beginAccess();
  v12 = *(v2 + v11);

  os_unfair_lock_unlock(v10);
  if ((v12 & 0xC000000000000001) == 0)
  {
    if (*(v12 + 16))
    {
      v15 = 0;
      v17 = -1 << *(v12 + 32);
      v13 = v12 + 56;
      v14 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v16 = v19 & *(v12 + 56);
      goto LABEL_9;
    }

LABEL_21:

    sub_22D01635C();
    v27 = sub_22D01636C();
    v28 = sub_22D0168EC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22CEE1000, v27, v28, "No clients registered for alert service", v29, 2u);
      MEMORY[0x2318C6860](v29, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return;
  }

  if (!sub_22D016B7C())
  {
    goto LABEL_21;
  }

  sub_22D016B3C();
  _s11SessionCore6ClientCMa_0();
  sub_22CF34C48(&qword_27D9F3110, _s11SessionCore6ClientCMa_0, MEMORY[0x277D85378]);
  sub_22D01689C();
  v12 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
LABEL_9:
  v30[1] = v14;
  v20 = (v14 + 64) >> 6;
  if (v12 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v21 = v15;
    v22 = v16;
    v23 = v15;
    if (!v16)
    {
      break;
    }

LABEL_14:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v12 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
LABEL_20:
      sub_22CEE57FC(v12);
      return;
    }

    while (1)
    {
      sub_22CF3CE94(a1, a2);

      v15 = v23;
      v16 = v24;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v26 = sub_22D016BAC();
      if (v26)
      {
        v30[2] = v26;
        _s11SessionCore6ClientCMa_0();
        swift_dynamicCast();
        v25 = v31;
        v23 = v15;
        v24 = v16;
        if (v31)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_20;
    }

    v22 = *(v13 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22CF3CE94(uint64_t a1, unint64_t a2)
{
  v5 = sub_22D01637C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v23 - v12;
  if ([*(v2 + OBJC_IVAR____TtC11SessionCoreP33_353B8C47142C77ABAD422CF2B8B621406Client_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (*(&v25 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3100, &qword_22D01AD80);
    if (swift_dynamicCast())
    {
      v14 = v23[1];
      sub_22D01635C();

      v15 = sub_22D01636C();
      v16 = sub_22D01690C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v26[0] = v18;
        *v17 = 136446210;
        *(v17 + 4) = sub_22CEEE31C(a1, a2, v26);
        _os_log_impl(&dword_22CEE1000, v15, v16, "Asking client to dismiss alert: %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x2318C6860](v18, -1, -1);
        MEMORY[0x2318C6860](v17, -1, -1);
      }

      (*(v6 + 8))(v13, v5);
      v19 = sub_22D01666C();
      [v14 dismissAlertWithActivityIdentifier_];
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    sub_22CFAA9A8(v26);
  }

  sub_22D01635C();
  v20 = sub_22D01636C();
  v21 = sub_22D0168EC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22CEE1000, v20, v21, "Client does not implement expected interface", v22, 2u);
    MEMORY[0x2318C6860](v22, -1, -1);
  }

  (*(v6 + 8))(v10, v5);
}

unint64_t sub_22CF3D1BC()
{
  result = qword_28143F350;
  if (!qword_28143F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143F350);
  }

  return result;
}

uint64_t sub_22CF3D22C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
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

  return (a1)(a1);
}

void *sub_22CF3D558(uint64_t a1)
{
  type metadata accessor for ActivityDatabase.MutablePushSubscriptionStore();
  v2 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[2] = v2;
  type metadata accessor for ActivityDatabase.MutablePushTokenStore();
  v3 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[3] = v3;
  type metadata accessor for ActivityDatabase.MutablePublicTokenStore();
  v4 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[4] = v4;
  type metadata accessor for ActivityDatabase.MutablePushBudgetStore();
  v5 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[5] = v5;
  type metadata accessor for ActivityDatabase.MutableActivityStore();
  v6 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[6] = v6;
  type metadata accessor for ActivityDatabase.MutableSyncEngineRecordMetadataStore();
  v7 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[7] = v7;
  type metadata accessor for ActivityDatabase.MutableSyncEnginePairedDeviceIdentifierStore();
  v8 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[8] = v8;
  type metadata accessor for ActivityDatabase.MutableSyncEngineRecordIDSyncDateStore();
  v9 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[9] = v9;
  type metadata accessor for ActivityDatabase.MutableAssertionStore();
  v10 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1[10] = v10;
  return v1;
}

void sub_22CF3D950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = a5;
  v15[2] = a6;
  v16 = a1;
  v7 = sub_22D0144BC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v19 = sub_22D0144DC();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v13 = sub_22D01440C();

  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x46204554454C4544, 0xEC000000204D4F52);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2045524548570ALL, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](542329120, 0xE400000000000000);
  v18[3] = MEMORY[0x277D837D0];
  v18[4] = MEMORY[0x277D4D6C8];
  v18[0] = v16;
  v18[1] = a2;

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_22D016CFC();
    __break(1u);
    return;
  }

  v14 = v17;
  sub_22D01444C();
  if (v14)
  {
    (*(v9 + 8))(v12, v19);
  }

  else
  {

    (*(v9 + 8))(v12, v19);
  }
}

uint64_t sub_22CF3DC24()
{
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();

  return swift_weakAssign();
}

uint64_t sub_22CF3DCD4()
{
  sub_22CF3DD08();

  return swift_deallocClassInstance();
}

void *sub_22CF3DD08()
{

  return v0;
}

uint64_t sub_22CF3DD6C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_22CF3DDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v12 = sub_22D01659C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a2 + OBJC_IVAR____TtC11SessionCore18AlertServiceServer_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_22D0165BC();
  result = (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  result = swift_beginAccess();
  if (*(a3 + 16))
  {
    return result;
  }

  result = swift_beginAccess();
  v20 = *(a4 + 16);
  v21 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *(a4 + 16) = v21;
  if (!a1)
  {
    goto LABEL_7;
  }

  if ((a5 & 0xC000000000000001) != 0)
  {
    result = sub_22D016B7C();
    if (v21 != result)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = *(a5 + 16);
  if (v21 == result)
  {
LABEL_7:
    swift_beginAccess();
    *(a3 + 16) = 1;
    return a6(a1);
  }

  return result;
}

uint64_t sub_22CF3DFA8(uint64_t *a1, uint64_t a2)
{
  *(a2 + 24) = *a1;

  return sub_22CEF4520();
}

void sub_22CF3DFEC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_22D01415C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_22CF3E050(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3A28, &qword_22D01C3C8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  if (a1)
  {
    v8 = *MEMORY[0x277D4D408];
    v9 = sub_22D01520C();
    v10 = *(v9 - 8);
    (*(v10 + 104))(v7, v8, v9);
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  else
  {
    v11 = sub_22D01520C();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  a2(v7);
  return sub_22CEEC3D8(v7, &qword_27D9F3A28, &qword_22D01C3C8);
}

uint64_t sub_22CF3E1F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3E23C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3E284()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22CF3E2BC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2608, &qword_22D018B68) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_22D014B1C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF3E420()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3E458()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3E494()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3E4CC()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_22CF3E51C()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_22CF3E558()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22CF3E59C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22CF3E5E4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22CF3E66C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF3E6AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3E6E8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_22CF3E740@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_22CF3E784()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3E7C4()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_22CF3E814()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_22CF3E850()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3E89C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3E8D4()
{
  v1 = (type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_22D01436C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_22D01430C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF3EA0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3EA44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3EA80()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = sub_22D01486C();
    (*(*(v21 - 8) + 8))(v6, v21);
  }

  else if (!EnumCaseMultiPayload)
  {

    v8 = type metadata accessor for Activity(0);
    v9 = v8[5];
    v10 = sub_22D014E2C();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
    v11 = v8[6];
    v12 = sub_22D01502C();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);

    v13 = v8[10];
    v14 = sub_22D01430C();
    v15 = *(*(v14 - 8) + 8);
    v15(v6 + v13, v14);
    v15(v6 + v8[11], v14);

    v16 = v8[14];
    v17 = sub_22D0146BC();
    (*(*(v17 - 8) + 8))(v6 + v16, v17);
    v18 = v8[15];
    v19 = sub_22D01486C();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v6 + v18, 1, v19))
    {
      (*(v20 + 8))(v6 + v18, v19);
    }

    v3 = (v2 + 32) & ~v2;
  }

  v22 = v1[7];
  v23 = sub_22D01483C();
  (*(*(v23 - 8) + 8))(v5 + v22, v23);
  swift_unknownObjectRelease();
  v24 = v1[9];
  v25 = sub_22D0146BC();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v5 + v24, 1, v25))
  {
    (*(v26 + 8))(v5 + v24, v25);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF3EE58()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22CF3EEA0()
{
  v1 = sub_22D01436C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CF3EF78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01430C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22CF3EFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01430C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22CF3F054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D01436C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22D015A5C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22CF3F144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22D01436C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22D015A5C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22CF3F250()
{
  v1 = sub_22D01534C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CF3F314()
{
  v1 = type metadata accessor for Assertion(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = sub_22D01534C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_22D0154EC();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[6];
  v10 = sub_22D01539C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[8];
  v13 = sub_22D01430C();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);
  v14 = v1[10];
  v15 = sub_22D01555C();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF3F544()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF3F584()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3F5D4()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3F618()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = sub_22D01486C();
    (*(*(v21 - 8) + 8))(v6, v21);
  }

  else if (!EnumCaseMultiPayload)
  {

    v8 = type metadata accessor for Activity(0);
    v9 = v8[5];
    v10 = sub_22D014E2C();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
    v11 = v8[6];
    v12 = sub_22D01502C();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);

    v13 = v8[10];
    v14 = sub_22D01430C();
    v15 = *(*(v14 - 8) + 8);
    v15(v6 + v13, v14);
    v15(v6 + v8[11], v14);

    v16 = v8[14];
    v17 = sub_22D0146BC();
    (*(*(v17 - 8) + 8))(v6 + v16, v17);
    v18 = v8[15];
    v19 = sub_22D01486C();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v6 + v18, 1, v19))
    {
      (*(v20 + 8))(v6 + v18, v19);
    }

    v3 = (v2 + 32) & ~v2;
  }

  v22 = v1[7];
  v23 = sub_22D01483C();
  (*(*(v23 - 8) + 8))(v5 + v22, v23);
  swift_unknownObjectRelease();
  v24 = v1[9];
  v25 = sub_22D0146BC();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v5 + v24, 1, v25))
  {
    (*(v26 + 8))(v5 + v24, v25);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF3F9F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3FA28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3FA60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3FAAC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3FAE4()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = sub_22D01486C();
    (*(*(v21 - 8) + 8))(v6, v21);
  }

  else if (!EnumCaseMultiPayload)
  {

    v8 = type metadata accessor for Activity(0);
    v9 = v8[5];
    v10 = sub_22D014E2C();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
    v11 = v8[6];
    v12 = sub_22D01502C();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);

    v13 = v8[10];
    v14 = sub_22D01430C();
    v15 = *(*(v14 - 8) + 8);
    v15(v6 + v13, v14);
    v15(v6 + v8[11], v14);

    v16 = v8[14];
    v17 = sub_22D0146BC();
    (*(*(v17 - 8) + 8))(v6 + v16, v17);
    v18 = v8[15];
    v19 = sub_22D01486C();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v6 + v18, 1, v19))
    {
      (*(v20 + 8))(v6 + v18, v19);
    }

    v3 = (v2 + 32) & ~v2;
  }

  v22 = v1[7];
  v23 = sub_22D01483C();
  (*(*(v23 - 8) + 8))(v5 + v22, v23);
  swift_unknownObjectRelease();
  v24 = v1[9];
  v25 = sub_22D0146BC();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v5 + v24, 1, v25))
  {
    (*(v26 + 8))(v5 + v24, v25);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF3FEBC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3FEF4()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3FF2C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF3FF6C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22CF3FFB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3FFF4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF40034()
{
  v1 = sub_22D0161DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CF40108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D01502C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22CF401D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D01502C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22CF4028C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22CF402E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF40318()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = sub_22D01486C();
    (*(*(v21 - 8) + 8))(v6, v21);
  }

  else if (!EnumCaseMultiPayload)
  {

    v8 = type metadata accessor for Activity(0);
    v9 = v8[5];
    v10 = sub_22D014E2C();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
    v11 = v8[6];
    v12 = sub_22D01502C();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);

    v13 = v8[10];
    v14 = sub_22D01430C();
    v15 = *(*(v14 - 8) + 8);
    v15(v6 + v13, v14);
    v15(v6 + v8[11], v14);

    v16 = v8[14];
    v17 = sub_22D0146BC();
    (*(*(v17 - 8) + 8))(v6 + v16, v17);
    v18 = v8[15];
    v19 = sub_22D01486C();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v6 + v18, 1, v19))
    {
      (*(v20 + 8))(v6 + v18, v19);
    }

    v3 = (v2 + 32) & ~v2;
  }

  v22 = v1[7];
  v23 = sub_22D01483C();
  (*(*(v23 - 8) + 8))(v5 + v22, v23);
  swift_unknownObjectRelease();
  v24 = v1[9];
  v25 = sub_22D0146BC();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v5 + v24, 1, v25))
  {
    (*(v26 + 8))(v5 + v24, v25);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF406F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF40734()
{
  v1 = sub_22D0157AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_22D01430C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_22CF408CC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for ActivityParticipantEvent.EventType(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_22D01483C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_22CF40A44(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ActivityParticipantEvent.EventType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_22D01483C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_22CF40BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Activity(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22CF40C78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Activity(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22CF40D30()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF40D68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF40DC4()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = sub_22D01486C();
    (*(*(v21 - 8) + 8))(v6, v21);
  }

  else if (!EnumCaseMultiPayload)
  {

    v8 = type metadata accessor for Activity(0);
    v9 = v8[5];
    v10 = sub_22D014E2C();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
    v11 = v8[6];
    v12 = sub_22D01502C();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);

    v13 = v8[10];
    v14 = sub_22D01430C();
    v15 = *(*(v14 - 8) + 8);
    v15(v6 + v13, v14);
    v15(v6 + v8[11], v14);

    v16 = v8[14];
    v17 = sub_22D0146BC();
    (*(*(v17 - 8) + 8))(v6 + v16, v17);
    v18 = v8[15];
    v19 = sub_22D01486C();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v6 + v18, 1, v19))
    {
      (*(v20 + 8))(v6 + v18, v19);
    }

    v3 = (v2 + 32) & ~v2;
  }

  v22 = v1[7];
  v23 = sub_22D01483C();
  (*(*(v23 - 8) + 8))(v5 + v22, v23);
  swift_unknownObjectRelease();
  v24 = v1[9];
  v25 = sub_22D0146BC();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v5 + v24, 1, v25))
  {
    (*(v26 + 8))(v5 + v24, v25);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF411A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF411EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22CF41224()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF4125C()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF412A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF41438(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01430C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22CF414A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01430C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22CF41514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D01502C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2358, &unk_22D018980);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22CF41644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D01502C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2358, &unk_22D018980);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22CF41774()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_22CF417C4()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF417FC()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_22CF41838()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF41878()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_22CF418C8()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_22CF41904()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = sub_22D01486C();
    (*(*(v21 - 8) + 8))(v6, v21);
  }

  else if (!EnumCaseMultiPayload)
  {

    v8 = type metadata accessor for Activity(0);
    v9 = v8[5];
    v10 = sub_22D014E2C();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
    v11 = v8[6];
    v12 = sub_22D01502C();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);

    v13 = v8[10];
    v14 = sub_22D01430C();
    v15 = *(*(v14 - 8) + 8);
    v15(v6 + v13, v14);
    v15(v6 + v8[11], v14);

    v16 = v8[14];
    v17 = sub_22D0146BC();
    (*(*(v17 - 8) + 8))(v6 + v16, v17);
    v18 = v8[15];
    v19 = sub_22D01486C();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v6 + v18, 1, v19))
    {
      (*(v20 + 8))(v6 + v18, v19);
    }

    v3 = (v2 + 32) & ~v2;
  }

  v22 = v1[7];
  v23 = sub_22D01483C();
  (*(*(v23 - 8) + 8))(v5 + v22, v23);
  swift_unknownObjectRelease();
  v24 = v1[9];
  v25 = sub_22D0146BC();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v5 + v24, 1, v25))
  {
    (*(v26 + 8))(v5 + v24, v25);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF41CDC()
{
  v1 = sub_22D015FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CF41DA0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF41DE0()
{
  v1 = sub_22D0162BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CF41EA4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF41EF4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22CF41F34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF41F74()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF41FC0()
{
  v1 = sub_22D0161DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CF42094()
{
  v1 = sub_22D015C8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22CF42170()
{
  v1 = sub_22D015C8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_22CF42284(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014ABC();
  sub_22D016A3C();
  (*(v5 + 8))(v8, v4);
  sub_22D014AAC();
  v9 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CF423B0(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_2814444B0);
    v9 = sub_22D01636C();
    v10 = sub_22D01690C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, a4, v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }

    v12 = *(*&v7[OBJC_IVAR____TtC11SessionCore11InputServer_lock] + 16);
    os_unfair_lock_lock(v12);
    swift_beginAccess();
    v13 = sub_22CF60870(a3);
    swift_endAccess();

    os_unfair_lock_unlock(v12);
  }
}

id sub_22CF42550()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InputServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22CF42634()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC11SessionCore11InputServer_lock) + 16);
  os_unfair_lock_lock(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = 0x73746E65696C63;
  *(inited + 40) = 0xE700000000000000;
  swift_beginAccess();

  sub_22CF427DC(v3);
  v5 = v4;

  if (*(v5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
    v6 = sub_22D016D3C();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v11 = v6;

  sub_22CF43CD4(v7, 1, &v11);

  v8 = v11;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2020, &unk_22D01B140);
  *(inited + 48) = v8;
  v9 = sub_22CF11C44(inited);
  swift_setDeallocating();
  sub_22CEEC3D8(inited + 32, &qword_27D9F3460, &unk_22D0188B0);
  os_unfair_lock_unlock(v1);
  return v9;
}

void sub_22CF427DC(uint64_t a1)
{
  v1 = a1;
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22D016B7C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v52 = MEMORY[0x277D84F90];
    sub_22CF440C8(0, v2 & ~(v2 >> 63), 0);
    v3 = v52;
    if (v43)
    {
      v4 = sub_22D016B2C();
    }

    else
    {
      v4 = sub_22D016AEC();
      v5 = *(v1 + 36);
    }

    v49 = v4;
    v50 = v5;
    v51 = v43 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v40 = v1 + 56;
      v39 = v1 + 64;
      v41 = v2;
      v42 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v49;
        v44 = v50;
        v45 = v51;
        sub_22CF44AF8(v49, v50, v51, v1);
        v11 = v10;
        v12 = [*&v10[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection] remoteProcess];
        v13 = [v12 pid];

        v14 = sub_22D014F9C();
        v16 = v15;
        v48 = v13;
        v46 = sub_22D016DEC();
        v47 = v17;
        MEMORY[0x2318C5860](8250, 0xE200000000000000);
        MEMORY[0x2318C5860](v14, v16);

        MEMORY[0x2318C5860](58, 0xE100000000000000);
        v18 = sub_22D01432C();
        MEMORY[0x2318C5860](v18);

        v20 = v46;
        v19 = v47;
        v21 = [v11 description];
        v22 = sub_22D01667C();
        v24 = v23;

        v25 = v3;
        v52 = v3;
        v26 = *(v3 + 16);
        v27 = *(v25 + 24);
        if (v26 >= v27 >> 1)
        {
          sub_22CF440C8((v27 > 1), v26 + 1, 1);
          v25 = v52;
        }

        *(v25 + 16) = v26 + 1;
        v28 = (v25 + 32 * v26);
        v28[4] = v20;
        v28[5] = v19;
        v28[6] = v22;
        v28[7] = v24;
        if (v43)
        {
          v1 = v42;
          if (!v45)
          {
            goto LABEL_40;
          }

          v3 = v25;
          if (sub_22D016B4C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2038, &qword_22D0188C0);
          v7 = sub_22D01688C();
          sub_22D016BCC();
          v7(&v46, 0);
          if (v6 == v41)
          {
LABEL_32:
            sub_22CF44CF8(v49, v50, v51);
            return;
          }
        }

        else
        {
          v1 = v42;
          if (v45)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v29 = 1 << *(v42 + 32);
          if (v9 >= v29)
          {
            goto LABEL_36;
          }

          v3 = v25;
          v30 = v9 >> 6;
          v31 = *(v40 + 8 * (v9 >> 6));
          if (((v31 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v42 + 36) != v44)
          {
            goto LABEL_38;
          }

          v32 = v31 & (-2 << (v9 & 0x3F));
          if (v32)
          {
            v29 = __clz(__rbit64(v32)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v33 = v30 << 6;
            v34 = v30 + 1;
            v35 = (v39 + 8 * v30);
            while (v34 < (v29 + 63) >> 6)
            {
              v37 = *v35++;
              v36 = v37;
              v33 += 64;
              ++v34;
              if (v37)
              {
                sub_22CF44CF8(v9, v44, 0);
                v29 = __clz(__rbit64(v36)) + v33;
                goto LABEL_31;
              }
            }

            sub_22CF44CF8(v9, v44, 0);
          }

LABEL_31:
          v38 = *(v42 + 36);
          v49 = v29;
          v50 = v38;
          v51 = 0;
          v2 = v41;
          if (v6 == v41)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_22CF42C44()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection) remoteProcess];
  [v1 pid];

  v2 = sub_22D014F9C();
  v4 = v3;
  v6 = sub_22D016DEC();
  MEMORY[0x2318C5860](8250, 0xE200000000000000);
  MEMORY[0x2318C5860](v2, v4);

  return v6;
}

uint64_t sub_22CF42D74()
{
  v1 = v0;
  v2 = type metadata accessor for DefaultInputBackoffBudget(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_22D016C6C();
  v12 = v10;
  v13 = v11;
  MEMORY[0x2318C5860](0x696669746E656469, 0xEC000000203A7265);
  v6 = sub_22CF42C44();
  MEMORY[0x2318C5860](v6);

  MEMORY[0x2318C5860](0xD000000000000011, 0x800000022D01DAE0);
  v7 = OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_backoffBudget;
  swift_beginAccess();
  sub_22CEFE9C8(v1 + v7, v5, type metadata accessor for DefaultInputBackoffBudget);
  sub_22D016CEC();
  sub_22CEFD694(v5, type metadata accessor for DefaultInputBackoffBudget);
  return v12;
}

id sub_22CF42EEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v30 - v4;
  v6 = sub_22D01495C();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v38 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01486C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01483C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_requester;
  v20 = sub_22D01502C();
  (*(*(v20 - 8) + 16))(v18, &v1[v19], v20);
  (*(v15 + 104))(v18, *MEMORY[0x277CB9348], v14);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  v35 = v13;
  v36 = v14;
  v37 = v10;
  v21 = OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_ephemeralActivityIdentifiers;
  swift_beginAccess();
  v22 = *&v1[v21];
  v23 = *(v22 + 16);
  if (!v23)
  {
    v26 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v31 = v9;
  v32 = v5;
  v33 = v1;
  v30 = sub_22CEE561C(v23, 0);
  v34 = sub_22CEE56A4(&v40, v30 + 4, v23, v22);
  v24 = v40;

  result = sub_22CEE57FC(v24);
  if (v34 == v23)
  {
    v5 = v32;
    v1 = v33;
    v26 = v30;
    v9 = v31;
LABEL_6:
    sub_22D01494C();
    v27 = v35;
    sub_22D01485C();
    v28 = sub_22D0146BC();
    (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
    sub_22CF31C20(v26, v18, v27, v5);
    swift_unknownObjectRelease();

    sub_22CEEC3D8(v5, &qword_27D9F22F8, &unk_22D018940);
    (*(v37 + 8))(v27, v9);
    v14 = v36;
LABEL_7:
    (*(v15 + 8))(v18, v14);
    v29 = type metadata accessor for Client(0);
    v39.receiver = v1;
    v39.super_class = v29;
    return objc_msgSendSuper2(&v39, sel_dealloc);
  }

  __break(1u);
  return result;
}

void sub_22CF43634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22D01415C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_22CF43814(void *a1)
{
  if (qword_28143FB60 != -1)
  {
    swift_once();
  }

  v2 = sub_22D01637C();
  __swift_project_value_buffer(v2, qword_2814444B0);
  v3 = a1;
  v4 = sub_22D01636C();
  v5 = sub_22D0168EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    sub_22D01502C();
    sub_22CEE83DC(&qword_281443988, MEMORY[0x277CB9810], MEMORY[0x277CB9830]);
    v8 = sub_22D016DEC();
    v10 = sub_22CEEE31C(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22CEE1000, v4, v5, "Client %{public}s is out of timeout", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x2318C6860](v7, -1, -1);
    MEMORY[0x2318C6860](v6, -1, -1);
  }

  v11 = *&v3[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_queue];

  dispatch_resume(v11);
}

uint64_t sub_22CF43A6C(uint64_t a1)
{
  result = sub_22D01502C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DefaultInputBackoffBudget(319);
    if (v3 <= 0x3F)
    {
      result = sub_22D01436C();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_22CF43BC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22CF43BE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
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

BOOL sub_22CF43C7C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void sub_22CF43CD4(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_22CEEC698(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_22CFB962C(v15, v4 & 1);
    v10 = sub_22CEEC698(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_22D016E1C();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_22CFB67E8();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22D016C6C();
    MEMORY[0x2318C5860](0xD00000000000001BLL, 0x800000022D01D9D0);
    sub_22D016CEC();
    MEMORY[0x2318C5860](39, 0xE100000000000000);
    sub_22D016CFC();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_22CEEC698(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_22CFB962C(v32, 1);
        v28 = sub_22CEEC698(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v26;
      v36[1] = v8;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *sub_22CF44084(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F20C0, &qword_22D0188E8, type metadata accessor for Assertion);
  *v3 = result;
  return result;
}

void *sub_22CF440C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF44478(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22CF440E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F2290, &qword_22D018938, MEMORY[0x277CB9350]);
  *v3 = result;
  return result;
}

char *sub_22CF4412C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF445AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22CF4414C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF446B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22CF4416C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F20B0, &qword_22D0188D8, MEMORY[0x277CB9780]);
  *v3 = result;
  return result;
}

void *sub_22CF441B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F2158, &qword_22D018920, MEMORY[0x277D4D450]);
  *v3 = result;
  return result;
}

void *sub_22CF441F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F20B8, &qword_22D0188E0, MEMORY[0x277CB9308]);
  *v3 = result;
  return result;
}

void *sub_22CF44238(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &unk_27D9F20D0, &qword_22D0188F8, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
  *v3 = result;
  return result;
}

void *sub_22CF4427C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F23E8, &unk_22D0189B0, MEMORY[0x277D46790]);
  *v3 = result;
  return result;
}

void *sub_22CF442C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F20C8, &qword_22D0188F0, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_22CF44304(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF44800(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22CF44324(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F23F0, &unk_22D0196D0, type metadata accessor for Activity);
  *v3 = result;
  return result;
}

void *sub_22CF44368(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F2288, &qword_22D018930, MEMORY[0x277D4D570]);
  *v3 = result;
  return result;
}

void *sub_22CF443AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F20E8, &qword_22D018910, MEMORY[0x277CB9648]);
  *v3 = result;
  return result;
}

void *sub_22CF443F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F20F0, &qword_22D018918, MEMORY[0x277CB9640]);
  *v3 = result;
  return result;
}

void *sub_22CF44434(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F2220, &qword_22D018928, MEMORY[0x277CB92E0]);
  *v3 = result;
  return result;
}

void *sub_22CF44478(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2040, &qword_22D0188C8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2048, &qword_22D0188D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22CF445AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
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

void *sub_22CF446B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22CF44800(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F20E0, &qword_22D018908);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22CF4491C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void sub_22CF44AF8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2318C5D00](a1, a2, v7);
      type metadata accessor for Client(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for Client(0);
    if (sub_22D016B5C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22D016B6C();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_22D016A5C();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_22D016A6C();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_22CF44CF8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_22CF44D04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, void (*a12)(void *, void *), uint64_t a13)
{
  v139 = a8;
  v135 = a3;
  v136 = a7;
  v146 = a6;
  v147 = a2;
  v142 = a1;
  v143 = a5;
  v141 = a4;
  v150 = a13;
  v151 = a12;
  v13 = sub_22D014F4C();
  v152 = *(v13 - 8);
  v153 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v149 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D0161DC();
  v144 = *(v16 - 8);
  v145 = v16;
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v131 - v22;
  v24 = sub_22D01603C();
  v137 = *(v24 - 8);
  v138 = v24;
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v131 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v140 = &v131 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2368, &unk_22D018990);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v131 - v37;
  v39 = sub_22D0162DC();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v41);
  v148 = (&v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = a11;
  v43 = [*(a11 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection) remoteProcess];
  v44 = sub_22D01666C();
  v45 = [v43 hasEntitlement_];

  if (!v45)
  {
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v62 = sub_22D01637C();
    __swift_project_value_buffer(v62, qword_2814444B0);
    v63 = sub_22D01636C();
    v64 = sub_22D0168EC();
    v65 = os_log_type_enabled(v63, v64);
    v67 = v152;
    v66 = v153;
    if (v65)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v154[0] = v69;
      *v68 = 136315138;
      v70 = *MEMORY[0x277CB97C8];
      v71 = v149;
      (*(v67 + 104))(v149, v70, v66);
      v72 = sub_22D014F3C();
      v74 = v73;
      (*(v67 + 8))(v71, v66);
      v75 = sub_22CEEE31C(v72, v74, v154);

      *(v68 + 4) = v75;
      _os_log_impl(&dword_22CEE1000, v63, v64, "%s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x2318C6860](v69, -1, -1);
      MEMORY[0x2318C6860](v68, -1, -1);
    }

    else
    {

      v70 = *MEMORY[0x277CB97C8];
    }

    sub_22CEE83DC(&unk_27D9F2370, MEMORY[0x277CB97E8], MEMORY[0x277CB97F0]);
    v80 = swift_allocError();
    (*(v67 + 104))(v81, v70, v66);
    goto LABEL_18;
  }

  [a10 integerValue];
  sub_22D0162CC();
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_22CEEC3D8(v38, &qword_27D9F2368, &unk_22D018990);
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v46 = sub_22D01637C();
    __swift_project_value_buffer(v46, qword_2814444B0);
    v47 = a10;
    v48 = sub_22D01636C();
    v49 = sub_22D0168EC();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v153;
    if (v50)
    {
      v52 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v154[0] = v148;
      *v52 = 136315394;
      v53 = *MEMORY[0x277CB97D8];
      v54 = v152;
      v55 = v149;
      (*(v152 + 104))(v149, v53, v51);
      v56 = sub_22D014F3C();
      v58 = v57;
      (*(v54 + 8))(v55, v51);
      v59 = sub_22CEEE31C(v56, v58, v154);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2048;
      v60 = [v47 integerValue];

      *(v52 + 14) = v60;
      _os_log_impl(&dword_22CEE1000, v48, v49, "%s. Value: %ld", v52, 0x16u);
      v61 = v148;
      __swift_destroy_boxed_opaque_existential_1Tm(v148);
      MEMORY[0x2318C6860](v61, -1, -1);
      MEMORY[0x2318C6860](v52, -1, -1);
    }

    else
    {

      v53 = *MEMORY[0x277CB97D8];
      v54 = v152;
    }

    sub_22CEE83DC(&unk_27D9F2370, MEMORY[0x277CB97E8], MEMORY[0x277CB97F0]);
    v80 = swift_allocError();
    (*(v54 + 104))(v82, v53, v51);
LABEL_18:
    sub_22CEE82F8(0, &qword_27D9F3FC0, 0x277CCABB0);
    v83 = sub_22D016A4C();
    v151(v83, v80);

    return;
  }

  v76 = v148;
  (*(v40 + 32))(v148, v38, v39);
  v77 = v147;
  v133 = v39;
  v132 = v40;
  if (v147 >> 60 == 15)
  {
    v78 = v76;
    v79 = v152;
    if (!v141)
    {
      if (qword_28143FB60 != -1)
      {
        swift_once();
      }

      v85 = sub_22D01637C();
      __swift_project_value_buffer(v85, qword_2814444B0);

      v86 = sub_22D01636C();
      v87 = sub_22D0168EC();

      v88 = os_log_type_enabled(v86, v87);
      v89 = v153;
      if (v88)
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v92 = v79;
        v93 = swift_slowAlloc();
        v154[0] = v93;
        *v90 = 138412546;
        sub_22CEE83DC(&unk_27D9F2370, MEMORY[0x277CB97E8], MEMORY[0x277CB97F0]);
        swift_allocError();
        v94 = *MEMORY[0x277CB97E0];
        (*(v92 + 104))(v95, v94, v89);
        v96 = _swift_stdlib_bridgeErrorToNSError();
        *(v90 + 4) = v96;
        *v91 = v96;
        *(v90 + 12) = 2080;
        v97 = sub_22D0165FC();
        v99 = sub_22CEEE31C(v97, v98, v154);
        v78 = v148;

        *(v90 + 14) = v99;
        _os_log_impl(&dword_22CEE1000, v86, v87, "%@\n%s", v90, 0x16u);
        sub_22CEEC3D8(v91, &qword_27D9F2380, &unk_22D019C50);
        MEMORY[0x2318C6860](v91, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        v100 = v93;
        v79 = v92;
        MEMORY[0x2318C6860](v100, -1, -1);
        MEMORY[0x2318C6860](v90, -1, -1);
      }

      else
      {

        v94 = *MEMORY[0x277CB97E0];
      }

      sub_22CEE83DC(&unk_27D9F2370, MEMORY[0x277CB97E8], MEMORY[0x277CB97F0]);
      v125 = swift_allocError();
      (*(v79 + 104))(v126, v94, v89);
      sub_22CEE82F8(0, &qword_27D9F3FC0, 0x277CCABB0);
      v127 = sub_22D016A4C();
      v151(v127, v125);

      goto LABEL_34;
    }

    sub_22D0160AC();

    sub_22D0161EC();
    sub_22D01609C();
    (*(v144 + 8))(v20, v145);
    v32 = v28;
    v101 = v153;
  }

  else
  {
    sub_22D0160AC();
    v84 = v142;
    sub_22CF460B8(v142, v77);

    sub_22D0161EC();
    sub_22CEEC970(v84, v77);
    sub_22D01609C();
    (*(v144 + 8))(v23, v145);
    sub_22CEEEF0C(v84, v77);
    sub_22CEEEF0C(v84, v77);
    v101 = v153;
    v78 = v76;
  }

  v103 = v137;
  v102 = v138;
  v104 = v140;
  (*(v137 + 32))(v140, v32, v138);
  v105 = *(v134 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_pushServer);
  swift_getObjectType();
  v154[0] = v105;
  swift_unknownObjectRetain();
  v106 = sub_22D015A6C();
  swift_unknownObjectRelease();
  if (v106)
  {
    sub_22D015D3C();
    sub_22CEE82F8(0, &qword_27D9F3FC0, 0x277CCABB0);
    v107 = sub_22D016A4C();
    v151(v107, 0);
    swift_unknownObjectRelease();

    (*(v103 + 8))(v104, v102);
  }

  else
  {
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v108 = v101;
    v109 = sub_22D01637C();
    __swift_project_value_buffer(v109, qword_2814444B0);
    v110 = v139;

    v111 = sub_22D01636C();
    v112 = sub_22D0168EC();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v154[0] = v153;
      *v113 = 136315394;
      v114 = *MEMORY[0x277CB97D0];
      v115 = v152;
      v116 = v149;
      (*(v152 + 104))(v149, v114, v108);
      v117 = sub_22D014F3C();
      v119 = v118;
      v120 = v116;
      v103 = v137;
      (*(v115 + 8))(v120, v108);
      v121 = sub_22CEEE31C(v117, v119, v154);
      v78 = v148;

      *(v113 + 4) = v121;
      v122 = v114;
      *(v113 + 12) = 2080;
      *(v113 + 14) = sub_22CEEE31C(v136, v110, v154);
      _os_log_impl(&dword_22CEE1000, v111, v112, "%s: %s", v113, 0x16u);
      v123 = v153;
      swift_arrayDestroy();
      v102 = v138;
      MEMORY[0x2318C6860](v123, -1, -1);
      MEMORY[0x2318C6860](v113, -1, -1);

      v124 = v140;
    }

    else
    {

      v122 = *MEMORY[0x277CB97D0];
      v124 = v140;
      v115 = v152;
    }

    sub_22CEE83DC(&unk_27D9F2370, MEMORY[0x277CB97E8], MEMORY[0x277CB97F0]);
    v128 = swift_allocError();
    (*(v115 + 104))(v129, v122, v108);
    sub_22CEE82F8(0, &qword_27D9F3FC0, 0x277CCABB0);
    v130 = sub_22D016A4C();
    v151(v130, v128);

    (*(v103 + 8))(v124, v102);
  }

LABEL_34:
  (*(v132 + 8))(v78, v133);
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

uint64_t sub_22CF460B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22CEEC970(result, a2);
  }

  return result;
}

uint64_t objectdestroy_64Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22CF46190(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22CF46264()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
    sub_22CEE8394(&qword_28143D998, &unk_27D9F3470, &qword_22D018BA0, MEMORY[0x277CBCE20]);
    v1 = sub_22D01646C();
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t sub_22CF46328()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2670, &qword_22D018BE8);
    sub_22CEE8394(&qword_28143D9A8, &qword_27D9F2670, &qword_22D018BE8, MEMORY[0x277CBCE20]);
    v1 = sub_22D01646C();
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_22CF463EC()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2670, &qword_22D018BE8);
    sub_22CEE8394(&qword_28143D9A8, &qword_27D9F2670, &qword_22D018BE8, MEMORY[0x277CBCE20]);
    v1 = sub_22D01646C();
    *(v0 + 144) = v1;
  }

  return v1;
}

uint64_t sub_22CF464B0()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2668, &qword_22D018BE0);
    sub_22CEE8394(&qword_28143D9B0, &qword_27D9F2668, &qword_22D018BE0, MEMORY[0x277CBCE20]);
    v1 = sub_22D01646C();
    *(v0 + 152) = v1;
  }

  return v1;
}

double sub_22CF46574(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CF49A68(0, v2);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CF49A68(1, v2);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CF4A1E8(v2);
  }

  return result;
}

void sub_22CF4664C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 88);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_22D016B3C();
    sub_22D01640C();
    sub_22CF4D918(&qword_27D9F2678, 255, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    sub_22D01689C();
    v4 = v18;
    v3 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    swift_bridgeObjectRetain_n();
    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_22CEE57FC(v4);

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));

      return;
    }

    while (1)
    {
      sub_22D0163FC();

      v6 = v14;
      v7 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22D016BAC())
      {
        sub_22D01640C();
        swift_dynamicCast();
        v14 = v6;
        v15 = v7;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_22CF468E4()
{
  sub_22CF4664C();

  return swift_deallocClassInstance();
}

uint64_t sub_22CF46918@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, _BYTE *a4@<X8>)
{
  result = sub_22CF49914(a1, a2, a3 & 1);
  *a4 = result & 1;
  return result;
}

void sub_22CF46968(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2608, &qword_22D018B68);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = aBlock - v12;
  v14 = *(v4 + 72);
  sub_22CF4D234(a4, aBlock - v12);
  v15 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  sub_22CF4D830(v13, v16 + v15);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22CF4D8A0;
  *(v17 + 24) = v16;
  aBlock[4] = sub_22CEF3C48;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF3C20;
  aBlock[3] = &block_descriptor_104;
  v18 = _Block_copy(aBlock);

  dispatch_sync(v14, v18);
  _Block_release(v18);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }
}

uint64_t sub_22CF46BB4@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = sub_22CF48880(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22CF46C2C@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = sub_22CF496A4(a1, a2);
  *a3 = result & 1;
  return result;
}

BOOL sub_22CF46C74()
{
  v0 = sub_22D0143AC();
  v39 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D0140DC();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v34 - v9;
  v11 = sub_22D01430C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v34 - v18;
  v20 = [objc_opt_self() standardUserDefaults];
  v21 = sub_22D01666C();
  v22 = [v20 objectForKey_];

  if (v22)
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  if (!*(&v41 + 1))
  {
    sub_22CEEC3D8(v42, &qword_27D9F2B10, &unk_22D01B930);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_9;
  }

  v23 = swift_dynamicCast();
  (*(v12 + 56))(v10, v23 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_9:
    sub_22CEEC3D8(v10, &qword_27D9F2648, &unk_22D018BC0);
    return 1;
  }

  (*(v12 + 32))(v19, v10, v11);
  sub_22D01438C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2650, &qword_22D018BD0);
  v24 = sub_22D01439C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 80);
  v35 = v0;
  v27 = (v26 + 32) & ~v26;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_22D0187A0;
  (*(v25 + 104))(v28 + v27, *MEMORY[0x277CC9980], v24);
  sub_22CF4D4B0(v28);
  swift_setDeallocating();
  (*(v25 + 8))(v28 + v27, v24);
  swift_deallocClassInstance();
  sub_22D0142FC();
  v29 = v36;
  sub_22D01437C();

  v30 = *(v12 + 8);
  v30(v16, v11);
  (*(v39 + 8))(v3, v35);
  v31 = sub_22D0140CC();
  LOBYTE(v24) = v32;
  (*(v37 + 8))(v29, v38);
  v30(v19, v11);
  return (v24 & 1) == 0 && v31 > 24;
}

void sub_22CF471B4()
{
  v1 = sub_22D01430C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22CF46C74();
  if (v6)
  {
    v29 = v5;
    v30 = v2;
    v31 = v1;
    MEMORY[0x28223BE20](v6, v7);
    v32 = v0;
    *(&v29 - 2) = v0;
    *(&v29 - 8) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F25F0, &qword_22D018B48);
    sub_22D01699C();
    v8 = 0;
    v9 = aBlock[0];
    v10 = aBlock[0] + 64;
    v11 = 1 << *(aBlock[0] + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(aBlock[0] + 64);
    v14 = (v11 + 63) >> 6;
    v33 = "@NSDictionary8@?0";
    while (v13)
    {
      v15 = v8;
LABEL_10:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = v16 | (v15 << 6);
      v18 = (*(v9 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = *(*(v9 + 56) + v17);
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v22 + 24) = v19;
      *(v22 + 32) = v21;

      v23 = sub_22D01666C();
      aBlock[4] = sub_22CF4D480;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22CF47510;
      aBlock[3] = &block_descriptor_95;
      v24 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v24);
    }

    while (1)
    {
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v15 >= v14)
      {

        v25 = [objc_opt_self() standardUserDefaults];
        v26 = v29;
        sub_22D0142FC();
        v27 = sub_22D01426C();
        (*(v30 + 8))(v26, v31);
        v28 = sub_22D01666C();
        [v25 setObject:v27 forKey:v28];

        return;
      }

      v13 = *(v10 + 8 * v15);
      ++v8;
      if (v13)
      {
        v8 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

id sub_22CF47510(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_22CF4D3D4();
    v4 = sub_22D0165CC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_22CF4759C(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v32 = a3;
  v9 = sub_22D0164CC();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D01653C();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D01659C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = (&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v5 + 72);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v23 = v22;
  LOBYTE(v22) = sub_22D0165BC();
  (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v24 = sub_22CF4ACD8(a1 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v24;
    sub_22CFBE8B0(a4 & 1, a2, v32, isUniquelyReferenced_nonNull_native);
    sub_22CF4AB18(a1 & 1, aBlock[0]);

    if (a1)
    {
      aBlock[4] = sub_22CF4D420;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22CEF8B58;
      aBlock[3] = &block_descriptor_89;
      v26 = _Block_copy(aBlock);

      sub_22D0164EC();
      v33 = MEMORY[0x277D84F90];
      sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
      sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, MEMORY[0x277D83970]);
      v27 = v31;
      sub_22D016ADC();
      MEMORY[0x2318C5B10](0, v16, v12, v26);
      _Block_release(v26);
      (*(v30 + 8))(v12, v27);
      (*(v28 + 8))(v16, v29);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22CF4798C(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D01659C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 72);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_22D0165BC();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
    inited = swift_initStackObject();
    v16 = xmmword_22D0187A0;
    *(inited + 16) = xmmword_22D0187A0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    sub_22CF49A68(0, inited);
    swift_setDeallocating();
    sub_22CEE5804(inited + 32);
    v14 = swift_initStackObject();
    *(v14 + 16) = v16;
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;

    sub_22CF49A68(1, v14);
    swift_setDeallocating();
    sub_22CEE5804(v14 + 32);
    v15 = swift_initStackObject();
    *(v15 + 16) = v16;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    sub_22CF4A1E8(v15);
    swift_setDeallocating();
    return sub_22CEE5804(v15 + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF47B98(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v83 = a4;
  v86 = a2;
  v84 = a1;
  v6 = sub_22D0164CC();
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22D01653C();
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v78 = &v72[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_22D01659C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v72[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = v4;
  v18 = *(v4 + 72);
  *v17 = v18;
  v19 = *MEMORY[0x277D85200];
  v20 = *(v14 + 104);
  v20(v17, v19, v13);
  v77 = v18;
  LOBYTE(v18) = sub_22D0165BC();
  v21 = *(v14 + 8);
  v21(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_11;
  }

  sub_22D014C7C();
  result = MEMORY[0x2318C3DC0]();
  if ((result & 1) == 0)
  {
    return result;
  }

  v76 = v9;
  v23 = sub_22CF4ACD8(0);
  v24 = *(v23 + 16);
  v85 = v23;
  if (v24)
  {
    v25 = sub_22CEEC698(v86, a3);
    if (v26)
    {
      if (*(*(v85 + 56) + v25) == (v84 & 1))
      {
        v50 = a3;
        v51 = v86;
      }

      else
      {
        if (qword_28143DAB8 != -1)
        {
          swift_once();
        }

        v27 = sub_22D01637C();
        __swift_project_value_buffer(v27, qword_281444338);

        v28 = sub_22D01636C();
        v29 = sub_22D01690C();
        v75 = a3;

        v73 = v29;
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v74 = v28;
          v31 = v30;
          v32 = swift_slowAlloc();
          aBlock = v32;
          *v31 = 136446466;
          *(v31 + 4) = sub_22CEEE31C(v86, v75, &aBlock);
          *(v31 + 12) = 1026;
          v33 = v84;
          *(v31 + 14) = v84 & 1;
          _os_log_impl(&dword_22CEE1000, v74, v73, "Activity authorization for bundleid: %{public}s changed to: %{BOOL,public}d", v31, 0x12u);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
          MEMORY[0x2318C6860](v32, -1, -1);
          MEMORY[0x2318C6860](v31, -1, -1);

          v34 = v85;
        }

        else
        {

          v34 = v85;
          v33 = v84;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v34;
        v84 = v33 & 1;
        sub_22CFBE8B0(v33 & 1, v86, v75, isUniquelyReferenced_nonNull_native);
        v53 = aBlock;
        v54 = v77;
        *v17 = v77;
        v20(v17, v19, v13);
        v55 = v54;
        v56 = sub_22D0165BC();
        result = (v21)(v17, v13);
        if ((v56 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        v57 = [objc_opt_self() standardUserDefaults];
        v58 = sub_22D0165CC();
        v59 = sub_22D01666C();
        [v57 setValue:v58 forKey:v59];

        v60 = v87;
        v74 = *(v87 + 80);
        v61 = swift_allocObject();
        v85 = v53;
        v62 = v86;
        *(v61 + 16) = v60;
        *(v61 + 24) = v62;
        v63 = v75;
        *(v61 + 32) = v75;
        v64 = v84;
        *(v61 + 40) = v84;
        v93 = sub_22CF4D380;
        v94 = v61;
        aBlock = MEMORY[0x277D85DD0];
        v90 = 1107296256;
        v77 = &v91;
        v91 = sub_22CEF8B58;
        v92 = &block_descriptor_80;
        v65 = _Block_copy(&aBlock);

        v66 = v78;
        sub_22D0164EC();
        v88 = MEMORY[0x277D84F90];
        sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
        sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, MEMORY[0x277D83970]);
        v67 = v76;
        v68 = v82;
        sub_22D016ADC();
        MEMORY[0x2318C5B10](0, v66, v67, v65);
        _Block_release(v65);
        (*(v81 + 8))(v67, v68);
        (*(v79 + 8))(v66, v80);

        v69 = swift_allocObject();
        *(v69 + 16) = v62;
        *(v69 + 24) = v63;
        *(v69 + 32) = v64;

        v70 = sub_22D01666C();
        v93 = sub_22CF4D3A4;
        v94 = v69;
        aBlock = MEMORY[0x277D85DD0];
        v90 = 1107296256;
        v91 = sub_22CF47510;
        v92 = &block_descriptor_86;
        v71 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v71);

        v51 = v62;
        v50 = v63;
      }

      sub_22CF4B128(v51, v50, v83);
    }
  }

  if (qword_28143DAB8 != -1)
  {
    goto LABEL_22;
  }

LABEL_11:
  v35 = sub_22D01637C();
  __swift_project_value_buffer(v35, qword_281444338);
  v36 = a3;

  v37 = sub_22D01636C();
  v38 = sub_22D01690C();

  v39 = os_log_type_enabled(v37, v38);
  v41 = v86;
  v40 = v87;
  v42 = v84;
  if (v39)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock = v44;
    *v43 = 136446466;
    *(v43 + 4) = sub_22CEEE31C(v41, v36, &aBlock);
    *(v43 + 12) = 1026;
    *(v43 + 14) = v42 & 1;
    _os_log_impl(&dword_22CEE1000, v37, v38, "Activity authorization for bundleid: %{public}s changed to: %{BOOL,public}d", v43, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x2318C6860](v44, -1, -1);
    MEMORY[0x2318C6860](v43, -1, -1);
  }

  sub_22CF4759C(0, v41, v36, v42 & 1);
  v45 = swift_allocObject();
  *(v45 + 16) = v40;
  *(v45 + 24) = v41;
  *(v45 + 32) = v36;
  *(v45 + 40) = v42 & 1;
  v93 = sub_22CF4D9D4;
  v94 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v90 = 1107296256;
  v91 = sub_22CEF8B58;
  v92 = &block_descriptor_74;
  v46 = _Block_copy(&aBlock);

  v47 = v78;
  sub_22D0164EC();
  v88 = MEMORY[0x277D84F90];
  sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, MEMORY[0x277D83970]);
  v48 = v76;
  v49 = v82;
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v47, v48, v46);
  _Block_release(v46);
  (*(v81 + 8))(v48, v49);
  (*(v79 + 8))(v47, v80);

  sub_22CF4B128(v41, v36, v83);
}

uint64_t sub_22CF48694(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2628, &qword_22D018B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;

  sub_22CFF6AF8(inited);
  swift_setDeallocating();
  sub_22CEEC3D8(inited + 32, &qword_27D9F2630, &qword_22D018B98);
  sub_22D01641C();
}

unint64_t sub_22CF4875C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2638, &qword_22D018BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0189F0;
  *(inited + 32) = a4;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_22D01666C();
  *(inited + 56) = 0x64656C62616E65;
  *(inited + 64) = 0xE700000000000000;
  v6 = sub_22D01666C();

  *(inited + 72) = v6;
  v7 = sub_22CFF6BF4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2640, &unk_22D018BB0);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_22CF48880(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22D01659C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 72);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_22D0165BC();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_8;
  }

  sub_22D014C7C();
  if ((MEMORY[0x2318C3DC0]() & 1) == 0)
  {
    return 0;
  }

  v13 = sub_22CF4ACD8(0);
  if (*(v13 + 16))
  {
    v14 = sub_22CEEC698(a1, a2);
    if (v15)
    {
      v16 = *(*(v13 + 56) + v14);

      return v16;
    }
  }

  if (qword_28143DAB8 != -1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v18 = sub_22D01637C();
  __swift_project_value_buffer(v18, qword_281444338);

  v19 = sub_22D01636C();
  v20 = sub_22D01690C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_22CEEE31C(a1, a2, &v24);
    _os_log_impl(&dword_22CEE1000, v19, v20, "No record for %s found", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x2318C6860](v22, -1, -1);
    MEMORY[0x2318C6860](v21, -1, -1);
  }

  return 1;
}

void sub_22CF48B14(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v72 = a2;
  v71 = a1;
  v6 = sub_22D0164CC();
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v67 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22D01653C();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v66 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_22D01659C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v3 + 72);
  *v16 = v17;
  v18 = *MEMORY[0x277D85200];
  v19 = *MEMORY[0x277D85200];
  v64 = *(v13 + 104);
  v64(v16, v19, v12);
  v63 = v17;
  LOBYTE(v17) = sub_22D0165BC();
  v20 = *(v13 + 8);
  v20(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v65 = v6;
  v21 = sub_22CF4ACD8(1);
  if (!*(v21 + 16) || (v22 = sub_22CEEC698(v72, a3), (v23 & 1) == 0))
  {
    if (qword_28143DAB8 == -1)
    {
LABEL_10:
      v32 = sub_22D01637C();
      __swift_project_value_buffer(v32, qword_281444338);

      v33 = sub_22D01636C();
      v34 = sub_22D01690C();

      v35 = os_log_type_enabled(v33, v34);
      v36 = v72;
      v37 = v71;
      if (v35)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        aBlock = v39;
        *v38 = 136446466;
        *(v38 + 4) = sub_22CEEE31C(v36, a3, &aBlock);
        *(v38 + 12) = 1026;
        *(v38 + 14) = v37 & 1;
        _os_log_impl(&dword_22CEE1000, v33, v34, "Activity frequent updates for bundleid: %{public}s changed to: %{BOOL,public}d", v38, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x2318C6860](v39, -1, -1);
        MEMORY[0x2318C6860](v38, -1, -1);
      }

      sub_22CF4759C(1, v36, a3, v37 & 1);
      v40 = swift_allocObject();
      *(v40 + 16) = v4;
      *(v40 + 24) = v36;
      *(v40 + 32) = a3;
      *(v40 + 40) = v37 & 1;
      v78 = sub_22CF4D360;
      v79 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v75 = 1107296256;
      v76 = sub_22CEF8B58;
      v77 = &block_descriptor_62;
      v41 = _Block_copy(&aBlock);

      v42 = v66;
      sub_22D0164EC();
      v73 = MEMORY[0x277D84F90];
      sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
      sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, MEMORY[0x277D83970]);
      v43 = v67;
      v44 = v65;
      sub_22D016ADC();
      MEMORY[0x2318C5B10](0, v42, v43, v41);
      _Block_release(v41);
      (*(v70 + 8))(v43, v44);
      (*(v68 + 8))(v42, v69);

      goto LABEL_13;
    }

LABEL_19:
    swift_once();
    goto LABEL_10;
  }

  if (*(*(v21 + 56) + v22) == (v71 & 1))
  {
  }

  else
  {
    v62 = v18;
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v24 = sub_22D01637C();
    __swift_project_value_buffer(v24, qword_281444338);

    v25 = sub_22D01636C();
    v26 = sub_22D01690C();

    v60 = v26;
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v61 = v25;
      v28 = v27;
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_22CEEE31C(v72, a3, &aBlock);
      *(v28 + 12) = 1026;
      *(v28 + 14) = v71 & 1;
      _os_log_impl(&dword_22CEE1000, v61, v60, "Activity frequent updates for bundleid: %{public}s changed to: %{BOOL,public}d", v28, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x2318C6860](v29, -1, -1);
      v30 = v28;
      v31 = v71;
      MEMORY[0x2318C6860](v30, -1, -1);
    }

    else
    {

      v31 = v71;
    }

    v45 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v21;
    v71 = v31 & 1;
    sub_22CFBE8B0(v31 & 1, v72, a3, isUniquelyReferenced_nonNull_native);
    v48 = v63;
    v47 = v64;
    *v16 = v63;
    v47(v16, v45, v12);
    v49 = v48;
    LOBYTE(v48) = sub_22D0165BC();
    v20(v16, v12);
    if (v48)
    {
      v50 = [objc_opt_self() standardUserDefaults];
      v51 = sub_22D0165CC();
      v52 = sub_22D01666C();
      [v50 setValue:v51 forKey:v52];

      v53 = swift_allocObject();
      v54 = v72;
      *(v53 + 16) = v4;
      *(v53 + 24) = v54;
      *(v53 + 32) = a3;
      *(v53 + 40) = v71;
      v78 = sub_22CF4D370;
      v79 = v53;
      aBlock = MEMORY[0x277D85DD0];
      v75 = 1107296256;
      v76 = sub_22CEF8B58;
      v77 = &block_descriptor_68_0;
      v55 = _Block_copy(&aBlock);

      v56 = v66;
      sub_22D0164EC();
      v73 = MEMORY[0x277D84F90];
      sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
      sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, MEMORY[0x277D83970]);
      v57 = v67;
      v58 = v65;
      sub_22D016ADC();
      MEMORY[0x2318C5B10](0, v56, v57, v55);
      _Block_release(v55);
      (*(v70 + 8))(v57, v58);
      (*(v68 + 8))(v56, v69);

LABEL_13:

      return;
    }

    __break(1u);
  }
}

uint64_t sub_22CF494B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2628, &qword_22D018B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;

  sub_22CFF6AF8(inited);
  swift_setDeallocating();
  sub_22CEEC3D8(inited + 32, &qword_27D9F2630, &qword_22D018B98);
  sub_22D01641C();
}

uint64_t sub_22CF49578(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
  sub_22CEE8394(&qword_28143D9A0, &unk_27D9F3470, &qword_22D018BA0, MEMORY[0x277CBCE18]);
  sub_22D01645C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2628, &qword_22D018B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;

  sub_22CFF6AF8(inited);
  swift_setDeallocating();
  sub_22CEEC3D8(inited + 32, &qword_27D9F2630, &qword_22D018B98);
  sub_22D01641C();
}

uint64_t sub_22CF496A4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22D01659C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 72);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_22D0165BC();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v12 = sub_22CF4ACD8(1);
  if (*(v12 + 16))
  {
    v13 = sub_22CEEC698(a1, a2);
    if (v14)
    {
      v15 = *(*(v12 + 56) + v13);

      return v15;
    }
  }

  if (qword_28143DAB8 != -1)
  {
    goto LABEL_10;
  }

LABEL_6:
  v17 = sub_22D01637C();
  __swift_project_value_buffer(v17, qword_281444338);

  v18 = sub_22D01636C();
  v19 = sub_22D01690C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_22CEEE31C(a1, a2, &v23);
    _os_log_impl(&dword_22CEE1000, v18, v19, "No record for %s found", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x2318C6860](v21, -1, -1);
    MEMORY[0x2318C6860](v20, -1, -1);
  }

  return 1;
}

uint64_t sub_22CF49914(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_22D01659C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 72);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_22D0165BC();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (*(sub_22CF4ACD8(a3 & 1) + 16))
    {
      sub_22CEEC698(a1, a2);
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    return v16 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF49A68(int a1, uint64_t a2)
{
  v3 = v2;
  v53 = sub_22D0164CC();
  v6 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v7);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22D01653C();
  v9 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v10);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01659C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v3[9];
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  v19 = sub_22D0165BC();
  result = (*(v13 + 8))(v16, v12);
  if (v19)
  {
    v21 = v6;
    v22 = a1 & 1;
    v23 = sub_22CF4ACD8(a1 & 1);
    v24 = *(a2 + 16);
    if (v24)
    {
      v49 = a1;
      v45 = (v21 + 8);
      v46 = &v57;
      v44 = (v9 + 8);
      v25 = (a2 + 40);
      v48 = v3;
      v47 = a1 & 1;
      while (1)
      {
        if (!*(v23 + 16))
        {
          goto LABEL_5;
        }

        v27 = *(v25 - 1);
        v26 = *v25;

        v28 = sub_22CEEC698(v27, v26);
        if ((v29 & 1) == 0)
        {
          goto LABEL_4;
        }

        v30 = *(*(v23 + 56) + v28);
        v31 = sub_22CEEC698(v27, v26);
        if (v32)
        {
          v33 = v31;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v23;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22CFB6C84();
            v23 = aBlock;
          }

          sub_22CFBD358(v33, v23);
        }

        if (!v22)
        {
          break;
        }

        if (v49)
        {
          v59 = sub_22CF4D988;
          v60 = v3;
          aBlock = MEMORY[0x277D85DD0];
          v56 = 1107296256;
          v57 = sub_22CEF8B58;
          v58 = &block_descriptor_50;
          v41 = _Block_copy(&aBlock);

          v37 = v50;
          sub_22D0164EC();
          v54 = MEMORY[0x277D84F90];
          sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
          sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, MEMORY[0x277D83970]);
          v39 = v52;
          v38 = v53;
          sub_22D016ADC();
          MEMORY[0x2318C5B10](0, v37, v39, v41);
          v40 = v41;
          goto LABEL_17;
        }

LABEL_5:
        v25 += 2;
        if (!--v24)
        {
          goto LABEL_18;
        }
      }

      if ((v30 & 1) == 0)
      {
        v35 = swift_allocObject();
        v35[2] = v3;
        v35[3] = v27;
        v35[4] = v26;
        v59 = sub_22CF4D354;
        v60 = v35;
        aBlock = MEMORY[0x277D85DD0];
        v56 = 1107296256;
        v57 = sub_22CEF8B58;
        v58 = &block_descriptor_56;
        v36 = _Block_copy(&aBlock);

        v37 = v50;
        sub_22D0164EC();
        v54 = MEMORY[0x277D84F90];
        sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
        sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, MEMORY[0x277D83970]);
        v39 = v52;
        v38 = v53;
        sub_22D016ADC();
        MEMORY[0x2318C5B10](0, v37, v39, v36);
        v40 = v36;
LABEL_17:
        _Block_release(v40);
        v42 = v39;
        v22 = v47;
        (*v45)(v42, v38);
        v43 = v37;
        v3 = v48;
        (*v44)(v43, v51);

        goto LABEL_5;
      }

LABEL_4:

      goto LABEL_5;
    }

LABEL_18:
    sub_22CF4AB18(v22, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF4A0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2628, &qword_22D018B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = 1;

  sub_22CFF6AF8(inited);
  swift_setDeallocating();
  sub_22CEEC3D8(inited + 32, &qword_27D9F2630, &qword_22D018B98);
  sub_22D01641C();
}

uint64_t sub_22CF4A16C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
  sub_22CEE8394(&qword_28143D9A0, &unk_27D9F3470, &qword_22D018BA0, MEMORY[0x277CBCE18]);
  return sub_22D01645C();
}

void sub_22CF4A1E8(uint64_t a1)
{
  v2 = v1;
  v79 = a1;
  v3 = sub_22D0164CC();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_22D01653C();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v6);
  v71 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_22D014AFC();
  v8 = *(v82 - 1);
  v10 = MEMORY[0x28223BE20](v82, v9);
  v81 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v63 - v13;
  v15 = sub_22D01659C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + 72);
  *v19 = v20;
  v21 = *MEMORY[0x277D85200];
  v22 = v16 + 104;
  v23 = *(v16 + 104);
  v23(v19, *MEMORY[0x277D85200], v15);
  v70 = v20;
  LOBYTE(v20) = sub_22D0165BC();
  v25 = *(v16 + 8);
  v24 = v16 + 8;
  v77 = v25;
  v25(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v64 = v23;
  v65 = v21;
  v66 = v22;
  v67 = v19;
  v68 = v24;
  v69 = v15;
  v86 = sub_22CEE9A08(0);
  v63 = v2;
  v85 = sub_22CEE9A08(1);
  v80 = *(v79 + 16);
  if (v80)
  {
    v26 = 0;
    v79 += 32;
    v78 = *MEMORY[0x277CB9578];
    v27 = (v8 + 104);
    v28 = (v8 + 32);
    v29 = MEMORY[0x277D84F98];
    do
    {
      v33 = (v79 + 16 * v26);
      v34 = *v33;
      v35 = v33[1];
      v36 = *(v86 + 16);
      if (v36)
      {
        v37 = 0;
        v38 = (v86 + 40);
        while (1)
        {
          v39 = *(v38 - 1) == v34 && *v38 == v35;
          if (v39 || (sub_22D016DFC() & 1) != 0)
          {
            break;
          }

          ++v37;
          v38 += 2;
          if (v36 == v37)
          {
            goto LABEL_14;
          }
        }

        sub_22CF4AA44(v37);
      }

      else
      {
LABEL_14:
      }

      v40 = *(v85 + 16);
      if (v40)
      {
        v41 = 0;
        v42 = (v85 + 40);
        while (1)
        {
          v43 = *(v42 - 1) == v34 && *v42 == v35;
          if (v43 || (sub_22D016DFC() & 1) != 0)
          {
            break;
          }

          ++v41;
          v42 += 2;
          if (v40 == v41)
          {
            goto LABEL_5;
          }
        }

        sub_22CF4AA44(v41);
      }

LABEL_5:
      ++v26;
      v30 = v82;
      (*v27)(v14, v78, v82);
      v31 = v81;
      (*v28)(v81, v14, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v29;
      sub_22CFBEA1C(v31, v34, v35, isUniquelyReferenced_nonNull_native);

      v29 = aBlock[0];
    }

    while (v26 != v80);
  }

  else
  {
    v29 = MEMORY[0x277D84F98];
  }

  v44 = v63;
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v29;
  aBlock[4] = sub_22CF4D34C;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_47;
  v46 = _Block_copy(aBlock);

  v47 = v71;
  sub_22D0164EC();
  v83 = MEMORY[0x277D84F90];
  sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, MEMORY[0x277D83970]);
  v48 = v73;
  v49 = v76;
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v47, v48, v46);
  _Block_release(v46);
  (*(v75 + 8))(v48, v49);
  (*(v72 + 8))(v47, v74);

  v50 = v67;
  v51 = v70;
  *v67 = v70;
  v52 = v65;
  v53 = v69;
  v54 = v64;
  v64(v50, v65, v69);
  v82 = v51;
  LOBYTE(v51) = sub_22D0165BC();
  v77(v50, v53);
  if ((v51 & 1) == 0)
  {
    goto LABEL_30;
  }

  v55 = objc_opt_self();
  v56 = v52;
  v57 = [v55 standardUserDefaults];
  v58 = sub_22D0167CC();

  v59 = sub_22D01666C();
  [v57 setObject:v58 forKey:v59];

  *v50 = v82;
  v54(v50, v56, v53);
  LOBYTE(v56) = sub_22D0165BC();
  v77(v50, v53);
  if (v56)
  {
    v60 = [v55 standardUserDefaults];
    v61 = sub_22D0167CC();

    v62 = sub_22D01666C();
    [v60 setObject:v61 forKey:v62];

    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_22CF4AA44(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22CF4D190(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22CF4AAD0(uint64_t a1, uint64_t a2)
{

  sub_22D01641C();
}

void sub_22CF4AB18(char a1, uint64_t a2)
{
  v3 = sub_22D01659C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 72);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_22D0165BC();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = sub_22D0165CC();
    v12 = sub_22D01666C();

    [v10 setValue:v11 forKey:v12];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22CF4ACD8(char a1)
{
  v2 = sub_22D01659C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 72);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_22D0165BC();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = sub_22D01666C();

    v12 = [v10 dictionaryForKey_];

    if (v12 && (v13 = sub_22D0165EC(), v12, sub_22CF4AED0(v13), v15 = v14, , v15))
    {
      return v15;
    }

    else
    {
      return sub_22CFF6AF8(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22CF4AED0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2620, &qword_22D01B1E0);
    v2 = sub_22D016D3C();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_22CEEE3E8(*(a1 + 56) + 32 * v10, v24);
    *&v23 = v12;
    *(&v23 + 1) = v13;
    v21[2] = v23;
    v22[0] = v24[0];
    v22[1] = v24[1];
    v14 = v23;
    sub_22CF1D288(v22, v21);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v15 = sub_22CEEC698(v14, *(&v14 + 1));
    if (v16)
    {
      *(v2[6] + 16 * v15) = v14;
      v8 = v15;

      *(v2[7] + v8) = v20 & 1;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v2[6] + 16 * v15) = v14;
      *(v2[7] + v15) = v20 & 1;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v9 = v7;
  }
}

uint64_t sub_22CF4B128(void *a1, uint64_t a2, uint64_t a3)
{
  v81 = a1;
  v82 = a2;
  v5 = sub_22D0164CC();
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v76 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01653C();
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v75 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2608, &qword_22D018B68);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v64 - v13;
  v15 = sub_22D014B1C();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v83 = v64 - v22;
  v23 = sub_22D01659C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = (v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v3 + 72);
  *v27 = v28;
  v29 = *(v24 + 104);
  v70 = *MEMORY[0x277D85200];
  v71 = v29;
  v72 = v24 + 104;
  v29(v27);
  v69 = v28;
  LOBYTE(v28) = sub_22D0165BC();
  v73 = *(v24 + 8);
  v74 = v23;
  v73(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_22CF4D234(a3, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_22CEEC3D8(v14, &qword_27D9F2608, &qword_22D018B68);
  }

  v31 = v83;
  (*(v16 + 32))(v83, v14, v15);
  (*(v16 + 104))(v20, *MEMORY[0x277CB95A0], v15);
  v32 = sub_22D014B0C();
  v35 = *(v16 + 8);
  v34 = v16 + 8;
  v33 = v35;
  v35(v20, v15);
  if ((v32 & 1) == 0)
  {
    return v33(v31, v15);
  }

  v67 = v33;
  v66 = v34;
  v68 = v15;
  v14 = sub_22CEE9A08(0);

  v36 = sub_22CEE9A08(1);
  v15 = v81;
  v23 = v82;
  aBlock = v81;
  v86 = v82;
  MEMORY[0x28223BE20](v36, v37);
  v64[-2] = &aBlock;
  v38 = sub_22CEE7430(sub_22CF4D9B8, &v64[-4], v14);

  if ((v38 & 1) == 0)
  {

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_10:
      v42 = *(v14 + 2);
      v41 = *(v14 + 3);
      if (v42 >= v41 >> 1)
      {
        v14 = sub_22CFCE000((v41 > 1), v42 + 1, 1, v14);
      }

      *(v14 + 2) = v42 + 1;
      v43 = &v14[16 * v42];
      *(v43 + 4) = v15;
      *(v43 + 5) = v23;
      v65 = *(v3 + 80);
      v44 = swift_allocObject();
      v44[2] = v3;
      v44[3] = v15;
      v44[4] = v23;
      v89 = sub_22CF4D2A4;
      v90 = v44;
      aBlock = MEMORY[0x277D85DD0];
      v86 = 1107296256;
      v87 = sub_22CEF8B58;
      v88 = &block_descriptor_0;
      v81 = _Block_copy(&aBlock);

      v45 = v75;
      sub_22D0164EC();
      v84 = MEMORY[0x277D84F90];
      v36 = sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
      sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, MEMORY[0x277D83970]);
      v15 = v76;
      v46 = v80;
      sub_22D016ADC();
      v47 = v81;
      MEMORY[0x2318C5B10](0, v45, v15, v81);
      _Block_release(v47);
      (*(v79 + 8))(v15, v46);
      (*(v77 + 8))(v45, v78);

      v48 = v69;
      *v27 = v69;
      v23 = v74;
      v71(v27, v70, v74);
      v49 = v48;
      v3 = sub_22D0165BC();
      v73(v27, v23);
      if (v3)
      {
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    v14 = sub_22CFCE000(0, *(v14 + 2) + 1, 1, v14);
    goto LABEL_10;
  }

  aBlock = v15;
  v86 = v23;
  MEMORY[0x28223BE20](v39, v40);
  v64[-2] = &aBlock;
  if (sub_22CEE7430(sub_22CF4D9B8, &v64[-4], v36))
  {
    v67(v83, v68);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_22:
    v36 = sub_22CFCE000(0, *(v36 + 16) + 1, 1, v36);
  }

  v51 = *(v36 + 16);
  v50 = *(v36 + 24);
  if (v51 >= v50 >> 1)
  {
    v36 = sub_22CFCE000((v50 > 1), v51 + 1, 1, v36);
  }

  v64[1] = v36;
  *(v36 + 16) = v51 + 1;
  v52 = v36 + 16 * v51;
  *(v52 + 32) = v15;
  *(v52 + 40) = v23;
  v65 = *(v3 + 80);
  v53 = swift_allocObject();
  v53[2] = v3;
  v53[3] = v15;
  v53[4] = v23;
  v89 = sub_22CF4D324;
  v90 = v53;
  aBlock = MEMORY[0x277D85DD0];
  v86 = 1107296256;
  v87 = sub_22CEF8B58;
  v88 = &block_descriptor_41;
  v54 = _Block_copy(&aBlock);

  v55 = v75;
  sub_22D0164EC();
  v84 = MEMORY[0x277D84F90];
  sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, MEMORY[0x277D83970]);
  v56 = v76;
  v57 = v80;
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v55, v56, v54);
  _Block_release(v54);
  (*(v79 + 8))(v56, v57);
  (*(v77 + 8))(v55, v78);

  v58 = v69;
  *v27 = v69;
  v59 = v74;
  v71(v27, v70, v74);
  v60 = v58;
  LOBYTE(v58) = sub_22D0165BC();
  result = (v73)(v27, v59);
  if (v58)
  {
LABEL_18:
    v61 = [objc_opt_self() standardUserDefaults];
    v62 = sub_22D0167CC();

    v63 = sub_22D01666C();
    [v61 setObject:v62 forKey:v63];

    return (v67)(v83, v68);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF4BC90(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2610, &qword_22D018B78);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2618, &unk_22D018B80) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22D0187A0;
  v10 = (v9 + v8);
  v11 = v7[14];
  *v10 = a2;
  *(v10 + 1) = a3;
  v12 = *a4;
  v13 = sub_22D014AFC();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);

  sub_22CFF6CF8(v9);
  swift_setDeallocating();
  sub_22CEEC3D8(v10, &qword_27D9F2618, &unk_22D018B80);
  swift_deallocClassInstance();
  sub_22D01641C();
}

uint64_t sub_22CF4BE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22D01659C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + 72);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_22D0165BC();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = sub_22CEE9A08(0);
    v16 = sub_22CEE9A08(1);
    v27 = a1;
    v28 = a2;
    MEMORY[0x28223BE20](v16, v17);
    *&v26[-16] = &v27;
    v18 = sub_22CEE7430(sub_22CF4D9B8, &v26[-32], v15);

    if (v18)
    {
      v27 = a1;
      v28 = a2;
      MEMORY[0x28223BE20](v19, v20);
      *&v26[-16] = &v27;
      v21 = sub_22CEE7430(sub_22CF4D9B8, &v26[-32], v16);

      v22 = sub_22D014AFC();
      if (v21)
      {
        v23 = MEMORY[0x277CB9578];
      }

      else
      {
        v23 = MEMORY[0x277CB9588];
      }

      return (*(*(v22 - 8) + 104))(a3, *v23, v22);
    }

    else
    {
      v24 = *MEMORY[0x277CB9580];
      v25 = sub_22D014AFC();
      (*(*(v25 - 8) + 104))(a3, v24, v25);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}
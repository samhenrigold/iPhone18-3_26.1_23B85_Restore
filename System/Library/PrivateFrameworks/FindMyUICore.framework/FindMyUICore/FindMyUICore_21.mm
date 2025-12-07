void sub_24B212158(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char **a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v137 = a6;
  v145 = a5;
  v146 = a4;
  v138 = a3;
  v155 = a1;
  v152 = a7;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE298, &qword_24B2F0390);
  v131 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v149 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v135 = &v129 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE290, &unk_24B2F1790);
  MEMORY[0x28223BE20](v12 - 8);
  v130 = &v129 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F8, &unk_24B2F15C0);
  MEMORY[0x28223BE20](v14 - 8);
  v140 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v141 = &v129 - v17;
  MEMORY[0x28223BE20](v18);
  v132 = &v129 - v19;
  MEMORY[0x28223BE20](v20);
  v133 = &v129 - v21;
  v22 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v28 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v139 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v129 - v31;
  MEMORY[0x28223BE20](v33);
  v147 = &v129 - v34;
  MEMORY[0x28223BE20](v35);
  v150 = &v129 - v36;
  v37 = sub_24B2D5694();
  v151 = sub_24B2D5684();
  v134 = v37;
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v38 = sub_24B2D1704();
  v39 = *(v38 - 8);
  v40 = v155;
  v143 = *(v39 + 16);
  v144 = v38;
  v142 = v39 + 16;
  v143(v27, v155);
  if (*(a2 + 16) && (v41 = sub_24B18176C(v27), (v42 & 1) != 0))
  {
    v43 = *(a2 + 56) + *(v28 + 72) * v41;
    v44 = v150;
    sub_24B215C50(v43, v150, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    sub_24B215CB8(v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    (v143)(v24, v40, v144);
    swift_storeEnumTagMultiPayload();
    v45 = v138;
    v46 = v138[2];
    v129 = v7;
    if (v46 && (v47 = sub_24B18186C(v24), (v48 & 1) != 0))
    {
      v138 = *(v45[7] + 8 * v47);
      sub_24B215CB8(v24, type metadata accessor for SettingsContactsProvider.Subscription);
    }

    else
    {
      sub_24B215CB8(v24, type metadata accessor for SettingsContactsProvider.Subscription);
      v138 = 0;
    }

    v50 = sub_24B2D3164();
    v51 = sub_24B2D5934();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v154[0] = v53;
      *v52 = 136315138;
      swift_beginAccess();

      v55 = MEMORY[0x24C23BD20](v54, MEMORY[0x277D837D0]);
      v57 = v56;

      v58 = sub_24AFF321C(v55, v57, v154);
      v44 = v150;

      *(v52 + 4) = v58;
      _os_log_impl(&dword_24AFD2000, v50, v51, "Existing person identifiers %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x24C23D530](v53, -1, -1);
      MEMORY[0x24C23D530](v52, -1, -1);
    }

    v59 = v147;
    sub_24B215C50(v44, v147, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    v60 = sub_24B2D3164();
    v61 = sub_24B2D5934();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v153[0] = v63;
      *v62 = 136315138;
      sub_24B215C50(v59, v32, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v64 = v32;
        v65 = v132;
        sub_24B215578(v64, v132, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v66 = 0;
      }

      else
      {
        v66 = 1;
        v65 = v132;
      }

      v68 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v69 = *(v68 - 8);
      (*(v69 + 56))(v65, v66, 1, v68);
      v70 = v133;
      sub_24B0391CC(v65, v133, &qword_27EFCE5F8, &unk_24B2F15C0);
      v71 = (*(v69 + 48))(v70, 1, v68);
      v67 = v141;
      if (v71 == 1)
      {
        sub_24AFF8258(v70, &qword_27EFCE5F8, &unk_24B2F15C0);
        v72 = 0;
        v73 = 0;
      }

      else
      {
        v74 = (v70 + *(v68 + 20));
        v72 = *v74;
        v73 = v74[1];

        sub_24B215CB8(v70, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
      }

      v154[0] = v72;
      v154[1] = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC198, &qword_24B2EB218);
      v75 = sub_24B2D53C4();
      v77 = v76;
      sub_24B215CB8(v147, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      v78 = sub_24AFF321C(v75, v77, v153);

      *(v62 + 4) = v78;
      _os_log_impl(&dword_24AFD2000, v60, v61, "ServerID: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x24C23D530](v63, -1, -1);
      MEMORY[0x24C23D530](v62, -1, -1);
    }

    else
    {

      sub_24B215CB8(v59, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      v67 = v141;
    }

    v79 = v139;
    sub_24B215C50(v44, v139, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v81 = v140;
    if (EnumCaseMultiPayload == 1)
    {
      sub_24B215578(v79, v140, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
      v82 = 0;
    }

    else
    {
      v82 = 1;
    }

    v83 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
    v84 = *(v83 - 8);
    (*(v84 + 56))(v81, v82, 1, v83);
    sub_24B0391CC(v81, v67, &qword_27EFCE5F8, &unk_24B2F15C0);
    if ((*(v84 + 48))(v67, 1, v83) == 1)
    {
      sub_24B215CB8(v44, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);

      sub_24AFF8258(v67, &qword_27EFCE5F8, &unk_24B2F15C0);
    }

    else
    {
      v85 = (v67 + *(v83 + 20));
      v87 = *v85;
      v86 = v85[1];

      sub_24B215CB8(v67, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
      if (v86)
      {
        v88 = v145;
        swift_beginAccess();
        v89 = *v88;
        v90 = *(*v88 + 16);

        v94 = v89 + 40;
        v95 = -1;
        while (1)
        {
          if (v95 - v90 == -1)
          {
            v147 = v87;

            v101 = v145;
            swift_beginAccess();
            v88 = *v101;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v101 = v88;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_36;
            }

            goto LABEL_60;
          }

          if (++v95 >= *(v89 + 16))
          {
            break;
          }

          v96 = v94 + 16;
          v99 = v94 - 8;
          v97 = *(v94 - 8);
          v98 = *(v99 + 8);
          v153[0] = v87;
          v153[1] = v86;
          v153[3] = v97;
          v153[4] = v98;
          sub_24AFFE0A4(v91, v92, v93);
          v88 = v153;
          v91 = sub_24B2D5B04();
          v94 = v96;
          if (v91)
          {

            sub_24B215CB8(v44, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);

            goto LABEL_33;
          }
        }

        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_60:
          v88 = sub_24B006774(0, v88[2] + 1, 1, v88);
          *v145 = v88;
LABEL_36:
          v104 = v88[2];
          v103 = v88[3];
          v105 = v147;
          if (v104 >= v103 >> 1)
          {
            v88 = sub_24B006774((v103 > 1), v104 + 1, 1, v88);
          }

          v88[2] = v104 + 1;
          v106 = &v88[2 * v104];
          v106[4] = v105;
          v106[5] = v86;
          *v145 = v88;
          swift_endAccess();
          v107 = v137 + 64;
          v108 = 1 << *(v137 + 32);
          v109 = -1;
          if (v108 < 64)
          {
            v109 = ~(-1 << v108);
          }

          v110 = v109 & *(v137 + 64);
          v111 = (v108 + 63) >> 6;

          v112 = 0;
          if (v110)
          {
            break;
          }

LABEL_42:
          while (1)
          {
            v113 = v112 + 1;
            if (__OFADD__(v112, 1))
            {
              break;
            }

            if (v113 >= v111)
            {

              v123 = v130;
              (*(v131 + 56))(v130, 1, 1, v136);
              sub_24AFF8258(v123, &qword_27EFCE290, &unk_24B2F1790);
              v124 = v152;
              (v143)(v152, v155, v144);
              v125 = type metadata accessor for SettingsPersonInfo(0);
              sub_24B215578(v44, v124 + v125[5], type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
              v126 = v125[7];
              v127 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
              (*(*(v127 - 8) + 56))(v124 + v126, 1, 1, v127);
              *(v124 + v125[6]) = v138;
              (*(*(v125 - 1) + 56))(v124, 0, 1, v125);
              goto LABEL_34;
            }

            v110 = *(v107 + 8 * v113);
            ++v112;
            if (v110)
            {
              goto LABEL_45;
            }
          }
        }

        while (1)
        {
          v113 = v112;
LABEL_45:
          v114 = __clz(__rbit64(v110)) | (v113 << 6);
          v115 = v137;
          v116 = *(v137 + 48);
          v148 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
          v117 = v135;
          sub_24B215C50(v116 + *(*(v148 - 8) + 72) * v114, v135, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
          v118 = *(v115 + 56);
          v119 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
          sub_24B215C50(v118 + *(*(v119 - 8) + 72) * v114, v117 + *(v136 + 48), type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
          sub_24B0391CC(v117, v149, &qword_27EFCE298, &qword_24B2F0390);
          v88 = sub_24B2D5684();
          sub_24B2D5604();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v120 = (v149 + *(v148 + 20));
          if (*v120 == v147 && v86 == v120[1])
          {

            v44 = v150;
            goto LABEL_57;
          }

          v122 = sub_24B2D6004();

          v44 = v150;
          if (v122)
          {
            break;
          }

          v110 &= v110 - 1;
          sub_24AFF8258(v149, &qword_27EFCE298, &qword_24B2F0390);
          v112 = v113;
          if (!v110)
          {
            goto LABEL_42;
          }
        }

LABEL_57:

        sub_24B215CB8(v44, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
        v128 = v130;
        sub_24B0391CC(v149, v130, &qword_27EFCE298, &qword_24B2F0390);
        (*(v131 + 56))(v128, 0, 1, v136);
        sub_24AFF8258(v128, &qword_27EFCE290, &unk_24B2F1790);
      }

      else
      {
        sub_24B215CB8(v44, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      }
    }

LABEL_33:
    v100 = type metadata accessor for SettingsPersonInfo(0);
    (*(*(v100 - 8) + 56))(v152, 1, 1, v100);
  }

  else
  {
    sub_24B215CB8(v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v49 = type metadata accessor for SettingsPersonInfo(0);
    (*(*(v49 - 8) + 56))(v152, 1, 1, v49);
  }

LABEL_34:
}

uint64_t sub_24B2132FC()
{
  v1 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController_isAutomaticLocationsSubscriptionEnabled) = 1;
  v5 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8070, &qword_24B2DFCD0);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24B2DE430;
  sub_24B215C50(v4, v9 + v8, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v10 = sub_24B136ED4(v9);
  swift_setDeallocating();
  sub_24B215CB8(v9 + v8, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  swift_deallocClassInstance();
  sub_24B25C050(v10, v6, v7);

  sub_24B215CB8(v4, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  v13 = sub_24B137590(&unk_285E48EE8);
  sub_24B25BC08(v13, v12, v11);
}

uint64_t sub_24B213510(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = v4;
  v10 = sub_24B2D3184();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(v11 + 16))(v13, v9, v10);

  v14 = sub_24B2D3164();
  v15 = sub_24B2D5904();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_24B215428(v18, v19, v20);
    v21 = sub_24B2D51F4();
    v23 = sub_24AFF321C(v21, v22, &v26);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_24AFD2000, v14, v15, "SettingsSubscriptionManagerStorage: subscriptionsBySubscriber - %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C23D530](v17, -1, -1);
    MEMORY[0x24C23D530](v16, -1, -1);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24B213724()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE618, &unk_24B2F1C60);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for SettingsContactsProvider.Subscription(0);
    sub_24B215C08(&qword_27EFCE0C8, type metadata accessor for SettingsContactsProvider.Subscription, &protocol conformance descriptor for SettingsContactsProvider.Subscription);
    v10 = sub_24B2D57F4();
    v12 = sub_24AFF321C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SettingsSubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B213954()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6D8, &qword_24B2F1890);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
    sub_24B215C08(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription, &protocol conformance descriptor for SettingsPeopleRelationshipsProvider.Subscription);
    v10 = sub_24B2D57F4();
    v12 = sub_24AFF321C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SettingsSubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B213B84(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = v4;
  v9 = sub_24B2D3184();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(v10 + 16))(v12, v8, v9);

  v13 = sub_24B2D3164();
  v14 = sub_24B2D5904();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    a3();
    v17 = sub_24B2D57F4();
    v19 = sub_24AFF321C(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_24AFD2000, v13, v14, "SettingsSubscriptionManagerStorage: uniqueSubscriptions - %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C23D530](v16, -1, -1);
    MEMORY[0x24C23D530](v15, -1, -1);
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_24B213D84(uint64_t *a1)
{
  v2 = *(sub_24B2D1704() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24B215414(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24B213E2C(v5);
  *a1 = v3;
}

void sub_24B213E2C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24B2D5F34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24B2D1704();
        v6 = sub_24B2D5594();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_24B2D1704() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24B21421C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_24B213F58(0, v2, 1, a1);
  }
}

void sub_24B213F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_24B2D1704();
  MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v31 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_24B215C08(&qword_27EFCE678, MEMORY[0x277D08BF8], MEMORY[0x277D08C08]);
      v26 = sub_24B2D5284();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24B21421C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_24B2D1704();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v119 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_24B2152D8(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_24B214C44(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_24B2152D8(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_24B21524C(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_24B215C08(&qword_27EFCE678, MEMORY[0x277D08BF8], MEMORY[0x277D08C08]);
      LODWORD(v133) = sub_24B2D5284();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_24B2D5284() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_24B0069D4(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_24B0069D4((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
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

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_24B214C44(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_24B2152D8(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_24B21524C(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_24B215C08(&qword_27EFCE678, MEMORY[0x277D08BF8], MEMORY[0x277D08C08]);
    v109 = sub_24B2D5284();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
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

void sub_24B214C44(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_24B2D1704();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_24B215C08(&qword_27EFCE678, MEMORY[0x277D08BF8], MEMORY[0x277D08C08]);
          LOBYTE(v34) = sub_24B2D5284();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_24B215C08(&qword_27EFCE678, MEMORY[0x277D08BF8], MEMORY[0x277D08C08]);
        LOBYTE(v21) = sub_24B2D5284();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_24B215304(&v54, &v53, &v52, MEMORY[0x277D08BF8]);
}

uint64_t sub_24B21524C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24B2152D8(v3);
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

uint64_t sub_24B215304(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_24B215428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCE638;
  if (!qword_27EFCE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE638);
  }

  return result;
}

double sub_24B21547C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_24B2154C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFD370;

  return sub_24B20A600(a1, v4, v5, v6);
}

uint64_t sub_24B215578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B215698()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  sub_24B21547C(v1, v2);
  return sub_24B207228(v4);
}

uint64_t sub_24B2156F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE258, &unk_24B2F0350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B215760()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFDE44;

  return sub_24B22C2B0(v2, v3);
}

uint64_t sub_24B2157FC()
{
  v2 = *(sub_24B2D3184() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFD370;

  return sub_24B22BE58(v4, v5, v0 + v3);
}

uint64_t sub_24B2158DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFDE44;

  return sub_24B249D70(v2, v3);
}

uint64_t sub_24B215978()
{
  v2 = *(sub_24B2D3184() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFDE44;

  return sub_24B249918(v4, v5, v0 + v3);
}

uint64_t objectdestroy_61Tm()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B215B1C()
{
  v2 = *(sub_24B2D3184() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFDE44;

  return sub_24B224970(v4, v5, v6, v0 + v3);
}

uint64_t sub_24B215C08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B215C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B215CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_24B215D40()
{
  v0 = sub_24B2D3184();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = sub_24B2D2674();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B2D2694();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  (*(v8 + 104))(v10, *MEMORY[0x277D09048], v7, v12);
  sub_24B2D26A4();
  sub_24B2D2AE4();
  swift_allocObject();
  v13 = sub_24B2D2B04();
  *&v28 = &unk_24B2F1908;
  *(&v28 + 1) = v13;
  v29 = &unk_24B2F1910;
  v30 = v13;
  v31 = &unk_24B2F1918;
  v32 = v13;
  v33 = sub_24B1F0DA0;
  v34 = 0;
  type metadata accessor for SettingsPeopleRelationshipsProvider(0);
  swift_allocObject();
  swift_retain_n();
  v27 = SettingsPeopleRelationshipsProvider.init(dependencies:)(&v28);
  sub_24B2D3174();
  v14 = *(v1 + 32);
  v25 = v0;
  v14(v3, v6, v0);
  v15 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v16 = swift_allocObject();
  v14((v16 + v15), v3, v0);
  *&v28 = sub_24B216384;
  *(&v28 + 1) = v16;
  v29 = &unk_24B2F2108;
  v30 = 0;
  type metadata accessor for SettingsFamilyRelationshipsProvider(0);
  swift_allocObject();
  v26 = SettingsFamilyRelationshipsProvider.init(dependencies:)(&v28);
  v17 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  sub_24B2D3174();
  v18 = [objc_opt_self() descriptorForRequiredKeys];
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = v6;
  v21 = v25;
  v14(v3, v20, v25);
  v22 = swift_allocObject();
  v14((v22 + v15), v3, v21);
  *&v28 = sub_24B21639C;
  *(&v28 + 1) = v19;
  v29 = sub_24B2163B8;
  v30 = v22;
  type metadata accessor for SettingsContactsProvider(0);
  swift_allocObject();
  SettingsContactsProvider.init(dependencies:)(&v28);
  return v27;
}

uint64_t sub_24B2161C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AFFD370;

  return sub_24B23E0A8(a1);
}

uint64_t sub_24B216264()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return sub_24B23E8C8();
}

uint64_t sub_24B2162F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24B0384BC;

  return sub_24B23E95C();
}

uint64_t sub_24B2163D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(sub_24B2D3184() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore28SettingsPeopleListControllerC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B21648C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B2164DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_24B216530(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_24B216564()
{
  result = qword_27EFCE6F0;
  if (!qword_27EFCE6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCE6F8, qword_24B2F1998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE6F0);
  }

  return result;
}

char *sub_24B2165C8(char a1)
{
  v2 = sub_24B2D5364();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8048, &qword_24B2F1700);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v38 - v13;
  MEMORY[0x28223BE20](v14);
  v40 = &v38 - v15;
  MEMORY[0x28223BE20](v16);
  v41 = &v38 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  if (a1)
  {
    v39 = v2;
    swift_getKeyPath();
    sub_24B2D2134();
    (*(v10 + 16))(v20, v23, v9);
    v24 = sub_24B006E60(0, 1, 1, MEMORY[0x277D84F90]);
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_24B006E60((v25 > 1), v26 + 1, 1, v24);
    }

    (*(v10 + 8))(v23, v9);
    *(v24 + 2) = v26 + 1;
    (*(v10 + 32))(&v24[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26], v20, v9);
    v2 = v39;
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  sub_24B2D5354();
  (*(v3 + 16))(v5, v8, v2);
  v27 = v41;
  sub_24B2D2124();
  (*(v3 + 8))(v8, v2);
  v39 = *(v10 + 16);
  v39(v40, v27, v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_24B006E60(0, *(v24 + 2) + 1, 1, v24);
  }

  v29 = *(v24 + 2);
  v28 = *(v24 + 3);
  if (v29 >= v28 >> 1)
  {
    v24 = sub_24B006E60((v28 > 1), v29 + 1, 1, v24);
  }

  *(v24 + 2) = v29 + 1;
  v30 = *(v10 + 32);
  v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v32 = *(v10 + 72);
  v30(&v24[v31 + v32 * v29], v40, v9);
  swift_getKeyPath();
  sub_24B216C00();
  v33 = v42;
  sub_24B2D2134();
  v39(v43, v33, v9);
  v35 = *(v24 + 2);
  v34 = *(v24 + 3);
  if (v35 >= v34 >> 1)
  {
    v24 = sub_24B006E60((v34 > 1), v35 + 1, 1, v24);
  }

  v36 = *(v10 + 8);
  v36(v42, v9);
  v36(v41, v9);
  *(v24 + 2) = v35 + 1;
  v30(&v24[v31 + v35 * v32], v43, v9);
  return v24;
}

unint64_t sub_24B216AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCE700;
  if (!qword_27EFCE700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE700);
  }

  return result;
}

unint64_t sub_24B216B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCE708;
  if (!qword_27EFCE708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE708);
  }

  return result;
}

uint64_t sub_24B216B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + *(type metadata accessor for SettingsPersonInfo(0) + 24)) || (sub_24B008F38(), v4 = sub_24B2D52C4(), v6 = v5, result = , !v6))
  {
    v4 = sub_24B2D16D4();
    v6 = v8;
  }

  *a2 = v4;
  a2[1] = v6;
  return result;
}

unint64_t sub_24B216C00()
{
  result = qword_27EFCE678;
  if (!qword_27EFCE678)
  {
    sub_24B2D1704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE678);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore16SettingsProviderC0D6ChangeO8MeDeviceVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B216C94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 42))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24B216CF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24B216D60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  if (!*(v0 + 16))
  {
    if (qword_27EFC7720 == -1)
    {
      goto LABEL_6;
    }

LABEL_9:
    swift_once();
    goto LABEL_6;
  }

  if ((*(v0 + 40) & 1) == 0)
  {
    v7 = *(v0 + 8);

    return v7;
  }

  if (qword_27EFC7720 != -1)
  {
    goto LABEL_9;
  }

LABEL_6:
  v4 = sub_24B2D1454();
  v5 = __swift_project_value_buffer(v4, qword_27EFE4610);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v3, v5, v4);
  (*(v6 + 56))(v3, 0, 1, v4);
  v7 = sub_24B2D52D4();
  sub_24B0C6490(v3);
  return v7;
}

uint64_t sub_24B216FB8()
{
  v1 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F8, &unk_24B2F15C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = type metadata accessor for SettingsPersonInfo(0);
  sub_24B217BE4(v0 + *(v16 + 20), v9, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B218178(v9, v12, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
  v19 = *(v18 - 8);
  (*(v19 + 56))(v12, v17, 1, v18);
  sub_24B0391CC(v12, v15, &qword_27EFCE5F8, &unk_24B2F15C0);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    v20 = &qword_27EFCE5F8;
    v21 = &unk_24B2F15C0;
    v22 = v15;
LABEL_11:
    sub_24AFF8258(v22, v20, v21);
    return 0;
  }

  sub_24B217BE4(&v15[*(v18 + 24)], v6, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
  sub_24B2181E0(v15, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
  sub_24B218178(v6, v3, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458, &qword_24B2F1760);
      sub_24AFF8258(&v3[*(v24 + 48)], &qword_27EFC8450, &qword_24B2DE7A0);
      sub_24AFF8258(v3, &qword_27EFC8450, &qword_24B2DE7A0);
      return 1;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_10:
    v20 = &qword_27EFC8450;
    v21 = &qword_24B2DE7A0;
    v22 = v3;
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_24B217338()
{
  v1 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F8, &unk_24B2F15C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for SettingsPersonInfo(0);
  sub_24B217BE4(v0 + *(v10 + 20), v3, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B218178(v3, v6, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v6, v11, 1, v12);
  sub_24B0391CC(v6, v9, &qword_27EFCE5F8, &unk_24B2F15C0);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_24AFF8258(v9, &qword_27EFCE5F8, &unk_24B2F15C0);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = &v9[*(v12 + 32)];
  v15 = *v14;
  v16 = v14[8];
  sub_24B2181E0(v9, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
  if (v16 == 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v15;
}

uint64_t sub_24B217598()
{
  v1 = v0;
  v2 = sub_24B2D21C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + *(type metadata accessor for SettingsPersonInfo(0) + 24));
  if (!v6)
  {
    goto LABEL_9;
  }

  sub_24B2D21B4();
  if ([v6 isKeyAvailable_])
  {
    v7 = [v6 nickname];
    sub_24B2D5394();

    sub_24B2D21A4();
  }

  if ([v6 isKeyAvailable_])
  {
    v8 = [v6 givenName];
    sub_24B2D5394();

    sub_24B2D2174();
  }

  if ([v6 isKeyAvailable_])
  {
    v9 = [v6 familyName];
    sub_24B2D5394();

    sub_24B2D2184();
  }

  v10 = objc_opt_self();
  v11 = sub_24B2D2194();
  v12 = [v10 localizedStringFromPersonNameComponents:v11 style:2 options:0];

  sub_24B2D5394();
  (*(v3 + 8))(v5, v2);
  v13 = sub_24B2D52C4();
  v15 = v14;

  if (!v15)
  {
LABEL_9:
    v13 = sub_24B2D16D4();
  }

  return v13;
}

uint64_t sub_24B217820@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F8, &unk_24B2F15C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SettingsPersonInfo(0);
  sub_24B217BE4(v1 + *(v15 + 20), v5, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B218178(v5, v8, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v8, v16, 1, v17);
  sub_24B0391CC(v8, v11, &qword_27EFCE5F8, &unk_24B2F15C0);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_24AFF8258(v11, &qword_27EFCE5F8, &unk_24B2F15C0);
  }

  else
  {
    sub_24B217BE4(&v11[*(v17 + 24)], v14, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
    sub_24B2181E0(v11, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
    if (!swift_getEnumCaseMultiPayload())
    {
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458, &qword_24B2F1760) + 48);
      sub_24B0391CC(v14, a1, &qword_27EFC8450, &qword_24B2DE7A0);
      return sub_24AFF8258(&v14[v21], &qword_27EFC8450, &qword_24B2DE7A0);
    }

    sub_24B2181E0(v14, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
  }

  v19 = sub_24B2D24A4();
  return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t type metadata accessor for SettingsPersonInfo(uint64_t a1)
{
  result = qword_27EFCE710;
  if (!qword_27EFCE710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B217BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B217C4C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE670, &unk_24B2F17A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_24B2D1704();
  sub_24B2180C0(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  sub_24B2D5254();
  v11 = type metadata accessor for SettingsPersonInfo(0);
  SettingsPeopleRelationshipsProvider.RelationshipState.hash(into:)(a1);
  v12 = *(v1 + *(v11 + 24));
  sub_24B2D6104();
  if (v12)
  {
    v13 = v12;
    sub_24B2D5A44();
  }

  sub_24B218108(v2 + *(v11 + 28), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_24B2D6104();
  }

  sub_24B218178(v10, v7, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  sub_24B2D6104();
  SettingsFamilyRelationshipsProvider.FamilyMemberState.hash(into:)(a1);
  return sub_24B2181E0(v7, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
}

uint64_t sub_24B217E8C()
{
  sub_24B2D60E4();
  sub_24B217C4C(v1);
  return sub_24B2D6124();
}

uint64_t sub_24B217ED0(uint64_t a1)
{
  sub_24B2D60E4();
  sub_24B217C4C(v2);
  return sub_24B2D6124();
}

void sub_24B217F38(uint64_t a1)
{
  sub_24B2D1704();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(319);
    if (v2 <= 0x3F)
    {
      sub_24B218024(319, &qword_27EFCE720, sub_24AFFF54C);
      if (v3 <= 0x3F)
      {
        sub_24B218024(319, &qword_27EFCE728, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B218024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B2D5A84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24B2180C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B218108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE670, &unk_24B2F17A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B218178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B2181E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_24B218240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE670, &unk_24B2F17A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE738, &unk_24B2F1C00);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  if ((_s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for SettingsPersonInfo(0);
  if ((_s12FindMyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO2eeoiySbAE_AEtFZ_0(a1 + v14[5], a2 + v14[5]) & 1) == 0)
  {
    return 0;
  }

  v28 = v5;
  v15 = v14[6];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    v27 = sub_24AFFF54C();
    v26 = v17;
    v18 = v16;
    v19 = sub_24B2D5A34();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v20 = v14[7];
  v21 = *(v11 + 48);
  sub_24B218108(a1 + v20, v13);
  sub_24B218108(a2 + v20, &v13[v21]);
  v22 = *(v28 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_24AFF8258(v13, &qword_27EFCE670, &unk_24B2F17A0);
      return 1;
    }

    goto LABEL_13;
  }

  sub_24B218108(v13, v10);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    sub_24B2181E0(v10, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
LABEL_13:
    sub_24AFF8258(v13, &qword_27EFCE738, &unk_24B2F1C00);
    return 0;
  }

  sub_24B218178(&v13[v21], v7, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  MyUICore35SettingsFamilyRelationshipsProviderC0E11MemberStateO2eeoiySbAE_AEtFZ_0 = _s12FindMyUICore35SettingsFamilyRelationshipsProviderC0E11MemberStateO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_24B2181E0(v7, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  sub_24B2181E0(v10, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  sub_24AFF8258(v13, &qword_27EFCE670, &unk_24B2F17A0);
  return (MyUICore35SettingsFamilyRelationshipsProviderC0E11MemberStateO2eeoiySbAE_AEtFZ_0 & 1) != 0;
}

double SettingsContactsProvider.data.getter()
{
  swift_getKeyPath();
  sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2584();

  swift_beginAccess();

  return result;
}

uint64_t SettingsContactsProvider.__allocating_init(dependencies:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SettingsContactsProvider.init(dependencies:)(a1);
  return v2;
}

uint64_t SettingsContactsProvider.storage.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2584();

  v3 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage;
  swift_beginAccess();
  return sub_24B2194F8(v5 + v3, a1);
}

uint64_t sub_24B218754@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2584();

  v4 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage;
  swift_beginAccess();
  return sub_24B2194F8(v3 + v4, a2);
}

uint64_t sub_24B21881C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE618, &unk_24B2F1C60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24B2194F8(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2574();

  return sub_24AFF8258(v6, &qword_27EFCE618, &unk_24B2F1C60);
}

uint64_t SettingsContactsProvider.storage.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2574();

  return sub_24AFF8258(a1, &qword_27EFCE618, &unk_24B2F1C60);
}

uint64_t sub_24B218A44(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage;
  swift_beginAccess();
  sub_24B21C1D0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t (*SettingsContactsProvider.storage.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2584();

  *v4 = v1;
  swift_getKeyPath();
  sub_24B2D25A4();

  swift_beginAccess();
  return sub_24B218BF8;
}

void sub_24B218BF8(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_24B2D2594();

  free(v1);
}

double sub_24B218C7C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2584();

  v4 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__data;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t type metadata accessor for SettingsContactsProvider(uint64_t a1)
{
  result = qword_27EFCE760;
  if (!qword_27EFCE760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B218DBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__data;
  swift_beginAccess();

  sub_24B1E3978(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
    sub_24B2D2574();
  }
}

uint64_t sub_24B218F0C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__data;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

double sub_24B218F7C()
{
  swift_getKeyPath();
  sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2584();

  return result;
}

double sub_24B219028@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__valuePublisher);

  return result;
}

double sub_24B2190DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__valuePublisher;
  if (!*(v1 + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__valuePublisher))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
    sub_24B2D2574();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_24B2D5754();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

uint64_t SettingsContactsProvider.init(dependencies:)(uint64_t a1)
{
  *&v23 = a1;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE618, &unk_24B2F1C60);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v13 = v10[11];
  *&v12[v13] = sub_24B195C80(MEMORY[0x277D84F90]);
  *&v12[v10[12]] = MEMORY[0x277D84FA0];
  v12[v10[13]] = 0;
  sub_24B2D3174();
  v14 = *(v3 + 16);
  v15 = *(v23 + 16);
  v22 = *v23;
  v23 = v15;
  v14(v12, v8, v2);
  v16 = *(v3 + 32);
  v16(v5, v8, v2);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  v16((v18 + v17), v5, v2);
  v19 = &v12[v10[14]];
  *v19 = sub_24B21B8F4;
  v19[1] = v18;
  sub_24B21B954(v12, v1 + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage);
  *(v1 + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__data) = sub_24B195A9C(MEMORY[0x277D84F90]);
  *(v1 + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__valuePublisher) = 0;
  sub_24B2D25B4();
  v20 = v23;
  *(v1 + 16) = v22;
  *(v1 + 32) = v20;
  return v1;
}

uint64_t sub_24B2194F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE618, &unk_24B2F1C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id SettingsContactsProvider.contact(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v10 = sub_24B2D3184();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  swift_getKeyPath();
  v50 = v1;
  sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2584();

  v16 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__data;
  swift_beginAccess();
  v17 = *(v2 + v16);
  if (*(v17 + 16))
  {

    v18 = sub_24B18186C(a1);
    if (v19)
    {
      v45 = *(*(v17 + 56) + 8 * v18);

      swift_getKeyPath();
      v49 = v2;
      sub_24B2D2584();

      v20 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage;
      swift_beginAccess();
      v21 = v46;
      v22 = v2 + v20;
      v23 = v47;
      (*(v46 + 16))(v15, v22, v47);
      sub_24B21B9C4(a1, v9);
      v24 = sub_24B2D3164();
      v25 = sub_24B2D5904();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v48 = v27;
        *v26 = 136315394;
        *(v26 + 4) = sub_24AFF321C(0x28746361746E6F63, 0xED0000293A726F66, &v48);
        *(v26 + 12) = 2080;
        v28 = SettingsContactsProvider.Subscription.debugDescription.getter();
        v30 = v29;
        sub_24B21BA28(v9);
        v31 = sub_24AFF321C(v28, v30, &v48);

        *(v26 + 14) = v31;
        _os_log_impl(&dword_24AFD2000, v24, v25, "SettingsContactsProvider: %s - %s - Hit", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v27, -1, -1);
        MEMORY[0x24C23D530](v26, -1, -1);
      }

      else
      {

        sub_24B21BA28(v9);
      }

      (*(v21 + 8))(v15, v23);
      return v45;
    }
  }

  swift_getKeyPath();
  v49 = v2;
  sub_24B2D2584();

  v32 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage;
  swift_beginAccess();
  v33 = v46;
  v34 = v2 + v32;
  v35 = v47;
  (*(v46 + 16))(v12, v34, v47);
  sub_24B21B9C4(a1, v6);
  v36 = sub_24B2D3164();
  v37 = sub_24B2D5904();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v48 = v39;
    *v38 = 136315394;
    *(v38 + 4) = sub_24AFF321C(0x28746361746E6F63, 0xED0000293A726F66, &v48);
    *(v38 + 12) = 2080;
    v40 = SettingsContactsProvider.Subscription.debugDescription.getter();
    v42 = v41;
    sub_24B21BA28(v6);
    v43 = sub_24AFF321C(v40, v42, &v48);

    *(v38 + 14) = v43;
    _os_log_impl(&dword_24AFD2000, v36, v37, "SettingsContactsProvider: %s - %s - Miss", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v39, -1, -1);
    MEMORY[0x24C23D530](v38, -1, -1);
  }

  else
  {

    sub_24B21BA28(v6);
  }

  (*(v33 + 8))(v12, v35);
  return 0;
}

void SettingsContactsProvider.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(uint64_t a1, int a2)
{
  v3 = v2;
  v70 = a2;
  v5 = sub_24B2D3184();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v84 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v65 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE790, &unk_24B2F1C70);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[1] = v10;
  MEMORY[0x28223BE20](v11);
  v71 = v65 - v12;
  v65[0] = type metadata accessor for SettingsContactsProvider.Subscription(0);
  v82 = *(v65[0] - 8);
  MEMORY[0x28223BE20](v65[0]);
  v86 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v65 - v15;
  v17 = *(a1 + 56);
  v83 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v85 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider___observationRegistrar;
  v21 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage;
  v79 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__data;

  v78 = v21;
  swift_beginAccess();
  v22 = 0;
  v23 = (v18 + 63) >> 6;
  v76 = v6 + 8;
  v77 = v6 + 16;
  *&v24 = 138543362;
  v72 = v24;
  v80 = v5;
  v81 = v16;
  v73 = a1;
  v25 = v83;
  if (!v20)
  {
LABEL_5:
    v26 = v86;
    while (1)
    {
      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v27 >= v23)
      {
        break;
      }

      v20 = *(v25 + 8 * v27);
      ++v22;
      if (v20)
      {
        v22 = v27;
        goto LABEL_10;
      }
    }

    if (v70)
    {
      (*(v3 + 32))(v51);
      swift_getKeyPath();
      v88 = v3;
      sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
      sub_24B2D2584();

      if (*(v3 + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__valuePublisher))
      {

        sub_24B2D5764();
      }

      v52 = sub_24B2D56D4();
      v53 = v68;
      (*(*(v52 - 8) + 56))(v68, 1, 1, v52);
      v54 = swift_allocObject();
      swift_weakInit();
      v55 = v67;
      v56 = v66;
      v57 = v71;
      v58 = v69;
      (*(v67 + 16))(v66, v71, v69);
      sub_24B2D5694();

      v59 = sub_24B2D5684();
      v60 = (*(v55 + 80) + 40) & ~*(v55 + 80);
      v61 = swift_allocObject();
      v62 = MEMORY[0x277D85700];
      *(v61 + 2) = v59;
      *(v61 + 3) = v62;
      *(v61 + 4) = v54;
      (*(v55 + 32))(&v61[v60], v56, v58);

      v63 = sub_24B00A9A4(0, 0, v53, &unk_24B2F1CB0, v61);
      v64 = sub_24B2190DC(v63);
      (*(v55 + 8))(v57, v58, v64);
    }

    return;
  }

  while (1)
  {
    v26 = v86;
LABEL_10:
    v28 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v29 = *(a1 + 48);
    v30 = *(v82 + 72);
    sub_24B21B9C4(v29 + v30 * (v28 | (v22 << 6)), v16);
    sub_24B21B9C4(v16, v26);
    v74 = (*(v3 + 16))(v16);
    v75 = v30;
    sub_24B21BA28(v16);
    swift_getKeyPath();
    v88 = v3;
    sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
    sub_24B2D2584();

    v88 = v3;
    swift_getKeyPath();
    sub_24B2D25A4();

    v31 = v79;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(v3 + v31);
    v33 = v87;
    v34 = v3;
    *(v3 + v31) = 0x8000000000000000;
    v36 = sub_24B18186C(v86);
    v37 = v33[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      break;
    }

    v40 = v35;
    if (v33[3] >= v39)
    {
      v44 = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24B1CF6A4();
        v44 = v75;
      }

      v41 = v86;
      v45 = v87;
      if (v40)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_24B1C7F58(v39, isUniquelyReferenced_nonNull_native);
      v41 = v86;
      v42 = sub_24B18186C(v86);
      if ((v40 & 1) != (v43 & 1))
      {
        goto LABEL_30;
      }

      v36 = v42;
      v44 = v75;
      v45 = v87;
      if (v40)
      {
LABEL_19:
        v49 = v45[7];
        v50 = *(v49 + 8 * v36);
        *(v49 + 8 * v36) = v74;

        goto LABEL_20;
      }
    }

    v45[(v36 >> 6) + 8] |= 1 << v36;
    sub_24B21B9C4(v41, v45[6] + v36 * v44);
    *(v45[7] + 8 * v36) = v74;
    v46 = v45[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_29;
    }

    v45[2] = v48;
LABEL_20:
    sub_24B21BA28(v41);
    v3 = v34;
    *(v34 + v79) = v45;
    swift_endAccess();
    v88 = v34;
    swift_getKeyPath();
    sub_24B2D2594();

    a1 = v73;
    v16 = v81;
    v25 = v83;
    if (!v20)
    {
      goto LABEL_5;
    }
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_24B2D6054();
  __break(1u);
}

uint64_t sub_24B21A51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v7 = sub_24B2D3184();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE778, &unk_24B2F1D80);
  v5[30] = v8;
  v5[31] = *(v8 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = sub_24B2D5694();
  v5[34] = sub_24B2D5684();
  v10 = sub_24B2D5604();
  v5[35] = v10;
  v5[36] = v9;

  return MEMORY[0x2822009F8](sub_24B21A6FC, v10, v9);
}

uint64_t sub_24B21A6FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[37] = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE790, &unk_24B2F1C70);
    sub_24B2D5724();
    v2 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage;
    v0[38] = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider___observationRegistrar;
    v0[39] = v2;
    v0[40] = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__data;
    swift_beginAccess();
    v0[41] = 0;
    v3 = sub_24B2D5684();
    v0[42] = v3;
    v4 = swift_task_alloc();
    v0[43] = v4;
    *v4 = v0;
    v4[1] = sub_24B21A8CC;
    v5 = v0[30];
    v6 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 44, v3, v6, v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24B21A8CC()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_24B21AA10, v3, v2);
}

uint64_t sub_24B21AA10()
{
  v95 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  if (*(v0 + 352))
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 200);
    v5 = *(v0 + 208);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));

    swift_getKeyPath();
    *(v0 + 88) = v2;
    sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
    sub_24B2D2584();

    (*(v5 + 16))(v3, v2 + v1, v4);
    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 224);
    v10 = *(v0 + 200);
    v11 = (*(v0 + 208) + 8);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v94[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_24AFF321C(0xD00000000000003ALL, 0x800000024B2DCF70, v94);
      _os_log_impl(&dword_24AFD2000, v6, v7, "SettingsContactsProvider: %s - Finished", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C23D530](v13, -1, -1);
      MEMORY[0x24C23D530](v12, -1, -1);
    }

    else
    {
    }

    (*v11)(v9, v10);

    v25 = *(v0 + 8);

    return v25();
  }

  v14 = *(v0 + 232);
  v16 = *(v0 + 200);
  v15 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 96) = v2;
  sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2584();

  v88 = *(v15 + 16);
  v88(v14, v2 + v1, v16);
  v17 = sub_24B2D3164();
  v18 = sub_24B2D5934();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 232);
  v22 = *(v0 + 200);
  v21 = *(v0 + 208);
  if (v19)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v94[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_24AFF321C(0xD00000000000003ALL, 0x800000024B2DCF70, v94);
    _os_log_impl(&dword_24AFD2000, v17, v18, "SettingsContactsProvider: %s - new stream value", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C23D530](v24, -1, -1);
    MEMORY[0x24C23D530](v23, -1, -1);

    v87 = *(v21 + 8);
    v87(v20, v22);
  }

  else
  {

    v87 = *(v21 + 8);
    v87(v20, v22);
  }

  v27 = *(v0 + 296);
  v28 = v27 + *(v0 + 312);
  swift_getKeyPath();
  *(v0 + 104) = v27;
  sub_24B2D2584();

  v29 = *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE618, &unk_24B2F1C60) + 40));
  v30 = v29 + 56;
  v31 = -1;
  v32 = -1 << *(v29 + 32);
  if (-v32 < 64)
  {
    v31 = ~(-1 << -v32);
  }

  v33 = v31 & *(v29 + 56);
  v34 = (63 - v32) >> 6;
  v35 = *(v0 + 328);
  v93 = v29;

  v40 = 0;
  v89 = v34;
  for (i = v30; ; v30 = i)
  {
    if (!v33)
    {
      while (1)
      {
        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          __break(1u);
          goto LABEL_42;
        }

        if (v41 >= v34)
        {
          break;
        }

        v33 = *(v30 + 8 * v41);
        ++v40;
        if (v33)
        {
          v40 = v41;
          goto LABEL_21;
        }
      }

      *(v0 + 328) = v35;
      v83 = sub_24B2D5684();
      *(v0 + 336) = v83;
      v84 = swift_task_alloc();
      *(v0 + 344) = v84;
      *v84 = v0;
      v84[1] = sub_24B21A8CC;
      v39 = *(v0 + 240);
      v38 = MEMORY[0x277D85700];
      v36 = v0 + 352;
      v37 = v83;

      return MEMORY[0x2822003E8](v36, v37, v38, v39);
    }

LABEL_21:
    v42 = *(v0 + 296);
    v43 = *(v0 + 184);
    v44 = *(v0 + 192);
    v45 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v46 = *(*(v0 + 176) + 72);
    sub_24B21B9C4(*(v93 + 48) + v46 * (v45 | (v40 << 6)), v44);
    sub_24B21B9C4(v44, v43);
    v47 = (*(v42 + 16))(v44);
    v48 = *(v0 + 296);
    if (v35)
    {
      v91 = *(v0 + 312);
      v49 = *(v0 + 216);
      v50 = *(v0 + 200);
      v51 = *(v0 + 184);
      sub_24B21BA28(*(v0 + 192));
      sub_24B21BA28(v51);
      swift_getKeyPath();
      *(v0 + 112) = v48;
      sub_24B2D2584();

      v88(v49, v48 + v91, v50);
      v52 = v35;
      v53 = sub_24B2D3164();
      v54 = sub_24B2D5914();

      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 216);
      v57 = *(v0 + 200);
      if (v55)
      {
        v86 = *(v0 + 216);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v94[0] = v60;
        *v58 = 136315394;
        *(v58 + 4) = sub_24AFF321C(0xD00000000000003ALL, 0x800000024B2DCF70, v94);
        *(v58 + 12) = 2114;
        v61 = v35;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 14) = v62;
        *v59 = v62;
        _os_log_impl(&dword_24AFD2000, v53, v54, "SettingsContactsProvider: %s - error:%{public}@", v58, 0x16u);
        sub_24AFF8258(v59, &qword_27EFC7BB8, &unk_24B2DEAF0);
        MEMORY[0x24C23D530](v59, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x24C23D530](v60, -1, -1);
        MEMORY[0x24C23D530](v58, -1, -1);

        v36 = (v87)(v86, v57);
      }

      else
      {

        v36 = (v87)(v56, v57);
      }

      goto LABEL_15;
    }

    v85 = v47;
    v63 = *(v0 + 320);
    v92 = *(v0 + 184);
    sub_24B21BA28(*(v0 + 192));
    swift_getKeyPath();
    *(v0 + 120) = v48;
    sub_24B2D2584();

    *(v0 + 128) = v48;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v48 + v63);
    *(v0 + 136) = v65;
    *(v48 + v63) = 0x8000000000000000;
    v36 = sub_24B18186C(v92);
    v66 = *(v65 + 16);
    v67 = (v37 & 1) == 0;
    v68 = __OFADD__(v66, v67);
    v69 = v66 + v67;
    if (v68)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return MEMORY[0x2822003E8](v36, v37, v38, v39);
    }

    v70 = v37;
    if (*(v65 + 24) >= v69)
    {
      v73 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v82 = v36;
        sub_24B1CF6A4();
        v36 = v82;
      }

      goto LABEL_30;
    }

    v71 = *(v0 + 184);
    sub_24B1C7F58(v69, isUniquelyReferenced_nonNull_native);
    v36 = sub_24B18186C(v71);
    v73 = v46;
    if ((v70 & 1) != (v72 & 1))
    {
      break;
    }

LABEL_30:
    v74 = *(v0 + 136);
    v75 = *(v0 + 184);
    if (v70)
    {
      v76 = v74[7];
      v77 = *(v76 + 8 * v36);
      *(v76 + 8 * v36) = v85;

      sub_24B21BA28(v75);
    }

    else
    {
      v74[(v36 >> 6) + 8] |= 1 << v36;
      v78 = v36;
      sub_24B21B9C4(v75, v74[6] + v36 * v73);
      *(v74[7] + 8 * v78) = v85;
      v36 = sub_24B21BA28(v75);
      v79 = v74[2];
      v68 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v68)
      {
        goto LABEL_43;
      }

      v74[2] = v80;
    }

    v81 = *(v0 + 296);
    *(v81 + *(v0 + 320)) = v74;

    swift_endAccess();
    *(v0 + 144) = v81;
    swift_getKeyPath();
    sub_24B2D2594();

LABEL_15:
    v35 = 0;
    v34 = v89;
  }

  return sub_24B2D6054();
}

uint64_t SettingsContactsProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage, &qword_27EFCE618, &unk_24B2F1C60);

  v1 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SettingsContactsProvider.__deallocating_deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage, &qword_27EFCE618, &unk_24B2F1C60);

  v1 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24B21B608@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2584();

  v3 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage;
  swift_beginAccess();
  return sub_24B2194F8(v5 + v3, a1);
}

uint64_t sub_24B21B6D0(uint64_t a1)
{
  swift_getKeyPath();
  sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2574();

  return sub_24AFF8258(a1, &qword_27EFCE618, &unk_24B2F1C60);
}

void (*sub_24B21B7B0(uint64_t **a1))(void *a1)
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
  v2[4] = SettingsContactsProvider.storage.modify(v2);
  return sub_24B0E122C;
}

double sub_24B21B82C@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  sub_24B2D2584();

  v4 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__data;
  swift_beginAccess();
  *a1 = *(v3 + v4);

  return result;
}

uint64_t sub_24B21B8F4()
{
  sub_24B2D3184();

  return sub_24B24ACF0();
}

uint64_t sub_24B21B954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE618, &unk_24B2F1C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B21B9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B21BA28(uint64_t a1)
{
  v2 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B21BA84(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE790, &unk_24B2F1C70) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFD370;

  return sub_24B21A51C(a1, v6, v7, v8, v1 + v5);
}

void sub_24B21BB88(char a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    swift_getKeyPath();
    v16[1] = v2;
    sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
    sub_24B2D2584();

    v8 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v8, v4);
    v9 = sub_24B2D3164();
    v10 = sub_24B2D5934();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_24AFF321C(0xD00000000000003BLL, 0x800000024B2DCF30, v16);
      _os_log_impl(&dword_24AFD2000, v9, v10, "SettingsContactsProvider: %s - isEmpty", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    swift_getKeyPath();
    v16[0] = v2;
    sub_24B2D2584();

    v13 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__valuePublisher;
    if (*(v2 + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__valuePublisher) && (, sub_24B2D5764(), , *(v2 + v13)))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *&v15[-16] = v2;
      *&v15[-8] = 0;
      v16[0] = v2;
      sub_24B2D2574();
    }

    else
    {
      *(v2 + v13) = 0;
    }
  }
}

uint64_t sub_24B21BF1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B21BF64(uint64_t a1)
{
  result = sub_24B21BF1C(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider, &protocol conformance descriptor for SettingsContactsProvider);
  *(a1 + 8) = result;
  return result;
}

void sub_24B21BFC4(uint64_t a1)
{
  sub_24B21C0E0(319);
  if (v1 <= 0x3F)
  {
    sub_24B2D25C4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24B21C0E0(uint64_t a1)
{
  if (!qword_27EFCE770)
  {
    v2 = type metadata accessor for SettingsContactsProvider.Subscription(255);
    v3 = sub_24B21BF1C(&qword_27EFCE0C8, type metadata accessor for SettingsContactsProvider.Subscription, &protocol conformance descriptor for SettingsContactsProvider.Subscription);
    v5 = type metadata accessor for SettingsSubscriptionManagerStorage(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27EFCE770);
    }
  }
}

void sub_24B21C18C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__valuePublisher) = *(v0 + 24);
}

uint64_t sub_24B21C1D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE618, &unk_24B2F1C60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t SettingsContactsProvider.Dependencies.init(contactForSubscription:contactStoreStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void static SettingsContactsProvider.Dependencies.mock()(id (**a1)(uint64_t a1)@<X8>)
{
  *a1 = sub_24B21C2C4;
  a1[1] = 0;
  a1[2] = sub_24B21C4FC;
  a1[3] = 0;
}

id sub_24B21C2C4(uint64_t a1)
{
  v2 = sub_24B2D1704();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B21B9C4(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = objc_allocWithZone(MEMORY[0x277CBDA58]);
    v10 = sub_24B2D5374();

    v11 = [v9 initWithIdentifier_];

    return v11;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFCE7C0, &qword_24B2DEAA8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24B2DE430;
    *(v13 + 32) = sub_24B2D16F4();
    *(v13 + 40) = v14;
    v15 = sub_24B2D5524();

    v16 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v15];

    (*(v3 + 8))(v5, v2);
    return v16;
  }
}

uint64_t sub_24B21C4FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE780, &qword_24B2F1DD8);
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - v2, *MEMORY[0x277D85778], v1);
  return sub_24B2D5744();
}

double sub_24B21C604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A0, &qword_24B2F1DE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_24B2D56D4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v5, v2);
  sub_24B00A9A4(0, 0, v8, &unk_24B2F1DF0, v11);

  return result;
}

uint64_t sub_24B21C7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE788, &qword_24B2F1DF8);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_24B2D5D54();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = sub_24B2D5D64();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B21C970, 0, 0);
}

uint64_t sub_24B21C970(uint64_t a1)
{
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  v4 = *(v1 + 88);
  sub_24B2D6084();
  *(v1 + 40) = xmmword_24B2F1D90;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 1;
  v5 = sub_24B21D168(&qword_27EFC8640, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_24B2D6064();
  sub_24B21D168(&qword_27EFC8648, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_24B2D5D74();
  v6 = *(v3 + 8);
  *(v1 + 144) = v6;
  *(v1 + 152) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v7 = swift_task_alloc();
  *(v1 + 160) = v7;
  *v7 = v1;
  v7[1] = sub_24B21CB28;
  v9 = *(v1 + 112);
  v8 = *(v1 + 120);

  return MEMORY[0x2822008C8](v9, v1 + 16, v8, v5);
}

uint64_t sub_24B21CB28()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[18];
    v4 = v2[14];
    v5 = v2[11];

    v3(v4, v5);
    v6 = sub_24B21CE74;
  }

  else
  {
    v8 = v2[16];
    v7 = v2[17];
    v9 = v2[15];
    (v2[18])(v2[14], v2[11]);
    (*(v8 + 8))(v7, v9);
    v6 = sub_24B21CC94;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24B21CC94()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_24B2D56F4();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  sub_24B2D6084();
  *(v0 + 40) = xmmword_24B2F1D90;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v7 = sub_24B21D168(&qword_27EFC8640, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_24B2D6064();
  sub_24B21D168(&qword_27EFC8648, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_24B2D5D74();
  v8 = *(v5 + 8);
  *(v0 + 144) = v8;
  *(v0 + 152) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_24B21CB28;
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);

  return MEMORY[0x2822008C8](v11, v0 + 16, v10, v7);
}

uint64_t sub_24B21CE74()
{
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_24B2D56F4();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  sub_24B2D6084();
  *(v0 + 40) = xmmword_24B2F1D90;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v7 = sub_24B21D168(&qword_27EFC8640, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_24B2D6064();
  sub_24B21D168(&qword_27EFC8648, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_24B2D5D74();
  v8 = *(v5 + 8);
  *(v0 + 144) = v8;
  *(v0 + 152) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_24B21CB28;
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);

  return MEMORY[0x2822008C8](v11, v0 + 16, v10, v7);
}

uint64_t sub_24B21D06C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A0, &qword_24B2F1DE0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B21C7E0(a1, v6, v7, v1 + v5);
}

uint64_t sub_24B21D168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SettingsContactsProvider.Dependencies.live()@<X0>(id (**a1)(uint64_t a1)@<X8>)
{
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  sub_24B2D3174();
  v10 = [objc_opt_self() descriptorForRequiredKeys];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = *(v3 + 32);
  v12(v5, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  result = (v12)(v14 + v13, v5, v2);
  *a1 = sub_24B21639C;
  a1[1] = v11;
  a1[2] = sub_24B21E3C4;
  a1[3] = v14;
  return result;
}

id sub_24B21D3A4(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = a2;
  v43 = a3;
  v44[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24B2D16B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B2D1704();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = a1;
  sub_24B21B9C4(a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v14;
    v15 = v14[1];
    v17 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFCE7C0, &qword_24B2DEAA8);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_24B2DE430;
    *(v18 + 32) = v16;
    *(v18 + 40) = v15;
    v19 = sub_24B2D5524();

    v20 = [v17 predicateForContactsWithIdentifiers_];

    goto LABEL_8;
  }

  (*(v9 + 32))(v11, v14, v8);
  sub_24B2D16C4();
  v21 = (*(v5 + 88))(v7, v4);
  if (v21 == *MEMORY[0x277D08BE0])
  {
    v22 = objc_opt_self();
    sub_24B2D16F4();
    v23 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v24 = sub_24B2D5374();

    v25 = [v23 initWithStringValue_];

    v26 = [v22 predicateForContactsMatchingPhoneNumber_];
LABEL_7:
    v20 = v26;

    (*(v9 + 8))(v11, v8);
    goto LABEL_8;
  }

  v27 = v21;
  if (v21 == *MEMORY[0x277D08BE8])
  {
    v28 = objc_opt_self();
    sub_24B2D16F4();
    v25 = sub_24B2D5374();

    v26 = [v28 predicateForContactsMatchingEmailAddress_];
    goto LABEL_7;
  }

  v40 = *MEMORY[0x277D08BF0];
  v39 = objc_opt_self();
  sub_24B2D16F4();
  v36 = sub_24B2D5374();

  v37 = v36;
  v20 = [v39 predicateForContactsMatchingName:v36 options:1];

  (*(v9 + 8))(v11, v8);
  if (v27 != v40)
  {
    (*(v5 + 8))(v7, v4);
  }

LABEL_8:
  sub_24B21D944(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7F00, &qword_24B2DF950);
  v29 = sub_24B2D5524();

  v44[0] = 0;
  v30 = [v43 unifiedContactsMatchingPredicate:v20 keysToFetch:v29 error:v44];

  v31 = v44[0];
  if (!v30)
  {
    v35 = v44[0];
    sub_24B2D21E4();

    swift_willThrow();
    return v30;
  }

  sub_24AFFF54C();
  v32 = sub_24B2D5534();
  v33 = v31;

  if (v32 >> 62)
  {
    if (sub_24B2D5DA4())
    {
      goto LABEL_11;
    }

LABEL_19:

    v30 = sub_24B21DB6C();

    return v30;
  }

  if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_11:
  if ((v32 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x24C23C450](0, v32);
  }

  else
  {
    if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v34 = *(v32 + 32);
  }

  v30 = v34;

  return v30;
}

uint64_t sub_24B21D944(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98, &unk_24B2E6670);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24B2F1E00;
  v2 = *MEMORY[0x277CBD160];
  v3 = *MEMORY[0x277CBD018];
  *(v1 + 32) = *MEMORY[0x277CBD160];
  *(v1 + 40) = v3;
  v4 = *MEMORY[0x277CBD000];
  v5 = *MEMORY[0x277CBCFF8];
  v6 = MEMORY[0x277CBD058];
  *(v1 + 48) = *MEMORY[0x277CBD000];
  *(v1 + 56) = v5;
  v7 = *v6;
  v8 = *MEMORY[0x277CBD078];
  *(v1 + 64) = *v6;
  *(v1 + 72) = v8;
  v9 = *MEMORY[0x277CBCFC0];
  v10 = *MEMORY[0x277CBD098];
  *(v1 + 80) = *MEMORY[0x277CBCFC0];
  *(v1 + 88) = v10;
  v11 = *MEMORY[0x277CBD158];
  v29 = *MEMORY[0x277CBD028];
  v12 = *MEMORY[0x277CBD028];
  v13 = MEMORY[0x277CBD0C8];
  *(v1 + 96) = *MEMORY[0x277CBD158];
  *(v1 + 104) = v12;
  v14 = *v13;
  *(v1 + 112) = *v13;
  v31 = v1;
  v30 = objc_opt_self();
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v29;
  v25 = v14;
  v26 = [v30 descriptorForRequiredKeysForStyle_];
  MEMORY[0x24C23BCF0]();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24B2D5574();
  }

  sub_24B2D55B4();
  v27 = swift_unknownObjectRetain();
  MEMORY[0x24C23BCF0](v27);
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24B2D5574();
  }

  sub_24B2D55B4();
  return v31;
}

id sub_24B21DB6C()
{
  v1 = v0;
  v2 = sub_24B2D1704();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B21B9C4(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = objc_allocWithZone(MEMORY[0x277CBDA58]);
    v10 = sub_24B2D5374();

    v11 = [v9 initWithIdentifier_];

    return v11;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFCE7C0, &qword_24B2DEAA8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24B2DE430;
    *(v13 + 32) = sub_24B2D16F4();
    *(v13 + 40) = v14;
    v15 = sub_24B2D5524();

    v16 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v15];

    (*(v3 + 8))(v5, v2);
    return v16;
  }
}

uint64_t sub_24B21DD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v53 = sub_24B2D3184();
  v48 = *(v53 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE780, &qword_24B2F1DD8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE790, &unk_24B2F1C70);
  v51 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE798, &qword_24B2F1E10);
  v46 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v47 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A0, &qword_24B2F1DE0);
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v56 = v22;
  (*(v8 + 104))(v10, *MEMORY[0x277D85778], v7);
  v50 = v12;
  sub_24B2D5744();
  v49 = v22;
  v24 = v18;
  sub_24B21E518(v22, v18);
  v25 = [objc_opt_self() defaultCenter];
  v45 = sub_24B2D5A04();

  v26 = sub_24B2D3164();
  v27 = sub_24B2D5934();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = a1;
    v29 = swift_slowAlloc();
    v30 = v3;
    v31 = swift_slowAlloc();
    v57 = v31;
    *v29 = 136315138;
    *(v29 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v57);
    _os_log_impl(&dword_24AFD2000, v26, v27, "SettingsContactsProvider: didReceive %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v32 = v31;
    v3 = v30;
    MEMORY[0x24C23D530](v32, -1, -1);
    v33 = v29;
    a1 = v28;
    MEMORY[0x24C23D530](v33, -1, -1);
  }

  v34 = sub_24B2D56D4();
  v35 = v6;
  (*(*(v34 - 8) + 56))(v6, 1, 1, v34);
  v36 = v48;
  v38 = v52;
  v37 = v53;
  (*(v48 + 16))(v52, a1, v53);
  sub_24B21E518(v24, v15);
  v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v40 = (v3 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v46 + 80) + v40 + 8) & ~*(v46 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  (*(v36 + 32))(v42 + v39, v38, v37);
  *(v42 + v40) = v45;
  sub_24B21EE8C(v15, v42 + v41);

  sub_24B00A9A4(0, 0, v35, &unk_24B2F1E20, v42);

  sub_24AFF8258(v24, &qword_27EFCE798, &qword_24B2F1E10);
  (*(v51 + 32))(v55, v50, v54);
  return sub_24AFF8258(v49, &qword_27EFCE798, &qword_24B2F1E10);
}

uint64_t sub_24B21E3C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_24B2D3184() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24B21DD94(v4, a1);
}

uint64_t sub_24B21E434(uint64_t a1, uint64_t a2)
{
  sub_24AFF8258(a2, &qword_27EFCE798, &qword_24B2F1E10);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A0, &qword_24B2F1DE0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_24B21E518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE798, &qword_24B2F1E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B21E588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A8, &qword_24B2F1E28);
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE798, &qword_24B2F1E10);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFCE7B0, &qword_24B2EF108);
  v6[9] = swift_task_alloc();
  v7 = sub_24B2D59F4();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B21E700, 0, 0);
}

uint64_t sub_24B21E700()
{
  v11 = v0;
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v10);
    _os_log_impl(&dword_24AFD2000, v1, v2, "SettingsContactsProvider: %s - will await", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  sub_24B2D59E4();
  v5 = sub_24B185E74();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_24B21E890;
  v7 = v0[9];
  v8 = v0[10];

  return MEMORY[0x282200308](v7, v8, v5);
}

uint64_t sub_24B21E890()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24B21EE00;
  }

  else
  {
    v2 = sub_24B21E9A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B21E9C0()
{
  v29 = v0;
  v1 = v0[9];
  v2 = sub_24B2D2034();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[8];
    v4 = v0[5];
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_24B21E518(v4, v3);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A0, &qword_24B2F1DE0);
    v6 = *(v5 - 8);
    v7 = (*(v6 + 48))(v3, 1, v5);
    v8 = v0[8];
    if (v7 == 1)
    {
      sub_24AFF8258(v0[8], &qword_27EFCE798, &qword_24B2F1E10);
    }

    else
    {
      sub_24B2D5714();
      (*(v6 + 8))(v8, v5);
    }

    v19 = v0[1];

    return v19();
  }

  else
  {
    v9 = sub_24B2D3164();
    v10 = sub_24B2D5904();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v28);
      _os_log_impl(&dword_24AFD2000, v9, v10, "SettingsContactsProvider: %s - New Value)", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);
    }

    v13 = v0[7];
    sub_24B21E518(v0[5], v13);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A0, &qword_24B2F1DE0);
    v15 = *(v14 - 8);
    v16 = (*(v15 + 48))(v13, 1, v14);
    v17 = v0[7];
    if (v16 == 1)
    {
      sub_24AFF8258(v0[7], &qword_27EFCE798, &qword_24B2F1E10);
      v18 = 1;
    }

    else
    {
      sub_24B2D56F4();
      (*(v15 + 8))(v17, v14);
      v18 = 0;
    }

    v21 = v0[9];
    v22 = v0[6];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE788, &qword_24B2F1DF8);
    (*(*(v23 - 8) + 56))(v22, v18, 1, v23);
    sub_24AFF8258(v22, &qword_27EFCE7A8, &qword_24B2F1E28);
    sub_24AFF8258(v21, &unk_27EFCE7B0, &qword_24B2EF108);
    v24 = sub_24B185E74();
    v25 = swift_task_alloc();
    v0[13] = v25;
    *v25 = v0;
    v25[1] = sub_24B21E890;
    v26 = v0[9];
    v27 = v0[10];

    return MEMORY[0x282200308](v26, v27, v24);
  }
}

uint64_t sub_24B21EE00()
{
  *(v0 + 16) = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_24B21EE8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE798, &qword_24B2F1E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B21EEFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24B2D3184() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE798, &qword_24B2F1E10) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AFFD370;

  return sub_24B21E588(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t SettingsContactsProvider.Subscription.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_24B2D1704();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B21B9C4(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    v10 = v8[1];
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_24B2D5C34();

    v14 = 0x746361746E6F632ELL;
    v15 = 0xEF28656C646E6148;
    MEMORY[0x24C23BC10](v9, v10);

    MEMORY[0x24C23BC10](41, 0xE100000000000000);
    return v14;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_24B2D5C34();

    v14 = 0x746361746E6F632ELL;
    v15 = 0xEF28656C646E6148;
    v12 = sub_24B2D1694();
    MEMORY[0x24C23BC10](v12);

    MEMORY[0x24C23BC10](41, 0xE100000000000000);
    v11 = v14;
    (*(v3 + 8))(v5, v2);
  }

  return v11;
}

uint64_t type metadata accessor for SettingsContactsProvider.Subscription(uint64_t a1)
{
  result = qword_27EFCE7E0;
  if (!qword_27EFCE7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingsContactsProvider.Subscription.hash(into:)(uint64_t a1)
{
  v2 = sub_24B2D1704();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B21B9C4(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x24C23C8D0](1);
    sub_24B2D5404();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C23C8D0](0);
    sub_24B21FBD4(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
    sub_24B2D5254();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t SettingsContactsProvider.Subscription.hashValue.getter()
{
  v1 = v0;
  v2 = sub_24B2D1704();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B21B9C4(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x24C23C8D0](1);
    sub_24B2D5404();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C23C8D0](0);
    sub_24B21FBD4(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
    sub_24B2D5254();
    (*(v3 + 8))(v5, v2);
  }

  return sub_24B2D6124();
}

uint64_t sub_24B21F6A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_24B2D1704();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B21B9C4(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x24C23C8D0](1);
    sub_24B2D5404();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x24C23C8D0](0);
    sub_24B21FBD4(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
    sub_24B2D5254();
    (*(v5 + 8))(v7, v4);
  }

  return sub_24B2D6124();
}

uint64_t _s12FindMyUICore24SettingsContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1704();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC8, &qword_24B2EF018);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v18 = (&v26 + *(v17 + 56) - v15);
  sub_24B21B9C4(a1, &v26 - v15);
  sub_24B21B9C4(a2, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B21B9C4(v16, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, v18, v4);
      MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v13, v4);
      sub_24B21BA28(v16);
      return MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1;
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_12;
  }

  sub_24B21B9C4(v16, v10);
  v20 = *v10;
  v19 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_24B21FC84(v16);
    goto LABEL_13;
  }

  if (v20 == *v18 && v19 == v18[1])
  {

    goto LABEL_16;
  }

  v22 = sub_24B2D6004();

  if (v22)
  {
LABEL_16:
    sub_24B21BA28(v16);
    MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = 1;
    return MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1;
  }

  sub_24B21BA28(v16);
LABEL_13:
  MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = 0;
  return MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1;
}

uint64_t sub_24B21FBD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B21FC1C(uint64_t a1)
{
  result = sub_24B2D1704();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B21FC84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC8, &qword_24B2EF018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double SettingsFamilyRelationshipsProvider.data.getter()
{
  swift_getKeyPath();
  sub_24B220380();
  sub_24B2D2584();

  swift_beginAccess();

  return result;
}

uint64_t SettingsFamilyRelationshipsProvider.__allocating_init(dependencies:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SettingsFamilyRelationshipsProvider.init(dependencies:)(a1);
  return v2;
}

uint64_t SettingsFamilyRelationshipsProvider.storage.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24B220380();
  sub_24B2D2584();

  v3 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage;
  swift_beginAccess();
  return sub_24B220DFC(v5 + v3, a1);
}

uint64_t sub_24B21FE54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B220380();
  sub_24B2D2584();

  v4 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage;
  swift_beginAccess();
  return sub_24B220DFC(v3 + v4, a2);
}

uint64_t sub_24B21FEEC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6C0, &qword_24B2F1F30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24B220DFC(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24B220380();
  sub_24B2D2574();

  return sub_24AFF8258(v6, &qword_27EFCE6C0, &qword_24B2F1F30);
}

uint64_t SettingsFamilyRelationshipsProvider.storage.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_24B220380();
  sub_24B2D2574();

  return sub_24AFF8258(a1, &qword_27EFCE6C0, &qword_24B2F1F30);
}

uint64_t sub_24B2200B4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage;
  swift_beginAccess();
  sub_24B225C9C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t (*SettingsFamilyRelationshipsProvider.storage.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24B220380();
  sub_24B2D2584();

  *v4 = v1;
  swift_getKeyPath();
  sub_24B2D25A4();

  swift_beginAccess();
  return sub_24B220238;
}

void sub_24B220238(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_24B2D2594();

  free(v1);
}

double sub_24B2202BC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B220380();
  sub_24B2D2584();

  v4 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__data;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

unint64_t sub_24B220380()
{
  result = qword_27EFCE610;
  if (!qword_27EFCE610)
  {
    type metadata accessor for SettingsFamilyRelationshipsProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE610);
  }

  return result;
}

uint64_t type metadata accessor for SettingsFamilyRelationshipsProvider(uint64_t a1)
{
  result = qword_27EFCE820;
  if (!qword_27EFCE820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B220424(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__data;
  swift_beginAccess();

  sub_24B1E3DF0(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B220380();
    sub_24B2D2574();
  }
}

uint64_t sub_24B220544(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__data;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t SettingsFamilyRelationshipsProvider.isLoading.getter()
{
  swift_getKeyPath();
  sub_24B220380();
  sub_24B2D2584();

  return *(v0 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__isLoading);
}

void sub_24B22062C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B220380();
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__isLoading);
}

void sub_24B2206D4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__isLoading) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__isLoading) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B220380();
    sub_24B2D2574();
  }
}

double sub_24B2207BC()
{
  swift_getKeyPath();
  sub_24B220380();
  sub_24B2D2584();

  return result;
}

double sub_24B220838@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B220380();
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__valuePublisher);

  return result;
}

double sub_24B2208BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__valuePublisher;
  if (!*(v1 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__valuePublisher))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B220380();
    sub_24B2D2574();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_24B2D5754();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

uint64_t SettingsFamilyRelationshipsProvider.init(dependencies:)(uint64_t a1)
{
  v2 = v1;
  *&v31 = a1;
  v3 = sub_24B2D2504();
  MEMORY[0x28223BE20](v3 - 8);
  v33 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB58, &unk_24B2F1240);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = v29 - v6;
  v7 = sub_24B2D3184();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6C0, &qword_24B2F1F30);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v29 - v16;
  v18 = v15[11];
  *&v17[v18] = sub_24B195A74(MEMORY[0x277D84F90]);
  *&v17[v15[12]] = MEMORY[0x277D84FA0];
  v17[v15[13]] = 0;
  sub_24B2D3174();
  v19 = *(v8 + 16);
  v29[1] = &unk_24B2F1F40;
  v20 = *(v31 + 16);
  v30 = *v31;
  v31 = v20;
  v19(v17, v13, v7);
  v21 = *(v8 + 32);
  v21(v10, v13, v7);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v21((v23 + v22), v10, v7);
  v24 = &v17[v15[14]];
  *v24 = sub_24B21B8F4;
  v24[1] = v23;
  sub_24B0391CC(v17, v2 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage, &qword_27EFCE6C0, &qword_24B2F1F30);
  *(v2 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__data) = sub_24B19585C(MEMORY[0x277D84F90]);
  *(v2 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__isLoading) = 0;
  v25 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider_taskQueue;
  sub_24B2D12D4();
  v26 = sub_24B2D1294();
  (*(*(v26 - 8) + 56))(v32, 1, 1, v26);
  sub_24B2D24F4();
  *(v2 + v25) = sub_24B2D12B4();
  *(v2 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__valuePublisher) = 0;
  sub_24B2D25B4();
  v27 = v31;
  *(v2 + 16) = v30;
  *(v2 + 32) = v27;
  return v2;
}

uint64_t sub_24B220DFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6C0, &qword_24B2F1F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B220E88(uint64_t a1, char a2)
{
  *(v3 + 425) = a2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  v4 = sub_24B2D3184();
  *(v3 + 144) = v4;
  *(v3 + 152) = *(v4 - 8);
  *(v3 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  *(v3 + 168) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE790, &unk_24B2F1C70);
  *(v3 + 176) = v5;
  v6 = *(v5 - 8);
  *(v3 + 184) = v6;
  *(v3 + 192) = *(v6 + 64);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE670, &unk_24B2F17A0);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F0, &qword_24B2F15B8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v7 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  *(v3 + 248) = v7;
  *(v3 + 256) = *(v7 - 8);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  v8 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  *(v3 + 288) = v8;
  *(v3 + 296) = *(v8 - 8);
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = sub_24B2D5694();
  *(v3 + 336) = sub_24B2D5684();
  v10 = sub_24B2D5604();
  *(v3 + 344) = v10;
  *(v3 + 352) = v9;

  return MEMORY[0x2822009F8](sub_24B2211A8, v10, v9);
}

uint64_t sub_24B2211A8()
{
  v1 = *(v0 + 136);
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__isLoading) == 1)
  {
    *(v1 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__isLoading) = 1;
  }

  else
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 1;
    *(v0 + 64) = v1;
    sub_24B220380();
    sub_24B2D2574();
  }

  v3 = *(v0 + 128);
  v4 = *(v3 + 32);
  *(v0 + 426) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 56);
  v8 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage;
  *(v0 + 360) = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider___observationRegistrar;
  *(v0 + 368) = v8;
  *(v0 + 376) = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__data;

  swift_beginAccess();
  if (v7)
  {
    v9 = 0;
    v10 = *(v0 + 128);
LABEL_12:
    *(v0 + 384) = v7;
    *(v0 + 392) = v9;
    v12 = *(*(v10 + 48) + (__clz(__rbit64(v7)) | (v9 << 6)));
    v13 = *(*(v0 + 136) + 32);
    *(v0 + 424) = v12;
    v33 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 400) = v14;
    *v14 = v0;
    v14[1] = sub_24B2216FC;

    return v33(v0 + 424);
  }

  else
  {
    v11 = 0;
    while (1)
    {
      v9 = v11 + 1;
      if (v11 + 1 >= ((1 << *(v0 + 426)) + 63) >> 6)
      {
        break;
      }

      v10 = *(v0 + 128);
      v7 = *(v10 + 8 * v11++ + 64);
      if (v7)
      {
        goto LABEL_12;
      }
    }

    v16 = *(v0 + 425);

    if (v16 == 1)
    {
      v18 = *(v0 + 136);
      (*(v18 + 16))(v17);
      swift_getKeyPath();
      *(v0 + 120) = v18;
      sub_24B220380();
      sub_24B2D2584();

      if (*(v18 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__valuePublisher))
      {

        sub_24B2D5764();
      }

      v20 = *(v0 + 200);
      v19 = *(v0 + 208);
      v34 = v19;
      v21 = *(v0 + 184);
      v23 = *(v0 + 168);
      v22 = *(v0 + 176);
      v24 = sub_24B2D56D4();
      (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
      v25 = swift_allocObject();
      swift_weakInit();
      (*(v21 + 16))(v20, v19, v22);

      v26 = sub_24B2D5684();
      v27 = (*(v21 + 80) + 40) & ~*(v21 + 80);
      v28 = swift_allocObject();
      v29 = MEMORY[0x277D85700];
      *(v28 + 2) = v26;
      *(v28 + 3) = v29;
      *(v28 + 4) = v25;
      (*(v21 + 32))(&v28[v27], v20, v22);

      v30 = sub_24B00A9A4(0, 0, v23, &unk_24B2F20A8, v28);
      v31 = sub_24B2208BC(v30);
      (*(v21 + 8))(v34, v22, v31);
    }

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_24B2216FC(uint64_t a1)
{
  v3 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  v4 = v3[43];
  v5 = v3[44];
  if (v1)
  {
    v6 = sub_24B2223AC;
  }

  else
  {
    v6 = sub_24B221810;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

void sub_24B221810()
{
  v1 = *(v0 + 408);
  if (*(v1 + 16))
  {
    v2 = 0;
    v3 = *(*(v0 + 296) + 80);
    v4 = v1 + ((v3 + 32) & ~v3);
    v86 = *(v0 + 408);
    v87 = v4;
    v91 = *(v1 + 16);
    do
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      v8 = *(v0 + 312);
      v7 = *(v0 + 320);
      v92 = *(*(v0 + 296) + 72);
      sub_24B225A04(v4 + v92 * v2, v7, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      sub_24B225A04(v7, v8, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_24B225ACC(*(v0 + 312), *(v0 + 232), type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
        v9 = 0;
      }

      else
      {
        v9 = 1;
      }

      v11 = *(v0 + 232);
      v10 = *(v0 + 240);
      v12 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(0);
      v13 = *(v12 - 8);
      (*(v13 + 56))(v11, v9, 1, v12);
      sub_24B0391CC(v11, v10, &qword_27EFCE5F0, &qword_24B2F15B8);
      if ((*(v13 + 48))(v10, 1, v12) == 1)
      {
        v5 = *(v0 + 240);
        sub_24B225A6C(*(v0 + 320), type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
        sub_24AFF8258(v5, &qword_27EFCE5F0, &qword_24B2F15B8);
        v6 = v91;
      }

      else
      {
        v14 = *(v0 + 320);
        v15 = *(v0 + 296);
        v89 = v2;
        v90 = *(v0 + 288);
        v16 = *(v0 + 272);
        v17 = *(v0 + 280);
        v18 = *(v0 + 264);
        v19 = *(v0 + 240);
        v20 = *(v0 + 224);
        v21 = *(v0 + 136);
        sub_24B225A04(v19, v16, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        sub_24B225A6C(v19, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
        sub_24B225ACC(v16, v17, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        sub_24B225A04(v17, v18, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        sub_24B225A04(v14, v20, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
        v88 = *(v15 + 56);
        v88(v20, 0, 1, v90);
        swift_getKeyPath();
        *(v0 + 80) = v21;
        sub_24B220380();
        sub_24B2D2584();

        *(v0 + 88) = v21;
        swift_getKeyPath();
        sub_24B2D25A4();

        swift_beginAccess();
        v22 = (*(v15 + 48))(v20, 1, v90);
        v23 = *(v0 + 376);
        if (v22 == 1)
        {
          v24 = *(v0 + 264);
          sub_24AFF8258(*(v0 + 224), &qword_27EFCE670, &unk_24B2F17A0);
          v25 = sub_24B181A88(v24);
          if (v26)
          {
            v27 = v25;
            v28 = *(v0 + 376);
            v29 = *(v0 + 136);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v31 = *(v29 + v28);
            *(v0 + 104) = v31;
            *(v29 + v28) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_24B1CFB5C();
              v31 = *(v0 + 104);
            }

            v32 = *(v0 + 376);
            v33 = *(v0 + 264);
            v34 = *(v0 + 216);
            v35 = *(v0 + 136);
            sub_24B225A6C(*(v31 + 48) + *(*(v0 + 256) + 72) * v27, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
            sub_24B225ACC(*(v31 + 56) + v27 * v92, v34, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
            sub_24B191F60(v27, v31);
            sub_24B225A6C(v33, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
            *(v35 + v32) = v31;

            v36 = 0;
          }

          else
          {
            sub_24B225A6C(*(v0 + 264), type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
            v36 = 1;
          }

          v50 = *(v0 + 216);
          v88(v50, v36, 1, *(v0 + 288));
          sub_24AFF8258(v50, &qword_27EFCE670, &unk_24B2F17A0);
          v4 = v87;
        }

        else
        {
          v37 = *(v0 + 264);
          v38 = *(v0 + 136);
          sub_24B225ACC(*(v0 + 224), *(v0 + 304), type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
          v39 = swift_isUniquelyReferenced_nonNull_native();
          v40 = *(v38 + v23);
          *(v0 + 112) = v40;
          *(v38 + v23) = 0x8000000000000000;
          v41 = sub_24B181A88(v37);
          v43 = *(v40 + 16);
          v44 = (v42 & 1) == 0;
          v45 = __OFADD__(v43, v44);
          v46 = v43 + v44;
          if (v45)
          {
            goto LABEL_50;
          }

          v47 = v42;
          if (*(v40 + 24) >= v46)
          {
            v4 = v87;
            if ((v39 & 1) == 0)
            {
              v61 = v41;
              sub_24B1CFB5C();
              v41 = v61;
            }
          }

          else
          {
            v48 = *(v0 + 264);
            sub_24B1C8854(v46, v39);
            v41 = sub_24B181A88(v48);
            v4 = v87;
            if ((v47 & 1) != (v49 & 1))
            {

              sub_24B2D6054();
              return;
            }
          }

          v51 = *(v0 + 112);
          v52 = *(v0 + 304);
          v53 = *(v0 + 264);
          if (v47)
          {
            sub_24B225B34(*(v0 + 304), v51[7] + v41 * v92);
            sub_24B225A6C(v53, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
          }

          else
          {
            v54 = *(v0 + 256);
            v51[(v41 >> 6) + 8] |= 1 << v41;
            v55 = v41;
            sub_24B225A04(v53, v51[6] + *(v54 + 72) * v41, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
            sub_24B225ACC(v52, v51[7] + v55 * v92, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
            sub_24B225A6C(v53, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
            v56 = v51[2];
            v45 = __OFADD__(v56, 1);
            v57 = v56 + 1;
            if (v45)
            {
              goto LABEL_51;
            }

            v51[2] = v57;
          }

          *(*(v0 + 136) + *(v0 + 376)) = v51;
        }

        v58 = *(v0 + 320);
        v59 = *(v0 + 280);
        v60 = *(v0 + 136);
        swift_endAccess();
        *(v0 + 96) = v60;
        swift_getKeyPath();
        sub_24B2D2594();

        sub_24B225A6C(v59, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        sub_24B225A6C(v58, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
        v1 = v86;
        v6 = v91;
        v2 = v89;
      }

      ++v2;
    }

    while (v6 != v2);
  }

  v62 = *(v0 + 392);
  v63 = (*(v0 + 384) - 1) & *(v0 + 384);
  if (v63)
  {
    v64 = *(v0 + 128);
LABEL_35:
    *(v0 + 384) = v63;
    *(v0 + 392) = v62;
    v66 = *(*(v64 + 48) + (__clz(__rbit64(v63)) | (v62 << 6)));
    v67 = *(*(v0 + 136) + 32);
    *(v0 + 424) = v66;
    v93 = (v67 + *v67);
    v68 = swift_task_alloc();
    *(v0 + 400) = v68;
    *v68 = v0;
    v68[1] = sub_24B2216FC;

    v93(v0 + 424);
  }

  else
  {
    while (1)
    {
      v65 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v65 >= (((1 << *(v0 + 426)) + 63) >> 6))
      {
        v69 = *(v0 + 425);

        if (v69)
        {
          v71 = *(v0 + 136);
          (*(v71 + 16))(v70);
          swift_getKeyPath();
          *(v0 + 120) = v71;
          sub_24B220380();
          sub_24B2D2584();

          if (*(v71 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__valuePublisher))
          {

            sub_24B2D5764();
          }

          v73 = *(v0 + 200);
          v72 = *(v0 + 208);
          v94 = v72;
          v74 = *(v0 + 184);
          v76 = *(v0 + 168);
          v75 = *(v0 + 176);
          v77 = sub_24B2D56D4();
          (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
          v78 = swift_allocObject();
          swift_weakInit();
          (*(v74 + 16))(v73, v72, v75);

          v79 = sub_24B2D5684();
          v80 = (*(v74 + 80) + 40) & ~*(v74 + 80);
          v81 = swift_allocObject();
          v82 = MEMORY[0x277D85700];
          *(v81 + 2) = v79;
          *(v81 + 3) = v82;
          *(v81 + 4) = v78;
          (*(v74 + 32))(&v81[v80], v73, v75);

          v83 = sub_24B00A9A4(0, 0, v76, &unk_24B2F20A8, v81);
          v84 = sub_24B2208BC(v83);
          (*(v74 + 8))(v94, v75, v84);
        }

        v85 = *(v0 + 8);

        v85();
        return;
      }

      v64 = *(v0 + 128);
      v63 = *(v64 + 8 * v65 + 56);
      ++v62;
      if (v63)
      {
        v62 = v65;
        goto LABEL_35;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }
}

uint64_t sub_24B2223AC()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 368);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  swift_getKeyPath();
  *(v0 + 72) = v5;
  sub_24B220380();
  sub_24B2D2584();

  (*(v4 + 16))(v3, v5 + v2, v6);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5914();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 416);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_24AFD2000, v8, v9, "SettingsFamilyRelationshipsProvider: error: %{public}@", v12, 0xCu);
    sub_24AFF8258(v13, &qword_27EFC7BB8, &unk_24B2DEAF0);
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);
  }

  else
  {
  }

  result = (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  v17 = *(v0 + 392);
  v18 = (*(v0 + 384) - 1) & *(v0 + 384);
  if (v18)
  {
    v19 = *(v0 + 128);
LABEL_10:
    *(v0 + 384) = v18;
    *(v0 + 392) = v17;
    v21 = *(*(v19 + 48) + (__clz(__rbit64(v18)) | (v17 << 6)));
    v22 = *(*(v0 + 136) + 32);
    *(v0 + 424) = v21;
    v41 = (v22 + *v22);
    v23 = swift_task_alloc();
    *(v0 + 400) = v23;
    *v23 = v0;
    v23[1] = sub_24B2216FC;

    return v41(v0 + 424);
  }

  else
  {
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v20 >= (((1 << *(v0 + 426)) + 63) >> 6))
      {
        break;
      }

      v19 = *(v0 + 128);
      v18 = *(v19 + 8 * v20 + 56);
      ++v17;
      if (v18)
      {
        v17 = v20;
        goto LABEL_10;
      }
    }

    v24 = *(v0 + 425);

    if (v24 == 1)
    {
      v26 = *(v0 + 136);
      (*(v26 + 16))(v25);
      swift_getKeyPath();
      *(v0 + 120) = v26;
      sub_24B2D2584();

      if (*(v26 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__valuePublisher))
      {

        sub_24B2D5764();
      }

      v28 = *(v0 + 200);
      v27 = *(v0 + 208);
      v42 = v27;
      v29 = *(v0 + 184);
      v31 = *(v0 + 168);
      v30 = *(v0 + 176);
      v32 = sub_24B2D56D4();
      (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
      v33 = swift_allocObject();
      swift_weakInit();
      (*(v29 + 16))(v28, v27, v30);

      v34 = sub_24B2D5684();
      v35 = (*(v29 + 80) + 40) & ~*(v29 + 80);
      v36 = swift_allocObject();
      v37 = MEMORY[0x277D85700];
      *(v36 + 2) = v34;
      *(v36 + 3) = v37;
      *(v36 + 4) = v33;
      (*(v29 + 32))(&v36[v35], v28, v30);

      v38 = sub_24B00A9A4(0, 0, v31, &unk_24B2F20A8, v36);
      v39 = sub_24B2208BC(v38);
      (*(v29 + 8))(v42, v30, v39);
    }

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_24B222974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE670, &unk_24B2F17A0);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F0, &qword_24B2F15B8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v6 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v7 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v8 = sub_24B2D3184();
  v5[36] = v8;
  v5[37] = *(v8 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE778, &unk_24B2F1D80);
  v5[41] = v9;
  v5[42] = *(v9 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = sub_24B2D5694();
  v5[45] = sub_24B2D5684();
  v11 = sub_24B2D5604();
  v5[46] = v11;
  v5[47] = v10;

  return MEMORY[0x2822009F8](sub_24B222C5C, v11, v10);
}

uint64_t sub_24B222C5C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[48] = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE790, &unk_24B2F1C70);
    sub_24B2D5724();
    v2 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage;
    v0[49] = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider___observationRegistrar;
    v0[50] = v2;
    v0[51] = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__data;
    swift_beginAccess();
    v3 = sub_24B2D5684();
    v0[52] = v3;
    v4 = swift_task_alloc();
    v0[53] = v4;
    *v4 = v0;
    v4[1] = sub_24B222E9C;
    v5 = v0[41];
    v6 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 64, v3, v6, v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24B222E9C()
{
  v1 = *v0;

  v2 = *(v1 + 376);
  v3 = *(v1 + 368);

  return MEMORY[0x2822009F8](sub_24B222FE0, v3, v2);
}

uint64_t sub_24B222FE0()
{
  v48 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  if (*(v0 + 512))
  {
    v3 = *(v0 + 312);
    v4 = *(v0 + 288);
    v5 = *(v0 + 296);
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

    swift_getKeyPath();
    *(v0 + 88) = v2;
    sub_24B220380();
    sub_24B2D2584();

    (*(v5 + 16))(v3, v2 + v1, v4);
    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 312);
    v10 = *(v0 + 288);
    v11 = (*(v0 + 296) + 8);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v47 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_24AFF321C(0xD000000000000029, 0x800000024B2DD050, &v47);
      _os_log_impl(&dword_24AFD2000, v6, v7, "SettingsFamilyRelationshipsProvider: %s - Finished", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C23D530](v13, -1, -1);
      MEMORY[0x24C23D530](v12, -1, -1);
    }

    else
    {
    }

    (*v11)(v9, v10);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v14 = *(v0 + 320);
    v16 = *(v0 + 288);
    v15 = *(v0 + 296);
    swift_getKeyPath();
    *(v0 + 96) = v2;
    *(v0 + 432) = sub_24B220380();
    sub_24B2D2584();

    v17 = *(v15 + 16);
    *(v0 + 440) = v17;
    *(v0 + 448) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v14, v2 + v1, v16);
    v18 = sub_24B2D3164();
    v19 = sub_24B2D5934();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 320);
    v22 = *(v0 + 288);
    v23 = *(v0 + 296);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_24AFF321C(0xD000000000000029, 0x800000024B2DD050, &v47);
      _os_log_impl(&dword_24AFD2000, v18, v19, "SettingsFamilyRelationshipsProvider: %s - new stream value", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x24C23D530](v25, -1, -1);
      MEMORY[0x24C23D530](v24, -1, -1);
    }

    v26 = *(v23 + 8);
    v26(v21, v22);
    *(v0 + 456) = v26;
    v27 = *(v0 + 384);
    v28 = v27 + *(v0 + 400);
    swift_getKeyPath();
    *(v0 + 104) = v27;
    sub_24B2D2584();

    v29 = *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6C0, &qword_24B2F1F30) + 40));
    *(v0 + 464) = v29;
    v30 = *(v29 + 32);
    *(v0 + 514) = v30;
    v31 = -1;
    v32 = -1 << v30;
    if (-(-1 << v30) < 64)
    {
      v31 = ~(-1 << -v32);
    }

    v33 = v31 & *(v29 + 56);

    if (v33)
    {
      v35 = 0;
LABEL_17:
      *(v0 + 472) = v33;
      *(v0 + 480) = v35;
      v39 = *(*(v34 + 48) + (__clz(__rbit64(v33)) | (v35 << 6)));
      v40 = *(*(v0 + 384) + 32);
      *(v0 + 513) = v39;
      v46 = (v40 + *v40);
      v41 = swift_task_alloc();
      *(v0 + 488) = v41;
      *v41 = v0;
      v41[1] = sub_24B223648;

      return v46(v0 + 513);
    }

    else
    {
      v38 = 0;
      while (((63 - v32) >> 6) - 1 != v38)
      {
        v35 = v38 + 1;
        v33 = *(v34 + 8 * v38++ + 64);
        if (v33)
        {
          goto LABEL_17;
        }
      }

      v42 = sub_24B2D5684();
      *(v0 + 416) = v42;
      v43 = swift_task_alloc();
      *(v0 + 424) = v43;
      *v43 = v0;
      v43[1] = sub_24B222E9C;
      v44 = *(v0 + 328);
      v45 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 512, v42, v45, v44);
    }
  }
}

uint64_t sub_24B223648(uint64_t a1)
{
  v3 = *v2;
  v3[62] = a1;
  v3[63] = v1;

  v4 = v3[46];
  v5 = v3[47];
  if (v1)
  {
    v6 = sub_24B2240C8;
  }

  else
  {
    v6 = sub_24B22375C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24B22375C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 496);
  if (*(v5 + 16))
  {
    v6 = 0;
    v7 = *(*(v4 + 256) + 80);
    v8 = v5 + ((v7 + 32) & ~v7);
    v74 = *(v4 + 496);
    v75 = v8;
    v79 = *(v5 + 16);
    do
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      v12 = *(v4 + 272);
      v11 = *(v4 + 280);
      v80 = *(*(v4 + 256) + 72);
      sub_24B225A04(v8 + v80 * v6, v11, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      sub_24B225A04(v11, v12, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_24B225ACC(*(v4 + 272), *(v4 + 192), type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v15 = *(v4 + 192);
      v14 = *(v4 + 200);
      v16 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(0);
      v17 = *(v16 - 8);
      (*(v17 + 56))(v15, v13, 1, v16);
      sub_24B0391CC(v15, v14, &qword_27EFCE5F0, &qword_24B2F15B8);
      if ((*(v17 + 48))(v14, 1, v16) == 1)
      {
        v9 = *(v4 + 200);
        sub_24B225A6C(*(v4 + 280), type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
        a1 = sub_24AFF8258(v9, &qword_27EFCE5F0, &qword_24B2F15B8);
        v10 = v79;
      }

      else
      {
        v77 = v6;
        v18 = *(v4 + 384);
        v19 = *(v4 + 280);
        v20 = *(v4 + 256);
        v78 = *(v4 + 248);
        v21 = *(v4 + 232);
        v22 = *(v4 + 240);
        v23 = *(v4 + 224);
        v24 = *(v4 + 200);
        v25 = *(v4 + 184);
        sub_24B225A04(v24, v21, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        sub_24B225A6C(v24, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
        sub_24B225ACC(v21, v22, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        sub_24B225A04(v22, v23, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        sub_24B225A04(v19, v25, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
        v76 = *(v20 + 56);
        v76(v25, 0, 1, v78);
        swift_getKeyPath();
        *(v4 + 120) = v18;
        sub_24B2D2584();

        *(v4 + 128) = v18;
        swift_getKeyPath();
        sub_24B2D25A4();

        swift_beginAccess();
        v26 = (*(v20 + 48))(v25, 1, v78);
        v27 = *(v4 + 408);
        v28 = *(v4 + 384);
        if (v26 == 1)
        {
          v29 = *(v4 + 224);
          sub_24AFF8258(*(v4 + 184), &qword_27EFCE670, &unk_24B2F17A0);
          v30 = sub_24B181A88(v29);
          if (v31)
          {
            v32 = v30;
            v33 = *(v4 + 408);
            v34 = *(v4 + 384);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v36 = *(v34 + v33);
            *(v4 + 144) = v36;
            *(v34 + v33) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_24B1CFB5C();
              v36 = *(v4 + 144);
            }

            v37 = *(v4 + 408);
            v38 = *(v4 + 384);
            v39 = *(v4 + 224);
            v40 = *(v4 + 176);
            sub_24B225A6C(*(v36 + 48) + *(*(v4 + 216) + 72) * v32, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
            sub_24B225ACC(*(v36 + 56) + v32 * v80, v40, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
            sub_24B191F60(v32, v36);
            sub_24B225A6C(v39, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
            *(v38 + v37) = v36;

            v41 = 0;
          }

          else
          {
            sub_24B225A6C(*(v4 + 224), type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
            v41 = 1;
          }

          v52 = *(v4 + 176);
          v76(v52, v41, 1, *(v4 + 248));
          sub_24AFF8258(v52, &qword_27EFCE670, &unk_24B2F17A0);
          v8 = v75;
        }

        else
        {
          v42 = *(v4 + 224);
          sub_24B225ACC(*(v4 + 184), *(v4 + 264), type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v44 = *(v28 + v27);
          *(v4 + 152) = v44;
          *(v28 + v27) = 0x8000000000000000;
          a1 = sub_24B181A88(v42);
          v45 = *(v44 + 16);
          v46 = (a2 & 1) == 0;
          v47 = __OFADD__(v45, v46);
          v48 = v45 + v46;
          if (v47)
          {
            goto LABEL_46;
          }

          v49 = a2;
          if (*(v44 + 24) >= v48)
          {
            v8 = v75;
            if ((v43 & 1) == 0)
            {
              v63 = a1;
              sub_24B1CFB5C();
              a1 = v63;
            }
          }

          else
          {
            v50 = *(v4 + 224);
            sub_24B1C8854(v48, v43);
            a1 = sub_24B181A88(v50);
            v8 = v75;
            if ((v49 & 1) != (v51 & 1))
            {

              return sub_24B2D6054();
            }
          }

          v53 = *(v4 + 152);
          v54 = *(v4 + 264);
          v55 = *(v4 + 224);
          if (v49)
          {
            sub_24B225B34(*(v4 + 264), v53[7] + a1 * v80);
            sub_24B225A6C(v55, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
          }

          else
          {
            v56 = *(v4 + 216);
            v53[(a1 >> 6) + 8] |= 1 << a1;
            v57 = a1;
            sub_24B225A04(v55, v53[6] + *(v56 + 72) * a1, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
            sub_24B225ACC(v54, v53[7] + v57 * v80, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
            a1 = sub_24B225A6C(v55, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
            v58 = v53[2];
            v47 = __OFADD__(v58, 1);
            v59 = v58 + 1;
            if (v47)
            {
              goto LABEL_47;
            }

            v53[2] = v59;
          }

          *(*(v4 + 384) + *(v4 + 408)) = v53;
        }

        v60 = *(v4 + 384);
        v61 = *(v4 + 280);
        v62 = *(v4 + 240);
        swift_endAccess();
        *(v4 + 136) = v60;
        swift_getKeyPath();
        sub_24B2D2594();

        sub_24B225A6C(v62, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        a1 = sub_24B225A6C(v61, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
        v5 = v74;
        v10 = v79;
        v6 = v77;
      }

      ++v6;
    }

    while (v10 != v6);
  }

  v64 = *(v4 + 480);
  v65 = (*(v4 + 472) - 1) & *(v4 + 472);
  if (v65)
  {
    v66 = *(v4 + 464);
LABEL_35:
    *(v4 + 472) = v65;
    *(v4 + 480) = v64;
    v68 = *(*(v66 + 48) + (__clz(__rbit64(v65)) | (v64 << 6)));
    v69 = *(*(v4 + 384) + 32);
    *(v4 + 513) = v68;
    v81 = (v69 + *v69);
    v70 = swift_task_alloc();
    *(v4 + 488) = v70;
    *v70 = v4;
    v70[1] = sub_24B223648;

    return v81(v4 + 513);
  }

  else
  {
    while (1)
    {
      v67 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v67 >= (((1 << *(v4 + 514)) + 63) >> 6))
      {

        v72 = sub_24B2D5684();
        *(v4 + 416) = v72;
        v73 = swift_task_alloc();
        *(v4 + 424) = v73;
        *v73 = v4;
        v73[1] = sub_24B222E9C;
        a4 = *(v4 + 328);
        a3 = MEMORY[0x277D85700];
        a1 = v4 + 512;
        a2 = v72;

        return MEMORY[0x2822003E8](a1, a2, a3, a4);
      }

      v66 = *(v4 + 464);
      v65 = *(v66 + 8 * v67 + 56);
      ++v64;
      if (v65)
      {
        v64 = v67;
        goto LABEL_35;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return MEMORY[0x2822003E8](a1, a2, a3, a4);
  }
}

uint64_t sub_24B2240C8()
{
  v37 = v0;
  v1 = *(v0 + 504);
  v34 = *(v0 + 440);
  v2 = *(v0 + 400);
  v3 = *(v0 + 384);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  swift_getKeyPath();
  *(v0 + 112) = v3;
  sub_24B2D2584();

  v34(v4, v3 + v2, v5);
  v6 = v1;
  v7 = sub_24B2D3164();
  v8 = sub_24B2D5914();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 504);
  v11 = *(v0 + 456);
  v12 = *(v0 + 304);
  v13 = *(v0 + 288);
  if (v9)
  {
    v33 = *(v0 + 456);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_24AFF321C(0xD000000000000029, 0x800000024B2DD050, &v36);
    *(v14 + 12) = 2114;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_24AFD2000, v7, v8, "SettingsFamilyRelationshipsProvider: %s - error:%{public}@", v14, 0x16u);
    sub_24AFF8258(v15, &qword_27EFC7BB8, &unk_24B2DEAF0);
    MEMORY[0x24C23D530](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C23D530](v16, -1, -1);
    MEMORY[0x24C23D530](v14, -1, -1);

    v19 = v33(v12, v13);
  }

  else
  {

    v19 = v11(v12, v13);
  }

  v23 = *(v0 + 480);
  v24 = (*(v0 + 472) - 1) & *(v0 + 472);
  if (v24)
  {
    v25 = *(v0 + 464);
LABEL_10:
    *(v0 + 472) = v24;
    *(v0 + 480) = v23;
    v27 = *(*(v25 + 48) + (__clz(__rbit64(v24)) | (v23 << 6)));
    v28 = *(*(v0 + 384) + 32);
    *(v0 + 513) = v27;
    v35 = (v28 + *v28);
    v29 = swift_task_alloc();
    *(v0 + 488) = v29;
    *v29 = v0;
    v29[1] = sub_24B223648;

    return v35(v0 + 513);
  }

  else
  {
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        return MEMORY[0x2822003E8](v19, v20, v21, v22);
      }

      if (v26 >= (((1 << *(v0 + 514)) + 63) >> 6))
      {
        break;
      }

      v25 = *(v0 + 464);
      v24 = *(v25 + 8 * v26 + 56);
      ++v23;
      if (v24)
      {
        v23 = v26;
        goto LABEL_10;
      }
    }

    v31 = sub_24B2D5684();
    *(v0 + 416) = v31;
    v32 = swift_task_alloc();
    *(v0 + 424) = v32;
    *v32 = v0;
    v32[1] = sub_24B222E9C;
    v22 = *(v0 + 328);
    v21 = MEMORY[0x277D85700];
    v19 = v0 + 512;
    v20 = v31;

    return MEMORY[0x2822003E8](v19, v20, v21, v22);
  }
}

uint64_t sub_24B2244FC()
{
  *(v1 + 24) = v0;
  sub_24B2D5694();
  *(v1 + 32) = sub_24B2D5684();
  v3 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B224594, v3, v2);
}

uint64_t sub_24B224594()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_24B220380();
  sub_24B2D2584();

  v2 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__valuePublisher;
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__valuePublisher) && (, sub_24B2D5764(), , *(v1 + v2)))
  {
    v3 = v0[3];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[2] = v3;
    sub_24B2D2574();
  }

  else
  {
    *(v1 + v2) = 0;
  }

  v5 = v0[3];
  if (*(v5 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__isLoading))
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    v0[2] = v5;
    sub_24B2D2574();
  }

  else
  {
    *(v5 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__isLoading) = 0;
  }

  v7 = v0[1];

  return v7();
}

double SettingsFamilyRelationshipsProvider.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24B2D3184();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  swift_getKeyPath();
  v14 = v2;
  sub_24B220380();
  sub_24B2D2584();

  v9 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage;
  swift_beginAccess();
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + v9, v6);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = v3;
  *(v11 + 32) = a1;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_24B2D12C4();

  return result;
}

uint64_t sub_24B224970(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  if (a1)
  {
    v6 = swift_task_alloc();
    v4[3] = v6;
    *v6 = v4;
    v6[1] = sub_24B224A48;

    return sub_24B220E88(a3, 1);
  }

  else
  {
    v8 = v4[1];

    return v8();
  }
}

uint64_t sub_24B224A48()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B224B7C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B224B7C()
{
  v15 = v0;
  v1 = *(v0 + 32);
  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0xD00000000000003ALL, 0x800000024B2DCF70, &v14);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AFD2000, v3, v4, "SettingsFamilyRelationshipsProvider: %s - error: %{public}@", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8, &unk_24B2DEAF0);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24B224D48(char a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  if (a1)
  {
    v4 = swift_task_alloc();
    v3[3] = v4;
    *v4 = v3;
    v4[1] = sub_24B224E14;

    return sub_24B2244FC();
  }

  else
  {
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_24B224E14()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B224F48, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B224F48()
{
  v15 = v0;
  v1 = *(v0 + 32);
  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0xD00000000000003BLL, 0x800000024B2DCF30, &v14);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AFD2000, v3, v4, "SettingsFamilyRelationshipsProvider: %s - error: %{public}@", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8, &unk_24B2DEAF0);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t SettingsFamilyRelationshipsProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage, &qword_27EFCE6C0, &qword_24B2F1F30);

  v1 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SettingsFamilyRelationshipsProvider.__deallocating_deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage, &qword_27EFCE6C0, &qword_24B2F1F30);

  v1 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24B2252D0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24B220380();
  sub_24B2D2584();

  v3 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage;
  swift_beginAccess();
  return sub_24B220DFC(v5 + v3, a1);
}

uint64_t sub_24B225368(uint64_t a1)
{
  swift_getKeyPath();
  sub_24B220380();
  sub_24B2D2574();

  return sub_24AFF8258(a1, &qword_27EFCE6C0, &qword_24B2F1F30);
}

void (*sub_24B225418(uint64_t **a1))(void *a1)
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
  v2[4] = SettingsFamilyRelationshipsProvider.storage.modify(v2);
  return sub_24B0E122C;
}

double sub_24B225494@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_24B220380();
  sub_24B2D2584();

  v4 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__data;
  swift_beginAccess();
  *a1 = *(v3 + v4);

  return result;
}

double sub_24B22552C(char a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  swift_getKeyPath();
  v12 = v1;
  sub_24B220380();
  sub_24B2D2584();

  v7 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage;
  swift_beginAccess();
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + v7, v4);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v2;
  (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_24B2D12C4();

  return result;
}

unint64_t sub_24B2256F4(uint64_t a1)
{
  result = sub_24B220380();
  *(a1 + 8) = result;
  return result;
}

void sub_24B225724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B225854(319, a2, a3);
  if (v3 <= 0x3F)
  {
    sub_24B2D25C4();
    if (v4 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24B225854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27EFCE830)
  {
    v4 = sub_24B1D2434(0, a2, a3);
    v6 = type metadata accessor for SettingsSubscriptionManagerStorage(a1, &type metadata for SettingsFamilyRelationshipsProvider.Subscription, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27EFCE830);
    }
  }
}

void sub_24B2258E0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__valuePublisher) = *(v0 + 24);
}

uint64_t sub_24B225924()
{
  v2 = *(sub_24B2D3184() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFDE44;

  return sub_24B224D48(v4, v5, v0 + v3);
}

uint64_t sub_24B225A04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B225A6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B225ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B225B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B225B98(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE790, &unk_24B2F1C70) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFD370;

  return sub_24B222974(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B225C9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6C0, &qword_24B2F1F30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t SettingsFamilyRelationshipsProvider.Dependencies.familyRelationshipsStream.getter()
{
  v1 = *v0;

  return v1;
}

void SettingsFamilyRelationshipsProvider.Dependencies.familyRelationshipsStream.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_24B225DF8(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24B0170D0;

  return v7(a2);
}

void sub_24B225EF0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = &unk_24B2F20F0;
  *(a2 + 24) = v5;
}

uint64_t sub_24B225F60(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24B22605C;

  return v6(v2 + 16, a1);
}

uint64_t sub_24B22605C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = *(v3 + 8);

    return v7(v6);
  }
}

uint64_t SettingsFamilyRelationshipsProvider.Dependencies.familyMembersForSubscription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void SettingsFamilyRelationshipsProvider.Dependencies.familyMembersForSubscription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SettingsFamilyRelationshipsProvider.Dependencies.init(familyRelationshipsStream:familyMembersForSubscription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_24B226240(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B0384BC;

  return sub_24B225F60(a1, v4);
}

uint64_t sub_24B2262F4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AFFD370;

  return sub_24B225DF8(a1, a2, v6);
}

uint64_t static SettingsFamilyRelationshipsProvider.Dependencies.live()@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_24B2D3174();
  v9 = *(v3 + 32);
  v9(v5, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  result = (v9)(v11 + v10, v5, v2);
  *a1 = sub_24B226B7C;
  a1[1] = v11;
  a1[2] = &unk_24B2F2108;
  a1[3] = 0;
  return result;
}

uint64_t sub_24B22654C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v53 = sub_24B2D3184();
  v48 = *(v53 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE780, &qword_24B2F1DD8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE790, &unk_24B2F1C70);
  v51 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE798, &qword_24B2F1E10);
  v46 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v47 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A0, &qword_24B2F1DE0);
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v56 = v22;
  (*(v8 + 104))(v10, *MEMORY[0x277D85778], v7);
  v50 = v12;
  sub_24B2D5744();
  v49 = v22;
  v24 = v18;
  sub_24B21E518(v22, v18);
  v25 = [objc_opt_self() defaultCenter];
  v45 = sub_24B2D5A04();

  v26 = sub_24B2D3164();
  v27 = sub_24B2D5934();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = a1;
    v29 = swift_slowAlloc();
    v30 = v3;
    v31 = swift_slowAlloc();
    v57 = v31;
    *v29 = 136315138;
    *(v29 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v57);
    _os_log_impl(&dword_24AFD2000, v26, v27, "SettingsFamilyRelationshipsProvider: didReceive %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v32 = v31;
    v3 = v30;
    MEMORY[0x24C23D530](v32, -1, -1);
    v33 = v29;
    a1 = v28;
    MEMORY[0x24C23D530](v33, -1, -1);
  }

  v34 = sub_24B2D56D4();
  v35 = v6;
  (*(*(v34 - 8) + 56))(v6, 1, 1, v34);
  v36 = v48;
  v38 = v52;
  v37 = v53;
  (*(v48 + 16))(v52, a1, v53);
  sub_24B21E518(v24, v15);
  v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v40 = (v3 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v46 + 80) + v40 + 8) & ~*(v46 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  (*(v36 + 32))(v42 + v39, v38, v37);
  *(v42 + v40) = v45;
  sub_24B21EE8C(v15, v42 + v41);

  sub_24B00A9A4(0, 0, v35, &unk_24B2F2120, v42);

  sub_24AFF8258(v24, &qword_27EFCE798, &qword_24B2F1E10);
  (*(v51 + 32))(v55, v50, v54);
  return sub_24AFF8258(v49, &qword_27EFCE798, &qword_24B2F1E10);
}

uint64_t sub_24B226B7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_24B2D3184() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24B22654C(v4, a1);
}

uint64_t sub_24B226BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A8, &qword_24B2F1E28);
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE798, &qword_24B2F1E10);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFCE7B0, &qword_24B2EF108);
  v6[9] = swift_task_alloc();
  v7 = sub_24B2D59F4();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B226D64, 0, 0);
}

uint64_t sub_24B226D64()
{
  v11 = v0;
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v10);
    _os_log_impl(&dword_24AFD2000, v1, v2, "SettingsFamilyRelationshipsProvider: %s - will await", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  sub_24B2D59E4();
  v5 = sub_24B185E74();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_24B226EF4;
  v7 = v0[9];
  v8 = v0[10];

  return MEMORY[0x282200308](v7, v8, v5);
}

uint64_t sub_24B226EF4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24B21EE00;
  }

  else
  {
    v2 = sub_24B227008;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B227024()
{
  v29 = v0;
  v1 = v0[9];
  v2 = sub_24B2D2034();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[8];
    v4 = v0[5];
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_24B21E518(v4, v3);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A0, &qword_24B2F1DE0);
    v6 = *(v5 - 8);
    v7 = (*(v6 + 48))(v3, 1, v5);
    v8 = v0[8];
    if (v7 == 1)
    {
      sub_24AFF8258(v0[8], &qword_27EFCE798, &qword_24B2F1E10);
    }

    else
    {
      sub_24B2D5714();
      (*(v6 + 8))(v8, v5);
    }

    v19 = v0[1];

    return v19();
  }

  else
  {
    v9 = sub_24B2D3164();
    v10 = sub_24B2D5904();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v28);
      _os_log_impl(&dword_24AFD2000, v9, v10, "SettingsFamilyRelationshipsProvider: %s - New Value)", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);
    }

    v13 = v0[7];
    sub_24B21E518(v0[5], v13);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A0, &qword_24B2F1DE0);
    v15 = *(v14 - 8);
    v16 = (*(v15 + 48))(v13, 1, v14);
    v17 = v0[7];
    if (v16 == 1)
    {
      sub_24AFF8258(v0[7], &qword_27EFCE798, &qword_24B2F1E10);
      v18 = 1;
    }

    else
    {
      sub_24B2D56F4();
      (*(v15 + 8))(v17, v14);
      v18 = 0;
    }

    v21 = v0[9];
    v22 = v0[6];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE788, &qword_24B2F1DF8);
    (*(*(v23 - 8) + 56))(v22, v18, 1, v23);
    sub_24AFF8258(v22, &qword_27EFCE7A8, &qword_24B2F1E28);
    sub_24AFF8258(v21, &unk_27EFCE7B0, &qword_24B2EF108);
    v24 = sub_24B185E74();
    v25 = swift_task_alloc();
    v0[13] = v25;
    *v25 = v0;
    v25[1] = sub_24B226EF4;
    v26 = v0[9];
    v27 = v0[10];

    return MEMORY[0x282200308](v26, v27, v24);
  }
}

uint64_t sub_24B227464(_BYTE *a1)
{
  *(v1 + 200) = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE670, &unk_24B2F17A0);
  *(v1 + 224) = swift_task_alloc();
  v3 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  *(v1 + 232) = v3;
  *(v1 + 240) = *(v3 - 8);
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE838, &qword_24B2F2110);
  *(v1 + 264) = v4;
  *(v1 + 272) = *(v4 - 8);
  *(v1 + 280) = swift_task_alloc();
  *(v1 + 304) = *a1;

  return MEMORY[0x2822009F8](sub_24B227614, 0, 0);
}

uint64_t sub_24B227614()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = v0 + 192;
  v4 = *(v0 + 304);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v7 = *(v0 + 264);
  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v1[36] = v9;
  [v9 setCachePolicy_];
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_24B227820;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_24B038248(0, &qword_27EFCE840, 0x277D08248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
  sub_24B2D5614();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_24B228074;
  v1[13] = &block_descriptor_8;
  [v9 startRequestWithCompletionHandler_];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_24B227820()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_24B227930;
  }

  else
  {
    v2 = sub_24B227A04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B227930(uint64_t a1)
{
  v2 = *(v1 + 296);
  swift_willThrow();

  v3 = *(v1 + 8);
  v4 = MEMORY[0x277D84F90];

  return v3(v4);
}

uint64_t sub_24B227A04()
{
  v54 = *(v0 + 192);
  v1 = [v54 members];
  sub_24B038248(0, &qword_27EFCE848, 0x277D08268);
  v2 = sub_24B2D5534();

  v65 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24B2D5DA4())
  {
    v4 = 0;
    v58 = v0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C23C450](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isMe])
      {
      }

      else
      {
        sub_24B2D5CC4();
        sub_24B2D5D04();
        sub_24B2D5D14();
        sub_24B2D5CD4();
        v0 = v58;
      }

      ++v4;
      if (v7 == i)
      {
        v8 = v65;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_18:

  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    goto LABEL_46;
  }

  for (j = *(v8 + 16); j; j = sub_24B2D5DA4())
  {
    v10 = 0;
    v11 = *(v0 + 240);
    v55 = *(v0 + 200);
    v63 = (v11 + 56);
    v64 = v8 & 0xC000000000000001;
    v57 = v11;
    v62 = (v11 + 48);
    v12 = MEMORY[0x277D84F90];
    v56 = v8;
    v59 = j;
    while (1)
    {
      if (v64)
      {
        v13 = MEMORY[0x24C23C450](v10, v8);
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          goto LABEL_45;
        }

        v13 = *(v8 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v16 = [v13 appleID];
      if (v16)
      {
        v17 = v16;
        sub_24B2D5394();

        v18 = [v14 dsid];
        if (v18)
        {
          v19 = v18;
          v20 = *(v0 + 216);
          v60 = *(v0 + 208);
          v61 = v12;
          v21 = [v18 stringValue];
          sub_24B2D5394();

          v22 = sub_24B2D52B4();
          v24 = v23;

          v25 = sub_24B2D22F4();
          v27 = v26;
          v28 = sub_24AFF7AE8(v22, v24);
          *(v0 + 144) = v25;
          *(v0 + 152) = v27;
          *(v0 + 160) = 61;
          *(v0 + 168) = 0xE100000000000000;
          *(v0 + 176) = 126;
          *(v0 + 184) = 0xE100000000000000;
          v53 = sub_24AFFE0A4(v28, v29, v30);
          v52 = MEMORY[0x277D837D0];
          v31 = sub_24B2D5AC4();
          v33 = v32;

          sub_24B2D16E4();
          v34 = (v20 + *(v55 + 20));
          *v34 = v31;
          v34[1] = v33;
          sub_24B22813C(v20, v60);
          v35 = [v14 fullName];
          if (v35)
          {
            v36 = v35;
            v37 = sub_24B2D5394();
            v39 = v38;
          }

          else
          {

            v37 = 0;
            v39 = 0xE000000000000000;
          }

          v12 = v61;
          v41 = *(v0 + 224);
          v40 = *(v0 + 232);
          v42 = *(v0 + 208);
          sub_24B2281A0(*(v0 + 216));
          sub_24B2281FC(v42, v41, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
          v43 = (v41 + *(type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(0) + 20));
          *v43 = v37;
          v43[1] = v39;
          swift_storeEnumTagMultiPayload();
          (*v63)(v41, 0, 1, v40);
          v8 = v56;
        }

        else
        {
          (*v63)(*(v0 + 224), 1, 1, *(v0 + 232));
        }

        j = v59;
      }

      else
      {
        (*v63)(*(v0 + 224), 1, 1, *(v0 + 232));
      }

      v44 = *(v0 + 224);
      if ((*v62)(v44, 1, *(v0 + 232)) == 1)
      {
        sub_24AFF8258(v44, &qword_27EFCE670, &unk_24B2F17A0);
      }

      else
      {
        v46 = *(v0 + 248);
        v45 = *(v0 + 256);
        sub_24B2281FC(v44, v45, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
        sub_24B2281FC(v45, v46, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_24B006FF0(0, v12[2] + 1, 1, v12);
        }

        v48 = v12[2];
        v47 = v12[3];
        if (v48 >= v47 >> 1)
        {
          v12 = sub_24B006FF0((v47 > 1), v48 + 1, 1, v12);
        }

        v49 = *(v0 + 248);
        v12[2] = v48 + 1;
        sub_24B2281FC(v49, v12 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v48, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      }

      ++v10;
      if (v15 == j)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_48:

  v50 = *(v0 + 8);

  return v50(v12);
}

void sub_24B228074(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE838, &qword_24B2F2110);
    sub_24B2D5624();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE838, &qword_24B2F2110);
    sub_24B2D5634();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24B22813C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B2281A0(uint64_t a1)
{
  v2 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B2281FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B228264(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24B2D3184() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE798, &qword_24B2F1E10) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AFFD370;

  return sub_24B226BEC(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t SettingsFamilyRelationshipsProvider.FamilyMemberState.loadedState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B225A04(v2, v6, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B228504(v6, a1);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_24B228504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SettingsFamilyRelationshipsProvider.Subscription.Identifier.init(handle:serverID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24B2D1704();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t SettingsFamilyRelationshipsProvider.Subscription.Identifier.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D1704();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static SettingsFamilyRelationshipsProvider.Subscription.Identifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_24B2D6004();
}

uint64_t SettingsFamilyRelationshipsProvider.Subscription.Identifier.hash(into:)(uint64_t a1)
{
  sub_24B2D1704();
  sub_24B2299B8(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  sub_24B2D5254();
  type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);

  return sub_24B2D5404();
}

uint64_t SettingsFamilyRelationshipsProvider.Subscription.Identifier.hashValue.getter()
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B2299B8(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  sub_24B2D5254();
  type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B228870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_24B2D6004();
}

uint64_t sub_24B2288F8(uint64_t a1)
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B2299B8(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  sub_24B2D5254();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B2289A0(uint64_t a1, uint64_t a2)
{
  sub_24B2D1704();
  sub_24B2299B8(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  sub_24B2D5254();

  return sub_24B2D5404();
}

uint64_t sub_24B228A3C(uint64_t a1, uint64_t a2)
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B2299B8(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  sub_24B2D5254();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t SettingsFamilyRelationshipsProvider.Subscription.hashValue.getter()
{
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  sub_24B2D6104();
  return sub_24B2D6124();
}

uint64_t sub_24B228B8C()
{
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  sub_24B2D6104();
  return sub_24B2D6124();
}

uint64_t sub_24B228C20(uint64_t a1)
{
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  sub_24B2D6104();
  return sub_24B2D6124();
}

uint64_t SettingsFamilyRelationshipsProvider.FamilyMemberState.isLoading.getter()
{
  v1 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B225A04(v0, v3, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v3;
  }

  sub_24B229910(v3, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  return 0;
}

uint64_t sub_24B228D8C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t static SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v5 == *v7 && v6 == v7[1];
  if (!v8 && (sub_24B2D6004() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(0) + 20);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  if (v10 == *v12 && v11 == v12[1])
  {
    return 1;
  }

  return sub_24B2D6004();
}

uint64_t SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState.hash(into:)(uint64_t a1)
{
  sub_24B2D1704();
  sub_24B2299B8(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  sub_24B2D5254();
  type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  sub_24B2D5404();
  type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(0);

  return sub_24B2D5404();
}

uint64_t SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState.hashValue.getter()
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B2299B8(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  sub_24B2D5254();
  type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  sub_24B2D5404();
  type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(0);
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B229004(uint64_t a1)
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B2299B8(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  sub_24B2D5254();
  type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  sub_24B2D5404();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B2290C8(uint64_t a1, uint64_t a2)
{
  sub_24B2D1704();
  sub_24B2299B8(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  sub_24B2D5254();
  type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  sub_24B2D5404();

  return sub_24B2D5404();
}

uint64_t sub_24B229180(uint64_t a1, uint64_t a2)
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B2299B8(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  sub_24B2D5254();
  type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  sub_24B2D5404();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B229240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0) + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_24B2D6004() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 20);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return sub_24B2D6004();
}

uint64_t SettingsFamilyRelationshipsProvider.FamilyMemberState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B225A04(v2, v8, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B228504(v8, v5);
    MEMORY[0x24C23C8D0](1);
    sub_24B2D1704();
    sub_24B2299B8(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
    sub_24B2D5254();
    type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
    sub_24B2D5404();
    sub_24B2D5404();
    return sub_24B229910(v5, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
  }

  else
  {
    MEMORY[0x24C23C8D0](0);
    return sub_24B2D6104();
  }
}

uint64_t SettingsFamilyRelationshipsProvider.FamilyMemberState.hashValue.getter()
{
  sub_24B2D60E4();
  SettingsFamilyRelationshipsProvider.FamilyMemberState.hash(into:)(v1);
  return sub_24B2D6124();
}

uint64_t sub_24B229518()
{
  sub_24B2D60E4();
  SettingsFamilyRelationshipsProvider.FamilyMemberState.hash(into:)(v1);
  return sub_24B2D6124();
}

uint64_t sub_24B22955C(uint64_t a1)
{
  sub_24B2D60E4();
  SettingsFamilyRelationshipsProvider.FamilyMemberState.hash(into:)(v2);
  return sub_24B2D6124();
}

uint64_t _s12FindMyUICore35SettingsFamilyRelationshipsProviderC0E11MemberStateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE288, &unk_24B2F0380);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - v14;
  v17 = *(v16 + 56);
  sub_24B225A04(a1, &v31 - v14, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  sub_24B225A04(a2, &v15[v17], type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B225A04(v15, v12, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = *v12 ^ v15[v17];
      sub_24B229910(v15, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      v28 = v29 ^ 1;
      return v28 & 1;
    }

    goto LABEL_18;
  }

  sub_24B225A04(v15, v9, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B229910(v9, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
LABEL_18:
    sub_24B229DE8(v15);
LABEL_20:
    v28 = 0;
    return v28 & 1;
  }

  sub_24B228504(&v15[v17], v6);
  if ((_s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0() & 1) == 0 || ((v18 = *(type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0) + 20), v19 = *&v9[v18], v20 = *&v9[v18 + 8], v21 = &v6[v18], v19 == *v21) ? (v22 = v20 == *(v21 + 1)) : (v22 = 0), !v22 && (sub_24B2D6004() & 1) == 0 || ((v23 = *(v4 + 20), v24 = *&v9[v23], v25 = *&v9[v23 + 8], v26 = &v6[v23], v24 == *v26) ? (v27 = v25 == *(v26 + 1)) : (v27 = 0), !v27 && (sub_24B2D6004() & 1) == 0)))
  {
    sub_24B229910(v6, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
    sub_24B229910(v9, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
    sub_24B229910(v15, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
    goto LABEL_20;
  }

  sub_24B229910(v6, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
  sub_24B229910(v9, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
  sub_24B229910(v15, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_24B229910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B2299B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B229A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCE858;
  if (!qword_27EFCE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE858);
  }

  return result;
}

uint64_t sub_24B229B38(uint64_t a1)
{
  result = sub_24B1D4214();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24B229D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B229DE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE288, &unk_24B2F0380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SettingsFindMyServiceProvider.storage.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24B22A098();
  sub_24B2D2584();

  v3 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage;
  swift_beginAccess();
  return sub_24B22A13C(v5 + v3, a1);
}

uint64_t sub_24B229EE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B22A098();
  sub_24B2D2584();

  v4 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage;
  swift_beginAccess();
  return sub_24B22A13C(v3 + v4, a2);
}

uint64_t sub_24B229F80(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE680, &qword_24B2F17B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24B22A13C(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24B22A098();
  sub_24B2D2574();

  return sub_24AFF8258(v6, &qword_27EFCE680, &qword_24B2F17B8);
}

unint64_t sub_24B22A098()
{
  result = qword_27EFCE690;
  if (!qword_27EFCE690)
  {
    type metadata accessor for SettingsFindMyServiceProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE690);
  }

  return result;
}

uint64_t type metadata accessor for SettingsFindMyServiceProvider(uint64_t a1)
{
  result = qword_27EFCE8C8;
  if (!qword_27EFCE8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B22A13C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE680, &qword_24B2F17B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SettingsFindMyServiceProvider.storage.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_24B22A098();
  sub_24B2D2574();

  return sub_24AFF8258(a1, &qword_27EFCE680, &qword_24B2F17B8);
}

uint64_t sub_24B22A25C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage;
  swift_beginAccess();
  sub_24B22CF3C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t (*SettingsFindMyServiceProvider.storage.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24B22A098();
  sub_24B2D2584();

  *v4 = v1;
  swift_getKeyPath();
  sub_24B2D25A4();

  swift_beginAccess();
  return sub_24B22A3FC;
}

void sub_24B22A3FC(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_24B2D2594();

  free(v1);
}

uint64_t sub_24B22A480()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = v0;
  sub_24B22A098();
  sub_24B2D2584();

  v6 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);

  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = v2;
    v10 = v9;
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    swift_getKeyPath();
    v17 = v1;
    sub_24B2D2584();

    LOBYTE(v17) = *(v1 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__data);
    v12 = sub_24B2D53C4();
    v14 = sub_24AFF321C(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24AFD2000, v7, v8, "SettingsFindMyServiceProvider: data - %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C23D530](v11, -1, -1);
    MEMORY[0x24C23D530](v10, -1, -1);

    return (*(v3 + 8))(v5, v16);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

void SettingsFindMyServiceProvider.data.getter(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_24B22A098();
  sub_24B2D2584();

  *a1 = *(v1 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__data);
}

void sub_24B22A790(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B22A098();
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__data);
}

void sub_24B22A848(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == *(v1 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__data))
  {
    *(v1 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__data) = v2;

    sub_24B22A480();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B22A098();
    sub_24B2D2574();
  }
}

double sub_24B22A954()
{
  swift_getKeyPath();
  sub_24B22A098();
  sub_24B2D2584();

  return result;
}

double sub_24B22A9D0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B22A098();
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__valuePublisher);

  return result;
}

double sub_24B22AA54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__valuePublisher;
  if (!*(v1 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__valuePublisher))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B22A098();
    sub_24B2D2574();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_24B2D5754();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

uint64_t SettingsFindMyServiceProvider.__allocating_init(dependencies:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SettingsFindMyServiceProvider.init(dependencies:)(a1);
  return v2;
}

uint64_t SettingsFindMyServiceProvider.init(dependencies:)(uint64_t a1)
{
  v2 = v1;
  *&v28 = a1;
  v3 = sub_24B2D2504();
  MEMORY[0x28223BE20](v3 - 8);
  v30 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB58, &unk_24B2F1240);
  MEMORY[0x28223BE20](v5 - 8);
  v29 = v27 - v6;
  v7 = sub_24B2D3184();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE680, &qword_24B2F17B8);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v27 - v16;
  v18 = v15[11];
  *&v17[v18] = sub_24B195CA8(MEMORY[0x277D84F90]);
  *&v17[v15[12]] = MEMORY[0x277D84FA0];
  v17[v15[13]] = 0;
  sub_24B2D3174();
  v19 = *(v8 + 16);
  v27[1] = "ceProvider.swift";
  v28 = *v28;
  v19(v17, v13, v7);
  v20 = *(v8 + 32);
  v20(v10, v13, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v20((v22 + v21), v10, v7);
  v23 = &v17[v15[14]];
  *v23 = sub_24B21B8F4;
  v23[1] = v22;
  sub_24B22C98C(v17, v2 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage);
  v24 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider_taskQueue;
  sub_24B2D12D4();
  v25 = sub_24B2D1294();
  (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
  sub_24B2D24F4();
  *(v2 + v24) = sub_24B2D12B4();
  *(v2 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__data) = 0;
  *(v2 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__valuePublisher) = 0;
  sub_24B2D25B4();
  *(v2 + 16) = v28;
  return v2;
}

uint64_t sub_24B22AFAC()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  v1[5] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE8E0, &qword_24B2F2488);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = sub_24B2D5694();
  v1[12] = sub_24B2D5684();
  v5 = sub_24B2D5604();
  v1[13] = v5;
  v1[14] = v4;

  return MEMORY[0x2822009F8](sub_24B22B0FC, v5, v4);
}

uint64_t sub_24B22B0FC()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_24B22A098();
  sub_24B2D2584();

  v2 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__valuePublisher;
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__valuePublisher) && (, sub_24B2D5764(), , *(v1 + v2)))
  {
    v3 = v0[4];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[3] = v3;
    sub_24B2D2574();
  }

  else
  {
    *(v1 + v2) = 0;
  }

  v8 = (*(v0[4] + 16) + **(v0[4] + 16));
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_24B22B314;
  v6 = v0[10];

  return v8(v6);
}

uint64_t sub_24B22B314()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_24B22B648;
  }

  else
  {
    v5 = sub_24B22B450;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B22B450()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v18 = v5;

  v7 = sub_24B2D56D4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v1, v2, v6);

  v9 = sub_24B2D5684();
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v9;
  *(v12 + 24) = v13;
  (*(v4 + 32))(v12 + v10, v1, v6);
  *(v12 + v11) = v8;

  v14 = sub_24B00A9A4(0, 0, v18, &unk_24B2F24C0, v12);
  v15 = sub_24B22AA54(v14);
  (*(v4 + 8))(v2, v6, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_24B22B648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B22B6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_24B2D3184();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE8E8, &qword_24B2F24C8);
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = sub_24B2D5694();
  v5[19] = sub_24B2D5684();
  v9 = sub_24B2D5604();
  v5[20] = v9;
  v5[21] = v8;

  return MEMORY[0x2822009F8](sub_24B22B834, v9, v8);
}

uint64_t sub_24B22B834()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE8E0, &qword_24B2F2488);
  sub_24B2D5724();
  swift_beginAccess();
  v0[22] = 0;
  v1 = sub_24B2D5684();
  v0[23] = v1;
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_24B22B934;
  v3 = v0[15];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 25, v1, v4, v3);
}

uint64_t sub_24B22B934()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_24B22BA78, v3, v2);
}

uint64_t sub_24B22BA78()
{
  v31 = v0;
  v1 = *(v0 + 200);
  if (v1 == 2 || (Strong = swift_weakLoadStrong()) == 0)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v3 = Strong;
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v29 = *(v0 + 96);
    swift_getKeyPath();
    *(v0 + 64) = v3;
    sub_24B22A098();
    sub_24B2D2584();

    v6 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage;
    swift_beginAccess();
    (*(v4 + 16))(v5, v3 + v6, v29);
    v7 = sub_24B2D3164();
    v8 = sub_24B2D5934();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 96);
    if (v9)
    {
      v28 = v8;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v13 = 136315138;
      *(v0 + 201) = v1 & 1;
      v15 = sub_24B2D53C4();
      v27 = v12;
      v17 = sub_24AFF321C(v15, v16, &v30);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_24AFD2000, v7, v28, "SettingsFindMyServiceProvider: change - %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C23D530](v14, -1, -1);
      MEMORY[0x24C23D530](v13, -1, -1);

      (*(v11 + 8))(v10, v27);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v20 = v1 & 1;
    if (*(v3 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__data) == (v1 & 1))
    {
      *(v3 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__data) = v20;
      sub_24B22A480();

      v21 = *(v0 + 176);
    }

    else
    {
      v21 = *(v0 + 176);
      swift_getKeyPath();
      v22 = swift_task_alloc();
      *(v22 + 16) = v3;
      *(v22 + 24) = v20;
      *(v0 + 72) = v3;
      sub_24B2D2574();
    }

    *(v0 + 176) = v21;
    v23 = sub_24B2D5684();
    *(v0 + 184) = v23;
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v24[1] = sub_24B22B934;
    v25 = *(v0 + 120);
    v26 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 200, v23, v26, v25);
  }
}

uint64_t sub_24B22BE58(char a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  if (a1)
  {
    v4 = swift_task_alloc();
    v3[3] = v4;
    *v4 = v3;
    v4[1] = sub_24B22BF24;

    return sub_24B22AFAC();
  }

  else
  {
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_24B22BF24()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B22C058, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B22C058()
{
  v15 = v0;
  v1 = *(v0 + 32);
  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0xD00000000000003ALL, 0x800000024B2DCF70, &v14);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AFD2000, v3, v4, "SettingsFindMyServiceProvider: %s - error: %{public}@", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8, &unk_24B2DEAF0);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

double SettingsFindMyServiceProvider.didRemoveUniqueSubscriptions(removedSubscriptions:isEmpty:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v2;

  sub_24B2D12C4();

  return result;
}

uint64_t sub_24B22C2B0(char a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 40) = a1;
  return MEMORY[0x2822009F8](sub_24B22C2D4, 0, 0);
}

uint64_t sub_24B22C2D4()
{
  if (*(v0 + 40) == 1)
  {
    sub_24B2D5694();
    *(v0 + 32) = sub_24B2D5684();
    v2 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B22C3A8, v2, v1);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_24B22C3A8()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_24B22A098();
  sub_24B2D2584();

  v2 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__valuePublisher;
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__valuePublisher) && (, sub_24B2D5764(), , *(v1 + v2)))
  {
    v3 = v0[3];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[2] = v3;
    sub_24B2D2574();
  }

  else
  {
    *(v1 + v2) = 0;
  }

  v5 = v0[1];

  return v5();
}

uint64_t SettingsFindMyServiceProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage, &qword_27EFCE680, &qword_24B2F17B8);

  v1 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SettingsFindMyServiceProvider.__deallocating_deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage, &qword_27EFCE680, &qword_24B2F17B8);

  v1 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24B22C6B8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24B22A098();
  sub_24B2D2584();

  v3 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage;
  swift_beginAccess();
  return sub_24B22A13C(v5 + v3, a1);
}

uint64_t sub_24B22C750(uint64_t a1)
{
  swift_getKeyPath();
  sub_24B22A098();
  sub_24B2D2574();

  return sub_24AFF8258(a1, &qword_27EFCE680, &qword_24B2F17B8);
}

void (*sub_24B22C800(uint64_t **a1))(void *a1)
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
  v2[4] = SettingsFindMyServiceProvider.storage.modify(v2);
  return sub_24B0E122C;
}

double sub_24B22C878(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v2;

  sub_24B2D12C4();

  return result;
}

void sub_24B22C90C(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_24B22A098();
  sub_24B2D2584();

  *a1 = *(v3 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__data);
}

uint64_t sub_24B22C98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE680, &qword_24B2F17B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24B22C9FC(char a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  swift_getKeyPath();
  v12 = v1;
  sub_24B22A098();
  sub_24B2D2584();

  v7 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage;
  swift_beginAccess();
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + v7, v4);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v2;
  (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_24B2D12C4();

  return result;
}

unint64_t sub_24B22CBC4(uint64_t a1)
{
  result = sub_24B22A098();
  *(a1 + 8) = result;
  return result;
}

void sub_24B22CBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B22CD18(319, a2, a3);
  if (v3 <= 0x3F)
  {
    sub_24B2D25C4();
    if (v4 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24B22CD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27EFCE8D8)
  {
    v4 = sub_24B1D238C(0, a2, a3);
    v6 = type metadata accessor for SettingsSubscriptionManagerStorage(a1, &type metadata for SettingsFindMyServiceProvider.Subscription, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27EFCE8D8);
    }
  }
}

uint64_t sub_24B22CD74(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE8E0, &qword_24B2F2488) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFD370;

  return sub_24B22B6D4(a1, v6, v7, v1 + v5, v8);
}

void sub_24B22CEF8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__valuePublisher) = *(v0 + 24);
}

uint64_t sub_24B22CF3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE680, &qword_24B2F17B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t SettingsFindMyServiceProvider.Dependencies.findMyServiceStateStream.getter()
{
  v1 = *v0;

  return v1;
}

void SettingsFindMyServiceProvider.Dependencies.findMyServiceStateStream.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SettingsFindMyServiceProvider.Dependencies.init(findMyServiceStateStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static SettingsFindMyServiceProvider.Dependencies.live()@<X0>(void *a1@<X8>)
{
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_24B2D3174();
  v9 = *(v3 + 32);
  v9(v5, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  result = (v9)(v11 + v10, v5, v2);
  *a1 = &unk_24B2F2508;
  a1[1] = v11;
  return result;
}

uint64_t sub_24B22D210(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE8F0, &qword_24B2F2510);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE8F8, &qword_24B2F2518);
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = sub_24B2D3184();
  v2[26] = v4;
  v5 = *(v4 - 8);
  v2[27] = v5;
  v2[28] = *(v5 + 64);
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  v2[30] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE900, &qword_24B2F2520);
  v2[31] = v6;
  v2[32] = *(v6 - 8);
  v2[33] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE8E0, &qword_24B2F2488);
  v2[34] = v7;
  v2[35] = *(v7 - 8);
  v2[36] = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE908, &qword_24B2F2528) - 8);
  v2[37] = v8;
  v2[38] = *(v8 + 64);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B22D528, 0, 0);
}

uint64_t sub_24B22D528()
{
  v35 = v0;
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE910, &qword_24B2F2530);
  v0[44] = v6;
  v7 = *(v6 - 8);
  v0[45] = v7;
  (*(v7 + 56))(v1, 1, 1, v6);
  *(swift_task_alloc() + 16) = v1;
  (*(v4 + 104))(v3, *MEMORY[0x277D85778], v5);
  sub_24B2D5744();

  sub_24B22E448(v1, v2);
  v8 = [objc_opt_self() defaultCenter];
  v33 = sub_24B2D5A04();
  v0[46] = v33;

  v9 = sub_24B2D3164();
  v10 = sub_24B2D5934();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v34);
    _os_log_impl(&dword_24AFD2000, v9, v10, "SettingsFindMyServiceProvider: didReceive %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);
  }

  v14 = v0[41];
  v13 = v0[42];
  v15 = v0[37];
  v17 = v0[29];
  v16 = v0[30];
  v18 = v0[27];
  v19 = v0[28];
  v20 = v0[26];
  v31 = v0[25];
  v32 = v0[24];
  v30 = v0[23];
  v21 = v0[20];
  v22 = sub_24B2D56D4();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  (*(v18 + 16))(v17, v21, v20);
  sub_24B22E448(v13, v14);
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v15 + 80) + v24 + 8) & ~*(v15 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  (*(v18 + 32))(v26 + v23, v17, v20);
  *(v26 + v24) = v33;
  sub_24B22F4CC(v14, v26 + v25);

  sub_24B00A9A4(0, 0, v16, &unk_24B2F2540, v26);

  v27 = [objc_allocWithZone(MEMORY[0x277D08F78]) init];
  v0[47] = v27;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24B22DA48;
  swift_continuation_init();
  v0[17] = v30;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  type metadata accessor for FMIPState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
  sub_24B2D5614();
  (*(v32 + 32))(boxed_opaque_existential_0, v31, v30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24B22F6B4;
  v0[13] = &block_descriptor_9;
  [v27 fmipStateWithCompletion_];
  (*(v32 + 8))(boxed_opaque_existential_0, v30);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24B22DA48()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_24B22DEB4;
  }

  else
  {
    v2 = sub_24B22DB58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B22DB58()
{
  v25 = v0;
  v1 = *(v0 + 144);

  v2 = sub_24B2D3164();
  v3 = sub_24B2D5904();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v24);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SettingsFindMyServiceProvider: %s - Initial Value)", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = *(v0 + 352);
  v7 = *(v0 + 360);
  v8 = *(v0 + 320);
  sub_24B22E448(*(v0 + 336), v8);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v9 = *(v0 + 320);
    sub_24AFF8258(*(v0 + 336), &qword_27EFCE908, &qword_24B2F2528);

    sub_24AFF8258(v9, &qword_27EFCE908, &qword_24B2F2528);
    v10 = 1;
  }

  else
  {
    v11 = *(v0 + 352);
    v12 = *(v0 + 360);
    v13 = *(v0 + 336);
    v14 = *(v0 + 320);
    *(v0 + 393) = (v1 - 1) < 2;
    sub_24B2D5704();

    sub_24AFF8258(v13, &qword_27EFCE908, &qword_24B2F2528);
    (*(v12 + 8))(v14, v11);
    v10 = 0;
  }

  v15 = *(v0 + 344);
  v17 = *(v0 + 280);
  v16 = *(v0 + 288);
  v18 = *(v0 + 272);
  v19 = *(v0 + 176);
  v20 = *(v0 + 152);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE918, &qword_24B2F2548);
  (*(*(v21 - 8) + 56))(v19, v10, 1, v21);
  sub_24AFF8258(v19, &qword_27EFCE8F0, &qword_24B2F2510);
  (*(v17 + 32))(v20, v16, v18);
  sub_24AFF8258(v15, &qword_27EFCE908, &qword_24B2F2528);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24B22DEB4(uint64_t a1)
{
  v34 = v1;
  v3 = *(v1 + 376);
  v2 = *(v1 + 384);
  swift_willThrow();

  v4 = v2;
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5914();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 384);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v33);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_24AFD2000, v5, v6, "SettingsFindMyServiceProvider: %s - error: %@", v8, 0x16u);
    sub_24AFF8258(v9, &qword_27EFC7BB8, &unk_24B2DEAF0);
    MEMORY[0x24C23D530](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C23D530](v10, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  v13 = *(v1 + 352);
  v14 = *(v1 + 360);
  v15 = *(v1 + 312);
  sub_24B22E448(*(v1 + 336), v15);
  v16 = (*(v14 + 48))(v15, 1, v13);
  v17 = *(v1 + 384);
  if (v16 == 1)
  {
    v18 = *(v1 + 312);
    sub_24AFF8258(*(v1 + 336), &qword_27EFCE908, &qword_24B2F2528);

    sub_24AFF8258(v18, &qword_27EFCE908, &qword_24B2F2528);
    v19 = 1;
  }

  else
  {
    v20 = *(v1 + 352);
    v21 = *(v1 + 360);
    v22 = *(v1 + 336);
    v23 = *(v1 + 312);
    *(v1 + 392) = 0;
    sub_24B2D5704();

    sub_24AFF8258(v22, &qword_27EFCE908, &qword_24B2F2528);
    (*(v21 + 8))(v23, v20);
    v19 = 0;
  }

  v24 = *(v1 + 344);
  v26 = *(v1 + 280);
  v25 = *(v1 + 288);
  v27 = *(v1 + 272);
  v28 = *(v1 + 168);
  v29 = *(v1 + 152);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE918, &qword_24B2F2548);
  (*(*(v30 - 8) + 56))(v28, v19, 1, v30);
  sub_24AFF8258(v28, &qword_27EFCE8F0, &qword_24B2F2510);
  (*(v26 + 32))(v29, v25, v27);
  sub_24AFF8258(v24, &qword_27EFCE908, &qword_24B2F2528);

  v31 = *(v1 + 8);

  return v31();
}

uint64_t sub_24B22E288(uint64_t a1)
{
  v4 = *(sub_24B2D3184() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AFFD370;

  return sub_24B22D210(a1, v1 + v5);
}

uint64_t sub_24B22E364(uint64_t a1, uint64_t a2)
{
  sub_24AFF8258(a2, &qword_27EFCE908, &qword_24B2F2528);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE910, &qword_24B2F2530);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_24B22E448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE908, &qword_24B2F2528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B22E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE8F0, &qword_24B2F2510);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE8F8, &qword_24B2F2518);
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE908, &qword_24B2F2528);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFCE7B0, &qword_24B2EF108);
  v6[31] = swift_task_alloc();
  v8 = sub_24B2D59F4();
  v6[32] = v8;
  v6[33] = *(v8 - 8);
  v6[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B22E6B0, 0, 0);
}

uint64_t sub_24B22E6B0()
{
  v11 = v0;
  v0[35] = [objc_allocWithZone(MEMORY[0x277D08F78]) init];
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v10);
    _os_log_impl(&dword_24AFD2000, v1, v2, "SettingsFindMyServiceProvider: %s - will await", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  sub_24B2D59E4();
  v5 = sub_24B185E74();
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_24B22E85C;
  v7 = v0[31];
  v8 = v0[32];

  return MEMORY[0x282200308](v7, v8, v5);
}

uint64_t sub_24B22E85C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_24B22ED00;
  }

  else
  {
    v2 = sub_24B22E970;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B22E98C()
{
  v1 = v0[31];
  v2 = sub_24B2D2034();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[30];
    v4 = v0[22];
    (*(v0[33] + 8))(v0[34], v0[32]);
    sub_24B22E448(v4, v3);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE910, &qword_24B2F2530);
    v6 = *(v5 - 8);
    v7 = (*(v6 + 48))(v3, 1, v5);
    v8 = v0[35];
    v9 = v0[30];
    if (v7 == 1)
    {

      sub_24AFF8258(v9, &qword_27EFCE908, &qword_24B2F2528);
    }

    else
    {
      sub_24B2D5714();

      (*(v6 + 8))(v9, v5);
    }

    v14 = v0[1];

    return v14();
  }

  else
  {
    v11 = v0[26];
    v10 = v0[27];
    v12 = v0[25];
    v16 = v0[35];
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_24B22ED8C;
    swift_continuation_init();
    v0[17] = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    type metadata accessor for FMIPState(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
    sub_24B2D5614();
    (*(v11 + 32))(boxed_opaque_existential_0, v10, v12);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24B22F6B4;
    v0[13] = &block_descriptor_9;
    [v16 fmipStateWithCompletion_];
    (*(v11 + 8))(boxed_opaque_existential_0, v12);

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_24B22ED00()
{
  *(v0 + 144) = *(v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}
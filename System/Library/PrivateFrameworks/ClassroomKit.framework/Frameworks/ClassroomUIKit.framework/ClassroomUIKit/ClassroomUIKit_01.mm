void sub_2436846F8()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  v4 = (*(v3 + 24))(v2, v3);

  v5 = sub_2436CBD08();

  v6 = [v4 iteratorForSearchString:v5 sortingGivenNameFirst:1 pageSize:v1[7]];

  swift_unknownObjectRelease();
  v1[13] = v6;
  swift_unknownObjectRelease();

  sub_2436847C8();
}

void sub_2436847C8()
{
  if (*(v0 + 80))
  {
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v1 = sub_2436CADE8();
    __swift_project_value_buffer(v1, qword_27ED7FD78);
    oslog = sub_2436CADC8();
    v2 = sub_2436CBEC8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_24366A000, oslog, v2, "EMSStudentResultProvider trying to load more while still loading previous request", v3, 2u);
      MEMORY[0x245D3CD90](v3, -1, -1);
    }
  }

  else
  {
    *(v0 + 80) = 1;
    v4 = sub_243671510(MEMORY[0x277D84F90]);
    swift_beginAccess();
    *(v0 + 72) = v4;

    v5 = *(v0 + 88);
    sub_2436CAE58();
    if (aBlock)
    {
      LOBYTE(v12) = 1;
      sub_2436CAE68();
    }

    v6 = *(v0 + 104);
    if (v6)
    {
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v5;
      v15 = sub_243685358;
      v16 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v12 = 1107296256;
      v13 = sub_243684F74;
      v14 = &block_descriptor_0;
      v9 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v6 fetchNextUsersWithCompletion_];
      swift_unknownObjectRelease();
      _Block_release(v9);
    }
  }
}

uint64_t sub_243684A24(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (*(result + 88) == a4)
    {
      v57 = result;
      if (a2)
      {
        v9 = a2;
        if (qword_27ED7DF10 != -1)
        {
          swift_once();
        }

        v10 = sub_2436CADE8();
        __swift_project_value_buffer(v10, qword_27ED7FD78);
        v11 = a2;

        v12 = sub_2436CADC8();
        v13 = sub_2436CBEC8();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v59 = v16;
          *v14 = 136446466;
          v17 = *(v8 + 112);
          v18 = *(v57 + 120);

          v19 = sub_2436AFA70(v17, v18, &v59);
          v8 = v57;

          *(v14 + 4) = v19;
          *(v14 + 12) = 2114;
          v20 = a2;
          v21 = _swift_stdlib_bridgeErrorToNSError();
          *(v14 + 14) = v21;
          *v15 = v21;
          _os_log_impl(&dword_24366A000, v12, v13, "Error searching for students matching query '%{public}s': %{public}@", v14, 0x16u);
          sub_243685378(v15);
          MEMORY[0x245D3CD90](v15, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x245D3CD90](v16, -1, -1);
          MEMORY[0x245D3CD90](v14, -1, -1);
        }

        else
        {
        }
      }

      sub_2436CAE58();
      if (v59)
      {
        v22 = v59;
      }

      else
      {
        v22 = MEMORY[0x277D84F90];
      }

      if (a1)
      {
        v23 = a1;
      }

      else
      {
        v23 = MEMORY[0x277D84F90];
      }

      v24 = v23;
      if (v23 >> 62)
      {
        goto LABEL_44;
      }

      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        do
        {
          v56 = v23 & 0xC000000000000001;
          v53 = v23 & 0xFFFFFFFFFFFFFF8;

          v26 = v24;
          v27 = 0;
          v54 = v25;
          v55 = v24;
          while (v56)
          {
            v30 = MEMORY[0x245D3C2F0](v27, v26);
            v31 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_40;
            }

LABEL_26:
            swift_unknownObjectRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_2436C1394(0, *(v22 + 2) + 1, 1, v22);
            }

            v33 = *(v22 + 2);
            v32 = *(v22 + 3);
            if (v33 >= v32 >> 1)
            {
              v22 = sub_2436C1394((v32 > 1), v33 + 1, 1, v22);
            }

            *(v22 + 2) = v33 + 1;
            v34 = &v22[16 * v33];
            *(v34 + 4) = v30;
            v34[40] = 1;
            v35 = [v30 identifier];
            v36 = sub_2436CBD38();
            v38 = v37;

            v24 = *(v22 + 2);
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v40 = *(v8 + 72);
            v58 = v40;
            *(v8 + 72) = 0x8000000000000000;
            v41 = sub_24366FE3C(v36, v38);
            v43 = v40[2];
            v44 = (v42 & 1) == 0;
            v45 = __OFADD__(v43, v44);
            v46 = v43 + v44;
            if (v45)
            {
              goto LABEL_41;
            }

            v8 = v42;
            if (v40[3] < v46)
            {
              sub_2436B8318(v46, isUniquelyReferenced_nonNull_native);
              v41 = sub_24366FE3C(v36, v38);
              if ((v8 & 1) != (v47 & 1))
              {
                result = sub_2436CC318();
                __break(1u);
                return result;
              }

LABEL_35:
              --v24;
              if (v8)
              {
                goto LABEL_18;
              }

              goto LABEL_36;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_35;
            }

            v51 = v41;
            sub_2436B8B70();
            v41 = v51;
            --v24;
            if (v8)
            {
LABEL_18:
              v28 = v41;

              v29 = v58;
              *(v58[7] + 8 * v28) = v24;
              goto LABEL_19;
            }

LABEL_36:
            v29 = v40;
            v40[(v41 >> 6) + 8] |= 1 << v41;
            v48 = (v40[6] + 16 * v41);
            *v48 = v36;
            v48[1] = v38;
            *(v40[7] + 8 * v41) = v24;
            v49 = v40[2];
            v45 = __OFADD__(v49, 1);
            v50 = v49 + 1;
            if (v45)
            {
              goto LABEL_42;
            }

            v40[2] = v50;
LABEL_19:
            v8 = v57;
            *(v57 + 72) = v29;
            swift_endAccess();
            swift_unknownObjectRelease();
            ++v27;
            v25 = v54;
            v26 = v55;
            if (v31 == v54)
            {
              goto LABEL_46;
            }
          }

          if (v27 >= *(v53 + 16))
          {
            goto LABEL_43;
          }

          v30 = *(v26 + 8 * v27 + 32);
          swift_unknownObjectRetain();
          v31 = v27 + 1;
          if (!__OFADD__(v27, 1))
          {
            goto LABEL_26;
          }

LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          v52 = sub_2436CC008();
          v23 = v24;
          v25 = v52;
        }

        while (v52);
      }

LABEL_46:

      *(v8 + 81) = v25 == *(v8 + 56);
      v59 = v22;
      v60 = 0;
      sub_2436CAE68();
      *(v8 + 80) = 0;
    }
  }

  return result;
}

double sub_243684F74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED58, qword_2436CF050);
    v4 = sub_2436CBE08();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

void sub_243685014(uint64_t result, uint64_t a2)
{
  if (*(v2 + 81) == 1 && (*(v2 + 80) & 1) == 0 && (a2 & 1) != 0)
  {
    v3 = [swift_unknownObjectRetain() identifier];
    v4 = sub_2436CBD38();
    v6 = v5;

    swift_beginAccess();
    v7 = *(v2 + 72);
    if (*(v7 + 16) && (v8 = v2, , v9 = sub_24366FE3C(v4, v6), v11 = v10, , (v11 & 1) != 0))
    {
      v12 = *(*(v7 + 56) + 8 * v9);

      sub_2436CAE58();
      if (v21)
      {
        v13 = *(v21 + 16);

        v14 = *(v8 + 64);
        v15 = __OFSUB__(v13, v14);
        v16 = v13 - v14;
        if (v15)
        {
          __break(1u);
          goto LABEL_17;
        }

        if (v12 >= v16)
        {
          if (qword_27ED7DF10 == -1)
          {
LABEL_10:
            v17 = sub_2436CADE8();
            __swift_project_value_buffer(v17, qword_27ED7FD78);
            v18 = sub_2436CADC8();
            v19 = sub_2436CBED8();
            if (os_log_type_enabled(v18, v19))
            {
              v20 = swift_slowAlloc();
              *v20 = 0;
              _os_log_impl(&dword_24366A000, v18, v19, "Wants to load more", v20, 2u);
              MEMORY[0x245D3CD90](v20, -1, -1);
            }

            sub_2436847C8();
            goto LABEL_14;
          }

LABEL_17:
          swift_once();
          goto LABEL_10;
        }
      }
    }

    else
    {
    }

LABEL_14:
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2436851FC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

void sub_243685280(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;

  sub_2436842BC();
}

uint64_t sub_2436852E8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243685320()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243685378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ECA0, &unk_2436CEDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2436853E0()
{
  result = qword_27ED7ED68;
  if (!qword_27ED7ED68)
  {
    sub_2436CAE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7ED68);
  }

  return result;
}

unint64_t sub_243685448()
{
  result = qword_27ED7EC60;
  if (!qword_27ED7EC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED7ED70, &qword_2436CEDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EC60);
  }

  return result;
}

uint64_t sub_2436854AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2436854C4(void *a1)
{
  v2 = v1;
  v4 = sub_2436CAC08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 userGivenName];
  if (v8)
  {
    v9 = v8;
    sub_2436CBD38();

    v10 = [v2 userFamilyName];
    if (v10)
    {
      v11 = v10;
      sub_2436CBD38();

      sub_2436CABF8();
      sub_2436CABD8();
      sub_2436CABC8();
      v12 = sub_2436CABE8();
      v13 = [a1 annotatedStringFromPersonNameComponents_];

      v14 = [v13 string];
      v15 = sub_2436CBD38();

      [v13 crk_familyNameRange];
      (*(v5 + 8))(v7, v4);
      return v15;
    }
  }

  v16 = [v2 userFullName];
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v15 = sub_2436CBD38();

  return v15;
}

uint64_t sub_2436856F0()
{
  swift_getKeyPath("@%k;");
  sub_2436CAED8();

  return v1;
}

uint64_t sub_243685764()
{
  swift_getKeyPath("(%k;");
  swift_getKeyPath("\b%k;");
  sub_2436CAED8();

  return v1;
}

void sub_2436857DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualRoster) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v8 = (v4 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualHistory);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;

  if ((*(v4 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_isSimulatingSlowLoading) & 1) == 0)
  {
    swift_getKeyPath("@%k;");
    swift_unknownObjectRetain();

    sub_2436CAEE8();
    swift_getKeyPath("(%k;");
    swift_getKeyPath("\b%k;");

    sub_2436CAEE8();
  }
}

void sub_243685918(double a1)
{
  *(v1 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_isSimulatingSlowLoading) = 1;
  swift_getKeyPath("@%k;");

  sub_2436CAEE8();
  swift_getKeyPath("(%k;", 1);
  swift_getKeyPath("\b%k;");
  v10 = 0;
  v11 = 0;
  v9 = 1;

  sub_2436CAEE8();
  v3 = OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_slowLoadingTimer;
  [*(v1 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_slowLoadingTimer) invalidate];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_weakInit();
  v13 = sub_243686148;
  v14 = v5;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_243689660;
  v12 = &block_descriptor_1;
  v6 = _Block_copy(&v9);

  v7 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:a1];
  _Block_release(v6);
  v8 = *(v1 + v3);
  *(v1 + v3) = v7;
}

uint64_t sub_243685AE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_243685B38();
  }

  return result;
}

uint64_t sub_243685B38()
{
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_isSimulatingSlowLoading) = 0;
  v1 = OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_slowLoadingTimer;
  [*(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_slowLoadingTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  swift_getKeyPath("@%k;");
  swift_unknownObjectRetain();

  sub_2436CAEE8();
  swift_getKeyPath("(%k;");
  swift_getKeyPath("\b%k;");

  return sub_2436CAEE8();
}

uint64_t sub_243685C50()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues__roster;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EDF0, &qword_2436CF0E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues__history;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EED0, &unk_2436CF410);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for EMSMockValues(uint64_t a1)
{
  result = qword_27ED7EDB8;
  if (!qword_27ED7EDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243685DC8(uint64_t a1)
{
  sub_2436803FC(319, &qword_27ED7EDC8, &qword_27ED7EDD0, &qword_2436CF090);
  if (v1 <= 0x3F)
  {
    sub_2436803FC(319, &qword_27ED7EDD8, &unk_27ED7EDE0, &qword_2436CF098);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_243685EE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EED0, &unk_2436CF410);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EDF0, &qword_2436CF0E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues__roster;
  v14 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EDD0, &qword_2436CF090);
  sub_2436CAE98();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues__history;
  v15 = 0;
  v16 = 0;
  v14 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EDE0, &qword_2436CF098);
  sub_2436CAE98();
  (*(v2 + 32))(v0 + v10, v4, v1);
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualRoster) = 0;
  v11 = (v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_actualHistory);
  v11[1] = 0;
  v11[2] = 0;
  *v11 = 0;
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_isSimulatingSlowLoading) = 0;
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit13EMSMockValues_slowLoadingTimer) = 0;
  return v0;
}

uint64_t sub_243686110()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243686168()
{
  swift_getKeyPath("h%k;");
  swift_getKeyPath("H%k;");
  sub_2436CAED8();

  return v1;
}

BOOL sub_2436861DC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v3 == 7)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_243686218()
{
  swift_getKeyPath("0%k;");
  swift_getKeyPath(byte_2436CF278);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24368628C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_getKeyPath("h%k;");
  swift_getKeyPath("H%k;");
  sub_2436CAED8();

  if (v9 == a1 && v11 == a2)
  {
  }

  else
  {
    v7 = sub_2436CC2E8();

    if ((v7 & 1) == 0)
    {
      swift_getKeyPath("h%k;");
      swift_getKeyPath("H%k;");
      v9 = a1;
      v11 = a2;

      sub_2436CAEE8();
    }
  }

  swift_getKeyPath("0%k;", v9, v11);
  swift_getKeyPath(byte_2436CF278);
  sub_2436CAED8();

  if (v10 != 7)
  {
    if (v10 == a3)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a3 != 7)
  {
LABEL_12:
    swift_getKeyPath("0%k;");
    swift_getKeyPath(byte_2436CF278);

    return sub_2436CAEE8();
  }

  return result;
}

uint64_t sub_243686440()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit22EMSFacePortalViewModel__monogram;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit22EMSFacePortalViewModel__appearance;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EE28, &qword_2436CF2A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for EMSFacePortalViewModel(uint64_t a1)
{
  result = qword_27ED7EE10;
  if (!qword_27ED7EE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243686588(uint64_t a1)
{
  sub_243686670(319, &qword_27ED80310, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_243686670(319, &qword_27ED7EE20, &type metadata for EMSFacePortalViewModel.Appearance);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_243686670(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2436CAEF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for EMSFacePortalViewModel.Appearance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 7;
  v9 = v7 - 7;
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

uint64_t storeEnumTagSinglePayload for EMSFacePortalViewModel.Appearance(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
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

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_243686810(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 7)
  {
    return v1 - 6;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_243686824(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 6;
  }

  return result;
}

uint64_t sub_243686844@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSFacePortalViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

uint64_t sub_243686884@<X0>(void *a2@<X8>)
{
  swift_getKeyPath("h%k;");
  swift_getKeyPath("H%k;");
  sub_2436CAED8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_243686908(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath("h%k;");
  swift_getKeyPath("H%k;");

  return sub_2436CAEE8();
}

uint64_t sub_243686990@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath("0%k;");
  swift_getKeyPath(byte_2436CF278);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_243686A14(char *a1, uint64_t *a2)
{
  swift_getKeyPath("0%k;");
  swift_getKeyPath(byte_2436CF278);

  return sub_2436CAEE8();
}

uint64_t sub_243686AB8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EE30, &qword_2436CF308);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  sub_2436CB4C8();
  v6 = sub_2436CBB48();
  v8 = v7;
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EE38, &qword_2436CF310) + 36);
  if (sub_2436CB4D8())
  {
    sub_2436CB938();
    v21 = sub_2436CB958();

    v20 = sub_2436CBB48();
    v11 = v10;
    v12 = (v5 + *(v2 + 36));
    v13 = v8;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EE48, &unk_2436CF320) + 36);
    v15 = sub_2436CB4B8();
    v16 = v12 + v14;
    v8 = v13;
    (*(*(v15 - 8) + 16))(v16, a1, v15);
    v17 = v21;
    *v12 = v20;
    v12[1] = v11;
    *v5 = v17;
    sub_243686CB4(v5, v9);
    (*(v3 + 56))(v9, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v9, 1, 1, v2);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EE40, &qword_2436CF318);
  v19 = (v9 + *(result + 36));
  *v19 = v6;
  v19[1] = v8;
  return result;
}

uint64_t sub_243686CB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EE30, &qword_2436CF308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243686D28()
{
  result = qword_27ED7EE50;
  if (!qword_27ED7EE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7EE38, &qword_2436CF310);
    sub_243686DB4();
    sub_243686E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EE50);
  }

  return result;
}

unint64_t sub_243686DB4()
{
  result = qword_27ED7EE58;
  if (!qword_27ED7EE58)
  {
    sub_2436CB4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EE58);
  }

  return result;
}

unint64_t sub_243686E0C()
{
  result = qword_27ED7EE60;
  if (!qword_27ED7EE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7EE40, &qword_2436CF318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EE60);
  }

  return result;
}

void sub_243686E70(uint64_t a1)
{
  swift_getKeyPath(byte_2436CF430);
  swift_getKeyPath(byte_2436CF458);
  sub_2436CAED8();

  v2 = v10;
  if (v10 != 1)
  {
    swift_getKeyPath(byte_2436CF478);
    swift_getKeyPath(byte_2436CF4A0);
    sub_2436CAED8();

    v4 = v10;
    if (!v10)
    {
      sub_2436887F0(0, v3);
      return;
    }

    v6 = v11;
    v5 = v12;

    sub_243688CAC(v10);
    v7 = sub_2436889B8(&v10, a1);

    if (v10 >> 62)
    {
      v8 = sub_2436CC008();
      if (v8 >= v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v7)
      {
LABEL_6:
        sub_243688DBC(v7, v8);
        sub_243688E94(v4);
        sub_2436857DC(v2, v10, v6 & 1, v5);
        sub_2436887F0(v2, v9);

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_243687024()
{
  swift_getKeyPath(byte_2436CF430);
  swift_getKeyPath(byte_2436CF458);
  sub_2436CAED8();

  if (v3 != 1)
  {
    sub_2436857DC(v3, MEMORY[0x277D84F90], 0, *(v0 + 48));
    return sub_2436887F0(v3, v2);
  }

  return result;
}

double sub_2436870C8()
{
  *&result = 8;
  xmmword_27ED7EE70 = xmmword_2436CF330;
  qword_27ED7EE80 = 30;
  word_27ED7EE88 = 0;
  byte_27ED7EE8A = 0;
  qword_27ED7EE90 = 500;
  return result;
}

double sub_2436870F8(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  v4 = objc_allocWithZone(_s10MockRosterCMa());
  v5 = sub_243694C78(a1);
  sub_24368801C(a1);
  v7 = v6;
  v8 = *(a1 + 26);
  v9 = *(a1 + 32);
  *(*(v1 + OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_mockDirectory) + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectory_roster) = v5;
  v10 = v5;
  swift_unknownObjectRelease();
  v11 = v10;
  sub_2436857DC(v5, v7, v8, v9);

  return result;
}

void sub_2436871E0(void *a1@<X8>)
{
  sub_2436CC078();

  v2 = sub_2436CC2B8();
  MEMORY[0x245D3C000](v2);

  *a1 = 0xD000000000000015;
  a1[1] = 0x80000002436E55C0;
}

uint64_t sub_24368728C()
{

  sub_243688F64(v0 + OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedUserInterfaceState);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for EMSMockDataSource(uint64_t a1)
{
  result = qword_27ED7EEA8;
  if (!qword_27ED7EEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243687370(uint64_t a1)
{
  sub_243687430(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_243687430(uint64_t a1)
{
  if (!qword_27ED7EEB8)
  {
    type metadata accessor for EMSUserInterfaceRecord(255);
    v1 = sub_2436CBF38();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED7EEB8);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24368749C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2436874F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24368754C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EEE0, &unk_2436CF420);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EDF0, &qword_2436CF0E8);
  sub_2436CAEA8();
  swift_endAccess();
  sub_243687FC8(&qword_27ED7EEF0, &unk_27ED7EEE0, &unk_2436CF420);
  v4 = sub_2436CAF08();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_2436876A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EEC8, &qword_2436CF408);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EED0, &unk_2436CF410);
  sub_2436CAEA8();
  swift_endAccess();
  sub_243687FC8(&qword_27ED7EED8, &qword_27ED7EEC8, &qword_2436CF408);
  v4 = sub_2436CAF08();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_243687808@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedUserInterfaceState;
  swift_beginAccess();
  return sub_243687F58(v3 + v4, a1);
}

uint64_t sub_243687864@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedLocalAuthenticationTimestamp;
  *a1 = *v2;
  *(a1 + 8) = *(v2 + 8);
}

uint64_t sub_243687914(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedUserInterfaceState;
  swift_beginAccess();
  sub_243687EE8(a1, v3 + v4);
  return swift_endAccess();
}

void sub_243687978(uint64_t a1)
{
  v2 = *v1 + OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedLocalAuthenticationTimestamp;
  *v2 = *a1;
  *(v2 + 8) = *(a1 + 8);
}

double sub_2436879D0(void (*a1)(uint64_t, unint64_t, void))
{
  v2 = sub_2436712BC(MEMORY[0x277D84F90]);
  a1(1, v2, 0);

  return result;
}

uint64_t sub_243687A34@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_2436CF430);
  swift_getKeyPath(byte_2436CF458);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_243687AB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(byte_2436CF430);
  swift_getKeyPath(byte_2436CF458);

  sub_243688800(v2, v3);
  return sub_2436CAEE8();
}

double sub_243687B30@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_2436CF478);
  swift_getKeyPath(byte_2436CF4A0);
  sub_2436CAED8();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_243687BB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(byte_2436CF478);
  swift_getKeyPath(byte_2436CF4A0);
  sub_243688CAC(v2);

  return sub_2436CAEE8();
}

uint64_t sub_243687C4C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2436CC008();
LABEL_9:
  result = sub_2436CC0A8();
  *v2 = result;
  return result;
}

uint64_t sub_243687CEC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_243687D98()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 <= 0.0)
  {
    if (v1 <= v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = *(v0 + 24);
    if (*(v0 + 32))
    {
      v6 = v1 + v2;
    }

    else
    {
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return result;
      }

      v6 = *v0 + v5 * v2;
    }

    *(v0 + 24) = v5;
    *(v0 + 40) = v6;
    return *&v1;
  }

  if (v3 > v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v1 != v3 || (*(v0 + 48) & 1) != 0)
  {
    return 0;
  }

  if ((*(v0 + 32) & 1) == 0 && *(v0 + 24) == 0x8000000000000000)
  {
    return 0;
  }

  *(v0 + 48) = 1;
  return *&v1;
}

uint64_t sub_243687E48()
{
  result = *(v0 + 40);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 <= 0)
  {
    if (v3 < result)
    {
      goto LABEL_3;
    }
  }

  else if (result < v3)
  {
LABEL_3:
    v4 = __OFADD__(result, v2);
    v5 = result + v2;
    v6 = v4;
    v7 = 0x8000000000000000;
    if (v4)
    {
      v5 = (v5 >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 24) = v7;
    *(v0 + 32) = v6 ^ 1;
    *(v0 + 40) = v5;
    return result;
  }

  if (result != v3 || (*(v0 + 48) & 1) != 0)
  {
    return 0;
  }

  if ((*(v0 + 32) & 1) == 0 && *(v0 + 24) == 0x8000000000000000)
  {
    return 0;
  }

  *(v0 + 48) = 1;
  return result;
}

uint64_t sub_243687EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E400, &qword_2436CF400);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_243687F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E400, &qword_2436CF400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243687FC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_24368801C(uint64_t a1)
{
  v48 = sub_2436CAD38();
  MEMORY[0x28223BE20](v48);
  v66 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = xmmword_2436CF340;
  v80 = xmmword_2436CF350;
  v81 = 0;
  v82 = 1;
  v83 = 0;
  v84 = sub_2436871E0;
  v85 = 0;
  v71 = xmmword_2436CF360;
  v72 = 0xC072C00000000000;
  v73 = 0;
  v74 = 0;
  v75 = 0x41D8CDC824000000;
  v76 = 0;
  v77 = sub_243687284;
  v78 = 0;
  v70 = MEMORY[0x277D84F90];
  v49 = a1;
  v4 = *(a1 + 16);
  if (v4 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    if (!v4)
    {
LABEL_16:

      return;
    }

    v46 = 0x80000002436E55C0;
    v45 = 0x80000002436E55E0;
    v43 = (v2 + 8);
    v47 = _s18MockNameComponentsCMa();
    v5 = 0;
    v6 = &unk_2856748E0;
    v7 = &unk_285674CC0;
    v44 = v4;
    while (1)
    {
      v63 = v6;
      v8 = &v6[-960 * (v5 / 0x1E)];
      v9 = *(v8 + 4);
      v10 = *(v8 + 5);
      v11 = *(v8 + 6);
      v12 = *(v8 + 7);
      v62 = v7;
      v13 = &v7[-960 * (v5 / 0x1E)];
      v15 = *(v13 + 4);
      v14 = *(v13 + 5);
      v16 = *(v13 + 7);
      v65 = *(v13 + 6);
      objc_allocWithZone(v47);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v61 = v10;
      v64 = v5;
      v17 = sub_2436951D8(v9, v10, v11, v12, v5);
      v18 = sub_243687E48();
      if (v19)
      {
        break;
      }

      v20 = v18;
      v68 = 0;
      v21 = 0xE000000000000000;
      v69 = 0xE000000000000000;
      sub_2436CC078();

      v68 = 0xD000000000000015;
      v69 = v46;
      v67 = v20;
      v22 = sub_2436CC2B8();
      MEMORY[0x245D3C000](v22);

      v59 = v68;
      v60 = v69;
      v23 = *&v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_appleID];
      v24 = *&v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_appleID + 8];
      sub_243687D98();
      if (v25)
      {
        goto LABEL_21;
      }

      v57 = v24;
      v58 = v23;
      sub_2436CAD08();
      if (*(v49 + 25))
      {
        v26 = 0xD0000000000001BDLL;
      }

      else
      {
        v26 = 0;
      }

      if (*(v49 + 25))
      {
        v21 = v45;
      }

      v68 = v15;
      v69 = v14;

      MEMORY[0x245D3C000](v26, v21);

      v56 = v68;
      v68 = v65;
      v69 = v16;

      MEMORY[0x245D3C000](v26, v21);

      v27 = *&v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_givenName + 8];
      if (!v27)
      {
        goto LABEL_18;
      }

      v65 = v68;
      v68 = *&v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_givenName];
      v69 = v27;

      MEMORY[0x245D3C000](v26, v21);

      v28 = *&v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_familyName + 8];
      if (!v28)
      {
        goto LABEL_19;
      }

      v55 = v68;
      v54 = v69;
      v29 = *&v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_familyName];

      v68 = v29;
      v69 = v28;

      MEMORY[0x245D3C000](v26, v21);

      v53 = v68;
      v30 = *&v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_fullName + 8];
      v68 = *&v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_fullName];
      v69 = v30;

      MEMORY[0x245D3C000](v26, v21);

      v31 = *&v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_monogram + 8];
      v51 = *&v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_monogram];
      v50 = v31;
      v52 = objc_allocWithZone(MEMORY[0x277CFA640]);
      v32 = sub_2436CBD08();

      v33 = sub_2436CBD08();
      v34 = sub_2436CACD8();
      v35 = sub_2436CBD08();
      v61 = v17;
      v36 = v35;

      v37 = sub_2436CBD08();

      v38 = sub_2436CBD08();

      v39 = sub_2436CBD08();

      v40 = sub_2436CBD08();

      v41 = sub_2436CBD08();
      [v52 initWithIdentifier:v32 appleID:v33 date:v34 deviceName:v36 deviceSerialNumber:v37 userGivenName:v38 userFamilyName:v39 userFullName:v40 userMonogram:v41];

      v42 = (*v43)(v66, v48);
      MEMORY[0x245D3C040](v42);
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2436CBE18();
      }

      v5 = v64 + 1;
      sub_2436CBE38();

      v6 = v63 + 32;
      v7 = v62 + 32;
      if (v44 == v5)
      {
        goto LABEL_16;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_2436887F0(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_243688800(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_243688818(unint64_t a1, uint64_t a2)
{
  v15 = a2;
  if (a1 >> 62)
  {
LABEL_17:
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_2436CC008();
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (v18 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x245D3C2F0](v3, a1);
    }

    else
    {
      if (v3 >= *(v16 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 identifier];
    if (v7)
    {
      v8 = v7;
      v9 = sub_2436CBD38();
      v11 = v10;

      v17[0] = v9;
      v17[1] = v11;
      MEMORY[0x28223BE20](v12);
      v14[2] = v17;
      LOBYTE(v8) = sub_243687CEC(sub_243688FCC, v14, v15);

      if (v8)
      {
        return v3;
      }
    }

    else
    {
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_2436889B8(unint64_t *a1, uint64_t a2)
{
  v6 = a1;
  v7 = *a1;
  v8 = sub_243688818(*a1, a2);
  v10 = v3;
  if (v3)
  {
    return v2;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_2436CC008();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v8;
  v33 = v6;
  v34 = a2;
  v12 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v12 == sub_2436CC008())
      {
        return v2;
      }
    }

    else if (v12 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    v16 = v7 & 0xC000000000000001;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x245D3C2F0](v12, v7);
    }

    else
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v17 = *(v7 + 8 * v12 + 32);
    }

    v18 = v17;
    v19 = [v17 identifier];
    if (!v19)
    {

      if (v2 != v12)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    v20 = v19;
    v21 = v10;
    v22 = sub_2436CBD38();
    v24 = v23;

    v36 = v2;
    v35[0] = v22;
    v35[1] = v24;
    MEMORY[0x28223BE20](v25);
    v32[2] = v35;
    LOBYTE(v20) = sub_243687CEC(sub_243688EF0, v32, v34);
    v10 = v21;

    v16 = v7 & 0xC000000000000001;
    v2 = v36;
    if ((v20 & 1) == 0)
    {
      break;
    }

LABEL_11:
    v15 = __OFADD__(v12++, 1);
    if (v15)
    {
      goto LABEL_46;
    }
  }

  if (v36 == v12)
  {
    goto LABEL_10;
  }

LABEL_23:
  if (v16)
  {
    v4 = MEMORY[0x245D3C2F0](v2, v7);
    v26 = MEMORY[0x245D3C2F0](v12, v7);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    v27 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v27)
    {
      goto LABEL_50;
    }

    if (v12 >= v27)
    {
      goto LABEL_51;
    }

    v28 = *(v7 + 32 + 8 * v12);
    v4 = *(v7 + 32 + 8 * v2);
    v26 = v28;
  }

  v29 = v26;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
  {
    v7 = sub_2436BAC5C(v7);
    v30 = (v7 >> 62) & 1;
  }

  else
  {
    LODWORD(v30) = 0;
  }

  v6 = (v7 & 0xFFFFFFFFFFFFFF8);
  v31 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v29;

  if ((v7 & 0x8000000000000000) == 0 && !v30)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_43;
    }

LABEL_37:
    if (v12 >= v6[2])
    {
      goto LABEL_48;
    }

LABEL_9:
    v13 = &v6[v12];
    v14 = v13[4];
    v13[4] = v4;

    *v33 = v7;
LABEL_10:
    v15 = __OFADD__(v2++, 1);
    if (v15)
    {
      goto LABEL_47;
    }

    goto LABEL_11;
  }

  v7 = sub_2436BAC5C(v7);
  v6 = (v7 & 0xFFFFFFFFFFFFFF8);
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_37;
  }

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
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return sub_2436CC008();
}

uint64_t sub_243688CAC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_243688CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_243688EA4();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2436CC008();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2436CC008();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_243688DBC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2436CC008();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_2436CC008();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_243687C4C(result, 1);

  return sub_243688CBC(v5, v3, 0);
}

double sub_243688E94(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

unint64_t sub_243688EA4()
{
  result = qword_27ED7E4C0;
  if (!qword_27ED7E4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED7E4C0);
  }

  return result;
}

uint64_t sub_243688F0C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2436CC2E8() & 1;
  }
}

uint64_t sub_243688F64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E400, &qword_2436CF400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243688FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = sub_2436CABB8();
  MEMORY[0x28223BE20](v8 - 8);
  if (sub_2436CAAE8() == a3)
  {

    sub_2436CABA8();
    return sub_2436CAB88();
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v11 = sub_2436CBD08();
    v12 = [v10 initWithString_];

    v13 = *MEMORY[0x277D740A8];
    v14 = [objc_opt_self() boldSystemFontOfSize_];
    [v12 addAttribute:v13 value:v14 range:{a3, a4}];

    return MEMORY[0x28211C2C8](v12);
  }
}

id sub_243689174(uint64_t a1)
{
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        sub_24367BEEC();
        v1 = 1.0;
        v2 = 31;
        v3 = 172;
        v4 = 183;
        return sub_24367BC54(v2, v3, v4, v1);
      case 2:
        v5 = [objc_opt_self() systemBlueColor];
        goto LABEL_18;
      case 3:
        v5 = [objc_opt_self() systemGreenColor];
        goto LABEL_18;
    }

LABEL_13:
    sub_24367BEEC();
    v1 = 1.0;
    v2 = 142;
    v3 = 142;
    v4 = 147;
    return sub_24367BC54(v2, v3, v4, v1);
  }

  if (a1 > 5)
  {
    if (a1 == 6)
    {
      v5 = [objc_opt_self() systemPurpleColor];
      goto LABEL_18;
    }

    if (a1 == 7)
    {
      v5 = [objc_opt_self() systemRedColor];
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (a1 != 4)
  {
    sub_24367BEEC();
    v1 = 1.0;
    v2 = 255;
    v3 = 34;
    v4 = 94;
    return sub_24367BC54(v2, v3, v4, v1);
  }

  v5 = [objc_opt_self() systemOrangeColor];
LABEL_18:

  return v5;
}

uint64_t sub_2436892F0(uint64_t a1)
{
  v2 = sub_2436CB908();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 4)
  {
    if (a1 == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EEF8, &qword_2436CF528);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_2436CF4C0;
      v15 = *MEMORY[0x277CE0EE0];
      v16 = *(v3 + 104);
      v16(v5, v15, v2);
      *(v6 + 32) = sub_2436CB988();
      v16(v5, v15, v2);
      goto LABEL_10;
    }

    if (a1 != 8)
    {
LABEL_8:
      v11 = sub_243689174(a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EEF8, &qword_2436CF528);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_2436CF4C0;
      sub_24367BD6C(0.85);
      *(v12 + 32) = sub_2436CB8E8();
      sub_24367BD6C(1.6);
      *(v12 + 40) = sub_2436CB8E8();
      v13 = MEMORY[0x245D3BD50](v12);

      return v13;
    }

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EEF8, &qword_2436CF528);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2436CF4C0;
    v9 = *MEMORY[0x277CE0EE0];
    v10 = *(v3 + 104);
    v10(v5, v9, v2);
    *(v6 + 32) = sub_2436CB988();
    v10(v5, v9, v2);
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EEF8, &qword_2436CF528);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2436CF4C0;
  v7 = *MEMORY[0x277CE0EE0];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  *(v6 + 32) = sub_2436CB988();
  v8(v5, v7, v2);
LABEL_10:
  *(v6 + 40) = sub_2436CB988();
  return MEMORY[0x245D3BD50](v6);
}

void sub_243689660(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2436896DC()
{
  swift_getKeyPath(byte_2436CF700);
  swift_getKeyPath(byte_2436CF728);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_243689750()
{
  v1 = sub_2436CAB68();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  swift_getKeyPath("P!k;");
  swift_getKeyPath("0!k;");

  sub_2436CAED8();

  sub_2436CAB58();
  sub_2436732AC();
  v6 = sub_2436CBF48();
  v8 = v7;
  (*(v2 + 8))(v4, v1);

  v9 = (v5 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_query);
  *v9 = v6;
  v9[1] = v8;

  v10 = v5 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_resultProvider;
  swift_beginAccess();
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  v13 = *(v12 + 16);

  v13(v6, v8, v11, v12);
  swift_endAccess();
}

uint64_t sub_24368994C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_243689A30((v2 != 0) & v3);
  }

  return result;
}

uint64_t sub_2436899C0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_243689CF0(v2, v3);
  }

  return result;
}

void sub_243689A30(char a1)
{
  v2 = *(v1 + 32);
  if (a1)
  {
    if (!v2)
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      swift_weakInit();
      v8[4] = sub_24368ACD0;
      v8[5] = v4;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = sub_243689660;
      v8[3] = &block_descriptor_2;
      v5 = _Block_copy(v8);

      v6 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:0.5];
      _Block_release(v5);
      v7 = *(v1 + 32);
      *(v1 + 32) = v6;
    }
  }

  else
  {
    *(v1 + 32) = 0;

    swift_getKeyPath(byte_2436CF700);
    swift_getKeyPath(byte_2436CF728);

    sub_2436CAEE8();
  }
}

void sub_243689B90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath(byte_2436CF748);
    swift_getKeyPath("h!k;");

    sub_2436CAED8();

    if (v5)
    {

      if (v6)
      {
        swift_getKeyPath(byte_2436CF700);
        swift_getKeyPath(byte_2436CF728);
        sub_2436CAED8();

        if ((v5 & 1) == 0)
        {
          swift_getKeyPath(byte_2436CF700);
          swift_getKeyPath(byte_2436CF728);

          sub_2436CAEE8();
        }
      }
    }

    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }
}

void sub_243689CF0(uint64_t a1, uint64_t a2)
{
  v5 = sub_2436CAC58();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + 56) & 1) == 0)
  {
    v11 = *(v2 + 40);
    v12 = *(v2 + 48);
    swift_getKeyPath(byte_2436CF6B8);
    swift_getKeyPath(byte_2436CF6E0);
    sub_2436CAED8();

    if (v20 != v11 || v12 != v21)
    {
      v13 = sub_2436CC2E8();

      if (v13)
      {
        return;
      }

      swift_getKeyPath(byte_2436CF6B8);
      swift_getKeyPath(byte_2436CF6E0);
      v20 = v11;
      v21 = v12;

      sub_24366C090(v11, v12, 0);
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    swift_getKeyPath(byte_2436CF6B8);
    swift_getKeyPath(byte_2436CF6E0);
    sub_2436CAED8();

    if (v20 != a1 || v21 != a2)
    {
      v10 = sub_2436CC2E8();

      if (v10)
      {
        return;
      }

      swift_getKeyPath(byte_2436CF6B8);
      swift_getKeyPath(byte_2436CF6E0);
      v20 = a1;
      v21 = a2;

      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v14 = v7;
  if (qword_27ED7DED8 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_27ED83B48 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings13SearchStrings_barPlaceholderEmptyText, v14);
  v15 = sub_2436CBD58();
  v17 = v16;
  swift_getKeyPath(byte_2436CF6B8);
  swift_getKeyPath(byte_2436CF6E0);
  sub_2436CAED8();

  if (v20 == v15 && v21 == v17)
  {

    goto LABEL_18;
  }

  v19 = sub_2436CC2E8();

  if (v19)
  {
LABEL_18:

    return;
  }

  swift_getKeyPath(byte_2436CF6B8);
  swift_getKeyPath(byte_2436CF6E0);
  v20 = v15;
  v21 = v17;

LABEL_22:
  sub_2436CAEE8();
}

uint64_t sub_24368A06C()
{

  sub_243679F68(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtC14ClassroomUIKit21EMSSearchBarViewModel__barPlaceholderText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC14ClassroomUIKit21EMSSearchBarViewModel__isLoadingResults;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC14ClassroomUIKit21EMSSearchBarViewModel__searchQuery, v2);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for EMSSearchBarViewModel(uint64_t a1)
{
  result = qword_27ED7EF18;
  if (!qword_27ED7EF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24368A208(uint64_t a1)
{
  sub_243686670(319, &qword_27ED80310, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_243686670(319, &qword_27ED7EB70, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24368A340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24368A388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24368A3E8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSSearchBarViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

uint64_t sub_24368A43C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436CF6B8);
  swift_getKeyPath(byte_2436CF6E0);

  return sub_2436CAEE8();
}

uint64_t sub_24368A4C0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(byte_2436CF700);
  swift_getKeyPath(byte_2436CF728);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_24368A540(char *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436CF700);
  swift_getKeyPath(byte_2436CF728);

  return sub_2436CAEE8();
}

uint64_t sub_24368A5C8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath("P!k;");
  swift_getKeyPath("0!k;");

  sub_2436CAEE8();
  return sub_243689750();
}

uint64_t sub_24368A650(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v39 = a4;
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EF28, &unk_2436CF680);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v32 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC40, &unk_2436CED90);
  v9 = *(v8 - 8);
  v40 = v8;
  v41 = v9;
  MEMORY[0x28223BE20](v8);
  v35 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - v17;
  *(v4 + 24) = MEMORY[0x277D84FA0];
  *(v4 + 32) = 0;
  v19 = OBJC_IVAR____TtC14ClassroomUIKit21EMSSearchBarViewModel__barPlaceholderText;
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_2436CAE98();
  v20 = *(v16 + 32);
  v20(v5 + v19, v18, v15);
  v21 = OBJC_IVAR____TtC14ClassroomUIKit21EMSSearchBarViewModel__isLoadingResults;
  LOBYTE(v42) = 0;
  sub_2436CAE98();
  (*(v12 + 32))(v5 + v21, v14, v11);
  v22 = OBJC_IVAR____TtC14ClassroomUIKit21EMSSearchBarViewModel__searchQuery;
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_2436CAE98();
  v23 = v5;
  v20(v5 + v22, v18, v15);
  v24 = v37;
  *(v5 + 16) = v36;
  v25 = v38;
  *(v5 + 40) = v24;
  *(v5 + 48) = v25;
  LOBYTE(v22) = v39;
  *(v5 + 56) = v39 & 1;
  swift_beginAccess();

  sub_24366C090(v24, v25, v22 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC50, &qword_2436CF6A0);
  v26 = v35;
  sub_2436CAEA8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_243671838(&qword_27ED7FEB0, &qword_27ED7EC40, &unk_2436CED90, MEMORY[0x277CBCEC8]);

  v27 = v40;
  sub_2436CAF68();

  (*(v41 + 8))(v26, v27);
  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  if (v22)
  {
  }

  else
  {
    v42 = 0;
    v43 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
    v28 = v32;
    sub_2436CAE88();
    sub_243671838(&qword_27ED7EF40, &qword_27ED7EF28, &unk_2436CF680, MEMORY[0x277CBCE80]);
    v29 = v34;
    v24 = sub_2436CAF08();
    (*(v33 + 8))(v28, v29);
  }

  v42 = v24;
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EF30, &qword_2436CF6A8);
  sub_243671838(&qword_27ED7EF38, &qword_27ED7EF30, &qword_2436CF6A8, MEMORY[0x277CBCD90]);
  sub_2436CAF68();

  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  return v23;
}

uint64_t sub_24368AC54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *sub_24368AD74(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90];
  v1[7] = 0;
  v1[8] = v4;
  v14[1] = 0;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  swift_allocObject();
  v1[9] = sub_2436CAE78();
  sub_2436744F8(a1, (v1 + 2));
  swift_beginAccess();
  v5 = v1[5];
  v6 = v1[6];
  v7 = __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v8 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10);
  v11 = (*(v6 + 32))(v5, v6);
  (*(v8 + 8))(v10, v5);
  v14[0] = v11;
  swift_allocObject();
  swift_weakInit();
  sub_24368B2B8();
  v12 = sub_2436CAF68();

  __swift_destroy_boxed_opaque_existential_0(a1);

  v2[7] = v12;

  return v2;
}

uint64_t sub_24368AF74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24368AFE8(v2, v3);
  }

  return result;
}

uint64_t sub_24368AFE8(uint64_t a1, char a2)
{
  if (!a1)
  {
    *(v2 + 64) = MEMORY[0x277D84F90];

LABEL_7:

    sub_2436CAE68();
  }

  if (*(a1 + 16) || (a2 & 1) == 0)
  {
    *(v2 + 64) = a1;

    goto LABEL_7;
  }

  sub_2436CAE68();
}

uint64_t sub_24368B0C4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_24368B138(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v5 + 16, v6);
  (*(v7 + 16))(a1, a2, v6, v7);
  return swift_endAccess();
}

uint64_t sub_24368B1D8(uint64_t a1, char a2)
{
  v5 = *v2;
  swift_beginAccess();
  sub_2436744F8(v5 + 16, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_0(v9, v10);
  (*(v7 + 40))(a1, a2 & 1, v6, v7);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_24368B278()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_24368B2B8()
{
  result = qword_27ED7EF48;
  if (!qword_27ED7EF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED7ED80, &qword_2436CF070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EF48);
  }

  return result;
}

uint64_t sub_24368B31C()
{
  swift_getKeyPath(byte_2436CF968);
  swift_getKeyPath("x k;");
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24368B390()
{
  swift_getKeyPath(byte_2436CF920);
  swift_getKeyPath(byte_2436CF948);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24368B444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v32 = a1;
  v33 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F760, &unk_2436CF900);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EFA8, &unk_2436D0940);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v15 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
  v16 = sub_2436CAD38();
  (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__facePortal;
  type metadata accessor for EMSFacePortalViewModel(0);
  v18 = swift_allocObject();
  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  LOBYTE(v36) = 7;
  sub_2436CAE98();
  *&v36 = v18;
  sub_2436CAE98();
  (*(v12 + 32))(v4 + v17, v14, v11);
  v19 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__name;
  v36 = 0u;
  v37 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F730, &qword_2436CF880);
  sub_2436CAE98();
  (*(v29 + 32))(v4 + v19, v10, v30);
  v20 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__deviceInfo;
  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  v21 = *(v5 + 32);
  v22 = v31;
  v21(v4 + v20, v7, v31);
  v23 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__timestamp;
  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  v21(v4 + v23, v7, v22);
  v24 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__timestampAccessibilityLabel;
  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  v21(v4 + v24, v7, v22);
  v25 = v33;
  *(v4 + 16) = v32;
  *(v4 + 24) = v25;
  v26 = v35;
  *(v4 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_nameFormatter) = v34;
  *(v4 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_dateFormatter) = v26;
  return v4;
}

void sub_24368B818(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v32 - v5;
  v7 = sub_2436854C4(*(v1 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_nameFormatter));
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [a1 userMonogram];
  if (v14)
  {
    v15 = v14;
    v33 = sub_2436CBD38();
    v34 = v16;
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  v17 = [a1 userFullName];
  if (v17)
  {
    v18 = v17;
    sub_2436CBD38();
  }

  v19 = objc_opt_self();
  v20 = sub_2436CBD08();

  v21 = [v19 asmHashForString:v20 maximumExclusive:7];

  if (v21 > 6)
  {
    __break(1u);
  }

  else
  {
    v32[1] = v2;
    v22 = byte_2856750A0[v21 + 32];
    v23 = [a1 appleID];
    if (v23)
    {
      v24 = v23;
      v25 = sub_2436CBD38();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v28 = [a1 date];
    if (v28)
    {
      v29 = v28;
      sub_2436CAD18();

      v30 = sub_2436CAD38();
      (*(*(v30 - 8) + 56))(v6, 0, 1, v30);
    }

    else
    {
      v31 = sub_2436CAD38();
      (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
    }

    sub_24368BAE8(v7, v9, v11, v13, v33, v34, v22, v25, v27, v6);

    sub_243671AC8(v6, &qword_27ED7E4F0, &qword_2436CF910);
  }
}

uint64_t sub_24368BAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v64 = a7;
  v62 = a5;
  v63 = a6;
  v61 = a4;
  v65 = a3;
  v66 = a10;
  v15 = sub_2436CAD38();
  v16 = *(v15 - 8);
  v67 = v15;
  v68 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = &v57 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v60 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v59 = &v57 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EFB0, &qword_2436CF918);
  MEMORY[0x28223BE20](v24);
  v26 = &v57 - v25;
  swift_getKeyPath(byte_2436CF920);
  swift_getKeyPath(byte_2436CF948);
  sub_2436CAED8();

  if (!v72)
  {
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (!a2)
  {
LABEL_7:

    goto LABEL_8;
  }

  v28 = v73;
  v27 = v74;
  if (v71 != a1 || v72 != a2)
  {
    v29 = sub_2436CC2E8();

    if (v29)
    {
      goto LABEL_10;
    }

LABEL_8:
    swift_getKeyPath(byte_2436CF920);
    swift_getKeyPath(byte_2436CF948);
    v71 = a1;
    v72 = a2;
    v73 = v65;
    v74 = v61;

    sub_2436CAEE8();
    goto LABEL_12;
  }

LABEL_10:
  if (v28 != v65 || v27 != v61)
  {
    goto LABEL_8;
  }

LABEL_12:
  swift_getKeyPath(byte_2436CF968);
  swift_getKeyPath("x k;");
  sub_2436CAED8();

  sub_24368628C(v62, v63, v64);

  swift_getKeyPath("@ k;");
  sub_2436CAED8();

  if (v71 == a8 && v72 == a9)
  {

    v30 = v67;
    v31 = v68;
    v32 = v66;
  }

  else
  {
    v33 = sub_2436CC2E8();

    v30 = v67;
    v31 = v68;
    v32 = v66;
    if ((v33 & 1) == 0)
    {
      swift_getKeyPath("@ k;");
      v71 = a8;
      v72 = a9;

      sub_2436CAEE8();
    }
  }

  v34 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
  swift_beginAccess();
  v35 = *(v24 + 48);
  sub_24368CAC4(v11 + v34, v26);
  sub_24368CAC4(v32, &v26[v35]);
  v36 = *(v31 + 48);
  if (v36(v26, 1, v30) == 1)
  {
    if (v36(&v26[v35], 1, v30) == 1)
    {
      return sub_243671AC8(v26, &qword_27ED7E4F0, &qword_2436CF910);
    }
  }

  else
  {
    v38 = v59;
    sub_24368CAC4(v26, v59);
    if (v36(&v26[v35], 1, v30) != 1)
    {
      v53 = v68;
      v54 = v57;
      (*(v68 + 32))(v57, &v26[v35], v30);
      sub_24368CC94();
      v55 = sub_2436CBC78();
      v56 = *(v53 + 8);
      v56(v54, v67);
      v56(v38, v67);
      v32 = v66;
      v30 = v67;
      result = sub_243671AC8(v26, &qword_27ED7E4F0, &qword_2436CF910);
      if (v55)
      {
        return result;
      }

      goto LABEL_23;
    }

    (*(v68 + 8))(v38, v30);
  }

  sub_243671AC8(v26, &qword_27ED7EFB0, &qword_2436CF918);
LABEL_23:
  swift_beginAccess();
  sub_24368CB34(v32, v11 + v34);
  swift_endAccess();
  v39 = v60;
  sub_24368CAC4(v32, v60);
  if (v36(v39, 1, v30) == 1)
  {
    sub_243671AC8(v39, &qword_27ED7E4F0, &qword_2436CF910);
    swift_getKeyPath("( k;");
    swift_getKeyPath("\b k;");
    v69 = 0;
    v70 = 0xE000000000000000;

    sub_2436CAEE8();
    swift_getKeyPath(byte_2436CFA40);
    swift_getKeyPath(byte_2436CFA68);
    v69 = 0;
    v70 = 0xE000000000000000;

    return sub_2436CAEE8();
  }

  else
  {
    v40 = v68;
    v41 = v58;
    (*(v68 + 32))(v58, v39, v30);
    v42 = *(v11 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_dateFormatter);
    [v42 setDateStyle_];
    v43 = sub_2436CACD8();
    v44 = [v42 stringFromDate_];

    v45 = sub_2436CBD38();
    v47 = v46;

    swift_getKeyPath("( k;");
    swift_getKeyPath("\b k;");
    v69 = v45;
    v70 = v47;

    sub_2436CAEE8();
    [v42 setDateStyle_];
    v48 = sub_2436CACD8();
    v49 = [v42 stringFromDate_];

    v50 = sub_2436CBD38();
    v52 = v51;

    swift_getKeyPath(byte_2436CFA40);
    swift_getKeyPath(byte_2436CFA68);
    v69 = v50;
    v70 = v52;

    sub_2436CAEE8();
    return (*(v40 + 8))(v41, v30);
  }
}

uint64_t sub_24368C318()
{

  sub_243671AC8(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate, &qword_27ED7E4F0, &qword_2436CF910);
  v1 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__facePortal;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EFA8, &unk_2436D0940);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__name;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F760, &unk_2436CF900);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__deviceInfo;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__timestamp, v6);
  v7(v0 + OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel__timestampAccessibilityLabel, v6);

  return v0;
}

uint64_t sub_24368C4B0()
{
  sub_24368C318();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for EMSHistoryItemViewModel(uint64_t a1)
{
  result = qword_27ED7EF88;
  if (!qword_27ED7EF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24368C55C(uint64_t a1)
{
  sub_24368C71C(319, &qword_27ED7EF98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24368C71C(319, &qword_27ED7F720, type metadata accessor for EMSFacePortalViewModel, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_24368C780(319);
      if (v3 <= 0x3F)
      {
        sub_24367BAD8();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24368C71C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24368C780(uint64_t a1)
{
  if (!qword_27ED7EFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED7F730, &qword_2436CF880);
    v1 = sub_2436CAEF8();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED7EFA0);
    }
  }
}

uint64_t sub_24368C7F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSHistoryItemViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

uint64_t sub_24368C830@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_24368C840@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_2436CF968);
  swift_getKeyPath("x k;");
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_24368C8C0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436CF968);
  swift_getKeyPath("x k;");

  return sub_2436CAEE8();
}

double sub_24368C93C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath(byte_2436CF920);
  swift_getKeyPath(byte_2436CF948);
  sub_2436CAED8();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_24368C9C0(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436CF920);
  swift_getKeyPath(byte_2436CF948);

  return sub_2436CAEE8();
}

uint64_t sub_24368CAC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24368CB34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_24368CC94()
{
  result = qword_27ED7EFB8;
  if (!qword_27ED7EFB8)
  {
    sub_2436CAD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7EFB8);
  }

  return result;
}

uint64_t sub_24368CCEC(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        type metadata accessor for Dummy();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v2 = [objc_opt_self() bundleForClass_];
        v3 = 0xD00000000000001FLL;
        v4 = 0x80000002436E5A10;
        goto LABEL_14;
      }

      if (a1 == 2)
      {
        type metadata accessor for Dummy();
        v5 = swift_getObjCClassFromMetadata();
        v2 = [objc_opt_self() bundleForClass_];
        v3 = 0x65642E65626F6C67;
        v4 = 0xEF6C6C69662E6B73;
        goto LABEL_14;
      }
    }
  }

  else if (a1 <= 6)
  {
    if (a1 != 5)
    {
      type metadata accessor for Dummy();
      v6 = swift_getObjCClassFromMetadata();
      v2 = [objc_opt_self() bundleForClass_];
      v3 = 0x74616C75636C6163;
      v4 = 0xEF6C6C69662E726FLL;
      goto LABEL_14;
    }
  }

  else if (a1 == 9)
  {
    type metadata accessor for Dummy();
    v1 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = 0x6C2E6C69636E6570;
    v4 = 0xEB00000000656E69;
LABEL_14:

    return MEMORY[0x2821336E0](v3, v4, v2);
  }

  return sub_2436CB9B8();
}

uint64_t sub_24368CFD0()
{
  swift_getKeyPath(byte_2436CFB38);
  swift_getKeyPath(aH);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24368D064()
{
  v61 = type metadata accessor for EMSMockDataSource(0);
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 39) = 0;
  *(v0 + 48) = 500;
  type metadata accessor for EMSMockValues(0);
  swift_allocObject();
  *(v0 + 56) = sub_243685EE0();
  v1 = OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedUserInterfaceState;
  v2 = type metadata accessor for EMSUserInterfaceRecord(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_savedLocalAuthenticationTimestamp);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  v4 = OBJC_IVAR____TtC14ClassroomUIKit17EMSMockDataSource_mockDirectory;
  *(v0 + v4) = [objc_allocWithZone(_s20MockStudentDirectoryCMa()) init];
  if (qword_27ED7DEB0 != -1)
  {
    swift_once();
  }

  v5 = qword_27ED7EE80;
  v6 = word_27ED7EE88;
  v7 = HIBYTE(word_27ED7EE88);
  v8 = byte_27ED7EE8A;
  v9 = qword_27ED7EE90;
  v10 = *&qword_27ED7EE80;
  *(v0 + 16) = xmmword_27ED7EE70;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 41) = v7;
  *(v0 + 42) = v8;
  *(v0 + 48) = v9;
  v65[0] = xmmword_27ED7EE70;
  v65[1] = v10;
  v66 = v9;
  sub_2436870F8(v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80360, &qword_2436CFB30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2436CFA90;
  type metadata accessor for EMSConfigurationViewModel.Action(0);
  v12 = swift_allocObject();

  sub_2436CAD88();
  v13 = (v12 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v13 = 0x7465736552;
  v13[1] = 0xE500000000000000;
  v14 = (v12 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v14 = sub_24368E4D4;
  v14[1] = v0;
  *(v11 + 32) = v12;
  v15 = swift_allocObject();

  sub_2436CAD88();
  v16 = v15 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title;
  strcpy((v15 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title), "Slow Loading");
  *(v16 + 13) = 0;
  *(v16 + 14) = -5120;
  v17 = (v15 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v17 = sub_24368E4DC;
  v17[1] = v0;
  *(v11 + 40) = v15;
  v18 = swift_allocObject();

  sub_2436CAD88();
  v19 = (v18 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v19 = 0x7373616C43206F4ELL;
  v19[1] = 0xEA00000000007365;
  v20 = (v18 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v20 = sub_24368E504;
  v20[1] = v0;
  *(v11 + 48) = v18;
  v21 = swift_allocObject();

  sub_2436CAD88();
  v22 = (v21 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v22 = 0x7373616C432031;
  v22[1] = 0xE700000000000000;
  v23 = (v21 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v23 = sub_24368E524;
  v23[1] = v0;
  *(v11 + 56) = v21;
  v24 = swift_allocObject();

  sub_2436CAD88();
  v25 = (v24 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v25 = 0x657373616C432033;
  v25[1] = 0xE900000000000073;
  v26 = (v24 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v26 = sub_24368E544;
  v26[1] = v0;
  *(v11 + 64) = v24;
  v27 = swift_allocObject();

  sub_2436CAD88();
  v28 = (v27 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v28 = 0x73616C4320303035;
  v28[1] = 0xEB00000000736573;
  v29 = (v27 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v29 = sub_24368E564;
  v29[1] = v0;
  *(v11 + 72) = v27;
  v30 = swift_allocObject();

  sub_2436CAD88();
  v31 = (v30 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v31 = 0x6564757453206F4ELL;
  v31[1] = 0xEB0000000073746ELL;
  v32 = (v30 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v32 = sub_24368E584;
  v32[1] = v0;
  *(v11 + 80) = v30;
  v33 = swift_allocObject();

  sub_2436CAD88();
  v34 = (v33 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v34 = 0x6E65647574532031;
  v34[1] = 0xE900000000000074;
  v35 = (v33 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v35 = sub_24368E5A4;
  v35[1] = v0;
  *(v11 + 88) = v33;
  v36 = swift_allocObject();

  sub_2436CAD88();
  v37 = (v36 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v37 = 0x6E65647574532033;
  v37[1] = 0xEA00000000007374;
  v38 = (v36 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v38 = sub_24368E5C4;
  v38[1] = v0;
  *(v11 + 96) = v36;
  v39 = swift_allocObject();

  sub_2436CAD88();
  v40 = (v39 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v40 = 0x6F74736948206F4ELL;
  v40[1] = 0xEA00000000007972;
  v41 = (v39 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v41 = sub_24368E5E4;
  v41[1] = v0;
  *(v11 + 104) = v39;
  v42 = swift_allocObject();

  sub_2436CAD88();
  v43 = v42 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title;
  strcpy((v42 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title), "1 Item History");
  *(v43 + 15) = -18;
  v44 = (v42 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v44 = sub_24368E604;
  v44[1] = v0;
  *(v11 + 112) = v42;
  v45 = swift_allocObject();

  sub_2436CAD88();
  v46 = (v45 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v46 = 0xD00000000000001ALL;
  v46[1] = 0x80000002436E5B40;
  v47 = (v45 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v47 = sub_24368E624;
  v47[1] = v0;
  *(v11 + 120) = v45;
  v48 = swift_allocObject();

  sub_2436CAD88();
  v49 = (v48 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v49 = 0xD000000000000014;
  v49[1] = 0x80000002436E5B60;
  v50 = (v48 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v50 = sub_24368E62C;
  v50[1] = v0;
  *(v11 + 128) = v48;
  v51 = swift_allocObject();

  sub_2436CAD88();
  v52 = (v51 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v52 = 0xD000000000000019;
  v52[1] = 0x80000002436E5B80;
  v53 = (v51 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v53 = sub_24368E634;
  v53[1] = v0;
  *(v11 + 136) = v51;
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  sub_2436CAD88();
  v56 = (v55 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v56 = 0x206E6920776F6853;
  v56[1] = 0xEF7265766F706F50;
  v57 = (v55 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v57 = sub_24368E674;
  v57[1] = v54;
  *(v11 + 144) = v55;
  v63 = v61;
  v64 = &off_285675DE0;
  *&v62 = v0;
  type metadata accessor for EMSConfigurationViewModel(0);
  v58 = swift_allocObject();
  sub_2436CAD88();
  v59 = (v58 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_title);
  *v59 = 0x746144206B636F4DLL;
  v59[1] = 0xE900000000000061;
  sub_2436854AC(&v62, v58 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource);
  *(v58 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_actions) = v11;
  return v58;
}

double sub_24368D960()
{
  if (qword_27ED7DEB0 != -1)
  {
    swift_once();
  }

  v1[0] = xmmword_27ED7EE70;
  v1[1] = *&qword_27ED7EE80;
  v2 = qword_27ED7EE90;
  return sub_2436870F8(v1);
}

double sub_24368D9D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 41);
  v4 = *(a1 + 42);
  v5 = *(a1 + 48);
  v7 = a2;
  v8 = *(a1 + 24);
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  return sub_2436870F8(&v7);
}

double sub_24368DA34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v5 = *(a1 + 42);
  v6 = *(a1 + 48);
  v8[0] = *(a1 + 16);
  v8[1] = a2;
  v8[2] = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return sub_2436870F8(v8);
}

double sub_24368DA94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 41);
  v4 = *(a1 + 42);
  v5 = *(a1 + 48);
  v7 = *(a1 + 16);
  v8 = a2;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  return sub_2436870F8(&v7);
}

double sub_24368DAF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 41);
  v4 = *(a1 + 48);
  v5 = (*(a1 + 42) & 1) == 0;
  v7 = *(a1 + 16);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v5;
  v12 = v4;
  return sub_2436870F8(&v7);
}

double sub_24368DB58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 41);
  v3 = *(a1 + 42);
  v4 = *(a1 + 48);
  v5 = (*(a1 + 40) & 1) == 0;
  v7 = *(a1 + 16);
  v8 = v1;
  v9 = v5;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  return sub_2436870F8(&v7);
}

double sub_24368DBC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 42);
  v4 = *(a1 + 48);
  v5 = (*(a1 + 41) & 1) == 0;
  v7 = *(a1 + 16);
  v8 = v1;
  v9 = v2;
  v10 = v5;
  v11 = v3;
  v12 = v4;
  return sub_2436870F8(&v7);
}

uint64_t sub_24368DC48(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_24368DCB0()
{
  v0 = type metadata accessor for EMSProductionDataSource();
  v1 = [objc_allocWithZone(v0) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80360, &qword_2436CFB30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2436CFAA0;
  v3 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for EMSConfigurationViewModel.Action(0);
  v4 = swift_allocObject();
  sub_2436CAD88();
  v5 = (v4 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_title);
  *v5 = 0x206E6920776F6853;
  v5[1] = 0xEF7265766F706F50;
  v6 = (v4 + OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_handler);
  *v6 = sub_24368E6A8;
  v6[1] = v3;
  *(v2 + 32) = v4;
  v11 = v0;
  v12 = &off_2856753F0;
  *&v10 = v1;
  type metadata accessor for EMSConfigurationViewModel(0);
  v7 = swift_allocObject();
  sub_2436CAD88();
  v8 = v7 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_title;
  strcpy((v7 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_title), "ClassKit Data");
  *(v8 + 14) = -4864;
  sub_2436854AC(&v10, v7 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource);
  *(v7 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_actions) = v2;
  return v7;
}

uint64_t sub_24368DE80(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath(byte_2436CFB38);
    swift_getKeyPath(aH);
    return sub_2436CAEE8();
  }

  return result;
}

uint64_t sub_24368DF04()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___configurationViewModels;
  if (*(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___configurationViewModels))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___configurationViewModels);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80360, &qword_2436CFB30);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2436CFAB0;
    *(v2 + 32) = sub_24368D044();
    *(v2 + 40) = sub_24368DC28();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_24368DFA4()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel__navigationTitle;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel__instructions, v2);
  v4 = OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel__isShowingPopover;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for EMSConfigurationPickerViewModel(uint64_t a1)
{
  result = qword_27ED7EFF0;
  if (!qword_27ED7EFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24368E14C(uint64_t a1)
{
  sub_243686670(319, &qword_27ED80310, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_243686670(319, &qword_27ED7EB70, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24368E240()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  v9 = OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel__navigationTitle;
  strcpy(v14, "Configurations");
  HIBYTE(v14[1]) = -18;
  sub_2436CAE98();
  v10 = *(v6 + 32);
  v10(v0 + v9, v8, v5);
  v11 = OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel__instructions;
  v14[0] = 0xD000000000000017;
  v14[1] = 0x80000002436E5BA0;
  sub_2436CAE98();
  v10(v0 + v11, v8, v5);
  v12 = OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel__isShowingPopover;
  LOBYTE(v14[0]) = 0;
  sub_2436CAE98();
  (*(v2 + 32))(v0 + v12, v4, v1);
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___mockConfiguration) = 0;
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___productionConfiguration) = 0;
  *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSConfigurationPickerViewModel____lazy_storage___configurationViewModels) = 0;
  return v0;
}

uint64_t sub_24368E494@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSConfigurationPickerViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

uint64_t sub_24368E63C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24368E6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = sub_2436CB2E8();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CAC58();
  MEMORY[0x28223BE20](v7 - 8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F000, &qword_2436CFCD8);
  MEMORY[0x28223BE20](v50);
  v9 = (v49 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F008, &qword_2436CFCE0);
  v11 = *(v10 - 8);
  v53 = v10;
  v54 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F010, &qword_2436CFCE8);
  v15 = *(v14 - 8);
  v56 = v14;
  v57 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F018, &qword_2436CFCF0);
  v58 = *(v18 - 8);
  v59 = v18;
  MEMORY[0x28223BE20](v18);
  v51 = v49 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F020, &qword_2436CFCF8) - 8;
  MEMORY[0x28223BE20](v52);
  v55 = v49 - v20;
  sub_24368ED80(a1, a2, v9);
  swift_getKeyPath(aP_0);
  swift_getKeyPath(aP_1);
  v49[1] = a2;
  sub_2436CAED8();

  v21 = sub_2436CB688();
  v23 = v22;
  v25 = v24;
  v26 = sub_243691E24();
  v27 = v50;
  sub_2436CB738();
  sub_243679F68(v21, v23, v25 & 1);

  sub_243671AC8(v9, &qword_27ED7F000, &qword_2436CFCD8);
  swift_getKeyPath(byte_2436CFDB0);
  swift_getKeyPath(byte_2436CFDD8);
  sub_2436CAED8();

  v28 = v64;
  if (v65)
  {
    v29 = v65;
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  v64 = v28;
  v65 = v29;
  v68 = v27;
  v69 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_2436732AC();
  v32 = MEMORY[0x277D837D0];
  v33 = v53;
  sub_2436CB788();

  (*(v54 + 8))(v13, v33);
  v34 = v60;
  v35 = v61;
  v36 = v62;
  (*(v61 + 104))(v60, *MEMORY[0x277CDDDC0], v62);
  v64 = v33;
  v65 = v32;
  v66 = OpaqueTypeConformance2;
  v67 = v31;
  swift_getOpaqueTypeConformance2();
  v37 = v51;
  v38 = v56;
  sub_2436CB808();
  (*(v35 + 8))(v34, v36);
  (*(v57 + 8))(v17, v38);
  v39 = [objc_opt_self() systemBackgroundColor];
  v40 = sub_2436CB8E8();
  LOBYTE(v36) = sub_2436CB538();
  v41 = v55;
  (*(v58 + 32))(v55, v37, v59);
  v42 = v41 + *(v52 + 44);
  *v42 = v40;
  *(v42 + 8) = v36;
  type metadata accessor for EMSAlertViewModel(0);
  sub_243692F0C(&qword_27ED7F0F0, type metadata accessor for EMSAlertViewModel, &unk_2436D3890);

  v43 = sub_2436CB098();
  v45 = v44;
  v46 = v63;
  sub_24367A8C0(v41, v63, &qword_27ED7F020, &qword_2436CFCF8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F0F8, &qword_2436CFDF8);
  v48 = (v46 + *(result + 36));
  *v48 = v43;
  v48[1] = v45;
  return result;
}

uint64_t sub_24368ED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = a1;
  v54 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F100, &qword_2436CFE00);
  MEMORY[0x28223BE20](v45);
  v46 = &v37 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F0E8, &qword_2436CFDA8);
  MEMORY[0x28223BE20](v53);
  v47 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F108, &unk_2436D1470);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F068, &qword_2436CFD60);
  MEMORY[0x28223BE20](v49);
  v48 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F110, &qword_2436CFE08);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v38 = &v37 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F118, &qword_2436CFE10);
  MEMORY[0x28223BE20](v50);
  v52 = &v37 - v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F120, &qword_2436CFE18);
  MEMORY[0x28223BE20](v40);
  v14 = &v37 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F048, &qword_2436CFD50);
  MEMORY[0x28223BE20](v51);
  v39 = &v37 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F058, &qword_2436CFD58);
  v16 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F128, &qword_2436D1EF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v37 - v20);
  swift_getKeyPath(aP_2);
  swift_getKeyPath(aP_3);
  sub_2436CAED8();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v23 = v38;
      sub_2436924D8(v21, v38);
      sub_2436714A8(v23, v8, &qword_27ED7F110, &qword_2436CFE08);
      (*(v41 + 56))(v8, 0, 1, v42);
      v24 = v48;
      sub_24368F6A4(MEMORY[0x277D84F90], v8, v44, a2, v48);
      sub_243671AC8(v8, &qword_27ED7F108, &unk_2436D1470);
      sub_2436714A8(v24, v14, &qword_27ED7F068, &qword_2436CFD60);
      swift_storeEnumTagMultiPayload();
      sub_243671838(&qword_27ED7F050, &qword_27ED7F058, &qword_2436CFD58, MEMORY[0x277CDD7F8]);
      sub_243691FEC();
      v25 = v39;
      sub_2436CB398();
      sub_2436714A8(v25, v52, &qword_27ED7F048, &qword_2436CFD50);
      swift_storeEnumTagMultiPayload();
      sub_243691F34();
      sub_24369243C();
      sub_2436CB398();
      sub_243671AC8(v25, &qword_27ED7F048, &qword_2436CFD50);
      sub_243671AC8(v24, &qword_27ED7F068, &qword_2436CFD60);
      return sub_243671AC8(v23, &qword_27ED7F110, &qword_2436CFE08);
    }

    v31 = *v21;
    (*(v41 + 56))(v8, 1, 1, v42);
    v32 = v48;
    sub_24368F6A4(v31, v8, v44, a2, v48);

    sub_243671AC8(v8, &qword_27ED7F108, &unk_2436D1470);
    v28 = &qword_27ED7F068;
    v29 = &qword_2436CFD60;
    sub_2436714A8(v32, v46, &qword_27ED7F068, &qword_2436CFD60);
    swift_storeEnumTagMultiPayload();
    sub_243691FEC();
    v33 = v47;
    sub_2436CB398();
    sub_2436714A8(v33, v52, &qword_27ED7F0E8, &qword_2436CFDA8);
    swift_storeEnumTagMultiPayload();
    sub_243691F34();
    sub_24369243C();
    sub_2436CB398();
    sub_243671AC8(v33, &qword_27ED7F0E8, &qword_2436CFDA8);
    v30 = v32;
    return sub_243671AC8(v30, v28, v29);
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_243671AC8(v21, &qword_27ED7F128, &qword_2436D1EF0);
    swift_storeEnumTagMultiPayload();
    sub_243691FEC();
    v27 = v47;
    sub_2436CB398();
    v28 = &qword_27ED7F0E8;
    v29 = &qword_2436CFDA8;
    sub_2436714A8(v27, v52, &qword_27ED7F0E8, &qword_2436CFDA8);
    swift_storeEnumTagMultiPayload();
    sub_243691F34();
    sub_24369243C();
    sub_2436CB398();
    v30 = v27;
    return sub_243671AC8(v30, v28, v29);
  }

  sub_2436CB008();
  v34 = v16;
  v35 = v43;
  (*(v16 + 16))(v14, v18, v43);
  swift_storeEnumTagMultiPayload();
  sub_243671838(&qword_27ED7F050, &qword_27ED7F058, &qword_2436CFD58, MEMORY[0x277CDD7F8]);
  sub_243691FEC();
  v36 = v39;
  sub_2436CB398();
  sub_2436714A8(v36, v52, &qword_27ED7F048, &qword_2436CFD50);
  swift_storeEnumTagMultiPayload();
  sub_243691F34();
  sub_24369243C();
  sub_2436CB398();
  sub_243671AC8(v36, &qword_27ED7F048, &qword_2436CFD50);
  return (*(v34 + 8))(v18, v35);
}

uint64_t sub_24368F6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a2;
  v78 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F070, &qword_2436CFD68);
  v9 = *(v8 - 8);
  v74 = v8;
  v75 = v9;
  MEMORY[0x28223BE20](v8);
  v72 = &v62 - v10;
  v66 = sub_2436CB0E8();
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F098, &qword_2436CFD88);
  MEMORY[0x28223BE20](v64);
  v14 = &v62 - v13;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F088, &qword_2436CFD80);
  MEMORY[0x28223BE20](v65);
  v16 = &v62 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F078, &qword_2436CFD70);
  v73 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  KeyPath = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F130, &qword_2436CFE68);
  v76 = *(v18 - 8);
  v77 = v18;
  MEMORY[0x28223BE20](v18);
  v70 = &v62 - v19;
  type metadata accessor for EMSHistoryViewModel(0);
  sub_243692F0C(&qword_27ED7F138, type metadata accessor for EMSHistoryViewModel, &unk_2436D1F20);
  v71 = a3;
  sub_2436CB0A8();
  swift_getKeyPath(a0);
  sub_2436CB0B8();

  v81 = a1;
  v82 = a3;
  v83 = a4;
  v20 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F140, &qword_2436CFE98);
  sub_243671838(&qword_27ED7F148, &qword_27ED7F140, &qword_2436CFE98, MEMORY[0x277CE14C0]);
  sub_2436CB608();
  v21 = sub_2436CBB58();
  swift_getKeyPath(asc_2436CFEA0);
  swift_getKeyPath(byte_2436CFEC8);
  v63 = v20;
  sub_2436CAED8();

  v22 = v84;
  v23 = &v14[*(v64 + 36)];
  *v23 = v21;
  v23[1] = v22;
  sub_2436CB0D8();
  sub_243692358();
  v24 = v66;
  sub_2436CB878();
  (*(v67 + 8))(v12, v24);
  sub_243671AC8(v14, &qword_27ED7F098, &qword_2436CFD88);
  v25 = sub_2436CBB48();
  v27 = v26;
  v28 = v65;
  v29 = &v16[*(v65 + 36)];
  sub_2436A2ADC(v68, v29);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E760, &unk_2436CE270) + 36));
  *v30 = v25;
  v30[1] = v27;
  v31 = sub_2436CAFA8();
  v32 = sub_243692244();
  v33 = sub_243692F0C(&qword_27ED7F0C8, MEMORY[0x277CDD680], MEMORY[0x277CDD678]);
  v34 = v28;
  sub_2436CB848();
  sub_243671AC8(v16, &qword_27ED7F088, &qword_2436CFD80);
  swift_getKeyPath(byte_2436CFEE8);
  swift_getKeyPath(byte_2436CFF10);
  sub_2436CAED8();

  v35 = v84;
  v80 = v84;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F080, &qword_2436CFD78);
  v84 = v34;
  v85 = v31;
  v86 = v32;
  v87 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7EA48, &qword_2436CE5F0);
  v39 = sub_243671838(&qword_27ED7EA68, &qword_27ED7EA48, &qword_2436CE5F0, MEMORY[0x277CDDB60]);
  v84 = v38;
  v85 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v72;
  v42 = v69;
  v43 = KeyPath;
  sub_2436CB838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F150, &qword_2436CFF30);
  sub_2436CB1A8();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_2436CFC20;
  sub_2436CB198();
  v84 = v42;
  v85 = v36;
  v86 = OpaqueTypeConformance2;
  v87 = v40;
  v45 = swift_getOpaqueTypeConformance2();
  if (v35)
  {
    v46 = 1;
  }

  else
  {
    v46 = 2;
  }

  v47 = v70;
  v48 = v74;
  MEMORY[0x245D3BAB0](v46, v44, v74, v45);

  (*(v75 + 8))(v41, v48);
  (*(v73 + 8))(v43, v42);
  KeyPath = swift_getKeyPath(byte_2436CFF38);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F068, &qword_2436CFD60);
  v50 = v78;
  v51 = (v78 + *(v49 + 36));
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F0D8, &qword_2436CFDA0) + 28);
  sub_2436CBE68();
  v53 = v63;

  v54 = sub_2436CBE58();
  v55 = swift_allocObject();
  v56 = MEMORY[0x277D85700];
  v55[2] = v54;
  v55[3] = v56;
  v57 = v71;
  v55[4] = v71;
  v55[5] = v53;

  v58 = sub_2436CBE58();
  v59 = swift_allocObject();
  v59[2] = v58;
  v59[3] = v56;
  v59[4] = v57;
  v59[5] = v53;
  sub_2436CBAE8();
  sub_2436CBAA8();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F158, &qword_2436CFF68);
  (*(*(v60 - 8) + 56))(&v51[v52], 0, 1, v60);
  *v51 = KeyPath;
  return (*(v76 + 32))(v50, v47, v77);
}

uint64_t sub_2436900B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a2;
  v127 = a4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F168, &qword_2436CFFC0);
  MEMORY[0x28223BE20](v115);
  v95 = &v93 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F170, &qword_2436CFFC8);
  MEMORY[0x28223BE20](v108);
  v111 = &v93 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F178, &qword_2436CFFD0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v93 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F180, &qword_2436CFFD8);
  v120 = *(v12 - 8);
  v121 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v109 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v110 = &v93 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F188, &qword_2436CFFE0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v126 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v93 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F190, &qword_2436CFFE8);
  v124 = *(v21 - 8);
  v125 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v122 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v130 = &v93 - v24;
  v25 = sub_2436CB338();
  v106 = *(v25 - 8);
  v107 = v25;
  MEMORY[0x28223BE20](v25);
  v105 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2436CAC58();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F198, &qword_2436CFFF0);
  v103 = *(v31 - 8);
  v104 = v31;
  MEMORY[0x28223BE20](v31);
  v102 = &v93 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1A0, &qword_2436CFFF8);
  v100 = *(v33 - 8);
  v101 = v33;
  MEMORY[0x28223BE20](v33);
  v97 = &v93 - v34;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1A8, &qword_2436D0000);
  MEMORY[0x28223BE20](v98);
  v99 = &v93 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1B0, &qword_2436D0008);
  v116 = *(v36 - 8);
  v117 = v36;
  MEMORY[0x28223BE20](v36);
  v96 = &v93 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1B8, &qword_2436D0010);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v128 = &v93 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v129 = &v93 - v41;
  if (a1 >> 62)
  {
    v42 = sub_2436CC008();
  }

  else
  {
    v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v112 = v11;
  v113 = v9;
  v114 = v8;
  v123 = v20;
  v118 = v42;
  if (v42)
  {
    (*(v28 + 16))(v30, a3 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_headerTitle, v27);
    v43 = sub_2436CB688();
    v93 = a1;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    sub_2436CB598();
    v49 = sub_2436CB658();
    v51 = v50;
    v53 = v52;
    v94 = a3;
    v55 = v54;

    sub_243679F68(v44, v46, v48 & 1);

    sub_2436CBB48();
    sub_2436CB1B8();
    LOBYTE(v156) = v53 & 1;
    v56 = sub_2436CB538();
    LOBYTE(v136) = 0;
    *&v131[0] = v49;
    *(&v131[0] + 1) = v51;
    LOBYTE(v131[1]) = v53 & 1;
    *(&v131[1] + 1) = v55;
    v131[6] = v150;
    v131[7] = v151;
    v131[8] = v152;
    v131[2] = v146;
    v131[3] = v147;
    v131[4] = v148;
    v131[5] = v149;
    LOBYTE(v131[9]) = v56;
    *(&v131[9] + 8) = xmmword_2436CFC30;
    *(&v131[10] + 8) = xmmword_2436CFC40;
    BYTE8(v131[11]) = 0;
    sub_2436CB028();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1C0, &qword_2436D0018);
    v58 = sub_243692600();
    v59 = v102;
    sub_2436CB7B8();
    v132[8] = v131[8];
    v132[9] = v131[9];
    v132[10] = v131[10];
    *(&v132[10] + 9) = *(&v131[10] + 9);
    v132[4] = v131[4];
    v132[5] = v131[5];
    v132[6] = v131[6];
    v132[7] = v131[7];
    v132[0] = v131[0];
    v132[1] = v131[1];
    v132[2] = v131[2];
    v132[3] = v131[3];
    a3 = v94;
    sub_243671AC8(v132, &qword_27ED7F1C0, &qword_2436D0018);
    sub_2436CB028();
    *&v131[0] = v57;
    *(&v131[0] + 1) = v58;
    a1 = v93;
    swift_getOpaqueTypeConformance2();
    v60 = v97;
    v61 = v104;
    sub_2436CB758();
    (*(v103 + 8))(v59, v61);
    v62 = v99;
    (*(v100 + 32))(v99, v60, v101);
    *(v62 + *(v98 + 36)) = 0;
    v63 = v105;
    sub_2436CB328();
    sub_243692710();
    v64 = v96;
    sub_2436CB7D8();
    (*(v106 + 8))(v63, v107);
    sub_243671AC8(v62, &qword_27ED7F1A8, &qword_2436D0000);
    v65 = v129;
    sub_24367A8C0(v64, v129, &qword_27ED7F1B0, &qword_2436D0008);
    (*(v116 + 56))(v65, 0, 1, v117);
  }

  else
  {
    (*(v116 + 56))(v129, 1, 1, v117);
  }

  *&v132[0] = a1;
  v66 = swift_allocObject();
  *(v66 + 16) = v119;
  *(v66 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1E8, &qword_2436D2C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1F0, &qword_2436D0028);
  sub_243671838(&qword_27ED7F1F8, &qword_27ED7F1E8, &qword_2436D2C80, MEMORY[0x277D83980]);
  sub_243692888();
  sub_243692F0C(&qword_27ED7F268, type metadata accessor for EMSHistoryItemViewModel, &unk_2436CF888);
  sub_2436CBAC8();
  if (v118)
  {
    v118 = sub_2436CB358();
    v134 = 1;
    sub_24369182C(v132);
    v144 = v132[8];
    v145[0] = v132[9];
    *(v145 + 9) = *(&v132[9] + 9);
    v140 = v132[4];
    v141 = v132[5];
    v143 = v132[7];
    v142 = v132[6];
    v136 = v132[0];
    v137 = v132[1];
    v139 = v132[3];
    v138 = v132[2];
    v154 = v132[8];
    v155[0] = v132[9];
    *(v155 + 9) = *(&v132[9] + 9);
    v150 = v132[4];
    v151 = v132[5];
    v153 = v132[7];
    v152 = v132[6];
    v146 = v132[0];
    v147 = v132[1];
    v149 = v132[3];
    v148 = v132[2];
    sub_2436714A8(&v136, v131, &qword_27ED7F270, &qword_2436D0058);
    sub_243671AC8(&v146, &qword_27ED7F270, &qword_2436D0058);
    *(&v133[7] + 7) = v143;
    *(&v133[8] + 7) = v144;
    *(&v133[9] + 7) = v145[0];
    v133[10] = *(v145 + 9);
    *(&v133[3] + 7) = v139;
    *(&v133[4] + 7) = v140;
    *(&v133[5] + 7) = v141;
    *(&v133[6] + 7) = v142;
    *(v133 + 7) = v136;
    *(&v133[1] + 7) = v137;
    *(&v133[2] + 7) = v138;
    v67 = v134;
    sub_2436CBB48();
    sub_2436CB1B8();
    *&v135[55] = v159;
    *&v135[71] = v160;
    *&v135[87] = v161;
    *&v135[103] = v162;
    *&v135[7] = v156;
    *&v135[23] = v157;
    *&v135[39] = v158;
    *(&v131[8] + 1) = v133[7];
    *(&v131[9] + 1) = v133[8];
    *(&v131[10] + 1) = v133[9];
    *(&v131[11] + 1) = v133[10];
    *(&v131[4] + 1) = v133[3];
    *(&v131[5] + 1) = v133[4];
    *(&v131[6] + 1) = v133[5];
    *(&v131[7] + 1) = v133[6];
    *(&v131[1] + 1) = v133[0];
    *(&v131[2] + 1) = v133[1];
    *(&v131[3] + 1) = v133[2];
    *(&v131[16] + 1) = *&v135[64];
    *(&v131[17] + 1) = *&v135[80];
    *(&v131[18] + 1) = *&v135[96];
    *(&v131[12] + 1) = *v135;
    *(&v131[13] + 1) = *&v135[16];
    *(&v131[14] + 1) = *&v135[32];
    v131[0] = v118;
    LOBYTE(v131[1]) = v67;
    *&v131[19] = *(&v162 + 1);
    *(&v131[15] + 1) = *&v135[48];
    BYTE8(v131[19]) = 0;
    sub_2436CB028();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F278, &qword_2436D0060);
    v69 = sub_243692BB0();
    v70 = v112;
    sub_2436CB7B8();
    memcpy(v132, v131, 0x139uLL);
    sub_243671AC8(v132, &qword_27ED7F278, &qword_2436D0060);
    swift_getKeyPath("h\x1Bk;");
    swift_getKeyPath("H\x1Bk;");
    sub_2436CAED8();

    v71 = v113;
    v72 = *(v113 + 16);
    if (LOBYTE(v131[0]) == 1)
    {
      v73 = v114;
      v72(v111, v70, v114);
      swift_storeEnumTagMultiPayload();
      *&v131[0] = v68;
      *(&v131[0] + 1) = v69;
      swift_getOpaqueTypeConformance2();
      sub_243692D28();
      v74 = v109;
      sub_2436CB398();
    }

    else
    {
      v76 = v95;
      v73 = v114;
      v72(v95, v70, v114);
      v77 = sub_2436CBB48();
      v78 = (v76 + *(v115 + 36));
      *v78 = v77;
      v78[1] = v79;
      sub_2436714A8(v76, v111, &qword_27ED7F168, &qword_2436CFFC0);
      swift_storeEnumTagMultiPayload();
      *&v131[0] = v68;
      *(&v131[0] + 1) = v69;
      swift_getOpaqueTypeConformance2();
      sub_243692D28();
      v74 = v109;
      sub_2436CB398();
      sub_243671AC8(v76, &qword_27ED7F168, &qword_2436CFFC0);
    }

    v75 = v123;
    v80 = v74;
    v81 = v110;
    sub_24367A8C0(v80, v110, &qword_27ED7F180, &qword_2436CFFD8);
    (*(v71 + 8))(v70, v73);
    sub_24367A8C0(v81, v75, &qword_27ED7F180, &qword_2436CFFD8);
    (*(v120 + 56))(v75, 0, 1, v121);
  }

  else
  {
    v75 = v123;
    (*(v120 + 56))(v123, 1, 1, v121);
  }

  v82 = v128;
  sub_2436714A8(v129, v128, &qword_27ED7F1B8, &qword_2436D0010);
  v84 = v124;
  v83 = v125;
  v85 = *(v124 + 16);
  v86 = v122;
  v85(v122, v130, v125);
  v87 = v126;
  sub_2436714A8(v75, v126, &qword_27ED7F188, &qword_2436CFFE0);
  v88 = v127;
  sub_2436714A8(v82, v127, &qword_27ED7F1B8, &qword_2436D0010);
  v89 = v75;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F2D8, &qword_2436D00D0);
  v85((v88 + *(v90 + 48)), v86, v83);
  sub_2436714A8(v87, v88 + *(v90 + 64), &qword_27ED7F188, &qword_2436CFFE0);
  sub_243671AC8(v89, &qword_27ED7F188, &qword_2436CFFE0);
  v91 = *(v84 + 8);
  v91(v130, v83);
  sub_243671AC8(v129, &qword_27ED7F1B8, &qword_2436D0010);
  sub_243671AC8(v87, &qword_27ED7F188, &qword_2436CFFE0);
  v91(v86, v83);
  return sub_243671AC8(v128, &qword_27ED7F1B8, &qword_2436D0010);
}

uint64_t sub_24369124C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v29 = sub_2436CB4A8();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F208, &qword_2436D0030);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *a1;
  type metadata accessor for EMSHistoryItemViewModel(0);
  sub_243692F0C(&qword_27ED7F2F0, type metadata accessor for EMSHistoryItemViewModel, &unk_2436CF8C0);

  v14 = sub_2436CB098();
  v16 = v15;
  v17 = sub_2436CB348();
  v33 = v14;
  v34 = v16;
  v35 = v17;
  v36 = sub_2436915AC;
  v37 = 0;
  v30 = v13;
  v31 = a2;
  v32 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F210, &qword_2436D0038);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F218, &qword_2436D0040);
  v20 = sub_2436929EC();
  v21 = sub_243692ACC();
  sub_2436CB708();

  sub_2436CB498();
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_2436CB7E8();
  (*(v27 + 8))(v8, v29);
  (*(v10 + 8))(v12, v9);
  v23 = [objc_opt_self() systemBackgroundColor];
  v33 = sub_2436CB8E8();
  sub_243692F60();
  v33 = sub_2436CB9A8();
  v24 = sub_2436CBA98();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F1F0, &qword_2436D0028);
  *(v22 + *(result + 36)) = v24;
  return result;
}

uint64_t sub_2436915D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;

  sub_2436CBA38();

  v8 = sub_2436CB918();
  KeyPath = swift_getKeyPath(byte_2436D0178);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F218, &qword_2436D0040);
  v11 = (a3 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  return result;
}

uint64_t sub_2436916EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_2436744F8(*(a3 + 16) + 16, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_0(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80370, &qword_2436D01A8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2436CFC20;
    v9 = *(v5 + 24);
    *(v8 + 32) = *(v5 + 16);
    *(v8 + 40) = v9;
    v10 = *(v7 + 56);

    v10(v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  return result;
}

uint64_t sub_2436917EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436CB9B8();
  *a1 = result;
  return result;
}

uint64_t sub_24369182C@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_2436D00D8);
  swift_getKeyPath(byte_2436D0100);
  sub_2436CAED8();

  sub_2436732AC();
  v3 = sub_2436CB698();
  v5 = v4;
  v7 = v6;
  sub_2436CB5B8();
  v8 = sub_2436CB628();
  v46 = v9;
  v47 = v8;
  v11 = v10;
  v48 = v12;
  sub_243679F68(v3, v5, v7 & 1);

  v45 = sub_2436CB548();
  sub_2436CAF88();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v44 = v11 & 1;
  LOBYTE(v65) = v11 & 1;
  LOBYTE(v63[0]) = 0;
  swift_getKeyPath(byte_2436D0120);
  swift_getKeyPath(byte_2436D0148);
  sub_2436CAED8();

  v21 = v66;
  if (v66)
  {
    v22 = sub_2436CB698();
    v24 = v23;
    v26 = v25;
    sub_2436CB5E8();
    v27 = sub_2436CB658();
    v29 = v28;
    v31 = v30;
    v33 = v32;

    sub_243679F68(v22, v24, v26 & 1);

    LOBYTE(v22) = sub_2436CB548();
    sub_2436CAF88();
    v38 = v33;
    v39 = v29;
    v40 = v27;
    LOBYTE(v65) = v31 & 1;
    LOBYTE(v63[0]) = 0;
    v21 = v31 & 1;
    v41 = v22;
  }

  else
  {
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v41 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  *&v55 = v47;
  *(&v55 + 1) = v46;
  LOBYTE(v56) = v44;
  *(&v56 + 1) = v78[0];
  DWORD1(v56) = *(v78 + 3);
  *(&v56 + 1) = v48;
  LOBYTE(v57) = v45;
  *(&v57 + 1) = *v77;
  DWORD1(v57) = *&v77[3];
  *(&v57 + 1) = v14;
  *v58 = v16;
  *&v58[8] = v18;
  *&v58[16] = v20;
  v58[24] = 0;
  *&v50[9] = *&v58[9];
  v49 = v57;
  *v50 = *v58;
  *&v59 = v40;
  *(&v59 + 1) = v39;
  *&v60 = v21;
  *(&v60 + 1) = v38;
  *&v61 = v41;
  *(&v61 + 1) = v34;
  *v62 = v35;
  *&v62[8] = v36;
  *&v62[16] = v37;
  v62[24] = 0;
  *&v54[9] = *&v62[9];
  v53 = v61;
  *v54 = *v62;
  v51 = v59;
  v52 = v60;
  v42 = v56;
  *a2 = v55;
  *(a2 + 16) = v42;
  *(a2 + 64) = *&v50[16];
  *(a2 + 80) = v51;
  *(a2 + 32) = v49;
  *(a2 + 48) = *v50;
  *(a2 + 128) = *v54;
  *(a2 + 144) = *&v54[16];
  *(a2 + 96) = v52;
  *(a2 + 112) = v53;
  *(a2 + 160) = 0x4024000000000000;
  *(a2 + 168) = 0;
  v63[0] = v40;
  v63[1] = v39;
  v63[2] = v21;
  v63[3] = v38;
  v63[4] = v41;
  v63[5] = v34;
  v63[6] = v35;
  v63[7] = v36;
  v63[8] = v37;
  v64 = 0;
  sub_2436714A8(&v55, &v65, &qword_27ED7F2E0, &qword_2436D0168);
  sub_2436714A8(&v59, &v65, &qword_27ED7F2E8, &qword_2436D0170);
  sub_243671AC8(v63, &qword_27ED7F2E8, &qword_2436D0170);
  v65 = v47;
  v66 = v46;
  v67 = v44;
  *v68 = v78[0];
  *&v68[3] = *(v78 + 3);
  v69 = v48;
  v70 = v45;
  *v71 = *v77;
  *&v71[3] = *&v77[3];
  v72 = v14;
  v73 = v16;
  v74 = v18;
  v75 = v20;
  v76 = 0;
  return sub_243671AC8(&v65, &qword_27ED7F2E0, &qword_2436D0168);
}

uint64_t sub_243691C20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F160, &qword_2436CFFB8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2436714A8(a1, &v5 - v3, &qword_27ED7F160, &qword_2436CFFB8);
  return sub_2436CB278();
}

uint64_t sub_243691CC8@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(asc_2436CFF70);
  swift_getKeyPath(asc_2436CFF98);
  sub_2436CAED8();

  v3 = sub_2436CBAE8();
  v4 = MEMORY[0x277CDF0D0];
  if (!v6)
  {
    v4 = MEMORY[0x277CDF0D8];
  }

  return (*(*(v3 - 8) + 104))(a2, *v4, v3);
}

uint64_t sub_243691D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_2436CBAD8();
  swift_getKeyPath(asc_2436CFF70);
  swift_getKeyPath(asc_2436CFF98);
  return sub_2436CAEE8();
}

unint64_t sub_243691E24()
{
  result = qword_27ED7F028;
  if (!qword_27ED7F028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F000, &qword_2436CFCD8);
    sub_243691EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F028);
  }

  return result;
}

unint64_t sub_243691EA8()
{
  result = qword_27ED7F030;
  if (!qword_27ED7F030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F038, &qword_2436CFD48);
    sub_243691F34();
    sub_24369243C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F030);
  }

  return result;
}

unint64_t sub_243691F34()
{
  result = qword_27ED7F040;
  if (!qword_27ED7F040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F048, &qword_2436CFD50);
    sub_243671838(&qword_27ED7F050, &qword_27ED7F058, &qword_2436CFD58, MEMORY[0x277CDD7F8]);
    sub_243691FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F040);
  }

  return result;
}

unint64_t sub_243691FEC()
{
  result = qword_27ED7F060;
  if (!qword_27ED7F060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F068, &qword_2436CFD60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F070, &qword_2436CFD68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F078, &qword_2436CFD70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F080, &qword_2436CFD78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F088, &qword_2436CFD80);
    sub_2436CAFA8();
    sub_243692244();
    sub_243692F0C(&qword_27ED7F0C8, MEMORY[0x277CDD680], MEMORY[0x277CDD678]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7EA48, &qword_2436CE5F0);
    sub_243671838(&qword_27ED7EA68, &qword_27ED7EA48, &qword_2436CE5F0, MEMORY[0x277CDDB60]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7F0D0, &qword_27ED7F0D8, &qword_2436CFDA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F060);
  }

  return result;
}

unint64_t sub_243692244()
{
  result = qword_27ED7F090;
  if (!qword_27ED7F090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F088, &qword_2436CFD80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F098, &qword_2436CFD88);
    sub_2436CB0E8();
    sub_243692358();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7E758, &qword_27ED7E760, &unk_2436CE270, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F090);
  }

  return result;
}

unint64_t sub_243692358()
{
  result = qword_27ED7F0A0;
  if (!qword_27ED7F0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F098, &qword_2436CFD88);
    sub_243671838(&qword_27ED7F0A8, &qword_27ED7F0B0, &qword_2436CFD90, MEMORY[0x277CDE5A0]);
    sub_243671838(&qword_27ED7F0B8, &qword_27ED7F0C0, &qword_2436CFD98, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F0A0);
  }

  return result;
}

unint64_t sub_24369243C()
{
  result = qword_27ED7F0E0;
  if (!qword_27ED7F0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F0E8, &qword_2436CFDA8);
    sub_243691FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F0E0);
  }

  return result;
}

uint64_t sub_2436924D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F110, &qword_2436CFE08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v2, 48, 7);
}

unint64_t sub_243692600()
{
  result = qword_27ED7F1C8;
  if (!qword_27ED7F1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F1C0, &qword_2436D0018);
    sub_24369268C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F1C8);
  }

  return result;
}

unint64_t sub_24369268C()
{
  result = qword_27ED7F1D0;
  if (!qword_27ED7F1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F1D8, &qword_2436D0020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F1D0);
  }

  return result;
}

unint64_t sub_243692710()
{
  result = qword_27ED7F1E0;
  if (!qword_27ED7F1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F1A8, &qword_2436D0000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F198, &qword_2436CFFF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F1C0, &qword_2436D0018);
    sub_243692600();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7EA18, &qword_27ED7EA20, &qword_2436D12E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F1E0);
  }

  return result;
}

uint64_t sub_243692848()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_243692888()
{
  result = qword_27ED7F200;
  if (!qword_27ED7F200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F1F0, &qword_2436D0028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F208, &qword_2436D0030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F210, &qword_2436D0038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F218, &qword_2436D0040);
    sub_2436929EC();
    sub_243692ACC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7F258, &qword_27ED7F260, &qword_2436D0050, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F200);
  }

  return result;
}

unint64_t sub_2436929EC()
{
  result = qword_27ED7F220;
  if (!qword_27ED7F220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F210, &qword_2436D0038);
    sub_243692A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F220);
  }

  return result;
}

unint64_t sub_243692A78()
{
  result = qword_27ED7F228;
  if (!qword_27ED7F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F228);
  }

  return result;
}

unint64_t sub_243692ACC()
{
  result = qword_27ED7F230;
  if (!qword_27ED7F230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F218, &qword_2436D0040);
    sub_243671838(&qword_27ED7F238, &qword_27ED7F240, &qword_2436D0048, MEMORY[0x277CDF028]);
    sub_243671838(&qword_27ED7F248, &qword_27ED7F250, &qword_2436D2460, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F230);
  }

  return result;
}

unint64_t sub_243692BB0()
{
  result = qword_27ED7F280;
  if (!qword_27ED7F280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F278, &qword_2436D0060);
    sub_243692C68();
    sub_243671838(&qword_27ED7EA18, &qword_27ED7EA20, &qword_2436D12E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F280);
  }

  return result;
}

unint64_t sub_243692C68()
{
  result = qword_27ED7F288;
  if (!qword_27ED7F288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F290, &qword_2436D0068);
    sub_243671838(&qword_27ED7F298, &qword_27ED7F2A0, &qword_2436D0070, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F288);
  }

  return result;
}

unint64_t sub_243692D28()
{
  result = qword_27ED7F2A8;
  if (!qword_27ED7F2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F168, &qword_2436CFFC0);
    sub_243692DE0();
    sub_243671838(&qword_27ED7F2C8, &qword_27ED7F2D0, &qword_2436D00C8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F2A8);
  }

  return result;
}

unint64_t sub_243692DE0()
{
  result = qword_27ED7F2B0;
  if (!qword_27ED7F2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F2B8, &qword_2436D00C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F278, &qword_2436D0060);
    sub_243692BB0();
    swift_getOpaqueTypeConformance2();
    sub_243692EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F2B0);
  }

  return result;
}

unint64_t sub_243692EA8()
{
  result = qword_27ED7F2C0;
  if (!qword_27ED7F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F2C0);
  }

  return result;
}

uint64_t sub_243692F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243692F60()
{
  result = qword_27ED7F2F8;
  if (!qword_27ED7F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F2F8);
  }

  return result;
}

uint64_t sub_243692FB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243692FEC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243693038@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436CB2C8();
  *a1 = result;
  return result;
}

unint64_t sub_243693094()
{
  result = qword_27ED7F300;
  if (!qword_27ED7F300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F0F8, &qword_2436CFDF8);
    sub_243693120();
    sub_2436932A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F300);
  }

  return result;
}

unint64_t sub_243693120()
{
  result = qword_27ED7F308;
  if (!qword_27ED7F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F020, &qword_2436CFCF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F010, &qword_2436CFCE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F008, &qword_2436CFCE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F000, &qword_2436CFCD8);
    sub_243691E24();
    swift_getOpaqueTypeConformance2();
    sub_2436732AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7E7F0, &qword_27ED7E7F8, &qword_2436CE2B8, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F308);
  }

  return result;
}

unint64_t sub_2436932A8()
{
  result = qword_27ED7F310;
  if (!qword_27ED7F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F310);
  }

  return result;
}

uint64_t sub_243693318(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_243693374(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2436933F8(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  if (!(a2 >> 62))
  {
    v2 = a2;
  }

  if ((a2 >> 62) <= 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  }

  return MEMORY[0x245D3C5D0](v3);
}

uint64_t sub_24369343C()
{
  v1 = *v0;
  sub_2436CC368();
  sub_2436933F8(v3, v1);
  return sub_2436CC398();
}

uint64_t sub_24369348C(uint64_t a1)
{
  v2 = *v1;
  sub_2436CC368();
  sub_2436933F8(v4, v2);
  return sub_2436CC398();
}

unint64_t sub_2436934E0()
{
  result = qword_27ED7F318;
  if (!qword_27ED7F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F318);
  }

  return result;
}

uint64_t sub_243693534(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 62;
  v3 = a2 >> 62;
  v4 = a2 ^ a1;
  v5 = ((a2 ^ a1) & 0x3FFFFFFFFFFFFFFFLL) == 0;
  if (a2 >> 62 != 2)
  {
    v5 = 0;
  }

  v6 = (v4 & 0x3FFFFFFFFFFFFFFFLL) == 0;
  if (a2 >> 62 != 3)
  {
    v6 = 0;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1 == a2;
  }

  v8 = v7;
  v9 = (v4 & 0x3FFFFFFFFFFFFFFFLL) == 0;
  v10 = v3 == 1 && v9;
  if (!v2)
  {
    v10 = v8;
  }

  if (v2 <= 1)
  {
    return v10;
  }

  else
  {
    return v5;
  }
}

void *sub_243693598@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F320, &qword_2436D02D0);
  MEMORY[0x28223BE20](v36);
  v38 = (v35 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F328, &qword_2436D02D8);
  MEMORY[0x28223BE20](v5);
  v7 = v35 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E690, &qword_2436CDFC0);
  MEMORY[0x28223BE20](v37);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FEC0, &unk_2436D02E0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v35 - v14;
  v16 = type metadata accessor for EMSStudentPickerView(0);
  MEMORY[0x28223BE20](v16);
  v18 = (v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v19 == 2)
    {
      type metadata accessor for EMSHistoryViewModel(0);
      sub_243693E2C(&qword_27ED7F138, type metadata accessor for EMSHistoryViewModel, &unk_2436D1F20);

      *&v46 = sub_2436CB098();
      *(&v46 + 1) = v24;
      v47 = 0;
      sub_2436753C4();
      sub_243675418();

      sub_2436CB398();
      v25 = v41;
      v26 = v38;
      *v38 = v40;
      *(v26 + 16) = v25;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6B0, &qword_2436CDFC8);
      sub_243675228();
      sub_243675338();
      sub_2436CB398();
    }

    else
    {
      *&v46 = a1 & 0x3FFFFFFFFFFFFFFFLL;
      *(&v46 + 1) = 0;
      v47 = 1;
      sub_2436753C4();
      sub_243675418();

      sub_2436CB398();
      v33 = v41;
      v34 = v38;
      *v38 = v40;
      *(v34 + 16) = v33;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6B0, &qword_2436CDFC8);
      sub_243675228();
      sub_243675338();
      return sub_2436CB398();
    }
  }

  else
  {
    v35[0] = v9;
    v35[1] = a2;
    if (v19)
    {
      type metadata accessor for EMSStudentPickerViewModel(0);
      sub_243693E2C(&qword_27ED7F330, type metadata accessor for EMSStudentPickerViewModel, &unk_2436D1AF0);

      *v18 = sub_2436CB098();
      v18[1] = v27;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
      (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
      sub_2436714A8(v15, v13, &unk_27ED7FEC0, &unk_2436D02E0);
      sub_2436CB9E8();
      sub_243671AC8(v15, &unk_27ED7FEC0, &unk_2436D02E0);
      v29 = v18 + *(v16 + 24);
      v46 = 0uLL;
      v47 = -1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6F0, &qword_2436CE0C0);
      sub_2436CB9E8();
      v30 = v41;
      v31 = *(&v41 + 1);
      *v29 = v40;
      v29[16] = v30;
      *(v29 + 3) = v31;
      sub_243693E74(v18, v7);
      swift_storeEnumTagMultiPayload();
      sub_243693E2C(&qword_27ED7E698, type metadata accessor for EMSStudentPickerView, &unk_2436D1008);
      sub_2436752E4();
      v32 = v35[0];
      sub_2436CB398();
      sub_2436714A8(v32, v38, &qword_27ED7E690, &qword_2436CDFC0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6B0, &qword_2436CDFC8);
      sub_243675228();
      sub_243675338();
      sub_2436CB398();
      sub_243671AC8(v32, &qword_27ED7E690, &qword_2436CDFC0);
      return sub_243693ED8(v18);
    }

    else
    {
      sub_243675744(a1);
      sub_24367954C(&v40);
      v20 = v41;
      v48[0] = v40;
      v46 = v41;
      v47 = v42;
      v21 = v43;
      v44 = v43;
      v45 = *(&v42 + 1);
      *v7 = v40;
      *(v7 + 1) = v20;
      *(v7 + 2) = v42;
      *(v7 + 6) = v21;
      swift_storeEnumTagMultiPayload();
      sub_2436714A8(v48, v39, &qword_27ED7E810, &qword_2436CE310);
      sub_2436714A8(&v46, v39, &qword_27ED7E6F0, &qword_2436CE0C0);
      sub_2436714A8(&v45, v39, &qword_27ED7E818, &qword_2436CE318);
      sub_2436714A8(&v44, v39, &qword_27ED7E820, &unk_2436CE320);
      sub_243693E2C(&qword_27ED7E698, type metadata accessor for EMSStudentPickerView, &unk_2436D1008);
      sub_2436752E4();
      v22 = v35[0];
      sub_2436CB398();
      sub_2436714A8(v22, v38, &qword_27ED7E690, &qword_2436CDFC0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6B0, &qword_2436CDFC8);
      sub_243675228();
      sub_243675338();
      sub_2436CB398();
      sub_243671AC8(v48, &qword_27ED7E810, &qword_2436CE310);
      sub_243671AC8(&v46, &qword_27ED7E6F0, &qword_2436CE0C0);
      sub_243671AC8(&v45, &qword_27ED7E818, &qword_2436CE318);
      sub_243671AC8(&v44, &qword_27ED7E820, &unk_2436CE320);
      return sub_243671AC8(v22, &qword_27ED7E690, &qword_2436CDFC0);
    }
  }
}

uint64_t sub_243693E2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243693E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EMSStudentPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243693ED8(uint64_t a1)
{
  v2 = type metadata accessor for EMSStudentPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243693F58()
{
  swift_getKeyPath(asc_2436D0450);
  swift_getKeyPath(asc_2436D0478);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_243693FCC()
{
  swift_getKeyPath(byte_2436D0408);
  swift_getKeyPath(aX);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_243694044()
{

  v1 = OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel__isDisabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel__type;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F368, &unk_2436D04A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for CRKUIButtonViewModel(uint64_t a1)
{
  result = qword_27ED7F350;
  if (!qword_27ED7F350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436941A8(uint64_t a1)
{
  sub_243686670(319, &qword_27ED7EB70, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_243686670(319, &qword_27ED7F360, &type metadata for CRKUIButtonViewModel.ButtonType);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2436942B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_243694304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_24369438C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CRKUIButtonViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

uint64_t sub_2436943DC()
{
  v1 = OBJC_IVAR____TtCC14ClassroomUIKit25EMSConfigurationViewModel6Action_id;
  v2 = sub_2436CAD98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2436944AC()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_id;
  v2 = sub_2436CAD98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2436945A4(uint64_t a1)
{
  result = sub_2436CAD98();
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

uint64_t sub_24369467C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2436946B4(uint64_t a1)
{
  result = sub_2436CAD98();
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

uint64_t sub_2436947A4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSConfigurationViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

uint64_t sub_2436947F0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_2436CAD98();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_243694868()
{
  sub_2436CC368();
  sub_2436CAD98();
  sub_243694A90(&qword_27ED7F390, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2436CBC58();
  return sub_2436CC398();
}

uint64_t sub_243694908(uint64_t a1)
{
  sub_2436CAD98();
  sub_243694A90(&qword_27ED7F390, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_2436CBC58();
}

uint64_t sub_243694990(uint64_t a1)
{
  sub_2436CC368();
  sub_2436CAD98();
  sub_243694A90(&qword_27ED7F390, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2436CBC58();
  return sub_2436CC398();
}

uint64_t sub_243694A90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243694ADC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_2436CBDD8();
  }

  else
  {
    return 0;
  }
}

id sub_243694C78(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_user;
  if (qword_27ED7DEC8 != -1)
  {
    swift_once();
  }

  v5 = qword_27ED83B08;
  v6 = _s8MockUserCMa();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_mockNameComponents] = v5;
  v7[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isFederated] = 0;
  v7[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isAccountLockedDueToFailedLoginAttempts] = 0;
  v7[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isAccountATOLocked] = 0;
  v26.receiver = v7;
  v26.super_class = v6;
  v8 = v5;
  *&v2[v4] = objc_msgSendSuper2(&v26, sel_init);
  v9 = OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_courses;
  *&v2[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_courses] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_allTrustedUserCertificates] = MEMORY[0x277D84FA0];
  v10 = &v2[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_specification];
  v11 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v11;
  *(v10 + 4) = *(a1 + 32);
  v12 = _s16MockOrganizationCMa(0);
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource16MockOrganization_uuid;
  if (qword_27ED7DEB8 != -1)
  {
    swift_once();
  }

  v15 = sub_2436CAD98();
  v16 = __swift_project_value_buffer(v15, qword_27ED83AD0);
  (*(*(v15 - 8) + 16))(&v13[v14], v16, v15);
  if (*(a1 + 25))
  {
    v17 = 0xD0000000000001BDLL;
  }

  else
  {
    v17 = 0;
  }

  if (*(a1 + 25))
  {
    v18 = 0x80000002436E55E0;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v24 = 0xD000000000000021;
  v25 = 0x80000002436E6680;
  MEMORY[0x245D3C000](v17, v18);

  v19 = &v13[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource16MockOrganization_name];
  *v19 = 0xD000000000000021;
  *(v19 + 1) = 0x80000002436E6680;
  v23.receiver = v13;
  v23.super_class = v12;
  *&v2[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_organization] = objc_msgSendSuper2(&v23, sel_init);
  sub_2436989FC(a1);
  *&v2[v9] = v20;

  v22.receiver = v2;
  v22.super_class = _s10MockRosterCMa();
  return objc_msgSendSuper2(&v22, sel_init);
}

id sub_243695060(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_243695140(uint64_t a1)
{
  result = sub_2436CAD98();
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

id sub_2436951D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_givenName];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_phoneticGivenName];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_familyName];
  *v14 = a3;
  *(v14 + 1) = a4;
  v15 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_phoneticFamilyName];
  *v15 = a3;
  *(v15 + 1) = a4;
  v52 = a1;
  v53 = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  MEMORY[0x245D3C000](32, 0xE100000000000000);
  MEMORY[0x245D3C000](a3, a4);
  v16 = v52;
  v17 = v53;
  v18 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_fullName];
  *v18 = v52;
  v18[1] = v17;
  v19 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_phoneticFullName];
  *v19 = v16;
  v19[1] = v17;
  v52 = 0;
  v53 = 0xE000000000000000;
  swift_bridgeObjectRetain_n();
  result = sub_243694ADC(a1, a2);
  if (!v21)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2436CBC68();

  result = sub_243694ADC(a3, a4);
  if (!v22)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v49 = a5;
  sub_2436CBC68();

  v23 = v53;
  v24 = &v5[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_monogram];
  *v24 = v52;
  v24[1] = v23;
  v52 = a1;
  v53 = a2;

  MEMORY[0x245D3C000](32, 0xE100000000000000);
  MEMORY[0x245D3C000](a3, a4);
  v25 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v26 = sub_2436CBD08();

  v27 = [v25 initWithString_];

  v28 = v27;
  result = [v28 string];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v29 = result;

  v30 = sub_2436CBD08();
  v48 = [v29 rangeOfString_];
  v32 = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F610, &unk_2436D0788);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2436CFC20;
  v34 = *MEMORY[0x277CCA5D8];
  *(inited + 32) = *MEMORY[0x277CCA5D8];
  v35 = sub_2436CBD38();
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v35;
  *(inited + 48) = v36;
  v37 = v34;
  sub_24367109C(inited);
  swift_setDeallocating();
  sub_243699424(inited + 32);
  type metadata accessor for Key(0);
  sub_24369948C(&qword_27ED7F620, type metadata accessor for Key, &unk_2436CD870);
  v38 = sub_2436CBC28();

  [v28 addAttributes:v38 range:{v48, v32}];

  [v28 copy];
  sub_2436CBFB8();
  swift_unknownObjectRelease();
  sub_243671B28(0, &qword_27ED7F628, 0x277CCA898);
  v39 = swift_dynamicCast();
  v40 = v51;
  if (!v39)
  {
    v40 = 0;
  }

  *&v6[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_attributedFullName] = v40;
  MEMORY[0x245D3C000](46, 0xE100000000000000);
  MEMORY[0x245D3C000](a3, a4);

  MEMORY[0x245D3C000](46, 0xE100000000000000);
  v51 = v49;
  v41 = sub_2436CC2B8();
  MEMORY[0x245D3C000](v41);

  v42 = sub_2436CBD78();
  v44 = v43;

  v45 = &v6[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_username];
  *v45 = v42;
  v45[1] = v44;

  sub_2436CC078();

  MEMORY[0x245D3C000](0xD000000000000013, 0x80000002436E66B0);
  v46 = &v6[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_appleID];
  *v46 = v42;
  v46[1] = v44;
  v52 = v42;
  v53 = v44;
  MEMORY[0x245D3C000](0x6669746E6564695FLL, 0xEB00000000726569);

  v47 = &v6[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource18MockNameComponents_identifier];
  *v47 = v42;
  v47[1] = v44;
  v50.receiver = v6;
  v50.super_class = _s18MockNameComponentsCMa();
  return objc_msgSendSuper2(&v50, sel_init);
}

uint64_t sub_2436959F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_243695AF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v8 = (a3)(0, a2);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *a4;
  swift_beginAccess();
  v13 = (*(v9 + 16))(v11, a1 + v12, v8);
  v14 = a5(v13);
  (*(v9 + 8))(v11, v8);

  return v14;
}

void sub_243695C50(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), uint64_t *a6)
{
  v10 = (a4)(0, a2);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  a5(a3);
  v14 = *a6;
  swift_beginAccess();
  v15 = *(v11 + 40);
  v16 = a1;
  v15(&a1[v14], v13, v10);
  swift_endAccess();
}

id sub_243695DC0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v7 = sub_2436CBDF8();

  return v7;
}

double sub_243695E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  *(a1 + *a6) = sub_2436CBE08();

  return result;
}

double sub_243695ED0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = sub_2436CBE98();

  return result;
}

uint64_t sub_243696074(uint64_t a1)
{
  result = sub_2436CAD38();
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

id sub_24369615C(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2436CBD08();

  return v3;
}

double sub_2436961C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2436CBD38();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;

  return result;
}

id sub_243696220(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_2436CBD08();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_243696450(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2436CBD08();

  return v3;
}

id sub_2436965B0(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2436CBE88();

  return v3;
}

unint64_t sub_24369666C(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v2 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = MEMORY[0x277D84F90];
    v5 = &qword_27ED7F5F8;
    v30 = v2;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D3C2F0](v3, v29);
        v7 = isUniquelyReferenced_nonNull_bridgeObject;
        v8 = __OFADD__(v3++, 1);
        if (v8)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v3 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        v7 = *(v31 + 8 * v3);
        isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
        v8 = __OFADD__(v3++, 1);
        if (v8)
        {
          goto LABEL_41;
        }
      }

      v9 = [v7 trustedUsers];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5F0, &qword_2436D0780);
      v10 = sub_2436CBE08();
      swift_unknownObjectRelease();

      v11 = v10 >> 62;
      v12 = v10 >> 62 ? sub_2436CC008() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v4 >> 62;
      if (v4 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
      {
        goto LABEL_40;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v12;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_2436CC008();
        goto LABEL_20;
      }

      if (v13)
      {
        goto LABEL_19;
      }

      v15 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = v4;
        goto LABEL_21;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_2436CC0A8();
      v34 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2436CC008();
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v17 >> 1) - v16) < v36)
          {
            goto LABEL_44;
          }

          v19 = v15 + 8 * v16 + 32;
          if (v11)
          {
            if (v18 < 1)
            {
              goto LABEL_46;
            }

            sub_243671838(&unk_27ED7F600, v5, &qword_2436D2CB0, MEMORY[0x277D83988]);
            v20 = v5;
            for (i = 0; i != v18; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v20, &qword_2436D2CB0);
              v22 = sub_2436C4170(v35, i, v10);
              v24 = *v23;
              swift_unknownObjectRetain();
              (v22)(v35, 0);
              *(v19 + 8 * i) = v24;
              v20 = v5;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
            v20 = v5;
          }

          v5 = v20;

          v6 = v30;
          v4 = v34;
          if (v36 >= 1)
          {
            v25 = *(v15 + 16);
            v8 = __OFADD__(v25, v36);
            v26 = v25 + v36;
            if (v8)
            {
              goto LABEL_45;
            }

            *(v15 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_25;
        }
      }

      v6 = v30;
      v4 = v34;
      if (v36 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v3 == v6)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_2436CC008();
    v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
    {
      goto LABEL_13;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
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
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v2 = sub_2436CC008();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return MEMORY[0x277D84F90];
}

BOOL sub_243696A14(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [objc_msgSend(*a1 nameComponents)];
  swift_unknownObjectRelease();
  sub_2436CBD38();

  v4 = [objc_msgSend(v2 nameComponents)];
  swift_unknownObjectRelease();
  sub_2436CBD38();

  sub_2436732AC();
  v5 = sub_2436CBF68();

  return v5 == -1;
}

uint64_t sub_243696BC4(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = sub_2436CBBC8();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CBBE8();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2436CBC08();
  v27 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  sub_243671B28(0, &qword_27ED7F5B8, 0x277D85C78);
  v25 = sub_2436CBEF8();
  sub_2436CBBF8();
  sub_2436CBC18();
  v26 = *(v11 + 8);
  v26(v14, v10);
  v17 = swift_allocObject();
  v18 = v24;
  v17[2] = v2;
  v17[3] = v18;
  v17[4] = a2;
  aBlock[4] = sub_2436976B0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24366F258;
  aBlock[3] = &block_descriptor_3;
  v19 = _Block_copy(aBlock);
  v20 = v2;

  sub_2436CBBD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24369948C(&qword_27ED7F5C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5C8, &qword_2436D0778);
  sub_243671838(&unk_27ED7F5D0, &qword_27ED7F5C8, &qword_2436D0778, MEMORY[0x277D83970]);
  sub_2436CBFC8();
  v21 = v25;
  MEMORY[0x245D3C140](v16, v9, v6, v19);
  _Block_release(v19);

  (*(v30 + 8))(v6, v4);
  (*(v28 + 8))(v9, v29);
  return (v26)(v16, v27);
}

double sub_243696FB0(uint64_t a1, void (*a2)(uint64_t, void, __n128))
{
  v20 = MEMORY[0x277D84F90];
  v3 = *(a1 + OBJC_IVAR____TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator_pageSize);
  if (v3 < 0)
  {
    goto LABEL_32;
  }

  v2 = a2;
  if (v3)
  {
    v5 = OBJC_IVAR____TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator_currentIndex;
    v6 = OBJC_IVAR____TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator_hits;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = *(a1 + v5);
      v9 = *(a1 + v6);
      if (v9 >> 62)
      {
        if (v8 >= sub_2436CC008())
        {
          goto LABEL_19;
        }
      }

      else if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v10 = *(a1 + v5);
      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x245D3C2F0](v10, v9);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED58, qword_2436CF050);
          v19 = sub_2436CC1E8();
          swift_bridgeObjectRelease_n();
          v7 = v19;
          goto LABEL_22;
        }

        if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v11 = swift_unknownObjectRetain();
      }

      MEMORY[0x245D3C040](v11);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2436CBE18();
      }

      sub_2436CBE38();
      v12 = *(a1 + v5);
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_30;
      }

      v7 = v20;
      *(a1 + v5) = v14;
      if (!--v3)
      {
        goto LABEL_19;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_19:
  if (v7 >> 62)
  {
    goto LABEL_33;
  }

  v15 = v7 & 0xFFFFFFFFFFFFFF8;

  sub_2436CC2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED58, qword_2436CF050);
  if (swift_dynamicCastMetatype() || (v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
  {
LABEL_21:
  }

  else
  {
    v18 = v15 + 32;
    while (swift_dynamicCastObjCProtocolConditional())
    {
      v18 += 8;
      if (!--v17)
      {
        goto LABEL_21;
      }
    }

    v7 = v15 | 1;
  }

LABEL_22:
  (v2)(v7, 0);

  return result;
}

void sub_2436972C4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED58, qword_2436CF050);
    v5 = sub_2436CBDF8();
  }

  if (a2)
  {
    v6 = sub_2436CAC18();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_243697484()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F630, &unk_2436D0798);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_2436CAD98();
  __swift_allocate_value_buffer(v3, qword_27ED83AD0);
  v4 = __swift_project_value_buffer(v3, qword_27ED83AD0);
  sub_2436CAD48();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void sub_2436975B4()
{
  qword_27ED83AE8 = 0xD000000000000018;
  unk_27ED83AF0 = 0x80000002436E6580;
  qword_27ED83AF8 = 0xD000000000000023;
  unk_27ED83B00 = 0x80000002436E65A0;
}

id sub_2436975F4()
{
  v0 = objc_allocWithZone(_s18MockNameComponentsCMa());
  result = sub_2436951D8(0x6172696F4DLL, 0xE500000000000000, 0x6E6F73776144, 0xE600000000000000, 0);
  qword_27ED83B08 = result;
  return result;
}

uint64_t sub_243697670()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2436976D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243697714(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2436C466C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_243697790(v6);
  return sub_2436CC0D8();
}

void sub_243697790(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2436CC2A8();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5F0, &qword_2436D0780);
        v6 = sub_2436CBE28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_243697A5C(v8, v9, a1, v4);
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
    sub_2436978A0(0, v2, 1, a1);
  }
}

void sub_2436978A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v17 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v16 = a3;
    v6 = *(v17 + 8 * a3);
    v14 = v5;
    v15 = v4;
    while (1)
    {
      v7 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v8 = [objc_msgSend(v6 nameComponents)];
      swift_unknownObjectRelease();
      sub_2436CBD38();

      v9 = [objc_msgSend(v7 nameComponents)];
      swift_unknownObjectRelease();
      sub_2436CBD38();

      sub_2436732AC();
      v10 = sub_2436CBF68();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v10 != -1)
      {
LABEL_4:
        a3 = v16 + 1;
        v4 = v15 + 8;
        v5 = v14 - 1;
        if (v16 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      v11 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v11;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_243697A5C(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_90:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_92;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v103 = v9;
    if ((v9 + 1) >= v8)
    {
      v8 = (v9 + 1);
    }

    else
    {
      v12 = v9;
      v13 = *v6;
      v9 = *(*v6 + 8 * (v9 + 1));
      v113 = v9;
      v111 = *(v13 + 8 * v11);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v107 = sub_243696A14(&v113, &v111);
      if (v5)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return;
      }

      v100 = v10;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v14 = v12 + 2;
      v109 = 8 * v12;
      v15 = (v13 + 8 * v12 + 16);
      while (v8 != v14)
      {
        v16 = *(v15 - 1);
        v10 = *v15;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v17 = [objc_msgSend(v10 nameComponents)];
        swift_unknownObjectRelease();
        v18 = sub_2436CBD38();
        v9 = v19;

        v113 = v18;
        v114 = v9;
        v20 = [objc_msgSend(v16 nameComponents)];
        swift_unknownObjectRelease();
        v21 = sub_2436CBD38();
        v23 = v22;

        v111 = v21;
        v112 = v23;
        sub_2436732AC();
        v24 = sub_2436CBF68();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        ++v14;
        ++v15;
        if (((v107 ^ (v24 != -1)) & 1) == 0)
        {
          v8 = (v14 - 1);
          break;
        }
      }

      v5 = 0;
      v7 = a1;
      v6 = a3;
      v11 = v103;
      if (!v107)
      {
        goto LABEL_19;
      }

      if (v8 < v103)
      {
        goto LABEL_123;
      }

      if (v103 < v8)
      {
        v25 = 8 * v8 - 8;
        v26 = v8;
        v27 = v103;
        v10 = v100;
        do
        {
          if (v27 != --v26)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_127;
            }

            v29 = *(v28 + v109);
            *(v28 + v109) = *(v28 + v25);
            *(v28 + v25) = v29;
          }

          ++v27;
          v25 -= 8;
          v109 += 8;
        }

        while (v27 < v26);
      }

      else
      {
LABEL_19:
        v10 = v100;
      }
    }

    v30 = v6[1];
    if (v8 < v30)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_120;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_121;
        }

        if (v11 + a4 >= v30)
        {
          v9 = v6[1];
        }

        else
        {
          v9 = (v11 + a4);
        }

        if (v9 < v11)
        {
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          v10 = sub_2436C3A7C(v10);
LABEL_92:
          v115 = v10;
          v93 = *(v10 + 2);
          if (v93 >= 2)
          {
            while (*v6)
            {
              v94 = v10;
              v10 = (v93 - 1);
              v95 = *&v94[16 * v93];
              v96 = *&v94[16 * v93 + 24];
              sub_243698280((*v6 + 8 * v95), (*v6 + 8 * *&v94[16 * v93 + 16]), (*v6 + 8 * v96), v9);
              if (v5)
              {
                goto LABEL_100;
              }

              if (v96 < v95)
              {
                goto LABEL_117;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = sub_2436C3A7C(v94);
              }

              if (v93 - 2 >= *(v94 + 2))
              {
                goto LABEL_118;
              }

              v97 = &v94[16 * v93];
              *v97 = v95;
              *(v97 + 1) = v96;
              v115 = v94;
              sub_2436C39F0(v93 - 1);
              v10 = v115;
              v93 = *(v115 + 2);
              if (v93 <= 1)
              {
                goto LABEL_100;
              }
            }

            goto LABEL_128;
          }

LABEL_100:

          return;
        }

        if (v8 != v9)
        {
          break;
        }
      }
    }

    v9 = v8;
    if (v8 < v11)
    {
      goto LABEL_119;
    }

LABEL_30:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2436C1290(0, *(v10 + 2) + 1, 1, v10);
    }

    v32 = *(v10 + 2);
    v31 = *(v10 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v10 = sub_2436C1290((v31 > 1), v32 + 1, 1, v10);
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v32];
    *(v34 + 4) = v103;
    *(v34 + 5) = v9;
    v35 = *v7;
    if (!*v7)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_49:
          if (v40)
          {
            goto LABEL_108;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_111;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_115;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_63:
        if (v58)
        {
          goto LABEL_110;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_70:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_122;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v75 = *&v10[16 * v74 + 32];
        v76 = *&v10[16 * v36 + 40];
        sub_243698280((*v6 + 8 * v75), (*v6 + 8 * *&v10[16 * v36 + 32]), (*v6 + 8 * v76), v35);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v76 < v75)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2436C3A7C(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_105;
        }

        v77 = &v10[16 * v74];
        *(v77 + 4) = v75;
        *(v77 + 5) = v76;
        v115 = v10;
        sub_2436C39F0(v36);
        v10 = v115;
        v33 = *(v115 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_116;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v8 = v6[1];
    v7 = a1;
    if (v9 >= v8)
    {
      goto LABEL_90;
    }
  }

  v101 = v5;
  v110 = *v6;
  v78 = *v6 + 8 * v8 - 8;
  v79 = v11 - v8;
  v104 = v9;
LABEL_81:
  v106 = v78;
  v108 = v8;
  v80 = *(v110 + 8 * v8);
  v105 = v79;
  while (1)
  {
    v81 = *v78;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v82 = [objc_msgSend(v80 nameComponents)];
    swift_unknownObjectRelease();
    v83 = sub_2436CBD38();
    v85 = v84;

    v113 = v83;
    v114 = v85;
    v86 = [objc_msgSend(v81 nameComponents)];
    swift_unknownObjectRelease();
    v87 = sub_2436CBD38();
    v89 = v88;

    v111 = v87;
    v112 = v89;
    sub_2436732AC();
    v90 = sub_2436CBF68();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (v90 != -1)
    {
LABEL_80:
      v8 = v108 + 1;
      v78 = v106 + 8;
      v9 = v104;
      v79 = v105 - 1;
      if ((v108 + 1) != v104)
      {
        goto LABEL_81;
      }

      v5 = v101;
      v6 = a3;
      v7 = a1;
      if (v104 < v103)
      {
        goto LABEL_119;
      }

      goto LABEL_30;
    }

    if (!v110)
    {
      break;
    }

    v91 = *v78;
    v80 = *(v78 + 8);
    *v78 = v80;
    *(v78 + 8) = v91;
    v78 -= 8;
    if (__CFADD__(v79++, 1))
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
}

uint64_t sub_243698280(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v9);
      v5 = a2;
      a4 = v13;
    }

    v40 = &a4[v9];
    v15 = a4;
    if (v7 < 8)
    {
LABEL_10:
      v16 = v6;
      goto LABEL_38;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v37 = v6;
      __dst = v5;
      v19 = *v5;
      v20 = *v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [objc_msgSend(v19 nameComponents)];
      swift_unknownObjectRelease();
      sub_2436CBD38();

      v22 = [objc_msgSend(v20 nameComponents)];
      swift_unknownObjectRelease();
      sub_2436CBD38();

      sub_2436732AC();
      v23 = sub_2436CBF68();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v23 != -1)
      {
        break;
      }

      v17 = v37;
      v18 = __dst;
      v5 = __dst + 1;
      if (v37 != __dst)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 = v17 + 1;
      if (v15 >= v40)
      {
        goto LABEL_10;
      }
    }

    v18 = v15;
    v17 = v37;
    v24 = v37 == v15++;
    v5 = __dst;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v17 = *v18;
    goto LABEL_13;
  }

  v15 = a4;
  if (a4 != a2 || &a2[v12] <= a4)
  {
    memmove(a4, a2, 8 * v12);
    v5 = a2;
  }

  v40 = &v15[v12];
  if (v10 < 8 || v5 <= v6)
  {
    v16 = v5;
  }

  else
  {
    v36 = v15;
    do
    {
      __dsta = v5;
      v26 = v5 - 1;
      --v4;
      v27 = v40;
      v35 = v5 - 1;
      while (1)
      {
        v28 = (v4 + 1);
        v29 = *(v27 - 1);
        v27 -= 8;
        v30 = *v26;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v31 = [objc_msgSend(v29 nameComponents)];
        swift_unknownObjectRelease();
        sub_2436CBD38();

        v32 = [objc_msgSend(v30 nameComponents)];
        swift_unknownObjectRelease();
        sub_2436CBD38();

        sub_2436732AC();
        v33 = sub_2436CBF68();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v33 == -1)
        {
          break;
        }

        if (v28 != v40)
        {
          *v4 = *v27;
        }

        --v4;
        v40 = v27;
        v26 = v35;
        if (v27 <= v36)
        {
          v40 = v27;
          v15 = v36;
          v16 = __dsta;
          goto LABEL_38;
        }
      }

      v16 = v35;
      if (v28 != __dsta)
      {
        *v4 = *v35;
      }

      v15 = v36;
      if (v40 <= v36)
      {
        break;
      }

      v5 = v35;
    }

    while (v35 > v6);
  }

LABEL_38:
  if (v16 != v15 || v16 >= (v15 + ((v40 - v15 + (v40 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v16, v15, 8 * ((v40 - v15) / 8));
  }

  return 1;
}

uint64_t sub_2436986F8(uint64_t result)
{
  v30 = MEMORY[0x277D84F90];
  v1 = *(result + 8);
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    v2 = 0;
    v3 = 0;
    v25 = *(result + 24);
    v4 = 0x80000002436E55E0;
    if (*(result + 25))
    {
      v5 = 0xD0000000000001BDLL;
    }

    else
    {
      v5 = 0;
    }

    if ((*(result + 25) & 1) == 0)
    {
      v4 = 0xE000000000000000;
    }

    v24 = v5;
    v23 = *(result + 8);
    v6 = v4;
    do
    {
      v7 = v2;
      v8 = (&unk_2856748E0 + v2 - 960 * (v3 / 0x1E));
      v9 = v8[5];
      v11 = v8[6];
      v10 = v8[7];
      v28 = v8[4];
      v29 = v9;
      swift_bridgeObjectRetain_n();

      MEMORY[0x245D3C000](v24, v6);

      v12 = v28;
      v13 = v29;
      v28 = v11;
      v29 = v10;

      MEMORY[0x245D3C000](v24, v6);

      v14 = v28;
      v15 = v29;
      v16 = objc_allocWithZone(_s18MockNameComponentsCMa());
      v17 = sub_2436951D8(v12, v13, v14, v15, v3);
      v18 = (v25 & 1) != 0 || 5 * (v3 / 5) == v3;
      v19.i64[0] = 0x6DB6DB6DB6DB6DB7 * v3;
      v19.i64[1] = 0xAAAAAAAAAAAAAAABLL * v3;
      v26 = vmovn_s64(vcgeq_u64(xmmword_2436D0640, vorrq_s8(vshlq_u64(v19, xmmword_2436D0630), vshlq_u64(v19, xmmword_2436D0620))));
      v20 = objc_allocWithZone(_s15MockTrustedUserCMa());
      *&v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource15MockTrustedUser_certificates] = MEMORY[0x277D84FA0];
      *&v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_mockNameComponents] = v17;
      v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isFederated] = v18;
      v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isAccountLockedDueToFailedLoginAttempts] = v26.i8[4] & 1;
      v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isAccountATOLocked] = v26.i8[0] & 1;
      v21 = _s8MockUserCMa();
      v27.receiver = v20;
      v27.super_class = v21;
      v22 = objc_msgSendSuper2(&v27, sel_init);
      MEMORY[0x245D3C040]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2436CBE18();
      }

      ++v3;
      sub_2436CBE38();

      v2 = v7 + 32;
    }

    while (v23 != v3);
    return v30;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2436989FC(uint64_t *a1)
{
  v38 = sub_2436CAD38();
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2436986F8(a1);
  v46 = MEMORY[0x277D84F90];
  v5 = *a1;
  if ((*a1 & 0x8000000000000000) == 0)
  {
    v6 = v4;
    if (!v5)
    {
LABEL_17:

      return;
    }

    v7 = 0;
    if (*(a1 + 25))
    {
      v8 = 0xD0000000000001BDLL;
    }

    else
    {
      v8 = 0;
    }

    v9 = 0xE000000000000000;
    if (*(a1 + 25))
    {
      v9 = 0x80000002436E55E0;
    }

    v34 = v9;
    v35 = v8;
    v33 = (v2 + 32);
    v32 = xmmword_2436CFAA0;
    v36 = v5;
    while (v7 != 0x10000)
    {
      v10 = (&unk_2856747C0 + 32 * (v7 & 7));
      v11 = v10[7];
      v40 = v10[6];
      v41 = v11;
      v12 = v10[5];
      v44 = v10[4];
      v45 = v12;
      swift_bridgeObjectRetain_n();
      MEMORY[0x245D3C000](v35, v34);

      v13 = v44;
      v14 = v45;
      if (qword_27ED7DEC8 != -1)
      {
        swift_once();
      }

      v15 = qword_27ED83B08;
      v16 = _s8MockUserCMa();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_mockNameComponents] = v15;
      v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isFederated] = 0;
      v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isAccountLockedDueToFailedLoginAttempts] = 0;
      v17[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource8MockUser_isAccountATOLocked] = 0;
      v43.receiver = v17;
      v43.super_class = v16;
      v18 = v15;
      v39 = objc_msgSendSuper2(&v43, sel_init);
      v19 = _s10MockCourseCMa(0);
      v20 = objc_allocWithZone(v19);
      v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_isEditable] = 0;
      *&v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_allTrustedUserCertificates] = MEMORY[0x277D84FA0];
      v21 = qword_27ED7DEB8;

      if (v21 != -1)
      {
        swift_once();
      }

      v22 = sub_2436CAD98();
      __swift_project_value_buffer(v22, qword_27ED83AD0);
      v23 = objc_allocWithZone(MEMORY[0x277D04C00]);
      v24 = sub_2436CAD68();
      v25 = [v23 initWithOrganizationUUID:v24 groupID:v7];

      *&v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_identifier] = v25;
      v26 = &v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_name];
      *v26 = v13;
      v26[1] = v14;
      v27 = v41;
      *&v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_mascot] = v40;
      *&v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_color] = v27;
      *&v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_location] = [objc_allocWithZone(_s12MockLocationCMa()) init];
      v28 = v37;
      sub_2436CAD28();
      (*v33)(&v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_creationDate], v28, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80360, &qword_2436CFB30);
      v29 = swift_allocObject();
      *(v29 + 16) = v32;
      *(v29 + 32) = v39;
      *&v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_users] = v29;
      *&v20[OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_trustedUsers] = v6;
      v42.receiver = v20;
      v42.super_class = v19;
      v30 = objc_msgSendSuper2(&v42, sel_init);

      v31 = v30;
      MEMORY[0x245D3C040]();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2436CBE18();
      }

      ++v7;
      sub_2436CBE38();

      if (v36 == v7)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_243698E50(unint64_t a1, uint64_t *a2)
{
  v29 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_25:
    v22 = a1;
    v2 = sub_2436CC008();
    a1 = v22;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v23 = a1;
      v3 = 0;
      v25 = a1 & 0xFFFFFFFFFFFFFF8;
      v26 = a1 & 0xC000000000000001;
      v24 = a1 + 32;
      while (1)
      {
        if (v26)
        {
          v8 = MEMORY[0x245D3C2F0](v3, v23);
          v9 = __OFADD__(v3++, 1);
          if (v9)
          {
LABEL_22:
            __break(1u);
            return v29;
          }
        }

        else
        {
          if (v3 >= *(v25 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v8 = *(v24 + 8 * v3);
          swift_unknownObjectRetain();
          v9 = __OFADD__(v3++, 1);
          if (v9)
          {
            goto LABEL_22;
          }
        }

        v10 = *a2;

        v11 = [v8 appleID];
        v12 = sub_2436CBD38();
        v14 = v13;

        if (*(v10 + 16) && (sub_2436CC368(), sub_2436CBD88(), v15 = sub_2436CC398(), v16 = -1 << *(v10 + 32), v17 = v15 & ~v16, ((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = (*(v10 + 48) + 16 * v17);
            v20 = *v19 == v12 && v19[1] == v14;
            if (v20 || (sub_2436CC2E8() & 1) != 0)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          a1 = swift_unknownObjectRelease();
        }

        else
        {
LABEL_4:

          v4 = [v8 appleID];
          v5 = sub_2436CBD38();
          v7 = v6;

          sub_2436B8FCC(&v28, v5, v7);

          sub_2436CC0C8();
          sub_2436CC0F8();
          sub_2436CC108();
          a1 = sub_2436CC0D8();
        }

        if (v3 == v2)
        {
          return v29;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

id sub_2436990E8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v41 = MEMORY[0x277D84FA0];
  v5 = *(v3 + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectory_roster);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_27;
  }

  v7 = [v5 courses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F5E0, &unk_2436D1DF0);
  v8 = sub_2436CBE08();

  v9 = 0;
  v11 = sub_24369666C(v8, v10);

  v40[2] = v6;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    while (1)
    {
      v32 = v9;
      v33 = a3;
      v13 = 0;
      v14 = v11 & 0xC000000000000001;
      v15 = v11 & 0xFFFFFFFFFFFFFF8;
      v16 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v16 = a1 & 0xFFFFFFFFFFFFLL;
      }

      v17 = !a2 || v16 == 0;
      v9 = v17;
      v34 = v9;
      while (v14)
      {
        v18 = MEMORY[0x245D3C2F0](v13, v11);
        a3 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v9 = v32;
          a3 = v33;
          goto LABEL_25;
        }

LABEL_18:
        if (v9 & 1) != 0 || (v19 = [objc_msgSend(v18 nameComponents)], swift_unknownObjectRelease(), v20 = sub_2436CBD38(), v21 = v15, v22 = v12, v23 = v11, v24 = v14, v26 = v25, v19, v40[0] = v20, v40[1] = v26, v38 = a1, v39 = a2, sub_2436732AC(), LOBYTE(v19) = sub_2436CBF78(), v14 = v24, v11 = v23, v12 = v22, v15 = v21, v9 = v34, , (v19))
        {
          sub_2436CC0C8();
          sub_2436CC0F8();
          sub_2436CC108();
          sub_2436CC0D8();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v13;
        if (a3 == v12)
        {
          goto LABEL_24;
        }
      }

      if (v13 < *(v15 + 16))
      {
        break;
      }

      __break(1u);
LABEL_29:
      v12 = sub_2436CC008();
      if (!v12)
      {
        goto LABEL_25;
      }
    }

    v18 = *(v11 + 8 * v13 + 32);
    swift_unknownObjectRetain();
    a3 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

LABEL_25:

  v40[0] = sub_2436C3AA8(v27);
  sub_243697714(v40);
  if (!v9)
  {

    v6 = sub_243698E50(v40[0], &v41);

LABEL_27:
    v28 = _s20MockStudentDirectoryC12UserIteratorCMa();
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR____TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator_currentIndex] = 0;
    *&v29[OBJC_IVAR____TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator_hits] = v6;
    *&v29[OBJC_IVAR____TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator_pageSize] = a3;
    v37.receiver = v29;
    v37.super_class = v28;
    v30 = objc_msgSendSuper2(&v37, sel_init);

    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_243699424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E438, &qword_2436CDA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24369948C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_24369956C()
{
  v0 = sub_2436CADB8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2436CAC48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for EMSStrings.SearchStrings(0);
  v6 = swift_allocObject();
  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_27ED7F648);
  (*(v2 + 16))(v4, v7, v1);
  sub_2436CADA8();
  result = sub_2436CAC68();
  qword_27ED83B48 = v6;
  return result;
}

uint64_t sub_2436997AC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  v6 = swift_allocObject();
  result = a3();
  *a4 = v6;
  return result;
}

uint64_t sub_243699834()
{
  v0 = sub_2436CADB8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2436CAC48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for EMSStrings.DoneStrings(0);
  v6 = swift_allocObject();
  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_27ED7F648);
  (*(v2 + 16))(v4, v7, v1);
  sub_2436CADA8();
  result = sub_2436CAC68();
  qword_27ED83B60 = v6;
  return result;
}

uint64_t sub_243699A50()
{
  v0 = sub_2436CADB8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2436CAC48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for EMSStrings.SuccessScreen(0);
  v6 = swift_allocObject();
  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_27ED7F648);
  (*(v2 + 16))(v4, v7, v1);
  sub_2436CADA8();
  result = sub_2436CAC68();
  qword_27ED83B68 = v6;
  return result;
}

void sub_243699C60()
{
  v0 = sub_2436CBD08();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27ED7F640 = v1;
}

uint64_t sub_243699CD0()
{
  v0 = sub_2436CAC48();
  __swift_allocate_value_buffer(v0, qword_27ED7F648);
  v1 = __swift_project_value_buffer(v0, qword_27ED7F648);
  *v1 = type metadata accessor for EMSStrings();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_243699D74()
{
  v1 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_title;
  v2 = sub_2436CAC58();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_subtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_noCoursesPlaceholderTextTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_noCoursesPlaceholderTextSubtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_signInHistoryAccessibilityLabel, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings19CoursePickerStrings_cancelButtonLabel, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_243699EB0()
{
  v1 = sub_2436CADB8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2436CAC48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27ED7F648);
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  return v0;
}

uint64_t sub_24369A300()
{
  v1 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_title;
  v2 = sub_2436CAC58();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_populatedDescription, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_emptyDescriptionTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_emptyDescriptionSubtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deleteEntriesConfirmationSubtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deleteButtonTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deleteEntriesConfirmationButtonTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_selectAllHistoryButtonTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deselectAllHistoryButtonTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_selectItemsTitle, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_24369A4AC()
{
  v1 = sub_2436CADB8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2436CAC48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27ED7F648);
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  return v0;
}

uint64_t sub_24369AAC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2436CADB8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2436CAC48();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2436CBCD8();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBCA8();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27ED7F648);
  (*(v4 + 16))(v6, v9, v3);
  sub_2436CADA8();
  return sub_2436CAC68();
}

uint64_t sub_24369AD3C()
{
  v1 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_subtitle;
  v2 = sub_2436CAC58();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_noLongerAvailable, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_federatedAccountSubtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountSubtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountAlertTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountAlertSubtitlePasswordReset, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountAlertSubtitleContactAdministrator, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_notAvailableForThisClassTitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_allStudentAccountsAreFederatedSubtitle, v2);
  v3(v0 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_learnMoreButtonTitle, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_24369AEE8()
{
  v1 = sub_2436CADB8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2436CAC48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27ED7F648);
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  sub_2436CBC88();
  v8(v5, v7, v2);
  sub_2436CADA8();
  sub_2436CAC68();
  return v0;
}

uint64_t sub_24369B50C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2436CADB8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2436CAC48();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2436CBCD8();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBCA8();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27ED7F648);
  (*(v4 + 16))(v6, v9, v3);
  sub_2436CADA8();
  return sub_2436CAC68();
}

uint64_t sub_24369B78C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2436CADB8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2436CAC48();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2436CBCD8();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBCA8();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27ED7F648);
  (*(v4 + 16))(v6, v9, v3);
  sub_2436CADA8();
  return sub_2436CAC68();
}

uint64_t sub_24369BA0C(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_2436CAC58();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v4, v5);
}

uint64_t sub_24369BAA4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2436CADB8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2436CAC48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2436CBCD8();
  MEMORY[0x28223BE20](v9 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBCA8();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_27ED7F648);
  (*(v5 + 16))(v7, v10, v4);
  sub_2436CADA8();
  return sub_2436CAC68();
}

uint64_t sub_24369BE24(_BYTE *a1, _BYTE *a2)
{
  v2 = sub_2436CADB8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2436CAC48();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v7 - 8);
  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_27ED7F648);
  (*(v4 + 16))(v6, v8, v3);
  sub_2436CADA8();
  return sub_2436CAC68();
}

uint64_t sub_24369C1AC(uint64_t a1)
{
  result = sub_2436CAC58();
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

uint64_t sub_24369C2C0(uint64_t a1)
{
  result = sub_2436CAC58();
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

uint64_t sub_24369C3B0(uint64_t a1)
{
  result = sub_2436CAC58();
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

uint64_t sub_24369C464(uint64_t a1)
{
  v1 = sub_2436CADB8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2436CBCD8();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBC98();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF00 != -1)
  {
    swift_once();
  }

  v4 = qword_27ED7F640;
  sub_2436CADA8();
  return sub_2436CBD48();
}

uint64_t sub_24369C648(uint64_t a1)
{
  v1 = sub_2436CADB8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2436CBCD8();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBC98();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF00 != -1)
  {
    swift_once();
  }

  v4 = qword_27ED7F640;
  sub_2436CADA8();
  return sub_2436CBD48();
}

uint64_t sub_24369C834(uint64_t a1)
{
  v1 = sub_2436CADB8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2436CBCD8();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBC98();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF00 != -1)
  {
    swift_once();
  }

  v4 = qword_27ED7F640;
  sub_2436CADA8();
  return sub_2436CBD48();
}

uint64_t sub_24369CA08(uint64_t a1)
{
  v1 = sub_2436CADB8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2436CBCF8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2436CBCD8();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBC98();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF00 != -1)
  {
    swift_once();
  }

  v4 = qword_27ED7F640;
  sub_2436CADA8();
  return sub_2436CBD48();
}

uint64_t sub_24369CBE4()
{
  swift_getKeyPath(byte_2436D0B00);
  swift_getKeyPath(byte_2436D0B28);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369CC58()
{
  swift_getKeyPath(byte_2436D0998);
  swift_getKeyPath(byte_2436D09C0);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369CCE4()
{
  swift_getKeyPath(aH_0);
  swift_getKeyPath(asc_2436D0A50);
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369CD94()
{
  v1 = [v0 attributedFullName];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 string];
    v4 = sub_2436CBD38();

    [v2 crk_familyNameRange];
  }

  else
  {
    v5 = [v0 fullName];
    v4 = sub_2436CBD38();
  }

  return v4;
}

uint64_t sub_24369CE6C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, __int128 a12)
{
  v13 = v12;
  v64 = a7;
  v65 = a8;
  *&v71 = a4;
  *(&v71 + 1) = a3;
  v66 = a1;
  v67 = a2;
  v70 = a9;
  v63 = sub_2436CAC58();
  v16 = *(v63 - 8);
  v17 = MEMORY[0x28223BE20](v63);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v62 - v20;
  swift_getKeyPath(byte_2436D0950);
  swift_getKeyPath(byte_2436D0978);
  sub_2436CAED8();

  if (v74 == a12)
  {
  }

  else
  {
    v22 = sub_2436CC2E8();

    if ((v22 & 1) == 0)
    {
      swift_getKeyPath(byte_2436D0950);
      swift_getKeyPath(byte_2436D0978);
      v74 = a12;

      sub_2436CAEE8();
    }
  }

  swift_getKeyPath(byte_2436D0998);
  swift_getKeyPath(byte_2436D09C0);
  sub_2436CAED8();

  if (!*(&v74 + 1))
  {

    goto LABEL_12;
  }

  v24 = v75;
  v23 = v76;
  if (__PAIR128__(v74, *(&v74 + 1)) != v71)
  {
    v25 = sub_2436CC2E8();

    if (v25)
    {
      goto LABEL_10;
    }

LABEL_12:
    swift_getKeyPath(byte_2436D0998);
    swift_getKeyPath(byte_2436D09C0);
    *&v74 = *(&v71 + 1);
    *(&v74 + 1) = v71;
    v75 = a5;
    v76 = a6;

    sub_2436CAEE8();
    goto LABEL_13;
  }

LABEL_10:
  if (v24 != a5 || v23 != a6)
  {
    goto LABEL_12;
  }

LABEL_13:
  v26 = v70;
  v68 = a10;
  v69 = a11;
  if (v70)
  {
    if (qword_27ED7DEE0 != -1)
    {
      swift_once();
    }

    v27 = *(v16 + 16);
    v16 += 16;
    v27(v21, qword_27ED83B50 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_federatedAccountSubtitle, v63);
    v28 = sub_2436CBD58();
    v30 = v29;
    v19 = 0;
  }

  else
  {
    if (a11)
    {
      if (qword_27ED7DEE0 != -1)
      {
        goto LABEL_56;
      }

      goto LABEL_19;
    }

    if (a10)
    {
      if (qword_27ED7DEE0 != -1)
      {
        swift_once();
      }

      v42 = qword_27ED83B50;
      v43 = *(v16 + 16);
      v33 = v63;
      v43(v21, qword_27ED83B50 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountSubtitle, v63);
      v64 = sub_2436CBD58();
      v65 = v44;
      v43(v21, v42 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountAlertSubtitlePasswordReset, v33);
      v43(v19, v21, v33);
      v45 = sub_2436CBD58();
      v47 = v46;
      v48 = *(v13 + OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel_alert);
      v39 = swift_allocObject();
      *(v39 + 2) = v48;
      *(v39 + 3) = v45;
      *(v39 + 4) = v47;
      type metadata accessor for CRKUIButtonViewModel(0);
      v19 = swift_allocObject();
      LOBYTE(v74) = 0;

      v30 = v65;
      sub_2436CAE98();
      *(v19 + 2) = v45;
      *(v19 + 3) = v47;
      v28 = v64;
      swift_beginAccess();
      v72 = xmmword_2436D0850;
      v73 = 0x80;
      sub_2436CAE98();
      swift_endAccess();
      v40 = &v19[OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action];
      v41 = sub_24369EE1C;
      goto LABEL_24;
    }

    v30 = v65;

    v19 = 0;
    v28 = v64;
  }

  while (1)
  {
    swift_getKeyPath(byte_2436D09E0);
    swift_getKeyPath(asc_2436D0A08);
    sub_2436CAED8();

    if (v74 == __PAIR128__(v30, v28))
    {
    }

    else
    {
      v50 = sub_2436CC2E8();

      if ((v50 & 1) == 0)
      {
        swift_getKeyPath(byte_2436D09E0);
        swift_getKeyPath(asc_2436D0A08);
        *&v74 = v28;
        *(&v74 + 1) = v30;

        sub_2436CAEE8();
      }
    }

    swift_getKeyPath(aH_0);
    swift_getKeyPath(asc_2436D0A50);
    sub_2436CAED8();

    if (v74)
    {
      v52 = *(v74 + 16);
      v51 = *(v74 + 24);

      if (!v19)
      {
        if (!v51)
        {
          goto LABEL_44;
        }

LABEL_42:

LABEL_43:
        swift_getKeyPath(aH_0);
        swift_getKeyPath(asc_2436D0A50);
        *&v74 = v19;

        sub_2436CAEE8();
        goto LABEL_44;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_44;
      }

      v51 = 0;
      v52 = 0;
    }

    v54 = *(v19 + 2);
    v53 = *(v19 + 3);

    if (!v51)
    {
      if (!v53)
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    if (!v53)
    {
      goto LABEL_42;
    }

    if (v52 == v54 && v51 == v53)
    {

      goto LABEL_44;
    }

    v61 = sub_2436CC2E8();

    if ((v61 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_44:
    swift_getKeyPath(byte_2436D0A70);
    swift_getKeyPath(byte_2436D0A98);
    sub_2436CAED8();

    if (v74 != (v26 & 1))
    {
      swift_getKeyPath(byte_2436D0A70);
      swift_getKeyPath(byte_2436D0A98);
      LOBYTE(v74) = v26 & 1;

      sub_2436CAEE8();
    }

    v55 = v26 | v68 | v69;
    swift_getKeyPath(byte_2436D0AB8);
    swift_getKeyPath(byte_2436D0AE0);
    sub_2436CAED8();

    if ((v55 & 1) != v74)
    {
      swift_getKeyPath(byte_2436D0AB8);
      swift_getKeyPath(byte_2436D0AE0);
      LOBYTE(v74) = v55 & 1;

      sub_2436CAEE8();
    }

    swift_getKeyPath(byte_2436D0B00);
    swift_getKeyPath(byte_2436D0B28);
    sub_2436CAED8();

    if (v55)
    {
      v56 = 7;
      goto LABEL_52;
    }

    v57 = objc_opt_self();
    v58 = sub_2436CBD08();
    v59 = [v57 asmHashForString:v58 maximumExclusive:7];

    if (v59 <= 6)
    {
      break;
    }

    __break(1u);
LABEL_56:
    swift_once();
LABEL_19:
    v31 = qword_27ED83B50;
    v32 = *(v16 + 16);
    v33 = v63;
    v32(v21, qword_27ED83B50 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountSubtitle, v63);
    v64 = sub_2436CBD58();
    v65 = v34;
    v32(v21, v31 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountAlertSubtitleContactAdministrator, v33);
    v32(v19, v21, v33);
    v35 = sub_2436CBD58();
    v37 = v36;
    v38 = *(v13 + OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel_alert);
    v39 = swift_allocObject();
    *(v39 + 2) = v38;
    *(v39 + 3) = v35;
    *(v39 + 4) = v37;
    type metadata accessor for CRKUIButtonViewModel(0);
    v19 = swift_allocObject();
    LOBYTE(v74) = 0;

    v30 = v65;
    sub_2436CAE98();
    *(v19 + 2) = v35;
    *(v19 + 3) = v37;
    v28 = v64;
    swift_beginAccess();
    v72 = xmmword_2436D0850;
    v73 = 0x80;
    sub_2436CAE98();
    swift_endAccess();
    v40 = &v19[OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action];
    v41 = sub_24369EE74;
LABEL_24:
    *v40 = v41;
    v40[1] = v39;
    v49 = *(v16 + 8);
    v16 += 8;
    v49(v21, v33);
    v26 = v70;
  }

  v56 = byte_2856750A0[v59 + 32];
LABEL_52:
  sub_24368628C(v66, v67, v56);
}

double sub_24369D980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2436CAC58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED7DEE0 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v8, qword_27ED83B50 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountAlertTitle, v5);
  v9 = sub_2436CBD58();
  v11 = v10;
  v15 = 0;
  swift_getKeyPath(aH_1);
  swift_getKeyPath(aH_2);
  v13[0] = v9;
  v13[1] = v11;
  v13[2] = a2;
  v13[3] = a3;
  v14 = 0;

  sub_2436CAEE8();
  sub_2436C8CA0();

  return result;
}

char *sub_24369DB18()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__facePortal;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EFA8, &unk_2436D0940);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__name;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F760, &unk_2436CF900);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__subtitle;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__subtitleInfoButton;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F750, &unk_2436D0E10);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__isFederated;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__isDisabled, v11);
  v7(v0 + OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__sortName, v6);

  return v0;
}

uint64_t sub_24369DD34()
{
  sub_24369DB18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for EMSStudentViewModel(uint64_t a1)
{
  result = qword_27ED7F710;
  if (!qword_27ED7F710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24369DDE0(uint64_t a1)
{
  sub_24369DFE0(319);
  if (v1 <= 0x3F)
  {
    sub_2436803FC(319, &qword_27ED7EFA0, &unk_27ED7F730, &qword_2436CF880);
    if (v2 <= 0x3F)
    {
      sub_243686670(319, &qword_27ED80310, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2436803FC(319, &unk_27ED7F740, &unk_27ED7EB90, &qword_2436CE990);
        if (v4 <= 0x3F)
        {
          sub_243686670(319, &qword_27ED7EB70, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_24369DFE0(uint64_t a1)
{
  if (!qword_27ED7F720)
  {
    type metadata accessor for EMSFacePortalViewModel(255);
    v1 = sub_2436CAEF8();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED7F720);
    }
  }
}

uint64_t sub_24369E038@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EMSStudentViewModel(0);
  result = sub_2436CAE38();
  *a2 = result;
  return result;
}

uint64_t sub_24369E078@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_2436D0B00);
  swift_getKeyPath(byte_2436D0B28);
  sub_2436CAED8();

  *a2 = v4;
  return result;
}

uint64_t sub_24369E0F8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436D0B00);
  swift_getKeyPath(byte_2436D0B28);

  return sub_2436CAEE8();
}

double sub_24369E174@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath(byte_2436D0998);
  swift_getKeyPath(byte_2436D09C0);
  sub_2436CAED8();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_24369E1F4(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2436D0998);
  swift_getKeyPath(byte_2436D09C0);

  return sub_2436CAEE8();
}

uint64_t sub_24369E274@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_2436D09E0);
  swift_getKeyPath(asc_2436D0A08);
  sub_2436CAED8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}
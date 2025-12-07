uint64_t sub_2381B7E20()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B8130, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2381B7F68()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);
  (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 40) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 56));
  v3 = v2;
  v4 = sub_2381CA08C();
  v5 = sub_2381CA2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23819C000, v4, v5, "Failed to get tracking Summary: %@", v6, 0xCu);
    sub_2381A6070(v7, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v7, -1, -1);
    MEMORY[0x2383EBBE0](v6, -1, -1);
  }

  v10 = *(v0 + 72);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);

  (*(v12 + 8))(v10, v11);
  sub_2381CA27C();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2381B8130()
{
  v1 = v0[19];
  (*(v0[8] + 16))(v0[9], v0[5] + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v0[7]);
  v2 = v1;
  v3 = sub_2381CA08C();
  v4 = sub_2381CA2CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_23819C000, v3, v4, "Failed to get tracking Summary: %@", v5, 0xCu);
    sub_2381A6070(v6, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v6, -1, -1);
    MEMORY[0x2383EBBE0](v5, -1, -1);
  }

  v9 = v0[9];
  v10 = v0[7];
  v11 = v0[8];

  (*(v11 + 8))(v9, v10);
  sub_2381CA27C();

  v12 = v0[1];

  return v12();
}

uint64_t sub_2381B82EC(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v98 = a6;
  v97 = a4;
  v9 = sub_2381CA0AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for DockAccessory.TrackedSubjectType(0);
  v111 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v14 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = v88 - v16;
  v109 = sub_2381C9FDC();
  v17 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v106 = v88 - v20;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3910, &qword_2381CC938);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = v88 - v21;
  v22 = type metadata accessor for DockAccessory.TrackingState(0);
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v94 = v88 - v26;
  if (a2 >> 60 != 15)
  {
    v91 = v24;
    v92 = v25;
    v99 = v14;
    sub_2381C9FCC();
    v27 = a1;
    sub_2381C89E4(a1, a2);
    v28 = sub_2381C9F9C();
    if (v28)
    {
      v29 = v28;
      v89 = v27;
      v90 = a2;
      v30 = sub_2381C9FBC();
      v31 = v30;
      if (v30 >> 62)
      {
        v85 = v30;
        result = sub_2381CA39C();
        v31 = v85;
        v33 = v99;
        if (result)
        {
          goto LABEL_5;
        }
      }

      else
      {
        result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v33 = v99;
        if (result)
        {
LABEL_5:
          v88[1] = v29;
          if (result < 1)
          {
            __break(1u);
            return result;
          }

          v34 = 0;
          v103 = v31 & 0xC000000000000001;
          v102 = *MEMORY[0x277D05BF8];
          v100 = (v17 + 8);
          v101 = (v17 + 104);
          v35 = MEMORY[0x277D84F90];
          v104 = result;
          v105 = v31;
          do
          {
            if (v103)
            {
              MEMORY[0x2383EB4F0](v34);
            }

            else
            {
            }

            v37 = v106;
            sub_2381C9F7C();
            v39 = v108;
            v38 = v109;
            (*v101)(v108, v102, v109);
            sub_2381C41C0(&qword_27DEF3918, MEMORY[0x277D05C00], MEMORY[0x277D05C08]);
            sub_2381CA1AC();
            sub_2381CA1AC();
            v40 = *v100;
            (*v100)(v39, v38);
            v40(v37, v38);
            if (v113 == v112)
            {
              v41 = v110;
              sub_2381C9F2C();
              sub_2381C9F6C();
              v43 = v42;
              v45 = v44;
              v47 = v46;
              v49 = v48;
              v50 = sub_2381C9F3C();
              v52 = v51;
              v53 = sub_2381C9F4C();
              v55 = v54;
              v56 = sub_2381C9F5C();
              v58 = v57;
              v59 = type metadata accessor for DockAccessory.TrackedPerson(0);
              v60 = &v41[v59[5]];
              *v60 = v43;
              *(v60 + 1) = v45;
              *(v60 + 2) = v47;
              *(v60 + 3) = v49;
              v61 = &v41[v59[6]];
              *v61 = v50;
              v61[8] = v52 & 1;
              v62 = &v41[v59[7]];
              *v62 = v53;
              v62[8] = v55 & 1;
              v63 = &v41[v59[8]];
              *v63 = v56;
              v63[8] = v58 & 1;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v35 = sub_2381A2FC4(0, v35[2] + 1, 1, v35);
              }

              v65 = v35[2];
              v64 = v35[3];
              v66 = v65 + 1;
              v33 = v99;
              if (v65 >= v64 >> 1)
              {
                v35 = sub_2381A2FC4((v64 > 1), v65 + 1, 1, v35);
              }

              v36 = v110;
            }

            else
            {
              sub_2381C9F2C();
              sub_2381C9F6C();
              v68 = v67;
              v70 = v69;
              v72 = v71;
              v74 = v73;
              v75 = sub_2381C9F3C();
              v77 = v76;
              v78 = type metadata accessor for DockAccessory.TrackedObject(0);
              v79 = (v33 + *(v78 + 20));
              *v79 = v68;
              v79[1] = v70;
              v79[2] = v72;
              v79[3] = v74;
              v80 = v33 + *(v78 + 24);
              *v80 = v75;
              *(v80 + 8) = v77 & 1;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v35 = sub_2381A2FC4(0, v35[2] + 1, 1, v35);
              }

              v65 = v35[2];
              v81 = v35[3];
              v66 = v65 + 1;
              if (v65 >= v81 >> 1)
              {
                v35 = sub_2381A2FC4((v81 > 1), v65 + 1, 1, v35);
              }

              v36 = v33;
            }

            ++v34;

            v35[2] = v66;
            sub_2381C4A44(v36, v35 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v65, type metadata accessor for DockAccessory.TrackedSubjectType);
          }

          while (v104 != v34);

          goto LABEL_29;
        }
      }

      v35 = MEMORY[0x277D84F90];
LABEL_29:
      v86 = v94;
      sub_2381C9F8C();
      *(v86 + *(v91 + 20)) = v35;
      sub_2381C4208(v86, v92, type metadata accessor for DockAccessory.TrackingState);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3908, &qword_2381CC910);
      v87 = v93;
      sub_2381CA26C();
      (*(v95 + 8))(v87, v96);
      if (v97)
      {
        sub_2381CA27C();
        sub_2381C84F4(v89, v90);

        return sub_2381C4AAC(v86, type metadata accessor for DockAccessory.TrackingState);
      }

      else
      {
        sub_2381C4AAC(v86, type metadata accessor for DockAccessory.TrackingState);
        sub_2381C84F4(v89, v90);
      }
    }

    sub_2381C84F4(a1, a2);
  }

  (*(v10 + 16))(v12, a5 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v9);
  v82 = sub_2381CA08C();
  v83 = sub_2381CA2CC();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_23819C000, v82, v83, "Got nil tracking trackingSummary", v84, 2u);
    MEMORY[0x2383EBBE0](v84, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3908, &qword_2381CC910);
  return sub_2381CA27C();
}

uint64_t sub_2381B8C4C()
{
  *(v1 + 40) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B8CE8, 0, 0);
}

uint64_t sub_2381B8CE8()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  v0[7] = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[8] = v3;
  if (v3)
  {
    v7 = (*MEMORY[0x277D05B60] + MEMORY[0x277D05B60]);
    v3;
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_2381B8E0C;

    return v7();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2381B8E0C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;
  *(v4 + 96) = v2;

  if (v2)
  {
    v5 = sub_2381B915C;
  }

  else
  {

    v5 = sub_2381B8F2C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void *sub_2381B8F2C()
{
  if (v0[11] >> 60 == 15)
  {
    goto LABEL_14;
  }

  v1 = v0[5];
  v2 = *(v1 + v0[7]);
  if (!v2)
  {
    v22 = v0[10];
LABEL_11:
    sub_2381C84F4(v22, v0[11]);
    goto LABEL_14;
  }

  v3 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper);
  if (!v3)
  {
    v22 = v0[10];
    goto LABEL_11;
  }

  v4 = v3;
  v5 = v2;
  v6 = sub_2381C9B0C();
  v7 = sub_2381C991C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = sub_2381C9B0C();

    sub_2381C9A2C();
    v12 = sub_2381CA2FC();

    v14 = v0[10];
    v13 = v0[11];
    if (v12)
    {
      v15 = v0[6];
      v24 = sub_2381C992C();
      v17 = v16;
      v18 = sub_2381CA24C();
      (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v4;
      v19[5] = v24;
      v19[6] = v17;
      v4 = v4;
      sub_23819DED4(0, 0, v15, &unk_2381CC930, v19);
    }

    v20 = v14;
    v21 = v13;
  }

  else
  {
    v20 = v0[10];
    v21 = v0[11];
  }

  sub_2381C84F4(v20, v21);

LABEL_14:

  v23 = v0[1];

  return v23();
}

uint64_t sub_2381B915C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DockAccessory.track(_:cameraInformation:)(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  *(v2 + 80) = a2[4];
  *(v2 + 96) = v4;
  *(v2 + 105) = *(a2 + 89);
  v5 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v5;
  v6 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v6;
  v7 = swift_task_alloc();
  *(v2 + 128) = v7;
  *v7 = v2;
  v7[1] = sub_2381B9288;

  return sub_2381B93BC(a1, (v2 + 16), 0);
}

{
  v4 = a2[5];
  *(v2 + 80) = a2[4];
  *(v2 + 96) = v4;
  *(v2 + 105) = *(a2 + 89);
  v5 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v5;
  v6 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v6;
  v7 = swift_task_alloc();
  *(v2 + 128) = v7;
  *v7 = v2;
  v7[1] = sub_2381B9288;

  return sub_2381BBF14(a1, (v2 + 16), 0);
}

uint64_t sub_2381B9288()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381C9834, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2381B93BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 128) = a3;
  *(v4 + 136) = v3;
  *(v4 + 120) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  *(v4 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3478, &qword_2381CB390);
  *(v4 + 152) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF36F8, &qword_2381CC0B0);
  *(v4 + 160) = v6;
  *(v4 + 168) = *(v6 - 8);
  *(v4 + 176) = swift_task_alloc();
  v7 = type metadata accessor for DockAccessory.Observation(0);
  *(v4 + 184) = v7;
  *(v4 + 192) = *(v7 - 8);
  *(v4 + 200) = swift_task_alloc();
  v8 = sub_2381CA0AC();
  *(v4 + 208) = v8;
  *(v4 + 216) = *(v8 - 8);
  *(v4 + 224) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a2;
  v11 = a2[1];
  *(v4 + 232) = v9;
  *(v4 + 240) = v10;
  *(v4 + 248) = v11;
  *(v4 + 408) = *(a2 + 16);
  v12 = *(a2 + 3);
  *(v4 + 256) = *(a2 + 2);
  *(v4 + 272) = v12;
  v13 = *(a2 + 4);
  *(v4 + 409) = *(a2 + 80);
  v14 = *(a2 + 11);
  *(v4 + 288) = v13;
  *(v4 + 304) = v14;
  *(v4 + 410) = *(a2 + 104);

  return MEMORY[0x2822009F8](sub_2381B95F8, 0, 0);
}

uint64_t sub_2381B95F8()
{
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DEF32C8;
  v2 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  v3 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v1 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
  v5 = *(v1 + v2);

  os_unfair_lock_unlock(v5 + 4);

  if ((v4 & 1) == 0)
  {
    return sub_2381CA38C();
  }

  v6 = v0[17];
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory__tracking;
  v0[40] = OBJC_IVAR____TtC7DockKit13DockAccessory__tracking;
  if ((*(v6 + v7) & 1) == 0)
  {
    (*(v0[27] + 16))(v0[29], v6 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v0[26]);
    v8 = sub_2381CA08C();
    v9 = sub_2381CA2DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23819C000, v8, v9, "Starting tracker", v10, 2u);
      MEMORY[0x2383EBBE0](v10, -1, -1);
    }

    v11 = v0[29];
    v12 = v0[26];
    v13 = v0[27];
    v14 = v0[17];

    (*(v13 + 8))(v11, v12);
    v15 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v16 = *(v14 + v15);
    v0[41] = v16;
    if (v16)
    {
      v112 = (*MEMORY[0x277D05B68] + MEMORY[0x277D05B68]);
      v16;
      v17 = swift_task_alloc();
      v0[42] = v17;
      *v17 = v0;
      v17[1] = sub_2381BA538;

      return v112();
    }

    *(v0[17] + v0[40]) = 1;
  }

  v19 = v0[31];
  v20 = [objc_allocWithZone(sub_2381C9D0C()) init];
  v106 = v0;
  v0[43] = v20;
  sub_2381C8508(0, &qword_27DEF38D8, 0x277CCACA8);
  sub_2381CA30C();
  sub_2381C9CEC();
  if (v19 != 2)
  {
    v25 = sub_2381CA0FC();
    v27 = v26;
    if (v25 != sub_2381CA0FC() || v27 != v28)
    {
      v29 = sub_2381CA40C();

      if ((v29 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_22;
    }

    goto LABEL_82;
  }

  v21 = sub_2381CA0FC();
  v23 = v22;
  if (v21 == sub_2381CA0FC() && v23 == v24)
  {
LABEL_82:

    goto LABEL_22;
  }

  sub_2381CA40C();

LABEL_22:
  sub_2381CA30C();
  sub_2381C9CEC();
  while (1)
  {
    v30 = v106;
    v31 = v106[15];
    sub_2381C9CBC();
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = v106[24];
      v34 = v106[25];
      v110 = v106[23];
      v35 = v106[21];
      v36 = v106[15] + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v107 = *(v33 + 72);
      v108 = (v35 + 48);
      v105 = (v35 + 8);
      v113 = v20;
      do
      {
        sub_2381C4208(v36, v30[25], type metadata accessor for DockAccessory.Observation);
        v37 = v30[25];
        v39 = v30[19];
        v38 = v30[20];
        v40 = v34[2];
        v41 = v34[3];
        v42 = v34[4];
        v43 = v34[5];
        v115.origin.x = v40;
        v115.origin.y = v41;
        v115.size.width = v42;
        v115.size.height = v43;
        CGRectGetMinX(v115);
        v116.origin.x = v40;
        v116.origin.y = v41;
        v116.size.width = v42;
        v116.size.height = v43;
        CGRectGetMinY(v116);
        v117.origin.x = v40;
        v117.origin.y = v41;
        v117.size.width = v42;
        v117.size.height = v43;
        CGRectGetHeight(v117);
        v118.origin.x = v40;
        v118.origin.y = v41;
        v118.size.width = v42;
        v118.size.height = v43;
        CGRectGetWidth(v118);
        v119.origin.x = v40;
        v119.origin.y = v41;
        v119.size.width = v42;
        v119.size.height = v43;
        CGRectGetHeight(v119);
        sub_2381A6008(v37 + *(v110 + 28), v39, &qword_27DEF3478, &qword_2381CB390);
        if ((*v108)(v39, 1, v38) == 1)
        {
          sub_2381A6070(v30[19], &qword_27DEF3478, &qword_2381CB390);
        }

        else
        {
          v44 = v30[22];
          v46 = v30[19];
          v45 = v30[20];
          v47 = [objc_opt_self() radians];
          sub_2381C98BC();

          v48 = *v105;
          (*v105)(v46, v45);
          sub_2381C98AC();
          v48(v44, v45);
          v30 = v106;
        }

        v49 = objc_allocWithZone(sub_2381C99DC());
        sub_2381C99CC();
        v20 = v113;
        v50 = sub_2381C9CAC();
        v52 = v51;
        MEMORY[0x2383EB370](v50, v51, v53, v54, v55);
        if (*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2381CA1FC();
        }

        v56 = v30[25];
        sub_2381CA20C();
        v50(v106 + 2, 0);
        sub_2381C4AAC(v56, type metadata accessor for DockAccessory.Observation);
        v36 += v107;
        --v32;
      }

      while (v32);
    }

    if ((*(v30 + 409) & 1) == 0)
    {
      v57 = v30 + 37;
      v58 = v30[36];
      v59 = v30[34];
      v60 = v59;
      v61 = v106[32];
      v62 = v61;
      *&v63 = v58;
      *(&v63 + 1) = *v57;
      v109 = v63;
      v64 = v106[33];
      v65 = v106[35];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38E0, &qword_2381CC8D8);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_2381CB350;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38E8, &qword_2381CC8E0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_2381CB350;
      *(v67 + 32) = v61.i32[0];
      *(v67 + 36) = v59.i32[0];
      v30 = v106;
      *(v67 + 40) = v58;
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38F0, &qword_2381CC8E8);
      *(v66 + 56) = v68;
      *(v66 + 32) = v67;
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_2381CB350;
      *(v69 + 32) = vzip2_s32(v62, v60);
      *(v69 + 40) = DWORD1(v109);
      *(v66 + 88) = v68;
      *(v66 + 64) = v69;
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_2381CB350;
      *(v70 + 32) = vzip1_s32(v64, v65);
      *(v70 + 40) = DWORD2(v109);
      *(v66 + 120) = v68;
      *(v66 + 96) = v70;
      v71 = objc_allocWithZone(MEMORY[0x277CBEA60]);
      v72 = sub_2381CA1CC();

      [v71 initWithArray_];

      sub_2381C9C8C();
    }

    if ((*(v30 + 410) & 1) == 0)
    {
      sub_2381C9CCC();
      sub_2381C9CDC();
    }

    v73 = *(v30 + 408);
    if (v73 <= 3)
    {
      break;
    }

LABEL_41:
    if (v73 > 5)
    {
      goto LABEL_50;
    }

    if (v73 != 4)
    {
      goto LABEL_60;
    }

    result = sub_2381C9DDC();
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_86;
    }

    v73 = 0x7FFFFFFF;
    if (result <= 0x7FFFFFFF)
    {
      goto LABEL_68;
    }

    __break(1u);
LABEL_46:
    if (v73 != 2)
    {
      goto LABEL_63;
    }

    result = sub_2381C9DDC();
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_87;
    }

    v73 = 0x7FFFFFFF;
    if (result <= 0x7FFFFFFF)
    {
      goto LABEL_68;
    }

    __break(1u);
LABEL_50:
    if (v73 != 6)
    {
      goto LABEL_66;
    }

    result = sub_2381C9DDC();
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_88;
    }

    if (result <= 0x7FFFFFFF)
    {
      goto LABEL_68;
    }

    __break(1u);
LABEL_54:
    v74 = sub_2381CA0FC();
    v76 = v75;
    if (v74 == sub_2381CA0FC() && v76 == v77)
    {
      goto LABEL_82;
    }

    v99 = sub_2381CA40C();

    if (v99)
    {
      goto LABEL_22;
    }

    v100 = sub_2381CA0FC();
    v102 = v101;
    if (v100 == sub_2381CA0FC() && v102 == v103)
    {
      goto LABEL_82;
    }

    v104 = sub_2381CA40C();

    if (v104)
    {
      goto LABEL_22;
    }
  }

  if (*(v30 + 408) > 1u)
  {
    goto LABEL_46;
  }

  if (!*(v30 + 408))
  {
    result = sub_2381C9DDC();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v73 = 0x7FFFFFFF;
    if (result <= 0x7FFFFFFF)
    {
      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_41;
  }

  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
    goto LABEL_89;
  }

  if (result > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_60:
    result = sub_2381C9DDC();
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_90;
    }

    if (result > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_63:
      result = sub_2381C9DDC();
      if (result < 0xFFFFFFFF80000000)
      {
        goto LABEL_91;
      }

      if (result > 0x7FFFFFFF)
      {
        __break(1u);
LABEL_66:
        result = sub_2381C9DDC();
        if (result < 0xFFFFFFFF80000000)
        {
          goto LABEL_92;
        }

        if (result > 0x7FFFFFFF)
        {
LABEL_93:
          __break(1u);
          return result;
        }
      }
    }
  }

LABEL_68:
  v78 = v30[16];
  sub_2381C9C9C();
  v79 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v79 timeIntervalSince1970];

  sub_2381C9CFC();
  v80 = v30[17];
  if (v78)
  {
    v81 = v30[16];
    v82 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v83 = *(v80 + v82);
    v30[44] = v83;
    if (v83)
    {
      v84 = objc_allocWithZone(MEMORY[0x277CBF758]);
      v85 = v81;
      v83;
      v86 = [v84 initWithCVPixelBuffer_];
      v30[45] = v86;
      v111 = (*MEMORY[0x277D05B88] + MEMORY[0x277D05B88]);
      v87 = swift_task_alloc();
      v30[46] = v87;
      *v87 = v30;
      v87[1] = sub_2381BB2DC;
      v88 = v20;
      v89 = v86;
      goto LABEL_73;
    }

LABEL_76:
    v93 = v30[43];
    v94 = v30[18];
    v95 = v30[17];
    v96 = sub_2381CA24C();
    (*(*(v96 - 8) + 56))(v94, 1, 1, v96);
    v97 = swift_allocObject();
    v97[2] = 0;
    v97[3] = 0;
    v97[4] = v95;

    sub_23819DBD4(0, 0, v94, &unk_2381CC8D0, v97);

    v98 = v30[1];

    return v98();
  }

  else
  {
    v90 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v91 = *(v80 + v90);
    v30[48] = v91;
    if (!v91)
    {
      goto LABEL_76;
    }

    v111 = (*MEMORY[0x277D05B88] + MEMORY[0x277D05B88]);
    v91;
    v92 = swift_task_alloc();
    v30[49] = v92;
    *v92 = v30;
    v92[1] = sub_2381BB568;
    v88 = v20;
    v89 = 0;
LABEL_73:

    return v111(v88, v89);
  }
}

uint64_t sub_2381BA538()
{
  v1 = *(*v0 + 328);

  return MEMORY[0x2822009F8](sub_2381BA64C, 0, 0);
}

uint64_t sub_2381BA64C()
{
  *(v0[17] + v0[40]) = 1;
  v1 = v0[31];
  v2 = [objc_allocWithZone(sub_2381C9D0C()) init];
  v91 = v0;
  v0[43] = v2;
  sub_2381C8508(0, &qword_27DEF38D8, 0x277CCACA8);
  sub_2381CA30C();
  sub_2381C9CEC();
  if (v1 == 2)
  {
    v3 = sub_2381CA0FC();
    v5 = v4;
    if (v3 != sub_2381CA0FC() || v5 != v6)
    {
      sub_2381CA40C();
    }

    goto LABEL_14;
  }

  v8 = sub_2381CA0FC();
  v10 = v9;
  if (v8 == sub_2381CA0FC() && v10 == v11)
  {
    goto LABEL_14;
  }

  v13 = sub_2381CA40C();

  if (v13)
  {
LABEL_15:
    sub_2381CA30C();
    sub_2381C9CEC();
    goto LABEL_16;
  }

  v14 = sub_2381CA0FC();
  v16 = v15;
  if (v14 == sub_2381CA0FC() && v16 == v17)
  {
    goto LABEL_14;
  }

  v84 = sub_2381CA40C();

  if (v84)
  {
    goto LABEL_15;
  }

  v85 = sub_2381CA0FC();
  v87 = v86;
  if (v85 == sub_2381CA0FC() && v87 == v88)
  {
LABEL_14:

    goto LABEL_15;
  }

  v89 = sub_2381CA40C();

  if (v89)
  {
    goto LABEL_15;
  }

LABEL_16:
  v18 = v0;
  v19 = v0[15];
  sub_2381C9CBC();
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v91[24];
    v22 = v91[25];
    v95 = v91[23];
    v23 = v91[21];
    v24 = v91[15] + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v92 = *(v21 + 72);
    v93 = (v23 + 48);
    v90 = (v23 + 8);
    v97 = v2;
    do
    {
      sub_2381C4208(v24, v18[25], type metadata accessor for DockAccessory.Observation);
      v25 = v18[25];
      v27 = v18[19];
      v26 = v18[20];
      v28 = v22[2];
      v29 = v22[3];
      v30 = v22[4];
      v31 = v22[5];
      v99.origin.x = v28;
      v99.origin.y = v29;
      v99.size.width = v30;
      v99.size.height = v31;
      CGRectGetMinX(v99);
      v100.origin.x = v28;
      v100.origin.y = v29;
      v100.size.width = v30;
      v100.size.height = v31;
      CGRectGetMinY(v100);
      v101.origin.x = v28;
      v101.origin.y = v29;
      v101.size.width = v30;
      v101.size.height = v31;
      CGRectGetHeight(v101);
      v102.origin.x = v28;
      v102.origin.y = v29;
      v102.size.width = v30;
      v102.size.height = v31;
      CGRectGetWidth(v102);
      v103.origin.x = v28;
      v103.origin.y = v29;
      v103.size.width = v30;
      v103.size.height = v31;
      CGRectGetHeight(v103);
      sub_2381A6008(v25 + *(v95 + 28), v27, &qword_27DEF3478, &qword_2381CB390);
      if ((*v93)(v27, 1, v26) == 1)
      {
        sub_2381A6070(v18[19], &qword_27DEF3478, &qword_2381CB390);
      }

      else
      {
        v32 = v18[22];
        v34 = v18[19];
        v33 = v18[20];
        v35 = [objc_opt_self() radians];
        sub_2381C98BC();

        v36 = *v90;
        (*v90)(v34, v33);
        sub_2381C98AC();
        v36(v32, v33);
        v18 = v91;
      }

      v37 = objc_allocWithZone(sub_2381C99DC());
      sub_2381C99CC();
      v2 = v97;
      v38 = sub_2381C9CAC();
      v40 = v39;
      MEMORY[0x2383EB370](v38, v39, v41, v42, v43);
      if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2381CA1FC();
      }

      v44 = v18[25];
      sub_2381CA20C();
      v38(v91 + 2, 0);
      sub_2381C4AAC(v44, type metadata accessor for DockAccessory.Observation);
      v24 += v92;
      --v20;
    }

    while (v20);
  }

  if ((*(v18 + 409) & 1) == 0)
  {
    v45 = v18 + 37;
    v46 = v18[36];
    v47 = v18[34];
    v48 = v47;
    v49 = v91[32];
    v50 = v49;
    *&v51 = v46;
    *(&v51 + 1) = *v45;
    v94 = v51;
    v52 = v91[33];
    v53 = v91[35];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38E0, &qword_2381CC8D8);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_2381CB350;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38E8, &qword_2381CC8E0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_2381CB350;
    *(v55 + 32) = v49.i32[0];
    *(v55 + 36) = v47.i32[0];
    v18 = v91;
    *(v55 + 40) = v46;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38F0, &qword_2381CC8E8);
    *(v54 + 56) = v56;
    *(v54 + 32) = v55;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_2381CB350;
    *(v57 + 32) = vzip2_s32(v50, v48);
    *(v57 + 40) = DWORD1(v94);
    *(v54 + 88) = v56;
    *(v54 + 64) = v57;
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_2381CB350;
    *(v58 + 32) = vzip1_s32(v52, v53);
    *(v58 + 40) = DWORD2(v94);
    *(v54 + 120) = v56;
    *(v54 + 96) = v58;
    v59 = objc_allocWithZone(MEMORY[0x277CBEA60]);
    v60 = sub_2381CA1CC();

    [v59 initWithArray_];

    sub_2381C9C8C();
  }

  if ((*(v18 + 410) & 1) == 0)
  {
    sub_2381C9CCC();
    sub_2381C9CDC();
  }

  v61 = *(v18 + 408);
  if (v61 <= 3)
  {
    if (*(v18 + 408) > 1u)
    {
      goto LABEL_39;
    }

    if (*(v18 + 408))
    {
      goto LABEL_47;
    }

    result = sub_2381C9DDC();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v61 = 0x7FFFFFFF;
    if (result <= 0x7FFFFFFF)
    {
      goto LABEL_58;
    }

    __break(1u);
  }

  if (v61 > 5)
  {
    goto LABEL_43;
  }

  if (v61 != 4)
  {
    goto LABEL_50;
  }

  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
    goto LABEL_75;
  }

  v61 = 0x7FFFFFFF;
  if (result <= 0x7FFFFFFF)
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_39:
  if (v61 != 2)
  {
    goto LABEL_53;
  }

  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
    goto LABEL_76;
  }

  v61 = 0x7FFFFFFF;
  if (result <= 0x7FFFFFFF)
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_43:
  if (v61 != 6)
  {
    goto LABEL_56;
  }

  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
    goto LABEL_77;
  }

  if (result <= 0x7FFFFFFF)
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_47:
  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (result <= 0x7FFFFFFF)
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_50:
  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (result <= 0x7FFFFFFF)
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_53:
  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (result <= 0x7FFFFFFF)
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_56:
  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_82:
    __break(1u);
    return result;
  }

LABEL_58:
  v63 = v18[16];
  sub_2381C9C9C();
  v64 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v64 timeIntervalSince1970];

  sub_2381C9CFC();
  v65 = v18[17];
  if (v63)
  {
    v66 = v18[16];
    v67 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v68 = *(v65 + v67);
    v18[44] = v68;
    if (v68)
    {
      v69 = objc_allocWithZone(MEMORY[0x277CBF758]);
      v70 = v66;
      v68;
      v71 = [v69 initWithCVPixelBuffer_];
      v18[45] = v71;
      v96 = (*MEMORY[0x277D05B88] + MEMORY[0x277D05B88]);
      v72 = swift_task_alloc();
      v18[46] = v72;
      *v72 = v18;
      v72[1] = sub_2381BB2DC;
      v73 = v2;
      v74 = v71;
LABEL_63:

      return v96(v73, v74);
    }
  }

  else
  {
    v75 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v76 = *(v65 + v75);
    v18[48] = v76;
    if (v76)
    {
      v96 = (*MEMORY[0x277D05B88] + MEMORY[0x277D05B88]);
      v76;
      v77 = swift_task_alloc();
      v18[49] = v77;
      *v77 = v18;
      v77[1] = sub_2381BB568;
      v73 = v2;
      v74 = 0;
      goto LABEL_63;
    }
  }

  v78 = v18[43];
  v79 = v18[18];
  v80 = v18[17];
  v81 = sub_2381CA24C();
  (*(*(v81 - 8) + 56))(v79, 1, 1, v81);
  v82 = swift_allocObject();
  v82[2] = 0;
  v82[3] = 0;
  v82[4] = v80;

  sub_23819DBD4(0, 0, v79, &unk_2381CC8D0, v82);

  v83 = v18[1];

  return v83();
}

uint64_t sub_2381BB2DC()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_2381BB7E8;
  }

  else
  {
    v4 = *(v2 + 352);

    v3 = sub_2381BB3FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2381BB3FC()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 144);
  v3 = *(v0 + 136);
  v4 = sub_2381CA24C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  sub_23819DBD4(0, 0, v2, &unk_2381CC8D0, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2381BB568()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_2381BBA1C;
  }

  else
  {

    v3 = sub_2381BB684;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2381BB684()
{
  v1 = v0[43];
  v2 = v0[18];
  v3 = v0[17];
  v4 = sub_2381CA24C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  sub_23819DBD4(0, 0, v2, &unk_2381CC8D0, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2381BB7E8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 128);

  v3 = *(v0 + 376);
  (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 136) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 208));
  v4 = v3;
  v5 = sub_2381CA08C();
  v6 = sub_2381CA2DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v3;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_23819C000, v5, v6, "caught err %@, returning public", v7, 0xCu);
    sub_2381A6070(v8, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v8, -1, -1);
    MEMORY[0x2383EBBE0](v7, -1, -1);
  }

  v11 = *(v0 + 344);
  v12 = *(v0 + 224);
  v13 = *(v0 + 208);
  v14 = *(v0 + 216);

  (*(v14 + 8))(v12, v13);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v3, v15);
  swift_willThrow();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2381BBA1C()
{
  v1 = *(v0 + 400);
  (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 136) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 208));
  v2 = v1;
  v3 = sub_2381CA08C();
  v4 = sub_2381CA2DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_23819C000, v3, v4, "caught err %@, returning public", v5, 0xCu);
    sub_2381A6070(v6, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v6, -1, -1);
    MEMORY[0x2383EBBE0](v5, -1, -1);
  }

  v9 = *(v0 + 344);
  v10 = *(v0 + 224);
  v11 = *(v0 + 208);
  v12 = *(v0 + 216);

  (*(v12 + 8))(v10, v11);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v1, v13);
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t DockAccessory.track(_:cameraInformation:image:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v6;
  *(v3 + 105) = *(a2 + 89);
  v7 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  v8 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v8;
  v9 = swift_task_alloc();
  *(v3 + 128) = v9;
  *v9 = v3;
  v9[1] = sub_2381BBD0C;

  return sub_2381B93BC(a1, (v3 + 16), a3);
}

{
  v6 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v6;
  *(v3 + 105) = *(a2 + 89);
  v7 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  v8 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v8;
  v9 = swift_task_alloc();
  *(v3 + 128) = v9;
  *v9 = v3;
  v9[1] = sub_2381B9288;

  return sub_2381BBF14(a1, (v3 + 16), a3);
}

uint64_t sub_2381BBD0C()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381BBE40, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2381BBF14(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = v3;
  *(v4 + 144) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  *(v4 + 168) = swift_task_alloc();
  v6 = sub_2381CA0AC();
  *(v4 + 176) = v6;
  *(v4 + 184) = *(v6 - 8);
  *(v4 + 192) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  *(v4 + 200) = v7;
  *(v4 + 208) = v8;
  *(v4 + 216) = v9;
  *(v4 + 65) = *(a2 + 16);
  v10 = *(a2 + 3);
  *(v4 + 16) = *(a2 + 2);
  *(v4 + 32) = v10;
  *(v4 + 48) = *(a2 + 4);
  *(v4 + 64) = *(a2 + 80);
  *(v4 + 224) = *(a2 + 11);
  *(v4 + 66) = *(a2 + 104);

  return MEMORY[0x2822009F8](sub_2381BC058, 0, 0);
}

uint64_t sub_2381BC058()
{
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DEF32C8;
  v2 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  v3 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v1 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
  v5 = *(v1 + v2);

  os_unfair_lock_unlock(v5 + 4);

  if ((v4 & 1) == 0)
  {
    return sub_2381CA38C();
  }

  v6 = *(v0 + 160);
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory__tracking;
  *(v0 + 240) = OBJC_IVAR____TtC7DockKit13DockAccessory__tracking;
  if ((*(v6 + v7) & 1) == 0)
  {
    (*(*(v0 + 184) + 16))(*(v0 + 200), v6 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 176));
    v8 = sub_2381CA08C();
    v9 = sub_2381CA2DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23819C000, v8, v9, "Starting tracker", v10, 2u);
      MEMORY[0x2383EBBE0](v10, -1, -1);
    }

    v11 = *(v0 + 200);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = *(v0 + 160);

    (*(v13 + 8))(v11, v12);
    v15 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v16 = *(v14 + v15);
    *(v0 + 248) = v16;
    if (v16)
    {
      v74 = (*MEMORY[0x277D05B68] + MEMORY[0x277D05B68]);
      v16;
      v17 = swift_task_alloc();
      *(v0 + 256) = v17;
      *v17 = v0;
      v17[1] = sub_2381BC948;

      return v74();
    }

    *(*(v0 + 160) + *(v0 + 240)) = 1;
  }

  if (*(v0 + 216) != 2)
  {
    v30 = sub_2381CA0FC();
    v32 = v31;
    if (v30 == sub_2381CA0FC() && v32 == v33)
    {
    }

    else
    {
      v35 = sub_2381CA40C();

      if ((v35 & 1) == 0)
      {
        v36 = sub_2381CA0FC();
        v38 = v37;
        if (v36 == sub_2381CA0FC() && v38 == v39)
        {
        }

        else
        {
          v68 = sub_2381CA40C();

          if ((v68 & 1) == 0)
          {
            v69 = sub_2381CA0FC();
            v71 = v70;
            if (v69 == sub_2381CA0FC() && v71 == v72)
            {
            }

            else
            {
              v73 = sub_2381CA40C();

              if ((v73 & 1) == 0)
              {
                v29 = 0;
                goto LABEL_33;
              }
            }

            v29 = 2;
            goto LABEL_33;
          }
        }

        v29 = 3;
        goto LABEL_33;
      }
    }

    v29 = 4;
    goto LABEL_33;
  }

  v19 = sub_2381CA0FC();
  v21 = v20;
  if (v19 == sub_2381CA0FC() && v21 == v22)
  {
    goto LABEL_21;
  }

  v24 = sub_2381CA40C();

  if (v24)
  {
LABEL_22:
    v29 = 0;
    goto LABEL_33;
  }

  v25 = sub_2381CA0FC();
  v27 = v26;
  if (v25 == sub_2381CA0FC() && v27 == v28)
  {
LABEL_21:

    goto LABEL_22;
  }

  v67 = sub_2381CA40C();

  if (v67)
  {
    goto LABEL_22;
  }

  v29 = 0;
LABEL_33:
  v40 = qword_2381CCA40[*(v0 + 65)];
  v41 = *(v0 + 152);
  v42 = objc_allocWithZone(sub_2381C9D3C());
  v43 = sub_2381C9D2C();
  *(v0 + 264) = v43;
  v44 = *(v0 + 160);
  if (v41)
  {
    v45 = *(v0 + 152);
    v46 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v47 = *(v44 + v46);
    *(v0 + 272) = v47;
    if (v47)
    {
      v48 = objc_allocWithZone(MEMORY[0x277CBF758]);
      v49 = v45;
      v47;
      v50 = [v48 initWithCVPixelBuffer_];
      *(v0 + 280) = v50;
      v75 = (*MEMORY[0x277D05B80] + MEMORY[0x277D05B80]);
      v51 = v43;
      v52 = swift_task_alloc();
      *(v0 + 288) = v52;
      *v52 = v0;
      v52[1] = sub_2381BD0C0;
      v53 = *(v0 + 144);
      v54 = v50;
      v55 = v29;
      v56 = v40;
      v57 = v43;
LABEL_38:

      return v75(v53, v54, v55, v56, v57);
    }
  }

  else
  {
    v58 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v59 = *(v44 + v58);
    *(v0 + 304) = v59;
    if (v59)
    {
      v75 = (*MEMORY[0x277D05B80] + MEMORY[0x277D05B80]);
      v59;
      v60 = swift_task_alloc();
      *(v0 + 312) = v60;
      *v60 = v0;
      v60[1] = sub_2381BD328;
      v53 = *(v0 + 144);
      v54 = 0;
      v55 = v29;
      v56 = v40;
      v57 = v43;
      goto LABEL_38;
    }
  }

  v61 = *(v0 + 264);
  v63 = *(v0 + 160);
  v62 = *(v0 + 168);
  v64 = sub_2381CA24C();
  (*(*(v64 - 8) + 56))(v62, 1, 1, v64);
  v65 = swift_allocObject();
  v65[2] = 0;
  v65[3] = 0;
  v65[4] = v63;

  sub_23819DBD4(0, 0, v62, &unk_2381CC8C0, v65);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_2381BC948()
{
  v1 = *(*v0 + 248);

  return MEMORY[0x2822009F8](sub_2381BCA5C, 0, 0);
}

uint64_t sub_2381BCA5C()
{
  *(*(v0 + 160) + *(v0 + 240)) = 1;
  if (*(v0 + 216) != 2)
  {
    v14 = sub_2381CA0FC();
    v16 = v15;
    if (v14 == sub_2381CA0FC() && v16 == v17)
    {
    }

    else
    {
      v19 = sub_2381CA40C();

      if ((v19 & 1) == 0)
      {
        v20 = sub_2381CA0FC();
        v22 = v21;
        if (v20 == sub_2381CA0FC() && v22 == v23)
        {
        }

        else
        {
          v25 = sub_2381CA40C();

          if ((v25 & 1) == 0)
          {
            v26 = sub_2381CA0FC();
            v28 = v27;
            if (v26 == sub_2381CA0FC() && v28 == v29)
            {
            }

            else
            {
              v58 = sub_2381CA40C();

              if ((v58 & 1) == 0)
              {
                v13 = 0;
                goto LABEL_31;
              }
            }

            v13 = 2;
            goto LABEL_31;
          }
        }

        v13 = 3;
        goto LABEL_31;
      }
    }

    v13 = 4;
    goto LABEL_31;
  }

  v1 = sub_2381CA0FC();
  v3 = v2;
  if (v1 == sub_2381CA0FC() && v3 == v4)
  {
    goto LABEL_27;
  }

  v6 = sub_2381CA40C();

  if (v6)
  {
LABEL_28:
    v13 = 0;
    goto LABEL_31;
  }

  v7 = sub_2381CA0FC();
  v9 = v8;
  if (v7 == sub_2381CA0FC() && v9 == v10)
  {
LABEL_27:

    goto LABEL_28;
  }

  v12 = sub_2381CA40C();

  if (v12)
  {
    goto LABEL_28;
  }

  v13 = 0;
LABEL_31:
  v30 = qword_2381CCA40[*(v0 + 65)];
  v31 = *(v0 + 152);
  v32 = objc_allocWithZone(sub_2381C9D3C());
  v33 = sub_2381C9D2C();
  *(v0 + 264) = v33;
  v34 = *(v0 + 160);
  if (v31)
  {
    v35 = *(v0 + 152);
    v36 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v37 = *(v34 + v36);
    *(v0 + 272) = v37;
    if (v37)
    {
      v38 = objc_allocWithZone(MEMORY[0x277CBF758]);
      v39 = v35;
      v37;
      v40 = [v38 initWithCVPixelBuffer_];
      *(v0 + 280) = v40;
      v59 = (*MEMORY[0x277D05B80] + MEMORY[0x277D05B80]);
      v41 = v33;
      v42 = swift_task_alloc();
      *(v0 + 288) = v42;
      *v42 = v0;
      v42[1] = sub_2381BD0C0;
      v43 = *(v0 + 144);
      v44 = v40;
      v45 = v13;
      v46 = v30;
      v47 = v33;
LABEL_36:

      return v59(v43, v44, v45, v46, v47);
    }
  }

  else
  {
    v48 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v49 = *(v34 + v48);
    *(v0 + 304) = v49;
    if (v49)
    {
      v59 = (*MEMORY[0x277D05B80] + MEMORY[0x277D05B80]);
      v49;
      v50 = swift_task_alloc();
      *(v0 + 312) = v50;
      *v50 = v0;
      v50[1] = sub_2381BD328;
      v43 = *(v0 + 144);
      v44 = 0;
      v45 = v13;
      v46 = v30;
      v47 = v33;
      goto LABEL_36;
    }
  }

  v52 = *(v0 + 264);
  v54 = *(v0 + 160);
  v53 = *(v0 + 168);
  v55 = sub_2381CA24C();
  (*(*(v55 - 8) + 56))(v53, 1, 1, v55);
  v56 = swift_allocObject();
  v56[2] = 0;
  v56[3] = 0;
  v56[4] = v54;

  sub_23819DBD4(0, 0, v53, &unk_2381CC8C0, v56);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_2381BD0C0()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_2381BD574;
  }

  else
  {
    v5 = *(v2 + 272);
    v4 = *(v2 + 280);

    v3 = sub_2381BD1F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2381BD1F0()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = sub_2381CA24C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  sub_23819DBD4(0, 0, v2, &unk_2381CC8C0, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2381BD328()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_2381BD78C;
  }

  else
  {

    v3 = sub_2381BD444;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2381BD444()
{
  v1 = v0[33];
  v3 = v0[20];
  v2 = v0[21];
  v4 = sub_2381CA24C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  sub_23819DBD4(0, 0, v2, &unk_2381CC8C0, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2381BD574()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 152);

  v4 = *(v0 + 296);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 160) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 176));
  v5 = v4;
  v6 = sub_2381CA08C();
  v7 = sub_2381CA2DC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23819C000, v6, v7, "caught err %@, returning public", v8, 0xCu);
    sub_2381A6070(v9, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v9, -1, -1);
    MEMORY[0x2383EBBE0](v8, -1, -1);
  }

  v12 = *(v0 + 264);
  v13 = *(v0 + 192);
  v14 = *(v0 + 176);
  v15 = *(v0 + 184);

  (*(v15 + 8))(v13, v14);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v4, v16);
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2381BD78C()
{
  v1 = *(v0 + 320);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 160) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 176));
  v2 = v1;
  v3 = sub_2381CA08C();
  v4 = sub_2381CA2DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_23819C000, v3, v4, "caught err %@, returning public", v5, 0xCu);
    sub_2381A6070(v6, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v6, -1, -1);
    MEMORY[0x2383EBBE0](v5, -1, -1);
  }

  v9 = *(v0 + 264);
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);

  (*(v12 + 8))(v10, v11);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v1, v13);
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t DockAccessory.selectSubject(at:)(double a1, double a2)
{
  *(v3 + 72) = v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  v4 = sub_2381C9C7C();
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();
  v5 = sub_2381CA0AC();
  *(v3 + 104) = v5;
  *(v3 + 112) = *(v5 - 8);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381BDB84, 0, 0);
}

uint64_t sub_2381BDB84()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    sub_2381A319C();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();

    v33 = *(v0 + 8);
LABEL_18:

    return v33();
  }

  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 72);
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  *(v0 + 136) = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v8 = *(v5 + 16);
  *(v0 + 144) = v8;
  *(v0 + 152) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v6 + v7, v4);
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2BC();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = swift_slowAlloc();
    *v13 = 134349312;
    *(v13 + 4) = v12;
    *(v13 + 12) = 2050;
    *(v13 + 14) = v11;
    _os_log_impl(&dword_23819C000, v9, v10, "API: selectSubject: %{public}f, %{public}f", v13, 0x16u);
    MEMORY[0x2383EBBE0](v13, -1, -1);
  }

  v14 = *(v0 + 128);
  v15 = *(v0 + 104);
  v16 = *(v0 + 112);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v19 = *(v0 + 80);

  v20 = *(v16 + 8);
  *(v0 + 160) = v20;
  *(v0 + 168) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v14, v15);
  *(v0 + 176) = [objc_allocWithZone(sub_2381C9ADC()) init];
  (*(v18 + 104))(v17, *MEMORY[0x277D05BA0], v19);
  *(v0 + 248) = sub_2381C9C6C();
  (*(v18 + 8))(v17, v19);
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v21 = qword_27DEF32C8;
  v22 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  *(v0 + 184) = qword_27DEF32C8;
  *(v0 + 192) = v22;
  v23 = *(v21 + v22);

  os_unfair_lock_lock(v23 + 4);

  v24 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
  *(v0 + 200) = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
  v25 = *(v21 + v24);
  v26 = *(v21 + v22);

  os_unfair_lock_unlock(v26 + 4);

  if (v25 == 1)
  {
    v27 = *(v1 + v2);
    *(v0 + 208) = v27;
    if (v27)
    {
      v42 = (*MEMORY[0x277D05B70] + MEMORY[0x277D05B70]);
      v27;
      v28 = swift_task_alloc();
      *(v0 + 216) = v28;
      *v28 = v0;
      v28[1] = sub_2381BE034;
      v29.n128_u64[0] = *(v0 + 56);
      v30.n128_u64[0] = *(v0 + 64);

      return v42(v29, v30);
    }

    v38 = *(v0 + 192);
    v37 = *(v0 + 200);
    v39 = *(v0 + 184);
    v40 = *(v39 + v38);

    os_unfair_lock_lock(v40 + 4);

    LODWORD(v37) = *(v39 + v37);
    v41 = *(v39 + v38);

    os_unfair_lock_unlock(v41 + 4);

    if (v37 == 1)
    {
      MEMORY[0x2383EAC30](*(v0 + 248), 0);
    }

    v33 = *(v0 + 8);
    goto LABEL_18;
  }

  v34 = swift_task_alloc();
  *(v0 + 232) = v34;
  *v34 = v0;
  v34[1] = sub_2381BE238;
  v35.n128_u64[0] = *(v0 + 56);
  v36.n128_u64[0] = *(v0 + 64);

  return MEMORY[0x28215B1A8](v35, v36);
}

uint64_t sub_2381BE034()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_2381BE34C;
  }

  else
  {

    v3 = sub_2381BE150;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2381BE150()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v3 + v2);

  os_unfair_lock_lock(v4 + 4);

  LODWORD(v1) = *(v3 + v1);
  v5 = *(v3 + v2);

  os_unfair_lock_unlock(v5 + 4);

  if (v1 == 1)
  {
    MEMORY[0x2383EAC30](*(v0 + 248), 0);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2381BE238()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_2381BE668;
  }

  else
  {
    v2 = sub_2381C98A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2381BE34C()
{
  v1 = *(v0 + 224);
  (*(v0 + 144))(*(v0 + 120), *(v0 + 72) + *(v0 + 136), *(v0 + 104));
  v2 = v1;
  v3 = sub_2381CA08C();
  v4 = sub_2381CA2DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_23819C000, v3, v4, "caught err %@, returning public", v5, 0xCu);
    sub_2381A6070(v6, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v6, -1, -1);
    MEMORY[0x2383EBBE0](v5, -1, -1);
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 120);
  v11 = *(v0 + 104);

  v9(v10, v11);
  sub_2381A319C();
  v12 = swift_allocError();
  sub_23819FD88(v1, v13);

  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  v16 = *(v0 + 184);
  v17 = *(v16 + v15);

  os_unfair_lock_lock(v17 + 4);

  LOBYTE(v14) = *(v16 + v14);
  v18 = *(v16 + v15);

  os_unfair_lock_unlock(v18 + 4);

  if (v14)
  {
    if (v12)
    {
      *(v0 + 40) = v12;
      v19 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
      sub_2381C8508(0, &qword_27DEF35E0, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 48);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    MEMORY[0x2383EAC30](*(v0 + 248), v20);
  }

  v21 = *(v0 + 176);
  if (v12)
  {
    swift_allocError();
    sub_23819FD88(v12, v22);
    swift_willThrow();
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2381BE668()
{
  v1 = *(v0 + 240);
  (*(v0 + 144))(*(v0 + 120), *(v0 + 72) + *(v0 + 136), *(v0 + 104));
  v2 = v1;
  v3 = sub_2381CA08C();
  v4 = sub_2381CA2DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_23819C000, v3, v4, "caught err %@, returning public", v5, 0xCu);
    sub_2381A6070(v6, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v6, -1, -1);
    MEMORY[0x2383EBBE0](v5, -1, -1);
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 120);
  v11 = *(v0 + 104);

  v9(v10, v11);
  sub_2381A319C();
  v12 = swift_allocError();
  sub_23819FD88(v1, v13);

  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  v16 = *(v0 + 184);
  v17 = *(v16 + v15);

  os_unfair_lock_lock(v17 + 4);

  LOBYTE(v14) = *(v16 + v14);
  v18 = *(v16 + v15);

  os_unfair_lock_unlock(v18 + 4);

  if (v14)
  {
    if (v12)
    {
      *(v0 + 40) = v12;
      v19 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
      sub_2381C8508(0, &qword_27DEF35E0, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 48);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    MEMORY[0x2383EAC30](*(v0 + 248), v20);
  }

  v21 = *(v0 + 176);
  if (v12)
  {
    swift_allocError();
    sub_23819FD88(v12, v22);
    swift_willThrow();
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t DockAccessory.selectSubjects(_:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2381C99BC();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_2381C9C7C();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_2381CA0AC();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381BEB00, 0, 0);
}

uint64_t sub_2381BEB00()
{
  v65 = v0;
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 64);
    v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
    *(v0 + 152) = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
    v8 = *(v5 + 16);
    *(v0 + 160) = v8;
    *(v0 + 168) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v3, v6 + v7, v4);

    v9 = sub_2381CA08C();
    v10 = sub_2381CA2BC();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 144);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    if (v11)
    {
      v62 = *(v0 + 120);
      v15 = *(v0 + 72);
      v16 = *(v0 + 56);
      v60 = *(v0 + 144);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v64 = v18;
      *v17 = 136315138;
      v19 = MEMORY[0x2383EB3A0](v16, v15);
      v21 = sub_2381C3094(v19, v20, &v64);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_23819C000, v9, v10, "API: selectSubjects: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x2383EBBE0](v18, -1, -1);
      MEMORY[0x2383EBBE0](v17, -1, -1);

      v22 = *(v13 + 8);
      v22(v60, v62);
    }

    else
    {

      v22 = *(v13 + 8);
      v22(v12, v14);
    }

    *(v0 + 176) = v22;
    v26 = *(v0 + 104);
    v25 = *(v0 + 112);
    v27 = *(v0 + 96);
    *(v0 + 184) = [objc_allocWithZone(sub_2381C9ADC()) init];
    (*(v26 + 104))(v25, *MEMORY[0x277D05BA0], v27);
    *(v0 + 248) = sub_2381C9C6C();
    (*(v26 + 8))(v25, v27);
    if (qword_27DEF32C0 != -1)
    {
      swift_once();
    }

    v28 = qword_27DEF32C8;
    v29 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
    *(v0 + 192) = qword_27DEF32C8;
    *(v0 + 200) = v29;
    v30 = *(v28 + v29);

    os_unfair_lock_lock(v30 + 4);

    v31 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
    *(v0 + 208) = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
    v32 = *(v28 + v31);
    v33 = *(v28 + v29);

    os_unfair_lock_unlock(v33 + 4);

    if (v32 == 1)
    {
      v34 = *(v1 + v2);
      if (v34)
      {
        v35 = *(v0 + 56);
        v36 = *(v35 + 16);
        if (v36)
        {
          v37 = *(v0 + 80);
          v64 = MEMORY[0x277D84F90];
          v58 = v34;
          sub_2381C365C(0, v36, 0);
          v38 = v64;
          v39 = *(v37 + 16);
          v37 += 16;
          v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
          v59 = *(v37 + 56);
          v61 = v39;
          v41 = (v37 - 8);
          do
          {
            v42 = *(v0 + 88);
            v43 = *(v0 + 72);
            v61(v42, v40, v43);
            v44 = sub_2381C999C();
            v46 = v45;
            (*v41)(v42, v43);
            v64 = v38;
            v48 = *(v38 + 16);
            v47 = *(v38 + 24);
            if (v48 >= v47 >> 1)
            {
              sub_2381C365C((v47 > 1), v48 + 1, 1);
              v38 = v64;
            }

            *(v38 + 16) = v48 + 1;
            v49 = v38 + 16 * v48;
            *(v49 + 32) = v44;
            *(v49 + 40) = v46;
            v40 += v59;
            --v36;
          }

          while (v36);
          v56 = v58;
        }

        else
        {
          v56 = v34;
          v38 = MEMORY[0x277D84F90];
        }

        *(v0 + 216) = v56;
        *(v0 + 224) = v38;
        v63 = (*MEMORY[0x277D05B78] + MEMORY[0x277D05B78]);
        v57 = swift_task_alloc();
        *(v0 + 232) = v57;
        *v57 = v0;
        v57[1] = sub_2381BF09C;

        return v63(v38);
      }
    }

    v51 = *(v0 + 200);
    v50 = *(v0 + 208);
    v52 = *(v0 + 192);
    v53 = *(v52 + v51);

    os_unfair_lock_lock(v53 + 4);

    LODWORD(v50) = *(v52 + v50);
    v54 = *(v52 + v51);

    os_unfair_lock_unlock(v54 + 4);

    if (v50 == 1)
    {
      MEMORY[0x2383EAC30](*(v0 + 248), 0);
    }

    v24 = *(v0 + 8);
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();

    v24 = *(v0 + 8);
  }

  return v24();
}

uint64_t sub_2381BF09C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_2381BF2B0;
  }

  else
  {
    v4 = *(v2 + 216);

    v3 = sub_2381BF1BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2381BF1BC()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v3 + v2);

  os_unfair_lock_lock(v4 + 4);

  LODWORD(v1) = *(v3 + v1);
  v5 = *(v3 + v2);

  os_unfair_lock_unlock(v5 + 4);

  if (v1 == 1)
  {
    MEMORY[0x2383EAC30](*(v0 + 248), 0);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2381BF2B0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 160);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = *(v0 + 64);

  v3(v5, v7 + v4, v6);
  v8 = v1;
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2DC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 240);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_23819C000, v9, v10, "caught err %@, returning public", v12, 0xCu);
    sub_2381A6070(v13, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v13, -1, -1);
    MEMORY[0x2383EBBE0](v12, -1, -1);
  }

  v16 = *(v0 + 240);
  v17 = *(v0 + 176);
  v18 = *(v0 + 136);
  v19 = *(v0 + 120);

  v17(v18, v19);
  sub_2381A319C();
  v20 = swift_allocError();
  sub_23819FD88(v16, v21);

  v23 = *(v0 + 200);
  v22 = *(v0 + 208);
  v24 = *(v0 + 192);
  v25 = *(v24 + v23);

  os_unfair_lock_lock(v25 + 4);

  LOBYTE(v22) = *(v24 + v22);
  v26 = *(v24 + v23);

  os_unfair_lock_unlock(v26 + 4);

  if (v22)
  {
    if (v20)
    {
      *(v0 + 40) = v20;
      v27 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
      sub_2381C8508(0, &qword_27DEF35E0, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v28 = *(v0 + 48);
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    MEMORY[0x2383EAC30](*(v0 + 248), v28);
  }

  v29 = *(v0 + 184);
  if (v20)
  {
    swift_allocError();
    sub_23819FD88(v20, v30);
    swift_willThrow();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t DockAccessory.setFramingMode(_:)(_BYTE *a1)
{
  *(v2 + 56) = v1;
  v4 = sub_2381C9C7C();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  v5 = sub_2381CA0AC();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 201) = *a1;

  return MEMORY[0x2822009F8](sub_2381BF73C, 0, 0);
}

uint64_t sub_2381BF73C()
{
  v53 = v0;
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    sub_2381A319C();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();

    v21 = *(v0 + 8);
LABEL_17:

    return v21();
  }

  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 56);
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  *(v0 + 120) = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v8 = *(v5 + 16);
  *(v0 + 128) = v8;
  *(v0 + 136) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v6 + v7, v4);
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2BC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v1;
    v12 = *(v0 + 201);
    v13 = *(v0 + 96);
    v50 = *(v0 + 88);
    v51 = *(v0 + 112);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v52 = v15;
    *v14 = 136446210;
    *(v0 + 200) = v12;
    v16 = sub_2381CA10C();
    v18 = sub_2381C3094(v16, v17, &v52);
    v1 = v11;

    *(v14 + 4) = v18;
    _os_log_impl(&dword_23819C000, v9, v10, "API: setFramingMode: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2383EBBE0](v15, -1, -1);
    MEMORY[0x2383EBBE0](v14, -1, -1);

    v19 = *(v13 + 8);
    v19(v51, v50);
  }

  else
  {
    v22 = *(v0 + 112);
    v23 = *(v0 + 88);
    v24 = *(v0 + 96);

    v19 = *(v24 + 8);
    v19(v22, v23);
  }

  *(v0 + 144) = v19;
  v25 = *(v0 + 201);
  v27 = *(v0 + 72);
  v26 = *(v0 + 80);
  v28 = *(v0 + 64);
  *(v0 + 152) = [objc_allocWithZone(sub_2381C9ADC()) init];
  (*(v27 + 104))(v26, *MEMORY[0x277D05B98], v28);
  *(v0 + 202) = sub_2381C9C6C();
  (*(v27 + 8))(v26, v28);
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v29 = qword_27DEF32C8;
  v30 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  *(v0 + 160) = qword_27DEF32C8;
  *(v0 + 168) = v30;
  v31 = *(v29 + v30);

  os_unfair_lock_lock(v31 + 4);

  v32 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
  *(v0 + 176) = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
  v33 = *(v29 + v32);
  v34 = *(v29 + v30);

  os_unfair_lock_unlock(v34 + 4);

  if (v33 == 1)
  {
    v35 = *(v1 + v2);
    if (v35)
    {
      v36 = v35;
      sub_2381C9C0C();
    }

    v38 = *(v0 + 168);
    v37 = *(v0 + 176);
    v39 = *(v0 + 160);
    v40 = *(v39 + v38);

    os_unfair_lock_lock(v40 + 4);

    LODWORD(v37) = *(v39 + v37);
    v41 = *(v39 + v38);

    os_unfair_lock_unlock(v41 + 4);

    if (v37 == 1)
    {
      MEMORY[0x2383EAC30](*(v0 + 202), 0);
    }

    v42 = *(v0 + 201);
    v43 = *(v0 + 56);
    v44 = *(v43 + OBJC_IVAR____TtC7DockKit13DockAccessory__framingModeLock);
    v45 = swift_task_alloc();
    *(v45 + 16) = v43;
    *(v45 + 24) = v42;
    v46 = swift_task_alloc();
    *(v46 + 16) = sub_2381C4ED0;
    *(v46 + 24) = v45;

    os_unfair_lock_lock(v44 + 4);
    sub_2381C4EE8(v47);
    os_unfair_lock_unlock(v44 + 4);

    v21 = *(v0 + 8);
    goto LABEL_17;
  }

  v48 = swift_task_alloc();
  *(v0 + 184) = v48;
  *v48 = v0;
  v48[1] = sub_2381BFC7C;

  return MEMORY[0x28215B1C0](v25);
}

uint64_t sub_2381BFC7C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_2381BFF3C;
  }

  else
  {
    v2 = sub_2381BFD90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2381BFD90()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v4 + v3);

  os_unfair_lock_lock(v5 + 4);

  LODWORD(v2) = *(v4 + v2);
  v6 = *(v4 + v3);

  os_unfair_lock_unlock(v6 + 4);

  if (v2 == 1)
  {
    MEMORY[0x2383EAC30](*(v0 + 202), 0);
  }

  v7 = *(v0 + 201);
  v8 = *(v0 + 56);
  v9 = *(v8 + OBJC_IVAR____TtC7DockKit13DockAccessory__framingModeLock);
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_2381C4ED0;
  *(v11 + 24) = v10;

  os_unfair_lock_lock(v9 + 4);
  sub_2381C4EE8(v12);
  os_unfair_lock_unlock(v9 + 4);
  if (v1)
  {
  }

  else
  {

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_2381BFF3C()
{
  v1 = *(v0 + 192);
  (*(v0 + 128))(*(v0 + 104), *(v0 + 56) + *(v0 + 120), *(v0 + 88));
  v2 = v1;
  v3 = sub_2381CA08C();
  v4 = sub_2381CA2DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 192);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23819C000, v3, v4, "caught err %@, returning public", v6, 0xCu);
    sub_2381A6070(v7, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v7, -1, -1);
    MEMORY[0x2383EBBE0](v6, -1, -1);
  }

  v10 = *(v0 + 192);
  v11 = *(v0 + 144);
  v12 = *(v0 + 104);
  v13 = *(v0 + 88);

  v11(v12, v13);
  sub_2381A319C();
  v14 = swift_allocError();
  sub_23819FD88(v10, v15);

  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v18 = *(v0 + 160);
  v19 = *(v18 + v17);

  os_unfair_lock_lock(v19 + 4);

  LOBYTE(v16) = *(v18 + v16);
  v20 = *(v18 + v17);

  os_unfair_lock_unlock(v20 + 4);

  if (v16)
  {
    if (v14)
    {
      *(v0 + 40) = v14;
      v21 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
      sub_2381C8508(0, &qword_27DEF35E0, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 48);
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0x2383EAC30](*(v0 + 202), v22);
  }

  if (v14)
  {
    v23 = *(v0 + 152);
    swift_allocError();
    sub_23819FD88(v14, v24);
    swift_willThrow();
  }

  else
  {
    v27 = *(v0 + 201);
    v28 = *(v0 + 56);
    v29 = *(v28 + OBJC_IVAR____TtC7DockKit13DockAccessory__framingModeLock);
    v30 = swift_task_alloc();
    *(v30 + 16) = v28;
    *(v30 + 24) = v27;
    v31 = swift_task_alloc();
    *(v31 + 16) = sub_2381C4ED0;
    *(v31 + 24) = v30;

    os_unfair_lock_lock(v29 + 4);
    sub_2381C4EE8(v32);
    os_unfair_lock_unlock(v29 + 4);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t DockAccessory.setRegionOfInterest(_:)(double a1, double a2, double a3, double a4)
{
  *(v5 + 88) = v4;
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = sub_2381C9C7C();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  v7 = sub_2381CA0AC();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381C044C, 0, 0);
}

uint64_t sub_2381C044C()
{
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    sub_2381A319C();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();

    v42 = *(v0 + 8);
LABEL_16:

    return v42();
  }

  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 88);
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  *(v0 + 152) = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v8 = *(v5 + 16);
  *(v0 + 160) = v8;
  *(v0 + 168) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v6 + v7, v4);
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2BC();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = swift_slowAlloc();
    *v15 = 134349824;
    *(v15 + 4) = v14;
    *(v15 + 12) = 2050;
    *(v15 + 14) = v13;
    *(v15 + 22) = 2050;
    *(v15 + 24) = v12;
    *(v15 + 32) = 2050;
    *(v15 + 34) = v11;
    _os_log_impl(&dword_23819C000, v9, v10, "API: setRegionOfInterest: %{public}f, %{public}f, %{public}f, %{public}f", v15, 0x2Au);
    MEMORY[0x2383EBBE0](v15, -1, -1);
  }

  v16 = *(v0 + 144);
  v17 = *(v0 + 120);
  v18 = *(v0 + 128);
  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v21 = *(v0 + 96);

  v22 = *(v18 + 8);
  *(v0 + 176) = v22;
  *(v0 + 184) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v16, v17);
  *(v0 + 192) = [objc_allocWithZone(sub_2381C9ADC()) init];
  (*(v20 + 104))(v19, *MEMORY[0x277D05BA8], v21);
  *(v0 + 240) = sub_2381C9C6C();
  (*(v20 + 8))(v19, v21);
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v23 = qword_27DEF32C8;
  v24 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  *(v0 + 200) = qword_27DEF32C8;
  *(v0 + 208) = v24;
  v25 = *(v23 + v24);

  os_unfair_lock_lock(v25 + 4);

  v26 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
  *(v0 + 216) = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
  v27 = *(v23 + v26);
  v28 = *(v23 + v24);

  os_unfair_lock_unlock(v28 + 4);

  if (v27 == 1)
  {
    v29 = *(v1 + v2);
    if (v29)
    {
      v30 = v29;
      sub_2381C9BFC();
    }

    v38 = *(v0 + 208);
    v37 = *(v0 + 216);
    v39 = *(v0 + 200);
    v40 = *(v39 + v38);

    os_unfair_lock_lock(v40 + 4);

    LODWORD(v37) = *(v39 + v37);
    v41 = *(v39 + v38);

    os_unfair_lock_unlock(v41 + 4);

    if (v37 == 1)
    {
      MEMORY[0x2383EAC30](*(v0 + 240), 0);
    }

    v43 = *(v0 + 88);
    v44 = *(v43 + OBJC_IVAR____TtC7DockKit13DockAccessory__roiLock);
    v45 = swift_task_alloc();
    v46 = *(v0 + 56);
    v47 = *(v0 + 72);
    *(v45 + 16) = v43;
    *(v45 + 40) = v47;
    *(v45 + 24) = v46;
    v48 = swift_task_alloc();
    *(v48 + 16) = sub_2381C4F04;
    *(v48 + 24) = v45;

    os_unfair_lock_lock(v44 + 4);
    sub_2381C9884(v49);
    os_unfair_lock_unlock(v44 + 4);

    v42 = *(v0 + 8);
    goto LABEL_16;
  }

  v32 = swift_task_alloc();
  *(v0 + 224) = v32;
  *v32 = v0;
  v32[1] = sub_2381C0B78;
  v33.n128_u64[0] = *(v0 + 72);
  v34.n128_u64[0] = *(v0 + 80);
  v35.n128_u64[0] = *(v0 + 56);
  v36.n128_u64[0] = *(v0 + 64);

  return MEMORY[0x28215B1D0](v35, v36, v33, v34);
}

uint64_t sub_2381C0B78()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_2381C0E40;
  }

  else
  {
    v2 = sub_2381C0C8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2381C0C8C()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = *(v4 + v3);

  os_unfair_lock_lock(v5 + 4);

  LODWORD(v2) = *(v4 + v2);
  v6 = *(v4 + v3);

  os_unfair_lock_unlock(v6 + 4);

  if (v2 == 1)
  {
    MEMORY[0x2383EAC30](*(v0 + 240), 0);
  }

  v7 = *(v0 + 88);
  v8 = *(v7 + OBJC_IVAR____TtC7DockKit13DockAccessory__roiLock);
  v9 = swift_task_alloc();
  v10 = *(v0 + 56);
  v11 = *(v0 + 72);
  *(v9 + 16) = v7;
  *(v9 + 40) = v11;
  *(v9 + 24) = v10;
  v12 = swift_task_alloc();
  *(v12 + 16) = sub_2381C4F04;
  *(v12 + 24) = v9;

  os_unfair_lock_lock(v8 + 4);
  sub_2381C9884(v13);
  os_unfair_lock_unlock(v8 + 4);
  if (v1)
  {
  }

  else
  {

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_2381C0E40()
{
  v1 = *(v0 + 232);
  (*(v0 + 160))(*(v0 + 136), *(v0 + 88) + *(v0 + 152), *(v0 + 120));
  v2 = v1;
  v3 = sub_2381CA08C();
  v4 = sub_2381CA2DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_23819C000, v3, v4, "caught err %@, returning public", v5, 0xCu);
    sub_2381A6070(v6, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v6, -1, -1);
    MEMORY[0x2383EBBE0](v5, -1, -1);
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 136);
  v11 = *(v0 + 120);

  v9(v10, v11);
  sub_2381A319C();
  v12 = swift_allocError();
  sub_23819FD88(v1, v13);

  v15 = *(v0 + 208);
  v14 = *(v0 + 216);
  v16 = *(v0 + 200);
  v17 = *(v16 + v15);

  os_unfair_lock_lock(v17 + 4);

  LOBYTE(v14) = *(v16 + v14);
  v18 = *(v16 + v15);

  os_unfair_lock_unlock(v18 + 4);

  if (v14)
  {
    if (v12)
    {
      *(v0 + 40) = v12;
      v19 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
      sub_2381C8508(0, &qword_27DEF35E0, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 48);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    MEMORY[0x2383EAC30](*(v0 + 240), v20);
  }

  if (v12)
  {
    v21 = *(v0 + 192);
    swift_allocError();
    sub_23819FD88(v12, v22);
    swift_willThrow();
  }

  else
  {
    v25 = *(v0 + 88);
    v26 = *(v25 + OBJC_IVAR____TtC7DockKit13DockAccessory__roiLock);
    v27 = swift_task_alloc();
    v28 = *(v0 + 56);
    v29 = *(v0 + 72);
    *(v27 + 16) = v25;
    *(v27 + 40) = v29;
    *(v27 + 24) = v28;
    v30 = swift_task_alloc();
    *(v30 + 16) = sub_2381C4F04;
    *(v30 + 24) = v27;

    os_unfair_lock_lock(v26 + 4);
    sub_2381C9884(v31);
    os_unfair_lock_unlock(v26 + 4);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t DockAccessory.animate(motion:)(_BYTE *a1)
{
  *(v2 + 88) = v1;
  v4 = sub_2381C9DCC();
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 - 8);
  *(v2 + 112) = swift_task_alloc();
  v5 = sub_2381CA0AC();
  *(v2 + 120) = v5;
  *(v2 + 128) = *(v5 - 8);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  v6 = sub_2381C998C();
  *(v2 + 168) = v6;
  *(v2 + 176) = *(v6 - 8);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 297) = *a1;

  return MEMORY[0x2822009F8](sub_2381C13BC, 0, 0);
}

uint64_t sub_2381C13BC()
{
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DEF32C8;
  v2 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  v3 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v1 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
  v5 = *(v1 + v2);

  os_unfair_lock_unlock(v5 + 4);

  if ((v4 & 1) == 0)
  {
    return sub_2381CA38C();
  }

  v6 = v0[11];
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory__animateCommandLock;
  v0[24] = OBJC_IVAR____TtC7DockKit13DockAccessory__animateCommandLock;
  v0[25] = *(v6 + v7);
  v10 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_2381C1574;

  return v10();
}

uint64_t sub_2381C1574()
{

  return MEMORY[0x2822009F8](sub_2381C168C, 0, 0);
}

uint64_t sub_2381C168C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC7DockKit13DockAccessory__lastAnimateCommandTime;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  sub_2381C995C();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v8 = v0[11];
  if (fabs(v7) >= 1.0 / *(v4 + OBJC_IVAR____TtC7DockKit13DockAccessory__maxAnimateFrequency))
  {
    v21 = v0[23];
    v22 = v0[24];
    v23 = v0[21];
    v24 = v0[22];
    sub_2381C997C();
    swift_beginAccess();
    (*(v24 + 40))(v4 + v5, v21, v23);
    swift_endAccess();
    v0[28] = *(v8 + v22);
    sub_2381CA07C();
    sub_2381C41C0(&qword_27DEF35F0, MEMORY[0x277D213A8], MEMORY[0x277D213B0]);

    v17 = sub_2381CA21C();
    v19 = v25;
    v20 = sub_2381C1AC0;
  }

  else
  {
    (*(v0[16] + 16))(v0[20], v8 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v0[15]);
    v9 = sub_2381CA08C();
    v10 = sub_2381CA2BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23819C000, v9, v10, "rate limiting animate", v11, 2u);
      MEMORY[0x2383EBBE0](v11, -1, -1);
    }

    v12 = v0[24];
    v13 = v0[20];
    v14 = v0[15];
    v15 = v0[16];
    v16 = v0[11];

    (*(v15 + 8))(v13, v14);
    v0[27] = *(v16 + v12);
    sub_2381CA07C();
    sub_2381C41C0(&qword_27DEF35F0, MEMORY[0x277D213A8], MEMORY[0x277D213B0]);

    v17 = sub_2381CA21C();
    v19 = v18;
    v20 = sub_2381C1974;
  }

  return MEMORY[0x2822009F8](v20, v17, v19);
}

uint64_t sub_2381C1974()
{
  sub_2381CA05C();

  return MEMORY[0x2822009F8](sub_2381C19E4, 0, 0);
}

uint64_t sub_2381C19E4()
{
  sub_2381A319C();
  swift_allocError();
  *v1 = 7;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2381C1AC0()
{
  sub_2381CA05C();

  return MEMORY[0x2822009F8](sub_2381C1B30, 0, 0);
}

uint64_t sub_2381C1B30()
{
  v41 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 88);
    v6 = v3;
    v7 = sub_2381C9C2C();

    v8 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
    *(v0 + 232) = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
    v9 = *(v4 + 16);
    *(v0 + 240) = v9;
    *(v0 + 248) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10 = *(v0 + 120);
    if (v7)
    {
      v9(*(v0 + 144), v5 + v8, v10);
      v11 = sub_2381CA08C();
      v12 = sub_2381CA2BC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 297);
        v14 = *(v0 + 128);
        v37 = *(v0 + 120);
        v38 = *(v0 + 144);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v40 = v16;
        *v15 = 136446210;
        *(v0 + 296) = v13;
        v17 = sub_2381CA10C();
        v19 = sub_2381C3094(v17, v18, &v40);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_23819C000, v11, v12, "API: animate: %{public}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x2383EBBE0](v16, -1, -1);
        MEMORY[0x2383EBBE0](v15, -1, -1);

        v20 = *(v14 + 8);
        v20(v38, v37);
      }

      else
      {
        v31 = *(v0 + 144);
        v32 = *(v0 + 120);
        v33 = *(v0 + 128);

        v20 = *(v33 + 8);
        v20(v31, v32);
      }

      *(v0 + 256) = v20;
      result = (*(*(v0 + 104) + 104))(*(v0 + 112), **(&unk_278A49C20 + *(v0 + 297)), *(v0 + 96));
      v34 = *(v1 + v2);
      *(v0 + 264) = v34;
      if (v34)
      {
        v39 = (*MEMORY[0x277D05B90] + MEMORY[0x277D05B90]);
        v34;
        v35 = swift_task_alloc();
        *(v0 + 272) = v35;
        *v35 = v0;
        v35[1] = sub_2381C1F3C;
        v36 = *(v0 + 112);

        return v39(v36);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v9(*(v0 + 152), v5 + v8, v10);
    v22 = sub_2381CA08C();
    v23 = sub_2381CA2DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23819C000, v22, v23, "Tracking button off, motors disabled", v24, 2u);
      MEMORY[0x2383EBBE0](v24, -1, -1);
    }

    v25 = *(v0 + 152);
    v26 = *(v0 + 120);
    v27 = *(v0 + 128);

    (*(v27 + 8))(v25, v26);
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  sub_2381A319C();
  swift_allocError();
  *v28 = v21;
  swift_willThrow();

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2381C1F3C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 280) = v1;

  if (v1)
  {
    v5 = sub_2381C2148;
  }

  else
  {
    *(v4 + 288) = a1;
    v5 = sub_2381C2080;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2381C2080()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];
  v2 = v0[36];

  return v1(v2);
}

uint64_t sub_2381C2148()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[29];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[11];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v2(v4, v6 + v3, v5);
  v7 = v1;
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[35];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_23819C000, v8, v9, "caught err %@, returning public", v11, 0xCu);
    sub_2381A6070(v12, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v12, -1, -1);
    MEMORY[0x2383EBBE0](v11, -1, -1);
  }

  v15 = v0[35];
  v16 = v0[32];
  v17 = v0[17];
  v18 = v0[15];

  v16(v17, v18);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v15, v19);
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_2381C236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_2381CA0AC();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  v4[15] = swift_task_alloc();
  v6 = sub_2381C998C();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381C24CC, 0, 0);
}

uint64_t sub_2381C24CC()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_trackingSummaryLock;
  v0[20] = OBJC_IVAR____TtC7DockKit13DockAccessory_trackingSummaryLock;
  v0[21] = *(v1 + v2);
  v5 = (*MEMORY[0x277D21398] + MEMORY[0x277D21398]);

  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_2381C2594;

  return v5();
}

uint64_t sub_2381C2594(char a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_2381C26B4, 0, 0);
}

uint64_t sub_2381C26B4()
{
  if (*(v0 + 200) == 1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 152);
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v5 = *(v0 + 88);
    sub_2381C996C();
    v6 = OBJC_IVAR____TtC7DockKit13DockAccessory_lastSummaryPublishTime;
    swift_beginAccess();
    (*(v4 + 16))(v1, v5 + v6, v3);
    sub_2381C994C();
    v8 = v7;
    v9 = *(v4 + 8);
    v9(v1, v3);
    v9(v2, v3);
    if (v8 > 0.05)
    {
      v10 = *(v0 + 152);
      v11 = *(v0 + 128);
      v12 = *(v0 + 136);
      v13 = *(v0 + 88);
      sub_2381C996C();
      swift_beginAccess();
      (*(v12 + 40))(v5 + v6, v10, v11);
      swift_endAccess();
      v14 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
      swift_beginAccess();
      v15 = *(v13 + v14);
      if (!v15)
      {
LABEL_8:
        (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 88) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 96));
        v19 = sub_2381CA08C();
        v20 = sub_2381CA2DC();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_23819C000, v19, v20, "no summary", v21, 2u);
          MEMORY[0x2383EBBE0](v21, -1, -1);
        }

        v22 = *(v0 + 160);
        v24 = *(v0 + 104);
        v23 = *(v0 + 112);
        v26 = *(v0 + 88);
        v25 = *(v0 + 96);

        (*(v24 + 8))(v23, v25);
        *(v0 + 184) = *(v26 + v22);
        sub_2381CA07C();
        sub_2381C41C0(&qword_27DEF35F0, MEMORY[0x277D213A8], MEMORY[0x277D213B0]);

        v27 = sub_2381CA21C();
        v29 = v28;
        v30 = sub_2381C2C20;
        goto LABEL_22;
      }

      v16 = v15;
      if (!sub_2381C9BCC())
      {
LABEL_7:

        goto LABEL_8;
      }

      v17 = sub_2381C9FAC();
      if (v18 >> 60 == 15)
      {

        goto LABEL_7;
      }

      v33 = v17;
      v34 = v18;
      v35 = *(*(v0 + 88) + OBJC_IVAR____TtC7DockKit13DockAccessory_helper);
      if (v35)
      {
        v36 = v16;
        v37 = v35;
        v38 = sub_2381C9B0C();

        v39 = sub_2381C991C();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {

          v41 = swift_unknownObjectWeakLoadStrong();
          if (!v41)
          {
            __break(1u);
            return MEMORY[0x2822009F8](v41, v42, v43);
          }

          v44 = v41;
          v45 = sub_2381C9B0C();

          sub_2381C9A2C();
          LOBYTE(v44) = sub_2381CA2FC();

          if (v44)
          {
            v46 = *(v0 + 120);
            v47 = sub_2381C992C();
            v53 = v48;
            v54 = v47;
            v49 = sub_2381CA24C();
            (*(*(v49 - 8) + 56))(v46, 1, 1, v49);
            v50 = swift_allocObject();
            v50[2] = 0;
            v50[3] = 0;
            v50[4] = v37;
            v50[5] = v54;
            v50[6] = v53;
            v51 = v37;
            sub_23819DED4(0, 0, v46, &unk_2381CC8C8, v50);
          }
        }

        sub_2381C84F4(v33, v34);
      }

      else
      {

        sub_2381C84F4(v33, v34);
      }
    }

    *(v0 + 192) = *(*(v0 + 88) + *(v0 + 160));
    sub_2381CA07C();
    sub_2381C41C0(&qword_27DEF35F0, MEMORY[0x277D213A8], MEMORY[0x277D213B0]);

    v27 = sub_2381CA21C();
    v29 = v52;
    v30 = sub_2381C2CB4;
LABEL_22:
    v41 = v30;
    v42 = v27;
    v43 = v29;

    return MEMORY[0x2822009F8](v41, v42, v43);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_2381C2C20()
{
  sub_2381CA05C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2381C2CB4()
{
  sub_2381CA05C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DockAccessory.hashValue.getter()
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  type metadata accessor for DockAccessory.Identifier(0);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2381CA0BC();
  return sub_2381CA49C();
}

uint64_t sub_2381C2E24(void *a1, void *a2)
{
  type metadata accessor for DockAccessory.Identifier(0);

  return sub_2381C99AC();
}

uint64_t sub_2381C2E7C()
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  type metadata accessor for DockAccessory.Identifier(0);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2381CA0BC();
  return sub_2381CA49C();
}

uint64_t sub_2381C2F38(uint64_t a1)
{
  MEMORY[0x2383EB620](0);
  type metadata accessor for DockAccessory.Identifier(0);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_2381CA0BC();
}

uint64_t sub_2381C2FDC(uint64_t a1)
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  type metadata accessor for DockAccessory.Identifier(0);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2381CA0BC();
  return sub_2381CA49C();
}

unint64_t sub_2381C3094(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2381C3160(v11, 0, 0, 1, a1, a2);
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
    sub_2381C85AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2381C3160(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2381C326C(a5, a6);
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
    result = sub_2381CA36C();
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

void *sub_2381C326C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2381C32B8(a1, a2);
  sub_2381C33E8(&unk_284AF7948);
  return v3;
}

void *sub_2381C32B8(uint64_t a1, unint64_t a2)
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

  v6 = sub_2381C34D4(v5, 0);
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

  result = sub_2381CA36C();
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
        v10 = sub_2381CA17C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2381C34D4(v10, 0);
        result = sub_2381CA32C();
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

uint64_t sub_2381C33E8(uint64_t result)
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

  result = sub_2381C3548(result, v11, 1, v3);
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

void *sub_2381C34D4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38F8, &qword_2381CC8F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2381C3548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38F8, &qword_2381CC8F0);
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

void *sub_2381C363C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2381C367C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2381C365C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2381C37B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2381C367C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33B0, &qword_2381CC860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33B8, &qword_2381CB240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2381C37B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38D0, &qword_2381CC8B0);
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

unint64_t sub_2381C38BC(uint64_t a1, uint64_t a2)
{
  sub_2381CA45C();
  sub_2381CA14C();
  v4 = sub_2381CA49C();

  return sub_2381C3934(a1, a2, v4);
}

unint64_t sub_2381C3934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2381CA40C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s7DockKit0A9AccessoryC0C5EventO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      if ((v5 & 0xC0) != 0x40 || v2 != v4)
      {
        return 0;
      }
    }

    else
    {
      v8 = v3 ^ 0x80;
      v9 = v5 & 0xC0;
      if (*&v2 | v8)
      {
        v11 = v9 == 128 && *&v4 == 1;
        if (!v11 || v5 != 128)
        {
          return 0;
        }
      }

      else
      {
        v10 = v9 == 128 && *&v4 == 0;
        if (!v10 || v5 != 128)
        {
          return 0;
        }
      }
    }

    return 1;
  }

  else
  {
    if (v5 >= 0x40)
    {
      return 0;
    }

    v10 = *&v2 == *&v4;
    v6 = v5 ^ v3 ^ 1;
    if (!v10)
    {
      v6 = 0;
    }

    return v6 & 1;
  }
}

BOOL _s7DockKit0A9AccessoryC12BatteryStateV2eeoiySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    result = 0;
    if (v2 != v5)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = sub_2381CA40C();
  result = 0;
  if ((v9 & 1) != 0 && v2 == v5)
  {
LABEL_9:
    if (((v3 ^ v6) & 1) == 0)
    {
      return v4 == v7;
    }
  }

  return result;
}

BOOL _s7DockKit0A9AccessoryC13TrackedObjectV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2381C99AC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DockAccessory.TrackedObject(0);
  result = CGRectEqualToRect(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20)));
  if (!result)
  {
    return result;
  }

  v6 = *(v4 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if ((v8 & 1) == 0)
  {
    if (*v7 != *v9)
    {
      v10 = 1;
    }

    return (v10 & 1) == 0;
  }

  return (v10 & 1) != 0;
}

BOOL _s7DockKit0A9AccessoryC13TrackedPersonV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2381C99AC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DockAccessory.TrackedPerson(0);
  result = CGRectEqualToRect(*(a1 + v4[5]), *(a2 + v4[5]));
  if (!result)
  {
    return result;
  }

  v6 = v4[6];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v4[8];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if ((v18 & 1) == 0)
  {
    if (*v17 != *v19)
    {
      v20 = 1;
    }

    return (v20 & 1) == 0;
  }

  return (v20 & 1) != 0;
}

BOOL _s7DockKit0A9AccessoryC18TrackedSubjectTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v32 = type metadata accessor for DockAccessory.TrackedObject(0);
  MEMORY[0x28223BE20](v32);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DockAccessory.TrackedPerson(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DockAccessory.TrackedSubjectType(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3968, &qword_2381CCA18);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - v16;
  v19 = *(v18 + 56);
  sub_2381C4208(a1, &v31 - v16, type metadata accessor for DockAccessory.TrackedSubjectType);
  sub_2381C4208(a2, &v17[v19], type metadata accessor for DockAccessory.TrackedSubjectType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2381C4208(v17, v11, type metadata accessor for DockAccessory.TrackedSubjectType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2381C4A44(&v17[v19], v5, type metadata accessor for DockAccessory.TrackedObject);
      if ((sub_2381C99AC() & 1) != 0 && CGRectEqualToRect(*&v11[*(v32 + 20)], *&v5[*(v32 + 20)]))
      {
        v20 = *(v32 + 24);
        v21 = *&v11[v20];
        v22 = v11[v20 + 8];
        v23 = &v5[v20];
        v24 = *v23;
        v25 = v23[8];
        sub_2381C4AAC(v5, type metadata accessor for DockAccessory.TrackedObject);
        if (v22)
        {
          if (v25)
          {
LABEL_21:
            sub_2381C4AAC(v11, type metadata accessor for DockAccessory.TrackedObject);
            sub_2381C4AAC(v17, type metadata accessor for DockAccessory.TrackedSubjectType);
            return 1;
          }
        }

        else
        {
          if (v21 == v24)
          {
            v30 = v25;
          }

          else
          {
            v30 = 1;
          }

          if ((v30 & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        sub_2381C4AAC(v5, type metadata accessor for DockAccessory.TrackedObject);
      }

      sub_2381C4AAC(v11, type metadata accessor for DockAccessory.TrackedObject);
      sub_2381C4AAC(v17, type metadata accessor for DockAccessory.TrackedSubjectType);
      return 0;
    }

    v26 = type metadata accessor for DockAccessory.TrackedObject;
    v27 = v11;
LABEL_11:
    sub_2381C4AAC(v27, v26);
    sub_2381A6070(v17, &qword_27DEF3968, &qword_2381CCA18);
    return 0;
  }

  sub_2381C4208(v17, v14, type metadata accessor for DockAccessory.TrackedSubjectType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = type metadata accessor for DockAccessory.TrackedPerson;
    v27 = v14;
    goto LABEL_11;
  }

  sub_2381C4A44(&v17[v19], v8, type metadata accessor for DockAccessory.TrackedPerson);
  v28 = _s7DockKit0A9AccessoryC13TrackedPersonV2eeoiySbAE_AEtFZ_0(v14, v8);
  sub_2381C4AAC(v8, type metadata accessor for DockAccessory.TrackedPerson);
  sub_2381C4AAC(v14, type metadata accessor for DockAccessory.TrackedPerson);
  sub_2381C4AAC(v17, type metadata accessor for DockAccessory.TrackedSubjectType);
  return v28;
}

uint64_t sub_2381C41C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2381C4208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2381C4270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = sub_2381C9B0C();

      sub_2381C9A2C();
      LOBYTE(v16) = sub_2381CA2FC();

      if (v16)
      {
        v18 = sub_2381CA24C();
        (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        *(v19 + 32) = v6;
        *(v19 + 40) = a2;
        *(v19 + 48) = a4;
        *(v19 + 56) = a3;
        *(v19 + 64) = a5;
        v20 = v6;

        sub_23819DED4(0, 0, v13, &unk_2381CC8A8, v19);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2381C4420(uint64_t a1, uint64_t a2, void *a3)
{
  v48 = a2;
  v44 = a1;
  v5 = sub_2381C9D5C();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2381C9DCC();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2381CA0AC();
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38C8, &qword_2381CC898);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_2381C9DAC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  v25 = a3;
  sub_2381C9D8C();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_2381A6070(v14, &qword_27DEF38C8, &qword_2381CC898);
  }

  (*(v16 + 32))(v24, v14, v15);
  (*(v49 + 16))(v11, v3 + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_logger, v9);
  v27 = *(v16 + 16);
  v27(v21, v24, v15);
  v27(v18, v24, v15);
  v28 = v48;

  v29 = sub_2381CA08C();
  v30 = sub_2381CA2DC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v40 = v9;
    v32 = v31;
    v39 = swift_slowAlloc();
    v50 = v39;
    *v32 = 136315650;
    *(v32 + 4) = sub_2381C3094(v44, v28, &v50);
    *(v32 + 12) = 256;
    v33 = v41;
    LODWORD(v48) = v30;
    sub_2381C9D7C();
    v34 = sub_2381C9D4C();
    (*(v42 + 8))(v33, v43);
    v35 = *(v16 + 8);
    v35(v21, v15);
    *(v32 + 14) = v34;
    *(v32 + 15) = 256;
    v36 = v45;
    sub_2381C9D9C();
    v37 = sub_2381C9D4C();
    (*(v46 + 8))(v36, v47);
    v35(v18, v15);
    *(v32 + 17) = v37;
    _os_log_impl(&dword_23819C000, v29, v48, "Received trajectory progress feedback: s='%s' type='%hhu' status='%hhu'", v32, 0x12u);
    v38 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x2383EBBE0](v38, -1, -1);
    MEMORY[0x2383EBBE0](v32, -1, -1);

    (*(v49 + 8))(v11, v40);
  }

  else
  {
    v35 = *(v16 + 8);
    v35(v18, v15);
    v35(v21, v15);

    (*(v49 + 8))(v11, v9);
  }

  return (v35)(v24, v15);
}

uint64_t sub_2381C49A8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_2381CA15C();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_2381C4A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2381C4AAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2381C4B6C()
{
  result = qword_27DEF3510;
  if (!qword_27DEF3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3510);
  }

  return result;
}

unint64_t sub_2381C4BC0()
{
  result = qword_27DEF3518;
  if (!qword_27DEF3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3518);
  }

  return result;
}

unint64_t sub_2381C4C14()
{
  result = qword_27DEF3520;
  if (!qword_27DEF3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3520);
  }

  return result;
}

unint64_t sub_2381C4C68()
{
  result = qword_27DEF3528;
  if (!qword_27DEF3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3528);
  }

  return result;
}

unint64_t sub_2381C4CBC()
{
  result = qword_27DEF3530;
  if (!qword_27DEF3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3530);
  }

  return result;
}

void SPRotation3DGetEulerAngles(uint64_t *__return_ptr a1@<X8>, SPRotation3D a2@<0:Q0, 16:Q1>, uint64_t a3@<X0>, int a4@<W1>)
{
  _Q1 = *a3;
  if (a4 == 2)
  {
    v7 = *a3;
    _Q1.i64[0] = *(a3 + 16);
  }

  else if (a4 == 1)
  {
    v7 = vextq_s8(_Q1, *(a3 + 16), 8uLL);
  }

  else
  {
    v7 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v8 = *(a3 + 24);
  v26 = v7;
  _D9 = v7.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D1, V4.D[1] }

  v27 = *_Q1.i64;
  *&v16 = atan2(_D0 + _D0, (vmulq_f64(v7, v7).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v25 = v16;
  v17 = v8 * v26.f64[0] - _D9 * v27 + v8 * v26.f64[0] - _D9 * v27;
  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  if (v17 < -1.0)
  {
    v17 = -1.0;
  }

  v24 = asin(v17);
  _V2.D[1] = v26.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v22 = atan2f(*&_D0, *&_D1);
  if (a4 == 2)
  {
    *v23.i64 = v24;
    v23.i64[1] = v22;
    v22 = v25;
  }

  else if (a4 == 1)
  {
    v23.i64[0] = v25;
    *&v23.i64[1] = v24;
  }

  else
  {
    v23 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v22 = 0x7FF8000000000000;
  }

  *a1 = v23;
  *(a1 + 1) = v22;
  *(a1 + 8) = a4;
}

void SPVector3DMake(double *__return_ptr a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

uint64_t sub_2381C4E68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

__n128 sub_2381C4F04()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC7DockKit13DockAccessory__roi;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

unint64_t sub_2381C4F70()
{
  result = qword_27DEF3600;
  if (!qword_27DEF3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3600);
  }

  return result;
}

unint64_t sub_2381C4FC8()
{
  result = qword_27DEF3608;
  if (!qword_27DEF3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3608);
  }

  return result;
}

unint64_t sub_2381C5020()
{
  result = qword_27DEF3610;
  if (!qword_27DEF3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3610);
  }

  return result;
}

unint64_t sub_2381C5078()
{
  result = qword_27DEF3618;
  if (!qword_27DEF3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3618);
  }

  return result;
}

unint64_t sub_2381C51B4()
{
  result = qword_27DEF3638;
  if (!qword_27DEF3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3638);
  }

  return result;
}

unint64_t sub_2381C5254()
{
  result = qword_27DEF3648;
  if (!qword_27DEF3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3648);
  }

  return result;
}

unint64_t sub_2381C52AC()
{
  result = qword_27DEF3650;
  if (!qword_27DEF3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3650);
  }

  return result;
}

unint64_t sub_2381C534C()
{
  result = qword_27DEF3660;
  if (!qword_27DEF3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3660);
  }

  return result;
}

unint64_t sub_2381C53A4()
{
  result = qword_27DEF3668;
  if (!qword_27DEF3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3668);
  }

  return result;
}

uint64_t sub_2381C5488(uint64_t a1)
{
  result = sub_2381CA0AC();
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

uint64_t sub_2381C553C(uint64_t a1)
{
  result = sub_2381CA0AC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DockAccessory.Identifier(319);
    if (v3 <= 0x3F)
    {
      result = sub_2381C998C();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_2381C56D8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_2381C99BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2381C5798(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2381C99BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2381C583C(uint64_t a1)
{
  result = sub_2381C99BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy105_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2381C58FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2381C5944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DockAccessory.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DockAccessory.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2381C5B3C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3478, &qword_2381CB390);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 28)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2381C5C04(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3478, &qword_2381CB390);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2381C5CB0(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_2381C5D4C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2381C5D4C(uint64_t a1)
{
  if (!qword_27DEF36F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF36F8, &qword_2381CC0B0);
    v1 = sub_2381CA31C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEF36F0);
    }
  }
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

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_2381C5E24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2381C5E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for DockAccessory.MotionState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  v6 = v5;
  *(a1 + 72) = v5;
  return a1;
}

void *assignWithCopy for DockAccessory.MotionState(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  *a1 = v3;
  a1[1] = v4;
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  a1[6] = a2[6];
  a1[7] = v8;
  a1[4] = v7;
  a1[5] = v6;
  a1[8] = a2[8];
  v9 = a1[9];
  v10 = a2[9];
  v11 = v10;
  a1[9] = v10;

  return a1;
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t assignWithTake for DockAccessory.MotionState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  *(a1 + 32) = v4;
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for DockAccessory.MotionState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t storeEnumTagSinglePayload for DockAccessory.MotionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

void sub_2381C627C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_2381C7574(319, a4, a5, MEMORY[0x277D857B8]);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2381C6390(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  sub_2381C7574(319, a4, a5, MEMORY[0x277D857B8]);
  if (v8 <= 0x3F)
  {
    sub_2381C7574(319, a6, a5, MEMORY[0x277D857A8]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2381C64AC(uint64_t a1)
{
  result = type metadata accessor for DockAccessory.TrackedPerson(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DockAccessory.TrackedObject(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2381C6550(uint64_t a1)
{
  sub_2381C99BC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      sub_2381C7574(319, &qword_27DEF3780, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2381C7574(319, &qword_27DEF3788, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_155Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2381C99BC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_156Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2381C99BC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2381C6750(uint64_t a1)
{
  sub_2381C99BC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      sub_2381C7574(319, &qword_27DEF3780, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2381C6824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2381C998C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2381C68F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2381C998C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2381C69AC(uint64_t a1)
{
  sub_2381C998C();
  if (v1 <= 0x3F)
  {
    sub_2381C6B6C(319, &qword_27DEF37B0, type metadata accessor for DockAccessory.TrackedSubjectType, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2381C6AD0(uint64_t a1)
{
  sub_2381C6B6C(319, &qword_27DEF37C8, type metadata accessor for DockAccessory.TrackingState, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2381C6B6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2381C6C40(uint64_t a1)
{
  sub_2381C6B6C(319, &qword_27DEF37C8, type metadata accessor for DockAccessory.TrackingState, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_2381C6B6C(319, &qword_27DEF37E0, type metadata accessor for DockAccessory.TrackingState, MEMORY[0x277D857A8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DockAccessory.AccessoryEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DockAccessory.AccessoryEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2381C6DE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2381C6E10(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_2381C6F5C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2381C6FEC(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_2381C70C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_2381C7108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_112Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_113Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t __swift_get_extra_inhabitant_index_121Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v14 = *(v13 + 48);

    return v14(a1, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 20);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_122Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v16 = *(v15 + 56);

    return v16(a1, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 20);

    return v19(v20, a2, a2, v18);
  }
}

void sub_2381C7574(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2381C7610(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2381C7630(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = (a2 - 1);
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

  *(result + 89) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DockAccessory.Limits.Limit(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DockAccessory.Limits.Limit(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_2381C76F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2381C7784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2381C7888(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_2381C78DC(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2381C797C()
{
  result = qword_27DEF3848;
  if (!qword_27DEF3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3848);
  }

  return result;
}

unint64_t sub_2381C79D4()
{
  result = qword_27DEF3850;
  if (!qword_27DEF3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3850);
  }

  return result;
}

unint64_t sub_2381C7A2C()
{
  result = qword_27DEF3858;
  if (!qword_27DEF3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3858);
  }

  return result;
}

unint64_t sub_2381C7A84()
{
  result = qword_27DEF3860;
  if (!qword_27DEF3860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3860);
  }

  return result;
}

unint64_t sub_2381C7ADC()
{
  result = qword_27DEF3868;
  if (!qword_27DEF3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3868);
  }

  return result;
}

unint64_t sub_2381C7B34()
{
  result = qword_27DEF3870;
  if (!qword_27DEF3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3870);
  }

  return result;
}

unint64_t sub_2381C7B8C()
{
  result = qword_27DEF3878;
  if (!qword_27DEF3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3878);
  }

  return result;
}

unint64_t sub_2381C7BE4()
{
  result = qword_27DEF3880;
  if (!qword_27DEF3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3880);
  }

  return result;
}

unint64_t sub_2381C7C3C()
{
  result = qword_27DEF3888;
  if (!qword_27DEF3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3888);
  }

  return result;
}

unint64_t sub_2381C7C94()
{
  result = qword_27DEF3890;
  if (!qword_27DEF3890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3890);
  }

  return result;
}

unint64_t sub_2381C7CEC()
{
  result = qword_27DEF3898;
  if (!qword_27DEF3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3898);
  }

  return result;
}

unint64_t sub_2381C7D44()
{
  result = qword_27DEF38A0;
  if (!qword_27DEF38A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF38A0);
  }

  return result;
}

unint64_t sub_2381C7D9C()
{
  result = qword_27DEF38A8;
  if (!qword_27DEF38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF38A8);
  }

  return result;
}

unint64_t sub_2381C7DF4()
{
  result = qword_27DEF38B0;
  if (!qword_27DEF38B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF38B0);
  }

  return result;
}

unint64_t sub_2381C7E4C()
{
  result = qword_27DEF38B8;
  if (!qword_27DEF38B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF38B8);
  }

  return result;
}

unint64_t sub_2381C7EA4()
{
  result = qword_27DEF38C0;
  if (!qword_27DEF38C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF38C0);
  }

  return result;
}

uint64_t sub_2381C7EF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (sub_2381CA40C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_2381CA40C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1952867692 && a2 == 0xE400000000000000 || (sub_2381CA40C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2381CA40C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2381C8060(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2381C80B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2381A6574;

  return sub_2381A6E64(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2381C8180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2381A6574;

  return sub_2381A6B80(a1, v4, v5, v7, v6);
}

uint64_t sub_2381C8240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23819DAE0;

  return sub_2381A6890(a1, v4, v5, v7, v6);
}

uint64_t sub_2381C8300()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2381C8358(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2381A6574;

  return sub_2381A668C(a1, v10, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2381C8440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2381A6574;

  return sub_2381C236C(a1, v4, v5, v6);
}

uint64_t sub_2381C84F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2381C8060(result, a2);
  }

  return result;
}

uint64_t sub_2381C8508(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_2381C856C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress);
  *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress) = v2;

  return v2;
}

uint64_t sub_2381C85AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2381C8608()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2381C8658(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2381A6574;

  return sub_2381AEFA4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2381C87CC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3908, &qword_2381CC910) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2381A6574;

  return sub_2381B7750(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2381C88E4(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3908, &qword_2381CC910) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_2381B82EC(a1, a2, a3, a4, v10, v11);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  sub_2381C8060(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2381C89D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2381C89E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2381C8A38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2381A6574;

  return sub_2381B7180(a1, v4, v5, v6);
}

uint64_t sub_2381C8B40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3928, &qword_2381CC958);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2381C8C2C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3928, &qword_2381CC958) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2381A6574;

  return sub_2381B5D0C(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_2381C8D80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, double a6)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3928, &qword_2381CC958) - 8);
  v14 = v6 + ((*(v13 + 80) + 16) & ~*(v13 + 80));

  return sub_2381B684C(a1, a2, a3, a4, a5, v14, a6);
}

uint64_t sub_2381C8E3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  v5 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  v6 = v5;
  *(a2 + 72) = v5;
  return a2;
}

uint64_t sub_2381C8EB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2381A6574;

  return sub_2381B592C(a1, v4, v5, v6);
}

uint64_t sub_2381C8FCC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3940, &qword_2381CC990) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2381A6574;

  return sub_2381B43C8(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_350Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

void sub_2381C91A4(void *a1, uint64_t a2, int a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3940, &qword_2381CC990) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_2381B4B3C(a1, a2, a3, v8, v9);
}

uint64_t objectdestroy_287Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2381C9284()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2381C92BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2381A6574;

  return sub_2381B3DF8(a1, v4, v5, v6);
}

uint64_t objectdestroy_346Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2381C94A0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2381A6574;

  return sub_2381B3494(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_371Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

void sub_2381C963C(void *a1, uint64_t a2, int a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_2381B3924(a1, a2, a3, v8);
}

uint64_t objectdestroy_316Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2381C9710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23819DAE0;

  return sub_2381B2D98(a1, v4, v5, v6);
}
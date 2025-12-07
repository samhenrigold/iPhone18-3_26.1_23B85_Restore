double sub_22F1D4534(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [a1 localIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_22F740E20();
    v11 = v10;

    if (sub_22F15E910(v9, v11, a3))
    {

      sub_22F10BBDC(&v17, v9, v11);
    }

    if (sub_22F15E910(v9, v11, a5))
    {
      sub_22F10BBDC(&v17, v9, v11);
    }
  }

  else
  {
    if (qword_27DAAFD48 != -1)
    {
      swift_once();
    }

    v12 = sub_22F740B90();
    __swift_project_value_buffer(v12, qword_27DAD0E28);
    oslog = sub_22F740B70();
    v13 = sub_22F7415E0();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22F0FC000, oslog, v13, "Error: Unable to find a local identifier for child node, skipping node in evaluation...", v14, 2u);
      MEMORY[0x2319033A0](v14, -1, -1);
    }
  }

  return result;
}

double sub_22F1D4704(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [a1 localIdentifier];
  v8 = sub_22F740E20();
  v10 = v9;

  if (sub_22F15E910(v8, v10, a3))
  {

    sub_22F10BBDC(&v12, v8, v10);
  }

  if (sub_22F15E910(v8, v10, a5))
  {
    sub_22F10BBDC(&v12, v8, v10);
  }

  return result;
}

double sub_22F1D47F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [a1 entityIdentifier];
  v7 = sub_22F740E20();
  v9 = v8;

  v25 = v7;
  v26 = v9;
  v27 = sub_22F740E20();
  v28 = v10;
  sub_22F160DE4();
  LOBYTE(v6) = sub_22F741910();

  if ((v6 & 1) == 0 && [a1 state] == 2)
  {
    v11 = [a1 additionalInfo];
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = v11;
    v13 = sub_22F740CA0();

    v14 = sub_22F740E20();
    if (*(v13 + 16))
    {
      v16 = sub_22F1229E8(v14, v15);
      v18 = v17;

      if (v18)
      {
        sub_22F13A100(*(v13 + 56) + 32 * v16, &v25);

        if (swift_dynamicCast())
        {
          v20 = v27;
          v19 = v28;
          if (v20 == sub_22F740E20() && v19 == v21)
          {
          }

          else
          {
            sub_22F742040();
          }

          goto LABEL_12;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    goto LABEL_15;
  }

  v25 = v7;
  v26 = v9;
  v27 = sub_22F740E20();
  v28 = v22;
  v23 = sub_22F741910();

  if ((v23 & 1) == 0 && [a1 state] == 3)
  {
LABEL_12:
    swift_beginAccess();
    sub_22F10BBDC(&v27, v7, v9);
    swift_endAccess();
  }

LABEL_15:

  return result;
}

void sub_22F1D4AD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double sub_22F1D4B54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [a1 additionalInfo];
  if (v6)
  {
    v8 = v6;
    v9 = sub_22F740CA0();

    v10 = sub_22F740E20();
    if (*(v9 + 16))
    {
      v12 = sub_22F1229E8(v10, v11);
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        goto LABEL_16;
      }

      sub_22F13A100(*(v9 + 56) + 32 * v12, &v39);

      if ((swift_dynamicCast() & 1) == 0)
      {
        return result;
      }

      v15 = v37;
      v16 = v38;
      v17 = [a1 entityIdentifier];
      v36 = sub_22F740E20();
      v19 = v18;

      v39 = v37;
      v40 = v38;
      v37 = sub_22F740E20();
      v38 = v20;
      sub_22F160DE4();
      LOBYTE(v17) = sub_22F741910();

      if (v17 & 1) == 0 || (v39 = v36, v40 = v19, v37 = sub_22F740E20(), v38 = v21, v22 = sub_22F741910(), , (v22) || [a1 state] != 2)
      {
        v39 = v15;
        v40 = v16;
        v37 = sub_22F740E20();
        v38 = v32;
        v33 = sub_22F741910();

        if ((v33 & 1) == 0)
        {
          goto LABEL_16;
        }

        v39 = v36;
        v40 = v19;
        v37 = sub_22F740E20();
        v38 = v34;
        v35 = sub_22F741910();

        if ((v35 & 1) != 0 || [a1 state] != 3)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

      v23 = [a1 additionalInfo];
      if (!v23)
      {
LABEL_16:

        return result;
      }

      v24 = v23;
      v25 = sub_22F740CA0();

      v26 = sub_22F740E20();
      if (*(v25 + 16))
      {
        v28 = sub_22F1229E8(v26, v27);
        v30 = v29;

        if (v30)
        {
          sub_22F13A100(*(v25 + 56) + 32 * v28, &v39);

          if (swift_dynamicCast())
          {
            if (v37 == sub_22F740E20() && v38 == v31)
            {
            }

            else
            {
              sub_22F742040();
            }

LABEL_21:
            swift_beginAccess();
            sub_22F10BBDC(&v37, v36, v19);
            swift_endAccess();
            goto LABEL_16;
          }

          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    goto LABEL_16;
  }

  return result;
}

double sub_22F1D4F9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [a1 localIdentifier];
  v5 = sub_22F740E20();
  v7 = v6;

  swift_beginAccess();
  sub_22F10BBDC(&v9, v5, v7);
  swift_endAccess();

  return result;
}

id ImportantEntitiesTuning.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImportantEntitiesTuning.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportantEntitiesTuning();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ImportantEntitiesTuning.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ImportantEntitiesTuning();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22F1D5108(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, uint64_t), void (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_22F1D5814(v14, a3, a4, a5);
  return sub_22F741BB0();
}

uint64_t sub_22F1D51B4(uint64_t a1, void *a2)
{
  *(v2 + 16) = MEMORY[0x277D84F90];
  v6 = (v2 + 16);
  if ((*(a1 + 24) & 1) == 0)
  {
    type metadata accessor for ImportantEntitiesTuningEvent();
    while (1)
    {
      *(a1 + 24) = 1;
      v9 = *(a1 + 16);
      *(swift_allocObject() + 16) = v9;
      v10 = v9;
      v11 = objc_autoreleasePoolPush();
      swift_beginAccess();

      MEMORY[0x231900D00](v12);
      if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      sub_22F741220();
      v13 = *v6;
      swift_endAccess();
      if (v13 >> 62)
      {
        sub_22F741A00();
      }

      if (*v6 >> 62)
      {
        if (__OFADD__(sub_22F741A00(), 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else if (__OFADD__(*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
      {
        goto LABEL_16;
      }

      sub_22F741690();
      if (v3)
      {
        break;
      }

      objc_autoreleasePoolPop(v11);

      if (*(a1 + 24))
      {
        goto LABEL_2;
      }
    }

    objc_autoreleasePoolPop(v11);

    v14 = v16;

    return v14;
  }

LABEL_2:

  swift_beginAccess();
  v7 = *v6;
  swift_bridgeObjectRetain_n();
  v17 = sub_22F36C43C(v8, v7);
  sub_22F1D5108(&v17, sub_22F3F6724, type metadata accessor for ImportantEntitiesTuningEvent, sub_22F1D63EC, sub_22F1D5938);
  if (!v3)
  {

    *v6 = v17;

    sub_22F7416A0();
LABEL_17:

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F1D5494(void *a1, void *a2)
{
  v5 = v3;
  v6 = v2;
  *(v6 + 16) = MEMORY[0x277D84F90];
  v9 = (v6 + 16);
  v10 = a1[7];
  v11 = a1[3];
  while (2)
  {
    if (v10 >= *(v11 + 16))
    {

      swift_beginAccess();
      v16 = *v9;
      swift_bridgeObjectRetain_n();
      v20 = sub_22F36C494(v17, v16);
      sub_22F1D5108(&v20, sub_22F3F6724, type metadata accessor for PGSharedLibrarySimulationEvent, sub_22F1D6BC8, sub_22F1D5B24);
      if (!v5)
      {

        *v9 = v20;

        sub_22F7416A0();

        return v6;
      }
    }

    else
    {
      swift_beginAccess();
      while (a1[6] < *(a1[5] + 16))
      {
        v19.isa = 0;
        isa = objc_autoreleasePoolPush();
        sub_22F332248(a1, &v19);
        if (v5)
        {
          goto LABEL_14;
        }

        v5 = 0;
        objc_autoreleasePoolPop(isa);
        isa = v19.isa;
        if (v19.isa)
        {
          v15 = objc_autoreleasePoolPush();
          sub_22F1D56E0(v6, isa);
          objc_autoreleasePoolPop(v15);

          goto LABEL_4;
        }
      }

      a1[6] = 0;
      v12 = a1[7];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (!v13)
      {
        a1[7] = v14;
        sub_22F332774();
LABEL_4:
        v10 = a1[7];
        v11 = a1[3];
        continue;
      }

      __break(1u);
LABEL_14:
      objc_autoreleasePoolPop(isa);
      __break(1u);
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F1D56E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  MEMORY[0x231900D00](v3);
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22F7411C0();
  }

  sub_22F741220();
  v4 = *(a1 + 16);
  swift_endAccess();
  if (v4 >> 62)
  {
    sub_22F741A00();
  }

  v5 = *(a1 + 16);
  if (v5 >> 62)
  {
    result = sub_22F741A00();
    if (!__OFADD__(result, 1))
    {
      return sub_22F741690();
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!__OFADD__(result, 1))
    {
      return sub_22F741690();
    }
  }

  __break(1u);
  return result;
}

void sub_22F1D5814(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = sub_22F742000();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_22F741200();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

void sub_22F1D5938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v30 = sub_22F73F690();
  MEMORY[0x28223BE20](v30);
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v25 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v31 = *a4;
    v14 = v31 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v27 = v14;
    v28 = a3;
    v26 = v15;
    v16 = v14;
    while (1)
    {

      sub_22F73F550();
      v17 = v29;
      sub_22F73F550();
      v18 = sub_22F73F5D0();
      v19 = *v13;
      v20 = v17;
      v21 = v30;
      (*v13)(v20, v30);
      v19(v12, v21);

      if ((v18 & 1) == 0)
      {
LABEL_4:
        a3 = v28 + 1;
        v14 = v27 + 8;
        v15 = v26 - 1;
        if (v28 + 1 == v25)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v31)
      {
        break;
      }

      v22 = *v16;
      *v16 = v16[1];
      v16[1] = v22;
      --v16;
      if (__CFADD__(v15++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F1D5B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v75[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v88 = &v75[-v11];
  MEMORY[0x28223BE20](v12);
  v90 = &v75[-v13];
  MEMORY[0x28223BE20](v14);
  v87 = &v75[-v15];
  v16 = sub_22F73F690();
  MEMORY[0x28223BE20](v16);
  v18 = &v75[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v92 = &v75[-v20];
  v23 = MEMORY[0x28223BE20](v21);
  v94 = &v75[-v24];
  v76 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v97 = (v22 + 56);
    v91 = (v22 + 32);
    v84 = (v22 + 48);
    v86 = (v22 + 8);
    v89 = v25;
    v26 = (v25 + 8 * a3 - 8);
    v27 = a1 - a3;
    v23.n128_u64[0] = 136315138;
    v82 = v23;
    v85 = v18;
LABEL_5:
    v79 = a3;
    v28 = *(v89 + 8 * a3);
    v77 = v27;
    v29 = v27;
    v78 = v26;
    v30 = v83;
    while (1)
    {
      v31 = *v26;
      v32 = *(v28 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);

      v95 = v31;

      v33 = [v32 creationDate];
      v93 = v29;
      if (v33)
      {
        v34 = v87;
        v35 = v33;
        sub_22F73F640();

        v96 = *v97;
        v96(v34, 0, 1, v16);
        sub_22F15FCF0(v34);
      }

      else
      {
        v36 = v87;
        v96 = *v97;
        v96(v87, 1, 1, v16);
        sub_22F15FCF0(v36);
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v37 = sub_22F740B90();
        __swift_project_value_buffer(v37, qword_27DAD0E10);

        v38 = sub_22F740B70();
        v39 = sub_22F7415E0();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v98 = v81;
          *v40 = v82.n128_u32[0];
          sub_22F73F470();
          sub_22F1DAEAC();
          v41 = sub_22F742010();
          v43 = sub_22F145F20(v41, v42, &v98);

          *(v40 + 4) = v43;
          v30 = v83;
          _os_log_impl(&dword_22F0FC000, v38, v39, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v40, 0xCu);
          v44 = v81;
          __swift_destroy_boxed_opaque_existential_0(v81);
          MEMORY[0x2319033A0](v44, -1, -1);
          MEMORY[0x2319033A0](v40, -1, -1);
        }

        v18 = v85;
      }

      v45 = [v32 creationDate];
      if (v45)
      {
        v46 = v92;
        v47 = v45;
        sub_22F73F640();

        v48 = v90;
        v49 = *v91;
        (*v91)(v90, v46, v16);
        v96(v48, 0, 1, v16);
        v49(v94, v48, v16);
      }

      else
      {
        v50 = v90;
        v96(v90, 1, 1, v16);
        sub_22F73F650();
        if ((*v84)(v50, 1, v16) != 1)
        {
          sub_22F15FCF0(v90);
        }
      }

      v51 = *(v95 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);
      v52 = [v51 creationDate];
      if (v52)
      {
        v53 = v88;
        v54 = v52;
        sub_22F73F640();

        v96(v53, 0, 1, v16);
        sub_22F15FCF0(v53);
      }

      else
      {
        v55 = v88;
        v96(v88, 1, 1, v16);
        sub_22F15FCF0(v55);
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v56 = sub_22F740B90();
        __swift_project_value_buffer(v56, qword_27DAD0E10);

        v57 = sub_22F740B70();
        v58 = sub_22F7415E0();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          LODWORD(v81) = v58;
          v60 = v59;
          v80 = swift_slowAlloc();
          v98 = v80;
          *v60 = v82.n128_u32[0];
          sub_22F73F470();
          sub_22F1DAEAC();
          v61 = sub_22F742010();
          v63 = sub_22F145F20(v61, v62, &v98);

          *(v60 + 4) = v63;
          v30 = v83;
          _os_log_impl(&dword_22F0FC000, v57, v81, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v60, 0xCu);
          v64 = v80;
          __swift_destroy_boxed_opaque_existential_0(v80);
          MEMORY[0x2319033A0](v64, -1, -1);
          MEMORY[0x2319033A0](v60, -1, -1);
        }

        v18 = v85;
      }

      v65 = [v51 creationDate];
      if (v65)
      {
        v66 = v92;
        v67 = v65;
        sub_22F73F640();

        v68 = *v91;
        (*v91)(v30, v66, v16);
        v96(v30, 0, 1, v16);
        v68(v18, v30, v16);
      }

      else
      {
        v96(v30, 1, 1, v16);
        sub_22F73F650();
        if ((*v84)(v30, 1, v16) != 1)
        {
          sub_22F15FCF0(v30);
        }
      }

      v69 = v94;
      v70 = sub_22F73F5D0();
      v71 = *v86;
      (*v86)(v18, v16);
      v71(v69, v16);

      v72 = v93;
      if ((v70 & 1) == 0)
      {
LABEL_4:
        a3 = v79 + 1;
        v26 = v78 + 1;
        v27 = v77 - 1;
        if (v79 + 1 == v76)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v89)
      {
        break;
      }

      v73 = *v26;
      v28 = v26[1];
      *v26 = v28;
      v26[1] = v73;
      --v26;
      v74 = __CFADD__(v72, 1);
      v29 = v72 + 1;
      if (v74)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F1D63EC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v100 = a1;
  v110 = sub_22F73F690();
  MEMORY[0x28223BE20](v110);
  v109 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v108 = &v95 - v12;
  v13 = a3[1];
  v101 = a3;
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    a4 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v90 = a4;
    }

    else
    {
LABEL_122:
      v90 = sub_22F3F5F98(a4);
    }

    v111 = v90;
    a4 = *(v90 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v91 = *&v90[16 * a4];
        v92 = v90;
        v93 = *&v90[16 * a4 + 24];
        sub_22F1D8268((*a3 + 8 * v91), (*a3 + 8 * *&v90[16 * a4 + 16]), (*a3 + 8 * v93), v5);
        if (v6)
        {
          goto LABEL_100;
        }

        if (v93 < v91)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_22F3F5F98(v92);
        }

        if (a4 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v94 = &v92[16 * a4];
        *v94 = v91;
        *(v94 + 1) = v93;
        v111 = v92;
        sub_22F3F5F0C(a4 - 1);
        v90 = v111;
        a4 = *(v111 + 2);
        a3 = v101;
        if (a4 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v14 = 0;
  v107 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  v99 = a4;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v105 = v13;
      v97 = v15;
      v98 = v6;
      v17 = *a3;
      v104 = 8 * v16;
      v5 = v17 + 8 * v16 + 16;

      v18 = v108;
      sub_22F73F550();
      v19 = v109;
      sub_22F73F550();
      LODWORD(v106) = sub_22F73F5D0();
      a3 = v16;
      v20 = *v107;
      v21 = v19;
      a4 = v110;
      (*v107)(v21, v110);
      v20(v18, a4);

      v96 = a3;
      v22 = a3 + 2;
      while (1)
      {
        v14 = v105;
        if (v105 == v22)
        {
          break;
        }

        v23 = v108;
        sub_22F73F550();
        v24 = v109;
        sub_22F73F550();
        a4 = sub_22F73F5D0() & 1;
        v25 = v24;
        v26 = v110;
        a3 = v107;
        v20(v25, v110);
        v20(v23, v26);

        ++v22;
        v5 += 8;
        if ((v106 & 1) != a4)
        {
          v14 = (v22 - 1);
          break;
        }
      }

      v15 = v97;
      v6 = v98;
      v16 = v96;
      v27 = v104;
      if (v106)
      {
        if (v14 < v96)
        {
          goto LABEL_119;
        }

        a3 = v101;
        if (v96 < v14)
        {
          v28 = 8 * v14 - 8;
          v29 = v14;
          v30 = v96;
          a4 = v99;
          do
          {
            if (v30 != --v29)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v31 = *(v32 + v27);
              *(v32 + v27) = *(v32 + v28);
              *(v32 + v28) = v31;
            }

            v30 = (v30 + 1);
            v28 -= 8;
            v27 += 8;
          }

          while (v30 < v29);
          goto LABEL_20;
        }
      }

      else
      {
        a3 = v101;
      }

      a4 = v99;
    }

LABEL_20:
    v33 = a3[1];
    if (v14 < v33)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_118;
      }

      if (v14 - v16 < a4)
      {
        v34 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_120;
        }

        if (v34 >= v33)
        {
          v34 = a3[1];
        }

        if (v34 < v16)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v14 != v34)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v14 < v16)
    {
      goto LABEL_117;
    }

    v45 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v45;
    }

    else
    {
      v15 = sub_22F13D970(0, *(v45 + 2) + 1, 1, v45);
    }

    a4 = *(v15 + 2);
    v46 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v46 >> 1)
    {
      v15 = sub_22F13D970((v46 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v47 = &v15[16 * a4];
    *(v47 + 4) = v16;
    *(v47 + 5) = v14;
    v48 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (a4)
    {
      while (1)
      {
        v49 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v50 = *(v15 + 4);
          v51 = *(v15 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v15[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v15[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v5 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v76 = &v15[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_71:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v15[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_78:
        a4 = v49 - 1;
        if (v49 - 1 >= v5)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = v15;
        v88 = *&v15[16 * a4 + 32];
        v5 = *&v15[16 * v49 + 40];
        sub_22F1D8268((*a3 + 8 * v88), (*a3 + 8 * *&v15[16 * v49 + 32]), (*a3 + 8 * v5), v48);
        if (v6)
        {
          goto LABEL_100;
        }

        if (v5 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_22F3F5F98(v87);
        }

        if (a4 >= *(v87 + 2))
        {
          goto LABEL_103;
        }

        v89 = &v87[16 * a4];
        *(v89 + 4) = v88;
        *(v89 + 5) = v5;
        v111 = v87;
        sub_22F3F5F0C(v49);
        v15 = v111;
        v5 = *(v111 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v15[16 * v5 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v15[16 * v5];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v15[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v5 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v99;
    if (v14 >= v13)
    {
      goto LABEL_89;
    }
  }

  v97 = v15;
  v98 = v6;
  v106 = *a3;
  v35 = v106 + 8 * v14 - 8;
  v96 = v16;
  v36 = (v16 - v14);
  v102 = v34;
LABEL_30:
  v104 = v35;
  v105 = v14;
  v5 = *(v106 + 8 * v14);
  v103 = v36;
  v37 = v35;
  while (1)
  {

    a4 = v108;
    sub_22F73F550();
    v38 = v109;
    sub_22F73F550();
    v39 = sub_22F73F5D0();
    v40 = *v107;
    v41 = v38;
    v42 = v110;
    (*v107)(v41, v110);
    v40(a4, v42);

    if ((v39 & 1) == 0)
    {
LABEL_29:
      v14 = (v105 + 1);
      v35 = v104 + 8;
      v36 = v103 - 1;
      if (v105 + 1 != v102)
      {
        goto LABEL_30;
      }

      v14 = v102;
      v15 = v97;
      v6 = v98;
      a3 = v101;
      v16 = v96;
      goto LABEL_37;
    }

    if (!v106)
    {
      break;
    }

    v43 = *v37;
    v5 = v37[1];
    *v37 = v5;
    v37[1] = v43;
    --v37;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

void sub_22F1D6BC8(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v214 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v210 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v210 - v12;
  MEMORY[0x28223BE20](v14);
  v237 = &v210 - v15;
  MEMORY[0x28223BE20](v16);
  v234 = &v210 - v17;
  MEMORY[0x28223BE20](v18);
  v224 = &v210 - v19;
  MEMORY[0x28223BE20](v20);
  v220 = &v210 - v21;
  MEMORY[0x28223BE20](v22);
  v223 = &v210 - v23;
  MEMORY[0x28223BE20](v24);
  v219 = &v210 - v25;
  v26 = sub_22F73F690();
  MEMORY[0x28223BE20](v26);
  v28 = &v210 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v242 = &v210 - v30;
  MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v32);
  v226 = &v210 - v33;
  MEMORY[0x28223BE20](v34);
  v211 = &v210 - v35;
  v39 = MEMORY[0x28223BE20](v36);
  v239 = &v210 - v40;
  v225 = a3;
  v41 = *(a3 + 8);
  if (v41 < 1)
  {
    v44 = MEMORY[0x277D84F90];
LABEL_132:
    a3 = *v214;
    if (!*v214)
    {
      goto LABEL_171;
    }

    a4 = v44;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v205 = a4;
LABEL_135:
      v246 = v205;
      a4 = *(v205 + 2);
      if (a4 >= 2)
      {
        while (*v225)
        {
          v206 = *&v205[16 * a4];
          v207 = v205;
          v208 = *&v205[16 * a4 + 24];
          sub_22F1D86B4((*v225 + 8 * v206), (*v225 + 8 * *&v205[16 * a4 + 16]), (*v225 + 8 * v208), a3);
          if (v5)
          {
            goto LABEL_143;
          }

          if (v208 < v206)
          {
            goto LABEL_158;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v207 = sub_22F3F5F98(v207);
          }

          if (a4 - 2 >= *(v207 + 2))
          {
            goto LABEL_159;
          }

          v209 = &v207[16 * a4];
          *v209 = v206;
          *(v209 + 1) = v208;
          v246 = v207;
          sub_22F3F5F0C(a4 - 1);
          v205 = v246;
          a4 = *(v246 + 2);
          if (a4 <= 1)
          {
            goto LABEL_143;
          }
        }

        goto LABEL_169;
      }

LABEL_143:

      return;
    }

LABEL_165:
    v205 = sub_22F3F5F98(a4);
    goto LABEL_135;
  }

  v42 = 0;
  v236 = (v37 + 8);
  v43 = (v37 + 56);
  v238 = (v37 + 32);
  v230 = (v37 + 48);
  v44 = MEMORY[0x277D84F90];
  v39.n128_u64[0] = 136315138;
  v228 = v39;
  v213 = a4;
  v232 = v13;
  v233 = v10;
  v229 = v26;
  v231 = v28;
  v218 = v38;
  v240 = (v37 + 56);
  while (1)
  {
    v45 = v42;
    v46 = v42 + 1;
    v215 = v42;
    if (v42 + 1 < v41)
    {
      v222 = v41;
      v212 = v44;
      v47 = *v225;
      v227 = v5;
      v216 = 8 * v42;
      a3 = v47 + 8 * v42 + 16;

      v48 = v239;
      sub_22F16CC5C(v239);
      v49 = v211;
      sub_22F16CC5C(v211);
      LODWORD(v235) = sub_22F73F5D0();
      v50 = *v236;
      (*v236)(v49, v26);
      v221 = v50;
      v50(v48, v26);

      v51 = v215 + 2;
      v5 = v227;
      while (1)
      {
        v46 = v222;
        if (v222 == v51)
        {
          break;
        }

        v62 = *(a3 - 8);
        v63 = *a3;
        v64 = *(*a3 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);

        v65 = [v64 creationDate];
        v243 = v62;
        v227 = v5;
        v241 = v63;
        if (v65)
        {
          v66 = v219;
          v67 = v65;
          sub_22F73F640();

          v244 = *v240;
          v244(v66, 0, 1, v26);
          sub_22F15FCF0(v66);
        }

        else
        {
          v68 = v219;
          v244 = *v240;
          v244(v219, 1, 1, v26);
          sub_22F15FCF0(v68);
          if (qword_27DAAFD40 != -1)
          {
            swift_once();
          }

          v69 = sub_22F740B90();
          __swift_project_value_buffer(v69, qword_27DAD0E10);

          v70 = sub_22F740B70();
          v71 = sub_22F7415E0();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v245 = v73;
            *v72 = v228.n128_u32[0];
            LODWORD(v217) = v71;
            sub_22F73F470();
            sub_22F1DAEAC();
            v74 = sub_22F742010();
            v76 = sub_22F145F20(v74, v75, &v245);

            *(v72 + 4) = v76;
            v5 = v227;
            _os_log_impl(&dword_22F0FC000, v70, v217, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v72, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v73);
            v77 = v73;
            v26 = v229;
            MEMORY[0x2319033A0](v77, -1, -1);
            v78 = v72;
            v62 = v243;
            MEMORY[0x2319033A0](v78, -1, -1);
          }

          v28 = v231;
        }

        v79 = [v64 creationDate];
        if (v79)
        {
          v80 = v239;
          v81 = v79;
          sub_22F73F640();

          v82 = *v238;
          v83 = v223;
          (*v238)(v223, v80, v26);
          v244(v83, 0, 1, v26);
          v82(v226, v83, v26);
          v62 = v243;
        }

        else
        {
          v84 = v223;
          v244(v223, 1, 1, v26);
          sub_22F73F650();
          if ((*v230)(v84, 1, v26) != 1)
          {
            sub_22F15FCF0(v223);
          }
        }

        v85 = *(v62 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);
        v86 = [v85 creationDate];
        if (v86)
        {
          v87 = v220;
          v88 = v86;
          sub_22F73F640();

          v244(v87, 0, 1, v26);
          sub_22F15FCF0(v87);
        }

        else
        {
          v89 = v220;
          v244(v220, 1, 1, v26);
          sub_22F15FCF0(v89);
          if (qword_27DAAFD40 != -1)
          {
            swift_once();
          }

          v90 = sub_22F740B90();
          __swift_project_value_buffer(v90, qword_27DAD0E10);

          v91 = sub_22F740B70();
          v92 = sub_22F7415E0();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v245 = v94;
            *v93 = v228.n128_u32[0];
            sub_22F73F470();
            sub_22F1DAEAC();
            v95 = sub_22F742010();
            v97 = sub_22F145F20(v95, v96, &v245);

            *(v93 + 4) = v97;
            v5 = v227;
            _os_log_impl(&dword_22F0FC000, v91, v92, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v93, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v94);
            MEMORY[0x2319033A0](v94, -1, -1);
            v98 = v93;
            v26 = v229;
            MEMORY[0x2319033A0](v98, -1, -1);
          }

          v28 = v231;
        }

        v99 = [v85 creationDate];
        v100 = v218;
        if (v99)
        {
          v52 = v239;
          v53 = v99;
          sub_22F73F640();

          v54 = *v238;
          v55 = a3;
          v56 = v51;
          v57 = v224;
          (*v238)(v224, v52, v26);
          v244(v57, 0, 1, v26);
          v58 = v57;
          v51 = v56;
          a3 = v55;
          v54(v100, v58, v26);
          v5 = v227;
        }

        else
        {
          v101 = v224;
          v244(v224, 1, 1, v26);
          sub_22F73F650();
          if ((*v230)(v101, 1, v26) != 1)
          {
            sub_22F15FCF0(v224);
          }
        }

        v59 = v226;
        v60 = sub_22F73F5D0();
        v61 = v221;
        v221(v100, v26);
        v61(v59, v26);

        ++v51;
        a3 += 8;
        if ((v235 ^ v60))
        {
          v46 = v51 - 1;
          break;
        }
      }

      a4 = v213;
      v44 = v212;
      v43 = v240;
      v45 = v215;
      v102 = v216;
      if (v235)
      {
        if (v46 < v215)
        {
          goto LABEL_162;
        }

        if (v215 < v46)
        {
          v103 = 8 * v46 - 8;
          v104 = v46;
          v105 = v215;
          do
          {
            if (v105 != --v104)
            {
              v106 = *v225;
              if (!*v225)
              {
                goto LABEL_168;
              }

              v107 = *(v106 + v102);
              *(v106 + v102) = *(v106 + v103);
              *(v106 + v103) = v107;
            }

            ++v105;
            v103 -= 8;
            v102 += 8;
          }

          while (v105 < v104);
        }
      }
    }

    v108 = v225[1];
    if (v46 < v108)
    {
      if (__OFSUB__(v46, v45))
      {
        goto LABEL_161;
      }

      if (v46 - v45 < a4)
      {
        break;
      }
    }

LABEL_79:
    if (v46 < v45)
    {
      goto LABEL_160;
    }

    v159 = v44;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v44 = v159;
    }

    else
    {
      v44 = sub_22F13D970(0, *(v159 + 2) + 1, 1, v159);
    }

    a3 = *(v44 + 2);
    v160 = *(v44 + 3);
    a4 = a3 + 1;
    if (a3 >= v160 >> 1)
    {
      v44 = sub_22F13D970((v160 > 1), a3 + 1, 1, v44);
    }

    *(v44 + 2) = a4;
    v161 = &v44[16 * a3];
    *(v161 + 4) = v215;
    *(v161 + 5) = v46;
    v222 = v46;
    v162 = *v214;
    if (!*v214)
    {
      goto LABEL_170;
    }

    if (a3)
    {
      while (1)
      {
        v163 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v164 = *(v44 + 4);
          v165 = *(v44 + 5);
          v174 = __OFSUB__(v165, v164);
          v166 = v165 - v164;
          v167 = v174;
LABEL_99:
          if (v167)
          {
            goto LABEL_149;
          }

          v180 = &v44[16 * a4];
          v182 = *v180;
          v181 = *(v180 + 1);
          v183 = __OFSUB__(v181, v182);
          v184 = v181 - v182;
          v185 = v183;
          if (v183)
          {
            goto LABEL_152;
          }

          v186 = &v44[16 * v163 + 32];
          v188 = *v186;
          v187 = *(v186 + 1);
          v174 = __OFSUB__(v187, v188);
          v189 = v187 - v188;
          if (v174)
          {
            goto LABEL_155;
          }

          if (__OFADD__(v184, v189))
          {
            goto LABEL_156;
          }

          if (v184 + v189 >= v166)
          {
            if (v166 < v189)
            {
              v163 = a4 - 2;
            }

            goto LABEL_120;
          }

          goto LABEL_113;
        }

        v190 = &v44[16 * a4];
        v192 = *v190;
        v191 = *(v190 + 1);
        v174 = __OFSUB__(v191, v192);
        v184 = v191 - v192;
        v185 = v174;
LABEL_113:
        if (v185)
        {
          goto LABEL_151;
        }

        v193 = &v44[16 * v163];
        v195 = *(v193 + 4);
        v194 = *(v193 + 5);
        v174 = __OFSUB__(v194, v195);
        v196 = v194 - v195;
        if (v174)
        {
          goto LABEL_154;
        }

        if (v196 < v184)
        {
          goto LABEL_3;
        }

LABEL_120:
        a3 = v163 - 1;
        if (v163 - 1 >= a4)
        {
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
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
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*v225)
        {
          goto LABEL_167;
        }

        v201 = v44;
        a4 = *&v44[16 * a3 + 32];
        v202 = *&v44[16 * v163 + 40];
        sub_22F1D86B4((*v225 + 8 * a4), (*v225 + 8 * *&v44[16 * v163 + 32]), (*v225 + 8 * v202), v162);
        if (v5)
        {
          goto LABEL_143;
        }

        if (v202 < a4)
        {
          goto LABEL_145;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v203 = v201;
        }

        else
        {
          v203 = sub_22F3F5F98(v201);
        }

        v28 = v231;
        if (a3 >= *(v203 + 2))
        {
          goto LABEL_146;
        }

        v204 = &v203[16 * a3];
        *(v204 + 4) = a4;
        *(v204 + 5) = v202;
        v246 = v203;
        sub_22F3F5F0C(v163);
        v44 = v246;
        a4 = *(v246 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v168 = &v44[16 * a4 + 32];
      v169 = *(v168 - 64);
      v170 = *(v168 - 56);
      v174 = __OFSUB__(v170, v169);
      v171 = v170 - v169;
      if (v174)
      {
        goto LABEL_147;
      }

      v173 = *(v168 - 48);
      v172 = *(v168 - 40);
      v174 = __OFSUB__(v172, v173);
      v166 = v172 - v173;
      v167 = v174;
      if (v174)
      {
        goto LABEL_148;
      }

      v175 = &v44[16 * a4];
      v177 = *v175;
      v176 = *(v175 + 1);
      v174 = __OFSUB__(v176, v177);
      v178 = v176 - v177;
      if (v174)
      {
        goto LABEL_150;
      }

      v174 = __OFADD__(v166, v178);
      v179 = v166 + v178;
      if (v174)
      {
        goto LABEL_153;
      }

      if (v179 >= v171)
      {
        v197 = &v44[16 * v163 + 32];
        v199 = *v197;
        v198 = *(v197 + 1);
        v174 = __OFSUB__(v198, v199);
        v200 = v198 - v199;
        if (v174)
        {
          goto LABEL_157;
        }

        if (v166 < v200)
        {
          v163 = a4 - 2;
        }

        goto LABEL_120;
      }

      goto LABEL_99;
    }

LABEL_3:
    v41 = v225[1];
    v42 = v222;
    a4 = v213;
    if (v222 >= v41)
    {
      goto LABEL_132;
    }
  }

  v109 = v45 + a4;
  if (__OFADD__(v45, a4))
  {
    goto LABEL_163;
  }

  if (v109 >= v108)
  {
    v109 = v225[1];
  }

  if (v109 < v45)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  if (v46 == v109)
  {
    goto LABEL_79;
  }

  v212 = v44;
  v227 = v5;
  v235 = *v225;
  v110 = v235 + 8 * v46 - 8;
  v111 = v45 - v46;
  v216 = v109;
LABEL_50:
  v222 = v46;
  v112 = *(v235 + 8 * v46);
  v217 = v111;
  v113 = v111;
  v221 = v110;
  v114 = v110;
  while (1)
  {
    v241 = v113;
    v115 = *v114;
    v116 = *(v112 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);

    v117 = [v116 creationDate];
    v243 = v115;
    if (v117)
    {
      v118 = v234;
      v119 = v117;
      sub_22F73F640();

      v244 = *v43;
      v244(v118, 0, 1, v26);
      sub_22F15FCF0(v118);
    }

    else
    {
      v120 = v234;
      v244 = *v43;
      v244(v234, 1, 1, v26);
      sub_22F15FCF0(v120);
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v121 = sub_22F740B90();
      __swift_project_value_buffer(v121, qword_27DAD0E10);

      v122 = sub_22F740B70();
      v123 = sub_22F7415E0();

      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v245 = v125;
        *v124 = v228.n128_u32[0];
        sub_22F73F470();
        sub_22F1DAEAC();
        v126 = sub_22F742010();
        v128 = sub_22F145F20(v126, v127, &v245);

        *(v124 + 4) = v128;
        _os_log_impl(&dword_22F0FC000, v122, v123, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v125);
        MEMORY[0x2319033A0](v125, -1, -1);
        v129 = v124;
        v115 = v243;
        MEMORY[0x2319033A0](v129, -1, -1);
      }

      v26 = v229;
      v28 = v231;
    }

    v130 = [v116 creationDate];
    if (v130)
    {
      v131 = v239;
      v132 = v130;
      sub_22F73F640();

      v133 = v237;
      v134 = *v238;
      (*v238)(v237, v131, v26);
      v244(v133, 0, 1, v26);
      v134(v242, v133, v26);
      v115 = v243;
    }

    else
    {
      v135 = v237;
      v244(v237, 1, 1, v26);
      sub_22F73F650();
      if ((*v230)(v135, 1, v26) != 1)
      {
        sub_22F15FCF0(v237);
      }
    }

    v136 = *(v115 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);
    v137 = [v136 creationDate];
    if (v137)
    {
      v138 = v232;
      v139 = v137;
      sub_22F73F640();

      v244(v138, 0, 1, v26);
      sub_22F15FCF0(v138);
    }

    else
    {
      v140 = v232;
      v244(v232, 1, 1, v26);
      sub_22F15FCF0(v140);
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v141 = sub_22F740B90();
      __swift_project_value_buffer(v141, qword_27DAD0E10);

      v142 = sub_22F740B70();
      v143 = sub_22F7415E0();

      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v245 = v145;
        *v144 = v228.n128_u32[0];
        sub_22F73F470();
        sub_22F1DAEAC();
        v146 = sub_22F742010();
        v148 = sub_22F145F20(v146, v147, &v245);

        *(v144 + 4) = v148;
        _os_log_impl(&dword_22F0FC000, v142, v143, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v144, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v145);
        MEMORY[0x2319033A0](v145, -1, -1);
        MEMORY[0x2319033A0](v144, -1, -1);
      }

      v26 = v229;
      v28 = v231;
    }

    v149 = [v136 creationDate];
    if (v149)
    {
      v150 = v239;
      v151 = v149;
      sub_22F73F640();

      v152 = *v238;
      v153 = v233;
      (*v238)(v233, v150, v26);
      v244(v153, 0, 1, v26);
      v152(v28, v153, v26);
    }

    else
    {
      v154 = v233;
      v244(v233, 1, 1, v26);
      sub_22F73F650();
      if ((*v230)(v154, 1, v26) != 1)
      {
        sub_22F15FCF0(v154);
      }
    }

    v155 = v242;
    a3 = sub_22F73F5D0();
    a4 = *v236;
    (*v236)(v28, v26);
    (a4)(v155, v26);

    if ((a3 & 1) == 0)
    {
      v43 = v240;
LABEL_49:
      v46 = v222 + 1;
      v110 = v221 + 8;
      v111 = v217 - 1;
      if (v222 + 1 == v216)
      {
        v46 = v216;
        v5 = v227;
        v44 = v212;
        v45 = v215;
        goto LABEL_79;
      }

      goto LABEL_50;
    }

    v156 = v241;
    if (!v235)
    {
      break;
    }

    v157 = *v114;
    v112 = v114[1];
    *v114 = v112;
    v114[1] = v157;
    --v114;
    v158 = __CFADD__(v156, 1);
    v113 = v156 + 1;
    v43 = v240;
    if (v158)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
}

uint64_t sub_22F1D8268(char *a1, char *a2, char *a3, char *a4)
{
  v45 = a4;
  v42 = sub_22F73F690();
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v36 - v10;
  v11 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v12 >= v13 >> 3)
  {
    v43 = a1;
    if (v45 != a2 || &a2[8 * v14] <= v45)
    {
      memmove(v45, a2, 8 * v14);
    }

    v44 = &v45[8 * v14];
    if (a3 - a2 >= 8 && a2 > v43)
    {
      v37 = (v7 + 8);
      do
      {
        v36 = a2;
        a3 -= 8;
        v26 = v44;
        v38 = a2 - 8;
        while (1)
        {
          v27 = a3 + 8;
          v26 -= 8;

          v28 = v40;
          sub_22F73F550();
          v29 = v41;
          sub_22F73F550();
          v39 = sub_22F73F5D0();
          v30 = *v37;
          v31 = v29;
          v32 = v42;
          (*v37)(v31, v42);
          v30(v28, v32);

          if (v39)
          {
            break;
          }

          if (v27 != v44)
          {
            *a3 = *v26;
          }

          a3 -= 8;
          v44 = v26;
          if (v26 <= v45)
          {
            v44 = v26;
            a2 = v36;
            goto LABEL_38;
          }
        }

        v33 = v43;
        v34 = v38;
        if (v27 != v36)
        {
          *a3 = *v38;
        }

        if (v44 <= v45)
        {
          break;
        }

        a2 = v34;
      }

      while (v34 > v33);
      a2 = v34;
    }
  }

  else
  {
    v15 = a1;
    if (v45 != a1 || &a1[8 * v12] <= v45)
    {
      memmove(v45, a1, 8 * v12);
    }

    v44 = &v45[8 * v12];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v16 = (v7 + 8);
      while (1)
      {
        v43 = v15;

        v17 = v40;
        sub_22F73F550();
        v18 = a2;
        v19 = v41;
        sub_22F73F550();
        v20 = sub_22F73F5D0();
        v21 = *v16;
        v22 = v19;
        v23 = v42;
        (*v16)(v22, v42);
        v21(v17, v23);

        if ((v20 & 1) == 0)
        {
          break;
        }

        v24 = v18;
        a2 = v18 + 8;
        v25 = v43;
        if (v43 != v18)
        {
          goto LABEL_16;
        }

LABEL_17:
        v15 = v25 + 8;
        if (v45 >= v44 || a2 >= a3)
        {
          goto LABEL_19;
        }
      }

      v24 = v45;
      v25 = v43;
      v45 += 8;
      a2 = v18;
      if (v43 == v24)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v25 = *v24;
      goto LABEL_17;
    }

LABEL_19:
    a2 = v15;
  }

LABEL_38:
  if (a2 != v45 || a2 >= &v45[(v44 - v45 + (v44 - v45 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v45, 8 * ((v44 - v45) / 8));
  }

  return 1;
}

uint64_t sub_22F1D86B4(char *a1, char *a2, char *a3, char *a4)
{
  v47 = a4;
  v45 = sub_22F73F690();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v38 - v10;
  v11 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v12 >= v13 >> 3)
  {
    if (v47 != a2 || &a2[8 * v14] <= v47)
    {
      memmove(v47, a2, 8 * v14);
    }

    v46 = &v47[8 * v14];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v39 = (v7 + 8);
      v42 = a1;
      do
      {
        v38 = a2;
        v25 = a3 - 8;
        v26 = v46;
        v40 = a2 - 8;
        while (1)
        {
          v41 = v25;
          v27 = v25 + 8;
          v26 -= 8;

          v28 = v43;
          sub_22F16CC5C(v43);
          v29 = v44;
          sub_22F16CC5C(v44);
          v30 = sub_22F73F5D0();
          v31 = *v39;
          v32 = v29;
          v33 = v45;
          (*v39)(v32, v45);
          v31(v28, v33);

          if (v30)
          {
            break;
          }

          v34 = v41;
          if (v27 != v46)
          {
            *v41 = *v26;
          }

          v25 = v34 - 8;
          v46 = v26;
          if (v26 <= v47)
          {
            v46 = v26;
            a2 = v38;
            goto LABEL_39;
          }
        }

        a3 = v41;
        v35 = v42;
        v36 = v40;
        if (v27 != v38)
        {
          *v41 = *v40;
        }

        if (v46 <= v47)
        {
          break;
        }

        a2 = v36;
      }

      while (v36 > v35);
      a2 = v36;
    }
  }

  else
  {
    if (v47 != a1 || &a1[8 * v12] <= v47)
    {
      memmove(v47, a1, 8 * v12);
    }

    v46 = &v47[8 * v12];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v15 = (v7 + 8);
      while (1)
      {
        v42 = a1;

        v16 = v43;
        sub_22F16CC5C(v43);
        v17 = v44;
        sub_22F16CC5C(v44);
        v18 = sub_22F73F5D0();
        v19 = *v15;
        v20 = v17;
        v21 = v45;
        (*v15)(v20, v45);
        v19(v16, v21);

        if ((v18 & 1) == 0)
        {
          break;
        }

        v22 = a2;
        v23 = v42;
        v24 = v42 == a2;
        a2 += 8;
        if (!v24)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v23 + 8;
        if (v47 >= v46 || a2 >= a3)
        {
          goto LABEL_20;
        }
      }

      v22 = v47;
      v23 = v42;
      v47 += 8;
      if (v42 == v22)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v23 = *v22;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_39:
  if (a2 != v47 || a2 >= &v47[(v46 - v47 + (v46 - v47 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v47, 8 * ((v46 - v47) / 8));
  }

  return 1;
}

uint64_t _s11PhotosGraph23ImportantEntitiesTuningC74truePositiveAndTrueNegativeUsersChildrenLocalIdentifiersFromChildQuestions16withPhotoLibraryShySSG_AFtSgSo07PHPhotoT0C_tFZ_0(void *a1)
{
  v1 = a1;
  v2 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
  v3 = [a1 librarySpecificFetchOptions];
  [v3 setWantsIncrementalChangeDetails_];
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  aBlock = 0x203D3D2065707974;
  v52 = 0xE800000000000000;
  v4 = sub_22F742010();
  MEMORY[0x231900B10](v4);

  v5 = sub_22F741560();

  [v3 setPredicate_];

  v6 = [objc_opt_self() fetchAnsweredYesOrNoQuestionsWithOptions:v3 validQuestionsOnly:1];
  if ([v6 count] < 1)
  {
    if (qword_27DAAFD48 != -1)
    {
      swift_once();
    }

    v18 = sub_22F740B90();
    __swift_project_value_buffer(v18, qword_27DAD0E28);
    v19 = sub_22F740B70();
    v20 = sub_22F7415C0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22F0FC000, v19, v20, "No child relationship Photos Challenge questions answered.", v21, 2u);
      MEMORY[0x2319033A0](v21, -1, -1);
    }

    return 0;
  }

  v48 = v3;
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84FA0];
  *(v7 + 16) = MEMORY[0x277D84FA0];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = (v9 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  v55 = sub_22F1DAFC8;
  v56 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_22F334418;
  v54 = &block_descriptor_48;
  v12 = _Block_copy(&aBlock);

  v47 = v6;
  [v6 enumerateObjectsUsingBlock_];
  _Block_release(v12);
  swift_beginAccess();
  v13 = *(v7 + 16);
  v14 = *(v13 + 16);
  v49 = v1;
  if (v14)
  {
    v15 = sub_22F10B348(v14, 0);
    v16 = sub_22F11A438(&aBlock, v15 + 4, v14, v13);
    v17 = aBlock;
    v2 = v52;

    sub_22F1534EC(v17);
    if (v16 != v14)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v1 = v49;
    v2 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
  }

  v22 = objc_opt_self();
  v23 = sub_22F741160();

  v24 = [v1 v2[317]];
  v25 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
  v50 = [v22 fetchPersonsWithLocalIdentifiers:v23 options:v24];

  swift_beginAccess();
  v16 = *v10;
  v26 = *(*v10 + 16);
  if (v26)
  {
    v27 = sub_22F10B348(*(*v10 + 16), 0);
    v28 = sub_22F11A438(&aBlock, v27 + 4, v26, v16);
    v29 = aBlock;
    v17 = v53;
    v2 = v54;

    sub_22F1534EC(v29);
    if (v28 != v26)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v1 = v49;
    v2 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
    v25 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
  }

  v30 = sub_22F741160();

  v31 = [v1 v2[317]];
  v17 = [v22 v25[364]];

  v32 = [v50 count];
  v33 = [v17 count];
  if (__OFADD__(v32, v33))
  {
    __break(1u);
    goto LABEL_28;
  }

  if (!&v33[v32])
  {
    if (qword_27DAAFD48 != -1)
    {
      swift_once();
    }

    v41 = sub_22F740B90();
    __swift_project_value_buffer(v41, qword_27DAD0E28);
    v42 = sub_22F740B70();
    v43 = sub_22F7415C0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22F0FC000, v42, v43, "Child relationship Photos Challenge questions are out of date, they don't match any existing persons in the database.", v44, 2u);
      MEMORY[0x2319033A0](v44, -1, -1);
    }

    return 0;
  }

  v16 = swift_allocObject();
  v34 = MEMORY[0x277D84FA0];
  *(v16 + 16) = MEMORY[0x277D84FA0];
  v55 = sub_22F1DAFF8;
  v56 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_22F1D4AD0;
  v54 = &block_descriptor_52;
  v35 = _Block_copy(&aBlock);

  [v50 enumerateObjectsUsingBlock_];
  _Block_release(v35);
  v2 = swift_allocObject();
  v2[2] = v34;
  v55 = sub_22F1DAFF8;
  v56 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_22F1D4AD0;
  v54 = &block_descriptor_56;
  v36 = _Block_copy(&aBlock);

  [v17 enumerateObjectsUsingBlock_];
  _Block_release(v36);
  if (qword_27DAAFD48 != -1)
  {
LABEL_30:
    swift_once();
  }

  v37 = sub_22F740B90();
  __swift_project_value_buffer(v37, qword_27DAD0E28);

  v38 = sub_22F740B70();
  v39 = sub_22F7415C0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134218240;
    swift_beginAccess();
    *(v40 + 4) = *(*(v16 + 16) + 16);

    *(v40 + 12) = 2048;
    swift_beginAccess();
    *(v40 + 14) = *(v2[2] + 2);

    _os_log_impl(&dword_22F0FC000, v38, v39, "Found that the user has %ld true positive user's children at the child age categories and %ld true negatives from Photos Challenge questions!", v40, 0x16u);
    MEMORY[0x2319033A0](v40, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v45 = *(v16 + 16);
  swift_beginAccess();

  return v45;
}

uint64_t _s11PhotosGraph23ImportantEntitiesTuningC46getChildrenPositiveAndNegativeLocalIdentifiers02inB004truehcdkL00njcdkL0ShySSG_AHtSo7PGGraphC_A2HtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F771350;
  *(v6 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  *(v6 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v7 = objc_opt_self();
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v8 = sub_22F741160();

  v9 = [v7 personNodesInAgeCategories:v8 includingMe:0 inGraph:a1];

  if (qword_27DAAFD48 != -1)
  {
    swift_once();
  }

  v10 = sub_22F740B90();
  __swift_project_value_buffer(v10, qword_27DAD0E28);
  v11 = v9;
  v12 = sub_22F740B70();
  v13 = sub_22F7415C0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = [v11 count];

    _os_log_impl(&dword_22F0FC000, v12, v13, "Found %ld person nodes in the baby and child age categories that will be considered in evaluation.", v14, 0xCu);
    MEMORY[0x2319033A0](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = &v27;
  v15[4] = a3;
  v15[5] = &v26;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_22F1DAF28;
  *(v16 + 24) = v15;
  aBlock[4] = sub_22F1DAF34;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_31;
  v17 = _Block_copy(aBlock);

  [v11 enumerateUsingBlock:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {

    v20 = sub_22F740B70();
    v21 = sub_22F7415C0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134218752;
      swift_beginAccess();
      *(v22 + 4) = *(v27 + 16);
      *(v22 + 12) = 2048;
      *(v22 + 14) = *(a2 + 16);

      *(v22 + 22) = 2048;
      swift_beginAccess();
      v23 = *(v26 + 16);
      *(v22 + 24) = v23;
      *(v22 + 32) = 2048;
      *(v22 + 34) = v23;
      _os_log_impl(&dword_22F0FC000, v20, v21, "In total, found %ld true positive child nodes out of %ld true positive child persons and %ld true negative child nodes out of %ld true negative child persons.", v22, 0x2Au);
      MEMORY[0x2319033A0](v22, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v24 = v27;
    swift_beginAccess();

    return v24;
  }

  return result;
}

uint64_t _s11PhotosGraph23ImportantEntitiesTuningC41getPetPositiveAndNegativeLocalIdentifiers02inB004truehcdkL00njcdkL0ShySSG_AHtSo7PGGraphC_A2HtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = MEMORY[0x277D84FA0];
  v25 = MEMORY[0x277D84FA0];
  sub_22F120634(0, &unk_2810A9010, off_27887B270);
  v7 = [swift_getObjCClassFromMetadata(v6) nodesInGraph_];
  if (qword_27DAAFD48 != -1)
  {
    swift_once();
  }

  v8 = sub_22F740B90();
  __swift_project_value_buffer(v8, qword_27DAD0E28);
  v9 = v7;
  v10 = sub_22F740B70();
  v11 = sub_22F7415C0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = [v9 count];

    _os_log_impl(&dword_22F0FC000, v10, v11, "Found %ld pet nodes that will be considered in evaluation.", v12, 0xCu);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = &v25;
  v13[4] = a3;
  v13[5] = &v24;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22F1DAF7C;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22F1DAF34;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_40;
  v15 = _Block_copy(aBlock);

  [v9 enumerateUsingBlock:v15];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {

    v18 = sub_22F740B70();
    v19 = sub_22F7415C0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134218752;
      swift_beginAccess();
      *(v20 + 4) = *(v25 + 16);
      *(v20 + 12) = 2048;
      *(v20 + 14) = *(a2 + 16);

      *(v20 + 22) = 2048;
      swift_beginAccess();
      v21 = *(v24 + 16);
      *(v20 + 24) = v21;
      *(v20 + 32) = 2048;
      *(v20 + 34) = v21;
      _os_log_impl(&dword_22F0FC000, v18, v19, "In total, found %ld true positive pet nodes out of %ld true positive pet persons and %ld true negative pet nodes out of %ld true negative pet persons.", v20, 0x2Au);
      MEMORY[0x2319033A0](v20, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v22 = v25;
    swift_beginAccess();

    return v22;
  }

  return result;
}

void sub_22F1D9CAC(uint64_t a1)
{
  if (qword_27DAAFD48 != -1)
  {
    swift_once();
  }

  v2 = sub_22F740B90();
  __swift_project_value_buffer(v2, qword_27DAD0E28);

  v3 = sub_22F740B70();
  v4 = sub_22F7415C0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22F145F20(*(a1 + 32), *(a1 + 40), &v22);
    _os_log_impl(&dword_22F0FC000, v3, v4, "--- %s Results ---", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2319033A0](v6, -1, -1);
    MEMORY[0x2319033A0](v5, -1, -1);
  }

  v7 = sub_22F740B70();
  v8 = sub_22F7415C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = *(a1 + 56);
    *(v9 + 4) = *(a1 + 48);
    v11 = *(a1 + 72);
    *(v9 + 14) = *(a1 + 64);
    *v9 = 134218752;
    *(v9 + 24) = v10;
    *(v9 + 12) = 2048;
    *(v9 + 22) = 2048;
    *(v9 + 32) = 2048;
    *(v9 + 34) = v11;

    _os_log_impl(&dword_22F0FC000, v7, v8, "\tTP: %ld TN: %ld FP: %ld FN: %ld", v9, 0x2Au);
    MEMORY[0x2319033A0](v9, -1, -1);
  }

  else
  {
  }

  v12 = 5136718;
  if (*(a1 + 88))
  {
    v13 = 0xE300000000000000;
    v14 = 5136718;
    if ((*(a1 + 104) & 1) == 0)
    {
LABEL_10:
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_22F7413B0();
      v12 = v22;
      v15 = v23;
      goto LABEL_13;
    }
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_22F7413B0();
    v14 = v22;
    v13 = v23;
    if ((*(a1 + 104) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v15 = 0xE300000000000000;
LABEL_13:

  v16 = sub_22F740B70();
  v17 = sub_22F7415C0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315394;
    v20 = sub_22F145F20(v14, v13, &v22);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    v21 = sub_22F145F20(v12, v15, &v22);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_22F0FC000, v16, v17, "\tPrecision: %s Recall: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v19, -1, -1);
    MEMORY[0x2319033A0](v18, -1, -1);
  }

  else
  {
  }
}

void _s11PhotosGraph23ImportantEntitiesTuningC062truePositiveAndTrueNegativeUsersCurrentPetLocalIdentifiersFromM9Questions16withPhotoLibraryShySSG_AFtSgSo07PHPhotoT0C_tFZ_0(void *a1)
{
  v2 = [a1 librarySpecificFetchOptions];
  [v2 setWantsIncrementalChangeDetails_];
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  aBlock = 0x203D3D2065707974;
  v66 = 0xE800000000000000;
  v3 = sub_22F742010();
  MEMORY[0x231900B10](v3);

  v4 = sub_22F741560();

  [v2 setPredicate_];

  v5 = [objc_opt_self() fetchAnsweredYesOrNoQuestionsWithOptions:v2 validQuestionsOnly:1];
  v6 = &selRef_assetIsSafeForWidgetDisplay_;
  if ([v5 count] < 1)
  {
    goto LABEL_6;
  }

  v64 = v2;
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84FA0];
  *(v7 + 16) = MEMORY[0x277D84FA0];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v2 = (v9 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  v69 = sub_22F1DAF04;
  v70 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = sub_22F334418;
  v68 = &block_descriptor_14;
  v11 = _Block_copy(&aBlock);

  v12 = v5;
  [v5 enumerateObjectsUsingBlock_];
  _Block_release(v11);
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v13);
  swift_beginAccess();

  v15 = sub_22F741410();

  v5 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
  v16 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

  if (!v16)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = sub_22F741420();

  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = sub_22F10B348(*(v17 + 16), 0);
    v20 = sub_22F11A438(&aBlock, v19 + 4, v18, v17);
    sub_22F1534EC(aBlock);
    if (v20 != v18)
    {
      __break(1u);
LABEL_6:
      if (qword_27DAAFD48 != -1)
      {
        swift_once();
      }

      v21 = sub_22F740B90();
      __swift_project_value_buffer(v21, qword_27DAD0E28);
      v22 = sub_22F740B70();
      v23 = sub_22F7415C0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_22F0FC000, v22, v23, "No pet Photos Challenge questions answered.", v24, 2u);
        MEMORY[0x2319033A0](v24, -1, -1);
      }

      return;
    }
  }

  else
  {
  }

  swift_beginAccess();

  v25 = sub_22F741410();

  v26 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

  if (!v26)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v27 = sub_22F741420();

  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = sub_22F10B348(*(v27 + 16), 0);
    v30 = sub_22F11A438(&aBlock, v29 + 4, v28, v27);
    sub_22F1534EC(aBlock);
    if (v30 == v28)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

LABEL_17:
  v31 = [a1 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_22F771EB0;
  *(v32 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v33 = sub_22F741160();

  [v31 setIncludedDetectionTypes_];

  v34 = objc_opt_self();
  v35 = sub_22F741160();

  v36 = v31;
  v37 = [v34 fetchPersonsWithLocalIdentifiers:v35 options:v36];

  v38 = v37;
  v39 = sub_22F741160();

  v40 = [v34 fetchPersonsWithLocalIdentifiers:v39 options:v36];

  v41 = [v38 count];
  v42 = [v40 count];
  if (__OFADD__(v41, v42))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (&v42[v41])
  {
    v61 = v12;
    v63 = v36;
    v6 = swift_allocObject();
    v43 = MEMORY[0x277D84FA0];
    v12 = v40;
    v6[2] = MEMORY[0x277D84FA0];
    v69 = sub_22F1DAF0C;
    v70 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_22F1D4AD0;
    v68 = &block_descriptor_18;
    v44 = _Block_copy(&aBlock);

    v62 = v38;
    [v38 enumerateObjectsUsingBlock_];
    _Block_release(v44);
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    v69 = sub_22F1DAFF8;
    v70 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_22F1D4AD0;
    v68 = &block_descriptor_22;
    v46 = _Block_copy(&aBlock);

    [v40 enumerateObjectsUsingBlock_];
    _Block_release(v46);
    if (qword_27DAAFD48 == -1)
    {
LABEL_20:
      v47 = sub_22F740B90();
      __swift_project_value_buffer(v47, qword_27DAD0E28);

      v48 = sub_22F740B70();
      v49 = sub_22F7415C0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        aBlock = v59;
        *v50 = 134218242;
        swift_beginAccess();
        *(v50 + 4) = *(v6[2] + 2);

        *(v50 + 12) = 2080;
        swift_beginAccess();
        v60 = v12;

        v51 = sub_22F741430();
        v53 = v52;

        v54 = sub_22F145F20(v51, v53, &aBlock);

        *(v50 + 14) = v54;
        _os_log_impl(&dword_22F0FC000, v48, v49, "Found that the user has %ld true positive pets and %s true negative pets from Photos Challenge questions!", v50, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x2319033A0](v59, -1, -1);
        MEMORY[0x2319033A0](v50, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      swift_beginAccess();

      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_20;
  }

  if (qword_27DAAFD48 != -1)
  {
    swift_once();
  }

  v55 = sub_22F740B90();
  __swift_project_value_buffer(v55, qword_27DAD0E28);
  v56 = sub_22F740B70();
  v57 = sub_22F7415C0();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_22F0FC000, v56, v57, "Pet Photos Challenge questions are out of date, they don't match any existing pet persons in the database.", v58, 2u);
    MEMORY[0x2319033A0](v58, -1, -1);
  }
}

void sub_22F1DABD0(void *a1, void *a2, uint64_t a3)
{
  sub_22F741690();
  if (!v3)
  {
    type metadata accessor for ImportantEntitiesTuning();
    v7 = _s11PhotosGraph23ImportantEntitiesTuningC74truePositiveAndTrueNegativeUsersChildrenLocalIdentifiersFromChildQuestions16withPhotoLibraryShySSG_AFtSgSo07PHPhotoT0C_tFZ_0(a2);
    if (v7)
    {
      static ImportantEntitiesTuning.evaluateImportantEntitiesInferenceAcrossParameters(withDetectionType:inGraph:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:progressReporter:sendToCoreAnalytics:)(1, a1, v7, v8, a3, 1);
    }

    else
    {
      if (qword_27DAAFD48 != -1)
      {
        swift_once();
      }

      v9 = sub_22F740B90();
      __swift_project_value_buffer(v9, qword_27DAD0E28);
      v10 = sub_22F740B70();
      v11 = sub_22F7415C0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_22F0FC000, v10, v11, "Skipping user's children inference.", v12, 2u);
        MEMORY[0x2319033A0](v12, -1, -1);
      }
    }

    sub_22F741690();
    _s11PhotosGraph23ImportantEntitiesTuningC062truePositiveAndTrueNegativeUsersCurrentPetLocalIdentifiersFromM9Questions16withPhotoLibraryShySSG_AFtSgSo07PHPhotoT0C_tFZ_0(a2);
    if (v13)
    {
      static ImportantEntitiesTuning.evaluateImportantEntitiesInferenceAcrossParameters(withDetectionType:inGraph:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:progressReporter:sendToCoreAnalytics:)(2, a1, v13, v14, a3, 1);
    }

    else
    {
      if (qword_27DAAFD48 != -1)
      {
        swift_once();
      }

      v15 = sub_22F740B90();
      __swift_project_value_buffer(v15, qword_27DAD0E28);
      v16 = sub_22F740B70();
      v17 = sub_22F7415C0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_22F0FC000, v16, v17, "Skipping user's pets inference.", v18, 2u);
        MEMORY[0x2319033A0](v18, -1, -1);
      }
    }

    sub_22F741690();
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F1DAEAC()
{
  result = qword_27DAB1620;
  if (!qword_27DAB1620)
  {
    sub_22F73F470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1620);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1DB024(uint64_t a1)
{
  v2 = sub_22F1DC9E0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22F1DB060(uint64_t a1)
{
  v2 = sub_22F1DC9E0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22F1DB0D0(uint64_t a1)
{
  v2 = sub_22F1DCAE4();

  return MEMORY[0x28219CB78](a1, v2);
}

id PGUpNextComputer.__allocating_init(targets:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11PhotosGraph16PGUpNextComputer_targets] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PGUpNextComputer.init(targets:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11PhotosGraph16PGUpNextComputer_targets] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void PGUpNextComputer.enumerateSuggestions(with:featureWeightVectors:block:)(id *a1, unint64_t a2, uint64_t (*a3)(id, uint64_t, uint64_t, uint64_t *), unint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v11 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  if (a2)
  {
    v27 = a1;
    if (a2 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {
      v13 = MEMORY[0x277D84F90];
      if (!i)
      {
LABEL_19:
        a1 = v27;
        goto LABEL_20;
      }

      v33 = MEMORY[0x277D84F90];
      sub_22F1468DC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v26 = v11;
      v24 = v7;
      v25 = a3;
      v11 = 0;
      v13 = v33;
      v7 = a2 & 0xC000000000000001;
      while (1)
      {
        a3 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v7)
        {
          v14 = MEMORY[0x2319016F0](v11, a2);
        }

        else
        {
          if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v14 = *(a2 + 8 * v11 + 32);
        }

        v15 = v14;
        v29 = v14;
        sub_22F1DB468(&v29, &v28, &v30);
        if (v6)
        {

          return;
        }

        v6 = 0;

        v16 = v30;
        v17 = v31;
        v18 = v32;
        v33 = v13;
        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        if (v20 >= v19 >> 1)
        {
          v23 = v30;
          sub_22F1468DC((v19 > 1), v20 + 1, 1);
          v16 = v23;
          v13 = v33;
        }

        *(v13 + 16) = v20 + 1;
        v21 = v13 + 28 * v20;
        *(v21 + 32) = v16;
        *(v21 + 48) = v17;
        *(v21 + 56) = v18;
        ++v11;
        if (a3 == i)
        {
          a3 = v25;
          v7 = v24;
          v11 = v26;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    __break(1u);
  }

  else
  {
    v13 = 0;
LABEL_20:
    v22 = v11;
    sub_22F1DBDF4(a1, v13, v7, v22, a3);
  }
}

void sub_22F1DB468(id *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23D0, &unk_22F779818);
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v16 - v9;
  v11 = [*a1 wrapper];
  sub_22F73FBC0();

  v12 = sub_22F73FD10();
  (*(v7 + 8))(v10, v6);
  if (*(v12 + 16) == 7)
  {
    v13 = *(v12 + 56);
    v16 = *(v12 + 32);
    v14 = *(v12 + 48);

    *a3 = v16;
    *(a3 + 16) = v14;
    *(a3 + 24) = v13;
  }

  else
  {

    sub_22F1DC974();
    v15 = swift_allocError();
    swift_willThrow();
    *a2 = v15;
  }
}

id PGUpNextComputer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PGUpNextComputer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F1DB7D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v50 - v6;
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0x203A656C706F6550, 0xE800000000000000);
  v8 = [a1 personNodes];
  v9 = [v8 localIdentifiers];

  sub_22F741420();
  v10 = sub_22F741430();
  v12 = v11;

  MEMORY[0x231900B10](v10, v12);

  MEMORY[0x231900B10](0x3A73656E6563530ALL, 0xE900000000000020);
  v13 = [a1 sceneNodes];
  v14 = [v13 sceneNames];

  sub_22F741420();
  v15 = sub_22F741430();
  v17 = v16;

  MEMORY[0x231900B10](v15, v17);

  MEMORY[0x231900B10](0x676E696E61654D0ALL, 0xEB00000000203A73);
  v18 = [a1 meaningNodes];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 labels];

    sub_22F741420();
    v21 = sub_22F741430();
    v23 = v22;
  }

  else
  {
    v23 = 0xE400000000000000;
    v21 = 1701736270;
  }

  MEMORY[0x231900B10](v21, v23);

  MEMORY[0x231900B10](0x676E696E61654D0ALL, 0xEB00000000203A73);
  v24 = [a1 memoryFeatureNodes];
  v25 = 0xE400000000000000;
  if (v24)
  {
    v26 = v24;
    v27 = [v24 array];

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23E0, &qword_22F779828);
    v29 = sub_22F741180();

    v30 = MEMORY[0x231900D40](v29, v28);
    v32 = v31;
  }

  else
  {
    v30 = 1701736270;
    v32 = 0xE400000000000000;
  }

  MEMORY[0x231900B10](v30, v32);

  MEMORY[0x231900B10](0xD000000000000011, 0x800000022F7915C0);
  v33 = [a1 isTripMemory];
  v34 = v33 == 0;
  if (v33)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v34)
  {
    v36 = 0xE500000000000000;
  }

  else
  {
    v36 = 0xE400000000000000;
  }

  MEMORY[0x231900B10](v35, v36);

  MEMORY[0x231900B10](0x6F697461636F4C0ALL, 0xEB00000000203A6ELL);
  v37 = [a1 representativeLocation];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 description];

    v40 = sub_22F740E20();
    v25 = v41;
  }

  else
  {
    v40 = 1701736270;
  }

  MEMORY[0x231900B10](v40, v25);

  MEMORY[0x231900B10](0x203A657461440ALL, 0xE700000000000000);
  v42 = [a1 representativeDate];
  if (v42)
  {
    v43 = v42;
    sub_22F73F640();

    v44 = sub_22F73F690();
    (*(*(v44 - 8) + 56))(v4, 0, 1, v44);
  }

  else
  {
    v44 = sub_22F73F690();
    (*(*(v44 - 8) + 56))(v4, 1, 1, v44);
  }

  v45 = 1701736270;
  sub_22F168438(v4, v7);
  sub_22F73F690();
  v46 = *(v44 - 8);
  if ((*(v46 + 48))(v7, 1, v44) == 1)
  {
    sub_22F15FCF0(v7);
    v47 = 0xE400000000000000;
  }

  else
  {
    v45 = sub_22F73F540();
    v47 = v48;
    (*(v46 + 8))(v7, v44);
  }

  MEMORY[0x231900B10](v45, v47);

  return v50[0];
}

double sub_22F1DBDF4(id *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(id, uint64_t, uint64_t, uint64_t *))
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + OBJC_IVAR____TtC11PhotosGraph16PGUpNextComputer_targets);
  if (v7 >> 62)
  {
    goto LABEL_69;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      *&v71 = MEMORY[0x277D84F90];
      sub_22F741BD0();
      if (v8 < 0)
      {
        __break(1u);
      }

      type metadata accessor for UpNext.MatchingResult();
      v10 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2319016F0](v10, v7);
        }

        else
        {
          v11 = *(v7 + 8 * v10 + 32);
          swift_unknownObjectRetain();
        }

        ++v10;
        static UpNext.MatchingResult.match(source:target:)(a1, v11);
        swift_unknownObjectRelease();
        sub_22F741BA0();
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
      }

      while (v8 != v10);
      v12 = v71;
      v9 = MEMORY[0x277D84F90];
      if (a2)
      {
LABEL_11:
        v13 = a2;
        v14 = *(a2 + 16);
        if (v14)
        {
          goto LABEL_12;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (a2)
      {
        goto LABEL_11;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB12F0, &unk_22F7716F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_22F779720;
    *(v13 + 32) = xmmword_22F779730;
    *(v13 + 48) = xmmword_22F779740;
    *(v13 + 64) = xmmword_22F779750;
    *(v13 + 80) = xmmword_22F779760;
    *(v13 + 96) = xmmword_22F779770;
    *(v13 + 112) = xmmword_22F779780;
    *(v13 + 128) = xmmword_22F779790;
    *(v13 + 144) = xmmword_22F7797A0;
    *(v13 + 160) = xmmword_22F7797B0;
    *(v13 + 176) = xmmword_22F7797C0;
    *(v13 + 192) = xmmword_22F779760;
    *(v13 + 208) = xmmword_22F7797D0;
    *(v13 + 224) = 0;
    v14 = *(v13 + 16);
    if (v14)
    {
LABEL_12:
      v70 = v9;

      sub_22F741BD0();
      v15 = (v13 + 56);
      do
      {
        v16 = *v15;
        v71 = *(v15 - 6);
        v72 = *(v15 - 1);
        v73 = v16;
        _s11PhotosGraph6UpNextO21ScoredMatchingResultsC5score08matchingG06source7weightsAEXDSayAC0F6ResultCG_So04PGUpdF4Info_pAC0F10DimensionsVtFZ_0(v12, a1, &v71);
        sub_22F741BA0();
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v15 += 7;
        --v14;
      }

      while (v14);

      v17 = v70;
      goto LABEL_18;
    }

LABEL_17:

    v17 = MEMORY[0x277D84F90];
LABEL_18:
    if (qword_2810A93F8 != -1)
    {
      swift_once();
    }

    v18 = sub_22F740B90();
    __swift_project_value_buffer(v18, qword_2810B4CC8);
    swift_unknownObjectRetain();
    v19 = sub_22F740B70();
    v20 = sub_22F7415D0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v71 = v22;
      *v21 = 136315138;
      swift_getObjectType();
      v23 = sub_22F1DB7D4(a1);
      v25 = sub_22F145F20(v23, v24, &v71);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_22F0FC000, v19, v20, "[UpNext] Source:\n%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x2319033A0](v22, -1, -1);
      MEMORY[0x2319033A0](v21, -1, -1);
    }

    v7 = a4;
    a2 = 0;
    v26 = &off_27888E000;
    v61 = v17;
    do
    {
LABEL_55:
      if (a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_60:

        goto LABEL_61;
      }

      ++a2;

      v31 = v17;
      v62 = v17;
    }

    while (!v17);
    v27 = 0;
    v28 = v17 & 0xFFFFFFFFFFFFFF8;
    a1 = (v17 & 0xC000000000000001);
    v29 = v17 + 32;
    v55 = v17 >> 62;
    v56 = a2;
    v57 = v17 + 32;
    v58 = (v17 & 0xC000000000000001);
    v59 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
      goto LABEL_24;
    }

LABEL_26:
    if (v27 == *(v28 + 16))
    {
      goto LABEL_55;
    }

LABEL_27:
    if (!a1)
    {
      if (v27 >= *(v28 + 16))
      {
LABEL_67:
        __break(1u);
      }

      else
      {
        v63 = *(v29 + 8 * v27);

        v32 = __OFADD__(v27, 1);
        v33 = v27 + 1;
        if (!v32)
        {
          goto LABEL_30;
        }
      }

LABEL_68:
      __break(1u);
LABEL_69:
      v8 = sub_22F741A00();
      continue;
    }

    break;
  }

  v63 = MEMORY[0x2319016F0](v27, v31);
  v32 = __OFADD__(v27, 1);
  v33 = v27 + 1;
  if (v32)
  {
    goto LABEL_68;
  }

LABEL_30:
  LOBYTE(v70) = 0;
  v34 = *(v63 + 56);
  if (v34 >> 62)
  {
    v67 = sub_22F741A00();
    if (v67)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v67 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v67)
    {
LABEL_32:
      v60 = v33;
      v68 = v34 & 0xC000000000000001;
      v64 = v34 & 0xFFFFFFFFFFFFFF8;

      v35 = 0;
      a2 = v67;
      while (1)
      {
        if (v68)
        {
          v36 = MEMORY[0x2319016F0](v35, v34);
          v37 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v35 >= *(v64 + 16))
          {
            __break(1u);
            goto LABEL_67;
          }

          v37 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
LABEL_64:
            __break(1u);
            goto LABEL_60;
          }
        }

        v69 = v37;
        a1 = *(v36 + 16);

        v38 = sub_22F740B70();
        v39 = sub_22F7415D0();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v71 = v41;
          *v40 = 136315138;
          swift_getObjectType();
          v42 = v34;
          v43 = swift_unknownObjectRetain();
          v44 = sub_22F1DB7D4(v43);
          v46 = v45;
          swift_unknownObjectRelease();
          v47 = v44;
          v34 = v42;
          a2 = v67;
          v48 = sub_22F145F20(v47, v46, &v71);
          v7 = a4;

          *(v40 + 4) = v48;
          v26 = &off_27888E000;
          _os_log_impl(&dword_22F0FC000, v38, v39, "[UpNext] Target:\n%s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x2319033A0](v41, -1, -1);
          MEMORY[0x2319033A0](v40, -1, -1);
        }

        v49 = [a1[2] v26[337]];
        v50 = UpNext.MatchingResult.debugInfo.getter();
        v52 = v51;
        if ([v7 containsIdentifier_])
        {

          if (v70)
          {
            goto LABEL_58;
          }
        }

        else
        {
          [v7 addIdentifier_];
          v53 = a5(v49, v50, v52, &v70);

          if (v53)
          {

            v28 = v59;
            v27 = v60;
            a1 = v58;
            if (v70 == 1)
            {
              goto LABEL_60;
            }

            v17 = v61;
            v31 = v62;
            a2 = v56;
            v29 = v57;
            if (!v55)
            {
              goto LABEL_26;
            }

LABEL_24:
            v30 = sub_22F741A00();
            v29 = v57;
            v31 = v62;
            if (v27 == v30)
            {
              goto LABEL_55;
            }

            goto LABEL_27;
          }

          if (v70 == 1)
          {
LABEL_58:

            goto LABEL_60;
          }
        }

        ++v35;
        if (v69 == a2)
        {

          goto LABEL_60;
        }
      }
    }
  }

LABEL_61:

  return result;
}

void sub_22F1DC68C(id *a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  if (a2)
  {
    if (a2 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {
      v10 = MEMORY[0x277D84F90];
      if (!i)
      {
        break;
      }

      v29 = MEMORY[0x277D84F90];
      sub_22F1468DC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v22 = a3;
      v23 = v8;
      v21 = a1;
      v11 = 0;
      v10 = v29;
      a1 = (a2 & 0xC000000000000001);
      while (1)
      {
        a3 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (a1)
        {
          v12 = MEMORY[0x2319016F0](v11, a2);
        }

        else
        {
          if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v12 = *(a2 + 8 * v11 + 32);
        }

        v13 = v12;
        v25 = v12;
        sub_22F1DB468(&v25, &v24, &v26);
        if (v4)
        {

          return;
        }

        v4 = 0;

        v14 = v26;
        v15 = v27;
        v16 = v28;
        v29 = v10;
        v8 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v8 >= v17 >> 1)
        {
          v20 = v26;
          sub_22F1468DC((v17 > 1), v8 + 1, 1);
          v14 = v20;
          v10 = v29;
        }

        *(v10 + 16) = v8 + 1;
        v18 = v10 + 28 * v8;
        *(v18 + 32) = v14;
        *(v18 + 48) = v15;
        *(v18 + 56) = v16;
        ++v11;
        if (a3 == i)
        {
          a1 = v21;
          a3 = v22;
          v8 = v23;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_19:
  v19 = v8;
  sub_22F1DBDF4(a1, v10, a3, v19, sub_22F1DC90C);
}

unint64_t sub_22F1DC8C0()
{
  result = qword_27DAB23C0;
  if (!qword_27DAB23C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAB23C0);
  }

  return result;
}

uint64_t sub_22F1DC90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = sub_22F740DF0();
  v9 = (*(v7 + 16))(v7, a1, v8, a4);

  return v9;
}

unint64_t sub_22F1DC974()
{
  result = qword_27DAB23D8;
  if (!qword_27DAB23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB23D8);
  }

  return result;
}

unint64_t sub_22F1DC9E0()
{
  result = qword_27DAB23E8;
  if (!qword_27DAB23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB23E8);
  }

  return result;
}

unint64_t sub_22F1DCA38()
{
  result = qword_27DAB23F0;
  if (!qword_27DAB23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB23F0);
  }

  return result;
}

unint64_t sub_22F1DCA90()
{
  result = qword_27DAB23F8;
  if (!qword_27DAB23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB23F8);
  }

  return result;
}

unint64_t sub_22F1DCAE4()
{
  result = qword_27DAB2400;
  if (!qword_27DAB2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2400);
  }

  return result;
}

unint64_t sub_22F1DCB38(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        sub_22F741B00();

        v5 = 0xD000000000000024;
      }

      else
      {
        sub_22F741B00();

        v5 = 0xD000000000000023;
      }
    }

    else
    {
      sub_22F741B00();

      v5 = 0xD00000000000001FLL;
    }

    goto LABEL_11;
  }

  if (a3 == 3)
  {
    sub_22F741B00();

    v5 = 0xD00000000000001CLL;
    goto LABEL_11;
  }

  if (a3 == 4)
  {
    sub_22F741B00();

    v5 = 0xD00000000000001ALL;
LABEL_11:
    v7 = v5;
    MEMORY[0x231900B10](a1, a2);
    return v7;
  }

  return 0xD000000000000019;
}

uint64_t sub_22F1DCD64()
{
  v0 = sub_22F1515F8(&unk_2843D9A28);
  result = sub_22F1DF3B0(&unk_2843D9A48);
  qword_2810AA178 = v0;
  return result;
}

double static MaestroMusicMatrixGenerator.supportedLocaleIdentifiers.getter()
{
  if (qword_2810AA170 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t static MaestroMusicMatrixGenerator.localeIdentifier()()
{
  v0 = sub_22F73F7C0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F780();
  v4 = sub_22F73F6F0();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (qword_2810AA170 != -1)
  {
    swift_once();
  }

  if ((sub_22F15E910(v4, v6, qword_2810AA178) & 1) == 0)
  {

    return 0x53555F6E65;
  }

  return v4;
}

uint64_t static MaestroMusicMatrixGenerator.localeProjectDirectoryName(fromLocaleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a1 != 0x53555F6E65 || a2 != 0xE500000000000000)
  {
    sub_22F742040();
  }

  return 0x6A6F72706C2E6E65;
}

void static MaestroMusicMatrixGenerator.maestroSongs(schemaVersion:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v77 = a1;
  v78 = a2;
  v74 = a3;
  v3 = sub_22F73F470();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v71 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = &v70 - v6;
  MEMORY[0x28223BE20](v7);
  v75 = &v70 - v8;
  MEMORY[0x28223BE20](v9);
  v76 = &v70 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  if (qword_2810A9478 != -1)
  {
    swift_once();
  }

  v73 = sub_22F740B90();
  v23 = __swift_project_value_buffer(v73, qword_2810B4DC0);
  v24 = sub_22F740B70();
  v25 = sub_22F7415F0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_22F0FC000, v24, v25, "[MemoriesMusic] (MaestroMatrix) Checking for the presence of a MaestroSongs file...", v26, 2u);
    MEMORY[0x2319033A0](v26, -1, -1);
  }

  v27 = sub_22F1DE138();
  v29 = v28;
  type metadata accessor for CuratedSongLibrary();
  v30 = [objc_opt_self() ignoreProgress];
  v31 = v81;
  sub_22F36B1A8(v27, v29, v30, v19);
  v32 = v31;
  if (v31)
  {

    v33 = 0;
    v38 = sub_22F740B70();
    v39 = sub_22F7415E0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22F0FC000, v38, v39, "[MemoriesMusic] (MaestroMatrix) MaestroSongs not found. Loading fallback from bundle", v40, 2u);
      MEMORY[0x2319033A0](v40, -1, -1);
    }

    v41 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v42 = sub_22F740DF0();
    v43 = [v41 initWithPath_];

    if (!v43)
    {
      sub_22F1DF1D0();
      swift_allocError();
      *v51 = 0xD00000000000002DLL;
      *(v51 + 8) = 0x800000022F791680;
      *(v51 + 16) = 0;
      swift_willThrow();
LABEL_22:

      return;
    }

    v44 = sub_22F740DF0();
    v45 = sub_22F740DF0();
    v46 = [v43 URLForResource:v44 withExtension:v45];

    if (v46)
    {
      v47 = v76;
      sub_22F73F430();

      v48 = v79;
      v49 = *(v79 + 16);
      v50 = v75;
    }

    else
    {
      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v73, qword_2810B4D90);
      v52 = sub_22F740B70();
      v53 = sub_22F7415E0();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v81 = 0;
        v56 = v55;
        v82 = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_22F145F20(0xD000000000000011, 0x800000022F7916B0, &v82);
        _os_log_impl(&dword_22F0FC000, v52, v53, "[MemoriesMusic] (MaestroMatrix) Falling back to checking for old style MaestroSongs json file at path: %s.", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        v57 = v56;
        v33 = v81;
        MEMORY[0x2319033A0](v57, -1, -1);
        MEMORY[0x2319033A0](v54, -1, -1);
      }

      v58 = sub_22F740DF0();
      v59 = sub_22F740DF0();
      v60 = [v43 URLForResource:v58 withExtension:v59];

      if (!v60)
      {

        sub_22F1DF224();
        swift_allocError();
        *v69 = 0xD000000000000011;
        *(v69 + 8) = 0x800000022F7916B0;
        *(v69 + 16) = 2;
        swift_willThrow();
        return;
      }

      v47 = v72;
      sub_22F73F430();

      v48 = v79;
      v49 = *(v79 + 16);
      v50 = v71;
    }

    v61 = v80;
    v49(v50, v47, v80);
    v62 = v78;

    MaestroSongs.init(from:schemaVersion:)(v50, v77, v62, &v82);
    if (v33)
    {
      (*(v48 + 8))(v47, v61);

      goto LABEL_22;
    }

    (*(v48 + 8))(v47, v61);

    *v74 = v82;
  }

  else
  {
    v81 = v23;

    sub_22F73F410();
    sub_22F73F420();

    v35 = v79;
    v34 = v80;
    v36 = *(v79 + 8);
    v36(v16, v80);
    v36(v19, v34);
    (*(v35 + 16))(v13, v22, v34);
    v37 = v78;

    MaestroSongs.init(from:schemaVersion:)(v13, v77, v37, &v82);
    v63 = v82;
    v64 = sub_22F740B70();
    v65 = sub_22F7415F0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = v36;
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_22F0FC000, v64, v65, "[MemoriesMusic] (MaestroMatrix) MaestroSongs file found", v67, 2u);
      v68 = v67;
      v36 = v66;
      MEMORY[0x2319033A0](v68, -1, -1);
    }

    v36(v22, v80);
    *v74 = v63;
  }
}

void static MaestroMusicMatrixGenerator.maestroSongsInfo()(uint64_t *a1@<X8>)
{
  v72 = a1;
  v82 = sub_22F73F470();
  v77 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v69 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v70 = &v68 - v4;
  MEMORY[0x28223BE20](v5);
  v73 = &v68 - v6;
  MEMORY[0x28223BE20](v7);
  v74 = &v68 - v8;
  MEMORY[0x28223BE20](v9);
  v75 = &v68 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  MEMORY[0x28223BE20](v17);
  v76 = &v68 - v18;
  if (qword_2810A9478 != -1)
  {
    swift_once();
  }

  v71 = sub_22F740B90();
  __swift_project_value_buffer(v71, qword_2810B4DC0);
  v19 = sub_22F740B70();
  v20 = sub_22F7415F0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22F0FC000, v19, v20, "[MemoriesMusic] (MaestroMatrix) Checking for the presence of a MaestroSongsInfo file...", v21, 2u);
    MEMORY[0x2319033A0](v21, -1, -1);
  }

  v22 = sub_22F1DE138();
  v24 = v23;
  type metadata accessor for CuratedSongLibrary();
  v25 = [objc_opt_self() ignoreProgress];
  sub_22F36B1A8(v22, v24, v25, v16);
  if (v1)
  {

    v31 = sub_22F740B70();
    v32 = sub_22F7415E0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22F0FC000, v31, v32, "[MemoriesMusic] (MaestroMatrix) MaestroSongsInfo not found. Loading fallback from bundle", v33, 2u);
      MEMORY[0x2319033A0](v33, -1, -1);
    }

    v34 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v35 = sub_22F740DF0();
    v36 = [v34 initWithPath_];

    if (!v36)
    {
      sub_22F1DF1D0();
      swift_allocError();
      *v44 = 0xD00000000000002DLL;
      *(v44 + 8) = 0x800000022F791680;
      *(v44 + 16) = 0;
      swift_willThrow();

      return;
    }

    v37 = sub_22F740DF0();
    v38 = sub_22F740DF0();
    v39 = [v36 URLForResource:v37 withExtension:v38];

    if (v39)
    {
      v40 = v74;
      sub_22F73F430();

      v41 = v77;
      v42 = *(v77 + 16);
      v43 = v73;
    }

    else
    {
      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v71, qword_2810B4D90);
      v45 = sub_22F740B70();
      v46 = sub_22F7415E0();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v78 = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_22F145F20(0xD000000000000011, 0x800000022F7916B0, &v78);
        _os_log_impl(&dword_22F0FC000, v45, v46, "[MemoriesMusic] (MaestroMatrix) Falling back to checking for old style MaestroSongsInfo in json file at path: %s.", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x2319033A0](v48, -1, -1);
        MEMORY[0x2319033A0](v47, -1, -1);
      }

      v49 = sub_22F740DF0();
      v50 = sub_22F740DF0();
      v51 = [v36 URLForResource:v49 withExtension:v50];

      if (!v51)
      {

        sub_22F1DF224();
        swift_allocError();
        *v66 = 0xD000000000000011;
        *(v66 + 8) = 0x800000022F7916B0;
        *(v66 + 16) = 2;
        swift_willThrow();
        return;
      }

      v40 = v70;
      sub_22F73F430();

      v41 = v77;
      v42 = *(v77 + 16);
      v43 = v69;
    }

    v52 = v82;
    v42(v43, v40, v82);
    MaestroSongsInfo.init(from:)(v43, &v78);
    (*(v41 + 8))(v40, v52);

    v54 = v78;
    v53 = v79;
    v55 = v80;
    v56 = v81;
  }

  else
  {

    sub_22F73F410();
    v26 = v76;
    sub_22F73F420();

    v27 = v77;
    v28 = *(v77 + 8);
    v29 = v82;
    v28(v13, v82);
    v28(v16, v29);
    v30 = v75;
    (*(v27 + 16))(v75, v26, v29);
    MaestroSongsInfo.init(from:)(v30, &v78);
    v54 = v78;
    v53 = v79;
    v56 = v81;
    v77 = v80;

    v57 = sub_22F740B70();
    v58 = sub_22F7415F0();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      LODWORD(v74) = v58;
      v60 = v59;
      v61 = swift_slowAlloc();
      v75 = v54;
      v62 = v61;
      v78 = v61;
      *v60 = 136315138;

      v63 = sub_22F145F20(v77, v56, &v78);

      *(v60 + 4) = v63;
      _os_log_impl(&dword_22F0FC000, v57, v74, "[MemoriesMusic] (MaestroMatrix) MaestroSongsInfo file found with contentVersion: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      v64 = v62;
      v54 = v75;
      MEMORY[0x2319033A0](v64, -1, -1);
      MEMORY[0x2319033A0](v60, -1, -1);

      v65 = v76;
    }

    else
    {

      v65 = v26;
    }

    v28(v65, v82);
    v55 = v77;
  }

  v67 = v72;
  *v72 = v54;
  v67[1] = v53;
  v67[2] = v55;
  v67[3] = v56;
}

uint64_t sub_22F1DE138()
{
  v0 = sub_22F1ED6E0();
  v2 = v1;
  v3 = qword_2810AA170;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_22F15E910(v0, v2, qword_2810AA178);

  return v0;
}

char *sub_22F1DE30C()
{
  v110 = sub_22F73F7C0();
  v113 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v99 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22F73F470();
  v112 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v103 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v99 - v4;
  MEMORY[0x28223BE20](v6);
  v105 = &v99 - v7;
  MEMORY[0x28223BE20](v8);
  v107 = &v99 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v99 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v99 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v99 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v99 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v99 - v23;
  if (qword_2810A9478 != -1)
  {
    swift_once();
  }

  v108 = v18;
  v102 = v15;
  v106 = v24;
  v104 = v5;
  v25 = sub_22F740B90();
  v111 = __swift_project_value_buffer(v25, qword_2810B4DC0);
  v26 = sub_22F740B70();
  v27 = sub_22F7415F0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22F0FC000, v26, v27, "[MemoriesMusic] (MaestroMatrix) Checking for the presence of a keywordsByAdamID file...", v28, 2u);
    MEMORY[0x2319033A0](v28, -1, -1);
  }

  v29 = sub_22F1DE138();
  v31 = v30;
  type metadata accessor for CuratedSongLibrary();
  v32 = objc_opt_self();
  v33 = [v32 ignoreProgress];
  sub_22F36B1A8(v29, v31, v33, v21);
  if (v0)
  {
    v108 = v0;

    v40 = 0;
    v41 = sub_22F740B70();
    v42 = sub_22F7415E0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22F0FC000, v41, v42, "[MemoriesMusic] (MaestroMatrix) keywordsByAdamID not found. Loading fallback from bundle", v43, 2u);
      MEMORY[0x2319033A0](v43, -1, -1);
    }

    v44 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v45 = sub_22F740DF0();
    v46 = [v44 initWithPath_];

    if (!v46)
    {
      sub_22F1DF1D0();
      swift_allocError();
      *v65 = 0xD00000000000002DLL;
      *(v65 + 8) = 0x800000022F791680;
      *(v65 + 16) = 0;
      swift_willThrow();

      return v40;
    }

    v106 = 0;
    v40 = v46;
    v47 = sub_22F740DF0();
    v48 = sub_22F740DF0();
    v49 = v109;
    sub_22F73F780();
    v50 = sub_22F73F6F0();
    v52 = v51;
    v53 = *(v113 + 8);
    v113 += 8;
    v53(v49, v110);
    if (qword_2810AA170 != -1)
    {
      swift_once();
    }

    v54 = qword_2810AA178;
    if ((sub_22F15E910(v50, v52, qword_2810AA178) & 1) == 0)
    {

      v52 = 0xE500000000000000;
      v50 = 0x53555F6E65;
    }

    if (v50 != 0x53555F6E65 || v52 != 0xE500000000000000)
    {
      sub_22F742040();
    }

    v55 = sub_22F740DF0();

    v56 = [v40 URLForResource:v47 withExtension:v48 subdirectory:v55];

    if (!v56)
    {
      sub_22F1DF224();
      swift_allocError();
      *v66 = 0xD000000000000014;
      *(v66 + 8) = 0x800000022F791660;
      *(v66 + 16) = 3;
      swift_willThrow();

      return v40;
    }

    v57 = v105;
    sub_22F73F430();

    v105 = *(v112 + 32);
    (v105)(v107, v57, v115);
    v58 = sub_22F740DF0();
    v59 = sub_22F740DF0();
    v60 = v109;
    sub_22F73F780();
    v61 = sub_22F73F6F0();
    v63 = v62;
    v53(v60, v110);
    if (sub_22F15E910(v61, v63, v54))
    {
      v64 = v40;
      if (v61 != 0x53555F6E65)
      {
LABEL_26:
        sub_22F742040();
LABEL_27:

        v67 = sub_22F740DF0();

        v68 = [v64 URLForResource:v58 withExtension:v59 subdirectory:v67];

        if (v68)
        {
          v69 = v103;
          sub_22F73F430();

          v70 = v104;
          v71 = v69;
          v72 = v115;
          (v105)(v104, v71, v115);
          v73 = v106;
          v74 = sub_22F73F480();
          if (v73)
          {

            v76 = *(v112 + 8);
            v76(v70, v72);
            v76(v107, v72);
          }

          else
          {
            v82 = v74;
            v83 = v75;
            sub_22F73F310();
            swift_allocObject();
            sub_22F73F300();
            sub_22F1DF35C();
            sub_22F73F2F0();
            v84 = v107;
            sub_22F133BF0(v82, v83);

            v40 = sub_22F337D24(v84, &v114);

            v90 = sub_22F740B70();
            v91 = sub_22F7415F0();
            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              *v92 = 0;
              _os_log_impl(&dword_22F0FC000, v90, v91, "[MemoriesMusic] (MaestroMatrix) keywordsByAdamID file used from bundle", v92, 2u);
              MEMORY[0x2319033A0](v92, -1, -1);
            }

            v93 = *(v112 + 8);
            v94 = v115;
            v93(v104, v115);
            v93(v84, v94);
          }
        }

        else
        {
          sub_22F1DF224();
          swift_allocError();
          *v77 = 0xD00000000000001ELL;
          *(v77 + 8) = 0x800000022F791640;
          *(v77 + 16) = 1;
          swift_willThrow();

          (*(v112 + 8))(v107, v115);
        }

        return v40;
      }
    }

    else
    {

      v63 = 0xE500000000000000;
      v64 = v40;
    }

    if (v63 == 0xE500000000000000)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v100 = v29;
  v34 = v21;
  v35 = v108;
  sub_22F73F410();
  sub_22F73F420();

  v36 = *(v112 + 8);
  v37 = v35;
  v38 = v115;
  v36(v37, v115);
  v101 = v36;
  v36(v34, v38);
  v39 = [v32 ignoreProgress];
  sub_22F36B1A8(v100, v31, v39, v12);

  v78 = v108;
  sub_22F73F410();
  v79 = v102;
  sub_22F73F420();

  v80 = v115;
  v81 = v101;
  v101(v78, v115);
  v81(v12, v80);
  v86 = sub_22F73F480();
  v88 = v87;
  sub_22F73F310();
  swift_allocObject();
  sub_22F73F300();
  sub_22F1DF35C();
  sub_22F73F2F0();
  sub_22F133BF0(v86, v88);

  v89 = v106;
  v40 = sub_22F337D24(v106, &v114);

  v95 = sub_22F740B70();
  v96 = sub_22F7415F0();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_22F0FC000, v95, v96, "[MemoriesMusic] (MaestroMatrix) keywordsByAdamID file found", v97, 2u);
    MEMORY[0x2319033A0](v97, -1, -1);
  }

  v98 = v115;
  v81(v79, v115);
  v81(v89, v98);
  return v40;
}

unint64_t sub_22F1DF1D0()
{
  result = qword_27DAB2410;
  if (!qword_27DAB2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2410);
  }

  return result;
}

unint64_t sub_22F1DF224()
{
  result = qword_27DAB2418;
  if (!qword_27DAB2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2418);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph27MaestroMusicMatrixGeneratorV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_22F1DF2A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F1DF2EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_22F1DF330(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_22F1DF35C()
{
  result = qword_2810A9E18;
  if (!qword_2810A9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9E18);
  }

  return result;
}

uint64_t sub_22F1DF418(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_22F73F690();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 uid];
  v11 = sub_22F740E20();
  v13 = v12;

  RecentlyUsedSongs.subscript.getter(v11, v13, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_22F15FCF0(v4);
  }

  (*(v6 + 32))(v9, v4, v5);
  sub_22F73F590();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22F1DF618()
{
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000010, 0x800000022F7917F0);
  sub_22F7413E0();
  MEMORY[0x231900B10](0xD000000000000010, 0x800000022F791810);
  sub_22F7413E0();
  return 0;
}

uint64_t sub_22F1DF704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap;
  swift_beginAccess();
  v11 = *(a3 + v10);
  if (!*(v11 + 16))
  {
    return swift_endAccess();
  }

  v12 = sub_22F1229E8(a1, a2);
  if ((v13 & 1) == 0)
  {
    return swift_endAccess();
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  result = swift_endAccess();
  v16 = *(v14 + 16);
  if (v16)
  {
    (*(v7 + 16))(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * (v16 - 1), v6, 1.0);
    sub_22F73F590();
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

float sub_22F1DF8BC(void *a1, uint64_t a2)
{
  v3 = [a1 uid];
  v4 = sub_22F740E20();
  v6 = v5;

  sub_22F1DF704(v4, v6, a2);
  v8 = v7;

  return v8;
}

void static MemoryDisplayMetadataCacheManager.evictExpiredSongs(with:progressReporter:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22F1A26E0(a1);
  _s11PhotosGraph33MemoryDisplayMetadataCacheManagerC17evictExpiredSongs4from16progressReporter17completionHandleryAA05MusicF0C_So010MAProgressM0CySb_s5Error_pSgtctFZ_0(v7, a2, a3, a4);
}

uint64_t sub_22F1DFB54(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1)
  {
    MusicCache.evictSongsForMemoryDisplay(before:progressReporter:)(a4);
    v7 = 1;
    a2 = 0;
  }

  else
  {
    v7 = 0;
  }

  return a6(v7, a2, a3, a4, a5);
}

void sub_22F1DFC0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id MemoryDisplayMetadataCacheManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MemoryDisplayMetadataCacheManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MemoryDisplayMetadataCacheManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s11PhotosGraph33MemoryDisplayMetadataCacheManagerC17evictExpiredSongs4from16progressReporter17completionHandleryAA05MusicF0C_So010MAProgressM0CySb_s5Error_pSgtctFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  v5 = type metadata accessor for Song(0);
  v56 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22F73F690();
  v61 = *(v8 - 1);
  v62 = v8;
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v12 = v50 - v11;
  sub_22F73F5F0();
  v13 = sub_22F7416D0();
  v57 = v15;
  v58 = v14;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22F770DF0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_22F153470();
  *(v16 + 32) = 0x7461446568636163;
  *(v16 + 40) = 0xE900000000000065;
  v17 = sub_22F73F5B0();
  *(v16 + 96) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v16 + 104) = sub_22F15FD58();
  *(v16 + 72) = v17;
  v18 = sub_22F741560();
  v19 = a1;
  sub_22F2DA3D8(v18);
  v21 = v20;
  v52 = v9;
  v53 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v13;
  v55 = v19;

  v22 = *(v21 + 16);
  if (v22)
  {
    v51 = v12;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22F146454(0, v22, 0);
    v23 = aBlock[0];
    v24 = *(v56 + 80);
    v50[1] = v21;
    v25 = v21 + ((v24 + 32) & ~v24);
    v26 = *(v56 + 72);
    do
    {
      sub_22F15CAA0(v25, v7);
      v28 = *v7;
      v27 = v7[1];

      sub_22F15CBD8(v7);
      aBlock[0] = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_22F146454((v29 > 1), v30 + 1, 1);
        v23 = aBlock[0];
      }

      *(v23 + 16) = v30 + 1;
      v31 = v23 + 16 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v27;
      v25 += v26;
      --v22;
    }

    while (v22);

    v33 = v61;
    v32 = v62;
    v12 = v51;
  }

  else
  {

    v33 = v61;
    v32 = v62;
  }

  v62 = objc_opt_self();
  v34 = sub_22F741160();

  v35 = v53;
  (*(v33 + 16))(v53, v12, v32);
  v36 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v37 = (v52 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v55;
  *(v38 + 16) = v55;
  (*(v33 + 32))(v38 + v36, v35, v32);
  v40 = v57;
  *(v38 + v37) = v57;
  v41 = (v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8));
  v42 = v60;
  *v41 = v59;
  v41[1] = v42;
  aBlock[4] = sub_22F1E0A6C;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F1DFC0C;
  aBlock[3] = &block_descriptor_11;
  v43 = _Block_copy(aBlock);
  v44 = v39;
  v45 = v40;

  v46 = v34;
  v47 = v34;
  v48 = v58;
  [v62 removeSongsCachedForPhotosWithAdamIDs:v47 progressReporter:v58 completionHandler:v43];
  _Block_release(v43);

  return (*(v33 + 8))(v12, v32);
}

uint64_t sub_22F1E02E0(void *a1, uint64_t a2, const void *a3)
{
  v5 = type metadata accessor for Song(0);
  v54 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22F73F690();
  v58 = *(v8 - 1);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  _Block_copy(a3);
  sub_22F73F5F0();
  v14 = sub_22F7416D0();
  v56 = v16;
  v57 = v15;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22F770DF0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_22F153470();
  *(v17 + 32) = 0x7461446568636163;
  *(v17 + 40) = 0xE900000000000065;
  v18 = sub_22F73F5B0();
  *(v17 + 96) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v17 + 104) = sub_22F15FD58();
  *(v17 + 72) = v18;
  v19 = a1;
  v20 = sub_22F741560();
  sub_22F2DA3D8(v20);
  v50 = v9;
  v51 = v14;
  v52 = v19;
  v53 = v13;
  v22 = v21;

  v23 = *(v22 + 16);
  if (v23)
  {
    v48 = v12;
    aBlock[0] = MEMORY[0x277D84F90];
    v49 = v22;
    sub_22F146454(0, v23, 0);
    v24 = aBlock[0];
    v25 = v49 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v26 = *(v54 + 72);
    do
    {
      sub_22F15CAA0(v25, v7);
      v28 = *v7;
      v27 = v7[1];

      sub_22F15CBD8(v7);
      aBlock[0] = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_22F146454((v29 > 1), v30 + 1, 1);
        v24 = aBlock[0];
      }

      *(v24 + 16) = v30 + 1;
      v31 = v24 + 16 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v27;
      v25 += v26;
      --v23;
    }

    while (v23);

    v33 = v58;
    v32 = v59;
    v12 = v48;
  }

  else
  {

    v33 = v58;
    v32 = v59;
  }

  v59 = objc_opt_self();
  v34 = sub_22F741160();

  v35 = v55;
  (*(v33 + 16))(v55, v12, v32);
  v36 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v37 = (v50 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v52;
  *(v38 + 16) = v52;
  (*(v33 + 32))(v38 + v36, v35, v32);
  v40 = v56;
  *(v38 + v37) = v56;
  v41 = (v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8));
  v42 = v53;
  *v41 = sub_22F1E088C;
  v41[1] = v42;
  aBlock[4] = sub_22F1E0894;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F1DFC0C;
  aBlock[3] = &block_descriptor_4;
  v43 = _Block_copy(aBlock);
  v44 = v39;
  v45 = v40;

  v46 = v57;
  [v59 removeSongsCachedForPhotosWithAdamIDs:v34 progressReporter:v57 completionHandler:v43];
  _Block_release(v43);

  (*(v33 + 8))(v12, v32);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = sub_22F73F690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_22F1E09A4(char a1, uint64_t a2)
{
  v5 = *(sub_22F73F690() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22F1DFB54(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t MusicKitPlaylist.id.getter()
{
  v1 = *v0;

  return v1;
}

void MusicKitPlaylist.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t MusicKitPlaylist.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void MusicKitPlaylist.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void sub_22F1E0BD4(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v45 = *a1;
  v5 = a1[3];
  v43 = a1[2];
  v6 = a1[6];
  v7 = *a2;
  if (v6)
  {
    v44 = a1[3];
    v8 = *(v6 + 16);

    if (v8)
    {
      v9 = 0;
      v10 = MEMORY[0x277D84F90];
      do
      {
        v11 = v8 - v9;
        v12 = (v6 + 48 + 296 * v9);
        while (1)
        {
          if (v9 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_31;
          }

          memcpy(__dst, v12 - 1, sizeof(__dst));
          v14 = v12[1];
          v13 = v12[2];
          v48[0] = *v12;
          v48[1] = v14;
          v48[2] = v13;
          v15 = v12[6];
          v17 = v12[3];
          v16 = v12[4];
          v48[5] = v12[5];
          v48[6] = v15;
          v48[3] = v17;
          v48[4] = v16;
          v18 = v12[10];
          v20 = v12[7];
          v19 = v12[8];
          v48[9] = v12[9];
          v49 = v18;
          v48[7] = v20;
          v48[8] = v19;
          v21 = v12[14];
          v23 = v12[11];
          v22 = v12[12];
          v52 = v12[13];
          v53 = v21;
          v50 = v23;
          v51 = v22;
          if (sub_22F1E1664(v48) != 1)
          {
            if (*(&v49 + 1))
            {
              break;
            }
          }

          v12 = (v12 + 296);
          ++v9;
          if (!--v11)
          {
            goto LABEL_17;
          }
        }

        v42 = a3;
        sub_22F18C4EC(__dst, v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v10;
        v25 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1468FC(0, *(v10 + 16) + 1, 1);
          v10 = v54;
        }

        v27 = *(v10 + 16);
        v26 = *(v10 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22F1468FC((v26 > 1), v27 + 1, 1);
          v10 = v54;
        }

        ++v9;
        *(v10 + 16) = v27 + 1;
        memcpy((v10 + 296 * v27 + 32), __dst, 0x128uLL);
        v4 = v25;
        a3 = v42;
      }

      while (v11 != 1);
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

LABEL_17:

    v5 = v44;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  sub_22F341C50(v7);
  v29 = v28;
  if (*(v28 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B98, &qword_22F770D10);
    v30 = sub_22F741DF0();
  }

  else
  {
    v30 = MEMORY[0x277D84F98];
  }

  __dst[0] = v30;
  sub_22F342C28(v29, sub_22F34303C, 0, 1, __dst);

  v31 = __dst[0];
  if (*(__dst[0] + 16) && (, v32 = sub_22F1229E8(v45, v4), v34 = v33, , (v34 & 1) != 0))
  {
    v35 = (*(v31 + 56) + 16 * v32);
    v37 = *v35;
    v36 = v35[1];

    *a3 = v37;
    a3[1] = v36;
    a3[2] = v43;
    a3[3] = v5;
    a3[4] = v10;
  }

  else
  {

    LOBYTE(v12) = sub_22F7415F0();
    if (qword_2810A8E30 != -1)
    {
LABEL_31:
      swift_once();
    }

    v38 = qword_2810A8E38;
    if (os_log_type_enabled(qword_2810A8E38, v12))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      __dst[0] = v40;
      *v39 = 136315138;

      v41 = sub_22F145F20(v45, v4, __dst);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_22F0FC000, v38, v12, "[MemoriesMusic] No identifier for playlist with id: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x2319033A0](v40, -1, -1);
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    else
    {
    }

    a3[4] = 0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }
}

void sub_22F1E1050(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v30 = a1[3];
  v6 = a1[4];
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 0;
    v9 = v6 + 48;
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = v7 - v8;
      v12 = (v9 + 296 * v8);
      while (1)
      {
        if (v8 >= *(v6 + 16))
        {
          __break(1u);
          return;
        }

        memcpy(__dst, v12 - 1, sizeof(__dst));
        v14 = v12[1];
        v13 = v12[2];
        v33[0] = *v12;
        v33[1] = v14;
        v33[2] = v13;
        v15 = v12[6];
        v17 = v12[3];
        v16 = v12[4];
        v33[5] = v12[5];
        v33[6] = v15;
        v33[3] = v17;
        v33[4] = v16;
        v18 = v12[10];
        v20 = v12[7];
        v19 = v12[8];
        v33[9] = v12[9];
        v34 = v18;
        v33[7] = v20;
        v33[8] = v19;
        v21 = v12[14];
        v23 = v12[11];
        v22 = v12[12];
        v37 = v12[13];
        v38 = v21;
        v35 = v23;
        v36 = v22;
        if (sub_22F1E1664(v33) != 1)
        {
          if (*(&v34 + 1))
          {
            break;
          }
        }

        v12 = (v12 + 296);
        ++v8;
        if (!--v11)
        {
          goto LABEL_15;
        }
      }

      v29 = v5;
      v24 = v4;
      sub_22F18C4EC(__dst, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v10;
      v26 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22F1468FC(0, *(v10 + 16) + 1, 1);
        v10 = v39;
      }

      v28 = *(v10 + 16);
      v27 = *(v10 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_22F1468FC((v27 > 1), v28 + 1, 1);
        v10 = v39;
      }

      ++v8;
      *(v10 + 16) = v28 + 1;
      memcpy((v10 + 296 * v28 + 32), __dst, 0x128uLL);
      v3 = v26;
      v4 = v24;
      v5 = v29;
      v9 = v6 + 48;
    }

    while (v11 != 1);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_15:

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v30;
  a2[4] = v10;
}

unint64_t MusicKitPlaylist.description.getter()
{
  v1 = sub_22F740E80();
  MEMORY[0x28223BE20](v1 - 8);
  v27[1] = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22F73EF50();
  MEMORY[0x28223BE20](v3 - 8);
  v30 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Song(0);
  MEMORY[0x28223BE20](v29);
  v31 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_22F741B00();

  v36 = 0xD000000000000014;
  v37 = 0x800000022F7918A0;
  MEMORY[0x231900B10](v8, v9);
  MEMORY[0x231900B10](0x3D44495B202D20, 0xE700000000000000);
  MEMORY[0x231900B10](v6, v7);
  MEMORY[0x231900B10](592477, 0xE300000000000000);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_22F146454(0, v11, 0);
    v12 = v35;
    v13 = (v10 + 32);
    v28 = 0x800000022F7918C0;
    do
    {
      memcpy(v34, v13, sizeof(v34));
      memcpy(v33, v13, sizeof(v33));
      sub_22F18C4EC(v34, v32);
      sub_22F18C4EC(v34, v32);
      Song.init(_:)(v33);
      sub_22F73EFB0();
      swift_allocObject();
      sub_22F73EFA0();
      sub_22F73EF40();
      sub_22F73EF60();
      sub_22F1E15FC();
      v14 = sub_22F73EF90();
      v16 = v15;
      sub_22F740E70();
      v17 = sub_22F740E40();
      v19 = v18;
      sub_22F133BF0(v14, v16);

      if (!v19)
      {
        v17 = 0xD000000000000018;
        v19 = v28;
      }

      sub_22F18C524(v34);
      sub_22F15CBD8(v31);
      v35 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22F146454((v20 > 1), v21 + 1, 1);
        v12 = v35;
      }

      *(v12 + 16) = v21 + 1;
      v22 = v12 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v13 += 296;
      --v11;
    }

    while (v11);
  }

  v34[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v23 = sub_22F740DA0();
  v25 = v24;

  MEMORY[0x231900B10](v23, v25);

  return v36;
}

unint64_t sub_22F1E15FC()
{
  result = qword_2810A99B8;
  if (!qword_2810A99B8)
  {
    type metadata accessor for Song(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A99B8);
  }

  return result;
}

uint64_t sub_22F1E1664(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F1E1688()
{
  v0 = sub_22F3D9AEC(&unk_2843D9AB8);
  result = swift_arrayDestroy();
  qword_2810B4ED8 = v0;
  return result;
}

void sub_22F1E16D4(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v58 = a4;
  v54 = type metadata accessor for Song(0);
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10F8, &unk_22F771548);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v53 - v14;
  v16 = *(a1 + 16);

  v57 = v16;
  if (!v16)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v17 = *(v7 + 72);
  sub_22F15CAA0(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v12);
  if (!*(a2 + 16))
  {
LABEL_27:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_22F15CBD8(v12);
    return;
  }

  v55 = v7;
  v56 = a2;
  v18 = *(a2 + 32);
  sub_22F15CB04(v12, v15);
  sub_22F15CB04(v15, v9);
  v19 = *v58;
  v21 = sub_22F122A14(v9);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    goto LABEL_29;
  }

  v25 = v20;
  if (v19[3] >= v24)
  {
    if (a3)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_22F134678();
      if ((v25 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_22F125F5C(v24, a3 & 1);
  v26 = sub_22F122A14(v9);
  if ((v25 & 1) == (v27 & 1))
  {
    v21 = v26;
    if ((v25 & 1) == 0)
    {
LABEL_14:
      v30 = *v58;
      *(*v58 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      sub_22F15CB04(v9, v30[6] + v21 * v17);
      *(v30[7] + 4 * v21) = v18;
      v31 = v30[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_30;
      }

      v30[2] = v33;
      v34 = v56;
      v35 = v55;
      if (v57 != 1)
      {
        v36 = (v56 + 36);
        v37 = 1;
        while (v37 < *(a1 + 16))
        {
          v38 = *(v35 + 72);
          sub_22F15CAA0(a1 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + v38 * v37, v12);
          v39 = *(v34 + 16);
          if (v37 == v39)
          {
            goto LABEL_27;
          }

          if (v37 >= v39)
          {
            goto LABEL_31;
          }

          v40 = *v36;
          sub_22F15CB04(v12, v15);
          sub_22F15CB04(v15, v9);
          v41 = *v58;
          v42 = sub_22F122A14(v9);
          v44 = v41[2];
          v45 = (v43 & 1) == 0;
          v32 = __OFADD__(v44, v45);
          v46 = v44 + v45;
          if (v32)
          {
            goto LABEL_29;
          }

          v47 = v43;
          if (v41[3] < v46)
          {
            sub_22F125F5C(v46, 1);
            v42 = sub_22F122A14(v9);
            if ((v47 & 1) != (v48 & 1))
            {
              goto LABEL_32;
            }
          }

          if (v47)
          {
            goto LABEL_11;
          }

          v49 = *v58;
          *(*v58 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v50 = v42;
          sub_22F15CB04(v9, v49[6] + v42 * v38);
          *(v49[7] + 4 * v50) = v40;
          v51 = v49[2];
          v32 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v32)
          {
            goto LABEL_30;
          }

          ++v37;
          v49[2] = v52;
          ++v36;
          v34 = v56;
          v35 = v55;
          if (v57 == v37)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_28;
      }

LABEL_26:
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return;
    }

LABEL_11:
    v28 = swift_allocError();
    swift_willThrow();
    v61 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_22F15CBD8(v9);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_33;
  }

LABEL_32:
  sub_22F7420C0();
  __break(1u);
LABEL_33:
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78EFE0);
  sub_22F741C50();
  MEMORY[0x231900B10](39, 0xE100000000000000);
  sub_22F741D40();
  __break(1u);
}

void sub_22F1E1C24(void *a1, uint64_t a2, char a3, void *a4)
{
  v8 = a1[2];

  if (!v8 || !*(a2 + 16))
  {
    goto LABEL_24;
  }

  v10 = a1[4];
  v9 = a1[5];
  v43 = a1;
  v11 = *(a2 + 32);
  v12 = *a4;

  v13 = sub_22F1229E8(v10, v9);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v19) = v14;
  if (v12[3] < v18)
  {
    sub_22F127068(v18, a3 & 1);
    v13 = sub_22F1229E8(v10, v9);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v13 = sub_22F7420C0();
    __break(1u);
  }

  if (a3)
  {
LABEL_8:
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v23 = v13;
  sub_22F1350D0();
  v13 = v23;
  if (v19)
  {
LABEL_9:
    v21 = swift_allocError();
    swift_willThrow();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_29;
  }

LABEL_12:
  v24 = *a4;
  *(*a4 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v25 = (v24[6] + 16 * v13);
  *v25 = v10;
  v25[1] = v9;
  *(v24[7] + 4 * v13) = v11;
  v26 = v24[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v17)
  {
    v24[2] = v27;
    v28 = v43[2];
    if (v28 != 1)
    {
      v19 = v43 + 7;
      v29 = (a2 + 36);
      v30 = 1;
      while (v30 < v28)
      {
        v31 = *(a2 + 16);
        if (v30 == v31)
        {
          goto LABEL_24;
        }

        if (v30 >= v31)
        {
          goto LABEL_28;
        }

        v10 = *(v19 - 1);
        v9 = *v19;
        v11 = *v29;
        v32 = *a4;

        v33 = sub_22F1229E8(v10, v9);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v17 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v17)
        {
          goto LABEL_25;
        }

        a3 = v34;
        if (v32[3] < v37)
        {
          sub_22F127068(v37, 1);
          v33 = sub_22F1229E8(v10, v9);
          if ((a3 & 1) != (v38 & 1))
          {
            goto LABEL_6;
          }
        }

        if (a3)
        {
          goto LABEL_9;
        }

        v39 = *a4;
        *(*a4 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v40 = (v39[6] + 16 * v33);
        *v40 = v10;
        v40[1] = v9;
        *(v39[7] + 4 * v33) = v11;
        v41 = v39[2];
        v17 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v17)
        {
          goto LABEL_26;
        }

        ++v30;
        v39[2] = v42;
        v28 = v43[2];
        v19 += 2;
        ++v29;
        if (v30 == v28)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_27;
    }

LABEL_24:

    swift_bridgeObjectRelease_n();
    return;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78EFE0);
  sub_22F741C50();
  MEMORY[0x231900B10](39, 0xE100000000000000);
  sub_22F741D40();
  __break(1u);
}

uint64_t sub_22F1E2034(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v9 = sub_22F741DF0();
  }

  else
  {
    v9 = MEMORY[0x277D84F98];
  }

  v11 = v9;

  a5(a1, a2, 1, &v11);
  return v11;
}

uint64_t sub_22F1E2100(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22F73FC60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a2 + ((a1 + 2654435769) << 6) + ((a1 + 2654435769) >> 2) + 2654435769u) ^ (a1 + 2654435769);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = __OFSUB__(0, v8);
    v10 = -v8;
    if (!v9)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

      __break(1u);
    }

    __break(1u);
  }

LABEL_4:
  sub_22F73FC50();
  sub_22F39251C(0.75, 1.25);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22F1E2264(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v78 = a4;
  v90 = a1;
  v8 = type metadata accessor for Song(0);
  v94 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v83 = &v76 - v11;
  MEMORY[0x28223BE20](v12);
  v79 = &v76 - v13;
  MEMORY[0x28223BE20](v14);
  v89 = &v76 - v15;
  MEMORY[0x28223BE20](v16);
  v86 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23D0, &unk_22F779818);
  v80 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  if (qword_2810A9AF8 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v81 = v5;
    sub_22F1B560C("Personal Preference Ranker", 26, 2u, 0, 1, qword_2810B4E00, v93);

    v21 = sub_22F1534D0();
    if (qword_2810AA3E8 != -1)
    {
      swift_once();
    }

    v22 = qword_2810B4ED8;

    v23 = sub_22F1ABBB4(v21, v22);

    v82 = v23[2];

    v24 = MEMORY[0x277D84F90];
    v88 = v20;
    sub_22F73FCF0();
    v25 = a3 + OBJC_IVAR___PGMusicCuratorContext_configuration;
    a3 = v24;
    v26 = *(v25 + 82);
    v77 = *(a2 + OBJC_IVAR___PGMusicCurationFeatures_consistentHash);
    v27 = v90 + 56;
    v28 = 1 << *(v90 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v20 = v29 & *(v90 + 56);
    v30 = (v28 + 63) >> 6;

    v5 = 0;
    v84 = v18;
    v31 = v89;
    if (v20)
    {
LABEL_11:
      while (1)
      {
        v33 = *(v94 + 72);
        a2 = v86;
        sub_22F15CAA0(*(v90 + 48) + v33 * (__clz(__rbit64(v20)) | (v5 << 6)), v86);
        sub_22F15CB04(a2, v31);
        v34 = *(v31 + 96);
        v91 = v33;
        if (v34)
        {
          break;
        }

        v45 = *(v31 + 92);
        if (v82)
        {
          v46 = a3;
          v85 = sub_22F73FD00();
          v48 = v47;
          v49 = *v47;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v48 = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v49 = sub_22F13DA74(0, *(v49 + 2) + 1, 1, v49);
            *v48 = v49;
          }

          v52 = *(v49 + 2);
          v51 = *(v49 + 3);
          if (v52 >= v51 >> 1)
          {
            v49 = sub_22F13DA74((v51 > 1), v52 + 1, 1, v49);
            *v48 = v49;
          }

          *(v49 + 2) = v52 + 1;
          *&v49[4 * v52 + 32] = v45;
          (v85)(v92, 0);
          v31 = v89;
          sub_22F15CAA0(v89, v83);
          a3 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_22F13E558(0, v46[2] + 1, 1, v46);
          }

          v18 = v84;
          v43 = a3[2];
          v53 = a3[3];
          a2 = v43 + 1;
          if (v43 >= v53 >> 1)
          {
            a3 = sub_22F13E558((v53 > 1), v43 + 1, 1, a3);
          }

          v54 = &v96;
          goto LABEL_41;
        }

        if (v45 >= 0.0)
        {
          v85 = a3;
          v55 = sub_22F1D226C(*v31, *(v31 + 8));
          sub_22F1E2100(v77, v55);
          v57 = v56;
          v58 = sub_22F73FD00();
          v60 = v59;
          v61 = *v59;
          v62 = swift_isUniquelyReferenced_nonNull_native();
          *v60 = v61;
          v76 = v58;
          if ((v62 & 1) == 0)
          {
            v61 = sub_22F13DA74(0, *(v61 + 2) + 1, 1, v61);
            *v60 = v61;
          }

          v64 = *(v61 + 2);
          v63 = *(v61 + 3);
          if (v64 >= v63 >> 1)
          {
            v61 = sub_22F13DA74((v63 > 1), v64 + 1, 1, v61);
            *v60 = v61;
          }

          *(v61 + 2) = v64 + 1;
          *&v61[4 * v64 + 32] = v57;
          v76(v92, 0);
          v31 = v89;
          sub_22F15CAA0(v89, v79);
          a3 = v85;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_22F13E558(0, a3[2] + 1, 1, a3);
          }

          v43 = a3[2];
          v65 = a3[3];
          a2 = v43 + 1;
          if (v43 >= v65 >> 1)
          {
            a3 = sub_22F13E558((v65 > 1), v43 + 1, 1, a3);
          }

          v54 = &v95;
LABEL_41:
          v44 = *(v54 - 32);
LABEL_42:
          a3[2] = a2;
          sub_22F15CB04(v44, a3 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + v43 * v91);
        }

        v20 &= v20 - 1;
        sub_22F15CBD8(v31);
        if (!v20)
        {
          goto LABEL_7;
        }
      }

      v85 = a3;
      v35 = sub_22F73FD00();
      v37 = v36;
      v38 = *v36;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v38;
      if ((v39 & 1) == 0)
      {
        v38 = sub_22F13DA74(0, *(v38 + 2) + 1, 1, v38);
        *v37 = v38;
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = sub_22F13DA74((v40 > 1), v41 + 1, 1, v38);
        *v37 = v38;
      }

      *(v38 + 2) = v41 + 1;
      *&v38[4 * v41 + 32] = v26;
      v35(v92, 0);
      v31 = v89;
      sub_22F15CAA0(v89, v87);
      a3 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_22F13E558(0, a3[2] + 1, 1, a3);
      }

      v18 = v84;
      v43 = a3[2];
      v42 = a3[3];
      a2 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        a3 = sub_22F13E558((v42 > 1), v43 + 1, 1, a3);
      }

      v44 = v87;
      goto LABEL_42;
    }

LABEL_7:
    v32 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      break;
    }

    __break(1u);
LABEL_55:
    swift_once();
  }

  if (v32 < v30)
  {
    v20 = *(v27 + 8 * v32);
    ++v5;
    if (v20)
    {
      v5 = v32;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v66 = v90;

  if (*(v66 + 16))
  {
    sub_22F1E2BE4();
    v67 = v88;
    sub_22F73FC40();
    v69 = v68;
    sub_22F73FC30();
    v71 = v70;
    sub_22F73FC20();
    v72 = v81;
    if (v69 < v71)
    {
      sub_22F73FC10();
    }

    v73 = sub_22F73FD10();
    v74 = sub_22F1E2034(a3, v73, &qword_27DAB0930, &qword_22F770B30, sub_22F1E16D4);

    sub_22F1B2BBC(0);
    sub_22F7416A0();
    (*(v80 + 8))(v67, v18);

    if (v72)
    {
    }
  }

  else
  {

    v74 = sub_22F14F2BC(MEMORY[0x277D84F90]);

    (*(v80 + 8))(v88, v18);
  }

  return v74;
}

unint64_t sub_22F1E2BE4()
{
  result = qword_2810A94F8;
  if (!qword_2810A94F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB23D0, &unk_22F779818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A94F8);
  }

  return result;
}

unint64_t sub_22F1E2C64(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) || *(a3 + 16))
  {
    v6 = MEMORY[0x277D84F90];
    sub_22F14EE58(MEMORY[0x277D84F90]);

    sub_22F14EE58(v6);
    sub_22F1AFA40(a1, a2, a3);
    v8 = v7;

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v9 = sub_22F740B90();
    __swift_project_value_buffer(v9, qword_2810B4D90);

    v10 = sub_22F740B70();
    v11 = sub_22F7415C0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      if (a1 >> 62)
      {
        v13 = sub_22F741A00();
      }

      else
      {
        v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v12 + 4) = v13;

      *(v12 + 12) = 2048;
      if (v8 >> 62)
      {
        v14 = sub_22F741A00();
      }

      else
      {
        v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v12 + 14) = v14;

      _os_log_impl(&dword_22F0FC000, v10, v11, "[Flex Filtered] Filtered %ld songs to %ld songs after removing unmatched regional songs", v12, 0x16u);
      MEMORY[0x2319033A0](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    return a1;
  }

  return v8;
}

void sub_22F1E2E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  sub_22F13A100(a1, v33);
  sub_22F1E3D20();
  if (swift_dynamicCast())
  {
    v17 = v32;
    sub_22F13A100(a2, v33);
    if (swift_dynamicCast())
    {
      v18 = v32;
      v19 = [v17 location];
      if (!v19)
      {

        return;
      }

      v20 = v19;
      v21 = [v18 location];
      if (!v21)
      {

        return;
      }

      v22 = v21;
      v23 = [v17 creationDate];
      if (v23)
      {
        v31 = v22;
        v24 = v23;
        sub_22F73F640();

        v30 = *(v5 + 32);
        v30(v16, v13, v4);
        v25 = [v18 creationDate];
        if (v25)
        {
          v26 = v25;
          sub_22F73F640();

          v30(v10, v7, v4);
          v27 = v31;
          [v20 distanceFromLocation_];
          sub_22F73F590();

          v28 = *(v5 + 8);
          v28(v10, v4);
          v28(v16, v4);
          return;
        }

        (*(v5 + 8))(v16, v4);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_22F1E319C(uint64_t a1)
{
  v93 = type metadata accessor for PublicEventTimeAndLocation(0);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v2 = &v85 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v85 - v4;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v91 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v85 - v10;
  MEMORY[0x28223BE20](v11);
  v102 = &v85 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v85 - v14;
  MEMORY[0x28223BE20](v16);
  v104 = &v85 - v17;
  MEMORY[0x28223BE20](v18);
  v107 = &v85 - v19;
  v20 = objc_allocWithZone(MEMORY[0x277D3AC30]);
  v112 = sub_22F1E2E54;
  v113 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v109 = 1107296256;
  v110 = sub_22F386B70;
  v111 = &block_descriptor_5;
  v21 = _Block_copy(&aBlock);
  v22 = [v20 initWithDistanceBlock_];
  _Block_release(v21);

  if (!v22)
  {
    return MEMORY[0x277D84F98];
  }

  v23 = v22;
  [v23 setMaximumDistance_];
  [v23 setMinimumNumberOfObjects_];

  v100 = sub_22F1E3D20();
  v24 = sub_22F741160();
  v25 = [v23 performWithDataset:v24 progressBlock:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3D70, &qword_22F779C98);
  v26 = sub_22F741180();

  if (v26 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v28 = 0;
    v94 = v26 & 0xC000000000000001;
    v86 = v26 & 0xFFFFFFFFFFFFFF8;
    v85 = v26 + 32;
    v105 = (v7 + 32);
    v106 = (v7 + 8);
    v98 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F98];
    v99 = (v7 + 16);
    v89 = v2;
    v96 = v5;
    v2 = v104;
    v88 = v26;
    v87 = i;
    while (1)
    {
      while (1)
      {
        if (v94)
        {
          v29 = MEMORY[0x2319016F0](v28, v26);
        }

        else
        {
          if (v28 >= *(v86 + 16))
          {
            goto LABEL_51;
          }

          v29 = *(v85 + 8 * v28);
        }

        v101 = v29;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        v31 = [v101 objects];
        v32 = sub_22F741180();

        v7 = v32 >> 62 ? sub_22F741A00() : *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v7 >= 1)
        {
          break;
        }

        if (v28 == i)
        {
          goto LABEL_54;
        }
      }

      sub_22F73F570();
      sub_22F73F550();
      v33 = [v101 objects];
      v26 = sub_22F741180();

      v5 = v26 >> 62 ? sub_22F741A00() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
      v95 = v28;
      if (v5)
      {
        break;
      }

      v37 = 0.0;
      v38 = 0.0;
LABEL_34:

      v58 = [v101 objects];
      v59 = sub_22F741180();

      if (v59 >> 62)
      {
        v60 = sub_22F741A00();
      }

      else
      {
        v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v61 = [v101 objects];
      v62 = sub_22F741180();

      if (v62 >> 62)
      {
        v63 = sub_22F741A00();
      }

      else
      {
        v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v64 = v38 / v60;

      v65 = *v99;
      v66 = v90;
      (*v99)(v90, v107, v6);
      v67 = v91;
      v65(v91, v104, v6);
      aBlock = 0;
      v109 = 0xE000000000000000;
      sub_22F7413B0();
      MEMORY[0x231900B10](124, 0xE100000000000000);
      sub_22F7413B0();
      MEMORY[0x231900B10](124, 0xE100000000000000);
      sub_22F1E3D6C();
      v68 = sub_22F742010();
      MEMORY[0x231900B10](v68);

      MEMORY[0x231900B10](124, 0xE100000000000000);
      v69 = sub_22F742010();
      MEMORY[0x231900B10](v69);

      v70 = v109;
      v71 = v96;
      v103 = aBlock;
      *v96 = aBlock;
      *(v71 + 1) = v70;
      v71[2] = v64;
      v71[3] = v37 / v63;
      v72 = v93;
      v65(v71 + *(v93 + 24), v66, v6);
      v65(v71 + *(v72 + 28), v67, v6);

      sub_22F73F5A0();
      sub_22F73F5A0();
      v73 = *v106;
      (*v106)(v67, v6);
      v73(v66, v6);
      v74 = v71;
      v75 = v89;
      sub_22F1E3DC4(v74, v89);
      v76 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_22F13ED90(0, v76[2] + 1, 1, v76);
      }

      v78 = v76[2];
      v77 = v76[3];
      if (v78 >= v77 >> 1)
      {
        v76 = sub_22F13ED90((v77 > 1), v78 + 1, 1, v76);
      }

      v76[2] = v78 + 1;
      v79 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v98 = v76;
      sub_22F1E3E28(v75, v76 + v79 + *(v92 + 72) * v78);
      v5 = v101;
      v80 = [v101 objects];
      v81 = sub_22F741180();

      v82 = v97;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v82;
      sub_22F1310A0(v81, v103, v70, isUniquelyReferenced_nonNull_native);

      v97 = aBlock;
      sub_22F1E3E8C(v96);
      v7 = v104;
      v73(v104, v6);
      v73(v107, v6);
      v2 = v7;
      v26 = v88;
      i = v87;
      v28 = v95;
      if (v95 == v87)
      {
        goto LABEL_54;
      }
    }

    if (v5 >= 1)
    {
      v35 = 0;
      v36 = v26 & 0xC000000000000001;
      v37 = 0.0;
      v38 = 0.0;
      v103 = v5;
      while (1)
      {
        if (v36)
        {
          v39 = MEMORY[0x2319016F0](v35, v26);
        }

        else
        {
          v39 = *(v26 + 8 * v35 + 32);
        }

        v40 = v39;
        v41 = [v39 v34[394]];
        if (v41)
        {
          v42 = v41;
          v43 = [v40 creationDate];
          if (v43)
          {
            v44 = v36;
            v45 = v6;
            v46 = v102;
            v47 = v43;
            sub_22F73F640();

            v48 = *v105;
            v49 = v46;
            v6 = v45;
            (*v105)(v15, v49, v45);
            [v42 coordinate];
            v51 = v50;
            [v42 coordinate];
            v53 = v52;
            if (sub_22F73F660() == 1)
            {
              v54 = v107;
              (*v106)(v107, v45);
              (*v99)(v54, v15, v45);
            }

            v38 = v38 + v51;
            v37 = v37 + v53;
            v55 = v104;
            v56 = sub_22F73F660();

            v57 = *v106;
            if (v56 == -1)
            {
              v57(v55, v6);
              v48(v55, v15, v6);
            }

            else
            {
              v57(v15, v6);
            }

            v34 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
            v36 = v44;
            v5 = v103;
            goto LABEL_21;
          }
        }

LABEL_21:
        if (v5 == ++v35)
        {
          goto LABEL_34;
        }
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v98 = MEMORY[0x277D84F90];
  v97 = MEMORY[0x277D84F98];
LABEL_54:

  return v97;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F1E3D20()
{
  result = qword_2810A8EE0;
  if (!qword_2810A8EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8EE0);
  }

  return result;
}

unint64_t sub_22F1E3D6C()
{
  result = qword_2810AC6F8;
  if (!qword_2810AC6F8)
  {
    sub_22F73F690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AC6F8);
  }

  return result;
}

uint64_t sub_22F1E3DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PublicEventTimeAndLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F1E3E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PublicEventTimeAndLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F1E3E8C(uint64_t a1)
{
  v2 = type metadata accessor for PublicEventTimeAndLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F1E3F74@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___PGMusicBag_atomicMusicBagContents);
  v4 = *(v3 + 312);

  [v4 lock];
  swift_beginAccess();
  sub_22F1E4038((v3 + 16), a1);
  swift_endAccess();
  [*(v3 + 312) unlock];
}

uint64_t sub_22F1E4038@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDB8C(__dst) == 1)
  {
    memcpy(v9, __src, 0x121uLL);
    sub_22F120ADC(v9, &qword_27DAB2458, &qword_22F782A80);
    MusicBag.fetchMusicBagContents()(&v8);
    if (v4)
    {
      __srca[0] = v4;
      sub_22F1EDBA0(__srca);
      memcpy(v7, __srca, 0x121uLL);
      GEOLocationCoordinate2DMake();
      memcpy(__src, v7, 0x121uLL);
    }

    else
    {
      sub_22F1EDAA8(&v8);
      memcpy(v7, &v8, 0x121uLL);
      GEOLocationCoordinate2DMake();
      memcpy(__src, v7, 0x121uLL);
    }
  }

  memcpy(&v8, __src, 0x121uLL);
  memcpy(v9, __src, 0x121uLL);
  result = sub_22F1EDB8C(v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(a2, v9, 0x121uLL);
    memcpy(v7, &v8, 0x121uLL);
    return sub_22F13BA9C(v7, __srca, &qword_27DAB2448, &unk_22F788C80);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.fetchMusicBagContents()(PhotosGraph::MusicBagContents *__return_ptr retstr)
{
  (MEMORY[0x28223BE20])();
  v3 = v1;
  v125 = v4;
  v180 = *MEMORY[0x277D85DE8];
  sub_22F1A2878(v179);
  v120 = *(v1 + OBJC_IVAR___PGMusicBag_cache);
  v127 = v1;
  if (!v120)
  {
    memcpy(v177, v179, sizeof(v177));
LABEL_12:
    memcpy(v178, v177, sizeof(v178));
    v123 = v2;
    goto LABEL_13;
  }

  if (qword_2810A9BF8[0] != -1)
  {
    swift_once();
  }

  v5 = qword_2810B4EA8;
  *&v6 = CACurrentMediaTime();
  sub_22F1B560C("MusicCacheReadInfo", 18, 2u, v6, 0, v5, &v176);
  v7 = memcpy(v138, v179, 0x130uLL);
  MEMORY[0x28223BE20](v7);
  sub_22F7417A0();
  if (!v2)
  {
    sub_22F1B2BBC(0);

    memcpy(v177, v138, sizeof(v177));
    goto LABEL_12;
  }

  memcpy(v136, v138, 0x130uLL);
  sub_22F120ADC(v136, &unk_27DAB1D90, &qword_22F7771A8);
  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v8 = sub_22F740B90();
  __swift_project_value_buffer(v8, qword_2810B4CB0);
  v9 = v2;
  v10 = sub_22F740B70();
  v11 = sub_22F7415C0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v129 = &v117;
    v13 = swift_slowAlloc();
    v178[0] = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_22F7420F0();
    v16 = sub_22F145F20(v14, v15, v178);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22F0FC000, v10, v11, "[MemoriesMusic] failed to decode MusicCacheInfo, error: %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v17 = v13;
    v3 = v127;
    MEMORY[0x2319033A0](v17, -1, -1);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  MEMORY[0x28223BE20](v18);
  sub_22F7417A0();
  v123 = 0;

  memcpy(v178, v179, sizeof(v178));
LABEL_13:
  v129 = sub_22F740DF0();
  v19 = OBJC_IVAR___PGMusicBag_amsBag;
  v20 = *(v3 + OBJC_IVAR___PGMusicBag_amsBag);
  v21 = sub_22F740DF0();
  v22 = [v20 integerForKey_];

  v23 = dispatch_semaphore_create(0);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v23;
  v138[4] = sub_22F1ED8F4;
  v138[5] = v25;
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 1107296256;
  v126 = &v138[2];
  v138[2] = sub_22F1EDBD4;
  v138[3] = &block_descriptor_6;
  v26 = _Block_copy(v138);

  v27 = v23;

  [v22 valueWithCompletion_];
  _Block_release(v26);
  sub_22F741780();

  swift_beginAccess();
  v28 = *(v24 + 16);

  v128 = v19;
  v29 = *(v3 + v19);
  v30 = sub_22F740DF0();
  v31 = [v29 integerForKey_];

  v32 = dispatch_semaphore_create(0);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v32;
  v138[4] = sub_22F1EDC00;
  v138[5] = v34;
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 1107296256;
  v138[2] = sub_22F1EDBD4;
  v138[3] = &block_descriptor_11_0;
  v35 = _Block_copy(v138);

  v36 = v32;

  [v31 valueWithCompletion_];
  _Block_release(v35);
  sub_22F741780();

  swift_beginAccess();
  v37 = *(v33 + 16);

  v126 = v28;
  if (v28)
  {
    v38 = v127;
    if (v37)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v39 = sub_22F740B90();
  __swift_project_value_buffer(v39, qword_2810B4CB0);
  v40 = sub_22F740B70();
  v41 = sub_22F7415D0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_22F0FC000, v40, v41, "[MemoriesMusic] failed to read song batch size from bag, defaulting hard coded value.", v42, 2u);
    MEMORY[0x2319033A0](v42, -1, -1);
  }

  v126 = 300;
  v38 = v127;
  if (!v37)
  {
LABEL_21:
    if (qword_2810A93F0 != -1)
    {
      swift_once();
    }

    v43 = sub_22F740B90();
    __swift_project_value_buffer(v43, qword_2810B4CB0);
    v44 = sub_22F740B70();
    v45 = sub_22F7415D0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22F0FC000, v44, v45, "[MemoriesMusic] failed to read song equivalent batch size from bag, defaulting hard coded value.", v46, 2u);
      MEMORY[0x2319033A0](v46, -1, -1);
    }

    v37 = 300;
  }

LABEL_26:
  v124 = v37;
  v47 = [*(v38 + v128) dictionaryForKey_];
  v48 = dispatch_semaphore_create(0);
  v49 = swift_allocObject();
  *(v49 + 16) = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v48;
  v138[4] = sub_22F1ED914;
  v138[5] = v50;
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 1107296256;
  v138[2] = sub_22F1EDBD4;
  v138[3] = &block_descriptor_20;
  v51 = _Block_copy(v138);

  v52 = v48;

  [v47 valueWithCompletion_];
  _Block_release(v51);
  sub_22F741780();

  swift_beginAccess();
  v53 = *(v49 + 16);

  v138[0] = 0;
  sub_22F740C90();
  if (!v138[0])
  {
    sub_22F1ED91C();
    v71 = swift_allocError();
    *v72 = 0;
    swift_willThrow();

    goto LABEL_32;
  }

  v121 = v138[0];
  v122 = v53;
  v54 = *(v38 + v128);
  v55 = sub_22F740DF0();
  v56 = [v54 dictionaryForKey_];

  v57 = dispatch_semaphore_create(0);
  v58 = swift_allocObject();
  *(v58 + 16) = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  v59 = swift_allocObject();
  v59[2] = v58;
  v59[3] = v57;
  v138[4] = sub_22F1EDC04;
  v138[5] = v59;
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 1107296256;
  v138[2] = sub_22F1EDBD4;
  v138[3] = &block_descriptor_28;
  v60 = _Block_copy(v138);

  v61 = v57;

  [v56 valueWithCompletion_];
  _Block_release(v60);
  sub_22F741780();

  swift_beginAccess();
  v62 = *(v58 + 16);

  v63 = objc_opt_self();
  v138[0] = 0;
  v64 = [v63 dataWithJSONObject:v62 options:0 error:v138];
  if (!v64)
  {
    v73 = v138[0];

    v71 = sub_22F73F370();

    swift_willThrow();
    goto LABEL_32;
  }

  v65 = v64;
  v66 = v138[0];
  v67 = sub_22F73F510();
  v69 = v68;

  sub_22F73EF30();
  swift_allocObject();
  sub_22F73EF20();
  sub_22F1ED9CC();
  v70 = v123;
  sub_22F73EF10();
  v71 = v70;
  if (v70)
  {

    sub_22F133BF0(v67, v69);

    goto LABEL_32;
  }

  v117 = 0;
  v118 = v69;
  v119 = v67;
  v123 = v62;

  v153 = v169;
  v154 = v170;
  v155 = v171;
  v156 = v172;
  v149 = v165;
  v150 = v166;
  v151 = v167;
  v152 = v168;
  v145 = v161;
  v146 = v162;
  v147 = v163;
  v148 = v164;
  v141 = v157;
  v142 = v158;
  v143 = v159;
  v144 = v160;
  v89 = *(v127 + v128);
  v90 = sub_22F740DF0();
  v91 = [v89 dictionaryForKey_];

  v92 = dispatch_semaphore_create(0);
  v93 = swift_allocObject();
  *(v93 + 16) = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  v94 = swift_allocObject();
  v94[2] = v93;
  v94[3] = v92;
  v138[4] = sub_22F1EDC04;
  v138[5] = v94;
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 1107296256;
  v138[2] = sub_22F1EDBD4;
  v138[3] = &block_descriptor_36;
  v95 = _Block_copy(v138);

  v96 = v92;

  [v91 valueWithCompletion_];
  _Block_release(v95);
  sub_22F741780();

  swift_beginAccess();
  v97 = *(v93 + 16);

  v138[0] = 0;
  v98 = [v63 dataWithJSONObject:v97 options:0 error:v138];
  if (v98)
  {
    v99 = v98;
    v100 = v138[0];
    v101 = sub_22F73F510();
    v103 = v102;

    swift_allocObject();
    sub_22F73EF20();
    sub_22F1EDA20();
    v104 = v117;
    sub_22F73EF10();
    v105 = v118;
    if (v104)
    {

      sub_22F133BF0(v101, v103);
      sub_22F133BF0(v119, v105);

      v71 = v104;
      goto LABEL_32;
    }

    v128 = v101;

    *&v174[25] = v153;
    *&v174[27] = v154;
    *&v174[29] = v155;
    *&v174[17] = v149;
    *&v174[19] = v150;
    *&v174[21] = v151;
    *&v174[23] = v152;
    *&v174[9] = v145;
    *&v174[11] = v146;
    *&v174[13] = v147;
    *&v174[15] = v148;
    *&v174[1] = v141;
    *&v174[3] = v142;
    *&v174[5] = v143;
    LOBYTE(v174[31]) = v156;
    *&v174[7] = v144;
    v174[0] = v121;
    v174[32] = v130;
    v174[33] = v131;
    v174[34] = v126;
    v174[35] = v124;
    memcpy(v140, v178, 0x130uLL);
    if (sub_22F1A3BE4(v140) == 1)
    {
      sub_22F1ED970(v174, v138);
      v107 = v120;
      goto LABEL_52;
    }

    memcpy(v139, v174, sizeof(v139));
    GEOLocationCoordinate2DMake();
    memcpy(v138, &v140[1], 0x120uLL);
    memcpy(&v138[36], v139, 0x120uLL);
    memcpy(v173, &v140[1], sizeof(v173));
    v111 = sub_22F162DEC(v173);
    v107 = v120;
    if (v111 == 1)
    {
      memcpy(v136, &v138[36], 0x120uLL);
      if (sub_22F162DEC(v136) == 1)
      {
        memcpy(v137, v138, sizeof(v137));
        sub_22F1ED970(v174, v135);
        sub_22F1ED970(v174, v135);
        sub_22F13BA9C(&v140[1], v135, &qword_27DAB1548, &qword_22F7720F8);
        sub_22F120ADC(v137, &qword_27DAB1548, &qword_22F7720F8);
        goto LABEL_52;
      }

      sub_22F1ED970(v174, v137);
      sub_22F1ED970(v174, v137);
      sub_22F13BA9C(&v140[1], v137, &qword_27DAB1548, &qword_22F7720F8);
    }

    else
    {
      v127 = v103;
      memcpy(v137, v138, sizeof(v137));
      memcpy(v135, v138, sizeof(v135));
      memcpy(v136, &v138[36], 0x120uLL);
      if (sub_22F162DEC(v136) != 1)
      {
        memcpy(v134, &v138[36], sizeof(v134));
        sub_22F1ED970(v174, v133);
        sub_22F1ED970(v174, v133);
        sub_22F1ED970(v174, v133);
        sub_22F13BA9C(&v140[1], v133, &qword_27DAB1548, &qword_22F7720F8);
        sub_22F13BA9C(v137, v133, &qword_27DAB1548, &qword_22F7720F8);
        v116 = _s11PhotosGraph16MusicBagContentsV2eeoiySbAC_ACtFZ_0(v135, v134);
        memcpy(v132, v134, sizeof(v132));
        sub_22F162EC8(v132);
        memcpy(v133, v135, sizeof(v133));
        sub_22F162EC8(v133);
        memcpy(v134, v138, sizeof(v134));
        sub_22F120ADC(v134, &qword_27DAB1548, &qword_22F7720F8);
        sub_22F162EC8(v174);
        v103 = v127;
        if (v116)
        {
LABEL_52:
          memcpy(v136, v174, 0x120uLL);
          GEOLocationCoordinate2DMake();
          memcpy(&v138[2], v136, 0x120uLL);
          v138[0] = 56;
          v138[1] = 0xE100000000000000;
          if (v107)
          {
            if (qword_2810A9BF8[0] != -1)
            {
              swift_once();
            }

            v108 = qword_2810B4EA8;
            *&v109 = CACurrentMediaTime();
            v110 = sub_22F1B560C("MusicCacheWriteInfo", 19, 2u, v109, 0, v108, v139);
            MEMORY[0x28223BE20](v110);
            sub_22F7417A0();
            sub_22F120ADC(v178, &unk_27DAB1D90, &qword_22F7771A8);
            sub_22F1B2BBC(0);

LABEL_71:

            sub_22F133BF0(v128, v103);
            sub_22F133BF0(v119, v105);
            sub_22F1A3B90(v138);
            goto LABEL_72;
          }

          goto LABEL_70;
        }

LABEL_63:
        memcpy(&v138[2], v139, 0x120uLL);
        *v138 = v140[0];
        if (v107)
        {
          v112 = qword_2810A9BF8[0];

          if (v112 != -1)
          {
            swift_once();
          }

          v113 = qword_2810B4EA8;
          *&v114 = CACurrentMediaTime();
          v115 = sub_22F1B560C("MusicCacheWriteInfo", 19, 2u, v114, 0, v113, v137);
          MEMORY[0x28223BE20](v115);
          sub_22F7417A0();
          sub_22F120ADC(v178, &unk_27DAB1D90, &qword_22F7771A8);
          sub_22F1B2BBC(0);

          goto LABEL_71;
        }

LABEL_70:

        sub_22F133BF0(v128, v103);
        sub_22F133BF0(v119, v105);
        sub_22F1A3B90(v138);
        sub_22F120ADC(v178, &unk_27DAB1D90, &qword_22F7771A8);
LABEL_72:
        v88 = v174;
        goto LABEL_45;
      }

      memcpy(v134, v138, sizeof(v134));
      sub_22F1ED970(v174, v133);
      sub_22F1ED970(v174, v133);
      sub_22F13BA9C(&v140[1], v133, &qword_27DAB1548, &qword_22F7720F8);
      sub_22F13BA9C(v137, v133, &qword_27DAB1548, &qword_22F7720F8);
      sub_22F162EC8(v134);
      v103 = v127;
    }

    memcpy(v136, v138, sizeof(v136));
    sub_22F120ADC(v136, &qword_27DAB1550, &unk_22F772100);
    goto LABEL_63;
  }

  v106 = v138[0];

  v71 = sub_22F73F370();

  swift_willThrow();
  sub_22F133BF0(v119, v118);
LABEL_32:
  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v74 = sub_22F740B90();
  __swift_project_value_buffer(v74, qword_2810B4CB0);
  v75 = v71;
  v76 = sub_22F740B70();
  v77 = sub_22F7415E0();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v128 = 0;
    v79 = v78;
    v80 = swift_slowAlloc();
    v136[0] = v80;
    *v79 = 136315138;
    swift_getErrorValue();
    v81 = sub_22F7420F0();
    v83 = sub_22F145F20(v81, v82, v136);

    *(v79 + 4) = v83;
    _os_log_impl(&dword_22F0FC000, v76, v77, "[MemoriesMusic] Failed to read personal mix identifiers from bag, defaulting to last successful values, error: %s.", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);
    MEMORY[0x2319033A0](v80, -1, -1);
    MEMORY[0x2319033A0](v79, -1, -1);
  }

  memcpy(v136, v178, 0x130uLL);
  if (sub_22F1A3BE4(v136) != 1)
  {
    memcpy(v140, &v136[2], 0x120uLL);
    if (sub_22F162DEC(v140) != 1)
    {
      memcpy(v174, &v136[2], sizeof(v174));
      sub_22F1ED970(v174, v173);

      sub_22F120ADC(v178, &unk_27DAB1D90, &qword_22F7771A8);
      v88 = &v136[2];
      goto LABEL_45;
    }

    sub_22F120ADC(v178, &unk_27DAB1D90, &qword_22F7771A8);
  }

  v84 = sub_22F740B70();
  v85 = sub_22F7415E0();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_22F0FC000, v84, v85, "[MemoriesMusic] Failed to read personal mix identifiers from cache, defaulting to on device constants.", v86, 2u);
    MEMORY[0x2319033A0](v86, -1, -1);
  }

  if (qword_27DAAFDE0 != -1)
  {
    swift_once();
  }

  v87 = qword_27DAB2788;

  LOBYTE(v174[0]) = 0;
  LOBYTE(v173[0]) = 0;
  *(v140 + 8) = vdupq_n_s64(0x40F5180000000000uLL);
  *&v140[0] = v87;
  *(&v140[1] + 1) = 2;
  *&v140[2] = 0x4132750000000000;
  *(&v140[2] + 8) = *(v140 + 8);
  *(&v140[3] + 8) = xmmword_22F779CA0;
  BYTE8(v140[4]) = 0;
  v140[5] = *(v140 + 8);
  *(&v140[6] + 8) = xmmword_22F779CB0;
  *&v140[6] = 2;
  *(&v140[7] + 1) = 0x40F5180000000000;
  *(&v140[8] + 8) = xmmword_22F779CB0;
  *&v140[8] = 2;
  *(&v140[9] + 1) = 0x40F5180000000000;
  *&v140[10] = 2;
  *(&v140[10] + 1) = 0x4132750000000000;
  v140[11] = *(v140 + 8);
  v140[12] = xmmword_22F779CA0;
  LOBYTE(v140[13]) = 0;
  *(&v140[13] + 8) = *(v140 + 8);
  *(&v140[14] + 8) = xmmword_22F779CA0;
  BYTE8(v140[15]) = 0;
  *&v140[16] = 0x4122750000000000;
  *(&v140[16] + 1) = 200;
  *&v140[17] = v126;
  *(&v140[17] + 1) = v124;
  GEOLocationCoordinate2DMake();
  v88 = v140;
LABEL_45:
  memcpy(v175, v88, sizeof(v175));
  memcpy(v125, v175, 0x120uLL);
}

uint64_t MusicBag.MusicBagError.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

id MusicBag.__allocating_init(with:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22F1ED5B0(a1);

  return v4;
}

id MusicBag.init(with:)(void *a1)
{
  v2 = sub_22F1ED5B0(a1);

  return v2;
}

id MusicBag.init(musicBagContents:cache:)(const void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR___PGMusicBag_atomicMusicBagContents;
  sub_22F1EDA74(__src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2440, &qword_22F779CC0);
  v6 = swift_allocObject();
  *(v6 + 312) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  memcpy((v6 + 16), __src, 0x121uLL);
  *&v2[v5] = v6;
  v7 = sub_22F740DF0();
  v8 = sub_22F740DF0();
  v9 = [objc_opt_self() bagForProfile:v7 profileVersion:v8];

  *&v2[OBJC_IVAR___PGMusicBag_amsBag] = v9;
  memcpy(__dst, a1, 0x120uLL);
  sub_22F1EDAA8(__dst);
  memcpy(v16, __dst, sizeof(v16));
  GEOLocationCoordinate2DMake();
  v10 = swift_allocObject();
  *(v10 + 312) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  memcpy((v10 + 16), v16, 0x121uLL);
  *&v2[v5] = v10;

  *&v2[OBJC_IVAR___PGMusicBag_cache] = a2;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t static MusicBag.stringValue(from:)(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v9[4] = sub_22F1EDAB0;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22F1EDBD4;
  v9[3] = &block_descriptor_46;
  v5 = _Block_copy(v9);

  v6 = v2;

  [a1 valueWithCompletion_];
  _Block_release(v5);
  sub_22F741780();

  swift_beginAccess();
  v7 = *(v3 + 16);

  return v7;
}

uint64_t sub_22F1E6300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = sub_22F740E20();
    v7 = v6;
    swift_beginAccess();
    *(a4 + 16) = v5;
    *(a4 + 24) = v7;
  }

  return sub_22F741790();
}

uint64_t static MusicBag.intValue(from:)(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v9[4] = sub_22F1EDC00;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22F1EDBD4;
  v9[3] = &block_descriptor_54;
  v5 = _Block_copy(v9);

  v6 = v2;

  [a1 valueWithCompletion_];
  _Block_release(v5);
  sub_22F741780();

  swift_beginAccess();
  v7 = *(v3 + 16);

  return v7;
}

uint64_t sub_22F1E64B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = [a1 integerValue];
    swift_beginAccess();
    *(a4 + 16) = v5;
  }

  return sub_22F741790();
}

id static MusicBag.dictionaryValue(from:)(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v9[4] = sub_22F1EDC04;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22F1EDBD4;
  v9[3] = &block_descriptor_62;
  v5 = _Block_copy(v9);

  v6 = v2;

  [a1 valueWithCompletion_];
  _Block_release(v5);
  sub_22F741780();

  swift_beginAccess();
  v7 = *(v3 + 16);

  return v7;
}

uint64_t sub_22F1E667C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    v6 = *(a4 + 16);
    *(a4 + 16) = a1;
    v7 = a1;
  }

  return sub_22F741790();
}

void sub_22F1E66E0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.userStorefront()()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicBag_amsBag);
  v2 = sub_22F740DF0();
  v3 = [v1 stringForKey_];

  v4 = dispatch_semaphore_create(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v14[4] = sub_22F1EDC08;
  v14[5] = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22F1EDBD4;
  v14[3] = &block_descriptor_70;
  v7 = _Block_copy(v14);

  v8 = v4;

  [v3 valueWithCompletion_];
  _Block_release(v7);
  sub_22F741780();

  swift_beginAccess();
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);

  v11 = v9;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.mediaApiDomain()()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicBag_amsBag);
  v2 = sub_22F740DF0();
  v3 = [v1 stringForKey_];

  v4 = dispatch_semaphore_create(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v14[4] = sub_22F1EDC08;
  v14[5] = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22F1EDBD4;
  v14[3] = &block_descriptor_78;
  v7 = _Block_copy(v14);

  v8 = v4;

  [v3 valueWithCompletion_];
  _Block_release(v7);
  sub_22F741780();

  swift_beginAccess();
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);

  v11 = v9;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_22F1E6B88(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v14, __src, sizeof(v14));
    GEOLocationCoordinate2DMake();
    v17 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
  }

  else
  {
    GEOLocationCoordinate2DMake();
    memcpy(v13, __src, sizeof(v13));
    GEOLocationCoordinate2DMake();
    v7 = *v6;
    memcpy(v14, __src, sizeof(v14));
    GEOLocationCoordinate2DMake();
    sub_22F1ED970(v8, &v12);
    v9 = a1(v7);
    if (qword_2810AB5D8 != -1)
    {
      swift_once();
    }

    v2 = a2(v10, v9);

    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
  }

  return v2;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.personalMixName(for:)(Swift::String a1)
{
  v1 = sub_22F1E6D68(a1._countAndFlagsBits, a1._object, MusicBagContents.personalMixName(for:));
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.personalMixIdentifier(for:)(Swift::String a1)
{
  v1 = sub_22F1E6D68(a1._countAndFlagsBits, a1._object, MusicBagContents.personalMixIdentifier(for:));
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_22F1E6D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v12, __src, sizeof(v12));
    GEOLocationCoordinate2DMake();
    v13 = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
  }

  else
  {
    GEOLocationCoordinate2DMake();
    memcpy(v12, __src, sizeof(v12));
    GEOLocationCoordinate2DMake();
    memcpy(v10, v8, sizeof(v10));
    v3 = a3(a1, a2);
    memcpy(v11, v10, sizeof(v11));
    sub_22F162EC8(v11);
  }

  return v3;
}

uint64_t MusicBag.yearlySummaryPlaylistNames()()
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v6, __src, sizeof(v6));
    GEOLocationCoordinate2DMake();
    v7 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    return swift_willThrowTypedImpl();
  }

  else
  {
    GEOLocationCoordinate2DMake();
    memcpy(v6, __src, sizeof(v6));
    GEOLocationCoordinate2DMake();

    v3 = sub_22F144294(v2);
    if (qword_2810AB5D8 != -1)
    {
      swift_once();
    }

    v5 = sub_22F1E8F80(v4, v3);

    sub_22F1E7F04(&unk_2843DA9A8);
    sub_22F1DF3B0(&unk_2843DA9C8);
    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
    return v5;
  }
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.yearlySummaryIdentifier(for:)(Swift::Int a1)
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v69, __src, sizeof(v69));
    GEOLocationCoordinate2DMake();
    v72 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    v3 = swift_willThrowTypedImpl();
    goto LABEL_89;
  }

  GEOLocationCoordinate2DMake();
  memcpy(v69, __src, sizeof(v69));
  GEOLocationCoordinate2DMake();

  v5 = sub_22F144294(v4);
  if (qword_2810AB5D8 != -1)
  {
    swift_once();
  }

  v7 = sub_22F1E8F80(v6, v5);

  v67 = v7;
  sub_22F1E7F04(&unk_2843DAA08);
  sub_22F1DF3B0(&unk_2843DAA28);
  sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
  v8 = v7;
  v9 = v7 + 56;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v1 = v11 & v67[7];
  v12 = (v10 + 63) >> 6;

  v64 = 0;
  v65 = 0;
  v13 = 0;
  while (v1)
  {
    v14 = v13;
LABEL_13:
    v15 = (*(v8 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v1)))));
    v16 = *v15;
    v17 = v15[1];
    v67 = *v15;
    v68 = v17;
    sub_22F160DE4();

    v18 = sub_22F7418E0();
    v20 = HIBYTE(v19) & 0xF;
    v21 = v18 & 0xFFFFFFFFFFFFLL;
    if ((v19 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v19) & 0xF;
    }

    else
    {
      v22 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
LABEL_91:

LABEL_92:

      if (qword_2810A93F0 != -1)
      {
        swift_once();
      }

      v57 = sub_22F740B90();
      __swift_project_value_buffer(v57, qword_2810B4CB0);
      v58 = sub_22F740B70();
      v59 = sub_22F7415E0();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_22F0FC000, v58, v59, "[MemoriesMusic] yearlySummaryIdentifiers contains a value that doesnt conform to replayYYYY format.", v60, 2u);
        MEMORY[0x2319033A0](v60, -1, -1);
      }

      sub_22F1ED91C();
      swift_allocError();
      *v61 = 1;
      swift_willThrow();

      goto LABEL_89;
    }

    if ((v19 & 0x1000000000000000) == 0)
    {
      if ((v19 & 0x2000000000000000) != 0)
      {
        v67 = v18;
        v68 = v19 & 0xFFFFFFFFFFFFFFLL;
        if (v18 == 43)
        {
          if (!v20)
          {
            goto LABEL_98;
          }

          v21 = v20 - 1;
          if (v20 != 1)
          {
            v25 = 0;
            v35 = &v67 + 1;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                break;
              }

              v25 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v21)
              {
                goto LABEL_74;
              }
            }
          }
        }

        else if (v18 == 45)
        {
          if (!v20)
          {
            goto LABEL_100;
          }

          v21 = v20 - 1;
          if (v20 != 1)
          {
            v25 = 0;
            v29 = &v67 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              v31 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                break;
              }

              v25 = v31 - v30;
              if (__OFSUB__(v31, v30))
              {
                break;
              }

              ++v29;
              if (!--v21)
              {
                goto LABEL_74;
              }
            }
          }
        }

        else if (v20)
        {
          v25 = 0;
          v40 = &v67;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              break;
            }

            v25 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              break;
            }

            v40 = (v40 + 1);
            if (!--v20)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if ((v18 & 0x1000000000000000) != 0)
        {
          v23 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v23 = sub_22F741B80();
          v21 = v46;
        }

        v24 = *v23;
        if (v24 == 43)
        {
          if (v21 < 1)
          {
            goto LABEL_99;
          }

          if (--v21)
          {
            v25 = 0;
            if (!v23)
            {
              goto LABEL_72;
            }

            v32 = v23 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                break;
              }

              v25 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v21)
              {
                goto LABEL_74;
              }
            }
          }
        }

        else if (v24 == 45)
        {
          if (v21 < 1)
          {
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

          if (--v21)
          {
            v25 = 0;
            if (v23)
            {
              v26 = v23 + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  goto LABEL_73;
                }

                v28 = 10 * v25;
                if ((v25 * 10) >> 64 != (10 * v25) >> 63)
                {
                  goto LABEL_73;
                }

                v25 = v28 - v27;
                if (__OFSUB__(v28, v27))
                {
                  goto LABEL_73;
                }

                ++v26;
                if (!--v21)
                {
                  goto LABEL_74;
                }
              }
            }

LABEL_72:
            LOBYTE(v21) = 0;
LABEL_74:
            v43 = v21;

            if (v43)
            {
              goto LABEL_92;
            }

            goto LABEL_75;
          }
        }

        else
        {
          if (!v21)
          {
            goto LABEL_73;
          }

          v25 = 0;
          if (!v23)
          {
            goto LABEL_72;
          }

          while (1)
          {
            v38 = *v23 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              break;
            }

            v25 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              break;
            }

            ++v23;
            if (!--v21)
            {
              goto LABEL_74;
            }
          }
        }
      }

LABEL_73:
      v25 = 0;
      LOBYTE(v21) = 1;
      goto LABEL_74;
    }

    sub_22F29C288(v18, v19, 10);
    v25 = v44;
    v63 = v45;

    if (v63)
    {
      goto LABEL_92;
    }

LABEL_75:
    v1 &= v1 - 1;

    if (v25 == a1)
    {
      v64 = v16;
      v65 = v17;
    }

    v13 = v14;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (v14 >= v12)
    {
      break;
    }

    v1 = *(v9 + 8 * v14);
    ++v13;
    if (v1)
    {
      goto LABEL_13;
    }
  }

  v1 = v65;
  if (v65)
  {

    goto LABEL_88;
  }

  if (qword_2810A93F0 != -1)
  {
LABEL_101:
    swift_once();
  }

  v47 = sub_22F740B90();
  __swift_project_value_buffer(v47, qword_2810B4CB0);

  v48 = sub_22F740B70();
  v49 = sub_22F7415D0();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v67 = v51;
    *v50 = 134218242;
    *(v50 + 4) = a1;
    *(v50 + 12) = 2080;
    v52 = sub_22F741430();
    v54 = v53;

    v55 = sub_22F145F20(v52, v54, &v67);

    *(v50 + 14) = v55;
    _os_log_impl(&dword_22F0FC000, v48, v49, "[MemoriesMusic] yearlySummaryIdentifiers doesn't contain a key for %ld. yearlySummaryPlaylistNames = %s", v50, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x2319033A0](v51, -1, -1);
    MEMORY[0x2319033A0](v50, -1, -1);
  }

  else
  {
  }

LABEL_88:
  v3 = v64;
LABEL_89:
  v56 = v1;
  result.value._object = v56;
  result.value._countAndFlagsBits = v3;
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.jobConfiguration()(PhotosGraph::JobConfiguration *__return_ptr retstr)
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v11, __src, sizeof(v11));
    GEOLocationCoordinate2DMake();
    v14 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
  }

  else
  {
    GEOLocationCoordinate2DMake();
    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v11, __src, sizeof(v11));
    GEOLocationCoordinate2DMake();
    v4 = *(v3 + 216);
    *&retstr->musicForTimeBackfill.value.maximumFailureCadenceSeconds = *(v3 + 200);
    *(&retstr->musicForTimeFrontfill.value.minimumSuccessCadenceSeconds + 7) = v4;
    *(&retstr->musicForTimeFrontfill.value.failureBackoffMultiplier + 7) = *(v3 + 232);
    LOBYTE(retstr[1].musicForYou.minimumSuccessCadenceSeconds) = *(v3 + 248);
    v5 = *(v3 + 152);
    *&retstr->musicForPerformer.maximumFailureCadenceSeconds = *(v3 + 136);
    *&retstr->musicForTime.minimumFailureCadenceSeconds = v5;
    v6 = *(v3 + 184);
    *&retstr->musicForTime.maximumFailureCadenceSeconds = *(v3 + 168);
    *&retstr->musicForTimeBackfill.value.minimumFailureCadenceSeconds = v6;
    v7 = *(v3 + 88);
    *&retstr->musicForTopic.is_nil = *(v3 + 72);
    *&retstr->musicForMoment.minimumFailureCadenceSeconds = v7;
    v8 = *(v3 + 120);
    *&retstr->musicForMoment.maximumFailureCadenceSeconds = *(v3 + 104);
    *&retstr->musicForPerformer.minimumFailureCadenceSeconds = v8;
    v9 = *(v3 + 24);
    *&retstr->musicForYou.minimumSuccessCadenceSeconds = *(v3 + 8);
    *&retstr->musicForYou.failureBackoffMultiplier = v9;
    v10 = *(v3 + 56);
    *&retstr->musicForTopic.value.minimumSuccessCadenceSeconds = *(v3 + 40);
    *&retstr->musicForTopic.value.failureBackoffMultiplier = v10;
  }
}

PhotosGraph::CacheRefreshConfiguration __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.cacheRefreshConfiguration()()
{
  v1 = v0;
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v7, __src, sizeof(v7));
    GEOLocationCoordinate2DMake();
    v10 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    v3 = swift_willThrowTypedImpl();
  }

  else
  {
    GEOLocationCoordinate2DMake();
    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v7, __src, sizeof(v7));
    GEOLocationCoordinate2DMake();
    v4 = *(v3 + 256);
    v5 = *(v3 + 264);
    *v1 = v4;
    *(v1 + 8) = v5;
  }

  result.minimumRefreshCadenceSeconds = v4;
  result.batchSize = v3;
  return result;
}

Swift::Int __swiftcall MusicBag.songEquivalentQueryBatchSize()()
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v7, __src, sizeof(v7));
    GEOLocationCoordinate2DMake();
    v8 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    if (qword_2810A93F0 != -1)
    {
      swift_once();
    }

    v1 = sub_22F740B90();
    __swift_project_value_buffer(v1, qword_2810B4CB0);
    v2 = sub_22F740B70();
    v3 = sub_22F7415D0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22F0FC000, v2, v3, "[MemoriesMusic] Bag is missing songEquivalentQueryBatchSize.", v4, 2u);
      MEMORY[0x2319033A0](v4, -1, -1);
    }

    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);

    return 300;
  }

  else
  {
    GEOLocationCoordinate2DMake();
    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v7, __src, sizeof(v7));
    GEOLocationCoordinate2DMake();
    return *(v6 + 280);
  }
}

Swift::Int __swiftcall MusicBag.songQueryBatchSize()()
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v7, __src, sizeof(v7));
    GEOLocationCoordinate2DMake();
    v8 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    if (qword_2810A93F0 != -1)
    {
      swift_once();
    }

    v1 = sub_22F740B90();
    __swift_project_value_buffer(v1, qword_2810B4CB0);
    v2 = sub_22F740B70();
    v3 = sub_22F7415D0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22F0FC000, v2, v3, "[MemoriesMusic] Bag is missing songQueryBatchSize.", v4, 2u);
      MEMORY[0x2319033A0](v4, -1, -1);
    }

    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);

    return 300;
  }

  else
  {
    GEOLocationCoordinate2DMake();
    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v7, __src, sizeof(v7));
    GEOLocationCoordinate2DMake();
    return *(v6 + 272);
  }
}

id MusicBag.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicBag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F1E7F04(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = (a1 + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_22F164408(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t sub_22F1E7F80(uint64_t a1, uint64_t a2)
{
  v106 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v78 - v8;
  v95 = type metadata accessor for Song(0);
  MEMORY[0x28223BE20](v95);
  MEMORY[0x28223BE20](v10);
  v12 = (&v78 - v11);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v82 = &v78 - v18;
  if (*(a2 + 16))
  {
    v83 = v17;
    v98 = v15;
    v89 = v6;
    v79 = 0;
    v20 = a1 + 56;
    v19 = *(a1 + 56);
    v21 = -1 << *(a1 + 32);
    v96 = ~v21;
    if (-v21 < 64)
    {
      v22 = ~(-1 << -v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v19;
    v24 = (63 - v21) >> 6;
    v94 = (v16 + 56);
    v81 = v16;
    v93 = (v16 + 48);
    v99 = (a2 + 56);

    v26 = 0;
    v92 = v24;
    for (i = v9; ; v9 = i)
    {
      v27 = v23;
      v28 = v26;
      v100 = v23;
      if (!v23)
      {
        if (v24 <= (v26 + 1))
        {
          v29 = v26 + 1;
        }

        else
        {
          v29 = v24;
        }

        v30 = v29 - 1;
        v31 = v26;
        while (1)
        {
          v28 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v28 >= v24)
          {
            v32 = 0;
            v33 = 1;
            goto LABEL_16;
          }

          v27 = *(v20 + 8 * v28);
          ++v31;
          if (v27)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_68;
      }

LABEL_15:
      v32 = (v27 - 1) & v27;
      sub_22F1A39E0(*(a1 + 48) + *(v81 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v9, type metadata accessor for Song);
      v33 = 0;
      v30 = v28;
LABEL_16:
      v34 = v95;
      v91 = *v94;
      v91(v9, v33, 1, v95);
      v101 = a1;
      v102 = a1 + 56;
      v103 = v96;
      v104 = v30;
      v105 = v32;
      v90 = *v93;
      if (v90(v9, 1, v34) == 1)
      {
        goto LABEL_66;
      }

      v97 = v32;
      v35 = v82;
      sub_22F1BA7A4(v9, v82, type metadata accessor for Song);
      sub_22F742170();
      v36 = *(v35 + 8);
      v85 = *v35;
      v84 = v36;
      sub_22F740D60();
      v37 = sub_22F7421D0();
      v38 = -1 << *(a2 + 32);
      v26 = v37 & ~v38;
      v28 = v26 >> 6;
      v23 = 1 << v26;
      if (((1 << v26) & v99[v26 >> 6]) != 0)
      {
        break;
      }

LABEL_6:
      sub_22F1A3AB0(v82, type metadata accessor for Song);
      v26 = v30;
      v23 = v97;
      v24 = v92;
    }

    v39 = ~v38;
    v100 = *(v81 + 72);
    while (1)
    {
      v9 = v83;
      sub_22F1A39E0(*(a2 + 48) + v100 * v26, v83, type metadata accessor for Song);
      v40 = *v9 == v85 && *(v9 + 8) == v84;
      if (v40)
      {
        break;
      }

      v41 = sub_22F742040();
      v42 = v9;
      v9 = v41;
      sub_22F1A3AB0(v42, type metadata accessor for Song);
      if (v9)
      {
        goto LABEL_29;
      }

      v26 = (v26 + 1) & v39;
      v28 = v26 >> 6;
      v23 = 1 << v26;
      if (((1 << v26) & v99[v26 >> 6]) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_22F1A3AB0(v9, type metadata accessor for Song);
LABEL_29:
    v43 = sub_22F1A3AB0(v82, type metadata accessor for Song);
    v44 = *(a2 + 32);
    v82 = ((1 << v44) + 63) >> 6;
    v25 = 8 * v82;
    if ((v44 & 0x3Fu) <= 0xD)
    {
      goto LABEL_30;
    }

LABEL_68:
    v9 = v25;

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_30:
      v83 = &v78;
      MEMORY[0x28223BE20](v43);
      v46 = &v78 - ((v45 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v46, v99, v45);
      v47 = *&v46[8 * v28] & ~v23;
      v48 = *(a2 + 16);
      v85 = v46;
      *&v46[8 * v28] = v47;
      v49 = v48 - 1;
      v50 = v89;
      v51 = v92;
      v52 = v97;
      v88 = a1;
      v87 = a1 + 56;
      v86 = v12;
LABEL_31:
      v84 = v49;
      while (v52)
      {
        v53 = v30;
LABEL_43:
        v56 = __clz(__rbit64(v52));
        v57 = (v52 - 1) & v52;
        sub_22F1A39E0(*(a1 + 48) + (v56 | (v53 << 6)) * v100, v50, type metadata accessor for Song);
        v58 = 0;
LABEL_44:
        v59 = v95;
        v91(v50, v58, 1, v95);
        v101 = a1;
        v102 = v20;
        v103 = v96;
        v104 = v30;
        v105 = v57;
        if (v90(v50, 1, v59) == 1)
        {
          sub_22F120ADC(v50, &qword_27DAB1250, &qword_22F781A10);
          a2 = sub_22F1B9048(v85, v82, v84, a2);
          goto LABEL_62;
        }

        v97 = v57;
        sub_22F1BA7A4(v50, v12, type metadata accessor for Song);
        sub_22F742170();
        v9 = *v12;
        v60 = v12[1];
        sub_22F740D60();
        v61 = sub_22F7421D0();
        v62 = a2;
        v63 = -1 << *(a2 + 32);
        v64 = v61 & ~v63;
        v65 = v64 >> 6;
        v66 = 1 << v64;
        if (((1 << v64) & v99[v64 >> 6]) != 0)
        {
          v67 = ~v63;
          while (1)
          {
            v68 = v98;
            sub_22F1A39E0(*(v62 + 48) + v64 * v100, v98, type metadata accessor for Song);
            if (*v68 == v9 && v68[1] == v60)
            {
              break;
            }

            v70 = sub_22F742040();
            sub_22F1A3AB0(v68, type metadata accessor for Song);
            if (v70)
            {
              goto LABEL_55;
            }

            v64 = (v64 + 1) & v67;
            v65 = v64 >> 6;
            v66 = 1 << v64;
            if (((1 << v64) & v99[v64 >> 6]) == 0)
            {
              goto LABEL_32;
            }
          }

          sub_22F1A3AB0(v68, type metadata accessor for Song);
LABEL_55:
          v12 = v86;
          sub_22F1A3AB0(v86, type metadata accessor for Song);
          v71 = v85[v65];
          v85[v65] = v71 & ~v66;
          v40 = (v71 & v66) == 0;
          a2 = v62;
          a1 = v88;
          v20 = v87;
          v50 = v89;
          v51 = v92;
          v52 = v97;
          if (!v40)
          {
            v49 = v84 - 1;
            if (__OFSUB__(v84, 1))
            {
              __break(1u);
            }

            if (v84 == 1)
            {

              a2 = MEMORY[0x277D84FA0];
              goto LABEL_62;
            }

            goto LABEL_31;
          }
        }

        else
        {
LABEL_32:
          v12 = v86;
          sub_22F1A3AB0(v86, type metadata accessor for Song);
          a2 = v62;
          a1 = v88;
          v20 = v87;
          v50 = v89;
          v51 = v92;
          v52 = v97;
        }
      }

      if (v51 <= (v30 + 1))
      {
        v54 = v30 + 1;
      }

      else
      {
        v54 = v51;
      }

      v55 = v54 - 1;
      while (1)
      {
        v53 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v53 >= v51)
        {
          v57 = 0;
          v58 = 1;
          v30 = v55;
          goto LABEL_44;
        }

        v52 = *(v20 + 8 * v53);
        ++v30;
        if (v52)
        {
          v30 = v53;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_66:
      sub_22F120ADC(v9, &qword_27DAB1250, &qword_22F781A10);
      v72 = a1;
LABEL_63:
      sub_22F0FF590(v72);
      return a2;
    }

    v74 = swift_slowAlloc();
    memcpy(v74, v99, v9);
    v75 = v79;
    sub_22F1EBC34(v74, v82, a2, v26, &v101);
    v77 = v76;

    if (!v75)
    {

      MEMORY[0x2319033A0](v74, -1, -1);
      a1 = v101;
      v96 = v103;
      a2 = v77;
LABEL_62:
      v72 = a1;
      goto LABEL_63;
    }

    result = MEMORY[0x2319033A0](v74, -1, -1);
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22F1E8A10(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v54 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_22F742170();

    sub_22F740D60();
    v23 = sub_22F7421D0();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v29 = *(v5 + 32);
  v55 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v55;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28);
    v2 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v57 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_22F1B8E24(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v61 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_22F742170();

            sub_22F740D60();
            v41 = sub_22F7421D0();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_22F742040() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v34 = v59[v2];
          v59[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v62, v49);
  v51 = v54;
  sub_22F1EC4C4(v50, v55, v5, v2, v63);
  v53 = v52;

  if (!v51)
  {

    MEMORY[0x2319033A0](v50, -1, -1);
    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_22F0FF590(v13);
    return v5;
  }

  result = MEMORY[0x2319033A0](v50, -1, -1);
  __break(1u);
  return result;
}
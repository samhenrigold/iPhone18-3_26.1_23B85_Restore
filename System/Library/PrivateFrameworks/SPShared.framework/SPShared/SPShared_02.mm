uint64_t sub_2644E310C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = type metadata accessor for Sequencer.WorkItem(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27FF6F5F8 != -1)
  {
    swift_once();
  }

  v12 = sub_2644EAE0C();
  __swift_project_value_buffer(v12, qword_27FF6FA10);
  sub_2644E2108(a3, v11);

  v13 = sub_2644EADEC();
  v14 = sub_2644EB4BC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25[0] = v16;
    *v15 = 136446722;
    *(v15 + 4) = sub_2644B73B8(a1, a2, v25);
    *(v15 + 12) = 2082;
    sub_2644EADAC();
    sub_2644B2E3C(&qword_2814ABF38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_2644EB94C();
    v19 = v18;
    sub_2644E2264(v11);
    v20 = sub_2644B73B8(v17, v19, v25);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2048;
    *(v15 + 24) = a5;
    _os_log_impl(&dword_2644B1000, v13, v14, "%{public}s: queue item %{public}s took longer than %f seconds.", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26673AD40](v16, -1, -1);
    MEMORY[0x26673AD40](v15, -1, -1);
  }

  else
  {

    sub_2644E2264(v11);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2644E4714(result + 56, v25);

    v22 = v26;
    if (v26)
    {
      v23 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v23 + 8))(a3, v22, v23);
      return __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
      return sub_2644E1BA8(v25);
    }
  }

  return result;
}

void sub_2644E3404(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for Sequencer.WorkItem(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_2644E16DC())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_2644E4714(Strong + 56, v23);

      v11 = v24;
      if (v24)
      {
        v12 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (*(v12 + 16))(a2, v11, v12);
        __swift_destroy_boxed_opaque_existential_0(v23);
      }

      else
      {
        sub_2644E1BA8(v23);
      }
    }
  }

  else
  {
    if (qword_27FF6F5F8 != -1)
    {
      swift_once();
    }

    v13 = sub_2644EAE0C();
    __swift_project_value_buffer(v13, qword_27FF6FA10);
    sub_2644E2108(a2, v9);

    v14 = sub_2644EADEC();
    v15 = sub_2644EB4AC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_2644B73B8(a3, a4, v23);
      *(v16 + 12) = 2082;
      sub_2644EADAC();
      sub_2644B2E3C(&qword_2814ABF38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_2644EB94C();
      v20 = v19;
      sub_2644E2264(v9);
      v21 = sub_2644B73B8(v18, v20, v23);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_2644B1000, v14, v15, "%{public}s: queue item %{public}s did not call completion block in time!", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26673AD40](v17, -1, -1);
      MEMORY[0x26673AD40](v16, -1, -1);
    }

    else
    {

      sub_2644E2264(v9);
    }
  }
}

uint64_t sub_2644E36F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a6;
  v54 = a7;
  v51 = a4;
  v52 = a5;
  v56 = a3;
  v50 = a2;
  v10 = sub_2644EB06C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2644EB0AC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v55 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Sequencer.WorkItem(0);
  v49 = *(v17 - 8);
  v18 = v49[8];
  MEMORY[0x28223BE20](v17 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v44 = v15;
    v45 = v13;
    v42 = a9;
    v41 = mach_continuous_time();
    sub_2644E4714(v20 + 56, aBlock);
    v21 = v59;
    v47 = v11;
    v48 = v10;
    v46 = v14;
    v43 = a8;
    if (v59)
    {
      v22 = v60;
      __swift_project_boxed_opaque_existential_1(aBlock, v59);
      v23 = v50;
      (*(v22 + 4))(v50, v21, v22);
      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    else
    {
      sub_2644E1BA8(aBlock);
      v23 = v50;
    }

    v50 = *(v20 + 16);
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2644E2108(v23, v25);
    v26 = (*(v49 + 80) + 48) & ~*(v49 + 80);
    v27 = (v18 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    v32 = v56;
    v31[2] = v24;
    v31[3] = v32;
    v33 = v51;
    v51 = v20;
    v34 = v52;
    v31[4] = v33;
    v31[5] = v34;
    sub_2644E216C(v25, v31 + v26);
    v35 = v54;
    *(v31 + v27) = v53;
    *(v31 + v28) = v35;
    *(v31 + v29) = v41;
    *(v31 + v30) = v43;
    *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
    v60 = sub_2644E4854;
    v61 = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2644BD140;
    v59 = &block_descriptor_34;
    v49 = _Block_copy(aBlock);

    v36 = v55;
    sub_2644EB08C();
    v57 = MEMORY[0x277D84F90];
    sub_2644B2E3C(&qword_2814AC1D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
    sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
    v37 = v45;
    v38 = v48;
    sub_2644EB6CC();
    v39 = v49;
    MEMORY[0x266739FD0](0, v36, v37, v49);
    _Block_release(v39);
    (*(v47 + 8))(v37, v38);
    (*(v44 + 8))(v36, v46);
  }

  return result;
}

uint64_t sub_2644E3C0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  v47 = a3;
  v13 = type metadata accessor for Sequencer.WorkItem(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v46 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    swift_beginAccess();
    if (*(a2 + 16))
    {
      if (qword_27FF6F5F8 != -1)
      {
        swift_once();
      }

      v24 = sub_2644EAE0C();
      __swift_project_value_buffer(v24, qword_27FF6FA10);
      sub_2644E2108(a5, v16);

      v19 = sub_2644EADEC();
      v25 = sub_2644EB4AC();

      if (os_log_type_enabled(v19, v25))
      {
        v21 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v49 = v26;
        *v21 = 136446466;
        *(v21 + 4) = sub_2644B73B8(v47, a4, &v49);
        *(v21 + 6) = 2082;
        sub_2644EADAC();
        sub_2644B2E3C(&qword_2814ABF38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v27 = sub_2644EB94C();
        v29 = v28;
        sub_2644E2264(v16);
        v30 = sub_2644B73B8(v27, v29, &v49);

        *(v21 + 14) = v30;
        _os_log_impl(&dword_2644B1000, v19, v25, "%{public}s: Completion block called twice: %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26673AD40](v26, -1, -1);
        MEMORY[0x26673AD40](v21, -1, -1);
      }

      else
      {

        sub_2644E2264(v16);
      }

      v41 = [objc_opt_self() sharedInstance];
      v42 = [v41 isInternalBuild];

      if (!v42)
      {
      }

      v49 = 0;
      v50 = 0xE000000000000000;
      sub_2644EB79C();
      v32 = *(v23 + 24);
      v43 = *(v23 + 32);

      v49 = v32;
      v50 = v43;
      MEMORY[0x266739CC0](0xD000000000000021, 0x80000002644EEED0);
      sub_2644EADAC();
      sub_2644B2E3C(&qword_2814ABF38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v44 = sub_2644EB94C();
      MEMORY[0x266739CC0](v44);

      sub_2644EB86C();
      __break(1u);
      goto LABEL_14;
    }

    v46 = v23;
    swift_beginAccess();
    *(a2 + 16) = 1;
    sub_2644EB0EC();
    sub_2644EB0EC();
    if (a8 < a9)
    {
      __break(1u);
    }

    else
    {
      a8 = sub_2644EABAC();
      if (qword_27FF6F5F8 == -1)
      {
        goto LABEL_9;
      }
    }

    swift_once();
LABEL_9:
    v31 = sub_2644EAE0C();
    __swift_project_value_buffer(v31, qword_27FF6FA10);
    sub_2644E2108(a5, v21);

    sub_2644BF454();
    sub_2644BF454();
    v32 = sub_2644EADEC();
    v33 = sub_2644EB47C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = a8 / 1000000.0;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48[0] = v36;
      *v35 = 136446978;
      *(v35 + 4) = sub_2644B73B8(v47, a4, v48);
      *(v35 + 12) = 2082;
      sub_2644EADAC();
      sub_2644B2E3C(&qword_2814ABF38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v37 = sub_2644EB94C();
      v39 = v38;
      sub_2644E2264(v21);
      v40 = sub_2644B73B8(v37, v39, v48);

      *(v35 + 14) = v40;
      *(v35 + 22) = 1040;
      *(v35 + 24) = 3;
      *(v35 + 28) = 2048;
      *(v35 + 30) = v34;
      _os_log_impl(&dword_2644B1000, v32, v33, "%{public}s: Completion %{public}s [%.*fms]", v35, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x26673AD40](v36, -1, -1);
      MEMORY[0x26673AD40](v35, -1, -1);

      goto LABEL_15;
    }

LABEL_14:

    sub_2644E2264(v21);
LABEL_15:
    v45 = v46;
    swift_beginAccess();
    sub_2644E42C0(0, v19);
    swift_endAccess();
    sub_2644E2264(v19);
    if (*(*(v45 + 96) + 16))
    {
      sub_2644E2544();
    }
  }

  return result;
}

uint64_t sub_2644E42C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2644E4918(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for Sequencer.WorkItem(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2644E216C(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t Sequencer.deinit()
{

  sub_2644E1BA8(v0 + 56);

  return v0;
}

uint64_t Sequencer.__deallocating_deinit()
{

  sub_2644E1BA8(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

unint64_t sub_2644E44CC(uint64_t a1)
{
  result = sub_2644EADAC();
  if (v2 <= 0x3F)
  {
    result = sub_2644C7BA0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2644E4550()
{
  v0 = sub_2644EAE0C();
  __swift_allocate_value_buffer(v0, qword_27FF71630);
  __swift_project_value_buffer(v0, qword_27FF71630);
  return sub_2644EADFC();
}

uint64_t sub_2644E45CC()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2644E310C(v4, v5, v0 + v2, v7, v6);
}

void sub_2644E4674()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_2644E3404(v3, v0 + v2, v5, v6);
}

uint64_t sub_2644E4714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA28, &qword_2644EDE98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2644E4784()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_2644E36F0(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2644E4854()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2644E3C0C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2644E4944()
{
  v0 = sub_2644EAE0C();
  __swift_allocate_value_buffer(v0, qword_2814ACCE8);
  __swift_project_value_buffer(v0, qword_2814ACCE8);
  return sub_2644EADFC();
}

uint64_t sub_2644E4A44(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  swift_allocObject();
  result = sub_2644EBB1C();
  *a4 = result;
  return result;
}

uint64_t sub_2644E4ABC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_2644E4B40(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_2644EBB2C();
  return v4;
}

uint64_t sub_2644E4B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA48, &qword_2644EDF20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2644E6A60(a3, v25 - v10);
  v12 = sub_2644EB3DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2644B7828(v11);
  }

  else
  {
    sub_2644EB3CC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2644EB39C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2644EB24C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

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

      sub_2644B7828(a3);

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

  sub_2644B7828(a3);
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

uint64_t sub_2644E4EBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    type metadata accessor for Transaction.CleanupHelper();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_2644E69B4;
    *(v5 + 24) = a1;
    swift_weakAssign();

    result = v5;
  }

  *a2 = result;
  return result;
}

uint64_t sub_2644E4F5C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();

  v5 = sub_2644E5BC4(a3 + 1, a2);
  result = swift_endAccess();
  *a3 = v5 & 1;
  return result;
}

uint64_t static Transaction.named<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 88) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2644E5048, 0, 0);
}

uint64_t sub_2644E5048()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 88);
  swift_allocObject();
  v5 = sub_2644B6B7C(v3, v2, v4);
  *(v0 + 64) = v5;
  v9 = (v1 + *v1);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_2644E5184;
  v7 = *(v0 + 16);

  return v9(v7, v5);
}

uint64_t sub_2644E5184()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2644E52FC;
  }

  else
  {
    v2 = sub_2644E5298;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2644E5298()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2644E52FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Transaction.named<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2644E5390, 0, 0);
}

uint64_t sub_2644E5390()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_2644E5468;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = *(v0 + 96);

  return static Transaction.named<A>(_:with:)(v7, v5, v6, v8, &unk_2644EDF50, v2);
}

uint64_t sub_2644E5468()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2644E55A4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2644E55A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2644E5608(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2644B8384;

  return v7(a1);
}

uint64_t sub_2644E5700(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2644B8384;

  return sub_2644E5608(a1, a2, v6);
}

void *Transaction.deinit()
{
  _s8SPShared11TransactionC3endyyF_0();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_weakDestroy();
  return v0;
}

uint64_t sub_2644E5814()
{
  v1 = *(v0 + 16);

  v1(v2);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2644E587C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Transaction.CleanupHelper();
  v4 = sub_2644EB92C();
  MEMORY[0x266739CC0](v4);

  MEMORY[0x266739CC0](8250, 0xE200000000000000);
  v5 = MEMORY[0x26673A380](v3, a2);
  MEMORY[0x266739CC0](v5);

  MEMORY[0x266739CC0](62, 0xE100000000000000);
  return 60;
}

uint64_t Transaction.description.getter()
{
  MEMORY[0x266739CC0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x266739CC0](93, 0xE100000000000000);
  return 0x3A4E58545BLL;
}

uint64_t sub_2644E5994()
{
  MEMORY[0x266739CC0](*(*v0 + 16), *(*v0 + 24));
  MEMORY[0x266739CC0](93, 0xE100000000000000);
  return 0x3A4E58545BLL;
}

uint64_t AnyCancellable.store(in:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA50, &qword_2644EDF58);
  sub_2644EADDC();
}

os_activity_scope_state_s *PressuredExitTransactionManager.begin(_:)(char *a1, uint64_t a2, int a3)
{
  type metadata accessor for Transaction();
  swift_allocObject();
  return sub_2644B6B7C(a1, a2, a3);
}

uint64_t sub_2644E5AF0()
{
  qword_2814AC0F0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t os_activity(name:block:)(char *a1, int a2, char a3, void (*a4)(void))
{
  v8 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = sub_2644B716C(a1, a3, &dword_2644B1000);
  os_activity_scope_enter(v5, &state);
  a4();
  os_activity_scope_leave(&state);
  return swift_unknownObjectRelease();
}

uint64_t sub_2644E5BC4(uint64_t *a1, uint64_t a2)
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

    v8 = sub_2644EB71C();

    if (v8)
    {

      sub_2644EAEDC();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_2644EB70C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_2644E5E3C(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_2644E605C(v17 + 1);
    }

    sub_2644E62DC(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_2644EAEDC();
  sub_2644E6970(&qword_2814ABF30, MEMORY[0x277CBCDB0]);
  v10 = sub_2644EB1CC();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_2644E63B0(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_2644E6970(&qword_27FF6FA58, MEMORY[0x277CBCDB8]);
  while ((sub_2644EB20C() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_2644E5E3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FA60, &qword_2644EE068);
    v2 = sub_2644EB75C();
    v15 = v2;
    sub_2644EB6FC();
    if (sub_2644EB72C())
    {
      sub_2644EAEDC();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2644E605C(v9 + 1);
        }

        v2 = v15;
        sub_2644E6970(&qword_2814ABF30, MEMORY[0x277CBCDB0]);
        result = sub_2644EB1CC();
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

      while (sub_2644EB72C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2644E605C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FA60, &qword_2644EE068);
  result = sub_2644EB74C();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_2644EAEDC();
      sub_2644E6970(&qword_2814ABF30, MEMORY[0x277CBCDB0]);
      result = sub_2644EB1CC();
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
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
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
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t sub_2644E62DC(uint64_t a1, uint64_t a2)
{
  sub_2644EAEDC();
  sub_2644E6970(&qword_2814ABF30, MEMORY[0x277CBCDB0]);
  sub_2644EB1CC();
  result = sub_2644EB6EC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2644E63B0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2644E605C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_2644E6570();
      goto LABEL_12;
    }

    sub_2644E66C0(v6 + 1);
  }

  v8 = *v3;
  sub_2644EAEDC();
  sub_2644E6970(&qword_2814ABF30, MEMORY[0x277CBCDB0]);
  result = sub_2644EB1CC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_2644E6970(&qword_27FF6FA58, MEMORY[0x277CBCDB8]);
    do
    {
      result = sub_2644EB20C();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2644EBA0C();
  __break(1u);
  return result;
}

void *sub_2644E6570()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FA60, &qword_2644EE068);
  v2 = *v0;
  v3 = sub_2644EB73C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2644E66C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FA60, &qword_2644EE068);
  result = sub_2644EB74C();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_2644EAEDC();
      sub_2644E6970(&qword_2814ABF30, MEMORY[0x277CBCDB0]);

      result = sub_2644EB1CC();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2644E6970(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2644EAEDC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2644E6A0C()
{
  swift_beginAccess();
  *(v0 + 72) = MEMORY[0x277D84FA0];
}

uint64_t sub_2644E6A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA48, &qword_2644EDF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UnsignedInteger.reversed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[0] = *(a1 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v31 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v31 - v10;
  v13 = *(*(*(v12 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = v31 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = AssociatedTypeWitness;
  v33 = AssociatedConformanceWitness;
  sub_2644EB9EC();
  v31[1] = a2;
  v34 = v16;
  v36 = v13;
  sub_2644EB99C();
  result = sub_2644EB68C();
  if (result < 0)
  {
    goto LABEL_22;
  }

  v19 = result;
  if (result)
  {
    v37 = sub_2644BF2BC();
    v20 = 0;
    v21 = (v31[0] + 8);
    v32 = v19;
    while (1)
    {
      v38 = v20;
      sub_2644EB64C();
      sub_2644EB9EC();
      sub_2644EB99C();
      sub_2644EB63C();
      v22 = *v21;
      (*v21)(v6, a1);
      v22(v9, a1);
      if (sub_2644EB69C())
      {
        break;
      }

      v23 = sub_2644EB69C();
      v24 = sub_2644EB68C();
      if ((v23 & 1) == 0)
      {
        if (v24 >= 64)
        {
LABEL_15:
          v38 = 0;
          sub_2644EB62C();
          v27 = sub_2644EB20C();
          v22(v9, a1);
          result = (v22)(v11, a1);
          if (v27)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }

        goto LABEL_13;
      }

      if (v24 > 64)
      {
        goto LABEL_15;
      }

      sub_2644EB9EC();
      sub_2644EB99C();
      v25 = sub_2644EB1FC();
      v22(v9, a1);
      if (v25)
      {
        goto LABEL_13;
      }

      v22(v11, a1);
LABEL_16:
      sub_2644EB9EC();
      sub_2644EB99C();
      result = sub_2644EB68C();
      v28 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v29 = __OFSUB__(v28, v20);
      v30 = v28 - v20;
      if (v29)
      {
        goto LABEL_21;
      }

      v38 = v30;
      sub_2644EB65C();
      v22(v6, a1);
      sub_2644EB66C();
      result = (v22)(v9, a1);
LABEL_4:
      if (v32 == ++v20)
      {
        return result;
      }
    }

    if (sub_2644EB68C() >= 64)
    {
      goto LABEL_15;
    }

LABEL_13:
    v26 = sub_2644EB67C();
    result = (v22)(v11, a1);
    if (!v26)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  return result;
}

int8x8_t static UInt64.interleave(x:y:)(unsigned int a1, unsigned int a2)
{
  v2 = vdupq_n_s64(a2);
  v3 = vdupq_n_s64(a1);
  v4 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE350), xmmword_2644EE390), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE2F0), xmmword_2644EE330), vshlq_u64(vandq_s8(v3, xmmword_2644EE290), xmmword_2644EE2B0)), vshlq_u64(vandq_s8(v3, xmmword_2644EE2F0), xmmword_2644EE310))), vshlq_u64(vandq_s8(v3, xmmword_2644EE350), xmmword_2644EE370)), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE290), xmmword_2644EE2D0), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE230), xmmword_2644EE270), vshlq_u64(vandq_s8(v3, xmmword_2644EE1D0), xmmword_2644EE1F0)), vshlq_u64(vandq_s8(v3, xmmword_2644EE230), xmmword_2644EE250))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE1D0), xmmword_2644EE210), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE170), xmmword_2644EE1B0), vshlq_u64(vandq_s8(v3, xmmword_2644EE170), xmmword_2644EE190))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE110), xmmword_2644EE150), vshlq_u64(vandq_s8(v3, xmmword_2644EE110), xmmword_2644EE130)), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE0C0), xmmword_2644EE0F0), vshlq_u64(vandq_s8(v3, xmmword_2644EE0C0), xmmword_2644EE0E0)))))), vorrq_s8(vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE340), xmmword_2644EE380), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE2E0), xmmword_2644EE320), vshlq_u64(vandq_s8(v3, xmmword_2644EE280), xmmword_2644EE2A0)), vshlq_u64(vandq_s8(v3, xmmword_2644EE2E0), xmmword_2644EE300))), vshlq_u64(vandq_s8(v3, xmmword_2644EE340), xmmword_2644EE360)), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE280), xmmword_2644EE2C0), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE220), xmmword_2644EE260), vshlq_u64(vandq_s8(v3, xmmword_2644EE1C0), xmmword_2644EE1E0)), vshlq_u64(vandq_s8(v3, xmmword_2644EE220), xmmword_2644EE240))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE1C0), xmmword_2644EE200), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE160), xmmword_2644EE1A0), vshlq_u64(vandq_s8(v3, xmmword_2644EE160), xmmword_2644EE180))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644EE100), xmmword_2644EE140), vshlq_u64(vandq_s8(v3, xmmword_2644EE100), xmmword_2644EE120)), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_2644ED0A0), xmmword_2644ED0A0), vshlq_u64(vandq_s8(v3, xmmword_2644ED0A0), xmmword_2644EE0D0)))))));
  return vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
}

unint64_t UInt64.deinterleave.getter(unint64_t result)
{
  LODWORD(v1) = 0;
  LODWORD(v2) = 0;
  v3 = -2;
  for (i = 1; ; ++i)
  {
    v5 = ((1 << (v3 + 2)) & result) >> (i - 1);
    if (HIDWORD(v5))
    {
      break;
    }

    v6 = ((2 << (v3 + 2)) & result) >> i;
    if (HIDWORD(v6))
    {
      goto LABEL_7;
    }

    v2 = v2 | v5;
    v1 = v1 | v6;
    v3 += 2;
    if (v3 >= 0x3E)
    {
      return v2 | (v1 << 32);
    }
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t LocalizationUtility.Table.hashValue.getter()
{
  v1 = *v0;
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](v1);
  return sub_2644EBAAC();
}

uint64_t static LocalizationUtility.localizedString(key:table:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  type metadata accessor for BundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_2644EAC5C();

  return v5;
}

unint64_t sub_2644E753C()
{
  result = qword_27FF6FA80;
  if (!qword_27FF6FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6FA80);
  }

  return result;
}

void static DispatchUtilities.logCurrentDispatchQueueQoS()()
{
  HIDWORD(v1) = qos_class_self() - 9;
  LODWORD(v1) = HIDWORD(v1);
  v0 = v1 >> 2;
  v2 = sub_2644EB4BC();
  sub_2644C5EC4();
  v3 = sub_2644EB5EC();
  v12 = v3;
  if (v0 <= 2)
  {
    if (!v0)
    {
      v4 = "Current qos - QOS_CLASS_BACKGROUND";
      v5 = MEMORY[0x277D84F90];
      v6 = v2;
      v7 = 34;
      goto LABEL_13;
    }

    if (v0 != 2)
    {
      goto LABEL_17;
    }

    v4 = "Current qos - QOS_CLASS_UTILITY";
LABEL_10:
    v5 = MEMORY[0x277D84F90];
    v6 = v2;
    v7 = 31;
LABEL_13:
    sub_2644EADCC(v6, &dword_2644B1000, v3, v4, v7, 2, v5);
    goto LABEL_14;
  }

  switch(v0)
  {
    case 3:
      v4 = "Current qos - QOS_CLASS_DEFAULT";
      goto LABEL_10;
    case 4:
      sub_2644EADCC(v2, &dword_2644B1000, v3, "Current qos - QOS_CLASS_USER_INITIATED", 38, 2, MEMORY[0x277D84F90]);
      goto LABEL_14;
    case 6:
      sub_2644EADCC(v2, &dword_2644B1000, v3, "Current qos - QOS_CLASS_USER_INTERACTIVE", 40, 2, MEMORY[0x277D84F90]);
LABEL_14:

      return;
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2644ED0A0;
  v9 = qos_class_self();
  v10 = MEMORY[0x277D84D30];
  *(v8 + 56) = MEMORY[0x277D84CC0];
  *(v8 + 64) = v10;
  *(v8 + 32) = v9;
  sub_2644EADCC(v2, &dword_2644B1000, v12, "(Default)Current qos is - %i", v11);
}

uint64_t QueueSynchronizer.__allocating_init(queue:)(void *a1)
{
  v2 = swift_allocObject();
  QueueSynchronizer.init(queue:)(a1);
  return v2;
}

uint64_t QueueSynchronizer.init(queue:)(void *a1)
{
  v2 = v1;
  v4 = sub_2644EB10C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA88, "L ");
  swift_allocObject();
  *(v1 + 24) = sub_2644EB05C();
  *v7 = a1;
  (*(v5 + 104))(v7, *MEMORY[0x277D851F0], v4);
  v8 = a1;
  LOBYTE(a1) = sub_2644EB12C();
  (*(v5 + 8))(v7, v4);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2644EB50C();

  if (LOBYTE(aBlock[0]) == 1)
  {
    *(v2 + 16) = v8;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v2;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_2644E7AD0;
    *(v10 + 24) = v9;
    aBlock[4] = sub_2644B3F5C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2644B3F0C;
    aBlock[3] = &block_descriptor_7;
    v11 = _Block_copy(aBlock);
    v12 = v8;

    dispatch_sync(v12, v11);

    _Block_release(v11);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return v2;
    }

    goto LABEL_6;
  }

LABEL_7:
  result = sub_2644EB86C();
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{

  return a1(v1, 32, 7);
}

uint64_t PerformanceCapture.flag.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double sub_2644E7C20()
{
  v1 = OBJC_IVAR____TtC8SPShared18PerformanceCapture_duration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PerformanceCapture.__allocating_init(flag:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_2644EAD5C();
  *(v4 + OBJC_IVAR____TtC8SPShared18PerformanceCapture_duration) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

uint64_t PerformanceCapture.init(flag:)(uint64_t a1, uint64_t a2)
{
  sub_2644EAD5C();
  *(v2 + OBJC_IVAR____TtC8SPShared18PerformanceCapture_duration) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_2644E7D18()
{
  v1 = v0;
  v2 = sub_2644EAD6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8SPShared18PerformanceCapture_duration;
  swift_beginAccess();
  if (*(v1 + v6) == 0.0)
  {
    sub_2644EAD5C();
    sub_2644EAD4C();
    v8 = v7;
    (*(v3 + 8))(v5, v2);
    *(v1 + v6) = v8;
  }

  v9 = sub_2644EB4BC();
  if (qword_27FF6F5F0 != -1)
  {
    swift_once();
  }

  v10 = qword_27FF71628;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2644EE4F0;
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  v14 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v15 = sub_2644B4744();
  *(v11 + 64) = v15;
  *(v11 + 32) = v13;
  *(v11 + 40) = v12;

  v16 = sub_2644EB3EC();
  *(v11 + 96) = v14;
  *(v11 + 104) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = v17;
  sub_2644EADCC(v9, &dword_2644B1000, v10, "#Performance: %{public}@. Duration - %{public}@", 47, 2, v11);
}

uint64_t PerformanceCapture.deinit()
{

  v1 = OBJC_IVAR____TtC8SPShared18PerformanceCapture_start;
  v2 = sub_2644EAD6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PerformanceCapture.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8SPShared18PerformanceCapture_start;
  v2 = sub_2644EAD6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for PerformanceCapture(uint64_t a1)
{
  result = qword_27FF6FA98;
  if (!qword_27FF6FA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2644E807C(uint64_t a1)
{
  result = sub_2644EAD6C();
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

uint64_t sub_2644E8198(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FB48, &qword_2644EE5F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for XPCSessionManager.ListenerRecord(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_2644C0CF4(a1, &unk_27FF6FB48, &qword_2644EE5F0);
    sub_2644E9940(a2, v7);
    v12 = sub_2644EAB8C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2644C0CF4(v7, &unk_27FF6FB48, &qword_2644EE5F0);
  }

  else
  {
    sub_2644B462C(a1, v10, type metadata accessor for XPCSessionManager.ListenerRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2644EA2C0(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2644EAB8C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_2644E83B8()
{
  sub_2644B4694(0, qword_2814AC390, 0x277D86200);
  result = sub_2644EB5FC();
  qword_2814ACD00 = result;
  return result;
}

uint64_t XPCSessionManager.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  XPCSessionManager.init(name:)(a1, a2);
  return v4;
}

void *XPCSessionManager.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = sub_2644EB4DC();
  MEMORY[0x28223BE20](v19);
  v6 = sub_2644EB0AC();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2644EB55C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F98];
  v3[5] = 0;
  v3[6] = v11;
  v3[2] = a1;
  v3[3] = a2;
  v18 = sub_2644B4694(0, &qword_2814AC6A0, 0x277D85C78);
  aBlock = 0;
  v21 = 0xE000000000000000;
  sub_2644EB79C();

  aBlock = 0xD000000000000030;
  v21 = 0x80000002644EF330;
  v12 = v3[2];
  v13 = v3[3];

  MEMORY[0x266739CC0](v12, v13);

  (*(v8 + 104))(v10, *MEMORY[0x277D85268], v7);
  sub_2644EB08C();
  aBlock = MEMORY[0x277D84F90];
  sub_2644B2E84(&qword_2814AC6A8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B2ECC();
  sub_2644EB6CC();
  v14 = sub_2644EB59C();
  v3[4] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2644E88AC;
  *(v15 + 24) = v3;
  v24 = sub_2644B3F5C;
  v25 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2644B3F0C;
  v23 = &block_descriptor_8;
  v16 = _Block_copy(&aBlock);

  dispatch_sync(v14, v16);
  _Block_release(v16);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

void sub_2644E8834(uint64_t a1)
{
  v2 = type metadata accessor for _XPCListenerDelegateTrampoline();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC8SPSharedP33_4DFE191C45A702EAD1213F8D530A798030_XPCListenerDelegateTrampoline_sessionManager] = a1;
  swift_unownedRetain();
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
}

uint64_t XPCSessionManager.register(service:)(uint64_t a1)
{
  v3 = type metadata accessor for XPCServiceDescription(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 32);
  sub_2644B45C4(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for XPCServiceDescription);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_2644B462C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for XPCServiceDescription);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2644E8EE4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_2644B42CC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644B3F0C;
  aBlock[3] = &block_descriptor_10;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2644E8AC0(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FB48, &qword_2644EE5F0);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v30[-v4];
  v5 = type metadata accessor for XPCSessionManager.ListenerRecord(0);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2644EAB8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = sub_2644EB4BC();
  if (qword_2814AC3C8 != -1)
  {
    swift_once();
  }

  v11 = qword_2814ACD00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2644EE4F0;
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v32 = a1;
  v15 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v16 = sub_2644B4744();
  *(v12 + 64) = v16;
  *(v12 + 32) = v14;
  *(v12 + 40) = v13;
  sub_2644B2E84(&unk_2814ABF50, MEMORY[0x277D08970], MEMORY[0x277D08988]);

  v17 = v35;
  v18 = sub_2644EB94C();
  *(v12 + 96) = v15;
  *(v12 + 104) = v16;
  *(v12 + 72) = v18;
  *(v12 + 80) = v19;
  sub_2644EADCC(v31, &dword_2644B1000, v11, "XPCSessionManager(%{public}@): Registering Mach Service: [%{public}@]", 69, 2, v12);

  v20 = *(v8 + 16);
  v20(v10, v17, v7);
  v21 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  sub_2644EAB7C();
  v22 = sub_2644EB21C();

  v23 = [v21 initWithMachServiceName_];

  (*(v8 + 8))(v10, v7);
  v24 = v37;
  sub_2644B45C4(v17, v37, type metadata accessor for XPCServiceDescription);
  v25 = v34;
  *&v24[*(v34 + 20)] = v23;
  v20(v10, v17, v7);
  v26 = v36;
  sub_2644B45C4(v24, v36, type metadata accessor for XPCSessionManager.ListenerRecord);
  (*(v33 + 56))(v26, 0, 1, v25);
  v27 = v32;
  swift_beginAccess();
  v28 = v23;
  sub_2644E8198(v26, v10);
  swift_endAccess();
  [v28 setDelegate_];
  [v28 resume];

  return sub_2644B47A0(v24);
}

uint64_t sub_2644E8EE4()
{
  v1 = *(type metadata accessor for XPCServiceDescription(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2644E8AC0(v2, v3);
}

uint64_t NSXPCConnection.machServiceName.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 serviceName];
  if (v3)
  {
    v4 = v3;
    sub_2644EB22C();

    sub_2644EAB9C();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2644EAB8C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_2644E9008(uint64_t a1, void *a2)
{
  v4 = a1 + *(type metadata accessor for XPCServiceDescription(0) + 44);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);

    v5(a2);

    return sub_2644B3C64(v5, v6);
  }

  else
  {
    v8 = sub_2644EB4BC();
    if (qword_2814AC3C8 != -1)
    {
      swift_once();
    }

    v9 = qword_2814ACD00;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2644EE4F0;
    v12 = *(v2 + 16);
    v11 = *(v2 + 24);
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_2644B4744();
    *(v10 + 32) = v12;
    *(v10 + 40) = v11;
    *(v10 + 96) = sub_2644B4694(0, &unk_2814AC3B0, 0x277CCAE80);
    *(v10 + 104) = sub_2644B46DC();
    *(v10 + 72) = a2;

    v13 = a2;
    sub_2644EADCC(v8, &dword_2644B1000, v9, "XPCSessionManager(%{public}@): XPC connection invalidated: %{public}@", 69, 2, v10);
  }
}

uint64_t sub_2644E9194(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a2, a3);
  }

  return result;
}

uint64_t sub_2644E9210(uint64_t a1, void *a2)
{
  v4 = a1 + *(type metadata accessor for XPCServiceDescription(0) + 40);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);

    v5(a2);

    return sub_2644B3C64(v5, v6);
  }

  else
  {
    v8 = sub_2644EB4BC();
    if (qword_2814AC3C8 != -1)
    {
      swift_once();
    }

    v9 = qword_2814ACD00;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2644EE4F0;
    v12 = *(v2 + 16);
    v11 = *(v2 + 24);
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_2644B4744();
    *(v10 + 32) = v12;
    *(v10 + 40) = v11;
    *(v10 + 96) = sub_2644B4694(0, &unk_2814AC3B0, 0x277CCAE80);
    *(v10 + 104) = sub_2644B46DC();
    *(v10 + 72) = a2;

    v13 = a2;
    sub_2644EADCC(v8, &dword_2644B1000, v9, "XPCSessionManager(%{public}@): XPC connection interrupted: %{public}@", 69, 2, v10);
  }
}

uint64_t XPCSessionManager.deinit()
{

  return v0;
}

uint64_t XPCSessionManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_2644E9454()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _XPCListenerDelegateTrampoline();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL NSXPCConnection.hasEntitlement<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2644EB2AC();
  v3 = NSXPCConnection.hasEntitlement(_:)(v5);

  return v3;
}

Swift::Bool __swiftcall NSXPCConnection.hasEntitlement(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = sub_2644EB21C();
  v5 = [v1 valueForEntitlement_];

  if (v5)
  {
    sub_2644EB6AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v11)
    {
      return 1;
    }
  }

  else
  {
    sub_2644C0CF4(v14, &unk_27FF6FAC0, &unk_2644ECEA0);
  }

  v7 = sub_2644EB49C();
  if (qword_2814AC3C8 != -1)
  {
    swift_once();
  }

  v8 = qword_2814ACD00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2644EE4F0;
  *(v9 + 56) = sub_2644B4694(0, &unk_2814AC3B0, 0x277CCAE80);
  *(v9 + 64) = sub_2644B46DC();
  *(v9 + 32) = v1;
  *(v9 + 96) = MEMORY[0x277D837D0];
  *(v9 + 104) = sub_2644B4744();
  *(v9 + 72) = countAndFlagsBits;
  *(v9 + 80) = object;
  v10 = v1;

  sub_2644EADCC(v7, &dword_2644B1000, v8, "Connection %{public}@ does not have entitlement: [%@]", 53, 2, v9);

  return 0;
}

uint64_t sub_2644E977C(uint64_t a1)
{
  result = type metadata accessor for XPCServiceDescription(319);
  if (v2 <= 0x3F)
  {
    result = sub_2644B4694(319, qword_2814ABAC8, 0x277CCAE98);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2644E9810(uint64_t a1, uint64_t a2)
{
  sub_2644EBA7C();
  sub_2644EB26C();
  v4 = sub_2644EBAAC();

  return sub_2644E9888(a1, a2, v4);
}

unint64_t sub_2644E9888(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2644EB9AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2644E9940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2644B436C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2644EA598();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_2644EAB8C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for XPCSessionManager.ListenerRecord(0);
    v20 = *(v13 - 8);
    sub_2644B462C(v12 + *(v20 + 72) * v7, a2, type metadata accessor for XPCSessionManager.ListenerRecord);
    sub_2644E9F7C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for XPCSessionManager.ListenerRecord(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2644E9ADC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for XPCSessionManager.ListenerRecord(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2644EAB8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FB58, &qword_2644EE5F8);
  v43 = v4;
  result = sub_2644EB88C();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2644B462C(v27 + v28 * v24, v47, type metadata accessor for XPCSessionManager.ListenerRecord);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2644B45C4(v29 + v28 * v24, v47, type metadata accessor for XPCSessionManager.ListenerRecord);
      }

      sub_2644B2E84(&qword_2814ABF68, MEMORY[0x277D08970], MEMORY[0x277D08978]);
      result = sub_2644EB1CC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_2644B462C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for XPCSessionManager.ListenerRecord);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

unint64_t sub_2644E9F7C(int64_t a1, uint64_t a2)
{
  v4 = sub_2644EAB8C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_2644EB6DC();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_2644B2E84(&qword_2814ABF68, MEMORY[0x277D08970], MEMORY[0x277D08978]);
      v22 = sub_2644EB1CC();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for XPCSessionManager.ListenerRecord(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2644EA2C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2644EAB8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2644B436C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2644EA598();
      goto LABEL_7;
    }

    sub_2644E9ADC(v17, a3 & 1);
    v24 = sub_2644B436C(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2644EA4A8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2644EBA1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for XPCSessionManager.ListenerRecord(0) - 8) + 72) * v14;

  return sub_2644EAAE8(a1, v22);
}

uint64_t sub_2644EA4A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2644EAB8C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for XPCSessionManager.ListenerRecord(0);
  result = sub_2644B462C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for XPCSessionManager.ListenerRecord);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_2644EA598()
{
  v1 = v0;
  v2 = type metadata accessor for XPCSessionManager.ListenerRecord(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2644EAB8C();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FB58, &qword_2644EE5F8);
  v5 = *v0;
  v6 = sub_2644EB87C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_2644B45C4(v26 + v28, v37, type metadata accessor for XPCSessionManager.ListenerRecord);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_2644B462C(v29, *(v18 + 56) + v28, type metadata accessor for XPCSessionManager.ListenerRecord);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  v1 = type metadata accessor for XPCServiceDescription(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = sub_2644EAB8C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  if (*(v0 + v3 + v1[9]))
  {
  }

  if (*(v5 + v1[10]))
  {
  }

  if (*(v5 + v1[11]))
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t sub_2644EAA54(void (*a1)(uint64_t, uint64_t))
{
  v3 = *(type metadata accessor for XPCServiceDescription(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_2644E9194(*(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_2644EAAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCSessionManager.ListenerRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}
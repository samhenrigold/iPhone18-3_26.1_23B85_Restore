uint64_t sub_222A2E22C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A2E290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MaximumRecordCountPolicy.__allocating_init(maximumRecordCount:evictor:evictionPolicy:countKeyPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  MaximumRecordCountPolicy.init(maximumRecordCount:evictor:evictionPolicy:countKeyPath:)(a1, a2, a3, a4);
  return v8;
}

char *MaximumRecordCountPolicy.init(maximumRecordCount:evictor:evictionPolicy:countKeyPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  *(v4 + 2) = a1;
  (*(*(v7[12] - 8) + 32))(&v4[v7[17]], a2);
  (*(*(v7[13] - 8) + 32))(&v4[*(*v4 + 144)], a3);
  *&v4[*(*v4 + 152)] = a4;
  return v4;
}

void sub_222A2E50C(void *a1)
{
  v3 = v2;
  v4 = v1;
  v70[1] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v7 = sub_222B02148();
  v8 = __swift_project_value_buffer(v7, qword_280CBC458);
  swift_retain_n();
  v9 = sub_222B02128();
  v10 = sub_222B028D8();
  v68 = v6;
  if (os_log_type_enabled(v9, v10))
  {
    v65 = v8;
    v66 = a1;
    v64 = v2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v70[0] = v12;
    *v11 = 136315394;
    v67 = v6[10];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [ObjCClassFromMetadata entity];
    v15 = [v14 name];

    if (v15)
    {
      v16 = sub_222B02388();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v20 = sub_222A230FC(v16, v18, v70);

    *(v11 + 4) = v20;
    *(v11 + 12) = 2048;
    v21 = v4[2];

    *(v11 + 14) = v21;

    _os_log_impl(&dword_222A1C000, v9, v10, "Checking record count for entity type (%s) does not exceed %ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223DC7E30](v12, -1, -1);
    MEMORY[0x223DC7E30](v11, -1, -1);

    v19 = ObjCClassFromMetadata;
    v3 = v64;
    v8 = v65;
    a1 = v66;
  }

  else
  {

    v67 = v6[10];
    v19 = swift_getObjCClassFromMetadata();
  }

  v22 = [v19 fetchRequest];
  v70[0] = 0;
  v23 = [a1 countForFetchRequest:v22 error:v70];

  v24 = v70[0];
  if (v70[0])
  {
    swift_willThrow();
    v24;
    return;
  }

  v25 = sub_222B02128();
  v26 = sub_222B028D8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218240;
    *(v27 + 4) = v23;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v4[2];

    _os_log_impl(&dword_222A1C000, v25, v26, "Record Count: %ld/%ld", v27, 0x16u);
    MEMORY[0x223DC7E30](v27, -1, -1);
  }

  else
  {
  }

  v28 = v4[2];
  v29 = v68;
  if (v28 >= v23)
  {
    v49 = sub_222B02128();
    v50 = sub_222B028D8();
    if (!os_log_type_enabled(v49, v50))
    {
LABEL_33:

      return;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "Total records less than maximum. Skipping Policy.";
    v53 = v50;
    v54 = v49;
    v55 = v51;
    v56 = 2;
LABEL_32:
    _os_log_impl(&dword_222A1C000, v54, v53, v52, v55, v56);
    MEMORY[0x223DC7E30](v51, -1, -1);
    goto LABEL_33;
  }

  v30 = __OFSUB__(v23, v28);
  v31 = &v23[-v28];
  if (v30)
  {
    goto LABEL_39;
  }

  v32 = sub_222B02128();
  v33 = sub_222B028D8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v31;
    _os_log_impl(&dword_222A1C000, v32, v33, "Evicting %ld records from the store.", v34, 0xCu);
    v35 = v34;
    v29 = v68;
    MEMORY[0x223DC7E30](v35, -1, -1);
  }

  v36 = v29[15];
  v37 = v29[13];
  v38 = (*(v36 + 16))(v31, a1, v37, v36);
  if (!v3)
  {
    v58[1] = v37;
    v58[2] = v36;
    v65 = v8;
    v66 = a1;
    v39 = 0;
    v40 = 0;
    v70[0] = 0;
    v41 = *v4;
    v63 = *(*v4 + 136);
    v42 = *(v41 + 152);
    v60 = v4;
    v61 = v42;
    v43 = v38;
    v59 = v31;
    v62 = v38;
    while (v39 != sub_222B02698())
    {
      v44 = sub_222B02678();
      sub_222B02628();
      if (v44)
      {
        v45 = *(v43 + 8 * v39 + 32);
      }

      else
      {
        v45 = sub_222B02CA8();
      }

      v46 = v45;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v47 = (*(v29[14] + 24))(v45, v66, v29[12], v29[14]);
      if (*(v4 + v61))
      {
        v64 = v58;
        v69 = v47;
        MEMORY[0x28223BE20](v47);
        sub_222B026C8();

        swift_getWitnessTable();
        sub_222B02578();

        v40 = v70[0];
      }

      else
      {
        v48 = sub_222B02698();

        v30 = __OFADD__(v40, v48);
        v40 += v48;
        if (v30)
        {
          goto LABEL_38;
        }

        v70[0] = v40;
      }

      ++v39;
      v4 = v60;
      v29 = v68;
      v43 = v62;
      if (v40 >= v59)
      {
        break;
      }
    }

    v49 = sub_222B02128();
    v57 = sub_222B028D8();
    if (!os_log_type_enabled(v49, v57))
    {
      goto LABEL_33;
    }

    v51 = swift_slowAlloc();
    *v51 = 134217984;
    *(v51 + 4) = v40;
    v52 = "Evicted a total of %ld records. Policy finished.";
    v53 = v57;
    v54 = v49;
    v55 = v51;
    v56 = 12;
    goto LABEL_32;
  }
}

void sub_222A2ECB4(id *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_getAtKeyPath();

  if (v6 != 1)
  {
    if (__OFADD__(*a3, v5))
    {
      __break(1u);
    }

    else
    {
      *a3 += v5;
    }
  }
}

uint64_t *MaximumRecordCountPolicy.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 136));
  (*(*(*(v1 + 104) - 8) + 8))(v0 + *(*v0 + 144));

  return v0;
}

uint64_t MaximumRecordCountPolicy.__deallocating_deinit()
{
  MaximumRecordCountPolicy.deinit();

  return swift_deallocClassInstance();
}

void *sub_222A2EEA0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_222A2EEC0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_222A2EF18(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_222A2F080@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE58, &qword_222B05190);
  v32 = *(v35 - 8);
  v34 = *(v32 + 64);
  v5 = MEMORY[0x28223BE20](v35);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = sub_222B01848();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  sub_222B01838();
  (*(v10 + 16))(v4, v15, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  sub_222A2F6EC(*&v37, v4, &v39);
  sub_222A34F20(v4, &qword_27D01D700, &qword_222B07320);
  v38 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE60, &unk_222B051A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE68, &qword_222B07F30);
  sub_222A352E8(&qword_280CB7110, &qword_27D01CE60, &unk_222B051A0, &protocol conformance descriptor for AnyAsyncSequence<A>);
  sub_222B02DA8();
  v16 = *(v10 + 32);
  v16(v13, v15, v9);
  v17 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v37;
  v16((v18 + v17), v13, v9);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_222A35044;
  *(v19 + 24) = v18;
  v20 = v33;
  v21 = v32 + 32;
  v22 = *(v32 + 32);
  v23 = v35;
  v22(v33, v8, v35);
  v24 = (*(v21 + 48) + 16) & ~*(v21 + 48);
  v25 = (v34 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v22((v26 + v24), v20, v23);
  v27 = (v26 + v25);
  *v27 = sub_222A350C8;
  v27[1] = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_222A3516C;
  *(v28 + 24) = v26;
  v29 = v36;
  *v36 = sub_222A35244;
  v29[1] = v28;
  v30 = v37;

  return v30;
}

uint64_t sub_222A2F4D0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_222A2F4F4, 0, 0);
}

uint64_t sub_222A2F4F4()
{
  v1 = v0[2];
  *v1 = v0[3];
  v1[1] = 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_222A2F560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_222B01848();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name);
  v10 = *(a3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8);
  (*(v7 + 16))(v9, a4, v6);

  sub_222B017C8();
  v13 = v12;
  v14 = type metadata accessor for StreamBookmark();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  *v16 = v11;
  *(v16 + 1) = v10;
  *&v15[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = 0;
  v17 = &v15[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
  *v17 = v13;
  v17[8] = 0;
  v19.receiver = v15;
  v19.super_class = v14;
  objc_msgSendSuper2(&v19, sel_init);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_222A2F6EC@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  if (a1 == 0.0)
  {
    v9 = 0;
    v11 = 1;
  }

  else
  {
    v9 = *(*&a1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark);
    v10 = *&a1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate;
    a1 = *(*&a1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate);
    v11 = *(v10 + 8);
    swift_unknownObjectRetain();
  }

  sub_222A34E48(a2, v8, &qword_27D01D700, &qword_222B07320);
  v12 = sub_222B01848();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v8, 1, v12);
  if (v14 == 1)
  {
    sub_222A34F20(v8, &qword_27D01D700, &qword_222B07320);
    v15 = 0;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_222B017C8();
    v17 = v16;
    (*(v13 + 8))(v8, v12);
    v15 = v17;
    if (!v11)
    {
LABEL_13:
      v24 = a1;
      goto LABEL_14;
    }
  }

  if (!v9)
  {
    v24 = 0.0;
LABEL_14:
    v23 = sub_222A307E8(v15, v14 == 1, v24);
    swift_unknownObjectRelease();
    v22 = sub_222A34BDC;
    goto LABEL_15;
  }

  v18 = v15;
  v19 = swift_unknownObjectRetain();
  a1 = COERCE_DOUBLE(sub_222A30A04(v19));
  v21 = v20;
  swift_unknownObjectRelease();
  if ((v21 & 1) == 0)
  {
    v15 = v18;
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
  v22 = sub_222A34BE4;
  v23 = MEMORY[0x277D84F90];
LABEL_15:
  result = swift_allocObject();
  *(result + 16) = v23;
  *a3 = v22;
  a3[1] = result;
  return result;
}

id sub_222A2F950@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE10, &qword_222B05118);
  v32 = *(v35 - 8);
  v34 = *(v32 + 64);
  v5 = MEMORY[0x28223BE20](v35);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = sub_222B01848();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  sub_222B01838();
  (*(v10 + 16))(v4, v15, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  sub_222A2FF64(v37, v4, &v39);
  sub_222A34F20(v4, &qword_27D01D700, &qword_222B07320);
  v38 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE18, &unk_222B07EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE20, &qword_222B05130);
  sub_222A352E8(qword_280CB7118, &qword_27D01CE18, &unk_222B07EE0, &protocol conformance descriptor for AnyAsyncSequence<A>);
  sub_222B02DA8();
  v16 = *(v10 + 32);
  v16(v13, v15, v9);
  v17 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v37;
  v16((v18 + v17), v13, v9);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_222A34B18;
  *(v19 + 24) = v18;
  v20 = v33;
  v21 = v32 + 32;
  v22 = *(v32 + 32);
  v23 = v35;
  v22(v33, v8, v35);
  v24 = (*(v21 + 48) + 16) & ~*(v21 + 48);
  v25 = (v34 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v22((v26 + v24), v20, v23);
  v27 = (v26 + v25);
  *v27 = sub_222A34BA4;
  v27[1] = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_222A34BAC;
  *(v28 + 24) = v26;
  v29 = v36;
  *v36 = sub_222A34BD4;
  v29[1] = v28;
  v30 = v37;

  return v30;
}

uint64_t sub_222A2FDA0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_222A35340, 0, 0);
}

void *sub_222A2FDC4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_222B01848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v15 = *(a4 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name);
  v14 = *(a4 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8);
  (*(v10 + 16))(v12, a5, v9);

  sub_222B017C8();
  v17 = v16;
  v18 = type metadata accessor for StreamBookmark();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  *v20 = v15;
  *(v20 + 1) = v14;
  *&v19[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = 0;
  v21 = &v19[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
  *v21 = v17;
  v21[8] = 0;
  v24.receiver = v19;
  v24.super_class = v18;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  (*(v10 + 8))(v12, v9);
  *a1 = v13;

  return v22;
}

uint64_t sub_222A2FF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v45 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CDF8, &qword_222B050D0);
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  if (a1)
  {
    v12 = *(a1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark);
    v41 = *(a1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate);
    v13 = *(a1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate + 8);
    swift_unknownObjectRetain();
  }

  else
  {
    v41 = 0.0;
    v12 = 0;
    v13 = 1;
  }

  sub_222A34E48(a2, v11, &qword_27D01D700, &qword_222B07320);
  v14 = sub_222B01848();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v11, 1, v14);
  if (v16 == 1)
  {
    sub_222A34F20(v11, &qword_27D01D700, &qword_222B07320);
    v17 = 0;
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_222B017C8();
    v19 = v18;
    (*(v15 + 8))(v11, v14);
    v17 = v19;
    if (!v13)
    {
LABEL_13:
      v28 = v41;
      goto LABEL_14;
    }
  }

  if (!v12)
  {
    v28 = 0.0;
LABEL_14:
    v29 = sub_222A307E8(v17, v16 == 1, v28);
    swift_unknownObjectRelease();
    v30 = _s17ScanConversationsCMa();
    v31 = objc_allocWithZone(v30);
    *&v31[OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers17ScanConversations_inner] = 0;
    *&v31[OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers17ScanConversations_upstream] = v29;
    v50.receiver = v31;
    v50.super_class = v30;
    v32 = v29;
    v46 = objc_msgSendSuper2(&v50, sel_init);
    v47 = 0x402E000000000000;
    v48 = &unk_222B050D8;
    v49 = 0;
    v33 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE00, &qword_222B050E8);
    sub_222A352E8(qword_280CB6B58, &qword_27D01CE00, &qword_222B050E8, &unk_222B0CC40);
    v34 = v42;
    sub_222B02DA8();

    v35 = *(v5 + 32);
    v37 = v43;
    v36 = v44;
    v35(v43, v34, v44);
    v38 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v26 = swift_allocObject();
    result = (v35)(v26 + v38, v37, v36);
    v27 = sub_222A34944;
    goto LABEL_15;
  }

  v20 = v17;
  v21 = swift_unknownObjectRetain();
  v22 = sub_222A30A04(v21);
  v24 = v23;
  swift_unknownObjectRelease();
  if ((v24 & 1) == 0)
  {
    v41 = *&v22;
    v17 = v20;
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
  result = swift_allocObject();
  v26 = result;
  *(result + 16) = MEMORY[0x277D84F90];
  v27 = sub_222A349C0;
LABEL_15:
  v39 = v45;
  *v45 = v27;
  v39[1] = v26;
  return result;
}

void sub_222A303D0(uint64_t a1, double a2)
{
  if (a1)
  {
    v12 = *(a1 + 16);

    v3 = sub_222A3058C();
    v5 = v4;
  }

  else
  {
    v5 = 0xE500000000000000;
    v3 = 0x3E6C696E3CLL;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CBC458);

  oslog = sub_222B02128();
  v7 = sub_222B028F8();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 134218242;
    *(v8 + 4) = a2;
    *(v8 + 12) = 2080;
    v10 = sub_222A230FC(v3, v5, &v12);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_222A1C000, oslog, v7, "BiomeAsyncSequence next element threshold exceeded: delta=%f, counts=%s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223DC7E30](v9, -1, -1);
    MEMORY[0x223DC7E30](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_222A3058C()
{

  sub_222B02D68();
  result = sub_222B02E18();
  v1 = v5;
  if (v5)
  {
    v2 = 0;
    while (!__OFADD__(v2, 1))
    {
      v6 = sub_222B02F38();
      v7 = v3;
      MEMORY[0x223DC66E0](58, 0xE100000000000000);
      if (*(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events) >> 62)
      {
        sub_222B02DC8();
      }

      v4 = sub_222B02F38();
      MEMORY[0x223DC66E0](v4);

      MEMORY[0x223DC66E0](124, 0xE100000000000000);
      MEMORY[0x223DC66E0](v6, v7);

      result = sub_222B02E18();
      v1 = v6;
      ++v2;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return 124;
  }

  return result;
}

uint64_t sub_222A30714(uint64_t *a1, double a2)
{
  sub_222A303D0(*a1, a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_222A30774(void *a1, uint64_t a2)
{
  *a1 = *(*a2 + 16);
  v4 = *(v2 + 8);

  return v4();
}

id sub_222A307E8(unint64_t a1, char a2, double a3)
{
  v5 = sub_222B01848();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  sub_222B017B8();
  v12 = *(v3 + 16);
  v13 = sub_222B027B8();
  v14 = 0;
  if ((a2 & 1) == 0)
  {
    v14 = sub_222B027B8();
  }

  v15 = [v12 publisherWithStartTime:v13 endTime:v14 maxEvents:0 reversed:0];

  v16 = *(v6 + 16);
  v16(v9, v11, v5);
  v17 = _s9ScanTurnsCMa(0);
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers9ScanTurns_inner] = 0;
  *&v18[OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers9ScanTurns_upstream] = v15;
  v16(&v18[OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers9ScanTurns_turnsStartDateTime], v9, v5);
  v22.receiver = v18;
  v22.super_class = v17;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  v20 = *(v6 + 8);
  v20(v9, v5);
  v20(v11, v5);
  return v19;
}

uint64_t sub_222A30A04(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_222A34890();
  v4 = sub_222B02AD8();
  v5 = sub_222B02AD8();
  v6 = [v3 publisherWithStartTime:v4 endTime:0 maxEvents:v5 reversed:0];

  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  v18 = nullsub_1;
  v19 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_222A30C18;
  v17 = &block_descriptor_0;
  v8 = _Block_copy(&v14);
  v18 = sub_222A348F4;
  v19 = v7;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_222A30CA0;
  v17 = &block_descriptor_49;
  v9 = _Block_copy(&v14);
  v10 = v6;

  v11 = [v10 sinkWithBookmark:a1 completion:v8 receiveInput:v9];

  _Block_release(v9);
  _Block_release(v8);

  swift_beginAccess();
  v12 = *(v7 + 16);

  return v12;
}

void sub_222A30C18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

void sub_222A30CA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_222A30D08()
{

  return swift_deallocClassInstance();
}

double sub_222A30DA8@<D0>(void (*a1)(__int128 *__return_ptr, void, char *)@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_222B01848();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  a1(&v13, 0, v9);
  sub_222A34F20(v9, &qword_27D01D700, &qword_222B07320);
  v11 = swift_allocObject();
  result = *&v13;
  *(v11 + 16) = v13;
  *a4 = a3;
  a4[1] = v11;
  return result;
}

double sub_222A30F58@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t, char *)@<X3>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_222B01848();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  a2(&v15, a1, v11);
  sub_222A34F20(v11, &qword_27D01D700, &qword_222B07320);
  v13 = swift_allocObject();
  result = *&v15;
  *(v13 + 16) = v15;
  *a5 = a4;
  a5[1] = v13;
  return result;
}

id makeAsyncBiomeSignalReaderForTesting()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AsyncBiomeSignalReader();
  v3 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277CF1AF0]) init];
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_2835F22A8;
  a1[5] = &off_2835F2290;
  *a1 = v3;
  return result;
}

uint64_t sub_222A31148()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE48, &qword_222B05180);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v19 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v12 = *(v0 + v11);
  if (v12 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  *(v0 + v11) = 1;
  sub_222A34E38(v12);
  [v13 cancel];
  v14 = *((*v10 & *v0) + 0x60);
  swift_beginAccess();
  sub_222A34E48(v0 + v14, v9, &qword_27D01CE48, &qword_222B05180);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE50, &qword_222B05188);
  v16 = *(v15 - 8);
  (*(v16 + 56))(v7, 1, 1, v15);
  swift_beginAccess();
  sub_222A34EB0(v7, v0 + v14);
  swift_endAccess();
  sub_222A34E48(v9, v4, &qword_27D01CE48, &qword_222B05180);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_222A34F20(v9, &qword_27D01CE48, &qword_222B05180);

    return sub_222A34F20(v4, &qword_27D01CE48, &qword_222B05180);
  }

  else
  {
    sub_222B02728();
    sub_222A34DE0();
    v18 = swift_allocError();
    sub_222B02298();
    v19[0] = v18;
    sub_222B026F8();

    sub_222A34F20(v9, &qword_27D01CE48, &qword_222B05180);
    return (*(v16 + 8))(v4, v15);
  }
}

void sub_222A31448(uint64_t a1)
{
  v16 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE48, &qword_222B05180);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  sub_222A34E48(v1 + v9, v7, &qword_27D01CE48, &qword_222B05180);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE50, &qword_222B05188);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  sub_222A34F20(v7, &qword_27D01CE48, &qword_222B05180);
  if (v12 == 1)
  {
    v13 = *(v1 + *((*v8 & *v1) + 0x58));
    if (v13)
    {
      if (v13 == 1)
      {
        v17 = 0;
        sub_222B02708();
      }

      else
      {
        (*(v11 + 16))(v5, v16, v10);
        (*(v11 + 56))(v5, 0, 1, v10);
        swift_beginAccess();
        v14 = v13;
        sub_222A34EB0(v5, v1 + v9);
        swift_endAccess();
        [v14 requestDemand_];
        sub_222A34E38(v13);
      }
    }

    else
    {
      (*(v11 + 16))(v5, v16, v10);
      (*(v11 + 56))(v5, 0, 1, v10);
      swift_beginAccess();
      sub_222A34EB0(v5, v1 + v9);
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_222A31718(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE08, &qword_222B05100);
  v2[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222A317A4, 0, 0);
}

uint64_t sub_222A317A4()
{
  swift_beginAccess();
  v1 = sub_222A352E8(&qword_280CB4AD0, &qword_27D01CE08, &qword_222B05100, MEMORY[0x277D85980]);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_222A3188C;
  v3 = v0[6];
  v4 = v0[5];

  return MEMORY[0x282200308](v4, v3, v1);
}

uint64_t sub_222A3188C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222A35338, 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_222A319C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_222A319E8, 0, 0);
}

uint64_t sub_222A319E8()
{
  v1 = v0[6];
  swift_beginAccess();
  v5 = (*(v1 + 16) + **(v1 + 16));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_222A31AF0;
  v3 = v0[5];

  return v5(v3);
}

uint64_t sub_222A31AF0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_222A35334;
  }

  else
  {
    v2 = sub_222A35354;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222A31C04(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_222A31C24, 0, 0);
}

uint64_t sub_222A31C24()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_222A31CE8;
  v2 = *(v0 + 40);

  return sub_222A32F78(v2);
}

uint64_t sub_222A31CE8()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222A35334, 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_222A31E24(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_222A31E44, 0, 0);
}

uint64_t sub_222A31E44()
{
  v1 = v0[6];
  swift_beginAccess();
  v5 = (*(v1 + 16) + **(v1 + 16));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_222A31F4C;
  v3 = v0[5];

  return v5(v3);
}

uint64_t sub_222A31F4C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_222A320C4;
  }

  else
  {
    v2 = sub_222A32060;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222A32060()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A320C4()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A32128(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CDE8, &qword_222B050B0);
  v2[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222A321B4, 0, 0);
}

uint64_t sub_222A321B4()
{
  swift_beginAccess();
  v1 = sub_222A352E8(&qword_27D01CDF0, &qword_27D01CDE8, &qword_222B050B0, MEMORY[0x277D85980]);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_222A3229C;
  v3 = v0[6];
  v4 = v0[5];

  return MEMORY[0x282200308](v4, v3, v1);
}

uint64_t sub_222A3229C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222A323D8, 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_222A323D8()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A3243C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE78, &qword_222B051B8);
  v2[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222A324C8, 0, 0);
}

uint64_t sub_222A324C8()
{
  swift_beginAccess();
  v1 = sub_222A352E8(&qword_27D01CE88, &qword_27D01CE78, &qword_222B051B8, MEMORY[0x277D859D0]);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_222A3188C;
  v3 = v0[6];
  v4 = v0[5];

  return MEMORY[0x282200308](v4, v3, v1);
}

uint64_t sub_222A325D0()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    result = sub_222B02DC8();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 40);
  v5 = *(v4 + 24);
  if (v5 != result)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x223DC6F00](*(v4 + 24), v2);
      v6 = result;
      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_9;
      }
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_18:
        __break(1u);
        return result;
      }

      v6 = *(v2 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
LABEL_9:
        *(v4 + 24) = v7;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v6 = 0;
LABEL_10:
  swift_endAccess();
  v8 = *(v0 + 8);

  return v8(v6);
}

uint64_t sub_222A326F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_222A32714, 0, 0);
}

uint64_t sub_222A32714()
{
  v1 = *(v0 + 48);
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v3 == v5)
  {
    **(v0 + 40) = 0;
  }

  else
  {
    if (v3 >= v5)
    {
      __break(1u);
      return result;
    }

    **(v0 + 40) = *(v4 + 8 * v3 + 32);
    *(v1 + 24) = v3 + 1;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_222A327C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_222A327E8, 0, 0);
}

uint64_t sub_222A327E8()
{
  swift_beginAccess();
  sub_222B02E18();
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A32890()
{
  v1 = v0[8];
  if (v1[4])
  {
    *(v1 + 32) = 0;
    v11 = (*v1 + **v1);
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_222A32A8C;
    v3 = v0 + 6;
LABEL_5:

    return v11(v3);
  }

  v4 = v1[5];
  v5 = v1[6];
  v0[11] = v5;
  v0[12] = v4;
  if (v4)
  {
    v0[2] = v4;
    v0[3] = v5;
    v6 = *v1;

    v7 = v5;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_222A32D28;
    v3 = v0 + 4;
    goto LABEL_5;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_222A32A8C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_222A32D10;
  }

  else
  {
    v2 = sub_222A32BA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222A32BA0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_222A1E5FC(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v3;
  *(v1 + 48) = v2;
  v0[11] = v2;
  v0[12] = v3;
  if (v3)
  {
    v4 = v0[8];
    v0[2] = v3;
    v0[3] = v2;
    v5 = *v4;

    v6 = v2;
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_222A32D28;

    return v10(v0 + 4);
  }

  else
  {
    v9 = v0[1];

    return v9(0, v2);
  }
}

uint64_t sub_222A32D28()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_222A32F0C;
  }

  else
  {
    v2 = sub_222A32E3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222A32E3C()
{
  v9 = v0;
  v7 = *(v0 + 32);
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  if (v7)
  {
    sub_222A1E5FC(*(v0 + 96), *(v0 + 88));
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
  }

  else
  {
    (*(*(v0 + 64) + 16))(v8, v0 + 16);

    sub_222A1E5FC(v1, v2);
    v3 = v8[0];
    v4 = v8[1];
  }

  *(*(v0 + 64) + 40) = v7;
  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_222A32F0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A32F78(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_222A32F98, 0, 0);
}

uint64_t sub_222A32F98()
{
  v1 = v0[9];
  if (v1[4])
  {
    *(v1 + 32) = 0;
    v12 = (*v1 + **v1);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_222A33198;
    v3 = v0 + 6;
LABEL_5:

    return v12(v3);
  }

  v4 = v1[5];
  v5 = v1[6];
  v0[12] = v5;
  v0[13] = v4;
  if (v4)
  {
    v0[2] = v4;
    v0[3] = v5;
    v6 = *v1;

    v7 = v5;
    v12 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_222A33434;
    v3 = v0 + 4;
    goto LABEL_5;
  }

  v10 = v0[8];
  *v10 = 0;
  v10[1] = v5;
  v11 = v0[1];

  return v11();
}

uint64_t sub_222A33198()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_222A3341C;
  }

  else
  {
    v2 = sub_222A332AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222A332AC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  sub_222A1E5FC(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  v0[12] = v3;
  v0[13] = v2;
  if (v2)
  {
    v4 = v0[9];
    v0[2] = v2;
    v0[3] = v3;
    v5 = *v4;

    v6 = v3;
    v11 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_222A33434;

    return v11(v0 + 4);
  }

  else
  {
    v9 = v0[8];
    *v9 = 0;
    v9[1] = v3;
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_222A33434()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_222A33614;
  }

  else
  {
    v2 = sub_222A33548;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222A33548()
{
  v11 = v0;
  v1 = v0[4];
  if (v1)
  {
    v3 = v0[12];
    v2 = v0[13];
  }

  else
  {
    (*(v0[9] + 16))(v10, v0 + 2);
    v4 = v0[3];

    v1 = v0[4];
    v2 = v10[0];
    v3 = v10[1];
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];
  sub_222A1E5FC(*(v5 + 40), *(v5 + 48));
  *(v5 + 40) = v1;
  *(v5 + 48) = v7;
  *v6 = v2;
  v6[1] = v3;
  v8 = v0[1];

  return v8();
}

uint64_t sub_222A33614()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A336A0()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {
    v2 = v0[1];

    return v2(0);
  }

  else if (sub_222B02788())
  {
    *(v1 + 24) = 1;
    sub_222A31148();
    sub_222B02728();
    sub_222A34DE0();
    swift_allocError();
    sub_222B02298();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[4] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE38, &qword_222B05178);
    *v5 = v0;
    v5[1] = sub_222A33858;
    v7 = v0[3];

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_222A34DBC, v7, v6);
  }
}

uint64_t sub_222A33858()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_222A33998;
  }

  else
  {
    v2 = sub_222A3396C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222A3396C()
{
  if (!*(v0 + 16))
  {
    *(*(v0 + 24) + 24) = 1;
  }

  return (*(v0 + 8))();
}

uint64_t sub_222A339B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CDF8, &qword_222B050D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE08, &qword_222B05100);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v5 + 16))(v7, a1, v4);
  sub_222A352E8(&qword_280CB4AB8, &qword_27D01CDF8, &qword_222B050D0, MEMORY[0x277D85990]);
  sub_222B02798();
  v12 = swift_allocBox();
  result = (*(v9 + 32))(v13, v11, v8);
  *a2 = &unk_222B05110;
  a2[1] = v12;
  return result;
}

uint64_t sub_222A33B94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE70, &qword_222B051B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE78, &qword_222B051B8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v5 + 16))(v7, a1, v4);
  sub_222A352E8(&qword_27D01CE80, &qword_27D01CE70, &qword_222B051B0, MEMORY[0x277D859D8]);
  sub_222B02798();
  v12 = swift_allocBox();
  result = (*(v9 + 32))(v13, v11, v8);
  *a2 = &unk_222B051C8;
  a2[1] = v12;
  return result;
}

uint64_t sub_222A33D78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_222A33E10;

  return sub_222A325B0(a2);
}

uint64_t sub_222A33E10(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_222A33F20@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE28, &qword_222B05150);
  v4 = swift_allocObject();
  v5 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE30 &qword_222B05158))];
  *(v4 + 16) = v5;
  *(v4 + 24) = 0;
  [v3 subscribe_];
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = &unk_222B05168;
  a2[1] = result;
  return result;
}

uint64_t sub_222A33FDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_222A33FFC, 0, 0);
}

uint64_t sub_222A33FFC()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_222A340B8;

  return sub_222A33680();
}

uint64_t sub_222A340B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_222A35334, 0, 0);
  }

  else
  {
    v6 = *(v4 + 40);
    swift_endAccess();
    *v6 = a1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_222A34238(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_222A34258, 0, 0);
}

uint64_t sub_222A34258()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  v4 = (*(v1 + 16) + **(v1 + 16));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_222A34360;

  return v4(v0 + 40);
}

uint64_t sub_222A34360()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_222A323D8;
  }

  else
  {
    v2 = sub_222A34474;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222A34474()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_endAccess();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

double sub_222A34500@<D0>(void (**a1)(__int128 *__return_ptr)@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  (*a1)(&v8);
  v6 = swift_allocObject();
  result = *&v8;
  *(v6 + 16) = v8;
  *a4 = a3;
  a4[1] = v6;
  return result;
}

uint64_t sub_222A34584(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A34620;

  return sub_222A319C8(a1, v1);
}

uint64_t sub_222A34620()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_222A34734(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A34238(a1, v1);
}

double sub_222A347E4@<D0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  (*(v3 + 16))(&v8);
  v6 = swift_allocObject();
  result = *&v8;
  *(v6 + 16) = v8;
  *a3 = a2;
  a3[1] = v6;
  return result;
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

unint64_t sub_222A34890()
{
  result = qword_280CB8400;
  if (!qword_280CB8400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CB8400);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222A348F4(void *a1)
{
  [a1 timestamp];
  v3 = v2;
  result = swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_222A34944@<X0>(void *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CDF8, &qword_222B050D0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_222A339B0(v4, a1);
}

uint64_t sub_222A349E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A326F4(a1, v1);
}

uint64_t sub_222A34A7C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A31718(a1, v1);
}

void *sub_222A34B18(void *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(sub_222B01848() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_222A2FDC4(a1, a2, a3, v8, v9);
}

uint64_t sub_222A34C04@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *a3 = a2;
  a3[1] = v7;
}

uint64_t sub_222A34C5C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A33D78(a1, v1);
}

uint64_t sub_222A34D0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A33FDC(a1, v1);
}

unint64_t sub_222A34DE0()
{
  result = qword_27D01CE40;
  if (!qword_27D01CE40)
  {
    sub_222B02728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01CE40);
  }

  return result;
}

void sub_222A34E38(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_222A34E48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_222A34EB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE48, &qword_222B05180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A34F20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_64Tm()
{
  v1 = sub_222B01848();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222A35044(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_222B01848() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_222A2F560(a1, a2, v6, v7);
}

uint64_t objectdestroy_70Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

uint64_t sub_222A35194(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(unint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v3 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a3(v3 + v5, v7, v8);
}

uint64_t sub_222A3524C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A3243C(a1, v1);
}

uint64_t sub_222A352E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t static SELFStoreMaintenance.resetStore()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE90, qword_222B05200);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_222A35464();
  sub_222B01A38();
  sub_222B01A08();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_222A35464()
{
  result = qword_280CB8420;
  if (!qword_280CB8420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CB8420);
  }

  return result;
}

SiriPrivateLearningAnalytics::SiriUserFeedbackLearningPlatformFeature_optional __swiftcall SiriUserFeedbackLearningPlatformFeature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222B02E48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t SiriUserFeedbackLearningPlatformFeature.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t sub_222A3557C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001DLL;
  }

  else
  {
    v3 = 0xD000000000000023;
  }

  if (v2)
  {
    v4 = "DeviceClass";
  }

  else
  {
    v4 = "ionsOfflineLearning";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001DLL;
  }

  else
  {
    v6 = 0xD000000000000023;
  }

  if (*a2)
  {
    v7 = "ionsOfflineLearning";
  }

  else
  {
    v7 = "DeviceClass";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222B02F78();
  }

  return v9 & 1;
}

uint64_t sub_222A35628()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A356A8(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222A35714(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A35790@<X0>(char *a2@<X8>)
{
  v3 = sub_222B02E48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_222A357F0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v2 = 0xD000000000000023;
  }

  if (*v1)
  {
    v3 = "ionsOfflineLearning";
  }

  else
  {
    v3 = "DeviceClass";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t SiriUserFeedbackLearningPlatformFeatures.SiriUserFeedbackLearningPlatformFeatureManager.__allocating_init()()
{
  v0 = swift_allocObject();
  SiriUserFeedbackLearningPlatformFeatures.SiriUserFeedbackLearningPlatformFeatureManager.init()();
  return v0;
}

uint64_t SiriUserFeedbackLearningPlatformFeatures.SiriUserFeedbackLearningPlatformFeatureManager.init()()
{
  v1 = sub_222B01988();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() clientWithIdentifier_];
  v5 = [objc_opt_self() currentLocale];
  sub_222B01918();

  v6 = [objc_opt_self() sharedPreferences];
  CurrentLocales.init(deviceLocale:siriPreferences:)(v3, v6, v11);
  *(v0 + 80) = sub_222A35F0C();
  *(v0 + 88) = &protocol witness table for TRIClient;
  *(v0 + 56) = v4;
  *(v0 + 40) = &type metadata for EnvironmentFeatureFlags;
  *(v0 + 48) = &protocol witness table for EnvironmentFeatureFlags;
  *(v0 + 232) = &type metadata for OSTypeResolver;
  *(v0 + 240) = &protocol witness table for OSTypeResolver;
  v7 = v11[5];
  *(v0 + 160) = v11[4];
  *(v0 + 176) = v7;
  *(v0 + 192) = v11[6];
  v8 = v11[1];
  *(v0 + 96) = v11[0];
  *(v0 + 112) = v8;
  v9 = v11[3];
  *(v0 + 128) = v11[2];
  *(v0 + 144) = v9;
  return v0;
}

void *SiriUserFeedbackLearningPlatformFeatures.SiriUserFeedbackLearningPlatformFeatureManager.deinit()
{
  sub_222A35F58(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  return v0;
}

uint64_t SiriUserFeedbackLearningPlatformFeatures.SiriUserFeedbackLearningPlatformFeatureManager.__deallocating_deinit()
{
  sub_222A35F58(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));

  return swift_deallocClassInstance();
}

void *sub_222A35B4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CEB8, &qword_222B05420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222B05250;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CEC0, &qword_222B05428);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_222B05260;
  *(v1 + 56) = &type metadata for SiriPrivateLearningFeatureFlag;
  *(v1 + 64) = sub_222A36228();
  *(v1 + 32) = 14;
  *(v1 + 72) = 1;
  type metadata accessor for TrialFlagFactor(0);
  v2 = swift_initStaticObject();
  if (qword_280CB7210 != -1)
  {
    v7 = v2;
    swift_once();
    v2 = v7;
  }

  v4 = qword_280CB7218;
  v3 = qword_280CB7220[0];
  *(v1 + 80) = v2;
  *(v1 + 88) = v4;
  *(v1 + 96) = v3;
  *(v1 + 120) = 0;
  *(inited + 40) = v1;
  *(inited + 48) = 0;

  v5 = sub_222A395C8(inited);
  swift_setDeallocating();
  sub_222A3627C(inited + 32);
  type metadata accessor for AnyFeature();
  result = swift_allocObject();
  result[2] = 0xD000000000000023;
  result[3] = 0x8000000222B0FCE0;
  result[4] = MEMORY[0x277D84F90];
  result[5] = v5;
  qword_280CB7AD8 = result;
  return result;
}

void *sub_222A35CFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CEB8, &qword_222B05420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222B05250;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CEC0, &qword_222B05428);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_222B05260;
  *(v1 + 56) = &type metadata for SiriPrivateLearningFeatureFlag;
  *(v1 + 64) = sub_222A36228();
  *(v1 + 32) = 15;
  *(v1 + 72) = 1;
  type metadata accessor for TrialFlagFactor(0);
  v2 = swift_initStaticObject();
  if (qword_280CB7210 != -1)
  {
    v7 = v2;
    swift_once();
    v2 = v7;
  }

  v4 = qword_280CB7218;
  v3 = qword_280CB7220[0];
  *(v1 + 80) = v2;
  *(v1 + 88) = v4;
  *(v1 + 96) = v3;
  *(v1 + 120) = 0;
  *(inited + 40) = v1;
  *(inited + 48) = 0;

  v5 = sub_222A395C8(inited);
  swift_setDeallocating();
  sub_222A3627C(inited + 32);
  type metadata accessor for AnyFeature();
  result = swift_allocObject();
  result[2] = 0xD00000000000001DLL;
  result[3] = 0x8000000222B0FD10;
  result[4] = MEMORY[0x277D84F90];
  result[5] = v5;
  qword_27D01CE98 = result;
  return result;
}

uint64_t sub_222A35EAC(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

unint64_t sub_222A35F0C()
{
  result = qword_280CBA200;
  if (!qword_280CBA200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CBA200);
  }

  return result;
}

unint64_t sub_222A35FB0()
{
  result = qword_27D01CEA0;
  if (!qword_27D01CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01CEA0);
  }

  return result;
}

unint64_t sub_222A36008()
{
  result = qword_27D01CEA8;
  if (!qword_27D01CEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01CEB0, &qword_222B05310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01CEA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriUserFeedbackLearningPlatformFeature(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriUserFeedbackLearningPlatformFeature(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222A36228()
{
  result = qword_280CBA570;
  if (!qword_280CBA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA570);
  }

  return result;
}

uint64_t sub_222A3627C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CEC8, &unk_222B05430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_222A36300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_222A36348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PluginRunner.init()@<X0>(uint64_t a1@<X8>)
{
  if (qword_280CB9568 != -1)
  {
    swift_once();
  }

  v2 = sub_222B01748();
  v3 = __swift_project_value_buffer(v2, qword_280CBC438);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PluginRunner.init(pluginPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_222B01748();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t PluginRunner.runPlugin(pluginName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 96) = *a4;
  return MEMORY[0x2822009F8](sub_222A364D4, 0, 0);
}

uint64_t sub_222A364D4()
{
  v1 = sub_222ACFCD4(*(v0 + 64), *(v0 + 48), *(v0 + 56));
  *(v0 + 72) = v1;
  v2 = v1;
  v3 = *(v0 + 96);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_222A366DC;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001ELL, 0x8000000222B106C0, sub_222A36B00, v4, &type metadata for PrivateLearningPluginResult);
}

uint64_t sub_222A366DC()
{

  return MEMORY[0x2822009F8](sub_222A367F4, 0, 0);
}

uint64_t sub_222A367F4()
{

  **(v0 + 40) = *(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222A36860(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CEE0, &qword_222B05558);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v16 = a3;
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v9, v6);
  (*(v10 + 16))(&v16, sub_222A36D38, v13, ObjectType, v10);
}

uint64_t sub_222A369EC(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CEE0, &qword_222B05558);
  return sub_222B02708();
}

uint64_t sub_222A36A40(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_222A34620;

  return PluginRunner.runPlugin(pluginName:context:)(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PluginRunning.runPlugin(pluginName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_222A34620;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata accessor for PluginRunner(uint64_t a1)
{
  result = qword_27D01CED0;
  if (!qword_27D01CED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222A36CCC(uint64_t a1)
{
  result = sub_222B01748();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222A36D38(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CEE0, &qword_222B05558);

  return sub_222A369EC(a1);
}

uint64_t SiriUserFeedbackLearningTaskResult.Status.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x73736563637573;
  }

  if (v1 == 1)
  {
    return 0x64657070696B73;
  }

  MEMORY[0x223DC66E0](*v0);
  return 0x3A6572756C696166;
}

uint64_t _s28SiriPrivateLearningAnalytics26PLUSSuggestionNoveltyStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC7380](v1);
  return sub_222B03168();
}

uint64_t sub_222A36E90(uint64_t a1)
{
  v2 = *v1;
  sub_222B03128();
  MEMORY[0x223DC7380](v2);
  return sub_222B03168();
}

uint64_t sub_222A36EEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222A3ADB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222A36F2C(uint64_t a1)
{
  v2 = sub_222A390E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222A36F68(uint64_t a1)
{
  v2 = sub_222A390E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222A36FA4()
{
  sub_222B03128();
  MEMORY[0x223DC7380](0);
  return sub_222B03168();
}

uint64_t sub_222A37010(uint64_t a1)
{
  sub_222B03128();
  MEMORY[0x223DC7380](0);
  return sub_222B03168();
}

uint64_t sub_222A37068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_222B02F78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_222A370F0(uint64_t a1)
{
  v2 = sub_222A3918C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222A3712C(uint64_t a1)
{
  v2 = sub_222A3918C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222A37174(uint64_t a1)
{
  v2 = sub_222A39138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222A371B0(uint64_t a1)
{
  v2 = sub_222A39138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222A371EC(uint64_t a1)
{
  v2 = sub_222A391E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222A37228(uint64_t a1)
{
  v2 = sub_222A391E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriUserFeedbackLearningTaskResult.Status.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CEE8, &qword_222B05580);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = &v18 - v4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CEF0, &qword_222B05588);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v21 = &v18 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CEF8, &qword_222B05590);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF00, &qword_222B05598);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  v13 = v1[1];
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A390E4();
  sub_222B031B8();
  if (!v13)
  {
    v27 = 0;
    sub_222A391E0();
    sub_222B02EC8();
    (*(v19 + 8))(v8, v20);
    return (*(v10 + 8))(v12, v9);
  }

  if (v13 == 1)
  {
    v29 = 2;
    sub_222A39138();
    v14 = v23;
    sub_222B02EC8();
    (*(v25 + 8))(v14, v26);
    return (*(v10 + 8))(v12, v9);
  }

  v28 = 1;
  sub_222A3918C();
  v16 = v21;
  sub_222B02EC8();
  v17 = v24;
  sub_222B02EE8();
  (*(v22 + 8))(v16, v17);
  return (*(v10 + 8))(v12, v9);
}

uint64_t SiriUserFeedbackLearningTaskResult.Status.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF10, &qword_222B055A0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v37 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF18, &qword_222B055A8);
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF20, &qword_222B055B0);
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF28, &qword_222B055B8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_222A390E4();
  v15 = v45;
  sub_222B03198();
  if (!v15)
  {
    v16 = v44;
    v37 = v11;
    v45 = v13;
    v17 = sub_222B02EB8();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v17 + 32);
      if (v18 == 1 && v19 != 3)
      {
        if (*(v17 + 32))
        {
          if (v19 == 1)
          {
            v48 = 1;
            sub_222A3918C();
            v26 = v6;
            sub_222B02E58();
            v27 = v43;
            v28 = v38;
            v29 = sub_222B02E88();
            v30 = v37;
            v34 = v29;
            v36 = v35;
            (*(v42 + 8))(v26, v28);
            (*(v30 + 8))(v45, v10);
            swift_unknownObjectRelease();
LABEL_16:
            *v27 = v34;
            v27[1] = v36;
            return __swift_destroy_boxed_opaque_existential_0(v46);
          }

          v49 = 2;
          sub_222A39138();
          v32 = v45;
          sub_222B02E58();
          (*(v40 + 8))(v16, v41);
          (*(v37 + 8))(v32, v10);
          swift_unknownObjectRelease();
          v34 = 0;
          v36 = 1;
        }

        else
        {
          v47 = 0;
          sub_222A391E0();
          v31 = v45;
          sub_222B02E58();
          (*(v39 + 8))(v9, v7);
          (*(v37 + 8))(v31, v10);
          swift_unknownObjectRelease();
          v34 = 0;
          v36 = 0;
        }

        v27 = v43;
        goto LABEL_16;
      }
    }

    v21 = sub_222B02CF8();
    swift_allocError();
    v22 = v10;
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF30, &unk_222B055C0);
    *v24 = &type metadata for SiriUserFeedbackLearningTaskResult.Status;
    v25 = v45;
    sub_222B02E68();
    sub_222B02CD8();
    (*(*(v21 - 8) + 104))(v24, *MEMORY[0x277D84160], v21);
    swift_willThrow();
    (*(v37 + 8))(v25, v22);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v46);
}

uint64_t sub_222A37C48()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x73736563637573;
  }

  if (v1 == 1)
  {
    return 0x64657070696B73;
  }

  MEMORY[0x223DC66E0](*v0);
  return 0x3A6572756C696166;
}

uint64_t SiriUserFeedbackLearningTaskResult.status.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_222A39234(v2, v3);
}

void *SiriUserFeedbackLearningTaskResult.error.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t SiriUserFeedbackLearningTaskResult.description.getter()
{
  v1 = v0[1];
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0xE700000000000000;
      v3 = 0x64657070696B73;
    }

    else
    {
      MEMORY[0x223DC66E0](*v0);
      v3 = 0x3A6572756C696166;
      v2 = 0xE900000000000020;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x73736563637573;
  }

  MEMORY[0x223DC66E0](v3, v2);

  return 0x203A737574617473;
}

double SiriUserFeedbackLearningTaskResult.init(result:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    v7 = *a1;
    v8 = v3;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  SiriUserFeedbackLearningTaskResult.init(status:)(&v7, &v9);
  result = *&v9;
  v5 = v10;
  v6 = v11;
  *a2 = v9;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t SiriUserFeedbackLearningTaskResult.init(status:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_222B023C8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = *a1;
  v5 = a1[1];
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CBC458);
  sub_222A39234(v4, v5);
  v7 = sub_222B02128();
  v8 = sub_222B028D8();
  sub_222A39248(v4, v5);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_222A230FC(0x6174732874696E69, 0xED0000293A737574, &v35);
    *(v9 + 12) = 2080;
    if (v5)
    {
      if (v5 == 1)
      {
        v11 = 0xE700000000000000;
        v12 = 0x64657070696B73;
      }

      else
      {
        v36 = 0x3A6572756C696166;
        v37 = 0xE900000000000020;
        sub_222A39234(v4, v5);
        MEMORY[0x223DC66E0](v4, v5);
        sub_222A39248(v4, v5);
        v12 = v36;
        v11 = v37;
      }
    }

    else
    {
      v12 = 0x73736563637573;
      v11 = 0xE700000000000000;
    }

    v13 = sub_222A230FC(v12, v11, &v35);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_222A1C000, v7, v8, "SiriUserFeedbackLearningTaskResult.%s status: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v10, -1, -1);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  sub_222B01528();
  swift_allocObject();
  sub_222A39234(v4, v5);
  sub_222B01518();
  v36 = v4;
  v37 = v5;
  sub_222A3925C();
  v14 = sub_222B01508();
  v16 = v15;
  sub_222B023B8();
  v17 = sub_222B023A8();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    sub_222A39248(v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF38, &unk_222B0A520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222B05250;
    *(inited + 32) = 0x737574617473;
    v22 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v19;
    *(inited + 56) = v20;
    sub_222A396CC(inited);
    swift_setDeallocating();
    sub_222A34F20(v22, &qword_27D01CF40, &unk_222B055D0);
    v23 = objc_allocWithZone(MEMORY[0x277D25408]);
    v24 = sub_222B022A8();

    v25 = [v23 initWithJSONResult:v24 unprivatizedVector:0];
  }

  else
  {
    sub_222A39234(v4, v5);
    v26 = sub_222B02128();
    v27 = sub_222B028E8();
    sub_222A39248(v4, v5);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v28 = 136315138;
      if (v5)
      {
        if (v5 == 1)
        {
          v29 = 0xE700000000000000;
          v30 = 0x64657070696B73;
        }

        else
        {
          v36 = 0x3A6572756C696166;
          v37 = 0xE900000000000020;
          MEMORY[0x223DC66E0](v4, v5);
          sub_222A39248(v4, v5);
          v30 = v36;
          v29 = v37;
        }
      }

      else
      {
        v30 = 0x73736563637573;
        v29 = 0xE700000000000000;
      }

      v31 = sub_222A230FC(v30, v29, &v35);

      *(v28 + 4) = v31;
      _os_log_impl(&dword_222A1C000, v26, v27, "SiriUserFeedbackLearningTaskResult: Unable to encode %s to string", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x223DC7E30](v33, -1, -1);
      MEMORY[0x223DC7E30](v28, -1, -1);
    }

    else
    {
      sub_222A39248(v4, v5);
    }

    v25 = [objc_allocWithZone(MEMORY[0x277D25408]) initWithJSONResult:0 unprivatizedVector:0];
  }

  sub_222A26530(v14, v16);

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v25;
  a2[3] = 0;
  return result;
}

void SiriUserFeedbackLearningTaskResult.init(mlrTaskResult:error:)(void *a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = sub_222B023C8();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_222B01558();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v9 = sub_222B02148();
  __swift_project_value_buffer(v9, qword_280CBC458);
  v10 = a1;
  v11 = a2;
  v12 = sub_222B02128();
  v13 = sub_222B028D8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v59 = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_222A230FC(0xD00000000000001ALL, 0x8000000222B10790, &v59);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v10;
    *v16 = a1;
    *(v15 + 22) = 2112;
    v18 = v10;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v15 + 24) = v20;
    v16[1] = v21;
    _os_log_impl(&dword_222A1C000, v12, v13, "SiriUserFeedbackLearningTaskResult.%s mlrTaskResult: %@, error: %@", v15, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4B0, &qword_222B0A530);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223DC7E30](v17, -1, -1);
    MEMORY[0x223DC7E30](v15, -1, -1);

    a3 = v14;
    if (!a1)
    {
LABEL_20:
      v40 = a2;
      v41 = a2;
      v42 = sub_222B02128();
      v43 = sub_222B028E8();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        if (a2)
        {
          v46 = _swift_stdlib_bridgeErrorToNSError();
          v47 = v46;
        }

        else
        {
          v46 = 0;
          v47 = 0;
        }

        *(v44 + 4) = v46;
        *v45 = v47;
        _os_log_impl(&dword_222A1C000, v42, v43, "SiriUserFeedbackLearningTaskResult: MLR task result is nil, error: %@", v44, 0xCu);
        sub_222A34F20(v45, &qword_27D01E4B0, &qword_222B0A530);
        MEMORY[0x223DC7E30](v45, -1, -1);
        MEMORY[0x223DC7E30](v44, -1, -1);
      }

      else
      {
      }

      v22 = [objc_allocWithZone(MEMORY[0x277D25408]) initWithJSONResult:0 unprivatizedVector:0];
      v48 = 0xE000000000000000;
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_222B02C88();

      v59 = 0xD00000000000001ALL;
      v60 = 0x8000000222B10710;
      if (a2)
      {
        swift_getErrorValue();
        v49 = sub_222B030C8();
        v48 = v50;
      }

      else
      {
        v49 = 0;
      }

      MEMORY[0x223DC66E0](v49, v48);

      goto LABEL_30;
    }
  }

  else
  {

    if (!a1)
    {
      goto LABEL_20;
    }
  }

  v22 = v10;
  v23 = [v22 JSONResult];
  if (v23)
  {
    v24 = v23;
    v25 = sub_222B022B8();

    if (*(v25 + 16) && (v26 = sub_222A26EC8(0x737574617473, 0xE600000000000000), (v27 & 1) != 0))
    {
      sub_222A25344(*(v25 + 56) + 32 * v26, &v59);

      if (swift_dynamicCast())
      {
        v59 = v57;
        v60 = v58;
        v28 = v51;
        sub_222B01538();
        sub_222A397FC();
        sub_222B02B88();
        (*(v52 + 8))(v28, v53);

        v29 = v54;
        sub_222B023B8();
        v53 = sub_222B02398();
        v31 = v30;

        (*(v55 + 8))(v29, v56);
        if (v31 >> 60 != 15)
        {

          sub_222B014C8();
          swift_allocObject();
          sub_222B014B8();
          sub_222A39850();
          v32 = v53;
          sub_222B014A8();

          sub_222A398A4(v32, v31);
LABEL_30:
          v39 = v59;
          v38 = v60;
          goto LABEL_31;
        }
      }
    }

    else
    {
    }
  }

  v22 = v22;
  v33 = sub_222B02128();
  v34 = sub_222B028E8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v59 = v37;
    *v35 = 138412546;
    *(v35 + 4) = v22;
    *v36 = a1;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_222A230FC(0x737574617473, 0xE600000000000000, &v59);
    _os_log_impl(&dword_222A1C000, v33, v34, "SiriUserFeedbackLearningTaskResult: Unable to get json result value from %@ for parameter: %s", v35, 0x16u);
    sub_222A34F20(v36, &qword_27D01E4B0, &qword_222B0A530);
    MEMORY[0x223DC7E30](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x223DC7E30](v37, -1, -1);
    MEMORY[0x223DC7E30](v35, -1, -1);
  }

  else
  {
  }

  v38 = 0x8000000222B10730;
  v39 = 0xD000000000000026;
LABEL_31:
  *a3 = v39;
  a3[1] = v38;
  a3[2] = v22;
  a3[3] = a2;
}

uint64_t static SiriUserFeedbackLearningTaskResult.toPrivateLearningPluginResult(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4 > 1)
  {
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return sub_222A39234(v3, v4);
}

uint64_t sub_222A38E80(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void sub_222A38ED8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t _s28SiriPrivateLearningAnalytics0a12UserFeedbackC10TaskResultV6StatusO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_222A39248(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_222A39248(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_222B02F78();
      sub_222A39234(v4, v5);
      sub_222A39234(v2, v3);
      sub_222A39248(v2, v3);
      sub_222A39248(v4, v5);
      return v11 & 1;
    }

    sub_222A39234(v9, v3);
    sub_222A39234(v2, v3);
    sub_222A39248(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_222A39234(*a2, a2[1]);
    sub_222A39234(v2, v3);
    sub_222A39248(v2, v3);
    sub_222A39248(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_222A39248(*a1, 1uLL);
  sub_222A39248(v4, 1uLL);
  return v6;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_222A390E4()
{
  result = qword_280CBA5F0;
  if (!qword_280CBA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA5F0);
  }

  return result;
}

unint64_t sub_222A39138()
{
  result = qword_280CBA5C8;
  if (!qword_280CBA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA5C8);
  }

  return result;
}

unint64_t sub_222A3918C()
{
  result = qword_27D01CF08;
  if (!qword_27D01CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01CF08);
  }

  return result;
}

unint64_t sub_222A391E0()
{
  result = qword_280CBA5B0;
  if (!qword_280CBA5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA5B0);
  }

  return result;
}

uint64_t sub_222A39234(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_222A39248(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_222A3925C()
{
  result = qword_280CBA1C0;
  if (!qword_280CBA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA1C0);
  }

  return result;
}

unint64_t sub_222A392B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF58, &qword_222B05B68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CD70, &qword_222B05B70);
    v7 = sub_222B02DF8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_222A34E48(v9, v5, &qword_27D01CF58, &qword_222B05B68);
      result = sub_222A26F40(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_222B018D8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_222A394C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_222B02DF8();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_222A2E3A4();
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 56);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 4 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 2);
    v17 = *v12;

    v10 = sub_222A2E3A4();
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_222A395C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF80, &qword_222B05B98);
    v3 = sub_222B02DF8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      j__swift_bridgeObjectRetain(v6);
      result = sub_222A26FC4(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 16 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_222A396CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF98, &unk_222B05BC0);
    v3 = sub_222B02DF8();
    v4 = a1 + 32;

    while (1)
    {
      sub_222A34E48(v4, &v13, &qword_27D01CF40, &unk_222B055D0);
      v5 = v13;
      v6 = v14;
      result = sub_222A26EC8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_222A250AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_222A397FC()
{
  result = qword_280CBA5F8;
  if (!qword_280CBA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA5F8);
  }

  return result;
}

unint64_t sub_222A39850()
{
  result = qword_280CBA1B8;
  if (!qword_280CBA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA1B8);
  }

  return result;
}

uint64_t sub_222A398A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_222A26530(result, a2);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningAnalytics0a12UserFeedbackC10TaskResultV6StatusO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_222A398DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_222A39924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222A39974(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222A399C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_222A39A24(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriUserFeedbackLearningTaskResult.Status.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriUserFeedbackLearningTaskResult.Status.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222A39BD8()
{
  result = qword_27D01CF48;
  if (!qword_27D01CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01CF48);
  }

  return result;
}

unint64_t sub_222A39C30()
{
  result = qword_27D01CF50;
  if (!qword_27D01CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01CF50);
  }

  return result;
}

unint64_t sub_222A39C88()
{
  result = qword_280CBA5A0;
  if (!qword_280CBA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA5A0);
  }

  return result;
}

unint64_t sub_222A39CE0()
{
  result = qword_280CBA5A8;
  if (!qword_280CBA5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA5A8);
  }

  return result;
}

unint64_t sub_222A39D38()
{
  result = qword_280CBA5D0;
  if (!qword_280CBA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA5D0);
  }

  return result;
}

unint64_t sub_222A39D90()
{
  result = qword_280CBA5D8;
  if (!qword_280CBA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA5D8);
  }

  return result;
}

unint64_t sub_222A39DE8()
{
  result = qword_280CBA5B8;
  if (!qword_280CBA5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA5B8);
  }

  return result;
}

unint64_t sub_222A39E40()
{
  result = qword_280CBA5C0;
  if (!qword_280CBA5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA5C0);
  }

  return result;
}

unint64_t sub_222A39E98()
{
  result = qword_280CBA5E0;
  if (!qword_280CBA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA5E0);
  }

  return result;
}

unint64_t sub_222A39EF0()
{
  result = qword_280CBA5E8;
  if (!qword_280CBA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA5E8);
  }

  return result;
}

unint64_t sub_222A39F44(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CDC0, &qword_222B05BA0);
  v3 = sub_222B02DF8();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_222A270C0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_222A270C0(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_222A3A040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF90, &qword_222B05BB8);
  v3 = sub_222B02DF8();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_222A2E3A4();
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_222A2E3A4();
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_222A3A154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CDB0, &qword_222B04F18);
    v3 = sub_222B02DF8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_222A26EC8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_222A3A288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF88, &qword_222B05BA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CDD0, &qword_222B05BB0);
    v7 = sub_222B02DF8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_222A34E48(v9, v5, &qword_27D01CF88, &qword_222B05BA8);
      result = sub_222A26F40(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_222B018D8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_222A3A470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CDB8, &unk_222B04F20);
  v3 = sub_222B02DF8();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_222A27244(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_222A27244(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_222A3A580(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF70, &qword_222B05B88);
    v3 = sub_222B02DF8();
    for (i = a1 + 32; ; i += 48)
    {
      sub_222A34E48(i, v11, &qword_27D01CF78, &qword_222B05B90);
      v5 = v11[0];
      result = sub_222A27244(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_222A1E5A8(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_222A3A6A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF68, &qword_222B05B80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CD58, &qword_222B04EC0);
    v7 = sub_222B02DF8();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_222A34E48(v9, v5, &qword_27D01CF68, &qword_222B05B80);
      result = sub_222A26F40(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_222B018D8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 16 * v13;
      v17 = v8[1];
      v18 = v8[2];
      v19 = v8[3];
      v20 = *(v8 + 1);
      *v16 = *v8;
      *(v16 + 1) = v17;
      *(v16 + 2) = v18;
      *(v16 + 3) = v19;
      *(v16 + 8) = v20;
      v21 = v7[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v7[2] = v23;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_222A3A8D4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_222B02DF8();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_222A34E48(v16, v12, a2, v27);
      result = sub_222A26F40(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_222B018D8();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

unint64_t sub_222A3AAB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CD28, &qword_222B04E90);
    v3 = sub_222B02DF8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_222A272B4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_222A3ABA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_222B02DF8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_222A26EC8(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_222A3ACA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CD98, &qword_222B04F00);
    v3 = sub_222B02DF8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_222A26EC8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_222A3ADB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_222B02F78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000 || (sub_222B02F78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657070696B73 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_222B02F78();

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

const char *SiriPrivateLearningFeatureFlag.feature.getter()
{
  result = "AnalyticsEvents";
  switch(*v0)
  {
    case 1:
      result = "EntityRestatements";
      break;
    case 2:
      result = "TMDCRuntime";
      break;
    case 3:
      result = "TMDCRuntimeCall";
      break;
    case 4:
      result = "TMDCRuntimeMessage";
      break;
    case 5:
      result = "TMDCRuntimeCorrections";
      break;
    case 6:
      result = "TMDCRuntimeLocalStorage";
      break;
    case 7:
      result = "RECTIFIPatternExtraction";
      break;
    case 8:
      result = "PIMSShadowLogging";
      break;
    case 9:
      result = "PIMSRuntime";
      break;
    case 0xA:
      result = "PIMSInAppFollowup";
      break;
    case 0xB:
      result = "PICSAdaptiveSuggestionGeneration";
      break;
    case 0xC:
      result = "AIMLInstrumentationStreamsTurns";
      break;
    case 0xD:
      result = "MLRuntimePluginHosting";
      break;
    case 0xE:
      result = "UniversalUserFeedbackOfflineLearning";
      break;
    case 0xF:
      result = "UniversalUserFeedbackSurfacing";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SiriPrivateLearningFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC7380](v1);
  return sub_222B03168();
}

unint64_t sub_222A3B0B8()
{
  result = qword_27D01CFA0;
  if (!qword_27D01CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01CFA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriPrivateLearningFeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriPrivateLearningFeatureFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id ASRLogLinks.rawRecognitionLinkId.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *ASRLogLinks.postITNLinkID.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

_OWORD *ASRFeatureExtractor.__allocating_init()()
{
  v0 = sub_222B01988();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = swift_allocObject();
  v4 = [objc_opt_self() currentLocale];
  sub_222B01918();

  v5 = [objc_opt_self() sharedPreferences];
  CurrentLocales.init(deviceLocale:siriPreferences:)(v2, v5, v10);
  v6 = v10[5];
  v3[5] = v10[4];
  v3[6] = v6;
  v3[7] = v10[6];
  v7 = v10[1];
  v3[1] = v10[0];
  v3[2] = v7;
  v8 = v10[3];
  v3[3] = v10[2];
  v3[4] = v8;
  return v3;
}

_OWORD *ASRFeatureExtractor.init()()
{
  v1 = sub_222B01988();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentLocale];
  sub_222B01918();

  v5 = [objc_opt_self() sharedPreferences];
  CurrentLocales.init(deviceLocale:siriPreferences:)(v3, v5, v10);
  v6 = v10[5];
  v0[5] = v10[4];
  v0[6] = v6;
  v0[7] = v10[6];
  v7 = v10[1];
  v0[1] = v10[0];
  v0[2] = v7;
  v8 = v10[3];
  v0[3] = v10[2];
  v0[4] = v8;
  return v0;
}

unint64_t sub_222A3B4EC(unint64_t result, unint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    if (a2 >> 62)
    {
      v2 = result;
      v3 = a2;
      v4 = sub_222B02DC8();
      a2 = v3;
      v5 = v4;
      result = v2;
      if (v5 > v2)
      {
LABEL_4:
        if ((a2 & 0xC000000000000001) != 0)
        {
          return MEMORY[0x223DC6F00]();
        }

        if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
        {
          return *(a2 + 8 * result + 32);
        }

        __break(1u);
        return result;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      goto LABEL_4;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CBC458);
  v7 = sub_222B02128();
  v8 = sub_222B028E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222A1C000, v7, v8, "[ASRFeatureExtractor] Error joining recognition tokens by their indices. ", v9, 2u);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  sub_222A3DEF0();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_222A3B680(unint64_t a1)
{
  v3 = MEMORY[0x223DC7570]();
  v4 = MEMORY[0x223DC7570]();
  sub_222A3B7A8(a1, v1, &v7);
  objc_autoreleasePoolPop(v4);
  v5 = v7;

  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_222A3B724(unint64_t a1)
{
  v3 = MEMORY[0x223DC7570]();
  sub_222A3B7A8(a1, v1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_222A3B7A8@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v142 = a3;
  v3 = a1;
  *&v173 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_154;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222B02DC8())
  {
    v6 = MEMORY[0x277D84F90];
    if (i)
    {
      v7 = 0;
      v180 = (v3 & 0xC000000000000001);
      v8 = MEMORY[0x277D84F90];
      v151 = v3;
      v154 = v4;
      v156 = i;
      while (1)
      {
        v9 = v7;
        while (1)
        {
          if (v180)
          {
            v10 = MEMORY[0x223DC6F00](v9, v3);
          }

          else
          {
            if (v9 >= *(v4 + 16))
            {
              goto LABEL_149;
            }

            v10 = *(v3 + 8 * v9 + 32);
          }

          v11 = v10;
          v7 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
            goto LABEL_150;
          }

          if ([v10 anyEventType] == 6)
          {
            v12 = [v11 payload];
            if (v12)
            {
              v13 = v12;
              v14 = sub_222B01798();
              v16 = v15;

              v17 = sub_222B01788();
              sub_222A26530(v14, v16);
            }

            else
            {
              v17 = 0;
            }

            v19 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

            if (!v19 || (v18 = [v19 event], v19, !v18))
            {
              v18 = v11;
              goto LABEL_26;
            }
          }

          else
          {
            v18 = v11;
          }

          v20 = sub_222A250BC(0, &unk_280CB4B48, 0x277D56858);
          [v18 anyEventType];
          v21 = sub_222B02A28();
          if (!v21 || v20 != v21)
          {

            goto LABEL_26;
          }

          v22 = [v18 payload];
          if (v22)
          {
            v23 = v22;
            v24 = sub_222B01798();
            v26 = v25;

            v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v28 = sub_222B01788();
            v29 = v24;
            v30 = v26;
            v3 = v151;
            v4 = v154;
            sub_222A26530(v29, v30);
            v31 = v27;
          }

          else
          {
            v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v28 = 0;
          }

          v32 = [v31 initWithData_];

          if (!v32)
          {
            goto LABEL_27;
          }

          objc_opt_self();
          v18 = v32;
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

LABEL_26:

LABEL_27:
          ++v9;
          if (v7 == v156)
          {
            v6 = MEMORY[0x277D84F90];
            goto LABEL_35;
          }
        }

        MEMORY[0x223DC6810]();
        if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
          v3 = v151;
        }

        sub_222B02688();
        v8 = v173;
        v4 = v154;
        v6 = MEMORY[0x277D84F90];
        if (v7 == v156)
        {
          goto LABEL_35;
        }
      }
    }

    v8 = MEMORY[0x277D84F90];
LABEL_35:
    *&v173 = v6;
    v3 = v8 & 0xFFFFFFFFFFFFFF8;
    v180 = v8 >> 62 ? sub_222B02DC8() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = 0;
    v157 = v8 & 0xC000000000000001;
    v34 = MEMORY[0x277D84F90];
    v152 = MEMORY[0x277D84F90];
    while (v180 != v33)
    {
      if (v157)
      {
        v35 = MEMORY[0x223DC6F00](v33, v8);
      }

      else
      {
        if (v33 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_145;
        }

        v35 = *(v8 + 8 * v33 + 32);
      }

      v36 = v35;
      v37 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      v38 = [v35 packageGenerated];

      ++v33;
      if (v38)
      {
        MEMORY[0x223DC6810]();
        if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v4 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222B02648();
        }

        sub_222B02688();
        v152 = v173;
        v33 = v37;
      }
    }

    *&v173 = v34;
    v39 = v152;
    v40 = v152 >> 62 ? sub_222B02DC8() : *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = MEMORY[0x277D84F90];
    if (!v40)
    {
      break;
    }

    v42 = 0;
    v3 = v152 & 0xC000000000000001;
    v43 = v152 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v3)
      {
        v44 = MEMORY[0x223DC6F00](v42, v39);
      }

      else
      {
        if (v42 >= *(v43 + 16))
        {
          goto LABEL_151;
        }

        v44 = *(v39 + 8 * v42 + 32);
      }

      v45 = v44;
      v4 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if ([v44 isFinal])
      {
        sub_222B02D18();
        sub_222B02D48();
        v43 = v152 & 0xFFFFFFFFFFFFFF8;
        sub_222B02D58();
        sub_222B02D28();
        v39 = v152;
      }

      else
      {
      }

      ++v42;
      if (v4 == v40)
      {
        v4 = v173;
        goto LABEL_63;
      }
    }

LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_63:

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v46 = sub_222B02148();
  __swift_project_value_buffer(v46, qword_280CBC458);

  v47 = sub_222B02128();
  v3 = sub_222B028C8();
  if (os_log_type_enabled(v47, v3))
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    if ((v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
    {
      v49 = sub_222B02DC8();
    }

    else
    {
      v49 = *(v4 + 16);
    }

    *(v48 + 4) = v49;

    _os_log_impl(&dword_222A1C000, v47, v3, "[ASRFeatureExtractor] ASR final package events count: %ld", v48, 0xCu);
    MEMORY[0x223DC7E30](v48, -1, -1);
  }

  else
  {
  }

  v50 = 0;
  *&v173 = v41;
  while (v180 != v50)
  {
    if (v157)
    {
      v51 = MEMORY[0x223DC6F00](v50, v8);
    }

    else
    {
      if (v50 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_147;
      }

      v51 = *(v8 + 8 * v50 + 32);
    }

    v52 = v51;
    v53 = (v50 + 1);
    if (__OFADD__(v50, 1))
    {
      goto LABEL_146;
    }

    v3 = [v51 recognitionResultTier1];

    ++v50;
    if (v3)
    {
      MEMORY[0x223DC6810]();
      if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222B02648();
      }

      sub_222B02688();
      v41 = v173;
      v50 = v53;
    }
  }

  v54 = sub_222B02128();
  v55 = sub_222B028C8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = v4;
    v57 = swift_slowAlloc();
    *v57 = 134217984;
    if (v41 >> 62)
    {
      v58 = sub_222B02DC8();
    }

    else
    {
      v58 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v57 + 4) = v58;

    _os_log_impl(&dword_222A1C000, v54, v55, "[ASRFeatureExtractor] ASR recognition events count: %ld", v57, 0xCu);
    MEMORY[0x223DC7E30](v57, -1, -1);

    v4 = v56;
  }

  else
  {
  }

  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v59 = *(v4 + 16);
    if (v59)
    {
      goto LABEL_90;
    }

LABEL_158:

    v141 = MEMORY[0x277D84F90];
    v61 = MEMORY[0x277D84F90];
    goto LABEL_159;
  }

  v59 = sub_222B02DC8();
  if (!v59)
  {
    goto LABEL_158;
  }

LABEL_90:
  v60 = 0;
  v145 = v4 & 0xC000000000000001;
  v61 = MEMORY[0x277D84F90];
  v155 = v41;
  v158 = MEMORY[0x277D84F90];
  v143 = v59;
  v144 = v4;
  while (2)
  {
    if (v145)
    {
      v180 = MEMORY[0x223DC6F00](v60, v4);
      v3 = v158;
      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_152;
      }
    }

    else
    {
      v3 = v158;
      if (v60 >= *(v4 + 16))
      {
        goto LABEL_153;
      }

      v180 = *(v4 + 8 * v60 + 32);
      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_152;
      }
    }

    v153 = v60;
    v63 = v180;
    v64 = [v180 package];
    v65 = [v64 postItn];

    v66 = [v65 linkId];
    v67 = [v63 package];
    v68 = [v67 rawRecognition];

    v69 = [v68 linkId];
    v70 = v69;
    v149 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_222AA9000(0, *(v3 + 16) + 1, 1, v3);
    }

    v72 = *(v3 + 16);
    v71 = *(v3 + 24);
    v150 = v62;
    v73 = v70;
    if (v72 >= v71 >> 1)
    {
      v3 = sub_222AA9000((v71 > 1), v72 + 1, 1, v3);
    }

    *(v3 + 16) = v72 + 1;
    v158 = v3;
    v74 = v3 + 16 * v72;
    *(v74 + 32) = v69;
    *(v74 + 40) = v66;
    v75 = v180;
    v76 = [v180 package];
    v77 = [v76 postItn];

    v78 = sub_222A3D29C(v77);

    v79 = [v75 package];
    v80 = [v79 rawRecognition];

    v81 = sub_222A3D29C(v80);
    v147 = v82;

    v83 = sub_222A3D8B8(v155, v66, v78);
    v85 = v84;

    v148 = v73;
    if (!v83[2])
    {

      v105 = v155;
      if (*(v85 + 16))
      {
        goto LABEL_113;
      }

      goto LABEL_119;
    }

    v86 = type metadata accessor for ASRBestPostITNUtterance(0);
    v87 = swift_allocObject();
    *(v87 + 16) = v83;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_222AA8FDC(0, v61[2] + 1, 1, v61);
    }

    v89 = v61[2];
    v88 = v61[3];
    if (v89 >= v88 >> 1)
    {
      v61 = sub_222AA8FDC((v88 > 1), v89 + 1, 1, v61);
    }

    *(&v174 + 1) = v86;
    *&v175 = sub_222A3DE9C(&qword_27D01D018, type metadata accessor for ASRBestPostITNUtterance);
    *&v173 = v87;
    v61[2] = v89 + 1;
    sub_222A2577C(&v173, &v61[5 * v89 + 4]);
    v90 = sub_222B02128();
    v91 = sub_222B028E8();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_222A1C000, v90, v91, "[ASRFeatureExtractor] Attempting to trim wake words for ASRBestPostITNUtterance...", v92, 2u);
      MEMORY[0x223DC7E30](v92, -1, -1);
    }

    v93 = a2[4];
    v94 = a2[6];
    v170 = a2[5];
    v171 = v94;
    v95 = a2[6];
    v172 = a2[7];
    v96 = a2[2];
    v166 = a2[1];
    v167 = v96;
    v97 = a2[4];
    v99 = a2[1];
    v98 = a2[2];
    v168 = a2[3];
    v169 = v97;
    v163 = v170;
    v164 = v95;
    v165 = a2[7];
    v159 = v99;
    v160 = v98;
    v161 = v168;
    v162 = v93;
    sub_222A3DDEC(&v166, &v173);
    v100 = WakeWordTrimmer.trim(tokens:)(v83);

    v177 = v163;
    v178 = v164;
    v179 = v165;
    v173 = v159;
    v174 = v160;
    v175 = v161;
    v176 = v162;
    sub_222A3DE48(&v173);
    v101 = type metadata accessor for ASRBestPostITNTrimmedUtterance(0);
    v102 = swift_allocObject();
    *(v102 + 16) = v100;
    v104 = v61[2];
    v103 = v61[3];
    if (v104 >= v103 >> 1)
    {
      v61 = sub_222AA8FDC((v103 > 1), v104 + 1, 1, v61);
    }

    v105 = v155;
    *(&v160 + 1) = v101;
    *&v161 = sub_222A3DE9C(&qword_27D01D020, type metadata accessor for ASRBestPostITNTrimmedUtterance);
    *&v159 = v102;
    v61[2] = v104 + 1;
    sub_222A2577C(&v159, &v61[5 * v104 + 4]);
    if (!*(v85 + 16))
    {
LABEL_119:

      goto LABEL_120;
    }

LABEL_113:
    v106 = type metadata accessor for ASRBestPostITNPhonemes(0);
    v107 = swift_allocObject();
    *(v107 + 16) = v85;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_222AA8FDC(0, v61[2] + 1, 1, v61);
    }

    v109 = v61[2];
    v108 = v61[3];
    if (v109 >= v108 >> 1)
    {
      v61 = sub_222AA8FDC((v108 > 1), v109 + 1, 1, v61);
    }

    *(&v174 + 1) = v106;
    *&v175 = sub_222A3DE9C(&qword_27D01D028, type metadata accessor for ASRBestPostITNPhonemes);
    *&v173 = v107;
    v61[2] = v109 + 1;
    sub_222A2577C(&v173, &v61[5 * v109 + 4]);
LABEL_120:
    v110 = sub_222A3D8B8(v105, v69, v81);
    v112 = v111;

    if (!v110[2])
    {

      if (*(v112 + 16))
      {
        goto LABEL_130;
      }

      goto LABEL_136;
    }

    v113 = type metadata accessor for ASRBestRawRecognitionUtterance(0);
    v114 = swift_allocObject();
    *(v114 + 16) = v110;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_222AA8FDC(0, v61[2] + 1, 1, v61);
    }

    v116 = v61[2];
    v115 = v61[3];
    if (v116 >= v115 >> 1)
    {
      v61 = sub_222AA8FDC((v115 > 1), v116 + 1, 1, v61);
    }

    *(&v174 + 1) = v113;
    *&v175 = sub_222A3DE9C(&qword_27D01D030, type metadata accessor for ASRBestRawRecognitionUtterance);
    *&v173 = v114;
    v61[2] = v116 + 1;
    sub_222A2577C(&v173, &v61[5 * v116 + 4]);
    v117 = sub_222B02128();
    v118 = sub_222B028E8();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_222A1C000, v117, v118, "[ASRFeatureExtractor] Attempting to trim wake words for ASRBestRawRecognitionUtterance...", v119, 2u);
      MEMORY[0x223DC7E30](v119, -1, -1);
    }

    v120 = a2[4];
    v121 = a2[6];
    v170 = a2[5];
    v171 = v121;
    v122 = a2[6];
    v172 = a2[7];
    v123 = a2[2];
    v166 = a2[1];
    v167 = v123;
    v124 = a2[4];
    v126 = a2[1];
    v125 = a2[2];
    v168 = a2[3];
    v169 = v124;
    v163 = v170;
    v164 = v122;
    v165 = a2[7];
    v159 = v126;
    v160 = v125;
    v161 = v168;
    v162 = v120;
    sub_222A3DDEC(&v166, &v173);
    v127 = WakeWordTrimmer.trim(tokens:)(v110);

    v177 = v163;
    v178 = v164;
    v179 = v165;
    v173 = v159;
    v174 = v160;
    v175 = v161;
    v176 = v162;
    sub_222A3DE48(&v173);
    v128 = type metadata accessor for ASRBestRawRecognitionTrimmedUtterance(0);
    v129 = swift_allocObject();
    *(v129 + 16) = v127;
    v131 = v61[2];
    v130 = v61[3];
    if (v131 >= v130 >> 1)
    {
      v61 = sub_222AA8FDC((v130 > 1), v131 + 1, 1, v61);
    }

    *(&v160 + 1) = v128;
    *&v161 = sub_222A3DE9C(&qword_27D01D038, type metadata accessor for ASRBestRawRecognitionTrimmedUtterance);
    *&v159 = v129;
    v61[2] = v131 + 1;
    sub_222A2577C(&v159, &v61[5 * v131 + 4]);
    if (!*(v112 + 16))
    {
LABEL_136:

      goto LABEL_137;
    }

LABEL_130:
    v132 = type metadata accessor for ASRBestRawRecognitionPhonemes(0);
    v133 = swift_allocObject();
    *(v133 + 16) = v112;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_222AA8FDC(0, v61[2] + 1, 1, v61);
    }

    v135 = v61[2];
    v134 = v61[3];
    if (v135 >= v134 >> 1)
    {
      v61 = sub_222AA8FDC((v134 > 1), v135 + 1, 1, v61);
    }

    *(&v174 + 1) = v132;
    *&v175 = sub_222A3DE9C(&qword_27D01D040, type metadata accessor for ASRBestRawRecognitionPhonemes);
    *&v173 = v133;
    v61[2] = v135 + 1;
    sub_222A2577C(&v173, &v61[5 * v135 + 4]);
LABEL_137:
    if (*(v147 + 16))
    {
      v136 = type metadata accessor for ASRBestRawRecognitionConfidence(0);
      v137 = swift_allocObject();
      *(v137 + 16) = v147;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_222AA8FDC(0, v61[2] + 1, 1, v61);
      }

      v139 = v61[2];
      v138 = v61[3];
      if (v139 >= v138 >> 1)
      {
        v61 = sub_222AA8FDC((v138 > 1), v139 + 1, 1, v61);
      }

      *(&v174 + 1) = v136;
      *&v175 = sub_222A3DE9C(&qword_27D01D048, type metadata accessor for ASRBestRawRecognitionConfidence);
      *&v173 = v137;
      v61[2] = v139 + 1;
      sub_222A2577C(&v173, &v61[5 * v139 + 4]);
    }

    else
    {
    }

    v60 = v153 + 1;
    v4 = v144;
    if (v150 != v143)
    {
      continue;
    }

    break;
  }

  v141 = v158;
LABEL_159:
  *v142 = v61;
  v142[1] = v141;
  return result;
}

uint64_t ASRBestPostITNPhonemes.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  return sub_222A3CEDC(a1, &qword_27D01CFA8, &qword_222B05DE0);
}

void *ASRFeatureExtractor.deinit()
{

  return v0;
}

uint64_t ASRFeatureExtractor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222A3CC5C(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_222A3CCC0(uint64_t *a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  a2(0);
  result = swift_allocObject();
  if (v6)
  {
    *(result + 16) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t ASRBestPostITNPhonemes.init(value:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  return sub_222A3CF68(a1, &qword_27D01CFA8, &qword_222B05DE0);
}

uint64_t ASRBestPostITNPhonemes.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222A3CEDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t sub_222A3CF68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a1)
  {
    *(v3 + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_222A3CFB8(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_222A3D014(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t dispatch thunk of ASRFeatureExtractor.extract(from:)()
{
  return (*(*v0 + 96))();
}

{
  return (*(*v0 + 104))();
}

uint64_t sub_222A3D1EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222A3D29C(void *a1)
{
  v1 = MEMORY[0x277D84F90];
  v60[1] = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  if (!a1)
  {
    v53 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_60;
    }

    goto LABEL_8;
  }

  v3 = [a1 utterances];
  if (v3)
  {
    v4 = v3;
    sub_222A250BC(0, &qword_27D01D080, 0x277D56AB0);
    v1 = sub_222B025F8();
  }

  v5 = [a1 phrases];
  if (!v5)
  {
    v53 = MEMORY[0x277D84F90];
    if (v1 >> 62)
    {
      goto LABEL_60;
    }

LABEL_8:
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_61:

      v50 = MEMORY[0x277D84F90];
      goto LABEL_66;
    }

    goto LABEL_9;
  }

  v6 = v5;
  sub_222A250BC(0, &qword_27D01D078, 0x277D56A00);
  v53 = sub_222B025F8();

  if (!(v1 >> 62))
  {
    goto LABEL_8;
  }

LABEL_60:
  result = sub_222B02DC8();
  if (!result)
  {
    goto LABEL_61;
  }

LABEL_9:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_73;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  for (i = *(v1 + 32); ; i = MEMORY[0x223DC6F00](0, v1))
  {
    v9 = i;

    v52 = v9;
    v10 = [v9 interpretationIndices];
    if (v10)
    {
      v11 = v10;
      sub_222A250BC(0, &qword_280CB8400, 0x277CCABB0);
      v12 = sub_222B025F8();

      if (!(v12 >> 62))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_14:
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_15;
      }
    }

    v13 = sub_222B02DC8();
LABEL_15:
    if (!v13)
    {
      break;
    }

    v14 = v12;
    v1 = 0;
    v15 = v14 & 0xC000000000000001;
    v16 = v14 & 0xFFFFFFFFFFFFFF8;
    v51 = v14;
    v17 = v14 + 32;
    v18 = v53 & 0xC000000000000001;
    v19 = v53 & 0xFFFFFFFFFFFFFF8;
    v57 = v14 + 32;
    v55 = v14 & 0xC000000000000001;
    v56 = v13;
    v54 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v15)
      {
        v20 = MEMORY[0x223DC6F00](v1, v51);
      }

      else
      {
        if (v1 >= *(v16 + 16))
        {
          goto LABEL_68;
        }

        v20 = *(v17 + 8 * v1);
      }

      v59 = v20;
      v21 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v18)
      {
        v22 = MEMORY[0x223DC6F00](v1, v53);
      }

      else
      {
        if (v1 >= *(v19 + 16))
        {
          goto LABEL_69;
        }

        v22 = *(v53 + 32 + 8 * v1);
      }

      v23 = v22;
      v24 = [v22 interpretations];

      if (v24)
      {
        sub_222A250BC(0, &qword_27D01D068, 0x277D56968);
        v25 = sub_222B025F8();

        v1 = v59;
        v26 = [v59 integerValue];
        if ((v25 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x223DC6F00](v26, v25);
        }

        else
        {
          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          if (v26 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }

          v27 = *(v25 + 8 * v26 + 32);
        }

        v28 = v27;

        v29 = [v28 tokens];
        if (v29)
        {
          v30 = v29;
          v58 = v28;
          sub_222A250BC(0, &qword_27D01D070, 0x277D56AA0);
          v31 = sub_222B025F8();

          if (v31 >> 62)
          {
            v32 = sub_222B02DC8();
          }

          else
          {
            v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v33 = v28;
          v34 = MEMORY[0x277D84F90];
          if (v32)
          {
            v60[0] = MEMORY[0x277D84F90];
            v1 = v60;
            sub_222A23B54(0, v32 & ~(v32 >> 63), 0);
            if (v32 < 0)
            {
              goto LABEL_72;
            }

            v35 = 0;
            v36 = v60[0];
            v37 = v31 & 0xC000000000000001;
            do
            {
              if (v37)
              {
                v38 = MEMORY[0x223DC6F00](v35, v31);
              }

              else
              {
                v38 = *(v31 + 8 * v35 + 32);
              }

              v39 = v38;
              v40 = [v38 linkIndex];

              v60[0] = v36;
              v42 = *(v36 + 16);
              v41 = *(v36 + 24);
              if (v42 >= v41 >> 1)
              {
                sub_222A23B54((v41 > 1), v42 + 1, 1);
                v36 = v60[0];
              }

              ++v35;
              *(v36 + 16) = v42 + 1;
              *(v36 + 8 * v42 + 32) = v40;
            }

            while (v32 != v35);
            sub_222A96AB0(v36);
            v60[0] = MEMORY[0x277D84F90];
            sub_222A23B24(0, v32 & ~(v32 >> 63), 0);
            v43 = 0;
            v44 = v60[0];
            do
            {
              if (v37)
              {
                v45 = MEMORY[0x223DC6F00](v43, v31);
              }

              else
              {
                v45 = *(v31 + 8 * v43 + 32);
              }

              v46 = v45;
              v47 = [v45 confidence];

              v60[0] = v44;
              v49 = *(v44 + 16);
              v48 = *(v44 + 24);
              if (v49 >= v48 >> 1)
              {
                sub_222A23B24((v48 > 1), v49 + 1, 1);
                v44 = v60[0];
              }

              ++v43;
              *(v44 + 16) = v49 + 1;
              *(v44 + 8 * v49 + 32) = v47;
            }

            while (v32 != v43);

            v15 = v55;
            v13 = v56;
            v16 = v54;
            v33 = v58;
          }

          else
          {
            sub_222A96AB0(MEMORY[0x277D84F90]);

            v44 = v34;
          }

          sub_222A96AC8(v44);
          v28 = v59;
          v1 = v33;
          v18 = v53 & 0xC000000000000001;
          v17 = v57;
          v19 = v53 & 0xFFFFFFFFFFFFFF8;
        }
      }

      else
      {
        v1 = v59;
      }

      v1 = v21;
      if (v21 == v13)
      {
        v50 = v61;
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    ;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_65:

LABEL_66:

  return v50;
}

uint64_t sub_222A3D8B8(unint64_t a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1 >> 62)
  {
LABEL_49:
    v44 = a2;
    v45 = sub_222B02DC8();
    a2 = v44;
    v4 = v45;
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = a2;
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223DC6F00](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v9 = [v6 linkId];
      if (v9)
      {
        v10 = v9;
        sub_222A250BC(0, &qword_27D01D050, 0x277D5AC78);
        v11 = v48;
        v12 = sub_222B02AE8();

        if (v12)
        {
          break;
        }
      }

      ++v5;
      if (v8 == v4)
      {
        goto LABEL_15;
      }
    }

    v15 = [v7 tokens];
    if (v15)
    {
      v16 = v15;
      sub_222A250BC(0, &qword_27D01D058, 0x277D56AA8);
      v17 = sub_222B025F8();
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a3 + 16);
    if (v18)
    {
      v50 = MEMORY[0x277D84F90];
      sub_222B02D38();
      v19 = (a3 + 32);
      do
      {
        sub_222A3B4EC(*v19, v17);
        sub_222B02D18();
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
        ++v19;
        --v18;
      }

      while (v18);

      v20 = v50;
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    v21 = *(v20 + 16);
    if (!v21)
    {

      return MEMORY[0x277D84F90];
    }

    v51 = MEMORY[0x277D84F90];
    sub_222A23AE4(0, v21, 0);
    v22 = 0;
    v13 = v51;
    v49 = v20;
    do
    {
      v23 = *(v20 + 8 * v22 + 32);
      if (v23 && (v24 = v23, (v25 = [v24 text]) != 0))
      {
        v26 = v25;
        v27 = sub_222B02388();
        v29 = v28;
      }

      else
      {

        v27 = 0;
        v29 = 0xE000000000000000;
      }

      v31 = *(v51 + 16);
      v30 = *(v51 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_222A23AE4((v30 > 1), v31 + 1, 1);
      }

      ++v22;
      *(v51 + 16) = v31 + 1;
      v32 = v51 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      v20 = v49;
    }

    while (v21 != v22);
    v47 = v7;
    v52 = MEMORY[0x277D84F90];
    sub_222A23AE4(0, v21, 0);
    v33 = 32;
    do
    {
      v34 = *(v20 + v33);
      if (v34 && (v35 = v34, (v36 = [v35 phoneSequence]) != 0))
      {
        v37 = v36;
        v38 = sub_222B02388();
        v40 = v39;
      }

      else
      {

        v38 = 0;
        v40 = 0xE000000000000000;
      }

      v42 = *(v52 + 16);
      v41 = *(v52 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_222A23AE4((v41 > 1), v42 + 1, 1);
      }

      *(v52 + 16) = v42 + 1;
      v43 = v52 + 16 * v42;
      *(v43 + 32) = v38;
      *(v43 + 40) = v40;
      v33 += 8;
      --v21;
      v20 = v49;
    }

    while (v21);
  }

  else
  {
LABEL_15:

    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t sub_222A3DE9C(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_222A3DEF0()
{
  result = qword_27D01D060;
  if (!qword_27D01D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D060);
  }

  return result;
}

unint64_t sub_222A3DF68()
{
  result = qword_27D01D088;
  if (!qword_27D01D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D088);
  }

  return result;
}

char *sub_222A3E060(id *a1)
{
  v1 = *a1;
  v2 = [*a1 intent];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
  v5 = swift_allocObject();
  *(v5 + 1) = xmmword_222B05260;
  v6 = [v4 typeName];
  v7 = sub_222B02388();
  v9 = v8;

  v10 = type metadata accessor for AddTaskEventFeature.EventType(0);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  v5[7] = v10;
  v5[8] = sub_222A3E6DC(&qword_27D01D090, type metadata accessor for AddTaskEventFeature.EventType);
  v5[4] = v11;
  v12 = [v1 _donatedBySiri];
  v13 = type metadata accessor for AddTaskEventFeature.DonatedBySiri(0);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v5[12] = v13;
  v5[13] = sub_222A3E6DC(&qword_27D01D098, type metadata accessor for AddTaskEventFeature.DonatedBySiri);
  v5[9] = v14;
  v15 = [v4 targetTaskList];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 title];

    if (v17)
    {
      v18 = [v17 spokenPhrase];
      v19 = sub_222B02388();
      v21 = v20;

      v22 = type metadata accessor for AddTaskEventFeature.TargetTaskListTitle(0);
      v23 = swift_allocObject();
      *(v23 + 16) = v19;
      *(v23 + 24) = v21;
      v5 = sub_222AA8FDC(1, 3, 1, v5);

      v52 = v22;
      v53 = sub_222A3E6DC(&qword_27D01D0B0, type metadata accessor for AddTaskEventFeature.TargetTaskListTitle);
      *&v51 = v23;
      v5[2] = 3;
      sub_222A2577C(&v51, (v5 + 14));
    }
  }

  v24 = [v4 taskTitles];
  if (!v24)
  {

    return v5;
  }

  v25 = v24;
  sub_222A3E730();
  v26 = sub_222B025F8();

  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v50 = v5;
    if (v27)
    {
      goto LABEL_8;
    }

LABEL_20:

    v30 = MEMORY[0x277D84F90];
LABEL_21:
    v40 = type metadata accessor for AddTaskEventFeature.TaskContents(0);
    v41 = swift_allocObject();
    *(v41 + 16) = v30;
    v52 = v40;
    v42 = sub_222A3E6DC(&qword_27D01D0A8, type metadata accessor for AddTaskEventFeature.TaskContents);
    *&v51 = v41;
    v5 = v50;
    v53 = v42;
    v54 = v50;
    v44 = v50[2];
    v43 = v50[3];
    if (v44 >= v43 >> 1)
    {
      v5 = sub_222AA8FDC((v43 > 1), v44 + 1, 1, v50);

      v54 = v5;
    }

    else
    {
    }

    v45 = __swift_mutable_project_boxed_opaque_existential_1(&v51, v40);
    MEMORY[0x28223BE20](v45);
    v47 = &v49 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v48 + 16))(v47);
    sub_222A3ED48(v44, v47, &v54, v40, v42);
    __swift_destroy_boxed_opaque_existential_0(&v51);
    return v5;
  }

  v27 = sub_222B02DC8();
  v50 = v5;
  if (!v27)
  {
    goto LABEL_20;
  }

LABEL_8:
  v49 = v2;
  *&v51 = MEMORY[0x277D84F90];
  result = sub_222A23AE4(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    v30 = v51;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x223DC6F00](v29, v26);
      }

      else
      {
        v31 = *(v26 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = [v31 spokenPhrase];
      v34 = sub_222B02388();
      v36 = v35;

      *&v51 = v30;
      v38 = *(v30 + 16);
      v37 = *(v30 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_222A23AE4((v37 > 1), v38 + 1, 1);
        v30 = v51;
      }

      ++v29;
      *(v30 + 16) = v38 + 1;
      v39 = v30 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
    }

    while (v27 != v29);

    v2 = v49;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t AddTaskEventFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AddTaskEventFeature.TargetTaskListTitle.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AddTaskEventFeature.TaskContents.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t AddTaskEventFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222A3E6DC(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_222A3E730()
{
  result = qword_27D01D0A0;
  if (!qword_27D01D0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01D0A0);
  }

  return result;
}

uint64_t AddTaskEventFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222A3E87C(char *a1)
{
  v1 = *a1;
  type metadata accessor for AddTaskEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A3E8B4(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for AddTaskEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t AddTaskEventFeature.TargetTaskListTitle.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t _s28SiriPrivateLearningAnalytics25MTCreateAlarmEventFeatureV0F14RepeatScheduleC5valueAESgSSSg_tcfC_0(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  if (a2)
  {
    *(result + 16) = a1;
    *(result + 24) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t _s28SiriPrivateLearningAnalytics25MTCreateAlarmEventFeatureV0F14RepeatScheduleC5valueAESgSSSg_tcfc_0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t AddTaskEventFeature.TargetTaskListTitle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222A3EA84(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222A3EAD8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t AddTaskEventFeature.TaskContents.init(value:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t AddTaskEventFeature.TaskContents.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222A3EC7C(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for AddTaskEventFeature.TaskContents(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A3ECB4(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for AddTaskEventFeature.TaskContents(0);
  result = swift_allocObject();
  if (v1)
  {
    *(result + 16) = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t sub_222A3ED48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_222A2577C(&v12, v10 + 40 * a1 + 32);
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

void *sub_222A3EEF0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_bridgeObjectRetain_n();
  if (v38)
  {
    v2 = 0;
    v36 = v1;
    v37 = v1 & 0xC000000000000001;
    v3 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = &off_2784BA000;
    v5 = &off_2784BA000;
    do
    {
      if (v37)
      {
        v6 = MEMORY[0x223DC6F00](v2, v1);
      }

      else
      {
        if (v2 >= *(v3 + 16))
        {
          goto LABEL_32;
        }

        v6 = *(v1 + 8 * v2 + 32);
      }

      v7 = v6;
      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v38 = sub_222B02DC8();
        goto LABEL_3;
      }

      if ([v6 v4[94]] == 6)
      {
        v9 = [v7 v5[95]];
        if (v9)
        {
          v10 = v9;
          v11 = sub_222B01798();
          v13 = v12;

          v14 = sub_222B01788();
          sub_222A26530(v11, v13);
        }

        else
        {
          v14 = 0;
        }

        v16 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

        v15 = [v16 event];
        if (!v15)
        {
          v15 = v7;
          goto LABEL_6;
        }
      }

      else
      {
        v15 = v7;
      }

      v17 = sub_222A40414();
      [v15 v4[94]];
      v18 = sub_222B02A28();
      if (v18 && v17 == v18 && ((v19 = [v15 v5[95]]) == 0 ? (v30 = objc_allocWithZone(swift_getObjCClassFromMetadata()), v27 = 0) : (v20 = v19, v21 = sub_222B01798(), v22 = v4, v23 = v3, v25 = v24, v20, v26 = objc_allocWithZone(swift_getObjCClassFromMetadata()), v27 = sub_222B01788(), v28 = v21, v1 = v36, v29 = v25, v3 = v23, v4 = v22, v5 = &off_2784BA000, sub_222A26530(v28, v29), v30 = v26), v31 = objc_msgSend(v30, sel_initWithData_, v27), v27, v31))
      {
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();

        if (v32)
        {
          v33 = [v32 deviceDynamicContext];
          v15 = v31;
          if (v33)
          {
            v35 = v33;
            swift_bridgeObjectRelease_n();

            return v32;
          }
        }

        else
        {
          v15 = v31;
        }
      }

      else
      {
      }

LABEL_6:

      ++v2;
    }

    while (v8 != v38);
  }

  swift_bridgeObjectRelease_n();
  return 0;
}

uint64_t sub_222A3F200(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = *(a1 + 32);
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = *&result;
    v6 = (a1 + 40);
    v7 = *&result;
    do
    {
      v8 = *v6++;
      v9 = v8;
      if (v8 < v7)
      {
        v7 = v9;
      }

      if (v9 >= v5)
      {
        v5 = v9;
      }

      --v4;
    }

    while (v4);
    return *&v7;
  }

  return result;
}

uint64_t UEITurnDurationFeature.__allocating_init(value:)(double a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t UEISaidDialogIdentifier.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_222A3F360(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_222A3F3B4(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = *(a1 + 8);
  a2(0);
  result = swift_allocObject();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D108, &unk_222B06230);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v2;
  }

  return result;
}

uint64_t UEITurnDurationFeature.init(value:)(double a1)
{
  result = v1;
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_222A3F448(uint64_t a1, char a2)
{
  result = swift_allocObject();
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D108, &unk_222B06230);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1;
  }

  return result;
}

uint64_t sub_222A3F4C8(uint64_t a1, char a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D108, &unk_222B06230);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v2 + 16) = a1;
  }

  return v2;
}

uint64_t UEISaidDialogIdentifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s28SiriPrivateLearningAnalytics23UEISaidDialogIdentifierC5valueACSgSaySSGSg_tcfC_0(uint64_t a1)
{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t _s28SiriPrivateLearningAnalytics23UEISaidDialogIdentifierC5valueACSgSaySSGSg_tcfc_0(uint64_t a1)
{
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t sub_222A3F6E4(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_222A3F738(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

void *sub_222A3F7B0(unint64_t a1)
{
  v1 = a1;
  *&v120 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_35:
    v3 = sub_222B02DC8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_36:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_36;
  }

LABEL_3:
  v4 = 0;
  v117 = v1 & 0xC000000000000001;
  v5 = MEMORY[0x277D84F90];
  v6 = &off_2784BA000;
  v114 = v1;
  do
  {
    v113 = v5;
    v7 = v4;
    v8 = v117;
    while (1)
    {
      if (v8)
      {
        v9 = MEMORY[0x223DC6F00](v7, v1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_34;
        }

        v9 = *(v1 + 8 * v7 + 32);
      }

      v10 = v9;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if ([v9 v6[94]] == 6)
      {
        v11 = [v10 payload];
        if (v11)
        {
          v12 = v11;
          v13 = sub_222B01798();
          v15 = v14;

          v16 = sub_222B01788();
          v17 = v15;
          v6 = &off_2784BA000;
          sub_222A26530(v13, v17);
        }

        else
        {
          v16 = 0;
        }

        v19 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

        v18 = [v19 event];
        if (!v18)
        {
          v18 = v10;
          goto LABEL_6;
        }
      }

      else
      {
        v18 = v10;
      }

      v20 = sub_222A40414();
      [v18 v6[94]];
      v21 = sub_222B02A28();
      if (!v21 || v20 != v21)
      {

        goto LABEL_6;
      }

      v22 = [v18 payload];
      if (v22)
      {
        v23 = v22;
        v24 = sub_222B01798();
        v25 = v3;
        v26 = v2;
        v28 = v27;

        v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v30 = sub_222B01788();
        v31 = v24;
        v32 = v28;
        v2 = v26;
        v3 = v25;
        v1 = v114;
        v8 = v117;
        sub_222A26530(v31, v32);
        v33 = v29;
      }

      else
      {
        v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v30 = 0;
      }

      v34 = [v33 initWithData_];

      if (!v34)
      {
        v18 = v10;
        v6 = &off_2784BA000;
        goto LABEL_6;
      }

      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();

      v18 = v34;
      v6 = &off_2784BA000;
      if (v35)
      {
        break;
      }

LABEL_6:

      ++v7;
      if (v4 == v3)
      {
        v5 = v113;
        goto LABEL_37;
      }
    }

    MEMORY[0x223DC6810]();
    if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_222B02648();
    }

    sub_222B02688();
    v5 = v120;
  }

  while (v4 != v3);
LABEL_37:
  v36 = sub_222A3EEF0(v1);
  v37 = v5 >> 62;
  if (!v36)
  {
    v58 = MEMORY[0x277D84F90];
    goto LABEL_63;
  }

  v38 = v36;
  v115 = v5 >> 62;
  if (v37)
  {
    v39 = v5 & 0xFFFFFFFFFFFFFF8;
    v40 = sub_222B02DC8();
  }

  else
  {
    v39 = v5 & 0xFFFFFFFFFFFFFF8;
    v40 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = 0;
  v42 = v5;
  v43 = v5 & 0xC000000000000001;
  v118 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v40 == v41)
    {
      *&v53 = COERCE_DOUBLE(sub_222A3F200(v118));
      v55 = v54;
      v57 = v56;

      if (v57)
      {

        v58 = MEMORY[0x277D84F90];
        v5 = v42;
        v37 = v115;
      }

      else
      {
        UEIEventTimestampFeature = type metadata accessor for FirstUEIEventTimestampFeature(0);
        v60 = swift_allocObject();
        *(v60 + 16) = *&v53;
        v58 = sub_222AA8FDC(0, 1, 1, MEMORY[0x277D84F90]);
        v62 = v58[2];
        v61 = v58[3];
        v63 = v62 + 1;
        if (v62 >= v61 >> 1)
        {
          v58 = sub_222AA8FDC((v61 > 1), v62 + 1, 1, v58);
        }

        v64 = *&v53;
        v65 = v55;
        v121 = UEIEventTimestampFeature;
        v122 = sub_222A40460(qword_280CB56A0, type metadata accessor for FirstUEIEventTimestampFeature);
        *&v120 = v60;
        v58[2] = v63;
        sub_222A2577C(&v120, &v58[5 * v62 + 4]);
        v66 = type metadata accessor for LastUEIEventTimestampFeature(0);
        v67 = swift_allocObject();
        *(v67 + 16) = v55;
        v68 = v58[3];
        v69 = v62 + 2;
        if ((v62 + 2) > (v68 >> 1))
        {
          v58 = sub_222AA8FDC((v68 > 1), v62 + 2, 1, v58);
        }

        v5 = v42;
        v121 = v66;
        v122 = sub_222A40460(qword_280CB5828, type metadata accessor for LastUEIEventTimestampFeature);
        *&v120 = v67;
        v58[2] = v69;
        sub_222A2577C(&v120, &v58[5 * v63 + 4]);
        v70 = type metadata accessor for UEITurnDurationFeature(0);
        v71 = swift_allocObject();
        *(v71 + 16) = v65 - v64;
        v72 = v58[3];
        v73 = v62 + 3;
        if ((v62 + 3) > (v72 >> 1))
        {
          v58 = sub_222AA8FDC((v72 > 1), v62 + 3, 1, v58);
        }

        v37 = v115;

        v121 = v70;
        v122 = sub_222A40460(qword_280CB6238, type metadata accessor for UEITurnDurationFeature);
        *&v120 = v71;
        v58[2] = v73;
        sub_222A2577C(&v120, &v58[5 * v69 + 4]);
      }

LABEL_63:
      v113 = v58;
      v43 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v37)
      {
        v74 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_65;
      }

      goto LABEL_124;
    }

    if (v43)
    {
      v44 = MEMORY[0x223DC6F00](v41, v42);
    }

    else
    {
      if (v41 >= *(v39 + 16))
      {
        goto LABEL_121;
      }

      v44 = *(v42 + 8 * v41 + 32);
    }

    v45 = v44;
    v5 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    getEventTimestampFromContext(from:context:)(v44, v38);
    v47 = v46;
    v49 = v48;

    ++v41;
    if ((v49 & 1) == 0)
    {
      v50 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_222AA910C(0, *(v118 + 16) + 1, 1, v118);
      }

      v52 = *(v50 + 2);
      v51 = *(v50 + 3);
      if (v52 >= v51 >> 1)
      {
        v50 = sub_222AA910C((v51 > 1), v52 + 1, 1, v50);
      }

      *(v50 + 2) = v52 + 1;
      v118 = v50;
      *&v50[8 * v52 + 32] = v47;
      v41 = v5;
    }
  }

LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    v74 = sub_222B02DC8();
LABEL_65:
    v75 = v5;
    v76 = v5 & 0xC000000000000001;
    if (v74)
    {
      v5 = 0;
      v119 = MEMORY[0x277D84F90];
      do
      {
        v77 = v5;
        while (1)
        {
          if (v76)
          {
            v78 = MEMORY[0x223DC6F00](v77, v75);
          }

          else
          {
            if (v77 >= *(v43 + 16))
            {
              goto LABEL_119;
            }

            v78 = *(v75 + 8 * v77 + 32);
          }

          v79 = v78;
          v5 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            __break(1u);
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          v80 = [v78 uufrSaid];
          if (v80)
          {
            v81 = v80;
            v82 = [v80 dialogIdentifier];

            if (v82)
            {
              break;
            }
          }

          ++v77;
          if (v5 == v74)
          {
            goto LABEL_84;
          }
        }

        v83 = sub_222B02388();
        v85 = v84;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v119 = sub_222AA8C78(0, *(v119 + 2) + 1, 1, v119);
        }

        v88 = *(v119 + 2);
        v87 = *(v119 + 3);
        if (v88 >= v87 >> 1)
        {
          v119 = sub_222AA8C78((v87 > 1), v88 + 1, 1, v119);
        }

        *(v119 + 2) = v88 + 1;
        v89 = &v119[16 * v88];
        *(v89 + 4) = v83;
        *(v89 + 5) = v85;
      }

      while (v5 != v74);
    }

    else
    {
      v119 = MEMORY[0x277D84F90];
    }

LABEL_84:
    if (!v74)
    {
      break;
    }

    v90 = 0;
    v91 = MEMORY[0x277D84F90];
LABEL_86:
    v116 = v91;
    v92 = v90;
    while (1)
    {
      if (v76)
      {
        v93 = MEMORY[0x223DC6F00](v92, v75);
      }

      else
      {
        if (v92 >= *(v43 + 16))
        {
          goto LABEL_123;
        }

        v93 = *(v75 + 8 * v92 + 32);
      }

      v94 = v93;
      v90 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        break;
      }

      v95 = [v93 uufrShown];
      if (v95)
      {
        v96 = v95;
        v5 = [v95 dialogIdentifier];

        if (v5)
        {
          v97 = sub_222B02388();
          v99 = v98;

          v100 = swift_isUniquelyReferenced_nonNull_native();
          if ((v100 & 1) == 0)
          {
            v116 = sub_222AA8C78(0, *(v116 + 2) + 1, 1, v116);
          }

          v5 = *(v116 + 2);
          v101 = *(v116 + 3);
          if (v5 >= v101 >> 1)
          {
            v116 = sub_222AA8C78((v101 > 1), v5 + 1, 1, v116);
          }

          *(v116 + 2) = v5 + 1;
          v102 = &v116[16 * v5];
          *(v102 + 4) = v97;
          *(v102 + 5) = v99;
          v91 = v116;
          if (v90 != v74)
          {
            goto LABEL_86;
          }

          goto LABEL_104;
        }
      }

      ++v92;
      if (v90 == v74)
      {
        v91 = v116;
        goto LABEL_104;
      }
    }
  }

  v91 = MEMORY[0x277D84F90];
LABEL_104:

  if (!*(v119 + 2))
  {

    v105 = v113;
    if (*(v91 + 2))
    {
      goto LABEL_110;
    }

    goto LABEL_116;
  }

  v103 = type metadata accessor for UEISaidDialogIdentifier(0);
  v104 = swift_allocObject();
  *(v104 + 16) = v119;
  v105 = v113;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v105 = sub_222AA8FDC(0, v113[2] + 1, 1, v113);
  }

  v107 = v105[2];
  v106 = v105[3];
  if (v107 >= v106 >> 1)
  {
    v105 = sub_222AA8FDC((v106 > 1), v107 + 1, 1, v105);
  }

  v121 = v103;
  v122 = sub_222A40460(&qword_27D01D110, type metadata accessor for UEISaidDialogIdentifier);
  *&v120 = v104;
  v105[2] = v107 + 1;
  sub_222A2577C(&v120, &v105[5 * v107 + 4]);
  if (!*(v91 + 2))
  {
LABEL_116:

    return v105;
  }

LABEL_110:
  v108 = type metadata accessor for UEIShownDialogIdentifier(0);
  v109 = swift_allocObject();
  *(v109 + 16) = v91;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v105 = sub_222AA8FDC(0, v105[2] + 1, 1, v105);
  }

  v111 = v105[2];
  v110 = v105[3];
  if (v111 >= v110 >> 1)
  {
    v105 = sub_222AA8FDC((v110 > 1), v111 + 1, 1, v105);
  }

  v121 = v108;
  v122 = sub_222A40460(&qword_27D01D118, type metadata accessor for UEIShownDialogIdentifier);
  *&v120 = v109;
  v105[2] = v111 + 1;
  sub_222A2577C(&v120, &v105[5 * v111 + 4]);
  return v105;
}

unint64_t sub_222A40414()
{
  result = qword_280CB4B80;
  if (!qword_280CB4B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CB4B80);
  }

  return result;
}

uint64_t sub_222A40460(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t static PLUSSchemaConverters.convertToSuggestionRedundancyState(state:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (v1 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for UniversalEntity(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for UniversalEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TrialFactor.__allocating_init(factorName:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TrialFactor.init(factorName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t TrialFactor.factorName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TrialFactor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id static Int.fromLevel(level:)(void *a1)
{
  v2 = [a1 levelOneOfCase];
  if (v2 == 13)
  {
    return [a1 longValue];
  }

  if (v2 == 12)
  {
    return [a1 intValue];
  }

  return 0;
}

id sub_222A407C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 levelOneOfCase];
  if (v4 == 13)
  {
    result = [a1 longValue];
    v5 = 0;
  }

  else if (v4 == 12)
  {
    LODWORD(result) = [a1 intValue];
    v5 = 0;
    result = result;
  }

  else
  {
    result = 0;
    v5 = 1;
  }

  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t static Bool.fromLevel(level:)(void *a1)
{
  if ([a1 levelOneOfCase] == 10)
  {
    return [a1 BOOLeanValue];
  }

  else
  {
    return 2;
  }
}

uint64_t sub_222A40890@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if ([a1 levelOneOfCase] == 10)
  {
    result = [a1 BOOLeanValue];
  }

  else
  {
    result = 2;
  }

  *a2 = result;
  return result;
}

double static Double.fromLevel(level:)(void *a1)
{
  if ([a1 levelOneOfCase] == 15)
  {
    [a1 doubleValue];
  }

  return result;
}

id sub_222A40940@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 levelOneOfCase];
  v5 = result;
  v6 = 0;
  if (result == 15)
  {
    result = [a1 doubleValue];
  }

  *a2 = v6;
  *(a2 + 8) = v5 != 15;
  return result;
}

uint64_t sub_222A40B20(uint64_t a1)
{
  sub_222B02B28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  sub_222B02718();
  result = sub_222B02B28();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_222A40BFC(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  sub_222A34E38(v3);
}

uint64_t sub_222A40C30@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  sub_222B02B28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  sub_222B02718();
  v4 = sub_222B02B28();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_222A40D2C(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  sub_222B02B28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  sub_222B02718();
  v4 = sub_222B02B28();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

id sub_222A40E30(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_222B02B28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  v5 = sub_222B02718();
  v6 = sub_222B02B28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = *((v4 & v3) + 0x58);
  v11 = *(v1 + v10);
  *(v1 + v10) = a1;
  v12 = a1;
  sub_222A34E38(v11);
  sub_222A40C30(v9);
  v13 = (*(*(v5 - 8) + 48))(v9, 1, v5);
  result = (*(v7 + 8))(v9, v6);
  if (v13 != 1)
  {
    return [v12 requestDemand_];
  }

  return result;
}

void sub_222A40FEC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_222A40E30(v4);
}

uint64_t sub_222A41054(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = sub_222B02B28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  v5 = sub_222B02718();
  v43 = sub_222B02B28();
  v41 = *(v43 - 8);
  v6 = MEMORY[0x28223BE20](v43);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v47 = v5;
  v45 = *(v5 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v44 = &v40 - v12;
  v13 = *(v4 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v40 - v20;
  v46 = a1;
  sub_222A25344(a1, v50);
  v22 = swift_dynamicCast();
  v23 = *(v19 + 56);
  if (v22)
  {
    v23(v18, 0, 1, v3);
    (*(v19 + 32))(v21, v18, v3);
    sub_222A40C30(v10);
    v24 = v45;
    v25 = v47;
    if ((*(v45 + 48))(v10, 1, v47) == 1)
    {
      (*(v41 + 8))(v10, v43);
    }

    else
    {
      v35 = v44;
      (*(v24 + 32))(v44, v10, v25);
      v36 = v42;
      (*(v24 + 56))(v42, 1, 1, v25);
      sub_222A40D2C(v36);
      v37 = v40;
      (*(v19 + 16))(v40, v21, v3);
      v23(v37, 0, 1, v3);
      sub_222B02708();
      (*(v24 + 8))(v35, v25);
    }

    v38 = *MEMORY[0x277CF1780];
    (*(v19 + 8))(v21, v3);
    return v38;
  }

  else
  {
    v23(v18, 1, 1, v3);
    (*(v13 + 8))(v18, v4);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v26 = sub_222B02148();
    __swift_project_value_buffer(v26, qword_280CBC458);
    sub_222A25344(v46, v50);
    v27 = sub_222B02128();
    v28 = sub_222B028D8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v49 = v30;
      *v29 = 136315138;
      __swift_project_boxed_opaque_existential_1(v50, v50[3]);
      DynamicType = swift_getDynamicType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D138, &unk_222B06790);
      v31 = sub_222B023D8();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0(v50);
      v34 = sub_222A230FC(v31, v33, &v49);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_222A1C000, v27, v28, "AsyncAwaitAdapter ignored unexpected input type %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x223DC7E30](v30, -1, -1);
      MEMORY[0x223DC7E30](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v50);
    }

    return BPSDemandMax();
  }
}

uint64_t sub_222A4166C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  v5 = sub_222A41054(v7);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

void sub_222A416D8(void *a1)
{
  v37 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v3 = sub_222B02B28();
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  v6 = sub_222B02718();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - v7;
  v9 = v8;
  v39 = sub_222B02B28();
  v10 = *(v39 - 8);
  v11 = MEMORY[0x28223BE20](v39);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = [a1 state];
  v40 = v1;
  if (v22 == 1)
  {
    v24 = [a1 error];
    v25 = (v41 + 48);
    if (v24)
    {
      v26 = v24;
      sub_222A40C30(v19);
      if ((*v25)(v19, 1, v9))
      {

        (*(v10 + 8))(v19, v39);
        goto LABEL_19;
      }

      v23 = v41;
      v28 = v38;
      (*(v41 + 16))(v38, v19, v9);
      (*(v10 + 8))(v19, v39);
      v43 = v26;
    }

    else
    {
      sub_222A40C30(v16);
      if ((*v25)(v16, 1, v9))
      {
        (*(v10 + 8))(v16, v39);
        goto LABEL_19;
      }

      v23 = v41;
      v28 = v38;
      (*(v41 + 16))(v38, v16, v9);
      (*(v10 + 8))(v16, v39);
      sub_222A42850();
      v35 = swift_allocError();
      *v36 = 0xD00000000000003BLL;
      v36[1] = 0x8000000222B11020;
      v43 = v35;
    }

    sub_222B026F8();
    goto LABEL_18;
  }

  if (!v22)
  {
    sub_222A40C30(v21);
    v23 = v41;
    if ((*(v41 + 48))(v21, 1, v9))
    {
      (*(v10 + 8))(v21, v39);
      goto LABEL_19;
    }

    v28 = v38;
    (*(v23 + 16))(v38, v21, v9);
    (*(v10 + 8))(v21, v39);
    (*(*(v37 - 8) + 56))(v5, 1, 1);
    sub_222B02708();
LABEL_18:
    (*(v23 + 8))(v28, v9);
    goto LABEL_19;
  }

  sub_222A40C30(v13);
  v27 = v41;
  if ((*(v41 + 48))(v13, 1, v9))
  {
    (*(v10 + 8))(v13, v39);
  }

  else
  {
    v29 = v38;
    (*(v27 + 16))(v38, v13, v9);
    (*(v10 + 8))(v13, v39);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_222B02C88();

    v43 = 0xD00000000000001DLL;
    v44 = 0x8000000222B11000;
    v42 = [a1 state];
    type metadata accessor for BPSCompletionState(0);
    v30 = sub_222B023D8();
    MEMORY[0x223DC66E0](v30);

    v31 = v43;
    v32 = v44;
    sub_222A42850();
    v33 = swift_allocError();
    *v34 = v31;
    v34[1] = v32;
    v43 = v33;
    sub_222B026F8();
    (*(v27 + 8))(v29, v9);
  }

LABEL_19:
  sub_222A41CC0(v40);
}

void sub_222A41CC0(void *a1)
{
  v2 = MEMORY[0x277D85000];
  sub_222B02B28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  v3 = sub_222B02718();
  v4 = sub_222B02B28();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  (*(*(v3 - 8) + 56))(&v9 - v5, 1, 1, v3);
  sub_222A40D2C(v6);
  v7 = *((*v2 & *a1) + 0x58);
  v8 = *(a1 + v7);
  *(a1 + v7) = 1;
  sub_222A34E38(v8);
}

void sub_222A41E04(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_222A416D8(v4);
}

uint64_t sub_222A41E6C()
{
  v1 = MEMORY[0x277D85000];
  v2 = *MEMORY[0x277D85000] & *v0;
  sub_222B02B28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  v3 = sub_222B02718();
  v4 = sub_222B02B28();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v22 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v14 = *(v2 + 88);
  v15 = *(v0 + v14);
  if (v15 >= 2)
  {
    sub_222A42840(*(v0 + v14));
    v2 = *v1 & *v0;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v2 + 88);
  v17 = *(v0 + v16);
  *(v0 + v16) = 1;
  sub_222A34E38(v17);
  [v15 cancel];
  sub_222A40C30(v13);
  v18 = *(v3 - 8);
  (*(v18 + 56))(v11, 1, 1, v3);
  sub_222A40D2C(v11);
  (*(v5 + 16))(v8, v13, v4);
  if ((*(v18 + 48))(v8, 1, v3) == 1)
  {
    v19 = *(v5 + 8);
    v19(v13, v4);

    return (v19)(v8, v4);
  }

  else
  {
    sub_222B02728();
    sub_222A34DE0();
    v21 = swift_allocError();
    sub_222B02298();
    v22[1] = v21;
    sub_222B026F8();

    (*(v5 + 8))(v13, v4);
    return (*(v18 + 8))(v8, v3);
  }
}

void sub_222A42190(void *a1)
{
  v1 = a1;
  sub_222A41E6C();
}

void sub_222A421D8(uint64_t a1)
{
  v18 = a1;
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v3 = sub_222B02B28();
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  v6 = sub_222B02718();
  v7 = sub_222B02B28();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  sub_222A40C30(&v17 - v12);
  v14 = *(v6 - 8);
  v15 = (*(v14 + 48))(v13, 1, v6);
  (*(v8 + 8))(v13, v7);
  if (v15 == 1)
  {
    v16 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x58));
    if (v16)
    {
      if (v16 == 1)
      {
        (*(*(v2 - 8) + 56))(v5, 1, 1, v2);
        sub_222B02708();
      }

      else
      {
        (*(v14 + 16))(v11, v18, v6);
        (*(v14 + 56))(v11, 0, 1, v6);
        sub_222A42840(v16);
        sub_222A40D2C(v11);
        [v16 requestDemand_];
        sub_222A34E38(v16);
      }
    }

    else
    {
      (*(v14 + 16))(v11, v18, v6);
      (*(v14 + 56))(v11, 0, 1, v6);
      sub_222A40D2C(v11);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_222A42514()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_222A41E6C();
  v5 = _s17AsyncAwaitAdapterCMa(0, *((v2 & v1) + 0x50), v3, v4);
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_222A425AC(char *a1)
{
  v2 = MEMORY[0x277D85000];
  sub_222A34E38(*&a1[*((*MEMORY[0x277D85000] & *a1) + 0x58)]);
  v3 = *((*v2 & *a1) + 0x60);
  sub_222B02B28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  sub_222B02718();
  v4 = sub_222B02B28();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

id sub_222A426B8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_222A426EC()
{
  v1 = MEMORY[0x277D85000];
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  *&v0[*((*MEMORY[0x277D85000] & *v0) + 0x58)] = 0;
  v4 = *((*v1 & *v0) + 0x60);
  v5 = *((v3 & v2) + 0x50);
  sub_222B02B28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01D120, qword_222B06760);
  v6 = sub_222B02718();
  (*(*(v6 - 8) + 56))(&v0[v4], 1, 1, v6);
  v10.receiver = v0;
  v10.super_class = _s17AsyncAwaitAdapterCMa(0, v5, v7, v8);
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_222A42840(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

unint64_t sub_222A42850()
{
  result = qword_27D01D130;
  if (!qword_27D01D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D130);
  }

  return result;
}

uint64_t sub_222A4290C(uint64_t a1, void *a2, void *a3)
{
  v37[5] = *MEMORY[0x277D85DE8];
  v7 = &v36;
  type metadata accessor for UniversalSuggestionEvictor(0);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_222A42E10;
  *(v8 + 24) = 0;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D140, qword_222B068D0);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v8;
  v12[4] = KeyPath;
  v12[5] = v10;
  v37[3] = v11;
  v37[4] = &protocol witness table for MaximumRecordCountPolicy<A, B, C, D>;
  v37[0] = v12;
  v32 = MEMORY[0x277D84F90];
  sub_222A23C04(0, 1, 0);
  v13 = v32;
  sub_222A42E40(v37, v33);
  v14 = v34;
  v15 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v31 = a2;
  (*(*(v15 + 8) + 16))(&v31, v14);
  if (v3)
  {
    a3 = v3;
LABEL_6:
    LOBYTE(v18) = 1;
    goto LABEL_7;
  }

  v16 = a3[3];
  v31 = 0;
  if (([v16 save_] & 1) == 0)
  {
    v19 = v31;
    a3 = sub_222B01628();

    swift_willThrow();
    goto LABEL_6;
  }

  v17 = v31;
  LOBYTE(v18) = 0;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v33);
  v21 = *(v13 + 16);
  v20 = *(v13 + 24);
  v22 = v21 + 1;
  if (v21 >= v20 >> 1)
  {
LABEL_22:
    sub_222A23C04((v20 > 1), v22, 1);
    v13 = v32;
  }

  *(v13 + 16) = v22;
  v23 = v13 + 16 * v21;
  *(v23 + 32) = a3;
  *(v23 + 40) = v18;
  __swift_destroy_boxed_opaque_existential_0((v7 + 32));
  v18 = 0;
  v21 = *(v13 + 16);
  v24 = MEMORY[0x277D84F90];
LABEL_9:
  v20 = v13 + 40 + 16 * v18;
  while (v21 != v18)
  {
    if (v18 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v25 = v20 + 16;
    ++v18;
    v26 = *v20;
    v20 += 16;
    if (v26 == 1)
    {
      a3 = *(v25 - 24);
      v27 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_222AA9364(0, v24[2] + 1, 1, v24);
      }

      v7 = v24[2];
      v28 = v24[3];
      v22 = v7 + 1;
      if (v7 >= v28 >> 1)
      {
        v24 = sub_222AA9364((v28 > 1), v7 + 1, 1, v24);
      }

      v24[2] = v22;
      v24[v7 + 4] = a3;
      goto LABEL_9;
    }
  }

  if (!v24[2])
  {
  }

  sub_222A42EA4();
  swift_allocError();
  *v29 = v24;
  return swift_willThrow();
}

uint64_t getEnumTagSinglePayload for UniversalSuggestionsCoreDataStorePolicies(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UniversalSuggestionsCoreDataStorePolicies(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_222A42D1C()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UniversalSuggestionEvictor(uint64_t a1)
{
  result = qword_280CB5A30;
  if (!qword_280CB5A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222A42DD8(uint64_t a1, uint64_t a2)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_222A42E40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_222A42EA4()
{
  result = qword_27D01D148;
  if (!qword_27D01D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D148);
  }

  return result;
}

uint64_t UniversalSuggestion.candidates.getter()
{
  type metadata accessor for UniversalSuggestion(0);
}

uint64_t static UniversalSuggestion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_222B01888() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for UniversalSuggestion(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_222B02F78() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_222A43024(v11, v12);
}

uint64_t sub_222A43024(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for UniversalCandidate(0);
  v4 = MEMORY[0x28223BE20](v42);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = &v39 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    return 0;
  }

  if (!v10 || a1 == a2)
  {
    return 1;
  }

  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v40 = *(v7 + 72);
  v41 = v6;
  while (1)
  {
    sub_222A43DEC(v12, v9);
    sub_222A43DEC(v13, v6);
    v14 = *(v42 + 20);
    v15 = *&v9[v14];
    v16 = *&v6[v14];
    v17 = sub_222B01C08();
    if (!v17)
    {
      goto LABEL_17;
    }

    v18 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
      v26 = v17;
      v27 = sub_222B02DC8();
      v17 = v26;
      if (!v27)
      {
LABEL_16:

LABEL_17:
        v21 = 0;
        v23 = 0;
        goto LABEL_18;
      }
    }

    else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DC6F00](0, v17);
      swift_unknownObjectRelease();

      goto LABEL_12;
    }

    v19 = *(v18 + 16);

    if (!v19)
    {
      break;
    }

LABEL_12:
    v43 = v15;
    v21 = sub_222A67BDC(v15);
    v23 = v22;
    if (v22)
    {
      v43 = v15;
      v24 = sub_222A67F6C();
      if (v25)
      {
        v43 = v24;
        v44 = v25;

        MEMORY[0x223DC66E0](v21, v23);

        v21 = v43;
        v23 = v44;
      }
    }

LABEL_18:
    v28 = sub_222B01C08();
    if (!v28)
    {
      goto LABEL_28;
    }

    v29 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 >> 62)
    {
      v36 = v28;
      v37 = sub_222B02DC8();
      v28 = v36;
      if (!v37)
      {
LABEL_27:

LABEL_28:
        v31 = 0;
        v33 = 0;
        goto LABEL_29;
      }
    }

    else if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DC6F00](0, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = *(v29 + 16);

      if (!v30)
      {
        goto LABEL_43;
      }
    }

    v43 = v16;
    v31 = sub_222A67BDC(v16);
    v33 = v32;
    if (v32)
    {
      v43 = v16;
      v34 = sub_222A67F6C();
      if (v35)
      {
        v43 = v34;
        v44 = v35;

        MEMORY[0x223DC66E0](v31, v33);

        v31 = v43;
        v33 = v44;
      }
    }

LABEL_29:
    if (v23)
    {
      if (!v33)
      {

        sub_222A4432C(v41);
        sub_222A4432C(v9);
        return 0;
      }

      if (v21 == v31 && v23 == v33)
      {

        v6 = v41;
        sub_222A4432C(v41);
        sub_222A4432C(v9);
      }

      else
      {
        v38 = sub_222B02F78();

        v6 = v41;
        sub_222A4432C(v41);
        sub_222A4432C(v9);
        if ((v38 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v6 = v41;
      sub_222A4432C(v41);
      sub_222A4432C(v9);
      if (v33)
      {

        return 0;
      }
    }

    v13 += v40;
    v12 += v40;
    if (!--v10)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}
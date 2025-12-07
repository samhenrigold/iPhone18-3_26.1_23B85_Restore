void sub_21D4680B8(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_280D0F160 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_280D0F168);
  v5 = a1;
  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAE9C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315138;
    if (a1)
    {
      v10 = sub_21DBF52CC();
    }

    else
    {
      v10 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7B8, &unk_21DC16E90);
    v11 = sub_21DBFBA5C();
    v13 = v12;

    v14 = sub_21D0CDFB4(v11, v13, v18);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRSearchQueryPerformer: Search query completed with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    sub_21D4682B8(v17, a1);
  }
}

void sub_21D4682B8(void *a1, void *a2)
{
  v5 = sub_21DBF9D2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = *(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_query);
    if (v14)
    {
      v15 = v14 == a1;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v21[2] = *(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_queue);
      v22 = v11;
      v23 = v10;
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v21[1] = v16;
      v18[2] = v16;
      v18[3] = v17;
      v18[4] = a2;
      aBlock[4] = sub_21D46C87C;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_29;
      v19 = _Block_copy(aBlock);
      v21[0] = a1;

      v20 = a2;
      sub_21DBF9D4C();
      v24 = MEMORY[0x277D84F90];
      sub_21D0CD898();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
      sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v13, v8, v19);
      _Block_release(v19);

      (*(v6 + 8))(v8, v5);
      (*(v22 + 8))(v13, v23);
    }
  }
}

Swift::Void __swiftcall TTRSearchQueryPerformer.cancel()()
{
  v1 = sub_21DBF9D8C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_21DBF9DAC();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_query;
    v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_query);
    if (v9)
    {
      [v9 cancel];
      v10 = *(v0 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v0 + v8) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D468750()
{
  v1 = sub_21DBF659C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer____lazy_storage___entityNames;
  v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer____lazy_storage___entityNames);
  if (v6)
  {
    sub_21DBF8E0C();
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_itemTypes);
    v8 = *(v7 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v22 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer____lazy_storage___entityNames;
      v23 = v0;
      v28 = MEMORY[0x277D84F90];
      sub_21D18E678(0, v8, 0);
      v9 = v28;
      v11 = *(v2 + 16);
      v10 = v2 + 16;
      v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v25 = *(v10 + 56);
      v26 = v11;
      v24 = (v10 - 8);
      v27 = v10;
      do
      {
        v26(v4, v12, v1);
        v13 = sub_21DBF657C();
        v15 = v14;
        v16 = v1;
        (*v24)(v4, v1);
        v28 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_21D18E678((v17 > 1), v18 + 1, 1);
          v9 = v28;
        }

        *(v9 + 16) = v18 + 1;
        v19 = v9 + 16 * v18;
        *(v19 + 32) = v13;
        *(v19 + 40) = v15;
        v12 += v25;
        --v8;
        v1 = v16;
      }

      while (v8);
      v5 = v22;
      v0 = v23;
    }

    v6 = sub_21D0FC0A8(v9);

    *(v0 + v5) = v6;
    sub_21DBF8E0C();
  }

  return v6;
}

void sub_21D468970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *&v5[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_query];
      if (v8 && v6 == v8 && (v9 = &v5[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate], swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(v5, a3, ObjectType, v10);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v7 = v5;
    }
  }
}

void sub_21D468A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_query;
      v9 = *&v5[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_query];
      if (v9 && v6 == v9)
      {
        v10 = &v5[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v10 + 1);
          ObjectType = swift_getObjectType();
          (*(v11 + 16))(v5, a3, ObjectType, v11);
          swift_unknownObjectRelease();
        }

        v7 = *&v5[v8];
        *&v5[v8] = 0;
      }
    }

    else
    {
      v7 = v5;
    }
  }
}

id TTRSearchQueryPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *TTRAsyncSearchQueryPerformer.init(attributesToFetch:itemTypes:criteria:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v31 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_21DBF624C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_21DBF7B5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_criteria] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer____lazy_storage___entityNames] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_query] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  (*(v10 + 104))(v12, *MEMORY[0x277D457B8], v9);
  v14 = sub_21DBF7B4C();
  v16 = v15;
  v17 = v9;
  v18 = v5;
  (*(v10 + 8))(v12, v17);
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  v35 = v31;
  sub_21D5623AC(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D0C3A8, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83970]);
  v19 = sub_21DBFA4AC();

  *&v4[OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_attributesToFetch] = v19;
  v20 = v33;
  *&v4[OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_itemTypes] = v33;
  v36.receiver = v4;
  v36.super_class = ObjectType;
  v21 = v20;
  sub_21DBF8E0C();
  v22 = objc_msgSendSuper2(&v36, sel_init);
  *v8 = v21;
  (*(v6 + 104))(v8, *MEMORY[0x277D44F88], v18);
  v23 = OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_criteria;
  swift_beginAccess();
  v24 = *&v22[v23];
  v25 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22[v23] = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_21D21303C(0, v24[2] + 1, 1, v24);
    *&v22[v23] = v24;
  }

  v28 = v24[2];
  v27 = v24[3];
  if (v28 >= v27 >> 1)
  {
    v24 = sub_21D21303C((v27 > 1), v28 + 1, 1, v24);
  }

  v24[2] = v28 + 1;
  (*(v6 + 32))(v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v28, v8, v18);
  *&v22[v23] = v24;
  sub_21D562A78(v34);
  swift_endAccess();

  return v25;
}

id sub_21D4690B8(uint64_t a1, void *a2)
{
  v18 = a1;
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7C0, &qword_21DC16EA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *(v4 + 16);
  v8(&v16 - v6, a1, v3, v5);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v17 = *(v4 + 32);
  v17(v10 + v9, v7, v3);
  v24 = sub_21D46C938;
  v25 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_21D468044;
  v23 = &block_descriptor_43_0;
  v11 = _Block_copy(&aBlock);

  [v19 setFoundItemsHandler_];
  _Block_release(v11);
  (v8)(v7, v18, v3);
  v12 = swift_allocObject();
  v17(v12 + v9, v7, v3);
  v24 = sub_21D46C9E4;
  v25 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_21D11E5E4;
  v23 = &block_descriptor_49_1;
  v13 = _Block_copy(&aBlock);

  v14 = v19;
  [v19 setCompletionHandler_];
  _Block_release(v13);
  return [v14 start];
}

uint64_t sub_21D469360(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7C8, &unk_21DC16EA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - v4;
  if (qword_280D0F160 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_280D0F168);
  sub_21DBF8E0C();
  v7 = sub_21DBF84AC();
  v8 = sub_21DBFAE9C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    if (a1 >> 62)
    {
      v10 = sub_21DBFBD7C();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v10;

    _os_log_impl(&dword_21D0C9000, v7, v8, "TTRAsyncSearchQueryPerformer: Search query found %ld items.", v9, 0xCu);
    MEMORY[0x223D46520](v9, -1, -1);
  }

  else
  {
  }

  v12[1] = a1;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7C0, &qword_21DC16EA0);
  sub_21DBFA9CC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D469578(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_280D0F160 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F168);
    v4 = a1;
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v14 = sub_21DBF52CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7B8, &unk_21DC16E90);
      v9 = sub_21DBFBA5C();
      v11 = v10;

      v12 = sub_21D0CDFB4(v9, v11, &v15);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, v5, v6, "TTRAsyncSearchQueryPerformer: Search query completed with error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    v15 = a1;
  }

  else
  {
    v15 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7C0, &qword_21DC16EA0);
  return sub_21DBFA9DC();
}

uint64_t sub_21D469828()
{
  v281 = sub_21DBF65BC();
  v279 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v278 = &v277 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v280 = &v277 - v2;
  v3 = sub_21DBF563C();
  v305 = *(v3 - 8);
  v306 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v277 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v284 = &v277 - v7;
  MEMORY[0x28223BE20](v8);
  v286 = &v277 - v9;
  MEMORY[0x28223BE20](v10);
  v283 = &v277 - v11;
  MEMORY[0x28223BE20](v12);
  v298 = &v277 - v13;
  MEMORY[0x28223BE20](v14);
  v297 = &v277 - v15;
  MEMORY[0x28223BE20](v16);
  v304 = &v277 - v17;
  MEMORY[0x28223BE20](v18);
  v303 = &v277 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v20 - 8);
  v288 = &v277 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v287 = &v277 - v23;
  MEMORY[0x28223BE20](v24);
  v291 = &v277 - v25;
  MEMORY[0x28223BE20](v26);
  v285 = &v277 - v27;
  MEMORY[0x28223BE20](v28);
  v290 = &v277 - v29;
  MEMORY[0x28223BE20](v30);
  v289 = &v277 - v31;
  MEMORY[0x28223BE20](v32);
  v282 = &v277 - v33;
  MEMORY[0x28223BE20](v34);
  v292 = &v277 - v35;
  MEMORY[0x28223BE20](v36);
  v296 = &v277 - v37;
  MEMORY[0x28223BE20](v38);
  v293 = &v277 - v39;
  MEMORY[0x28223BE20](v40);
  v295 = &v277 - v41;
  MEMORY[0x28223BE20](v42);
  v294 = &v277 - v43;
  MEMORY[0x28223BE20](v44);
  v302 = &v277 - v45;
  MEMORY[0x28223BE20](v46);
  v299 = &v277 - v47;
  MEMORY[0x28223BE20](v48);
  v301 = (&v277 - v49);
  MEMORY[0x28223BE20](v50);
  v300 = &v277 - v51;
  v310 = sub_21DBF623C();
  v52 = *(v310 - 8);
  MEMORY[0x28223BE20](v310);
  v54 = &v277 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v57 = &v277 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = &v277 - v59;
  v315 = sub_21DBF54CC();
  v309 = *(v315 - 8);
  MEMORY[0x28223BE20](v315);
  v314 = (&v277 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v317 = sub_21DBF659C();
  v62 = *(v317 - 8);
  MEMORY[0x28223BE20](v317);
  v316 = &v277 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_21DBF7B5C();
  v64 = *(v319 - 8);
  MEMORY[0x28223BE20](v319);
  v318 = &v277 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21DBF672C();
  v311 = *(v66 - 8);
  v312 = v66;
  MEMORY[0x28223BE20](v66);
  v308 = &v277 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v307 = &v277 - v69;
  v70 = sub_21DBF624C();
  v71 = *(v70 - 8);
  v72 = MEMORY[0x28223BE20](v70);
  v74 = (&v277 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v74, v313, v70, v72);
  LODWORD(v75) = (*(v71 + 88))(v74, v70);
  if (v75 == *MEMORY[0x277D44F88])
  {
    (*(v71 + 96))(v74, v70);
    v76 = *v74;
    v77 = *(*v74 + 16);
    if (v77)
    {
      v321 = MEMORY[0x277D84F90];
      sub_21D18E678(0, v77, 0);
      v78 = v62 + 16;
      v79 = *(v62 + 16);
      v80 = v321;
      v81 = (*(v78 + 64) + 32) & ~*(v78 + 64);
      v309 = v76;
      v82 = v76 + v81;
      v313 = *(v78 + 56);
      v314 = v79;
      LODWORD(v312) = *MEMORY[0x277D457B0];
      v310 = v64 + 8;
      v311 = v64 + 104;
      v315 = v78;
      v83 = (v78 - 8);
      v84 = v316;
      do
      {
        v85 = v317;
        v314(v84, v82, v317);
        v322 = 40;
        v323 = 0xE100000000000000;
        v87 = v318;
        v86 = v319;
        (*v311)(v318, v312, v319);
        v88 = sub_21DBF7B4C();
        v90 = v89;
        (*v310)(v87, v86);
        MEMORY[0x223D42AA0](v88, v90);

        MEMORY[0x223D42AA0](540884256, 0xE400000000000000);
        v320 = sub_21DBF658C();
        v91 = sub_21DBFC5BC();
        MEMORY[0x223D42AA0](v91);

        MEMORY[0x223D42AA0](41, 0xE100000000000000);
        v93 = v322;
        v92 = v323;
        (*v83)(v84, v85);
        v321 = v80;
        v95 = *(v80 + 16);
        v94 = *(v80 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_21D18E678((v94 > 1), v95 + 1, 1);
          v80 = v321;
        }

        *(v80 + 16) = v95 + 1;
        v96 = v80 + 16 * v95;
        *(v96 + 32) = v93;
        *(v96 + 40) = v92;
        v82 += v313;
        --v77;
      }

      while (v77);
    }

    else
    {

      v80 = MEMORY[0x277D84F90];
    }

    v322 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
    v139 = sub_21DBFA07C();
    v141 = v140;
    goto LABEL_116;
  }

  if (v75 != *MEMORY[0x277D44F50])
  {
    if (v75 == *MEMORY[0x277D44F78])
    {
      (*(v71 + 96))(v74, v70);
      v75 = *v74;
      if (!(*v74 >> 62))
      {
        v117 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v117)
        {
          goto LABEL_114;
        }

LABEL_25:
        v118 = v75;
        v321 = MEMORY[0x277D84F90];
        sub_21D18E678(0, v117 & ~(v117 >> 63), 0);
        if (v117 < 0)
        {
          __break(1u);
          goto LABEL_128;
        }

        v119 = 0;
        v99 = v321;
        v120 = v118;
        v317 = v118 & 0xC000000000000001;
        v310 = v118 & 0xFFFFFFFFFFFFFF8;
        v312 = (v64 + 104);
        v313 = v117;
        LODWORD(v311) = *MEMORY[0x277D457C0];
        v121 = (v64 + 8);
        v122 = (v309 + 8);
        v316 = v118;
        while (1)
        {
          v123 = v119 + 1;
          if (__OFADD__(v119, 1))
          {
            break;
          }

          if (v317)
          {
            v124 = MEMORY[0x223D44740](v119, v120);
          }

          else
          {
            if (v119 >= *(v310 + 16))
            {
              __break(1u);
              goto LABEL_96;
            }

            v124 = *&v120[8 * v119 + 32];
          }

          v125 = v124;
          v322 = 40;
          v323 = 0xE100000000000000;
          v126 = v318;
          v127 = v319;
          (*v312)(v318, v311, v319);
          v128 = sub_21DBF7B4C();
          v130 = v129;
          (*v121)(v126, v127);
          MEMORY[0x223D42AA0](v128, v130);

          MEMORY[0x223D42AA0](0x27203D3D20, 0xE500000000000000);
          v131 = [v125 urlRepresentation];
          v132 = v314;
          sub_21DBF546C();

          v133 = sub_21DBF535C();
          v135 = v134;
          (*v122)(v132, v315);
          MEMORY[0x223D42AA0](v133, v135);

          MEMORY[0x223D42AA0](10535, 0xE200000000000000);

          v64 = v322;
          v136 = v323;
          v321 = v99;
          v57 = *(v99 + 16);
          v137 = *(v99 + 24);
          v117 = v57 + 1;
          if (v57 >= v137 >> 1)
          {
            sub_21D18E678((v137 > 1), v57 + 1, 1);
            v99 = v321;
          }

          *(v99 + 16) = v117;
          v138 = v99 + 16 * v57;
          *(v138 + 32) = v64;
          *(v138 + 40) = v136;
          ++v119;
          v120 = v316;
          if (v123 == v313)
          {
LABEL_35:

            goto LABEL_115;
          }
        }

        __break(1u);
LABEL_84:
        v141 = 0x800000021DC5D190;
        v139 = 0xD000000000000014;
        goto LABEL_117;
      }

LABEL_113:
      v223 = v75;
      v117 = sub_21DBFBD7C();
      v75 = v223;
      if (!v117)
      {
        goto LABEL_114;
      }

      goto LABEL_25;
    }

    if (v75 == *MEMORY[0x277D44F30])
    {
      (*(v71 + 96))(v74, v70);
      v142 = *v74;
      v143 = v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE28, &unk_21DC15010) + 48);
      v144 = v310;
      (*(v52 + 32))(v60, v143, v310);
      (*(v52 + 16))(v57, v60, v144);
      v145 = (*(v52 + 88))(v57, v144);
      v146 = *MEMORY[0x277D44F68];
      if (v145 != *MEMORY[0x277D44F60] && v145 != v146)
      {
        if (v145 == *MEMORY[0x277D44F58])
        {
          (*(v52 + 8))(v60, v144);

          return 0;
        }

        sub_21DBFC63C();
        __break(1u);
        goto LABEL_156;
      }

      (*(v52 + 104))(v54, v146, v144);
      v165 = v144;
      v166 = sub_21DBF622C();
      v317 = v60;
      v167 = *(v52 + 8);
      v167(v54, v165);
      if (v166)
      {
        v168 = 15677;
      }

      else
      {
        v168 = 15649;
      }

      v169 = *(v64 + 104);
      v170 = v64;
      v171 = v318;
      v172 = v319;
      v169(v318, *MEMORY[0x277D457A0], v319);
      v173 = sub_21DBF7B4C();
      v175 = v174;
      (*(v170 + 8))(v171, v172);
      v322 = v173;
      v323 = v175;
      MEMORY[0x223D42AA0](32, 0xE100000000000000);
      MEMORY[0x223D42AA0](v168, 0xE200000000000000);

      MEMORY[0x223D42AA0](10016, 0xE200000000000000);
      v176 = [v142 urlRepresentation];
      v177 = v314;
      sub_21DBF546C();

      v178 = sub_21DBF535C();
      v180 = v179;
      (*(v309 + 8))(v177, v315);
      MEMORY[0x223D42AA0](v178, v180);

      MEMORY[0x223D42AA0](39, 0xE100000000000000);

      v139 = v322;
      v141 = v323;
      v167(v317, v165);
LABEL_117:
      v322 = 40;
      v323 = 0xE100000000000000;
      MEMORY[0x223D42AA0](v139, v141);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      return v322;
    }

    if (v75 == *MEMORY[0x277D44F10])
    {
      (*(v71 + 96))(v74, v70);
      v148 = *v74;
      v149 = v74[1];
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE08, &unk_21DC14FF0);
      (*(v311 + 32))(v308, v74 + *(v150 + 48), v312);
      v151 = sub_21D46C034(v148, v149);
      v153 = v152;

      if (qword_27CE56908 != -1)
      {
        swift_once();
      }

      v154 = off_27CE5C740;
      v155 = *(off_27CE5C740 + 2);
      if (v155)
      {
        v321 = MEMORY[0x277D84F90];
        sub_21D18E678(0, v155, 0);
        v156 = v321;
        v157 = (v154 + 40);
        do
        {
          v158 = *(v157 - 1);
          v159 = *v157;
          v322 = 40;
          v323 = 0xE100000000000000;
          sub_21DBF8E0C();
          MEMORY[0x223D42AA0](v158, v159);
          MEMORY[0x223D42AA0](540884256, 0xE400000000000000);
          MEMORY[0x223D42AA0](v151, v153);
          MEMORY[0x223D42AA0](41, 0xE100000000000000);

          v160 = v322;
          v161 = v323;
          v321 = v156;
          v163 = *(v156 + 16);
          v162 = *(v156 + 24);
          if (v163 >= v162 >> 1)
          {
            sub_21D18E678((v162 > 1), v163 + 1, 1);
            v156 = v321;
          }

          *(v156 + 16) = v163 + 1;
          v164 = v156 + 16 * v163;
          *(v164 + 32) = v160;
          *(v164 + 40) = v161;
          v157 += 2;
          --v155;
        }

        while (v155);
      }

      else
      {

        v156 = MEMORY[0x277D84F90];
      }

      v322 = v156;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
      sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
      v139 = sub_21DBFA07C();
      v141 = v191;

      (*(v311 + 8))(v308, v312);
      goto LABEL_117;
    }

    if (v75 == *MEMORY[0x277D44EE0])
    {
      (*(v71 + 96))(v74, v70);
      v181 = *v74;
      v182 = v74[1];
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE08, &unk_21DC14FF0);
      v185 = v311;
      v184 = v312;
      v186 = v307;
      (*(v311 + 32))(v307, v74 + *(v183 + 48), v312);
      v187 = sub_21D46C034(v181, v182);
      v189 = v188;

      v322 = sub_21DBFA16C();
      v323 = v190;
      MEMORY[0x223D42AA0](540884256, 0xE400000000000000);
LABEL_59:
      MEMORY[0x223D42AA0](v187, v189);

      v139 = v322;
      v141 = v323;
      (*(v185 + 8))(v186, v184);
      goto LABEL_117;
    }

    if (v75 == *MEMORY[0x277D44EF0])
    {
      (*(v71 + 96))(v74, v70);
      if (*v74 == 1)
      {
        v141 = 0x800000021DC5D210;
        v139 = 0xD000000000000014;
      }

      else
      {
        v141 = 0x800000021DC5D1F0;
        v139 = 0xD000000000000015;
      }

      goto LABEL_117;
    }

    if (v75 == *MEMORY[0x277D44F18])
    {
      (*(v71 + 96))(v74, v70);
      v192 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10, &qword_21DC28540) + 48);
      v57 = v300;
      sub_21D46CA8C(v74, v300);
      v102 = v301;
      sub_21D46CA8C(v74 + v192, v301);
      v322 = 0;
      v323 = 0xE000000000000000;
      sub_21DBFBEEC();
      MEMORY[0x223D42AA0](0xD000000000000018, 0x800000021DC5D1D0);
      v64 = v299;
      sub_21D46CAFC(v57, v299);
      v99 = v305;
      v98 = v306;
      v71 = *(v305 + 48);
      if ((v71)(v64, 1, v306) == 1)
      {
        v193 = v303;
        sub_21DBF556C();
        v194 = (v71)(v64, 1, v98);
        v195 = v304;
        if (v194 != 1)
        {
          sub_21D46CB6C(v64);
        }
      }

      else
      {
LABEL_74:
        v193 = v303;
        (*(v99 + 32))(v303, v64, v98);
        v195 = v304;
      }

      sub_21DBF554C();
      v196 = *(v99 + 8);
      v196(v193, v98);
      sub_21DBFAA2C();
      MEMORY[0x223D42AA0](8236, 0xE200000000000000);
      v197 = v302;
      sub_21D46CAFC(v102, v302);
      if ((v71)(v197, 1, v98) == 1)
      {
        sub_21DBF557C();
        if ((v71)(v197, 1, v98) != 1)
        {
          sub_21D46CB6C(v197);
        }
      }

      else
      {
        (*(v99 + 32))(v195, v197, v98);
      }

      sub_21DBF554C();
      v196(v195, v98);
      sub_21DBFAA2C();
      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v139 = v322;
      v141 = v323;
      v202 = v102;
    }

    else
    {
      if (v75 == *MEMORY[0x277D44EE8])
      {
        (*(v71 + 96))(v74, v70);
        if (*v74 == 1)
        {
          v141 = 0x800000021DC5D1B0;
          v139 = 0xD000000000000013;
          goto LABEL_117;
        }

        goto LABEL_84;
      }

      if (v75 == *MEMORY[0x277D44F48])
      {
        (*(v71 + 96))(v74, v70);
        v198 = *v74;
        v199 = v74[1];
        v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE08, &unk_21DC14FF0);
        v185 = v311;
        v184 = v312;
        v186 = v307;
        (*(v311 + 32))(v307, v74 + *(v200 + 48), v312);
        v187 = sub_21D46C034(v198, v199);
        v189 = v201;

        v322 = 0;
        v323 = 0xE000000000000000;
        sub_21DBFBEEC();

        v322 = 0xD000000000000011;
        v323 = 0x800000021DC5D170;
        goto LABEL_59;
      }

      if (v75 != *MEMORY[0x277D44F38])
      {
        goto LABEL_90;
      }

      (*(v71 + 96))(v74, v70);
      v203 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10, &qword_21DC28540) + 48);
      v57 = v294;
      sub_21D46CA8C(v74, v294);
      v99 = v295;
      sub_21D46CA8C(v74 + v203, v295);
      v322 = 0;
      v323 = 0xE000000000000000;
      sub_21DBFBEEC();
      MEMORY[0x223D42AA0](0xD000000000000011, 0x800000021DC5D150);
      v64 = v293;
      sub_21D46CAFC(v57, v293);
      v119 = v305;
      v122 = v306;
      v117 = *(v305 + 48);
      if ((v117)(v64, 1, v306) == 1)
      {
        v204 = v297;
        sub_21DBF556C();
        v205 = (v117)(v64, 1, v122);
        v206 = v298;
        if (v205 != 1)
        {
          sub_21D46CB6C(v64);
        }
      }

      else
      {
LABEL_96:
        v204 = v297;
        (*(v119 + 32))(v297, v64, v122);
        v206 = v298;
      }

      sub_21DBF554C();
      v207 = *(v119 + 8);
      v207(v204, v122);
      sub_21DBFAA2C();
      MEMORY[0x223D42AA0](8236, 0xE200000000000000);
      v208 = v296;
      sub_21D46CAFC(v99, v296);
      if ((v117)(v208, 1, v122) == 1)
      {
        sub_21DBF557C();
        if ((v117)(v208, 1, v122) != 1)
        {
          sub_21D46CB6C(v208);
        }
      }

      else
      {
        (*(v119 + 32))(v206, v208, v122);
      }

      sub_21DBF554C();
      v207(v206, v122);
      sub_21DBFAA2C();
      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v139 = v322;
      v141 = v323;
      v202 = v99;
    }

    sub_21D46CB6C(v202);
    sub_21D46CB6C(v57);
    goto LABEL_117;
  }

  (*(v71 + 96))(v74, v70);
  v97 = *v74;
  if (*v74 >> 62)
  {
    v219 = *v74;
    v71 = sub_21DBFBD7C();
    v97 = v219;
    if (!v71)
    {
LABEL_114:

      v99 = MEMORY[0x277D84F90];
LABEL_115:
      v322 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
      sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
      v139 = sub_21DBFA07C();
      v141 = v224;
LABEL_116:

      goto LABEL_117;
    }
  }

  else
  {
    v71 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v71)
    {
      goto LABEL_114;
    }
  }

  v5 = v97;
  v321 = MEMORY[0x277D84F90];
  v74 = &v321;
  v75 = sub_21D18E678(0, v71 & ~(v71 >> 63), 0);
  if (v71 < 0)
  {
    __break(1u);
    goto LABEL_113;
  }

  v98 = 0;
  v99 = v321;
  v100 = v5;
  v317 = v5 & 0xC000000000000001;
  v310 = v5 & 0xFFFFFFFFFFFFFF8;
  v312 = (v64 + 104);
  v313 = v71;
  LODWORD(v311) = *MEMORY[0x277D457B8];
  v101 = (v64 + 8);
  v102 = (v309 + 8);
  v316 = v5;
  while (1)
  {
    v64 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (!v317)
    {
      break;
    }

    v103 = MEMORY[0x223D44740](v98, v100);
LABEL_18:
    v104 = v103;
    v322 = 40;
    v323 = 0xE100000000000000;
    v106 = v318;
    v105 = v319;
    (*v312)(v318, v311, v319);
    v107 = sub_21DBF7B4C();
    v109 = v108;
    (*v101)(v106, v105);
    MEMORY[0x223D42AA0](v107, v109);

    MEMORY[0x223D42AA0](0x27203D3D20, 0xE500000000000000);
    v110 = [v104 urlRepresentation];
    v111 = v314;
    sub_21DBF546C();

    v112 = sub_21DBF535C();
    v114 = v113;
    (*v102)(v111, v315);
    v74 = &v322;
    MEMORY[0x223D42AA0](v112, v114);

    MEMORY[0x223D42AA0](10535, 0xE200000000000000);

    v70 = v322;
    v57 = v323;
    v321 = v99;
    v5 = *(v99 + 16);
    v115 = *(v99 + 24);
    v71 = v5 + 1;
    if (v5 >= v115 >> 1)
    {
      v74 = &v321;
      LODWORD(v75) = sub_21D18E678((v115 > 1), v5 + 1, 1);
      v99 = v321;
    }

    *(v99 + 16) = v71;
    v116 = v99 + 16 * v5;
    *(v116 + 32) = v70;
    *(v116 + 40) = v57;
    ++v98;
    v100 = v316;
    if (v64 == v313)
    {
      goto LABEL_35;
    }
  }

  if (v98 < *(v310 + 16))
  {
    v103 = *&v100[8 * v98 + 32];
    goto LABEL_18;
  }

  __break(1u);
LABEL_90:
  if (v75 == *MEMORY[0x277D44ED8])
  {
    (*(v71 + 96))(v74, v70);
    if (*v74)
    {
      v141 = 0xED0000222A22203DLL;
    }

    else
    {
      v141 = 0xEE00222A22203D21;
    }

    v139 = 0x2065746144657564;
    goto LABEL_117;
  }

  if (v75 == *MEMORY[0x277D44F08])
  {
    (*(v71 + 96))(v74, v70);
    v209 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10, &qword_21DC28540) + 48);
    v210 = v292;
    sub_21D46CA8C(v74, v292);
    v211 = v282;
    sub_21D46CA8C(v74 + v209, v282);
    v322 = 0;
    v323 = 0xE000000000000000;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC5D120);
    v212 = v289;
    sub_21D46CAFC(v210, v289);
    v214 = v305;
    v213 = v306;
    v215 = *(v305 + 48);
    if (v215(v212, 1, v306) == 1)
    {
      v216 = v283;
      sub_21DBF556C();
      v217 = v215(v212, 1, v213);
      v218 = v290;
      if (v217 != 1)
      {
        sub_21D46CB6C(v289);
      }
    }

    else
    {
      v216 = v283;
      (*(v214 + 32))(v283, v212, v213);
      v218 = v290;
    }

    sub_21DBF554C();
    v225 = *(v214 + 8);
    v225(v216, v213);
    sub_21DBFAA2C();
    MEMORY[0x223D42AA0](8236, 0xE200000000000000);
    sub_21D46CAFC(v211, v218);
    if (v215(v218, 1, v213) == 1)
    {
      v226 = v286;
      sub_21DBF557C();
      if (v215(v218, 1, v213) != 1)
      {
        sub_21D46CB6C(v290);
      }
    }

    else
    {
      v226 = v286;
      (*(v214 + 32))(v286, v218, v213);
    }

    sub_21DBF554C();
    v225(v226, v213);
    sub_21DBFAA2C();
    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v139 = v322;
    v141 = v323;
    sub_21D46CB6C(v211);
    v236 = &v324;
LABEL_142:
    sub_21D46CB6C(*(v236 - 32));
    goto LABEL_117;
  }

  if (v75 == *MEMORY[0x277D44F00])
  {
    v54 = v5;
    (*(v71 + 96))(v74, v70);
    v220 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10, &qword_21DC28540) + 48);
    v221 = v285;
    sub_21D46CA8C(v74, v285);
    sub_21D46CA8C(v74 + v220, v291);
    v322 = 0;
    v323 = 0xE000000000000000;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD00000000000001DLL, 0x800000021DC5D100);
    v222 = v287;
    sub_21D46CAFC(v221, v287);
    v117 = *(v305 + 48);
    if ((v117)(v222, 1, v306) == 1)
    {
      sub_21DBF556C();
      if ((v117)(v287, 1, v306) != 1)
      {
        sub_21D46CB6C(v287);
      }

      goto LABEL_129;
    }

LABEL_128:
    (*(v305 + 32))(v284, v287, v306);
LABEL_129:
    v237 = v284;
    sub_21DBF554C();
    v238 = v306;
    v239 = *(v305 + 8);
    v239(v237, v306);
    sub_21DBFAA2C();
    MEMORY[0x223D42AA0](8236, 0xE200000000000000);
    v240 = v288;
    sub_21D46CAFC(v291, v288);
    if ((v117)(v240, 1, v238) == 1)
    {
      sub_21DBF557C();
      if ((v117)(v288, 1, v306) != 1)
      {
        sub_21D46CB6C(v288);
      }
    }

    else
    {
      (*(v305 + 32))(v54, v288, v306);
    }

    sub_21DBF554C();
    v239(v54, v306);
    sub_21DBFAA2C();
    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v139 = v322;
    v141 = v323;
    sub_21D46CB6C(v291);
    v236 = &v317;
    goto LABEL_142;
  }

  v227 = v64;
  if (v75 == *MEMORY[0x277D44EF8])
  {
    (*(v71 + 96))(v74, v70);
    v228 = (v64 + 104);
    v229 = (v64 + 8);
    v231 = v318;
    v230 = v319;
    if (*v74 == 1)
    {
      (*v228)(v318, *MEMORY[0x277D45790], v319);
      v232 = sub_21DBF7B4C();
      v234 = v233;
      (*v229)(v231, v230);
      v322 = v232;
      v323 = v234;
      v235 = 15648;
    }

    else
    {
      (*v228)(v318, *MEMORY[0x277D45790], v319);
      v250 = sub_21DBF7B4C();
      v252 = v251;
      (*v229)(v231, v230);
      v322 = v250;
      v323 = v252;
      v235 = 8480;
    }

    MEMORY[0x223D42AA0](v235 & 0xFFFF00000000FFFFLL | 0x31203D0000, 0xE500000000000000);
    goto LABEL_148;
  }

  if (v75 == *MEMORY[0x277D44F80])
  {
    (*(v71 + 96))(v74, v70);
    v241 = *v74;
    v242 = *(v64 + 104);
    v244 = v318;
    v243 = v319;
    v242(v318, *MEMORY[0x277D457A8], v319);
    v245 = sub_21DBF7B4C();
    v247 = v246;
    (*(v227 + 8))(v244, v243);
    v322 = v245;
    v323 = v247;
    MEMORY[0x223D42AA0](32, 0xE100000000000000);
    if (v241)
    {
      v248 = 3153982;
    }

    else
    {
      v248 = 807419197;
    }

    if (v241)
    {
      v249 = 0xE300000000000000;
    }

    else
    {
      v249 = 0xE400000000000000;
    }

    MEMORY[0x223D42AA0](v248, v249);
    goto LABEL_147;
  }

  if (v75 == *MEMORY[0x277D44F20])
  {
    (*(v71 + 96))(v74, v70);
    v253 = *v74;
    v254 = v74[1];
    v256 = v311;
    v255 = v312;
    v257 = v307;
    (*(v311 + 104))(v307, *MEMORY[0x277D45268], v312);
    v258 = sub_21D46C034(v253, v254);
    v260 = v259;

    (*(v256 + 8))(v257, v255);
    v262 = v318;
    v261 = v319;
    (*(v227 + 104))(v318, *MEMORY[0x277D45788], v319);
    v263 = sub_21DBF7B4C();
    v265 = v264;
    (*(v227 + 8))(v262, v261);
    v322 = v263;
    v323 = v265;
    MEMORY[0x223D42AA0](540884256, 0xE400000000000000);
    MEMORY[0x223D42AA0](v258, v260);
LABEL_147:

LABEL_148:
    v139 = v322;
    v141 = v323;
    goto LABEL_117;
  }

  if (v75 == *MEMORY[0x277D44F28])
  {
    (*(v71 + 8))(v74, v70);
    return 0;
  }

  if (v75 != *MEMORY[0x277D44F40])
  {
LABEL_156:
    result = sub_21DBFC63C();
    __break(1u);
    return result;
  }

  (*(v71 + 96))(v74, v70);
  v266 = v279;
  v267 = v74;
  v268 = v281;
  (*(v279 + 32))(v280, v267, v281);
  v269 = v278;
  (*(v266 + 104))(v278, *MEMORY[0x277D45060], v268);
  v270 = sub_21DBF65AC();
  v271 = *(v266 + 8);
  v271(v269, v268);
  if (v270)
  {
    v273 = v318;
    v272 = v319;
    (*(v227 + 104))(v318, *MEMORY[0x277D45798], v319);
    v274 = sub_21DBF7B4C();
    v276 = v275;
    (*(v227 + 8))(v273, v272);
    v322 = v274;
    v323 = v276;
    MEMORY[0x223D42AA0](0x31203D3D20, 0xE500000000000000);
    v139 = v322;
    v141 = v323;
    v271(v280, v281);
    goto LABEL_117;
  }

  v271(v280, v281);
  return 0;
}

uint64_t sub_21D46C034(uint64_t a1, unint64_t a2)
{
  v28 = sub_21DBF672C();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF4CAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;
  sub_21DBF4C5C();
  sub_21D176F0C();
  v9 = sub_21DBFBB3C();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v12 = 4;
  v13 = &unk_282EA68C0;
  do
  {
    v14 = *(v13 - 1);
    v15 = *v13;
    v33 = v9;
    v34 = v11;
    v31 = v14;
    v32 = v15;
    v29 = 92;
    v30 = 0xE100000000000000;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v14, v15);
    v9 = sub_21DBFBB5C();
    v17 = v16;

    v11 = v17;
    v13 += 2;
    --v12;
  }

  while (v12);
  v19 = v25;
  v18 = v26;
  v20 = v28;
  (*(v26 + 16))(v25, v27, v28);
  v21 = (*(v18 + 88))(v19, v20);
  if (v21 == *MEMORY[0x277D45268])
  {
    v33 = 39;
    v34 = 0xE100000000000000;
    MEMORY[0x223D42AA0](v9, v11);

    v22 = 39;
    v23 = 0xE100000000000000;
LABEL_9:
    MEMORY[0x223D42AA0](v22, v23);
    return v33;
  }

  if (v21 == *MEMORY[0x277D45270])
  {
    v33 = 39;
    v34 = 0xE100000000000000;
    MEMORY[0x223D42AA0](v9, v11);

    v22 = 0x306674776463272ALL;
    v23 = 0xEA00000000003037;
    goto LABEL_9;
  }

  if (v21 == *MEMORY[0x277D45260])
  {
    v33 = 39;
    v34 = 0xE100000000000000;
    MEMORY[0x223D42AA0](v9, v11);

    v22 = 0x3730667477646327;
    v23 = 0xE900000000000030;
    goto LABEL_9;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

char *sub_21D46C3B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v35 = a3;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v33 = sub_21DBF624C();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_21DBF7B5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_criteria] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer____lazy_storage___entityNames] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_query] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  (*(v10 + 104))(v12, *MEMORY[0x277D457B8], v9);
  v14 = sub_21DBF7B4C();
  v16 = v15;
  v17 = v9;
  v18 = v8;
  (*(v10 + 8))(v12, v17);
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  v36 = v32;
  sub_21D5623AC(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D0C3A8, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83970]);
  v19 = v33;
  v20 = sub_21DBFA4AC();

  *&v4[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_attributesToFetch] = v20;
  v21 = v35;
  *&v4[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_queue] = v35;
  *&v4[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_itemTypes] = a2;
  v37.receiver = v4;
  v37.super_class = ObjectType;
  v22 = v21;
  sub_21DBF8E0C();
  v23 = objc_msgSendSuper2(&v37, sel_init);
  *v8 = a2;
  (*(v6 + 104))(v8, *MEMORY[0x277D44F88], v19);
  v24 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_criteria;
  swift_beginAccess();
  v25 = *&v23[v24];
  v26 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v23[v24] = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_21D21303C(0, v25[2] + 1, 1, v25);
    *&v23[v24] = v25;
  }

  v29 = v25[2];
  v28 = v25[3];
  if (v29 >= v28 >> 1)
  {
    v25 = sub_21D21303C((v28 > 1), v29 + 1, 1, v25);
  }

  v25[2] = v29 + 1;
  (*(v6 + 32))(v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v29, v18, v19);
  *&v23[v24] = v25;
  swift_endAccess();

  return v26;
}

unint64_t sub_21D46C888()
{
  result = qword_280D0C2E8;
  if (!qword_280D0C2E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D0C2E8);
  }

  return result;
}

uint64_t objectdestroy_25Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_39Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7C0, &qword_21DC16EA0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21D46C9FC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7C0, &qword_21DC16EA0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_21D46CA8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D46CAFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D46CB6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSAttributedString_optional __swiftcall TTRTemplatePublicLinkData.attributedStatusText(baseAttributes:forAccessibility:)(Swift::OpaquePointer baseAttributes, Swift::Bool forAccessibility)
{
  v3 = v2;
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D46D038(v3, v12);
  v14 = (*(v7 + 48))(v12, 1, v6);
  v15 = 0;
  if (v14 != 1)
  {
    sub_21D46D09C(v12, v9);
    if (forAccessibility)
    {
      if (qword_27CE56918 != -1)
      {
        swift_once();
      }

      v16 = &qword_27CE5C7D8;
    }

    else
    {
      if (qword_27CE56910 != -1)
      {
        swift_once();
      }

      v16 = &qword_27CE5C7D0;
    }

    v17 = *v16;
    v18 = sub_21DBF55BC();
    v19 = [v17 stringFromDate_];

    v20 = sub_21DBFA16C();
    v22 = v21;

    if (v9[*(v6 + 20)])
    {
      if (v9[*(v6 + 20)] == 1)
      {
        _s15RemindersUICore21TTRLocalizableStringsO9TemplatesO21linkUpdatedStatusText4dateS2S_tFZ_0(v20, v22);

        v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v24 = sub_21DBFA12C();

        type metadata accessor for Key(0);
        sub_21D112874();
        v25 = sub_21DBF9E5C();
        v26 = [v23 initWithString:v24 attributes:v25];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21DC08D00;
        v31 = *MEMORY[0x277D740C0];
        *(inited + 32) = *MEMORY[0x277D740C0];
        v32 = objc_opt_self();
        v33 = v31;
        v34 = [v32 ttr_systemRedColor];
        *(inited + 64) = sub_21D114D24();
        *(inited + 40) = v34;
        v35 = sub_21D11274C(inited);
        swift_setDeallocating();
        sub_21D1BAED0(inited + 32);
        v26 = _s15RemindersUICore21TTRLocalizableStringsO9TemplatesO31linkExpiresStatusAttributedText4date14baseAttributes07expiresjM0So18NSAttributedStringCSS_SDySo0oP3KeyaypGANtFZ_0(v20, v22, baseAttributes._rawValue, v35);
      }
    }

    else
    {
      _s15RemindersUICore21TTRLocalizableStringsO9TemplatesO21linkCreatedStatusText4dateS2S_tFZ_0(v20, v22);

      v27 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v28 = sub_21DBFA12C();

      type metadata accessor for Key(0);
      sub_21D112874();
      v29 = sub_21DBF9E5C();
      v26 = [v27 initWithString:v28 attributes:v29];
    }

    sub_21D46D1A4(v9);
    v15 = v26;
  }

  result.value.super.isa = v15;
  result.is_nil = v13;
  return result;
}

uint64_t sub_21D46D038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D46D09C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_21D46D120(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v5 setDateStyle_];
  [v5 setTimeStyle_];
  result = [v5 setDoesRelativeDateFormatting_];
  *a3 = v5;
  return result;
}

uint64_t sub_21D46D1A4(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double TTRBoardColumnDiffableDataSource.clusters.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

uint64_t TTRBoardColumnDiffableDataSource.columnItem.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_27CE5C7E8;
  swift_beginAccess();
  if ((*(v7 + 48))(v1 + v10, 1, v6))
  {
    v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    sub_21D46F904(v1 + v10, v9, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
    v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = 1;
    v14(v5, 1, 1, v13);
    v16 = sub_21D46F07C(v5);
    sub_21D0CF7E0(v5, &unk_27CE5CD80, &qword_21DC0CE80);
    if (v16 >= 1)
    {
      v14(v5, 1, 1, v13);
      sub_21D46F388(0, v5, a1);
      sub_21D0CF7E0(v5, &unk_27CE5CD80, &qword_21DC0CE80);
      v15 = 0;
    }

    v14(a1, v15, 1, v13);
    return sub_21D46F9D4(v9, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
  }
}

uint64_t TTRBoardColumnDiffableDataSource.setPresentationTrees(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7F0, &qword_21DC16EB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_21D46F904(a1, &v9 - v4, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
  v6 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = qword_27CE5C7E8;
  swift_beginAccess();
  sub_21D46F7B4(v5, v1 + v7);
  return swift_endAccess();
}

uint64_t TTRBoardColumnDiffableDataSource.applySnapshot(option:)(unsigned __int8 *a1)
{
  v2 = v1;
  v71 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v4 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v7 - 8);
  v72 = &v58 - v8;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v65 = &v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7F0, &qword_21DC16EB8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v58 - v17;
  v19 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  v73 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v64 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7F8, &unk_21DC16EC0);
  v70 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v58 - v25;
  v69 = *a1;
  sub_21D46F824();
  sub_21D46F878();
  v27 = v24;
  v28 = v19;
  v29 = v73;
  sub_21DBF8AFC();
  v71 = v26;
  sub_21DBF8A6C();
  v30 = qword_27CE5C7E8;
  swift_beginAccess();
  sub_21D0D3954(v2 + v30, v18, &qword_27CE5C7F0, &qword_21DC16EB8);
  v32 = *(v29 + 6);
  v31 = v29 + 48;
  v68 = v32;
  if (v32(v18, 1, v28) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE5C7F0, &qword_21DC16EB8);
    v33 = v70;
    v34 = v71;
    v35 = v69;
  }

  else
  {
    v60 = v30;
    v61 = v27;
    v62 = v2;
    sub_21D46F96C(v18, v23, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
    v36 = *&v23[*(v28 + 20)];
    v37 = v72;
    v73 = *(v66 + 56);
    (v73)(v72, 1, 1, v67);
    v38 = sub_21D46F07C(v37);
    sub_21D0CF7E0(v37, &unk_27CE5CD80, &qword_21DC0CE80);
    if (v38 <= 0)
    {
      sub_21D46F9D4(v23, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
      v27 = v61;
      v2 = v62;
      v33 = v70;
      v34 = v71;
      v35 = v69;
    }

    else
    {
      v59 = v23;
      v39 = v72;
      v40 = v67;
      (v73)(v72, 1, 1, v67);
      v41 = v63;
      sub_21D46F388(0, v39, v63);
      sub_21D0CF7E0(v39, &unk_27CE5CD80, &qword_21DC0CE80);
      v42 = v41;
      v43 = v65;
      sub_21D46F96C(v42, v65, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D46F904(v43, v39, type metadata accessor for TTRRemindersListViewModel.Item);
      (v73)(v39, 0, 1, v40);
      v74 = v36;
      result = sub_21D46F07C(v39);
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      v73 = v31;
      v67 = v28;
      MEMORY[0x28223BE20](result);
      v45 = v72;
      *(&v58 - 2) = &v74;
      *(&v58 - 1) = v45;
      v47 = sub_21D17422C(sub_21D46F8D0, (&v58 - 4), 0, v46);
      sub_21D0CF7E0(v45, &unk_27CE5CD80, &qword_21DC0CE80);
      v48 = *(v47 + 16);
      if (v48)
      {
        v74 = MEMORY[0x277D84F90];
        sub_21D18E77C(0, v48, 0);
        v49 = v74;
        v50 = *(v66 + 80);
        v72 = v47;
        v51 = v47 + ((v50 + 32) & ~v50);
        v52 = *(v66 + 72);
        do
        {
          sub_21D46F904(v51, v11, type metadata accessor for TTRRemindersListViewModel.Item);
          TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
          sub_21D46F9D4(v11, type metadata accessor for TTRRemindersListViewModel.Item);
          v74 = v49;
          v54 = *(v49 + 16);
          v53 = *(v49 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_21D18E77C((v53 > 1), v54 + 1, 1);
            v49 = v74;
          }

          *(v49 + 16) = v54 + 1;
          sub_21D46F96C(v6, v49 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v54, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v51 += v52;
          --v48;
        }

        while (v48);
      }

      LOBYTE(v74) = 0;
      v27 = v61;
      v34 = v71;
      sub_21DBF8A2C();

      sub_21D46F9D4(v65, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D46F9D4(v59, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
      v2 = v62;
      v33 = v70;
      v35 = v69;
      v28 = v67;
    }

    v30 = v60;
  }

  if (v68(v2 + v30, 1, v28))
  {
    v55 = MEMORY[0x277D84F90];
  }

  else
  {
    v56 = v64;
    sub_21D46F904(v2 + v30, v64, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
    v55 = TTRRemindersBoardColumnPresentationTrees.computeItemClusters()();
    sub_21D46F9D4(v56, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
  }

  v57 = qword_27CE5C7E0;
  swift_beginAccess();
  *(v2 + v57) = v55;

  sub_21D87C87C(v34, v35, 0, 0);
  return (*(v33 + 8))(v34, v27);
}

uint64_t TTRBoardColumnDiffableDataSource.item(withID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = qword_27CE5C7E8;
  swift_beginAccess();
  v6 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  if ((*(*(v6 - 8) + 48))(v2 + v5, 1, v6))
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }

  else
  {
    sub_21D0D32E4(v2 + v5, v11);
    v9 = v12;
    v10 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v10 + 40))(a1, v9, v10);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }
}

uint64_t TTRBoardColumnDiffableDataSource.isContainedByThisColumn(_:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_27CE5C7E8;
  swift_beginAccess();
  if ((*(v4 + 48))(v1 + v7, 1, v3))
  {
    v8 = 0;
  }

  else
  {
    sub_21D46F904(v1 + v7, v6, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
    v8 = TTRRemindersBoardColumnPresentationTrees.isContainedByThisColumn(_:)(a1);
    sub_21D46F9D4(v6, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
  }

  return v8 & 1;
}

uint64_t TTRBoardColumnDiffableDataSource.sortByItemVisualLocation<A, B>(_:itemID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v12 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_27CE5C7E8;
  swift_beginAccess();
  v19 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  if ((*(*(v19 - 8) + 48))(v6 + v18, 1, v19))
  {
    (*(v12 + 16))(v14, a1, a5);
    return sub_21DBFA76C();
  }

  else
  {
    sub_21D46F904(v6 + v18, v17, type metadata accessor for TTRRemindersBoardPresentationTrees);
    v21 = TTRRemindersBoardPresentationTrees.sortByItemVisualLocation<A, B>(_:itemID:)(a1, a2, v22, a4, a5, a6);
    sub_21D46F9D4(v17, type metadata accessor for TTRRemindersBoardPresentationTrees);
    return v21;
  }
}

uint64_t TTRBoardColumnDiffableDataSource.intermediateCellViewModel(forItemID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel(0);
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_27CE5C7E8;
  swift_beginAccess();
  if ((*(v6 + 48))(v2 + v13, 1, v5))
  {
    sub_21D46F904(a1, a2, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v14 = a2 + v9[5];
    *v14 = 0;
    *(v14 + 8) = 2;
    *(a2 + v9[6]) = 0;
    *(a2 + v9[7]) = 0;
    *(a2 + v9[8]) = 0;
    *(a2 + v9[9]) = 3;
    *(a2 + v9[10]) = 0;
  }

  else
  {
    sub_21D46F904(v2 + v13, v8, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
    TTRRemindersBoardColumnPresentationTrees.intermediateCellViewModel(forItemID:)(a1, v12);
    sub_21D46F9D4(v8, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
    sub_21D46F96C(v12, a2, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
  }

  return (*(v10 + 56))(a2, 0, 1, v9);
}

void (*TTRBoardColumnDiffableDataSource.indexPath(forInsertingAt:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>))(char *, void)
{
  v47 = a2;
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v7 = sub_21DBF5D5C();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v42 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7F8, &unk_21DC16EC0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C808, &unk_21DC16ED0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  sub_21D0D3954(v48, &v42 - v22, &qword_27CE5C808, &unk_21DC16ED0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v28 = v47;
      v30 = 0;
    }

    else
    {
      sub_21DBF8C2C();
      v34 = sub_21DBF8A5C();
      (*(v18 + 8))(v20, v17);
      v28 = v47;
      v30 = v34;
    }

    MEMORY[0x223D3E490](v30, 0);
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_21D46F96C(v23, v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21DBF8C3C();
    sub_21D46F9D4(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v26 = v45;
    v25 = v46;
    v27 = (*(v45 + 48))(v6, 1, v46);
    v28 = v47;
    if (v27 == 1)
    {
      sub_21D0CF7E0(v6, &unk_27CE58E70, &unk_21DC0A930);
      v29 = 1;
LABEL_12:
      v35 = type metadata accessor for TTRUnadjustedIndexPath(0);
      return (*(*(v35 - 8) + 56))(v28, v29, 1, v35);
    }

    v37 = *(v26 + 32);
    v38 = v42;
    v37(v42, v6, v25);
    v37(v28, v38, v25);
LABEL_11:
    v29 = 0;
    goto LABEL_12;
  }

  sub_21D46F96C(v23, v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v31 = v44;
  sub_21DBF8C3C();
  v33 = v45;
  v32 = v46;
  if ((*(v45 + 48))(v31, 1, v46) == 1)
  {
    sub_21D46F9D4(v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D0CF7E0(v31, &unk_27CE58E70, &unk_21DC0A930);
    v29 = 1;
    v28 = v47;
    goto LABEL_12;
  }

  v39 = *(v33 + 32);
  v40 = v43;
  v39(v43, v31, v32);
  result = sub_21DBF5CEC();
  if (!__OFADD__(*v41, 1))
  {
    ++*v41;
    result(v49, 0);
    sub_21D46F9D4(v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v28 = v47;
    v39(v47, v40, v32);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t TTRBoardColumnDiffableDataSource.itemLocation(forItemAt:)@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_27CE5C7E8;
  swift_beginAccess();
  if ((*(v6 + 48))(v2 + v9, 1, v5))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C810, &unk_21DC41790);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    sub_21D46F904(v2 + v9, v8, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
    TTRRemindersBoardColumnPresentationTrees.normalizedItemLocation(forItemAt:)(a1, a2);
    return sub_21D46F9D4(v8, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
  }
}

uint64_t TTRBoardColumnDiffableDataSource.itemLocation(forInsertingAt:localItemIDsToBeMoved:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_27CE5C7E8;
  swift_beginAccess();
  if ((*(v8 + 48))(v3 + v11, 1, v7))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C818, &qword_21DC16EE0);
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  else
  {
    sub_21D46F904(v3 + v11, v10, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
    TTRRemindersBoardColumnPresentationTrees.normalizedItemLocation(forInsertingAt:localItemIDsToBeMoved:)(a1, a2, a3);
    return sub_21D46F9D4(v10, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
  }
}

uint64_t TTRBoardColumnDiffableDataSource.__allocating_init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(v3);
  *&v4[qword_27CE5C7E0] = MEMORY[0x277D84F90];
  v5 = qword_27CE5C7E8;
  v6 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  return sub_21DBF8BBC();
}

uint64_t TTRBoardColumnDiffableDataSource.init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_27CE5C7E0) = MEMORY[0x277D84F90];
  v4 = qword_27CE5C7E8;
  v5 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);

  return sub_21DBF8BBC();
}

id TTRBoardColumnDiffableDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D46EFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(v3);
  *&v4[qword_27CE5C7E0] = MEMORY[0x277D84F90];
  v5 = qword_27CE5C7E8;
  v6 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  return sub_21DBF8BBC();
}

uint64_t sub_21D46F07C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a1, v11, &unk_27CE5CD80, &qword_21DC0CE80);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5CD80, &qword_21DC0CE80);
    v17 = v1[2];
    v18 = *(*v1 + 104);
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    ObjectType = swift_getObjectType();
    sub_21D5EF860(v19, v1 + v18, v12, ObjectType, v20);
    v22 = v16(v5, 1, v12) != 1;
    sub_21D0CF7E0(v5, &unk_27CE5CD80, &qword_21DC0CE80);
  }

  else
  {
    sub_21D46F96C(v11, v15, type metadata accessor for TTRRemindersListViewModel.Item);
    v23 = v1[2];
    sub_21D46F904(v15, v8, type metadata accessor for TTRRemindersListViewModel.Item);
    (*(v13 + 56))(v8, 0, 1, v12);
    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    v26 = swift_getObjectType();
    v30[1] = v25;
    v27 = *(*(v24 + 8) + 8);
    v28 = *(v27 + 24);
    swift_unknownObjectRetain();
    v22 = v28(v8, v26, v27);
    sub_21D0CF7E0(v8, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D46F9D4(v15, type metadata accessor for TTRRemindersListViewModel.Item);
    swift_unknownObjectRelease();
  }

  return v22;
}

void sub_21D46F388(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v41 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a2, v13, &unk_27CE5CD80, &qword_21DC0CE80);
  v18 = *(v15 + 48);
  if (v18(v13, 1, v14) == 1)
  {
    v19 = v40;
    sub_21D0CF7E0(v13, &unk_27CE5CD80, &qword_21DC0CE80);
    if (v41)
    {
      if (qword_27CE56BF8 != -1)
      {
        swift_once();
      }

      v31 = sub_21DBF84BC();
      __swift_project_value_buffer(v31, qword_27CE60258);
      v32 = MEMORY[0x277D84F90];
      v33 = sub_21D17716C(MEMORY[0x277D84F90]);
      v34 = sub_21D17716C(v32);
      sub_21DAEAB00("TTRTreeStorageSubtreeView: invalid index for top level", 54, 2, v33, v34);
    }

    else
    {
      v20 = v3[2];
      v21 = *(*v3 + 104);
      v22 = *(v20 + 16);
      v23 = *(v20 + 24);
      ObjectType = swift_getObjectType();
      sub_21D5EF860(v22, v3 + v21, v14, ObjectType, v23);
      if (v18(v7, 1, v14) != 1)
      {
        sub_21D46F96C(v7, v19, type metadata accessor for TTRRemindersListViewModel.Item);
        return;
      }

      sub_21D0CF7E0(v7, &unk_27CE5CD80, &qword_21DC0CE80);
      if (qword_27CE56BF8 != -1)
      {
        swift_once();
      }

      v35 = sub_21DBF84BC();
      __swift_project_value_buffer(v35, qword_27CE60258);
      v36 = MEMORY[0x277D84F90];
      v37 = sub_21D17716C(MEMORY[0x277D84F90]);
      v38 = sub_21D17716C(v36);
      sub_21DAEAB00("TTRTreeStorageSubtreeView: missing root item", 44, 2, v37, v38);
    }

    __break(1u);
  }

  else
  {
    sub_21D46F96C(v13, v17, type metadata accessor for TTRRemindersListViewModel.Item);
    v25 = v3[2];
    sub_21D46F904(v17, v10, type metadata accessor for TTRRemindersListViewModel.Item);
    (*(v15 + 56))(v10, 0, 1, v14);
    v27 = *(v25 + 16);
    v26 = *(v25 + 24);
    v28 = swift_getObjectType();
    v42 = v27;
    v29 = *(*(v26 + 8) + 8);
    v30 = *(v29 + 32);
    swift_unknownObjectRetain();
    v30(v41, v10, v28, v29);
    sub_21D0CF7E0(v10, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D46F9D4(v17, type metadata accessor for TTRRemindersListViewModel.Item);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21D46F7B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7F0, &qword_21DC16EB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D46F824()
{
  result = qword_27CE5C800;
  if (!qword_27CE5C800)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSingleDataSourceSection, &type metadata for TTRSingleDataSourceSection, v0, v1);
    atomic_store(result, &qword_27CE5C800);
  }

  return result;
}

unint64_t sub_21D46F878()
{
  result = qword_280D19570;
  if (!qword_280D19570)
  {
    v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(255);
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.ItemID, v3, v0, v1);
    atomic_store(result, &qword_280D19570);
  }

  return result;
}

uint64_t sub_21D46F904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D46F96C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D46F9D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for TTRBoardColumnDiffableDataSource(uint64_t a1)
{
  result = qword_27CE5C820;
  if (!qword_27CE5C820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D46FA80(uint64_t a1)
{
  sub_21D46FB28(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21D46FB28(uint64_t a1)
{
  if (!qword_27CE5C830)
  {
    type metadata accessor for TTRRemindersBoardColumnPresentationTrees(255);
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE5C830);
    }
  }
}

void *sub_21D46FB88()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_280D0F748 = result;
  return result;
}

void *sub_21D46FBB4()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_27CE5C838 = result;
  return result;
}

Swift::Void __swiftcall TTRAccessibilityReminderAutoCompleteAnnouncing.ttrAccessibilityAnnounceAutocompletionSuggestionChanges(_:)(Swift::OpaquePointer a1)
{
  v2 = sub_21D470DD8();
  if (!v2)
  {
    return;
  }

  v4 = v2;
  v5 = v3;

  sub_21D470EDC(v4);
  if (!v5)
  {
    return;
  }

  if (sub_21D470DD8())
  {

    sub_21D470EDC(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
    sub_21D0D0F1C(&qword_280D0C460, &unk_27CE5C9E0, qword_21DC0ECD0, MEMORY[0x277CBCE18]);
    sub_21DBF912C();
  }

  v7 = *(a1._rawValue + 2);
  v8 = sub_21D470DD8();
  if (v7)
  {
    if (!v8)
    {
      return;
    }

    v11 = v10;
    sub_21D470EDC(v8);
    if (v11)
    {
      return;
    }

    v8 = sub_21D470DD8();
    if (v8)
    {
      v14 = v8;
      sub_21D47103C(v8, v9, 1);
      v13 = v14;
      goto LABEL_13;
    }
  }

  else if (v8)
  {
    v12 = v8;
    sub_21D47103C(v8, v9, 0);
    v13 = v12;
LABEL_13:

    sub_21D470EDC(v13);
    return;
  }

  sub_21D47103C(v8, v9, v10);
}

Swift::Void __swiftcall TTRAccessibilityReminderAutoCompleteAnnouncing.ttrAccessibilitySetUpAccessibilityStatusChangeObservationForAutoCompleteAnnouncements()()
{
  v3 = v1;
  v4 = v0;
  sub_21D4705E4(v0, v1);
  sub_21D470BB0(MEMORY[0x277D84F90]);
  v61 = sub_21D470C64();
  if (v61)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC0AA00;
    v47 = objc_opt_self();
    v45 = [v47 defaultCenter];
    v48 = *MEMORY[0x277D765F0];
    v59 = 0u;
    v60 = 0u;
    v46 = objc_opt_self();
    v44 = [v46 mainQueue];
    v5 = swift_allocObject();
    v52 = v2;
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v4;
    v6[3] = v3;
    v6[4] = v5;
    sub_21D0DB414(&v59, &aBlock);
    v7 = v56;
    v50 = v3;
    v49 = v4;
    if (v56)
    {
      v8 = __swift_project_boxed_opaque_existential_1(&aBlock, v56);
      v9 = *(v7 - 1);
      v10 = MEMORY[0x28223BE20](v8);
      v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);

      v13 = sub_21DBFC62C();
      (*(v9 + 8))(v12, v7);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v13 = 0;
    }

    v57 = sub_21D4713DC;
    v58 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_21D0EE46C;
    v56 = &block_descriptor_30;
    v14 = _Block_copy(&aBlock);

    v15 = v45;
    v16 = v44;
    v17 = [v45 addObserverForName:v48 object:v13 queue:v44 usingBlock:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    sub_21DBF902C();
    swift_allocObject();

    v21 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v59, &qword_27CE5C690, &unk_21DC11AB0);

    *(inited + 32) = v21;
    v48 = [v47 defaultCenter];
    v22 = *MEMORY[0x277D76520];
    v59 = 0u;
    v60 = 0u;
    v23 = [v46 mainQueue];
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v26 = v50;
    v25[2] = v49;
    v25[3] = v26;
    v25[4] = v24;
    sub_21D0DB414(&v59, &aBlock);
    v27 = v56;
    if (v56)
    {
      v28 = __swift_project_boxed_opaque_existential_1(&aBlock, v56);
      v29 = v22;
      v30 = *(v27 - 1);
      v31 = MEMORY[0x28223BE20](v28);
      v33 = &v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v33, v31);

      v34 = sub_21DBFC62C();
      (*(v30 + 8))(v33, v27);
      v22 = v29;
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v34 = 0;
    }

    v57 = sub_21D471114;
    v58 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_21D0EE46C;
    v56 = &block_descriptor_19;
    v35 = _Block_copy(&aBlock);

    v36 = v48;
    v37 = [v48 addObserverForName:v22 object:v34 queue:v23 usingBlock:v35];
    _Block_release(v35);
    swift_unknownObjectRelease();
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    swift_allocObject();

    v41 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v59, &qword_27CE5C690, &unk_21DC11AB0);

    v42 = inited;
    *(inited + 40) = v41;
    sub_21D562C84(v42);
    sub_21D470BB0(v61);
  }

  else
  {

    sub_21D470BB0(0);
  }
}

uint64_t sub_21D4705E4(uint64_t a1, uint64_t a2)
{
  v5 = sub_21DBFB10C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250, &unk_21DC13240);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C848, &qword_21DC1FEB0);
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x28223BE20](v12);
  v46 = v34 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F260, &unk_21DC16F90);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v34 - v16;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    result = UIAccessibilityIsSwitchControlRunning();
    if (!result)
    {
      return result;
    }
  }

  v44 = v17;
  v45 = v8;
  v19 = sub_21D470DD8();
  if (!v19)
  {
    v37 = v15;
    v38 = v14;
    v39 = v6;
    v40 = v5;
    v41 = a1;
    v42 = a2;
    v43 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
    swift_allocObject();
    v22 = sub_21DBF907C();
    v36 = 0;
LABEL_10:
    v50 = v22;
    sub_21D0CE468();
    swift_retain_n();
    v23 = sub_21DBFB12C();
    v49 = v23;
    v24 = sub_21DBFB0DC();
    v35 = *(*(v24 - 8) + 56);
    v35(v11, 1, 1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
    sub_21D0D0F1C(&qword_280D0C450, &unk_27CE5C9E0, qword_21DC0ECD0, MEMORY[0x277CBCE20]);
    v34[1] = sub_21D47130C();
    v25 = v46;
    sub_21DBF936C();
    sub_21D0CF7E0(v11, &unk_27CE5F250, &unk_21DC13240);

    v26 = v45;
    sub_21DBFB0EC();
    v27 = sub_21DBFB12C();
    v50 = v27;
    v35(v11, 1, 1, v24);
    sub_21D0D0F1C(&qword_280D0C4F8, &qword_27CE5C848, &qword_21DC1FEB0, MEMORY[0x277CBCD60]);
    v28 = v44;
    v29 = v48;
    sub_21DBF937C();
    sub_21D0CF7E0(v11, &unk_27CE5F250, &unk_21DC13240);

    (*(v39 + 8))(v26, v40);
    (*(v47 + 8))(v25, v29);
    v30 = swift_allocObject();
    v31 = v42;
    *(v30 + 16) = v41;
    *(v30 + 24) = v31;
    sub_21D0D0F1C(&qword_280D0C540, &qword_27CE5F260, &unk_21DC16F90, MEMORY[0x277CBCCF8]);
    v32 = v38;
    v33 = sub_21DBF91AC();

    (*(v37 + 8))(v28, v32);

    sub_21D47103C(v22, v33, v36);
  }

  v22 = v19;
  if (!v20)
  {
    v37 = v15;
    v38 = v14;
    v39 = v6;
    v40 = v5;
    v41 = a1;
    v42 = a2;
    v43 = v2;
    v36 = v21;
    goto LABEL_10;
  }
}

uint64_t sub_21D470BB0(uint64_t a1)
{
  if (qword_280D0F740 != -1)
  {
    swift_once();
  }

  v3 = qword_280D0F748;
  if (a1)
  {
    sub_21DBF902C();
    v4 = sub_21DBFA5DC();
  }

  else
  {
    v4 = 0;
  }

  objc_setAssociatedObject(v1, v3, v4, 1);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D470C64()
{
  if (qword_280D0F740 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_280D0F748))
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C840, &unk_21DC1FEA0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21D0CF7E0(v5, &qword_27CE5C690, &unk_21DC11AB0);
    return 0;
  }
}

uint64_t sub_21D470D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21D4705E4(a3, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D470DD8()
{
  if (qword_27CE56928 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_27CE5C838))
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21D0CF7E0(v5, &qword_27CE5C690, &unk_21DC11AB0);
    return 0;
  }
}

uint64_t sub_21D470EDC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21D470F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21D470DD8();
  if (result)
  {
    v6 = v5;
    result = sub_21D470EDC(result);
    if (v6 == 1)
    {
      v7 = *MEMORY[0x277D76438];
      if (qword_27CE57420 != -1)
      {
        swift_once();
      }

      v8 = sub_21DBFA12C();
      UIAccessibilityPostNotification(v7, v8);

      v9 = sub_21D470DD8();
      if (v9)
      {
        v12 = v9;
        sub_21D47103C(v9, v10, 2);

        return sub_21D470EDC(v12);
      }

      else
      {
        return sub_21D47103C(0, v10, v11);
      }
    }
  }

  return result;
}

uint64_t sub_21D47103C(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_27CE56928 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v4 = qword_27CE5C838;
  if (a1)
  {

    v5 = sub_21DBFC69C();
  }

  else
  {
    v5 = 0;
  }

  objc_setAssociatedObject(v3, v4, v5, 1);
  return swift_unknownObjectRelease();
}

uint64_t destroy for TTRAccessibilityAutoCompleteAnnouncementPertaining()
{
}

uint64_t sub_21D471184(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for TTRAccessibilityAutoCompleteAnnouncementPertaining(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for TTRAccessibilityAutoCompleteAnnouncementPertaining(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAccessibilityAutoCompleteAnnouncementPertaining(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for TTRAccessibilityAutoCompleteAnnouncementPertaining(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21D47130C()
{
  result = qword_280D17800;
  if (!qword_280D17800)
  {
    v3 = sub_21D0CE468();
    result = swift_getWitnessTable(MEMORY[0x277D85228], v3, v0, v1);
    atomic_store(result, &qword_280D17800);
  }

  return result;
}

unint64_t sub_21D471380()
{
  result = qword_27CE5C850;
  if (!qword_27CE5C850)
  {
    result = swift_getWitnessTable(byte_21DC1701C, &type metadata for TTRAccessibilityAutoCompleteSuggestionsAnnouncementState, v0, v1);
    atomic_store(result, &qword_27CE5C850);
  }

  return result;
}

id UIContentSizeCategory.clamped(to:)(void *a1, void *a2, void *a3)
{
  v5 = sub_21DBFA16C();
  v7 = v6;
  if (v5 == sub_21DBFA16C() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_21DBFC64C();

    if ((v10 & 1) == 0)
    {
      v11 = sub_21DBFA16C();
      v13 = v12;
      if (v11 == sub_21DBFA16C() && v13 == v14)
      {
        v17 = a3;
      }

      else
      {
        v16 = sub_21DBFC64C();
        v17 = a3;

        if ((v16 & 1) == 0)
        {
          v18 = a1;
          if (sub_21DBFB45C())
          {
          }

          else
          {

            v17 = v18;
          }
        }
      }

      v20 = sub_21DBFA16C();
      v22 = v21;
      if (v20 == sub_21DBFA16C() && v22 == v23)
      {
      }

      else
      {
        v24 = sub_21DBFC64C();

        if ((v24 & 1) == 0)
        {
          v25 = a2;
          if (sub_21DBFB44C())
          {
          }

          else
          {

            return v25;
          }
        }
      }

      return v17;
    }
  }

  return a3;
}

uint64_t sub_21D47161C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D471660(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_21D471768(void *a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = a1;
  sub_21D4717F0(a3, a4);
  v8 = v7;

  if (v8)
  {
    v9 = sub_21DBFA12C();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_21D4717F0(SEL *a1, SEL *a2)
{
  v5 = OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder;
  swift_beginAccess();
  if (*(v2 + v5) != 1)
  {
    v10.receiver = v2;
    v10.super_class = type metadata accessor for TTRITextField();
    v6 = objc_msgSendSuper2(&v10, *a2);
    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v6 = [v2 *a1];
  if (!v6)
  {
    return 0;
  }

LABEL_3:
  v7 = v6;
  v8 = sub_21DBFA16C();

  return v8;
}

void sub_21D4718B8(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_21DBFA16C();
    v6 = a1;
    v7 = sub_21DBFA12C();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for TTRITextField();
  objc_msgSendSuper2(&v9, *a4, v7);
}

uint64_t sub_21D4719B4()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_21DC08D20;
    v3 = [v0 accessibilityLabel];
    if (v3)
    {
      v4 = v3;
      v5 = sub_21DBFA16C();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    *(v2 + 32) = v5;
    *(v2 + 40) = v7;
    v11 = [v0 text];
    if (v11)
    {
      v12 = v11;
      v13 = sub_21DBFA16C();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    *(v2 + 48) = v13;
    *(v2 + 56) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
    sub_21D471B50();
    v10 = sub_21DBFA41C();
  }

  else
  {
    v17.receiver = v0;
    v17.super_class = type metadata accessor for TTRITextField();
    v8 = objc_msgSendSuper2(&v17, sel_accessibilityUserInputLabels);
    if (v8)
    {
      v9 = v8;
      v10 = sub_21DBFA5EC();
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

unint64_t sub_21D471B50()
{
  result = qword_27CE62650;
  if (!qword_27CE62650)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE65A90, &unk_21DC09D00);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_27CE62650);
  }

  return result;
}

id TTRITextField.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRITextField.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for TTRITextField();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id TTRITextField.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRITextField.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TTRITextField();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TTRITextField.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRITextField();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NSAttributedString.nsRangesOfAttribute(_:in:where:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v23 = MEMORY[0x277D84F90];
  if (a4)
  {
    v12 = [v6 string];
    v13 = sub_21DBFA16C();
    v15 = v14;

    a3 = MEMORY[0x223D42B30](v13, v15);

    a2 = 0;
  }

  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = &v23;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D1A6510;
  *(v17 + 24) = v16;
  aBlock[4] = sub_21D24B3B4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1A6068;
  aBlock[3] = &block_descriptor_31;
  v18 = _Block_copy(aBlock);

  [v6 enumerateAttribute:a1 inRange:a2 options:a3 usingBlock:{0, v18}];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v21 = v23;

    return v21;
  }

  return result;
}

id sub_21D4721A0(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v9 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v10 = v9;
  if (a2)
  {
    if (a2 == 1)
    {
      [v9 rem:2 setFontHint:a3 & 1 isOn:a4 inRange:{a5, v16}];
    }

    else
    {
      [v9 rem:a3 & 1 setUnderline:a4 inRange:a5];
    }
  }

  else
  {
    [v9 rem:1 setFontHint:a3 & 1 isOn:a4 inRange:{a5, v16}];
  }

  [v10 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  if (swift_dynamicCast())
  {

    return v18;
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE5C860);
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAECC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21D0C9000, v13, v14, "Unexpected return type from [NSMutableAttributedString copy]", v15, 2u);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    return v17;
  }
}

id sub_21D4723BC(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v4 = [objc_opt_self() defaultParagraphStyle];
  v5 = sub_21D473308(v4, a2);

  v6 = *MEMORY[0x277D74118];
  v7 = v5;
  v8 = [v3 string];
  v9 = sub_21DBFA16C();
  v11 = v10;

  v12 = MEMORY[0x223D42B30](v9, v11);

  [v3 addAttribute:v6 value:v7 range:{0, v12}];

  [v3 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  if (swift_dynamicCast())
  {

    return v19;
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_27CE5C860);
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAECC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21D0C9000, v15, v16, "Unexpected return type from [NSMutableAttributedString copy]", v17, 2u);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    return a1;
  }
}

id sub_21D472618(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  [v5 deleteCharactersInRange_];
  [v5 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  if (swift_dynamicCast())
  {

    return v12;
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE5C860);
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAECC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21D0C9000, v8, v9, "Unexpected return type from [NSMutableAttributedString copy]", v10, 2u);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    return a1;
  }
}

id NSAttributedString.withMutations(_:)(void (*a1)(void))
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  a1();
  [v2 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  if (swift_dynamicCast())
  {

    return v9;
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5C860);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Unexpected return type from [NSMutableAttributedString copy]", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    return v8;
  }
}

void sub_21D472974(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  v9(a2, a3, a4, a5);
}

uint64_t NSAttributedString.allHashtagIdentifiers.getter()
{
  v1 = [v0 string];
  v2 = sub_21DBFA16C();
  v4 = v3;

  v5 = MEMORY[0x223D42B30](v2, v4);

  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84FA0];
  v7 = (v6 + 16);
  v11[4] = sub_21D24B444;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21D472974;
  v11[3] = &block_descriptor_9_0;
  v8 = _Block_copy(v11);

  [v0 rem:0 enumerateHashtagInRange:v5 options:0x100000 usingBlock:v8];
  _Block_release(v8);
  swift_beginAccess();
  v9 = *v7;
  sub_21DBF8E0C();

  return v9;
}

Swift::Bool __swiftcall NSAttributedString.hasHashtags(in:)(__C::_NSRange in)
{
  v2 = v1;
  length = in.length;
  location = in.location;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  v9[4] = sub_21D24BDA4;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21D472974;
  v9[3] = &block_descriptor_15_0;
  v7 = _Block_copy(v9);

  [v2 rem:location enumerateHashtagInRange:length options:0x100000 usingBlock:v7];
  _Block_release(v7);
  swift_beginAccess();
  LOBYTE(v6) = *v6;

  return v6;
}

double sub_21D472CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_21D112874();
  v9 = sub_21DBF9E6C();
  v8(v9, a3, a4, a5);

  return result;
}

Swift::tuple_title_NSAttributedString_isValid_Bool __swiftcall NSAttributedString.validatedReminderTitle()()
{
  v0 = sub_21DBF4CAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21DBF4C5C();
  v13 = v3;
  v4 = NSAttributedString.withMutations(_:)(sub_21D4768B4);
  (*(v1 + 8))(v3, v0);
  v5 = [v4 string];
  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v10 = v9 != 0;
  v11 = v4;
  result.title.super.isa = v11;
  result.isValid = v10;
  return result;
}

uint64_t sub_21D472EA0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5C860);
  v1 = __swift_project_value_buffer(v0, qword_27CE5C860);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id static NSAttributedString.colorText(_:color:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v5 = sub_21DBFA12C();
  v6 = [v4 initWithString_];

  v7 = v6;
  v8 = [v7 length];
  [v7 beginEditing];
  [v7 addAttribute:*MEMORY[0x277D740C0] value:a3 range:{0, v8}];
  [v7 endEditing];

  return v7;
}

id static NSAttributedString.linkText(_:URL:color:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v6 = sub_21DBFA12C();
  v7 = [v5 initWithString_];

  v8 = v7;
  v9 = [v8 length];
  [v8 beginEditing];
  v10 = *MEMORY[0x277D740E8];
  sub_21DBF535C();
  v11 = sub_21DBFA12C();

  [v8 addAttribute:v10 value:v11 range:{0, v9}];

  [v8 addAttribute:*MEMORY[0x277D740C0] value:a4 range:{0, v9}];
  [v8 endEditing];

  return v8;
}

id NSAttributedString.lineHeight(_:)(double a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v4 = [v3 length];
  v5 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v5 setMaximumLineHeight_];
  [v5 setMinimumLineHeight_];
  [v3 addAttribute:*MEMORY[0x277D74118] value:v5 range:{0, v4}];

  return v3;
}

NSAttributedString __swiftcall NSAttributedString.alignment(_:)(NSTextAlignment a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v4 = [v3 length];
  v5 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v5 setAlignment_];
  [v3 addAttribute:*MEMORY[0x277D74118] value:v5 range:{0, v4}];

  return v3;
}

id sub_21D473308(void *a1, uint64_t a2)
{
  [a1 mutableCopy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D17750, 0x277D74240);
  if (swift_dynamicCast())
  {
    [v13 setLineBreakMode_];
    [v13 copy];
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
    sub_21D0D8CF0(0, &qword_27CE5C878, 0x277D74248);
    if (swift_dynamicCast())
    {

      return v13;
    }

    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE5C860);
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAECC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21D0C9000, v9, v10, "Unexpected return type from [NSMutableParagraphStyle copy]", v11, 2u);
      MEMORY[0x223D46520](v11, -1, -1);
    }
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5C860);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Unexpected return type from [NSParagraphStyle mutableCopy]", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }
  }

  return a1;
}

id NSParagraphStyle.withMutations(_:)(void (*a1)())
{
  v12 = v1;
  [v1 mutableCopy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D17750, 0x277D74240);
  if (swift_dynamicCast())
  {
    a1();
    [v13 copy];
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
    sub_21D0D8CF0(0, &qword_27CE5C878, 0x277D74248);
    if (swift_dynamicCast())
    {

      return v13;
    }

    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE5C860);
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAECC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21D0C9000, v9, v10, "Unexpected return type from [NSMutableParagraphStyle copy]", v11, 2u);
      MEMORY[0x223D46520](v11, -1, -1);
    }
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5C860);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Unexpected return type from [NSParagraphStyle mutableCopy]", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }
  }

  return v12;
}

id static NSAttributedString.blankSpace()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v1 = sub_21DBFA12C();
  v2 = [v0 initWithString_];

  return v2;
}

id static NSAttributedString.formattedString(format:formatAttributes:content:contentAttributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_allocWithZone(MEMORY[0x277CCAB68]);
  v7 = sub_21DBFA12C();
  v8 = [v6 initWithString_];

  v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v10 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21D112874();
  v11 = sub_21DBF9E5C();
  v12 = [v9 initWithString:v10 attributes:v11];

  v13 = v8;
  v14 = sub_21DBFA12C();
  v15 = [v13 rangeOfString_];
  v17 = v16;

  if (v15 == sub_21DBF4B4C())
  {
    v18 = v13;
  }

  else
  {
    v19 = sub_21DBFA12C();
    [v13 replaceCharactersInRange:v15 withString:{v17, v19}];

    v20 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v21 = sub_21DBF9E5C();
    v22 = [v20 initWithString:v13 attributes:v21];

    [v22 insertAttributedString:v12 atIndex:v15];
    v18 = v12;
    v12 = v22;
  }

  return v12;
}

void sub_21D473AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7 = a2 + a5;
  if (__OFADD__(a2, a5))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Key(0);
    sub_21D112874();
    v10 = sub_21DBF9E5C();
    [a7 addAttributes:v10 range:{v7, a3}];
  }
}

NSAttributedString_optional __swiftcall NSAttributedString.addingStrikethrough(color:)(UIColor_optional color)
{
  isa = color.value.super.isa;
  [v1 mutableCopy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_27CE5FAF0, 0x277CCAB48);
  if (swift_dynamicCast())
  {
    v3.value.super.isa = isa;
    NSMutableAttributedString.addStrikethrough(color:)(v3);
    v4 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

    v3.value.super.isa = v4;
  }

  else
  {
    v3.value.super.isa = 0;
  }

  return *&v3;
}

Swift::Void __swiftcall NSMutableAttributedString.addStrikethrough(color:)(UIColor_optional color)
{
  v2 = v1;
  isa = color.value.super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  v5 = *MEMORY[0x277D74150];
  *(inited + 32) = *MEMORY[0x277D74150];
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = 1;
  v6 = v5;
  sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0, &qword_21DC09050);
  if (isa)
  {
    v7 = *MEMORY[0x277D74148];
    v18 = sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
    *&v17 = isa;
    sub_21D0CF2E8(&v17, v16);
    v8 = isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21D476CE0(v16, v7, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for Key(0);
  sub_21D112874();
  v10 = sub_21DBF9E5C();

  v11 = [v2 string];
  v12 = sub_21DBFA16C();
  v14 = v13;

  v15 = MEMORY[0x223D42B30](v12, v14);

  [v2 addAttributes:v10 range:{0, v15}];
}

NSAttributedString __swiftcall NSAttributedString.formattingURLsAsHyperlinks(withTextColor:)(UIColor withTextColor)
{
  v2 = withTextColor.super.isa;
  v3.super.isa = v2;
  v4 = sub_21D47A2E4(v1, v3);

  return v4;
}

Swift::Void __swiftcall NSMutableAttributedString.formatURLsAsHyperlinks(withTextColor:)(UIColor withTextColor)
{
  v3 = sub_21DBF4CAC();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 string];
  if (!v8)
  {
    sub_21DBFA16C();
    v8 = sub_21DBFA12C();
  }

  v9 = sub_21DBFA16C();
  v11 = v10;
  if (qword_280D0C410 != -1)
  {
    v25 = v9;
    swift_once();
    v9 = v25;
  }

  if (qword_280D0C418)
  {
    v26[0] = v1;
    v26[1] = v9;
    v12 = v9;
    v26[2] = v11;
    v13 = qword_280D0C418;
    sub_21DBF4C5C();
    sub_21D176F0C();
    v14 = sub_21DBFBB3C();
    v16 = v15;
    (*(v4 + 8))(v7, v3);

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v18 = [v13 matchesInString:v8 options:0 range:{0, MEMORY[0x223D42B30](v12, v11)}];

      sub_21D0D8CF0(0, &qword_280D0C278, 0x277CCACC0);
      v19 = sub_21DBFA5EC();
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  v21 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  *(inited + 64) = sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  *(inited + 40) = withTextColor;
  v22 = v21;
  v23 = withTextColor.super.isa;
  v24 = sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0, &qword_21DC09050);
  NSMutableAttributedString.formatDetectedLinksAndPhoneNumbers(_:adding:)(v19, v24);
}

uint64_t NSAttributedString.rangesOfAttribute(_:in:where:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v31 = MEMORY[0x277D84F90];
  if (a4)
  {
    v10 = [v6 string];
    v11 = sub_21DBFA16C();
    v13 = v12;

    v14 = MEMORY[0x223D42B30](v11, v13);

    v15 = 0;
  }

  else
  {
    aBlock = a2;
    v26 = a3;
    v16 = [v6 string];
    sub_21DBFA16C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
    sub_21D0D0F1C(&qword_280D178A0, &unk_27CE5FB00, &unk_21DC18DC0, MEMORY[0x277D83D30]);
    sub_21D176F0C();
    v15 = sub_21DBFB9DC();
    v14 = v17;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = v6;
  v18[5] = &v31;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_21D47B390;
  *(v19 + 24) = v18;
  v29 = sub_21D24BE7C;
  v30 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_21D1A6068;
  v28 = &block_descriptor_25;
  v20 = _Block_copy(&aBlock);
  v21 = v6;

  [v21 enumerateAttribute:a1 inRange:v15 options:v14 usingBlock:{0, v20}];
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v24 = v31;

    return v24;
  }

  return result;
}

void sub_21D4743AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, void *a7, char **a8)
{
  if (a5(a1))
  {
    v10 = [a7 string];
    sub_21DBFA16C();

    v11 = sub_21DBFAD7C();
    v13 = v12;
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      v16 = *a8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_21D213540(0, *(v16 + 2) + 1, 1, v16);
        *a8 = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      if (v19 >= v18 >> 1)
      {
        v16 = sub_21D213540((v18 > 1), v19 + 1, 1, v16);
        *a8 = v16;
      }

      *(v16 + 2) = v19 + 1;
      v20 = &v16[16 * v19];
      *(v20 + 4) = v11;
      *(v20 + 5) = v13;
    }
  }
}

uint64_t NSAttributedString.indexesOfAttribute(_:in:where:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = v7;
  sub_21DBF5B8C();
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21D47B39C;
  *(v16 + 24) = v15;
  v19[4] = sub_21D24BE7C;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_21D1A6068;
  v19[3] = &block_descriptor_35_0;
  v17 = _Block_copy(v19);

  [v8 enumerateAttribute:a1 inRange:a2 options:a3 usingBlock:{0, v17}];
  _Block_release(v17);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D474650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a2, a3, a4);
  if (result)
  {
    if (a3 + a2 < a2)
    {
      __break(1u);
    }

    else
    {
      return sub_21DBF5ADC();
    }
  }

  return result;
}

uint64_t sub_21D4746AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t *a7)
{
  result = a5(a1, a2, a3, a4);
  if (result)
  {
    v11 = *a7;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v11;
    if ((result & 1) == 0)
    {
      result = sub_21D211158(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
      *a7 = result;
    }

    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_21D211158((v12 > 1), v13 + 1, 1, v11);
      v11 = result;
      *a7 = result;
    }

    *(v11 + 16) = v13 + 1;
    v14 = v11 + 16 * v13;
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
  }

  return result;
}

uint64_t NSAttributedString.fullLengthAttribute<A>(_:ofType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = *MEMORY[0x277D85DE8];
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v25 = *(a2 - 8);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v4 length] >= 1)
  {
    v26 = 0;
    v27 = 0;
    v16 = [v4 length];
    if ([v4 attribute:a1 atIndex:0 longestEffectiveRange:&v26 inRange:{0, v16}])
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v28 = v30;
    v29 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690, &unk_21DC11AB0);
    v19 = swift_dynamicCast();
    v20 = *(v25 + 56);
    if (v19)
    {
      v20(v11, 0, 1, a2);
      v21 = *(v25 + 32);
      v21(v15, v11, a2);
      if (!v26 && v27 == v16)
      {
        v21(a3, v15, a2);
        v22 = a3;
        v23 = 0;
        return v20(v22, v23, 1, a2);
      }

      (*(v25 + 8))(v15, a2);
    }

    else
    {
      v20(v11, 1, 1, a2);
      (*(v9 + 8))(v11, v8);
    }

    v22 = a3;
    v23 = 1;
    return v20(v22, v23, 1, a2);
  }

  v17 = *(v25 + 56);

  return v17(a3, 1, 1, a2);
}

void NSMutableAttributedString.trimCharacters(in:)(uint64_t a1)
{
  v3 = [v1 string];
  v4 = sub_21DBFA16C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = [v1 string];
    v9 = sub_21DBFA16C();
    v11 = v10;

    MEMORY[0x28223BE20](v12);
    v40 = a1;
    v13 = sub_21D3F7414(sub_21D3F98C8, v39, v9, v11);
    v15 = v14;

    v16 = [v1 string];
    v17 = sub_21DBFA16C();
    v19 = v18;

    if (v15)
    {
      v21 = MEMORY[0x223D42B30](v17, v19);

      if (!v21)
      {
        return;
      }

      [v1 beginEditing];
      v22 = 0;
      goto LABEL_16;
    }

    MEMORY[0x28223BE20](v20);
    v40 = a1;
    sub_21D3F7D48(sub_21D3F974C, v39, v17, v19);
    v24 = v23;

    if (v24)
    {
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v27 = [v1 string];
      sub_21DBFA16C();

      v28 = sub_21DBFA29C();

      v41 = v28;
      v29 = [v1 string];
      v30 = sub_21DBFA16C();
      v32 = v31;

      v43 = v30;
      v44 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C880, &qword_21DC17068);
      sub_21D0D0F1C(&qword_280D17638, &qword_27CE5C880, &qword_21DC17068, MEMORY[0x277D84338]);
      sub_21D176F0C();
      v25 = sub_21DBFB9DC();
      v26 = v33;
    }

    v43 = 15;
    v44 = v13;
    v34 = [v1 string];
    v35 = sub_21DBFA16C();
    v37 = v36;

    v41 = v35;
    v42 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
    sub_21D0D0F1C(&qword_280D178A0, &unk_27CE5FB00, &unk_21DC18DC0, MEMORY[0x277D83D30]);
    sub_21D176F0C();
    v22 = sub_21DBFB9DC();
    v21 = v38;
    if (v38)
    {
      [v1 beginEditing];
      if (!v26)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!v26)
      {
        return;
      }

      [v1 beginEditing];
    }

    [v1 deleteCharactersInRange_];
    if (!v21)
    {
LABEL_17:
      [v1 endEditing];
      return;
    }

LABEL_16:
    [v1 deleteCharactersInRange_];
    goto LABEL_17;
  }
}

NSAttributedString __swiftcall NSAttributedString.trimmingAsReminderTitle()()
{
  v0 = sub_21DBF4CAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21DBF4C5C();
  v7 = v3;
  v4 = NSAttributedString.withMutations(_:)(sub_21D47BAB4);
  (*(v1 + 8))(v3, v0);
  return v4;
}

id NSAttributedString.limitingSetOfAttributes(to:)(uint64_t a1)
{
  v3 = [v1 string];
  if (!v3)
  {
    sub_21DBFA16C();
    v3 = sub_21DBFA12C();
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

  if (!*(a1 + 16))
  {
    return v4;
  }

  [v4 beginEditing];
  v5 = [v1 string];
  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = MEMORY[0x223D42B30](v6, v8);

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21D47B3FC;
  *(v11 + 24) = v10;
  v16[4] = sub_21D47B404;
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_21D472CC4;
  v16[3] = &block_descriptor_46;
  v12 = _Block_copy(v16);
  sub_21DBF8E0C();
  v13 = v4;

  [v1 enumerateAttributesInRange:0 options:v9 usingBlock:{0, v12}];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    [v13 endEditing];

    return v4;
  }

  __break(1u);
  return result;
}

void sub_21D475244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_21DBF8E0C();
  v11 = sub_21D47B8A4(a1, a5);

  if (v11[2])
  {
    type metadata accessor for Key(0);
    sub_21D112874();
    v12 = sub_21DBF9E5C();

    [a6 setAttributes:v12 range:{a2, a3}];
  }

  else
  {
  }
}

uint64_t NSAttributedString.allHashtagIdentifiers(in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84FA0];
  v7 = (v6 + 16);
  v11[4] = sub_21D47BA94;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21D472974;
  v11[3] = &block_descriptor_51;
  v8 = _Block_copy(v11);

  [v3 rem:a1 enumerateHashtagInRange:a2 options:0x100000 usingBlock:v8];
  _Block_release(v8);
  swift_beginAccess();
  v9 = *v7;
  sub_21DBF8E0C();

  return v9;
}

double sub_21D475488(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = [a1 objectIdentifier];
    v6 = sub_21DBFA16C();
    v8 = v7;

    swift_beginAccess();
    sub_21D29B8E4(&v10, v6, v8);
    swift_endAccess();
  }

  return result;
}

void sub_21D475520(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  if (a1)
  {

    swift_beginAccess();
    *(a5 + 16) = 1;
    *a4 = 1;
  }
}

NSAttributedString __swiftcall NSAttributedString.prepending(_:withSeparator:)(Swift::String_optional _, Swift::String_optional withSeparator)
{
  v3 = v2;
  if (_.value._object)
  {
    object = withSeparator.value._object;
    v13 = v3;
    v5 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v6 = sub_21DBFA12C();
    v7 = [v5 initWithString_];

    if (object)
    {
      v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v9 = sub_21DBFA12C();
      v10 = [v8 initWithString_];

      [v7 appendAttributedString_];
    }

    v11 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
    [v7 appendAttributedString_];

    return v7;
  }

  else
  {

    return v2;
  }
}

id NSMutableAttributedString.performBatchUpdates(_:)(void (*a1)(id))
{
  a1([v1 beginEditing]);

  return [v1 endEditing];
}

Swift::Void __swiftcall NSMutableAttributedString.replace(firstOccurence:with:)(Swift::String firstOccurence, NSAttributedString with)
{
  v3 = v2;
  isa = with.super.isa;
  object = firstOccurence._object;
  countAndFlagsBits = firstOccurence._countAndFlagsBits;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = &v25 - v8;
  v10 = [v3 string];
  v11 = sub_21DBFA16C();
  v13 = v12;

  v29 = v11;
  v30 = v13;
  v27 = countAndFlagsBits;
  v28 = object;
  v14 = sub_21DBF582C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_21D176F0C();
  v15 = sub_21DBFBBAC();
  v17 = v16;
  LOBYTE(v11) = v18;
  sub_21D0CF7E0(v9, &unk_27CE65010, &qword_21DC08D60);

  if ((v11 & 1) == 0)
  {
    v29 = v15;
    v30 = v17;
    v19 = [v3 string];
    v20 = sub_21DBFA16C();
    v22 = v21;

    v27 = v20;
    v28 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
    sub_21D0D0F1C(&qword_280D178A0, &unk_27CE5FB00, &unk_21DC18DC0, MEMORY[0x277D83D30]);
    v23 = sub_21DBFB9DC();
    [v3 replaceCharactersInRange:v23 withAttributedString:{v24, isa}];
  }
}

Swift::Void __swiftcall NSMutableAttributedString.insert(_:afterSearchStringWithLowestRangeIfFoundAllSearchStrings:)(NSAttributedString _, Swift::OpaquePointer afterSearchStringWithLowestRangeIfFoundAllSearchStrings)
{
  v3 = *(afterSearchStringWithLowestRangeIfFoundAllSearchStrings._rawValue + 2);
  if (v3)
  {
    sub_21DBF8E0C();
    v5 = [v2 string];
    if (!v5)
    {
      sub_21DBFA16C();
      v5 = sub_21DBFA12C();
    }

    v6 = sub_21DBFA12C();

    v7 = [v5 rangeOfString_];
    v9 = v8;

    if (v7 != sub_21DBF4B4C())
    {
      v10 = v3 - 1;
      if (v10)
      {
        v11 = afterSearchStringWithLowestRangeIfFoundAllSearchStrings._rawValue + 56;
        while (1)
        {
          sub_21DBF8E0C();
          v12 = [v2 string];
          if (!v12)
          {
            sub_21DBFA16C();
            v12 = sub_21DBFA12C();
          }

          v13 = sub_21DBFA12C();

          v14 = [v12 rangeOfString_];
          v16 = v15;

          if (v14 == sub_21DBF4B4C())
          {
            break;
          }

          if (v14 < v7)
          {
            v7 = v14;
            v9 = v16;
          }

          v11 += 16;
          if (!--v10)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        if (__OFADD__(v7, v9))
        {
          __break(1u);
        }

        else
        {

          [v2 insertAttributedString:_.super.isa atIndex:&v7[v9]];
        }
      }
    }
  }
}

Swift::Void __swiftcall NSMutableAttributedString.formatDetectedLinksAndPhoneNumbers(_:adding:)(Swift::OpaquePointer _, Swift::OpaquePointer adding)
{
  v3 = v2;
  v43 = sub_21DBF4CAC();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v37 - v14;
  if (_._rawValue >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    [v3 beginEditing];
    v50 = _._rawValue & 0xC000000000000001;
    v44 = _._rawValue + 32;
    v45 = _._rawValue & 0xFFFFFFFFFFFFFF8;
    v47 = (v9 + 32);
    rawValue = _._rawValue;
    v49 = *MEMORY[0x277D740E8];
    v46 = (v9 + 16);
    v17 = (v9 + 8);
    v40 = (v6 + 1);
    sub_21DBF8E0C();
    v38 = v3;
    v41 = v11;
    v39 = (v9 + 8);
    while (1)
    {
      if (__OFSUB__(i--, 1))
      {
        __break(1u);
LABEL_21:

        [v3 endEditing];
        return;
      }

      if (v50)
      {
        v24 = MEMORY[0x223D44740](i, rawValue);
        goto LABEL_13;
      }

      if ((i & 0x8000000000000000) != 0)
      {
        break;
      }

      if (i >= *(v45 + 16))
      {
        goto LABEL_24;
      }

      v24 = *&v44[8 * i];
LABEL_13:
      v9 = v24;
      v25 = [v24 URL];
      if (v25)
      {
        v18 = v25;
        sub_21DBF546C();

        (*v47)(v15, v11, v8);
        v54 = v8;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v53);
        (*v46)(boxed_opaque_existential_0, v15, v8);
        sub_21D0CF2E8(&v53, v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = adding._rawValue;
        v6 = &v51;
        sub_21D476CE0(v52, v49, isUniquelyReferenced_nonNull_native);
        (*v17)(v15, v8);
        adding._rawValue = v51;
      }

      else
      {
        v26 = [v9 phoneNumber];
        if (!v26)
        {
          goto LABEL_6;
        }

        v27 = v26;
        v28 = sub_21DBFA16C();
        v30 = v29;

        v31 = v42;
        sub_21DBF4BBC();
        *&v53 = v28;
        *(&v53 + 1) = v30;
        sub_21D176F0C();
        v32 = sub_21DBFBB0C();

        *&v53 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
        sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
        sub_21DBFA07C();
        (*v40)(v31, v43);

        _._rawValue = sub_21DBFA12C();

        v6 = [_._rawValue rem_addingTel];

        if (!v6)
        {
          sub_21DBFA16C();
          _._rawValue = v33;
          v6 = sub_21DBFA12C();
        }

        v34 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initWithString_];

        v11 = v41;
        v17 = v39;
        if (!v34)
        {
          v3 = v38;
          goto LABEL_6;
        }

        v54 = sub_21D0D8CF0(0, &qword_27CE5EE60, 0x277CBEBC0);
        *&v53 = v34;
        sub_21D0CF2E8(&v53, v52);
        v35 = v34;
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v51 = adding._rawValue;
        v6 = &v51;
        sub_21D476CE0(v52, v49, v36);

        adding._rawValue = v51;
        v3 = v38;
      }

      type metadata accessor for Key(0);
      sub_21D112874();
      _._rawValue = sub_21DBF9E5C();
      v21 = [v9 range];
      [v3 addAttributes:_._rawValue range:{v21, v22}];

      v9 = _._rawValue;
LABEL_6:

      if (!i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }
}

Swift::Void __swiftcall NSMutableAttributedString.formatHashtags(with:)(Swift::OpaquePointer with)
{
  rawValue = with._rawValue;
  v35 = sub_21DBF4CAC();
  v2 = *(v35 - 8);
  *&v3 = MEMORY[0x28223BE20](v35).n128_u64[0];
  v5 = &rawValue - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v1;
  v6 = [v1 string];
  v7 = sub_21DBFA16C();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  v33 = v7;
  v34 = v9;
  v40 = v7;
  v41 = v9;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  v42 = 0;
  v43 = v10;
  sub_21DBF8E0C();
  sub_21DBFA30C();
  if (v11)
  {
    v12 = 0;
    v32 = 0;
    v13 = (v2 + 8);
    v14 = 1;
    while (2)
    {
      v15 = v12;
      while (1)
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        sub_21DBF4C1C();
        v17 = sub_21DBF4BFC();
        v18 = *v13;
        (*v13)(v5, v35);
        if (v17)
        {
          break;
        }

        if (v14)
        {
        }

        else
        {
          v19 = sub_21DBFA28C();
          if (__OFSUB__(v19, 1))
          {
            goto LABEL_22;
          }

          if (v15 == v19 - 1)
          {

LABEL_17:
            v21 = v33;
            v22 = v34;
            v23 = sub_21DBFA2CC();
            v24 = sub_21DBFA2CC();
            if (v24 >> 14 >= v23 >> 14)
            {
              v38 = v23;
              v39 = v24;
              v36 = v21;
              v37 = v22;
              sub_21DBF8E0C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C888, &qword_21DC17070);
              sub_21D0D0F1C(&qword_27CE5C890, &qword_27CE5C888, &qword_21DC17070, MEMORY[0x277D83660]);
              sub_21D176F0C();
              v25 = sub_21DBFB9DC();
              v27 = v26;
              type metadata accessor for Key(0);
              sub_21D112874();
              v28 = sub_21DBF9E5C();
              [v31 addAttributes:v28 range:{v25, v27}];

              v15 = 0;
              goto LABEL_19;
            }

LABEL_23:
            __break(1u);
            return;
          }

          sub_21DBF4C2C();
          v20 = sub_21DBF4BFC();

          v18(v5, v35);
          if ((v20 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        sub_21DBFA30C();
        ++v15;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

LABEL_19:
      v14 = v17 ^ 1;
      sub_21DBFA30C();
      v32 = v15;
      if (v29)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
}

Swift::Void __swiftcall NSMutableAttributedString.replace(placeholder:with:)(Swift::String placeholder, UIImage with)
{
  v3 = v2;
  object = placeholder._object;
  countAndFlagsBits = placeholder._countAndFlagsBits;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
  [v10 setImage_];
  v11 = [objc_opt_self() attributedStringWithAttachment_];
  v12 = [v3 string];
  v13 = sub_21DBFA16C();
  v15 = v14;

  v29 = v13;
  v30 = v15;
  v27 = countAndFlagsBits;
  v28 = object;
  v16 = sub_21DBF582C();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  sub_21D176F0C();
  v17 = sub_21DBFBBAC();
  v19 = v18;
  LOBYTE(v13) = v20;
  sub_21D0CF7E0(v9, &unk_27CE65010, &qword_21DC08D60);

  if ((v13 & 1) == 0)
  {
    v29 = v17;
    v30 = v19;
    v21 = [v3 string];
    v22 = sub_21DBFA16C();
    v24 = v23;

    v27 = v22;
    v28 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
    sub_21D0D0F1C(&qword_280D178A0, &unk_27CE5FB00, &unk_21DC18DC0, MEMORY[0x277D83D30]);
    v25 = sub_21DBFB9DC();
    [v3 replaceCharactersInRange:v25 withAttributedString:{v26, v11}];
  }
}

Swift::Void __swiftcall NSMutableAttributedString.clearLinks()()
{
  v1 = [v0 string];
  v2 = sub_21DBFA16C();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    [v0 beginEditing];
    v6 = *MEMORY[0x277D740E8];
    v7 = [v0 string];
    v8 = sub_21DBFA16C();
    v10 = v9;

    v11 = MEMORY[0x223D42B30](v8, v10);

    [v0 removeAttribute:v6 range:{0, v11}];

    [v0 endEditing];
  }
}

id sub_21D4767D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21DBFA12C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v6;
}

void sub_21D4768E0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_21D17E0CC(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_21D220064();
      v10 = v18;
      goto LABEL_8;
    }

    sub_21D215474(v15, a4 & 1);
    v10 = sub_21D17E0CC(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    sub_21D332B90(v10, a3, a1, a2, v20);

    v22 = a3;
  }
}

void sub_21D476A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21D0CEF70(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_21D2201D4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_21D2156F8(v18, a5 & 1);
    v13 = sub_21D0CEF70(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_21D332BD8(v13, a3, a4, a1, a2, v23);

    sub_21DBF8E0C();
  }
}

void sub_21D476BC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21D181DFC();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_21D2206C4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_21D215F68(v13, a3 & 1);
    v8 = sub_21D181DFC();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v14)
  {
    v18 = *(*v4 + 56);
    v19 = *(v18 + 8 * v8);
    *(v18 + 8 * v8) = a1;
  }

  else
  {

    sub_21D335728();
  }
}

_OWORD *sub_21D476CE0(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21D10FE34(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_21D2206D8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_21D215F7C(v13, a3 & 1);
    v8 = sub_21D10FE34(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_21DBFC70C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_21D0CF2E8(a1, v19);
  }

  else
  {
    sub_21D332C28(v8, a2, a1, v18);

    return a2;
  }
}

void sub_21D476E20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21D181DFC();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_21D220858();
      v8 = v16;
      goto LABEL_8;
    }

    sub_21D21624C(v13, a3 & 1);
    v8 = sub_21D181DFC();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v14)
  {
    v18 = *(*v4 + 56);
    v19 = *(v18 + 8 * v8);
    *(v18 + 8 * v8) = a1;
  }

  else
  {

    sub_21D335728();
  }
}

uint64_t sub_21D476F40(uint64_t a1, uint64_t a2, char a3, __n128 a4)
{
  v5 = v4;
  v9 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v14 = sub_21D17E2AC(a2);
  v16 = v12[2];
  v17 = (v13 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v13;
  v20 = v12[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v5;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
      return sub_21D47B544(a1, v22 + *(*(v23 - 8) + 72) * v14, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_21D220CA4(v15);
    goto LABEL_7;
  }

  sub_21D216938(v18, a3 & 1);
  v25 = sub_21D17E2AC(a2);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_21DBFC70C();
    __break(1u);
    return result;
  }

  v14 = v25;
  v21 = *v5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_21D1071C0(a2, v11, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  return sub_21D332D28(v14, v11, a1, v21);
}

_OWORD *sub_21D4770EC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21DBFC1BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21D17E2D8(a2);
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
      sub_21D220F90();
      goto LABEL_7;
    }

    sub_21D21707C(v17, a3 & 1);
    v23 = sub_21D17E2D8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_21D332E64(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_21DBFC70C();
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
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_0(v21);

  return sub_21D0CF2E8(a1, v21);
}

void sub_21D477304(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21D17E07C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_21D221228();
      v8 = v16;
      goto LABEL_8;
    }

    sub_21D217444(v13, a3 & 1);
    v8 = sub_21D17E07C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_21D332F24(v8, a2, a1, v18);

    v21 = a2;
  }
}

void sub_21D477488(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(uint64_t, void *, uint64_t, uint64_t))
{
  v10 = v6;
  v13 = *v6;
  v14 = sub_21D17E07C(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = sub_21D17E07C(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v10;
  if (v20)
  {
    v25 = *(v24 + 56);
    v26 = *(v25 + 8 * v14);
    *(v25 + 8 * v14) = a1;
  }

  else
  {
    a6(v14, a2, a1, v24);

    v27 = a2;
  }
}

uint64_t sub_21D477630(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_21D181E00();
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
      return sub_21D0F02F4(a1, v20 + *(*(v21 - 8) + 72) * v13, &qword_27CE5CDA0, &unk_21DC09B90);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_21D222008();
    goto LABEL_7;
  }

  sub_21D218660(v16, a3 & 1);
  v23 = sub_21D181E00();
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_21DBFC70C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_21D1071C0(a2, v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return sub_21D332F68(v13, v10, a1, v19);
}

uint64_t sub_21D4777E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21D17E780(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_21D2224F4();
      result = v17;
      goto LABEL_8;
    }

    sub_21D218DBC(v14, a3 & 1);
    result = sub_21D17E780(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_21DBFC70C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * result) = a1;
  }

  else
  {

    return sub_21D0D5460();
  }

  return result;
}

uint64_t sub_21D4778F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21D17E780(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21D222508();
      goto LABEL_7;
    }

    sub_21D219020(v13, a3 & 1);
    v24 = sub_21D17E780(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_21DBFC70C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_21DBF5D5C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_21D332F7C(v10, a2, a1, v16);
}

uint64_t sub_21D477A58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21D17E780(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_21D222770();
      result = v17;
      goto LABEL_8;
    }

    sub_21D21936C(v14, a3 & 1);
    result = sub_21D17E780(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_21DBFC70C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * result;
    v21 = *(a1 + 16);
    *v20 = *a1;
    *(v20 + 16) = v21;
    *(v20 + 32) = *(a1 + 32);
  }

  else
  {

    return sub_21D333028(result, a2, a1, v19);
  }

  return result;
}

void sub_21D477B78(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21D17E07C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_21D222B60();
      v8 = v16;
      goto LABEL_8;
    }

    sub_21D219984(v13, a3 & 1);
    v8 = sub_21D17E07C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_21D332F24(v8, a2, a1, v18);

    v21 = a2;
  }
}

uint64_t sub_21D477CBC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_21D181E00();
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
      return sub_21D0F02F4(a1, v20 + *(*(v21 - 8) + 72) * v13, &unk_27CE5CD80, &qword_21DC0CE80);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_21D222CC0();
    goto LABEL_7;
  }

  sub_21D219BEC(v16, a3 & 1);
  v23 = sub_21D181E00();
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_21DBFC70C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_21D1071C0(a2, v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return sub_21D33312C(v13, v10, a1, v19);
}

uint64_t sub_21D477EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_21D17EA50(a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_21D2234B0();
      v15 = v23;
      goto LABEL_8;
    }

    sub_21D21AB30(v20, a6 & 1);
    v15 = sub_21D17EA50(a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      result = sub_21DBFC70C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 32 * v15;
    v27 = *v26;
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3;
    *(v26 + 24) = a4;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_21D333234(v15, a5, a1, a2, a3, a4, v25);
    return sub_21D22BF24(a5, &v29);
  }
}

id sub_21D478064(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_21D17E07C(a2);
  v11 = v7[2];
  v12 = (v8 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v8;
  v15 = v7[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
      return sub_21D47B544(a1, v17 + *(*(v18 - 8) + 72) * v9, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_21D223698(v10);
    goto LABEL_7;
  }

  sub_21D21B004(v13, a3 & 1, v10);
  v20 = sub_21D17E07C(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    result = sub_21DBFC70C();
    __break(1u);
    return result;
  }

  v9 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_21D3332A4(v9, a2, a1, v16, v10);

  return a2;
}

void sub_21D4781D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_21D17EC6C(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a6 & 1) != 0)
  {
LABEL_7:
    v22 = *v7;
    if (v20)
    {
LABEL_8:
      v23 = v22[7];
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8, &unk_21DC09250);
      sub_21D0F02F4(a1, v23 + *(*(v24 - 8) + 72) * v16, &qword_27CE583A8, &unk_21DC09250);
      return;
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a6 & 1) == 0)
  {
    sub_21D223B08();
    goto LABEL_7;
  }

  sub_21D21B694(v19, a6 & 1);
  v25 = sub_21D17EC6C(a2, a3, a4, a5);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_15:
    sub_21DBFC70C();
    __break(1u);
    return;
  }

  v16 = v25;
  v22 = *v7;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_21D33334C(v16, a2, a3, a4, a5, a1, v22);
  sub_21DBF8E0C();

  sub_21DBF8E0C();
}

uint64_t sub_21D478378(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21DBF799C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21D17ED0C(a2);
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
      sub_21D223D7C();
      goto LABEL_7;
    }

    sub_21D21BA3C(v17, a3 & 1);
    v28 = sub_21D17ED0C(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_21D33340C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_21DBFC70C();
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
  v22 = sub_21DBF563C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

_BYTE *sub_21D4785BC(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_21D17E07C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = result;
      sub_21D224234();
      result = v16;
      goto LABEL_8;
    }

    sub_21D21C158(v13, a3 & 1);
    result = sub_21D17E07C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_14:
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      result = sub_21DBFC70C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    result[v18[7]] = a1;
  }

  else
  {
    sub_21D333500(result, a2, a1, v18);

    return a2;
  }

  return result;
}

void sub_21D4786EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_21D0CEF70(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_21D224390();
      v15 = v23;
      goto LABEL_8;
    }

    sub_21D21C3BC(v20, a6 & 1);
    v15 = sub_21D0CEF70(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    v27 = v26[2];
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  else
  {
    sub_21D333544(v15, a4, a5, a1, a2, a3, v25);

    sub_21DBF8E0C();
  }
}

_OWORD *sub_21D478860(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21D17EA0C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21D224524();
      goto LABEL_7;
    }

    sub_21D21C68C(v13, a3 & 1);
    v19 = sub_21D17EA0C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21D181CE0(a2, v21);
      return sub_21D333598(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_21DBFC70C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_21D0CF2E8(a1, v17);
}

uint64_t sub_21D4789AC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21D0F55D0(a2);
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
      sub_21D2246C8();
      goto LABEL_7;
    }

    sub_21D21C944(v17, a3 & 1);
    v23 = sub_21D0F55D0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_21D333614(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_21DBFC70C();
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
  v21 = v20[7] + 192 * v14;

  return sub_21D47B4E8(a1, v21);
}

uint64_t sub_21D478B7C(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21D10186C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_21D224B88();
      result = v17;
      goto LABEL_8;
    }

    sub_21D21D0E0(v14, a3 & 1);
    result = sub_21D10186C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_21DBFC70C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + result) = a1;
  }

  else
  {

    return sub_21D101FC0(result, a2, a1, v19);
  }

  return result;
}

void sub_21D478C88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21D0CEF70(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21D224CD4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21D21D434(v16, a4 & 1);
    v11 = sub_21D0CEF70(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_21D0D7E78(v11, a2, a3, a1, v21);

    sub_21DBF8E0C();
  }
}

id sub_21D478DD0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21D17E07C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_21D224FC8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_21D21D6F0(v13, a3 & 1);
    v8 = sub_21D17E07C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      result = sub_21DBFC70C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v14)
  {
    *(*(*v4 + 56) + 8 * v8) = a1;
  }

  else
  {
    sub_21D33572C();

    return a2;
  }
}

void sub_21D478F18(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21D17E07C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_21D225288();
      v8 = v16;
      goto LABEL_8;
    }

    sub_21D21DBEC(v13, a3 & 1);
    v8 = sub_21D17E07C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  else
  {
    sub_21D332F24(v8, a2, a1, v18);

    v19 = a2;
  }
}

uint64_t sub_21D479060(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_21D17EF1C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_21D2253EC();
      goto LABEL_7;
    }

    sub_21D21DE5C(v16, a3 & 1);
    v21 = sub_21D17EF1C(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21D1071C0(a2, v10, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);
      return sub_21D333700(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_21DBFC70C();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

void sub_21D479204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_21D17E8F8(a5);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      v22 = v14;
      sub_21D22562C();
      v14 = v22;
      goto LABEL_8;
    }

    sub_21D21E1E4(v19, a6 & 1);
    v14 = sub_21D17E8F8(a5);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      sub_21D0D8CF0(0, &qword_280D17890, 0x277CE41F8);
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v7;
  if (v20)
  {
    v25 = v24[7] + 32 * v14;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3;
    *(v25 + 24) = a4;

    sub_21D47B42C(v26, v27, v28, v29);
  }

  else
  {
    sub_21D33372C(v14, a5, a1, a2, a3, a4, v24);

    v30 = a5;
  }
}

void sub_21D479378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v16 = *v8;
  v18 = sub_21D17E948(a5, a6, a7);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a8 & 1) == 0)
  {
    if (v23 >= v21 && (a8 & 1) == 0)
    {
      sub_21D2257BC();
      goto LABEL_9;
    }

    sub_21D21E470(v21, a8 & 1);
    v24 = sub_21D17E948(a5, a6, a7);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_9;
    }

LABEL_17:
    sub_21DBFC70C();
    __break(1u);
    return;
  }

LABEL_9:
  if (v22)
  {
    v26 = (*v9)[7] + 32 * v18;
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    v30 = *(v26 + 24);
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3;
    *(v26 + 24) = a4;

    sub_21D47B42C(v27, v28, v29, v30);
  }

  else
  {
    sub_21D333778(v18, a5, a6, a7, a1, a2, a3, a4, *v9);

    sub_21D179E10(a5, a6, a7);
  }
}

uint64_t sub_21D47950C(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_21D181E00();
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      *(v19[7] + v13) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v18 >= result && (a3 & 1) == 0)
  {
    result = sub_21D225964();
    goto LABEL_7;
  }

  sub_21D21E78C(result, a3 & 1);
  result = sub_21D181E00();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_14:
    result = sub_21DBFC70C();
    __break(1u);
    return result;
  }

  v13 = result;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_21D1071C0(a2, v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return sub_21D3337D4(v13, v10, a1, v19);
}

uint64_t sub_21D479680(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_21D17EFA0(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_21D225D24();
      goto LABEL_7;
    }

    sub_21D21EDA0(v16, a3 & 1);
    v21 = sub_21D17EFA0(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21D1071C0(a2, v10, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
      return sub_21D333888(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_21DBFC70C();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

void sub_21D479864(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(uint64_t, void *, uint64_t, uint64_t))
{
  v10 = v6;
  v13 = *v6;
  v14 = sub_21D17E07C(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = sub_21D17E07C(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v10;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {
    a6(v14, a2, a1, v24);

    v25 = a2;
  }
}

void sub_21D4799D0(uint64_t a1, char a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_21D17E07C(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_21D22630C();
      v10 = v18;
      goto LABEL_8;
    }

    sub_21D21F594(v15, a4 & 1);
    v10 = sub_21D17E07C(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      sub_21DBFC70C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 16 * v10;
    v22 = *v21;
    *v21 = a1;
    *(v21 + 8) = a2 & 1;
  }

  else
  {
    sub_21D333960(v10, a3, a1, a2 & 1, v20);

    v23 = a3;
  }
}

unint64_t *sub_21D479B28(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_21DBF8E0C();
    sub_21D47B5AC(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

id sub_21D479BC4(void *a1, uint64_t *a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  [v5 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  if (swift_dynamicCast())
  {

    return v12;
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE5C860);
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAECC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21D0C9000, v8, v9, "Unexpected return type from [NSMutableAttributedString copy]", v10, 2u);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    return a1;
  }
}

id sub_21D479DA0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t, uint64_t))
{
  v7 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  a4(v7, a2, a3);
  [v7 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  if (swift_dynamicCast())
  {

    return v14;
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE5C860);
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAECC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21D0C9000, v10, v11, "Unexpected return type from [NSMutableAttributedString copy]", v12, 2u);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    return a1;
  }
}

id sub_21D479F54(void *a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  sub_21D248FD0(v3, a2);
  [v3 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  if (swift_dynamicCast())
  {

    return v10;
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE5C860);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAECC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Unexpected return type from [NSMutableAttributedString copy]", v8, 2u);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    return a1;
  }
}

id sub_21D47A128(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  [v7 replaceCharactersInRange:a2 withAttributedString:{a3, a4}];
  [v7 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  if (swift_dynamicCast())
  {

    return v14;
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE5C860);
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAECC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21D0C9000, v10, v11, "Unexpected return type from [NSMutableAttributedString copy]", v12, 2u);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    return a1;
  }
}

id sub_21D47A2E4(void *a1, UIColor a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  NSMutableAttributedString.formatURLsAsHyperlinks(withTextColor:)(a2);
  [v3 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  if (swift_dynamicCast())
  {

    return v10;
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE5C860);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAECC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Unexpected return type from [NSMutableAttributedString copy]", v8, 2u);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    return a1;
  }
}

id sub_21D47A48C(void *a1, void *a2, id *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  sub_21D6B9550(v5, a2, a3);
  [v5 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  if (swift_dynamicCast())
  {

    return v12;
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE5C860);
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAECC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21D0C9000, v8, v9, "Unexpected return type from [NSMutableAttributedString copy]", v10, 2u);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    return a1;
  }
}

id sub_21D47A638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v10 = [v9 initWithAttributedString_];
  v11 = [v10 string];
  v12 = sub_21DBFA16C();
  v14 = v13;

  v34 = v12;
  v35 = v14;
  v36 = a2;
  v37 = a3;
  v15 = sub_21DBF582C();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_21D176F0C();
  v16 = sub_21DBFBBAC();
  v18 = v17;
  LOBYTE(v12) = v19;
  sub_21D0CF7E0(v8, &unk_27CE65010, &qword_21DC08D60);

  if ((v12 & 1) == 0)
  {
    v34 = v16;
    v35 = v18;
    v20 = [v10 string];
    v21 = sub_21DBFA16C();
    v23 = v22;

    v36 = v21;
    v37 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00, &unk_21DC18DC0);
    sub_21D0D0F1C(&qword_280D178A0, &unk_27CE5FB00, &unk_21DC18DC0, MEMORY[0x277D83D30]);
    v24 = sub_21DBFB9DC();
    [v10 replaceCharactersInRange:v24 withAttributedString:{v25, v32}];
  }

  [v10 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  if (swift_dynamicCast())
  {

    return v36;
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v27 = sub_21DBF84BC();
    __swift_project_value_buffer(v27, qword_27CE5C860);
    v28 = sub_21DBF84AC();
    v29 = sub_21DBFAECC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_21D0C9000, v28, v29, "Unexpected return type from [NSMutableAttributedString copy]", v30, 2u);
      MEMORY[0x223D46520](v30, -1, -1);
    }

    v31 = v33;

    return v31;
  }
}

id sub_21D47A9D8(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  sub_21DB0D59C(v8, a2, a3, a4);
  [v8 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  if (swift_dynamicCast())
  {

    return v15;
  }

  else
  {
    if (qword_27CE56930 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE5C860);
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAECC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Unexpected return type from [NSMutableAttributedString copy]", v13, 2u);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    return a1;
  }
}

id _sSo18NSAttributedStringC15RemindersUICoreE09formattedB06format0F10Attributes25attributedStringsToInsertABSS_SDySo0aB3KeyaypGSayABGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v6 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21D112874();
  v7 = sub_21DBF9E5C();
  v8 = [v5 initWithString:v6 attributes:v7];

  isEscapingClosureAtFileLocation = v8;
  v10 = &selRef_setAttributedText_;
  v11 = [isEscapingClosureAtFileLocation string];
  v12 = sub_21DBFA16C();
  v14 = v13;

  v15 = MEMORY[0x223D42B30](v12, v14);

  v16 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v17 = sub_21D4767D8(0x3F29245C645C2825, 0xE900000000000040, 0);
  v27 = v17;
  if (v17)
  {
    if (a4 >> 62)
    {
      v28 = sub_21DBFBD7C();
      if (v28)
      {
LABEL_9:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v73 = 0;
        v63 = a4 & 0xFFFFFFFFFFFFFF8;
        v67 = a4 & 0xC000000000000001;
        v64 = a4;
        v65 = v27;
        v66 = v28;
        while (1)
        {
          v72 = v31;
          if (v67)
          {
            v32 = MEMORY[0x223D44740](v29, a4);
          }

          else
          {
            if (v29 >= *(v63 + 16))
            {
              goto LABEL_41;
            }

            v32 = *(a4 + 8 * v29 + 32);
          }

          v33 = v32;
          v34 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v70 = v29;
          v71 = v30;
          v35 = [isEscapingClosureAtFileLocation v10[155]];
          if (!v35)
          {
            sub_21DBFA16C();
            v35 = sub_21DBFA12C();
          }

          v36 = [v27 rangeOfFirstMatchInString:v35 options:0 range:{v73, v15}];
          v38 = v37;

          if (v36 == sub_21DBF4B4C())
          {
            break;
          }

          v39 = [v33 v10[155]];
          if (!v39)
          {
            sub_21DBFA16C();
            v39 = sub_21DBFA12C();
          }

          v69 = v15;
          [isEscapingClosureAtFileLocation replaceCharactersInRange:v36 withString:{v38, v39}];

          v40 = [v33 v10[155]];
          sub_21DBFA16C();
          v42 = v41;

          v68 = v34;
          if ((v42 & 0x1000000000000000) != 0)
          {
            v43 = sub_21DBFA35C();
          }

          else
          {
            v43 = sub_21DBFA36C();
          }

          v44 = v43;

          v45 = swift_allocObject();
          v45[2] = v36;
          v45[3] = v38;
          v45[4] = isEscapingClosureAtFileLocation;
          v46 = isEscapingClosureAtFileLocation;
          v47 = isEscapingClosureAtFileLocation;
          sub_21D0D0E88(v71, v72);
          v48 = swift_allocObject();
          *(v48 + 16) = sub_21D47BA64;
          *(v48 + 24) = v45;
          aBlock[4] = sub_21D47BA8C;
          aBlock[5] = v48;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_21D472CC4;
          aBlock[3] = &block_descriptor_62;
          v49 = _Block_copy(aBlock);

          [v33 enumerateAttributesInRange:0 options:v44 usingBlock:{0, v49}];
          _Block_release(v49);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            goto LABEL_38;
          }

          v50 = [v33 string];
          sub_21DBFA16C();
          v52 = v51;

          if ((v52 & 0x1000000000000000) != 0)
          {
            v53 = sub_21DBFA35C();
          }

          else
          {
            v53 = sub_21DBFA36C();
          }

          v54 = v53;

          isEscapingClosureAtFileLocation = &v36[v54];
          if (__OFADD__(v36, v54))
          {
            goto LABEL_39;
          }

          v15 = v69 + v73 - &v36[v38];
          if (__OFSUB__(v69 + v73, &v36[v38]))
          {
            goto LABEL_40;
          }

          if (v68 == v66)
          {

            return v47;
          }

          v29 = v70 + 1;
          v30 = sub_21D47BA64;
          v31 = v45;
          v73 = isEscapingClosureAtFileLocation;
          isEscapingClosureAtFileLocation = v46;
          a4 = v64;
          v27 = v65;
          v10 = &selRef_setAttributedText_;
        }

        if (qword_27CE56930 != -1)
        {
          swift_once();
        }

        v55 = sub_21DBF84BC();
        __swift_project_value_buffer(v55, qword_27CE5C860);
        v56 = sub_21DBF84AC();
        v57 = sub_21DBFAEBC();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_21D0C9000, v56, v57, "Mismatch for NSAttributedString where there are more attributedStringsToInsert than format marks (%%@)", v58, 2u);
          MEMORY[0x223D46520](v58, -1, -1);
        }

        v59 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v60 = sub_21DBFA12C();
        v61 = sub_21DBF9E5C();
        v62 = [v59 initWithString:v60 attributes:v61];

        sub_21D0D0E88(v71, v72);
        return v62;
      }
    }

    else
    {
      v28 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_9;
      }
    }

    return isEscapingClosureAtFileLocation;
  }

  if (qword_27CE56930 != -1)
  {
LABEL_42:
    swift_once();
  }

  v18 = sub_21DBF84BC();
  __swift_project_value_buffer(v18, qword_27CE5C860);
  v19 = sub_21DBF84AC();
  v20 = sub_21DBFAECC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21D0C9000, v19, v20, "regex failed initialization.  Returning original string", v21, 2u);
    MEMORY[0x223D46520](v21, -1, -1);
  }

  v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v23 = sub_21DBFA12C();
  v24 = sub_21DBF9E5C();
  v25 = [v22 initWithString:v23 attributes:v24];

  return v25;
}

uint64_t sub_21D47B39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(v3 + 16))(a1);
  if (result)
  {
    if (a3 + a2 < a2)
    {
      __break(1u);
    }

    else
    {
      return sub_21DBF5ADC();
    }
  }

  return result;
}

void sub_21D47B42C(void *a1, void *a2, char a3, unint64_t a4)
{
  v4 = a4 >> 61;
  if ((a4 >> 61) > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {

        a1 = a2;
      }

      else
      {
        if (v4 != 4)
        {
          return;
        }

        sub_21D181CB8(a1, a2, a3);
        a1 = (a4 & 0x1FFFFFFFFFFFFFFFLL);
      }

      goto LABEL_13;
    }

LABEL_11:

LABEL_13:

    return;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  if (v4 == 1)
  {

    sub_21D181CB8(a1, a2, a3);
  }
}

uint64_t sub_21D47B544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_21D47B5AC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v33 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v40 = a4 + 7;
  v34 = v10;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v36 = (v9 - 1) & v9;
LABEL_14:
    v15 = v12 | (v5 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    sub_21D0CEB98(*(a3 + 56) + 32 * v15, v39);
    v37 = v16;
    sub_21D0CEB98(v39, &v38);
    if (!v4[2])
    {
      v11 = v16;
      goto LABEL_6;
    }

    v32 = v15;
    sub_21DBFA16C();
    v17 = v4;
    sub_21DBFC7DC();
    v31 = v16;
    sub_21DBFA27C();
    v18 = sub_21DBFC82C();

    v19 = -1 << *(v4 + 32);
    v20 = v18 & ~v19;
    if ((*(v40 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = sub_21DBFA16C();
        v24 = v23;
        if (v22 == sub_21DBFA16C() && v24 == v25)
        {
          break;
        }

        v27 = sub_21DBFC64C();

        if (v27)
        {
          goto LABEL_25;
        }

        v20 = (v20 + 1) & v21;
        v4 = v17;
        if (((*(v40 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

LABEL_25:
      sub_21D0CF7E0(&v37, &qword_27CE5C898, &unk_21DC33810);
      __swift_destroy_boxed_opaque_existential_0(v39);

      *(a1 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v10 = v34;
      v28 = __OFADD__(v33++, 1);
      v4 = v17;
      v9 = v36;
      if (v28)
      {
        __break(1u);
LABEL_28:
        sub_21D9856A4(a1, a2, v33, a3);
        return;
      }
    }

    else
    {
LABEL_6:
      sub_21D0CF7E0(&v37, &qword_27CE5C898, &unk_21DC33810);
      __swift_destroy_boxed_opaque_existential_0(v39);

      v10 = v34;
      v9 = v36;
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_28;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v36 = (v14 - 1) & v14;
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t *sub_21D47B8A4(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      sub_21DBF8E0C();
      v11 = sub_21D479B28(v13, v7, a1, a2);
      MEMORY[0x223D46520](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
  sub_21DBF8E0C();
  sub_21D47B5AC((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

void sub_21D47BAB8(uint64_t a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    goto LABEL_12;
  }

  v2 = *v1;
  if (*v1 >> 62)
  {
    v12 = a1;
    v3 = sub_21DBFBD7C();
    a1 = v12;
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1[1];
  if (v4 == v3)
  {
LABEL_11:
    *(v1 + 32) = 1;
LABEL_12:
    *a1 = 0;
    *(a1 + 8) = 0;
    return;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v5 = a1;
    v6 = *(v2 + 8 * v4 + 32);
    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = a1;
  v6 = MEMORY[0x223D44740](v1[1], v2);
  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_18;
  }

LABEL_9:
  v1[1] = v7;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v8 + 16);
  if (v9 == v10)
  {

    a1 = v5;
    goto LABEL_11;
  }

  if (v9 < v10)
  {
    v11 = *(v8 + v9 + 32);
    v1[3] = v9 + 1;
    *v5 = v6;
    *(v5 + 8) = v11;
    return;
  }

LABEL_21:
  __break(1u);
}

double sub_21D47BBCC(void *a1, uint64_t a2)
{
  v39 = a1;
  ObjectType = swift_getObjectType();
  v6 = v2[4];
  if (v6)
  {
    if (v6 == v39)
    {
      return result;
    }

    v7 = v2[5];
    v8 = v6;
    sub_21D47C0B0(v8, v7);

    v6 = v2[4];
  }

  v2[4] = v39;
  v2[5] = a2;

  v9 = v2[3];
  if ((~v9 & 0xF000000000000006) != 0)
  {
    v11 = v2[2];
    if (v9 < 0)
    {
      v23 = swift_getObjectType();
      v24 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v25 = v39;
      sub_21D47CBC4(v11, v9);
      v24(v25, a2, v23, v9 & 0x7FFFFFFFFFFFFFFFLL);
      v26 = (*((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10))(v23, v9 & 0x7FFFFFFFFFFFFFFFLL);
      (*(a2 + 16))(v26, ObjectType, a2);
    }

    else
    {
      v12 = v39;
      sub_21D47CBC4(v11, v9);
      if ((v9 & 1) == 0 || (v13 = [v12 traitCollection], v14 = objc_msgSend(v13, sel_horizontalSizeClass), v13, v14 == 1))
      {
        v15 = sub_21D4809C4();
        v17 = v16;
        v18 = [v12 inputAssistantItem];
        v19 = [v18 leadingBarButtonGroups];

        sub_21D47C850();
        v20 = sub_21DBFA5EC();

        v41 = v20;
        if (v15)
        {
          v40 = v15;
          MEMORY[0x28223BE20](v21);
          v38[2] = &v40;
          v22 = v15;
          if ((sub_21D17B954(sub_21D47CBDC, v38, v20) & 1) == 0)
          {
            v27 = v22;
            MEMORY[0x223D42D80]();
            if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_30;
            }

            goto LABEL_20;
          }
        }

        else
        {
        }

        while (1)
        {
          v30 = [v12 inputAssistantItem];
          v31 = [v30 trailingBarButtonGroups];

          v32 = sub_21DBFA5EC();
          v40 = v32;
          sub_21DBF8E0C();
          v27 = sub_21D6D8B28(v17, v32);
          v34 = v33;

          if ((v34 & 1) == 0)
          {
            if (!v27)
            {

              sub_21D47C838(v11, v9);

              return result;
            }
          }

          if (!(v40 >> 62) || (sub_21DBFBD7C() & 0x8000000000000000) == 0)
          {
            v35 = v17;
            sub_21DBD1644(0, 0, v35);

            v36 = [v12 inputAssistantItem];
            v37 = sub_21DBFA5DC();

            [v36 setTrailingBarButtonGroups_];

            sub_21D47C838(v11, v9);
            return result;
          }

          __break(1u);
LABEL_30:
          sub_21DBFA63C();
LABEL_20:
          sub_21DBFA6CC();
          v28 = [v12 inputAssistantItem];
          v29 = sub_21DBFA5DC();

          [v28 setLeadingBarButtonGroups_];
        }
      }
    }

    sub_21D47C838(v11, v9);
  }

  else
  {

    v10 = v39;
  }

  return result;
}

void sub_21D47C0B0(id a1, uint64_t a2)
{
  v3 = v2[4];
  if (v3)
  {
    ObjectType = swift_getObjectType();
    if (v3 == a1)
    {
      v7 = ObjectType;
      v2[4] = 0;
      v2[5] = 0;

      v8 = v2[3];
      if ((~v8 & 0xF000000000000006) != 0)
      {
        v9 = v2[2];
        if ((v8 & 0x8000000000000000) == 0)
        {

          v10 = sub_21D4809C4();
          v12 = v10;
          v13 = v11;
          if (!v10)
          {
            goto LABEL_9;
          }

          v29 = v11;
          v14 = v10;
          v15 = [a1 inputAssistantItem];
          v16 = v14;
          v17 = [v15 leadingBarButtonGroups];
          sub_21D47C850();
          v18 = sub_21DBFA5EC();

          v30 = v18;
          v19 = sub_21D47C9A0(&v30, v16);

          if (v30 >> 62)
          {
            goto LABEL_21;
          }

          v20 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20 < v19)
          {
LABEL_22:
            __break(1u);
            return;
          }

          while (1)
          {
            sub_21DBD1618(v19, v20);
            v21 = sub_21DBFA5DC();

            [v15 setLeadingBarButtonGroups_];

            v13 = v29;
LABEL_9:
            a1 = [a1 inputAssistantItem];
            v19 = v13;
            v22 = [a1 trailingBarButtonGroups];
            v16 = sub_21D47C850();
            v15 = sub_21DBFA5EC();

            v30 = v15;
            v23 = sub_21D47C9A0(&v30, v19);

            if (v30 >> 62)
            {
              v24 = sub_21DBFBD7C();
              if (v24 >= v23)
              {
LABEL_11:
                sub_21DBD1618(v23, v24);
                v25 = sub_21DBFA5DC();

                [a1 setTrailingBarButtonGroups_];

                sub_21D47C838(v9, v8);
                return;
              }
            }

            else
            {
              v24 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v24 >= v23)
              {
                goto LABEL_11;
              }
            }

            __break(1u);
LABEL_21:
            v20 = sub_21DBFBD7C();
            if (v20 < v19)
            {
              goto LABEL_22;
            }
          }
        }

        sub_21D47C69C(v2[2], v2[3]);
        v26 = [a1 inputAccessoryView];
        v27 = swift_getObjectType();
        v28 = (*((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10))(v27, v8 & 0x7FFFFFFFFFFFFFFFLL);

        if (v26)
        {

          if (v26 == v28)
          {
            (*(a2 + 16))(0, v7, a2);
          }
        }

        sub_21D47C838(v9, v8);
      }
    }
  }
}

void sub_21D47C438(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  if ((~v4 & 0xF000000000000006) == 0)
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = *(v2 + 16);
  if (v4 < 0)
  {
    ObjectType = swift_getObjectType();
    v17 = v5;
    v14 = *((v4 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    sub_21D47C69C(v6, v4);
    v14(&v17, ObjectType, v4 & 0x7FFFFFFFFFFFFFFFLL);
    sub_21D47C838(v6, v4);
    return;
  }

  sub_21D47C69C(v6, v4);
  v16 = v6;
  v7 = sub_21D480A98();
  v9 = v8;
  v10 = 0;
  if (v7 >> 62)
  {
    goto LABEL_6;
  }

LABEL_4:
  if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    sub_21D47C838(v6, v4);

LABEL_19:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = xmmword_21DC0A830;
    *(a2 + 56) = 0;
    return;
  }

  while ((v7 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x223D44740](v10, v7);
LABEL_10:
    v12 = *(v9 + 16);
    if (v10 == v12)
    {

      goto LABEL_18;
    }

    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    if (*(v9 + v10 + 32) == v5)
    {
      v15 = v11;
      sub_21D47C838(v16, v4);

      *a2 = v15;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 64;
      *(a2 + 48) = 0;
      *(a2 + 56) = 1;
      return;
    }

    ++v10;
    if (!(v7 >> 62))
    {
      goto LABEL_4;
    }

LABEL_6:
    if (v10 == sub_21DBFBD7C())
    {
      goto LABEL_18;
    }
  }

  if (v10 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v7 + 8 * v10 + 32);
    goto LABEL_10;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_21D47C638()
{
  sub_21D47C838(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_21D47C69C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
  }
}

uint64_t sub_21D47C6B4(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t *assignWithCopy for TTRIQuickBarProvider.IntegrationPoint(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_21D47C69C(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  sub_21D47C6B4(v5, v6);
  return a1;
}

uint64_t *assignWithTake for TTRIQuickBarProvider.IntegrationPoint(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  sub_21D47C6B4(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIQuickBarProvider.IntegrationPoint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 16))
  {
    return (*a1 + 63);
  }

  v3 = (*(a1 + 8) & 6 | ((*(a1 + 8) >> 58) >> 5) & 0xFFFFFFC7 | (8 * (((*(a1 + 8) >> 58) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRIQuickBarProvider.IntegrationPoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
      *result = 0;
      *(result + 8) = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21D47C838(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000006) != 0)
  {
    return sub_21D47C6B4(a1, a2);
  }

  return a1;
}

unint64_t sub_21D47C850()
{
  result = qword_27CE5C8A0;
  if (!qword_27CE5C8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE5C8A0);
  }

  return result;
}

unint64_t sub_21D47C89C(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_21DBFBD7C();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x223D44740](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_21D47C9A0(unint64_t *a1, void *a2)
{
  v7 = *a1;
  v8 = sub_21D47C89C(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_21DBFBD7C();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_21DBFBD7C())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v21 = MEMORY[0x223D44740](v11, v7);
    swift_unknownObjectRelease();
    if (v21 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x223D44740](v10, v7);
        v17 = MEMORY[0x223D44740](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v17 = v16;
LABEL_21:
        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_21D256E5C();
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          v7 = sub_21D256E5C();
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
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
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_21DBFBD7C();
}

uint64_t sub_21D47CBC4(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000006) != 0)
  {
    return sub_21D47C69C(a1, a2);
  }

  return a1;
}

RemindersUICore::TTRIRemindersListCellQuickBarStates __swiftcall TTRIRemindersListCellQuickBarStates.init(defaultState:stateOverrides:)(RemindersUICore::TTRIRemindersListCellQuickBarState defaultState, Swift::OpaquePointer stateOverrides)
{
  *v2 = *defaultState;
  *(v2 + 8) = stateOverrides;
  result.stateOverrides = stateOverrides;
  result.defaultState = defaultState;
  return result;
}

uint64_t TTRIRemindersListCellQuickBarState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void TTRIRemindersListCellQuickBarStates.state(for:)(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  if (*(v4 + 16))
  {
    v5 = sub_21D181E00();
    if (v6)
    {
      v3 = *(*(v4 + 56) + v5);
    }
  }

  *a1 = v3;
}

void static TTRIRemindersListCellQuickBarStates.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    sub_21D370F60(*(a1 + 1), *(a2 + 1));
  }
}

void sub_21D47CD58(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    sub_21D370F60(*(a1 + 1), *(a2 + 1));
  }
}

unint64_t sub_21D47CD80()
{
  result = qword_27CE5C8A8;
  if (!qword_27CE5C8A8)
  {
    result = swift_getWitnessTable("Y/bd", &type metadata for TTRIRemindersListCellQuickBarState, v0, v1);
    atomic_store(result, &qword_27CE5C8A8);
  }

  return result;
}

id sub_21D47CDF4()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = sub_21D47D01C(v0);
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_21D47CE50(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_21D47CDF4();
  v5 = *&v4[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_quickBar];

  v6 = *&v5[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar];
  v7 = v6;

  if (!v6)
  {
    goto LABEL_21;
  }

  v8 = sub_21D4AB10C();
  v10 = v9;

  v11 = 0;
  if (v8 >> 62)
  {
    goto LABEL_5;
  }

LABEL_3:
  if (v11 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:

LABEL_17:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = xmmword_21DC0A830;
    *(a2 + 56) = 0;
    return;
  }

  while ((v8 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x223D44740](v11, v8);
LABEL_9:
    v13 = *(v10 + 16);
    if (v11 == v13)
    {
      v14 = v12;

      goto LABEL_17;
    }

    if (v11 >= v13)
    {
      goto LABEL_20;
    }

    if (*(v10 + v11 + 32) == v3)
    {
      v15 = v12;

      *a2 = v15;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      *(a2 + 56) = 1;
      return;
    }

    ++v11;
    if (!(v8 >> 62))
    {
      goto LABEL_3;
    }

LABEL_5:
    if (v11 == sub_21DBFBD7C())
    {
      goto LABEL_15;
    }
  }

  if (v11 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v8 + 8 * v11 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

id sub_21D47D01C(uint64_t a1)
{
  type metadata accessor for TTRIQuickBarTabBar();
  v1 = &selRef_keyboardType;
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_21DBF8E0C();
  v4 = sub_21D487244(v3);

  v5 = *(v4 + 16);
  if (v5)
  {
    v31 = MEMORY[0x277D84F90];
    sub_21D18E8A0(0, v5, 0);
    v6 = 32;
    v7 = v31;
    do
    {
      v28 = *(v4 + v6);
      sub_21D486C20(v29);
      v31 = v7;
      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_21D18E8A0((v8 > 1), v9 + 1, 1);
        v7 = v31;
      }

      *(v7 + 16) = v9 + 1;
      v10 = v7 + 88 * v9;
      v11 = v29[1];
      *(v10 + 32) = v29[0];
      *(v10 + 48) = v11;
      v12 = v29[2];
      v13 = v29[3];
      v14 = v29[4];
      *(v10 + 112) = v30;
      *(v10 + 80) = v13;
      *(v10 + 96) = v14;
      *(v10 + 64) = v12;
      ++v6;
      --v5;
    }

    while (v5);

    v1 = &selRef_keyboardType;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  sub_21D4AB3B0(v7);
  *&v2[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_delegate + 8] = &off_282EBE760;
  swift_unknownObjectWeakAssign();
  type metadata accessor for TTRIQuickBar();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) v1[326]];
  v16 = *&v15[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar];
  *&v15[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar] = v2;
  v17 = v2;

  v18 = v17;
  sub_21D496B14(v18);

  v19 = type metadata accessor for TTRIQuickBarInputAccessoryView();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_cachedQuickBarFittingSize];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = 1;
  *&v20[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_quickBar] = v15;
  v27.receiver = v20;
  v27.super_class = v19;
  v22 = v15;
  v23 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v23 setAutoresizingMask_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 addSubview_];
  v24 = objc_opt_self();
  UIView.constraintsEqualTo(_:edges:)(v22, 14);
  sub_21D0D8CF0(0, &qword_280D177D0, 0x277CCAAD0);
  v25 = sub_21DBFA5DC();

  [v24 activateConstraints_];

  return v23;
}

uint64_t sub_21D47D318()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_21D47D394(uint64_t a1, char a2, char a3, char a4)
{
  v5 = v4;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();

  v9 = sub_21D47CDF4();
  v10 = *&v9[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_quickBar];

  v11 = *&v10[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar];
  v12 = v11;

  if (!v11)
  {
    __break(1u);
    return;
  }

  v65 = a3;
  v67 = a2;
  v66 = a1;
  v13 = sub_21D487244(a1);
  v14 = *&v12[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_items];
  if (!v14)
  {
    goto LABEL_17;
  }

  v64 = v5;
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + 32;
    sub_21DBF8E0C();
    v17 = MEMORY[0x277D84F90];
    do
    {
      sub_21D47F938(v16, &v72);
      sub_21DBFBE1C();
      sub_21D1AEF04(&v72);
      if ((swift_dynamicCast() & 1) != 0 && v68 != 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_21D2111A8(0, *(v17 + 2) + 1, 1, v17);
        }

        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        if (v19 >= v18 >> 1)
        {
          v17 = sub_21D2111A8((v18 > 1), v19 + 1, 1, v17);
        }

        *(v17 + 2) = v19 + 1;
        v17[v19 + 32] = v68;
      }

      v16 += 88;
      --v15;
    }

    while (v15);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v20 = sub_21D1D7E38(v17, v13);

  v5 = v64;
  if (v20)
  {
  }

  else
  {
LABEL_17:
    v21 = swift_allocObject();
    *(v21 + 16) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8B0, &qword_21DC172D0);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_21D47F994;
    *(v22 + 24) = v21;
    *&v72 = v22;
    v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8B8, &qword_21DC172D8);
    sub_21D0D0F1C(&qword_280D0C198, &qword_27CE5C8B8, &qword_21DC172D8, MEMORY[0x277D84060]);
    sub_21DBFA48C();

    v23 = *(v13 + 16);
    if (v23)
    {
      v24 = v5;
      v69 = MEMORY[0x277D84F90];
      sub_21D18E8A0(0, v23, 0);
      v25 = 32;
      v26 = v69;
      do
      {
        v70 = *(v13 + v25);
        sub_21D486C20(&v72);
        v28 = *(v69 + 16);
        v27 = *(v69 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_21D18E8A0((v27 > 1), v28 + 1, 1);
        }

        *(v69 + 16) = v28 + 1;
        v29 = v69 + 88 * v28;
        v30 = v73;
        *(v29 + 32) = v72;
        *(v29 + 48) = v30;
        v31 = v74;
        v32 = v75;
        v33 = v76;
        *(v29 + 112) = v77;
        *(v29 + 80) = v32;
        *(v29 + 96) = v33;
        *(v29 + 64) = v31;
        ++v25;
        --v23;
      }

      while (v23);

      v5 = v24;
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    sub_21D4AB3B0(v26);
    sub_21D0D3954(v71, &v72, &qword_27CE5BE60, &unk_21DC15460);
    sub_21D4AB4F0(&v72);
    sub_21D0CF7E0(v71, &qword_27CE5BE60, &unk_21DC15460);
  }

  v34 = sub_21D487304(a1);
  sub_21D4F6424(v34);
  v36 = v35;

  sub_21D4AB984(v36);
  v37 = sub_21D487380(a1);
  sub_21D4F6424(v37);
  v39 = v38;

  sub_21D4ADF4C(v39);

  if (v65)
  {
    *&v74 = 0;
    v72 = 0u;
    v73 = 0u;
    sub_21D4AB4F0(&v72);
    v40 = *(*(v5 + 48) + OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_quickBar);
    if (*&v40[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_upperBar])
    {
      v41 = v40;

      sub_21D498AD4();
    }

    else
    {
      v47 = v40;
    }

    *&v72 = MEMORY[0x277D84F90];
    *(&v72 + 1) = MEMORY[0x277D84F90];
    sub_21D498C28(1, &v72);
    v48 = objc_opt_self();
    sub_21D0D8CF0(0, &qword_280D177D0, 0x277CCAAD0);
    v49 = sub_21DBFA5DC();
    [v48 deactivateConstraints_];

    v50 = sub_21DBFA5DC();
    [v48 activateConstraints_];

    v51 = *(v5 + 48);
    v52 = &v51[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_cachedQuickBarFittingSize];
    *v52 = 0;
    *(v52 + 1) = 0;
    v52[16] = 1;
    v53 = v51;
    [v53 invalidateIntrinsicContentSize];

    return;
  }

  v42 = *(*(v5 + 48) + OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_quickBar);
  v43 = *(v42 + OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_upperBar);
  if (!v43)
  {
LABEL_32:

    return;
  }

  v44 = *(v43 + 24);
  v45 = *(v42 + OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_bottomBarToContainerTopConstraint);
  if (v45)
  {
    v46 = v44;
    if ([v45 isActive])
    {

      goto LABEL_32;
    }
  }

  else
  {
    v54 = v44;
  }

  v55 = swift_allocObject();
  *(v55 + 16) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8B0, &qword_21DC172D0);
  v56 = swift_allocObject();
  *(v56 + 16) = sub_21D480300;
  *(v56 + 24) = v55;
  v71[0] = v56;
  v57 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8B8, &qword_21DC172D8);
  sub_21D0D0F1C(&qword_280D0C198, &qword_27CE5C8B8, &qword_21DC172D8, MEMORY[0x277D84060]);
  sub_21DBFA48C();

  if (*(&v73 + 1))
  {
    sub_21D181CE0(&v72, v71);
    sub_21D0CF7E0(&v72, &qword_27CE5BE60, &unk_21DC15460);
    sub_21DBFBE1C();
    sub_21D181D3C(v71);
    if ((swift_dynamicCast() & 1) != 0 && v70 != 6)
    {
      LOBYTE(v72) = v70;
      sub_21D4873FC(&v72, v66);
      if (v58)
      {
        v59 = v58;
        if (v70 == 3)
        {
          v60 = _s15RemindersUICore21TTRLocalizableStringsO0A4ListO31quickbarAssignReminderLabelText14isForGroceriesSSSb_tFZ_0(v67 & 1);
          v62 = v61;
        }

        else
        {
          v60 = 0;
          v62 = 0;
        }

        sub_21D47DBFC(v44, v59, v60, v62, a4 & 1);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {

    sub_21D0CF7E0(&v72, &qword_27CE5BE60, &unk_21DC15460);
  }
}

uint64_t sub_21D47DBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v70 = a5;
  v71 = a4;
  v67 = a3;
  v7 = type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8C0, &qword_21DC18040);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = v64 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v64 - v16;
  v18 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  v77 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v76 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v64 - v21;
  MEMORY[0x28223BE20](v23);
  v75 = v64 - v24;
  v73 = a1;
  v25 = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_items);
  v74 = v18;
  v72 = a2;
  if (v25)
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      v65 = v8;
      v27 = v25 + 32;
      v28 = (v77 + 56);
      v29 = (v77 + 48);
      v64[1] = v25;
      sub_21DBF8E0C();
      v30 = MEMORY[0x277D84F90];
      do
      {
        sub_21D47FBCC(v27, &v79);
        sub_21DBFBE1C();
        sub_21D47FC28(&v79);
        v31 = swift_dynamicCast();
        (*v28)(v17, v31 ^ 1u, 1, v18);
        if ((*v29)(v17, 1, v18) == 1)
        {
          sub_21D0CF7E0(v17, &qword_27CE5C8C0, &qword_21DC18040);
        }

        else
        {
          sub_21D47FAA4(v17, v75);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_21D211180(0, v30[2] + 1, 1, v30);
          }

          v33 = v30[2];
          v32 = v30[3];
          if (v33 >= v32 >> 1)
          {
            v30 = sub_21D211180((v32 > 1), v33 + 1, 1, v30);
          }

          v30[2] = v33 + 1;
          sub_21D47FAA4(v75, v30 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v33);
          v18 = v74;
        }

        v27 += 104;
        --v26;
      }

      while (v26);

      a2 = v72;
      v8 = v65;
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v30 = 0;
  }

  v34 = *(a2 + 16);
  v35 = MEMORY[0x277D84F90];
  if (v34)
  {
    *&v79 = MEMORY[0x277D84F90];
    sub_21D18E8F8(0, v34, 0);
    v36 = v79;
    v37 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v38 = *(v8 + 72);
    do
    {
      sub_21D47FB08(v37, v10, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
      sub_21D47FAA4(v10, v22);
      *&v79 = v36;
      v40 = *(v36 + 16);
      v39 = *(v36 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_21D18E8F8((v39 > 1), v40 + 1, 1);
        v36 = v79;
      }

      *(v36 + 16) = v40 + 1;
      sub_21D47FAA4(v22, v36 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v40);
      v37 += v38;
      --v34;
    }

    while (v34);
    v18 = v74;
    v35 = MEMORY[0x277D84F90];
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v41 = v73;
  if (v30)
  {
    sub_21DBF8E0C();
    v42 = sub_21DBF8E0C();
    v43 = sub_21D1D7C44(v42, v36);

    swift_bridgeObjectRelease_n();
    if (v43)
    {
      v44 = *(v41 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_contentTitle + 8);
      if (v44)
      {
        if (v71)
        {
          v45 = *(v41 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_contentTitle) == v67 && v44 == v71;
          if (v45 || (sub_21DBFC64C() & 1) != 0)
          {
            goto LABEL_31;
          }
        }
      }

      else if (!v71)
      {
LABEL_31:

        v46 = 1;
        goto LABEL_41;
      }
    }
  }

  v47 = *(v36 + 16);
  if (v47)
  {
    v48 = *(v66 + 56);
    v78 = v35;
    sub_21D18E8D8(0, v47, 0);
    v49 = v78;
    v50 = v36 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v51 = *(v77 + 72);
    do
    {
      v52 = v76;
      sub_21D47FB08(v50, v76, type metadata accessor for TTRIQuickBarQuickPickItem);
      sub_21D487450(v48, &v79);
      sub_21D47FB70(v52);
      v78 = v49;
      v54 = *(v49 + 16);
      v53 = *(v49 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_21D18E8D8((v53 > 1), v54 + 1, 1);
        v49 = v78;
      }

      *(v49 + 16) = v54 + 1;
      v55 = v49 + 104 * v54;
      v56 = v79;
      v57 = v81;
      *(v55 + 48) = v80;
      *(v55 + 64) = v57;
      *(v55 + 32) = v56;
      v58 = v82;
      v59 = v83;
      v60 = v84;
      *(v55 + 128) = v85;
      *(v55 + 96) = v59;
      *(v55 + 112) = v60;
      *(v55 + 80) = v58;
      v50 += v51;
      --v47;
    }

    while (v47);

    v18 = v74;
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  sub_21D4AE1B0(v49, v67, v71);

  v46 = 0;
LABEL_41:
  *&v79 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8C8, &qword_21DC172E0);
  sub_21D0D0F1C(&qword_27CE5C8D0, &qword_27CE5C8C8, &qword_21DC172E0, MEMORY[0x277D83970]);
  v61 = v69;
  sub_21DBFA48C();
  v62 = v68;
  sub_21D0D3954(v61, v68, &qword_27CE5C8C0, &qword_21DC18040);
  if ((*(v77 + 48))(v62, 1, v18) == 1)
  {
    sub_21D0CF7E0(v62, &qword_27CE5C8C0, &qword_21DC18040);
    v79 = 0u;
    v80 = 0u;
    *&v81 = 0;
  }

  else
  {
    sub_21D47FAA4(v62, v76);
    sub_21D480298(&qword_27CE5C8D8, type metadata accessor for TTRIQuickBarQuickPickItem, byte_21DC178D4);
    sub_21DBFBE2C();
  }

  sub_21D4AE314(&v79, v46 & v70);
  sub_21D0CF7E0(&v79, &qword_27CE5BE60, &unk_21DC15460);
  return sub_21D0CF7E0(v61, &qword_27CE5C8C0, &qword_21DC18040);
}
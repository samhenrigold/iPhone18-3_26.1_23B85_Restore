void SNSetupLogging(uint64_t result, uint64_t a2)
{
  if (SNSetupLogging_onceToken != -1)
  {
    SNSetupLogging_cold_1();
  }
}

uint64_t __SNSetupLogging_block_invoke()
{
  SNDefaultLog = os_log_create(SNLogSubsystemIdentifier, "Snappy");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_26D1A4794()
{

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_26D1A47D0()
{
  v1 = sub_26D1A914C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26D1A4890()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26D1A48C8()
{
  v1 = sub_26D1A914C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26D1A4998()
{

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_26D1A7298()
{
  v0 = [objc_opt_self() mainBundle];
  sub_26D1A8EFC(v0);
  sub_26D1A8F6C(0, &qword_2804E0410, 0x277D86200);
  result = sub_26D1A91BC();
  qword_2804E0420 = result;
  return result;
}

void static PPT.preloadScroll(initDelay:currentDepth:maxDepth:scrollView:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11();
  v60 = v6;
  v61 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_26D1A910C();
  OUTLINED_FUNCTION_0();
  v58 = v15;
  v59 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v56 = v16;
  OUTLINED_FUNCTION_8();
  v57 = sub_26D1A912C();
  OUTLINED_FUNCTION_0();
  v55 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  v52 = v19;
  OUTLINED_FUNCTION_8();
  sub_26D1A914C();
  OUTLINED_FUNCTION_0();
  v53 = v21;
  v54 = v20;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9();
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_7(&_MergedGlobals);
  }

  v25 = qword_2804E0420;
  OUTLINED_FUNCTION_6();
  sub_26D1A7CA0(0, v26, v27, MEMORY[0x277D84560]);
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D83B88];
  v30 = MEMORY[0x277D83C10];
  *(v28 + 16) = xmmword_26D1A9D50;
  *(v28 + 56) = v29;
  *(v28 + 64) = v30;
  *(v28 + 32) = v11;
  v31 = [v9 description];
  v32 = sub_26D1A917C();
  v34 = v33;

  *(v28 + 96) = MEMORY[0x277D837D0];
  *(v28 + 104) = sub_26D1A780C();
  *(v28 + 72) = v32;
  *(v28 + 80) = v34;
  v35 = sub_26D1A918C();
  sub_26D1A90FC("Preloading content to a depth of %d screens in UIScrollView %{public}@...", 73, 2, &dword_26D1A2000, v25, v35, v28);

  if (v13 >= v11)
  {
    v60(v36);
  }

  else
  {
    sub_26D1A8F6C(0, &qword_2804E03E8, 0x277D85C78);
    v37 = sub_26D1A91AC();
    sub_26D1A913C();
    sub_26D1A915C();
    v38 = v54;
    v53 = *(v53 + 8);
    (v53)(v24, v54);
    OUTLINED_FUNCTION_10();
    v39 = swift_allocObject();
    v40 = v60;
    v41 = v61;
    v39[2] = v9;
    v39[3] = v40;
    v39[4] = v41;
    v39[5] = v13;
    v39[6] = v11;
    OUTLINED_FUNCTION_5(v39);
    v62[1] = 1107296256;
    OUTLINED_FUNCTION_3();
    v62[2] = v42;
    v62[3] = &block_descriptor;
    v43 = _Block_copy(v62);
    v44 = v9;

    v45 = v52;
    sub_26D1A911C();
    v62[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2();
    sub_26D1A8D9C(v46, v47, MEMORY[0x277D851A0]);
    OUTLINED_FUNCTION_1();
    sub_26D1A7CA0(0, v48, v49, MEMORY[0x277D83940]);
    sub_26D1A7D04();
    v50 = v56;
    v51 = v59;
    sub_26D1A91CC();
    MEMORY[0x26D6B4D90](v5, v45, v50, v43);
    _Block_release(v43);

    (*(v58 + 8))(v50, v51);
    (*(v55 + 8))(v45, v57);
    (v53)(v5, v38);
  }

  OUTLINED_FUNCTION_12();
}

unint64_t sub_26D1A77B0()
{
  result = qword_2804E03D8;
  if (!qword_2804E03D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2804E03D8);
  }

  return result;
}

unint64_t sub_26D1A780C()
{
  result = qword_2804E03E0;
  if (!qword_2804E03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E03E0);
  }

  return result;
}

void sub_26D1A7860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11();
  v53 = v6;
  v54 = v7;
  v56 = v8;
  v57 = v9;
  v11 = v10;
  v12 = sub_26D1A910C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26D1A912C();
  OUTLINED_FUNCTION_0();
  v55 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_26D1A914C();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9();
  [v11 bounds];
  Height = CGRectGetHeight(v59);
  [v11 contentSize];
  v32 = v31;
  v33 = [v11 contentOffset];
  if (Height + v34 >= v32)
  {
    v56(v33);
  }

  else
  {
    [v11 setContentOffset:0 animated:?];
    sub_26D1A8F6C(0, &qword_2804E03E8, 0x277D85C78);
    v52 = v18;
    v49 = sub_26D1A91AC();
    sub_26D1A913C();
    sub_26D1A915C();
    v35 = *(v25 + 8);
    v50 = v23;
    v51 = v35;
    v35(v29, v23);
    OUTLINED_FUNCTION_10();
    v36 = swift_allocObject();
    v37 = v54;
    v36[2] = v53;
    v36[3] = v37;
    v38 = v56;
    v39 = v57;
    v36[4] = v11;
    v36[5] = v38;
    v36[6] = v39;
    OUTLINED_FUNCTION_5(v36);
    v58[1] = 1107296256;
    OUTLINED_FUNCTION_3();
    v58[2] = v40;
    v58[3] = &block_descriptor_33;
    v41 = _Block_copy(v58);
    v42 = v11;

    sub_26D1A911C();
    v58[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2();
    sub_26D1A8D9C(v43, v44, MEMORY[0x277D851A0]);
    OUTLINED_FUNCTION_1();
    sub_26D1A7CA0(0, v45, v46, MEMORY[0x277D83940]);
    sub_26D1A7D04();
    sub_26D1A91CC();
    v47 = v49;
    MEMORY[0x26D6B4D90](v5, v22, v17, v41);
    _Block_release(v41);

    (*(v14 + 8))(v17, v12);
    (*(v55 + 8))(v22, v52);
    v51(v5, v50);
  }

  OUTLINED_FUNCTION_12();
}

uint64_t sub_26D1A7C44(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_26D1A7CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26D1A7D04()
{
  result = qword_2804E0400;
  if (!qword_2804E0400)
  {
    sub_26D1A7CA0(255, &qword_2804E03F8, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0400);
  }

  return result;
}

void static PPT.waitForContent(initDelay:contentLength:scrollView:timeout:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11();
  v60 = v5;
  v57 = v6;
  v58 = v7;
  v9 = v8;
  v11 = v10;
  sub_26D1A910C();
  OUTLINED_FUNCTION_0();
  v65 = v13;
  v66 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v64 = v14;
  OUTLINED_FUNCTION_8();
  sub_26D1A912C();
  OUTLINED_FUNCTION_0();
  v62 = v16;
  v63 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v61 = v17;
  OUTLINED_FUNCTION_8();
  v59 = sub_26D1A914C();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - v25;
  v55 = *v11;
  v54 = *(v11 + 8);
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_7(&_MergedGlobals);
  }

  v27 = qword_2804E0420;
  OUTLINED_FUNCTION_6();
  sub_26D1A7CA0(0, v28, v29, MEMORY[0x277D84560]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26D1A9D60;
  v31 = [v9 description];
  v32 = sub_26D1A917C();
  v34 = v33;

  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 64) = sub_26D1A780C();
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  v35 = sub_26D1A918C();
  sub_26D1A90FC("Waiting for content in UIScrollView %{public}@...", 49, 2, &dword_26D1A2000, v27, v35, v30);

  sub_26D1A8F6C(0, &qword_2804E03E8, 0x277D85C78);
  v53 = sub_26D1A91AC();
  sub_26D1A913C();
  v36 = v26;
  sub_26D1A915C();
  v56 = *(v19 + 8);
  v37 = v59;
  v56(v24, v59);
  (*(v19 + 16))(v24, v57, v37);
  v38 = (*(v19 + 80) + 56) & ~*(v19 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v55;
  *(v39 + 24) = v54;
  v40 = v58;
  *(v39 + 32) = v9;
  *(v39 + 40) = v40;
  *(v39 + 48) = v60;
  (*(v19 + 32))(v39 + v38, v24, v37);
  v67[4] = sub_26D1A873C;
  v67[5] = v39;
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 1107296256;
  OUTLINED_FUNCTION_3();
  v67[2] = v41;
  v67[3] = &block_descriptor_6;
  v42 = _Block_copy(v67);
  v43 = v9;

  v44 = v61;
  sub_26D1A911C();
  v67[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2();
  sub_26D1A8D9C(v45, v46, MEMORY[0x277D851A0]);
  OUTLINED_FUNCTION_1();
  sub_26D1A7CA0(0, v47, v48, MEMORY[0x277D83940]);
  sub_26D1A7D04();
  v49 = v64;
  v50 = v66;
  sub_26D1A91CC();
  v51 = v53;
  MEMORY[0x26D6B4D90](v36, v44, v49, v42);
  _Block_release(v42);

  (*(v65 + 8))(v49, v50);
  (*(v62 + 8))(v44, v63);
  v56(v36, v37);
  OUTLINED_FUNCTION_12();
}

uint64_t sub_26D1A8274(uint64_t a1, int a2, void *a3, uint64_t (*a4)(id), uint64_t (*a5)(id), uint64_t a6)
{
  v61 = a6;
  v62 = a4;
  v63 = a5;
  v55 = sub_26D1A910C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v60 = v13;
  OUTLINED_FUNCTION_8();
  v14 = sub_26D1A912C();
  OUTLINED_FUNCTION_0();
  v59 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v58 = v17;
  OUTLINED_FUNCTION_8();
  v18 = sub_26D1A914C();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v23);
  v25 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9();
  v57 = a3;
  v26 = [a3 contentSize];
  v54 = a1;
  v56 = a2;
  if (a2)
  {
    if (v27 > *&a1)
    {
      return v62(v26);
    }
  }

  else if (v28 > *&a1)
  {
    return v62(v26);
  }

  v52 = v14;
  v53 = v11;
  sub_26D1A913C();
  sub_26D1A8D9C(&qword_2804E0408, MEMORY[0x277D851E0], MEMORY[0x277D851E8]);
  v29 = v61;
  v30 = sub_26D1A916C();
  v31 = *(v20 + 8);
  v26 = v31(v6, v18);
  if (v30)
  {
    sub_26D1A8F6C(0, &qword_2804E03E8, 0x277D85C78);
    v51 = sub_26D1A91AC();
    sub_26D1A913C();
    sub_26D1A915C();
    v31(&v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    (*(v20 + 16))(&v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v18);
    v32 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v33 = (v22 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = v54;
    *(v34 + 24) = v56 & 1;
    v35 = v57;
    *(v34 + 32) = v57;
    (*(v20 + 32))(v34 + v32, v25, v18);
    v36 = (v34 + v33);
    v37 = v31;
    v38 = v63;
    *v36 = v62;
    v36[1] = v38;
    aBlock[4] = sub_26D1A8DE4;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_3();
    aBlock[2] = v39;
    aBlock[3] = &block_descriptor_27;
    v40 = _Block_copy(aBlock);
    v41 = v35;

    v42 = v58;
    sub_26D1A911C();
    aBlock[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2();
    sub_26D1A8D9C(v43, v44, MEMORY[0x277D851A0]);
    OUTLINED_FUNCTION_1();
    sub_26D1A7CA0(0, v45, v46, MEMORY[0x277D83940]);
    sub_26D1A7D04();
    v47 = v60;
    v48 = v55;
    sub_26D1A91CC();
    v49 = v51;
    MEMORY[0x26D6B4D90](v6, v42, v47, v40);
    _Block_release(v40);

    (*(v53 + 8))(v47, v48);
    (*(v59 + 8))(v42, v52);
    return v37(v6, v18);
  }

  return v62(v26);
}

uint64_t sub_26D1A873C()
{
  v1 = *(sub_26D1A914C() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_26D1A8274(v2, v3, v4, v5, v6, v7);
}

void static PPT.rampDisplay(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 delegate];

  if (v5)
  {
    if ([v5 respondsToSelector_])
    {
      v6 = [v5 window];
      swift_unknownObjectRelease();
      if (v6)
      {
        [v6 setAlpha_];
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v7 = objc_opt_self();
  v15 = sub_26D1A89B8;
  v16 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_26D1A7C44;
  v14 = &block_descriptor_9;
  v8 = _Block_copy(&v11);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v15 = sub_26D1A8AC0;
  v16 = v9;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_26D1A8B98;
  v14 = &block_descriptor_15;
  v10 = _Block_copy(&v11);

  [v7 animateWithDuration:v8 animations:v10 completion:0.5];
  _Block_release(v10);
  _Block_release(v8);
}

void sub_26D1A89B8()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    if ([v1 respondsToSelector_])
    {
      v2 = [v1 window];
      swift_unknownObjectRelease();
      if (v2)
      {
        [v2 setAlpha_];
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_26D1A8AC0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    if ([v3 respondsToSelector_])
    {
      v5 = [v3 window];
      v4 = swift_unknownObjectRelease();
      if (v5)
      {
        [v5 setAlpha_];
      }
    }

    else
    {
      v4 = swift_unknownObjectRelease();
    }
  }

  return v1(v4);
}

uint64_t sub_26D1A8B98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id PPT.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PPT.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PPT.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PPT.ContentLength(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PPT.ContentLength(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26D1A8D9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26D1A8DE4()
{
  v1 = *(sub_26D1A914C() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  type metadata accessor for PPT();
  v10 = v3;
  v11 = v4;
  return static PPT.waitForContent(initDelay:contentLength:scrollView:timeout:completion:)(&v10, v5, v0 + v2, v7, v8);
}

uint64_t sub_26D1A8EBC()
{
  v1 = v0[2];
  type metadata accessor for PPT();
  result = v1 + 1;
  if (!__OFADD__(v1, 1))
  {
    return static PPT.preloadScroll(initDelay:currentDepth:maxDepth:scrollView:completion:)(result, v0[3], v0[4], v0[5], v0[6]);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D1A8EFC(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26D1A917C();

  return v3;
}

uint64_t sub_26D1A8F6C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t OUTLINED_FUNCTION_5(uint64_t result)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = result;
  *(v2 - 144) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{

  return MEMORY[0x2821FEB58](a1, sub_26D1A7298);
}
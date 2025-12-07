void sub_275526C40(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v72 = a5;
  v15 = sub_27554C648();
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x28223BE20](v15);
  v73 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_27554C778();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (a2)
    {
      v74 = [a2 statusCode];
    }

    else
    {
      v74 = 0;
    }

    v67 = a1;
    v68 = a3;
    v65 = a2;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v17, qword_2809F8DA8);
    (*(v18 + 16))(v20, v23, v17);
    v66 = v22;
    v24 = v22;
    v25 = sub_27554C758();
    v26 = sub_27554D428();

    v27 = os_log_type_enabled(v25, v26);
    v69 = v24;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v63 = a7;
      v29 = v28;
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 134218242;
      *(v29 + 4) = v74;
      *(v29 + 12) = 2080;
      v31 = (v24 + qword_2809F53A8);
      v64 = a8;
      v32 = a6;
      v33 = *v31;
      v34 = v31[1];

      v35 = sub_275545D14(v33, v34, aBlock);
      a6 = v32;
      v24 = v69;

      *(v29 + 14) = v35;
      a8 = v64;
      _os_log_impl(&dword_27550C000, v25, v26, "[%ld] Response: X-Apple-Request-UUID: %s", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x277C7BAC0](v30, -1, -1);
      v36 = v29;
      a7 = v63;
      MEMORY[0x277C7BAC0](v36, -1, -1);
    }

    v37 = (*(v18 + 8))(v20, v17);
    v38 = v67;
    v39 = (*((*MEMORY[0x277D85000] & *v24) + 0x110))(v37);
    v40 = v68;
    v41 = v73;
    if (!v39)
    {
LABEL_21:
      if (v74 == 429)
      {
        if (a9 <= 4)
        {
          sub_275521288(a7, a8, a6 & 1, a9, &unk_28842B810, &unk_28842B928, sub_27552D620, &block_descriptor_148);
          goto LABEL_28;
        }
      }

      else if (v74 == 401 && (a6 & 1) != 0)
      {
        sub_27552298C(v38, v65, v40, a7, a8, a9);
LABEL_28:

        return;
      }

      a7(v38, v65, v40);
      goto LABEL_28;
    }

    v42 = v39;
    sub_27554C638();
    sub_27554C628();
    v44 = v43 * 1000.0;
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v44 > -9.22337204e18)
    {
      if (v44 < 9.22337204e18)
      {
        v45 = sub_27554D3F8();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v42;
        sub_27552C980(v45, 0x79636E6574616CLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
        v47 = aBlock[0];
        v48 = sub_27554D3F8();
        v49 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v47;
        sub_27552C980(v48, 0x6F43737574617473, 0xEA00000000006564, v49);
        v50 = aBlock[0];
        if (v40)
        {
          v75 = v40;
          v51 = v40;
          v52 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5628, &qword_27554F980);
          if (swift_dynamicCast())
          {
            v53 = v77;
            v54 = v78;

            if (v54)
            {
              v55 = -1;
            }

            else
            {
              v55 = v53;
            }

            sub_27551DD44(v55);
            v56 = sub_27554D328();

            v57 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v50;
            sub_27552C980(v56, 0x646F43726F727265, 0xE900000000000065, v57);

            v50 = aBlock[0];
          }

          else
          {
          }
        }

        v58 = v71;
        v59 = sub_27554D328();
        v60 = swift_allocObject();
        *(v60 + 16) = v50;
        v77 = sub_27552D3C8;
        v78 = v60;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_275527308;
        aBlock[3] = &block_descriptor_134;
        v61 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v61);

        (*(v70 + 8))(v41, v58);
        v24 = v69;
        goto LABEL_21;
      }

LABEL_32:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_32;
  }
}

id sub_275527308(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_27551EA14(0, &qword_2809F5860, 0x277D82BB8);
    v4 = sub_27554D2E8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_2755273A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_27552744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  a6(a5, v10, 1, 0);
}

uint64_t sub_2755274DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(uint64_t, void, void, void, void, void, void))
{
  if (a2 && (__swift_instantiateConcreteTypeFromMangledNameV2(a6, a7), (v10 = swift_dynamicCastClass()) != 0))
  {
    v11 = v10 + *((*MEMORY[0x277D85000] & *v10) + 0x60);
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = *(v11 + 2);
    v15 = *(v11 + 3);
    v16 = *(v11 + 4);
    v17 = v11[40];
    if (v11[41])
    {
      v19 = *v11;
      *&v20 = v13;
      *(&v20 + 1) = v14;
      *&v21 = v15 & 1;
      *(&v21 + 1) = v16;
      LOBYTE(v22) = v17 & 1;
      HIBYTE(v22) = 1;
      sub_27552DF04(v12, v13, v14, v15, v16, v17, 1);
      a4(&v19);
      return sub_27552DF68(v12, v13, v14, v15, v16, v17, 1);
    }

    else
    {
      sub_27552DF04(v12, v13, v14, v15, v16, v17, 0);
      sub_27551E6AC(v13, v14);
      v19 = v12;
      v20 = 0u;
      v21 = 0u;
      v22 = 0;

      a4(&v19);
      return swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_2809F4D78 != -1)
    {
      swift_once();
    }

    v19 = qword_2809F8D60;
    v20 = xmmword_2809F8D68;
    LOBYTE(v21) = byte_2809F8D78;
    *(&v21 + 1) = qword_2809F8D80;
    LOBYTE(v22) = byte_2809F8D88;
    HIBYTE(v22) = 1;

    a4(&v19);
    return a8(v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, HIBYTE(v22));
  }
}

uint64_t sub_2755276F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t *))
{
  if (a2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58C8, &qword_275550468), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5 + *((*MEMORY[0x277D85000] & *v5) + 0x60);
    v7 = *v6;
    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = *(v6 + 2);
    v11 = *(v6 + 3);
    v12 = *(v6 + 4);
    v13 = v6[40];
    if (v6[41])
    {
      v14 = (*(v6 + 1) << 8) | ((*(v6 + 5) | (v6[7] << 16)) << 40) | v7;
      v16 = v14;
      *&v17 = v9;
      *(&v17 + 1) = v10;
      *&v18 = v11 & 1;
      *(&v18 + 1) = v12;
      LOBYTE(v19) = v13 & 1;
      HIBYTE(v19) = 1;
      sub_27552D874(v8, v9, v10, v11, v12, v13, 1);
      a4(&v16);
      return sub_27552D888(v14, v9, v10, v11, v12, v13, 1);
    }

    else
    {
      sub_27552D874(v8, *(v6 + 1), *(v6 + 2), *(v6 + 3), *(v6 + 4), v6[40], 0);
      sub_27551E6AC(v9, v10);
      v16 = v7 & 1;
      v17 = 0u;
      v18 = 0u;
      v19 = 0;
      return a4(&v16);
    }
  }

  else
  {
    if (qword_2809F4D78 != -1)
    {
      swift_once();
    }

    v16 = qword_2809F8D60;
    v17 = xmmword_2809F8D68;
    LOBYTE(v18) = byte_2809F8D78;
    *(&v18 + 1) = qword_2809F8D80;
    LOBYTE(v19) = byte_2809F8D88;
    HIBYTE(v19) = 1;

    a4(&v16);
    return sub_27552D864(v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, SHIBYTE(v19));
  }
}

uint64_t sub_27552790C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  if (a2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5870, &qword_2755503A0), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5 + *((*MEMORY[0x277D85000] & *v5) + 0x60);
    v8 = *v6;
    v7 = *(v6 + 1);
    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    v11 = *(v6 + 4);
    v12 = v6[40];
    if (v6[41])
    {
      v14 = *v6;
      *&v15 = v7;
      *(&v15 + 1) = v10;
      v16 = v9 & 1;
      v17 = v11;
      LOBYTE(v18) = v12 & 1;
      HIBYTE(v18) = 1;
      sub_27552D640(v8, v7, v10, v9, v11, v12, 1);
      a4(&v14);
      return sub_27552D6A4(v8, v7, v10, v9, v11, v12, 1);
    }

    else
    {
      sub_27552D640(v8, v7, v10, v9, v11, v12, 0);
      sub_27551E6AC(v10, v9);
      v14 = v8;
      v15 = v7;
      v16 = 0;
      v17 = 0;
      v18 = 0;

      a4(&v14);
      return swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_2809F4D78 != -1)
    {
      swift_once();
    }

    v14 = qword_2809F8D60;
    v15 = xmmword_2809F8D68;
    LOBYTE(v16) = byte_2809F8D78;
    v17 = qword_2809F8D80;
    LOBYTE(v18) = byte_2809F8D88;
    HIBYTE(v18) = 1;

    a4(&v14);
    return sub_27552D638(v14, v15);
  }
}

uint64_t sub_275527B1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  return v1;
}

uint64_t sub_275527B90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  return v1;
}

uint64_t sub_275527CA4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  return v3;
}

double sub_275527D38@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_275527DD8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  return v3;
}

uint64_t sub_275527E44(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_27554C808();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27554C7F8();

    if ((v3 & 1) == 0)
    {
      result = sub_27554D388();
      if (result >= 3)
      {
        swift_beginAccess();
        result = swift_weakLoadStrong();
        if (result)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          return sub_27554C808();
        }
      }
    }
  }

  return result;
}

uint64_t sub_275527FCC()
{
  v1 = v0;
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v20) = 1;

  sub_27554C808();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v20) = 0;

  sub_27554C808();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2809F8DA8);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_27554C758();
  v8 = sub_27554D428();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_27550C000, v7, v8, "[AccountCreation - Startup] Fetch suggestions started", v9, 2u);
    MEMORY[0x277C7BAC0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));
  v11 = *(*v10 + 16);
  v12 = *(*v10 + 24);
  v13 = objc_allocWithZone(type metadata accessor for EmailSuggestionsAPIRequest(0));
  v14 = v11;
  v15 = v12;
  v16 = sub_27552D3D0(v11, v15, 0, 0xF000000000000000, &qword_2809F5970, &qword_2755505F8, &qword_2809F5960, &qword_2755505E8);

  v17 = sub_275524A58();
  v20 = v17;
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5920, &qword_275550580);
  sub_275515E2C(&qword_2809F5928, &qword_2809F5920, &qword_275550580, MEMORY[0x277CBCD90]);
  sub_27554C848();

  swift_beginAccess();
  sub_27554C798();
  swift_endAccess();
}

uint64_t sub_27552839C(uint64_t *a1, uint64_t a2)
{
  v3 = sub_27554C778();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[3];
  v48 = a1[2];
  v13 = a1[4];
  v14 = *(a1 + 40);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v10)
    {
      v44 = v11;
      v45 = v12;
      v46 = v14;
      if (qword_2809F4D80 != -1)
      {
        swift_once();
      }

      v47 = v7;
      v16 = __swift_project_value_buffer(v3, qword_2809F8DA8);
      v17 = *(v4 + 16);
      v42 = v4 + 16;
      v43 = v16;
      v41 = v17;
      (v17)(v9);

      v18 = sub_27554C758();
      v19 = sub_27554D438();

      v20 = os_log_type_enabled(v18, v19);
      v40 = v13;
      if (v20)
      {
        v21 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v55 = v39;
        *v21 = 136315138;
        v49 = v44;
        v50 = v10;
        v51 = v48;
        v52 = v45 & 1;
        v53 = v13;
        v54 = v46 & 1;
        sub_27551CB54();
        v22 = sub_27554D698();
        v24 = v4;
        v25 = sub_275545D14(v22, v23, &v55);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_27550C000, v18, v19, "[AccountCreation - Startup] Fetch suggestions failed: %s", v21, 0xCu);
        v26 = v39;
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x277C7BAC0](v26, -1, -1);
        MEMORY[0x277C7BAC0](v21, -1, -1);

        v27 = v24;
      }

      else
      {

        v27 = v4;
      }

      v28 = *(v27 + 8);
      v28(v9, v3);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v49) = 1;

      sub_27554C808();
      v29 = v47;
      v41(v47, v43, v3);

      v30 = sub_27554C758();
      v31 = sub_27554D438();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v55 = v33;
        *v32 = 136315138;
        v49 = v44;
        v50 = v10;
        v51 = v48;
        v52 = v45 & 1;
        v53 = v40;
        v54 = v46 & 1;
        sub_27551CB54();
        v34 = sub_27554D698();
        v36 = sub_275545D14(v34, v35, &v55);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_27550C000, v30, v31, "%s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x277C7BAC0](v33, -1, -1);
        MEMORY[0x277C7BAC0](v32, -1, -1);

        v37 = v47;
      }

      else
      {

        v37 = v29;
      }

      v28(v37, v3);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v49 = 0;
    v50 = 0xE000000000000000;

    sub_27554C808();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v49) = 0;
    return sub_27554C808();
  }

  return result;
}

uint64_t sub_275528898(uint64_t *a1, uint64_t a2)
{
  v3 = sub_27554C778();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = result;
    v31 = v7;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v3, qword_2809F8DA8);
    v13 = *(v4 + 16);
    v13(v9, v12, v3);

    v14 = sub_27554C758();
    v15 = sub_27554D428();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = *(v10 + 16);

      _os_log_impl(&dword_27550C000, v14, v15, "[AccountCreation - Startup] Fetch suggestions successful with count: %ld", v16, 0xCu);
      MEMORY[0x277C7BAC0](v16, -1, -1);
    }

    else
    {
    }

    v17 = *(v4 + 8);
    v17(v9, v3);
    v18 = v31;
    v13(v31, v12, v3);

    v19 = sub_27554C758();
    v20 = sub_27554D428();

    if (os_log_type_enabled(v19, v20))
    {
      v29 = v17;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136642819;
      if (sub_275528C94(v10))
      {
        v23 = sub_27554D318();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = sub_275545D14(v23, v25, &v32);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_27550C000, v19, v20, "[AccountCreation - Startup] Fetch suggestions successful with suggestions: %{sensitive}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x277C7BAC0](v22, -1, -1);
      MEMORY[0x277C7BAC0](v21, -1, -1);

      v29(v31, v3);
    }

    else
    {

      v17(v18, v3);
    }

    *(v30 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_suggestions) = v10;

    v27 = sub_27552D9C8(v10);
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v27;
    return sub_27554C808();
  }

  return result;
}

uint64_t sub_275528C94(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  sub_27554C538();
  swift_allocObject();
  sub_27554C528();
  sub_27552DB30();
  v2 = sub_27554C518();
  v4 = v3;

  v5 = objc_opt_self();
  v6 = sub_27554C608();
  *&v14 = 0;
  v7 = [v5 JSONObjectWithData:v6 options:4 error:&v14];

  v8 = v14;
  if (v7)
  {
    sub_27554D528();
    sub_27551E6AC(v2, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = v8;
    v10 = sub_27554C5A8();

    swift_willThrow();
    sub_27551E6AC(v2, v4);

    v14 = 0u;
    v15 = 0u;
  }

  v12[0] = v14;
  v12[1] = v15;
  if (!*(&v15 + 1))
  {
    return 0;
  }

  sub_27551E990(v12, &v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5898, &qword_275550448);
  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275528E6C(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_27554C538();
  swift_allocObject();
  sub_27554C528();
  sub_27552D718();
  v3 = sub_27554C518();
  v5 = v4;

  v6 = objc_opt_self();
  v7 = sub_27554C608();
  *&v15 = 0;
  v8 = [v6 JSONObjectWithData:v7 options:4 error:&v15];

  v9 = v15;
  if (v8)
  {
    sub_27554D528();
    sub_27551E6AC(v3, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v9;
    v11 = sub_27554C5A8();

    swift_willThrow();
    sub_27551E6AC(v3, v5);

    v15 = 0u;
    v16 = 0u;
  }

  v13[0] = v15;
  v13[1] = v16;
  if (!*(&v16 + 1))
  {
    return 0;
  }

  sub_27551E990(v13, &v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5898, &qword_275550448);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275529044()
{
  v1 = v0;
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2809F8DA8);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_27554C758();
  v8 = sub_27554D428();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_27550C000, v7, v8, "[AccountCreation - Startup] Fetch email validation rules started", v9, 2u);
    MEMORY[0x277C7BAC0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));
  v11 = *(*v10 + 16);
  v12 = *(*v10 + 24);
  v13 = objc_allocWithZone(type metadata accessor for iCloudMailValidationRulesAPIRequest(0));
  v14 = v11;
  v15 = v12;
  v16 = sub_27552D3D0(v11, v15, 0, 0xF000000000000000, &qword_2809F5918, &qword_2755504E8, &qword_2809F5908, &qword_2755504D8);

  v17 = sub_275524D24();
  v19[1] = v17;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58D8, &qword_2755504C0);
  sub_275515E2C(&qword_2809F58E0, &qword_2809F58D8, &qword_2755504C0, MEMORY[0x277CBCD90]);
  sub_27554C848();

  swift_beginAccess();
  sub_27554C798();
  swift_endAccess();
}

uint64_t sub_275529364(uint64_t *a1)
{
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  if (v7)
  {
    v8 = *a1;
    v24 = a1[2];
    v25 = v8;
    v9 = a1[4];
    v10 = *(a1 + 40);
    v11 = *(a1 + 6);
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v2, qword_2809F8DA8);
    (*(v3 + 16))(v6, v12, v2);

    v13 = sub_27554C758();
    v14 = sub_27554D438();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v9;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v10;
      v19 = v17;
      v32 = v17;
      *v16 = 136315138;
      v26 = v25;
      v27 = v7;
      v28 = v24;
      v29 = v11 & 1;
      v30 = v15;
      v31 = v18 & 1;
      sub_27551CB54();
      v20 = sub_27554D698();
      v22 = sub_275545D14(v20, v21, &v32);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_27550C000, v13, v14, "[AccountCreation - Startup] Fetch email validation rules failed: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x277C7BAC0](v19, -1, -1);
      MEMORY[0x277C7BAC0](v16, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_2755295CC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_27554C778();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v3, qword_2809F8DA8);
    (*(v4 + 16))(v6, v10, v3);

    v11 = sub_27554C758();
    v12 = sub_27554D428();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = *(v7 + 16);

      _os_log_impl(&dword_27550C000, v11, v12, "[AccountCreation - Startup] Fetch email validation rules successful, count: %ld", v13, 0xCu);
      MEMORY[0x277C7BAC0](v13, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v6, v3);
    *(v9 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_validationRules) = v7;
  }

  return result;
}

uint64_t sub_2755297EC()
{
  v1 = v0;
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2809F8DA8);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_27554C758();
  v8 = sub_27554D428();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_27550C000, v7, v8, "[AccountCreation - Startup] Fetch profile picture started", v9, 2u);
    MEMORY[0x277C7BAC0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));

  sub_27551FF50(sub_27552D89C, v1);
}

uint64_t sub_2755299C8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_27554C778();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  if (a2)
  {
    v38 = v13;
    v39 = a1;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v6, qword_2809F8DA8);
    (*(v7 + 16))(v15, v16, v6);
    v17 = a2;
    v18 = sub_27554C758();
    v19 = sub_27554D438();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37 = a3;
      v22 = v21;
      v40 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v23 = sub_27554D698();
      v25 = sub_275545D14(v23, v24, &v40);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_27550C000, v18, v19, "[AccountCreation - Startup] Fetch profile picture failed: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x277C7BAC0](v22, -1, -1);
      MEMORY[0x277C7BAC0](v20, -1, -1);
    }

    (*(v7 + 8))(v15, v6);
    v13 = v38;
    a1 = v39;
  }

  if (a1)
  {
    v26 = qword_2809F4D80;
    v27 = a1;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v6, qword_2809F8DA8);
    (*(v7 + 16))(v10, v28, v6);
    v29 = sub_27554C758();
    v30 = sub_27554D428();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_27550C000, v29, v30, "[AccountCreation - Startup] Fetch profile picture successful", v31, 2u);
      MEMORY[0x277C7BAC0](v31, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = a1;

    return sub_27554C808();
  }

  else
  {
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v6, qword_2809F8DA8);
    (*(v7 + 16))(v13, v33, v6);
    v34 = sub_27554C758();
    v35 = sub_27554D438();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_27550C000, v34, v35, "[AccountCreation - Startup] Fetch profile picture failed, user image is nil", v36, 2u);
      MEMORY[0x277C7BAC0](v36, -1, -1);
    }

    return (*(v7 + 8))(v13, v6);
  }
}

uint64_t sub_275529E6C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_27554C778();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v32) = 1;

  sub_27554C808();
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = 0;
  v33 = 0xE000000000000000;

  sub_27554C808();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_2809F8DA8);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_27554C758();
  v12 = sub_27554D428();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_27550C000, v11, v12, "[AccountCreation - Startup] Check email availability started", v13, 2u);
    MEMORY[0x277C7BAC0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = *(v3 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v15 = *(v3 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);
  v32 = a1;
  v33 = a2;

  MEMORY[0x277C7B050](v14, v15);
  v17 = v32;
  v16 = v33;
  v18 = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v3 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));
  v19 = *(*v18 + 16);
  v20 = *(*v18 + 24);
  v34 = &type metadata for EmailAvailableAPIRequestBody;
  v35 = sub_27552D718();
  v32 = v17;
  v33 = v16;
  v21 = objc_allocWithZone(type metadata accessor for EmailAvailableAPIRequest(0));
  sub_27552C284(&v32, v31);
  v22 = v19;
  v23 = v20;

  v24 = sub_27552CF34(v19, v23, v31, &qword_2809F58D0, &qword_275550470, &qword_2809F58C0, &qword_275550460);

  sub_275514DA8(&v32, &qword_2809F5810, &qword_2755502E0);
  v25 = sub_275524FF0();

  v32 = v25;
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = v17;
  v27[4] = v16;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5888, &qword_275550440);
  sub_275515E2C(&qword_2809F5890, &qword_2809F5888, &qword_275550440, MEMORY[0x277CBCD90]);
  v28 = sub_27554C848();

  v30 = *(v3 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_availableApiCall);
  *(v3 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_availableApiCall) = v28;
  if (v30)
  {

    sub_27554C7A8();
  }

  return result;
}

uint64_t sub_27552A2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v6 = sub_27554C778();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = *(a1 + 16);
  v52 = *(a1 + 24);
  v53 = v15;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v13)
    {
      v48 = v10;
      v45 = v14;
      v46 = v17;
      if (qword_2809F4D80 != -1)
      {
        swift_once();
      }

      v47 = v16;
      v19 = __swift_project_value_buffer(v6, qword_2809F8DA8);
      v49 = *(v7 + 16);
      v49(v12, v19, v6);

      v20 = sub_27554C758();
      v21 = sub_27554D438();

      v44 = v21;
      v22 = os_log_type_enabled(v20, v21);
      v50 = v7;
      if (v22)
      {
        v43 = v19;
        v23 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v54 = v42;
        *v23 = 136642819;
        v24 = sub_275528E6C(v51, a4);
        v25 = v48;
        if (v24)
        {
          v26 = sub_27554D318();
          v51 = v23;
          v27 = v25;
          v28 = v26;
          v30 = v29;

          v24 = v28;
          v25 = v27;
          v23 = v51;
        }

        else
        {
          v30 = 0xE000000000000000;
        }

        v32 = sub_275545D14(v24, v30, &v54);

        *(v23 + 4) = v32;
        _os_log_impl(&dword_27550C000, v20, v44, "[AccountCreation - Startup] params: %{sensitive}s", v23, 0xCu);
        v33 = v42;
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x277C7BAC0](v33, -1, -1);
        MEMORY[0x277C7BAC0](v23, -1, -1);

        v31 = *(v50 + 8);
        v31(v12, v6);
        v19 = v43;
      }

      else
      {

        v31 = *(v7 + 8);
        v31(v12, v6);
        v25 = v48;
      }

      v49(v25, v19, v6);

      v34 = sub_27554C758();
      v35 = sub_27554D438();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v60 = v37;
        *v36 = 136315138;
        v54 = v45;
        v55 = v13;
        v56 = v53;
        v57 = v52 & 1;
        v58 = v47;
        v59 = v46 & 1;
        sub_27551CB54();
        v38 = sub_27554D698();
        v40 = sub_275545D14(v38, v39, &v60);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_27550C000, v34, v35, "[AccountCreation - Startup] Check email availability failed: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x277C7BAC0](v37, -1, -1);
        MEMORY[0x277C7BAC0](v36, -1, -1);
      }

      v31(v25, v6);
      swift_getKeyPath();
      swift_getKeyPath();
      v54 = 0;
      v55 = 0xE000000000000000;

      sub_27554C808();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v54) = 0;

      sub_27554C808();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v54) = 0;
    return sub_27554C808();
  }

  return result;
}

uint64_t sub_27552A824(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_27554C778();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v3, qword_2809F8DA8);
    (*(v4 + 16))(v6, v9, v3);
    v10 = sub_27554C758();
    v11 = sub_27554D428();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v7;
      _os_log_impl(&dword_27550C000, v10, v11, "[AccountCreation - Startup] Check email availability successful, available: %{BOOL}d", v12, 8u);
      MEMORY[0x277C7BAC0](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v19) = v7 ^ 1;

    sub_27554C808();
    v13 = 0xE000000000000000;
    if (v7)
    {
      v14 = 0;
    }

    else
    {
      _s18CurrentBundleClassCMa();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass_];
      v19 = 2777980912;
      v20 = 0xA400000000000000;
      MEMORY[0x277C7B050](0xD000000000000024, 0x8000000275552130);
      MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
      v14 = sub_27554C588();
      v13 = v17;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v14;
    v20 = v13;
    return sub_27554C808();
  }

  return result;
}

uint64_t sub_27552AB3C()
{
  v1 = v0;
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v31[0]) = 1;

  sub_27554C808();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v31[0]) = 1;

  sub_27554C808();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2809F8DA8);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_27554C758();
  v8 = sub_27554D428();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_27550C000, v7, v8, "[AccountCreation - Startup] Create iCloud Mail Account started", v9, 2u);
    MEMORY[0x277C7BAC0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v10 = *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v11 = *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);

  MEMORY[0x277C7B050](v10, v11);

  v12 = v31[0];
  v13 = v31[1];
  v14 = *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_suggestions);
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_14:
    v20 = 0xE000000000000000;
LABEL_17:
    v21 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));
    v22 = *(*v21 + 16);
    v23 = *(*v21 + 24);
    v31[3] = &type metadata for EmailCreateAPIRequestBody;
    v31[4] = sub_27552C1F0();
    v24 = swift_allocObject();
    v31[0] = v24;
    v24[2] = v15;
    v24[3] = v20;
    v24[4] = v12;
    v24[5] = v13;
    v25 = objc_allocWithZone(type metadata accessor for EmailCreateAPIRequest(0));
    sub_27552C284(v31, v30);
    v26 = v22;
    v27 = v23;
    v28 = sub_27552CF34(v22, v27, v30, &qword_2809F5878, &qword_2755503A8, &qword_2809F5858, &qword_275550390);

    sub_275514DA8(v31, &qword_2809F5810, &qword_2755502E0);
    v29 = sub_2755252BC();

    v31[0] = v29;
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5818, &qword_2755502E8);
    sub_275515E2C(&qword_2809F5820, &qword_2809F5818, &qword_2755502E8, MEMORY[0x277CBCD90]);
    sub_27554C848();

    swift_beginAccess();
    sub_27554C798();
    swift_endAccess();
  }

  v16 = 0;
  v17 = (v14 + 56);
  while (1)
  {
    result = *(v17 - 1);
    if (result == v12 && *v17 == v13)
    {
      break;
    }

    result = sub_27554D678();
    if (result)
    {
      break;
    }

    ++v16;
    v17 += 4;
    if (v15 == v16)
    {
      v15 = 0;
      goto LABEL_14;
    }
  }

  if (v16 < *(v14 + 16))
  {
    v15 = *(v17 - 3);
    v20 = *(v17 - 2);

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_27552B054(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_27554C808();
      swift_getKeyPath();
      swift_getKeyPath();

      sub_27554C808();
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_27554C808();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_27552B1B0(uint64_t *a1, uint64_t a2)
{
  v3 = sub_27554C778();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v44[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v44[-v11];
  v14 = *a1;
  v13 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v16 = result;
  v50 = v10;
  v51 = v7;
  v17 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v14;
  sub_27554C7F8();

  v18 = (v16 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v20 = *(v16 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v19 = *(v16 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);

  MEMORY[0x277C7B050](v20, v19);
  v21 = v52;

  if (v21 == v54 && v13 == v55)
  {

LABEL_6:
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v17, qword_2809F8DA8);
    (*(v4 + 16))(v12, v23, v17);
    v24 = sub_27554C758();
    v25 = sub_27554D428();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_27550C000, v24, v25, "[AccountCreation - Startup] Create iCloud Mail Account successful", v26, 2u);
      MEMORY[0x277C7BAC0](v26, -1, -1);
    }

    (*(v4 + 8))(v12, v17);
    __swift_project_boxed_opaque_existential_1((v16 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v16 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));

    sub_275520100(sub_27552D1E0, v16);
  }

  v22 = sub_27554D678();

  if (v22)
  {
    goto LABEL_6;
  }

  v27 = v17;
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v17, qword_2809F8DA8);
  v29 = v50;
  v48 = *(v4 + 16);
  v49 = v28;
  v48(v50);

  v30 = v4;
  v31 = v27;
  v32 = sub_27554C758();
  v33 = sub_27554D438();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v53 = v47;
    *v34 = 136643075;
    *(v34 + 4) = sub_275545D14(v52, v13, &v53);
    *(v34 + 12) = 2085;
    swift_getKeyPath();
    v45 = v33;
    swift_getKeyPath();
    v52 = v30;
    sub_27554C7F8();

    v46 = v31;
    v35 = *v18;
    v36 = v18[1];

    MEMORY[0x277C7B050](v35, v36);

    v37 = sub_275545D14(v54, v55, &v53);

    *(v34 + 14) = v37;
    _os_log_impl(&dword_27550C000, v32, v45, "[AccountCreation - Startup] response email: %{sensitive}s, user choice: %{sensitive}s", v34, 0x16u);
    v38 = v47;
    swift_arrayDestroy();
    MEMORY[0x277C7BAC0](v38, -1, -1);
    MEMORY[0x277C7BAC0](v34, -1, -1);

    v39 = *(v52 + 8);
    v31 = v46;
    v39(v29, v46);
  }

  else
  {

    v39 = *(v30 + 8);
    v39(v29, v31);
  }

  v40 = v51;
  (v48)(v51, v49, v31);
  v41 = sub_27554C758();
  v42 = sub_27554D438();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_27550C000, v41, v42, "[AccountCreation - Startup] Create iCloud Mail Account successful, but email doesn't match", v43, 2u);
    MEMORY[0x277C7BAC0](v43, -1, -1);
  }

  v39(v40, v31);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v54) = 0;

  sub_27554C808();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v54) = 0;
  return sub_27554C808();
}

uint64_t sub_27552B850(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_27554C808();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_27554C808();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27554C808();
}

uint64_t sub_27552B944()
{
  v1 = v0;
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2809F8DA8);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_27554C758();
  v8 = sub_27554D428();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_27550C000, v7, v8, "[AccountCreation - Startup] checking if mail enabled", v9, 2u);
    MEMORY[0x277C7BAC0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));
  return sub_27551FE3C() & 1;
}

uint64_t sub_27552BAFC()
{
  v1 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__profileImage;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5978, &qword_2755506D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__suggestedEmails;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5980, &unk_2755510B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__inputEmail;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5988, &qword_2755506E0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__debouncedInputEmail, v6);
  v8 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__isLoading;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5990, &unk_2755510A0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__isCreating, v9);
  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__showingAlert, v9);
  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__showingFinishView, v9);
  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__showingAvailableCheckSpinner, v9);
  v7(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__emailValidAvailableErrorMessage, v6);
  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__disableContinueButton, v9);
  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__getSuggestionsError, v9);
  v11 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__errorAlert;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5998, &qword_2755506E8);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__passedInitialLengthThreshold, v9);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository));

  return v0;
}

uint64_t sub_27552BE18()
{
  sub_27552BAFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _s9ViewModelCMa(uint64_t a1)
{
  result = qword_2809F57B8;
  if (!qword_2809F57B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27552BEC4(uint64_t a1)
{
  sub_27552C138(319, &qword_2809F57C8, &qword_2809F57D0, &qword_2755510C0);
  if (v1 <= 0x3F)
  {
    sub_27552C138(319, &qword_2809F57D8, &qword_2809F57E0, "|\"");
    if (v2 <= 0x3F)
    {
      sub_27552C0EC(319, &qword_2809F57E8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_27552C0EC(319, &qword_2809F57F0, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_27552C138(319, &qword_2809F57F8, &qword_2809F5800, &qword_275550180);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_27552C0EC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_27554C818();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_27552C138(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_27554C818();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_27552C198@<X0>(uint64_t *a2@<X8>)
{
  _s9ViewModelCMa(0);
  result = sub_27554C7B8();
  *a2 = result;
  return result;
}

unint64_t sub_27552C1F0()
{
  result = qword_2809F5808;
  if (!qword_2809F5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5808);
  }

  return result;
}

uint64_t sub_27552C244()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27552C284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5810, &qword_2755502E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27552C2F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_27552C324(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t sub_27552C398(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x277C7BAE0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x277C7BAE0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27552C424(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6120, &qword_275551400);
  v35 = v4;
  result = sub_27554D5F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_27554D6E8();
      sub_27554D378();
      result = sub_27554D708();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_27552C6C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6110, &unk_2755513F0);
  v33 = v4;
  result = sub_27554D5F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_27551E990(v24, v34);
      }

      else
      {
        sub_27551E914(v24, v34);
      }

      sub_27554D6E8();
      sub_27554D378();
      result = sub_27554D708();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_27551E990(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_27552C980(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27552E278(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_27552C424(v16, a4 & 1);
      v11 = sub_27552E278(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_27554D688();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_27552CAF8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_27552CAF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6120, &qword_275551400);
  v2 = *v0;
  v3 = sub_27554D5E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_27552CC64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6110, &unk_2755513F0);
  v2 = *v0;
  v3 = sub_27554D5E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_27551E914(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_27551E990(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_27552CE08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27552CE28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27552CE28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5938, &qword_2755505D0);
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

id sub_27552CF34(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v34 = a6;
  v35 = a7;
  v31 = a5;
  v30 = a4;
  v8 = v7;
  v32 = a3;
  v33 = a2;
  v10 = sub_27554C678();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_2809F5370;
  *&v8[qword_2809F5370] = 0;
  v15 = &v8[qword_2809F5380];
  *(v15 + 32) = 0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 40) = -1;
  *&v8[qword_2809F5388] = 5;
  *&v8[qword_2809F5390] = 0x3FF0000000000000;
  *&v8[qword_2809F5398] = 0x403E000000000000;
  *&v8[qword_2809F53A0] = 0;
  v16 = &v8[qword_2809F53A8];
  sub_27554C668();
  v17 = sub_27554C658();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  *v16 = v17;
  v16[1] = v19;
  v20 = *&v8[v14];
  *&v8[v14] = a1;
  v21 = v32;
  v22 = a1;

  v23 = v33;
  *&v8[qword_2809F5378] = v33;
  sub_27552C284(v21, &v36);
  if (v37)
  {
    sub_27551EA5C(&v36, v40);
    sub_27551EA5C(v40, &v36);
    v38 = 0;
    swift_beginAccess();
    v24 = v23;
    sub_27552DFCC(&v36, v15, v30, v31);
    swift_endAccess();
  }

  else
  {
    v25 = v23;
    sub_275514DA8(&v36, &qword_2809F5810, &qword_2755502E0);
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  v39.receiver = v8;
  v39.super_class = v26;
  v27 = objc_msgSendSuper2(&v39, sel_init);
  sub_275514DA8(v21, &qword_2809F5810, &qword_2755502E0);
  return v27;
}

uint64_t sub_27552D198()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27552D1F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_27552D27C()
{
  result = qword_2809F5848;
  if (!qword_2809F5848)
  {
    sub_27551EA14(255, &qword_2809F5160, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5848);
  }

  return result;
}

uint64_t sub_27552D2E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27552D324()
{
  MEMORY[0x277C7BB40](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27552D390()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_27552D3D0(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v35 = a7;
  v36 = a8;
  v31 = a5;
  v32 = a6;
  v9 = v8;
  v33 = a2;
  v34 = a4;
  v30 = a3;
  v11 = sub_27554C678();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_2809F5370;
  *&v9[qword_2809F5370] = 0;
  v16 = &v9[qword_2809F5380];
  *(v16 + 32) = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 40) = -1;
  *&v9[qword_2809F5388] = 5;
  *&v9[qword_2809F5390] = 0x3FF0000000000000;
  *&v9[qword_2809F5398] = 0x403E000000000000;
  *&v9[qword_2809F53A0] = 0;
  v17 = &v9[qword_2809F53A8];
  sub_27554C668();
  v18 = sub_27554C658();
  v20 = v19;
  (*(v12 + 8))(v14, v11);
  *v17 = v18;
  v17[1] = v20;
  v21 = v33;
  v22 = *&v9[v15];
  *&v9[v15] = a1;
  v23 = a1;

  v24 = v34;
  *&v9[qword_2809F5378] = v21;
  if (v24 >> 60 == 15)
  {
    v25 = v21;
  }

  else
  {
    v26 = v30;
    v37[0] = v30;
    v37[1] = v24;
    v38 = 1;
    swift_beginAccess();
    v27 = v21;
    sub_27552D994(v26, v24);
    sub_27552DFCC(v37, v16, v31, v32);
    swift_endAccess();
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  v39.receiver = v9;
  v39.super_class = v28;
  return objc_msgSendSuper2(&v39, sel_init);
}

uint64_t sub_27552D640(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {

    return sub_27551E864(a3, a4);
  }

  return result;
}

uint64_t sub_27552D6A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {

    return sub_27551E6AC(a3, a4);
  }

  return result;
}

unint64_t sub_27552D718()
{
  result = qword_2809F5880;
  if (!qword_2809F5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5880);
  }

  return result;
}

uint64_t sub_27552D864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  return result;
}

uint64_t sub_27552D874(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    return sub_27551E864(a2, a3);
  }
}

uint64_t sub_27552D888(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    return sub_27551E6AC(a2, a3);
  }
}

uint64_t sub_27552D994(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_27551E864(result, a2);
  }

  return result;
}

uint64_t sub_27552D9C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_27552CE08(0, v1, 0);
    v2 = v12;
    sub_275514CC4();
    v4 = a1 + 56;
    do
    {

      v5 = sub_27554D518();
      if (v5[2])
      {
        v7 = v5[4];
        v6 = v5[5];
      }

      else
      {
        v7 = 0;
        v6 = 0xE000000000000000;
      }

      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_27552CE08((v8 > 1), v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      v10 = v12 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_27552DB30()
{
  result = qword_2809F5930;
  if (!qword_2809F5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5930);
  }

  return result;
}

uint64_t objectdestroy_127Tm()
{
  v1 = sub_27554C648();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_27552DD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, unint64_t, void, void, void, void))
{
  v9 = *(sub_27554C648() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  return a4(a1, a2, a3, *(v4 + 16), v4 + v10, *(v4 + v11), *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 16), *(v4 + (((v11 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_137Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_144Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_27552DF04(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_27551E864(a2, a3);
  }
}

uint64_t sub_27552DF68(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_27551E6AC(a2, a3);
  }
}

uint64_t sub_27552DFCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

CGFloat sub_27552E114()
{
  v0 = sub_27554C548();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_27554D338();
  sub_27554D568();
  if (!*(v1 + 16) || (v2 = sub_27552E2F0(&v5), (v3 & 1) == 0))
  {

    sub_27551EA74(&v5);
LABEL_8:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  sub_27551E914(*(v1 + 56) + 32 * v2, &v6);
  sub_27551EA74(&v5);

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_27552E210(&v6);
    return 0.0;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v5);
  }

  return 0.0;
}

uint64_t sub_27552E210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F59A0, &unk_2755506F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27552E278(uint64_t a1, uint64_t a2)
{
  sub_27554D6E8();
  sub_27554D378();
  v4 = sub_27554D708();

  return sub_27552E334(a1, a2, v4);
}

unint64_t sub_27552E2F0(uint64_t a1)
{
  v2 = sub_27554D548();

  return sub_27552E3EC(a1, v2);
}

unint64_t sub_27552E334(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_27554D678())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_27552E3EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_27551E8B8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x277C7B210](v9, a1);
      sub_27551EA74(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_27552E4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F59A8, &qword_275550730);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F59B0, qword_275550738);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_27552E600(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F59A8, &qword_275550730);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F59B0, qword_275550738);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AccountCreationStartupPageView(uint64_t a1)
{
  result = qword_2809F59B8;
  if (!qword_2809F59B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27552E76C(uint64_t a1)
{
  sub_27552E8A0(319, &qword_2809F59C8, MEMORY[0x277CDD848]);
  if (v1 <= 0x3F)
  {
    sub_27552E8A0(319, &qword_2809F59D0, MEMORY[0x277CDF708]);
    if (v2 <= 0x3F)
    {
      sub_27552E8F4();
      if (v3 <= 0x3F)
      {
        sub_27552E944(319);
        if (v4 <= 0x3F)
        {
          sub_27552E9D8();
          if (v5 <= 0x3F)
          {
            sub_27552EA30();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_27552E8A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_27554C918();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_27552E8F4()
{
  result = qword_2809F59D8;
  if (!qword_2809F59D8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2809F59D8);
  }

  return result;
}

void sub_27552E944(uint64_t a1)
{
  if (!qword_2809F59E0)
  {
    _s9ViewModelCMa(255);
    sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
    v1 = sub_27554C948();
    if (!v2)
    {
      atomic_store(v1, &qword_2809F59E0);
    }
  }
}

void sub_27552E9D8()
{
  if (!qword_2809F59F0)
  {
    v0 = sub_27554C8E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809F59F0);
    }
  }
}

void sub_27552EA30()
{
  if (!qword_2809F59F8)
  {
    v0 = sub_27554D108();
    if (!v1)
    {
      atomic_store(v0, &qword_2809F59F8);
    }
  }
}

uint64_t sub_27552EA9C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_27552EB48(uint64_t a1)
{
  sub_27553CED8(a1, v15);
  v1 = __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
  MEMORY[0x28223BE20](v1);
  v3 = (v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v3);
  v5 = *v3;
  v6 = type metadata accessor for ACRepositoryDefault();
  v14[3] = v6;
  v14[4] = &off_28842B518;
  v14[0] = v5;
  _s9ViewModelCMa(0);
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v14, v6);
  MEMORY[0x28223BE20](v8);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_27553B19C(*v10, v7);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t sub_27552ED04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for AccountCreationStartupPageView(0);
  v4 = v3 - 8;
  v47 = *(v3 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A28, &qword_2755507F8);
  MEMORY[0x28223BE20](v38);
  v7 = &v31 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A18, &qword_2755507E8);
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v31 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A10, &qword_2755507E0);
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v11 = &v31 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A08, &qword_2755507D8);
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v37 = &v31 - v12;
  sub_27552F4CC(v7);
  v13 = (a1 + *(v4 + 40));
  v32 = a1;
  v14 = v13[1];
  v36 = *v13;
  v35 = v14;
  v34 = *(v13 + 16);
  v33 = _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C938();
  swift_getKeyPath();
  sub_27554C9E8();

  v55 = v52;
  v56 = v53;
  *v57 = v54[0];
  *&v57[9] = *(v54 + 9);
  sub_27552FB18(&v55);
  v58 = v55;
  sub_275539B00(&v58);

  v59 = v56;
  *v60 = *v57;
  *&v60[9] = *&v57[9];
  sub_275514DA8(&v59, &qword_2809F5800, &qword_275550180);
  sub_275514DA8(v7, &qword_2809F5A28, &qword_2755507F8);
  v49 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A20, &qword_2755507F0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A30, &qword_275550800);
  v17 = sub_275539234();
  v18 = sub_27553935C();
  v19 = sub_275515E2C(&qword_2809F5A68, &qword_2809F5A30, &qword_275550800, MEMORY[0x277CDF028]);
  *&v52 = v38;
  *(&v52 + 1) = &type metadata for MSError;
  *&v53 = v16;
  *(&v53 + 1) = v17;
  *&v54[0] = v18;
  *(&v54[0] + 1) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_275515E2C(&qword_2809F5A70, &qword_2809F5A20, &qword_2755507F0, MEMORY[0x277CDDF68]);
  v22 = v39;
  sub_27554CFE8();
  (*(v40 + 8))(v9, v22);
  *&v52 = v22;
  *(&v52 + 1) = v15;
  *&v53 = OpaqueTypeConformance2;
  *(&v53 + 1) = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v37;
  v25 = v41;
  sub_27554CF98();
  (*(v42 + 8))(v11, v25);
  sub_27554C938();
  swift_getKeyPath();
  sub_27554C9E8();

  v26 = v45;
  sub_275539BAC(v32, v45);
  v27 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v28 = swift_allocObject();
  sub_275539C1C(v26, v28 + v27);
  v50 = v25;
  v51 = v23;
  swift_getOpaqueTypeConformance2();
  sub_2755393B0();
  v29 = v43;
  sub_27554CFC8();

  return (*(v44 + 8))(v24, v29);
}

uint64_t sub_27552F4CC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for AccountCreationStartupPageView(0);
  v3 = v2 - 8;
  v26 = *(v2 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B20, &qword_275550A40);
  MEMORY[0x28223BE20](v27);
  v29 = (&v23 - v5);
  v6 = sub_27554CCE8();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A40, &qword_275550808);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B28, &qword_275550A48);
  v13 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v15 = &v23 - v14;
  if (*(v1 + *(v3 + 56)) == 1)
  {
    sub_275531494(v12);
    sub_27554CCD8();
    v16 = sub_275515E2C(&qword_2809F5A48, &qword_2809F5A40, &qword_275550808, MEMORY[0x277D24540]);
    sub_27554CF88();
    (*(v24 + 8))(v8, v25);
    (*(v10 + 8))(v12, v9);
    v17 = v28;
    (*(v13 + 16))(v29, v15, v28);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A58, &qword_275550810);
    v31 = v9;
    v32 = v16;
    swift_getOpaqueTypeConformance2();
    sub_275515E2C(&qword_2809F5A50, &qword_2809F5A58, &qword_275550810, MEMORY[0x277CDDB40]);
    sub_27554CC68();
    return (*(v13 + 8))(v15, v17);
  }

  else
  {
    sub_275539BAC(v1, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v20 = swift_allocObject();
    sub_275539C1C(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    v21 = v29;
    *v29 = sub_27553A1A4;
    v21[1] = v20;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A58, &qword_275550810);
    v22 = sub_275515E2C(&qword_2809F5A48, &qword_2809F5A40, &qword_275550808, MEMORY[0x277D24540]);
    v31 = v9;
    v32 = v22;
    swift_getOpaqueTypeConformance2();
    sub_275515E2C(&qword_2809F5A50, &qword_2809F5A58, &qword_275550810, MEMORY[0x277CDDB40]);
    return sub_27554CC68();
  }
}

double sub_27552F9F0@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_27552FA80(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27554C808();
}

uint64_t sub_27552FB18(__int128 *a1)
{
  v5 = a1[1];
  v13 = *a1;
  v14 = v5;
  v15[0] = a1[2];
  *(v15 + 9) = *(a1 + 41);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B18, &qword_275550A18);
  MEMORY[0x277C7AE00](&v11);
  v7 = v12;
  if (v12)
  {
  }

  LOBYTE(v13) = v7 != 0;
  sub_27554D178();
  v8 = a1[1];
  v13 = *a1;
  v14 = v8;
  v15[0] = a1[2];
  *(v15 + 9) = *(a1 + 41);
  v9 = MEMORY[0x277C7AE00](&v11, v6);
  MEMORY[0x28223BE20](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A28, &qword_2755507F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A30, &qword_275550800);
  sub_275539234();
  sub_27553935C();
  sub_275515E2C(&qword_2809F5A68, &qword_2809F5A30, &qword_275550800, MEMORY[0x277CDF028]);
  sub_27554CFB8();
}

uint64_t sub_27552FD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A98, &qword_275550938);
  MEMORY[0x28223BE20](v3);
  v5 = v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AA0, &qword_275550940);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v41 = v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AA8, &qword_275550948);
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v39 = v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AB0, &qword_275550950);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v42 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v38 - v14;
  v16 = sub_27554CC98();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AB8, &qword_275550958);
  v45 = *(v17 - 8);
  v46 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = v38 - v18;
  sub_27554CC78();
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AC0, &qword_275550960);
  sub_275539DC0();
  v43 = v19;
  sub_27554CA38();
  if (*(a1 + *(type metadata accessor for AccountCreationStartupPageView(0) + 48)))
  {
    v20 = v42;
    (*(v7 + 56))(v42, 1, 1, v6);
    v21 = sub_275515E2C(&qword_2809F5AF8, &qword_2809F5AA8, &qword_275550948, MEMORY[0x277CDDB60]);
    v48 = v9;
    v49 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x277C7A970](v20, v6, OpaqueTypeConformance2);
    sub_275514DA8(v20, &qword_2809F5AB0, &qword_275550950);
  }

  else
  {
    v23 = sub_27554CC88();
    v38[1] = v38;
    MEMORY[0x28223BE20](v23);
    v38[-2] = a1;
    v24 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AE8, &qword_275550978);
    v25 = v9;
    v26 = v6;
    sub_275515E2C(&qword_2809F5AF0, &qword_2809F5AE8, &qword_275550978, MEMORY[0x277CE1138]);
    v27 = v39;
    sub_27554CA38();
    v28 = sub_275515E2C(&qword_2809F5AF8, &qword_2809F5AA8, &qword_275550948, MEMORY[0x277CDDB60]);
    v29 = v41;
    v30 = v25;
    MEMORY[0x277C7A960](v27, v25, v28);
    v31 = v42;
    (*(v24 + 16))(v42, v29, v26);
    (*(v24 + 56))(v31, 0, 1, v26);
    v48 = v30;
    v49 = v28;
    v32 = swift_getOpaqueTypeConformance2();
    MEMORY[0x277C7A970](v31, v26, v32);
    sub_275514DA8(v31, &qword_2809F5AB0, &qword_275550950);
    (*(v24 + 8))(v29, v26);
    (*(v40 + 8))(v27, v30);
  }

  v33 = *(v3 + 48);
  v35 = v45;
  v34 = v46;
  v36 = v43;
  (*(v45 + 16))(v5, v43, v46);
  sub_275514D40(v15, &v5[v33], &qword_2809F5AB0, &qword_275550950);
  sub_27554CC48();
  sub_275514DA8(v15, &qword_2809F5AB0, &qword_275550950);
  return (*(v35 + 8))(v36, v34);
}

uint64_t sub_2755303C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AE0, &unk_275550968);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B10, &qword_275550A10);
  MEMORY[0x28223BE20](v35);
  v7 = &v31 - v6;
  v8 = type metadata accessor for AccountCreationStartupPageView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_27554C6A8();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v8 + 48)) == 1)
  {
    sub_275539BAC(a1, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = swift_allocObject();
    sub_275539C1C(v11, v16 + v15);
    sub_27554C698();
    v17 = v36;
    (*(v12 + 16))(v7, v14, v36);
    swift_storeEnumTagMultiPayload();
    sub_27553CF8C(&qword_2809F5AD0, MEMORY[0x277D24538], MEMORY[0x277D24530]);
    sub_275539E7C();
    sub_27554CC68();
    return (*(v12 + 8))(v14, v17);
  }

  else
  {
    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v33 = a2;
    v21 = v20;
    v37 = 2777980912;
    v38 = 0xA400000000000000;
    MEMORY[0x277C7B050](0x4C45434E4143, 0xE600000000000000);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v22 = sub_27554C588();
    v32 = v4;
    v24 = v23;

    v37 = v22;
    v38 = v24;
    sub_275539BAC(a1, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v26 = swift_allocObject();
    sub_275539C1C(v11, v26 + v25);
    sub_275514CC4();
    v27 = v34;
    sub_27554D128();
    _s9ViewModelCMa(0);
    sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
    sub_27554C928();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27554C7F8();

    LOBYTE(v25) = v37;
    KeyPath = swift_getKeyPath();
    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    v30 = (v27 + *(v32 + 36));
    *v30 = KeyPath;
    v30[1] = sub_27553D120;
    v30[2] = v29;
    sub_275514D40(v27, v7, &qword_2809F5AE0, &unk_275550968);
    swift_storeEnumTagMultiPayload();
    sub_27553CF8C(&qword_2809F5AD0, MEMORY[0x277D24538], MEMORY[0x277D24530]);
    sub_275539E7C();
    sub_27554CC68();
    return sub_275514DA8(v27, &qword_2809F5AE0, &unk_275550968);
  }
}

uint64_t sub_27553099C(uint64_t a1)
{
  v15 = sub_27554CBD8();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A88, &qword_2755512D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_27554C988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275514D40(a1, v7, &qword_2809F5A88, &qword_2755512D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_27554D448();
    v12 = sub_27554CD38();
    sub_27554C748();

    sub_27554CBC8();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_27554C978();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_275530C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_27554CBE8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B00, &qword_275550980);
  return sub_27553319C(a1, a2 + *(v4 + 44));
}

uint64_t sub_275530C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v4 = sub_27554C718();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v37 - v7;
  v8 = type metadata accessor for AccountCreationStartupPageView(0);
  v45 = *(v8 - 8);
  v43 = *(v45 + 64);
  v44 = v8 - 8;
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + *(v9 + 40) + 8);
  _s9ViewModelCMa(0);
  v12 = sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  v40 = v11;
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v13 = v52;
  v14 = v53;
  v15 = sub_27554C928();
  v16 = *(v15 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v17 = *(v15 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);

  v52 = v13;
  v53 = v14;

  MEMORY[0x277C7B050](v16, v17);

  v46 = v53;
  v47 = v52;
  v19 = v41;
  v18 = v42;
  sub_275539BAC(v41, v42);
  v20 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v45 = swift_allocObject();
  sub_275539C1C(v18, v45 + v20);
  v42 = v12;
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v43 = v52;
  if (*(v19 + *(v44 + 32)) == 1)
  {
    sub_27554C928();
    LODWORD(v44) = sub_27552B944();
  }

  else
  {
    LODWORD(v44) = 0;
  }

  LOBYTE(v51) = 0;
  sub_27554D0D8();
  LODWORD(v42) = v52;
  v41 = v53;
  LOBYTE(v51) = 0;
  sub_27554D0D8();
  LODWORD(v40) = v52;
  v39 = v53;
  LOBYTE(v51) = 0;
  sub_27554D0D8();
  v21 = v52;
  v38 = v53;
  v51 = 0;
  sub_27554D0D8();
  v22 = v52;
  v23 = v53;
  v24 = v48;
  v25 = v49;
  v26 = *(v49 + 104);
  v27 = v50;
  v26(v48, *MEMORY[0x277D245A0], v50);
  v28 = sub_27554C708();
  v29 = *(v25 + 8);
  result = v29(v24, v27);
  v31 = 0;
  if (v28)
  {
    v32 = v37;
    v26(v37, *MEMORY[0x277D24598], v27);
    v31 = sub_27554C708();
    result = v29(v32, v27);
  }

  v33 = v44 & 1;
  v34 = v46;
  *a2 = v47;
  *(a2 + 8) = v34;
  v35 = v45;
  *(a2 + 16) = sub_275539D40;
  *(a2 + 24) = v35;
  *(a2 + 32) = v43;
  *(a2 + 40) = v33;
  *(a2 + 48) = v42;
  *(a2 + 56) = v41;
  *(a2 + 64) = v40;
  v36 = v38;
  *(a2 + 72) = v39;
  *(a2 + 80) = v21;
  *(a2 + 88) = v36;
  *(a2 + 96) = v22;
  *(a2 + 104) = v23;
  *(a2 + 112) = 0x4030000000000000;
  *(a2 + 120) = v31 & 1;
  return result;
}

uint64_t sub_2755311E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_27554C988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccountCreationStartupPageView(0);
  (*(a2 + *(v8 + 28)))(a1);
  sub_275539404(&qword_2809F5A88, &qword_2755512D0, MEMORY[0x277CDD848], v7);
  sub_27554C978();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_275531308()
{
  v0 = sub_27554C778();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_2809F8DA8);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_27554C758();
  v6 = sub_27554D428();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_27550C000, v5, v6, "[AccountCreation - Startup] page viewed", v7, 2u);
    MEMORY[0x277C7BAC0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_275531494@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = type metadata accessor for AccountCreationStartupPageView(0);
  v54 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v66 = v3;
  v59 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E90, &unk_275550A50);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E98, &unk_27554E990);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v62 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA0, &qword_275550A60);
  MEMORY[0x28223BE20](v10 - 8);
  v64 = &v47 - v11;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = ObjCClassFromMetadata;
  v15 = [v13 bundleForClass_];
  v68 = 2777980912;
  v69 = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000012, 0x8000000275552220);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v16 = sub_27554C588();
  v56 = v17;
  v57 = v16;

  v55 = v2;
  v63 = v1;
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v61 = v13;
  if (v68 & 1) != 0 || (sub_27554C928(), swift_getKeyPath(), swift_getKeyPath(), sub_27554C7F8(), , , , (v68) || (sub_27554C928(), swift_getKeyPath(), swift_getKeyPath(), sub_27554C7F8(), , , , v18 = *(v68 + 16), , v18))
  {
    v19 = v13;
    v20 = v14;
    v21 = [v19 bundleForClass_];
    v68 = 2777980912;
    v69 = 0xA400000000000000;
    MEMORY[0x277C7B050](0xD000000000000011, 0x8000000275552240);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v22 = sub_27554C588();
    v52 = v23;
    v53 = v22;
  }

  else
  {
    v52 = 0;
    v53 = 0;
    v20 = v14;
  }

  v24 = sub_27554C688();
  (*(*(v24 - 8) + 56))(v64, 1, 1, v24);
  v49 = v20;
  v25 = [v61 bundleForClass_];
  v68 = 2777980912;
  v69 = 0xA400000000000000;
  MEMORY[0x277C7B050](0x45554E49544E4F43, 0xE800000000000000);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v26 = sub_27554C588();
  v50 = v27;
  v51 = v26;

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v28 = v58;
  v29 = v63;
  sub_275531F58();
  v30 = sub_27554C6F8();
  v31 = *(v30 - 8);
  v48 = *(v31 + 56);
  v47 = v31 + 56;
  v48(v28, 0, 1, v30);
  v32 = v59;
  sub_275539BAC(v29, v59);
  v33 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v34 = swift_allocObject();
  sub_275539C1C(v32, v34 + v33);
  v35 = v65;
  v36 = v29;
  sub_27554C728();
  v37 = sub_27554C738();
  v54 = *(*(v37 - 8) + 56);
  (v54)(v35, 0, 1, v37);
  v38 = v29 + *(v55 + 40);
  v39 = *v38;
  v40 = *(v38 + 8);
  LOBYTE(v68) = v39;
  v69 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  v41 = 1;
  if ((v67 & 1) == 0)
  {
    v42 = [v61 bundleForClass_];
    v68 = 2777980912;
    v69 = 0xA400000000000000;
    MEMORY[0x277C7B050](0x4F4D5F4E5241454CLL, 0xEA00000000004552);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v61 = sub_27554C588();

    v36 = v63;

    v48(v28, 1, 1, v30);
    sub_275539BAC(v36, v32);
    v43 = swift_allocObject();
    sub_275539C1C(v32, v43 + v33);
    sub_27554C728();
    v41 = 0;
  }

  (v54)(v62, v41, 1, v37);
  sub_275539BAC(v36, v32);
  v44 = swift_allocObject();
  sub_275539C1C(v32, v44 + v33);
  sub_275539BAC(v36, v32);
  v45 = swift_allocObject();
  sub_275539C1C(v32, v45 + v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B30, &qword_275550B90);
  sub_27553A460();
  sub_275515E2C(&qword_2809F5B40, &qword_2809F5B30, &qword_275550B90, MEMORY[0x277CE14C0]);
  return sub_27554C6B8();
}

uint64_t sub_275531F58()
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v0 = [v8 bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000017, 0x8000000275552300);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F55E0, &qword_27554F950);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_275550700;
  type metadata accessor for AccountCreationStartupPageView(0);
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v2 = sub_27554C928();
  v3 = *(v2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v4 = *(v2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);

  MEMORY[0x277C7B050](v3, v4);

  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_27551E7BC();
  *(v1 + 32) = 2777980912;
  *(v1 + 40) = 0xA400000000000000;
  v5 = [v8 bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000016, 0x8000000275552320);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  sub_27554D348();

  v6 = [v8 bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000025, 0x8000000275552340);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  return sub_27554C6E8();
}

double sub_275532388@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for AccountCreationStartupPageView(0);
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.784313725 green:0.956862745 blue:1.0 alpha:1.0];
  v3 = sub_27554D018();
  sub_27554B42C(*&v7[0], v3, v7);
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_2755324F4@<X0>(char *a1@<X8>)
{
  v21 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B48, &qword_275550B98);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v20 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B50, &qword_275550BA0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v22 = v1;
  sub_275534BE8(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B58, &qword_275550BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B60, &qword_275550BB0);
  sub_275515E2C(&qword_2809F5B68, &qword_2809F5B58, &qword_275550BA8, MEMORY[0x277CE1148]);
  sub_27553A4BC();
  sub_27554D1B8();
  sub_275532878(v6);
  v14 = *(v8 + 16);
  v14(v11, v13, v7);
  v15 = v20;
  sub_275514D40(v6, v20, &qword_2809F5B48, &qword_275550B98);
  v16 = v21;
  v14(v21, v11, v7);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B78, &qword_275550BB8);
  sub_275514D40(v15, &v16[*(v17 + 48)], &qword_2809F5B48, &qword_275550B98);
  sub_275514DA8(v6, &qword_2809F5B48, &qword_275550B98);
  v18 = *(v8 + 8);
  v18(v13, v7);
  sub_275514DA8(v15, &qword_2809F5B48, &qword_275550B98);
  return (v18)(v11, v7);
}

uint64_t sub_2755327E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_27554CBE8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CD0, &qword_275550DB0);
  sub_275535FD0(a1, (a2 + *(v4 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B58, &qword_275550BA8);
  v6 = (a2 + *(result + 52));
  *v6 = 0xD000000000000013;
  v6[1] = 0x80000002755522A0;
  return result;
}

uint64_t sub_275532878@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B80, &qword_275550BC0);
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v4 = &v32 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B88, &qword_275550BC8);
  MEMORY[0x28223BE20](v35);
  v36 = &v32 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B90, &qword_275550BD0);
  v33 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v32 = &v32 - v6;
  type metadata accessor for AccountCreationStartupPageView(0);
  v34 = v1;
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  if (v40 & 1) != 0 || (sub_27554C928(), swift_getKeyPath(), swift_getKeyPath(), sub_27554C7F8(), , , , (v40) || (sub_27554C928(), swift_getKeyPath(), swift_getKeyPath(), sub_27554C7F8(), , , , v7 = *(v40 + 16), , v7 < 2))
  {
    sub_27554C928();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27554C7F8();

    if ((v40 & 1) == 0)
    {
      sub_27554C928();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_27554C7F8();

      if (v40 != 1)
      {
        v29 = 1;
        v19 = v39;
        goto LABEL_10;
      }
    }

    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    v40 = 2777980912;
    v41 = 0xA400000000000000;
    MEMORY[0x277C7B050](0xD00000000000001FLL, 0x8000000275552260);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v22 = sub_27554C588();
    v24 = v23;

    v40 = v22;
    v41 = v24;
    sub_275514CC4();
    v40 = sub_27554CED8();
    v41 = v25;
    v42 = v26 & 1;
    v43 = v27;
    MEMORY[0x28223BE20](v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5BA0, &qword_275550BE0);
    sub_27553A540();
    sub_27554D198();
    v28 = v38;
    (*(v2 + 16))(v36, v4, v38);
    swift_storeEnumTagMultiPayload();
    sub_27553A92C(&qword_2809F5BF0, &qword_2809F5B90, &qword_275550BD0, sub_27553A70C);
    sub_27553A92C(&qword_2809F5C38, &qword_2809F5B80, &qword_275550BC0, sub_27553A540);
    v19 = v39;
    sub_27554CC68();
    (*(v2 + 8))(v4, v28);
  }

  else
  {
    _s18CurrentBundleClassCMa();
    v8 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v40 = 2777980912;
    v41 = 0xA400000000000000;
    MEMORY[0x277C7B050](0xD00000000000001FLL, 0x8000000275552260);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v10 = sub_27554C588();
    v12 = v11;

    v40 = v10;
    v41 = v12;
    sub_275514CC4();
    v40 = sub_27554CED8();
    v41 = v13;
    v42 = v14 & 1;
    v43 = v15;
    MEMORY[0x28223BE20](v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C00, &qword_275550C10);
    sub_27553A70C();
    v16 = v32;
    sub_27554D198();
    v17 = v33;
    v18 = v37;
    (*(v33 + 16))(v36, v16, v37);
    swift_storeEnumTagMultiPayload();
    sub_27553A92C(&qword_2809F5BF0, &qword_2809F5B90, &qword_275550BD0, sub_27553A70C);
    sub_27553A92C(&qword_2809F5C38, &qword_2809F5B80, &qword_275550BC0, sub_27553A540);
    v19 = v39;
    sub_27554CC68();
    (*(v17 + 8))(v16, v18);
  }

  v29 = 0;
LABEL_10:
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B98, &qword_275550BD8);
  return (*(*(v30 - 8) + 56))(v19, v29, 1, v30);
}

uint64_t sub_27553319C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccountCreationStartupPageView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AE0, &unk_275550968);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v22[-v12];
  sub_275539BAC(a1, &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_275539C1C(&v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14);
  sub_27554D118();
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  LOBYTE(v14) = v22[15];
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v18 = &v13[*(v8 + 44)];
  *v18 = KeyPath;
  v18[1] = sub_27553A128;
  v18[2] = v17;
  sub_275514D40(v13, v11, &qword_2809F5AE0, &unk_275550968);
  *a2 = 0;
  *(a2 + 8) = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B08, &unk_275550A00);
  sub_275514D40(v11, a2 + *(v19 + 48), &qword_2809F5AE0, &unk_275550968);
  v20 = a2 + *(v19 + 64);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_275514DA8(v13, &qword_2809F5AE0, &unk_275550968);
  return sub_275514DA8(v11, &qword_2809F5AE0, &unk_275550968);
}

uint64_t sub_2755334E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B0, &qword_2755513B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v3 = sub_27554C9C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccountCreationStartupPageView(0);
  sub_275539404(&qword_2809F5A90, &qword_275550880, MEMORY[0x277CDF708], v6);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v12[0] = 2777980912;
  v12[1] = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000020, 0x80000002755521F0);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  sub_27554C5E8();

  v9 = sub_27554C5F8();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v2, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_27554C9B8();
    (*(v4 + 8))(v6, v3);
    return (*(v10 + 8))(v2, v9);
  }

  return result;
}

uint64_t sub_27553379C@<X0>(uint64_t a1@<X8>)
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  MEMORY[0x277C7B050](0x4F4D5F4E5241454CLL, 0xEA00000000004552);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  sub_275514CC4();
  result = sub_27554CED8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_2755338C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v5 = sub_27554CA28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccountCreationStartupPageView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_27554CC28();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CF0, &qword_275550EA8);
  sub_275533C78(a2, (a3 + *(v13 + 44)));
  v14 = sub_275547C5C();
  sub_275539BAC(a2, v12);
  (*(v6 + 16))(v8, v21, v5);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + *(v6 + 80) + v15) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_275539C1C(v12, v17 + v15);
  (*(v6 + 32))(v17 + v16, v8, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CF8, &qword_275550EB0);
  *(a3 + *(result + 52)) = v14;
  v19 = (a3 + *(result + 56));
  *v19 = sub_27553C1EC;
  v19[1] = v17;
  return result;
}

uint64_t sub_275533AFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_27554D248();
  sub_27554C9D8();
}

void *sub_275533B74(uint64_t a1, double a2)
{
  v2 = a2 > 0.0;
  type metadata accessor for AccountCreationStartupPageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0F8();
  result = sub_27554D0E8();
  if (v2)
  {
    sub_27554D268();
    return sub_27554CA18();
  }

  return result;
}

uint64_t sub_275533C78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a1;
  v61 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D00, &qword_275550EB8);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v51 = &v46 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D08, &qword_275550EC0);
  v4 = MEMORY[0x28223BE20](v56);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v55 = &v46 - v7;
  MEMORY[0x28223BE20](v6);
  v58 = &v46 - v8;
  v9 = sub_27554CCE8();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D10, &qword_275550EC8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D18, &qword_275550ED0);
  v16 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D20, &qword_275550ED8);
  v53 = *(v19 - 8);
  v54 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v52 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - v22;
  v62 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D28, &qword_275550EE0);
  sub_275515E2C(&qword_2809F5D30, &qword_2809F5D28, &qword_275550EE0, MEMORY[0x277CE14C0]);
  sub_27554CE08();
  sub_27554CCD8();
  v24 = sub_275515E2C(&qword_2809F5D38, &qword_2809F5D10, &qword_275550EC8, MEMORY[0x277CDE5A0]);
  sub_27554CF88();
  (*(v49 + 8))(v11, v50);
  (*(v13 + 8))(v15, v12);
  v64 = v12;
  v65 = v24;
  v25 = v51;
  swift_getOpaqueTypeConformance2();
  v26 = v48;
  sub_27554CF78();
  (*(v16 + 8))(v18, v26);
  v27 = v47;
  sub_275534E64(v25);
  v28 = v27 + *(type metadata accessor for AccountCreationStartupPageView(0) + 40);
  v29 = *v28;
  v30 = *(v28 + 8);
  LOBYTE(v64) = v29;
  v65 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  if (v63 == 1)
  {
    v31 = sub_27554CD68();
  }

  else
  {
    v31 = sub_27554CD58();
  }

  v32 = v31;
  v33 = v55;
  (*(v57 + 32))(v55, v25, v59);
  v34 = v33 + *(v56 + 36);
  *v34 = v32;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  *(v34 + 40) = 1;
  v35 = v58;
  sub_27553C2EC(v33, v58);
  v37 = v52;
  v36 = v53;
  v38 = *(v53 + 16);
  v39 = v23;
  v40 = v54;
  v38(v52, v23, v54);
  v41 = v60;
  sub_275514D40(v35, v60, &qword_2809F5D08, &qword_275550EC0);
  v42 = v61;
  v38(v61, v37, v40);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D40, &qword_275550EE8);
  sub_275514D40(v41, &v42[*(v43 + 48)], &qword_2809F5D08, &qword_275550EC0);
  sub_275514DA8(v35, &qword_2809F5D08, &qword_275550EC0);
  v44 = *(v36 + 8);
  v44(v39, v40);
  sub_275514DA8(v41, &qword_2809F5D08, &qword_275550EC0);
  return (v44)(v37, v40);
}

uint64_t sub_275534310@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B48, &qword_275550B98);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D68, &qword_275550F48);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D70, &qword_275550F50);
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v53 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v58 = a1;
  sub_2755349B4();
  v16 = sub_27554CD58();
  sub_27554C8A8();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D78, &qword_275550F58) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = sub_27554CD88();
  v27 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D80, &qword_275550F60) + 36)];
  *v27 = v26;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v27[40] = 1;
  v28 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D88, &qword_275550F68) + 36)];
  v28[32] = 0;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v29 = sub_27554D068();
  KeyPath = swift_getKeyPath();
  v31 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D90, &qword_275550F70) + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  v32 = &v10[*(v8 + 36)];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D98, &qword_275550F78) + 28);
  v34 = sub_27554CEA8();
  (*(*(v34 - 8) + 56))(v32 + v33, 1, 1, v34);
  *v32 = swift_getKeyPath();
  sub_275534BE8(v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5DA0, &qword_275550FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B60, &qword_275550BB0);
  sub_27553C5F8();
  sub_27553CA7C();
  sub_27553A4BC();
  sub_27554D1A8();
  sub_275532878(v7);
  v35 = (a1 + *(type metadata accessor for AccountCreationStartupPageView(0) + 40));
  v36 = *v35;
  v37 = *(v35 + 1);
  LOBYTE(v60[0]) = v36;
  v60[1] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  if (v59 == 1)
  {
    v38 = [objc_opt_self() systemBackgroundColor];
    v60[0] = sub_27554D018();
    v39 = sub_27554D138();

    v40 = 1;
  }

  else
  {
    v40 = 0;
    v39 = 1;
  }

  v42 = v53;
  v41 = v54;
  v43 = *(v54 + 16);
  v44 = v15;
  v52 = v15;
  v45 = v55;
  v43(v53, v44, v55);
  v46 = v57;
  sub_275514D40(v7, v57, &qword_2809F5B48, &qword_275550B98);
  v47 = v56;
  v43(v56, v42, v45);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5E00, &qword_275550FD8);
  sub_275514D40(v46, &v47[*(v48 + 48)], &qword_2809F5B48, &qword_275550B98);
  v49 = &v47[*(v48 + 64)];
  sub_27553CB60(0, v40, v39);
  sub_27553CB74(0, v40, v39);
  *v49 = 0;
  *(v49 + 1) = v40;
  *(v49 + 2) = v39;
  sub_275514DA8(v7, &qword_2809F5B48, &qword_275550B98);
  v50 = *(v41 + 8);
  v50(v52, v45);
  sub_27553CB74(0, v40, v39);
  sub_275514DA8(v46, &qword_2809F5B48, &qword_275550B98);
  return (v50)(v42, v45);
}

uint64_t sub_2755348BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_27554CBE8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CD0, &qword_275550DB0);
  sub_275535FD0(a1, (a2 + *(v4 + 44)));
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B58, &qword_275550BA8) + 52));
  *v5 = 0xD000000000000013;
  v5[1] = 0x80000002755522A0;
  v6 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_27554D018();
  v7 = sub_27554D138();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5DA0, &qword_275550FB0);
  *(a2 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_2755349B4()
{
  v1 = type metadata accessor for AccountCreationStartupPageView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = sub_27554CC28();
  v13 = 0;
  sub_275535410(v16);
  memcpy(v14, v16, 0x11BuLL);
  memcpy(v15, v16, 0x11BuLL);
  sub_275514D40(v14, v11, &qword_2809F5E10, &qword_275550FE8);
  sub_275514DA8(v15, &qword_2809F5E10, &qword_275550FE8);
  memcpy(&v12[7], v14, 0x11BuLL);
  v5 = v13;
  KeyPath = swift_getKeyPath();
  v11[0] = v4;
  v11[1] = 0x4030000000000000;
  LOBYTE(v11[2]) = v5;
  memcpy(&v11[2] + 1, v12, 0x122uLL);
  v11[39] = KeyPath;
  LOBYTE(v11[40]) = 1;
  sub_275539BAC(v0, &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  sub_275539C1C(&v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5DD0, &qword_275550FB8);
  sub_27553C998();
  sub_27554CF38();

  memcpy(v16, v11, 0x141uLL);
  return sub_275514DA8(v16, &qword_2809F5DD0, &qword_275550FB8);
}

uint64_t sub_275534BE8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountCreationStartupPageView(0);
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v4 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v4 = *v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_27554C928();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27554C7F8();

    sub_275514CC4();
    v5 = sub_27554CED8();
    v7 = v6;
    v9 = v8;
    sub_27554CDF8();
    v10 = sub_27554CEB8();
    v12 = v11;
    v14 = v13;

    sub_275514D18(v5, v7, v9 & 1);

    sub_27554D028();
    v15 = sub_27554CE88();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    sub_275514D18(v10, v12, v14 & 1);

    v4 = v19 & 1;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v21 = 0;
  }

  *a2 = v15;
  a2[1] = v17;
  a2[2] = v4;
  a2[3] = v21;
  return result;
}

uint64_t sub_275534E64@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for AccountCreationStartupPageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = v1 + *(MEMORY[0x28223BE20](v2 - 8) + 40);
  v26 = v1;
  v6 = *(v5 + 8);
  v21 = *v5;
  v30 = v6;
  v29 = *(v5 + 16);
  v28 = _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C938();
  swift_getKeyPath();
  sub_27554C9E8();

  v24 = *(&v41 + 1);
  v25 = v41;
  v23 = v42;
  sub_275539BAC(v1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  sub_275539C1C(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v7);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  *&v36 = 2777980912;
  *(&v36 + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](0x45554E49544E4F43, 0xE800000000000000);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v11 = sub_27554C588();
  v13 = v12;

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  LOBYTE(v10) = v41;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  *&v36 = v25;
  *(&v36 + 1) = v24;
  LOBYTE(v37) = v23;
  *(&v37 + 1) = sub_27553C35C;
  *&v38 = v22;
  *(&v38 + 1) = v11;
  *&v39 = v13;
  *(&v39 + 1) = KeyPath;
  *&v40 = sub_27553D120;
  *(&v40 + 1) = v15;
  v16 = [v9 bundleForClass_];
  *&v41 = 2777980912;
  *(&v41 + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000017, 0x8000000275552300);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v17 = sub_27554C588();
  v19 = v18;

  v34 = v17;
  v35 = v19;
  sub_27554C938();
  swift_getKeyPath();
  sub_27554C9E8();

  LODWORD(v30) = v33;
  v32 = v26;
  v31 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D48, &qword_275550F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A30, &qword_275550800);
  sub_27553C458();
  sub_275514CC4();
  sub_275515E2C(&qword_2809F5A68, &qword_2809F5A30, &qword_275550800, MEMORY[0x277CDF028]);
  sub_27554CF58();

  v43 = v38;
  v44 = v39;
  v45 = v40;
  v41 = v36;
  v42 = v37;
  return sub_275514DA8(&v41, &qword_2809F5D48, &qword_275550F18);
}

uint64_t sub_275535410@<X0>(void *a2@<X8>)
{
  type metadata accessor for AccountCreationStartupPageView(0);
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.784313725 green:0.956862745 blue:1.0 alpha:1.0];
  v2 = sub_27554D018();
  sub_27554B42C(v32, v2, &v9);
  v3 = sub_27554CC28();
  LOBYTE(v6[0]) = 0;
  sub_275535850(&v32);
  v24 = *&v33[112];
  v25[0] = *&v33[128];
  *(v25 + 11) = *&v33[139];
  v20 = *&v33[48];
  v21 = *&v33[64];
  v22 = *&v33[80];
  v23 = *&v33[96];
  v16 = v32;
  v17 = *v33;
  v18 = *&v33[16];
  v19 = *&v33[32];
  v26[8] = *&v33[112];
  v27[0] = *&v33[128];
  *(v27 + 11) = *&v33[139];
  v26[3] = *&v33[32];
  v26[4] = *&v33[48];
  v26[5] = *&v33[64];
  v26[7] = *&v33[96];
  v26[6] = *&v33[80];
  v26[0] = v32;
  v26[1] = *v33;
  v26[2] = *&v33[16];
  sub_275514D40(&v16, &v30, &qword_2809F5E18, &qword_275551020);
  sub_275514DA8(v26, &qword_2809F5E18, &qword_275551020);
  *&v15[119] = v23;
  *&v15[135] = v24;
  *&v15[151] = v25[0];
  *&v15[162] = *(v25 + 11);
  *&v15[55] = v19;
  *&v15[71] = v20;
  *&v15[87] = v21;
  *&v15[103] = v22;
  *&v15[7] = v16;
  *&v15[23] = v17;
  *&v15[39] = v18;
  v28[2] = v11;
  v28[3] = v12;
  v28[4] = v13;
  v29 = v14;
  v28[0] = v9;
  v28[1] = v10;
  __src[0] = v9;
  __src[1] = v10;
  __src[3] = v12;
  __src[4] = v13;
  __src[2] = v11;
  LOBYTE(__src[5]) = v14;
  *&v30 = v3;
  *(&v30 + 1) = 0x4010000000000000;
  v31[0] = 0;
  *&v31[129] = *&v15[128];
  *&v31[145] = *&v15[144];
  *&v31[161] = *&v15[160];
  *&v31[177] = *(&v25[1] + 9);
  *&v31[65] = *&v15[64];
  *&v31[81] = *&v15[80];
  *&v31[97] = *&v15[96];
  *&v31[113] = *&v15[112];
  *&v31[1] = *v15;
  *&v31[17] = *&v15[16];
  *&v31[33] = *&v15[32];
  *&v31[49] = *&v15[48];
  *(&__src[16] + 8) = *&v31[160];
  *(&__src[17] + 7) = *&v31[175];
  *(&__src[14] + 8) = *&v31[128];
  *(&__src[15] + 8) = *&v31[144];
  *(&__src[10] + 8) = *&v31[64];
  *(&__src[11] + 8) = *&v31[80];
  *(&__src[12] + 8) = *&v31[96];
  *(&__src[13] + 8) = *&v31[112];
  *(&__src[6] + 8) = *v31;
  *(&__src[7] + 8) = *&v31[16];
  *(&__src[8] + 8) = *&v31[32];
  *(&__src[9] + 8) = *&v31[48];
  *(&__src[5] + 8) = v30;
  memcpy(a2, __src, 0x11BuLL);
  *&v33[129] = *&v15[128];
  *&v33[145] = *&v15[144];
  *&v33[161] = *&v15[160];
  *&v33[65] = *&v15[64];
  *&v33[81] = *&v15[80];
  *&v33[97] = *&v15[96];
  *&v33[113] = *&v15[112];
  *&v33[1] = *v15;
  *&v33[17] = *&v15[16];
  *&v33[33] = *&v15[32];
  *&v32 = v3;
  *(&v32 + 1) = 0x4010000000000000;
  v33[0] = 0;
  v34 = *&v15[176];
  *&v33[49] = *&v15[48];
  sub_27553CDD4(v28, v6);
  sub_275514D40(&v30, v6, &qword_2809F5E20, &qword_275551028);
  sub_275514DA8(&v32, &qword_2809F5E20, &qword_275551028);
  v6[2] = v11;
  v6[3] = v12;
  v6[4] = v13;
  v7 = v14;
  v6[0] = v9;
  v6[1] = v10;
  return sub_27553CE30(v6);
}

uint64_t sub_275535850@<X0>(_OWORD *a2@<X8>)
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = objc_opt_self();
  v2 = [v46 bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000012, 0x8000000275552220);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v3 = sub_27554C588();
  v5 = v4;

  v74 = v3;
  v75 = v5;
  sub_275514CC4();
  v6 = sub_27554CED8();
  v8 = v7;
  LOBYTE(v3) = v9;
  sub_27554CDA8();
  v10 = sub_27554CEB8();
  v12 = v11;
  v14 = v13;

  sub_275514D18(v6, v8, v3 & 1);

  sub_27554CDC8();
  v15 = sub_27554CE18();
  v51 = v16;
  v52 = v15;
  LOBYTE(v6) = v17;
  v19 = v18;
  sub_275514D18(v10, v12, v14 & 1);

  v50 = sub_27554CD58();
  v48 = v6 & 1;
  LOBYTE(v74) = v6 & 1;
  LOBYTE(v62) = 1;
  KeyPath = swift_getKeyPath();
  type metadata accessor for AccountCreationStartupPageView(0);
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  if (v6 & 1) != 0 || (sub_27554C928(), swift_getKeyPath(), swift_getKeyPath(), sub_27554C7F8(), , , , (v74) || (sub_27554C928(), swift_getKeyPath(), swift_getKeyPath(), sub_27554C7F8(), , , , v20 = *(v74 + 16), , v20))
  {
    v21 = [v46 bundleForClass_];
    MEMORY[0x277C7B050](0xD000000000000011, 0x8000000275552240);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v22 = sub_27554C588();
    v24 = v23;

    v74 = v22;
    v75 = v24;
    v25 = sub_27554CED8();
    v27 = v26;
    v29 = v28;
    sub_27554CDB8();
    v53 = sub_27554CEB8();
    v31 = v30;
    v32 = v19;
    v34 = v33;
    v36 = v35;

    sub_275514D18(v25, v27, v29 & 1);

    v37 = sub_27554CD58();
    v38 = v31;
    v39 = v34 & 1;
    v19 = v32;
    LOBYTE(v74) = v39;
    LOBYTE(v62) = 1;
    v40 = v39;
    v41 = 65537;
    v42 = v37;
  }

  else
  {
    v53 = 0;
    v38 = 0;
    v36 = 0;
    v41 = 0;
    v42 = 0;
    v40 = 0;
  }

  *&v62 = v52;
  *(&v62 + 1) = v51;
  LOBYTE(v63) = v48;
  *(&v63 + 1) = *v88;
  DWORD1(v63) = *&v88[3];
  *(&v63 + 1) = v19;
  v64[0] = v50;
  *&v64[1] = *v87;
  *&v64[4] = *&v87[3];
  memset(&v64[8], 0, 32);
  v64[40] = 1;
  *&v64[44] = *(v89 + 3);
  *&v64[41] = v89[0];
  *&v65 = KeyPath;
  *(&v65 + 1) = 0x3FE999999999999ALL;
  v56 = *&v64[32];
  v57 = v65;
  v54 = *v64;
  v55 = *&v64[16];
  *&v66 = v53;
  *(&v66 + 1) = v38;
  *&v67 = v40;
  *(&v67 + 1) = v36;
  *v68 = v42;
  memset(&v68[8], 0, 32);
  v68[42] = BYTE2(v41);
  *&v68[40] = v41;
  *&v61[11] = *&v68[27];
  v60 = *v68;
  *v61 = *&v68[16];
  v58 = v66;
  v59 = v67;
  v43 = v63;
  *a2 = v62;
  a2[1] = v43;
  a2[4] = v56;
  a2[5] = v57;
  a2[2] = v54;
  a2[3] = v55;
  *(a2 + 155) = *&v61[11];
  a2[8] = v60;
  a2[9] = *v61;
  a2[6] = v58;
  a2[7] = v59;
  v69[0] = v53;
  v69[1] = v38;
  v69[2] = v40;
  v69[3] = v36;
  v69[4] = v42;
  v70 = 0u;
  v71 = 0u;
  v73 = BYTE2(v41);
  v72 = v41;
  sub_275514D40(&v62, &v74, &qword_2809F5E28, &qword_275551060);
  sub_275514D40(&v66, &v74, &qword_2809F5E30, &qword_275551068);
  sub_275514DA8(v69, &qword_2809F5E30, &qword_275551068);
  v74 = v52;
  v75 = v51;
  v76 = v48;
  *v77 = *v88;
  *&v77[3] = *&v88[3];
  v78 = v19;
  v79 = v50;
  *v80 = *v87;
  *&v80[3] = *&v87[3];
  v81 = 0u;
  v82 = 0u;
  v83 = 1;
  *&v84[3] = *(v89 + 3);
  *v84 = v89[0];
  v85 = KeyPath;
  v86 = 0x3FE999999999999ALL;
  return sub_275514DA8(&v74, &qword_2809F5E28, &qword_275551060);
}

uint64_t sub_275535F58(uint64_t a1)
{
  type metadata accessor for AccountCreationStartupPageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D60, &qword_275550F40);
  return sub_27554C8B8();
}

uint64_t sub_275535FD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for AccountCreationStartupPageView(0);
  v75 = *(v3 - 8);
  v4 = *(v75 + 64);
  v5 = v3 - 8;
  v58 = v3 - 8;
  v74 = v4;
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for iCloudMailTextField(0);
  MEMORY[0x28223BE20](v72);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CD8, &qword_275550DB8);
  v77 = *(v9 - 8);
  v78 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v76 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v80 = &v55 - v12;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v65 = ObjCClassFromMetadata;
  v67 = objc_opt_self();
  v14 = [v67 bundleForClass_];
  *&v83 = 2777980912;
  *(&v83 + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000011, 0x80000002755522C0);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v15 = sub_27554C588();
  v17 = v16;

  *&v83 = v15;
  *(&v83 + 1) = v17;
  sub_275514CC4();
  v18 = sub_27554CED8();
  v20 = v19;
  LOBYTE(v15) = v21;
  sub_27554CDC8();
  v69 = sub_27554CE18();
  v68 = v22;
  v70 = v23;
  v71 = v24;
  sub_275514D18(v18, v20, v15 & 1);

  v25 = *(v5 + 40);
  v66 = a1;
  v26 = (a1 + v25);
  v28 = *v26;
  v27 = v26[1];
  LODWORD(v5) = *(v26 + 16);
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C938();
  swift_getKeyPath();
  sub_27554C9E8();

  v61 = v86;
  v60 = v87;
  v59 = v88;
  v29 = (a1 + *(v58 + 44));
  LODWORD(v58) = *v29;
  v56 = *(v29 + 1);
  v57 = v29[16];

  v64 = v28;
  v63 = v27;
  v62 = v5;
  v30 = sub_27554C928();
  v31 = *(v30 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);
  v55 = *(v30 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  LOBYTE(v28) = v83;
  v32 = [v67 bundleForClass_];
  *&v83 = 2777980912;
  *(&v83 + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000016, 0x80000002755522E0);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v33 = sub_27554C588();
  v35 = v34;

  *v8 = v61;
  v36 = v59;
  *(v8 + 2) = v60;
  *(v8 + 3) = v36;
  v8[32] = v58;
  *(v8 + 5) = v56;
  v8[48] = v57;
  *(v8 + 7) = v55;
  *(v8 + 8) = v31;
  v8[72] = v28;
  *(v8 + 10) = v33;
  *(v8 + 11) = v35;
  type metadata accessor for CGRect(0);
  v81 = 0u;
  v82 = 0u;
  sub_27554D0D8();
  v37 = v85;
  v38 = v84;
  *(v8 + 6) = v83;
  *(v8 + 7) = v38;
  *(v8 + 16) = v37;
  LOBYTE(v81) = 0;
  sub_27554D0D8();
  v39 = *(&v83 + 1);
  v8[136] = v83;
  *(v8 + 18) = v39;
  sub_27554CE68();
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v40 = v73;
  sub_275539BAC(v66, v73);
  v41 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v42 = swift_allocObject();
  sub_275539C1C(v40, v42 + v41);
  sub_27553CF8C(&qword_2809F5CE0, type metadata accessor for iCloudMailTextField, &unk_275551104);
  v43 = v80;
  sub_27554D008();

  sub_27553B048(v8);
  v45 = v76;
  v44 = v77;
  v46 = *(v77 + 16);
  v47 = v78;
  v46(v76, v43, v78);
  v48 = v79;
  v49 = v69;
  v50 = v68;
  *v79 = v69;
  v48[1] = v50;
  LOBYTE(v18) = v70 & 1;
  *(v48 + 16) = v70 & 1;
  v48[3] = v71;
  v51 = v48;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CE8, &qword_275550E50);
  v46(v51 + *(v52 + 48), v45, v47);
  sub_275514D28(v49, v50, v18);
  v53 = *(v44 + 8);

  v53(v80, v47);
  v53(v45, v47);
  sub_275514D18(v49, v50, v18);
}

uint64_t sub_2755368B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  type metadata accessor for AccountCreationStartupPageView(0);
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  if (v20 == 1)
  {
    v19 = sub_27554C928();
    v6 = *(sub_27554C928() + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_validationRules);

    v17 = v4;
    v18 = v3;
    v7 = sub_27553D208(v6, v3, v4);
    v9 = v8;

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v10;
    v21 = v11;
    sub_27554C808();
    sub_27554C928();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27554C7F8();

    if ((v11 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v12 = v10 & 0xFFFFFFFFFFFFLL;
    }

    sub_27554C928();
    if (v12)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v20) = 1;
      return sub_27554C808();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_27554C7F8();

      v14 = v20;
      v20 = v18;
      v21 = v17;
      MEMORY[0x28223BE20](v13);
      v16[2] = &v20;
      v15 = sub_27552EA9C(sub_27553BF20, v16, v14);

      sub_27554C928();
      if (v15)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v20) = 0;
        sub_27554C808();
        sub_27554C928();
        swift_getKeyPath();
        swift_getKeyPath();
        v20 = 0;
        v21 = 0xE000000000000000;
        return sub_27554C808();
      }

      else
      {
        sub_275529E6C(v18, v17);
      }
    }
  }

  return result;
}

uint64_t sub_275536CE0(uint64_t a1)
{
  v2 = type metadata accessor for AccountCreationStartupPageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  swift_getKeyPath();
  sub_275539BAC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_275539C1C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57E0, "|\"");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C10, &qword_275550C18);
  sub_275515E2C(&qword_2809F5C40, &qword_2809F57E0, "|\"", MEMORY[0x277D83980]);
  sub_27553A790();
  return sub_27554D188();
}

uint64_t sub_275536F54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AccountCreationStartupPageView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = *a1;
  v9 = a1[1];
  sub_275539BAC(a2, &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_275539C1C(&v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v10;
  v13[1] = v9;
  v21 = v10;
  v22 = v9;
  v23 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C48, &qword_275550C60);
  sub_275515E2C(&qword_2809F5C50, &qword_2809F5C48, &qword_275550C60, MEMORY[0x277CE1138]);
  sub_27554D118();
  v14 = sub_27554D068();
  KeyPath = swift_getKeyPath();
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C20, &qword_275550C20) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = [objc_opt_self() secondarySystemBackgroundColor];
  v24 = sub_27554D018();
  v18 = sub_27554D138();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C10, &qword_275550C18);
  *(a3 + *(result + 36)) = v18;
  return result;
}

uint64_t sub_275537190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AccountCreationStartupPageView(0);
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27554C808();
}

uint64_t sub_275537284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  *a4 = sub_27554CBE8();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C58, &qword_275550C98);
  return sub_2755372F0(a1, a2, a4 + *(v7 + 44));
}

uint64_t sub_2755372F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  *&v40 = a2;
  *(&v40 + 1) = a1;
  v44 = a4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C60, &qword_275550CA0);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C68, &qword_275550CA8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C70, &qword_275550CB0);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = sub_27554CBE8();
  LOBYTE(v45) = 0;
  sub_2755378B4(v49);
  *&v48[7] = v49[0];
  *&v48[23] = v49[1];
  *&v48[39] = v49[2];
  *&v48[55] = v49[3];
  v18 = v45;
  KeyPath = swift_getKeyPath();
  v20 = &v16[*(v11 + 44)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C78, &qword_275550CE8) + 28);
  v22 = *MEMORY[0x277CDFA88];
  v23 = sub_27554C9F8();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = KeyPath;
  *v16 = v17;
  *(v16 + 1) = 0;
  v16[16] = v18;
  v24 = *v48;
  *(v16 + 33) = *&v48[16];
  v25 = *&v48[48];
  *(v16 + 49) = *&v48[32];
  *(v16 + 65) = v25;
  *(v16 + 10) = *&v48[63];
  *(v16 + 17) = v24;
  type metadata accessor for AccountCreationStartupPageView(0);
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  if (__PAIR128__(v45, v46) == v40)
  {
  }

  else
  {
    v26 = sub_27554D678();

    if ((v26 & 1) == 0)
    {
      v33 = 1;
      v32 = v42;
      v31 = v41;
      goto LABEL_6;
    }
  }

  v27 = sub_27554D098();
  v28 = sub_27554D038();
  v29 = swift_getKeyPath();
  v45 = v27;
  v46 = v29;
  v47 = v28;
  sub_27554CDD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C88, &qword_275550CF8);
  sub_27553AD58();
  v30 = v39;
  sub_27554CF08();

  v31 = v41;
  v32 = v42;
  (*(v41 + 32))(v9, v30, v42);
  v33 = 0;
LABEL_6:
  (*(v31 + 56))(v9, v33, 1, v32);
  sub_275514D40(v16, v14, &qword_2809F5C70, &qword_275550CB0);
  v34 = v43;
  sub_275514D40(v9, v43, &qword_2809F5C68, &qword_275550CA8);
  v35 = v44;
  sub_275514D40(v14, v44, &qword_2809F5C70, &qword_275550CB0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C80, &qword_275550CF0);
  v37 = v35 + *(v36 + 48);
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_275514D40(v34, v35 + *(v36 + 64), &qword_2809F5C68, &qword_275550CA8);
  sub_275514DA8(v9, &qword_2809F5C68, &qword_275550CA8);
  sub_275514DA8(v16, &qword_2809F5C70, &qword_275550CB0);
  sub_275514DA8(v34, &qword_2809F5C68, &qword_275550CA8);
  return sub_275514DA8(v14, &qword_2809F5C70, &qword_275550CB0);
}

uint64_t sub_2755378B4@<X0>(uint64_t a4@<X8>)
{
  sub_275514CC4();

  v5 = sub_27554CED8();
  v23 = v6;
  v24 = v5;
  v22 = v7;
  v25 = v8;
  type metadata accessor for AccountCreationStartupPageView(0);
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();

  v9 = sub_27554CED8();
  v11 = v10;
  v13 = v12;
  sub_27554D078();
  v14 = sub_27554CE88();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_275514D18(v9, v11, v13 & 1);

  *a4 = v24;
  *(a4 + 8) = v23;
  *(a4 + 16) = v22 & 1;
  *(a4 + 24) = v25;
  *(a4 + 32) = v14;
  *(a4 + 40) = v16;
  *(a4 + 48) = v18 & 1;
  *(a4 + 56) = v20;
  sub_275514D28(v24, v23, v22 & 1);

  sub_275514D28(v14, v16, v18 & 1);

  sub_275514D18(v14, v16, v18 & 1);

  sub_275514D18(v24, v23, v22 & 1);
}

uint64_t sub_275537AFC(uint64_t a1)
{
  v2 = sub_27554C9F8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_27554CAA8();
}

uint64_t sub_275537BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5BE8, &unk_275550C00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5BD8, &qword_275550BF8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5BC8, &qword_275550BF0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5BB8, &qword_275550BE8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = v29 - v17;
  *v6 = sub_27554CC28();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C98, &unk_275550D00);
  sub_275537F08(a1, &v6[*(v19 + 44)]);
  sub_27554D218();
  sub_27554CA48();
  sub_2755151DC(v6, v10, &qword_2809F5BE8, &unk_275550C00);
  v20 = &v10[*(v8 + 44)];
  v21 = v35;
  *(v20 + 4) = v34;
  *(v20 + 5) = v21;
  *(v20 + 6) = v36;
  v22 = v31;
  *v20 = v30;
  *(v20 + 1) = v22;
  v23 = v33;
  *(v20 + 2) = v32;
  *(v20 + 3) = v23;
  LOBYTE(v6) = sub_27554CD98();
  sub_2755151DC(v10, v14, &qword_2809F5BD8, &qword_275550BF8);
  v24 = &v14[*(v12 + 44)];
  *v24 = v6;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v24[40] = 1;
  LOBYTE(v10) = sub_27554CD98();
  sub_2755151DC(v14, v18, &qword_2809F5BC8, &qword_275550BF0);
  v25 = &v18[*(v16 + 44)];
  *v25 = v10;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  v25[40] = 1;
  v26 = [objc_opt_self() secondarySystemBackgroundColor];
  v29[1] = sub_27554D018();
  v27 = sub_27554D138();
  sub_2755151DC(v18, a2, &qword_2809F5BB8, &qword_275550BE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5BA0, &qword_275550BE0);
  *(a2 + *(result + 36)) = v27;
  return result;
}

uint64_t sub_275537F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5010, &qword_275551190);
  v59 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v58 = &v54[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CA0, &qword_275550D10);
  MEMORY[0x28223BE20](v4);
  v69 = &v54[-v5];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CA8, &qword_275550D18);
  MEMORY[0x28223BE20](v68);
  v67 = &v54[-v6];
  v7 = type metadata accessor for AccountCreationStartupPageView(0);
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v62 = v8;
  v63 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CB0, &qword_275550D20);
  v9 = MEMORY[0x28223BE20](v64);
  v65 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v66 = &v54[-v11];
  v60 = a1;
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  if (v72 == 1)
  {
    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v57 = objc_opt_self();
    v13 = [v57 bundleForClass_];
    v72 = 2777980912;
    v73 = 0xA400000000000000;
    MEMORY[0x277C7B050](0xD000000000000017, 0x8000000275552280);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v14 = sub_27554C588();
    v16 = v15;

    v72 = v14;
    v73 = v16;
    v58 = sub_275514CC4();
    v17 = sub_27554CED8();
    v19 = v18;
    LOBYTE(v14) = v20;
    sub_27554CDF8();
    v21 = sub_27554CEB8();
    v23 = v22;
    v25 = v24;
    v59 = v4;

    sub_275514D18(v17, v19, v14 & 1);

    sub_27554D078();
    v26 = sub_27554CE88();
    v28 = v27;
    v55 = v29;
    v56 = v30;

    sub_275514D18(v21, v23, v25 & 1);

    v31 = [v57 bundleForClass_];
    v72 = 2777980912;
    v73 = 0xA400000000000000;
    MEMORY[0x277C7B050](0x5952544552, 0xE500000000000000);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v32 = sub_27554C588();
    v34 = v33;

    v72 = v32;
    v73 = v34;
    v35 = v63;
    sub_275539BAC(v60, v63);
    v36 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v37 = swift_allocObject();
    sub_275539C1C(v35, v37 + v36);
    v38 = v66;
    sub_27554D128();
    v39 = sub_27554CDF8();
    KeyPath = swift_getKeyPath();
    v41 = (v38 + *(v64 + 36));
    *v41 = KeyPath;
    v41[1] = v39;
    v42 = v65;
    sub_275514D40(v38, v65, &qword_2809F5CB0, &qword_275550D20);
    v43 = v67;
    *v67 = v26;
    *(v43 + 8) = v28;
    LOBYTE(v32) = v55 & 1;
    *(v43 + 16) = v55 & 1;
    *(v43 + 24) = v56;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CC8, &qword_275550D60);
    sub_275514D40(v42, v43 + *(v44 + 48), &qword_2809F5CB0, &qword_275550D20);
    sub_275514D28(v26, v28, v32);

    sub_275514D28(v26, v28, v32);

    sub_275514DA8(v42, &qword_2809F5CB0, &qword_275550D20);
    sub_275514D18(v26, v28, v32);

    sub_275514D40(v43, v69, &qword_2809F5CA8, &qword_275550D18);
    swift_storeEnumTagMultiPayload();
    sub_275515E2C(&qword_2809F5CC0, &qword_2809F5CA8, &qword_275550D18, MEMORY[0x277CE14C0]);
    sub_275515E2C(&qword_2809F5008, &qword_2809F5010, &qword_275551190, MEMORY[0x277CDD7F8]);
    v45 = v71;
    sub_27554CC68();
    sub_275514D18(v26, v28, v32);

    sub_275514DA8(v43, &qword_2809F5CA8, &qword_275550D18);
    sub_275514DA8(v38, &qword_2809F5CB0, &qword_275550D20);
  }

  else
  {
    v47 = v69;
    v46 = v70;
    v48 = v71;
    sub_27554C928();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27554C7F8();

    if (v72 != 1)
    {
      v51 = 1;
      v45 = v48;
      goto LABEL_7;
    }

    v49 = v58;
    sub_27554C958();
    v50 = v59;
    (*(v59 + 16))(v47, v49, v46);
    swift_storeEnumTagMultiPayload();
    sub_275515E2C(&qword_2809F5CC0, &qword_2809F5CA8, &qword_275550D18, MEMORY[0x277CE14C0]);
    sub_275515E2C(&qword_2809F5008, &qword_2809F5010, &qword_275551190, MEMORY[0x277CDD7F8]);
    v45 = v48;
    sub_27554CC68();
    (*(v50 + 8))(v49, v46);
  }

  v51 = 0;
LABEL_7:
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CB8, &qword_275550D28);
  return (*(*(v52 - 8) + 56))(v45, v51, 1, v52);
}

uint64_t sub_2755388A0(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for AccountCreationStartupPageView(0);
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  a2();
}

uint64_t sub_27553898C(uint64_t a1)
{
  type metadata accessor for AccountCreationStartupPageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D60, &qword_275550F40);
  sub_27554C8B8();
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_27554C808();
}

uint64_t sub_275538ADC(uint64_t a1)
{
  v2 = type metadata accessor for AccountCreationStartupPageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000025, 0x8000000275552340);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v7 = sub_27554C588();
  v9 = v8;

  v13[0] = v7;
  v13[1] = v9;
  sub_275539BAC(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_275539C1C(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_275514CC4();
  return sub_27554D128();
}

uint64_t sub_275538CCC@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F55E0, &qword_27554F950);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_275550700;
  type metadata accessor for AccountCreationStartupPageView(0);
  _s9ViewModelCMa(0);
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa, &unk_2755501D0);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v4 = sub_27554C928();
  v5 = *(v4 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v6 = *(v4 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);

  MEMORY[0x277C7B050](v5, v6);

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_27551E7BC();
  *(v3 + 32) = v13;
  *(v3 + 40) = v14;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000016, 0x8000000275552320);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  sub_27554D348();

  sub_275514CC4();
  result = sub_27554CED8();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_275538FA8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A00, &qword_2755507D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A08, &qword_2755507D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A10, &qword_2755507E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A18, &qword_2755507E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A20, &qword_2755507F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A28, &qword_2755507F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A30, &qword_275550800);
  sub_275539234();
  sub_27553935C();
  sub_275515E2C(&qword_2809F5A68, &qword_2809F5A30, &qword_275550800, MEMORY[0x277CDF028]);
  swift_getOpaqueTypeConformance2();
  sub_275515E2C(&qword_2809F5A70, &qword_2809F5A20, &qword_2755507F0, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2755393B0();
  swift_getOpaqueTypeConformance2();
  sub_27554CA08();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A80, &qword_275550818);
  v2 = (a1 + *(result + 36));
  *v2 = sub_275531308;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  return result;
}

unint64_t sub_275539234()
{
  result = qword_2809F5A38;
  if (!qword_2809F5A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A28, &qword_2755507F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A40, &qword_275550808);
    sub_275515E2C(&qword_2809F5A48, &qword_2809F5A40, &qword_275550808, MEMORY[0x277D24540]);
    swift_getOpaqueTypeConformance2();
    sub_275515E2C(&qword_2809F5A50, &qword_2809F5A58, &qword_275550810, MEMORY[0x277CDDB40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5A38);
  }

  return result;
}

unint64_t sub_27553935C()
{
  result = qword_2809F5A60;
  if (!qword_2809F5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5A60);
  }

  return result;
}

unint64_t sub_2755393B0()
{
  result = qword_2809F5A78;
  if (!qword_2809F5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5A78);
  }

  return result;
}

uint64_t sub_275539404@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_27554CBD8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_275514D40(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_27554D448();
    v19 = sub_27554CD38();
    sub_27554C748();

    sub_27554CBC8();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_275539604@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  *a2 = v4;
  return result;
}

uint64_t sub_275539684(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_27554C808();
}

uint64_t sub_2755396FC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  *a2 = v4;
  return result;
}

uint64_t sub_27553977C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27554C808();
}

uint64_t sub_275539884@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  *a4 = v6;
  a4[1] = v7;
  return result;
}

uint64_t sub_275539914(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27554C808();
}

uint64_t sub_2755399F8@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  *a4 = v6;
  return result;
}

uint64_t sub_275539A88(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27554C808();
}

uint64_t sub_275539BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountCreationStartupPageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275539C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountCreationStartupPageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275539C80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountCreationStartupPageView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_275530C98(v4, a1);
}

uint64_t sub_275539D40(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountCreationStartupPageView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2755311E8(a1, v4);
}

unint64_t sub_275539DC0()
{
  result = qword_2809F5AC8;
  if (!qword_2809F5AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5AC0, &qword_275550960);
    sub_27553CF8C(&qword_2809F5AD0, MEMORY[0x277D24538], MEMORY[0x277D24530]);
    sub_275539E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5AC8);
  }

  return result;
}

unint64_t sub_275539E7C()
{
  result = qword_2809F5AD8;
  if (!qword_2809F5AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5AE0, &unk_275550968);
    sub_275515E2C(&qword_2809F5A68, &qword_2809F5A30, &qword_275550800, MEMORY[0x277CDF028]);
    sub_275515E2C(&qword_2809F5080, &qword_2809F5088, &qword_27554EBA0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5AD8);
  }

  return result;
}

uint64_t sub_275539FB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27554CAF8();
  *a1 = result;
  return result;
}

uint64_t sub_27553A00C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27554CA78();
  *a1 = result;
  return result;
}

uint64_t sub_27553A064@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27554CB88();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27553A094@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27554CB88();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27553A1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccountCreationStartupPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2755338C4(a1, v6, a2);
}

double sub_27553A38C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AccountCreationStartupPageView(0);

  return sub_275532388(a1);
}

unint64_t sub_27553A460()
{
  result = qword_2809F5B38;
  if (!qword_2809F5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5B38);
  }

  return result;
}

unint64_t sub_27553A4BC()
{
  result = qword_2809F5B70;
  if (!qword_2809F5B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5B60, &qword_275550BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5B70);
  }

  return result;
}

unint64_t sub_27553A540()
{
  result = qword_2809F5BA8;
  if (!qword_2809F5BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5BA0, &qword_275550BE0);
    sub_27553C84C(&qword_2809F5BB0, &qword_2809F5BB8, &qword_275550BE8, sub_27553A624);
    sub_275515E2C(&qword_2809F4F68, &qword_2809F4F70, &qword_27554EA00, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5BA8);
  }

  return result;
}

unint64_t sub_27553A654()
{
  result = qword_2809F5BD0;
  if (!qword_2809F5BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5BD8, &qword_275550BF8);
    sub_275515E2C(&qword_2809F5BE0, &qword_2809F5BE8, &unk_275550C00, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5BD0);
  }

  return result;
}

unint64_t sub_27553A70C()
{
  result = qword_2809F5BF8;
  if (!qword_2809F5BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5C00, &qword_275550C10);
    sub_27553A790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5BF8);
  }

  return result;
}

unint64_t sub_27553A790()
{
  result = qword_2809F5C08;
  if (!qword_2809F5C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5C10, &qword_275550C18);
    sub_27553A848();
    sub_275515E2C(&qword_2809F4F68, &qword_2809F4F70, &qword_27554EA00, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5C08);
  }

  return result;
}

unint64_t sub_27553A848()
{
  result = qword_2809F5C18;
  if (!qword_2809F5C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5C20, &qword_275550C20);
    sub_275515E2C(&qword_2809F5C28, &qword_2809F5C30, &qword_275550C28, MEMORY[0x277CDF028]);
    sub_275515E2C(&qword_2809F5118, &qword_2809F5120, &unk_275550C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5C18);
  }

  return result;
}

uint64_t sub_27553A92C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27553A9C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccountCreationStartupPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_275536F54(a1, v6, a2);
}

uint64_t sub_27553AA44()
{
  v1 = type metadata accessor for AccountCreationStartupPageView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A88, &qword_2755512D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_27554C988();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A90, &qword_275550880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_27554C9C8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_275539C14(*(v5 + *(v1 + 32)), *(v5 + *(v1 + 32) + 8));

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_27553AC3C()
{
  v1 = *(type metadata accessor for AccountCreationStartupPageView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_275537190(v0 + v2, v4, v5);
}

uint64_t sub_27553ACD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27554CA78();
  *a1 = result;
  return result;
}

unint64_t sub_27553AD58()
{
  result = qword_2809F5C90;
  if (!qword_2809F5C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5C88, &qword_275550CF8);
    sub_275515E2C(&qword_2809F5118, &qword_2809F5120, &unk_275550C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5C90);
  }

  return result;
}

uint64_t sub_27553AE28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27554CB18();
  *a1 = result;
  return result;
}

uint64_t sub_27553AE54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27554CB18();
  *a1 = result;
  return result;
}

uint64_t sub_27553AFC8(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for AccountCreationStartupPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2755368B0(a1, a2, v6);
}

uint64_t sub_27553B048(uint64_t a1)
{
  v2 = type metadata accessor for iCloudMailTextField(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27553B0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5E08, &qword_275550FE0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_275514D40(a1, &v5 - v3, &qword_2809F5E08, &qword_275550FE0);
  return sub_27554CB78();
}

uint64_t sub_27553B19C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5828, &qword_275551070);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v63 - v5;
  v6 = sub_27554D498();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5E38, &qword_275551078);
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v63 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5E40, &qword_275551080);
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5E48, &qword_275551088);
  v11 = *(v10 - 8);
  v79 = v10;
  v80 = v11;
  MEMORY[0x28223BE20](v10);
  v71 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5E50, &unk_275551090);
  v14 = *(v13 - 8);
  v81 = v13;
  v82 = v14;
  MEMORY[0x28223BE20](v13);
  v77 = &v63 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5998, &qword_2755506E8);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v63 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5990, &unk_2755510A0);
  v17 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v19 = &v63 - v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5988, &qword_2755506E0);
  v65 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v21 = &v63 - v20;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5980, &unk_2755510B0);
  v22 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v24 = &v63 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5978, &qword_2755506D8);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v63 - v27;
  v89[3] = type metadata accessor for ACRepositoryDefault();
  v89[4] = &off_28842B518;
  v89[0] = a1;
  v29 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__profileImage;
  *&v87 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57D0, &qword_2755510C0);
  sub_27554C7D8();
  (*(v26 + 32))(a2 + v29, v28, v25);
  v30 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__suggestedEmails;
  *&v87 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57E0, "|\"");
  sub_27554C7D8();
  (*(v22 + 32))(a2 + v30, v24, v64);
  v31 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__inputEmail;
  *&v87 = 0;
  *(&v87 + 1) = 0xE000000000000000;
  sub_27554C7D8();
  v32 = *(v65 + 32);
  v33 = v86;
  v32(a2 + v31, v21, v86);
  v34 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__debouncedInputEmail;
  *&v87 = 0;
  *(&v87 + 1) = 0xE000000000000000;
  sub_27554C7D8();
  v32(a2 + v34, v21, v33);
  v35 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__isLoading;
  LOBYTE(v87) = 1;
  sub_27554C7D8();
  v36 = *(v17 + 32);
  v37 = v66;
  v36(a2 + v35, v19, v66);
  v38 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__isCreating;
  LOBYTE(v87) = 0;
  sub_27554C7D8();
  v36(a2 + v38, v19, v37);
  v39 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__showingAlert;
  LOBYTE(v87) = 0;
  sub_27554C7D8();
  v36(a2 + v39, v19, v37);
  v40 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__showingFinishView;
  LOBYTE(v87) = 0;
  sub_27554C7D8();
  v36(a2 + v40, v19, v37);
  v41 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__showingAvailableCheckSpinner;
  LOBYTE(v87) = 0;
  sub_27554C7D8();
  v36(a2 + v41, v19, v37);
  v42 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__emailValidAvailableErrorMessage;
  *&v87 = 0;
  *(&v87 + 1) = 0xE000000000000000;
  sub_27554C7D8();
  v32(a2 + v42, v21, v86);
  v43 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__disableContinueButton;
  LOBYTE(v87) = 1;
  sub_27554C7D8();
  v36(a2 + v43, v19, v37);
  v44 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__getSuggestionsError;
  LOBYTE(v87) = 0;
  sub_27554C7D8();
  v36(a2 + v44, v19, v37);
  v45 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__errorAlert;
  v87 = 0u;
  memset(v88, 0, sizeof(v88));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5800, &qword_275550180);
  v46 = v67;
  sub_27554C7D8();
  (*(v68 + 32))(a2 + v45, v46, v69);
  v47 = MEMORY[0x277D84F90];
  *(a2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_suggestions) = MEMORY[0x277D84F90];
  *(a2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_validationRules) = v47;
  v48 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__passedInitialLengthThreshold;
  LOBYTE(v87) = 0;
  sub_27554C7D8();
  v36(a2 + v48, v19, v37);
  v49 = (a2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  *v49 = 0x2E64756F6C636940;
  v49[1] = 0xEB000000006D6F63;
  *(a2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_cancellables) = MEMORY[0x277D84FA0];
  *(a2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_availableApiCall) = 0;
  sub_27553CED8(v89, a2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository);
  swift_beginAccess();
  v50 = v72;
  sub_27554C7E8();
  swift_endAccess();
  sub_275515E2C(&qword_2809F5E58, &qword_2809F5E38, &qword_275551078, MEMORY[0x277CBCEC8]);
  v51 = v70;
  v52 = v73;
  sub_27554C878();
  (*(v75 + 8))(v50, v52);
  sub_275515E2C(&qword_2809F5E60, &qword_2809F5E40, &qword_275551080, MEMORY[0x277CBCC18]);
  v53 = v71;
  v54 = v74;
  sub_27554C888();
  (*(v76 + 8))(v51, v54);
  v55 = v78;
  sub_27554D488();
  sub_2755155D4();
  v56 = sub_27554D4A8();
  *&v87 = v56;
  v57 = sub_27554D478();
  v58 = v83;
  (*(*(v57 - 8) + 56))(v83, 1, 1, v57);
  sub_275515E2C(&qword_2809F5E68, &qword_2809F5E48, &qword_275551088, MEMORY[0x277CBCBE0]);
  sub_27553CF8C(&qword_2809F5848, sub_2755155D4, MEMORY[0x277D85228]);
  v59 = v77;
  v60 = v79;
  sub_27554C868();
  sub_275514DA8(v58, &qword_2809F5828, &qword_275551070);
  (*(v84 + 8))(v55, v85);
  (*(v80 + 8))(v53, v60);

  swift_allocObject();
  swift_weakInit();
  sub_275515E2C(&qword_2809F5E70, &qword_2809F5E50, &unk_275551090, MEMORY[0x277CBCCF8]);
  v61 = v81;
  sub_27554C898();

  (*(v82 + 8))(v59, v61);
  swift_beginAccess();
  sub_27554C798();
  swift_endAccess();

  sub_275527FCC();
  sub_275529044();
  sub_2755297EC();
  __swift_destroy_boxed_opaque_existential_1(v89);
  return a2;
}

uint64_t sub_27553BF20(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_27554D678() & 1;
  }
}

uint64_t sub_27553BF78()
{
  v1 = type metadata accessor for AccountCreationStartupPageView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_27554CA28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v15 = *(v6 + 64);
  v8 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A88, &qword_2755512D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_27554C988();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A90, &qword_275550880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_27554C9C8();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
  }

  v12 = v2 | v7;
  v13 = (v3 + v4 + v7) & ~v7;

  sub_275539C14(*(v8 + *(v1 + 32)), *(v8 + *(v1 + 32) + 8));

  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v12 | 7);
}

uint64_t sub_27553C1EC(uint64_t *a1)
{
  v3 = *(type metadata accessor for AccountCreationStartupPageView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_27554CA28() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_275533AFC(a1, v1 + v4, v7);
}

uint64_t sub_27553C2EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D08, &qword_275550EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27553C374(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccountCreationStartupPageView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_27553C458()
{
  result = qword_2809F5D50;
  if (!qword_2809F5D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5D48, &qword_275550F18);
    sub_27553C510();
    sub_275515E2C(&qword_2809F5080, &qword_2809F5088, &qword_27554EBA0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5D50);
  }

  return result;
}

unint64_t sub_27553C510()
{
  result = qword_2809F5D58;
  if (!qword_2809F5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5D58);
  }

  return result;
}

unint64_t sub_27553C5F8()
{
  result = qword_2809F5DA8;
  if (!qword_2809F5DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5D68, &qword_275550F48);
    sub_27553C6B0();
    sub_275515E2C(&qword_2809F5DF0, &qword_2809F5D98, &qword_275550F78, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5DA8);
  }

  return result;
}

unint64_t sub_27553C6B0()
{
  result = qword_2809F5DB0;
  if (!qword_2809F5DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5D90, &qword_275550F70);
    sub_27553C768();
    sub_275515E2C(&qword_2809F5118, &qword_2809F5120, &unk_275550C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5DB0);
  }

  return result;
}

unint64_t sub_27553C768()
{
  result = qword_2809F5DB8;
  if (!qword_2809F5DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5D88, &qword_275550F68);
    sub_27553C84C(&qword_2809F5DC0, &qword_2809F5D80, &qword_275550F60, sub_27553C8D0);
    sub_275515E2C(&qword_2809F4F58, &qword_2809F4F60, &qword_275550FD0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5DB8);
  }

  return result;
}

uint64_t sub_27553C84C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27553C8D0()
{
  result = qword_2809F5DC8;
  if (!qword_2809F5DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5D78, &qword_275550F58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5DD0, &qword_275550FB8);
    sub_27553C998();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5DC8);
  }

  return result;
}

unint64_t sub_27553C998()
{
  result = qword_2809F5DD8;
  if (!qword_2809F5DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5DD0, &qword_275550FB8);
    sub_275515E2C(&qword_2809F5DE0, &qword_2809F5DE8, &unk_275550FC0, MEMORY[0x277CE1198]);
    sub_275515E2C(&qword_2809F4F48, &qword_2809F4F50, &unk_27554E9F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5DD8);
  }

  return result;
}

unint64_t sub_27553CA7C()
{
  result = qword_2809F5DF8;
  if (!qword_2809F5DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5DA0, &qword_275550FB0);
    sub_275515E2C(&qword_2809F5B68, &qword_2809F5B58, &qword_275550BA8, MEMORY[0x277CE1148]);
    sub_275515E2C(&qword_2809F4F68, &qword_2809F4F70, &qword_27554EA00, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5DF8);
  }

  return result;
}

uint64_t sub_27553CB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_27553CB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_27553CB88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27554CAF8();
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for AccountCreationStartupPageView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A88, &qword_2755512D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_27554C988();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A90, &qword_275550880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_27554C9C8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_275539C14(*(v5 + *(v1 + 32)), *(v5 + *(v1 + 32) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27553CED8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_27553CF8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27553CFD4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_27553D018()
{
  result = qword_2809F5E78;
  if (!qword_2809F5E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A80, &qword_275550818);
    sub_275515E2C(&qword_2809F5E80, &qword_2809F5E88, qword_2755510C8, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5E78);
  }

  return result;
}

uint64_t sub_27553D124()
{
  v0 = sub_27554C778();
  __swift_allocate_value_buffer(v0, qword_2809F8DA8);
  __swift_project_value_buffer(v0, qword_2809F8DA8);
  return sub_27554C768();
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

uint64_t sub_27553D208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  sub_27553D364();
  for (i = (a1 + 96); ; i += 72)
  {
    v6 = *(i - 2);
    v7 = *i;
    v8 = *(i - 6);
    v9 = *(i - 5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F55E0, &qword_27554F950);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_275550700;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_27551E7BC();
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;

    v11 = sub_27554D408();
    v12 = sub_27554D328();
    LODWORD(v8) = [v11 evaluateWithObject_];

    if (v7 != v8)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_27553D364()
{
  result = qword_2809F5E90;
  if (!qword_2809F5E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809F5E90);
  }

  return result;
}

uint64_t sub_27553D3C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_27554CE78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27553D484(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_27554CE78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for iCloudMailTextField(uint64_t a1)
{
  result = qword_2809F5E98;
  if (!qword_2809F5E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27553D574(uint64_t a1)
{
  sub_27553D6F0(319, &qword_2809F5EA8, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_27552E9D8();
    if (v2 <= 0x3F)
    {
      sub_27553D698(319);
      if (v3 <= 0x3F)
      {
        sub_27553D6F0(319, &qword_2809F59F8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_27554CE78();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_27553D698(uint64_t a1)
{
  if (!qword_2809F5EB0)
  {
    type metadata accessor for CGRect(255);
    v1 = sub_27554D108();
    if (!v2)
    {
      atomic_store(v1, &qword_2809F5EB0);
    }
  }
}

void sub_27553D6F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_27553D75C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for iCloudMailTextField(0);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x28223BE20](v3);
  v48 = v5;
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EB8, &qword_275551158);
  MEMORY[0x28223BE20](v50);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EC0, &qword_275551160);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EC8, &qword_275551168);
  MEMORY[0x28223BE20](v10 - 8);
  v42 = &v42 - v11;
  v12 = sub_27554CE58();
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v54 = *v1;
  v55 = v16;
  v56 = v18;
  v57 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5ED0, &qword_275551170);
  MEMORY[0x277C7AE00](&v52);
  v21 = v52;
  v20 = v53;

  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v54 = v15;
    v55 = v16;
    v56 = v18;
    v57 = v17;
    MEMORY[0x277C7AE00](&v52, v19);
    v24 = v52;
    v23 = v53;
  }

  else
  {
    v24 = v2[10];
  }

  v54 = v24;
  v55 = v23;
  sub_275514CC4();
  v25 = sub_27554CED8();
  v27 = v26;
  v29 = v28;
  v30 = sub_27554CE28();
  (*(*(v30 - 8) + 56))(v42, 1, 1, v30);
  v31 = sub_27554CEC8();
  (*(*(v31 - 8) + 56))(v45, 1, 1, v31);
  sub_27554CE48();
  sub_27554CE38();
  v33 = v32;
  v35 = v34;
  (*(v43 + 8))(v14, v44);
  *v7 = sub_27554CBE8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5ED8, &unk_275551178);
  sub_27553DC34(v2, &v7[*(v36 + 44)], v33, v35);
  v37 = v2;
  v38 = v49;
  sub_27553F4D4(v37, v49);
  v39 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v40 = swift_allocObject();
  sub_27553F658(v38, v40 + v39);
  sub_275515E2C(&qword_2809F5EE0, &qword_2809F5EB8, &qword_275551158, MEMORY[0x277CE1138]);
  sub_27554CF38();

  sub_275514D18(v25, v27, v29 & 1);

  return sub_275514DA8(v7, &qword_2809F5EB8, &qword_275551158);
}

uint64_t sub_27553DC34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v70 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EE8, &qword_275551188);
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = (&v57 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5010, &qword_275551190);
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v59 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EF0, &qword_275551198);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v67 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EF8, &qword_2755511A0);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v66 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  *v22 = sub_27554CBE8();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F00, &qword_2755511A8) + 44)];
  v63 = a1;
  sub_27553E344(a1, v23);
  v65 = sub_27554D228();
  v25 = v24;
  v26 = sub_27554CBE8();
  v71[0] = 0;
  sub_27553EBEC(a1, &v86, a3, a4);
  v79 = *&v87[80];
  v80 = *&v87[96];
  v81 = *&v87[112];
  v75 = *&v87[16];
  v76 = *&v87[32];
  v77 = *&v87[48];
  v78 = *&v87[64];
  v73 = v86;
  v74 = *v87;
  v82[6] = *&v87[80];
  v82[7] = *&v87[96];
  v82[8] = *&v87[112];
  v82[2] = *&v87[16];
  v82[3] = *&v87[32];
  v82[4] = *&v87[48];
  v82[5] = *&v87[64];
  v82[0] = v86;
  v82[1] = *v87;
  sub_275514D40(&v73, &v83, &qword_2809F5F08, &qword_2755511B0);
  sub_275514DA8(v82, &qword_2809F5F08, &qword_2755511B0);
  *&v72[103] = v79;
  *&v72[87] = v78;
  *&v72[39] = v75;
  *&v72[23] = v74;
  *&v72[119] = v80;
  *&v72[135] = v81;
  *&v72[55] = v76;
  *&v72[71] = v77;
  *&v72[7] = v73;
  *(&v84[6] + 1) = *&v72[96];
  *(&v84[7] + 1) = *&v72[112];
  *(&v84[8] + 1) = *&v72[128];
  *(&v84[2] + 1) = *&v72[32];
  *(&v84[3] + 1) = *&v72[48];
  *(&v84[4] + 1) = *&v72[64];
  *(&v84[5] + 1) = *&v72[80];
  *(v84 + 1) = *v72;
  LOBYTE(a1) = v71[0];
  v83 = v26;
  LOBYTE(v84[0]) = v71[0];
  *(&v84[1] + 1) = *&v72[16];
  *&v84[9] = *(&v81 + 1);
  v27 = v65;
  *(&v84[9] + 1) = v65;
  v85 = v25;
  v28 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F10, &qword_2755511B8) + 36)];
  v29 = v84[8];
  *(v28 + 8) = v84[7];
  *(v28 + 9) = v29;
  *(v28 + 10) = v84[9];
  v30 = v84[4];
  *(v28 + 4) = v84[3];
  *(v28 + 5) = v30;
  v31 = v84[6];
  *(v28 + 6) = v84[5];
  *(v28 + 7) = v31;
  v32 = v84[0];
  *v28 = v83;
  *(v28 + 1) = v32;
  v33 = v84[2];
  *(v28 + 2) = v84[1];
  *(v28 + 3) = v33;
  *&v87[97] = *&v72[96];
  *&v87[113] = *&v72[112];
  *v88 = *&v72[128];
  *&v87[33] = *&v72[32];
  *&v87[49] = *&v72[48];
  *&v87[65] = *&v72[64];
  *&v87[81] = *&v72[80];
  v34 = *&v72[16];
  *&v87[1] = *v72;
  *(v28 + 22) = v85;
  v86 = v26;
  v35 = v64;
  v87[0] = a1;
  *&v87[17] = v34;
  *&v88[15] = *&v72[143];
  v89 = v27;
  v90 = v25;
  sub_275514D40(&v83, v71, &qword_2809F5F18, &qword_2755511C0);
  sub_275514DA8(&v86, &qword_2809F5F18, &qword_2755511C0);
  KeyPath = swift_getKeyPath();
  v37 = *(v18 + 44);
  v65 = v22;
  v38 = &v22[v37];
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C78, &qword_275550CE8) + 28);
  v40 = *MEMORY[0x277CDFA88];
  v41 = sub_27554C9F8();
  (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = KeyPath;
  v42 = 1;
  if (*(v63 + 72) == 1)
  {
    v43 = v58;
    sub_27554C958();
    v45 = v59;
    v44 = v60;
    v46 = *(v60 + 16);
    v47 = v61;
    v46(v59, v43, v61);
    v48 = v62;
    *v62 = 0;
    *(v48 + 8) = 1;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F28, &unk_275551208);
    v46((v48 + *(v49 + 48)), v45, v47);
    v50 = *(v44 + 8);
    v50(v43, v47);
    v50(v45, v47);
    sub_27553F724(v48, v35);
    v42 = 0;
  }

  (*(v68 + 56))(v35, v42, 1, v69);
  v52 = v65;
  v51 = v66;
  sub_275514D40(v65, v66, &qword_2809F5EF8, &qword_2755511A0);
  v53 = v67;
  sub_275514D40(v35, v67, &qword_2809F5EF0, &qword_275551198);
  v54 = v70;
  sub_275514D40(v51, v70, &qword_2809F5EF8, &qword_2755511A0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F20, &qword_275551200);
  sub_275514D40(v53, v54 + *(v55 + 48), &qword_2809F5EF0, &qword_275551198);
  sub_275514DA8(v35, &qword_2809F5EF0, &qword_275551198);
  sub_275514DA8(v52, &qword_2809F5EF8, &qword_2755511A0);
  sub_275514DA8(v53, &qword_2809F5EF0, &qword_275551198);
  return sub_275514DA8(v51, &qword_2809F5EF8, &qword_2755511A0);
}

uint64_t sub_27553E344@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F40, &qword_275551258);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F48, &qword_275551260);
  v59 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v7 = &v58 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F50, &qword_275551268);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v58 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F58, &qword_275551270);
  v62 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v60 = &v58 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F60, &qword_275551278);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v58 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F68, &qword_275551280);
  v71 = *(v72 - 8);
  v11 = MEMORY[0x28223BE20](v72);
  v70 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v58 - v13;
  v14 = *a1;
  v15 = *(a1 + 8);
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v86 = *a1;
  v87 = v15;
  v88 = v17;
  v89 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5ED0, &qword_275551170);
  MEMORY[0x277C7AE00](&v81);
  v18 = v81;

  v19 = HIBYTE(*(&v18 + 1)) & 0xFLL;
  if ((*(&v18 + 1) & 0x2000000000000000) == 0)
  {
    v19 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
    v20 = *(a1 + 80);
  }

  v75 = v20;
  v76 = v21;
  v86 = v14;
  v87 = v15;
  v88 = v17;
  v89 = v16;
  sub_27554D168();
  sub_275514CC4();
  sub_27554D258();
  v22 = sub_275515E2C(&qword_2809F5F70, &qword_2809F5F48, &qword_275551260, MEMORY[0x277CDF1A8]);
  v23 = v61;
  v24 = v64;
  MEMORY[0x277C7AC20](1, v64, v22);
  (*(v59 + 8))(v7, v24);
  sub_27554CCF8();
  v25 = sub_27554CD08();
  (*(*(v25 - 8) + 56))(v5, 0, 1, v25);
  v86 = v24;
  v87 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v60;
  v28 = v65;
  sub_27554CFA8();
  sub_275514DA8(v5, &qword_2809F5F40, &qword_275551258);
  (*(v63 + 8))(v23, v28);
  v86 = v28;
  v87 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v66;
  v31 = v67;
  sub_27554CF28();
  (*(v62 + 8))(v27, v31);
  v32 = *(a1 + 40);
  v33 = *(a1 + 48);
  LOBYTE(v86) = *(a1 + 32);
  v87 = v32;
  LOBYTE(v88) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D60, &qword_275550F40);
  sub_27554C8C8();
  v86 = v31;
  v87 = v29;
  swift_getOpaqueTypeConformance2();
  v34 = v74;
  v35 = v69;
  sub_27554CFD8();

  (*(v68 + 8))(v30, v35);
  v36 = *(a1 + 64);
  v86 = *(a1 + 56);
  v87 = v36;

  v37 = sub_27554CED8();
  v39 = v38;
  LOBYTE(v30) = v40;
  v69 = v41;
  KeyPath = swift_getKeyPath();
  LODWORD(v68) = sub_27554CCC8();
  v43 = v30 & 1;
  LOBYTE(v75) = v30 & 1;
  v79 = 0;
  v44 = v71;
  v45 = *(v71 + 16);
  v46 = v70;
  v47 = v72;
  v45(v70, v34, v72);
  v48 = v73;
  v45(v73, v46, v47);
  v49 = &v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F78, &qword_275551288) + 48)];
  *&v81 = v37;
  *(&v81 + 1) = v39;
  v50 = v39;
  LOBYTE(v82) = v43;
  *(&v82 + 1) = *v80;
  DWORD1(v82) = *&v80[3];
  v51 = v69;
  *(&v82 + 1) = v69;
  *&v83 = KeyPath;
  v52 = KeyPath;
  *(&v83 + 1) = 1;
  LOBYTE(v84) = 0;
  *(&v84 + 1) = v77;
  BYTE3(v84) = v78;
  LODWORD(KeyPath) = v68;
  HIDWORD(v84) = v68;
  v85 = 0;
  v53 = v81;
  v54 = v82;
  v55 = v84;
  *(v49 + 2) = v83;
  *(v49 + 3) = v55;
  *v49 = v53;
  *(v49 + 1) = v54;
  sub_275514D40(&v81, &v86, &qword_2809F5F80, &unk_275551290);
  v56 = *(v44 + 8);
  v56(v74, v47);
  v86 = v37;
  v87 = v50;
  LOBYTE(v88) = v43;
  *(&v88 + 1) = *v80;
  HIDWORD(v88) = *&v80[3];
  v89 = v51;
  v90 = v52;
  v91 = 1;
  v92 = 0;
  v93 = v77;
  v94 = v78;
  v95 = KeyPath;
  v96 = 0;
  sub_275514DA8(&v86, &qword_2809F5F80, &unk_275551290);
  return (v56)(v46, v47);
}

uint64_t sub_27553EBEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = type metadata accessor for iCloudMailTextField(0);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v62 = *a1;
  v63 = v11;
  v64 = v12;
  v65 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5ED0, &qword_275551170);
  MEMORY[0x277C7AE00](&v57);
  v15 = v57;

  v16 = HIBYTE(*(&v15 + 1)) & 0xFLL;
  if ((*(&v15 + 1) & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v62 = v10;
    v63 = v11;
    v64 = v12;
    v65 = v13;
    MEMORY[0x277C7AE00](&v57, v14);
    v17 = *(&v57 + 1);
    v18 = v57;
  }

  else
  {
    v18 = a1[10];
  }

  v62 = v18;
  v63 = v17;
  sub_275514CC4();
  v19 = sub_27554CED8();
  v46 = v19;
  v47 = v20;
  v22 = v21;
  v50 = v23;
  v52 = sub_27554D218();
  v51 = v24;
  v25 = v49;
  sub_27553F4D4(a1, v49);
  v26 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v27 = (v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v48 = v28;
  sub_27553F658(v25, v28 + v26);
  v29 = (v28 + v27);
  *v29 = a3;
  v29[1] = a4;
  LOBYTE(v28) = v22 & 1;
  v71 = v22 & 1;
  LODWORD(v49) = v22 & 1;
  v30 = a1[18];
  LOBYTE(v62) = *(a1 + 136);
  v63 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  LOBYTE(v27) = v57;
  v31 = a1[8];
  v62 = a1[7];
  v63 = v31;

  v32 = sub_27554CED8();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  KeyPath = swift_getKeyPath();
  v40 = sub_27554CCC8();
  LOBYTE(v26) = v36 & 1;
  v56 = v36 & 1;
  v55 = 0;
  *&v57 = v19;
  v41 = v47;
  *(&v57 + 1) = v47;
  LOBYTE(v58) = v28;
  *(&v58 + 1) = v50;
  *&v59 = sub_27553F8C0;
  v42 = v48;
  *(&v59 + 1) = v48;
  *&v60 = v52;
  *(&v60 + 1) = v51;
  v61 = 0;
  v53 = v27 ^ 1;
  v43 = v60;
  *(a2 + 32) = v59;
  *(a2 + 48) = v43;
  v44 = v58;
  *a2 = v57;
  *(a2 + 16) = v44;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v27;
  *(a2 + 81) = v27 ^ 1;
  *(a2 + 88) = v32;
  *(a2 + 96) = v34;
  *(a2 + 104) = v26;
  *(a2 + 112) = v38;
  *(a2 + 120) = KeyPath;
  *(a2 + 128) = 1;
  *(a2 + 136) = 0;
  *(a2 + 140) = v40;
  sub_275514D40(&v57, &v62, &qword_2809F5F30, &qword_275551248);
  sub_275514D28(v32, v34, v26);

  sub_275514D18(v32, v34, v26);

  v62 = v46;
  v63 = v41;
  LOBYTE(v64) = v49;
  *(&v64 + 1) = *v54;
  HIDWORD(v64) = *&v54[3];
  v65 = v50;
  v66 = sub_27553F8C0;
  v67 = v42;
  v68 = v52;
  v69 = v51;
  v70 = 0;
  return sub_275514DA8(&v62, &qword_2809F5F30, &qword_275551248);
}

uint64_t sub_27553F000@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v43 = a1;
  v45 = a3;
  v9 = sub_27554C9A8();
  v10 = *(v9 - 8);
  v46 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for iCloudMailTextField(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_27554D048();
  v17 = *a2;
  v18 = *(a2 + 2);
  v19 = *(a2 + 3);
  v40 = a2;
  v48 = v17;
  v49 = v18;
  v50 = v19;
  v51 = v44;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5ED0, &qword_275551170);
  MEMORY[0x277C7AE00](&v47, v20);
  v41 = *(&v47 + 1);
  v48 = v47;
  sub_27553F4D4(a2, v16);
  v42 = *(v10 + 16);
  v21 = v12;
  v22 = a1;
  v23 = v9;
  v37 = v9;
  v42(v12, v22, v9);
  v24 = *(v14 + 80);
  v25 = (v24 + 16) & ~v24;
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v10 + 80);
  v28 = (v27 + v26 + 16) & ~v27;
  v39 = v24 | v27;
  v29 = swift_allocObject();
  sub_27553F658(v16, v29 + v25);
  v30 = (v29 + v26);
  *v30 = a4;
  v30[1] = a5;
  v38 = *(v10 + 32);
  v38(v29 + v28, v21, v23);
  v31 = v45;
  sub_27554D008();

  sub_27553F4D4(v40, v16);
  v32 = v37;
  v42(v21, v43, v37);
  v33 = swift_allocObject();
  sub_27553F658(v16, v33 + v25);
  v34 = (v33 + v26);
  *v34 = a4;
  v34[1] = a5;
  v38(v33 + v28, v21, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F38, &qword_275551250);
  v36 = (v31 + *(result + 36));
  *v36 = sub_27553FC80;
  v36[1] = v33;
  v36[2] = 0;
  v36[3] = 0;
  return result;
}

uint64_t sub_27553F370(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27554C998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  return sub_27554D0F8();
}

uint64_t sub_27553F3EC(uint64_t a1, double a2)
{
  sub_27554C998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  return sub_27554D0F8();
}

uint64_t sub_27553F4D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iCloudMailTextField(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27553F538()
{
  v1 = (type metadata accessor for iCloudMailTextField(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[13];
  v6 = sub_27554CE78();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27553F658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iCloudMailTextField(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27553F6BC()
{
  v1 = *(type metadata accessor for iCloudMailTextField(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_27553F468(v2);
}

uint64_t sub_27553F724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EE8, &qword_275551188);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27553F794()
{
  v1 = (type metadata accessor for iCloudMailTextField(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[13];
  v7 = sub_27554CE78();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_27553F8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for iCloudMailTextField(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_27553F000(a1, (v2 + v6), a2, v8, v9);
}

uint64_t sub_27553F970@<X0>(uint64_t a1@<X8>)
{
  result = sub_27554CBA8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_27553F9D8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for iCloudMailTextField(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_27554C9A8();
  v8 = *(v2 + v7);

  return sub_27553F370(v8, a1, a2, v2 + v6);
}

uint64_t objectdestroy_10Tm()
{
  v1 = (type metadata accessor for iCloudMailTextField(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_27554C9A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = v1[13];
  v12 = sub_27554CE78();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_27553FC80()
{
  v1 = *(type metadata accessor for iCloudMailTextField(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_27554C9A8();
  v4 = *(v0 + v3);

  return sub_27553F3EC(v0 + v2, v4);
}

uint64_t sub_27553FD60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5EB8, &qword_275551158);
  sub_275515E2C(&qword_2809F5EE0, &qword_2809F5EB8, &qword_275551158, MEMORY[0x277CE1138]);
  return swift_getOpaqueTypeConformance2();
}

id iCloudMailAccountProviderSwift.__allocating_init(presenter:appleAccount:accountStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___iCloudMailAccountProviderSwift____lazy_storage___legacyMailCreator] = 0;
  *&v7[OBJC_IVAR___iCloudMailAccountProviderSwift_presenter] = a1;
  *&v7[OBJC_IVAR___iCloudMailAccountProviderSwift_appleAccount] = a2;
  *&v7[OBJC_IVAR___iCloudMailAccountProviderSwift_accountStore] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id iCloudMailAccountProviderSwift.init(presenter:appleAccount:accountStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___iCloudMailAccountProviderSwift____lazy_storage___legacyMailCreator] = 0;
  *&v3[OBJC_IVAR___iCloudMailAccountProviderSwift_presenter] = a1;
  *&v3[OBJC_IVAR___iCloudMailAccountProviderSwift_appleAccount] = a2;
  *&v3[OBJC_IVAR___iCloudMailAccountProviderSwift_accountStore] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for iCloudMailAccountProviderSwift();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_27553FF9C()
{
  v1 = OBJC_IVAR___iCloudMailAccountProviderSwift____lazy_storage___legacyMailCreator;
  v2 = *(v0 + OBJC_IVAR___iCloudMailAccountProviderSwift____lazy_storage___legacyMailCreator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___iCloudMailAccountProviderSwift____lazy_storage___legacyMailCreator);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___iCloudMailAccountProviderSwift_presenter);
    v5 = *(v0 + OBJC_IVAR___iCloudMailAccountProviderSwift_appleAccount);
    v6 = *(v0 + OBJC_IVAR___iCloudMailAccountProviderSwift_accountStore);
    v7 = type metadata accessor for LegacyMailAccountCreator();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler];
    *v9 = 0;
    *(v9 + 1) = 0;
    *&v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___navigationController] = 0;
    *&v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_objectModels] = MEMORY[0x277D84F90];
    *&v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___ruiLoader] = 0;
    *&v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_presenter] = v4;
    *&v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount] = v5;
    *&v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_accountStore] = v6;
    v17.receiver = v8;
    v17.super_class = v7;
    v10 = v4;
    v11 = v5;
    v12 = v6;
    v13 = objc_msgSendSuper2(&v17, sel_init);
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void sub_2755400C0(int a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v85 = a2;
  v84 = a1;
  v78 = sub_27554C718();
  v76 = *(v78 - 8);
  v3 = MEMORY[0x28223BE20](v78);
  v72 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v75 = &v71 - v5;
  v79 = type metadata accessor for AccountCreationStartupPageView(0);
  v6 = MEMORY[0x28223BE20](v79);
  v80 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v77 = (&v71 - v9);
  MEMORY[0x28223BE20](v8);
  v81 = &v71 - v10;
  v83 = sub_27554C6D8();
  v11 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_27554C778();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v74 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v73 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v71 - v20;
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v14, qword_2809F8DA8);
  v82 = *(v15 + 16);
  v82(v21, v22, v14);
  v23 = sub_27554C758();
  v24 = sub_27554D428();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = v84 & 1;
    _os_log_impl(&dword_27550C000, v23, v24, "[iCloudMailAccountProviderSwift] present account creation with alert: %{BOOL}d", v25, 8u);
    MEMORY[0x277C7BAC0](v25, -1, -1);
  }

  v26 = *(v15 + 8);
  v26(v21, v14);
  v27 = v83;
  (*(v11 + 104))(v13, *MEMORY[0x277D24580], v83);
  v28 = sub_27554C6C8();
  (*(v11 + 8))(v13, v27);
  if (v28)
  {
    v29 = v73;
    v82(v73, v22, v14);
    v30 = sub_27554C758();
    v31 = sub_27554D428();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v87;
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_27550C000, v30, v31, "[iCloudMailAccountProviderSwift] present account creation: new flow", v34, 2u);
      MEMORY[0x277C7BAC0](v34, -1, -1);
    }

    v26(v29, v14);
    v35 = *(v33 + OBJC_IVAR___iCloudMailAccountProviderSwift_accountStore);
    v36 = *(v33 + OBJC_IVAR___iCloudMailAccountProviderSwift_appleAccount);
    v37 = type metadata accessor for ACRepositoryDefault();
    v38 = swift_allocObject();
    *(v38 + 16) = v35;
    *(v38 + 24) = v36;
    v92 = v37;
    v93 = &off_28842B518;
    *&v91 = v38;
    v39 = swift_allocObject();
    v40 = v86;
    *(v39 + 16) = v85;
    *(v39 + 24) = v40;
    KeyPath = swift_getKeyPath();
    v42 = v77;
    *v77 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A88, &qword_2755512D0);
    swift_storeEnumTagMultiPayload();
    v43 = v79;
    v44 = *(v79 + 20);
    *(v42 + v44) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A90, &qword_275550880);
    swift_storeEnumTagMultiPayload();
    v45 = v42 + v43[9];
    v46 = v35;
    v47 = v36;

    *v45 = sub_27554C8D8() & 1;
    *(v45 + 8) = v48;
    *(v45 + 16) = v49 & 1;
    v50 = v42 + v43[10];
    v88 = 0;
    sub_27554D0D8();
    v51 = v90;
    *v50 = v89;
    *(v50 + 8) = v51;
    v52 = (v42 + v43[11]);
    *v52 = 0xD000000000000027;
    v52[1] = 0x80000002755523B0;
    v53 = v75;
    v54 = v76;
    v55 = *(v76 + 104);
    v56 = v78;
    v55(v75, *MEMORY[0x277D245A0], v78);
    LOBYTE(v35) = sub_27554C708();
    v57 = *(v54 + 8);
    v57(v53, v56);
    v58 = 0;
    if (v35)
    {
      v59 = v72;
      v55(v72, *MEMORY[0x277D24598], v56);
      v58 = sub_27554C708();
      v57(v59, v56);
    }

    *(v42 + v43[12]) = v58 & 1;
    v60 = (v42 + v43[7]);
    *v60 = sub_275541648;
    v60[1] = v39;
    *(v42 + v43[6]) = 0;
    v61 = swift_allocObject();
    sub_27551EA5C(&v91, v61 + 16);
    v62 = v42 + v43[8];
    *v62 = sub_2755416BC;
    *(v62 + 8) = v61;
    *(v62 + 16) = 0;
    v63 = v81;
    sub_275539C1C(v42, v81);
    sub_275539BAC(v63, v80);
    v64 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5FA8, &unk_275551310));
    v65 = sub_27554CC58();
    [*(v87 + OBJC_IVAR___iCloudMailAccountProviderSwift_presenter) presentViewController:v65 animated:1 completion:0];

    sub_2755416C4(v63);
  }

  else
  {
    v66 = v74;
    v82(v74, v22, v14);
    v67 = sub_27554C758();
    v68 = sub_27554D428();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_27550C000, v67, v68, "[iCloudMailAccountProviderSwift] present account creation: legacy flow", v69, 2u);
      MEMORY[0x277C7BAC0](v69, -1, -1);
    }

    v26(v66, v14);
    v70 = sub_27553FF9C();
    sub_275542348(v84 & 1, v85, v86);
  }
}

uint64_t sub_2755409DC(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v91 = a1;
  v84 = sub_27554C718();
  v82 = *(v84 - 8);
  v2 = MEMORY[0x28223BE20](v84);
  v80 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v81 = &v79 - v4;
  v85 = type metadata accessor for AccountCreationStartupPageView(0);
  v5 = MEMORY[0x28223BE20](v85);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v83 = (&v79 - v8);
  MEMORY[0x28223BE20](v7);
  v87 = &v79 - v9;
  v90 = sub_27554C6D8();
  v10 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_27554C778();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v79 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v79 - v21;
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v13, qword_2809F8DA8);
  v24 = *(v14 + 16);
  v88 = v23;
  v89 = v24;
  (v24)(v22);
  v25 = sub_27554C758();
  v26 = sub_27554D428();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v79 = v20;
    v28 = v13;
    v29 = v17;
    v30 = v14;
    v31 = v27;
    *v27 = 0;
    _os_log_impl(&dword_27550C000, v25, v26, "[iCloudMailAccountProviderSwift] present account creation from Unified Settings", v27, 2u);
    v32 = v31;
    v14 = v30;
    v17 = v29;
    v13 = v28;
    v20 = v79;
    MEMORY[0x277C7BAC0](v32, -1, -1);
  }

  v33 = *(v14 + 8);
  v33(v22, v13);
  v34 = v90;
  (*(v10 + 104))(v12, *MEMORY[0x277D24580], v90);
  v35 = sub_27554C6C8();
  (*(v10 + 8))(v12, v34);
  if (v35)
  {
    v89(v20, v88, v13);
    v36 = sub_27554C758();
    v37 = sub_27554D428();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_27550C000, v36, v37, "[iCloudMailAccountProviderSwift] present account creation: new flow", v38, 2u);
      MEMORY[0x277C7BAC0](v38, -1, -1);
    }

    v33(v20, v13);
    v39 = v92;
    v40 = *(v92 + OBJC_IVAR___iCloudMailAccountProviderSwift_accountStore);
    v41 = *(v92 + OBJC_IVAR___iCloudMailAccountProviderSwift_appleAccount);
    v42 = type metadata accessor for ACRepositoryDefault();
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    *(v43 + 24) = v41;
    v98 = v42;
    v99 = &off_28842B518;
    *&v97 = v43;
    KeyPath = swift_getKeyPath();
    v45 = v83;
    *v83 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A88, &qword_2755512D0);
    swift_storeEnumTagMultiPayload();
    v46 = v85;
    v47 = *(v85 + 20);
    *(v45 + v47) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A90, &qword_275550880);
    swift_storeEnumTagMultiPayload();
    v48 = v45 + v46[9];
    v49 = v40;
    v50 = v41;
    *v48 = sub_27554C8D8() & 1;
    *(v48 + 8) = v51;
    *(v48 + 16) = v52 & 1;
    v53 = v45 + v46[10];
    v94 = 0;
    sub_27554D0D8();
    v54 = v96;
    *v53 = v95;
    *(v53 + 8) = v54;
    v55 = (v45 + v46[11]);
    *v55 = 0xD000000000000027;
    v55[1] = 0x80000002755523B0;
    v56 = v81;
    v57 = v82;
    v58 = *(v82 + 104);
    v59 = v84;
    v58(v81, *MEMORY[0x277D245A0], v84);
    LOBYTE(v41) = sub_27554C708();
    v60 = *(v57 + 8);
    v60(v56, v59);
    v61 = 0;
    if (v41)
    {
      v62 = v80;
      v58(v80, *MEMORY[0x277D24598], v59);
      v61 = sub_27554C708();
      v60(v62, v59);
    }

    *(v45 + v46[12]) = v61 & 1;
    v63 = (v45 + v46[7]);
    v64 = v93;
    *v63 = v91;
    v63[1] = v64;
    *(v45 + v46[6]) = 1;
    v65 = swift_allocObject();
    sub_27551EA5C(&v97, v65 + 16);
    v66 = v45 + v46[8];
    *v66 = sub_275541888;
    *(v66 + 8) = v65;
    *(v66 + 16) = 0;
    v67 = v87;
    sub_275539C1C(v45, v87);
    sub_275539BAC(v67, v86);
    v68 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5FA8, &unk_275551310));

    v69 = sub_27554CC58();
    [*(v39 + OBJC_IVAR___iCloudMailAccountProviderSwift_presenter) presentViewController:v69 animated:1 completion:0];

    return sub_2755416C4(v67);
  }

  else
  {
    v89(v17, v88, v13);
    v71 = sub_27554C758();
    v72 = sub_27554D428();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_27550C000, v71, v72, "[iCloudMailAccountProviderSwift] present account creation: legacy flow", v73, 2u);
      MEMORY[0x277C7BAC0](v73, -1, -1);
    }

    v33(v17, v13);
    v74 = sub_27553FF9C();
    v75 = swift_allocObject();
    *(v75 + 16) = v91;
    *(v75 + 24) = v93;
    v76 = &v74[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler];
    v77 = *&v74[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler];
    v78 = *&v74[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler + 8];
    *v76 = sub_275541720;
    v76[1] = v75;

    sub_27554174C(v77, v78);
    sub_275542968();
  }
}

id iCloudMailAccountProviderSwift.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iCloudMailAccountProviderSwift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudMailAccountProviderSwift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_275541448(uint64_t a1)
{
  v2 = sub_27554C9C8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_27554CB58();
}

uint64_t sub_275541510(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_27554155C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_27554156C(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_2755415E0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_275541610()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2755416C4(uint64_t a1)
{
  v2 = type metadata accessor for AccountCreationStartupPageView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27554174C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_27554175C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275541828()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275541898(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = *a3;
  v8[6] = a1;
  v8[7] = a2;
  v4 = *(a3 + 2);
  v9 = *(a3 + 1);
  v10[0] = v4;
  *(v10 + 9) = *(a3 + 41);
  v5 = swift_allocObject();
  v6 = *(a3 + 1);
  v5[1] = *a3;
  v5[2] = v6;
  v5[3] = *(a3 + 2);
  *(v5 + 57) = *(a3 + 41);

  sub_275541A34(&v11, v8);

  sub_275541A90(&v9, v8);
  sub_275514CC4();
  return sub_27554D128();
}

uint64_t sub_275541980()
{

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_275541A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5800, &qword_275550180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275541B04(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_275541B48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60F8, &qword_2755513D8);
    v2 = sub_27554D608();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_27551E914(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_27551E990(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_27551E990(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_27551E990(v31, v32);
    result = sub_27554D548();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_27551E990(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_275541E10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60F8, &qword_2755513D8);
    v2 = sub_27554D608();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_27551E990(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_27551E990(v29, v30);
    result = sub_27554D548();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_27551E990(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_2755420C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_275542140(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_2755421B8()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___navigationController;
  v2 = *(v0 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___navigationController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___navigationController);
  }

  else
  {
    v4 = sub_275542218();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_275542218()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (unk_28842A288 == v2 || qword_28842A280 == v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [v0 setModalPresentationStyle_];
  return v0;
}

id sub_2755422C0()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___ruiLoader;
  v2 = *(v0 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___ruiLoader);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___ruiLoader);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D461D0]) init];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_275542348(char a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler);
  v6 = *(v3 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler);
  v7 = *(v3 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler + 8);
  *v5 = a2;
  v5[1] = a3;

  sub_27554174C(v6, v7);
  if (a1)
  {
    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = [v9 bundleForClass_];
    v24 = v3;
    MEMORY[0x277C7B050](0xD000000000000012, 0x8000000275552620);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    sub_27554C588();

    v11 = [v9 0x27A64F43BLL];
    MEMORY[0x277C7B050](0xD000000000000014, 0x8000000275552640);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    sub_27554C588();

    v12 = sub_27554D328();

    v13 = sub_27554D328();

    v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:{1, 0xE000000000000000}];

    v15 = [v9 bundleForClass_];
    MEMORY[0x277C7B050](0xD000000000000013, 0x8000000275552660);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    sub_27554C588();

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v17 = sub_27554D328();

    v29 = sub_275547B98;
    v30 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_275542900;
    v28 = &block_descriptor_94;
    v18 = _Block_copy(&aBlock);

    v19 = objc_opt_self();
    v20 = [v19 actionWithTitle:v17 style:0 handler:{v18, 0xE000000000000000}];
    _Block_release(v18);

    v21 = [v9 bundleForClass_];
    aBlock = 2777980912;
    v26 = 0xA400000000000000;
    MEMORY[0x277C7B050](0x4C45434E4143, 0xE600000000000000);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    sub_27554C588();

    v22 = sub_27554D328();

    v23 = [v19 actionWithTitle:v22 style:1 handler:{0, 0xE000000000000000}];

    [v14 addAction_];
    [v14 addAction_];
    [*(v24 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_presenter) presentViewController:v14 animated:1 completion:0];
  }

  else
  {

    sub_275542968();
  }
}

void sub_2755428AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_275542968();
  }
}

void sub_275542900(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_275542968()
{
  v1 = sub_27554D278();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27554D2A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v9 = sub_27554D4A8();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_275547AF4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_66;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_27554D298();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_2755210C8();
  sub_27554D538();
  MEMORY[0x277C7B170](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_275542BFC(char *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = *&a1[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount];
  v4 = a1;
  v5 = [v3 identifier];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v3 aa_authToken];
  if (v6)
  {

LABEL_4:
    v7 = [objc_opt_self() sharedServer];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = sub_275547B04;
    v18 = v8;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_275520074;
    v16 = &block_descriptor_73;
    v9 = _Block_copy(&v13);

    [v7 configurationWithCompletion_];
    _Block_release(v9);

LABEL_7:

    return;
  }

  v10 = [v3 accountStore];
  if (v10)
  {
    v7 = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_275547AFC;
    *(v11 + 24) = v2;
    v17 = sub_275547B44;
    v18 = v11;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2755420C8;
    v16 = &block_descriptor_79;
    v12 = _Block_copy(&v13);

    [v7 renewCredentialsForAccount:v3 completion:v12];

    _Block_release(v12);
    goto LABEL_7;
  }

  __break(1u);
}

void sub_275542E70(uint64_t a1)
{
  v1 = [objc_opt_self() sharedServer];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_275547C24;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_275520074;
  v4[3] = &block_descriptor_90;
  v3 = _Block_copy(v4);

  [v1 configurationWithCompletion_];
  _Block_release(v3);
}

void sub_275542F74(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = sub_27554C778();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a1 && (v16 = [a1 addEmailURL]) != 0)
    {
      v17 = v16;
      v18 = [objc_allocWithZone(MEMORY[0x277CEC760]) initWithURLString:v16 account:*&v15[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount]];

      v19 = sub_2755422C0();
      if (v18)
      {
        v20 = [v18 urlRequest];
        if (v20)
        {
          v21 = v20;
          sub_27554C4A8();

          v22 = 0;
        }

        else
        {
          v22 = 1;
        }

        v29 = sub_27554C4D8();
        v30 = *(v29 - 8);
        (*(v30 + 56))(v7, v22, 1, v29);
        sub_2755151DC(v7, v9, &qword_2809F60B8, &qword_2755513B8);
        v28 = 0;
        if ((*(v30 + 48))(v9, 1, v29) != 1)
        {
          v28 = sub_27554C498();
          (*(v30 + 8))(v9, v29);
        }
      }

      else
      {
        v27 = sub_27554C4D8();
        (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
        v28 = 0;
      }

      [v19 loadXMLUIWithRequest_];
    }

    else
    {
      if (qword_2809F4D80 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v10, qword_2809F8DA8);
      (*(v11 + 16))(v13, v23, v10);
      v24 = sub_27554C758();
      v25 = sub_27554D438();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_27550C000, v24, v25, "Add email url is missing from bag", v26, 2u);
        MEMORY[0x277C7BAC0](v26, -1, -1);
      }

      (*(v11 + 8))(v13, v10);
    }
  }
}

uint64_t sub_275543398(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v7 = sub_27554D278();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_27554D2A8();
  v11 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v14 = sub_27554D4A8();
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = a1;
  v15[3] = v16;
  v15[4] = a4;
  v15[5] = a2;
  aBlock[4] = sub_275547B8C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_85;
  v17 = _Block_copy(aBlock);

  v18 = a2;

  sub_27554D298();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_2755210C8();
  sub_27554D538();
  MEMORY[0x277C7B170](0, v13, v10, v17);
  _Block_release(v17);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v21);
}

uint64_t sub_27554364C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v7 = sub_27554C778();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a2(v9);
  }

  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_2809F8DA8);
  (*(v8 + 16))(v11, v12, v7);
  v13 = a4;
  v14 = sub_27554C758();
  v15 = sub_27554D438();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 134218242;
    *(v16 + 4) = a1;
    *(v16 + 12) = 2112;
    if (a4)
    {
      v18 = a4;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v16 + 14) = v19;
    *v17 = v20;
    _os_log_impl(&dword_27550C000, v14, v15, "Renew credentials for legacy iCloud mail creation failed. Result: %ld error: %@", v16, 0x16u);
    sub_275514DA8(v17, &qword_2809F5868, &qword_275550398);
    MEMORY[0x277C7BAC0](v17, -1, -1);
    MEMORY[0x277C7BAC0](v16, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

id sub_2755438C4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LegacyMailAccountCreator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2755439BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28 = a1;
  v29 = a5;
  v26 = a4;
  v6 = sub_27554D278();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27554D2A8();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = &v25 - v15;
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v27 = sub_27554D4A8();
  sub_275514D40(v26, v16, &qword_2809F60B8, &qword_2755513B8);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v28;
  *(v19 + 24) = a3;
  sub_2755151DC(v16, v19 + v17, &qword_2809F60B8, &qword_2755513B8);
  v20 = v29;
  *(v19 + v18) = v29;
  aBlock[4] = sub_275547A20;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_59;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  sub_27554D298();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_2755210C8();
  sub_27554D538();
  v23 = v27;
  MEMORY[0x277C7B170](0, v11, v8, v21);
  _Block_release(v21);

  (*(v32 + 8))(v8, v6);
  return (*(v30 + 8))(v11, v31);
}

char *sub_275543D34(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v103 = a4;
  v100 = a2;
  v101 = a3;
  v106 = a1;
  v4 = sub_27554C778();
  v104 = *(v4 - 8);
  v105 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v102 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v95 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v95 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v95 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v95 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v95 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v95 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B0, &qword_2755513B0);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v95 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v95 - v34;
  if (v106)
  {
    result = v103;
    if (v103)
    {
      v37 = [v103 URL];
      v38 = v105;
      v39 = v102;
      if (v37)
      {
        v40 = v37;
        sub_27554C5C8();

        v41 = sub_27554C5F8();
        (*(*(v41 - 8) + 56))(v30, 0, 1, v41);
      }

      else
      {
        v41 = sub_27554C5F8();
        (*(*(v41 - 8) + 56))(v30, 1, 1, v41);
      }

      sub_2755151DC(v30, v33, &qword_2809F60B0, &qword_2755513B0);
      sub_27554C5F8();
      v56 = *(v41 - 8);
      if ((*(v56 + 48))(v33, 1, v41) == 1)
      {
        sub_275514DA8(v33, &qword_2809F60B0, &qword_2755513B0);
        v57 = 0xE300000000000000;
        v58 = 7104878;
      }

      else
      {
        v58 = sub_27554C5B8();
        v57 = v59;
        (*(v56 + 8))(v33, v41);
      }

      v60 = v104;
      if (qword_2809F4D80 != -1)
      {
        swift_once();
      }

      v61 = __swift_project_value_buffer(v38, qword_2809F8DA8);
      (*(v60 + 16))(v39, v61, v38);

      v62 = sub_27554C758();
      v63 = sub_27554D438();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v107[0] = v65;
        *v64 = 136315138;
        v66 = sub_275545D14(v58, v57, v107);

        *(v64 + 4) = v66;
        _os_log_impl(&dword_27550C000, v62, v63, "Token renew failed for iCloud mail create url %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x277C7BAC0](v65, -1, -1);
        MEMORY[0x277C7BAC0](v64, -1, -1);
      }

      else
      {
      }

      return (*(v60 + 8))(v39, v38);
    }

    goto LABEL_60;
  }

  v96 = v21;
  v98 = v12;
  v99 = v8;
  v102 = v18;
  v103 = v15;
  v106 = v24;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v42 = result;
  sub_275514D40(v101, v26, &qword_2809F60B8, &qword_2755513B8);
  v43 = sub_27554C4D8();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  result = v45(v26, 1, v43);
  if (result == 1)
  {
    goto LABEL_61;
  }

  sub_27554C4B8();
  v46 = *(v44 + 8);
  v100 = v44 + 8;
  v97 = v46;
  v46(v26, v43);
  v47 = sub_27554C5F8();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v35, 1, v47) != 1)
  {
    sub_27554C5B8();
    (*(v48 + 8))(v35, v47);
    v67 = v42;
    v68 = *&v42[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount];
    v69 = objc_allocWithZone(MEMORY[0x277CEC760]);
    v70 = v68;
    v71 = sub_27554D328();
    v72 = [v69 initWithURLString:v71 account:v70];

    if (v72)
    {
      v73 = [v72 urlRequest];
      v74 = v106;
      if (v73)
      {
        v75 = v96;
        v76 = v73;
        sub_27554C4A8();

        v77 = 0;
        v78 = v102;
      }

      else
      {
        v77 = 1;
        v78 = v102;
        v75 = v96;
      }

      (*(v44 + 56))(v75, v77, 1, v43);
      sub_2755151DC(v75, v74, &qword_2809F60B8, &qword_2755513B8);
    }

    else
    {
      v74 = v106;
      (*(v44 + 56))(v106, 1, 1, v43);
      v78 = v102;
    }

    v79 = v45(v74, 1, v43);
    v80 = v103;
    if (!v79)
    {
      v106 = v72;
      sub_275514D40(v101, v78, &qword_2809F60B8, &qword_2755513B8);
      result = v45(v78, 1, v43);
      if (result == 1)
      {
LABEL_63:
        __break(1u);
        return result;
      }

      sub_27554C478();
      v97(v78, v43);
      sub_27554C488();
      v72 = v106;
    }

    sub_275514D40(v101, v80, &qword_2809F60B8, &qword_2755513B8);
    result = v45(v80, 1, v43);
    if (result == 1)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    sub_27554C478();
    v82 = v81;
    v97(v80, v43);
    v83 = v98;
    if (v82)
    {
      v84 = sub_27554D368();
      v86 = v85;

      if (v84 == 1414745936 && v86 == 0xE400000000000000)
      {
      }

      else
      {
        v87 = sub_27554D678();

        if ((v87 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      if (!v45(v74, 1, v43))
      {
        v88 = OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_objectModels;
        swift_beginAccess();
        v89 = *&v67[v88];
        if (v89 >> 62)
        {
          result = sub_27554D5D8();
          if (result)
          {
LABEL_42:
            v90 = result - 1;
            if (__OFSUB__(result, 1))
            {
              __break(1u);
            }

            else if ((v89 & 0xC000000000000001) == 0)
            {
              if ((v90 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v90 < *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v91 = *(v89 + 8 * v90 + 32);
                goto LABEL_47;
              }

              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

            v91 = MEMORY[0x277C7B250](v90, v89);

LABEL_47:
            v92 = [v91 postbackData];

            if (v92)
            {
              sub_27554C618();
            }
          }
        }

        else
        {
          result = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
            goto LABEL_42;
          }
        }

        sub_27554C4C8();
      }
    }

LABEL_50:
    v93 = sub_2755422C0();
    sub_275514D40(v74, v83, &qword_2809F60B8, &qword_2755513B8);
    if (v45(v83, 1, v43) == 1)
    {
      v94 = 0;
    }

    else
    {
      v94 = sub_27554C498();
      v97(v83, v43);
    }

    [v93 loadXMLUIWithRequest_];

    return sub_275514DA8(v74, &qword_2809F60B8, &qword_2755513B8);
  }

  sub_275514DA8(v35, &qword_2809F60B0, &qword_2755513B0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v49 = v105;
  v50 = __swift_project_value_buffer(v105, qword_2809F8DA8);
  v51 = v104;
  v52 = v99;
  (*(v104 + 16))(v99, v50, v49);
  v53 = sub_27554C758();
  v54 = sub_27554D438();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_27550C000, v53, v54, "Renewing account token for AddEmail is nil", v55, 2u);
    MEMORY[0x277C7BAC0](v55, -1, -1);
  }

  return (*(v51 + 8))(v52, v49);
}

void sub_275544B48(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_accountStore);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a2;
  v7[4] = a3;
  v11[4] = sub_275547648;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_275542140;
  v11[3] = &block_descriptor_25;
  v8 = _Block_copy(v11);
  v9 = a3;
  v10 = a2;

  [v5 aa:v10 updatePropertiesForAppleAccount:v8 completion:?];
  _Block_release(v8);
}

void sub_275544C70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_accountStore);

    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a5;
    aBlock[4] = sub_27554769C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_275542140;
    aBlock[3] = &block_descriptor_31;
    v12 = _Block_copy(aBlock);
    v13 = a5;

    v14 = a4;

    [v10 saveVerifiedAccount:v14 withCompletionHandler:v12];
    _Block_release(v12);
  }
}

void sub_275544DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5720, &qword_275550130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v9;
  *(inited + 48) = 1;
  *(inited + 56) = sub_27554D338();
  *(inited + 64) = v10;
  *(inited + 72) = 0;
  v11 = sub_2755464F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60F0, &qword_2755513D0);
  swift_arrayDestroy();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_accountStore);

    sub_275541E10(v11);

    v15 = sub_27554D2E8();

    v16 = swift_allocObject();
    *(v16 + 16) = a5;
    *(v16 + 24) = a3;
    aBlock[4] = sub_2755476AC;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2755420C8;
    aBlock[3] = &block_descriptor_37;
    v17 = _Block_copy(aBlock);
    v18 = a5;

    [v14 renewCredentialsForAccount:a4 options:v15 completion:v17];
    _Block_release(v17);
  }

  else
  {
  }
}

uint64_t sub_275544FE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_27554D278();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_27554D2A8();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v13 = sub_27554D4A8();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  aBlock[4] = sub_2755476F4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_43;
  v15 = _Block_copy(aBlock);
  v16 = a3;

  sub_27554D298();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_2755210C8();
  sub_27554D538();
  MEMORY[0x277C7B170](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v19);
}

void sub_275545284(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 stopActivityIndicator];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = sub_2755421B8();

      aBlock[4] = sub_275547BE8;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_275547BDC;
      aBlock[3] = &block_descriptor_46;
      v6 = _Block_copy(aBlock);

      [v5 dismissViewControllerAnimated:1 completion:v6];
      _Block_release(v6);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_275545434(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a1;
  v50 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B0, &qword_2755513B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v45 - v18;
  sub_275514D40(a2, &v45 - v18, &qword_2809F60B0, &qword_2755513B0);
  v20 = sub_27554C5F8();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_27554C5B8();
  v23 = v22;
  (*(v21 + 8))(v19, v20);
  v24 = *(v5 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount);
  v25 = objc_allocWithZone(MEMORY[0x277CEC760]);
  v26 = v24;
  v47 = v23;
  v27 = sub_27554D328();
  v28 = [v25 initWithURLString:v27 account:v26];

  v48 = v5;
  if (v28)
  {
    v29 = [v28 urlRequest];
    if (v29)
    {
      v30 = v29;
      sub_27554C4A8();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v33 = sub_27554C4D8();
    (*(*(v33 - 8) + 56))(v14, v31, 1, v33);
    sub_2755151DC(v14, v16, &qword_2809F60B8, &qword_2755513B8);
  }

  else
  {
    v32 = sub_27554C4D8();
    (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
  }

  v34 = sub_27554C4D8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (!v36(v16, 1, v34))
  {

    sub_27554C488();
  }

  if (!a4)
  {
    goto LABEL_26;
  }

  v37 = sub_27554D368();
  v46 = v28;
  if (v37 == 1414745936 && v38 == 0xE400000000000000)
  {

    v39 = v49;
  }

  else
  {
    v40 = sub_27554D678();

    v39 = v49;
    if ((v40 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (v36(v16, 1, v34))
  {
LABEL_20:
    v43 = sub_2755422C0();
    sub_275514D40(v16, v11, &qword_2809F60B8, &qword_2755513B8);
    if (v36(v11, 1, v34) == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = sub_27554C498();
      (*(v35 + 8))(v11, v34);
    }

    [v43 loadXMLUIWithRequest_];

    if (v39)
    {

      [v39 startActivityIndicator];

      sub_275514DA8(v16, &qword_2809F60B8, &qword_2755513B8);
      return;
    }

    goto LABEL_27;
  }

  if (v39)
  {
    v41 = [v39 postbackData];
    if (v41)
    {
      v42 = v41;
      sub_27554C618();
    }

    sub_27554C4C8();
    goto LABEL_20;
  }

LABEL_28:
  __break(1u);
}
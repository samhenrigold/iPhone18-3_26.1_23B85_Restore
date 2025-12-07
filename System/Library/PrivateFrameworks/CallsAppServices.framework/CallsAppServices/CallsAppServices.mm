uint64_t type metadata accessor for FavoritesDataSource(uint64_t a1)
{
  result = qword_1EDEBFBD8;
  if (!qword_1EDEBFBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D331C76C(uint64_t a1)
{
  sub_1D331C830(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D331C830(uint64_t a1)
{
  if (!qword_1EDEBFD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC761030, &qword_1D33E2498);
    v1 = sub_1D33DDF84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEBFD28);
    }
  }
}

uint64_t sub_1D331C8A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites;
  v10[1] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761030, &qword_1D33E2498);
  sub_1D33DDF34();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_cancellables) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_signState) = 0;
  *(v1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask) = 0;
  *(v1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_fetchTask) = 0;
  *(v1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_initialFetch) = 1;
  *(v1 + 16) = a1;
  v8 = a1;
  sub_1D331CA38();
  return v1;
}

uint64_t FavoritesDataSource.init(controller:)(void *a1)
{
  v2 = sub_1D331C8A4(a1);

  return v2;
}

uint64_t sub_1D331CA38()
{
  v0 = sub_1D33DE3F4();
  v105 = *(v0 - 8);
  v106 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v104 = &v99 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v99 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v112 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v99 - v6;
  v114 = sub_1D33DE3B4();
  v8 = *(v114 - 8);
  v9 = MEMORY[0x1EEE9AC00](v114);
  v108 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v99 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v99 - v14;
  if (qword_1EDEBF088 != -1)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v16 = sub_1D33DE3E4();
    v17 = __swift_project_value_buffer(v16, qword_1EDEC1458);
    sub_1D33DE3A4();
    v107 = v17;
    v18 = sub_1D33DE3D4();
    v19 = sub_1D33DEC04();
    if (sub_1D33DECC4())
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1D33DE394();
      _os_signpost_emit_with_name_impl(&dword_1D331A000, v18, v19, v21, "FavoritesDataSource loading", "", v20, 2u);
      MEMORY[0x1D38B81C0](v20, -1, -1);
    }

    v22 = v114;
    v8[2](v13, v15, v114);
    sub_1D33DE424();
    swift_allocObject();
    v23 = sub_1D33DE414();
    v24 = (v8 + 1);
    v8 = v8[1];
    (v8)(v15, v22);
    v25 = v117;
    v109 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_signState;
    *(v117 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_signState) = v23;

    [*(v25 + 16) fetchIfNeeded];
    v26 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_initialFetch;
    v13 = *(v25 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_initialFetch);
    v27 = [*(v25 + 16) favoritesEntries];
    sub_1D331DA18(0, &qword_1EDEBEEF0, 0x1E695CE98);
    v28 = sub_1D33DE8B4();

    v113 = v5;
    v111 = v7;
    if (v13 != 1)
    {
      if (v28 >> 62)
      {
        goto LABEL_69;
      }

      v116 = (v28 & 0xFFFFFFFFFFFFFF8);
      v5 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v102 = v8;
      v103 = v24;
      if (v5)
      {
        goto LABEL_18;
      }

LABEL_70:
      v110 = MEMORY[0x1E69E7CC0];
LABEL_71:

      v82 = sub_1D3329904(v110);

      v83 = v111;
      v84 = v112;
      v85 = v117;
      v86 = v113;
      (*(v112 + 16))(v111, v117 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v113);
      v118 = v82;
      sub_1D33DDF64();
      result = (*(v84 + 8))(v83, v86);
      v87 = v109;
      if (*(v85 + v109))
      {

        v88 = sub_1D33DE3D4();
        v89 = v108;
        sub_1D33DE404();
        v90 = sub_1D33DEBF4();
        v91 = sub_1D33DECC4();
        v92 = v102;
        if (v91)
        {

          v93 = v104;
          sub_1D33DE434();

          v95 = v105;
          v94 = v106;
          if (v105[11](v93, v106) == *MEMORY[0x1E69E93E8])
          {
            v96 = "[Error] Interval already ended";
          }

          else
          {
            v95[1](v93, v94);
            v96 = "";
          }

          v97 = swift_slowAlloc();
          *v97 = 0;
          v98 = sub_1D33DE394();
          _os_signpost_emit_with_name_impl(&dword_1D331A000, v88, v90, v98, "FavoritesDataSource loading", v96, v97, 2u);
          MEMORY[0x1D38B81C0](v97, -1, -1);
        }

        (v92)(v89, v114);
        *(v117 + v87) = 0;
      }

      return result;
    }

    *&v115 = v26;
    v29 = v28 >> 62;
    if (v28 >> 62)
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        v24 = v28;
      }

      else
      {
        v24 = v28 & 0xFFFFFFFFFFFFFF8;
      }

      v81 = sub_1D33DEE14();
      if (v81 >= 0xB)
      {
        v30 = 11;
      }

      else
      {
        v30 = v81;
      }

      if ((v81 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_69:
        v116 = (v28 & 0xFFFFFFFFFFFFFF8);
        v5 = sub_1D33DEE14();
        v102 = v8;
        v103 = v24;
        if (!v5)
        {
          goto LABEL_70;
        }

LABEL_18:
        v8 = 0;
        v7 = (v28 & 0xC000000000000001);
        v15 = *MEMORY[0x1E695C438];
        v101 = *MEMORY[0x1E695C420];
        v110 = MEMORY[0x1E69E7CC0];
        v115 = xmmword_1D33E2400;
        do
        {
          v34 = v8;
          while (1)
          {
            if (v7)
            {
              v35 = MEMORY[0x1D38B75D0](v34, v28);
            }

            else
            {
              if (v34 >= *(v116 + 2))
              {
                goto LABEL_58;
              }

              v35 = *(v28 + 8 * v34 + 32);
            }

            v13 = v35;
            v8 = (v34 + 1);
            if (__OFADD__(v34, 1))
            {
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            v36 = *(v117 + 16);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
            v37 = swift_allocObject();
            *(v37 + 16) = v115;
            v38 = objc_opt_self();
            v39 = v36;
            *(v37 + 32) = [v38 descriptorForRequiredKeys];
            *(v37 + 40) = v15;
            v40 = v15;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
            v4 = sub_1D33DE8A4();

            v41 = [v39 contactForFavoritesEntry:v13 keyDescriptors:v4];

            if (v41)
            {
              break;
            }

            v34 = (v34 + 1);
            if (v8 == v5)
            {
              goto LABEL_71;
            }
          }

          v42 = v41;
          v100 = [v42 isKeyAvailable_];
          v43 = [objc_opt_self() stringFromContact:v42 style:1000];
          if (v43)
          {
            v44 = v43;
            v4 = sub_1D33DE7B4();
            v99 = v45;
          }

          else
          {
            v44 = [v42 givenName];

            v4 = sub_1D33DE7B4();
            v99 = v46;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_1D331E6F4(0, *(v110 + 2) + 1, 1, v110);
          }

          v48 = *(v110 + 2);
          v47 = *(v110 + 3);
          if (v48 >= v47 >> 1)
          {
            v110 = sub_1D331E6F4((v47 > 1), v48 + 1, 1, v110);
          }

          v49 = v110;
          *(v110 + 2) = v48 + 1;
          v50 = &v49[56 * v48];
          v51 = v99;
          *(v50 + 4) = v4;
          *(v50 + 5) = v51;
          *(v50 + 6) = v42;
          *(v50 + 7) = 0;
          *(v50 + 8) = 0;
          *(v50 + 9) = v13;
          v50[80] = v100;
        }

        while (v8 != v5);
        goto LABEL_71;
      }

      v13 = v81;
      result = sub_1D33DEE14();
      if (result < 0)
      {
        goto LABEL_82;
      }

      result = sub_1D33DEE14();
      if (result < v30)
      {
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        return result;
      }
    }

    else
    {
      v13 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= 0xB)
      {
        v30 = 11;
      }

      else
      {
        v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 < v30)
      {
        goto LABEL_81;
      }
    }

    if ((v28 & 0xC000000000000001) != 0)
    {

      if (v13)
      {
        v32 = 0;
        do
        {
          v13 = v32 + 1;
          sub_1D33DEF34();
          v32 = v13;
        }

        while (v30 != v13);
      }

      v114 = v4;
      if (!v29)
      {
LABEL_15:
        v5 = 0;
        v33 = (v28 & 0xFFFFFFFFFFFFFF8);
        v4 = ((v28 & 0xFFFFFFFFFFFFFF8) + 32);
        goto LABEL_39;
      }
    }

    else
    {

      v114 = v4;
      if (!v29)
      {
        goto LABEL_15;
      }
    }

    v33 = sub_1D33DF0F4();
    v4 = v52;
    v5 = v53;
    v30 = v54 >> 1;
LABEL_39:
    swift_unknownObjectRetain();

    if (v5 == v30)
    {
      break;
    }

    v109 = v30 - 1;
    v116 = MEMORY[0x1E69E7CC0];
    v7 = &off_1E843B000;
    v108 = *MEMORY[0x1E695C420];
    v55 = v5;
    v110 = v33;
LABEL_42:
    v15 = v55;
    while (v55 >= v5 && v15 < v30)
    {
      v8 = *&v4[8 * v15];
      v56 = [v8 contactProperty];
      if (v56)
      {
        v13 = v56;
        v57 = [v56 contact];

        if (v57)
        {
          v58 = v57;
          v59 = [v58 isKeyAvailable_];
          v60 = [objc_opt_self() stringFromContact:v58 style:1000];
          if (v60)
          {
            v61 = v60;
            v62 = sub_1D33DE7B4();
            v106 = v63;
            v107 = v62;
          }

          else
          {
            v61 = [v58 givenName];

            v64 = sub_1D33DE7B4();
            v106 = v65;
            v107 = v64;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v105 = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v116 = sub_1D331E6F4(0, *(v116 + 2) + 1, 1, v116);
          }

          v68 = *(v116 + 2);
          v67 = *(v116 + 3);
          v13 = v68 + 1;
          LODWORD(v104) = v59;
          if (v68 >= v67 >> 1)
          {
            v116 = sub_1D331E6F4((v67 > 1), v68 + 1, 1, v116);
          }

          v55 = v15 + 1;
          v69 = v116;
          *(v116 + 2) = v13;
          v70 = &v69[56 * v68];
          v71 = v106;
          *(v70 + 4) = v107;
          *(v70 + 5) = v71;
          *(v70 + 6) = v105;
          *(v70 + 7) = 0;
          *(v70 + 8) = 0;
          *(v70 + 9) = v8;
          v70[80] = v104;
          if (v109 != v15)
          {
            goto LABEL_42;
          }

          goto LABEL_56;
        }
      }

      ++v15;

      if (v30 == v15)
      {
        goto LABEL_56;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
  }

  v116 = MEMORY[0x1E69E7CC0];
LABEL_56:
  swift_unknownObjectRelease_n();
  v72 = sub_1D3329904(v116);

  v73 = v111;
  v74 = v112;
  v75 = v117;
  v76 = v113;
  (*(v112 + 16))(v111, v117 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v113);
  v118 = v72;
  sub_1D33DDF64();
  (*(v74 + 8))(v73, v76);
  v77 = v114;
  sub_1D33DE994();
  v78 = sub_1D33DE9B4();
  (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  v79 = swift_allocObject();
  swift_weakInit();
  v80 = swift_allocObject();
  v80[2] = 0;
  v80[3] = 0;
  v80[4] = v79;
  sub_1D3387F00(0, 0, v77, &unk_1D33E2540, v80);

  result = sub_1D331E880(v77, &unk_1EC7610E0, &qword_1D33E16C0);
  *(v75 + v115) = 0;
  return result;
}

uint64_t sub_1D331D744()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D331D77C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D331D7BC()
{
  v0 = sub_1D33DE464();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D33DE3E4();
  __swift_allocate_value_buffer(v4, qword_1EDEC1458);
  __swift_project_value_buffer(v4, qword_1EDEC1458);
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDEC1480);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1D33DE3C4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_1D331D994()
{
  v0 = sub_1D33DE464();
  __swift_allocate_value_buffer(v0, qword_1EDEC1480);
  __swift_project_value_buffer(v0, qword_1EDEC1480);
  return sub_1D33DE454();
}

uint64_t sub_1D331DA18(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1D331DA64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D331ED74(a1, v4, v5, v6);
}

id RecentsDataSourceConfiguration.init(conversationManager:conversations:callHistoryUsingRecentsController:linksAndSuggestions:messages:coalescingStrategy:showsThirdParty:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W4>, char a5@<W5>, unsigned __int8 *a6@<X6>, char a7@<W7>, char **a8@<X8>)
{
  v90 = a4;
  v91 = a3;
  v92 = a8;
  v99 = a1;
  v12 = sub_1D33DEB84();
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D33DEB24();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1D33DE6A4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = 0;
  v100 = *a6;
  if (a5)
  {
    v17 = sub_1D33DE2A4();
    v18 = sub_1D33DE294();
    *(&v123 + 1) = v17;
    v124 = &off_1F4EE4AF0;
    *&v122 = v18;
    type metadata accessor for VideoMessageInboxController(0);
    v19 = swift_allocObject();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(&v122, v17);
    MEMORY[0x1EEE9AC00](v20);
    v22 = (&v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v16 = sub_1D3392828(*v22, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(&v122);
  }

  v98 = v16;
  if (a2)
  {
    v24 = objc_allocWithZone(type metadata accessor for ConversationDataSource(0));
    v97 = ConversationDataSource.init(conversationManager:)(v99);
  }

  else
  {
    v97 = 0;
  }

  v25 = 7;
  if (a7)
  {
    v25 = 15;
  }

  v94 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D33E31E0;
  *(v26 + 32) = [objc_allocWithZone(MEMORY[0x1E69D8A68]) init];
  *(v26 + 40) = [objc_allocWithZone(MEMORY[0x1E69D8C30]) init];
  *(v26 + 48) = [objc_allocWithZone(MEMORY[0x1E69D8D08]) init];
  *(v26 + 56) = [objc_allocWithZone(MEMORY[0x1E69D8BF8]) init];
  v27 = objc_allocWithZone(MEMORY[0x1E69D8C38]);
  sub_1D331DA18(0, &unk_1EDEBEEA0, 0x1E69D8C40);
  v28 = sub_1D33DE8A4();

  v89 = [v27 initWithDataProviders_];

  v29 = sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  sub_1D33DE684();
  *&v122 = MEMORY[0x1E69E7CC0];
  sub_1D33927E0(&qword_1EDEBEEE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760F10, &qword_1D33E2E40);
  sub_1D334CB54(&qword_1EDEBEF20, &unk_1EC760F10, &qword_1D33E2E40, MEMORY[0x1E69E6328]);
  sub_1D33DED64();
  (*(v95 + 104))(v93, *MEMORY[0x1E69E8090], v96);
  v96 = v29;
  v95 = sub_1D33DEBD4();
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDEBFC50;
  v31 = type metadata accessor for RequestsHandler();
  *(&v123 + 1) = v31;
  v124 = &off_1F4EE7D80;
  *&v122 = v30;
  v32 = objc_allocWithZone(type metadata accessor for RecentsUnreadCountManager());
  v33 = __swift_mutable_project_boxed_opaque_existential_1(&v122, *(&v123 + 1));
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v35;
  v38 = v30;
  v39 = sub_1D33930E8(v37, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(&v122);
  v40 = [objc_opt_self() callHistoryControllerWithCoalescingStrategy:v100 options:v94];
  v41 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v42 = objc_opt_self();
  result = [v42 contactStore];
  if (result)
  {
    v44 = result;
    v45 = [v42 suggestedContactStore];
    v46 = objc_allocWithZone(MEMORY[0x1E69BDD08]);
    v47 = v89;
    v48 = v40;
    v94 = v47;
    v49 = [v46 initWithCallHistoryController:v48 callProviderManager:v41 contactStore:v44 suggestedContactStore:v45 metadataCache:v47];

    v50 = sub_1D33DEB94();
    [v49 addDelegate:v39 queue:v50];

    v51 = objc_allocWithZone(type metadata accessor for RecentCallProvider());
    v52 = sub_1D331EF10(v49);

    *(&v123 + 1) = v31;
    v124 = &off_1F4EE7D80;
    *&v122 = v38;
    v53 = type metadata accessor for RecentsControllerBox(0);
    v54 = swift_allocObject();
    v55 = __swift_mutable_project_boxed_opaque_existential_1(&v122, v31);
    v96 = v39;
    MEMORY[0x1EEE9AC00](v55);
    v57 = (&v89 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v57);
    v59 = *v57;
    v60 = v38;
    v61 = sub_1D3393364(v52, v59, v54);
    __swift_destroy_boxed_opaque_existential_1Tm(&v122);
    v62 = v61;
    swift_weakAssign();
    v100 = 0;
    if (v90)
    {
      type metadata accessor for RecentsLinkController(0);
      swift_allocObject();
      v63 = v99;

      v100 = RecentsLinkController.init(conversationManager:)(v63);
    }

    v64 = v97;
    if (v97)
    {
      v65 = type metadata accessor for ConversationDataSource(0);
      v66 = sub_1D33927E0(&qword_1EDEBF558, type metadata accessor for ConversationDataSource, &unk_1D33E352C);
      v67 = v64;
    }

    else
    {
      v67 = 0;
      v65 = 0;
      v66 = 0;
      v105 = 0;
      v106 = 0;
    }

    v68 = v98;
    v104 = v67;
    v107 = v65;
    v108 = v66;
    v69 = v100;
    if (v100)
    {
      v70 = type metadata accessor for RecentsLinkController(0);
      v71 = sub_1D33927E0(&unk_1EDEBF800, type metadata accessor for RecentsLinkController, &unk_1D33E3510);
      v69 = v100;
    }

    else
    {
      v70 = 0;
      v71 = 0;
      v110 = 0;
      v111 = 0;
    }

    v109 = v69;
    v112 = v70;
    v113 = v71;
    if (v68)
    {
      v72 = type metadata accessor for VideoMessageInboxController(0);
      v73 = sub_1D33927E0(&qword_1EDEBF308, type metadata accessor for VideoMessageInboxController, &unk_1D33E16E8);
      v74 = v68;
    }

    else
    {
      v74 = 0;
      v72 = 0;
      v73 = 0;
      v115 = 0;
      v116 = 0;
    }

    v114 = v74;
    v117 = v72;
    v118 = v73;
    v120 = v53;
    v121 = sub_1D33927E0(&qword_1EDEBFAC8, type metadata accessor for RecentsControllerBox, &unk_1D33E1D0C);
    v119 = v62;
    v93 = v62;

    v75 = v64;

    v76 = MEMORY[0x1E69E7CC0];
    for (i = 32; i != 192; i += 40)
    {
      sub_1D331E818(&v103[2] + i + 8, &v122, &unk_1EC761800, &qword_1D33E3230);
      v101[0] = v122;
      v101[1] = v123;
      v102 = v124;
      if (*(&v123 + 1))
      {
        sub_1D331E6AC(v101, v103);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1D33226D4(0, *(v76 + 2) + 1, 1, v76);
        }

        v79 = *(v76 + 2);
        v78 = *(v76 + 3);
        if (v79 >= v78 >> 1)
        {
          v76 = sub_1D33226D4((v78 > 1), v79 + 1, 1, v76);
        }

        *(v76 + 2) = v79 + 1;
        sub_1D331E6AC(v103, &v76[40 * v79 + 32]);
      }

      else
      {
        sub_1D331E880(v101, &unk_1EC761800, &qword_1D33E3230);
      }
    }

    v80 = v93;

    v81 = v100;

    v82 = v94;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761800, &qword_1D33E3230);
    swift_arrayDestroy();
    result = swift_unknownObjectRelease();
    v83 = v92;
    v84 = v97;
    v85 = v98;
    *v92 = v80;
    v83[1] = v84;
    v86 = v99;
    v83[2] = v85;
    v83[3] = v86;
    v87 = v95;
    v88 = v96;
    v83[4] = v76;
    v83[5] = v88;
    v83[6] = v81;
    v83[7] = v87;
    v83[8] = v82;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D331E6AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D331E6C4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761EE8, &qword_1D33E5588);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

char *sub_1D331E6F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DD8, &qword_1D33E1B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D331E818(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D331E880(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D331E8E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D332B6E4;

  return v6(a1);
}

uint64_t sub_1D331E9D8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = [*(Strong + 16) favoritesEntries];
    sub_1D331DA18(0, &qword_1EDEBEEF0, 0x1E695CE98);
    v3 = sub_1D33DE8B4();

    if (v3 >> 62)
    {
LABEL_30:
      v4 = sub_1D33DEE14();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = MEMORY[0x1E69E7CC0];
        v33 = *MEMORY[0x1E695C420];
        v34 = v0;
        do
        {
          v35 = v6;
          v7 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1D38B75D0](v7, v3);
            }

            else
            {
              if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_29;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            v10 = [v8 contactProperty];
            if (v10)
            {
              v11 = v10;
              v12 = [v10 contact];

              if (v12)
              {
                break;
              }
            }

            ++v7;
            if (v5 == v4)
            {
              v0 = v34;
              v6 = v35;
              goto LABEL_32;
            }
          }

          v13 = v12;
          v14 = [v13 isKeyAvailable_];
          v15 = [objc_opt_self() stringFromContact:v13 style:1000];
          if (v15)
          {
            v16 = v15;
            v17 = sub_1D33DE7B4();
            v31 = v18;
            v32 = v17;

            v19 = v13;
          }

          else
          {
            v19 = [v13 givenName];

            v20 = sub_1D33DE7B4();
            v31 = v21;
            v32 = v20;
          }

          v22 = v35;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1D331E6F4(0, *(v35 + 16) + 1, 1, v35);
          }

          v24 = *(v22 + 2);
          v23 = *(v22 + 3);
          v25 = v22;
          if (v24 >= v23 >> 1)
          {
            v25 = sub_1D331E6F4((v23 > 1), v24 + 1, 1, v22);
          }

          *(v25 + 2) = v24 + 1;
          v6 = v25;
          v26 = &v25[56 * v24];
          *(v26 + 4) = v32;
          *(v26 + 5) = v31;
          *(v26 + 6) = v13;
          *(v26 + 7) = 0;
          *(v26 + 8) = 0;
          *(v26 + 9) = v9;
          v26[80] = v14;
          v0 = v34;
        }

        while (v5 != v4);
        goto LABEL_32;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x1E69E7CC0];
LABEL_32:

    v0[7] = sub_1D3329904(v6);

    sub_1D33DE974();
    v0[8] = sub_1D33DE964();
    v30 = sub_1D33DE914();

    return MEMORY[0x1EEE6DFA0](sub_1D3338B5C, v30, v29);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D331ED94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D334D4B4;

  return sub_1D331E8E0(a1, v4);
}

uint64_t type metadata accessor for VideoMessageInboxController(uint64_t a1)
{
  result = qword_1EDEBF2F8;
  if (!qword_1EDEBF2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D331EE98()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__signState) = *(v0 + 24);
}

uint64_t sub_1D331EEDC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

char *sub_1D331EF10(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_presentScreenTimeShield];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentItems] = 0;
  v4 = OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentItemsUpdateTrigger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
  swift_allocObject();
  *&v1[v4] = sub_1D33DE4D4();
  *&v1[OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController] = a1;
  v1[OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_startedLoadingOlderCalls] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for RecentCallProvider();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v12, sel_init);
  v7 = *&v6[OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController];
  v8 = v6;
  v9 = v7;
  v10 = [v9 serialQueue];
  [v9 addDelegate:v8 queue:v10];

  return v8;
}

uint64_t type metadata accessor for RecentsControllerBox(uint64_t a1)
{
  result = qword_1EDEBFAB0;
  if (!qword_1EDEBFAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D331F080()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760DF0, &qword_1D33E1CC0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void sub_1D331F0B0(uint64_t a1)
{
  sub_1D331F1C4();
  if (v1 <= 0x3F)
  {
    sub_1D33DDF14();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D331F1C4()
{
  if (!qword_1EDEBEF60)
  {
    v0 = sub_1D33DE594();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEBEF60);
    }
  }
}

uint64_t sub_1D331F244(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D331F27C(uint64_t a1)
{
  sub_1D331F384(319);
  if (v1 <= 0x3F)
  {
    sub_1D331F3EC();
    if (v2 <= 0x3F)
    {
      sub_1D33A71C0(319, qword_1EDEBFDD0, type metadata accessor for CallInfo);
      if (v3 <= 0x3F)
      {
        sub_1D33A71C0(319, qword_1EDEBFE88, type metadata accessor for ReminderStatus);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D331F384(uint64_t a1)
{
  if (!qword_1EDEBFD58)
  {
    sub_1D331DA18(255, &qword_1EDEBFD50, 0x1E695CD58);
    v1 = sub_1D33DE904();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEBFD58);
    }
  }
}

void sub_1D331F3EC()
{
  if (!qword_1EDEBFD60)
  {
    v0 = sub_1D33DECF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEBFD60);
    }
  }
}

void sub_1D331F45C(uint64_t a1)
{
  sub_1D33DDD34();
  if (v1 <= 0x3F)
  {
    sub_1D331F3EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D331F514()
{
  result = qword_1EDEBEE80;
  if (!qword_1EDEBEE80)
  {
    sub_1D331F56C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEE80);
  }

  return result;
}

unint64_t sub_1D331F56C()
{
  result = qword_1EDEBEE90;
  if (!qword_1EDEBEE90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEBEE90);
  }

  return result;
}

uint64_t RecentsItem.init(from:recentsItem:contacts:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a3;
  v91 = a2;
  v89 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v87 = &v73 - v6;
  v88 = type metadata accessor for ReminderStatus(0);
  v85 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v74 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for RecentsItem(0);
  MEMORY[0x1EEE9AC00](v90);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v73 - v11;
  v13 = sub_1D33DDD34();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v77 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v73 - v17;
  v19 = type metadata accessor for CallInfo(0);
  v84 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 uniqueId];
  v23 = sub_1D33DE7B4();
  v79 = v24;
  v80 = v23;

  v78 = [a1 callStatus];
  v25 = MEMORY[0x1E69935C8];
  v26 = a1;
  v27 = [a1 date];
  v82 = v14;
  v83 = v13;
  v81 = v18;
  if (v27)
  {
    v28 = v77;
    v29 = v27;
    sub_1D33DDCF4();

    v76 = v26;
    v30 = *(v14 + 32);
    v30(v12, v28, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    v30(v18, v12, v13);
    v25 = MEMORY[0x1E69935C8];
    v26 = v76;
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    sub_1D33DDD04();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_1D331E880(v12, &qword_1EC760E10, &unk_1D33E1A90);
    }
  }

  v31 = *v25;
  v77 = [v26 numberOfOccurrences];
  v32 = [v91 localizedSenderIdentityTitle];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1D33DE7B4();
    v75 = v35;
    v76 = v34;
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  v36 = v78 == v31;
  v37 = *MEMORY[0x1E69935C0];
  v38 = v26;
  v39 = ([v26 callStatus] & v37) == 0;
  [v38 duration];
  v41 = v40;
  v42 = v91;
  v43 = [v91 verified];
  v44 = [v38 isJunk];
  LOBYTE(v37) = [v42 isBlocked];
  v45 = v79;
  *v21 = v80;
  *(v21 + 1) = v45;
  v21[16] = v36;
  (*(v82 + 32))(&v21[v19[6]], v81, v83);
  v46 = v76;
  *&v21[v19[7]] = v77;
  v47 = &v21[v19[8]];
  v48 = v75;
  *v47 = v46;
  *(v47 + 1) = v48;
  v21[v19[9]] = v39;
  *&v21[v19[10]] = v41;
  v21[v19[11]] = v43;
  v21[v19[12]] = v44;
  v21[v19[13]] = v37;
  v83 = v38;
  v49 = [v42 localizedTitle];
  if (v49)
  {
    v50 = v49;
    v82 = sub_1D33DE7B4();
    v52 = v51;
  }

  else
  {
    v82 = 0;
    v52 = 0;
  }

  v53 = v90;
  v54 = [v91 localizedSubtitle];
  if (v54)
  {
    v55 = v54;
    v56 = sub_1D33DE7B4();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v59 = v53[8];
  sub_1D336D080(v21, &v9[v59], type metadata accessor for CallInfo);
  (*(v84 + 56))(&v9[v59], 0, 1, v19);
  v60 = &v9[v53[9]];
  *v60 = 0;
  *(v60 + 1) = 0;
  v61 = &v9[v53[10]];
  *v61 = 0;
  *(v61 + 1) = 0;
  v62 = v85;
  v63 = &v9[v53[11]];
  v64 = v88;
  v84 = *(v85 + 56);
  (v84)(v63, 1, 1, v88);
  v65 = v83;
  *v9 = v83;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  v9[32] = 4;
  *(v9 + 7) = v52;
  *(v9 + 8) = v56;
  *(v9 + 9) = v58;
  v66 = v82;
  *(v9 + 5) = v86;
  *(v9 + 6) = v66;
  v67 = v89;
  sub_1D33290D8(v9, v89, type metadata accessor for RecentsItem);
  v68 = v87;
  RecentsItem.getReminderStatus()(v87);

  sub_1D3367D30(v21, type metadata accessor for CallInfo);
  if ((*(v62 + 48))(v68, 1, v64) == 1)
  {
    return sub_1D331E880(v68, &unk_1EC761320, &unk_1D33E28D0);
  }

  v70 = v68;
  v71 = v74;
  sub_1D33290D8(v70, v74, type metadata accessor for ReminderStatus);
  v72 = *(v90 + 44);
  sub_1D331E880(v67 + v72, &unk_1EC761320, &unk_1D33E28D0);
  sub_1D33290D8(v71, v67 + v72, type metadata accessor for ReminderStatus);
  return (v84)(v67 + v72, 0, 1, v64);
}

void sub_1D331FD68(uint64_t a1)
{
  sub_1D334B194(319);
  if (v1 <= 0x3F)
  {
    sub_1D33DDF14();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D331FE94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D331FEDC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D331FF08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D33DDD34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_1D331FFAC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1D3320188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761460, &qword_1D33E2998);
    v3 = sub_1D33DF124();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D33B9340(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D3320290(uint64_t a1)
{
  result = sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D33202E8(uint64_t a1)
{
  result = sub_1D334EAE0();
  *(a1 + 8) = result;
  return result;
}

void *sub_1D3320310(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *RecentsItemDataSource.init(configuration:messageQuery:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v77 = a2;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B8, &qword_1D33E3368);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v66 - v8;
  v73 = sub_1D33DE2F4();
  v72 = *(v73 - 8);
  v9 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v66 - v11;
  v71 = sub_1D33DEB84();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D33DEB24();
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D33DE6A4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - v18;
  v20 = a1[3];
  v83 = a1[2];
  v84 = v20;
  v85 = *(a1 + 8);
  v21 = a1[1];
  v81 = *a1;
  v82 = v21;
  v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded] = 0;
  v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loadingState] = 0;
  v22 = &v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loading];
  *v22 = 0;
  v22[4] = 0;
  v23 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoad;
  LOBYTE(v80[0]) = 0;
  sub_1D33DE534();
  (*(v17 + 32))(&v3[v23], v19, v16);
  v24 = &v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue];
  LOBYTE(v80[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761828, &qword_1D33E3260);
  swift_allocObject();
  v25 = sub_1D33DE504();
  *v24 = 0;
  *(v24 + 1) = v25;
  v26 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems] = MEMORY[0x1E69E7CC0];
  v27 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_recentsItemsSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
  swift_allocObject();
  *&v3[v27] = sub_1D33DE4D4();
  v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_isRemindersDatasource] = 0;
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_messageInboxSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_videoMessageLoadSubscription] = 0;
  v28 = &v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_updateTask];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_updateQueue;
  v30 = sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  sub_1D33DE694();
  v80[0] = v26;
  sub_1D33927E0(&qword_1EDEBEEE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760F10, &qword_1D33E2E40);
  sub_1D334CB54(&qword_1EDEBEF20, &unk_1EC760F10, &qword_1D33E2E40, MEMORY[0x1E69E6328]);
  v31 = v30;
  sub_1D33DED64();
  (*(v70 + 104))(v69, *MEMORY[0x1E69E8090], v71);
  *&v3[v29] = sub_1D33DEBD4();
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_loadingFallbackTask] = 0;
  v32 = &v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_previousDataSourceStates];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_featureFlags;
  v34 = &off_1E843B000;
  *&v3[v33] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__signState] = 0;
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider] = 0;
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__reminderUpdateCancellable] = 0;
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__datasourceCancellable] = 0;
  sub_1D33DDF04();
  v35 = &v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration];
  v36 = v84;
  *(v35 + 2) = v83;
  *(v35 + 3) = v36;
  *(v35 + 8) = v85;
  v37 = v82;
  *v35 = v81;
  *(v35 + 1) = v37;
  sub_1D3322888(&v81, v80);
  if (qword_1EDEBF9C0 != -1)
  {
    swift_once();
  }

  v38 = &qword_1EDEBF000;
  *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_recentsReminderCache] = off_1EDEBF9C8;
  v39 = v77;
  v40 = v74;
  sub_1D331E818(v77, v74, &qword_1EC7618B8, &qword_1D33E3368);
  v41 = v72;
  v42 = v73;
  v43 = v40;
  if ((*(v72 + 48))(v40, 1, v73) == 1)
  {

    sub_1D331E880(v40, &qword_1EC7618B8, &qword_1D33E3368);
  }

  else
  {
    v44 = v67;
    (*(v41 + 32))(v67, v43, v42);
    v45 = v82;
    if (v82)
    {
      v46 = *(v41 + 16);
      v74 = v31;
      v47 = v66;
      v46(v66, v44, v42);
      v48 = v42;
      v49 = (v45 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);

      os_unfair_lock_lock(v49);
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
      v51 = *(v41 + 8);
      v51(v49 + v50, v48);
      v46(v49 + v50, v47, v48);
      v34 = &off_1E843B000;
      v39 = v77;
      os_unfair_lock_unlock(v49);
      sub_1D33220A8();
      v51(v47, v48);
      v51(v67, v48);
      v38 = &qword_1EDEBF000;
    }

    else
    {
      v52 = *(v41 + 8);

      v52(v44, v42);
    }
  }

  v79.receiver = v3;
  v79.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v79, v34[402]);
  v54 = *(&v82 + 1);
  v55 = v53;
  v56 = sub_1D33DEB94();
  [v54 addDelegate:v55 queue:v56];

  sub_1D3321A50(&v81);
  v57 = sub_1D33DE9B4();
  v58 = v76;
  (*(*(v57 - 8) + 56))(v76, 1, 1, v57);
  sub_1D33DE974();
  v59 = v55;
  v60 = sub_1D33DE964();
  v61 = swift_allocObject();
  v62 = MEMORY[0x1E69E85E0];
  v61[2] = v60;
  v61[3] = v62;
  v61[4] = v59;
  sub_1D333DD88(0, 0, v58, &unk_1D33E3378, v61);

  v63 = *&v59[v38[277]];
  swift_beginAccess();
  v78 = *(v63 + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618F0, &qword_1D33E3380);
  sub_1D334CB54(&qword_1EDEBEF88, &qword_1EC7618F0, &qword_1D33E3380, MEMORY[0x1E695BFB0]);
  v64 = sub_1D33DE644();

  sub_1D338C6FC(v64, &OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__reminderUpdateCancellable, &unk_1D33E3850, sub_1D3321BDC);

  sub_1D331E880(v39, &qword_1EC7618B8, &qword_1D33E3368);
  return v59;
}

void *sub_1D3320F94()
{
  type metadata accessor for RecentsReminderCache();
  v0 = swift_allocObject();
  result = sub_1D3320FF4();
  off_1EDEBF9C8 = v0;
  return result;
}

void *sub_1D3320FF4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617E0, &unk_1D33E3210);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v32 - v3;
  v47 = sub_1D33DECB4();
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D33DEC24();
  v42 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D10, &qword_1D33E4A88);
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v46 = v32 - v11;
  v49 = sub_1D3321700(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618F0, &qword_1D33E3380);
  swift_allocObject();
  v12 = sub_1D33DE504();
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v12;
  v13 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v14 = [v13 callRemindersEnabled];

  if (v14)
  {
    v1[2] = [objc_allocWithZone(MEMORY[0x1E69C6D28]) init];
    v41 = objc_opt_self();
    v15 = [v41 defaultCenter];
    v16 = [objc_opt_self() storeDidChangeNotificationName];
    sub_1D33DEC34();

    sub_1D33DECA4();
    v40 = objc_opt_self();
    v17 = [v40 mainRunLoop];
    v45 = v5;
    v18 = v17;
    v49 = v17;
    v38 = sub_1D33DEC94();
    v19 = *(v38 - 8);
    v37 = *(v19 + 56);
    v39 = v19 + 56;
    v37(v4, 1, 1, v38);
    v36 = sub_1D331DA18(0, &unk_1EDEBEE50, 0x1E695DFD0);
    v35 = sub_1D33B850C(&qword_1EDEC0050, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    v34 = sub_1D3357A1C(&qword_1EDEBEE60, &unk_1EDEBEE50, 0x1E695DFD0, MEMORY[0x1E696A010]);
    v20 = v46;
    v21 = v48;
    sub_1D33DE614();
    sub_1D331E880(v4, &unk_1EC7617E0, &unk_1D33E3210);

    v22 = *(v45 + 8);
    v45 += 8;
    v33 = v22;
    v22(v7, v47);
    v32[0] = v7;
    v42 = *(v42 + 8);
    (v42)(v9, v21);
    swift_allocObject();
    swift_weakInit();
    v32[1] = sub_1D33219EC();

    v23 = v44;
    v24 = sub_1D33DE644();

    v43 = *(v43 + 8);
    (v43)(v20, v23);
    v1[4] = v24;

    v25 = [v41 defaultCenter];
    sub_1D33DEC34();

    v26 = v32[0];
    sub_1D33DECA4();
    v27 = [v40 mainRunLoop];
    v49 = v27;
    v37(v4, 1, 1, v38);
    v28 = v48;
    sub_1D33DE614();
    sub_1D331E880(v4, &unk_1EC7617E0, &unk_1D33E3210);

    v33(v26, v47);
    (v42)(v9, v28);
    swift_allocObject();
    swift_weakInit();

    v29 = v46;
    v30 = sub_1D33DE644();

    (v43)(v29, v23);
    v1[5] = v30;
  }

  else
  {
    v1[2] = 0;
  }

  return v1;
}

uint64_t sub_1D33216C8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1D3321700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761450, &qword_1D33E1B10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761458, &qword_1D33E2990);
    v7 = sub_1D33DF124();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D331E818(v9, v5, &qword_1EC761450, &qword_1D33E1B10);
      result = sub_1D33B926C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D33DDDB4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for ReminderStatus(0);
      result = sub_1D33290D8(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ReminderStatus);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for ReminderStatus(uint64_t a1)
{
  result = qword_1EDEBFEC0;
  if (!qword_1EDEBFEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D3321968(uint64_t a1)
{
  sub_1D3371B10(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1D33219EC()
{
  result = qword_1EDEBEFE0;
  if (!qword_1EDEBEFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC761D10, &qword_1D33E4A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEFE0);
  }

  return result;
}

void sub_1D3321A80(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1D33DE9B4();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_1D33DE974();
    v8 = v6;
    v9 = sub_1D33DE964();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    sub_1D333DD88(0, 0, v4, &unk_1D33E3880, v10);
  }
}

uint64_t sub_1D3321BFC(uint64_t a1)
{
  result = sub_1D33DDF14();
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

char *sub_1D3321CEC(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1D33DEE14();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1D331FEEC(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t RecentsItemDataSource.messageQuery.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B8, &qword_1D33E3368);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_1D33DE2F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  sub_1D331E818(a1, v5, &qword_1EC7618B8, &qword_1D33E3368);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D331E880(a1, &qword_1EC7618B8, &qword_1D33E3368);
    return sub_1D331E880(v5, &qword_1EC7618B8, &qword_1D33E3368);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    v14 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
    if (v14)
    {
      v19 = *(v7 + 16);
      v19(v10, v12, v6);
      v15 = (v14 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
      os_unfair_lock_lock((v14 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
      v17 = *(v7 + 8);
      v17(v15 + v16, v6);
      v19(v15 + v16, v10, v6);
      os_unfair_lock_unlock(v15);
      sub_1D33220A8();
      sub_1D331E880(a1, &qword_1EC7618B8, &qword_1D33E3368);
      v17(v10, v6);
      return (v17)(v12, v6);
    }

    else
    {
      sub_1D331E880(a1, &qword_1EC7618B8, &qword_1D33E3368);
      return (*(v7 + 8))(v12, v6);
    }
  }
}

void sub_1D33220A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  if (*(v4 + 40) == 1)
  {

    os_unfair_lock_unlock(v4);
  }

  else
  {
    *(v4 + 40) = 1;
    os_unfair_lock_unlock(v4);
    sub_1D33DE984();
    v5 = sub_1D33DE9B4();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    v8 = sub_1D3341AEC(0, 0, v3, &unk_1D33E1B88, v7);
    sub_1D331E880(v3, &unk_1EC7610E0, &qword_1D33E16C0);
    sub_1D3322298(v8);
  }
}

uint64_t sub_1D332224C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3322298(uint64_t result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask;
  if (!*(v1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask))
  {
    if (!result)
    {
      *(v1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask) = 0;
      return result;
    }

    goto LABEL_9;
  }

  if (!result || (, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30), v4 = sub_1D33DE9C4(), result = , (v4 & 1) == 0))
  {
LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
    sub_1D33DDEC4();
  }

  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    sub_1D33DE9D4();
  }

  return result;
}

uint64_t sub_1D3322480()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D33224B0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D70, &qword_1D33E1820);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D3322534()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617A8, &qword_1D33E31B0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D3322580(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask);
  *(a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask) = a2;
  if (!v2)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
  sub_1D33DE9D4();
}

void RecentsItemDataSource.preFetchingPredicate.setter(void *a1)
{
  if (a1)
  {
    if (*(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration))
    {
      type metadata accessor for RecentCallProvider();
      v2 = swift_dynamicCastClass();
      if (v2)
      {
        v3 = *(v2 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
        [v3 setPreFetchingPredicate_];
      }
    }
  }
}

uint64_t type metadata accessor for RecentsItemDataSource(uint64_t a1)
{
  result = qword_1EDEBF830;
  if (!qword_1EDEBF830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D3322744(uint64_t a1)
{
  sub_1D331F1C4();
  if (v1 <= 0x3F)
  {
    sub_1D33DDF14();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for ConversationDataSource(uint64_t a1)
{
  result = qword_1EDEBF548;
  if (!qword_1EDEBF548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *ConversationDataSource.init(conversationManager:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v30 - v5;
  v7 = sub_1D33DEB74();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F28, &qword_1D33E2298);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v31 = v30 - v12;
  v13 = OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_conversationsUpdateSubject;
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F38, &unk_1D33E22A0);
  swift_allocObject();
  *&v1[v13] = sub_1D33DE4D4();
  *&v1[OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource__updateSink] = 0;
  *&v1[OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource__signState] = 0;
  v14 = OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_loadingStateSubject;
  LOBYTE(v38) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  swift_allocObject();
  *&v1[v14] = sub_1D33DE504();
  sub_1D33DDF04();
  *&v1[OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_conversationManager] = a1;
  v32 = a1;
  v15 = [v32 activeConversations];
  sub_1D331DA18(0, &unk_1EDEBEF00, 0x1E69D8B20);
  sub_1D3357A1C(&qword_1EDEBEEF8, &unk_1EDEBEF00, 0x1E69D8B20, MEMORY[0x1E69E81B8]);
  v16 = sub_1D33DEA54();

  v17 = sub_1D3321CC0(v16);

  v18 = &v2[OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state];
  *v18 = 0;
  *(v18 + 1) = v17;
  v19 = type metadata accessor for ConversationDataSource(0);
  v39.receiver = v2;
  v39.super_class = v19;
  v20 = objc_msgSendSuper2(&v39, sel_init);
  v38 = *&v20[OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_conversationsUpdateSubject];
  v21 = v20;

  sub_1D33DEB44();
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v22 = sub_1D33DEB94();
  v37 = v22;
  v23 = sub_1D33DEB34();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  sub_1D334CB54(&qword_1EDEBEFA0, &qword_1EC760F38, &unk_1D33E22A0, MEMORY[0x1E695BF88]);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v24 = v31;
  sub_1D33DE614();
  sub_1D3322E88(v6);

  (*(v33 + 8))(v9, v34);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D334CB54(&unk_1EDEBF010, &qword_1EC760F28, &qword_1D33E2298, MEMORY[0x1E695BE50]);
  v25 = v35;
  v26 = sub_1D33DE644();

  (*(v36 + 8))(v24, v25);
  sub_1D3322EF0(v26);
  v27 = sub_1D33DEB94();
  v28 = v32;
  [v32 addDelegate:v21 queue:v27];

  return v21;
}

uint64_t sub_1D3322E50()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3322E88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3322EF0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource__updateSink;
  if (*(v1 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource__updateSink))
  {
    if (a1)
    {
      sub_1D33DE4A4();
      sub_1D3357A88(&unk_1EC760FF0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);

      v5 = sub_1D33DE774();

      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource, &protocol conformance descriptor for ConversationDataSource);
    sub_1D33DDEC4();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_1D33230A0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F68, &qword_1D33E2378);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D3323124(uint64_t a1)
{
  result = sub_1D33927E0(&unk_1EDEBF560, type metadata accessor for ConversationDataSource, &protocol conformance descriptor for ConversationDataSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D332317C()
{
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  v0[48] = __swift_project_value_buffer(v1, qword_1EDEC1480);
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D331A000, v2, v3, "Fetching Messages count from FTMS", v4, 2u);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  v5 = v0[47];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[39];
  v17 = v0[46];
  v18 = v0[40];
  v19 = v0[38];
  v9 = v0[19];

  v10 = (v9 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
  os_unfair_lock_lock((v9 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360);
  v12 = *(v6 + 16);
  v12(v5, v10 + *(v11 + 28), v7);
  os_unfair_lock_unlock(v10);
  swift_getKeyPath();
  v0[49] = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController___observationRegistrar;
  v0[10] = v9;
  v0[50] = sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDED4();

  v13 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController;
  swift_beginAccess();
  sub_1D3325720(v9 + v13, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v12(v17, v5, v7);
  (*(v8 + 104))(v18, *MEMORY[0x1E699BFC0], v19);
  v0[11] = MEMORY[0x1E69E7CC0];
  sub_1D331FE94(&qword_1EDEBF060, MEMORY[0x1E699BF10], MEMORY[0x1E699BF18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D88, &qword_1D33E1988);
  sub_1D334CB54(&unk_1EDEBEF38, &qword_1EC760D88, &qword_1D33E1988, MEMORY[0x1E69E6328]);
  sub_1D33DED64();
  sub_1D33DE2C4();
  v14 = swift_task_alloc();
  v0[51] = v14;
  *v14 = v0;
  v14[1] = sub_1D3323B20;
  v15 = v0[43];

  return MEMORY[0x1EEE03BD0](v15);
}

uint64_t sub_1D3323538()
{
  v1[19] = v0;
  v2 = sub_1D33DE3F4();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = *(type metadata accessor for RecentsItem(0) - 8);
  v1[24] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v4 = sub_1D33DE3B4();
  v1[28] = v4;
  v1[29] = *(v4 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v5 = sub_1D33DEFE4();
  v1[33] = v5;
  v1[34] = *(v5 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = sub_1D33DE1D4();
  v1[37] = swift_task_alloc();
  v6 = sub_1D33DE2B4();
  v1[38] = v6;
  v1[39] = *(v6 - 8);
  v1[40] = swift_task_alloc();
  v7 = sub_1D33DE2D4();
  v1[41] = v7;
  v1[42] = *(v7 - 8);
  v1[43] = swift_task_alloc();
  v8 = sub_1D33DE2F4();
  v1[44] = v8;
  v1[45] = *(v8 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D332317C, 0, 0);
}

uint64_t sub_1D33238EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D3323A70(uint64_t a1)
{
  v1 = sub_1D33DDB54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t RecentsItemDataSource.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48);
  v9 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  v10 = v2;
  v11 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 64);
  v3 = v11;
  v4 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  v8[0] = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D3322888(v8, v7);
}

uint64_t sub_1D3323B20(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  (*(v3[42] + 8))(v3[43], v3[41]);
  if (v1)
  {
    v5 = sub_1D3323D90;
  }

  else
  {
    v5 = sub_1D3323C90;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D3323C90()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = sub_1D33DE444();
  v2 = sub_1D33DEAF4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[52];
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_1D331A000, v1, v2, "There are %{public}ld message(s) in FTMS", v4, 0xCu);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  v5 = v0[19];

  v6 = *(v5 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_pagedLoader);
  v0[54] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D3323EBC, v6, 0);
}

uint64_t sub_1D3323D90()
{
  (*(v0[45] + 8))(v0[47], v0[44]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t RecentsItemDataSource.recentsItemsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v49 = &v39 - v2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761850, &qword_1D33E3318);
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761858, &qword_1D33E3320);
  v7 = *(v6 - 8);
  v42 = v6;
  v43 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761860, &qword_1D33E3328);
  v11 = *(v10 - 8);
  v47 = v10;
  v48 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761868, &qword_1D33E3330);
  v54 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v44 = &v39 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761870, &qword_1D33E3338);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v45 = &v39 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761878, &qword_1D33E3340);
  v17 = *(v16 - 8);
  v51 = v16;
  v52 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v39 - v18;
  v39 = v0;
  v19 = v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue));
  v56 = *(v19 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761828, &qword_1D33E3260);
  sub_1D334CB54(&qword_1EDEBEF80, &qword_1EC761828, &qword_1D33E3260, MEMORY[0x1E695BFB0]);
  v20 = sub_1D33DE5A4();
  os_unfair_lock_unlock(v19);
  v56 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761880, &qword_1D33E3348);
  v21 = MEMORY[0x1E695BED8];
  sub_1D334CB54(&unk_1EDEBEFC8, &unk_1EC761880, &qword_1D33E3348, MEMORY[0x1E695BED8]);
  sub_1D33DE624();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761890, &qword_1D33E3350);
  v40 = MEMORY[0x1E695BD38];
  sub_1D334CB54(&qword_1EDEBF048, &qword_1EC761850, &qword_1D33E3318, MEMORY[0x1E695BD38]);
  v22 = v41;
  sub_1D33DE5D4();

  (*(v3 + 8))(v5, v22);
  v23 = MEMORY[0x1E695BD60];
  v24 = sub_1D334CB54(&qword_1EDEBF030, &qword_1EC761858, &qword_1D33E3320, MEMORY[0x1E695BD60]);
  v25 = sub_1D334CB54(&unk_1EDEBEFB8, &unk_1EC761890, &qword_1D33E3350, v21);
  v26 = v42;
  MEMORY[0x1D38B6CC0](v42, v24, v25);
  (*(v43 + 8))(v9, v26);
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v27 = sub_1D33DEB94();
  v56 = v27;
  v28 = sub_1D33DEB34();
  v29 = v49;
  (*(*(v28 - 8) + 56))(v49, 1, 1, v28);
  sub_1D334CB54(&qword_1EDEBF050, &qword_1EC761860, &qword_1D33E3328, MEMORY[0x1E695BD00]);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v30 = v44;
  v31 = v47;
  sub_1D33DE604();
  sub_1D331E880(v29, &qword_1EC760F20, &qword_1D33E2290);

  (*(v48 + 8))(v13, v31);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7618A0, &qword_1D33E3358);
  sub_1D334CB54(&qword_1EDEBEFD8, &qword_1EC761868, &qword_1D33E3330, MEMORY[0x1E695BE98]);
  v32 = v45;
  v33 = v50;
  sub_1D33DE5D4();

  (*(v54 + 8))(v30, v33);
  sub_1D334CB54(&unk_1EDEBF020, &qword_1EC761870, &qword_1D33E3338, v23);
  sub_1D3324CE0();
  v34 = v46;
  v35 = v53;
  sub_1D33DE624();
  (*(v55 + 8))(v32, v35);
  sub_1D334CB54(&qword_1EDEBF038, &qword_1EC761878, &qword_1D33E3340, v40);
  v36 = v51;
  v37 = sub_1D33DE5A4();
  (*(v52 + 8))(v34, v36);
  return v37;
}

uint64_t sub_1D33247A0()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D33247D8()
{
  if (sub_1D33DE9F4())
  {
    v1 = v0[1];

    return v1(0, 1);
  }

  else
  {
    v3 = v0[2];
    v4 = *v3;
    v0[3] = *v3;

    return MEMORY[0x1EEE6DFA0](sub_1D3324D94, v4, 0);
  }
}

uint64_t sub_1D3324880(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v4 + 136);
  if (v5 < 1)
  {
    if (*(v3 + 32) > 0)
    {
      return (*(v3 + 8))(0, 1);
    }
  }

  else
  {
    if (v5 > 0x14)
    {
      v6 = ceil(v5 / 20.0);
      if (v6 == INFINITY)
      {
        __break(1u);
      }

      else if (v6 > -9.22337204e18)
      {
        if (v6 < 9.22337204e18)
        {
          if (*(v3 + 32) <= v6)
          {
            goto LABEL_11;
          }

          return (*(v3 + 8))(0, 1);
        }

LABEL_14:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](a1, v4, a3);
      }

      __break(1u);
      goto LABEL_14;
    }

    if (*(v3 + 32) > 1)
    {
      return (*(v3 + 8))(0, 1);
    }
  }

LABEL_11:
  a1 = sub_1D3324CAC;
  a3 = 0;
  return MEMORY[0x1EEE6DFA0](a1, v4, a3);
}

uint64_t sub_1D332494C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v18 = v0[11];
  v6 = v0[8];
  v7 = (v6 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
  os_unfair_lock_lock((v6 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360);
  (*(v1 + 16))(v2, v7 + *(v8 + 28), v4);
  os_unfair_lock_unlock(v7);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D80, &qword_1D33E1980) + 48);
  v10 = *MEMORY[0x1E699BF50];
  v11 = sub_1D33DE1E4();
  (*(*(v11 - 8) + 104))(v3, v10, v11);
  v12 = *MEMORY[0x1E699BF60];
  v13 = sub_1D33DE234();
  (*(*(v13 - 8) + 104))(v3 + v9, v12, v13);
  (*(v5 + 104))(v3, *MEMORY[0x1E699BFB8], v18);
  v0[5] = MEMORY[0x1E69E7CC0];
  sub_1D331FE94(&qword_1EDEBF060, MEMORY[0x1E699BF10], MEMORY[0x1E699BF18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D88, &qword_1D33E1988);
  sub_1D334CB54(&unk_1EDEBEF38, &qword_1EC760D88, &qword_1D33E1988, MEMORY[0x1E69E6328]);
  sub_1D33DED64();
  sub_1D33DE2C4();
  swift_getKeyPath();
  v0[6] = v6;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDED4();

  v14 = (v6 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController);
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_1D33257C8;
  v16 = v0[19];

  return MEMORY[0x1EEE03BF8](v16);
}

uint64_t sub_1D3324CAC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 128);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 128) = v4;
    return (*(v0 + 8))(*(v0 + 32), 0);
  }

  return result;
}

unint64_t sub_1D3324CE0()
{
  result = qword_1EDEBEF48;
  if (!qword_1EDEBEF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7618A0, &qword_1D33E3358);
    sub_1D33927E0(&qword_1EDEBFD10, type metadata accessor for RecentsItem, &protocol conformance descriptor for RecentsItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEF48);
  }

  return result;
}

uint64_t sub_1D3324D94()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = *(v1 + 128);
  return MEMORY[0x1EEE6DFA0](sub_1D3324880, v1, 0);
}

Swift::Void __swiftcall RecentsItemDataSource.resume()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_1D33DE3B4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  v12 = &v0[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loading];
  os_unfair_lock_lock(v12);
  os_unfair_lock_opaque_low = LOBYTE(v12[1]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v12);
  if (os_unfair_lock_opaque_low != 1)
  {
    os_unfair_lock_lock(v12);
    LOBYTE(v12[1]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v12);
    if (qword_1EDEBF088 != -1)
    {
      swift_once();
    }

    v14 = sub_1D33DE3E4();
    __swift_project_value_buffer(v14, qword_1EDEC1458);
    sub_1D33DE3A4();
    v15 = sub_1D33DE3D4();
    v16 = sub_1D33DEC04();
    if (sub_1D33DECC4())
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_1D33DE394();
      _os_signpost_emit_with_name_impl(&dword_1D331A000, v15, v16, v18, "RecentsItemDataSource loading", "", v17, 2u);
      MEMORY[0x1D38B81C0](v17, -1, -1);
    }

    (*(v6 + 16))(v9, v11, v5);
    sub_1D33DE424();
    swift_allocObject();
    v19 = sub_1D33DE414();
    (*(v6 + 8))(v11, v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v39 - 2) = v1;
    *(&v39 - 1) = v19;
    *&v46[0] = v1;
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
    sub_1D33DDEC4();

    v21 = sub_1D33DE9B4();
    v22 = *(*(v21 - 8) + 56);
    v22(v4, 1, 1, v21);
    sub_1D33DE974();
    v23 = v1;
    v24 = sub_1D33DE964();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v23;
    sub_1D333DD88(0, 0, v4, &unk_1D33E33B8, v25);

    sub_1D338CF6C();
    v44[0] = *&v23[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration];
    v28 = *&v23[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32];
    v27 = *&v23[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48];
    v29 = *&v23[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16];
    v45 = *&v23[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 64];
    v44[2] = v28;
    v44[3] = v27;
    v44[1] = v29;
    v30 = *&v23[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48];
    v41 = *&v23[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32];
    v42 = v30;
    v43 = *&v23[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 64];
    v31 = *&v23[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration];
    v40 = *&v23[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16];
    v39 = v31;
    sub_1D3322888(v44, v46);
    sub_1D33260C0();
    v46[2] = v41;
    v46[3] = v42;
    v47 = v43;
    v46[0] = v39;
    v46[1] = v40;
    sub_1D3321A50(v46);
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v32 = sub_1D33DE464();
    __swift_project_value_buffer(v32, qword_1EDEC1480);
    v33 = sub_1D33DE444();
    v34 = sub_1D33DEAF4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D331A000, v33, v34, "Updating: Creating fallback task", v35, 2u);
      MEMORY[0x1D38B81C0](v35, -1, -1);
    }

    v22(v4, 1, 1, v21);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v36;
    v38 = sub_1D3387F00(0, 0, v4, &unk_1D33E33C8, v37);
    sub_1D331E880(v4, &unk_1EC7610E0, &qword_1D33E16C0);
    *&v23[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_loadingFallbackTask] = v38;
  }
}

uint64_t sub_1D332540C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D3325488(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = *(type metadata accessor for RecentsItem(0) - 8);
  v2[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_1D3325A18;

  return sub_1D3325578(a1);
}

uint64_t sub_1D3325578(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = sub_1D33DE1D4();
  v2[10] = swift_task_alloc();
  v3 = sub_1D33DE2B4();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_1D33DE2F4();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_1D33DE2D4();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D332494C, 0, 0);
}

uint64_t sub_1D3325720(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D33257C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_1D3342F7C;
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = sub_1D33258F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D33258F0()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];
  v2 = v0[22];

  return v1(v2);
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1D3325A18(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 48) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D3325B68, 0, 0);
  }
}

uint64_t sub_1D3325B68()
{
  v1 = v0[6];
  v21 = MEMORY[0x1D38B7A70]();
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v3 = 0;
    v4 = v0[3];
    v22 = v0[2];
    v23 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_callProviderManager;
    v24 = v1 & 0xFFFFFFFFFFFFFF8;
    v25 = v1 & 0xC000000000000001;
    v5 = v0[6] + 32;
    v1 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v25)
      {
        v6 = MEMORY[0x1D38B75D0](v3, v0[6]);
      }

      else
      {
        if (v3 >= *(v24 + 16))
        {
          goto LABEL_16;
        }

        v6 = *(v5 + 8 * v3);
      }

      v7 = v6;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v9 = v0[4];
      v10 = *(v22 + v23);
      v11 = v10;
      RecentsItem.init(message:callProviderManager:)(v7, v10, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1D33226AC(0, *(v1 + 16) + 1, 1, v1);
      }

      v13 = *(v1 + 16);
      v12 = *(v1 + 24);
      if (v13 >= v12 >> 1)
      {
        v1 = sub_1D33226AC((v12 > 1), v13 + 1, 1, v1);
      }

      v14 = v0[4];
      *(v1 + 16) = v13 + 1;
      sub_1D33302BC(v14, v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13);
      ++v3;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_19:

  objc_autoreleasePoolPop(v21);
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v15 = sub_1D33DE464();
  __swift_project_value_buffer(v15, qword_1EDEC1480);
  v16 = sub_1D33DE444();
  v17 = sub_1D33DEAD4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D331A000, v16, v17, "Updating: Media message call items updated", v18, 2u);
    MEMORY[0x1D38B81C0](v18, -1, -1);
  }

  v19 = v0[1];

  return v19(v1);
}

uint64_t sub_1D3325E48()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D3325F7C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1D33260C0()
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[6];
  if (v3 && *(v3 + 52) == 1)
  {

    sub_1D3352F40(v4);
    sub_1D33537C8();
    out_token = 0;
    v5 = *MEMORY[0x1E6999328];
    sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
    v6 = sub_1D33DEB94();
    v7 = swift_allocObject();
    swift_weakInit();
    v9[4] = sub_1D3353F2C;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1D3351608;
    v9[3] = &block_descriptor_137;
    v8 = _Block_copy(v9);

    LODWORD(v5) = notify_register_dispatch(v5, &out_token, v6, v8);
    _Block_release(v8);

    if (!v5 && out_token)
    {
      *(v3 + 48) = out_token;
      *(v3 + 52) = 0;
    }
  }

  if (v2)
  {
    sub_1D335716C();
  }

  if (v1)
  {
    sub_1D33220A8();
  }
}

uint64_t sub_1D3326268()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D332632C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D33263E0(a1, v4, v5, v6);
}

uint64_t sub_1D3326400()
{
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_1EDEC1480);
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D331A000, v2, v3, "Updating: Starting fallback task", v4, 2u);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_1D332CD18;

  return MEMORY[0x1EEE6DA60](500000000);
}

uint64_t RecentsItemDataSource.allRecentsItems.getter()
{
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
  sub_1D33DDED4();
}

uint64_t sub_1D3326634()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761908, &qword_1D33E36F8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D3326664()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761910, &qword_1D33E3700);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D3326694()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761918, &qword_1D33E3708);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D33266C4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761920, &unk_1D33E3710);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t RecentsItem.init(message:callProviderManager:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v115 = &v94 - v6;
  v7 = type metadata accessor for ReminderStatus(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D33DE324();
  v112 = *(v10 - 8);
  v113 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D98, &qword_1D33E1A88);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v111 = &v94 - v13;
  v14 = sub_1D33DDDB4();
  v110 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RecentsItem(0);
  v17 = (a3 + v16[9]);
  *v17 = 0;
  v17[1] = 0;
  v95 = v17;
  v18 = (a3 + v16[10]);
  *v18 = 0;
  v18[1] = 0;
  v96 = v18;
  v19 = v16[11];
  v114 = v8;
  v20 = *(v8 + 56);
  v104 = v19;
  v116 = v7;
  v106 = v8 + 56;
  v105 = v20;
  v20(a3 + v19, 1, 1, v7);
  v21 = sub_1D33DE154();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v37 = [objc_opt_self() bundleForClass_];
    v31 = sub_1D33DDB74();
    v33 = v38;

    v34 = 0;
    goto LABEL_21;
  }

  sub_1D33DE154();
  v25 = objc_opt_self();
  v26 = sub_1D33DE784();

  v27 = &selRef_setOriginatingUIType_;
  v28 = [v25 normalizedHandleWithDestinationID_];

  v102 = v14;
  v101 = v16;
  if (v28)
  {
    if (qword_1EDEC0138 != -1)
    {
      swift_once();
    }

    v29 = [v28 value];
    if (!v29)
    {
      sub_1D33DE7B4();
      v29 = sub_1D33DE784();
    }

    v30 = [v29 destinationIdIsTemporary];

    if (!v30)
    {

      ParticipantContactDetails.init(handle:cache:)(v28, v118);
      v34 = v118[0];
      v31 = v118[1];
      v33 = v118[2];
      v108 = v118[3];
      v100 = v118[4];
      v99 = v118[5];
      v98 = v118[6];

      v97 = v31;
      v35 = v33;
      v27 = &selRef_setOriginatingUIType_;
      goto LABEL_14;
    }

    v27 = &selRef_setOriginatingUIType_;
  }

  v31 = sub_1D33DE154();
  v33 = v32;
  v34 = 0;
  v97 = 0;
  v35 = 0;
  v108 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
LABEL_14:
  sub_1D33DE154();
  v39 = sub_1D33DE784();

  v40 = [v25 v27[24]];

  if (!v40)
  {
    sub_1D33DE154();
    v41 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
    v42 = sub_1D33DE784();

    v40 = [v41 initWithType:1 value:v42];
  }

  v16 = v101;
  if (v35 && v34)
  {
    v43 = v34;
    sub_1D332900C(v34, v97, v35, v108, v100, v99, v98);
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
    sub_1D332900C(v34, v97, v35, v108, v100, v99, v98);

    v34 = v44;
  }

  v14 = v102;
LABEL_21:
  *(a3 + 48) = v31;
  *(a3 + 56) = v33;
  sub_1D33DE0F4();
  v45 = sub_1D33DE1F4();
  if (v45 != sub_1D33DE1F4())
  {
    if (sub_1D33DE1A4() == 0xD00000000000003BLL && 0x80000001D33E7290 == v46)
    {
    }

    else
    {
      sub_1D33DF1B4();
    }
  }

  type metadata accessor for BundleClass();
  v47 = swift_getObjCClassFromMetadata();
  v48 = [objc_opt_self() bundleForClass_];
  v49 = sub_1D33DDB74();
  v51 = v50;

  *(a3 + 64) = v49;
  *(a3 + 72) = v51;
  v52 = sub_1D33DE134();
  if (v52)
  {
    v53 = v52;
    if (v117)
    {
      v54 = [v117 telephonyProvider];
      v55 = [v54 senderIdentityForHandle_];

      if (v55)
      {
        v56 = [v55 localizedShortName];

        v55 = sub_1D33DE7B4();
        v58 = v57;

        goto LABEL_34;
      }
    }

    else
    {

      v55 = 0;
    }
  }

  else
  {
    v55 = 0;
  }

  v58 = 0;
LABEL_34:
  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 2;
  v119 = v34;
  v59 = MEMORY[0x1E69E7CC0];
  v118[0] = MEMORY[0x1E69E7CC0];
  v60 = a1;
  v61 = v34;
  v108 = v61;
  if (v34)
  {
    v62 = v61;
    MEMORY[0x1D38B6F20]();
    if (*((v118[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D33DE8D4();
    }

    sub_1D33DE8F4();
    v59 = v118[0];
  }

  sub_1D331E880(&v119, &qword_1EC761A88, &unk_1D33E3F88);
  *(a3 + 40) = v59;
  v63 = a3 + v16[8];
  v64 = v109;
  sub_1D33DE0B4();
  v65 = sub_1D33DDD54();
  v67 = v66;
  (*(v110 + 8))(v64, v14);
  v68 = type metadata accessor for CallInfo(0);
  sub_1D33DE0C4();
  sub_1D33DE194();
  v70 = v69;
  sub_1D33DE0D4();
  v71 = sub_1D33DE304();
  v72 = v71 == sub_1D33DE304();
  *v63 = v65;
  *(v63 + 8) = v67;
  *(v63 + 16) = 1;
  *(v63 + v68[7]) = 1;
  v73 = (v63 + v68[8]);
  *v73 = v55;
  v73[1] = v58;
  *(v63 + v68[9]) = 0;
  *(v63 + v68[10]) = v70;
  *(v63 + v68[11]) = 0;
  *(v63 + v68[12]) = v72;
  *(v63 + v68[13]) = 0;
  (*(*(v68 - 1) + 56))(v63, 0, 1, v68);
  v74 = v111;
  sub_1D33DE174();
  v76 = v112;
  v75 = v113;
  if ((*(v112 + 48))(v74, 1, v113))
  {
    sub_1D331E880(v74, &qword_1EC760D98, &qword_1D33E1A88);
  }

  else
  {
    v77 = v103;
    (*(v76 + 16))(v103, v74, v75);
    sub_1D331E880(v74, &qword_1EC760D98, &qword_1D33E1A88);
    v78 = sub_1D33DE314();
    v80 = v79;
    (*(v76 + 8))(v77, v75);
    v81 = HIBYTE(v80) & 0xF;
    if ((v80 & 0x2000000000000000) == 0)
    {
      v81 = v78 & 0xFFFFFFFFFFFFLL;
    }

    if (v81)
    {
      v82 = v95;
      *v95 = v78;
      v82[1] = v80;
    }

    else
    {
    }
  }

  v83 = sub_1D33DE144();
  v85 = v84;

  v86 = HIBYTE(v85) & 0xF;
  if ((v85 & 0x2000000000000000) == 0)
  {
    v86 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (v86)
  {
    v87 = v96;
    *v96 = v83;
    v87[1] = v85;
  }

  else
  {
  }

  v89 = v115;
  v88 = v116;
  RecentsItem.getReminderStatus()(v115);

  if ((*(v114 + 48))(v89, 1, v88) == 1)
  {
    return sub_1D331E880(v89, &unk_1EC761320, &unk_1D33E28D0);
  }

  v91 = v89;
  v92 = v107;
  sub_1D33A7100(v91, v107, type metadata accessor for ReminderStatus);
  v93 = v104;
  sub_1D331E880(a3 + v104, &unk_1EC761320, &unk_1D33E28D0);
  sub_1D33A7100(v92, a3 + v93, type metadata accessor for ReminderStatus);
  return v105(a3 + v93, 0, 1, v88);
}

uint64_t sub_1D3327424()
{
  v0 = TUPreferredFaceTimeBundleIdentifier();
  if (!v0)
  {
    sub_1D33DE7B4();
    v0 = sub_1D33DE784();
  }

  v1 = [objc_opt_self() tu:v0 contactStoreConfigurationForBundleIdentifier:?];

  v2 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  type metadata accessor for ParticipantContactDetailsCache();
  v3 = swift_allocObject();
  result = sub_1D3327504(v2);
  qword_1EDEC0110 = v3;
  return result;
}

uint64_t sub_1D3327504(void *a1)
{
  v2 = v1;
  v4 = sub_1D33DEC24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v8 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v2 + 32) = 0;
  *(v2 + 40) = v8;
  *(v2 + 16) = a1;
  v9 = objc_opt_self();
  v10 = a1;
  v11 = [v9 defaultCenter];
  sub_1D33DEC34();

  swift_allocObject();
  swift_weakInit();
  sub_1D33276F4();
  v12 = sub_1D33DE644();

  (*(v5 + 8))(v7, v4);
  *(v2 + 24) = v12;

  return v2;
}

uint64_t sub_1D33276BC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1D33276F4()
{
  result = qword_1EDEC0050;
  if (!qword_1EDEC0050)
  {
    sub_1D33DEC24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC0050);
  }

  return result;
}

uint64_t ParticipantContactDetails.init(handle:cache:)@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  sub_1D332786C(a1, 0, 0, v17);
  v5 = v17[0];
  v6 = v17[2];
  v15 = v17[3];
  v16 = v17[1];
  v7 = v17[4];
  v14 = v17[0];

  v9 = MEMORY[0x1D38B7A70](v8);
  sub_1D3328D7C(v5, v17);
  objc_autoreleasePoolPop(v9);
  sub_1D3328AF4();
  v10 = sub_1D33DED14();
  v12 = v11;

  *a3 = v5;
  a3[1] = v16;
  a3[2] = v6;
  a3[3] = v15;
  a3[4] = v7;
  a3[5] = v10;
  a3[6] = v12;
  return result;
}

void sub_1D332786C(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v186 = a3;
  v181 = a2;
  v8 = sub_1D33DDBC4();
  v179 = *(v8 - 8);
  v180 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v178 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D33DDAA4();
  v176 = *(v10 - 8);
  v177 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v175 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 value];
  v13 = sub_1D33DE7B4();
  v15 = v14;

  v189 = v13;
  v190 = v15;
  v16 = sub_1D3328AF4();
  sub_1D33DED04();
  v17 = sub_1D33DE784();

  os_unfair_lock_lock((v5 + 32));
  v18 = *(v5 + 40);
  os_unfair_lock_unlock((v5 + 32));
  v19 = [v18 objectForKey_];

  v184 = a4;
  v185 = v17;
  v182 = v5;
  v183 = v16;
  if (v19)
  {
    v174 = a1;
    v20 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details];
    v21 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 8];
    v22 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 16];
    v173 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 24];
    v24 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 32];
    v23 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 40];
    v25 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 48];
    v26 = v20;

    v27 = v24;

    v28 = v21;
    v29 = sub_1D33DE784();
    LODWORD(v24) = [v29 destinationIdIsTemporary];

    if (!v24 || !v186)
    {

      v33 = v173;
      v32 = v27;
      v49 = v22;
      a4 = v184;
LABEL_83:
      *a4 = v20;
      a4[1] = v28;
      a4[2] = v49;
      a4[3] = v33;
      a4[4] = v32;
      a4[5] = v23;
      a4[6] = v25;
      return;
    }

    a4 = v184;
    v5 = v182;
    a1 = v174;
  }

  v30 = [a1 value];
  if (!v30)
  {
    sub_1D33DE7B4();
    v30 = sub_1D33DE784();
  }

  v31 = [v30 destinationIdIsPseudonym];

  if (v31)
  {
    if (v186)
    {
      v32 = v186;
      v33 = v181;
      v28 = v181;
      v177 = v186;
    }

    else
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v51 = objc_opt_self();
      v52 = [v51 bundleForClass_];
      v28 = sub_1D33DDB74();
      v177 = v53;

      v54 = [v51 bundleForClass_];
      v33 = sub_1D33DDB74();
      v32 = v55;
    }

    v56 = swift_bridgeObjectRetain_n();
    v57 = MEMORY[0x1D38B7A70](v56);
    v58 = v178;
    sub_1D33DDBB4();
    sub_1D33DDB84();
    sub_1D33DDB94();
    if (qword_1EDEC0130 != -1)
    {
      swift_once();
    }

    v59 = qword_1EDEC1498;
    v60 = sub_1D33DDBA4();
    v61 = v58;
    v62 = [v59 stringFromPersonNameComponents_];

    v63 = sub_1D33DE7B4();
    v65 = v64;

    (v179)[1](v61, v180);
    objc_autoreleasePoolPop(v57);
    v189 = v63;
    v190 = v65;
    v23 = sub_1D33DED14();
    v25 = v66;

    v20 = 0;
    v49 = v177;
    goto LABEL_83;
  }

  v34 = *(v5 + 16);
  v35 = [a1 value];
  if (!v35)
  {
    sub_1D33DE7B4();
    v35 = sub_1D33DE784();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D33E1DE0;
  *(v36 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v37 = sub_1D33DE8A4();

  v38 = [v34 contactForDestinationId:v35 keysToFetch:v37];

  if (v38)
  {
    v180 = v38;
    v179 = v38;
    v39 = [v179 displayName];
    if (v39)
    {
      v40 = v39;
      v41 = sub_1D33DE7B4();
      v43 = v42;

      v189 = v41;
      v190 = v43;
      v44 = v175;
      sub_1D33DDA94();
      v186 = sub_1D33DED24();
      v46 = v45;
      v47 = v176;
      v48 = v177;
      (*(v176 + 8))(v44, v177);
    }

    else
    {
      v186 = 0;
      v46 = 0xE000000000000000;
      v47 = v176;
      v48 = v177;
      v44 = v175;
    }

    v81 = v179;
    v82 = [v179 givenName];

    v83 = sub_1D33DE7B4();
    v85 = v84;

    v189 = v83;
    v190 = v85;
    sub_1D33DDA94();
    v86 = sub_1D33DED24();
    v88 = v87;
    (*(v47 + 8))(v44, v48);

    v177 = v46;
    v178 = v88;
    if ((v46 & 0x2000000000000000) != 0)
    {
      v89 = HIBYTE(v46) & 0xF;
    }

    else
    {
      v89 = v186 & 0xFFFFFFFFFFFFLL;
    }

    if ((v88 & 0x2000000000000000) != 0)
    {
      v90 = HIBYTE(v88) & 0xF;
    }

    else
    {
      v90 = v86 & 0xFFFFFFFFFFFFLL;
    }

    if ([a1 type] == 2)
    {
      v91 = [a1 value];
      v92 = v180;
      if (!v91)
      {
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v93 = v91;
      v94 = PNCopyBestGuessCountryCodeForNumber();

      if (v94)
      {
        v174 = a1;
        v95 = [a1 value];
        if (v95)
        {
          v96 = v95;
          v97 = CFPhoneNumberCreate();

          if (v97)
          {
            String = CFPhoneNumberCreateString();
            if (String)
            {
              v99 = String;
              v181 = sub_1D33DE7B4();
              v101 = v100;

              v92 = v180;
              goto LABEL_64;
            }
          }

          v181 = 0;
          v101 = 0;
LABEL_64:
          a1 = v174;
          if (v89)
          {
            goto LABEL_65;
          }

LABEL_54:

          if (v90)
          {

            v49 = v178;

            v125 = v86;
            v28 = v86;
          }

          else
          {

            if (v101)
            {
              if (qword_1EDEBFD70 != -1)
              {
                swift_once();
              }

              v126 = sub_1D33DE464();
              __swift_project_value_buffer(v126, qword_1EDEC1480);
              v127 = v179;
              v128 = sub_1D33DE444();
              v129 = sub_1D33DEAF4();

              if (os_log_type_enabled(v128, v129))
              {
                v130 = swift_slowAlloc();
                v131 = swift_slowAlloc();
                v189 = v131;
                *v130 = 136315138;
                v187 = v127;
                sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
                v132 = v127;
                v133 = sub_1D33DE804();
                v135 = sub_1D3328B48(v133, v134, &v189);

                *(v130 + 4) = v135;
                _os_log_impl(&dword_1D331A000, v128, v129, "Could not find display name or given name for contact %s, displaying phone number instead", v130, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v131);
                MEMORY[0x1D38B81C0](v131, -1, -1);
                MEMORY[0x1D38B81C0](v130, -1, -1);
              }

              v113 = v101;
              v79 = v180;
              v28 = v181;
              v125 = v181;
              v49 = v101;
              v20 = v180;
              v124 = v182;
              goto LABEL_82;
            }

            v174 = a1;
            if (qword_1EDEBFD70 != -1)
            {
              swift_once();
            }

            v136 = sub_1D33DE464();
            __swift_project_value_buffer(v136, qword_1EDEC1480);
            v137 = v179;
            v138 = sub_1D33DE444();
            v139 = sub_1D33DEAF4();

            if (os_log_type_enabled(v138, v139))
            {
              v140 = swift_slowAlloc();
              v141 = swift_slowAlloc();
              v189 = v141;
              *v140 = 136315138;
              v187 = v137;
              sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
              v142 = v137;
              v143 = sub_1D33DE804();
              v145 = sub_1D3328B48(v143, v144, &v189);

              *(v140 + 4) = v145;
              v92 = v180;
              _os_log_impl(&dword_1D331A000, v138, v139, "Could not find display name or given name for contact %s, displaying raw handle instead", v140, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v141);
              MEMORY[0x1D38B81C0](v141, -1, -1);
              MEMORY[0x1D38B81C0](v140, -1, -1);
            }

            v146 = [v174 value];
            v28 = sub_1D33DE7B4();
            v49 = v147;

            v125 = v28;
          }

          goto LABEL_68;
        }

        goto LABEL_87;
      }

      v181 = 0;
      v101 = 0;
      if (!v89)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v181 = 0;
      v101 = 0;
      v92 = v180;
      if (!v89)
      {
        goto LABEL_54;
      }
    }

LABEL_65:

    if (v90)
    {
      v125 = v86;
      v20 = v92;
      v79 = v92;
      v124 = v182;
      v49 = v177;
      v113 = v178;
      v28 = v186;
LABEL_82:
      v186 = v79;
      v161 = MEMORY[0x1D38B7A70]();
      sub_1D3328D7C(v20, &v189);
      objc_autoreleasePoolPop(v161);
      v23 = sub_1D33DED14();
      v25 = v162;

      os_unfair_lock_lock((v124 + 32));
      v163 = *(v124 + 40);
      os_unfair_lock_unlock((v124 + 32));
      v164 = type metadata accessor for ParticipantContactDetailsCache.BoxedDetails();
      v165 = objc_allocWithZone(v164);
      v166 = &v165[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details];
      *v166 = v20;
      *(v166 + 1) = v28;
      *(v166 + 2) = v49;
      *(v166 + 3) = v125;
      v167 = v113;
      *(v166 + 4) = v113;
      *(v166 + 5) = v23;
      *(v166 + 6) = v25;
      v188.receiver = v165;
      v188.super_class = v164;
      v168 = v20;

      v169 = objc_msgSendSuper2(&v188, sel_init);
      v170 = v185;
      [v163 setObject:v169 forKey:v185];

      v171 = v186;
      v33 = v125;
      v32 = v167;
      a4 = v184;
      goto LABEL_83;
    }

    v49 = v177;

    v125 = v186;
    v28 = v186;
LABEL_68:
    v113 = v49;
    v20 = v92;
    v79 = v92;
    v124 = v182;
    goto LABEL_82;
  }

  v67 = v186;
  if (v186)
  {
    v68 = qword_1EDEBFD70;

    if (v68 != -1)
    {
      swift_once();
    }

    v69 = sub_1D33DE464();
    __swift_project_value_buffer(v69, qword_1EDEC1480);
    v70 = a1;
    v71 = sub_1D33DE444();
    v72 = sub_1D33DEAF4();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v189 = v74;
      *v73 = 136315138;
      v187 = v70;
      sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
      v180 = 0;
      v75 = v70;
      v76 = sub_1D33DE804();
      v78 = sub_1D3328B48(v76, v77, &v189);

      *(v73 + 4) = v78;
      v79 = v180;
      _os_log_impl(&dword_1D331A000, v71, v72, "Could not find contact for handle %s, displaying nickname instead", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      v80 = v74;
      v67 = v186;
      MEMORY[0x1D38B81C0](v80, -1, -1);
      MEMORY[0x1D38B81C0](v73, -1, -1);
    }

    else
    {
      v79 = 0;
    }

    v20 = 0;
    v113 = v67;
    v28 = v181;
    v124 = v182;
    v125 = v181;
    v49 = v67;
    goto LABEL_82;
  }

  v102 = [a1 type];
  v103 = &off_1E843B000;
  v180 = 0;
  if (v102 != 2)
  {
    goto LABEL_76;
  }

  v104 = [a1 value];
  if (!v104)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v105 = v104;
  v106 = PNCopyBestGuessCountryCodeForNumber();

  if (!v106)
  {
LABEL_76:
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v148 = sub_1D33DE464();
    __swift_project_value_buffer(v148, qword_1EDEC1480);
    v149 = a1;
    v150 = sub_1D33DE444();
    v151 = sub_1D33DEAF4();

    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v189 = v153;
      *v152 = 136315138;
      v187 = v149;
      sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
      v154 = v149;
      v155 = sub_1D33DE804();
      v157 = sub_1D3328B48(v155, v156, &v189);

      *(v152 + 4) = v157;
      v124 = v5;
      _os_log_impl(&dword_1D331A000, v150, v151, "Could not find contact for handle %s, displaying raw handle instead", v152, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v153);
      MEMORY[0x1D38B81C0](v153, -1, -1);
      v158 = v152;
      v103 = &off_1E843B000;
      MEMORY[0x1D38B81C0](v158, -1, -1);
    }

    else
    {
      v124 = v5;
    }

    v159 = [v149 v103[445]];
    v28 = sub_1D33DE7B4();
    v49 = v160;

    v20 = 0;
    v125 = v28;
    v113 = v49;
    v79 = v180;
    goto LABEL_82;
  }

  v107 = [a1 value];
  if (v107)
  {
    v108 = v107;
    v109 = CFPhoneNumberCreate();

    if (v109)
    {
      v110 = CFPhoneNumberCreateString();
      if (v110)
      {
        v111 = v110;
        v28 = sub_1D33DE7B4();
        v113 = v112;

        if (qword_1EDEBFD70 != -1)
        {
          swift_once();
        }

        v114 = sub_1D33DE464();
        __swift_project_value_buffer(v114, qword_1EDEC1480);
        v115 = a1;
        v116 = sub_1D33DE444();
        v117 = sub_1D33DEAF4();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v189 = v119;
          *v118 = 136315138;
          v187 = v115;
          sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
          v120 = v115;
          v121 = sub_1D33DE804();
          v123 = sub_1D3328B48(v121, v122, &v189);

          *(v118 + 4) = v123;
          v79 = v180;
          _os_log_impl(&dword_1D331A000, v116, v117, "Could not find contact for handle %s, displaying formatted phone number instead", v118, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v119);
          MEMORY[0x1D38B81C0](v119, -1, -1);
          MEMORY[0x1D38B81C0](v118, -1, -1);
        }

        else
        {
          v79 = 0;
        }

        v49 = v113;

        v20 = 0;
        v125 = v28;
        v124 = v182;
        goto LABEL_82;
      }
    }

    goto LABEL_76;
  }

LABEL_89:
  __break(1u);
}

unint64_t sub_1D3328AF4()
{
  result = qword_1EDEC0058[0];
  if (!qword_1EDEC0058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEC0058);
  }

  return result;
}

unint64_t sub_1D3328B48(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D3328C14(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D3328D20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1D3328C14(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D334A600(a5, a6);
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
    result = sub_1D33DEF64();
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

uint64_t sub_1D3328D20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D3328D7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D33DDBC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D33DDBB4();
  if (a1)
  {
    v8 = [a1 givenName];
    sub_1D33DE7B4();

    sub_1D33DDB84();
    v9 = [a1 familyName];
    sub_1D33DE7B4();
  }

  else
  {
    sub_1D33DDB84();
  }

  sub_1D33DDB94();
  if (qword_1EDEC0130 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDEC1498;
  v11 = sub_1D33DDBA4();
  v12 = [v10 stringFromPersonNameComponents_];

  v13 = sub_1D33DE7B4();
  v15 = v14;

  result = (*(v5 + 8))(v7, v4);
  *a2 = v13;
  a2[1] = v15;
  return result;
}

id sub_1D3328F74()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  result = [v0 setStyle_];
  qword_1EDEC1498 = v0;
  return result;
}

void sub_1D332900C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }
}

uint64_t sub_1D3329070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D33290D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D3329140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FavoritesDataSource.$favorites.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  (*(v2 + 16))(&v7 - v3, v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v1);
  v5 = sub_1D33DDF74();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t FavoritesDataSource.favorites.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - v3;
  (*(v2 + 16))(v6 - v3, v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v1);
  sub_1D33DDF54();
  (*(v2 + 8))(v4, v1);
  return v6[1];
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_1D33293BC()
{
  result = qword_1EDEBFC58;
  if (!qword_1EDEBFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBFC58);
  }

  return result;
}

uint64_t sub_1D3329468(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1D33294AC()
{
  sub_1D3329690(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A60, &unk_1D33E3D90);
  swift_allocObject();
  result = sub_1D33DF2D4();
  qword_1EDEBF068 = result;
  return result;
}

uint64_t sub_1D3329514()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  result = v2 + 32;
  v4 = -*(v2 + 16);
  v5 = -1;
  while (1)
  {
    if (v4 + v5 == -1)
    {
      return 1;
    }

    if (++v5 >= *(v2 + 16))
    {
      break;
    }

    v6 = result + 40;
    sub_1D3325720(result, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = (*(v8 + 40))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    result = v6;
    if ((v9 & 1) == 0)
    {
      swift_getKeyPath();
      v10[0] = v1;
      sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
      sub_1D33DDED4();

      return *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D3329690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761418, &qword_1D33E2970);
    v3 = sub_1D33DF124();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D33B95E4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D3329770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a1 + 16) && (v6 = sub_1D33B95E4(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a1 + 56) + v6);
  }

  else
  {
    v10[3] = a2;
    v10[4] = a3();
    v8 = sub_1D33DDF24();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return v8 & 1;
}

unint64_t sub_1D33297F0()
{
  result = qword_1EDEBF538;
  if (!qword_1EDEBF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBF538);
  }

  return result;
}

uint64_t sub_1D332986C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D33298BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

void *sub_1D3329904(uint64_t a1)
{
  v73 = sub_1D33DDDB4();
  v2 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D3329EE4(MEMORY[0x1E69E7CC0]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v70 = a1;
    v71 = (v2 + 8);
    v6 = (a1 + 72);
    v76 = v5;
    while (1)
    {
      v8 = *(v6 - 4);
      v7 = *(v6 - 3);
      v9 = *v6;
      v75 = *(v6 - 1);

      v10 = v9;
      v77 = v8;

      v74 = v7;
      v11 = [v10 contactProperty];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 contact];

        v14 = [v13 identifier];
        v15 = sub_1D33DE7B4();
        v17 = v16;

        v18 = MEMORY[0x1D38B6F00](v15, v17);
      }

      else
      {
        v19 = v72;
        sub_1D33DDDA4();
        v18 = sub_1D33DDD94();
        (*v71)(v19, v73);
      }

      v20 = [v10 actionType];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v4;
      v23 = sub_1D3329FDC(v18, v20);
      v24 = v4[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        result = sub_1D33DF1E4();
        __break(1u);
        return result;
      }

      v27 = v22;
      if (v4[3] >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v22 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          sub_1D3399760();
          v4 = v78;
          if ((v27 & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        sub_1D332A094(v26, isUniquelyReferenced_nonNull_native);
        v4 = v78;
        v28 = sub_1D3329FDC(v18, v20);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_39;
        }

        v23 = v28;
        if ((v27 & 1) == 0)
        {
LABEL_13:
          v4[(v23 >> 6) + 8] |= 1 << v23;
          v30 = (v4[6] + 16 * v23);
          *v30 = v18;
          v30[1] = v20;
          *(v4[7] + 8 * v23) = 0;
          v31 = v4[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_38;
          }

          v4[2] = v33;
          v34 = v20;
        }
      }

      v35 = v4[7];
      v36 = *(v35 + 8 * v23);
      v32 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v32)
      {
        goto LABEL_37;
      }

      *(v35 + 8 * v23) = v37;

      v6 += 7;
      if (!--v5)
      {
        v78 = MEMORY[0x1E69E7CC0];
        v38 = v76;
        sub_1D332A694(0, v76, 0);
        v39 = v78;
        v40 = (v70 + 80);
        do
        {
          v41 = *(v40 - 5);
          v75 = *(v40 - 6);
          v76 = v38;
          v43 = *(v40 - 4);
          v42 = *(v40 - 3);
          v45 = *(v40 - 2);
          v44 = *(v40 - 1);
          LODWORD(v74) = *v40;

          v46 = v44;

          v77 = v43;
          v47 = [v46 contactProperty];
          if (v47)
          {
            v48 = v47;
            v49 = [v47 contact];

            v50 = [v49 identifier];
            v51 = sub_1D33DE7B4();
            v53 = v52;

            v54 = MEMORY[0x1D38B6F00](v51, v53);
          }

          else
          {
            v55 = v72;
            sub_1D33DDDA4();
            v54 = sub_1D33DDD94();
            (*v71)(v55, v73);
          }

          v56 = [v46 actionType];
          if (v4[2] && (v57 = sub_1D3329FDC(v54, v56), (v58 & 1) != 0))
          {
            v59 = *(v4[7] + 8 * v57);

            if (v59 > 1)
            {

              v60 = v77;

              v61 = v46;
              v62 = [v61 localizedBundleName];
              if (v62)
              {
                v63 = v62;
                v42 = sub_1D33DE7B4();
                v70 = v64;

                swift_bridgeObjectRelease_n();

                v45 = v70;
              }

              else
              {

                swift_bridgeObjectRelease_n();
                v42 = 0;
                v45 = 0;
              }
            }
          }

          else
          {
          }

          v78 = v39;
          v66 = v39[2];
          v65 = v39[3];
          if (v66 >= v65 >> 1)
          {
            sub_1D332A694((v65 > 1), v66 + 1, 1);
            v39 = v78;
          }

          v39[2] = v66 + 1;
          v67 = &v39[7 * v66];
          v67[4] = v75;
          v67[5] = v41;
          v67[6] = v77;
          v67[7] = v42;
          v67[8] = v45;
          v67[9] = v46;
          *(v67 + 80) = v74;
          v40 += 56;
          v38 = v76 - 1;
        }

        while (v76 != 1);

        return v39;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D3329EE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761468, &unk_1D33E29A0);
    v3 = sub_1D33DF124();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = v6;
      result = sub_1D3329FDC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D3329FDC(uint64_t a1, uint64_t a2)
{
  sub_1D33DF284();
  MEMORY[0x1D38B7920](a1);
  sub_1D33DF2A4();
  if (a2)
  {
    sub_1D33DE7B4();
    sub_1D33DE824();
  }

  v4 = sub_1D33DF2C4();

  return sub_1D332A3DC(a1, a2, v4);
}

uint64_t sub_1D332A094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761468, &unk_1D33E29A0);
  v32 = v4;
  result = sub_1D33DF114();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v33 = v20;
      v22 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v32 & 1) == 0)
      {
        v23 = *(&v20 + 1);
      }

      sub_1D33DF284();
      MEMORY[0x1D38B7920](v33);
      sub_1D33DF2A4();
      if (v22)
      {
        sub_1D33DE7B4();
        sub_1D33DE824();
      }

      result = sub_1D33DF2C4();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v33;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

unint64_t sub_1D332A3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1)
      {
        if (v9[1])
        {
          if (a2)
          {
            v10 = sub_1D33DE7B4();
            v12 = v11;
            if (v10 == sub_1D33DE7B4() && v12 == v13)
            {

              return v5;
            }

            v15 = sub_1D33DF1B4();

            if (v15)
            {
              return v5;
            }
          }
        }

        else if (!a2)
        {
          return v5;
        }
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D332A51C()
{
  result = qword_1EDEBFC18;
  if (!qword_1EDEBFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBFC18);
  }

  return result;
}

char *sub_1D332A570(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DD8, &qword_1D33E1B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D332A694(char *a1, int64_t a2, char a3)
{
  result = sub_1D332A570(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D332A6B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsItem(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1D332A828(v13, v10);
        sub_1D332A828(v14, v7);
        v16 = _s16CallsAppServices11RecentsItemV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_1D332B2E8(v7);
        sub_1D332B2E8(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1D332A828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_16CallsAppServices11RecentsItemV11BackingTypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 32) & 0xF;
  }
}

uint64_t sub_1D332A8BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D33DDD34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t RecentsItem.dataSourceId.getter()
{
  v1 = sub_1D33DDDB4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v58[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 32);
  if (v9 <= 3)
  {
    if (*(v0 + 32) > 1u)
    {
      if (v9 != 2)
      {
        v58[0] = 0;
        v58[1] = 0xE000000000000000;
        v27 = v6;
        v28 = v5;
        sub_1D33DEF24();

        strcpy(v58, "conversation_");
        HIWORD(v58[1]) = -4864;
        v43 = [v27 UUID];
        sub_1D33DDD84();

        v44 = sub_1D33DDD54();
        v46 = v45;
        v47 = *(v2 + 8);
        v47(v4, v1);
        MEMORY[0x1D38B6ED0](v44, v46);

        MEMORY[0x1D38B6ED0](0x6567617373656D2BLL, 0xE90000000000005FLL);
        sub_1D33DE0B4();
        v33 = sub_1D33DDD54();
        v35 = v48;
        v47(v4, v1);
        goto LABEL_17;
      }

      strcpy(v58, "message_");
      BYTE1(v58[1]) = 0;
      WORD1(v58[1]) = 0;
      HIDWORD(v58[1]) = -402653184;
      sub_1D332B0D0(v6, v5, v8, v7, 2u);
      sub_1D33DE0B4();
      v20 = sub_1D33DDD54();
      v22 = v21;
      (*(v2 + 8))(v4, v1);
      MEMORY[0x1D38B6ED0](v20, v22);

      v15 = v6;
      v16 = v5;
      v17 = v8;
      v18 = v7;
      v19 = 2;
    }

    else
    {
      if (*(v0 + 32))
      {
        v58[0] = 0;
        v58[1] = 0xE000000000000000;
        v36 = v6;

        v37 = v8;

        sub_1D33DEF24();

        strcpy(v60, "conversation_");
        HIWORD(v60[1]) = -4864;
        v38 = [v36 UUID];
        sub_1D33DDD84();

        v39 = sub_1D33DDD54();
        v41 = v40;
        (*(v2 + 8))(v4, v1);
        MEMORY[0x1D38B6ED0](v39, v41);

        MEMORY[0x1D38B6ED0](0x5F6B6E696C2BLL, 0xE600000000000000);
        v58[0] = v5;
        v58[1] = v37;
        v59 = v7;
        v42 = ConversationLink.uniqueId.getter();
        MEMORY[0x1D38B6ED0](v42);

        goto LABEL_21;
      }

      strcpy(v58, "conversation_");
      HIWORD(v58[1]) = -4864;
      sub_1D332B0D0(v6, v5, v8, v7, 0);
      v11 = [v6 UUID];
      sub_1D33DDD84();

      v12 = sub_1D33DDD54();
      v14 = v13;
      (*(v2 + 8))(v4, v1);
      MEMORY[0x1D38B6ED0](v12, v14);

      v15 = v6;
      v16 = v5;
      v17 = v8;
      v18 = v7;
      v19 = 0;
    }

LABEL_13:
    sub_1D332B1DC(v15, v16, v17, v18, v19);
    return v58[0];
  }

  if (*(v0 + 32) <= 5u)
  {
    if (v9 == 4)
    {
      strcpy(v58, "recents_");
      BYTE1(v58[1]) = 0;
      WORD1(v58[1]) = 0;
      HIDWORD(v58[1]) = -402653184;
      sub_1D332B0D0(v6, v5, v8, v7, 4u);
      v23 = [v6 uniqueId];
      v24 = sub_1D33DE7B4();
      v26 = v25;

      MEMORY[0x1D38B6ED0](v24, v26);

      v15 = v6;
      v16 = v5;
      v17 = v8;
      v18 = v7;
      v19 = 4;
      goto LABEL_13;
    }

    v58[0] = 0;
    v58[1] = 0xE000000000000000;
    v50 = v6;

    v51 = v8;

    sub_1D33DEF24();

    strcpy(v60, "recents_");
    BYTE1(v60[1]) = 0;
    WORD1(v60[1]) = 0;
    HIDWORD(v60[1]) = -402653184;
    v52 = [v50 uniqueId];
    v53 = sub_1D33DE7B4();
    v55 = v54;

    MEMORY[0x1D38B6ED0](v53, v55);

    MEMORY[0x1D38B6ED0](0x5F6B6E696C2BLL, 0xE600000000000000);
    v58[0] = v5;
    v58[1] = v51;
    v59 = v7;
    v56 = ConversationLink.uniqueId.getter();
    MEMORY[0x1D38B6ED0](v56);

LABEL_21:

    return v60[0];
  }

  if (v9 == 6)
  {
    v58[0] = 0;
    v58[1] = 0xE000000000000000;
    v27 = v6;
    v28 = v5;
    sub_1D33DEF24();

    strcpy(v58, "recents_");
    BYTE1(v58[1]) = 0;
    WORD1(v58[1]) = 0;
    HIDWORD(v58[1]) = -402653184;
    v29 = [v27 uniqueId];
    v30 = sub_1D33DE7B4();
    v32 = v31;

    MEMORY[0x1D38B6ED0](v30, v32);

    MEMORY[0x1D38B6ED0](0x6567617373656D2BLL, 0xE90000000000005FLL);
    sub_1D33DE0B4();
    v33 = sub_1D33DDD54();
    v35 = v34;
    (*(v2 + 8))(v4, v1);
LABEL_17:
    MEMORY[0x1D38B6ED0](v33, v35);

    return v58[0];
  }

  if (v9 != 7)
  {
    return 0;
  }

  v60[0] = 0x5F6B6E696CLL;
  v60[1] = 0xE500000000000000;
  v58[0] = v6;
  v58[1] = v5;
  v59 = v8;
  sub_1D332B0D0(v6, v5, v8, v7, 7u);
  v10 = ConversationLink.uniqueId.getter();
  MEMORY[0x1D38B6ED0](v10);

  sub_1D332B1DC(v6, v5, v8, v7, 7u);
  return v60[0];
}

id sub_1D332B0D0(id result, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 <= 1u)
    {
      if (a5)
      {
LABEL_8:
        v6 = result;

        v7 = a3;
LABEL_15:
      }

      goto LABEL_19;
    }

    if (a5 == 2)
    {
      goto LABEL_19;
    }

    v10 = a2;
    if (a5 != 3)
    {
      return result;
    }

LABEL_18:
    v9 = result;
    result = v10;
    goto LABEL_19;
  }

  if (a5 > 5u)
  {
    v10 = a2;
    if (a5 != 6)
    {
      if (a5 != 7)
      {
        return result;
      }

      v8 = v10;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (a5 != 4)
  {
    if (a5 != 5)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_19:

  return result;
}

void sub_1D332B1DC(void *a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 <= 1u)
    {
      if (a5)
      {
LABEL_8:

LABEL_15:

        return;
      }

      goto LABEL_19;
    }

    if (a5 == 2)
    {
      goto LABEL_19;
    }

    v6 = a2;
    if (a5 != 3)
    {
      return;
    }

LABEL_18:

    a1 = v6;
    goto LABEL_19;
  }

  if (a5 > 5u)
  {
    v6 = a2;
    if (a5 != 6)
    {
      if (a5 != 7)
      {
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (a5 != 4)
  {
    if (a5 != 5)
    {
      return;
    }

    goto LABEL_8;
  }

LABEL_19:
}

uint64_t sub_1D332B2E8(uint64_t a1)
{
  v2 = type metadata accessor for RecentsItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D332B344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617E0, &unk_1D33E3210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D332B3AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D332B460(a1, v4, v5, v6);
}

uint64_t sub_1D332B460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_1D33DE974();
  *(v4 + 32) = sub_1D33DE964();
  v6 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D332B4F8, v6, v5);
}

uint64_t sub_1D332B4F8()
{

  if (sub_1D3329514())
  {
    v1 = v0[3];
    v2 = v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loading;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loading));
    *(v2 + 4) = 2;
    os_unfair_lock_unlock(v2);
    if (*(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loadingState) != 2)
    {
      v3 = v0[3];
      swift_getKeyPath();
      v4 = swift_task_alloc();
      *(v4 + 16) = v3;
      *(v4 + 24) = 2;
      v0[2] = v3;
      sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
      sub_1D33DDEC4();
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D332B6E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D332B7DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D332B890(a1, v4, v5, v6);
}

uint64_t sub_1D332B890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D33DE974();
  *(v4 + 24) = sub_1D33DE964();
  v6 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D332B928, v6, v5);
}

uint64_t sub_1D332B928()
{

  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EDEC1480);
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D331A000, v2, v3, "Updating: Reminder cache changed", v4, 2u);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  sub_1D338C8A4(1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D332BA80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D332BB34(a1, v4, v5, v6);
}

uint64_t sub_1D332BB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_1D33DE974();
  *(v4 + 32) = sub_1D33DE964();
  v6 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D332BBCC, v6, v5);
}

uint64_t sub_1D332BBCC()
{
  v1 = v0[3];

  if (*(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loadingState) != 1)
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[2] = v2;
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
    sub_1D33DDEC4();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D332BD24(uint64_t a1)
{
  v2 = type metadata accessor for RecentsItem(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D3367CE8(&unk_1EDEBFD18, type metadata accessor for RecentsItem, &protocol conformance descriptor for RecentsItem);
  result = MEMORY[0x1D38B7100](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D332A828(v12, v6);
      sub_1D332CF6C(v8, v6);
      sub_1D3367D30(v8, type metadata accessor for RecentsItem);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D332BEE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_1D33DEC24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask;
  if (!*(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask))
  {
    v14 = [objc_opt_self() defaultCenter];
    sub_1D33DEC34();

    v15 = sub_1D33DE9B4();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    (*(v6 + 16))(v9, v12, v5);
    sub_1D33DE974();

    v17 = sub_1D33DE964();
    v18 = *(v6 + 80);
    v24 = v4;
    v25 = v1;
    v19 = (v18 + 32) & ~v18;
    v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E85E0];
    *(v21 + 16) = v17;
    *(v21 + 24) = v22;
    (*(v6 + 32))(v21 + v19, v9, v5);
    *(v21 + v20) = v16;

    v23 = sub_1D333DD88(0, 0, v24, &unk_1D33E2550, v21);
    (*(v6 + 8))(v12, v5);
    *(v25 + v13) = v23;
  }

  return result;
}

uint64_t sub_1D332C1C4()
{
  v1 = sub_1D33DEC24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D332C29C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D332C2E4(uint64_t a1, uint64_t a2)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v5 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v25[-v6];
  v32 = sub_1D33DE3F4();
  v8 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1D33DE3B4();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_signState))
  {
    v27 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_signState;
    v28 = v13;
    v29 = v12;
    v30 = a2;
    v31 = v2;
    v16 = qword_1EDEBF088;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1D33DE3E4();
    __swift_project_value_buffer(v17, qword_1EDEC1458);
    v18 = sub_1D33DE3D4();
    sub_1D33DE404();
    v26 = sub_1D33DEBF4();
    if (sub_1D33DECC4())
    {

      sub_1D33DE434();

      v19 = v32;
      if ((*(v8 + 88))(v10, v32) == *MEMORY[0x1E69E93E8])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v8 + 8))(v10, v19);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_1D33DE394();
      _os_signpost_emit_with_name_impl(&dword_1D331A000, v18, v26, v22, "FavoritesDataSource loading", v20, v21, 2u);
      MEMORY[0x1D38B81C0](v21, -1, -1);
    }

    (*(v28 + 8))(v15, v29);
    *(a1 + v27) = 0;

    a2 = v30;
  }

  v23 = v33;
  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v33);
  v34 = a2;

  sub_1D33DDF64();
  (*(v5 + 8))(v7, v23);
  return sub_1D332BEE8();
}

uint64_t sub_1D332C6AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D332C70C()
{

  v1 = sub_1D33DE444();
  v2 = sub_1D33DEAF4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 528);
  if (v3)
  {
    v56 = v2;
    log = v1;
    v5 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *(v0 + 136) = v54;
    *v5 = 134349314;
    *(v5 + 4) = *(v4 + 16);

    buf = v5;
    *(v5 + 12) = 2082;
    v6 = *(v4 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v8 = *(v0 + 528);
      v9 = *(v0 + 184);
      *(v0 + 144) = MEMORY[0x1E69E7CC0];
      sub_1D334B384(0, v6, 0);
      v7 = *(v0 + 144);
      v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v11 = *(v9 + 72);
      do
      {
        v12 = *(v0 + 192);
        sub_1D332A828(v10, v12);
        v13 = *(v12 + 8);
        v14 = *(v12 + 32);
        v15 = 1;
        if (((1 << v14) & 0x1BB) == 0)
        {
          if (v14 == 2)
          {
            v16 = *(v0 + 192);
            v17 = *v16;
            v18 = *(v16 + 16);
            v19 = *(v16 + 24);
            v20 = *v16;
            sub_1D33DE0B4();
            sub_1D332B1DC(v17, v13, v18, v19, 2u);
          }

          else
          {
            v21 = v13;
            sub_1D33DE0B4();
          }

          v15 = 0;
        }

        v22 = *(v0 + 216);
        v23 = *(v0 + 192);
        v24 = sub_1D33DDDB4();
        (*(*(v24 - 8) + 56))(v22, v15, 1, v24);
        sub_1D332B2E8(v23);
        *(v0 + 144) = v7;
        v26 = *(v7 + 16);
        v25 = *(v7 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1D334B384((v25 > 1), v26 + 1, 1);
          v7 = *(v0 + 144);
        }

        v28 = *(v0 + 208);
        v27 = *(v0 + 216);
        *(v7 + 16) = v26 + 1;
        sub_1D332FEC4(v27, v7 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26);
        v10 += v11;
        --v6;
      }

      while (v6);
    }

    v29 = MEMORY[0x1D38B6F50](v7, *(v0 + 200));
    v31 = v30;

    v32 = sub_1D3328B48(v29, v31, (v0 + 136));

    *(buf + 14) = v32;
    _os_log_impl(&dword_1D331A000, log, v56, "VideoMessageInboxController Finished loading items(%{public}ld) with ids: %{public}s", buf, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x1D38B81C0](v54, -1, -1);
    MEMORY[0x1D38B81C0](buf, -1, -1);
  }

  else
  {
  }

  v33 = *(v0 + 536);
  v34 = *(v0 + 528);
  v35 = *(v0 + 448);
  v36 = *(v0 + 152);
  swift_getKeyPath();
  v37 = swift_task_alloc();
  *(v37 + 16) = v36;
  *(v37 + 24) = v34;
  *(v0 + 112) = v36;
  sub_1D33DDEC4();

  swift_getKeyPath();
  *(v0 + 120) = v36;
  sub_1D33DDED4();

  if (*(v36 + v35))
  {

    v38 = sub_1D33DE3D4();
    sub_1D33DE404();
    v39 = sub_1D33DEBF4();
    if (sub_1D33DECC4())
    {
      v40 = *(v0 + 544);
      v42 = *(v0 + 168);
      v41 = *(v0 + 176);
      v43 = *(v0 + 160);

      sub_1D33DE434();

      if ((*(v42 + 88))(v41, v43) == v40)
      {
        v44 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
        v44 = "";
      }

      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = sub_1D33DE394();
      _os_signpost_emit_with_name_impl(&dword_1D331A000, v38, v39, v46, "VideoMessageInboxController loading", v44, v45, 2u);
      MEMORY[0x1D38B81C0](v45, -1, -1);
    }

    v47 = *(v0 + 504);
    v48 = *(v0 + 240);
    v49 = *(v0 + 224);
    v50 = *(v0 + 152);

    v47(v48, v49);
    swift_getKeyPath();
    v51 = swift_task_alloc();
    *(v51 + 16) = v50;
    *(v51 + 24) = 0;
    *(v0 + 128) = v50;
    sub_1D33DDEC4();
  }

  *(v0 + 456) = v33;
  v52 = swift_task_alloc();
  *(v0 + 464) = v52;
  *v52 = v0;
  v52[1] = sub_1D3341E64;

  return sub_1D3323EE4();
}

uint64_t sub_1D332CD18()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_1D332D15C;
  }

  else
  {
    v2 = sub_1D338D574;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D332CE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D332CE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D332CF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D332CF6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for RecentsItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D33DF284();
  RecentsItem.hash(into:)(v20);
  v10 = sub_1D33DF2C4();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D332A828(*(v9 + 48) + v14 * v12, v8);
      v15 = _s16CallsAppServices11RecentsItemV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D3367D30(v8, type metadata accessor for RecentsItem);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D3367D30(a2, type metadata accessor for RecentsItem);
    sub_1D332A828(*(v9 + 48) + v14 * v12, v19);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D332A828(a2, v8);
    v20[0] = *v3;
    sub_1D332FCA8(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_1D33302BC(a2, v17);
    return 1;
  }
}

uint64_t sub_1D332D15C()
{
  v39 = v0;
  if ((sub_1D33DE9F4() & 1) == 0)
  {

    v1 = sub_1D33DE444();
    v2 = sub_1D33DEAF4();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v37 = v4;
      *v3 = 136315138;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = *(Strong + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
        v7 = Strong;

        v8 = *(v6 + 16);
        if (v8)
        {
          v34 = v4;
          v35 = v2;
          v36 = v1;
          v38 = MEMORY[0x1E69E7CC0];
          sub_1D334A9E0(0, v8, 0);
          v9 = v38;
          v10 = v6 + 32;
          do
          {
            sub_1D3325720(v10, (v0 + 2));
            v0[13] = 0;
            v0[14] = 0xE000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761090, &unk_1D33E2500);
            sub_1D33DF004();
            MEMORY[0x1D38B6ED0](46, 0xE100000000000000);
            v11 = v0[5];
            v12 = v0[6];
            __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
            v13 = (*(v12 + 40))(v11, v12);
            v14 = (v13 & 1) == 0;
            if (v13)
            {
              v15 = 1702195828;
            }

            else
            {
              v15 = 0x65736C6166;
            }

            if (v14)
            {
              v16 = 0xE500000000000000;
            }

            else
            {
              v16 = 0xE400000000000000;
            }

            MEMORY[0x1D38B6ED0](v15, v16);

            v18 = v0[13];
            v17 = v0[14];
            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
            v38 = v9;
            v20 = *(v9 + 16);
            v19 = *(v9 + 24);
            if (v20 >= v19 >> 1)
            {
              sub_1D334A9E0((v19 > 1), v20 + 1, 1);
              v9 = v38;
            }

            *(v9 + 16) = v20 + 1;
            v21 = v9 + 16 * v20;
            *(v21 + 32) = v18;
            *(v21 + 40) = v17;
            v10 += 40;
            --v8;
          }

          while (v8);

          v1 = v36;
          v2 = v35;
          v4 = v34;
        }

        else
        {

          v9 = MEMORY[0x1E69E7CC0];
        }

        v0[18] = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
        sub_1D334CB54(&qword_1EDEBEF28, &qword_1EC7616B0, &qword_1D33E3DD0, MEMORY[0x1E69E6310]);
        v24 = sub_1D33DE764();
        v26 = v25;

        v0[15] = v24;
        v0[16] = v26;
        v23 = sub_1D33DE804();
        v22 = v27;
      }

      else
      {
        v22 = 0xE300000000000000;
        v23 = 7104878;
      }

      v28 = sub_1D3328B48(v23, v22, &v37);

      *(v3 + 4) = v28;
      _os_log_impl(&dword_1D331A000, v1, v2, "datasources didn't load within tolerance: %s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x1D38B81C0](v4, -1, -1);
      MEMORY[0x1D38B81C0](v3, -1, -1);
    }

    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      if (*(v29 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) == 1)
      {
        *(v29 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) = 1;
        sub_1D3389A94(1);
      }

      else
      {
        swift_getKeyPath();
        v31 = swift_task_alloc();
        *(v31 + 16) = v30;
        *(v31 + 24) = 1;
        v0[17] = v30;
        sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
        sub_1D33DDEC4();
      }
    }
  }

  v32 = v0[1];

  return v32();
}

void *sub_1D332D624(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v311 = a4;
  v289 = a3;
  v304 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v293 = &v280 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v298 = &v280 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v301 = &v280 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v300 = &v280 - v12;
  v314 = sub_1D33DDD34();
  v302 = *(v314 - 8);
  v13 = MEMORY[0x1EEE9AC00](v314);
  v286 = &v280 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v297 = &v280 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v285 = &v280 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v288 = &v280 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v280 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v280 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v280 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v282 = &v280 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v280 = &v280 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v309 = &v280 - v34;
  v35 = sub_1D33DDDB4();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v312 = &v280 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v318 = &v280 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v280 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v283 = &v280 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v284 = &v280 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v307 = &v280 - v48;
  v49 = MEMORY[0x1E69E7CC0];
  v336 = MEMORY[0x1E69E7CC0];
  v321 = sub_1D3330924(MEMORY[0x1E69E7CC0]);
  v50 = *(a1 + 16);
  v319 = v35;
  v292 = v36;
  if (v50)
  {
    v303 = v26;
    v306 = v23;
    v51 = a1 + 32;
    v315 = (v36 + 56);
    v316 = (v36 + 32);
    v320 = (v36 + 48);
    v317 = (v36 + 16);
    v313 = (v36 + 8);
    v308 = xmmword_1D33E2410;
    v310 = v43;
    while (1)
    {
      sub_1D3325720(v51, &v334);
      v53 = __swift_project_boxed_opaque_existential_1(&v334, v335);
      if (v311)
      {
        sub_1D33A35D8(v29);
        goto LABEL_22;
      }

      v54 = *v53;
      v55 = *(v53 + 32);
      if (v55 > 8)
      {
        break;
      }

      if (((1 << v55) & 0x70) != 0)
      {
        v56 = v54;
        v57 = [v56 participantGroupUUID];

        if (v57)
        {
          v58 = v306;
          sub_1D33DDD84();

          v59 = 0;
        }

        else
        {
          v59 = 1;
          v58 = v306;
        }

        (*v315)(v58, v59, 1, v35);
        sub_1D332FEC4(v58, v29);
      }

      else
      {
        if (((1 << v55) & 0x10C) != 0)
        {
          (*v315)(v29, 1, 1, v35);
LABEL_23:
          sub_1D331E880(v29, &qword_1EC7612B0, qword_1D33E2830);
          sub_1D3325720(&v334, &v332);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_1D3333FEC(0, v49[2] + 1, 1, v49);
          }

          v72 = v49[2];
          v71 = v49[3];
          if (v72 >= v71 >> 1)
          {
            v49 = sub_1D3333FEC((v71 > 1), v72 + 1, 1, v49);
          }

          v73 = __swift_mutable_project_boxed_opaque_existential_1(&v332, v333);
          MEMORY[0x1EEE9AC00](v73);
          v75 = &v280 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v76 + 16))(v75);
          v330 = type metadata accessor for RecentsItem(0);
          v331 = &off_1F4EE6FD8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v329);
          sub_1D33302BC(v75, boxed_opaque_existential_1);
          v49[2] = v72 + 1;
          sub_1D331E6AC(&v329, &v49[5 * v72 + 4]);
          __swift_destroy_boxed_opaque_existential_1Tm(&v332);
          v336 = v49;
          v35 = v319;
          goto LABEL_5;
        }

        if (v55 != 7)
        {
          break;
        }

        v60 = v53[1];
        v61 = v53[2];
        v305 = v53[3];

        v62 = v60;

        v63 = [v62 groupUUID];
        if (v63)
        {
          v64 = v303;
          v65 = v63;
          sub_1D33DDD84();

          v66 = 0;
        }

        else
        {
          v66 = 1;
          v64 = v303;
        }

        v43 = v310;
        v70 = v319;
        (*v315)(v64, v66, 1, v319);
        sub_1D332FEC4(v64, v29);
        v35 = v70;
        sub_1D332B1DC(v54, v60, v61, v305, 7u);
      }

LABEL_22:
      if ((*v320)(v29, 1, v35) == 1)
      {
        goto LABEL_23;
      }

      (*v316)(v43, v29, v35);
      if (*(v321 + 16) && (v78 = sub_1D33B926C(v43), (v79 & 1) != 0))
      {
        v80 = *(*(v321 + 56) + 8 * v78);
        sub_1D3325720(&v334, &v332);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_1D3333FEC(0, v80[2] + 1, 1, v80);
        }

        v82 = v80[2];
        v81 = v80[3];
        if (v82 >= v81 >> 1)
        {
          v80 = sub_1D3333FEC((v81 > 1), v82 + 1, 1, v80);
        }

        v83 = __swift_mutable_project_boxed_opaque_existential_1(&v332, v333);
        MEMORY[0x1EEE9AC00](v83);
        v85 = &v280 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v86 + 16))(v85);
        v330 = type metadata accessor for RecentsItem(0);
        v331 = &off_1F4EE6FD8;
        v87 = __swift_allocate_boxed_opaque_existential_1(&v329);
        sub_1D33302BC(v85, v87);
        v80[2] = v82 + 1;
        sub_1D331E6AC(&v329, &v80[5 * v82 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v332);
        v88 = *v317;
        v89 = v312;
        v43 = v310;
        (*v317)(v312, v310, v319);
        v90 = v321;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v332 = v90;
        v92 = sub_1D33B926C(v89);
        v94 = *(v90 + 16);
        v95 = (v93 & 1) == 0;
        v96 = __OFADD__(v94, v95);
        v97 = v94 + v95;
        if (v96)
        {
          goto LABEL_194;
        }

        v98 = v93;
        if (*(v90 + 24) >= v97)
        {
          v100 = v292;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v127 = v92;
            sub_1D3399D60();
            v100 = v292;
            v92 = v127;
          }

          v35 = v319;
        }

        else
        {
          sub_1D33976B0(v97, isUniquelyReferenced_nonNull_native);
          v92 = sub_1D33B926C(v312);
          if ((v98 & 1) != (v99 & 1))
          {
            goto LABEL_200;
          }

          v35 = v319;
          v100 = v292;
        }

        v121 = v332;
        v321 = v332;
        if (v98)
        {
          *(*(v332 + 56) + 8 * v92) = v80;
        }

        else
        {
          *(v332 + 8 * (v92 >> 6) + 64) |= 1 << v92;
          v122 = v92;
          v88(*(v121 + 48) + *(v100 + 72) * v92, v312, v35);
          v123 = v321;
          *(*(v321 + 56) + 8 * v122) = v80;
          v124 = *(v123 + 16);
          v96 = __OFADD__(v124, 1);
          v125 = v124 + 1;
          if (v96)
          {
            goto LABEL_198;
          }

          *(v123 + 16) = v125;
        }

        v52 = *v313;
        (*v313)(v312, v35);
      }

      else
      {
        v101 = *v317;
        v102 = v318;
        (*v317)(v318, v43, v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DB0, &unk_1D33E4590);
        v103 = swift_allocObject();
        *(v103 + 16) = v308;
        sub_1D3325720(&v334, v103 + 32);
        v104 = swift_isUniquelyReferenced_nonNull_native();
        v332 = v321;
        v105 = sub_1D33B926C(v102);
        v107 = *(v321 + 16);
        v108 = (v106 & 1) == 0;
        v96 = __OFADD__(v107, v108);
        v109 = v107 + v108;
        if (v96)
        {
          goto LABEL_190;
        }

        v110 = v106;
        if (*(v321 + 24) >= v109)
        {
          v112 = v292;
          if ((v104 & 1) == 0)
          {
            v126 = v105;
            sub_1D3399D60();
            v112 = v292;
            v105 = v126;
          }

          v35 = v319;
        }

        else
        {
          sub_1D33976B0(v109, v104);
          v105 = sub_1D33B926C(v318);
          if ((v110 & 1) != (v111 & 1))
          {
            goto LABEL_200;
          }

          v35 = v319;
          v112 = v292;
        }

        v113 = v332;
        v321 = v332;
        if ((v110 & 1) == 0)
        {
          *(v332 + 8 * (v105 >> 6) + 64) |= 1 << v105;
          v114 = v105;
          v115 = v318;
          v116 = v112;
          v101(*(v113 + 48) + *(v112 + 72) * v105, v318, v35);
          *(*(v321 + 56) + 8 * v114) = v103;
          v117 = *(v116 + 8);
          v118 = v115;
          v43 = v310;
          v117(v118, v35);
          v117(v43, v35);
          v119 = *(v321 + 16);
          v96 = __OFADD__(v119, 1);
          v120 = v119 + 1;
          if (v96)
          {
            goto LABEL_193;
          }

          *(v321 + 16) = v120;
          goto LABEL_5;
        }

        *(*(v332 + 56) + 8 * v105) = v103;

        v52 = *v313;
        (*v313)(v318, v35);
      }

      v52(v43, v35);
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1Tm(&v334);
      v51 += 40;
      if (!--v50)
      {
        goto LABEL_56;
      }
    }

    v67 = v54;
    v68 = [v67 groupUUID];

    v69 = v283;
    sub_1D33DDD84();

    (*v316)(v29, v69, v35);
    (*v315)(v29, 0, 1, v35);
    goto LABEL_22;
  }

LABEL_56:
  v305 = *(v304 + 16);
  if (!v305)
  {
    goto LABEL_163;
  }

  v128 = 0;
  v304 += 32;
  v290 = (v292 + 56);
  v291 = (v292 + 32);
  v299 = (v292 + 48);
  v295 = (v302 + 16);
  v313 = v302 + 56;
  v306 = (v302 + 32);
  v294 = (v302 + 8);
  *&v308 = v302 + 48;
  v281 = (v292 + 16);
  v287 = (v292 + 8);
  v129 = v300;
  v130 = v309;
  v131 = v49;
  do
  {
    sub_1D3325720(v304 + 40 * v128, &v334);
    v132 = __swift_project_boxed_opaque_existential_1(&v334, v335);
    v310 = v128;
    if (v311)
    {
      sub_1D33A35D8(v130);
    }

    else
    {
      v133 = *v132;
      v134 = *(v132 + 32);
      if (v134 > 8)
      {
        goto LABEL_71;
      }

      if (((1 << v134) & 0x70) != 0)
      {
        v135 = v133;
        v136 = [v135 participantGroupUUID];

        if (v136)
        {
          v137 = v282;
          sub_1D33DDD84();

          v138 = v137;
          v139 = 0;
        }

        else
        {
          v139 = 1;
          v138 = v282;
        }

        (*v290)(v138, v139, 1, v35);
        sub_1D332FEC4(v138, v130);
        goto LABEL_74;
      }

      if (((1 << v134) & 0x10C) != 0)
      {
        (*v290)(v130, 1, 1, v35);
LABEL_75:
        sub_1D331E880(v130, &qword_1EC7612B0, qword_1D33E2830);
        sub_1D3325720(&v334, &v332);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_1D3333FEC(0, v131[2] + 1, 1, v131);
        }

        v152 = v131[2];
        v151 = v131[3];
        v153 = v152 + 1;
        if (v152 >= v151 >> 1)
        {
          v131 = sub_1D3333FEC((v151 > 1), v152 + 1, 1, v131);
        }

LABEL_149:
        v238 = __swift_mutable_project_boxed_opaque_existential_1(&v332, v333);
        MEMORY[0x1EEE9AC00](v238);
        v240 = &v280 - ((v239 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v241 + 16))(v240);
        v330 = type metadata accessor for RecentsItem(0);
        v331 = &off_1F4EE6FD8;
        v242 = __swift_allocate_boxed_opaque_existential_1(&v329);
        sub_1D33302BC(v240, v242);
        v131[2] = v153;
        sub_1D331E6AC(&v329, &v131[5 * v152 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v332);
        v336 = v131;
        goto LABEL_150;
      }

      if (v134 == 7)
      {
        v140 = v131;
        v141 = v132[1];
        v142 = v132[2];
        v320 = v132[3];

        v143 = v141;

        v144 = [v143 groupUUID];
        if (v144)
        {
          v145 = v280;
          v146 = v144;
          sub_1D33DDD84();

          v147 = 0;
        }

        else
        {
          v147 = 1;
          v145 = v280;
        }

        v131 = v140;
        (*v290)(v145, v147, 1, v35);
        sub_1D332FEC4(v145, v130);
        sub_1D332B1DC(v133, v141, v142, v320, 7u);
      }

      else
      {
LABEL_71:
        v148 = v133;
        v149 = [v148 groupUUID];

        v150 = v283;
        sub_1D33DDD84();

        (*v291)(v130, v150, v35);
        (*v290)(v130, 0, 1, v35);
      }
    }

LABEL_74:
    if ((*v299)(v130, 1, v35) == 1)
    {
      goto LABEL_75;
    }

    (*v291)(v307, v130, v35);
    if (!*(v321 + 16) || (v154 = sub_1D33B926C(v307), (v155 & 1) == 0) || (v156 = *(*(v321 + 56) + 8 * v154), (v317 = *(v156 + 16)) == 0))
    {
      sub_1D3325720(&v334, &v332);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = sub_1D3333FEC(0, v131[2] + 1, 1, v131);
      }

      v152 = v131[2];
      v237 = v131[3];
      v153 = v152 + 1;
      if (v152 >= v237 >> 1)
      {
        v131 = sub_1D3333FEC((v237 > 1), v152 + 1, 1, v131);
      }

      (*v287)(v307, v35);
      goto LABEL_149;
    }

    v316 = (v156 + 32);

    v158 = 0;
    v320 = MEMORY[0x1E69E7CC0];
    v315 = v157;
    do
    {
      if (v158 >= *(v157 + 16))
      {
        __break(1u);
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

      sub_1D3325720(&v316[5 * v158], &v332);
      sub_1D33AE988(&v332, &v334, &v325);
      if (!v327)
      {
        sub_1D331E880(&v325, &qword_1EC761B88, &unk_1D33E4580);
        sub_1D3325720(&v332, &v329);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_1D3333FEC(0, v131[2] + 1, 1, v131);
        }

        v192 = v131[2];
        v191 = v131[3];
        if (v192 >= v191 >> 1)
        {
          v193 = sub_1D3333FEC((v191 > 1), v192 + 1, 1, v131);
        }

        else
        {
          v193 = v131;
        }

        v194 = __swift_mutable_project_boxed_opaque_existential_1(&v329, v330);
        MEMORY[0x1EEE9AC00](v194);
        v196 = &v280 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v197 + 16))(v196);
        v198 = type metadata accessor for RecentsItem(0);
        v327 = v198;
        v328 = &off_1F4EE6FD8;
        v199 = __swift_allocate_boxed_opaque_existential_1(&v325);
        sub_1D33302BC(v196, v199);
        v193[2] = v192 + 1;
        sub_1D331E6AC(&v325, &v193[5 * v192 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v329);
        sub_1D3325720(&v334, &v329);
        v201 = v193[2];
        v200 = v193[3];
        if (v201 >= v200 >> 1)
        {
          v193 = sub_1D3333FEC((v200 > 1), v201 + 1, 1, v193);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v332);
        v202 = __swift_mutable_project_boxed_opaque_existential_1(&v329, v330);
        MEMORY[0x1EEE9AC00](v202);
        v204 = &v280 - ((v203 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v205 + 16))(v204);
        v327 = v198;
        v328 = &off_1F4EE6FD8;
        v206 = __swift_allocate_boxed_opaque_existential_1(&v325);
        sub_1D33302BC(v204, v206);
        v131 = v193;
        v193[2] = v201 + 1;
        sub_1D331E6AC(&v325, &v193[5 * v201 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v329);
        v336 = v193;
LABEL_108:
        v35 = v319;
        goto LABEL_87;
      }

      sub_1D331E6AC(&v325, &v329);
      sub_1D3325720(&v329, &v325);
      v161 = v320;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v161 = sub_1D3333FEC(0, v161[2] + 1, 1, v161);
      }

      v163 = v161[2];
      v162 = v161[3];
      v318 = v131;
      if (v163 >= v162 >> 1)
      {
        v161 = sub_1D3333FEC((v162 > 1), v163 + 1, 1, v161);
      }

      v164 = __swift_mutable_project_boxed_opaque_existential_1(&v325, v327);
      MEMORY[0x1EEE9AC00](v164);
      v166 = &v280 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v167 + 16))(v166);
      v168 = type metadata accessor for RecentsItem(0);
      v323 = v168;
      v324 = &off_1F4EE6FD8;
      v169 = __swift_allocate_boxed_opaque_existential_1(&v322);
      sub_1D33302BC(v166, v169);
      v161[2] = (v163 + 1);
      v320 = v161;
      sub_1D331E6AC(&v322, &v161[5 * v163 + 4]);
      __swift_destroy_boxed_opaque_existential_1Tm(&v325);
      v170 = __swift_project_boxed_opaque_existential_1(&v334, v335);
      v171 = v170;
      v225 = *(v170 + 32) == 7;
      v312 = v168;
      if (!v225)
      {
        v207 = v170 + *(v168 + 32);
        v208 = v298;
        sub_1D3367A94(v207, v298);
        v209 = type metadata accessor for CallInfo(0);
        v210 = (*(*(v209 - 8) + 48))(v208, 1, v209);
        if (v210 == 1)
        {
          sub_1D331E880(v208, &unk_1EC761DE0, &unk_1D33E50F0);
          v159 = *v313;
          v160 = v314;
          v130 = v309;
          goto LABEL_84;
        }

        v211 = v314;
        (*v295)(v129, v208 + *(v209 + 24), v314);
        sub_1D33379F4(v208, type metadata accessor for CallInfo);
        v130 = v309;
        (*v313)(v129, 0, 1, v211);
        goto LABEL_122;
      }

      v173 = v170[1];
      v175 = v170[2];
      v174 = v170[3];
      *&v325 = *v170;
      v172 = v325;
      *(&v325 + 1) = v173;
      v326 = v175;

      v176 = v173;

      v177 = ConversationLink.prevailingSuggestion.getter();
      v178 = v297;
      if (!v177)
      {
        sub_1D332B1DC(v172, v173, v175, v174, 7u);
        v159 = *v313;
        v189 = v301;
        (*v313)(v301, 1, 1, v314);
LABEL_115:
        v212 = v293;
        v129 = v300;
LABEL_116:
        sub_1D331E880(v189, &qword_1EC760E10, &unk_1D33E1A90);
        sub_1D3367A94(v171 + *(v312 + 32), v212);
        v213 = type metadata accessor for CallInfo(0);
        if ((*(*(v213 - 8) + 48))(v212, 1, v213) == 1)
        {
          sub_1D331E880(v212, &unk_1EC761DE0, &unk_1D33E50F0);
          v160 = v314;
          v130 = v309;
          v35 = v319;
LABEL_84:
          v159(v129, 1, 1, v160);
LABEL_85:
          sub_1D331E880(v129, &qword_1EC760E10, &unk_1D33E1A90);
LABEL_86:
          __swift_destroy_boxed_opaque_existential_1Tm(&v329);
          __swift_destroy_boxed_opaque_existential_1Tm(&v332);
          v131 = v318;
          goto LABEL_87;
        }

        v211 = v314;
        (*v295)(v129, v212 + *(v213 + 24), v314);
        sub_1D33379F4(v212, type metadata accessor for CallInfo);
        goto LABEL_121;
      }

      v179 = v177;
      v302 = v175;
      v303 = v174;
      v180 = [v177 documentDate];
      v181 = v306;
      v296 = v306 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      if (!v180)
      {
        v190 = 1;
        v189 = v301;
        v186 = v314;
        goto LABEL_114;
      }

      v182 = v286;
      v183 = v180;
      sub_1D33DDCF4();

      v184 = *v181;
      v185 = v182;
      v186 = v314;
      (*v181)(v178, v185, v314);
      if (([v179 flags] & 0x40) != 0)
      {
        v189 = v301;
        v184(v301, v178, v186);
        v190 = 0;
        goto LABEL_114;
      }

      v187 = v184;
      v188 = [v179 flags];
      v189 = v301;
      if ((v188 & 0x20) == 0)
      {
        v186 = v314;
        (*v294)(v178, v314);
        v190 = 1;
        v181 = v306;
LABEL_114:
        v159 = *v313;
        (*v313)(v189, v190, 1, v186);
        sub_1D332B1DC(v172, v173, v302, v303, 7u);

        if ((*v308)(v189, 1, v186) == 1)
        {
          goto LABEL_115;
        }

        v187 = *v181;
        v129 = v300;
        goto LABEL_120;
      }

      [v179 documentTimeInterval];
      sub_1D33DDC84();
      v189 = v301;
      v235 = v314;
      (*v294)(v178, v314);
      v159 = *v313;
      (*v313)(v189, 0, 1, v235);
      sub_1D332B1DC(v172, v173, v302, v303, 7u);

      v236 = (*v308)(v189, 1, v235);
      v212 = v293;
      v129 = v300;
      if (v236 == 1)
      {
        goto LABEL_116;
      }

LABEL_120:
      v214 = v285;
      v211 = v314;
      v187(v285, v189, v314);
      v187(v129, v214, v211);
LABEL_121:
      v130 = v309;
      v35 = v319;
      v159(v129, 0, 1, v211);
LABEL_122:
      if ((*v308)(v129, 1, v211) == 1)
      {
        goto LABEL_85;
      }

      v215 = v288;
      (*v306)(v288, v129, v211);
      v216 = sub_1D33DDCA4();
      (*v294)(v215, v211);
      if ((v216 & 1) == 0)
      {
        goto LABEL_86;
      }

      v131 = v318;
      v217 = (v318 + 32);
      v218 = -*(v318 + 2);
      v219 = -1;
      while (v218 + v219 != -1)
      {
        if (++v219 >= v131[2])
        {
          goto LABEL_188;
        }

        v220 = v131;
        sub_1D3325720(v217, &v325);
        __swift_project_boxed_opaque_existential_1(&v325, v327);
        v221 = RecentsItem.dataSourceId.getter();
        v223 = v222;
        __swift_project_boxed_opaque_existential_1(&v334, v335);
        v225 = v221 == RecentsItem.dataSourceId.getter() && v223 == v224;
        if (v225)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v325);
          v131 = v220;
LABEL_141:
          __swift_destroy_boxed_opaque_existential_1Tm(&v329);
          __swift_destroy_boxed_opaque_existential_1Tm(&v332);
          goto LABEL_108;
        }

        v217 += 40;
        v226 = sub_1D33DF1B4();

        __swift_destroy_boxed_opaque_existential_1Tm(&v325);
        v131 = v220;
        if (v226)
        {
          goto LABEL_141;
        }
      }

      sub_1D3325720(&v334, &v325);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = sub_1D3333FEC(0, v131[2] + 1, 1, v131);
      }

      v228 = v131[2];
      v227 = v131[3];
      v35 = v319;
      if (v228 >= v227 >> 1)
      {
        v229 = sub_1D3333FEC((v227 > 1), v228 + 1, 1, v131);
      }

      else
      {
        v229 = v131;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v329);
      __swift_destroy_boxed_opaque_existential_1Tm(&v332);
      v230 = __swift_mutable_project_boxed_opaque_existential_1(&v325, v327);
      MEMORY[0x1EEE9AC00](v230);
      v232 = &v280 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v233 + 16))(v232);
      v323 = v312;
      v324 = &off_1F4EE6FD8;
      v234 = __swift_allocate_boxed_opaque_existential_1(&v322);
      sub_1D33302BC(v232, v234);
      v131 = v229;
      v229[2] = v228 + 1;
      sub_1D331E6AC(&v322, &v229[5 * v228 + 4]);
      __swift_destroy_boxed_opaque_existential_1Tm(&v325);
      v336 = v229;
LABEL_87:
      v157 = v315;
      ++v158;
    }

    while (v158 != v317);

    v243 = *v281;
    v244 = v284;
    (*v281)(v284, v307, v35);

    v245 = v321;
    v246 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v245;
    v247 = sub_1D33B926C(v244);
    v249 = *(v245 + 16);
    v250 = (v248 & 1) == 0;
    v96 = __OFADD__(v249, v250);
    v251 = v249 + v250;
    if (v96)
    {
      goto LABEL_197;
    }

    v252 = v248;
    if (*(v245 + 24) >= v251)
    {
      v254 = v292;
      if ((v246 & 1) == 0)
      {
        v261 = v247;
        sub_1D3399D60();
        v254 = v292;
        v247 = v261;
      }
    }

    else
    {
      sub_1D33976B0(v251, v246);
      v247 = sub_1D33B926C(v284);
      if ((v252 & 1) != (v253 & 1))
      {
        goto LABEL_201;
      }

      v254 = v292;
    }

    v255 = v332;
    v321 = v332;
    if (v252)
    {
      *(*(v332 + 56) + 8 * v247) = v320;
    }

    else
    {
      *(v332 + 8 * (v247 >> 6) + 64) |= 1 << v247;
      v256 = v247;
      v243(*(v255 + 48) + *(v254 + 72) * v247, v284, v35);
      v257 = v321;
      *(*(v321 + 56) + 8 * v256) = v320;
      v258 = *(v257 + 16);
      v96 = __OFADD__(v258, 1);
      v259 = v258 + 1;
      if (v96)
      {
        goto LABEL_199;
      }

      *(v257 + 16) = v259;
    }

    v260 = *v287;
    (*v287)(v284, v35);
    v260(v307, v35);

LABEL_150:
    v128 = v310 + 1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v334);
  }

  while (v128 != v305);
LABEL_163:
  v262 = v321 + 64;
  v263 = 1 << *(v321 + 32);
  v264 = -1;
  if (v263 < 64)
  {
    v264 = ~(-1 << v263);
  }

  v265 = v264 & *(v321 + 64);
  v266 = (v263 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v267 = 0;
  v268 = MEMORY[0x1E69E7CC0];
  while (v265)
  {
    v269 = v321;
LABEL_174:
    v271 = *(*(v269 + 56) + ((v267 << 9) | (8 * __clz(__rbit64(v265)))));
    v272 = *(v271 + 16);
    v273 = v268[2];
    v274 = v273 + v272;
    if (__OFADD__(v273, v272))
    {
      goto LABEL_191;
    }

    v275 = swift_isUniquelyReferenced_nonNull_native();
    if (!v275 || v274 > v268[3] >> 1)
    {
      if (v273 <= v274)
      {
        v276 = v273 + v272;
      }

      else
      {
        v276 = v273;
      }

      v268 = sub_1D3333FEC(v275, v276, 1, v268);
    }

    v265 &= v265 - 1;
    if (*(v271 + 16))
    {
      if ((v268[3] >> 1) - v268[2] < v272)
      {
        goto LABEL_195;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
      swift_arrayInitWithCopy();

      if (v272)
      {
        v277 = v268[2];
        v96 = __OFADD__(v277, v272);
        v278 = v277 + v272;
        if (v96)
        {
          goto LABEL_196;
        }

        v268[2] = v278;
      }
    }

    else
    {

      if (v272)
      {
        goto LABEL_192;
      }
    }
  }

  v269 = v321;
  while (1)
  {
    v270 = v267 + 1;
    if (__OFADD__(v267, 1))
    {
      break;
    }

    if (v270 >= v266)
    {

      sub_1D3330384(v268);

      return v336;
    }

    v265 = *(v262 + 8 * v270);
    ++v267;
    if (v265)
    {
      v267 = v270;
      goto LABEL_174;
    }
  }

LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  sub_1D33DF1E4();
  __break(1u);
LABEL_201:
  result = sub_1D33DF1E4();
  __break(1u);
  return result;
}

uint64_t sub_1D332FCA8(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for RecentsItem(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_1D3364398(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1D3365A78();
      goto LABEL_12;
    }

    v26 = v10;
    sub_1D3366158(v13 + 1);
  }

  v15 = *v4;
  sub_1D33DF284();
  RecentsItem.hash(into:)(v27);
  v16 = sub_1D33DF2C4();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1D332A828(*(v15 + 48) + v19 * a2, v12);
      v20 = _s16CallsAppServices11RecentsItemV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_1D3367D30(v12, type metadata accessor for RecentsItem);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D33302BC(a1, *(v21 + 48) + *(v9 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D33DF1D4();
  __break(1u);
  return result;
}

uint64_t sub_1D332FEC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1D332FF34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
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

uint64_t sub_1D3330080(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for RecentsItem(0);
  v32 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  v15 = a4 + 7;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[7];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      sub_1D332CF04(v25 + v26 * (v24 | (v19 << 6)), v11, type metadata accessor for RecentsItem);
      sub_1D33302BC(v11, v14);
      sub_1D33302BC(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D33302BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_1D3330384(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D3333FEC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D333048C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D3330F5C(0, v1, 0);
    v2 = v25;
    v4 = type metadata accessor for RecentsItem(0);
    v5 = 0;
    v6 = *(v4 - 8);
    v17 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v18 = v6;
    do
    {
      v23 = v4;
      v24 = &off_1F4EE6FD8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
      sub_1D332A828(v17 + *(v18 + 72) * v5, boxed_opaque_existential_1);
      v25 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D3330F5C((v8 > 1), v9 + 1, 1);
        v2 = v25;
      }

      ++v5;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x1EEE9AC00](v10);
      v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v12);
      v20 = v4;
      v21 = &off_1F4EE6FD8;
      v14 = __swift_allocate_boxed_opaque_existential_1(&v19);
      sub_1D33302BC(v12, v14);
      *(v2 + 16) = v9 + 1;
      sub_1D331E6AC(&v19, v2 + 40 * v9 + 32);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }

    while (v1 != v5);
  }

  return v2;
}

uint64_t sub_1D3330690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for RecentsItem(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v21 = &v20 - v10;
  v11 = *(a1 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D3330B0C(0, v11, 0);
  v12 = v23;
  if (v11)
  {
    v13 = a1 + 32;
    v14 = (v6 + 56);
    while (1)
    {
      sub_1D3325720(v13, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v15 = v5;
      (*v14)(v4, 0, 1, v5);
      v16 = v21;
      sub_1D33302BC(v4, v21);
      sub_1D33302BC(v16, v9);
      v23 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D3330B0C((v17 > 1), v18 + 1, 1);
        v12 = v23;
      }

      *(v12 + 16) = v18 + 1;
      sub_1D33302BC(v9, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18);
      v13 += 40;
      --v11;
      v5 = v15;
      if (!v11)
      {
        return v12;
      }
    }

    (*v14)(v4, 1, 1, v5);
    sub_1D331E880(v4, &unk_1EC760EE0, &qword_1D33E4CE0);
    return 0;
  }

  return v12;
}

unint64_t sub_1D3330924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761420, &qword_1D33E2978);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761428, &unk_1D33E2980);
    v7 = sub_1D33DF124();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D331E818(v9, v5, &qword_1EC761420, &qword_1D33E2978);
      result = sub_1D33B926C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D33DDDB4();
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D3330B0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D334B678(a1, a2, a3, *v3, &unk_1EC761F80, &qword_1D33E55C0, type metadata accessor for RecentsItem);
  *v3 = result;
  return result;
}

uint64_t sub_1D3330B50(uint64_t a1)
{
  v4 = *(sub_1D33DEC24() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D334CF9C;

  return sub_1D3330DB8(a1, v6, v7, v1 + v5, v8);
}

void *sub_1D3330C70(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DB0, &unk_1D33E4590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D3330DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761158, &qword_1D33E2558);
  v5[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761160, &qword_1D33E2560);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761168, &qword_1D33E2568);
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = sub_1D33DE974();
  v5[16] = sub_1D33DE964();
  v9 = sub_1D33DE914();
  v5[17] = v9;
  v5[18] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D3333E0C, v9, v8);
}

void *sub_1D3330F5C(void *a1, int64_t a2, char a3)
{
  result = sub_1D3330C70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D3330F7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v393 = a4;
  v350 = a3;
  v375 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v352 = &v343 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v353 = &v343 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v354 = &v343 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v359 = &v343 - v12;
  v374 = sub_1D33DDD34();
  v371 = *(v374 - 8);
  v13 = MEMORY[0x1EEE9AC00](v374);
  v346 = &v343 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v345 = &v343 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v344 = &v343 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v349 = &v343 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v343 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v343 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v398 = &v343 - v27;
  v28 = type metadata accessor for RecentsItem(0);
  v372 = *(v28 - 1);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v390 = &v343 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v380 = &v343 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v343 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v387 = &v343 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v391 = &v343 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = (&v343 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = MEMORY[0x1EEE9AC00](v40);
  v376 = (&v343 - v44);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v343 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v356 = &v343 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v347 = &v343 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v397 = &v343 - v52;
  v399 = sub_1D33DDDB4();
  v53 = *(v399 - 8);
  v54 = MEMORY[0x1EEE9AC00](v399);
  v382 = (&v343 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = MEMORY[0x1EEE9AC00](v54);
  v394 = &v343 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v396 = &v343 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v360 = &v343 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v361 = &v343 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v386 = &v343 - v64;
  v65 = MEMORY[0x1E69E7CC0];
  v417 = MEMORY[0x1E69E7CC0];
  v401 = sub_1D3330924(MEMORY[0x1E69E7CC0]);
  v66 = *(a1 + 16);
  v381 = v23;
  v389 = v26;
  v388 = v35;
  v373 = v53;
  if (v66)
  {
    v377 = v42;
    v67 = a1 + 32;
    v384 = (v53 + 56);
    v385 = (v53 + 32);
    v395 = (v53 + 48);
    v392 = (v53 + 16);
    v383 = (v53 + 8);
    v379 = xmmword_1D33E2410;
    v68 = v66;
    while (1)
    {
      v400 = v67;
      sub_1D3325720(v67, &v414);
      v73 = __swift_project_boxed_opaque_existential_1(&v414, v415);
      if (v393)
      {
        sub_1D33A35D8(v47);
        v74 = v399;
        goto LABEL_22;
      }

      v75 = *v73;
      v76 = *(v73 + 32);
      v74 = v399;
      if (v76 > 8)
      {
        break;
      }

      if (((1 << v76) & 0x70) != 0)
      {
        v77 = v75;
        v78 = [v77 participantGroupUUID];

        if (v78)
        {
          v79 = v377;
          sub_1D33DDD84();

          v80 = 0;
        }

        else
        {
          v80 = 1;
          v79 = v377;
        }

        (*v384)(v79, v80, 1, v74);
        sub_1D332FEC4(v79, v47);
      }

      else
      {
        if (((1 << v76) & 0x10C) != 0)
        {
          (*v384)(v47, 1, 1, v399);
LABEL_23:
          sub_1D331E880(v47, &qword_1EC7612B0, qword_1D33E2830);
          sub_1D3325720(&v414, &v412);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_1D3333FEC(0, v65[2] + 1, 1, v65);
          }

          v95 = v65[2];
          v94 = v65[3];
          if (v95 >= v94 >> 1)
          {
            v65 = sub_1D3333FEC((v94 > 1), v95 + 1, 1, v65);
          }

          v96 = __swift_mutable_project_boxed_opaque_existential_1(&v412, v413);
          MEMORY[0x1EEE9AC00](v96);
          v98 = &v343 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v99 + 16))(v98);
          v410 = v28;
          v411 = &off_1F4EE6FD8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v408);
          sub_1D33302BC(v98, boxed_opaque_existential_1);
          v65[2] = v95 + 1;
          sub_1D331E6AC(&v408, &v65[5 * v95 + 4]);
          __swift_destroy_boxed_opaque_existential_1Tm(&v412);
          v417 = v65;
          goto LABEL_5;
        }

        if (v76 != 7)
        {
          break;
        }

        v82 = v73[1];
        v81 = v73[2];
        v83 = v73[3];

        v84 = v82;

        v85 = [v84 groupUUID];
        if (v85)
        {
          v86 = v376;
          v87 = v85;
          sub_1D33DDD84();

          v88 = 0;
        }

        else
        {
          v88 = 1;
          v86 = v376;
        }

        v92 = v399;
        (*v384)(v86, v88, 1, v399);
        sub_1D332FEC4(v86, v47);
        v93 = v82;
        v74 = v92;
        sub_1D332B1DC(v75, v93, v81, v83, 7u);
      }

LABEL_22:
      if ((*v395)(v47, 1, v74) == 1)
      {
        goto LABEL_23;
      }

      (*v385)(v396, v47, v74);
      if (*(v401 + 16) && (v101 = sub_1D33B926C(v396), (v102 & 1) != 0))
      {
        v103 = *(*(v401 + 56) + 8 * v101);
        sub_1D3325720(&v414, &v412);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1D3333FEC(0, v103[2] + 1, 1, v103);
        }

        v105 = v103[2];
        v104 = v103[3];
        if (v105 >= v104 >> 1)
        {
          v103 = sub_1D3333FEC((v104 > 1), v105 + 1, 1, v103);
        }

        v106 = __swift_mutable_project_boxed_opaque_existential_1(&v412, v413);
        MEMORY[0x1EEE9AC00](v106);
        v108 = &v343 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v109 + 16))(v108);
        v410 = v28;
        v411 = &off_1F4EE6FD8;
        v110 = __swift_allocate_boxed_opaque_existential_1(&v408);
        sub_1D33302BC(v108, v110);
        v103[2] = v105 + 1;
        sub_1D331E6AC(&v408, &v103[5 * v105 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v412);
        v111 = *v392;
        v112 = v382;
        (*v392)(v382, v396, v399);
        v113 = v401;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v412 = v113;
        v115 = sub_1D33B926C(v112);
        v117 = *(v113 + 16);
        v118 = (v116 & 1) == 0;
        v119 = __OFADD__(v117, v118);
        v120 = v117 + v118;
        if (v119)
        {
          goto LABEL_207;
        }

        v121 = v116;
        if (*(v113 + 24) >= v120)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v150 = v115;
            sub_1D3399D60();
            v115 = v150;
          }
        }

        else
        {
          sub_1D33976B0(v120, isUniquelyReferenced_nonNull_native);
          v115 = sub_1D33B926C(v382);
          if ((v121 & 1) != (v122 & 1))
          {
            goto LABEL_213;
          }
        }

        v144 = v412;
        v401 = v412;
        if (v121)
        {
          *(*(v412 + 56) + 8 * v115) = v103;
        }

        else
        {
          *(v412 + 8 * (v115 >> 6) + 64) |= 1 << v115;
          v145 = v115;
          v111(*(v144 + 48) + *(v373 + 72) * v115, v382, v399);
          v146 = v401;
          *(*(v401 + 56) + 8 * v145) = v103;
          v147 = *(v146 + 16);
          v119 = __OFADD__(v147, 1);
          v148 = v147 + 1;
          if (v119)
          {
            goto LABEL_211;
          }

          *(v146 + 16) = v148;
        }

        v69 = *v383;
        v70 = &v409;
      }

      else
      {
        v123 = *v392;
        v124 = v394;
        (*v392)(v394, v396, v74);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DB0, &unk_1D33E4590);
        v125 = swift_allocObject();
        *(v125 + 16) = v379;
        sub_1D3325720(&v414, v125 + 32);
        v126 = swift_isUniquelyReferenced_nonNull_native();
        v412 = v401;
        v127 = sub_1D33B926C(v124);
        v129 = *(v401 + 16);
        v130 = (v128 & 1) == 0;
        v119 = __OFADD__(v129, v130);
        v131 = v129 + v130;
        if (v119)
        {
          goto LABEL_203;
        }

        v132 = v128;
        if (*(v401 + 24) >= v131)
        {
          if ((v126 & 1) == 0)
          {
            v149 = v127;
            sub_1D3399D60();
            v127 = v149;
          }
        }

        else
        {
          sub_1D33976B0(v131, v126);
          v127 = sub_1D33B926C(v394);
          if ((v132 & 1) != (v133 & 1))
          {
            goto LABEL_213;
          }
        }

        v134 = v412;
        v401 = v412;
        if ((v132 & 1) == 0)
        {
          v135 = v28;
          v136 = v47;
          *(v412 + 8 * (v127 >> 6) + 64) |= 1 << v127;
          v137 = v373;
          v138 = v127;
          v139 = v394;
          v140 = v399;
          v123(*(v134 + 48) + *(v373 + 72) * v127, v394, v399);
          *(*(v401 + 56) + 8 * v138) = v125;
          v141 = *(v137 + 8);
          v141(v139, v140);
          v141(v396, v140);
          v142 = *(v401 + 16);
          v119 = __OFADD__(v142, 1);
          v143 = v142 + 1;
          if (v119)
          {
            goto LABEL_206;
          }

          *(v401 + 16) = v143;
          v47 = v136;
          v28 = v135;
          goto LABEL_5;
        }

        *(*(v412 + 56) + 8 * v127) = v125;

        v69 = *v383;
        v70 = &v416;
      }

      v71 = v399;
      v69(*(v70 - 32), v399);
      v69(v396, v71);
LABEL_5:
      v26 = v389;
      v35 = v388;
      v72 = v397;
      __swift_destroy_boxed_opaque_existential_1Tm(&v414);
      v67 = (v400 + 5);
      if (!--v68)
      {
        goto LABEL_55;
      }
    }

    v89 = v75;
    v90 = [v89 groupUUID];

    v91 = v360;
    sub_1D33DDD84();

    (*v385)(v47, v91, v74);
    (*v384)(v47, 0, 1, v74);
    goto LABEL_22;
  }

  v72 = v397;
LABEL_55:
  v384 = *(v375 + 16);
  if (!v384)
  {
    goto LABEL_176;
  }

  v151 = 0;
  v383 = (v375 + 32);
  v376 = (v373 + 56);
  v377 = (v373 + 32);
  v382 = (v373 + 48);
  v152 = (v372 + 7);
  *&v379 = v372 + 6;
  v351 = (v371 + 16);
  v372 = (v371 + 56);
  v358 = (v371 + 32);
  v348 = (v371 + 8);
  v357 = (v371 + 48);
  v355 = (v373 + 16);
  v375 = v373 + 8;
  v153 = v356;
  v400 = v152;
  v378 = v28;
  do
  {
    sub_1D3325720(&v383[5 * v151], &v414);
    v154 = __swift_project_boxed_opaque_existential_1(&v414, v415);
    v392 = v151;
    if (v393)
    {
      sub_1D33A35D8(v72);
      v72 = v397;
      v155 = v399;
    }

    else
    {
      v156 = *v154;
      v157 = *(v154 + 32);
      if (v157 > 8)
      {
        goto LABEL_70;
      }

      if (((1 << v157) & 0x70) != 0)
      {
        v158 = v156;
        v159 = [v158 participantGroupUUID];

        if (v159)
        {
          sub_1D33DDD84();

          v160 = 0;
        }

        else
        {
          v160 = 1;
        }

        v72 = v397;
        v155 = v399;
        (*v376)(v153, v160, 1, v399);
        sub_1D332FEC4(v153, v72);
        goto LABEL_73;
      }

      if (((1 << v157) & 0x10C) != 0)
      {
        (*v376)(v72, 1, 1, v399);
LABEL_74:
        sub_1D331E880(v72, &qword_1EC7612B0, qword_1D33E2830);
        sub_1D3325720(&v414, &v412);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_1D3333FEC(0, v65[2] + 1, 1, v65);
        }

        v178 = v65[2];
        v177 = v65[3];
        v179 = v178 + 1;
        if (v178 >= v177 >> 1)
        {
          v65 = sub_1D3333FEC((v177 > 1), v178 + 1, 1, v65);
        }

LABEL_162:
        v300 = __swift_mutable_project_boxed_opaque_existential_1(&v412, v413);
        MEMORY[0x1EEE9AC00](v300);
        v302 = &v343 - ((v301 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v303 + 16))(v302);
        v410 = v28;
        v411 = &off_1F4EE6FD8;
        v304 = __swift_allocate_boxed_opaque_existential_1(&v408);
        sub_1D33302BC(v302, v304);
        v65[2] = v179;
        sub_1D331E6AC(&v408, &v65[5 * v178 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v412);
        v417 = v65;
        v72 = v397;
        v305 = v392;
        v152 = v400;
        goto LABEL_163;
      }

      if (v157 == 7)
      {
        v161 = v35;
        v162 = v154[1];
        v163 = v154[2];
        v164 = v154[3];

        v165 = v162;

        v166 = [v165 groupUUID];
        if (v166)
        {
          v167 = v347;
          v168 = v166;
          sub_1D33DDD84();

          v169 = v167;
          v170 = 0;
        }

        else
        {
          v170 = 1;
          v169 = v347;
        }

        v155 = v399;
        (*v376)(v169, v170, 1, v399);
        v174 = v169;
        v175 = v397;
        sub_1D332FEC4(v174, v397);
        v176 = v162;
        v72 = v175;
        sub_1D332B1DC(v156, v176, v163, v164, 7u);
        v152 = v400;
        v35 = v161;
        v26 = v389;
      }

      else
      {
LABEL_70:
        v171 = v156;
        v172 = [v171 groupUUID];

        v173 = v360;
        sub_1D33DDD84();

        v72 = v397;
        v155 = v399;
        (*v377)(v397, v173, v399);
        (*v376)(v72, 0, 1, v155);
      }
    }

LABEL_73:
    if ((*v382)(v72, 1, v155) == 1)
    {
      goto LABEL_74;
    }

    (*v377)(v386, v72, v155);
    if (!*(v401 + 16) || (v180 = sub_1D33B926C(v386), (v181 & 1) == 0) || (v182 = *(*(v401 + 56) + 8 * v180), (v396 = *(v182 + 16)) == 0))
    {
      sub_1D3325720(&v414, &v412);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_1D3333FEC(0, v65[2] + 1, 1, v65);
      }

      v178 = v65[2];
      v299 = v65[3];
      v179 = v178 + 1;
      if (v178 >= v299 >> 1)
      {
        v65 = sub_1D3333FEC((v299 > 1), v178 + 1, 1, v65);
      }

      (*v375)(v386, v399);
      goto LABEL_162;
    }

    v395 = (v182 + 32);

    v184 = 0;
    v385 = MEMORY[0x1E69E7CC0];
    v185 = v398;
    v394 = v183;
    do
    {
      if (v184 >= *(v183 + 16))
      {
        __break(1u);
        goto LABEL_201;
      }

      sub_1D3325720(&v395[5 * v184], &v412);
      sub_1D3325720(&v412, &v402);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
      v186 = swift_dynamicCast();
      v187 = *v152;
      if (!v186)
      {
        v187(v185, 1, 1, v28);
        v206 = v185;
LABEL_91:
        sub_1D331E880(v206, &unk_1EC760EE0, &qword_1D33E4CE0);
        goto LABEL_92;
      }

      v187(v185, 0, 1, v28);
      v188 = v185;
      v189 = v391;
      sub_1D33302BC(v188, v391);
      sub_1D3325720(&v414, &v402);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v187(v26, 1, 1, v28);
        sub_1D33379F4(v189, type metadata accessor for RecentsItem);
        v206 = v26;
        goto LABEL_91;
      }

      v187(v26, 0, 1, v28);
      v190 = v387;
      sub_1D33302BC(v26, v387);
      sub_1D332A828(v189, v35);
      v191 = v190;
      v192 = v28;
      v193 = v380;
      sub_1D332A828(v191, v380);
      v194 = v192[11];
      v195 = type metadata accessor for ReminderStatus(0);
      (*(*(v195 - 8) + 56))(&v390[v194], 1, 1, v195);
      if (v35[32] == 4 && *(v193 + 32) == 2)
      {
        v196 = *v35;
        v365 = *(v35 + 1);
        v197 = *(v35 + 3);
        v364 = *(v35 + 2);
        v363 = v197;
        v198 = v193;
        v199 = *v193;
        v369 = *(v193 + 8);
        v368 = *(v193 + 16);
        v367 = *(v193 + 24);
        v200 = v390;
        v362 = v196;
        *v390 = v196;
        *(v200 + 1) = v199;
        v366 = v199;
        *(v200 + 2) = 0;
        *(v200 + 3) = 0;
        v200[32] = 6;
        v201 = *(v35 + 7);
        *(v200 + 6) = *(v35 + 6);
        *(v200 + 7) = v201;
        v371 = v201;
        v202 = *(v35 + 9);
        v203 = v35;
        if (v202)
        {
          v204 = *(v35 + 8);
          v205 = v202;
        }

        else
        {
          v204 = *(v193 + 64);
        }

        v28 = v378;
        v225 = v390;
        v226 = &v390[v378[9]];
        v370 = &v390[v378[10]];
        *(v390 + 8) = v204;
        *(v225 + 72) = v205;
        *(v225 + 40) = *(v203 + 40);
        sub_1D3367A94(v203 + v28[8], v225 + v28[8]);
        sub_1D332B0D0(v362, v365, v364, v363, 4u);
        sub_1D332B0D0(v366, v369, v368, v367, 2u);

        sub_1D33379F4(v203, type metadata accessor for RecentsItem);
        v227 = (v198 + v28[9]);
        v228 = v227[1];
        *v226 = *v227;
        *(v226 + 1) = v228;
        v229 = (v198 + v28[10]);
        v231 = *v229;
        v230 = v229[1];

        sub_1D33379F4(v198, type metadata accessor for RecentsItem);
        v232 = v370;
        *v370 = v231;
        *(v232 + 1) = v230;
        v224 = v381;
        sub_1D332A828(v225, v381);
        v187(v224, 0, 1, v28);
        sub_1D33379F4(v225, type metadata accessor for RecentsItem);
        v222 = v389;
        v223 = v388;
      }

      else
      {
        v222 = v26;
        sub_1D33379F4(v193, type metadata accessor for RecentsItem);
        v223 = v35;
        sub_1D33379F4(v35, type metadata accessor for RecentsItem);
        sub_1D331E880(&v390[v194], &unk_1EC761320, &unk_1D33E28D0);
        v224 = v381;
        v28 = v378;
        v187(v381, 1, 1, v378);
      }

      v233 = (*v379)(v224, 1, v28);
      v234 = v391;
      if (v233 == 1)
      {
        sub_1D33379F4(v387, type metadata accessor for RecentsItem);
        sub_1D33379F4(v234, type metadata accessor for RecentsItem);
        sub_1D331E880(v224, &unk_1EC760EE0, &qword_1D33E4CE0);
        v35 = v223;
        v26 = v222;
LABEL_92:
        v407 = 0;
        v405 = 0u;
        v406 = 0u;
LABEL_93:
        sub_1D331E880(&v405, &qword_1EC761B88, &unk_1D33E4580);
        sub_1D3325720(&v412, &v408);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_1D3333FEC(0, v65[2] + 1, 1, v65);
        }

        v208 = v65[2];
        v207 = v65[3];
        if (v208 >= v207 >> 1)
        {
          v65 = sub_1D3333FEC((v207 > 1), v208 + 1, 1, v65);
        }

        v209 = __swift_mutable_project_boxed_opaque_existential_1(&v408, v410);
        MEMORY[0x1EEE9AC00](v209);
        v211 = &v343 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v212 + 16))(v211);
        *(&v406 + 1) = v28;
        v407 = &off_1F4EE6FD8;
        v213 = __swift_allocate_boxed_opaque_existential_1(&v405);
        sub_1D33302BC(v211, v213);
        v65[2] = v208 + 1;
        sub_1D331E6AC(&v405, &v65[5 * v208 + 4]);
        __swift_destroy_boxed_opaque_existential_1Tm(&v408);
        sub_1D3325720(&v414, &v408);
        v215 = v65[2];
        v214 = v65[3];
        if (v215 >= v214 >> 1)
        {
          v65 = sub_1D3333FEC((v214 > 1), v215 + 1, 1, v65);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v412);
        v216 = __swift_mutable_project_boxed_opaque_existential_1(&v408, v410);
        MEMORY[0x1EEE9AC00](v216);
        v218 = &v343 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v219 + 16))(v218);
        *(&v406 + 1) = v28;
        v407 = &off_1F4EE6FD8;
        v220 = __swift_allocate_boxed_opaque_existential_1(&v405);
        sub_1D33302BC(v218, v220);
        v65[2] = v215 + 1;
        sub_1D331E6AC(&v405, &v65[5 * v215 + 4]);
        v221 = &v408;
LABEL_100:
        __swift_destroy_boxed_opaque_existential_1Tm(v221);
        v417 = v65;
        v185 = v398;
        v152 = v400;
        goto LABEL_101;
      }

      *(&v406 + 1) = v28;
      v407 = &off_1F4EE6FD8;
      v235 = __swift_allocate_boxed_opaque_existential_1(&v405);
      sub_1D33302BC(v224, v235);
      sub_1D33379F4(v387, type metadata accessor for RecentsItem);
      sub_1D33379F4(v234, type metadata accessor for RecentsItem);
      v35 = v223;
      v26 = v222;
      if (!*(&v406 + 1))
      {
        goto LABEL_93;
      }

      sub_1D331E6AC(&v405, &v408);
      sub_1D3325720(&v408, &v405);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v236 = v385;
      }

      else
      {
        v236 = sub_1D3333FEC(0, v385[2] + 1, 1, v385);
      }

      v385 = v236;
      v238 = v236[2];
      v237 = v236[3];
      if (v238 >= v237 >> 1)
      {
        v385 = sub_1D3333FEC((v237 > 1), v238 + 1, 1, v385);
      }

      v239 = __swift_mutable_project_boxed_opaque_existential_1(&v405, *(&v406 + 1));
      MEMORY[0x1EEE9AC00](v239);
      v241 = &v343 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v242 + 16))(v241);
      v403 = v28;
      v404 = &off_1F4EE6FD8;
      v243 = __swift_allocate_boxed_opaque_existential_1(&v402);
      sub_1D33302BC(v241, v243);
      v244 = v385;
      v385[2] = v238 + 1;
      sub_1D331E6AC(&v402, &v244[5 * v238 + 4]);
      __swift_destroy_boxed_opaque_existential_1Tm(&v405);
      v245 = __swift_project_boxed_opaque_existential_1(&v414, v415);
      v246 = v245;
      if (*(v245 + 32) == 7)
      {
        v248 = v245[1];
        v250 = v245[2];
        v249 = v245[3];
        *&v405 = *v245;
        v247 = v405;
        *(&v405 + 1) = v248;
        *&v406 = v250;

        v251 = v248;

        v252 = ConversationLink.prevailingSuggestion.getter();
        if (v252)
        {
          v369 = v248;
          v370 = v250;
          v371 = v249;
          v253 = v252;
          v254 = [v252 documentDate];
          v255 = v358;
          v367 = (v358 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
          if (v254)
          {
            v256 = v346;
            v257 = v254;
            sub_1D33DDCF4();

            v258 = *v255;
            v259 = v345;
            v260 = v256;
            v261 = v374;
            (*v255)(v345, v260, v374);
            if (([v253 flags] & 0x40) == 0)
            {
              v368 = v258;
              if (([v253 flags] & 0x20) == 0)
              {
                v368 = v253;
                (*v348)(v259, v261);
                v262 = 1;
                v263 = v261;
                v264 = v354;
                goto LABEL_125;
              }

              [v253 documentTimeInterval];
              v297 = v261;
              v264 = v354;
              sub_1D33DDC84();
              (*v348)(v259, v297);
              v267 = *v372;
              (*v372)(v264, 0, 1, v297);
              sub_1D332B1DC(v247, v369, v370, v371, 7u);

              v298 = (*v357)(v264, 1, v297);
              v272 = v352;
              v26 = v389;
              v35 = v388;
              v275 = v368;
              if (v298 != 1)
              {
LABEL_132:
                v371 = v267;
                v276 = v344;
                v270 = v374;
                v277 = v275;
                v275(v344, v264, v374);
                v269 = v359;
                v277(v359, v276, v270);
                v267 = v371;
LABEL_133:
                v152 = v400;
                (v267)(v269, 0, 1, v270);
                goto LABEL_134;
              }

LABEL_127:
              sub_1D331E880(v264, &qword_1EC760E10, &unk_1D33E1A90);
              sub_1D3367A94(v246 + v28[8], v272);
              v273 = type metadata accessor for CallInfo(0);
              if ((*(*(v273 - 8) + 48))(v272, 1, v273) == 1)
              {
                sub_1D331E880(v272, &unk_1EC761DE0, &unk_1D33E50F0);
                v152 = v400;
                goto LABEL_129;
              }

              v274 = v272 + *(v273 + 24);
              v269 = v359;
              v270 = v374;
              (*v351)(v359, v274, v374);
              sub_1D33379F4(v272, type metadata accessor for CallInfo);
              goto LABEL_133;
            }

            v368 = v253;
            v263 = v261;
            v264 = v354;
            (v258)(v354, v259, v263);
            v262 = 0;
          }

          else
          {
            v368 = v253;
            v262 = 1;
            v264 = v354;
            v263 = v374;
          }

LABEL_125:
          v271 = v370;
          v267 = *v372;
          (*v372)(v264, v262, 1, v263);
          sub_1D332B1DC(v247, v369, v271, v371, 7u);

          if ((*v357)(v264, 1, v263) != 1)
          {
            v275 = *v358;
            v26 = v389;
            v35 = v388;
            goto LABEL_132;
          }
        }

        else
        {
          sub_1D332B1DC(v247, v248, v250, v249, 7u);
          v267 = *v372;
          v264 = v354;
          (*v372)(v354, 1, 1, v374);
        }

        v272 = v352;
        v26 = v389;
        v35 = v388;
        goto LABEL_127;
      }

      v265 = v353;
      sub_1D3367A94(v245 + v28[8], v353);
      v266 = type metadata accessor for CallInfo(0);
      if ((*(*(v266 - 8) + 48))(v265, 1, v266) == 1)
      {
        sub_1D331E880(v265, &unk_1EC761DE0, &unk_1D33E50F0);
        v267 = *v372;
        v152 = v400;
LABEL_129:
        v269 = v359;
        (v267)(v359, 1, 1, v374);
LABEL_135:
        sub_1D331E880(v269, &qword_1EC760E10, &unk_1D33E1A90);
        goto LABEL_136;
      }

      v268 = v265 + *(v266 + 24);
      v269 = v359;
      v270 = v374;
      (*v351)(v359, v268, v374);
      sub_1D33379F4(v265, type metadata accessor for CallInfo);
      v152 = v400;
      (*v372)(v269, 0, 1, v270);
LABEL_134:
      if ((*v357)(v269, 1, v270) == 1)
      {
        goto LABEL_135;
      }

      v278 = v349;
      v279 = v374;
      (*v358)(v349, v269, v374);
      v280 = sub_1D33DDCA4();
      (*v348)(v278, v279);
      if (v280)
      {
        v281 = (v65 + 4);
        v282 = -v65[2];
        v283 = -1;
        while (v282 + v283 != -1)
        {
          if (++v283 >= v65[2])
          {
            goto LABEL_202;
          }

          sub_1D3325720(v281, &v405);
          __swift_project_boxed_opaque_existential_1(&v405, *(&v406 + 1));
          v284 = RecentsItem.dataSourceId.getter();
          v286 = v285;
          __swift_project_boxed_opaque_existential_1(&v414, v415);
          if (v284 == RecentsItem.dataSourceId.getter() && v286 == v287)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(&v405);
            v185 = v398;
LABEL_155:
            __swift_destroy_boxed_opaque_existential_1Tm(&v408);
            __swift_destroy_boxed_opaque_existential_1Tm(&v412);
            v26 = v389;
            v152 = v400;
            v35 = v388;
            goto LABEL_101;
          }

          v281 += 40;
          v289 = sub_1D33DF1B4();

          __swift_destroy_boxed_opaque_existential_1Tm(&v405);
          v185 = v398;
          if (v289)
          {
            goto LABEL_155;
          }
        }

        sub_1D3325720(&v414, &v405);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_1D3333FEC(0, v65[2] + 1, 1, v65);
        }

        v26 = v389;
        v35 = v388;
        v291 = v65[2];
        v290 = v65[3];
        if (v291 >= v290 >> 1)
        {
          v65 = sub_1D3333FEC((v290 > 1), v291 + 1, 1, v65);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v408);
        __swift_destroy_boxed_opaque_existential_1Tm(&v412);
        v292 = __swift_mutable_project_boxed_opaque_existential_1(&v405, *(&v406 + 1));
        MEMORY[0x1EEE9AC00](v292);
        v294 = &v343 - ((v293 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v295 + 16))(v294);
        v403 = v28;
        v404 = &off_1F4EE6FD8;
        v296 = __swift_allocate_boxed_opaque_existential_1(&v402);
        sub_1D33302BC(v294, v296);
        v65[2] = v291 + 1;
        sub_1D331E6AC(&v402, &v65[5 * v291 + 4]);
        v221 = &v405;
        goto LABEL_100;
      }

LABEL_136:
      __swift_destroy_boxed_opaque_existential_1Tm(&v408);
      __swift_destroy_boxed_opaque_existential_1Tm(&v412);
      v185 = v398;
LABEL_101:
      v183 = v394;
      ++v184;
    }

    while (v184 != v396);

    v306 = *v355;
    v307 = v361;
    (*v355)(v361, v386, v399);

    v308 = v401;
    v309 = swift_isUniquelyReferenced_nonNull_native();
    v412 = v308;
    v310 = sub_1D33B926C(v307);
    v312 = *(v308 + 16);
    v313 = (v311 & 1) == 0;
    v119 = __OFADD__(v312, v313);
    v314 = v312 + v313;
    if (v119)
    {
      goto LABEL_210;
    }

    v315 = v311;
    if (*(v308 + 24) >= v314)
    {
      v72 = v397;
      if ((v309 & 1) == 0)
      {
        v324 = v310;
        sub_1D3399D60();
        v72 = v397;
        v310 = v324;
      }
    }

    else
    {
      sub_1D33976B0(v314, v309);
      v310 = sub_1D33B926C(v361);
      if ((v315 & 1) != (v316 & 1))
      {
        goto LABEL_213;
      }

      v72 = v397;
    }

    v317 = v412;
    v401 = v412;
    if (v315)
    {
      *(*(v412 + 56) + 8 * v310) = v385;
    }

    else
    {
      *(v412 + 8 * (v310 >> 6) + 64) |= 1 << v310;
      v318 = v310;
      v306(*(v317 + 48) + *(v373 + 72) * v310, v361, v399);
      v319 = v401;
      *(*(v401 + 56) + 8 * v318) = v385;
      v320 = *(v319 + 16);
      v119 = __OFADD__(v320, 1);
      v321 = v320 + 1;
      if (v119)
      {
        goto LABEL_212;
      }

      *(v319 + 16) = v321;
    }

    v322 = *v375;
    v323 = v399;
    (*v375)(v361, v399);
    v322(v386, v323);

    v305 = v392;
    v153 = v356;
LABEL_163:
    v151 = v305 + 1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v414);
  }

  while (v151 != v384);
LABEL_176:
  v325 = v401 + 64;
  v326 = 1 << *(v401 + 32);
  v327 = -1;
  if (v326 < 64)
  {
    v327 = ~(-1 << v326);
  }

  v328 = v327 & *(v401 + 64);
  v329 = (v326 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v330 = 0;
  v331 = MEMORY[0x1E69E7CC0];
  while (v328)
  {
    v332 = v401;
LABEL_187:
    v334 = *(*(v332 + 56) + ((v330 << 9) | (8 * __clz(__rbit64(v328)))));
    v335 = *(v334 + 16);
    v336 = v331[2];
    v337 = v336 + v335;
    if (__OFADD__(v336, v335))
    {
      goto LABEL_204;
    }

    v338 = swift_isUniquelyReferenced_nonNull_native();
    if (!v338 || v337 > v331[3] >> 1)
    {
      if (v336 <= v337)
      {
        v339 = v336 + v335;
      }

      else
      {
        v339 = v336;
      }

      v331 = sub_1D3333FEC(v338, v339, 1, v331);
    }

    v328 &= v328 - 1;
    if (*(v334 + 16))
    {
      if ((v331[3] >> 1) - v331[2] < v335)
      {
        goto LABEL_208;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
      swift_arrayInitWithCopy();

      if (v335)
      {
        v340 = v331[2];
        v119 = __OFADD__(v340, v335);
        v341 = v340 + v335;
        if (v119)
        {
          goto LABEL_209;
        }

        v331[2] = v341;
      }
    }

    else
    {

      if (v335)
      {
        goto LABEL_205;
      }
    }
  }

  v332 = v401;
  while (1)
  {
    v333 = v330 + 1;
    if (__OFADD__(v330, 1))
    {
      break;
    }

    if (v333 >= v329)
    {

      sub_1D3330384(v331);

      return v417;
    }

    v328 = *(v325 + 8 * v333);
    ++v330;
    if (v328)
    {
      v330 = v333;
      goto LABEL_187;
    }
  }

LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  result = sub_1D33DF1E4();
  __break(1u);
  return result;
}
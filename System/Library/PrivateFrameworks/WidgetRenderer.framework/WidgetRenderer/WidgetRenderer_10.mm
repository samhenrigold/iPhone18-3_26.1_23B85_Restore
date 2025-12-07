uint64_t sub_1DAE78E9C()
{
  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1EE011BD8 + 184);
  v7[3] = type metadata accessor for ActivitySceneDelegateBase(0);
  v7[4] = sub_1DAE7B8AC(&qword_1EE006910, type metadata accessor for ActivitySceneDelegateBase, &unk_1DAEDD590);
  v7[0] = v0;
  swift_getObjectType();
  v2 = v1;
  v3 = v0;
  sub_1DAED29FC();
  MEMORY[0x1E127DA50](46, 0xE100000000000000);
  v4 = *&v3[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
  v5 = *&v3[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

  MEMORY[0x1E127DA50](v4, v5);

  sub_1DAECE2EC();

  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

double sub_1DAE79208(uint64_t a1)
{
  v3 = sub_1DAECEDEC();
  v4 = *(v3 - 8);
  *&result = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated] == 1)
  {
    v8 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v1[v8], v3);
    v9 = v1;
    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v35 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v38[0] = v14;
      *v13 = 136446210;
      v15 = *&v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v16 = *&v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

      v17 = sub_1DAD6482C(v15, v16, v38);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] scene did disconnect", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E127F100](v14, -1, -1);
      v18 = v13;
      a1 = v35;
      MEMORY[0x1E127F100](v18, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    v19 = MEMORY[0x1E69E7D40];
    if (v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground] != 1)
    {
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0x1F0))(a1);
    }

    (*((*v19 & *v9) + 0x230))(0x656E6E6F63736964, 0xEA00000000007463);
    v20 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__viewModels;
    swift_beginAccess();
    v21 = *&v9[v20];
    if (v21 >> 62)
    {
LABEL_26:
      v22 = sub_1DAED247C();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22)
    {
      v23 = 0;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E127E1F0](v23, v21);
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_17:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_26;
          }

          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_17;
          }
        }

        sub_1DAE67BAC();

        ++v23;
      }

      while (v24 != v22);
    }

    *&v9[v20] = MEMORY[0x1E69E7CC0];

    v25 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window;
    v26 = *&v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window];
    if (v26)
    {
      [v26 setRootViewController_];
      v27 = *&v9[v25];
    }

    else
    {
      v27 = 0;
    }

    *&v9[v25] = 0;

    if (qword_1EE00B438 != -1)
    {
      swift_once();
    }

    v28 = *(qword_1EE011BD8 + 184);
    swift_getObjectType();
    v29 = v28;
    v36 = sub_1DAED29FC();
    v37 = v30;
    MEMORY[0x1E127DA50](46, 0xE100000000000000);
    v31 = &v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
    v32 = *&v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
    v33 = *(v31 + 1);

    MEMORY[0x1E127DA50](v32, v33);

    sub_1DAECE2DC();
  }

  return result;
}

void sub_1DAE79708(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v4;
    sub_1DAE7C698(&v7, a2);
  }
}

uint64_t sub_1DAE79778(uint64_t a1, unint64_t a2)
{
  v5 = sub_1DAECEDEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__hasUI] = 1;
  v9 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  (*(v6 + 16))(v8, &v2[v9], v5);
  v10 = v2;

  v11 = sub_1DAECEDCC();
  v12 = sub_1DAED203C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136446466;
    v16 = *&v10[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
    v17 = *&v10[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

    v18 = sub_1DAD6482C(v16, v17, &v22);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1DAD6482C(v21, a2, &v22);
    _os_log_impl(&dword_1DAD61000, v11, v12, "[%{public}s] Creating UI - reason: %{public}s.", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v15, -1, -1);
    MEMORY[0x1E127F100](v14, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

id sub_1DAE799C8(uint64_t a1, unint64_t a2)
{
  v5 = sub_1DAECEDEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  (*(v6 + 16))(v8, &v2[v9], v5);
  v10 = v2;

  v11 = sub_1DAECEDCC();
  v12 = sub_1DAED203C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    *v14 = 136446466;
    v21 = v5;
    v22 = v15;
    v16 = *&v10[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
    v17 = *&v10[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

    v18 = sub_1DAD6482C(v16, v17, &v22);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1DAD6482C(v20, a2, &v22);
    _os_log_impl(&dword_1DAD61000, v11, v12, "[%{public}s] Invalidating UI - reason: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v15, -1, -1);
    MEMORY[0x1E127F100](v14, -1, -1);

    (*(v6 + 8))(v8, v21);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v10[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__hasUI] = 0;
  result = *&v10[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window];
  if (result)
  {
    return [result setRootViewController_];
  }

  return result;
}

id sub_1DAE79C48()
{
  v0 = sub_1DAECDBFC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DAECE7BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DAECE7DC();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E6989B88] || v8 == *MEMORY[0x1E6989B78])
  {
    (*(v5 + 96))(v7, v4);
    (*(v1 + 32))(v3, v7, v0);
    v9 = objc_allocWithZone(MEMORY[0x1E6989C50]);
    v10 = sub_1DAECDB8C();
    v11 = [v9 initWithURL_];

    (*(v1 + 8))(v3, v0);
  }

  else if (v8 == *MEMORY[0x1E6989B90])
  {
    (*(v5 + 96))(v7, v4);
    v13 = *v7;
    v11 = [objc_allocWithZone(MEMORY[0x1E6989C50]) initWithNSUserActivity_];
  }

  else
  {
    if (v8 != *MEMORY[0x1E6989B80])
    {
      (*(v5 + 8))(v7, v4);
    }

    return 0;
  }

  return v11;
}

id sub_1DAE79ED8()
{
  *&v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window] = 0;
  v1 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  if (qword_1EE005E28 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  v3 = __swift_project_value_buffer(v2, qword_1EE011718);
  v4 = *(*(v2 - 8) + 16);
  v4(&v0[v1], v3, v2);
  v5 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  if (qword_1EE005DF0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1EE0116B8);
  v4(&v0[v5], v6, v2);
  v7 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  if (qword_1EE005E08 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_1EE0116E8);
  v4(&v0[v7], v8, v2);
  v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground] = 0;
  v9 = &v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
  *v9 = 1701736302;
  v9[1] = 0xE400000000000000;
  v10 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_metricsDefinition;
  v11 = sub_1DAED1ABC();
  (*(*(v11 - 8) + 56))(&v0[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_descriptor;
  v13 = sub_1DAECDE4C();
  (*(*(v13 - 8) + 56))(&v0[v12], 1, 1, v13);
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__viewModels] = MEMORY[0x1E69E7CC0];
  v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__hasUI] = 0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ActivitySceneDelegateBase(0);
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_1DAE7A194()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneDelegateBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivitySceneDelegateBase(uint64_t a1)
{
  result = qword_1EE0068F8;
  if (!qword_1EE0068F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE7A35C(uint64_t a1)
{
  sub_1DAECEDEC();
  if (v1 <= 0x3F)
  {
    sub_1DAE7A4D8(319, &qword_1EE0056C8, MEMORY[0x1E6985AA8]);
    if (v2 <= 0x3F)
    {
      sub_1DAE7A4D8(319, &unk_1EE00A6D0, MEMORY[0x1E6959B98]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1DAE7A4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DAED233C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAE7A52C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 recursiveDescription];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1DAED1CEC();
      v7 = v6;

      v10 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);

      MEMORY[0x1E127DA50](10, 0xE100000000000000);
      MEMORY[0x1E127DA50](v5, v7);
    }

    else
    {
      sub_1DAED256C();
      v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);

      v10 = v8;
      MEMORY[0x1E127DA50](0xD000000000000017, 0x80000001DAEE5020);
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);

    MEMORY[0x1E127DA50](0x6E6977206F4E203ALL, 0xEB00000000776F64);
  }

  return v10;
}

uint64_t sub_1DAE7A694()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A138, &qword_1DAEDD5C0);
  return sub_1DAED1D4C();
}

void sub_1DAE7A700(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A140, &qword_1DAEDD5C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v166 = &v151 - v5;
  v6 = sub_1DAECEDEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v174 = &v151 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v170 = &v151 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v168 = &v151 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v167 = &v151 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A148, &qword_1DAEDD5D0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v165 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v151 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v151 - v24;
  v26 = sub_1DAECDE4C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v163 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v164 = &v151 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v151 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v173 = &v151 - v35;
  sub_1DAECE9FC();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    v72 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    (*(v7 + 16))(v9, &v2[v72], v6);
    v73 = v7;
    v74 = a1;
    v75 = sub_1DAECEDCC();
    v76 = sub_1DAED201C();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v175[0] = v78;
      *v77 = 136446210;
      swift_getObjectType();
      v79 = sub_1DAED29FC();
      v81 = sub_1DAD6482C(v79, v80, v175);

      *(v77 + 4) = v81;
      _os_log_impl(&dword_1DAD61000, v75, v76, "Scene is not a session scene - received: %{public}s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x1E127F100](v78, -1, -1);
      MEMORY[0x1E127F100](v77, -1, -1);
    }

    (*(v73 + 8))(v9, v6);
    return;
  }

  v172 = v7;
  v37 = v36;
  swift_getKeyPath();
  v171 = a1;
  v169 = v37;
  sub_1DAECE9BC();

  v38 = v177;
  if (!v177)
  {
    v27[7](v25, 1, 1, v26);
LABEL_14:
    sub_1DAD64398(v25, &qword_1ECC0A148, &qword_1DAEDD5D0);
    v82 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    v83 = v172;
    v84 = &v2[v82];
    v85 = v174;
    v86 = v6;
    (*(v172 + 16))(v174, v84, v6);
    v87 = v171;
    v88 = sub_1DAECEDCC();
    v89 = sub_1DAED201C();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v175[0] = v91;
      *v90 = 136446210;
      v92 = [v169 description];
      v93 = sub_1DAED1CEC();
      v95 = v94;

      v96 = sub_1DAD6482C(v93, v95, v175);

      *(v90 + 4) = v96;
      _os_log_impl(&dword_1DAD61000, v88, v89, "No activity descriptor provided [%{public}s]", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x1E127F100](v91, -1, -1);
      MEMORY[0x1E127F100](v90, -1, -1);

      v97 = *(v83 + 8);
      v98 = v174;
    }

    else
    {

      v97 = *(v83 + 8);
      v98 = v85;
    }

    v97(v98, v86);
    return;
  }

  v39 = 1;
  v161 = v27[7];
  v162 = (v27 + 7);
  v161(v22, 1, 1, v26);
  sub_1DAE7B8AC(&qword_1EE00A6E0, MEMORY[0x1E6959B98], MEMORY[0x1E6959BB0]);
  sub_1DAED27BC();

  v40 = v27[6];
  if ((v40)(v22, 1, v26) != 1)
  {
    (v27[4])(v25, v22, v26);
    v39 = 0;
  }

  v161(v25, v39, 1, v26);
  if ((v40)(v25, 1, v26) == 1)
  {
    goto LABEL_14;
  }

  v174 = v27;
  (v27[4])(v173, v25, v26);
  v41 = v171;
  v42 = [v171 _FBSScene];
  v43 = [v42 identifier];

  v44 = sub_1DAED1CEC();
  v46 = v45;

  v47 = &v2[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
  *v47 = v44;
  v47[1] = v46;

  sub_1DAE78E9C();
  swift_getKeyPath();
  sub_1DAECE9BC();

  v48 = v177;
  if (v177)
  {
    v49 = sub_1DAECE7FC();
    v50 = sub_1DAECE8DC();

    v51 = v172;
    if (v50)
    {
      v157 = v48;
      v52 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
      swift_beginAccess();
      v53 = *(v51 + 16);
      v156 = v52;
      v54 = v167;
      v159 = v6;
      v155 = v53;
      v53(v167, &v2[v52], v6);
      v55 = v174;
      v56 = *(v174 + 2);
      v170 = v174 + 16;
      v160 = v56;
      v56(v33, v173, v26);
      v57 = v2;
      v58 = sub_1DAECEDCC();
      LODWORD(v52) = sub_1DAED203C();
      v154 = v57;

      v153 = v52;
      if (os_log_type_enabled(v58, v52))
      {
        v59 = swift_slowAlloc();
        v151 = v26;
        v60 = v59;
        v152 = swift_slowAlloc();
        v175[0] = v152;
        *v60 = 136446466;
        v61 = *v47;
        v62 = v47[1];

        v63 = sub_1DAD6482C(v61, v62, v175);

        *(v60 + 4) = v63;
        *(v60 + 12) = 2082;
        v64 = sub_1DAECDE3C();
        v66 = v65;
        v26 = v151;
        v158 = *(v55 + 1);
        v158(v33, v151);
        v67 = sub_1DAD6482C(v64, v66, v175);

        *(v60 + 14) = v67;
        _os_log_impl(&dword_1DAD61000, v58, v153, "[%{public}s] Created with id: %{public}s", v60, 0x16u);
        v68 = v152;
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v68, -1, -1);
        v69 = v60;
        v70 = v173;
        MEMORY[0x1E127F100](v69, -1, -1);

        v71 = v167;
        v167 = *(v172 + 8);
        (v167)(v71, v159);
      }

      else
      {

        v158 = *(v55 + 1);
        v158(v33, v26);
        v167 = *(v172 + 8);
        (v167)(v54, v159);
        v70 = v173;
      }

      v117 = &v2[v156];
      v118 = v168;
      v119 = v159;
      v155(v168, v117, v159);
      v120 = v164;
      v160(v164, v70, v26);
      v121 = v154;
      v122 = sub_1DAECEDCC();
      v123 = sub_1DAED200C();

      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v175[0] = v125;
        *v124 = 136446466;
        v126 = v120;
        v127 = *v47;
        v128 = v47[1];

        v129 = sub_1DAD6482C(v127, v128, v175);

        *(v124 + 4) = v129;
        *(v124 + 12) = 2082;
        v160(v163, v126, v26);
        v130 = sub_1DAED1D4C();
        v132 = v131;
        v133 = v126;
        v134 = v158;
        v158(v133, v26);
        v135 = sub_1DAD6482C(v130, v132, v175);

        *(v124 + 14) = v135;
        _os_log_impl(&dword_1DAD61000, v122, v123, "[%{public}s] Descriptor: %{public}s", v124, 0x16u);
        swift_arrayDestroy();
        v136 = v125;
        v70 = v173;
        MEMORY[0x1E127F100](v136, -1, -1);
        MEMORY[0x1E127F100](v124, -1, -1);

        v137 = v168;
        v138 = v159;
      }

      else
      {
        v139 = v119;

        v134 = v158;
        v158(v120, v26);
        v137 = v118;
        v138 = v139;
      }

      (v167)(v137, v138);
      v140 = v171;
      swift_unknownObjectWeakAssign();
      v141 = v165;
      v160(v165, v70, v26);
      v161(v141, 0, 1, v26);
      v142 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_descriptor;
      swift_beginAccess();
      sub_1DAD94438(v141, &v121[v142], &qword_1ECC0A148, &qword_1DAEDD5D0);
      swift_endAccess();
      v143 = v157;
      v144 = v166;
      sub_1DAEBB27C(v143, v166);
      v145 = sub_1DAED1ABC();
      (*(*(v145 - 8) + 56))(v144, 0, 1, v145);
      v146 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_metricsDefinition;
      swift_beginAccess();
      sub_1DAD94438(v144, &v121[v146], &qword_1ECC0A140, &qword_1DAEDD5C8);
      swift_endAccess();
      v147 = [v140 _backlightSceneEnvironment];
      if (v147)
      {
        v148 = v147;
        [v147 setSupportsAlwaysOn_];
        sub_1DAD674D4(0, &unk_1EE00AA00, 0x1E698E528);
        if ([v148 isKindOfClass_])
        {
          objc_opt_self();
          v149 = swift_dynamicCastObjCClass();
          if (v149)
          {
            [v149 setOptsOutOfProcessAssertions_];
          }

          swift_unknownObjectRelease();
          v134(v70, v26);
        }

        else
        {
          v134(v70, v26);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v134(v70, v26);
      }

      v121[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated] = 1;
      return;
    }
  }

  else
  {
    v51 = v172;
  }

  v99 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v100 = v170;
  (*(v51 + 16))(v170, &v2[v99], v6);
  v101 = v41;
  v102 = v2;
  v103 = v51;
  v104 = v102;
  v105 = sub_1DAECEDCC();
  v106 = sub_1DAED201C();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v175[0] = v108;
    *v107 = 136446466;
    v109 = *v47;
    v110 = v47[1];

    v111 = sub_1DAD6482C(v109, v110, v175);

    *(v107 + 4) = v111;
    *(v107 + 12) = 2082;
    swift_getKeyPath();
    sub_1DAECE9BC();

    v112 = v176;
    if (v176)
    {
      v113 = [v176 description];

      v114 = sub_1DAED1CEC();
      v116 = v115;
    }

    else
    {
      v116 = 0xE300000000000000;
      v114 = 7104878;
    }

    v150 = sub_1DAD6482C(v114, v116, v175);

    *(v107 + 14) = v150;
    _os_log_impl(&dword_1DAD61000, v105, v106, "[%{public}s] No metrics provided or they were invalid: %{public}s.", v107, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v108, -1, -1);
    MEMORY[0x1E127F100](v107, -1, -1);

    (*(v172 + 8))(v170, v6);
  }

  else
  {

    (*(v103 + 8))(v100, v6);
  }

  (*(v174 + 1))(v173, v26);
}

uint64_t sub_1DAE7B8AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAE7B8F4(const char *a1, ...)
{
  v3 = sub_1DAECEDEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated] == 1)
  {
    v7 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v1[v7], v3);
    v8 = v1;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      v13 = &v8[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v14 = *&v8[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v15 = *(v13 + 1);

      v16 = sub_1DAD6482C(v14, v15, &v17);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1DAD61000, v9, v10, a1, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

double sub_1DAE7BB00()
{
  v1 = sub_1DAECEDEC();
  v2 = *(v1 - 8);
  *&result = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated] != 1)
  {
    return result;
  }

  v6 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  (*(v2 + 16))(v5, &v0[v6], v1);
  v7 = v0;
  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED203C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v55[0] = v11;
    *v10 = 136446210;
    v12 = *(v7 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
    v13 = *(v7 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);

    v14 = sub_1DAD6482C(v12, v13, v55);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DAD61000, v8, v9, "[%{public}s] Foregrounded", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E127F100](v11, -1, -1);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  v15 = (*(v2 + 8))(v5, v1);
  v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground;
  *(v7 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground) = 1;
  v17 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v7) + 0x208))(v15);
  v18 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__viewModels;
  swift_beginAccess();
  v19 = *(v7 + v18);
  if (v19 >> 62)
  {
LABEL_40:
    v20 = sub_1DAED247C();
    if (!v20)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_19;
    }
  }

  if (v20 < 1)
  {
    __break(1u);
LABEL_43:
    v36 = sub_1DAED247C();
    goto LABEL_22;
  }

  v50 = v18;
  v21 = v19 & 0xC000000000000001;

  v22 = 0;
  *&v23 = 136446466;
  v51 = v23;
  v52 = v19 & 0xC000000000000001;
  v53 = v7;
  do
  {
    if (v21)
    {
      v24 = MEMORY[0x1E127E1F0](v22, v19);
    }

    else
    {
      v24 = *(v19 + 8 * v22 + 32);
    }

    v25 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
    v26 = *(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
    *(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = *(v7 + v16);
    BSDispatchQueueAssertMain();
    if (v26 != *(v24 + v25))
    {

      v27 = sub_1DAECEDCC();
      v28 = sub_1DAED203C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = v19;
        v31 = v20;
        v32 = v16;
        v33 = swift_slowAlloc();
        v54 = v33;
        *v29 = v51;
        *(v29 + 4) = sub_1DAD6482C(*(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v54);
        *(v29 + 12) = 1026;
        *(v29 + 14) = *(v24 + v25);

        _os_log_impl(&dword_1DAD61000, v27, v28, "[%{public}s] isForeground changed (%{BOOL,public}d)", v29, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        v34 = v33;
        v16 = v32;
        v20 = v31;
        v19 = v30;
        v21 = v52;
        MEMORY[0x1E127F100](v34, -1, -1);
        v35 = v29;
        v7 = v53;
        MEMORY[0x1E127F100](v35, -1, -1);
      }

      else
      {
      }

      if (*(v24 + v25) == 1)
      {
        sub_1DAE69B6C(1);
      }
    }

    ++v22;
  }

  while (v20 != v22);

  v18 = v50;
  v17 = MEMORY[0x1E69E7D40];
LABEL_19:
  if (*(v7 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__hasUI))
  {
    return result;
  }

  (*((*v17 & *v7) + 0x228))(0x756F726765726F66, 0xEA0000000000646ELL);
  v18 = *(v7 + v18);
  if (v18 >> 62)
  {
    goto LABEL_43;
  }

  v36 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:

  if (v36)
  {
    v38 = 0;
    v16 = v18 & 0xC000000000000001;
    v7 = (v18 & 0xFFFFFFFFFFFFFF8);
    *&v37 = 136446466;
    v51 = v37;
    v52 = v18 & 0xC000000000000001;
    v53 = v18;
    do
    {
      if (v16)
      {
        v39 = MEMORY[0x1E127E1F0](v38, v18);
        v17 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
LABEL_36:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v38 >= v7[2])
        {
          __break(1u);
          goto LABEL_40;
        }

        v39 = *(v18 + 8 * v38 + 32);

        v17 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          goto LABEL_36;
        }
      }

      v19 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
      v40 = *(v39 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
      *(v39 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = 1;
      BSDispatchQueueAssertMain();
      if (v40 != *(v39 + v19))
      {

        v41 = sub_1DAECEDCC();
        v42 = sub_1DAED203C();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = v36;
          v44 = swift_slowAlloc();
          v45 = v7;
          v46 = swift_slowAlloc();
          v54 = v46;
          *v44 = v51;
          *(v44 + 4) = sub_1DAD6482C(*(v39 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v39 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v54);
          *(v44 + 12) = 1026;
          *(v44 + 14) = *(v39 + v19);

          _os_log_impl(&dword_1DAD61000, v41, v42, "[%{public}s] isForeground changed (%{BOOL,public}d)", v44, 0x12u);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          v47 = v46;
          v7 = v45;
          MEMORY[0x1E127F100](v47, -1, -1);
          v48 = v44;
          v36 = v43;
          v16 = v52;
          v18 = v53;
          MEMORY[0x1E127F100](v48, -1, -1);
        }

        else
        {
        }

        if (*(v39 + v19) == 1)
        {
          sub_1DAE69B6C(1);
        }
      }

      ++v38;
    }

    while (v17 != v36);
  }

  return result;
}

void sub_1DAE7C210()
{
  v1 = sub_1DAECEDEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated] == 1)
  {
    v5 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    (*(v2 + 16))(v4, &v0[v5], v1);
    v6 = v0;
    v7 = sub_1DAECEDCC();
    v8 = sub_1DAED203C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38[0] = v10;
      *v9 = 136446210;
      v11 = *&v6[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v12 = *&v6[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

      v13 = sub_1DAD6482C(v11, v12, v38);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] Backgrounded", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E127F100](v10, -1, -1);
      MEMORY[0x1E127F100](v9, -1, -1);
    }

    v14 = (*(v2 + 8))(v4, v1);
    v15 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground;
    v6[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground] = 0;
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0x208))(v14);
    v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__viewModels;
    swift_beginAccess();
    v17 = *&v6[v16];
    if (v17 >> 62)
    {
      v18 = sub_1DAED247C();
      if (!v18)
      {
        return;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        return;
      }
    }

    if (v18 < 1)
    {
      __break(1u);
    }

    else
    {
      v19 = v17 & 0xC000000000000001;

      v20 = 0;
      *&v21 = 136446466;
      v34 = v21;
      v35 = v18;
      v36 = v17;
      do
      {
        if (v19)
        {
          v22 = MEMORY[0x1E127E1F0](v20, v17);
        }

        else
        {
          v22 = *(v17 + 8 * v20 + 32);
        }

        v23 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
        v24 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
        *(v22 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = v6[v15];
        BSDispatchQueueAssertMain();
        if (v24 != *(v22 + v23))
        {

          v25 = sub_1DAECEDCC();
          v26 = sub_1DAED203C();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = v6;
            v28 = swift_slowAlloc();
            v29 = v19;
            v30 = v15;
            v31 = swift_slowAlloc();
            v37 = v31;
            *v28 = v34;
            *(v28 + 4) = sub_1DAD6482C(*(v22 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v22 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v37);
            *(v28 + 12) = 1026;
            *(v28 + 14) = *(v22 + v23);

            _os_log_impl(&dword_1DAD61000, v25, v26, "[%{public}s] isForeground changed (%{BOOL,public}d)", v28, 0x12u);
            __swift_destroy_boxed_opaque_existential_1Tm(v31);
            v32 = v31;
            v15 = v30;
            v19 = v29;
            MEMORY[0x1E127F100](v32, -1, -1);
            v33 = v28;
            v6 = v27;
            v18 = v35;
            v17 = v36;
            MEMORY[0x1E127F100](v33, -1, -1);
          }

          else
          {
          }

          if (*(v22 + v23) == 1)
          {
            sub_1DAE69B6C(1);
          }
        }

        ++v20;
      }

      while (v18 != v20);
    }
  }
}

void sub_1DAE7C698(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A190, qword_1DAEDD640);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_1DAECE7EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__viewModels;
  swift_beginAccess();
  v15 = *(v3 + v14);
  if (v15 >> 62)
  {
    if (!sub_1DAED247C())
    {
      return;
    }
  }

  else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {

    v16 = MEMORY[0x1E127E1F0](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v16 = *(v15 + 32);
  }

  type metadata accessor for ActivityLaunchRequestBuilder();
  v27 = v13;
  sub_1DAE22248(v16, &v27, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_1DAD64398(v8, &unk_1ECC0A190, qword_1DAEDD640);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v17 = sub_1DAE79C48();
    if (v17)
    {
      v18 = v17;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v20 = Strong;
        v21 = v18;
        v22 = [v20 _FBSScene];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DAED64D0;
        *(inited + 32) = v21;
        v24 = v21;
        sub_1DAE89C08(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
        sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0, MEMORY[0x1E69E81B8]);
        v25 = sub_1DAED1F5C();

        [v22 sendActions_];
      }

      else
      {
      }

      (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }
  }
}

uint64_t sub_1DAE7CAF8(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v25 = a3;
  v26 = sub_1DAED182C();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v8 = sub_1DAED17AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
  v27 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  v28 = v12;

  MEMORY[0x1E127DA50](45, 0xE100000000000000);
  v13 = sub_1DAED17FC();
  MEMORY[0x1E127DA50](v13);

  v14 = v27;
  v15 = v28;
  sub_1DAED178C();
  v16 = sub_1DAE770FC(v14, v15, a1, v25, v11);

  (*(v9 + 8))(v11, v8);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v26;
  (*(v6 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v26);
  v19 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v6 + 32))(v20 + v19, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21 = (v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
  v22 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
  v23 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated + 8);
  *v21 = sub_1DAE7DB70;
  v21[1] = v20;

  sub_1DAD660D8(v22, v23);

  return v16;
}

void sub_1DAE7CE4C()
{
  sub_1DAE7C210();
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider);
  if (v1)
  {
    v2 = v1;
    sub_1DAE55278();
  }
}

uint64_t sub_1DAE7CFB4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1DAECEDEC();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAECDE7C();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A148, &qword_1DAEDD5D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_1DAECDEBC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAE79778(a1, a2);
  v18 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_descriptor;
  swift_beginAccess();
  sub_1DAE7DB00(v3 + v18, v13);
  v19 = sub_1DAECDE4C();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v13, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DAECDDFC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DAE6D948(v10, v22);
      return (*(v20 + 8))(v13, v19);
    }

    else
    {
      (*(v15 + 32))(v17, v10, v14);
      (*(v20 + 8))(v13, v19);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        if (qword_1EE00B438 != -1)
        {
          swift_once();
        }

        sub_1DAD648F8(qword_1EE011BD8 + 144, v42);
        v25 = sub_1DAECDE9C();
        v36 = v26;
        v37 = v25;
        v27 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
        swift_beginAccess();
        v28 = v40;
        (*(v38 + 16))(v40, v3 + v27, v39);
        v29 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
        v30 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
        sub_1DAD648F8(v42, v41);
        v31 = objc_allocWithZone(type metadata accessor for SystemApertureElementViewController(0));
        v32 = v24;

        v33 = sub_1DAE5B2D8(v37, v36, v28, v29, v30, v32, v41);

        v34 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider);
        *(v3 + OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider) = v33;
        v35 = v33;

        [v32 setSystemApertureElementViewControllerProvider_];
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
      }

      return (*(v15 + 8))(v17, v14);
    }
  }

  return result;
}

void sub_1DAE7D414(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1DAE799C8(a1, a2);
  v4 = OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider;
  v5 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider);
  if (v5)
  {
    v6 = v5;
    sub_1DAE55F54();

    v5 = *(v3 + v4);
  }

  *(v3 + v4) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong setSystemApertureElementViewControllerProvider_];
  }
}

void sub_1DAE7D4C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v47 = a1;
  v7 = sub_1DAED182C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1DAECEDEC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    v46 = v7;
    v17 = Strong;
    swift_beginAccess();
    (*(v12 + 16))(v14, &v17[v16], v11);

    v18 = v46;
    (*(v8 + 16))(v10, a4, v46);

    v19 = sub_1DAECEDCC();
    v20 = sub_1DAED203C();

    if (os_log_type_enabled(v19, v20))
    {
      v42 = v20;
      v43 = v19;
      v44 = v11;
      v45 = a2;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48[0] = v22;
      *v21 = 136446722;
      swift_beginAccess();
      v23 = swift_unknownObjectWeakLoadStrong();
      if (v23)
      {
        v24 = v23;
        v26 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
        v25 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }

      v48[1] = v26;
      v48[2] = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A18, &unk_1DAEDB490);
      v27 = sub_1DAED1D4C();
      v29 = sub_1DAD6482C(v27, v28, v48);

      *(v21 + 4) = v29;
      *(v21 + 12) = 2082;
      v30 = v45;
      *(v21 + 14) = sub_1DAD6482C(v47, v45, v48);
      *(v21 + 22) = 2082;
      v31 = sub_1DAED17FC();
      v33 = v32;
      (*(v8 + 8))(v10, v46);
      v34 = sub_1DAD6482C(v31, v33, v48);

      *(v21 + 24) = v34;
      v35 = v43;
      _os_log_impl(&dword_1DAD61000, v43, v42, "[%{public}s] Handling payload update %{public}s for view %{public}s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v22, -1, -1);
      v36 = v21;
      a2 = v30;
      MEMORY[0x1E127F100](v36, -1, -1);

      (*(v12 + 8))(v14, v44);
    }

    else
    {

      (*(v8 + 8))(v10, v18);
      (*(v12 + 8))(v14, v11);
    }
  }

  swift_beginAccess();
  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = v37;
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;
      MEMORY[0x1EEE9AC00](v39);
      *&v41[-16] = v47;
      *&v41[-8] = a2;
      sub_1DAECE9CC();
    }
  }
}

uint64_t sub_1DAE7D960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  sub_1DAED1CBC();
  return sub_1DAECE92C();
}

id sub_1DAE7DA20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JindoActivitySceneDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for JindoActivitySceneDelegate(uint64_t a1)
{
  result = qword_1EE0067B0;
  if (!qword_1EE0067B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE7DB00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A148, &qword_1DAEDD5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAE7DB70(uint64_t a1, unint64_t a2, __n128 a3)
{
  v6 = *(sub_1DAED182C() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  sub_1DAE7D4C8(a1, a2, v8, v9, v7);
}

void sub_1DAE7DBFC(void *a1)
{
  v3 = sub_1DAECEDEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE005E18 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_1EE011700);
  v8 = *(v4 + 16);
  v8(v6, v7, v3);
  v9 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v10 = *(v4 + 40);
  v10(v1 + v9, v6, v3);
  swift_endAccess();
  if (qword_1EE005DE0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_1EE0116A0);
  v8(v6, v11, v3);
  v12 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v10(v1 + v12, v6, v3);
  swift_endAccess();
  if (qword_1EE005DF8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_1EE0116D0);
  v8(v6, v13, v3);
  v14 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v10(v1 + v14, v6, v3);
  swift_endAccess();
  sub_1DAE7A700(a1);
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated) == 1)
  {
    sub_1DAE7CFB4(0x6E6E6F436C6C6977, 0xEB00000000746365);
  }
}

void sub_1DAE7DECC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1DAED247C();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
  v5 = sub_1DAE8A564(&qword_1EE00BDF0, &unk_1EE00BE00, 0x1E69943B8);
  v20[1] = MEMORY[0x1E127DBF0](v3, v4, v5);
  if (v2)
  {
    v6 = sub_1DAED266C();
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v1 = v6 | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v1 + 32);
    v7 = v1 + 64;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v1 + 64);
  }

  v13 = 0;
  v14 = (v8 + 64) >> 6;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!sub_1DAED270C() || (swift_unknownObjectRelease(), swift_dynamicCast(), (v19 = v20[0]) == 0))
    {
LABEL_21:
      sub_1DAD70B20(v1);
      return;
    }

LABEL_11:
    sub_1DAD8C3E4(v20, v19, &unk_1EE00BE00, 0x1E69943B8, &qword_1ECC0A2D0, &qword_1DAEDD830);
  }

  v15 = v13;
  v16 = v9;
  v17 = v13;
  if (v9)
  {
LABEL_17:
    v18 = *(*(v1 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = v18;
    v9 = (v16 - 1) & v16;
    v13 = v17;
    goto LABEL_11;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_21;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_1DAE7E0FC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_1DAED26FC();

    if (v2)
    {
      type metadata accessor for ActivityRendererSessionSubscriptionRequest(0);
      swift_dynamicCast();
    }
  }

  else if (*(a2 + 16))
  {
    sub_1DAECB350(a1);
    if (v3)
    {
    }
  }
}

uint64_t sub_1DAE7E1B0()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___extensionsDidChangePublisher;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___extensionsDidChangePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___extensionsDidChangePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF88]);
    v2 = sub_1DAECEF6C();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1DAE7E28C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = sub_1DAED266C() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v3 = ~v6;
    v2 = v1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(v1 + 64);
    v5 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity);
  }

  swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = (v3 + 64) >> 6;
  v11 = MEMORY[0x1E69E7CC0];
  v56 = v5;
  while (2)
  {
    v54 = v11;
    v12 = v9;
    v13 = v4;
    if ((v5 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        if (!sub_1DAED270C())
        {
          goto LABEL_64;
        }

        swift_unknownObjectRelease();
        sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
        swift_dynamicCast();
        v16 = v57;
        v9 = v12;
        v4 = v13;
        if (!v57)
        {
          goto LABEL_64;
        }

LABEL_17:
        v17 = [v16 liveActivityDescriptors];
        if (v17)
        {
          break;
        }

        v12 = v9;
        v13 = v4;
        v5 = v56;
        if ((v56 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v48 = v3;
      v18 = v17;
      sub_1DAD674D4(0, &qword_1EE005530, 0x1E6994358);
      sub_1DAE8A564(&unk_1EE005520, &qword_1EE005530, 0x1E6994358);
      v19 = sub_1DAED1F6C();

      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = sub_1DAED247C();
        if (v20)
        {
LABEL_22:
          if (v20 < 1)
          {
            v21 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
            v21 = swift_allocObject();
            v22 = _swift_stdlib_malloc_size(v21);
            v23 = v22 - 32;
            if (v22 < 32)
            {
              v23 = v22 - 25;
            }

            *(v21 + 16) = v20;
            *(v21 + 24) = (2 * (v23 >> 3)) | 1;
          }

          v25 = v21;
          v26 = sub_1DAEBA7F4(&v57, (v21 + 32), v20, v19);
          sub_1DAD70B20(v57);
          if (v26 != v20)
          {
            goto LABEL_68;
          }

          v11 = v54;
          v24 = v25;
LABEL_31:
          v27 = v24 < 0 || (v24 & 0x4000000000000000) != 0;
          if (v27)
          {
            v28 = sub_1DAED247C();
          }

          else
          {
            v28 = *(v24 + 16);
          }

          v29 = v11 >> 62;
          v47 = v1;
          if (v11 >> 62)
          {
            v45 = v28;
            v30 = sub_1DAED247C();
            v28 = v45;
          }

          else
          {
            v30 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v50 = v28;
          v31 = v30 + v28;
          if (__OFADD__(v30, v28))
          {
            goto LABEL_66;
          }

          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v29)
            {
              v32 = v11 & 0xFFFFFFFFFFFFFF8;
              if (v31 <= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_46:
                v33 = *(v32 + 16);
                v34 = *(v32 + 24);
                v52 = v27;
                v49 = v32;
                if (v27)
                {
                  v35 = sub_1DAED247C();
                }

                else
                {
                  v35 = *(v24 + 16);
                }

                if (!v35)
                {

                  v1 = v47;
                  v3 = v48;
                  v5 = v56;
                  if (v50 <= 0)
                  {
                    continue;
                  }

                  goto LABEL_67;
                }

                v55 = v11;
                if (((v34 >> 1) - v33) < v50)
                {
                  goto LABEL_69;
                }

                v36 = v49 + 8 * v33 + 32;
                if (v52)
                {
                  v46 = v4;
                  if (v35 < 1)
                  {
                    goto LABEL_71;
                  }

                  v51 = v35;
                  sub_1DAD64B94(&unk_1ECC0A328, &qword_1ECC0A320, qword_1DAEDD878, MEMORY[0x1E69E6340]);
                  for (i = 0; i != v51; ++i)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A320, qword_1DAEDD878);
                    v38 = sub_1DAD8DE4C(&v57, i, v24);
                    v40 = *v39;
                    (v38)(&v57, 0);
                    *(v36 + 8 * i) = v40;
                  }

                  v41 = v50;
                }

                else
                {
                  v41 = v50;
                  swift_arrayInitWithCopy();
                }

                v1 = v47;
                v3 = v48;
                v11 = v55;
                v5 = v56;
                if (v41 > 0)
                {
                  v42 = *(v49 + 16);
                  v43 = __OFADD__(v42, v41);
                  v44 = v42 + v41;
                  if (v43)
                  {
                    goto LABEL_70;
                  }

                  *(v49 + 16) = v44;
                }

                continue;
              }

LABEL_45:
              v11 = sub_1DAED258C();
              v32 = v11 & 0xFFFFFFFFFFFFFF8;
              goto LABEL_46;
            }
          }

          else if (!v29)
          {
            goto LABEL_45;
          }

          sub_1DAED247C();
          goto LABEL_45;
        }
      }

      else
      {
        v20 = *(v19 + 16);
        if (v20)
        {
          goto LABEL_22;
        }
      }

      v24 = MEMORY[0x1E69E7CC0];
      v11 = v54;
      goto LABEL_31;
    }

    break;
  }

LABEL_9:
  v14 = v12;
  v15 = v13;
  v9 = v12;
  if (v13)
  {
LABEL_13:
    v4 = (v15 - 1) & v15;
    v16 = *(*(v5 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v16)
    {
      goto LABEL_17;
    }

LABEL_64:
    sub_1DAD70B20(v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2A0, &qword_1DAEDD818);
    *(v53 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_activityDescriptorCollection) = sub_1DAED0FFC();
  }

  else
  {
    while (1)
    {
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v9 >= v10)
      {
        goto LABEL_64;
      }

      v15 = *(v2 + 8 * v9);
      ++v14;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }
}

uint64_t sub_1DAE7E874()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___systemEnvironmentDidChangePublisher;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___systemEnvironmentDidChangePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___systemEnvironmentDidChangePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3E0, &qword_1DAEDA740);
    sub_1DAD64B94(&unk_1EE00ABE0, &unk_1ECC0A3E0, &qword_1DAEDA740, MEMORY[0x1E695BF88]);
    v2 = sub_1DAECEF6C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1DAE7E950()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___activityReloadedPublisher;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___activityReloadedPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___activityReloadedPublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3D0, &qword_1DAEDD8B0);
    sub_1DAD64B94(&qword_1EE005C38, &unk_1ECC0A3D0, &qword_1DAEDD8B0, MEMORY[0x1E695BF88]);
    v2 = sub_1DAECEF6C();
    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_1DAE7EA2C()
{
  v1 = v0;
  v29 = sub_1DAED20DC();
  v2 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DAED208C();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DAED0A3C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue;
  v6 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v26[3] = "v16@?0@NSError8";
  v26[4] = v6;
  sub_1DAED0A0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v26[2] = sub_1DAD7CB5C(&qword_1EE00AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3F0, &qword_1DAED6480);
  sub_1DAD64B94(&unk_1EE00AA90, &unk_1ECC0A3F0, &qword_1DAED6480, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  v7 = *MEMORY[0x1E69E8098];
  v8 = v2 + 104;
  v9 = *(v2 + 104);
  v26[0] = v8;
  v9(v28, v7, v29);
  *&v0[v27] = sub_1DAED210C();
  v27 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue;
  sub_1DAED0A0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAED23CC();
  v9(v28, v7, v29);
  *&v0[v27] = sub_1DAED210C();
  *&v0[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_connection] = 0;
  v0[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_hasReceivedInitializationPayload] = 0;
  v10 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock;
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  *&v1[v10] = v11;
  v13 = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions] = MEMORY[0x1E69E7CC8];
  v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_hasReceivedInitialEnvironment] = 0;
  v14 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_extensionsDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  swift_allocObject();
  *&v1[v14] = sub_1DAECEE7C();
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___extensionsDidChangePublisher] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity] = v13;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_activityDescriptorCollection] = 0;
  v15 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_currentRemoteSubscriptionTypeDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A400, &qword_1DAEDD8B8);
  swift_allocObject();
  *&v1[v15] = sub_1DAECEE7C();
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___currentRemoteSubscriptionTypeDidChangePublisher] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_currentRemoteSubscriptionType] = 0;
  v16 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_systemEnvironmentDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3E0, &qword_1DAEDA740);
  swift_allocObject();
  *&v1[v16] = sub_1DAECEE7C();
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___systemEnvironmentDidChangePublisher] = 0;
  sub_1DAECF8DC();
  v17 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_activityReloadedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3D0, &qword_1DAEDD8B0);
  swift_allocObject();
  *&v1[v17] = sub_1DAECEE7C();
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___activityReloadedPublisher] = 0;
  v18 = type metadata accessor for ActivityRendererClient(0);
  v31.receiver = v1;
  v31.super_class = v18;
  v19 = objc_msgSendSuper2(&v31, sel_init);
  v20 = *&v19[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  aBlock[4] = sub_1DAE8ABA4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_157;
  v22 = _Block_copy(aBlock);
  v23 = v19;
  v24 = v20;

  WRRegisterForChronodStartup(v24, v22);
  _Block_release(v22);

  return v23;
}

double sub_1DAE7EFF8(char *a1)
{
  BSDispatchQueueAssert();
  if (qword_1EE005E78 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = sub_1DAECEDEC();
    __swift_project_value_buffer(v2, qword_1EE0117A8);
    v3 = sub_1DAECEDCC();
    v4 = sub_1DAED200C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DAD61000, v3, v4, "Detected chronod relaunch.", v5, 2u);
      MEMORY[0x1E127F100](v5, -1, -1);
    }

    v32 = MEMORY[0x1E69E7CC8];
    v6 = *&a1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
    os_unfair_lock_lock(*(v6 + 16));
    sub_1DAE7F400(a1, &v32);
    os_unfair_lock_unlock(*(v6 + 16));
    sub_1DAE824B0();
    v7 = a1;
    v8 = sub_1DAECEDCC();
    v9 = sub_1DAED200C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134349056;
      v11 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
      swift_beginAccess();
      v12 = *&v7[v11];
      if ((v12 & 0xC000000000000001) != 0)
      {

        v13 = sub_1DAED247C();
      }

      else
      {
        v13 = *(v12 + 16);
      }

      *(v10 + 4) = v13;

      _os_log_impl(&dword_1DAD61000, v8, v9, "Resubscribing to %{public}ld active sessions.", v10, 0xCu);
      MEMORY[0x1E127F100](v10, -1, -1);
    }

    else
    {
    }

    v14 = v7;
    if ((v32 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      v16 = 0;
      a1 = 0;
      v17 = sub_1DAED266C() | 0x8000000000000000;
    }

    else
    {
      v18 = -1 << *(v32 + 32);
      v16 = ~v18;
      v15 = v32 + 64;
      v19 = -v18;
      v20 = v19 < 64 ? ~(-1 << v19) : -1;
      a1 = (v20 & *(v32 + 64));
      v17 = v32;
    }

    v21 = 0;
    v22 = (v16 + 64) >> 6;
    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_17:
    v23 = v21;
    v24 = a1;
    v25 = v21;
    if (a1)
    {
LABEL_21:
      v26 = ((v24 - 1) & v24);
      v27 = (v25 << 9) | (8 * __clz(__rbit64(v24)));
      v28 = *(*(v17 + 48) + v27);
      v29 = *(*(v17 + 56) + v27);

      if (v28)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        goto LABEL_27;
      }

      v24 = *(v15 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  while (sub_1DAED270C())
  {
    type metadata accessor for ActivityRendererSessionKey(0);
    swift_dynamicCast();
    type metadata accessor for ActivityRendererSessionSubscriptionRequest(0);
    swift_dynamicCast();
    v29 = v31;
    v25 = v21;
    v26 = a1;
    if (!v31)
    {
      break;
    }

LABEL_25:

    sub_1DAE814F4(v29, v14);

    v21 = v25;
    a1 = v26;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_27:
  sub_1DAD70B20(v17);

  return result;
}

void sub_1DAE7F400(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_1DAED247C();

    if (v6)
    {
LABEL_3:
      *a2 = *(a1 + v4);

      return;
    }
  }

  else if (*(v5 + 16))
  {
    goto LABEL_3;
  }

  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v7 = sub_1DAECEDEC();
  __swift_project_value_buffer(v7, qword_1EE0117A8);
  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED200C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DAD61000, v8, v9, "No active sessions - not reconnecting.", v10, 2u);
    MEMORY[0x1E127F100](v10, -1, -1);
  }
}

double sub_1DAE7F5B8(uint64_t a1, char *a2, uint64_t a3)
{
  v22[0] = a3;
  v5 = sub_1DAED09DC();
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAED0A3C();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v14;
  v22[1] = *&a2[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  (*(v12 + 16))(v22 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v18 = v22[0];
  *(v17 + 16) = a2;
  *(v17 + 24) = v18;
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = sub_1DAE87C14;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_16;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v10, v7, v19);
  _Block_release(v19);
  (*(v25 + 8))(v7, v5);
  (*(v23 + 8))(v10, v24);

  return result;
}

double sub_1DAE7F970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a3, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_1DAE818FC(a2, sub_1DAE87C84, v11);

  return result;
}

uint64_t sub_1DAE7FAC0(unsigned __int8 *a1, id a2)
{
  if (*a1 == 2)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      sub_1DAD674D4(0, &unk_1EE005490, 0x1E696ABC0);
      sub_1DADD7B94(0xD00000000000001ALL, 0x80000001DAEE5400, 1, 0, 0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8);
    return sub_1DAED1EDC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8);
    return sub_1DAED1EEC();
  }
}

double sub_1DAE7FBA4(uint64_t a1)
{
  v3 = sub_1DAED09DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DAED0A3C();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1DAE8AB9C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_151;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);

  return result;
}

void sub_1DAE7FE80(char *a1, uint64_t a2)
{
  v6 = 0;
  v4 = *&a1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v4 + 16));
  sub_1DAE7FF60(a1, a2, &v6);
  os_unfair_lock_unlock(*(v4 + 16));
  if (v6)
  {
    v5 = a1;
    sub_1DAE8A084();
  }
}

void sub_1DAE7FF60(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
  swift_beginAccess();
  v7 = *(a1 + v6);

  sub_1DAE7E0FC(a2, v7);
  v9 = v8;

  if (v9)
  {

    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v10 = sub_1DAECEDEC();
    __swift_project_value_buffer(v10, qword_1EE0117A8);

    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED203C();

    if (os_log_type_enabled(v11, v12))
    {
      v20 = a3;
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19[0] = v18;
      *v13 = 136446210;
      v14 = sub_1DAE93F40();
      v16 = sub_1DAD6482C(v14, v15, v19);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_1DAD61000, v11, v12, "Unsubscribing from session: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E127F100](v18, -1, -1);
      v17 = v13;
      a3 = v20;
      MEMORY[0x1E127F100](v17, -1, -1);
    }

    swift_beginAccess();
    sub_1DAEB9228(a2);
    swift_endAccess();

    *a3 = 1;
  }
}

double sub_1DAE80164(uint64_t a1)
{
  v3 = sub_1DAED09DC();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED0A3C();
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  v19[1] = *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  (*(v10 + 16))(v19 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = sub_1DAE8AB2C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_145;
  v16 = _Block_copy(aBlock);
  v17 = v1;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v8, v5, v16);
  _Block_release(v16);
  (*(v22 + 8))(v5, v3);
  (*(v20 + 8))(v8, v21);

  return result;
}

void sub_1DAE80508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  if (*(a1 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_hasReceivedInitializationPayload) == 1)
  {
    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v11 = sub_1DAECEDEC();
    __swift_project_value_buffer(v11, qword_1EE0117A8);
    (*(v5 + 16))(v10, a2, v4);
    v12 = sub_1DAECEDCC();
    v13 = sub_1DAED203C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v33 = a2;
      v34 = v15;
      v16 = v15;
      *v14 = 136446210;
      sub_1DAD64B94(&qword_1EE00A698, &unk_1ECC0A3C0, &qword_1DAED79B8, MEMORY[0x1E69940E0]);
      v17 = sub_1DAED287C();
      v19 = v18;
      (*(v5 + 8))(v10, v4);
      v20 = sub_1DAD6482C(v17, v19, &v34);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1DAD61000, v12, v13, "Reload activity descriptors for container: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E127F100](v16, -1, -1);
      MEMORY[0x1E127F100](v14, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    v30 = sub_1DAE82244();
    if (v30)
    {
      v31 = v30;
      sub_1DAECE26C();
      v32 = sub_1DAED1CBC();

      [v31 reloadDescriptors_];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v21 = sub_1DAECEDEC();
    __swift_project_value_buffer(v21, qword_1EE0117A8);
    (*(v5 + 16))(v7, a2, v4);
    v22 = sub_1DAECEDCC();
    v23 = sub_1DAED203C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v24 = 136446210;
      sub_1DAD64B94(&qword_1EE00A698, &unk_1ECC0A3C0, &qword_1DAED79B8, MEMORY[0x1E69940E0]);
      v26 = sub_1DAED287C();
      v28 = v27;
      (*(v5 + 8))(v7, v4);
      v29 = sub_1DAD6482C(v26, v28, &v34);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1DAD61000, v22, v23, "Ignoring activity descriptor reload for %{public}s because we haven't yet initialized.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E127F100](v25, -1, -1);
      MEMORY[0x1E127F100](v24, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1DAE809AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAE809D0, 0, 0);
}

uint64_t sub_1DAE809D0()
{
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE0117A8);
  v3 = v1;
  v4 = sub_1DAECEDCC();
  v5 = sub_1DAED203C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1DAD61000, v4, v5, "Handle action: %{public}@", v7, 0xCu);
    sub_1DAD64398(v8, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v8, -1, -1);
    MEMORY[0x1E127F100](v7, -1, -1);
  }

  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  v16 = *(v0 + 16);

  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v16;
  *(v12 + 40) = v11;
  v13 = swift_task_alloc();
  *(v0 + 56) = v13;
  *v13 = v0;
  v13[1] = sub_1DAE80BF4;
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v13, 0, 0, 0xD000000000000031, 0x80000001DAEE54E0, sub_1DAE8A8F4, v12, v14);
}

uint64_t sub_1DAE80BF4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1DAE80D28;
  }

  else
  {

    v2 = sub_1DAE80D10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAE80D28()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1DAE80D8C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v36 = a5;
  v32 = a1;
  v33 = a3;
  v31 = a2;
  v39 = sub_1DAED09DC();
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1DAED0A3C();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0);
  v30 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = sub_1DAECE3DC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *&a2[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  (*(v14 + 16))(v17, a4, v13, v16);
  (*(v10 + 16))(v12, v32, v9);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v10 + 80) + v19 + 8) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = v33;
  (*(v14 + 32))(v21 + v18, v17, v13);
  v22 = v36;
  *(v21 + v19) = v36;
  (*(v10 + 32))(v21 + v20, v12, v30);
  aBlock[4] = sub_1DAE8A900;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_133;
  v23 = _Block_copy(aBlock);
  v24 = v31;

  v25 = v22;
  v26 = v34;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  v27 = v37;
  v28 = v39;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v26, v27, v23);
  _Block_release(v23);
  (*(v41 + 8))(v27, v28);
  (*(v38 + 8))(v26, v40);

  return result;
}

void sub_1DAE81254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = sub_1DAE82244();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1DAECDC0C();
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    (*(v8 + 16))(v10, a6, v7);
    v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v16 = swift_allocObject();
    (*(v8 + 32))(v16 + v15, v10, v7);
    aBlock[4] = sub_1DAE8AAB0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAEB2FEC;
    aBlock[3] = &block_descriptor_139;
    v17 = _Block_copy(aBlock);

    [v12 handleInteraction:v13 authenticationPolicy:v14 action:v19 handler:v17];
    swift_unknownObjectRelease();
    _Block_release(v17);
  }
}

uint64_t sub_1DAE81480(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0);
    return sub_1DAED1EDC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0);
    return sub_1DAED1EEC();
  }
}

double sub_1DAE814F4(uint64_t a1, char *a2)
{
  BSDispatchQueueAssert();
  v4 = *(a1 + 16);
  v5 = *&a2[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v5 + 16));
  v6 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
  swift_beginAccess();
  v7 = *&a2[v6];
  if ((v7 & 0xC000000000000001) == 0)
  {

LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *&a2[v6];
    sub_1DADDB08C(a1, v4, isUniquelyReferenced_nonNull_native);
    *&a2[v6] = v30;
    swift_endAccess();
    os_unfair_lock_unlock(*(v5 + 16));
    v29[0] = a1;
    type metadata accessor for ActivityRendererSessionSubscriptionRequest(0);
    sub_1DAD7CB5C(&qword_1EE008CC0, type metadata accessor for ActivityRendererSessionSubscriptionRequest, &protocol conformance descriptor for ActivityRendererSessionSubscriptionRequest);
    v5 = sub_1DAED1C4C();
    a1 = v11;
    if (qword_1EE005E78 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v7 < 0)
  {
    v8 = *&a2[v6];
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v9 = sub_1DAED247C();
  if (!__OFADD__(v9, 1))
  {
    *&a2[v6] = sub_1DAEB94CC(v8, v9 + 1);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v12 = sub_1DAECEDEC();
  __swift_project_value_buffer(v12, qword_1EE0117A8);

  v13 = sub_1DAECEDCC();
  v14 = sub_1DAED203C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29[0] = v16;
    *v15 = 136446210;
    v17 = sub_1DAE93F40();
    v19 = sub_1DAD6482C(v17, v18, v29);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1DAD61000, v13, v14, "Subscribing to session: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1E127F100](v16, -1, -1);
    MEMORY[0x1E127F100](v15, -1, -1);
  }

  v20 = sub_1DAE82244();
  if (!v20)
  {
    return sub_1DAD70BB4(v5, a1);
  }

  v21 = v20;
  v22 = v5;
  v23 = a1;
  v24 = sub_1DAECDC0C();
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = v4;
  v25[4] = nullsub_1;
  v25[5] = 0;
  v29[4] = sub_1DAE8AC24;
  v29[5] = v25;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1DADAF8A8;
  v29[3] = &block_descriptor_164;
  v26 = _Block_copy(v29);

  v27 = a2;

  [v21 subscribe:v24 completion:v26];
  sub_1DAD70BB4(v22, v23);
  swift_unknownObjectRelease();
  _Block_release(v26);

  return result;
}

double sub_1DAE818FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  BSDispatchQueueAssert();
  v8 = *(a1 + 16);
  v9 = *&v3[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v9 + 16));
  v10 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
  swift_beginAccess();
  v11 = *&v3[v10];
  if ((v11 & 0xC000000000000001) == 0)
  {

LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *&v4[v10];
    sub_1DADDB08C(a1, v8, isUniquelyReferenced_nonNull_native);
    *&v4[v10] = v34;
    swift_endAccess();
    os_unfair_lock_unlock(*(v9 + 16));
    aBlock[0] = a1;
    type metadata accessor for ActivityRendererSessionSubscriptionRequest(0);
    sub_1DAD7CB5C(&qword_1EE008CC0, type metadata accessor for ActivityRendererSessionSubscriptionRequest, &protocol conformance descriptor for ActivityRendererSessionSubscriptionRequest);
    v31 = sub_1DAED1C4C();
    v32 = v15;
    if (qword_1EE005E78 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v11 < 0)
  {
    v12 = *&v3[v10];
  }

  else
  {
    v12 = v11 & 0xFFFFFFFFFFFFFF8;
  }

  v13 = sub_1DAED247C();
  if (!__OFADD__(v13, 1))
  {
    *&v4[v10] = sub_1DAEB94CC(v12, v13 + 1);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v16 = sub_1DAECEDEC();
  __swift_project_value_buffer(v16, qword_1EE0117A8);

  v17 = sub_1DAECEDCC();
  v18 = sub_1DAED203C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136446210;
    v21 = sub_1DAE93F40();
    v23 = sub_1DAD6482C(v21, v22, aBlock);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1DAD61000, v17, v18, "Subscribing to session: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E127F100](v20, -1, -1);
    MEMORY[0x1E127F100](v19, -1, -1);
  }

  v24 = sub_1DAE82244();
  if (!v24)
  {
    return sub_1DAD70BB4(v31, v32);
  }

  v25 = v24;
  v26 = sub_1DAECDC0C();
  v27 = swift_allocObject();
  v27[2] = v4;
  v27[3] = v8;
  v27[4] = a2;
  v27[5] = a3;
  aBlock[4] = sub_1DAE8A894;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DADAF8A8;
  aBlock[3] = &block_descriptor_125;
  v28 = _Block_copy(aBlock);

  v29 = v4;

  [v25 subscribe:v26 completion:v28];
  sub_1DAD70BB4(v31, v32);
  swift_unknownObjectRelease();
  _Block_release(v28);

  return result;
}

double sub_1DAE81D14(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void **, void *))
{
  BSDispatchQueueAssert();
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
      if (qword_1EE005E78 != -1)
      {
        swift_once();
      }

      v10 = sub_1DAECEDEC();
      __swift_project_value_buffer(v10, qword_1EE0117A8);

      v11 = sub_1DAECEDCC();
      v12 = sub_1DAED201C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v46 = v14;
        *v13 = 136446210;
        v15 = sub_1DAE93F40();
        v17 = sub_1DAD6482C(v15, v16, &v46);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_1DAD61000, v11, v12, "Error subscribing to session %{public}s: unknown response", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        MEMORY[0x1E127F100](v14, -1, -1);
        MEMORY[0x1E127F100](v13, -1, -1);
      }

      LOBYTE(v46) = 2;
      a6(&v46, 0);
      return result;
    }

    goto LABEL_9;
  }

  if (a3)
  {
LABEL_9:
    v19 = a3;
    v20 = a3;
    v21 = a3;
    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v22 = sub_1DAECEDEC();
    __swift_project_value_buffer(v22, qword_1EE0117A8);

    v23 = a3;
    v24 = sub_1DAECEDCC();
    v25 = sub_1DAED201C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46 = v28;
      *v26 = 136446466;
      v29 = sub_1DAE93F40();
      v31 = sub_1DAD6482C(v29, v30, &v46);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2114;
      v32 = v19;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v33;
      *v27 = v33;
      _os_log_impl(&dword_1DAD61000, v24, v25, "Error subscribing to session %{public}s: %{public}@", v26, 0x16u);
      sub_1DAD64398(v27, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1E127F100](v28, -1, -1);
      MEMORY[0x1E127F100](v26, -1, -1);
    }

    LOBYTE(v46) = 2;
    v34 = v19;
    a6(&v46, v19);

    return result;
  }

  sub_1DADAFE40(a1, a2);
  sub_1DAE8A8A0();
  sub_1DAED1F4C();
  v35 = v46;
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v36 = sub_1DAECEDEC();
  __swift_project_value_buffer(v36, qword_1EE0117A8);

  v37 = sub_1DAECEDCC();
  v38 = sub_1DAED200C();

  if (os_log_type_enabled(v37, v38))
  {
    v45 = v46;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46 = v40;
    *v39 = 136446210;
    v41 = sub_1DAE93F40();
    v43 = sub_1DAD6482C(v41, v42, &v46);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1DAD61000, v37, v38, "Successfully subscribed to session: %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1E127F100](v40, -1, -1);
    v44 = v39;
    v35 = v45;
    MEMORY[0x1E127F100](v44, -1, -1);
  }

  LOBYTE(v46) = v35;
  a6(&v46, 0);
  return sub_1DADAF698(a1, a2);
}

uint64_t sub_1DAE82244()
{
  BSDispatchQueueAssert();
  sub_1DAE824B0();
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_connection);
  if (v1)
  {
    v2 = v1;
    if ([v2 remoteTarget])
    {
      sub_1DAED238C();
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A3A8, &qword_1DAEDD898);
      if (swift_dynamicCast())
      {

        return v11;
      }
    }

    else
    {
      sub_1DAD64398(v14, &qword_1ECC0A3A0, &qword_1DAEDFE30);
    }

    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v7 = sub_1DAECEDEC();
    __swift_project_value_buffer(v7, qword_1EE0117A8);
    v8 = sub_1DAECEDCC();
    v9 = sub_1DAED202C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DAD61000, v8, v9, "Failed to cast connection to server interface protocol", v10, 2u);
      MEMORY[0x1E127F100](v10, -1, -1);
    }
  }

  else
  {
    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v3 = sub_1DAECEDEC();
    __swift_project_value_buffer(v3, qword_1EE0117A8);
    v2 = sub_1DAECEDCC();
    v4 = sub_1DAED202C();
    if (os_log_type_enabled(v2, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DAD61000, v2, v4, "Failed to establish a connection", v5, 2u);
      MEMORY[0x1E127F100](v5, -1, -1);
    }
  }

  return 0;
}

void sub_1DAE824B0()
{
  BSDispatchQueueAssert();
  sub_1DAE8263C();
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_connection);
  if (v1)
  {
    v2 = v1;
    if ([v2 remoteTarget])
    {
      sub_1DAED238C();
      swift_unknownObjectRelease();

      sub_1DAD64398(v7, &qword_1ECC0A3A0, &qword_1DAEDFE30);
    }

    else
    {
      memset(v7, 0, sizeof(v7));
      sub_1DAD64398(v7, &qword_1ECC0A3A0, &qword_1DAEDFE30);
      if (qword_1EE005E78 != -1)
      {
        swift_once();
      }

      v3 = sub_1DAECEDEC();
      __swift_project_value_buffer(v3, qword_1EE0117A8);
      v4 = sub_1DAECEDCC();
      v5 = sub_1DAED203C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1DAD61000, v4, v5, "Activating connection", v6, 2u);
        MEMORY[0x1E127F100](v6, -1, -1);
      }

      [v2 activate];
    }
  }
}

void sub_1DAE8263C()
{
  BSDispatchQueueAssert();
  v1 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_connection;
  if (*&v0[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_connection])
  {
    return;
  }

  v2 = "com.apple.chrono.widgetRenderer";
  v3 = sub_1DAED1CBC();
  v4 = sub_1DAED1CBC();
  v16 = [objc_opt_self() endpointForMachName:v3 service:v4 instance:0];

  if (!v16)
  {
    goto LABEL_7;
  }

  v5 = [objc_opt_self() connectionWithEndpoint_];
  if (v5)
  {
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v7 = v5;

    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    v2 = swift_allocObject();
    *(v2 + 16) = sub_1DAE8A87C;
    *(v2 + 24) = v8;
    aBlock[4] = sub_1DAE8A884;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD93F0C;
    aBlock[3] = &block_descriptor_107;
    v9 = _Block_copy(aBlock);
    v10 = v0;

    [v7 configureConnection_];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_7:
    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v12 = sub_1DAECEDEC();
    __swift_project_value_buffer(v12, qword_1EE0117A8);
    v16 = sub_1DAECEDCC();
    v13 = sub_1DAED202C();
    if (os_log_type_enabled(v16, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1DAD6482C(0xD000000000000018, v2 | 0x8000000000000000, aBlock);
      _os_log_impl(&dword_1DAD61000, v16, v13, "Unable to get endpoint for mach-service: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E127F100](v15, -1, -1);
      MEMORY[0x1E127F100](v14, -1, -1);

      return;
    }
  }
}

void sub_1DAE829AC(void *a1, char *a2)
{
  v4 = sub_1DAED1CBC();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  if (qword_1EE00B9F0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE00B9F8;
  v7 = objc_opt_self();
  v8 = [v7 protocolForProtocol_];
  [v5 setClient_];

  if (qword_1EE00B9D8 != -1)
  {
    swift_once();
  }

  v9 = [v7 protocolForProtocol_];
  [v5 setServer_];

  if (qword_1EE00B9C0 != -1)
  {
    swift_once();
  }

  [a1 setServiceQuality_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v19 = sub_1DAE82D40;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DAD69AE8;
  v18 = &block_descriptor_110;
  v10 = _Block_copy(&v15);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v19 = sub_1DAE8A88C;
  v20 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DAD69AE8;
  v18 = &block_descriptor_116;
  v12 = _Block_copy(&v15);
  v13 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v12);
  v19 = sub_1DAE83040;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DAD69AE8;
  v18 = &block_descriptor_119;
  v14 = _Block_copy(&v15);
  [a1 setInvalidationHandler_];
  _Block_release(v14);
}

void sub_1DAE82D4C(uint64_t a1, char *a2)
{
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v3 = sub_1DAECEDEC();
  __swift_project_value_buffer(v3, qword_1EE0117A8);
  v4 = sub_1DAECEDCC();
  v5 = sub_1DAED203C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DAD61000, v4, v5, "Connection Interrupted", v6, 2u);
    MEMORY[0x1E127F100](v6, -1, -1);
  }

  v7 = *&a2[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v7 + 16));
  sub_1DAE82E7C(a2);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

void sub_1DAE82E7C(char *a1)
{
  v2 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
  swift_beginAccess();
  v3 = *&a1[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = sub_1DAED247C();

    if (!v4)
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v5 = sub_1DAECEDEC();
  __swift_project_value_buffer(v5, qword_1EE0117A8);
  v6 = a1;
  v7 = sub_1DAECEDCC();
  v8 = sub_1DAED203C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    v10 = *&a1[v2];
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = sub_1DAED247C();
    }

    else
    {
      v11 = *(v10 + 16);
    }

    *(v9 + 4) = v11;

    _os_log_impl(&dword_1DAD61000, v7, v8, "Reconnecting because we had %{public}ld subscriptions active.", v9, 0xCu);
    MEMORY[0x1E127F100](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  sub_1DAE824B0();
}

void sub_1DAE8304C(uint64_t a1, const char *a2)
{
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v3 = sub_1DAECEDEC();
  __swift_project_value_buffer(v3, qword_1EE0117A8);
  oslog = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DAD61000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1E127F100](v5, -1, -1);
  }
}

id sub_1DAE8313C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityRendererClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityRendererClient(uint64_t a1)
{
  result = qword_1EE008C50;
  if (!qword_1EE008C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE83324(uint64_t a1)
{
  result = sub_1DAECF8EC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1DAE8341C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DAE83444, 0, 0);
}

uint64_t sub_1DAE83444()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1DAE83540;
  v3 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0x6269726373627573, 0xED0000293A5F2865, sub_1DAE87C0C, v1, &type metadata for ActivityRendererSessionSubscriptionResponse);
}

uint64_t sub_1DAE83540()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAE8367C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DAE8367C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1DAE836E0(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_systemEnvironment;
  swift_beginAccess();
  v6 = sub_1DAECF8EC();
  (*(*(v6 - 8) + 16))(a1, v3 + v5, v6);
  os_unfair_lock_unlock(*(v4 + 16));
}

double sub_1DAE837AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v50 = a2;
  v4 = sub_1DAED09DC();
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v45 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1DAED0A3C();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A990, &qword_1DAEDE2D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41[0] = v41 - v8;
  v9 = sub_1DAECF8EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v41[1] = v11;
  v42 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  v15 = type metadata accessor for ActivityRendererInitializationPayload(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  BSDispatchQueueAssert();
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v18 = sub_1DAECEDEC();
  __swift_project_value_buffer(v18, qword_1EE0117A8);
  v19 = sub_1DAECEDCC();
  v20 = sub_1DAED203C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v48 = v17;
    v22 = v14;
    v23 = v3;
    v24 = v10;
    v25 = v9;
    v26 = v4;
    v27 = v21;
    *v21 = 0;
    _os_log_impl(&dword_1DAD61000, v19, v20, "Received initial connection initialization", v21, 2u);
    v28 = v27;
    v4 = v26;
    v9 = v25;
    v10 = v24;
    v3 = v23;
    v14 = v22;
    v17 = v48;
    MEMORY[0x1E127F100](v28, -1, -1);
  }

  sub_1DAD7CB5C(&qword_1EE008CC8, type metadata accessor for ActivityRendererInitializationPayload, &protocol conformance descriptor for ActivityRendererInitializationPayload);
  sub_1DAED1F4C();
  v29 = v41[0];
  sub_1DAED154C();
  v30 = *(v10 + 48);
  if (v30(v29, 1, v9) == 1)
  {
    sub_1DAECF8DC();
    if (v30(v29, 1, v9) != 1)
    {
      sub_1DAD64398(v29, &unk_1ECC0A990, &qword_1DAEDE2D0);
    }
  }

  else
  {
    (*(v10 + 32))(v14, v29, v9);
  }

  v31 = *&v3[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v31 + 16));
  sub_1DAE83FA8(v3, v14, v17);
  v48 = v17;
  os_unfair_lock_unlock(*(v31 + 16));
  v3[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_hasReceivedInitializationPayload] = 1;
  v50 = *&v3[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue];
  v32 = v42;
  (*(v10 + 16))(v42, v14, v9);
  v33 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v3;
  (*(v10 + 32))(v34 + v33, v32, v9);
  aBlock[4] = sub_1DAE8A7B0;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_92;
  v35 = _Block_copy(aBlock);
  v36 = v3;
  v37 = v10;
  v38 = v43;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v51 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  v39 = v45;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v38, v39, v35);
  _Block_release(v35);
  (*(v47 + 8))(v39, v4);
  (*(v44 + 8))(v38, v46);
  (*(v37 + 8))(v14, v9);
  sub_1DAE8A814(v48, type metadata accessor for ActivityRendererInitializationPayload);

  return result;
}

void sub_1DAE83FA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v52 = a3;
  v7 = sub_1DAED157C();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1DAECF8EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v44[-v14];
  v16 = *(v10 + 16);
  v17 = a2;
  (v16)(&v44[-v14], a2, v9, v13);
  v18 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_systemEnvironment;
  swift_beginAccess();
  v19 = *(v10 + 40);
  v51 = a1;
  v19(a1 + v18, v15, v9);
  swift_endAccess();
  if (qword_1EE005E80 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v20 = sub_1DAECEDEC();
    __swift_project_value_buffer(v20, qword_1EE0117C0);
    (v16)(v53, v17, v9);
    v21 = sub_1DAECEDCC();
    v22 = sub_1DAED200C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v46 = v23;
      v47 = swift_slowAlloc();
      v56[0] = v47;
      *v23 = 136446210;
      v17 = v53;
      (v16)(v15, v53, v9);
      v24 = v48;
      sub_1DAED156C();
      sub_1DAD7CB5C(&qword_1ECC0A338, MEMORY[0x1E6985700], MEMORY[0x1E6985728]);
      v45 = v22;
      v25 = v50;
      v26 = sub_1DAED287C();
      v28 = v27;
      (*(v49 + 8))(v24, v25);
      (*(v10 + 8))(v17, v9);
      v29 = sub_1DAD6482C(v26, v28, v56);

      v30 = v46;
      *(v46 + 1) = v29;
      v31 = v30;
      _os_log_impl(&dword_1DAD61000, v21, v45, "Initial environment received: %{public}s", v30, 0xCu);
      v32 = v47;
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1E127F100](v32, -1, -1);
      MEMORY[0x1E127F100](v31, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v53, v9);
    }

    v16 = *v52;
    v57 = sub_1DADBDB00(MEMORY[0x1E69E7CC0]);
    if ((v16 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
      sub_1DAE8A564(&qword_1EE00BDF0, &unk_1EE00BE00, 0x1E69943B8);
      sub_1DAED1F9C();
      v16 = v56[0];
      v9 = v56[1];
      v33 = v56[2];
      v34 = v56[3];
      v35 = v56[4];
    }

    else
    {
      v36 = -1 << *(v16 + 32);
      v9 = v16 + 56;
      v33 = ~v36;
      v37 = -v36;
      v38 = v37 < 64 ? ~(-1 << v37) : -1;
      v35 = v38 & *(v16 + 56);

      v34 = 0;
    }

    v53 = v33;
    v15 = ((v33 + 64) >> 6);
    if (v16 < 0)
    {
      break;
    }

LABEL_12:
    v39 = v34;
    v40 = v35;
    v10 = v34;
    if (v35)
    {
LABEL_16:
      v17 = (v40 - 1) & v40;
      v41 = *(*(v16 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v40)))));
      if (v41)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v10 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_23;
      }

      v40 = *(v9 + 8 * v10);
      ++v39;
      if (v40)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v42 = sub_1DAED24BC();
    if (!v42)
    {
      break;
    }

    v54 = v42;
    sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
    swift_dynamicCast();
    v41 = v55;
    v10 = v34;
    v17 = v35;
    if (!v55)
    {
      break;
    }

LABEL_20:
    v55 = v41;
    sub_1DAE85FE8(&v57, &v55, &qword_1EE005E80, qword_1EE0117C0, "Received initial extension: %{public}s", sub_1DADF5A54);
    if (v4)
    {

      sub_1DAD70B20(v16);

      __break(1u);
      return;
    }

    v34 = v10;
    v35 = v17;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  sub_1DAD70B20(v16);
  v43 = v51;
  *(v51 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity) = v57;

  sub_1DAE7E28C();
  *(v43 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_currentRemoteSubscriptionType) = *(v52 + *(type metadata accessor for ActivityRendererInitializationPayload(0) + 24));
}

double sub_1DAE84600(void *a1, uint64_t a2)
{
  v37 = sub_1DAED09DC();
  v40 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DAED0A3C();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1DAED09CC();
  v6 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_1DAED0A6C();
  v41 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v30 - v12;
  v13 = sub_1DAED09EC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_1DAECEE6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF80]);
  sub_1DAECEEEC();
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  (*(v14 + 104))(v16, *MEMORY[0x1E69E7F88], v13);
  v32 = sub_1DAED211C();
  (*(v14 + 8))(v16, v13);
  sub_1DAED0A4C();
  *v8 = 250;
  v17 = v34;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E7F38], v34);
  v18 = v31;
  sub_1DAED0A5C();
  (*(v6 + 8))(v8, v17);
  v19 = *(v41 + 8);
  v41 += 8;
  v20 = v33;
  v19(v10, v33);
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 16) = v30;
  aBlock[4] = sub_1DAE8A874;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_98;
  v23 = _Block_copy(aBlock);
  v24 = v22;
  v25 = v35;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  v27 = v36;
  v26 = v37;
  sub_1DAED23CC();
  v28 = v32;
  MEMORY[0x1E127DD10](v18, v25, v27, v23);
  _Block_release(v23);

  (*(v40 + 8))(v27, v26);
  (*(v38 + 8))(v25, v39);
  v19(v18, v20);

  return result;
}

void sub_1DAE84BF4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v2 + 16));
  sub_1DAE84C70(a1);
  v3 = *(v2 + 16);

  os_unfair_lock_unlock(v3);
}

void sub_1DAE84C70(uint64_t a1)
{
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE0117A8);
  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DAD61000, v3, v4, "Now allowing environment mismatch requests.", v5, 2u);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  *(a1 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_hasReceivedInitialEnvironment) = 1;
}

double sub_1DAE84D84(uint64_t a1, uint64_t a2)
{
  v63 = sub_1DAED09DC();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1DAED0A3C();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1DAED14BC();
  v69 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v68 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1DAED14CC();
  v66 = *(v70 - 1);
  MEMORY[0x1EEE9AC00](v70);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A990, &qword_1DAEDE2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = v54 - v13;
  v75 = sub_1DAECF8EC();
  v72 = *(v75 - 8);
  v14 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v76 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v73 = v54 - v16;
  v17 = sub_1DAED157C();
  v74 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v2;
  BSDispatchQueueAssert();
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v20 = sub_1DAECEDEC();
  __swift_project_value_buffer(v20, qword_1EE0117A8);
  v21 = sub_1DAECEDCC();
  v22 = sub_1DAED203C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v19;
    v24 = v17;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DAD61000, v21, v22, "Received system environment did change", v25, 2u);
    v26 = v25;
    v17 = v24;
    v19 = v23;
    MEMORY[0x1E127F100](v26, -1, -1);
  }

  sub_1DAD7CB5C(&qword_1EE00AB20, MEMORY[0x1E6985700], MEMORY[0x1E6985720]);
  sub_1DAED1F4C();
  v54[1] = v14;
  v56 = v17;
  v27 = v76;
  sub_1DAECF8DC();
  v28 = v64;
  sub_1DAED151C();
  v29 = v72;
  v30 = v66;
  v31 = v75;
  v55 = *(v72 + 8);
  v54[2] = v72 + 8;
  v55(v27, v75);
  v32 = v70;
  (*(v30 + 16))(v7, v28, v70);
  sub_1DAD7CB5C(&qword_1EE005738, MEMORY[0x1E69856E8], MEMORY[0x1E69856F0]);
  v33 = v68;
  sub_1DAED1E3C();
  sub_1DAD7CB5C(&qword_1EE005740, MEMORY[0x1E69856D8], MEMORY[0x1E69856E0]);
  v34 = v67;
  v35 = v65;
  sub_1DAED234C();
  (*(v69 + 8))(v33, v35);
  (*(v30 + 8))(v28, v32);
  v36 = *(v29 + 48);
  v37 = 1;
  v38 = v36(v34, 1, v31);
  v39 = v71;
  if (v38 != 1)
  {
    (*(v29 + 32))(v71, v34, v31);
    v37 = 0;
  }

  (*(v29 + 56))(v39, v37, 1, v31);
  if (v36(v39, 1, v31) == 1)
  {
    (*(v74 + 8))(v19, v56);
    sub_1DAD64398(v39, &unk_1ECC0A990, &qword_1DAEDE2D0);
  }

  else
  {
    v70 = *(v29 + 32);
    v41 = v73;
    (v70)(v73, v39, v31);
    v42 = v57;
    v43 = *&v57[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
    os_unfair_lock_lock(*(v43 + 16));
    v71 = v19;
    v44 = *(v29 + 16);
    v45 = v76;
    v44(v76, v41, v31);
    v46 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_systemEnvironment;
    swift_beginAccess();
    (*(v29 + 40))(&v42[v46], v45, v31);
    swift_endAccess();
    os_unfair_lock_unlock(*(v43 + 16));
    v44(v45, v41, v31);
    v47 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v42;
    (v70)(v48 + v47, v45, v31);
    aBlock[4] = sub_1DAE8A654;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_86_0;
    v49 = _Block_copy(aBlock);
    v50 = v42;
    v51 = v58;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v77 = MEMORY[0x1E69E7CC0];
    sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
    v52 = v60;
    v53 = v63;
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v51, v52, v49);
    _Block_release(v49);
    (*(v62 + 8))(v52, v53);
    (*(v59 + 8))(v51, v61);
    v55(v73, v31);
    (*(v74 + 8))(v71, v56);
  }

  return result;
}

double sub_1DAE85914(void *a1)
{
  v2 = v1;
  v4 = sub_1DAED09DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED0A3C();
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  v9 = [a1 extensions];
  v10 = sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
  sub_1DAE8A564(&qword_1EE00BDF0, &unk_1EE00BE00, 0x1E69943B8);
  v47 = v10;
  v11 = sub_1DAED1F6C();

  if (qword_1EE005E78 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v12 = sub_1DAECEDEC();
    __swift_project_value_buffer(v12, qword_1EE0117A8);

    v13 = sub_1DAECEDCC();
    v14 = sub_1DAED203C();
    v15 = v11 & 0xC000000000000001;
    if (os_log_type_enabled(v13, v14))
    {
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      v17 = v15 ? sub_1DAED247C() : *(v11 + 16);
      *(v16 + 4) = v17;

      _os_log_impl(&dword_1DAD61000, v13, v14, "Received extensions did change: %{public}ld", v16, 0xCu);
      MEMORY[0x1E127F100](v16, -1, -1);
    }

    else
    {
    }

    v40 = v2;
    v39 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
    os_unfair_lock_lock(*(v39 + 16));
    aBlock[0] = sub_1DADBDB00(MEMORY[0x1E69E7CC0]);
    v45 = v5;
    v46 = v4;
    v44 = v7;
    if (v15)
    {
      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAED1F9C();
      v2 = aBlock[6];
      v5 = aBlock[7];
      v18 = aBlock[8];
      v19 = aBlock[9];
      v4 = aBlock[10];
    }

    else
    {
      v20 = -1 << *(v11 + 32);
      v5 = v11 + 56;
      v18 = ~v20;
      v21 = -v20;
      v22 = v21 < 64 ? ~(-1 << v21) : -1;
      v4 = v22 & *(v11 + 56);

      v19 = 0;
      v2 = v11;
    }

    v38[1] = v18;
    v7 = (v18 + 64) >> 6;
    if (v2 < 0)
    {
      break;
    }

LABEL_15:
    v23 = v19;
    v24 = v4;
    v25 = v19;
    if (v4)
    {
LABEL_19:
      v26 = (v24 - 1) & v24;
      v27 = *(*(v2 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
      if (v27)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v7)
      {
        goto LABEL_25;
      }

      v24 = *(v5 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v28 = sub_1DAED24BC();
    if (!v28)
    {
      break;
    }

    v48 = v28;
    swift_dynamicCast();
    v27 = v49;
    v25 = v19;
    v26 = v4;
    if (!v49)
    {
      break;
    }

LABEL_23:
    v49 = v27;
    sub_1DAE85FE8(aBlock, &v49, &qword_1EE005E78, qword_1EE0117A8, "Received extension: %{public}s", sub_1DADF59D4);

    v19 = v25;
    v4 = v26;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  sub_1DAD70B20(v2);

  v29 = v40;
  *&v40[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity] = aBlock[0];

  sub_1DAE7E28C();
  v30 = *(v39 + 16);

  os_unfair_lock_unlock(v30);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  aBlock[4] = sub_1DAE8A64C;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_80;
  v32 = _Block_copy(aBlock);
  v33 = v29;
  v34 = v41;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v49 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  v35 = v43;
  v36 = v46;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v34, v35, v32);

  _Block_release(v32);
  (*(v45 + 8))(v35, v36);
  (*(v42 + 8))(v34, v44);

  return result;
}

void sub_1DAE85FE8(uint64_t *a1, void **a2, void *a3, uint64_t a4, const char *a5, uint64_t a6, ...)
{
  v9 = *a2;
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = sub_1DAECEDEC();
  __swift_project_value_buffer(v10, a4);
  v11 = v9;
  v12 = sub_1DAECEDCC();
  v13 = sub_1DAED200C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136446210;
    v16 = [v11 description];
    v17 = sub_1DAED1CEC();
    v30 = a1;
    v18 = a5;
    v20 = v19;

    v21 = sub_1DAD6482C(v17, v20, &v31);

    *(v14 + 4) = v21;
    v22 = v18;
    a1 = v30;
    _os_log_impl(&dword_1DAD61000, v12, v13, v22, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E127F100](v15, -1, -1);
    MEMORY[0x1E127F100](v14, -1, -1);
  }

  v23 = [v11 identity];
  v24 = *a1;
  if ((*a1 & 0xC000000000000001) == 0)
  {
    v28 = v11;
    goto LABEL_12;
  }

  if (v24 < 0)
  {
    v25 = *a1;
  }

  else
  {
    v25 = v24 & 0xFFFFFFFFFFFFFF8;
  }

  v26 = v11;
  v27 = sub_1DAED247C();
  if (!__OFADD__(v27, 1))
  {
    *a1 = sub_1DAEB9770(v25, v27 + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *a1;
    sub_1DADBDEA4(v11, v23, isUniquelyReferenced_nonNull_native);

    *a1 = v31;
    return;
  }

  __break(1u);
}

uint64_t sub_1DAE8620C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF80]);
  return sub_1DAECEEEC();
}

double sub_1DAE862F8(void *a1)
{
  v3 = sub_1DAED09DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED0A3C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  [a1 integerValue];
  v11 = sub_1DAECDECC();
  if (v12)
  {
    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v13 = sub_1DAECEDEC();
    __swift_project_value_buffer(v13, qword_1EE0117A8);
    v14 = a1;
    v28 = sub_1DAECEDCC();
    v15 = sub_1DAED201C();

    if (os_log_type_enabled(v28, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v14;
      *v17 = v14;
      v18 = v14;
      _os_log_impl(&dword_1DAD61000, v28, v15, "Provided remote subscription type value was invalid: %{public}@", v16, 0xCu);
      sub_1DAD64398(v17, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v17, -1, -1);
      MEMORY[0x1E127F100](v16, -1, -1);
    }

    v19 = v28;
  }

  else
  {
    v21 = v11;
    v22 = *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
    os_unfair_lock_lock(*(v22 + 16));
    *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_currentRemoteSubscriptionType] = v21;
    os_unfair_lock_unlock(*(v22 + 16));
    v28 = *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue];
    v23 = swift_allocObject();
    *(v23 + 16) = v1;
    *(v23 + 24) = v21;
    aBlock[4] = sub_1DAE8A60C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_74;
    v24 = _Block_copy(aBlock);
    v25 = v1;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v27 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v10, v6, v24);
    _Block_release(v24);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v27);
  }

  return result;
}

uint64_t sub_1DAE867C8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ActivityContentDidChangeEvent(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  BSDispatchQueueAssert();
  sub_1DAD7CB5C(qword_1EE0061B0, type metadata accessor for ActivityContentDidChangeEvent, &protocol conformance descriptor for ActivityContentDidChangeEvent);
  sub_1DAED1F4C();
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v8 = sub_1DAECEDEC();
  __swift_project_value_buffer(v8, qword_1EE0117A8);
  sub_1DAE16C40(v7, v4);
  v9 = sub_1DAECEDCC();
  v10 = sub_1DAED200C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136446210;
    sub_1DAED0B1C();
    sub_1DAD7CB5C(&qword_1EE00AB60, MEMORY[0x1E6993CE0], MEMORY[0x1E6993D00]);
    v13 = sub_1DAED287C();
    v15 = v14;
    sub_1DAE8A814(v4, type metadata accessor for ActivityContentDidChangeEvent);
    v16 = sub_1DAD6482C(v13, v15, v18);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1DAD61000, v9, v10, "Received activity content did change for key: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E127F100](v12, -1, -1);
    MEMORY[0x1E127F100](v11, -1, -1);
  }

  else
  {

    sub_1DAE8A814(v4, type metadata accessor for ActivityContentDidChangeEvent);
  }

  sub_1DAE86BF4(v7);
  return sub_1DAE8A814(v7, type metadata accessor for ActivityContentDidChangeEvent);
}

void sub_1DAE86BF4(uint64_t a1)
{
  v58 = a1;
  v2 = sub_1DAED09DC();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1DAED0A3C();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityContentDidChangeEvent(0);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = v6;
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1DAED0B1C();
  v7 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  v54 = *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v54 + 16));
  v9 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
  swift_beginAccess();
  v46 = v1;
  v10 = *&v1[v9];
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = sub_1DAED266C() | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(v10 + 32);
    v12 = ~v15;
    v11 = v10 + 64;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v13 = v17 & *(v10 + 64);
    v14 = v10;
  }

  v18 = 0;
  v19 = 0;
  v53 = v12;
  v20 = (v12 + 64) >> 6;
  v55 = (v7 + 8);
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v21 = v18;
    v22 = v13;
    v23 = v18;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v14 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));

    if (!v25)
    {
LABEL_18:
      sub_1DAD70B20(v14);
      os_unfair_lock_unlock(*(v54 + 16));
      if (v19)
      {
        v33 = v46;
        v34 = v45;
        sub_1DAE16C40(v58, v45);
        v35 = (*(v43 + 80) + 24) & ~*(v43 + 80);
        v36 = swift_allocObject();
        *(v36 + 16) = v33;
        sub_1DAE16B60(v34, v36 + v35);
        aBlock[4] = sub_1DAE8A5EC;
        aBlock[5] = v36;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DAD751C0;
        aBlock[3] = &block_descriptor_68;
        v37 = _Block_copy(aBlock);
        v38 = v33;
        v39 = v47;
        _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
        v59 = MEMORY[0x1E69E7CC0];
        sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
        sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
        v40 = v49;
        v41 = v52;
        sub_1DAED23CC();
        MEMORY[0x1E127DD70](0, v39, v40, v37);
        _Block_release(v37);
        (*(v51 + 8))(v40, v41);
        (*(v48 + 8))(v39, v50);
      }

      return;
    }

    while (1)
    {

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
      v31 = v56;
      MEMORY[0x1E127CAC0](v30);
      v32 = sub_1DAED0B0C();

      (*v55)(v31, v57);
      v19 |= v32;
      v18 = v23;
      v13 = v24;
      if ((v14 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v26 = sub_1DAED270C();
      if (v26)
      {
        v28 = v27;
        v59 = v26;
        type metadata accessor for ActivityRendererSessionKey(0);
        swift_dynamicCast();
        v29 = aBlock[0];
        v59 = v28;
        type metadata accessor for ActivityRendererSessionSubscriptionRequest(0);
        swift_dynamicCast();
        v23 = v18;
        v24 = v13;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_18;
    }

    v22 = *(v11 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1DAE872A4(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v6 = a3;
  v10 = a1;
  v7 = sub_1DAECDC1C();
  v9 = v8;

  a4(v7, v9);
  sub_1DAD70BB4(v7, v9);
}

void *sub_1DAE8733C(void *a1)
{
  v3 = *v1;
  v4 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity);

  v6 = sub_1DAD84F7C(a1, v5);

  os_unfair_lock_unlock(*(v4 + 16));
  return v6;
}

void sub_1DAE873BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v3 + 16));
  if (!*(a2 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_activityDescriptorCollection))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2A0, &qword_1DAEDD818);
    sub_1DAED0FFC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2A8, &qword_1DAEDD820);
  v4 = sub_1DAED11DC();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DAED6200;
  v8 = (v7 + v6);
  *v8 = 0xD000000000000016;
  v8[1] = 0x80000001DAEDD690;
  (*(v5 + 104))(v8, *MEMORY[0x1E6993EB0], v4);

  sub_1DADBE4FC(v7);
  swift_setDeallocating();
  (*(v5 + 8))(v8, v4);
  swift_deallocClassInstance();
  sub_1DAED135C();
  v9 = *(v3 + 16);

  os_unfair_lock_unlock(v9);
}

uint64_t sub_1DAE87590(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v1 + 16));

  sub_1DAE7DECC(v2);
  v4 = v3;
  os_unfair_lock_unlock(*(v1 + 16));
  return v4;
}

uint64_t sub_1DAE875E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity);
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (*(v2 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v3 = sub_1DAED247C();

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:

  sub_1DAE7DECC(v4);
  v6 = v5;
LABEL_6:
  os_unfair_lock_unlock(*(v1 + 16));
  return v6;
}

uint64_t sub_1DAE87694()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A290, &unk_1DAEDD808);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - v3;
  v5 = *v0;
  v9[1] = sub_1DAE7E1B0();
  *(swift_allocObject() + 16) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DAED138C();
  sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, MEMORY[0x1E695BED8]);
  sub_1DAECEF8C();

  sub_1DAD64B94(&unk_1EE005D88, &unk_1ECC0A290, &unk_1DAEDD808, MEMORY[0x1E695BD60]);
  v7 = sub_1DAECEF6C();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_1DAE8787C()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v2 + 16));
  v3 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_activityDescriptorCollection);
  v4 = *(v2 + 16);

  os_unfair_lock_unlock(v4);
  return v3;
}

uint64_t sub_1DAE878D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2D8, &qword_1DAEDD838);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - v3;
  v5 = *v0;
  v11[1] = sub_1DAE7E1B0();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DAE8A5B4;
  *(v7 + 24) = v6;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A2E0, &qword_1DAEDD840);
  sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, MEMORY[0x1E695BED8]);
  sub_1DAECEF8C();

  sub_1DAD64B94(&unk_1EE005D78, &qword_1ECC0A2D8, &qword_1DAEDD838, MEMORY[0x1E695BD60]);
  v9 = sub_1DAECEF6C();
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_1DAE87B60(void *a1)
{
  a1[1] = sub_1DAD7CB5C(&qword_1EE008C88, type metadata accessor for ActivityRendererClient, &unk_1DAEDD730);
  a1[2] = sub_1DAD7CB5C(&qword_1EE008C80, type metadata accessor for ActivityRendererClient, &unk_1DAEDD768);
  result = sub_1DAD7CB5C(&unk_1EE008C90, type metadata accessor for ActivityRendererClient, &unk_1DAEDD7A0);
  a1[3] = result;
  return result;
}

double sub_1DAE87C14()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1DAE7F970(v2, v3, v4);
}

uint64_t sub_1DAE87C84(unsigned __int8 *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8);

  return sub_1DAE7FAC0(a1, a2);
}

uint64_t sub_1DAE87D3C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DAED294C();
  sub_1DAED1D9C();
  v8 = sub_1DAED297C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1DAED289C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1DAE88EE8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DAE87ED4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_1DAED253C();
    v23 = v10;
    sub_1DAED242C();
    if (sub_1DAED24BC())
    {
      sub_1DAD674D4(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_1DADAAF4C(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_1DAED227C();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_1DAED24BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1DAE880D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A420, &qword_1DAEDD8C8);
    v2 = sub_1DAED253C();
    v15 = v2;
    sub_1DAED242C();
    if (sub_1DAED24BC())
    {
      sub_1DAECEE3C();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1DAE88888(v9 + 1);
        }

        v2 = v15;
        sub_1DAD7CB5C(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
        result = sub_1DAED1C5C();
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

      while (sub_1DAED24BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DAE8832C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A430, qword_1DAEDD8D0);
    v2 = sub_1DAED253C();
    v15 = v2;
    sub_1DAED242C();
    if (sub_1DAED24BC())
    {
      sub_1DAED21EC();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1DADAAF4C(v9 + 1, &unk_1ECC0A430, qword_1DAEDD8D0);
        }

        v2 = v15;
        result = sub_1DAED227C();
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

      while (sub_1DAED24BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1DAE8852C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DAED15DC();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2F8, &qword_1DAEDD850);
  v6 = sub_1DAED252C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1DAD7CB5C(&qword_1EE005718, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
      v21 = sub_1DAED1C5C();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1DAE88888(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A420, &qword_1DAEDD8C8);
  v4 = sub_1DAED252C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1DAECEE3C();
      sub_1DAD7CB5C(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      v18 = sub_1DAED1C5C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1DAE88B1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A300, &qword_1DAEDD858);
  v4 = sub_1DAED252C();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1DAED294C();
      sub_1DAED1D9C();
      v21 = sub_1DAED297C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_1DAE88D7C(uint64_t a1, uint64_t a2)
{
  sub_1DAECEE3C();
  sub_1DAD7CB5C(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  sub_1DAED1C5C();
  result = sub_1DAED240C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1DAE88E64(uint64_t a1, uint64_t a2)
{
  sub_1DAED227C();
  result = sub_1DAED240C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1DAE88EE8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DAE88B1C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1DAE89404();
      goto LABEL_16;
    }

    sub_1DAE899D0(v8 + 1);
  }

  v10 = *v4;
  sub_1DAED294C();
  sub_1DAED1D9C();
  v11 = sub_1DAED297C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1DAED289C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1DAED28EC();
  __break(1u);
}

void sub_1DAE89068()
{
  v1 = v0;
  v2 = sub_1DAED15DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2F8, &qword_1DAEDD850);
  v6 = *v0;
  v7 = sub_1DAED251C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1DAE892B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A420, &qword_1DAEDD8C8);
  v2 = *v0;
  v3 = sub_1DAED251C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_1DAE89404()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A300, &qword_1DAEDD858);
  v2 = *v0;
  v3 = sub_1DAED251C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

void sub_1DAE89574(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DAED251C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1DAE896B4(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1DAED15DC();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2F8, &qword_1DAEDD850);
  v7 = sub_1DAED252C();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1DAD7CB5C(&qword_1EE005718, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
      v21 = sub_1DAED1C5C();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_1DAE899D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A300, &qword_1DAEDD858);
  v4 = sub_1DAED252C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1DAED294C();

      sub_1DAED1D9C();
      v20 = sub_1DAED297C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
}

void sub_1DAE89C08(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1DAED247C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A318, &unk_1DAEDD868);
      v3 = sub_1DAED254C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1DAED247C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1E127E1F0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1DAED227C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1DAED228C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1DAED227C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1DAED228C();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1DAE89EF8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DAED247C())
  {
    v4 = sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
    v5 = sub_1DAE8A564(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0);
    result = MEMORY[0x1E127DBF0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x1E698E5F0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E127E1F0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1DAD8C3E4(&v12, v10, &unk_1EE00A880, 0x1E698E5F0, &qword_1ECC0A318, &unk_1DAEDD868);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1DAED247C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

double sub_1DAE8A084()
{
  type metadata accessor for ActivityRendererSessionKey(0);
  sub_1DAD7CB5C(&qword_1EE008CD8, type metadata accessor for ActivityRendererSessionKey, &protocol conformance descriptor for ActivityRendererSessionKey);
  v0 = sub_1DAED1C4C();
  v2 = v1;
  v3 = sub_1DAE82244();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DAECDC0C();
    [v4 unsubscribe_];

    swift_unknownObjectRelease();
  }

  return sub_1DAD70BB4(v0, v2);
}

double sub_1DAE8A30C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for ActivityRendererSessionKey(0);
  sub_1DAD7CB5C(&qword_1EE008CD8, type metadata accessor for ActivityRendererSessionKey, &protocol conformance descriptor for ActivityRendererSessionKey);
  v5 = sub_1DAED1C4C();
  v7 = v6;
  a4();
  return sub_1DAD70BB4(v5, v7);
}

uint64_t sub_1DAE8A564(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAD674D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAE8A5BC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_82Tm()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_1DAE8A7B0()
{
  v1 = *(sub_1DAECF8EC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1DAE84600(v2, v3);
}

uint64_t sub_1DAE8A814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAE8A8A0()
{
  result = qword_1EE008CB8;
  if (!qword_1EE008CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE008CB8);
  }

  return result;
}

double sub_1DAE8A900()
{
  sub_1DAECE3DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0);
  return sub_1DAE8A30C(*(v0 + 24), 0xD000000000000011, 0x80000001DAEE5520, sub_1DAE8AA20);
}

uint64_t objectdestroy_52Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_1DAE8AAB0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0);

  return sub_1DAE81480(a1);
}

void sub_1DAE8AB2C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1DAE80508(v2, v3);
}

uint64_t objectdestroy_121Tm()
{

  return swift_deallocObject();
}

double sub_1DAE8AC64(void *a1)
{
  v2 = v1;
  v4 = sub_1DAECEDEC();
  v5 = *(v4 - 8);
  *&result = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated) == 1)
  {
    v25 = a1;
    sub_1DAE79208(a1);
    sub_1DAE8D164(0x656E6E6F63736964, 0xEA00000000007463);
    v9 = OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__cancellables;
    swift_beginAccess();
    v10 = *(v2 + v9);
    v23 = v5;
    v24 = v4;
    if (v10 >> 62)
    {
      goto LABEL_21;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v11)
    {
      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E127E1F0](v12, v10);
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v11 = sub_1DAED247C();
            goto LABEL_4;
          }

          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_13;
          }
        }

        sub_1DAECEE2C();

        ++v12;
      }

      while (v13 != v11);
    }

    *(v2 + v9) = MEMORY[0x1E69E7CC0];

    v14 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window);
    *(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window) = 0;

    v15 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    v17 = v23;
    v16 = v24;
    (*(v23 + 16))(v8, v2 + v15, v24);
    v18 = sub_1DAECEDCC();
    v19 = sub_1DAED203C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DAD61000, v18, v19, "Will remove FBSSceneObserver.", v20, 2u);
      MEMORY[0x1E127F100](v20, -1, -1);
    }

    (*(v17 + 8))(v8, v16);
    v21 = [v25 _FBSScene];
    [v21 removeObserver_];

    if (qword_1EE006BE0 != -1)
    {
      swift_once();
    }

    sub_1DAE8F76C();
  }

  return result;
}

void sub_1DAE8AFAC()
{
  v1 = sub_1DAECFC7C();
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground);
  v61 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  v54 = v5;
  v55 = v4;
  v52 = v7;
  v53 = &v51 - v6;
  v56 = v0;
  if (v3 == 1)
  {
    if (v61 >> 62)
    {
LABEL_35:
      v8 = sub_1DAED247C();
    }

    else
    {
      v8 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v8)
    {
      goto LABEL_28;
    }

    v10 = 0;
    v11 = v61 & 0xC000000000000001;
    v12 = v61 & 0xFFFFFFFFFFFFFF8;
    v13 = &OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
    *&v9 = 136446210;
    v57 = v9;
    v59 = v61 & 0xFFFFFFFFFFFFFF8;
    v60 = v8;
    v58 = v61 & 0xC000000000000001;
    do
    {
      if (v11)
      {
        v14 = MEMORY[0x1E127E1F0](v10, v61);
        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v14 = *(v61 + 8 * v10 + 32);

        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_14;
        }
      }

      v16 = sub_1DAECEDCC();
      v17 = sub_1DAED200C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v62 = v19;
        *v18 = v57;
        v20 = v13;
        v21 = *(v14 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
        v22 = *(v14 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8);

        v23 = sub_1DAD6482C(v21, v22, &v62);

        *(v18 + 4) = v23;
        v13 = v20;
        _os_log_impl(&dword_1DAD61000, v16, v17, "[%{public}s] Enabling RenderBox default update interval because foreground.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        v24 = v19;
        v11 = v58;
        v12 = v59;
        MEMORY[0x1E127F100](v24, -1, -1);
        v25 = v18;
        v8 = v60;
        MEMORY[0x1E127F100](v25, -1, -1);
      }

      ++v10;
    }

    while (v15 != v8);
LABEL_28:

    v44 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewController);
    if (v44)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_15:
    if (v61 >> 62)
    {
      v26 = sub_1DAED247C();
    }

    else
    {
      v26 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v26)
    {
      v28 = 0;
      v29 = v61 & 0xC000000000000001;
      v30 = v61 & 0xFFFFFFFFFFFFFF8;
      v31 = &OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
      *&v27 = 136446210;
      v57 = v27;
      v59 = v61 & 0xFFFFFFFFFFFFFF8;
      v60 = v26;
      v58 = v61 & 0xC000000000000001;
      do
      {
        if (v29)
        {
          v32 = MEMORY[0x1E127E1F0](v28, v61);
          v33 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v28 >= *(v30 + 16))
          {
            goto LABEL_34;
          }

          v32 = *(v61 + 8 * v28 + 32);

          v33 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        v34 = sub_1DAECEDCC();
        v35 = sub_1DAED200C();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v62 = v37;
          *v36 = v57;
          v38 = v31;
          v39 = *(v32 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
          v40 = *(v32 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8);

          v41 = sub_1DAD6482C(v39, v40, &v62);

          *(v36 + 4) = v41;
          v31 = v38;
          _os_log_impl(&dword_1DAD61000, v34, v35, "[%{public}s] Disabling RenderBox update interval because background.", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v37);
          v42 = v37;
          v29 = v58;
          v30 = v59;
          MEMORY[0x1E127F100](v42, -1, -1);
          v43 = v36;
          v26 = v60;
          MEMORY[0x1E127F100](v43, -1, -1);
        }

        ++v28;
      }

      while (v33 != v26);
    }

    v44 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewController);
    if (v44)
    {
LABEL_31:
      v45 = *&v44[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController];
      type metadata accessor for SecureHostingController(0);
      sub_1DAE91FB0(qword_1EE00AFA0, type metadata accessor for SecureHostingController, MEMORY[0x1E697C600]);
      v46 = v44;
      v47 = v45;
      v48 = v53;
      sub_1DAECF9CC();
      sub_1DAECFBDC();
      v50 = v54;
      v49 = v55;
      (*(v54 + 16))(v52, v48, v55);
      sub_1DAECF9DC();

      (*(v50 + 8))(v48, v49);
    }
  }
}

void sub_1DAE8B590(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v6 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v112 - v7;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D20, &unk_1DAEDD960);
  v118 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v112 - v8;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E50, &unk_1DAEDC1A8);
  v122 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v112 - v9;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F40, qword_1DAEDC5C0);
  v121 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = (&v112 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v140 = &v112 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08890, &qword_1DAEDD970);
  v141 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v112 - v14;
  v15 = sub_1DAECEDEC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels;
  v19 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  if (v19 >> 62)
  {
    goto LABEL_98;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v20 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_scene;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v22 = Strong;
      v124 = v13;
      v123 = v20;
      sub_1DAE79778(a1, a2);
      v23 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x2E0);

      v25 = v23(v24);

      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = sub_1DAED087C();
      }

      v27 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
      swift_beginAccess();
      (v16)[2](v18, v3 + v27, v15);
      v28 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
      v29 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
      v30 = *(v3 + v120);
      objc_allocWithZone(type metadata accessor for ActivitySceneContentViewController(0));

      v134 = v22;
      v116 = v26;
      v31 = sub_1DAE5E9D0(v18, v28, v29, v134, v30, v26);
      v32 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewController);
      *(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewController) = v31;
      v33 = v31;

      v34 = v33;
      v35 = [v34 view];
      if (!v35)
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
        return;
      }

      v36 = v35;
      [v35 setOpaque_];

      v119 = v34;
      v37 = [v34 view];
      if (!v37)
      {
        goto LABEL_106;
      }

      v38 = v37;
      [v37 setBackgroundColor_];

      v39 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window;
      v40 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window);
      if (v40)
      {
        [v40 setRootViewController_];
        v41 = *(v3 + v39);
        if (v41)
        {
          v42 = [v41 rootViewController];
          if (v42)
          {
            v43 = v42;
            v44 = [v42 view];

            if (!v44)
            {
              goto LABEL_109;
            }

            v45 = [v134 _FBSScene];
            v46 = [v45 settings];

            [v46 frame];
            v48 = v47;
            v50 = v49;
            v52 = v51;
            v54 = v53;

            [v44 setFrame_];
          }
        }
      }

      v55 = v119;
      v56 = [v119 view];
      if (!v56)
      {
        goto LABEL_107;
      }

      v57 = v56;
      v117 = v6;
      [v56 setNeedsLayout];

      v58 = [v55 view];
      if (!v58)
      {
        goto LABEL_108;
      }

      [v58 layoutIfNeeded];

      [*(v3 + v39) makeKeyAndVisible];
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v112 - 2) = v60;
      swift_getKeyPath();
      v61 = sub_1DAECE9EC();

      aBlock = v61;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A550, &unk_1DAEDD9E8);
      v62 = MEMORY[0x1E695BED8];
      sub_1DAD64B94(&qword_1EE005C58, &unk_1ECC0A550, &unk_1DAEDD9E8, MEMORY[0x1E695BED8]);
      sub_1DAECF00C();

      v63 = v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__cancellables;
      swift_beginAccess();
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A560, &qword_1DAEDD1F0);
      v142 = sub_1DAD64B94(&qword_1EE005690, &qword_1ECC0A560, &qword_1DAEDD1F0, MEMORY[0x1E69E6348]);
      sub_1DAECEE1C();
      swift_endAccess();

      v64 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v64);
      *(&v112 - 2) = v65;
      swift_getKeyPath();
      v66 = sub_1DAECE9EC();

      aBlock = v66;
      v67 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
      v16 = sub_1DAED20EC();
      v151 = v16;
      v68 = sub_1DAED20AC();
      v69 = *(v68 - 8);
      v70 = *(v69 + 56);
      v71 = v140;
      v138 = v68;
      v137 = v70;
      v136 = v69 + 56;
      (v70)(v140, 1, 1);
      v144 = v3;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08898, &qword_1DAED8240);
      v3 = v144;
      v15 = sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240, v62);
      v72 = sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610, MEMORY[0x1E69E8028]);
      v13 = v125;
      v139 = v67;
      v135 = v72;
      sub_1DAECEFBC();
      sub_1DAD64398(v71, &unk_1ECC07D20, &unk_1DAED57D0);

      a2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1DAD64B94(&qword_1EE00AC30, &qword_1ECC08890, &qword_1DAEDD970, MEMORY[0x1E695BE98]);
      v18 = v124;
      sub_1DAECF00C();

      (*(v141 + 8))(v13, v18);
      swift_beginAccess();
      v141 = v63;
      sub_1DAECEE1C();
      swift_endAccess();

      if (*(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_wantsInheritedColorScheme) == 1)
      {
        v73 = [objc_allocWithZone(MEMORY[0x1E69DC690]) init];
        v74 = OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector;
        v75 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector);
        *(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector) = v73;
        a2 = v73;

        v18 = &off_1DAED4000;
        if (a2)
        {
          v76 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v149 = sub_1DAE92074;
          v150 = v76;
          aBlock = MEMORY[0x1E69E9820];
          v146 = 1107296256;
          v147 = sub_1DAE093BC;
          v148 = &block_descriptor_17;
          v77 = _Block_copy(&aBlock);

          [a2 observeUserInterfaceStyleWithBlock_];
          _Block_release(v77);
        }

        v15 = *(v3 + v74);
        if (v15)
        {
          v78 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v149 = sub_1DAE9207C;
          v150 = v78;
          aBlock = MEMORY[0x1E69E9820];
          v146 = 1107296256;
          v147 = sub_1DAE093BC;
          v148 = &block_descriptor_95_0;
          a2 = _Block_copy(&aBlock);
          v15 = v15;

          [v15 observeDisplayConfigurationWithBlock_];
          _Block_release(a2);
        }

        sub_1DAE8D1DC();
        v79 = swift_unknownObjectWeakLoadStrong();
        if (v79)
        {
          v80 = v79;
          v81 = [v79 _FBSScene];

          a2 = [v81 settings];
          v82 = [a2 displayConfiguration];

          if (v82)
          {
            if ([v82 isCarDisplay])
            {
              v83 = 1;
            }

            else
            {
              v83 = [v82 isCarInstrumentsDisplay];
            }

            v113 = v82;
            a1 = [v82 identity];
            a2 = [a1 isContinuityDisplay];

            v15 = *(v3 + v120);
            if (v15 >> 62)
            {
              v84 = sub_1DAED247C();
            }

            else
            {
              v84 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v84)
            {
              v3 = 0;
              v16 = (v15 & 0xC000000000000001);
              v125 = (v15 & 0xFFFFFFFFFFFFFF8);
              *&v85 = 136446466;
              v114 = v85;
              v123 = v15;
              v115 = v84;
              v124 = v15 & 0xC000000000000001;
              do
              {
                if (v16)
                {
                  v13 = MEMORY[0x1E127E1F0](v3, v15);
                  v6 = (v3 + 1);
                  if (__OFADD__(v3, 1))
                  {
                    goto LABEL_41;
                  }
                }

                else
                {
                  if (v3 >= *(v125 + 2))
                  {
                    goto LABEL_97;
                  }

                  v13 = *(v15 + 8 * v3 + 32);

                  v6 = (v3 + 1);
                  if (__OFADD__(v3, 1))
                  {
LABEL_41:
                    __break(1u);
                    break;
                  }
                }

                v18 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay;
                v87 = *(v13 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay);
                *(v13 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay) = v83;
                BSDispatchQueueAssertMain();
                if (v87 != *(v18 + v13))
                {

                  v88 = sub_1DAECEDCC();
                  v89 = sub_1DAED203C();
                  if (os_log_type_enabled(v88, v89))
                  {
                    v90 = swift_slowAlloc();
                    v91 = a2;
                    v92 = v83;
                    v93 = swift_slowAlloc();
                    aBlock = v93;
                    *v90 = v114;
                    *(v90 + 4) = sub_1DAD6482C(*(v13 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v13 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &aBlock);
                    *(v90 + 12) = 1026;
                    *(v90 + 14) = *(v18 + v13);

                    _os_log_impl(&dword_1DAD61000, v88, v89, "[%{public}s] isCarPlayDisplay changed %{BOOL,public}d)", v90, 0x12u);
                    __swift_destroy_boxed_opaque_existential_1Tm(v93);
                    v94 = v93;
                    v83 = v92;
                    a2 = v91;
                    v15 = v123;
                    MEMORY[0x1E127F100](v94, -1, -1);
                    v95 = v90;
                    v84 = v115;
                    MEMORY[0x1E127F100](v95, -1, -1);
                  }

                  else
                  {
                  }

                  sub_1DAE69B6C(10);
                  v16 = v124;
                }

                v86 = *(v13 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay);
                *(v13 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) = a2;
                a1 = v13;
                sub_1DAE63360(v86);

                ++v3;
              }

              while (v6 != v84);
            }

            v3 = v144;
          }
        }
      }

      a1 = *(v3 + v120);
      if (a1 >> 62)
      {
        v6 = sub_1DAED247C();
      }

      else
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v6)
      {
LABEL_55:

        a2 = *(v144 + v120);
        if (a2 >> 62)
        {
          a1 = sub_1DAED247C();
        }

        else
        {
          a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a1)
        {
          v103 = 0;
          v133 = a2 & 0xC000000000000001;
          v132 = (a2 & 0xFFFFFFFFFFFFFF8);
          v6 = &qword_1DAEDDA68;
          do
          {
            if (v133)
            {
              v104 = MEMORY[0x1E127E1F0](v103, a2);
              v15 = v103 + 1;
              if (__OFADD__(v103, 1))
              {
                goto LABEL_66;
              }
            }

            else
            {
              if (v103 >= *(v132 + 2))
              {
                goto LABEL_94;
              }

              v104 = *(a2 + 8 * v103 + 32);

              v15 = v103 + 1;
              if (__OFADD__(v103, 1))
              {
LABEL_66:
                __break(1u);
                break;
              }
            }

            v13 = *(v104 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorSchemeDidChangePublisher);
            aBlock = v13;
            v16 = swift_allocObject();
            swift_unknownObjectWeakInit();

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A568, &qword_1DAEDDA68);
            sub_1DAD64B94(&qword_1EE005CD0, &unk_1ECC0A568, &qword_1DAEDDA68, MEMORY[0x1E695BED8]);
            v3 = a1;
            sub_1DAECF00C();

            v18 = v141;
            swift_beginAccess();
            sub_1DAECEE1C();
            swift_endAccess();

            ++v103;
          }

          while (v15 != a1);
        }

        a2 = *(v144 + v120);
        if (a2 >> 62)
        {
          a1 = sub_1DAED247C();
        }

        else
        {
          a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a1)
        {
          v105 = 0;
          v133 = a2 & 0xC000000000000001;
          v132 = (a2 & 0xFFFFFFFFFFFFFF8);
          v6 = &unk_1DAED5850;
          do
          {
            if (v133)
            {
              v106 = MEMORY[0x1E127E1F0](v105, a2);
              v15 = v105 + 1;
              if (__OFADD__(v105, 1))
              {
                goto LABEL_78;
              }
            }

            else
            {
              if (v105 >= *(v132 + 2))
              {
                goto LABEL_95;
              }

              v106 = *(a2 + 8 * v105 + 32);

              v15 = v105 + 1;
              if (__OFADD__(v105, 1))
              {
LABEL_78:
                __break(1u);
                break;
              }
            }

            aBlock = *(v106 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDateDidChangePublisher);
            v13 = swift_allocObject();
            swift_unknownObjectWeakInit();

            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
            sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, MEMORY[0x1E695BED8]);
            v3 = a1;
            sub_1DAECF00C();

            v18 = v141;
            swift_beginAccess();
            sub_1DAECEE1C();
            swift_endAccess();

            ++v105;
          }

          while (v15 != a1);
        }

        a1 = *(v144 + v120);
        if (a1 >> 62)
        {
          v3 = sub_1DAED247C();
        }

        else
        {
          v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a2 = v117;

        if (v3)
        {
          v107 = 0;
          v133 = a1 & 0xC000000000000001;
          v132 = (a1 & 0xFFFFFFFFFFFFFF8);
          v130 = (a2 + 8);
          v125 = (v118 + 8);
          v131 = a1;
          v13 = v140;
          do
          {
            if (v133)
            {
              v6 = MEMORY[0x1E127E1F0](v107, a1);
              v15 = v107 + 1;
              if (__OFADD__(v107, 1))
              {
                goto LABEL_90;
              }
            }

            else
            {
              if (v107 >= *(v132 + 2))
              {
                goto LABEL_96;
              }

              v6 = *(a1 + 8 * v107 + 32);

              v15 = v107 + 1;
              if (__OFADD__(v107, 1))
              {
LABEL_90:
                __break(1u);
                break;
              }
            }

            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
            v108 = v128;
            sub_1DAECEF0C();
            swift_endAccess();
            v109 = sub_1DAED20EC();
            aBlock = v109;
            v137(v13, 1, 1, v138);
            sub_1DAD64B94(&qword_1EE00ABC0, &unk_1ECC0A540, &unk_1DAED7D70, MEMORY[0x1E695C068]);
            v110 = v126;
            v111 = v129;
            sub_1DAECEFBC();
            sub_1DAD64398(v13, &unk_1ECC07D20, &unk_1DAED57D0);

            (*v130)(v108, v111);
            v18 = swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1DAD64B94(&unk_1EE00AC20, &qword_1ECC08D20, &unk_1DAEDD960, MEMORY[0x1E695BE98]);
            v16 = v127;
            sub_1DAECF00C();

            (*v125)(v110, v16);
            a2 = v141;
            swift_beginAccess();
            sub_1DAECEE1C();
            swift_endAccess();

            a1 = v131;

            ++v107;
          }

          while (v15 != v3);
        }

        return;
      }

      v96 = 0;
      v125 = (a1 & 0xC000000000000001);
      v124 = a1 & 0xFFFFFFFFFFFFFF8;
      ++v122;
      ++v121;
      v123 = a1;
      while (v125)
      {
        v3 = MEMORY[0x1E127E1F0](v96, a1);
        a2 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_50:
        aBlock = *(v3 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09E60, &unk_1DAED6D20);
        sub_1DAD64B94(&qword_1EE005CE0, &qword_1ECC09E60, &unk_1DAED6D20, MEMORY[0x1E695BED8]);
        v13 = v132;
        sub_1DAECEFAC();

        v97 = sub_1DAED20EC();
        aBlock = v97;
        v98 = v140;
        v137(v140, 1, 1, v138);
        sub_1DAD64B94(&unk_1EE005D60, &unk_1ECC09E50, &unk_1DAEDC1A8, MEMORY[0x1E695BDE0]);
        v18 = v130;
        v99 = v133;
        sub_1DAECEFBC();
        sub_1DAD64398(v98, &unk_1ECC07D20, &unk_1DAED57D0);

        (*v122)(v13, v99);
        v100 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v101 = swift_allocObject();
        v101[2] = v100;
        v101[3] = v16;
        v101[4] = v3;
        sub_1DAD64B94(&qword_1EE005CF0, &qword_1ECC09F40, qword_1DAEDC5C0, MEMORY[0x1E695BE98]);

        v102 = v131;
        sub_1DAECF00C();

        (*v121)(v18, v102);
        v15 = v141;
        swift_beginAccess();
        sub_1DAECEE1C();
        swift_endAccess();

        a1 = v123;

        ++v96;
        if (a2 == v6)
        {
          goto LABEL_55;
        }
      }

      if (v96 < *(v124 + 16))
      {
        break;
      }

      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      if (!sub_1DAED247C())
      {
        return;
      }
    }

    v3 = *(a1 + 8 * v96 + 32);

    a2 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      goto LABEL_54;
    }

    goto LABEL_50;
  }
}

void sub_1DAE8D164(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1DAE799C8(a1, a2);
  v4 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewController);
  if (v4)
  {
    v5 = v4;
    sub_1DAE5F754();
  }

  v6 = OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector;
  v7 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector);
  if (v7)
  {
    [v7 removeAllObservers];
    v7 = *(v3 + v6);
  }

  *(v3 + v6) = 0;
}

void sub_1DAE8D1DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v51 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = v44 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v52 = v44 - v6;
  v7 = sub_1DAECEDEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_wantsInheritedColorScheme] == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = [Strong _FBSScene];

      v49 = [v13 settings];
      if (v49)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = [v14 userInterfaceStyle];

          v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
          swift_beginAccess();
          (*(v8 + 16))(v10, &v0[v16], v7);
          v17 = v0;
          v18 = sub_1DAECEDCC();
          v19 = sub_1DAED203C();

          v20 = os_log_type_enabled(v18, v19);
          v49 = v15;
          if (v20)
          {
            v21 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v54[0] = v48;
            *v21 = 136446466;
            v22 = *&v17[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
            v23 = *&v17[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

            v24 = sub_1DAD6482C(v22, v23, v54);

            *(v21 + 4) = v24;
            *(v21 + 12) = 2082;
            v53 = v15;
            type metadata accessor for UIUserInterfaceStyle(0);
            v25 = sub_1DAED1D4C();
            v27 = sub_1DAD6482C(v25, v26, v54);

            *(v21 + 14) = v27;
            _os_log_impl(&dword_1DAD61000, v18, v19, "[%{public}s] User interface style changed from host: %{public}s", v21, 0x16u);
            v28 = v48;
            swift_arrayDestroy();
            MEMORY[0x1E127F100](v28, -1, -1);
            MEMORY[0x1E127F100](v21, -1, -1);
          }

          (*(v8 + 8))(v10, v7);
          v29 = *&v17[OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels];
          if (v29 >> 62)
          {
LABEL_28:
            v30 = sub_1DAED247C();
          }

          else
          {
            v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v30)
          {
            v31 = 0;
            v47 = v29 & 0xFFFFFFFFFFFFFF8;
            v48 = v29 & 0xC000000000000001;
            v44[0] = *MEMORY[0x1E697DBB8];
            v44[1] = *MEMORY[0x1E697DBA8];
            v45 = v30;
            v46 = v29;
            do
            {
              if (v48)
              {
                v37 = MEMORY[0x1E127E1F0](v31, v29);
                v38 = v31 + 1;
                if (__OFADD__(v31, 1))
                {
LABEL_21:
                  __break(1u);
                  break;
                }
              }

              else
              {
                if (v31 >= *(v47 + 16))
                {
                  __break(1u);
                  goto LABEL_28;
                }

                v37 = *(v29 + 8 * v31 + 32);

                v38 = v31 + 1;
                if (__OFADD__(v31, 1))
                {
                  goto LABEL_21;
                }
              }

              v39 = sub_1DAECF0AC();
              v40 = *(v39 - 8);
              v41 = *(v40 + 56);
              v32 = 1;
              v42 = v52;
              v41(v52, 1, 1, v39);
              sub_1DAD64398(v42, &qword_1ECC08370, &unk_1DAED6580);
              if (v49 == 2 || v49 == 1)
              {
                (*(v40 + 104))(v52);
                v32 = 0;
              }

              v33 = v52;
              v41(v52, v32, 1, v39);
              v34 = v50;
              sub_1DAD6495C(v33, v50, &qword_1ECC08370, &unk_1DAED6580);
              v35 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme;
              swift_beginAccess();
              v36 = v51;
              sub_1DAD6495C(v37 + v35, v51, &qword_1ECC08370, &unk_1DAED6580);
              swift_beginAccess();
              sub_1DADE9908(v34, v37 + v35);
              swift_endAccess();
              sub_1DAE62CD8(v36);

              sub_1DAD64398(v36, &qword_1ECC08370, &unk_1DAED6580);
              sub_1DAD64398(v34, &qword_1ECC08370, &unk_1DAED6580);
              sub_1DAD64398(v33, &qword_1ECC08370, &unk_1DAED6580);
              ++v31;
              v29 = v46;
            }

            while (v38 != v45);
          }
        }

        else
        {
          v43 = v49;
        }
      }
    }
  }
}

id sub_1DAE8D838(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v134 = a2;
  v129 = a1;
  v6 = sub_1DAECEDEC();
  v7 = *(v6 - 8);
  v130 = v6;
  v131 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v128 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v117 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v117 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086B0, &unk_1DAED84D0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v117 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v117 - v25;
  v27 = sub_1DAED1B8C();
  v135 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v133 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels];
  if (!(v30 >> 62))
  {
    result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_57:
    (*(v135 + 56))(v26, 1, 1, v27, v28);
    return sub_1DAD64398(v26, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  result = sub_1DAED247C();
  if (!result)
  {
    goto LABEL_57;
  }

LABEL_3:
  v127 = a3;
  v132 = v27;
  if ((v30 & 0xC000000000000001) != 0)
  {

    v32 = MEMORY[0x1E127E1F0](0, v30);
  }

  else
  {
    if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v32 = *(v30 + 32);
  }

  v33 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v32 + v33, v26, &unk_1ECC09E40, &qword_1DAED68E0);

  v34 = v135;
  v35 = v132;
  if ((*(v135 + 48))(v26, 1, v132) == 1)
  {
    return sub_1DAD64398(v26, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  (*(v34 + 32))(v133, v26, v35);
  sub_1DAED1B7C();
  v36 = sub_1DAED1B1C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v124 = (v37 + 48);
  v123 = v38;
  v39 = v38(v17, 1, v36);
  v121 = v20;
  v125 = v36;
  v120 = v37;
  if (v39 == 1)
  {
    v40 = &unk_1ECC0A520;
    v41 = &unk_1DAED6D30;
    v42 = v17;
LABEL_11:
    sub_1DAD64398(v42, v40, v41);
    v45 = 0;
    goto LABEL_13;
  }

  sub_1DAED1ADC();
  (*(v37 + 8))(v17, v36);
  v43 = sub_1DAED175C();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v23, 1, v43) == 1)
  {
    v40 = &qword_1ECC086B0;
    v41 = &unk_1DAED84D0;
    v42 = v23;
    goto LABEL_11;
  }

  v46 = sub_1DAED173C();
  v47 = v23;
  v45 = v46;
  (*(v44 + 8))(v47, v43);
LABEL_13:
  ObjectType = swift_getObjectType();
  v49 = sub_1DAECE93C();
  v126 = ObjectType;
  if (v49)
  {
    v50 = v49;
    if (v45)
    {
      sub_1DAD674D4(0, &qword_1ECC09E90, 0x1E69DC888);
      v51 = v45;
      v52 = sub_1DAED228C();

      if (v52)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }
  }

  else if (!v45)
  {
LABEL_31:
    sub_1DAED1B7C();
    v78 = v125;
    if (v123(v14, 1, v125) == 1)
    {
      sub_1DAD64398(v14, &unk_1ECC0A520, &unk_1DAED6D30);
      v79 = 0;
      v81 = v131;
      v80 = v132;
    }

    else
    {
      v124 = v4;
      v82 = v45;
      v83 = v121;
      sub_1DAED1B0C();
      (*(v120 + 8))(v14, v78);
      v84 = sub_1DAED175C();
      v85 = *(v84 - 8);
      v86 = (*(v85 + 48))(v83, 1, v84);
      v81 = v131;
      v80 = v132;
      if (v86 == 1)
      {
        sub_1DAD64398(v83, &qword_1ECC086B0, &unk_1DAED84D0);
        v79 = 0;
      }

      else
      {
        v79 = sub_1DAED173C();
        (*(v85 + 8))(v83, v84);
      }

      v45 = v82;
      v4 = v124;
    }

    v87 = sub_1DAECE99C();
    v88 = v130;
    if (v87)
    {
      v89 = v87;
      if (v79)
      {
        sub_1DAD674D4(0, &qword_1ECC09E90, 0x1E69DC888);
        v90 = v79;
        v91 = sub_1DAED228C();

        if (v91)
        {

LABEL_55:
          return (*(v135 + 8))(v133, v80);
        }
      }

      else
      {
      }
    }

    else if (!v79)
    {
      goto LABEL_55;
    }

    v92 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
    swift_beginAccess();
    v93 = &v4[v92];
    v94 = v128;
    (*(v81 + 16))(v128, v93, v88);
    v95 = v81;
    v96 = v79;
    v97 = v4;
    v98 = sub_1DAECEDCC();
    v99 = sub_1DAED203C();

    if (os_log_type_enabled(v98, v99))
    {
      v125 = v45;
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v136 = v101;
      *v100 = 136446466;
      v102 = *&v97[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v103 = *&v97[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

      v104 = sub_1DAD6482C(v102, v103, &v136);

      *(v100 + 4) = v104;
      *(v100 + 12) = 2082;
      if (v79)
      {
        v105 = [v96 description];
        v106 = sub_1DAED1CEC();
        v108 = v107;

        v88 = v130;
      }

      else
      {
        v106 = 7104878;
        v108 = 0xE300000000000000;
      }

      v109 = sub_1DAD6482C(v106, v108, &v136);

      *(v100 + 14) = v109;
      _os_log_impl(&dword_1DAD61000, v98, v99, "[%{public}s] Updating client text color: %{public}s", v100, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v101, -1, -1);
      MEMORY[0x1E127F100](v100, -1, -1);

      (*(v131 + 8))(v128, v88);
      v45 = v125;
    }

    else
    {

      (*(v95 + 8))(v94, v88);
    }

    v110 = v96;
    sub_1DAECE9AC();
    v111 = v127;
    v112 = [v127 animationFence];
    if (v112)
    {
      v113 = v112;

      return (*(v135 + 8))(v133, v132);
    }

    result = swift_unknownObjectWeakLoadStrong();
    v80 = v132;
    if (result)
    {
      v114 = result;
      v115 = [result _synchronizedDrawingFence];

      [v111 setAnimationFence_];
      result = [objc_opt_self() settingsWithDuration_];
      if (result)
      {
        v116 = result;
        [v111 setAnimationSettings_];

        goto LABEL_55;
      }

      goto LABEL_64;
    }

    goto LABEL_62;
  }

  v53 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v54 = v45;
  v55 = v130;
  v56 = v131;
  (*(v131 + 16))(v11, &v4[v53], v130);
  v57 = v54;
  v58 = v4;
  v59 = sub_1DAECEDCC();
  v60 = sub_1DAED203C();
  v122 = v57;

  v61 = v60;
  v62 = os_log_type_enabled(v59, v60);
  v119 = v58;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v137[0] = v118;
    *v63 = 136446466;
    v64 = *&v58[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
    v65 = *&v58[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

    v66 = sub_1DAD6482C(v64, v65, v137);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2082;
    v45 = v54;
    if (v54)
    {
      v67 = [v122 description];
      v68 = sub_1DAED1CEC();
      v70 = v69;

      v45 = v54;
    }

    else
    {
      v68 = 7104878;
      v70 = 0xE300000000000000;
    }

    v71 = sub_1DAD6482C(v68, v70, v137);

    *(v63 + 14) = v71;
    _os_log_impl(&dword_1DAD61000, v59, v61, "[%{public}s] Updating client background tint color: %{public}s", v63, 0x16u);
    v72 = v118;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v72, -1, -1);
    MEMORY[0x1E127F100](v63, -1, -1);

    (*(v131 + 8))(v11, v130);
  }

  else
  {

    (*(v56 + 8))(v11, v55);
    v45 = v54;
  }

  v73 = v127;
  v74 = v122;
  sub_1DAECE94C();
  v75 = [v73 animationFence];
  if (v75)
  {
LABEL_30:

    goto LABEL_31;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v76 = result;
  v77 = [result _synchronizedDrawingFence];

  [v73 setAnimationFence_];
  result = [objc_opt_self() settingsWithDuration_];
  if (result)
  {
    v75 = result;
    [v73 setAnimationSettings_];
    goto LABEL_30;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

id sub_1DAE8E634(uint64_t a1, uint64_t a2, void *a3)
{
  v111 = a1;
  v112 = a2;
  v5 = sub_1DAECEDEC();
  v106 = *(v5 - 8);
  v107 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAECE73C();
  v113 = *(v7 - 8);
  v114 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A518, &qword_1DAEDD950);
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v96 - v9;
  v10 = sub_1DAED17AC();
  v108 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v96 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08698, &qword_1DAED84E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v96 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A530, &qword_1DAEDD958);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v102 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v105 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v101 = &v96 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v96 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v115 = &v96 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v96 - v35;
  v37 = sub_1DAED1B8C();
  v116 = *(v37 - 8);
  v117 = v37;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v3;
  v41 = *&v3[OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels];
  if (!(v41 >> 62))
  {
    result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_34:
    (*(v116 + 56))(v36, 1, 1, v117, v38);
    return sub_1DAD64398(v36, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  result = sub_1DAED247C();
  if (!result)
  {
    goto LABEL_34;
  }

LABEL_3:
  v97 = a3;
  if ((v41 & 0xC000000000000001) != 0)
  {

    v43 = MEMORY[0x1E127E1F0](0, v41);
  }

  else
  {
    if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_39;
    }

    v43 = *(v41 + 32);
  }

  v44 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v43 + v44, v36, &unk_1ECC09E40, &qword_1DAED68E0);

  v46 = v116;
  v45 = v117;
  if ((*(v116 + 48))(v36, 1, v117) != 1)
  {
    (*(v46 + 32))(v40, v36, v45);
    v96 = v40;
    sub_1DAED1B7C();
    v47 = sub_1DAED1B1C();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v14, 1, v47) == 1)
    {
      sub_1DAD64398(v14, &unk_1ECC0A520, &unk_1DAED6D30);
      v49 = 1;
    }

    else
    {
      sub_1DAED1ACC();
      (*(v48 + 8))(v14, v47);
      v49 = 0;
    }

    v51 = v114;
    v50 = v115;
    v53 = v109;
    v52 = v110;
    v54 = v108;
    (*(v108 + 56))(v20, v49, 1, v10);
    sub_1DAD6495C(v20, v17, &qword_1ECC08698, &qword_1DAED84E0);
    if ((*(v54 + 48))(v17, 1, v10) == 1)
    {
      sub_1DAD64398(v20, &qword_1ECC08698, &qword_1DAED84E0);
      v55 = v113;
      (*(v113 + 56))(v50, 1, 1, v51);
    }

    else
    {
      v56 = v100;
      (*(v54 + 32))(v100, v17, v10);
      sub_1DAED179C();
      sub_1DAECE72C();
      (*(v54 + 8))(v56, v10);
      sub_1DAD64398(v20, &qword_1ECC08698, &qword_1DAED84E0);
      v55 = v113;
    }

    ObjectType = swift_getObjectType();
    sub_1DAECE8EC();
    v58 = *(v53 + 48);
    sub_1DAD6495C(v31, v52, &unk_1ECC0A530, &qword_1DAEDD958);
    sub_1DAD6495C(v50, v52 + v58, &unk_1ECC0A530, &qword_1DAEDD958);
    v59 = *(v55 + 48);
    if (v59(v52, 1, v51) == 1)
    {
      sub_1DAD64398(v31, &unk_1ECC0A530, &qword_1DAEDD958);
      if (v59(v52 + v58, 1, v51) == 1)
      {
        sub_1DAD64398(v52, &unk_1ECC0A530, &qword_1DAEDD958);
LABEL_32:
        sub_1DAD64398(v50, &unk_1ECC0A530, &qword_1DAEDD958);
        return (*(v116 + 8))(v96, v117);
      }
    }

    else
    {
      v60 = v101;
      sub_1DAD6495C(v52, v101, &unk_1ECC0A530, &qword_1DAEDD958);
      if (v59(v52 + v58, 1, v51) != 1)
      {
        v110 = ObjectType;
        v81 = v113;
        v82 = v52 + v58;
        v83 = v98;
        (*(v113 + 32))(v98, v82, v51);
        sub_1DAE91FB0(&unk_1EE005EA0, MEMORY[0x1E6989B68], MEMORY[0x1E6989B70]);
        v84 = sub_1DAED1CAC();
        v85 = *(v81 + 8);
        v85(v83, v114);
        sub_1DAD64398(v31, &unk_1ECC0A530, &qword_1DAEDD958);
        v85(v60, v114);
        v50 = v115;
        sub_1DAD64398(v52, &unk_1ECC0A530, &qword_1DAEDD958);
        if (v84)
        {
          goto LABEL_32;
        }

LABEL_19:
        v61 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
        v62 = v103;
        swift_beginAccess();
        v64 = v106;
        v63 = v107;
        v65 = v104;
        (*(v106 + 16))(v104, &v62[v61], v107);
        v66 = v105;
        sub_1DAD6495C(v50, v105, &unk_1ECC0A530, &qword_1DAEDD958);
        v67 = v62;
        v68 = sub_1DAECEDCC();
        v69 = sub_1DAED203C();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v118 = v71;
          *v70 = 136446466;
          v72 = *&v67[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
          v73 = *&v67[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

          v74 = sub_1DAD6482C(v72, v73, &v118);
          v75 = v114;

          *(v70 + 4) = v74;
          *(v70 + 12) = 2082;
          v76 = v66;
          v77 = v99;
          sub_1DAD6495C(v76, v99, &unk_1ECC0A530, &qword_1DAEDD958);
          if (v59(v77, 1, v75) == 1)
          {
            sub_1DAD64398(v77, &unk_1ECC0A530, &qword_1DAEDD958);
            v78 = 0xE300000000000000;
            v79 = 7104878;
          }

          else
          {
            v86 = sub_1DAECE71C();
            v87 = v75;
            v79 = v86;
            v78 = v88;
            (*(v113 + 8))(v77, v87);
          }

          v89 = v104;
          v80 = v102;
          sub_1DAD64398(v105, &unk_1ECC0A530, &qword_1DAEDD958);
          v90 = sub_1DAD6482C(v79, v78, &v118);

          *(v70 + 14) = v90;
          _os_log_impl(&dword_1DAD61000, v68, v69, "[%{public}s] Updating client supported family: %{public}s", v70, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E127F100](v71, -1, -1);
          MEMORY[0x1E127F100](v70, -1, -1);

          (*(v106 + 8))(v89, v107);
        }

        else
        {

          sub_1DAD64398(v66, &unk_1ECC0A530, &qword_1DAEDD958);
          (*(v64 + 8))(v65, v63);
          v80 = v102;
        }

        v50 = v115;
        sub_1DAD6495C(v115, v80, &unk_1ECC0A530, &qword_1DAEDD958);
        sub_1DAECE8FC();
        v91 = v97;
        v92 = [v97 animationFence];
        if (v92)
        {

          goto LABEL_32;
        }

        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v93 = result;
          v94 = [result _synchronizedDrawingFence];

          [v91 setAnimationFence_];
          result = [objc_opt_self() settingsWithDuration_];
          if (result)
          {
            v95 = result;
            [v91 setAnimationSettings_];

            goto LABEL_32;
          }

          goto LABEL_40;
        }

LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

      sub_1DAD64398(v31, &unk_1ECC0A530, &qword_1DAEDD958);
      (*(v113 + 8))(v60, v51);
    }

    v110 = ObjectType;
    sub_1DAD64398(v52, &qword_1ECC0A518, &qword_1DAEDD950);
    goto LABEL_19;
  }

  return sub_1DAD64398(v36, &unk_1ECC09E40, &qword_1DAED68E0);
}

void sub_1DAE8F440()
{
  v1 = v0;
  v2 = *(v0 + qword_1EE011828);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v4;
    os_unfair_lock_unlock((v2 + 24));

    v5 = v1[2];
    if (v5 < v4)
    {

      v10 = sub_1DAECEDCC();
      v11 = sub_1DAED201C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18 = v13;
        *v12 = 136446722;
        *(v12 + 4) = sub_1DAD6482C(0x7974697669746341, 0xED0000656E656353, &v18);
        *(v12 + 12) = 2050;
        *(v12 + 14) = v4;
        *(v12 + 22) = 2050;
        *(v12 + 24) = v5;

        _os_log_impl(&dword_1DAD61000, v10, v11, "Count of %{public}s increased to %{public}ld. This exceeds the maximum of %{public}ld", v12, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x1E127F100](v13, -1, -1);
        MEMORY[0x1E127F100](v12, -1, -1);
      }

      else
      {
      }

      v14 = v1[6];
      v15 = v1[7];
      __swift_project_boxed_opaque_existential_1(v1 + 3, v14);
      v18 = v4;
      v16 = sub_1DAED287C();
      (*(v15 + 8))(0x7974697669746341, 0xED0000656E656353, 0xD00000000000001ALL, 0x80000001DAEE5660, 0xD00000000000001ALL, 0x80000001DAEE5660, v16, v17, v14, v15);
    }

    else
    {
      v6 = sub_1DAECEDCC();
      v7 = sub_1DAED203C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v18 = v9;
        *v8 = 136446466;
        *(v8 + 4) = sub_1DAD6482C(0x7974697669746341, 0xED0000656E656353, &v18);
        *(v8 + 12) = 2050;
        *(v8 + 14) = v4;
        _os_log_impl(&dword_1DAD61000, v6, v7, "Count of %{public}s increased to %{public}ld", v8, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x1E127F100](v9, -1, -1);
        MEMORY[0x1E127F100](v8, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_1DAE8F76C()
{
  v1 = *(v0 + qword_1EE011828);

  os_unfair_lock_lock((v1 + 24));
  sub_1DAE92EA0((v1 + 16), &v7);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v7;

  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_1DAD6482C(0x7974697669746341, 0xED0000656E656353, &v7);
    *(v5 + 12) = 2050;
    *(v5 + 14) = v2;
    _os_log_impl(&dword_1DAD61000, v3, v4, "Count of %{public}s decreased to %{public}ld", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E127F100](v6, -1, -1);
    MEMORY[0x1E127F100](v5, -1, -1);
  }
}

uint64_t sub_1DAE8F8FC(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a1 - 1;
  if (*a1 < 1)
  {
    v6 = sub_1DAECEDCC();
    v7 = sub_1DAED201C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1DAD6482C(0x7974697669746341, 0xED0000656E656353, &v18);
      _os_log_impl(&dword_1DAD61000, v6, v7, "Attempted decrement of zero %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E127F100](v9, -1, -1);
      MEMORY[0x1E127F100](v8, -1, -1);
    }

    v10 = a2[6];
    v11 = a2[7];
    __swift_project_boxed_opaque_existential_1(a2 + 3, v10);
    v12 = sub_1DAED29FC();
    v14 = v13;
    v18 = v3;
    v15 = sub_1DAED287C();
    (*(v11 + 8))(v12, v14, 0xD000000000000018, 0x80000001DAEE4F70, 0xD000000000000018, 0x80000001DAEE4F70, v15, v16, v10, v11);
  }

  else
  {
    *a1 = v4;
    return v4;
  }

  return v3;
}

void sub_1DAE8FAF0()
{
  v0 = sub_1DAECEDEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE005E28 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EE011718);
  (*(v1 + 16))(v3, v4, v0);
  type metadata accessor for BugReporter();
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A508, &unk_1DAEDD940);
  v6 = swift_allocObject();

  v7 = sub_1DAE9133C(30, v3, v5, v6);

  qword_1EE006BF0 = v7;
}

void sub_1DAE8FD50(double *a1, uint64_t a2)
{
  v3 = sub_1DAECEDEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window;
    v14 = *&Strong[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window];
    v15 = &selRef__registerSceneActionsHandlerArray_forKey_;
    if (v14)
    {
      v16 = Strong;
      v17 = [v14 rootViewController];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 view];

        if (!v19)
        {
          __break(1u);
          goto LABEL_19;
        }

        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v49.origin.x = v7;
        v49.origin.y = v8;
        v49.size.width = v9;
        v49.size.height = v10;
        v50.origin.x = v21;
        v50.origin.y = v23;
        v50.size.width = v25;
        v50.size.height = v27;
        if (CGRectEqualToRect(v49, v50))
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v28 = Strong;
    }

    v29 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v12[v29], v3);
    v30 = v12;
    v31 = sub_1DAECEDCC();
    v32 = sub_1DAED203C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v3;
      v35 = v34;
      v48 = v34;
      *v33 = 136446466;
      v47 = v13;
      v36 = *&v30[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v37 = *&v30[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

      v38 = sub_1DAD6482C(v36, v37, &v48);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2082;
      v39 = sub_1DAED224C();
      v41 = sub_1DAD6482C(v39, v40, &v48);
      v15 = &selRef__registerSceneActionsHandlerArray_forKey_;

      *(v33 + 14) = v41;
      v13 = v47;
      _os_log_impl(&dword_1DAD61000, v31, v32, "[%{public}s] Frame did change: %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v35, -1, -1);
      MEMORY[0x1E127F100](v33, -1, -1);

      (*(v4 + 8))(v6, v46);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    v42 = *&v12[v13];
    v43 = v42;

    if (!v42)
    {
      goto LABEL_16;
    }

    v44 = [v43 v15[76]];

    if (!v44)
    {
      goto LABEL_16;
    }

    v16 = [v44 view];

    if (v16)
    {
      [v16 setFrame_];
LABEL_15:

LABEL_16:
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_1DAE901A0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v2)
    {
      v4 = Strong;
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        v7 = [objc_allocWithZone(MEMORY[0x1E699FC58]) init];
        MEMORY[0x1EEE9AC00](v7);
        sub_1DAECE9DC();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1DAE90294(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1DAE8D1DC();
  }
}

void sub_1DAE902E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 _FBSScene];

      v7 = [v6 settings];
      v8 = [v7 displayConfiguration];

      if (v8)
      {
        if ([v8 isCarDisplay])
        {
          v29 = 1;
        }

        else
        {
          v29 = [v8 isCarInstrumentsDisplay];
        }

        v9 = [v8 identity];
        v10 = [v9 isContinuityDisplay];

        v11 = *&v3[OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels];
        v27 = v8;
        v28 = v3;
        if (v11 >> 62)
        {
LABEL_27:
          v12 = sub_1DAED247C();
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v13 = v29;
        if (v12)
        {
          v14 = 0;
          v31 = v11 & 0xFFFFFFFFFFFFFF8;
          v32 = v11 & 0xC000000000000001;
          v30 = v11;
          do
          {
            if (v32)
            {
              v16 = MEMORY[0x1E127E1F0](v14, v11);
              v17 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
LABEL_22:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v14 >= *(v31 + 16))
              {
                __break(1u);
                goto LABEL_27;
              }

              v16 = *(v11 + 8 * v14 + 32);

              v17 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_22;
              }
            }

            v18 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay;
            v19 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay);
            *(v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay) = v13;
            BSDispatchQueueAssertMain();
            if (v19 != *(v16 + v18))
            {
              v20 = v12;
              v21 = v10;

              v22 = sub_1DAECEDCC();
              v23 = sub_1DAED203C();
              if (os_log_type_enabled(v22, v23))
              {
                v24 = swift_slowAlloc();
                v25 = swift_slowAlloc();
                v33 = v25;
                *v24 = 136446466;
                *(v24 + 4) = sub_1DAD6482C(*(v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v33);
                *(v24 + 12) = 1026;
                *(v24 + 14) = *(v16 + v18);

                _os_log_impl(&dword_1DAD61000, v22, v23, "[%{public}s] isCarPlayDisplay changed %{BOOL,public}d)", v24, 0x12u);
                __swift_destroy_boxed_opaque_existential_1Tm(v25);
                MEMORY[0x1E127F100](v25, -1, -1);
                v26 = v24;
                v13 = v29;
                MEMORY[0x1E127F100](v26, -1, -1);
              }

              else
              {
              }

              sub_1DAE69B6C(10);
              v10 = v21;
              v12 = v20;
              v11 = v30;
            }

            v15 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay);
            *(v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) = v10;
            sub_1DAE63360(v15);

            ++v14;
          }

          while (v17 != v12);
        }

        v3 = v28;
      }
    }
  }
}

void sub_1DAE9067C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_1DAED1B8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
      v19 = v29;
      swift_beginAccess();
      sub_1DAD6495C(v19 + v18, v6, &unk_1ECC09E40, &qword_1DAED68E0);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_1DAD64398(v6, &unk_1ECC09E40, &qword_1DAED68E0);
      }

      else
      {
        v26 = *(v8 + 32);
        v26(v13, v6, v7);
        v28 = sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
        (*(v8 + 16))(v10, v13, v7);
        v20 = (*(v8 + 80) + 24) & ~*(v8 + 80);
        v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
        v27 = v8;
        v22 = swift_allocObject();
        *(v22 + 16) = v17;
        v26((v22 + v20), v10, v7);
        *(v22 + v21) = v15;
        *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
        v23 = v17;
        v24 = v15;

        sub_1DAED22FC();

        (*(v27 + 8))(v13, v7);
      }
    }

    else
    {
    }
  }
}

void sub_1DAE909B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E699FC58]) init];
  sub_1DAECE9DC();
}

double sub_1DAE90A48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
    *(swift_allocObject() + 16) = v4;
    v5 = v4;
    sub_1DAED22FC();
  }

  return result;
}

double sub_1DAE90B04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
    *(swift_allocObject() + 16) = v4;
    v5 = v4;
    sub_1DAED22FC();
  }

  return result;
}

void sub_1DAE90BC0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E699FC58]) init];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    sub_1DAECE9DC();
  }

  else
  {
  }
}

void sub_1DAE90C9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      swift_getKeyPath();
      sub_1DAECE9BC();

      if (v7 != 2 && (v7 & 1) != 0)
      {
        v6 = [objc_allocWithZone(MEMORY[0x1E699FC58]) init];
        MEMORY[0x1EEE9AC00](v6);
        sub_1DAECE9DC();

        return;
      }
    }
  }
}

uint64_t sub_1DAE90DBC()
{
  v1 = sub_1DAECEDEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = sub_1DAECEDCC();
  v7 = sub_1DAED200C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DAD61000, v6, v7, "Default implementation, returning an empty root view", v8, 2u);
    MEMORY[0x1E127F100](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return sub_1DAED087C();
}

void sub_1DAE91184()
{

  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector);
}

id sub_1DAE911E4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ActivitySceneDelegate(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for ActivitySceneDelegate(uint64_t a1)
{
  result = qword_1EE006BC0;
  if (!qword_1EE006BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE9133C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = type metadata accessor for BugReporter();
  v20 = &protocol witness table for BugReporter;
  *&v18 = a3;
  v8 = qword_1EE011828;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A510, qword_1DAEDD4F8);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *(a4 + v8) = v9;
  v10 = sub_1DAECEDCC();
  v11 = sub_1DAED203C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_1DAD6482C(0x7974697669746341, 0xED0000656E656353, &v17);
    *(v12 + 12) = 2050;
    *(v12 + 14) = a1;
    _os_log_impl(&dword_1DAD61000, v10, v11, "counter created for %{public}s with maximum %{public}ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E127F100](v13, -1, -1);
    MEMORY[0x1E127F100](v12, -1, -1);
  }

  *(a4 + 16) = a1;
  sub_1DAD657D8(&v18, a4 + 24);
  v14 = qword_1EE011830;
  v15 = sub_1DAECEDEC();
  (*(*(v15 - 8) + 32))(a4 + v14, a2, v15);
  return a4;
}

double sub_1DAE9150C(void *a1)
{
  v2 = v1;
  v4 = sub_1DAECEDEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = [objc_allocWithZone(type metadata accessor for WidgetWindow()) initWithWindowScene_];
  v10 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window);
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window) = v9;
  v11 = v9;

  [v11 setBackgroundColor_];
  sub_1DAE7A700(a1);
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated) == 1)
  {
    v13 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v13, v4);
    v14 = sub_1DAECEDCC();
    v15 = sub_1DAED203C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DAD61000, v14, v15, "Will add FBSSceneObserver.", v16, 2u);
      MEMORY[0x1E127F100](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v17 = [a1 _FBSScene];
    [v17 addObserver_];

    if (qword_1EE006BE0 != -1)
    {
      swift_once();
    }

    sub_1DAE8F440();
  }

  return result;
}

void sub_1DAE917A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - v5;
  v60 = sub_1DAECDBFC();
  v7 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1DAECEDEC();
  v9 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[1] = MEMORY[0x1E69E7CD0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
    sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0, MEMORY[0x1E69E81B8]);
    sub_1DAED1F9C();
    a1 = v65[2];
    v11 = v65[3];
    v12 = v65[4];
    v13 = v65[5];
    v14 = v65[6];
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));

    v13 = 0;
  }

  v54 = v12;
  v18 = (v12 + 64) >> 6;
  v58 = (v9 + 8);
  v59 = (v9 + 16);
  v55 = (v7 + 48);
  v51 = (v7 + 32);
  v49 = (v7 + 16);
  v56 = (v7 + 56);
  v50 = (v7 + 8);
  while (a1 < 0)
  {
    v24 = sub_1DAED24BC();
    if (!v24 || (v64 = v24, sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0), swift_dynamicCast(), v23 = v65[0], v21 = v13, v22 = v14, !v65[0]))
    {
LABEL_40:
      sub_1DAD70B20(a1);
      return;
    }

LABEL_19:
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      sub_1DAE87D18(v65, v23);

      goto LABEL_9;
    }

    v25 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    v26 = v63;
    swift_beginAccess();
    (*v59)(v61, v26 + v25, v62);
    v27 = sub_1DAECEDCC();
    v28 = sub_1DAED203C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DAD61000, v27, v28, "Will handle Double Tap BSAction.", v29, 2u);
      MEMORY[0x1E127F100](v29, -1, -1);
    }

    (*v58)(v61, v62);
    v30 = *(v63 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
    if (v30 >> 62)
    {
      v31 = sub_1DAED247C();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v31)
    {

      goto LABEL_9;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {

      v32 = MEMORY[0x1E127E1F0](0, v30);
    }

    else
    {
      if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v32 = *(v30 + 32);
    }

    if (sub_1DAED181C())
    {
      goto LABEL_31;
    }

    v33 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
    swift_beginAccess();
    sub_1DAD6495C(v32 + v33, v6, &unk_1ECC09EC0, &qword_1DAED7970);
    if ((*v55)(v6, 1, v60) == 1)
    {
      sub_1DAD64398(v6, &unk_1ECC09EC0, &qword_1DAED7970);
LABEL_31:
      v34 = *(v32 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
      if (v34)
      {
        v35 = *(v32 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler + 8);
        LOBYTE(v65[0]) = 0;
        v36 = *v56;
        v53 = a1;
        v37 = v6;
        v38 = v57;
        v36(v57, 1, 1, v60);

        v34(v65, v38);
        sub_1DAE5DF28(v34, v35);

        v39 = v38;
        v6 = v37;
        a1 = v53;
        sub_1DAD64398(v39, &unk_1ECC09EC0, &qword_1DAED7970);
      }

      else
      {
      }

      goto LABEL_9;
    }

    v40 = v52;
    (*v51)(v52, v6, v60);
    v41 = *(v32 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
    if (v41)
    {
      v53 = *(v32 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler + 8);
      LOBYTE(v65[0]) = 1;
      v42 = *v49;
      v48 = v6;
      v43 = v57;
      v44 = v40;
      v45 = v60;
      v42(v57, v44, v60);
      (*v56)(v43, 0, 1, v45);

      v41(v65, v43);
      sub_1DAE5DF28(v41, v53);

      v46 = v43;
      v6 = v48;
      sub_1DAD64398(v46, &unk_1ECC09EC0, &qword_1DAED7970);
      (*v50)(v52, v60);
    }

    else
    {

      (*v50)(v40, v60);
    }

LABEL_9:
    v13 = v21;
    v14 = v22;
  }

  v19 = v13;
  v20 = v14;
  v21 = v13;
  if (v14)
  {
LABEL_15:
    v22 = (v20 - 1) & v20;
    v23 = *(*(a1 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_40;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_40;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}
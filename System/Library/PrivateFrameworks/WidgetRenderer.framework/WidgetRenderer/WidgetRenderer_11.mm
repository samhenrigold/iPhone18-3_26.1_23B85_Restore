uint64_t sub_1DAE91FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1DAE92084(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  sub_1DAE920B4(a1, a2);
  v4 = v3;
  return v3;
}

void sub_1DAE920B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1DAECEDEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels];
  if (v9 >> 62)
  {
    if (!sub_1DAED247C())
    {
      return;
    }
  }

  else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1E127E1F0](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  v10 = v28;
  ObjectType = swift_getObjectType();
  v12 = sub_1DAECE97C();
  if (v12 == 2 || ((v10 ^ v12) & 1) != 0)
  {
    v26 = v10;
    v13 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
    swift_beginAccess();
    (*(v6 + 16))(v8, &v3[v13], v5);
    v14 = v3;
    v15 = sub_1DAECEDCC();
    v16 = sub_1DAED203C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25[1] = ObjectType;
      v18 = v17;
      v19 = swift_slowAlloc();
      v25[2] = a2;
      v20 = v19;
      v27 = v19;
      *v18 = 136446466;
      v21 = &v14[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v25[0] = v6;
      v22 = *&v14[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v23 = *(v21 + 1);

      v24 = sub_1DAD6482C(v22, v23, &v27);

      *(v18 + 4) = v24;
      *(v18 + 12) = 1026;
      *(v18 + 14) = v26;
      _os_log_impl(&dword_1DAD61000, v15, v16, "[%{public}s] Updating base content touched down: %{BOOL,public}d", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E127F100](v20, -1, -1);
      MEMORY[0x1E127F100](v18, -1, -1);

      (*(v25[0] + 8))(v8, v5);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    sub_1DAECE98C();
  }
}

void *sub_1DAE92480(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  sub_1DAE8D838(a1, a2, v3);
  v4 = v3;
  return v3;
}

void sub_1DAE924B4()
{
  sub_1DAED1B8C();

  sub_1DAE909B8();
}

id sub_1DAE92550(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DAE92588(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  v4 = v3;
  return v3;
}

id sub_1DAE92588(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v86 = a7;
  v87 = a6;
  v93 = a4;
  v94 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = &v83 - v10;
  v11 = sub_1DAECEDEC();
  v90 = *(v11 - 8);
  v91 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83 - v14;
  v16 = sub_1DAED187C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v83 - v21;
  sub_1DAED1B6C();
  sub_1DAED186C();
  v23 = *(v17 + 8);
  v23(v22, v16);
  sub_1DAED1B6C();
  sub_1DAED186C();
  v23(v19, v16);
  sub_1DAED1B6C();
  sub_1DAED185C();
  v23(v22, v16);
  v24 = a1;
  v25 = objc_allocWithZone(sub_1DAECE79C());
  v26 = sub_1DAECE78C();
  ObjectType = swift_getObjectType();
  v27 = sub_1DAECE90C();
  if (v27)
  {
    v28 = v27;
    v29 = v26;
    v30 = sub_1DAED228C();

    if (v30)
    {
      v32 = v90;
      v31 = v91;
      goto LABEL_13;
    }
  }

  else
  {
    v33 = v26;
  }

  v34 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  v35 = v93;
  swift_beginAccess();
  v32 = v90;
  v31 = v91;
  v36 = v15;
  (*(v90 + 16))(v15, &v35[v34], v91);
  v37 = v26;
  v38 = v35;
  v39 = sub_1DAECEDCC();
  v40 = sub_1DAED203C();

  v41 = os_log_type_enabled(v39, v40);
  v85 = v38;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v83 = v36;
    v44 = v43;
    v45 = swift_slowAlloc();
    v84 = a2;
    v46 = v45;
    v96 = v45;
    *v42 = 136446466;
    v47 = &v38[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
    v48 = v26;
    v49 = v24;
    v50 = *v47;
    v51 = v47[1];

    v52 = sub_1DAD6482C(v50, v51, &v96);
    v24 = v49;
    v31 = v91;

    *(v42 + 4) = v52;
    v26 = v48;
    *(v42 + 12) = 2114;
    *(v42 + 14) = v37;
    *v44 = v37;
    v53 = v37;
    _os_log_impl(&dword_1DAD61000, v39, v40, "[%{public}s] Updating client resolved metrics: %{public}@", v42, 0x16u);
    sub_1DAD64398(v44, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v44, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    v54 = v46;
    a2 = v84;
    MEMORY[0x1E127F100](v54, -1, -1);
    v55 = v42;
    v32 = v90;
    MEMORY[0x1E127F100](v55, -1, -1);

    (*(v32 + 8))(v83, v31);
  }

  else
  {

    (*(v32 + 8))(v36, v31);
  }

  sub_1DAECE91C();
  v56 = [v94 animationFence];
  if (v56)
  {
    v29 = v56;
    goto LABEL_13;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v58 = result;
    v59 = [result _synchronizedDrawingFence];

    [v94 setAnimationFence_];
    result = [objc_opt_self() settingsWithDuration_];
    if (result)
    {
      v29 = result;
      [v94 setAnimationSettings_];
LABEL_13:

      v60 = v94;
      sub_1DAE8E634(v24, a2, v94);
      sub_1DAE8D838(v24, a2, v60);
      if ((sub_1DAECE95C() & 1) == 0)
      {
        v91 = v26;
        v61 = v88;
        sub_1DAE62330(v88);
        v62 = sub_1DAED1BEC();
        v63 = *(v62 - 8);
        if ((*(v63 + 48))(v61, 1, v62) == 1)
        {
          sub_1DAD64398(v61, &qword_1ECC08D70, &unk_1DAED8710);
LABEL_22:
          v69 = v89;
          v26 = v91;
          goto LABEL_23;
        }

        v64 = sub_1DAED1BBC();
        v65 = v61;
        v66 = v64;
        v68 = v67;
        (*(v63 + 8))(v65, v62);
        swift_getKeyPath();
        sub_1DAECE9BC();

        if (!v97)
        {

          goto LABEL_22;
        }

        swift_getKeyPath();
        sub_1DAECE9BC();

        v26 = v91;
        if (v97)
        {
          v69 = v89;
          if (v96 == v66 && v97 == v68)
          {

LABEL_23:
            v70 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
            v71 = v93;
            swift_beginAccess();
            (*(v32 + 16))(v69, &v71[v70], v31);
            v72 = v71;
            v73 = sub_1DAECEDCC();
            v74 = sub_1DAED203C();

            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v95 = v76;
              *v75 = 136446210;
              v77 = &v72[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
              v78 = *&v72[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
              v79 = *(v77 + 1);

              v80 = sub_1DAD6482C(v78, v79, &v95);

              *(v75 + 4) = v80;
              _os_log_impl(&dword_1DAD61000, v73, v74, "[%{public}s] Notifying client that archive is ready.", v75, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v76);
              v81 = v76;
              v26 = v91;
              MEMORY[0x1E127F100](v81, -1, -1);
              MEMORY[0x1E127F100](v75, -1, -1);

              (*(v32 + 8))(v89, v31);
            }

            else
            {

              (*(v32 + 8))(v69, v31);
            }

            sub_1DAECE96C();
            goto LABEL_27;
          }

          v82 = sub_1DAED289C();

          if (v82)
          {
            goto LABEL_23;
          }
        }

        else
        {
        }
      }

LABEL_27:

      return v94;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAE92EA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DAE8F8FC(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t XPCInterfaceDomain.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t XPCInterfaceDomain.machName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

WidgetRenderer::XPCInterfaceDomain __swiftcall XPCInterfaceDomain.init(domain:machName:)(Swift::String domain, Swift::String machName)
{
  *v2 = domain;
  v2[1] = machName;
  result.machName = machName;
  result.domain = domain;
  return result;
}

void sub_1DAE92F4C()
{
  qword_1ECC0A588 = 0xD00000000000001FLL;
  unk_1ECC0A590 = 0x80000001DAEE2290;
  qword_1ECC0A598 = 0xD00000000000001FLL;
  unk_1ECC0A5A0 = 0x80000001DAEE2290;
}

double static XPCInterfaceDomain.widgetRenderer.getter@<D0>(void *a1@<X8>)
{
  if (qword_1ECC07A58 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1ECC0A590;
  v2 = qword_1ECC0A598;
  v3 = unk_1ECC0A5A0;
  *a1 = qword_1ECC0A588;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

uint64_t ActivityRendererSessionKey.__allocating_init(contentKey:)(uint64_t a1)
{
  v2 = sub_1DAECDD3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  sub_1DAECDD2C();
  v7 = sub_1DAECDCFC();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  *(v6 + 16) = v7;
  *(v6 + 24) = v9;
  v10 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  (*(*(v11 - 8) + 32))(v6 + v10, a1, v11);
  return v6;
}

uint64_t static ActivityRendererSessionKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v2 && (sub_1DAED289C() & 1) == 0)
  {
    return 0;
  }

  sub_1DAED0B1C();
  sub_1DAED0F0C();
  v3 = MEMORY[0x1E6993CE0];
  sub_1DAE951C0(&qword_1EE00AB60, MEMORY[0x1E6993CE0], MEMORY[0x1E6993D00]);
  sub_1DAE951C0(&qword_1EE00AB68, v3, MEMORY[0x1E6993CF0]);
  v4 = MEMORY[0x1E6993E40];
  sub_1DAE951C0(&qword_1EE00AB40, MEMORY[0x1E6993E40], MEMORY[0x1E6993E50]);
  sub_1DAE951C0(&qword_1EE00AB48, v4, MEMORY[0x1E6993E48]);

  return sub_1DAED0E2C();
}

uint64_t ActivityRendererSessionKey.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ActivityRendererSessionKey.contentKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAE933D4()
{
  v0 = sub_1DAED0B1C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  MEMORY[0x1E127CAC0](v4);
  v5 = sub_1DAED0ACC();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1DAE934D4()
{
  v0 = sub_1DAED0B1C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  MEMORY[0x1E127CAC0](v4);
  v5 = sub_1DAED0AEC();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1DAE9364C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DAED0F0C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAED0E0C();
  sub_1DAED0ECC();
  (*(v3 + 8))(v5, v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F70, &qword_1DAEDF4F0);
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

uint64_t sub_1DAE937D0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v10 = a2(v9);
  a3(v10);
  return (*(v6 + 8))(v8, v5);
}

uint64_t ActivityRendererSessionKey.init(contentKey:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECDD3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECDD2C();
  v8 = sub_1DAECDCFC();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  *(v2 + 16) = v8;
  *(v2 + 24) = v10;
  v11 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  (*(*(v12 - 8) + 32))(v2 + v11, a1, v12);
  return v2;
}

uint64_t sub_1DAE93A20(uint64_t a1)
{
  sub_1DAED1D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58, MEMORY[0x1E6993E08]);
  return sub_1DAED1C6C();
}

uint64_t sub_1DAE93AA4()
{
  v1 = sub_1DAED1ABC();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1DAED0F0C();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1DAED17AC();
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED0B1C();
  v34 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 24);
  v45 = *(v0 + 16);
  v46 = v10;

  MEMORY[0x1E127DA50](58, 0xE100000000000000);
  v11 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v12 = v11;
  MEMORY[0x1E127CAC0]();
  v13 = sub_1DAED0AEC();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v15 = [v13 description];
  v16 = sub_1DAED1CEC();
  v18 = v17;

  MEMORY[0x1E127DA50](v16, v18);

  MEMORY[0x1E127DA50](58, 0xE100000000000000);
  v36 = v12;
  MEMORY[0x1E127CAC0](v35);
  v19 = sub_1DAED0ACC();
  v21 = v20;
  v14(v9, v34);
  MEMORY[0x1E127DA50](v19, v21);

  MEMORY[0x1E127DA50](58, 0xE100000000000000);
  sub_1DAED0E0C();
  v22 = v37;
  sub_1DAED0EDC();
  v23 = *(v38 + 8);
  v24 = v40;
  v23(v4, v40);
  sub_1DAE951C0(&qword_1EE00AAF8, MEMORY[0x1E69858D8], MEMORY[0x1E6985908]);
  v25 = v39;
  v26 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v26);

  (*(v41 + 8))(v22, v25);
  MEMORY[0x1E127DA50](58, 0xE100000000000000);
  sub_1DAED0E0C();
  v27 = v42;
  sub_1DAED0EEC();
  v23(v4, v24);
  v28 = v27;
  v29 = sub_1DAED1AAC();
  v31 = v30;
  (*(v43 + 8))(v28, v44);
  MEMORY[0x1E127DA50](v29, v31);

  return v45;
}

uint64_t sub_1DAE93F40()
{
  v1 = sub_1DAED1ABC();
  v2 = *(v1 - 8);
  v64 = v1;
  v65 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v63 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F70, &qword_1DAEDF4F0);
  v5 = *(v4 - 8);
  v61 = v4;
  v62 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v51 - v6;
  v7 = sub_1DAED0F0C();
  v8 = *(v7 - 8);
  v66 = v7;
  v67 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DAED17AC();
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DAECDE5C();
  v14 = *(v13 - 8);
  v55 = v13;
  v56 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DAED0B1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000028, 0x80000001DAEE5680);
  MEMORY[0x1E127DA50](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E127DA50](0xD000000000000015, 0x80000001DAEE56B0);
  v20 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  MEMORY[0x1E127CAC0]();
  v22 = sub_1DAED0ACC();
  v24 = v23;
  v25 = *(v17 + 8);
  v52 = v16;
  v25(v19, v16);
  MEMORY[0x1E127DA50](v22, v24);

  MEMORY[0x1E127DA50](0xD000000000000014, 0x80000001DAEE56D0);
  MEMORY[0x1E127CAC0](v21);
  v26 = sub_1DAED0AEC();
  v25(v19, v16);
  v27 = [v26 description];
  v28 = sub_1DAED1CEC();
  v30 = v29;

  MEMORY[0x1E127DA50](v28, v30);

  MEMORY[0x1E127DA50](0xD000000000000011, 0x80000001DAEE56F0);
  MEMORY[0x1E127CAC0](v21);
  v31 = v54;
  sub_1DAED0AFC();
  v25(v19, v52);
  sub_1DAE951C0(&qword_1EE00BCE8, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BF0]);
  v32 = v55;
  v33 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v33);

  (*(v56 + 8))(v31, v32);
  MEMORY[0x1E127DA50](0x796C696D6166202CLL, 0xE90000000000003DLL);
  v51 = v20;
  v34 = v53;
  sub_1DAED0E0C();
  v35 = v57;
  sub_1DAED0EDC();
  v36 = *(v67 + 8);
  v67 += 8;
  v37 = v34;
  v38 = v34;
  v39 = v66;
  v36(v37, v66);
  sub_1DAE951C0(&qword_1EE00AAF8, MEMORY[0x1E69858D8], MEMORY[0x1E6985908]);
  v40 = v58;
  v41 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v41);

  (*(v59 + 8))(v35, v40);
  MEMORY[0x1E127DA50](0x3D74736F68202CLL, 0xE700000000000000);
  sub_1DAED0E0C();
  v42 = v60;
  sub_1DAED0ECC();
  v36(v38, v39);
  v43 = v61;
  v44 = sub_1DAECE32C();
  v46 = v45;
  (*(v62 + 8))(v42, v43);
  MEMORY[0x1E127DA50](v44, v46);

  MEMORY[0x1E127DA50](0x63697274656D202CLL, 0xEA00000000003D73);
  sub_1DAED0E0C();
  v47 = v63;
  sub_1DAED0EEC();
  v36(v38, v66);
  sub_1DAE951C0(&qword_1EE00AAB8, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AC8]);
  v48 = v64;
  v49 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v49);

  (*(v65 + 8))(v47, v48);
  MEMORY[0x1E127DA50](62, 0xE100000000000000);
  return v68;
}

uint64_t sub_1DAE94714()
{
  if (*v0)
  {
    return 0x4B746E65746E6F63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_1DAE94754(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1DAED289C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4B746E65746E6F63 && a2 == 0xEA00000000007965)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DAED289C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1DAE94834(uint64_t a1)
{
  v2 = sub_1DAE94B7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAE94870(uint64_t a1)
{
  v2 = sub_1DAE94B7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityRendererSessionKey.deinit()
{

  v1 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ActivityRendererSessionKey.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE949D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5A8, &qword_1DAEDDBC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE94B7C();
  sub_1DAED29BC();
  v8[15] = 0;
  sub_1DAED281C();
  if (!v1)
  {
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
    sub_1DAE95128(&qword_1EE0057B8, MEMORY[0x1E6993E00]);
    sub_1DAED284C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DAE94B7C()
{
  result = qword_1EE00BB30[0];
  if (!qword_1EE00BB30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE00BB30);
  }

  return result;
}

uint64_t sub_1DAE94BD0()
{
  sub_1DAED294C();
  sub_1DAED1D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58, MEMORY[0x1E6993E08]);
  sub_1DAED1C6C();
  return sub_1DAED297C();
}

uint64_t ActivityRendererSessionKey.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ActivityRendererSessionKey.init(from:)(a1);
  return v2;
}

void *ActivityRendererSessionKey.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5B0, &qword_1DAEDDBC8);
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE94B7C();
  sub_1DAED29AC();
  if (v1)
  {
    v9 = v17;
    type metadata accessor for ActivityRendererSessionKey(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v6;
    v19 = 0;
    v11 = sub_1DAED27DC();
    v9 = v17;
    *(v17 + 16) = v11;
    *(v9 + 24) = v12;
    v18 = 1;
    sub_1DAE95128(&qword_1EE0057A8, MEMORY[0x1E6993E18]);
    sub_1DAED280C();
    (*(v10 + 8))(v8, v16);
    (*(v15 + 32))(v9 + OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey, v5, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t sub_1DAE94FB0()
{
  sub_1DAED294C();
  sub_1DAED1D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58, MEMORY[0x1E6993E08]);
  sub_1DAED1C6C();
  return sub_1DAED297C();
}

uint64_t sub_1DAE95054(uint64_t a1)
{
  sub_1DAED1D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58, MEMORY[0x1E6993E08]);
  return sub_1DAED1C6C();
}

uint64_t type metadata accessor for ActivityRendererSessionKey(uint64_t a1)
{
  result = qword_1EE00BB08;
  if (!qword_1EE00BB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE95128(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0A9C0, &unk_1DAED8030);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAE951C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAE95208(uint64_t a1)
{
  sub_1DAED294C();
  sub_1DAED1D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58, MEMORY[0x1E6993E08]);
  sub_1DAED1C6C();
  return sub_1DAED297C();
}

void *sub_1DAE952A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ActivityRendererSessionKey(0);
  v5 = swift_allocObject();
  result = ActivityRendererSessionKey.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DAE9534C(uint64_t *a1, uint64_t *a2)
{
  v2 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24);
  if (!v2 && (sub_1DAED289C() & 1) == 0)
  {
    return 0;
  }

  sub_1DAED0B1C();
  sub_1DAED0F0C();
  v3 = MEMORY[0x1E6993CE0];
  sub_1DAE951C0(&qword_1EE00AB60, MEMORY[0x1E6993CE0], MEMORY[0x1E6993D00]);
  sub_1DAE951C0(&qword_1EE00AB68, v3, MEMORY[0x1E6993CF0]);
  v4 = MEMORY[0x1E6993E40];
  sub_1DAE951C0(&qword_1EE00AB40, MEMORY[0x1E6993E40], MEMORY[0x1E6993E50]);
  sub_1DAE951C0(&qword_1EE00AB48, v4, MEMORY[0x1E6993E48]);

  return sub_1DAED0E2C();
}

void sub_1DAE954EC(uint64_t a1)
{
  sub_1DAE9577C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DAE9577C(uint64_t a1)
{
  if (!qword_1EE00AB50)
  {
    sub_1DAED0B1C();
    sub_1DAED0F0C();
    v1 = MEMORY[0x1E6993CE0];
    sub_1DAE951C0(&qword_1EE00AB60, MEMORY[0x1E6993CE0], MEMORY[0x1E6993D00]);
    sub_1DAE951C0(&qword_1EE00AB68, v1, MEMORY[0x1E6993CF0]);
    v2 = MEMORY[0x1E6993E40];
    sub_1DAE951C0(&qword_1EE00AB40, MEMORY[0x1E6993E40], MEMORY[0x1E6993E50]);
    sub_1DAE951C0(&qword_1EE00AB48, v2, MEMORY[0x1E6993E48]);
    v3 = sub_1DAED0E7C();
    if (!v4)
    {
      atomic_store(v3, &qword_1EE00AB50);
    }
  }
}

unint64_t sub_1DAE958E8()
{
  result = qword_1ECC0A5B8;
  if (!qword_1ECC0A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A5B8);
  }

  return result;
}

unint64_t sub_1DAE95940()
{
  result = qword_1EE00BB20;
  if (!qword_1EE00BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BB20);
  }

  return result;
}

unint64_t sub_1DAE95998()
{
  result = qword_1EE00BB28;
  if (!qword_1EE00BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BB28);
  }

  return result;
}

double sub_1DAE959EC(void **a1, uint64_t a2)
{
  v3 = sub_1DAED0DDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = [v7 widget];
    v10 = [v7 metrics];
    sub_1DAED0DAC();
    v11 = sub_1DAD85CEC(v6);
    (*(v4 + 8))(v6, v3, v11);
  }

  return result;
}

double sub_1DAE95B38(void **a1, uint64_t a2)
{
  v3 = sub_1DAED0DDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = [v7 widget];
    v10 = [v7 metrics];
    sub_1DAED0DAC();
    v11 = sub_1DAD85CEC(v6);
    (*(v4 + 8))(v6, v3, v11);
  }

  return result;
}

void sub_1DAE95C84()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[38];
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAD8878C(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    sub_1DAED1F9C();
    v4 = v18;
    v3 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    swift_bridgeObjectRetain_n();
    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_1DAD70B20(v4);

      v1[38] = MEMORY[0x1E69E7CD0];

      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);

      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 10);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 15);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 20);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 25);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 30);

      return;
    }

    while (1)
    {
      sub_1DAECEE2C();

      v6 = v14;
      v7 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1DAED24BC())
      {
        sub_1DAECEE3C();
        swift_dynamicCast();
        v14 = v6;
        v15 = v7;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1DAE95F24()
{
  sub_1DAE95C84();

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE95F58@<X0>(uint64_t a3@<X8>)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DAED0DEC();
  v4 = sub_1DAECDBFC();
  (*(*(v4 - 8) + 56))(a3, 0, 1, v4);

  return swift_unknownObjectRelease();
}

void (*sub_1DAE960BC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E127E1F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1DAD8DE40;
  }

  __break(1u);
  return result;
}

uint64_t DisplayGamut.description.getter()
{
  v1 = v0;
  v2 = sub_1DAECF0FC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697DE20])
  {
    return 1111970419;
  }

  if (v7 == *MEMORY[0x1E697DE28])
  {
    return 0x5079616C70736964;
  }

  (*(v3 + 8))(v6, v2);
  return 0x6E776F6E6B6E55;
}

uint64_t sub_1DAE962D0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = (*(v2 + 88))(v5, a1);
  if (v6 == *MEMORY[0x1E697DE20])
  {
    return 1111970419;
  }

  if (v6 == *MEMORY[0x1E697DE28])
  {
    return 0x5079616C70736964;
  }

  (*(v2 + 8))(v5, a1);
  return 0x6E776F6E6B6E55;
}

uint64_t WidgetEntrySourceType.hashValue.getter()
{
  v1 = *v0;
  sub_1DAED294C();
  MEMORY[0x1E127E5D0](v1);
  return sub_1DAED297C();
}

WidgetRenderer::LiveWidgetViewChangeReason_optional __swiftcall LiveWidgetViewChangeReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DAED28BC();

  v5 = 0;
  v6 = 11;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
      goto LABEL_24;
    case 10:
      v5 = 10;
LABEL_24:
      v6 = v5;
      break;
    case 11:
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    default:
      v6 = 29;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DAE9664C()
{
  v0 = LiveWidgetViewChangeReason.rawValue.getter();
  v2 = v1;
  if (v0 == LiveWidgetViewChangeReason.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DAED289C();
  }

  return v5 & 1;
}

uint64_t sub_1DAE966E8()
{
  sub_1DAED294C();
  LiveWidgetViewChangeReason.rawValue.getter();
  sub_1DAED1D9C();

  return sub_1DAED297C();
}

double sub_1DAE96750(uint64_t a1)
{
  LiveWidgetViewChangeReason.rawValue.getter();
  sub_1DAED1D9C();

  return result;
}

uint64_t sub_1DAE967B4(uint64_t a1)
{
  sub_1DAED294C();
  LiveWidgetViewChangeReason.rawValue.getter();
  sub_1DAED1D9C();

  return sub_1DAED297C();
}

unint64_t sub_1DAE96824@<X0>(unint64_t *a1@<X8>)
{
  result = LiveWidgetViewChangeReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void (*sub_1DAE96874(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE96918(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

void (*sub_1DAE96AC4(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__allowsInternalTapTargets;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

void (*sub_1DAE96C5C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE96D00(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

void (*sub_1DAE96EAC(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isInteractionDisabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

void (*sub_1DAE97044(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAE970E8;
}

uint64_t sub_1DAE970EC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

void (*sub_1DAE97298(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__clipToShape;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

void (*sub_1DAE97458(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE974FC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

void (*sub_1DAE976A8(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__baseContentTouchedDown;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

void (*sub_1DAE97840(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE978E4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

void (*sub_1DAE97A90(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isFocal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

uint64_t sub_1DAE97C3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1DAEA8574;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
  }

  sub_1DADCA8EC(v2, v3);

  return sub_1DAECEF4C();
}

uint64_t (*sub_1DAE97D48())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1DAEA31EC;
}

uint64_t sub_1DAE97E00(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  return sub_1DAECEF4C();
}

void (*sub_1DAE97EB4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x50uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 48) = swift_getKeyPath();
  v3[7] = swift_getKeyPath();
  v3[8] = sub_1DAECEF2C();
  v3[9] = v4;
  v5 = *v4;
  v6 = v4[1];
  if (*v4)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1DAEA8574;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v3[4] = v8;
  v3[5] = v7;
  sub_1DADCA8EC(v5, v6);
  return sub_1DAE97FAC;
}

void sub_1DAE97FAC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  if (a2)
  {
    v4 = v2[5];
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = sub_1DAEA8598;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v11 = v2[8];
    v10 = v2[9];
    v12 = *v10;
    v13 = v10[1];
    *v10 = v6;
    v10[1] = v5;
    sub_1DADCA8EC(v3, v4);
    sub_1DAD660D8(v12, v13);
    sub_1DAD660D8(v2[4], v2[5]);
    v11(v2, 0);
  }

  else
  {
    if (v3)
    {
      v7 = v2[5];
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      *(v8 + 24) = v7;
      v9 = sub_1DAEA8598;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v15 = v2[8];
    v14 = v2[9];
    v17 = *v14;
    v16 = v14[1];
    *v14 = v9;
    v14[1] = v8;
    sub_1DAD660D8(v17, v16);
    v15(v2, 0);
  }

  free(v2);
}

uint64_t sub_1DAE9810C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5F0, &qword_1DAEDE108);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D58, &qword_1DAEDE100);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1DAE982AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5F0, &qword_1DAEDE108);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D58, &qword_1DAEDE100);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1DAE983E4(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5F0, &qword_1DAEDE108);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__launchRequestHandler;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D58, &qword_1DAEDE100);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

uint64_t sub_1DAE98594(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1DAEA8570;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
  }

  sub_1DADCA8EC(v2, v3);

  return sub_1DAECEF4C();
}

uint64_t (*sub_1DAE986A0())(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1DAEA323C;
}

uint64_t sub_1DAE98758(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A630, &unk_1DAEDE7C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D50, &unk_1DAED5800);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

void (*sub_1DAE98948(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE989EC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

void (*sub_1DAE98B98(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isPendingInteractionUpdate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

double sub_1DAE98D1C@<D0>(_OWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_1DAE98D98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DAE98DC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1DAEA8580;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
  }

  sub_1DADCA8EC(v2, v3);
  sub_1DADCA8EC(v5, v4);

  v7 = sub_1DAECEF4C();
  sub_1DAE98EF4(v7);
  return sub_1DAD660D8(v5, v4);
}

void sub_1DAE98EF4(uint64_t a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();

  oslog = sub_1DAECEDCC();
  v3 = sub_1DAED200C();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v7);
    _os_log_impl(&dword_1DAD61000, oslog, v3, "[%{public}s] backgroundViewBuilder changed", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E127F100](v5, -1, -1);
    MEMORY[0x1E127F100](v4, -1, -1);
  }
}

uint64_t (*sub_1DAE99010())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1DAEA3274;
}

uint64_t sub_1DAE990C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = sub_1DAEA32AC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13[0] = v7;
  v13[1] = v6;
  sub_1DADCA8EC(a1, a2);

  sub_1DAECEF4C();
  BSDispatchQueueAssertMain();

  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED200C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1DAD6482C(*(v3 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v3 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v13);
    _os_log_impl(&dword_1DAD61000, v8, v9, "[%{public}s] backgroundViewBuilder changed", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E127F100](v11, -1, -1);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  return sub_1DAD660D8(a1, a2);
}

void (*sub_1DAE9927C(uint64_t (***a1)()))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  v6 = v5[2];
  if (v6)
  {
    v7 = v5[3];
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1DAEA8580;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *v5 = v9;
  v5[1] = v8;
  return sub_1DAE99380;
}

void sub_1DAE99380(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  if (a2)
  {
    if (v5)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = v4;
      v7 = sub_1DAEA857C;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v3[2] = v7;
    v3[3] = v6;
    sub_1DADCA8EC(v5, v4);

    sub_1DADCA8EC(v5, v4);
    sub_1DAECEF4C();
    BSDispatchQueueAssertMain();

    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED200C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v3[4];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1DAD6482C(*(v12 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v12 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v22);
      _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] backgroundViewBuilder changed", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E127F100](v14, -1, -1);
      MEMORY[0x1E127F100](v13, -1, -1);
    }

    sub_1DAD660D8(v5, v4);
    v15 = *v3;
    v16 = v3[1];
  }

  else
  {
    if (v5)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      *(v8 + 24) = v4;
      v9 = sub_1DAEA857C;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v3[2] = v9;
    v3[3] = v8;
    sub_1DADCA8EC(v5, v4);

    sub_1DAECEF4C();
    BSDispatchQueueAssertMain();

    v17 = sub_1DAECEDCC();
    v18 = sub_1DAED200C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v3[4];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1DAD6482C(*(v19 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v19 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v22);
      _os_log_impl(&dword_1DAD61000, v17, v18, "[%{public}s] backgroundViewBuilder changed", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E127F100](v21, -1, -1);
      MEMORY[0x1E127F100](v20, -1, -1);
    }

    v15 = v5;
    v16 = v4;
  }

  sub_1DAD660D8(v15, v16);

  free(v3);
}

uint64_t sub_1DAE996BC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5F8, &qword_1DAEDE1F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D48, &qword_1DAEDE1F0);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1DAE9985C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5F8, &qword_1DAEDE1F8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D48, &qword_1DAEDE1F0);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1DAE99994(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5F8, &qword_1DAEDE1F8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__backgroundViewBuilder;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D48, &qword_1DAEDE1F0);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAE99B04;
}

uint64_t sub_1DAE99B08()
{
  sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 24))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

void sub_1DAE99B88(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t sub_1DAE99C10(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAE99C94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

uint64_t sub_1DAE99D0C(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

void (*sub_1DAE99D90(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE99E34(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A600, &unk_1DAEDE250);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1DAE99FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A600, &unk_1DAEDE250);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1DAE9A10C(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A600, &unk_1DAEDE250);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__renderingScale;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

uint64_t sub_1DAE9A29C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  sub_1DAD6495C(a1, &v14 - v5, &unk_1ECC07D30, &unk_1DAED57E0);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD901C4(v6, v7 + v8, &unk_1ECC07D30, &unk_1DAED57E0);
  swift_endAccess();
  sub_1DAD64398(v6, &unk_1ECC07D30, &unk_1DAED57E0);
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  result = swift_beginAccess();
  v11 = *(v7 + v9);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v7 + v9) = v13;
  }

  return result;
}

uint64_t sub_1DAE9A3D8()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAE9A41C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DAE9A4CC@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v33 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v31 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v17, v16, &unk_1ECC07D30, &unk_1DAED57E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1DAD64398(v16, &unk_1ECC07D30, &unk_1DAED57E0);
      v23 = sub_1DAED165C();
      return (*(*(v23 - 8) + 56))(v35, 1, 1, v23);
    }

    v19 = v32;
    sub_1DADB62CC(v16, v32, type metadata accessor for DefaultWidgetLiveViewEntry);
    sub_1DADB6264(v19, v5, type metadata accessor for DefaultWidgetLiveViewEntry);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v34;
      sub_1DADB62CC(v5, v34, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      sub_1DAED194C();
      sub_1DADB6334(v20, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      return sub_1DADB6334(v19, type metadata accessor for DefaultWidgetLiveViewEntry);
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v25 = *(v24 + 64);
    v26 = v34;
    sub_1DADB62CC(&v5[*(v24 + 48)], v34, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAED194C();
    sub_1DADB6334(v26, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DADB6334(v19, type metadata accessor for DefaultWidgetLiveViewEntry);
    v27 = &v5[v25];
  }

  else
  {
    sub_1DADB62CC(v16, v13, type metadata accessor for DefaultWidgetLiveViewEntry);
    sub_1DADB6264(v13, v10, type metadata accessor for DefaultWidgetLiveViewEntry);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v34;
      sub_1DADB62CC(v10, v34, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      sub_1DAED194C();
      sub_1DADB6334(v22, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      return sub_1DADB6334(v13, type metadata accessor for DefaultWidgetLiveViewEntry);
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v29 = *(v28 + 64);
    v30 = v34;
    sub_1DADB62CC(&v10[*(v28 + 48)], v34, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAED194C();
    sub_1DADB6334(v30, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DADB6334(v13, type metadata accessor for DefaultWidgetLiveViewEntry);
    v27 = &v10[v29];
  }

  return sub_1DAD64398(v27, &qword_1ECC088D8, &qword_1DAED72D0);
}

uint64_t sub_1DAE9AA00()
{
  v1 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v7, v6, &unk_1ECC07D30, &unk_1DAED57E0);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1DAD64398(v6, &unk_1ECC07D30, &unk_1DAED57E0);
    v8 = 0;
  }

  else
  {
    sub_1DADB62CC(v6, v3, type metadata accessor for DefaultWidgetLiveViewEntry);
    v8 = DefaultWidgetLiveViewEntry.containsInteractiveControls.getter();
    sub_1DADB6334(v3, type metadata accessor for DefaultWidgetLiveViewEntry);
  }

  return v8 & 1;
}

uint64_t sub_1DAE9ABA0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v3;
}

uint64_t sub_1DAE9AC20(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

void (*sub_1DAE9AC8C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAEA858C;
}

uint64_t sub_1DAE9AD30(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_1DAECEF0C();
  return swift_endAccess();
}

uint64_t sub_1DAE9ADAC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1DAE9AF4C(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1DAECEF0C();
  return swift_endAccess();
}

uint64_t sub_1DAE9AFD0(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*sub_1DAE9B108(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__animationsPaused;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAEA8590;
}

uint64_t sub_1DAE9B2A8(uint64_t (*a1)(void))
{
  v3 = sub_1DAED0DDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = (*(v8 + 16))(v7, v8);
  sub_1DAED0C3C();

  v10 = a1();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v10;
}

uint64_t sub_1DAE9B3E8()
{
  sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 16))(v1, v2);
  sub_1DAED0B9C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_1DAE9B48C()
{
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 16))(v2, v3);
  sub_1DAED0C5C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_1DAE9B530(uint64_t (*a1)(void))
{
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v8);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v5 = (*(v4 + 16))(v3, v4);
  v6 = a1();

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t sub_1DAE9B5DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF88]);
  return sub_1DAECEF6C();
}

double sub_1DAE9B670(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v6)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF80]);
    sub_1DAECEEEC();
  }

  return result;
}

uint64_t sub_1DAE9B740()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_1DAE9B784(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF80]);
    sub_1DAECEEEC();
  }

  return result;
}

void (*sub_1DAE9B854(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9B8E8;
}

void sub_1DAE9B8E8(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF80]);
    sub_1DAECEEEC();
  }

  free(v1);
}

uint64_t sub_1DAE9B9B8(uint64_t a1)
{
  v2 = v1;
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v6 = (*(v5 + 16))(v4, v5);
  sub_1DAD6495C(a1, &v8, &unk_1ECC08880, &unk_1DAED6F50);
  sub_1DAED0C6C();

  result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_contentFromXcodePreviews) = 1;
  return result;
}

id sub_1DAE9BA7C()
{
  result = [objc_opt_self() chs_isWatchFacesWidgetRendererProcess];
  byte_1EE009F18 = result;
  return result;
}

BOOL sub_1DAE9BAB0(uint64_t a1)
{
  v2 = v1;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v4 = sub_1DAECE05C();

  if (v4)
  {
    return 1;
  }

  if (CHSWidgetFamilyIsAccessory())
  {
    if (qword_1EE009F10 != -1)
    {
      swift_once();
    }

    if (byte_1EE009F18 == 1)
    {
      return ((a1 - 9) & 0xFFFFFFFFFFFFFFFDLL) != 0;
    }
  }

  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v16);
  v6 = v17;
  v7 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = sub_1DAED0B8C();

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  if (v9)
  {
    v10 = v9;
    if ([v10 preferredBackgroundStyle] == 2)
    {

      return 1;
    }

    else
    {
      v15 = [v10 supportsVibrantContent];

      return v15;
    }
  }

  else
  {

    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED201C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v16);
      _os_log_impl(&dword_1DAD61000, v11, v12, "[%{public}s] defaulting requiresCARendering to false due to nil descriptor.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E127F100](v14, -1, -1);
      MEMORY[0x1E127F100](v13, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1DAE9BD08()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAE9BD4C(int a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 == 2)
  {
    if (a1 == 2)
    {
      return;
    }

LABEL_6:
    v5 = 26;
    sub_1DAD8EC1C(&v5);
    return;
  }

  if (a1 == 2 || ((v4 ^ a1) & 1) != 0)
  {
    goto LABEL_6;
  }
}

void (*sub_1DAE9BDDC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9BE70;
}

void sub_1DAE9BE70(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if ((a2 & 1) == 0)
  {
    if (v6 == 2)
    {
      if (v3 == 2)
      {
        goto LABEL_15;
      }
    }

    else if (v3 != 2 && ((v6 ^ v3) & 1) == 0)
    {
      goto LABEL_15;
    }

    v9 = 26;
    v7 = &v9;
    goto LABEL_14;
  }

  if (v6 == 2)
  {
    if (v3 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (v3 == 2 || ((v6 ^ v3) & 1) != 0)
  {
LABEL_10:
    v8 = 26;
    v7 = &v8;
LABEL_14:
    sub_1DAD8EC1C(v7);
  }

LABEL_15:

  free(v2);
}

uint64_t sub_1DAE9BF30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
  swift_beginAccess();
  v5 = sub_1DAECF0AC();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1DAE9BFBC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1DAECF0AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1DAE9C0D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
  swift_beginAccess();
  v4 = sub_1DAECF0AC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1DAE9C178@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1DAD6495C(v4 + v8, a4, a2, a3);
}

void (*sub_1DAE9C214(uint64_t *a1))(char **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v9, v8, &qword_1ECC08370, &unk_1DAED6580);
  return sub_1DAE9C344;
}

uint64_t sub_1DAE9C36C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAE9C3B0(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  if (v4 != *(v1 + v3))
  {
    if (v4)
    {
      v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
      swift_beginAccess();
      v6 = *(v1 + v5);
    }

    else
    {
      v6 = 0;
    }

    sub_1DAE9C79C(v6);
  }
}

void (*sub_1DAE9C444(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_1DAE9C4D8;
}

void sub_1DAE9C4D8(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 88);
  BSDispatchQueueAssertMain();
  if ((a2 & 1) == 0)
  {
    if (((v6 ^ *(v5 + v4)) & 1) == 0)
    {
      goto LABEL_10;
    }

    if (v6)
    {
      goto LABEL_7;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (((v6 ^ *(v5 + v4)) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_7:
  v7 = v3[9];
  v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  v9 = *(v7 + v8);
LABEL_9:
  sub_1DAE9C79C(v9);
LABEL_10:

  free(v3);
}

uint64_t sub_1DAE9C58C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAE9C5D0(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  if (v4 != *(v1 + v3))
  {
    v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
    swift_beginAccess();
    sub_1DAE9C79C(*(v1 + v5) & v4 & 1);
  }
}

void (*sub_1DAE9C660(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_1DAE9C6F4;
}

void sub_1DAE9C6F4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 88);
  BSDispatchQueueAssertMain();
  if (v5 != *(v4 + v3))
  {
    v6 = v2[9];
    v7 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
    swift_beginAccess();
    sub_1DAE9C79C(*(v6 + v7) & v5 & 1);
  }

  free(v2);
}

void sub_1DAE9C79C(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
  swift_beginAccess();
  if (*(v2 + v4) == 1)
  {
    v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (v6 == (a1 & 1))
    {
      return;
    }
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    LOBYTE(v6) = 0;
  }

  v7 = sub_1DAECEDCC();
  v8 = sub_1DAED200C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v13);
    *(v9 + 12) = 1026;
    v12 = 0;
    if (*(v2 + v4) == 1)
    {
      v11 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
      swift_beginAccess();
      if (*(v2 + v11))
      {
        v12 = 1;
      }
    }

    *(v9 + 14) = v12;

    _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] content paused changed %{BOOL,public}d)", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E127F100](v10, -1, -1);
    MEMORY[0x1E127F100](v9, -1, -1);

    if ((v6 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if ((v6 & 1) == 0)
    {
LABEL_14:
      LOBYTE(v13) = 7;
      sub_1DAD8EC1C(&v13);
    }
  }
}

uint64_t sub_1DAE9C98C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
  swift_beginAccess();
  if (*(v0 + v1) != 1)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_1DAE9CA00()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9CA64(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9CAF8;
}

void sub_1DAE9CB10(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DAECE21C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v7 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v8(v6, v1 + v7, v3);
  sub_1DAD900EC(&qword_1EE00BCD8, MEMORY[0x1E6994050], MEMORY[0x1E6994058]);
  v9 = sub_1DAED1CAC();
  (*(v4 + 8))(v6, v3);
  if ((v9 & 1) == 0)
  {

    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED200C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v17);
      *(v12 + 12) = 2082;
      v8(v6, v2 + v7, v3);
      v14 = sub_1DAED1D4C();
      v16 = sub_1DAD6482C(v14, v15, &v17);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] keybagLockPolicy changed %{public}s)", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    LOBYTE(v17) = 9;
    sub_1DAD8EC1C(&v17);
  }
}

void sub_1DAE9CDC4(uint64_t a1)
{
  v2 = a1 & 1;
  BSDispatchQueueAssertMain();
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {

    v4 = sub_1DAECEDCC();
    v5 = sub_1DAED200C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446466;
      *(v6 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v11);
      *(v6 + 12) = 2082;
      if (*(v1 + v3))
      {
        v8 = 1702195828;
      }

      else
      {
        v8 = 0x65736C6166;
      }

      if (*(v1 + v3))
      {
        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      v10 = sub_1DAD6482C(v8, v9, &v11);

      *(v6 + 14) = v10;
      _os_log_impl(&dword_1DAD61000, v4, v5, "[%{public}s] isCarPlayDisplay changed %{public}s)", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v7, -1, -1);
      MEMORY[0x1E127F100](v6, -1, -1);
    }

    LOBYTE(v11) = 24;
    sub_1DAD8EC1C(&v11);
  }
}

uint64_t sub_1DAE9CF80()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9CFE4(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9D078;
}

uint64_t sub_1DAE9D090(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1DAECE21C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23[-v8];
  BSDispatchQueueAssertMain();
  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay;
  result = swift_beginAccess();
  if (*(v1 + v10) != v2)
  {

    v12 = sub_1DAECEDCC();
    v13 = sub_1DAED200C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = v13;
      v15 = v14;
      v25 = swift_slowAlloc();
      v26[0] = v25;
      *v15 = 136446466;
      *(v15 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v26);
      *(v15 + 12) = 2082;
      if (*(v1 + v10))
      {
        v16 = 1702195828;
      }

      else
      {
        v16 = 0x65736C6166;
      }

      if (*(v1 + v10))
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE500000000000000;
      }

      v18 = sub_1DAD6482C(v16, v17, v26);

      *(v15 + 14) = v18;
      _os_log_impl(&dword_1DAD61000, v12, v24, "[%{public}s] isContinuityDisplay changed %{public}s)", v15, 0x16u);
      v19 = v25;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v19, -1, -1);
      MEMORY[0x1E127F100](v15, -1, -1);
    }

    if (*(v1 + v10))
    {
      v20 = MEMORY[0x1E6994048];
    }

    else
    {
      v20 = MEMORY[0x1E6994040];
    }

    (*(v4 + 104))(v9, *v20, v3);
    v21 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
    swift_beginAccess();
    (*(v4 + 16))(v6, v1 + v21, v3);
    swift_beginAccess();
    (*(v4 + 24))(v1 + v21, v9, v3);
    swift_endAccess();
    sub_1DAE9CB10(v6);
    v22 = *(v4 + 8);
    v22(v6, v3);
    return (v22)(v9, v3);
  }

  return result;
}

uint64_t sub_1DAE9D3D0()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9D434(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9D4C8;
}

uint64_t sub_1DAE9D4E0()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9D544(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9D5D8;
}

void sub_1DAE9D5F0(uint64_t a1)
{
  v2 = a1 & 1;
  BSDispatchQueueAssertMain();
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {

    v4 = sub_1DAECEDCC();
    v5 = sub_1DAED203C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136446466;
      *(v6 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v9);
      *(v6 + 12) = 1026;
      *(v6 + 14) = *(v1 + v3);

      _os_log_impl(&dword_1DAD61000, v4, v5, "[%{public}s] in AoD changed (%{BOOL,public}d)", v6, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E127F100](v7, -1, -1);
      MEMORY[0x1E127F100](v6, -1, -1);
    }

    else
    {
    }

    if (*(v1 + v3) == 1)
    {
      v8 = 16;
    }

    else
    {
      v8 = 17;
    }

    LOBYTE(v9) = v8;
    sub_1DAD8EC1C(&v9);
  }
}

uint64_t sub_1DAE9D784()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9D7E8(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9D87C;
}

uint64_t sub_1DAE9D894()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9D8F8(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9D98C;
}

uint64_t sub_1DAE9D9A4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAE9DA08(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void (*sub_1DAE9DA64(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9DAF8;
}

void sub_1DAE9DB10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v4);
  *(v5 + v4) = v6;
  a3(v7, a2);

  free(v3);
}

void sub_1DAE9DB5C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = BSDispatchQueueAssertMain();
  if (v5 != *(v3 + v4))
  {
    sub_1DAEA1F7C(v6);
  }
}

uint64_t sub_1DAE9DBC8()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAE9DC0C(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = BSDispatchQueueAssertMain();
  if (v4 != *(v1 + v3))
  {
    sub_1DAEA1F7C(v5);
  }
}

void (*sub_1DAE9DC74(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9DD08;
}

void sub_1DAE9DD08(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(v3 + v2);
  *(v3 + v2) = *(*a1 + 40);
  v5 = BSDispatchQueueAssertMain();
  if (v4 != *(v3 + v2))
  {
    sub_1DAEA1F7C(v5);
  }

  free(v1);
}

uint64_t sub_1DAE9DDE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, void (*a8)(_BYTE *))
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23[-v18];
  sub_1DAD6495C(a1, &v23[-v18], a5, a6);
  v20 = *a2;
  v21 = *a7;
  swift_beginAccess();
  sub_1DAD6495C(v20 + v21, v16, a5, a6);
  swift_beginAccess();
  sub_1DAD901C4(v19, v20 + v21, a5, a6);
  swift_endAccess();
  a8(v16);
  sub_1DAD64398(v16, a5, a6);
  return sub_1DAD64398(v19, a5, a6);
}

void sub_1DAE9DF48(uint64_t a1)
{
  v3 = sub_1DAECDCEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v44[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B0, qword_1DAEDCBF0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44[-v15];
  BSDispatchQueueAssertMain();
  v17 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  swift_beginAccess();
  v18 = *(v14 + 56);
  sub_1DAD6495C(a1, v16, &qword_1ECC07CE8, &qword_1DAED6F60);
  v19 = v1;
  v48 = v17;
  v20 = v1 + v17;
  v21 = v3;
  sub_1DAD6495C(v20, &v16[v18], &qword_1ECC07CE8, &qword_1DAED6F60);
  v50 = v4;
  v22 = *(v4 + 48);
  if (v22(v16, 1, v3) == 1)
  {
    if (v22(&v16[v18], 1, v3) == 1)
    {
      sub_1DAD64398(v16, &qword_1ECC07CE8, &qword_1DAED6F60);
      return;
    }
  }

  else
  {
    sub_1DAD6495C(v16, v12, &qword_1ECC07CE8, &qword_1DAED6F60);
    if (v22(&v16[v18], 1, v3) != 1)
    {
      v31 = v50;
      v32 = v46;
      (*(v50 + 32))(v46, &v16[v18], v21);
      sub_1DAD900EC(&qword_1EE00BCF8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v45 = sub_1DAED1CAC();
      v33 = *(v31 + 8);
      v33(v32, v21);
      v33(v12, v21);
      sub_1DAD64398(v16, &qword_1ECC07CE8, &qword_1DAED6F60);
      v23 = v19;
      if (v45)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v50 + 8))(v12, v3);
  }

  sub_1DAD64398(v16, &qword_1ECC087B0, qword_1DAEDCBF0);
  v23 = v1;
LABEL_7:

  v24 = sub_1DAECEDCC();
  v25 = sub_1DAED203C();
  if (!os_log_type_enabled(v24, v25))
  {

LABEL_18:

    LOBYTE(v51) = 13;
    sub_1DAD8EC1C(&v51);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF80]);
    sub_1DAECEEEC();

    return;
  }

  v26 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v51 = v46;
  *v26 = 136446466;
  *(v26 + 4) = sub_1DAD6482C(*(v23 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v23 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v51);
  *(v26 + 12) = 2082;
  v27 = v48;
  v28 = v49;
  sub_1DAD6495C(v23 + v48, v49, &qword_1ECC07CE8, &qword_1DAED6F60);
  if (v22(v28, 1, v21) == 1)
  {

    sub_1DAD64398(v28, &qword_1ECC07CE8, &qword_1DAED6F60);
    v29 = 0xE300000000000000;
    v30 = 7104878;
LABEL_17:
    v42 = sub_1DAD6482C(v30, v29, &v51);

    *(v26 + 14) = v42;
    _os_log_impl(&dword_1DAD61000, v24, v25, "[%{public}s] Override date changed (%{public}s)", v26, 0x16u);
    v43 = v46;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v43, -1, -1);
    MEMORY[0x1E127F100](v26, -1, -1);
    goto LABEL_18;
  }

  v45 = v25;
  sub_1DAD64398(v28, &qword_1ECC07CE8, &qword_1DAED6F60);
  v34 = v47;
  sub_1DAD6495C(v23 + v27, v47, &qword_1ECC07CE8, &qword_1DAED6F60);
  v35 = v22(v34, 1, v21);

  if (v35 != 1)
  {
    LOBYTE(v25) = v45;
    if (qword_1EE00A700 != -1)
    {
      swift_once();
    }

    v36 = qword_1EE00A708;
    v37 = v47;
    v38 = sub_1DAECDC5C();
    v39 = [v36 stringFromDate_];

    v40 = sub_1DAED1CEC();
    v29 = v41;

    (*(v50 + 8))(v37, v21);
    v30 = v40;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1DAE9E678(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(_BYTE *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v16[-v12];
  v14 = *a4;
  swift_beginAccess();
  sub_1DAD6495C(v5 + v14, v13, a2, a3);
  swift_beginAccess();
  sub_1DAD901C4(a1, v5 + v14, a2, a3);
  swift_endAccess();
  a5(v13);
  sub_1DAD64398(a1, a2, a3);
  return sub_1DAD64398(v13, a2, a3);
}

void (*sub_1DAE9E794(uint64_t *a1))(char **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v9, v8, &qword_1ECC07CE8, &qword_1DAED6F60);
  return sub_1DAE9E8C4;
}

void sub_1DAE9E8EC(char **a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void *))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = *(*a1 + 13);
  v11 = *(*a1 + 10);
  v12 = *(*a1 + 11);
  v13 = *(*a1 + 9);
  if (a2)
  {
    sub_1DAD6495C(*(*a1 + 12), v12, a3, a4);
    sub_1DAD6495C(v13 + v10, v11, a3, a4);
    swift_beginAccess();
    sub_1DAD901C4(v12, v13 + v10, a3, a4);
    swift_endAccess();
    a5(v11);
    sub_1DAD64398(v11, a3, a4);
  }

  else
  {
    sub_1DAD6495C(v13 + v10, v12, a3, a4);
    swift_beginAccess();
    sub_1DAD901C4(v9, v13 + v10, a3, a4);
    swift_endAccess();
    a5(v12);
  }

  sub_1DAD64398(v12, a3, a4);
  sub_1DAD64398(v9, a3, a4);
  free(v9);
  free(v12);
  free(v11);

  free(v8);
}

void sub_1DAE9EA5C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_1DAD9A058(v5);
}

id sub_1DAE9EAC4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1DAE9EB18(void *a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1DAD9A058(v4);
}

void (*sub_1DAE9EB84(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1DAE9EC20;
}

void sub_1DAE9EC20(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_1DAD9A058(v8);

    v10 = *v5;
  }

  else
  {
    sub_1DAD9A058(v8);
  }

  free(v3);
}

double sub_1DAE9ECBC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return result;
}

double sub_1DAE9ED2C(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

double sub_1DAE9ED7C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

void (*sub_1DAE9EE7C(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v9, v8, &qword_1ECC08360, &unk_1DAED6570);
  return sub_1DAE9EFAC;
}

void *sub_1DAE9EFD4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1DAE9F040(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1DAE9F0DC;
}

uint64_t sub_1DAE9F0F4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersPlaceholderContent;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9F150(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersPlaceholderContent;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9F1E4;
}

void *sub_1DAE9F1FC()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1DAE9F268(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1DAE9F304;
}

uint64_t sub_1DAE9F31C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_showsWidgetLabel;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAE9F378(char a1, uint64_t *a2, const char *a3, char a4)
{
  v9 = *a2;
  swift_beginAccess();
  v10 = *(v4 + v9);
  *(v4 + v9) = a1;
  sub_1DAD95924(v10, a2, a3, a4);
}

void (*sub_1DAE9F3EC(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_showsWidgetLabel;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9F480;
}

void sub_1DAE9F498(uint64_t a1, uint64_t a2, uint64_t *a3, const char *a4, char a5)
{
  v5 = *a1;
  v7 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v9 = *(v7 + v6);
  *(v7 + v6) = v8;
  sub_1DAD95924(v9, a3, a4, a5);

  free(v5);
}

void sub_1DAE9F4EC(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(void *))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  v11 = v7;
  a6(v10);
}

void *sub_1DAE9F560()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DAE9F5CC(void *a1, uint64_t *a2, void (*a3)(void *))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;
  a3(v7);
}

void (*sub_1DAE9F644(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1DAE9F6E0;
}

void sub_1DAE9F6F8(uint64_t a1, char a2, void (*a3)(void *))
{
  v5 = *a1;
  v7 = (*a1 + 24);
  v6 = *v7;
  v9 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v10 = *(v9 + v8);
  *(v9 + v8) = *v7;
  v11 = v6;
  v12 = v11;
  if (a2)
  {
    v13 = v11;
    a3(v10);

    v10 = *v7;
  }

  else
  {
    a3(v10);
  }

  free(v5);
}

void (*sub_1DAE9F7F4(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08368, &unk_1DAEDE2B0) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v9, v8, &qword_1ECC08368, &unk_1DAEDE2B0);
  return sub_1DAE9F924;
}

uint64_t sub_1DAE9F94C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAE9F990(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DAE9FA40@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v9, v8, &unk_1ECC07D30, &unk_1DAED57E0);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_1DAD64398(v8, &unk_1ECC07D30, &unk_1DAED57E0);
    v11 = sub_1DAECDBFC();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    sub_1DADB62CC(v8, v5, type metadata accessor for DefaultWidgetLiveViewEntry);
    DefaultWidgetLiveViewEntry.widgetURL.getter(a1);
    return sub_1DADB6334(v5, type metadata accessor for DefaultWidgetLiveViewEntry);
  }
}

uint64_t DefaultWidgetLiveViewEntry.widgetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DADB6264(v2, v18, type metadata accessor for DefaultWidgetLiveViewEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DADB62CC(v18, v12, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAED194C();
    v19 = sub_1DAED165C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v6, 1, v19) == 1)
    {
      sub_1DADB6334(v12, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      sub_1DAD64398(v6, &qword_1ECC088D0, &qword_1DAEDE260);
      v21 = sub_1DAECDBFC();
      return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
    }

    else
    {
      sub_1DAED164C();
      sub_1DADB6334(v12, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      return (*(v20 + 8))(v6, v19);
    }
  }

  else
  {

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    sub_1DADB62CC(&v18[*(v23 + 48)], v15, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAED194C();
    v24 = sub_1DAED165C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v9, 1, v24) == 1)
    {
      sub_1DADB6334(v15, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      sub_1DAD64398(v9, &qword_1ECC088D0, &qword_1DAEDE260);
      v26 = sub_1DAECDBFC();
      (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
    }

    else
    {
      sub_1DAED164C();
      sub_1DADB6334(v15, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      (*(v25 + 8))(v9, v24);
    }

    return sub_1DAD64398(&v18[*(v23 + 64)], &qword_1ECC088D8, &qword_1DAED72D0);
  }
}

void sub_1DAEA007C(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  if (v4 != *(v1 + v3))
  {
    v5 = 28;
    sub_1DAD8EC1C(&v5);
  }
}

void (*sub_1DAEA00F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAEA0184;
}

void sub_1DAEA0184(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 40);
  BSDispatchQueueAssertMain();
  if (a2)
  {
    if (((v6 ^ *(v5 + v4)) & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = 28;
    v7 = &v8;
  }

  else
  {
    if (((v6 ^ *(v5 + v4)) & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = 28;
    v7 = &v9;
  }

  sub_1DAD8EC1C(v7);
LABEL_7:

  free(v3);
}

uint64_t sub_1DAEA0258(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = a6(a1, v18, a3, a4, a5, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v20;
}

double sub_1DAEA0380(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = 10;
    sub_1DAD8EC1C(&v3);
  }

  return result;
}

void LiveWidgetEntryViewModel.deinit()
{
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__invalidated) == 1)
  {
    v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__allowsInternalTapTargets;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
    v3 = *(*(v2 - 8) + 8);
    v3(v0 + v1, v2);
    v3(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isInteractionDisabled, v2);
    v3(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__clipToShape, v2);
    v3(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__baseContentTouchedDown, v2);
    v3(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isFocal, v2);
    v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__launchRequestHandler;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D58, &qword_1DAEDE100);
    (*(*(v5 - 8) + 8))(v0 + v4, v5);
    v6 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__interactionHandler;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D50, &unk_1DAED5800);
    (*(*(v7 - 8) + 8))(v0 + v6, v7);
    v3(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isPendingInteractionUpdate, v2);
    v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__backgroundViewBuilder;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D48, &qword_1DAEDE1F0);
    (*(*(v9 - 8) + 8))(v0 + v8, v9);
    v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__renderingScale;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
    (*(*(v11 - 8) + 8))(v0 + v10, v11);

    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry, &unk_1ECC07D30, &unk_1DAED57E0);
    v3(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__animationsPaused, v2);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider));
    v12 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
    v13 = sub_1DAECF8EC();
    (*(*(v13 - 8) + 8))(v0 + v12, v13);

    v14 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
    v15 = sub_1DAECF0AC();
    (*(*(v15 - 8) + 8))(v0 + v14, v15);
    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme, &qword_1ECC08370, &unk_1DAED6580);
    v16 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
    v17 = sub_1DAECE21C();
    (*(*(v17 - 8) + 8))(v0 + v16, v17);

    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate, &qword_1ECC07CE8, &qword_1DAED6F60);

    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents, &qword_1ECC08360, &unk_1DAED6570);

    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity, &qword_1ECC08368, &unk_1DAEDE2B0);
    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_currentActionURL, &unk_1ECC09EC0, &qword_1DAED7970);

    v18 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
    v19 = sub_1DAECEDEC();
    (*(*(v19 - 8) + 8))(v0 + v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource));
    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__placeholderSource, &unk_1ECC07D90, &unk_1DAED5840);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityPolicy));

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__dataProtectionMonitor));
  }

  else
  {
    __break(1u);
  }
}

uint64_t LiveWidgetEntryViewModel.__deallocating_deinit()
{
  LiveWidgetEntryViewModel.deinit();

  return swift_deallocClassInstance();
}

void sub_1DAEA0A10()
{
  v1 = v0;
  v2 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = sub_1DAECDBFC();
  v52 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v49 - v19;
  v20 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v20, v7, &unk_1ECC07D30, &unk_1DAED57E0);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_1DAD64398(v7, &unk_1ECC07D30, &unk_1DAED57E0);
    v21 = v52;
    (*(v52 + 56))(v15, 1, 1, v16);
  }

  else
  {
    sub_1DADB62CC(v7, v4, type metadata accessor for DefaultWidgetLiveViewEntry);
    DefaultWidgetLiveViewEntry.widgetURL.getter(v15);
    sub_1DADB6334(v4, type metadata accessor for DefaultWidgetLiveViewEntry);
    v21 = v52;
  }

  v22 = *(v21 + 48);
  if (v22(v15, 1, v16) == 1)
  {
    sub_1DAD64398(v15, &unk_1ECC09EC0, &qword_1DAED7970);
    v23 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_currentActionURL;
    swift_beginAccess();
    sub_1DAD6495C(v1 + v23, v10, &unk_1ECC09EC0, &qword_1DAED7970);
    if (v22(v10, 1, v16) == 1)
    {
      sub_1DAD64398(v10, &unk_1ECC09EC0, &qword_1DAED7970);

      v24 = sub_1DAECEDCC();
      v25 = sub_1DAED203C();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v53 = v27;
        *v26 = 136446210;
        *(v26 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v53);
        _os_log_impl(&dword_1DAD61000, v24, v25, "[%{public}s] Launching with no widgetURL", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        v28 = v27;
        v21 = v52;
        MEMORY[0x1E127F100](v28, -1, -1);
        MEMORY[0x1E127F100](v26, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1DAECEF3C();

      v29 = v53;
      if (v53)
      {
        v30 = v54;
        LOBYTE(v53) = 0;
        v31 = v51;
        (*(v21 + 56))(v51, 1, 1, v16);
        v29(&v53, v31);
        sub_1DAD660D8(v29, v30);
        sub_1DAD64398(v31, &unk_1ECC09EC0, &qword_1DAED7970);
      }
    }

    else
    {
      v40 = v49;
      (*(v21 + 32))(v49, v10, v16);

      v41 = sub_1DAECEDCC();
      v42 = sub_1DAED203C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v53 = v44;
        *v43 = 136446210;
        *(v43 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v53);
        _os_log_impl(&dword_1DAD61000, v41, v42, "[%{public}s] Launching from legacy widgetURL", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        v45 = v44;
        v21 = v52;
        MEMORY[0x1E127F100](v45, -1, -1);
        MEMORY[0x1E127F100](v43, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1DAECEF3C();

      v46 = v53;
      if (v53)
      {
        v47 = v54;
        LOBYTE(v53) = 1;
        v48 = v51;
        (*(v21 + 16))(v51, v40, v16);
        (*(v21 + 56))(v48, 0, 1, v16);
        v46(&v53, v48);
        sub_1DAD660D8(v46, v47);
        sub_1DAD64398(v48, &unk_1ECC09EC0, &qword_1DAED7970);
      }

      (*(v21 + 8))(v40, v16);
    }
  }

  else
  {
    v32 = v50;
    (*(v21 + 32))(v50, v15, v16);

    v33 = sub_1DAECEDCC();
    v34 = sub_1DAED203C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v55[0] = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v55);
      _os_log_impl(&dword_1DAD61000, v33, v34, "[%{public}s] Launching from widgetURL", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1E127F100](v36, -1, -1);
      MEMORY[0x1E127F100](v35, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    v37 = v55[0];
    if (v55[0])
    {
      v38 = v55[1];
      LOBYTE(v55[0]) = 1;
      v39 = v51;
      (*(v21 + 16))(v51, v32, v16);
      (*(v21 + 56))(v39, 0, 1, v16);
      v37(v55, v39);
      sub_1DAD660D8(v37, v38);
      sub_1DAD64398(v39, &unk_1ECC09EC0, &qword_1DAED7970);
    }

    (*(v21 + 8))(v32, v16);
  }
}

void sub_1DAEA1304()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__invalidated) = 1;
  v2 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription))
  {

    sub_1DAECEE2C();
  }

  *(v0 + v2) = 0;

  *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource) = 0;

  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable))
  {

    sub_1DAECEE2C();
  }

  *(v0 + v3) = 0;

  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__cancellable;
  swift_beginAccess();
  v24 = v4;
  v5 = *(v1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAD900EC(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    sub_1DAED1F9C();
    v7 = v26;
    v6 = v27;
    v8 = v28;
    v9 = v29;
    v10 = v30;
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v5 + 56);
    swift_bridgeObjectRetain_n();
    v9 = 0;
    v7 = v5;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_16:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_22:
      sub_1DAD70B20(v7);

      *(v1 + v24) = MEMORY[0x1E69E7CD0];

      swift_getKeyPath();
      swift_getKeyPath();

      sub_1DAECEF4C();
      swift_getKeyPath();
      swift_getKeyPath();
      v25[0] = 0;
      v25[1] = 0;

      sub_1DAECEF4C();
      BSDispatchQueueAssertMain();

      v20 = sub_1DAECEDCC();
      v21 = sub_1DAED200C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25[0] = v23;
        *v22 = 136446210;
        *(v22 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v25);
        _os_log_impl(&dword_1DAD61000, v20, v21, "[%{public}s] backgroundViewBuilder changed", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x1E127F100](v23, -1, -1);
        MEMORY[0x1E127F100](v22, -1, -1);
      }

      return;
    }

    while (1)
    {
      sub_1DAECEE2C();

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1DAED24BC())
      {
        sub_1DAECEE3C();
        swift_dynamicCast();
        v17 = v9;
        v18 = v10;
        if (v25[0])
        {
          continue;
        }
      }

      goto LABEL_22;
    }
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
      goto LABEL_22;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1DAEA1740(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = a1;
    v5[4] = a2;
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1DADE631C;
    *(v6 + 24) = v5;
    sub_1DADCA8EC(a1, a2);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
  }

  return sub_1DAECEF4C();
}

double sub_1DAEA1888(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v13 + v14, v10, &unk_1ECC07D30, &unk_1DAED57E0);
    sub_1DAD7C48C(v10, v7, &unk_1ECC07D30, &unk_1DAED57E0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1DAD64398(v7, &unk_1ECC07D30, &unk_1DAED57E0);
    if (EnumCaseMultiPayload != 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1DAECEF3C();

      if ((v17 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v17 = 1;

        sub_1DAECEF4C();
      }

      a3(a1);
    }
  }

  return result;
}

double sub_1DAEA1A98(void (*a1)(uint64_t))
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch;
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch) = 1;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__batchedChangeReasons;
  swift_beginAccess();
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + v5) = MEMORY[0x1E69E7CC0];

  a1(v7);
  *(v1 + v4) = 0;
  if (*(*(v1 + v5) + 16))
  {

    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v18);
      *(v11 + 12) = 2082;

      v14 = MEMORY[0x1E127DB00](v13, &type metadata for LiveWidgetViewChangeReason);
      v16 = v15;

      v17 = sub_1DAD6482C(v14, v16, &v18);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Ending batch update with reasons: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    LOBYTE(v18) = 21;
    sub_1DAD8EC1C(&v18);
    *(v2 + v5) = v6;
  }

  return result;
}

void sub_1DAEA1C9C(uint64_t a1)
{
  sub_1DAD648F8(a1, v3);
  v2 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityPolicy;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v2));
  sub_1DAD657D8(v3, v1 + v2);
  swift_endAccess();
  LOBYTE(v3[0]) = 27;
  sub_1DAD8EC1C(v3);
}

uint64_t sub_1DAEA1D10(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;

  v7 = sub_1DAECEDCC();
  v8 = sub_1DAED203C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v16);
    _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] Launching from system URL", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E127F100](v10, -1, -1);
    MEMORY[0x1E127F100](v9, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  v11 = v16[0];
  if (v16[0])
  {
    v12 = v16[1];
    LOBYTE(v16[0]) = 2;
    v13 = sub_1DAECDBFC();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v6, a1, v13);
    (*(v14 + 56))(v6, 0, 1, v13);
    v11(v16, v6);
    sub_1DAD660D8(v11, v12);
    sub_1DAD64398(v6, &unk_1ECC09EC0, &qword_1DAED7970);
  }

  return 1;
}

void sub_1DAEA1F7C(uint64_t a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  v22 = &type metadata for FeatureFlags.Widgets;
  v23 = sub_1DAD7C1DC();
  LOBYTE(v21[0]) = 16;
  v3 = sub_1DAECDF5C();
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v21);
  v5 = v22;
  v6 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = sub_1DAED0B8C();

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (v8)
  {
    v9 = [v8 isBackgroundRemovable];

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  sub_1DAD648F8(v2 + v4, v21);
  v11 = v22;
  v12 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v13 = (*(v12 + 16))(v11, v12);
  v14 = sub_1DAED0B8C();

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (v14)
  {
    v15 = [v14 spatialSurface];

    LOBYTE(v14) = v15 == 1;
    if (v10 & 1 | ((v3 & 1) == 0))
    {
      v16 = 0;
      goto LABEL_11;
    }

LABEL_8:
    v17 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers;
    swift_beginAccess();
    if (*(v2 + v17) == 1)
    {
      v16 = v14 ^ 1;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_11;
  }

  v16 = 0;
  if (!(v10 & 1 | ((v3 & 1) == 0)))
  {
    goto LABEL_8;
  }

LABEL_11:
  v18 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation;
  swift_beginAccess();
  v19 = *(v2 + v18);
  *(v2 + v18) = v16;
  BSDispatchQueueAssertMain();
  if (v19 != *(v2 + v18))
  {
    v20 = 28;
    sub_1DAD8EC1C(&v20);
  }
}

void sub_1DAEA2184(uint64_t a1)
{
  v2[4] = sub_1DAEA8568;
  v2[5] = a1;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DAD751C0;
  v2[3] = &block_descriptor_18;
  v1 = _Block_copy(v2);

  BSRunLoopPerformAfterCACommit();
  _Block_release(v1);
}

uint64_t sub_1DAEA223C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(a1 + v8, v7, &unk_1ECC07D30, &unk_1DAED57E0);
  sub_1DAD7C48C(v7, v4, &unk_1ECC07D30, &unk_1DAED57E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1DAD64398(v4, &unk_1ECC07D30, &unk_1DAED57E0);
  if (EnumCaseMultiPayload != 2)
  {
    *(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasEverBeenNonEmpty) = 1;
  }

  return result;
}

uint64_t DefaultWidgetLiveViewEntry.containsPrivacyRedactions.getter()
{
  v1 = v0;
  v2 = sub_1DAED19AC();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D8, &qword_1DAED72D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v24 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DADB6264(v1, v26, type metadata accessor for DefaultWidgetLiveViewEntry);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v31 = *(v30 + 64);
    sub_1DADB62CC(&v26[*(v30 + 48)], v23, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAD7C48C(&v26[v31], v16, &qword_1ECC088D8, &qword_1DAED72D0);
    sub_1DAD6495C(v16, v13, &qword_1ECC088D8, &qword_1DAED72D0);
    if ((*(v18 + 48))(v13, 1, v17) == 1)
    {
      v32 = &qword_1ECC088D8;
      v33 = &qword_1DAED72D0;
      v34 = v13;
    }

    else
    {
      v37 = v51;
      v36 = v52;
      v38 = v49;
      (*(v51 + 16))(v49, &v13[*(v17 + 20)], v52);
      sub_1DADB6334(v13, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      v39 = v50;
      sub_1DAED194C();
      (*(v37 + 8))(v38, v36);
      v40 = sub_1DAED165C();
      v41 = *(v40 - 8);
      v42 = *(v41 + 48);
      if (v42(v39, 1, v40) != 1)
      {
        v44 = sub_1DAED162C();
        v45 = *(v41 + 8);
        v45(v39, v40);
        if (v44)
        {
          v46 = v48;
          sub_1DAED194C();
          if (v42(v46, 1, v40) != 1)
          {
            v35 = sub_1DAED162C();
            sub_1DAD64398(v16, &qword_1ECC088D8, &qword_1DAED72D0);
            sub_1DADB6334(v23, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
            v45(v46, v40);
            return v35 & 1;
          }

          sub_1DAD64398(v16, &qword_1ECC088D8, &qword_1DAED72D0);
          sub_1DADB6334(v23, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
          v29 = v46;
          goto LABEL_4;
        }

LABEL_11:
        sub_1DAD64398(v16, &qword_1ECC088D8, &qword_1DAED72D0);
        sub_1DADB6334(v23, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
        goto LABEL_12;
      }

      v32 = &qword_1ECC088D0;
      v33 = &qword_1DAEDE260;
      v34 = v39;
    }

    sub_1DAD64398(v34, v32, v33);
    goto LABEL_11;
  }

  sub_1DADB62CC(v26, v20, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
  sub_1DAED194C();
  v27 = sub_1DAED165C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v6, 1, v27) == 1)
  {
    sub_1DADB6334(v20, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v29 = v6;
LABEL_4:
    sub_1DAD64398(v29, &qword_1ECC088D0, &qword_1DAEDE260);
LABEL_12:
    v35 = 0;
    return v35 & 1;
  }

  v35 = sub_1DAED162C();
  sub_1DADB6334(v20, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
  (*(v28 + 8))(v6, v27);
  return v35 & 1;
}

uint64_t DefaultWidgetLiveViewEntry.entryData.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DADB6264(v1, v7, type metadata accessor for DefaultWidgetLiveViewEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DADB62CC(v7, v4, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v8 = sub_1DAED198C();
    sub_1DADB6334(v4, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
  }

  else
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v10 = *(v9 + 64);
    sub_1DADB62CC(&v7[*(v9 + 48)], v4, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v8 = sub_1DAED198C();
    sub_1DADB6334(v4, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAD64398(&v7[v10], &qword_1ECC088D8, &qword_1DAED72D0);
  }

  return v8;
}

uint64_t sub_1DAEA2C28(uint64_t a1)
{
  v2 = sub_1DAED15DC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1DAECF72C();
}

uint64_t ViewableTimelineEntry.containsPrivacyRedactions.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  sub_1DAED194C();
  v3 = sub_1DAED165C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1DAD64398(v2, &qword_1ECC088D0, &qword_1DAEDE260);
    v5 = 0;
  }

  else
  {
    v5 = sub_1DAED162C();
    (*(v4 + 8))(v2, v3);
  }

  return v5 & 1;
}

uint64_t sub_1DAEA2E10@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DAED197C();
  *a2 = result;
  return result;
}

uint64_t sub_1DAEA2E3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  sub_1DAED194C();
  v3 = sub_1DAED165C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1DAD64398(v2, &qword_1ECC088D0, &qword_1DAEDE260);
    v5 = 0;
  }

  else
  {
    v5 = sub_1DAED162C();
    (*(v4 + 8))(v2, v3);
  }

  return v5 & 1;
}

uint64_t EnvironmentWrappedViewableTimelineEntry.environmentValues.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DAECF8EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EnvironmentWrappedViewableTimelineEntry.viewableTimelineEntry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0) + 20);
  v4 = sub_1DAED19AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAEA3040@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DAEA3070(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t (**a8)(void, __n128))
{
  v14 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  (*(v14 + 32))(&v24 - v19, v18);
  type metadata accessor for LiveWidgetEntryViewModel(0);
  v21 = swift_allocObject();
  (*(v14 + 16))(v16, v20, a7);
  v22 = sub_1DAEA32DC(a1, v16, a3, a4, a5, v21, a7, a8);
  (*(v14 + 8))(v20, a7);
  return v22;
}

uint64_t sub_1DAEA323C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1DAEA32AC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1DAEA32DC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t (**a8)(void, __n128))
{
  v294 = a5;
  v295 = a4;
  v296 = a3;
  v301 = a1;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CF8, &qword_1DAED57A8);
  v276 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277);
  v275 = &v247 - v12;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D00, &unk_1DAED57B0);
  v279 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v278 = &v247 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D08, &qword_1DAEDCB80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v293 = &v247 - v15;
  v292 = sub_1DAED22EC();
  v300 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v291 = &v247 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D10, &qword_1DAED57C0);
  v270 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v269 = &v247 - v17;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D18, &qword_1DAED57C8);
  v273 = *(v274 - 8);
  MEMORY[0x1EEE9AC00](v274);
  v272 = &v247 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v285 = &v247 - v20;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v299 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287);
  v286 = &v247 - v21;
  v283 = sub_1DAECDCEC();
  v282 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v249 = &v247 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v281);
  v259 = (&v247 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v262 = &v247 - v25;
  v261 = sub_1DAED0DDC();
  v297 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261);
  v260 = &v247 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_1DAECF8EC();
  v289 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v288 = &v247 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
  v265 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v258 = &v247 - v28;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D48, &qword_1DAEDE1F0);
  v255 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v254 = &v247 - v29;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D50, &unk_1DAED5800);
  v252 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v251 = &v247 - v30;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D58, &qword_1DAEDE100);
  v31 = *(v250 - 1);
  MEMORY[0x1EEE9AC00](v250);
  v33 = &v247 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v298 = *(v34 - 8);
  v35 = v298;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v247 - v36;
  v309[3] = a7;
  v309[4] = a8;
  v268 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v309);
  v39 = *(*(a7 - 8) + 32);
  v264 = boxed_opaque_existential_1;
  v267 = a7;
  v39(boxed_opaque_existential_1, a2, a7);
  v40 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__allowsInternalTapTargets;
  LOBYTE(v306) = 0;
  sub_1DAECEEFC();
  v41 = *(v35 + 32);
  v263 = v40;
  v41(a6 + v40, v37, v34);
  v42 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isInteractionDisabled;
  LOBYTE(v306) = 0;
  sub_1DAECEEFC();
  v41(a6 + v42, v37, v34);
  v43 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__clipToShape;
  v257 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__clipToShape;
  LOBYTE(v306) = 0;
  sub_1DAECEEFC();
  v41(a6 + v43, v37, v34);
  v44 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__baseContentTouchedDown;
  LOBYTE(v306) = 0;
  sub_1DAECEEFC();
  v41(a6 + v44, v37, v34);
  v45 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isFocal;
  LOBYTE(v306) = 0;
  sub_1DAECEEFC();
  v41(a6 + v45, v37, v34);
  v46 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__launchRequestHandler;
  v306 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D68, &unk_1DAEDE610);
  sub_1DAECEEFC();
  (*(v31 + 32))(a6 + v46, v33, v250);
  v47 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__interactionHandler;
  v306 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D70, &unk_1DAED5820);
  v48 = v251;
  sub_1DAECEEFC();
  (*(v252 + 32))(a6 + v47, v48, v253);
  v49 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isPendingInteractionUpdate;
  LOBYTE(v306) = 0;
  sub_1DAECEEFC();
  v284 = v34;
  v41(a6 + v49, v37, v34);
  v50 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__backgroundViewBuilder;
  v306 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D78, &unk_1DAEDE620);
  v51 = v254;
  sub_1DAECEEFC();
  (*(v255 + 32))(a6 + v50, v51, v256);
  v52 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__renderingScale;
  *&v306 = 0;
  BYTE8(v306) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D80, &unk_1DAED5830);
  v53 = v258;
  sub_1DAECEEFC();
  (*(v265 + 32))(a6 + v52, v53, v266);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber) = 0;
  v54 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__animationsPaused;
  LOBYTE(v306) = 0;
  sub_1DAECEEFC();
  v41(a6 + v54, v37, v34);
  v55 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__contentTransparencyDidChangePublisher;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  swift_allocObject();
  *(a6 + v55) = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_contentFromXcodePreviews) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent) = 2;
  v56 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
  v57 = *MEMORY[0x1E697DBB8];
  v58 = sub_1DAECF0AC();
  v59 = *(v58 - 8);
  (*(v59 + 104))(a6 + v56, v57, v58);
  (*(v59 + 56))(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme, 1, 1, v58);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused) = 1;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment) = 0;
  v60 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
  v61 = *MEMORY[0x1E6994040];
  v62 = sub_1DAECE21C();
  (*(*(v62 - 8) + 104))(a6 + v60, v61, v62);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay) = 0;
  v255 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers) = 1;
  (*(v282 + 56))(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate, 1, 1, v283);
  v63 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  v254 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  v252 = sub_1DAECDA5C();
  v64 = *(v252 - 8);
  v251 = *(v64 + 56);
  v253 = v64 + 56;
  (v251)(a6 + v63, 1, 1, v252);
  v65 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersPlaceholderContent) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_showsWidgetLabel) = 0;
  v256 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties) = 0;
  v66 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  v67 = sub_1DAED16FC();
  (*(*(v67 - 8) + 56))(a6 + v66, 1, 1, v67);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation) = 0;
  v68 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_currentActionURL;
  v69 = sub_1DAECDBFC();
  (*(*(v69 - 8) + 56))(a6 + v68, 1, 1, v69);
  v248 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canConsumeLaunchRequest;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canConsumeLaunchRequest) = 1;
  v70 = a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__placeholderSource;
  *v70 = 0u;
  *(v70 + 16) = 0u;
  *(v70 + 32) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasEverBeenNonEmpty) = 0;
  v71 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__invalidated) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasLoadedViewOnce) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__needsViewRebuild) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__cancellable) = MEMORY[0x1E69E7CD0];
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__batchedChangeReasons) = MEMORY[0x1E69E7CC0];
  *(a6 + v71) = 1;
  v72 = (a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource);
  v73 = v301;
  sub_1DAD648F8(v301, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource);
  sub_1DAD648F8(v309, &v306);
  swift_beginAccess();
  sub_1DAD94438(&v306, v70, &unk_1ECC07D90, &unk_1DAED5840);
  swift_endAccess();
  v74 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
  v75 = sub_1DAECEDEC();
  v265 = *(v75 - 8);
  v76 = *(v265 + 16);
  v266 = v75;
  v76(a6 + v74, v296);
  sub_1DAD648F8(v295, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider);
  sub_1DAD648F8(v294, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__dataProtectionMonitor);
  type metadata accessor for LiveWidgetEntryViewableEntryCache(0);
  swift_allocObject();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewableEntryCache) = sub_1DAD99324();
  v77 = v73;
  v78 = v73[3];
  v79 = v77[4];
  v80 = v77;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v81 = (*(v79 + 16))(v78, v79);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v306, v307);
  v82 = v288;
  sub_1DAED10EC();
  (*(v289 + 32))(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues, v82, v290);
  __swift_destroy_boxed_opaque_existential_1Tm(&v306);
  v83 = v80[3];
  v84 = v80[4];
  __swift_project_boxed_opaque_existential_1(v80, v83);
  v85 = (*(v84 + 16))(v83, v84);
  v86 = v260;
  sub_1DAED0C3C();

  v87 = sub_1DAED0DBC();
  v88 = *(v297 + 8);
  v297 += 8;
  v89 = v261;
  v88(v86, v261);
  v90 = [v87 _loggingIdentifierWithoutMetrics];

  v91 = sub_1DAED1CEC();
  v93 = v92;

  v94 = (a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
  *v94 = v91;
  v94[1] = v93;
  v95 = v257;
  swift_beginAccess();
  v96 = *(v298 + 8);
  v298 += 8;
  v250 = v96;
  v96(a6 + v95, v284);
  v305[0] = 0;
  sub_1DAECEEFC();
  swift_endAccess();
  v97 = v255;
  swift_beginAccess();
  *(a6 + v97) = 0;
  swift_beginAccess();
  v98 = *(a6 + v65);
  *(a6 + v65) = 0;

  v99 = v262;
  (v251)(v262, 1, 1, v252);
  v100 = v254;
  swift_beginAccess();
  sub_1DAD94438(v99, a6 + v100, &qword_1ECC08360, &unk_1DAED6570);
  swift_endAccess();
  v101 = type metadata accessor for DefaultWidgetViewSecurityPolicy();
  v102 = swift_allocObject();
  v103 = (a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityPolicy);
  v103[3] = v101;
  v103[4] = &protocol witness table for DefaultWidgetViewSecurityPolicy;
  *v103 = v102;
  v104 = [objc_allocWithZone(MEMORY[0x1E6994420]) initWithRenderingMode_];
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme) = v104;
  swift_beginAccess();
  v105 = sub_1DAECF79C();
  swift_endAccess();
  v106 = v256;
  swift_beginAccess();
  v107 = *(a6 + v106);
  *(a6 + v106) = v105;

  v108 = v72[3];
  v109 = v72[4];
  v110 = __swift_project_boxed_opaque_existential_1(v72, v108);
  v111 = *(v108 - 8);
  v112 = MEMORY[0x1EEE9AC00](v110);
  v114 = &v247 - v113;
  (*(v111 + 16))(&v247 - v113, v112);
  v115 = (*(v109 + 16))(v108, v109);
  (*(v111 + 8))(v114, v108);
  sub_1DAED0C3C();

  v116 = sub_1DAED0DBC();
  v88(v86, v89);
  v117 = [v116 family];

  v118 = v72[3];
  v119 = v72[4];
  v120 = __swift_project_boxed_opaque_existential_1(v72, v118);
  v121 = *(v118 - 8);
  v122 = MEMORY[0x1EEE9AC00](v120);
  v124 = &v247 - v123;
  (*(v121 + 16))(&v247 - v123, v122);
  v125 = (*(v119 + 16))(v118, v119);
  (*(v121 + 8))(v124, v118);
  v126 = sub_1DAED0B8C();

  [v126 enablesMultipleTapTargets];
  v307 = &type metadata for FeatureFlags.Widgets;
  v308 = sub_1DAD7C1DC();
  LOBYTE(v306) = 4;
  LOBYTE(v126) = sub_1DAECDF5C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v306);
  if (v126)
  {
    v127 = v263;
    swift_beginAccess();
    v250(a6 + v127, v284);
    LOBYTE(v304) = 1;
  }

  else
  {
    v128 = (v117 != 1) & ~CHSWidgetFamilyIsAccessory();
    v129 = v263;
    swift_beginAccess();
    v250(a6 + v129, v284);
    LOBYTE(v304) = v128;
  }

  sub_1DAECEEFC();
  swift_endAccess();
  v130 = v72[3];
  v131 = v72[4];
  v132 = __swift_project_boxed_opaque_existential_1(v72, v130);
  v133 = *(v130 - 8);
  v134 = MEMORY[0x1EEE9AC00](v132);
  v136 = &v247 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v133 + 16))(v136, v134);
  v137 = (*(v131 + 16))(v130, v131);
  (*(v133 + 8))(v136, v130);
  v138 = sub_1DAED0B8C();

  if (v138)
  {
    v139 = [v138 supportsInteraction];

    if ((v139 & 1) == 0)
    {
      *(a6 + v248) = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DA0, &unk_1DAEDE7D0);
  swift_allocObject();
  v140 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewEntryWillChangePublisher) = v140;
  *&v306 = v140;
  v141 = MEMORY[0x1E695BF88];
  sub_1DAD64B94(&qword_1EE005C08, &unk_1ECC07DA0, &unk_1DAEDE7D0, MEMORY[0x1E695BF88]);
  v263 = v140;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryWillChangePublisher) = sub_1DAECEF6C();
  swift_allocObject();
  v142 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewEntryDidChangePublisher) = v142;
  *&v306 = v142;
  v262 = v142;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher) = sub_1DAECEF6C();
  swift_allocObject();
  v143 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__overrideDateDidChangePublisher) = v143;
  *&v306 = v143;
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0, v141);
  v261 = v143;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDateDidChangePublisher) = sub_1DAECEF6C();
  swift_allocObject();
  v144 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__idealizedDateComponentsDidChangePublisher) = v144;
  *&v306 = v144;
  v260 = v144;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponentsDidChangePublisher) = sub_1DAECEF6C();
  *&v306 = sub_1DAED064C();
  v145 = sub_1DAED087C();
  v146 = v259;
  *v259 = v145;
  swift_storeEnumTagMultiPayload();
  sub_1DAD7C48C(v146, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry, &unk_1ECC07D30, &unk_1DAED57E0);
  type metadata accessor for _LiveWidgetEntryViewModelSecurityDataSource();
  v147 = swift_allocObject();
  *(v147 + 16) = a6;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource) = v147;

  sub_1DAD94D08();
  sub_1DAEA1F7C(v148);
  sub_1DAD94FD8();

  v149 = sub_1DAECEDCC();
  v150 = sub_1DAED200C();

  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v304 = v152;
    *v151 = 136446466;
    v153 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
    v154 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

    v155 = sub_1DAD6482C(v153, v154, &v304);

    *(v151 + 4) = v155;
    *(v151 + 12) = 2082;
    v156 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource + 24);
    v157 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource + 32);
    v158 = __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource), v156);
    v159 = *(v156 - 8);
    v160 = MEMORY[0x1EEE9AC00](v158);
    v162 = &v247 - v161;
    (*(v159 + 16))(&v247 - v161, v160);
    v163 = (*(v157 + 16))(v156, v157);
    (*(v159 + 8))(v162, v156);
    sub_1DAED0B4C();

    if (v307)
    {
      __swift_project_boxed_opaque_existential_1(&v306, v307);
      v164 = v249;
      sub_1DAED177C();
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v165 = qword_1EE00A708;
      v166 = sub_1DAECDC5C();
      v167 = [v165 stringFromDate_];

      v168 = sub_1DAED1CEC();
      v170 = v169;

      (*(v282 + 8))(v164, v283);
      __swift_destroy_boxed_opaque_existential_1Tm(&v306);
    }

    else
    {
      sub_1DAD64398(&v306, &unk_1ECC07DE0, &qword_1DAEDBED0);
      v170 = 0xE900000000000064;
      v168 = 0x6E756F6620746F6ELL;
    }

    v171 = sub_1DAD6482C(v168, v170, &v304);

    *(v151 + 14) = v171;
    _os_log_impl(&dword_1DAD61000, v149, v150, "[%{public}s] initial entry: %{public}s", v151, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v152, -1, -1);
    MEMORY[0x1E127F100](v151, -1, -1);
  }

  sub_1DAD648F8(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v306);
  v172 = v307;
  v173 = v308;
  __swift_project_boxed_opaque_existential_1(&v306, v307);
  v174 = (*(v173 + 16))(v172, v173);
  v175 = sub_1DAED0C0C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v306);
  *&v306 = v175;
  v253 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v176 = sub_1DAED20EC();
  v304 = v176;
  v298 = sub_1DAED20AC();
  v177 = *(v298 - 8);
  v297 = *(v177 + 56);
  v284 = v177 + 56;
  v178 = v285;
  (v297)(v285, 1, 1, v298);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  v282 = MEMORY[0x1E695BED8];
  v257 = sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, MEMORY[0x1E695BED8]);
  v283 = sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v179 = v286;
  sub_1DAECEFBC();
  sub_1DAD64398(v178, &unk_1ECC07D20, &unk_1DAED57D0);

  v180 = swift_allocObject();
  swift_weakInit();
  v181 = swift_allocObject();
  *(v181 + 16) = sub_1DADC4FF8;
  *(v181 + 24) = v180;
  v254 = MEMORY[0x1E695BE98];
  v256 = sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0, MEMORY[0x1E695BE98]);

  v182 = v287;
  v183 = sub_1DAECF00C();

  v184 = *(v299 + 8);
  v299 += 8;
  v255 = v184;
  v184(v179, v182);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription) = v183;

  v185 = swift_allocObject();
  v186 = v301;
  v187 = v301[3];
  v188 = v301[4];
  __swift_project_boxed_opaque_existential_1(v301, v187);
  v189 = (*(v188 + 8))(v187, v188);
  swift_beginAccess();
  LOBYTE(v187) = *(v189 + 24);

  *(v185 + 16) = v187;
  v190 = v186[3];
  v191 = v186[4];
  __swift_project_boxed_opaque_existential_1(v186, v190);
  v192 = (*(v191 + 16))(v190, v191);
  v193 = sub_1DAED0BDC();

  v302 = v193;
  v194 = swift_allocObject();
  swift_weakInit();
  sub_1DAD648F8(v186, &v306);
  v195 = swift_allocObject();
  *(v195 + 16) = v194;
  *(v195 + 24) = v185;
  v259 = v185;
  sub_1DAD657D8(&v306, v195 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DC0, &unk_1DAEDE7E0);
  sub_1DAD64B94(&qword_1EE005CB8, &unk_1ECC07DC0, &unk_1DAEDE7E0, v282);
  sub_1DAECF00C();

  v196 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__cancellable;
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v197 = v268[2](v267);
  v198 = sub_1DAED0BDC();

  v302 = v198;
  v199 = swift_allocObject();
  swift_weakInit();
  sub_1DAD648F8(v309, &v306);
  v200 = swift_allocObject();
  *(v200 + 16) = v199;
  sub_1DAD657D8(&v306, v200 + 24);
  sub_1DAECF00C();

  v281 = v196;
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider), *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider + 24));
  v248 = sub_1DAECE2AC();
  *&v306 = v248;
  v201 = v291;
  sub_1DAED22DC();
  v268 = objc_opt_self();
  v202 = [v268 mainRunLoop];
  v302 = v202;
  v264 = sub_1DAED22CC();
  v203 = *(v264 - 8);
  v252 = *(v203 + 56);
  v267 = v203 + 56;
  v204 = v293;
  (v252)(v293, 1, 1, v264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DD0, &unk_1DAED5860);
  v251 = sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  sub_1DAD64B94(&qword_1EE00AC10, &unk_1ECC07DD0, &unk_1DAED5860, v282);
  v250 = sub_1DAD8D6A4(&qword_1EE00A858, &qword_1EE00A850, 0x1E695DFD0, MEMORY[0x1E696A010]);
  v205 = v269;
  sub_1DAECEFCC();
  sub_1DAD64398(v204, &qword_1ECC07D08, &qword_1DAEDCB80);
  v206 = *(v300 + 8);
  v300 += 8;
  v249 = v206;
  (v206)(v201, v292);

  v207 = sub_1DAED20EC();
  *&v306 = v207;
  v208 = v285;
  (v297)(v285, 1, 1, v298);
  v282 = MEMORY[0x1E695BE50];
  sub_1DAD64B94(&qword_1EE00AC40, &qword_1ECC07D10, &qword_1DAED57C0, MEMORY[0x1E695BE50]);
  v209 = v272;
  v210 = v271;
  sub_1DAECEFBC();
  sub_1DAD64398(v208, &unk_1ECC07D20, &unk_1DAED57D0);
  (*(v270 + 8))(v205, v210);

  swift_allocObject();
  swift_weakInit();
  sub_1DAD64B94(&qword_1EE00AC18, &qword_1ECC07D18, &qword_1DAED57C8, v254);
  v211 = v274;
  sub_1DAECF00C();

  (*(v273 + 8))(v209, v211);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v273 = swift_allocObject();
  swift_weakInit();

  v212 = swift_allocObject();
  *(v212 + 16) = 0;
  v213 = v301[3];
  v214 = v301[4];
  v215 = v301;
  __swift_project_boxed_opaque_existential_1(v301, v213);
  v216 = (*(v214 + 16))(v213, v214);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v306, v307);
  v302 = sub_1DAED10FC();
  v217 = sub_1DAED20EC();
  v303 = v217;
  (v297)(v208, 1, 1, v298);
  v218 = v286;
  sub_1DAECEFBC();
  sub_1DAD64398(v208, &unk_1ECC07D20, &unk_1DAED57D0);

  __swift_destroy_boxed_opaque_existential_1Tm(&v306);
  v219 = swift_allocObject();
  v274 = v212;
  v219[2] = v212;
  v219[3] = sub_1DADC46D8;
  v220 = v273;
  v219[4] = v273;
  v219[5] = a6;
  v221 = swift_allocObject();
  *(v221 + 16) = sub_1DADC4614;
  *(v221 + 24) = v219;

  v222 = v220;

  v223 = v287;
  v224 = sub_1DAECF00C();

  (v255)(v218, v223);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable) = v224;

  v225 = v215;
  v226 = v215[3];
  v227 = v215[4];
  __swift_project_boxed_opaque_existential_1(v225, v226);
  v228 = (*(v227 + 16))(v226, v227);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v306, v307);
  v302 = sub_1DAED10FC();
  v229 = v275;
  sub_1DAECEFEC();

  __swift_destroy_boxed_opaque_existential_1Tm(&v306);
  v230 = v291;
  sub_1DAED22DC();
  v231 = [v268 mainRunLoop];
  *&v306 = v231;
  v232 = v293;
  (v252)(v293, 1, 1, v264);
  sub_1DAD64B94(&qword_1EE005D70, &qword_1ECC07CF8, &qword_1DAED57A8, MEMORY[0x1E695BD78]);
  v233 = v278;
  v234 = v277;
  sub_1DAECEFCC();
  sub_1DAD64398(v232, &qword_1ECC07D08, &qword_1DAEDCB80);
  (v249)(v230, v292);
  (*(v276 + 8))(v229, v234);

  v235 = swift_allocObject();
  *(v235 + 16) = sub_1DADC46D8;
  *(v235 + 24) = v222;
  v236 = swift_allocObject();
  *(v236 + 16) = sub_1DAD93D0C;
  *(v236 + 24) = v235;
  sub_1DAD64B94(&qword_1EE005D48, &qword_1ECC07D00, &unk_1DAED57B0, v282);

  v237 = v280;
  sub_1DAECF00C();

  (*(v279 + 8))(v233, v237);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v238 = v301;
  v239 = v301[3];
  v240 = v301[4];
  __swift_project_boxed_opaque_existential_1(v301, v239);
  v241 = (*(v240 + 16))(v239, v240);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v306, v307);
  v242 = v288;
  sub_1DAED10EC();
  v243 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
  swift_beginAccess();
  (*(v289 + 40))(a6 + v243, v242, v290);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v306);
  swift_beginAccess();
  v244 = sub_1DAECF79C();
  swift_endAccess();
  v245 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties) = v244;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing) = 0;
  LOBYTE(v306) = 0;
  sub_1DAD8EC1C(&v306);

  __swift_destroy_boxed_opaque_existential_1Tm(v294);
  __swift_destroy_boxed_opaque_existential_1Tm(v295);
  (*(v265 + 8))(v296, v266);

  __swift_destroy_boxed_opaque_existential_1Tm(v309);
  __swift_destroy_boxed_opaque_existential_1Tm(v238);
  return a6;
}

unint64_t sub_1DAEA633C()
{
  result = qword_1ECC0A618;
  if (!qword_1ECC0A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A618);
  }

  return result;
}

unint64_t sub_1DAEA6394()
{
  result = qword_1ECC0A620;
  if (!qword_1ECC0A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A620);
  }

  return result;
}

uint64_t keypath_get_164Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_1DAD6495C(v8 + v9, a5, a3, a4);
}

uint64_t keypath_set_185Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  return a6(v10);
}

double keypath_get_200Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

void keypath_set_213Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, const char *a6, char a7)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  v13 = *(v11 + v12);
  *(v11 + v12) = v10;
  sub_1DAD95924(v13, a5, a6, a7);
}

id keypath_get_210Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t getEnumTagSinglePayload for LiveWidgetViewChangeReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiveWidgetViewChangeReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t WatchComplicationsWidgetViewModel.init(metrics:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel__style;
  v4 = type metadata accessor for WatchComplicationsWidgetViewModel.Style(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_monochromeModel;
  *(v1 + v5) = [objc_allocWithZone(sub_1DAECEC9C()) init];
  v6 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
  v7 = sub_1DAECFF0C();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v8(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented) = 2;
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters) = 0;
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family) = 0;
  v9 = (v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_contentSize);
  *v9 = 0;
  v9[1] = 0;
  v10 = v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration;
  v12 = sub_1DAECEC2C();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metrics) = a1;
  return v1;
}

uint64_t sub_1DAEA878C()
{
  sub_1DAEA9F94();

  return sub_1DAEA8A68(v0);
}

uint64_t WatchComplicationsWidgetViewModel.deinit()
{
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel__style, &qword_1ECC088F0, qword_1DAED7330);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata, &unk_1ECC0A680, &unk_1DAED72C0);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText, &unk_1ECC0A680, &unk_1DAED72C0);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration, &qword_1ECC088F8, &qword_1DAEDE860);
  return v0;
}

uint64_t sub_1DAEA888C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F0, qword_1DAED7330);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel__style;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v9, v8, &qword_1ECC088F0, qword_1DAED7330);
  v10 = type metadata accessor for WatchComplicationsWidgetViewModel.Style(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_1DAEAFDA8(v8, a1, type metadata accessor for WatchComplicationsWidgetViewModel.Style);
  }

  sub_1DAD64398(v8, &qword_1ECC088F0, qword_1DAED7330);
  sub_1DAEA938C(a1);
  sub_1DAEAA114(a1, v5);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1DAEAA178(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t (*sub_1DAEA8AA4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

uint64_t sub_1DAEA8B40(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_1DAD901C4(a1, v4 + v8, a3, a4);
  swift_endAccess();
  sub_1DAEAB354();
  return sub_1DAD64398(a1, a3, a4);
}

uint64_t (*sub_1DAEA8BC8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

uint64_t sub_1DAEA8C2C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1DAEAB354();
  }

  return result;
}

uint64_t sub_1DAEA8C60()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAEA8CA4(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1DAEAB354();
}

uint64_t (*sub_1DAEA8CF8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

void *sub_1DAEA8D5C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DAEA8DA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DAEA8E60()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAEA8EA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1DAEAB354();
}

uint64_t (*sub_1DAEA8EF8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

double sub_1DAEA8F5C()
{
  v1 = v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_contentSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1DAEA8FA4(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_contentSize);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return sub_1DAEAB354();
}

uint64_t (*sub_1DAEA9000(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEA9064;
}

uint64_t sub_1DAEA9068()
{
  v1 = v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1DAEA90B4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return sub_1DAEAB354();
}

uint64_t (*sub_1DAEA9118(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

uint64_t (*sub_1DAEA91B4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

uint64_t sub_1DAEA9218()
{
  v1 = v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1DAEA9264(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return sub_1DAEAB354();
}

uint64_t (*sub_1DAEA92D4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

uint64_t sub_1DAEA9338()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metrics) fontStyle];
  if ((v1 - 4) > 8)
  {
    return 0;
  }

  else
  {
    return qword_1DAEDEA00[(v1 - 4)];
  }
}

uint64_t sub_1DAEA938C@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v92 = sub_1DAECEC4C();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v3 = (&v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v83 = &v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F8, &qword_1DAEDE860);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v82 - v10;
  v12 = sub_1DAECEC2C();
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v82 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v90 = &v82 - v21;
  v22 = sub_1DAECEBCC();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v89 = (&v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_1DAECFF0C();
  v93 = *(v24 - 8);
  v94 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v85 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v82 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v82 - v33;
  v88 = sub_1DAECEBEC();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
  swift_beginAccess();
  v37 = *(v1 + v36);
  switch(v37)
  {
    case 12:
      v90 = v14;
      v47 = v17;
      v89 = v3;
      v48 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration;
      swift_beginAccess();
      sub_1DAD6495C(v1 + v48, v8, &qword_1ECC088F8, &qword_1DAEDE860);
      v50 = v95;
      v49 = v96;
      if ((*(v95 + 48))(v8, 1, v96) != 1)
      {
        v54 = v47;
        (*(v50 + 32))(v47, v8, v49);
        (*(v50 + 16))(v90, v47, v49);
        v55 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_monochromeModel);
        v56 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
        swift_beginAccess();
        sub_1DAD6495C(v1 + v56, v28, &unk_1ECC0A680, &unk_1DAED72C0);
        v58 = v93;
        v57 = v94;
        if ((*(v93 + 48))(v28, 1, v94))
        {
          v59 = v55;
          sub_1DAD64398(v28, &unk_1ECC0A680, &unk_1DAED72C0);
          v60 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v69 = v85;
          (*(v58 + 16))(v85, v28, v57);
          v70 = v55;
          sub_1DAD64398(v28, &unk_1ECC0A680, &unk_1DAED72C0);
          v60 = sub_1DAEAB598();
          v71 = v69;
          v54 = v47;
          (*(v58 + 8))(v71, v57);
        }

        v72 = v89;
        v98[0] = v60;
        (*(*v1 + 480))(v98);
        sub_1DAECEC3C();
        (*(v50 + 8))(v54, v49);
        (*(v91 + 32))(v97, v72, v92);
        break;
      }

      v46 = v8;
LABEL_11:
      sub_1DAD64398(v46, &qword_1ECC088F8, &qword_1DAEDE860);
      break;
    case 10:
      v43 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration;
      swift_beginAccess();
      sub_1DAD6495C(v1 + v43, v11, &qword_1ECC088F8, &qword_1DAEDE860);
      v45 = v95;
      v44 = v96;
      if ((*(v95 + 48))(v11, 1, v96) != 1)
      {
        v52 = v90;
        (*(v45 + 32))(v90, v11, v44);
        v53 = (v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter);
        swift_beginAccess();
        if (v53[2])
        {
          (*(v45 + 8))(v52, v44);
        }

        else
        {
          v62 = *v53;
          v61 = v53[1];
          (*(v45 + 16))(v84, v52, v44);
          v63 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_monochromeModel);
          v64 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
          swift_beginAccess();
          sub_1DAD6495C(v1 + v64, v31, &unk_1ECC0A680, &unk_1DAED72C0);
          v66 = v93;
          v65 = v94;
          if ((*(v93 + 48))(v31, 1, v94))
          {
            v67 = v63;
            sub_1DAD64398(v31, &unk_1ECC0A680, &unk_1DAED72C0);
            v68 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v77 = v85;
            (*(v66 + 16))(v85, v31, v65);
            v78 = v63;
            sub_1DAD64398(v31, &unk_1ECC0A680, &unk_1DAED72C0);
            v68 = sub_1DAEAB598();
            (*(v66 + 8))(v77, v65);
          }

          v99 = v68;
          (*(*v1 + 480))(&v99);
          v79 = v83;
          sub_1DAECEC3C();
          (*(v45 + 8))(v52, v44);
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC09850, &unk_1DAEDE9F0);
          v81 = (v97 + *(v80 + 48));
          (*(v91 + 32))(v97, v79, v92);
          *v81 = v62;
          v81[1] = v61;
        }

        break;
      }

      v46 = v11;
      goto LABEL_11;
    case 7:
      v38 = v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
      swift_beginAccess();
      if ((*(v38 + 8) & 1) == 0)
      {
        swift_beginAccess();
        v39 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText;
        swift_beginAccess();
        sub_1DAD6495C(v1 + v39, v34, &unk_1ECC0A680, &unk_1DAED72C0);
        v41 = v93;
        v40 = v94;
        if ((*(v93 + 48))(v34, 1, v94))
        {
          sub_1DAD64398(v34, &unk_1ECC0A680, &unk_1DAED72C0);
          v42 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v73 = v85;
          (*(v41 + 16))(v85, v34, v40);
          sub_1DAD64398(v34, &unk_1ECC0A680, &unk_1DAED72C0);
          v42 = sub_1DAEAB598();
          (*(v41 + 8))(v73, v40);
        }

        v74 = v89;
        v99 = v42;
        (*(*v1 + 480))(&v99);
        sub_1DAEAA1E8(v74);
        [*(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metrics) fontStyle];
        v75 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_monochromeModel);
        v76 = v86;
        sub_1DAECEBBC();
        (*(v87 + 32))(v97, v76, v88);
      }

      break;
  }

  type metadata accessor for WatchComplicationsWidgetViewModel.Style(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1DAEA9F94()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 primaryTintColor];
    if (v4)
    {
      v5 = v4;
      sub_1DAED06DC();
      sub_1DAECEC7C();
    }

    v6 = [v3 secondaryTintColor];
    if (v6)
    {
      v7 = v6;
      sub_1DAED06DC();
      sub_1DAECEC5C();
    }

    [v3 fraction];
    sub_1DAECEC8C();
    v8 = [v3 filterStyle];
    if (v8 < 2 || v8 == 7)
    {
      sub_1DAECEC6C();
    }

    else
    {
      sub_1DAED273C();
      __break(1u);
    }
  }

  else
  {
    sub_1DAECEC8C();
  }
}

uint64_t sub_1DAEAA114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchComplicationsWidgetViewModel.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAEAA178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F0, qword_1DAED7330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAEAA1E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A690, &unk_1DAEDE868);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36[-1] - v4;
  v6 = sub_1DAECFF0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36[-1] - v14;
  v16 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
  swift_beginAccess();
  sub_1DAD6495C(v2 + v16, v15, &unk_1ECC0A680, &unk_1DAED72C0);
  v17 = *(v7 + 48);
  if (v17(v15, 1, v6))
  {
    sub_1DAD64398(v15, &unk_1ECC0A680, &unk_1DAED72C0);
  }

  else
  {
    (*(v7 + 16))(v9, v15, v6);
    sub_1DAD64398(v15, &unk_1ECC0A680, &unk_1DAED72C0);
    v19 = sub_1DAEAB598();
    (*(v7 + 8))(v9, v6);
    v36[0] = v19;
    if (*(v19 + 16))
    {
      (*(*v2 + 480))(v36);
      v20 = v35;
      *v35 = v36[0];
      v21 = *MEMORY[0x1E6996050];
      v22 = sub_1DAECEBCC();
      return (*(*(v22 - 8) + 104))(v20, v21, v22);
    }
  }

  sub_1DAD6495C(v2 + v16, v12, &unk_1ECC0A680, &unk_1DAED72C0);
  if (v17(v12, 1, v6))
  {
    sub_1DAD64398(v12, &unk_1ECC0A680, &unk_1DAED72C0);
    v18 = sub_1DAECEBCC();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
LABEL_8:
    sub_1DAD64398(v5, &unk_1ECC0A690, &unk_1DAEDE868);
LABEL_9:
    v27 = *MEMORY[0x1E6996040];
    v28 = sub_1DAECEBCC();
    return (*(*(v28 - 8) + 104))(v35, v27, v28);
  }

  (*(v7 + 16))(v9, v12, v6);
  sub_1DAD64398(v12, &unk_1ECC0A680, &unk_1DAED72C0);
  v24 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
  swift_beginAccess();
  sub_1DAEABA58(*(v2 + v24), v5);
  (*(v7 + 8))(v9, v6);
  v25 = sub_1DAECEBCC();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v5, 1, v25) == 1)
  {
    goto LABEL_8;
  }

  if ((*(v26 + 88))(v5, v25) != *MEMORY[0x1E6996048])
  {
    (*(v26 + 8))(v5, v25);
    goto LABEL_9;
  }

  (*(v26 + 96))(v5, v25);
  v29 = *v5;
  v30 = *(v5 + 2);
  v38 = *(v5 + 1);
  v39 = v29;
  v37 = v30;
  (*(*v2 + 488))(&v39);
  v31 = *(*v2 + 480);
  v31(&v38);
  v31(&v37);
  v32 = v38;
  v33 = v37;
  v34 = v35;
  *v35 = v39;
  v34[1] = v32;
  v34[2] = v33;
  return (*(v26 + 104))();
}

uint64_t sub_1DAEAA7E0(uint64_t *a1)
{
  v3 = sub_1DAECFF0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13[-v8];
  v10 = *a1;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v10, v9, &unk_1ECC0A680, &unk_1DAED72C0);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_1DAD64398(v9, &unk_1ECC0A680, &unk_1DAED72C0);
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_1DAD64398(v9, &unk_1ECC0A680, &unk_1DAED72C0);
    v11 = sub_1DAEAB598();
    (*(v4 + 8))(v6, v3);
  }

  v14 = v11;
  (*(*v1 + 480))(&v14);
  return v14;
}

char *sub_1DAEAA9FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DAED247C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1DAE021E4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1E127E1F0](i, a1);
        type metadata accessor for CFDictionary(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1DAE021E4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1DADDC968(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CFDictionary(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1DAE021E4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1DADDC968(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1DAEAABC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DAED247C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1DAE021C4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1E127E1F0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1DAE021C4((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1DAD674D4(0, &qword_1ECC0A798, 0x1E695B550);
        v16 = sub_1DAEAFE10();
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1DAD657D8(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_1DAE021C4((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1DAD674D4(0, &qword_1ECC0A798, 0x1E695B550);
        v16 = sub_1DAEAFE10();
        *&v14 = v13;
        *(v3 + 16) = v11 + 1;
        sub_1DAD657D8(&v14, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void CHSWatchComplicationsCurvedLabelMetrics.complicationCurvedTextConfiguration.getter()
{
  v1 = sub_1DAECEBFC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v8 = &v19 - v7;
  v9 = [v0 bezierPath];
  [v0 fontSize];
  v10 = [v0 textColor];
  sub_1DAED06DC();
  if (v9)
  {
    v11 = [v9 cgPath];
    v12 = [objc_opt_self() bezierPathWithCGPath_];

    v13 = [v0 accessoryPlacement];
    v14 = MEMORY[0x1E6996060];
    v15 = MEMORY[0x1E6996070];
    if (v13 != 2)
    {
      v15 = MEMORY[0x1E6996068];
    }

    if (v13 != 1)
    {
      v14 = v15;
    }

    (*(v2 + 104))(v8, *v14, v1);
    [v0 accessoryPadding];
    [v0 accessoryMaxSize];
    sub_1DAECEC0C();
  }

  else
  {
    [v0 interior];
    [v0 tracking];
    [v0 circleCenter];
    [v0 circleRadius];
    [v0 maximumAngularWidth];
    [v0 centerAngle];
    v16 = [v0 accessoryPlacement];
    v17 = MEMORY[0x1E6996060];
    v18 = MEMORY[0x1E6996070];
    if (v16 != 2)
    {
      v18 = MEMORY[0x1E6996068];
    }

    if (v16 != 1)
    {
      v17 = v18;
    }

    (*(v2 + 104))(v4, *v17, v1);
    [v0 accessoryPadding];
    [v0 accessoryMaxSize];
    sub_1DAECEC1C();
  }
}

uint64_t sub_1DAEAB154(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  sub_1DAD6495C(a1, &v18 - v13, a5, a6);
  v15 = *a2;
  v16 = *a7;
  swift_beginAccess();
  sub_1DAD901C4(v14, v15 + v16, a5, a6);
  swift_endAccess();
  sub_1DAEAB354();
  return sub_1DAD64398(v14, a5, a6);
}

void sub_1DAEAB248(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t WatchComplicationsWidgetViewModel.__allocating_init(metrics:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WatchComplicationsWidgetViewModel.init(metrics:)(a1);
  return v2;
}

uint64_t sub_1DAEAB2E8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter;
  swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return sub_1DAEAB354();
}

uint64_t sub_1DAEAB354()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F0, qword_1DAED7330);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-v5];
  BSDispatchQueueAssertMain();
  v7 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel__style;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v7, v6, &qword_1ECC088F0, qword_1DAED7330);
  v8 = type metadata accessor for WatchComplicationsWidgetViewModel.Style(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  result = sub_1DAD64398(v6, &qword_1ECC088F0, qword_1DAED7330);
  if (v10 != 1)
  {
    type metadata accessor for WatchComplicationsWidgetViewModel(0);
    sub_1DAEAFE98(&qword_1ECC09B10, type metadata accessor for WatchComplicationsWidgetViewModel, &protocol conformance descriptor for WatchComplicationsWidgetViewModel);
    sub_1DAECEE4C();
    sub_1DAECEEBC();

    (*(*v0 + 520))(v12);
    (*(v9 + 56))(v3, 1, 1, v8);
    swift_beginAccess();
    sub_1DAEAA178(v3, v0 + v7);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1DAEAB598()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09560, &qword_1DAED9C00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A7B0, &unk_1DAEDE9B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09568, &qword_1DAED9C08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27[-v9];
  sub_1DAECFCEC();
  v11 = sub_1DAECFDDC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1DAD64398(v10, &qword_1ECC09568, &qword_1DAED9C08);
    v13 = 0;
  }

  else
  {
    v13 = WidgetAuxiliaryViewMetadata.Text.textProvider.getter();
    (*(v12 + 8))(v10, v11);
    if (v13)
    {
      v14 = v13;
      sub_1DAECFD3C();
      v15 = sub_1DAECFD2C();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v7, 1, v15) == 1)
      {
        sub_1DAD64398(v7, &unk_1ECC0A7B0, &unk_1DAEDE9B0);
        v17 = 0;
      }

      else
      {
        sub_1DAEADBAC();
        (*(v16 + 8))(v7, v15);
        v17 = sub_1DAED1CBC();
      }

      [v14 setAccessibilityLabel_];
    }
  }

  sub_1DAECFE8C();
  v18 = sub_1DAECFE7C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v4, 1, v18) == 1)
  {
    sub_1DAD64398(v4, &qword_1ECC09560, &qword_1DAED9C00);
    v20 = 0;
  }

  else
  {
    v20 = WidgetAuxiliaryViewMetadata.Graphic.imageProvider.getter();
    (*(v19 + 8))(v4, v18);
  }

  v21 = sub_1DAECFEFC();
  if (v21)
  {
    if (*(v21 + 16))
    {
      MEMORY[0x1EEE9AC00](v21);
      *&v27[-32] = v1;
      *&v27[-24] = v13;
      *&v27[-16] = v20;
      v23 = sub_1DAE0CFD0(sub_1DAEAFE78, &v27[-48], v22);

      return v23;
    }
  }

  if (!(v13 | v20))
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A7C0, &unk_1DAEDE9C0);
  sub_1DAECEB5C();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DAED6200;
  v24 = v20;
  v25 = v13;
  sub_1DAECEB1C();

  return v23;
}

uint64_t sub_1DAEABA58@<X0>(unsigned int a1@<W0>, char *a2@<X8>)
{
  v33 = a1;
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A7D0, &qword_1DAEDE9D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A7D8, &qword_1DAEDE9D8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A690, &unk_1DAEDE868);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v31 - v13);
  v15 = sub_1DAECEBCC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v31 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v32 = v2;
  sub_1DAECFE3C();
  v21 = sub_1DAECFE2C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v8, 1, v21) == 1)
  {
    sub_1DAD64398(v8, &qword_1ECC0A7D8, &qword_1DAEDE9D8);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  else
  {
    sub_1DAEAE134(v33, v14);
    (*(v22 + 8))(v8, v21);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v27 = *(v16 + 32);
      v27(v20, v14, v15);
      v26 = v34;
      v27(v34, v20, v15);
      goto LABEL_10;
    }
  }

  sub_1DAD64398(v14, &unk_1ECC0A690, &unk_1DAEDE868);
  sub_1DAECFEEC();
  v23 = sub_1DAECFEDC();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v5, 1, v23) != 1)
  {
    sub_1DAEAE420(v33, v11);
    (*(v24 + 8))(v5, v23);
    if ((*(v16 + 48))(v11, 1, v15) == 1)
    {
      goto LABEL_7;
    }

    v28 = *(v16 + 32);
    v29 = v31;
    v28(v31, v11, v15);
    v26 = v34;
    v28(v34, v29, v15);
LABEL_10:
    v25 = 0;
    return (*(v16 + 56))(v26, v25, 1, v15);
  }

  sub_1DAD64398(v5, &qword_1ECC0A7D0, &qword_1DAEDE9D0);
  (*(v16 + 56))(v11, 1, 1, v15);
LABEL_7:
  sub_1DAD64398(v11, &unk_1ECC0A690, &unk_1DAEDE868);
  v25 = 1;
  v26 = v34;
  return (*(v16 + 56))(v26, v25, 1, v15);
}

uint64_t WatchComplicationsWidgetViewModel.__deallocating_deinit()
{
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel__style, &qword_1ECC088F0, qword_1DAED7330);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata, &unk_1ECC0A680, &unk_1DAED72C0);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText, &unk_1ECC0A680, &unk_1DAED72C0);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration, &qword_1ECC088F8, &qword_1DAEDE860);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAEAC028@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WatchComplicationsWidgetViewModel(0);
  result = sub_1DAECEE4C();
  *a2 = result;
  return result;
}

id WidgetAuxiliaryViewMetadata.Graphic.imageProvider.getter()
{
  v1 = v0;
  v2 = sub_1DAECFE6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = sub_1DAECFE7C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, v1, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x1E697CB08])
  {
    (*(v10 + 96))(v13, v9);
    (*(v3 + 32))(v8, v13, v2);
    (*(v3 + 16))(v5, v8, v2);
    v15 = objc_allocWithZone(sub_1DAECECAC());
    v16 = sub_1DAECECBC();
    (*(v3 + 8))(v8, v2);
  }

  else if (v14 == *MEMORY[0x1E697CB00])
  {
    (*(v10 + 96))(v13, v9);
    v17 = *v13;
    v16 = [objc_opt_self() imageProviderWithOnePieceImage_];
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  return v16;
}

void *WidgetAuxiliaryViewMetadata.Text.textProvider.getter()
{
  v143 = sub_1DAECDDEC();
  v185 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v136 = &v126[-((v0 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09418, &qword_1DAED9810);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v135 = &v126[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v142 = &v126[-v4];
  v153 = sub_1DAECDA2C();
  v180 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v134 = &v126[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v141 = &v126[-v7];
  v152 = sub_1DAED02FC();
  v179 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v9 = &v126[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v151 = &v126[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v126[-v13];
  v165 = sub_1DAECDCEC();
  v178 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v133 = &v126[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v140 = &v126[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v150 = &v126[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v175 = &v126[-v20];
  v174 = sub_1DAECFAFC();
  v181 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v173 = &v126[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A6A0, &qword_1DAEDE878);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v172 = &v126[-v23];
  v24 = sub_1DAECFD5C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v126[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v163 = &v126[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v162 = &v126[-v31];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v126[-v33];
  v171 = sub_1DAECFCDC();
  v35 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v158 = &v126[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v188 = sub_1DAECFDBC();
  v37 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v39 = &v126[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v190 = MEMORY[0x1E69E7CC0];
  v40 = sub_1DAECFDCC();
  v41 = *(v40 + 16);
  if (v41)
  {
    v149 = v9;
    v43 = *(v37 + 16);
    v42 = v37 + 16;
    v182 = v43;
    v44 = (*(v42 + 64) + 32) & ~*(v42 + 64);
    v132 = v40;
    v45 = v40 + v44;
    v187 = (v25 + 88);
    v184 = (v25 + 8);
    v186 = (v25 + 96);
    v170 = (v35 + 32);
    v169 = (v181 + 8);
    v168 = (v25 + 48);
    v161 = (v25 + 32);
    v160 = (v25 + 16);
    v167 = (v35 + 8);
    v139 = (v180 + 32);
    LODWORD(v181) = *MEMORY[0x1E697CAD8];
    v155 = (v178 + 8);
    v138 = (v180 + 8);
    LODWORD(v180) = *MEMORY[0x1E697CAC8];
    v131 = (v185 + 48);
    v128 = (v185 + 32);
    v166 = *MEMORY[0x1E697CAD0];
    v130 = (v185 + 8);
    v148 = (v178 + 32);
    v159 = *MEMORY[0x1E697CAB8];
    v147 = (v179 + 4);
    v146 = (v179 + 2);
    v145 = *MEMORY[0x1E697CAC0];
    v137 = *MEMORY[0x1E697CAB0];
    v129 = *MEMORY[0x1E697CAE0];
    v154 = v179 + 1;
    v127 = *MEMORY[0x1E697CAA8];
    v179 = (v42 - 8);
    v46 = *(v42 + 56);
    v177 = MEMORY[0x1E69E7CC0];
    v178 = v46;
    v176 = v27;
    v185 = v34;
    v47 = v158;
    v183 = v42;
    v144 = v24;
    v43(v39, v45, v188);
    while (1)
    {
      sub_1DAECFD6C();
      v48 = *v187;
      v49 = (*v187)(v34, v24);
      if (v49 == v181)
      {
        (*v186)(v34, v24);
        v50 = v171;
        (*v170)(v47, v34, v171);
        v51 = v173;
        sub_1DAECFAEC();
        v52 = v172;
        sub_1DAECFCCC();
        (*v169)(v51, v174);
        if ((*v168)(v52, 1, v24) == 1)
        {
          (*v167)(v47, v50);
          sub_1DAD64398(v52, &unk_1ECC0A6A0, &qword_1DAEDE878);
        }

        else
        {
          v53 = v162;
          (*v161)(v162, v52, v24);
          (*v160)(v163, v53, v24);
          sub_1DAECFD7C();
          (*v184)(v53, v24);
          (*v167)(v47, v50);
        }

        v27 = v176;
        v34 = v185;
      }

      else
      {
        (*v184)(v34, v24);
      }

      sub_1DAECFD6C();
      v54 = v48(v27, v24);
      if (v54 == v180)
      {
        (*v186)(v27, v24);
        v55 = sub_1DAED1CBC();

        v56 = [objc_opt_self() textProviderWithText_];

        goto LABEL_14;
      }

      v62 = v175;
      if (v54 == v166)
      {
        goto LABEL_3;
      }

      if (v54 != v159)
      {
        if (v54 == v145)
        {
          (*v186)(v27, v24);
          v74 = v141;
          (*v139)(v141, v27, v153);
          sub_1DAECDA0C();
          v75 = v140;
          sub_1DAECD9FC();
          v76 = sub_1DAECDC5C();
          v77 = sub_1DAECDC5C();
          v56 = [objc_opt_self() textProviderWithStartDate:v76 endDate:v77];

          v78 = *v155;
          v79 = v75;
          v27 = v176;
          v80 = v165;
          (*v155)(v79, v165);
          v78(v150, v80);
          v81 = v74;
          v47 = v158;
          (*v138)(v81, v153);
        }

        else if (v54 == v137)
        {
          (*v186)(v27, v24);

          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A6B0, &qword_1DAED9820);
          v90 = v142;
          sub_1DAD7C48C(v27 + *(v89 + 64), v142, &qword_1ECC09418, &qword_1DAED9810);
          v91 = v135;
          sub_1DAD6495C(v90, v135, &qword_1ECC09418, &qword_1DAED9810);
          v92 = *v131;
          if ((*v131)(v91, 1, v143) == 1)
          {
            v93 = v136;
            sub_1DAECDDDC();
            if (v92(v91, 1, v143) != 1)
            {
              sub_1DAD64398(v91, &qword_1ECC09418, &qword_1DAED9810);
            }
          }

          else
          {
            v93 = v136;
            (*v128)(v136, v91, v143);
          }

          v104 = sub_1DAECDDBC();
          v56 = [objc_opt_self() textProviderWithTimeZone_];

          (*v130)(v93, v143);
          sub_1DAD64398(v142, &qword_1ECC09418, &qword_1DAED9810);
        }

        else
        {
          v101 = v134;
          if (v54 == v129)
          {
            (*v186)(v27, v24);
            v102 = *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09420, &qword_1DAED9818) + 64));
            (*v139)(v101, v27, v153);
            v103 = v133;
            if (v102 == 1)
            {
              sub_1DAECD9FC();
            }

            else
            {
              sub_1DAECDA0C();
            }

            v107 = v103;
            v108 = sub_1DAECDC5C();
            v56 = [objc_opt_self() textProviderWithDate:v108 style:2 units:224];

            (*v155)(v107, v165);
            (*v138)(v101, v153);
          }

          else
          {
            if (v54 != v127)
            {
LABEL_3:
              (*v179)(v39, v188);
              (*v184)(v27, v24);
              goto LABEL_4;
            }

            (*v186)(v27, v24);
            v56 = *v27;
          }
        }

        goto LABEL_14;
      }

      (*v186)(v27, v24);
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09428, &unk_1DAED9828) + 48);
      (*v148)(v62, v27, v165);
      v64 = v156;
      v65 = v152;
      (*v147)(v156, v27 + v63, v152);
      v66 = v151;
      (*v146)(v151, v64, v65);
      v67 = v149;
      sub_1DAED02AC();
      v68 = v66;
      v157 = sub_1DAEAFE98(&unk_1ECC0A6C0, MEMORY[0x1E69810E8], MEMORY[0x1E6981100]);
      LOBYTE(v66) = sub_1DAED1CAC();
      v164 = *v154;
      v164(v67, v65);
      if (v66)
      {
        v69 = v68;
        v70 = v164;
        v164(v69, v65);
        v71 = v175;
        v72 = sub_1DAECDC5C();
        v56 = [objc_opt_self() textProviderWithDate_];

        v70(v64, v65);
        (*v155)(v71, v165);
LABEL_31:
        v27 = v176;
        v47 = v158;
        v24 = v144;
        goto LABEL_14;
      }

      sub_1DAED029C();
      v82 = sub_1DAED1CAC();
      v83 = v164;
      v164(v67, v65);
      if (v82)
      {
        v83(v68, v65);
        v84 = v65;
        v85 = v156;
        v86 = sub_1DAED02CC();
        v87 = v175;
        v88 = sub_1DAECDC5C();
        v56 = [objc_opt_self() textProviderWithDate:v88 units:v86];

        v83(v85, v84);
        (*v155)(v87, v165);
        goto LABEL_31;
      }

      sub_1DAED02EC();
      v94 = sub_1DAED1CAC();
      v83(v67, v65);
      v24 = v144;
      if (v94)
      {
        v95 = v164;
        v164(v68, v65);
        v96 = v156;
        v97 = sub_1DAED02CC();
        v98 = v175;
        v99 = sub_1DAECDC5C();
        v100 = [objc_opt_self() textProviderWithDate:v99 style:0 units:v97];
      }

      else
      {
        sub_1DAED02DC();
        v105 = sub_1DAED1CAC();
        v164(v67, v65);
        if ((v105 & 1) == 0)
        {
          sub_1DAED02BC();
          v109 = sub_1DAED1CAC();
          v110 = v67;
          v111 = v164;
          v164(v110, v65);
          v111(v68, v65);
          if ((v109 & 1) == 0)
          {
            v164(v156, v65);
            (*v155)(v175, v165);
            (*v179)(v39, v188);
            v27 = v176;
            v47 = v158;
            goto LABEL_4;
          }

          v112 = v65;
          v113 = v156;
          v114 = sub_1DAED02CC();
          v98 = v175;
          v115 = sub_1DAECDC5C();
          v56 = [objc_opt_self() textProviderWithDate:v115 style:2 units:v114];

          v164(v113, v112);
          goto LABEL_46;
        }

        v95 = v164;
        v164(v68, v65);
        v96 = v156;
        v106 = sub_1DAED02CC();
        v98 = v175;
        v99 = sub_1DAECDC5C();
        v100 = [objc_opt_self() textProviderWithDate:v99 style:1 units:v106];
      }

      v56 = v100;

      v95(v96, v152);
LABEL_46:
      (*v155)(v98, v165);
      v27 = v176;
      v47 = v158;
LABEL_14:
      v57 = v56;
      if (sub_1DAECFD8C())
      {
        v58 = sub_1DAED05DC();

        if (v58)
        {
          v59 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
          [v57 setTintColor_];
        }
      }

      v60 = sub_1DAECFD9C();
      v34 = v185;
      if (v60)
      {
        sub_1DAEAA9FC(v60);

        v61 = sub_1DAED1E6C();
      }

      else
      {
        v61 = 0;
      }

      [v57 setFontFeatures_];

      v73 = v57;
      MEMORY[0x1E127DAD0]();
      if (*((v190 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v190 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DAED1E9C();
      }

      sub_1DAED1EBC();

      (*v179)(v39, v188);
      v177 = v190;
LABEL_4:
      v45 += v178;
      if (!--v41)
      {

        v116 = v177;
        if (!(v177 >> 62))
        {
          goto LABEL_55;
        }

LABEL_64:
        if (sub_1DAED247C())
        {
          v117 = sub_1DAED247C();
          goto LABEL_56;
        }

LABEL_70:

        return 0;
      }

      v182(v39, v45, v188);
    }
  }

  v116 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_64;
  }

LABEL_55:
  v117 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v117)
  {
    goto LABEL_70;
  }

LABEL_56:
  v118 = v116 >> 62;
  if (v117 == 1)
  {
    if (v118)
    {
      result = sub_1DAED247C();
      if (!result)
      {
        goto LABEL_70;
      }
    }

    else
    {
      result = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_70;
      }
    }

    if ((v116 & 0xC000000000000001) != 0)
    {
      v120 = MEMORY[0x1E127E1F0](0, v116);
    }

    else
    {
      if (!*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v120 = *(v116 + 32);
    }

    v121 = v120;

    return v121;
  }

  if (v118)
  {
    v122 = sub_1DAED247C();
  }

  else
  {
    v122 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v189 = sub_1DAEAF0BC(0x4025, 0xE200000000000000, v122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
  sub_1DAE02284();
  v123 = sub_1DAED1C8C();

  v124 = sub_1DAEAABC8(v116);

  v125 = sub_1DAEAF158(v124, v123);

  swift_bridgeObjectRelease_n();
  return v125;
}

uint64_t sub_1DAEADBAC()
{
  sub_1DAECFD0C();
  v13[0] = v0;
  v1 = 0;
  v13[1] = sub_1DAECFD1C();
  v13[2] = v2;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = &v13[2 * v1];
  while (++v1 != 3)
  {
    v5 = v4 + 2;
    v6 = *v4;
    v4 += 2;
    if (v6)
    {
      v7 = *(v5 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1DAD9BF68(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_1DAD9BF68((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[16 * v9];
      *(v10 + 4) = v7;
      *(v10 + 5) = v6;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A18, &unk_1DAEDB490);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
  sub_1DAE02284();
  v11 = sub_1DAED1C8C();

  return v11;
}

uint64_t sub_1DAEADD18@<X0>(void *a1@<X2>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09560, &qword_1DAED9C00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A7B0, &unk_1DAEDE9B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09568, &qword_1DAED9C08);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  sub_1DAECFCEC();
  v12 = sub_1DAECFDDC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DAD64398(v11, &qword_1ECC09568, &qword_1DAED9C08);
    v14 = 0;
  }

  else
  {
    v14 = WidgetAuxiliaryViewMetadata.Text.textProvider.getter();
    (*(v13 + 8))(v11, v12);
    if (v14)
    {
      v15 = v14;
      sub_1DAECFD3C();
      v16 = sub_1DAECFD2C();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v8, 1, v16) == 1)
      {
        sub_1DAD64398(v8, &unk_1ECC0A7B0, &unk_1DAEDE9B0);
        v18 = 0;
      }

      else
      {
        sub_1DAEADBAC();
        (*(v17 + 8))(v8, v16);
        v18 = sub_1DAED1CBC();
      }

      [v15 setAccessibilityLabel_];
    }
  }

  sub_1DAECFE8C();
  v19 = sub_1DAECFE7C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v5, 1, v19) == 1)
  {
    sub_1DAD64398(v5, &qword_1ECC09560, &qword_1DAED9C00);
    v21 = v30;
    v22 = v31;
    if (!v14)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v23 = WidgetAuxiliaryViewMetadata.Graphic.imageProvider.getter();
  (*(v20 + 8))(v5, v19);
  if (!v14)
  {
    v21 = v29;
    v22 = v31;
    if (!v23)
    {
LABEL_17:
      v25 = 1;
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v21 = v30;
  v22 = v31;
  if (!v23)
  {
LABEL_15:
    v24 = v21;
  }

  sub_1DAECEB1C();
  v25 = 0;
LABEL_18:
  v26 = sub_1DAECEB5C();
  return (*(*(v26 - 8) + 56))(v22, v25, 1, v26);
}

uint64_t sub_1DAEAE134@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  sub_1DAEAE650(v2);
  if (v10)
  {
    v11 = v10;
    sub_1DAECFDFC();
    v12 = sub_1DAECFF0C();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if (v14(v9, 1, v12) == 1)
    {
      sub_1DAD64398(v9, &unk_1ECC0A680, &unk_1DAED72C0);
      v15 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v19 = sub_1DAEAB598();
      v20 = v9;
      v15 = v19;
      (*(v13 + 8))(v20, v12);
    }

    sub_1DAECFDEC();
    if (v14(v6, 1, v12) == 1)
    {
      sub_1DAD64398(v6, &unk_1ECC0A680, &unk_1DAED72C0);
      v21 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v21 = sub_1DAEAB598();
      (*(v13 + 8))(v6, v12);
    }

    *a2 = v11;
    a2[1] = v15;
    a2[2] = v21;
    v22 = *MEMORY[0x1E6996048];
    v23 = sub_1DAECEBCC();
    v24 = *(v23 - 8);
    (*(v24 + 104))(a2, v22, v23);
    return (*(v24 + 56))(a2, 0, 1, v23);
  }

  else
  {
    v16 = sub_1DAECEBCC();
    v17 = *(*(v16 - 8) + 56);

    return v17(a2, 1, 1, v16);
  }
}

uint64_t sub_1DAEAE420@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1DAEAE950(v2);
  if (v7)
  {
    v8 = v7;
    sub_1DAECFECC();
    v9 = sub_1DAECFF0C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_1DAD64398(v6, &unk_1ECC0A680, &unk_1DAED72C0);
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v11 = sub_1DAEAB598();
      (*(v10 + 8))(v6, v9);
    }

    *a2 = v8;
    a2[1] = v11;
    a2[2] = MEMORY[0x1E69E7CC0];
    v15 = *MEMORY[0x1E6996048];
    v16 = sub_1DAECEBCC();
    v17 = *(v16 - 8);
    (*(v17 + 104))(a2, v15, v16);
    return (*(v17 + 56))(a2, 0, 1, v16);
  }

  else
  {
    v12 = sub_1DAECEBCC();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }
}

void sub_1DAEAE650(char a1)
{
  v2 = sub_1DAECFE0C();
  v3 = v2;
  if (!v2)
  {
    v10 = *MEMORY[0x1E695B4D0];
    sub_1DAECFE1C();
    v12 = v13;
    v14 = 0;
    goto LABEL_22;
  }

  v22 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 40;
    do
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      if (v23)
      {
        v7 = sub_1DAED05DC();
        if (!v7)
        {
          goto LABEL_31;
        }

        v8 = v7;
        [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

        MEMORY[0x1E127DAD0]();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DAED1E9C();
        }

        sub_1DAED1EBC();
      }

      if (v22)
      {
        sub_1DAECDF4C();
        MEMORY[0x1E127DAD0]();
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DAED1E9C();
        }

        sub_1DAED1EBC();
      }

      ++v5;

      v6 += 16;
    }

    while (v4 != v5);

    v9 = v22;
    v10 = *MEMORY[0x1E695B4D0];
    sub_1DAECFE1C();
    v12 = v11;
    if (v23)
    {
      goto LABEL_19;
    }

    v14 = 0;
    goto LABEL_22;
  }

  v10 = *MEMORY[0x1E695B4D0];
  sub_1DAECFE1C();
  v12 = v15;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_19:
  sub_1DAD674D4(0, &qword_1ECC09E90, 0x1E69DC888);
  v14 = sub_1DAED1E6C();
  if (!v9)
  {
LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  sub_1DAD674D4(0, &qword_1EE005470, 0x1E696AD98);
  v16 = sub_1DAED1E6C();
LABEL_23:
  if (a1)
  {
    v17 = v10;
  }

  else
  {
    v17 = 0;
  }

  if (a1 == 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v20 = objc_opt_self();
  v19 = v12;
  *&v21 = v19;
  [v20 gaugeProviderWithStyle:v18 gaugeColors:v14 gaugeColorLocations:v16 fillFraction:v21];
}

id sub_1DAEAE950(char a1)
{
  v47 = sub_1DAECDCEC();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A7E0, &qword_1DAEDE9E0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = sub_1DAECFE9C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DAECFEBC();
  if (v12)
  {
    v13 = sub_1DAEAEEA4(v12);
    v15 = v14;

    if (v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v13 = 0;
  }

  v17 = *MEMORY[0x1E695B4D0];
  if ((a1 & 1) == 0)
  {
    v17 = 1;
  }

  if (a1 == 2)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  sub_1DAECFEAC();
  v19 = (*(v9 + 88))(v11, v8);
  if (v19 != *MEMORY[0x1E697CB38])
  {
    if (v19 != *MEMORY[0x1E697CB30])
    {

      (*(v9 + 8))(v11, v8);
      return 0;
    }

    (*(v9 + 96))(v11, v8);
    v25 = v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A7E8, &qword_1DAEDE9E8) + 48)];
    sub_1DAD7C48C(v11, v7, &qword_1ECC0A7E0, &qword_1DAEDE9E0);
    if (v25)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = 1.0;
    }

    if (v25)
    {
      v27 = 1.0;
    }

    else
    {
      v27 = 0.0;
    }

    v28 = *(v49 + 16);
    v29 = v47;
    v28(v48, v7, v47);
    v30 = &v7[*(v5 + 36)];
    v31 = v46;
    v28(v46, v30, v29);
    if (v13)
    {
      sub_1DAD674D4(0, &qword_1ECC09E90, 0x1E69DC888);
      v32 = sub_1DAED1E6C();

      v33 = v18;
      if (v16)
      {
LABEL_24:
        sub_1DAD674D4(0, &qword_1EE005470, 0x1E696AD98);
        v34 = sub_1DAED1E6C();

LABEL_33:
        v38 = v48;
        v39 = sub_1DAECDC5C();
        v40 = sub_1DAECDC5C();
        v41 = objc_opt_self();
        *&v42 = v27;
        *&v43 = v26;
        v35 = [v41 gaugeProviderWithStyle:v33 gaugeColors:v32 gaugeColorLocations:v34 startDate:v39 startFillFraction:v40 endDate:v42 endFillFraction:v43];

        v44 = *(v49 + 8);
        v44(v31, v29);
        v44(v38, v29);
        sub_1DAD64398(v7, &qword_1ECC0A7E0, &qword_1DAEDE9E0);
        return v35;
      }
    }

    else
    {
      v32 = 0;
      v33 = v18;
      if (v16)
      {
        goto LABEL_24;
      }
    }

    v34 = 0;
    goto LABEL_33;
  }

  (*(v9 + 96))(v11, v8);
  v20 = *v11;
  v21 = v11[8];
  if (!v13)
  {
    v22 = 0;
    v23 = v20;
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_27:
    v24 = 0;
    goto LABEL_28;
  }

  sub_1DAD674D4(0, &qword_1ECC09E90, 0x1E69DC888);
  v22 = sub_1DAED1E6C();

  v23 = v20;
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_14:
  sub_1DAD674D4(0, &qword_1EE005470, 0x1E696AD98);
  v24 = sub_1DAED1E6C();

LABEL_28:
  if (v21)
  {
    v23 = 0.0;
  }

  v36 = objc_opt_self();
  *&v37 = v23;
  v35 = [v36 gaugeProviderWithStyle:v18 gaugeColors:v22 gaugeColorLocations:v24 fillFraction:v37];

  return v35;
}

void *sub_1DAEAEEA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
    for (i = a1 + 40; ; i += 16)
    {

      result = sub_1DAED05DC();
      if (!result)
      {
        break;
      }

      v4 = result;
      [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

      MEMORY[0x1E127DAD0]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DAED1E9C();
      }

      sub_1DAED1EBC();
      v5 = v7;
      sub_1DAECDF4C();
      MEMORY[0x1E127DAD0]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DAED1E9C();
      }

      sub_1DAED1EBC();

      if (!--v1)
      {
        return v5;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t CHSWatchComplicationsCurvedLabelMetricsAccessoryPlacement.complicationCurvedTextPlacement.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DAECEBFC();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E6996068];
  if (a1 == 2)
  {
    v6 = MEMORY[0x1E6996070];
  }

  if (a1 == 1)
  {
    v6 = MEMORY[0x1E6996060];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

void *sub_1DAEAF0BC(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1DAED1EAC();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

void *sub_1DAEAF158(uint64_t a1, uint64_t a2)
{
  sub_1DAED263C();
  v3 = swift_allocObject();
  v3[2] = 8;
  v3[3] = 0;
  v4 = v3 + 3;
  v3[4] = 0;
  v3[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_26:
    v23 = sub_1DAED262C();
    v24 = sub_1DAED1CBC();
    v25 = [objc_opt_self() textProviderWithFormat:v24 arguments:v23];

    return v25;
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v7 + 40 * v6), *(v7 + 40 * v6 + 24));
    result = sub_1DAED299C();
    v9 = *v4;
    v10 = result[2];
    v11 = __OFADD__(*v4, v10);
    v12 = *v4 + v10;
    if (v11)
    {
      break;
    }

    v13 = v3[4];
    if (v13 >= v12)
    {
      goto LABEL_18;
    }

    if (v13 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v14 = v3[5];
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    v3[4] = v12;
    if ((v12 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v15 = result;
    v16 = swift_slowAlloc();
    v17 = v16;
    v3[5] = v16;
    if (v14)
    {
      if (v16 != v14 || v16 >= &v14[8 * v9])
      {
        memmove(v16, v14, 8 * v9);
      }

      sub_1DAED261C();
      result = v15;
LABEL_18:
      v17 = v3[5];
      if (!v17)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v15;
    if (!v17)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v19 = result[2];
    if (v19)
    {
      v20 = result + 4;
      v21 = *v4;
      while (1)
      {
        v22 = *v20++;
        *&v17[8 * v21] = v22;
        v21 = *v4 + 1;
        if (__OFADD__(*v4, 1))
        {
          break;
        }

        *v4 = v21;
        if (!--v19)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v6 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_1DAEAF38C(uint64_t a1)
{
  sub_1DAEAFBD4(319, &qword_1ECC0A6E0, type metadata accessor for WatchComplicationsWidgetViewModel.Style);
  if (v1 <= 0x3F)
  {
    sub_1DAEAFBD4(319, &qword_1ECC0A6E8, MEMORY[0x1E697CB40]);
    if (v2 <= 0x3F)
    {
      sub_1DAEAFBD4(319, &unk_1ECC0A6F0, MEMORY[0x1E6996078]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1DAEAFBD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1DAEAFC28(uint64_t a1)
{
  sub_1DAEAFD5C(319, &qword_1ECC0A710, MEMORY[0x1E6996058]);
  if (v1 <= 0x3F)
  {
    sub_1DAEAFCE8(319);
    if (v2 <= 0x3F)
    {
      sub_1DAEAFD5C(319, &unk_1ECC0A720, MEMORY[0x1E6996080]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1DAEAFCE8(uint64_t a1)
{
  if (!qword_1ECC0A718)
  {
    sub_1DAECEC4C();
    type metadata accessor for CGPoint(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECC0A718);
    }
  }
}

void sub_1DAEAFD5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAEAFDA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAEAFE10()
{
  result = qword_1ECC0A7A0;
  if (!qword_1ECC0A7A0)
  {
    sub_1DAD674D4(255, &qword_1ECC0A798, 0x1E695B550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A7A0);
  }

  return result;
}

uint64_t sub_1DAEAFE98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAEAFEE8(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v41 = a1;
  v42 = a2;
  v40 = sub_1DAECF8EC();
  v45 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v36 - v6;
  v48 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_1DAECDCEC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  v49 = *(v3 + 24);
  os_unfair_lock_lock(*(v49 + 16));
  sub_1DAD6495C(v47, v13, &qword_1ECC07CE8, &qword_1DAED6F60);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1DAD64398(v13, &qword_1ECC07CE8, &qword_1DAED6F60);
  }

  else
  {
    v38 = v15;
    v39 = v20;
    (*(v15 + 32))(v20, v13, v14);
    sub_1DAD648F8(v41, v50);
    v47 = v3;
    v41 = *(v15 + 16);
    v21 = v14;
    v22 = v17;
    v36 = v21;
    v41(v17, v20, v21);
    v23 = v10;
    v37 = v10;
    v24 = v45;
    v25 = v40;
    v26 = *(v45 + 16);
    v27 = v43;
    v26(v43, v42, v40);
    v26(v23, v27, v25);
    v28 = &v23[*(v48 + 20)];
    sub_1DAD648F8(v50, v28);
    v29 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
    v41((v28 + *(v29 + 20)), v22, v21);
    v26(v44, v27, v25);
    sub_1DAED156C();
    (*(v24 + 8))(v27, v25);
    v30 = *(v38 + 8);
    v31 = v22;
    v32 = v36;
    v30(v31, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v33 = *(v47 + 40);
    v34 = v37;
    sub_1DADBA01C(v37, v46, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
    v35 = v33;
    [v35 addObject_];

    swift_unknownObjectRelease();
    sub_1DAEB0398();
    sub_1DADB2450(v34, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
    v30(v39, v32);
  }

  os_unfair_lock_unlock(*(v49 + 16));
}

double sub_1DAEB0398()
{
  v1 = sub_1DAED09DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAED0A3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v0 + 24) + 16));
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_processQueueEnqueued) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_processQueueEnqueued) = 1;
    v13[1] = *(v0 + 16);
    v10 = swift_allocObject();
    v13[0] = v2;
    v14 = v5;
    v11 = v10;
    swift_weakInit();
    aBlock[4] = sub_1DAEB1C1C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_19;
    v12 = _Block_copy(aBlock);

    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v15 = MEMORY[0x1E69E7CC0];
    sub_1DAD94CC0(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD94C6C(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v8, v4, v12);
    _Block_release(v12);
    (*(v13[0] + 8))(v4, v1);
    (*(v6 + 8))(v8, v14);
  }

  return result;
}
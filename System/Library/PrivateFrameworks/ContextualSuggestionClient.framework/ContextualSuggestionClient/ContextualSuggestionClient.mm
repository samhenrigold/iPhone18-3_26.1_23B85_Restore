uint64_t sub_244194024(void *a1, void *a2)
{
  v4 = sub_2441D8B8C();
  MEMORY[0x28223BE20](v4);
  sub_244194424(a1, a2);
  return 1;
}

void sub_244194424(void *a1, void *a2)
{
  v4 = [a1 atx_intentType];
  v5 = sub_2441D8C6C();
  v7 = v6;

  v8 = [a2 atx_intentType];
  v9 = sub_2441D8C6C();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_2441D91CC();

    if ((v13 & 1) == 0)
    {
      sub_2441994A8();
      swift_allocError();
      v15 = v14;
      v16 = [a1 atx_intentType];
      v17 = sub_2441D8C6C();
      v19 = v18;

      v20 = [a2 atx_intentType];
      v21 = sub_2441D8C6C();
      v23 = v22;

      *v15 = v17;
      *(v15 + 8) = v19;
      *(v15 + 16) = v21;
      *(v15 + 24) = v23;
      *(v15 + 56) = 0;
LABEL_17:
      swift_willThrow();
      return;
    }
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24 || (v25 = v24, objc_opt_self(), (v26 = swift_dynamicCastObjCClass()) == 0))
  {
    v34 = [a1 atx_nonNilParametersByName];
    if (v34)
    {
      v35 = v34;
      v36 = [a2 atx_nonNilParametersByName];
      if (v36)
      {
        v37 = v36;
        if ([v35 atx:v36 isFuzzyMatch:?])
        {

          return;
        }

        sub_2441994A8();
        swift_allocError();
        *v38 = v35;
        *(v38 + 8) = v37;
        *(v38 + 56) = 5;
        goto LABEL_17;
      }

      goto LABEL_73;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v27 = v26;
  v93 = a1;
  v28 = a2;
  v29 = [v25 launchId];
  if (v29)
  {
    v30 = v29;
    v31 = sub_2441D8C6C();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v39 = v28;
  v92 = v27;
  v40 = [v27 launchId];
  if (!v40)
  {
    if (!v33)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v41 = v40;
  v42 = sub_2441D8C6C();
  v44 = v43;

  if (!v33)
  {
    if (!v44)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  if (!v44)
  {
LABEL_28:

    goto LABEL_29;
  }

  if (v31 == v42 && v33 == v44)
  {

    v90 = v39;

    goto LABEL_38;
  }

  v55 = sub_2441D91CC();

  if ((v55 & 1) == 0)
  {
LABEL_29:
    sub_2441994A8();
    swift_allocError();
    v46 = v45;
    v47 = [v25 launchId];

    if (v47)
    {
      v48 = sub_2441D8C6C();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    v51 = [v92 launchId];

    if (v51)
    {
      v52 = sub_2441D8C6C();
      v54 = v53;
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    *v46 = v48;
    *(v46 + 8) = v50;
    *(v46 + 16) = v52;
    *(v46 + 24) = v54;
    *(v46 + 56) = 1;
    swift_willThrow();

    return;
  }

LABEL_37:

  v90 = v39;
LABEL_38:
  v56 = [v25 atx_comparableParameters];
  v57 = sub_2441D8C0C();

  v58 = [v92 atx_comparableParameters];
  v59 = sub_2441D8C0C();

  if (*(v57 + 16) != *(v59 + 16))
  {
    sub_2441994A8();
    swift_allocError();
    v76 = v75;
    v77 = sub_2441D8BFC();

    v78 = sub_2441D8BFC();

    *v76 = v77;
    *(v76 + 8) = v78;
    *(v76 + 56) = 2;
    swift_willThrow();

    return;
  }

  v60 = 0;
  v61 = v57 + 64;
  v62 = 1 << *(v57 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v57 + 64);
  v65 = (v62 + 63) >> 6;
  v91 = v57;
  if (!v64)
  {
LABEL_43:
    if (v65 <= v60 + 1)
    {
      v67 = v60 + 1;
    }

    else
    {
      v67 = v65;
    }

    v68 = v67 - 1;
    while (1)
    {
      v66 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v66 >= v65)
      {
        v64 = 0;
        v101 = 0;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        goto LABEL_51;
      }

      v64 = *(v61 + 8 * v66);
      ++v60;
      if (v64)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
    goto LABEL_72;
  }

  while (1)
  {
    v66 = v60;
LABEL_50:
    v69 = __clz(__rbit64(v64));
    v64 &= v64 - 1;
    v70 = v69 | (v66 << 6);
    sub_244194D44(*(v57 + 48) + 40 * v70, v95);
    sub_244194F5C(*(v57 + 56) + 32 * v70, v94);
    v97 = v95[0];
    v98 = v95[1];
    *&v99 = v96;
    sub_244194FB8(v94, (&v99 + 8));
    v68 = v66;
LABEL_51:
    v104[0] = v99;
    v104[1] = v100;
    v105 = v101;
    v102 = v97;
    v103 = v98;
    if (!*(&v98 + 1))
    {

      return;
    }

    v97 = v102;
    v98 = v103;
    *&v99 = *&v104[0];
    sub_244194FB8((v104 + 8), v95);
    sub_244194F5C(v95, v94);
    sub_244194FC8(0, &qword_280F94CF0, 0x277D82BB8);
    if (!swift_dynamicCast())
    {

      sub_2441994A8();
      swift_allocError();
      v87 = v86;
      sub_244194F5C(v95, v86);
      *(v87 + 56) = 3;
      swift_willThrow();

      goto LABEL_70;
    }

    v71 = v106;
    if (!*(v59 + 16))
    {
      break;
    }

    v72 = sub_244194F18(&v97);
    if ((v73 & 1) == 0)
    {
      break;
    }

    sub_244194F5C(*(v59 + 56) + 32 * v72, v94);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v74 = v106;
    if (![v71 isEqual_])
    {

      sub_2441994A8();
      swift_allocError();
      v89 = v88;
      sub_244194D44(&v97, v88);
      *(v89 + 40) = v71;
      *(v89 + 48) = v74;
      *(v89 + 56) = 4;
      swift_willThrow();

      goto LABEL_70;
    }

    __swift_destroy_boxed_opaque_existential_0(v95);
    sub_244194E68(&v97);
    v60 = v68;
    v57 = v91;
    if (!v64)
    {
      goto LABEL_43;
    }
  }

  sub_2441994A8();
  swift_allocError();
  v80 = v79;
  v81 = [v92 serializedParameters];
  v82 = sub_2441D8C0C();

  if (*(v82 + 16))
  {
    v83 = sub_244194F18(&v97);
    v84 = v93;
    if (v85)
    {
      sub_244194F5C(*(v82 + 56) + 32 * v83, v80);
    }

    else
    {
      *v80 = 0u;
      *(v80 + 16) = 0u;
    }
  }

  else
  {
    *v80 = 0u;
    *(v80 + 16) = 0u;
    v84 = v93;
  }

  *(v80 + 56) = 3;
  swift_willThrow();

LABEL_70:

  __swift_destroy_boxed_opaque_existential_0(v95);
  sub_244194E68(&v97);
}

unint64_t sub_244194DA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_244194D44(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D5A780](v9, a1);
      sub_244194E68(v9);
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

unint64_t sub_244194F18(uint64_t a1)
{
  v2 = sub_2441D8F7C();

  return sub_244194DA0(a1, v2);
}

uint64_t sub_244194F5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_244194FB8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_244194FC8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t static Logger.ambient.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F94E80 != -1)
  {
    swift_once();
  }

  v2 = sub_2441D8B8C();
  v3 = __swift_project_value_buffer(v2, qword_280F94E88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id ContextualSuggestion.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC26ContextualSuggestionClient20ContextualSuggestion_identifier];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ContextualSuggestion();
  return objc_msgSendSuper2(&v5, sel_init);
}

id ContextualWidgetSuggestion.init(identifier:extensionBundleIdentifier:containerBundleIdentifier:kind:intent:scoreSpecification:blendingClientModelSpecification:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = (v11 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier);
  *v12 = a3;
  v12[1] = a4;
  v13 = (v11 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier);
  *v13 = a5;
  v13[1] = a6;
  v14 = (v11 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind);
  *v14 = a7;
  v14[1] = a8;
  *(v11 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent) = a9;
  *(v11 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_scoreSpecification) = a10;
  *(v11 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification) = a11;
  return ContextualSuggestion.init(identifier:)(a1, a2);
}

void sub_24419531C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_244195384()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    os_unfair_lock_lock((v2 + 24));
    sub_24419546C((v2 + 16), v6);
    os_unfair_lock_unlock((v2 + 24));
    v3 = v6[0];
    if (v6[0])
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v1 + 120);
        ObjectType = swift_getObjectType();
        (*(v4 + 8))(v1, v3, ObjectType, v4);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_24419546C@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v5 = sub_2441D8B8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = *a1;
  swift_beginAccess();
  LODWORD(a1) = *(v12 + 40);
  v13 = sub_2441957AC();
  v14 = *(v6 + 16);
  if (a1 == 1)
  {
    v14(v11, v13, v5);
    v15 = sub_2441D8B7C();
    v16 = sub_2441D8E1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = a3;
      v36[0] = v18;
      v19 = v18;
      *v17 = 136315138;
      v20 = sub_2441D92EC();
      v22 = sub_244195848(v20, v21, v36);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_244192000, v15, v16, "%s: notification suspension timer fired. Notification was pending, so notifying delegate", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v23 = v19;
      a3 = v35;
      MEMORY[0x245D5B3C0](v23, -1, -1);
      MEMORY[0x245D5B3C0](v17, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    *(v12 + 40) = 0;
    swift_beginAccess();
    *a3 = *(v12 + 16);
  }

  else
  {
    v14(v9, v13, v5);
    v25 = sub_2441D8B7C();
    v26 = sub_2441D8E1C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = a3;
      v29 = swift_slowAlloc();
      v36[0] = v29;
      *v27 = 136315138;
      v30 = sub_2441D92EC();
      v32 = sub_244195848(v30, v31, v36);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_244192000, v25, v26, "%s: notification suspension timer fired. No notification pending, not notifying delegate", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v33 = v29;
      a3 = v28;
      MEMORY[0x245D5B3C0](v33, -1, -1);
      MEMORY[0x245D5B3C0](v27, -1, -1);
    }

    result = (*(v6 + 8))(v9, v5);
    *a3 = 0;
  }

  return result;
}

uint64_t sub_2441957AC()
{
  if (qword_27EDD7FA0 != -1)
  {
    swift_once();
  }

  v0 = sub_2441D8B8C();

  return __swift_project_value_buffer(v0, qword_27EDD7FA8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_244195848(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_244195914(v11, 0, 0, 1, a1, a2);
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
    sub_244194F5C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_244195914(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2441A9108(a5, a6);
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
    result = sub_2441D901C();
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

uint64_t ATXWidgetStackSuggestion.description.getter()
{
  v1 = v0;
  sub_2441D8FEC();
  MEMORY[0x245D5A4A0](0xD00000000000002DLL, 0x80000002441DFAC0);
  v2 = [v0 stackIdentifier];
  v3 = sub_2441D8C6C();
  v5 = v4;

  MEMORY[0x245D5A4A0](v3, v5);

  MEMORY[0x245D5A4A0](0x646957706F74202CLL, 0xED0000203A746567);
  [v1 topWidget];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6028, qword_2441DC698);
  v6 = sub_2441D8C7C();
  MEMORY[0x245D5A4A0](v6);

  MEMORY[0x245D5A4A0](0xD000000000000014, 0x80000002441DFAF0);
  v7 = [v1 suggestedWidgets];
  sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  sub_244195E64();
  sub_2441D8DCC();

  v8 = sub_2441D8DDC();
  v10 = v9;

  MEMORY[0x245D5A4A0](v8, v10);

  MEMORY[0x245D5A4A0](15913, 0xE200000000000000);
  return 0;
}

unint64_t sub_244195E64()
{
  result = qword_27EDD5DA0;
  if (!qword_27EDD5DA0)
  {
    sub_244194FC8(255, &qword_27EDD5AF8, off_278E089D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5DA0);
  }

  return result;
}

uint64_t _s26ContextualSuggestionClient0a6WidgetB0C25containerBundleIdentifierSSSgvg_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier);

  return v1;
}

Swift::Void __swiftcall ContextualSuggestionContext.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_representation);
  v4 = sub_2441D8C4C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  type metadata accessor for ContextualSuggestion();
  v5 = sub_2441D8CFC();
  v6 = sub_2441D8C4C();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

Swift::Void __swiftcall ContextRepresentation.encode(with:)(NSCoder with)
{
  v2 = sub_2441D8C4C();
  v3 = sub_2441D8C4C();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_2441D8C4C();
  v5 = sub_2441D8C4C();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

void sub_2441963F4(void *a1)
{
  sub_24419660C(a1);
  v3 = sub_2441D8C4C();
  v4 = sub_2441D8C4C();
  [a1 encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier + 8))
  {
    v5 = sub_2441D8C4C();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2441D8C4C();
  [a1 encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = sub_2441D8C4C();
  v8 = sub_2441D8C4C();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent);
  v10 = sub_2441D8C4C();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_scoreSpecification);
  v12 = sub_2441D8C4C();
  [a1 encodeObject:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification);
  v14 = sub_2441D8C4C();
  [a1 encodeObject:v13 forKey:v14];
}

void sub_24419660C(void *a1)
{
  v2 = sub_2441D8C4C();
  v3 = sub_2441D8C4C();
  [a1 encodeObject:v2 forKey:v3];
}

id ContextualSuggestionSnapshot.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_2441D8B8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5B40, &qword_2441DAF38);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2441DAF20;
  *(v7 + 32) = sub_244196970();
  *(v7 + 40) = type metadata accessor for ContextualSuggestionContext();
  sub_2441D8ECC();

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD62E0, &qword_2441DD3A8);
    if (swift_dynamicCast())
    {
      v8 = v18;
      v9 = objc_allocWithZone(ObjectType);
      *&v9[OBJC_IVAR___ATXContextualSuggestionSnapshot_contexts] = v8;
      v17.receiver = v9;
      v17.super_class = ObjectType;
      v10 = objc_msgSendSuper2(&v17, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v10;
    }
  }

  else
  {
    sub_2441AA43C(v19);
  }

  v12 = sub_2441994FC();
  (*(v4 + 16))(v6, v12, v3);
  v13 = sub_2441D8B7C();
  v14 = sub_2441D8E0C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_244192000, v13, v14, "coder missing contexts", v15, 2u);
    MEMORY[0x245D5B3C0](v15, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_244196970()
{
  result = qword_280F94B00;
  if (!qword_280F94B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F94B00);
  }

  return result;
}

NSObject *ContextualSuggestionContext.init(coder:)(NSObject *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_2441D8B8C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  type metadata accessor for ContextRepresentation();
  v10 = sub_2441D8EBC();
  if (v10)
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5B40, &qword_2441DAF38);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2441DAF20;
    *(v12 + 32) = type metadata accessor for ContextualSuggestion();
    *(v12 + 40) = sub_244196970();
    sub_2441D8ECC();

    if (v29)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B10, &qword_2441DAEF8);
      if (swift_dynamicCast())
      {
        v13 = v27;
        v14 = objc_allocWithZone(ObjectType);
        *&v14[OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_representation] = v11;
        *&v14[OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_suggestions] = v13;
        v26.receiver = v14;
        v26.super_class = ObjectType;
        v15 = v11;
        v16 = [&v26 init];

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        return v16;
      }
    }

    else
    {
      sub_2441AA43C(v28);
    }

    v22 = sub_2441994FC();
    (*(v4 + 16))(v7, v22, v3);
    v19 = sub_2441D8B7C();
    v23 = sub_2441D8E0C();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_244192000, v19, v23, "coder missing suggestions", v24, 2u);
      MEMORY[0x245D5B3C0](v24, -1, -1);
    }

    else
    {

      v19 = a1;
      a1 = v11;
    }
  }

  else
  {
    v18 = sub_2441994FC();
    (*(v4 + 16))(v9, v18, v3);
    v19 = sub_2441D8B7C();
    v20 = sub_2441D8E0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_244192000, v19, v20, "coder missing representation", v21, 2u);
      MEMORY[0x245D5B3C0](v21, -1, -1);
    }

    v7 = v9;
  }

  (*(v4 + 8))(v7, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id ContextRepresentation.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_2441D8B8C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  sub_244197164();
  v10 = sub_2441D8EBC();
  if (!v10)
  {
    v28 = sub_2441994FC();
    (*(v4 + 16))(v9, v28, v3);
    v25 = sub_2441D8B7C();
    v29 = sub_2441D8E0C();
    if (!os_log_type_enabled(v25, v29))
    {
      v7 = v9;
      goto LABEL_11;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_244192000, v25, v29, "coder missing identifier", v27, 2u);
    v7 = v9;
    goto LABEL_9;
  }

  v11 = v10;
  v12 = sub_2441D8C6C();
  v14 = v13;

  v15 = sub_2441D8EBC();
  if (v15)
  {
    v31 = 0;
    v32 = 0;
    v16 = v15;
    sub_2441D8C5C();

    v17 = v32;
    if (v32)
    {
      v18 = v31;
      v19 = objc_allocWithZone(ObjectType);
      v20 = &v19[OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_identifier];
      *v20 = v12;
      v20[1] = v14;
      v21 = &v19[OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_localizedDisplayName];
      *v21 = v18;
      *(v21 + 1) = v17;
      v30.receiver = v19;
      v30.super_class = ObjectType;
      v22 = objc_msgSendSuper2(&v30, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v22;
    }
  }

  v24 = sub_2441994FC();
  (*(v4 + 16))(v7, v24, v3);
  v25 = sub_2441D8B7C();
  v26 = sub_2441D8E0C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_244192000, v25, v26, "coder missing localizedDisplayName", v27, 2u);
LABEL_9:
    MEMORY[0x245D5B3C0](v27, -1, -1);
  }

LABEL_11:

  (*(v4 + 8))(v7, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_244197164()
{
  result = qword_27EDD6390;
  if (!qword_27EDD6390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDD6390);
  }

  return result;
}

uint64_t ContextualWidgetSuggestion.init(coder:)(void *a1)
{
  v2 = sub_2441D8B8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  sub_244194FC8(0, &qword_27EDD6390, 0x277CCACA8);
  v12 = sub_2441D8EBC();
  if (!v12)
  {
    v27 = sub_2441994FC();
    (*(v3 + 16))(v11, v27, v2);
    v24 = sub_2441D8B7C();
    v28 = sub_2441D8E0C();
    if (!os_log_type_enabled(v24, v28))
    {
      v6 = v11;
      goto LABEL_21;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_244192000, v24, v28, "coder missing identifier", v26, 2u);
    v6 = v11;
    goto LABEL_20;
  }

  v13 = v12;
  v44 = sub_2441D8C6C();
  v15 = v14;

  v16 = sub_2441D8EBC();
  if (!v16 || (v45 = 0, v46 = 0, v17 = v16, sub_2441D8C5C(), v17, (v18 = v46) == 0))
  {

    v23 = sub_2441994FC();
    (*(v3 + 16))(v9, v23, v2);
    v24 = sub_2441D8B7C();
    v25 = sub_2441D8E0C();
    if (!os_log_type_enabled(v24, v25))
    {
      v6 = v9;
      goto LABEL_21;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_244192000, v24, v25, "coder missing extensionBundleIdentifier", v26, 2u);
    v6 = v9;
LABEL_20:
    MEMORY[0x245D5B3C0](v26, -1, -1);
    goto LABEL_21;
  }

  v19 = v45;
  v20 = sub_2441D8EBC();
  if (v20)
  {
    v45 = 0;
    v46 = 0;
    v21 = v20;
    sub_2441D8C5C();

    v22 = v45;
    if (!v46)
    {
      v22 = 0;
    }

    v42 = v22;
    v43 = v46;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v29 = sub_2441D8EBC();
  if (v29)
  {
    v45 = 0;
    v46 = 0;
    v30 = v29;
    sub_2441D8C5C();

    v31 = v46;
    if (v46)
    {
      v41 = v45;
      sub_244194FC8(0, &qword_27EDD60B8, 0x277CD3D30);
      v32 = sub_2441D8EBC();
      sub_244194FC8(0, &qword_27EDD6278, 0x277D42078);
      v33 = v19;
      v34 = sub_2441D8EBC();
      sub_244194FC8(0, &qword_27EDD6280, 0x277D42090);
      v35 = sub_2441D8EBC();
      ObjectType = swift_getObjectType();
      v37 = (*(ObjectType + 176))(v44, v15, v33, v18, v42, v43, v41, v31, v32, v35, v34);

      swift_deallocPartialClassInstance();
      return v37;
    }
  }

  v39 = sub_2441994FC();
  (*(v3 + 16))(v6, v39, v2);
  v24 = sub_2441D8B7C();
  v40 = sub_2441D8E0C();
  if (os_log_type_enabled(v24, v40))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_244192000, v24, v40, "coder missing kind", v26, 2u);
    goto LABEL_20;
  }

LABEL_21:

  (*(v3 + 8))(v6, v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id ContextualWidgetSuggestion.__allocating_init(identifier:extensionBundleIdentifier:containerBundleIdentifier:kind:intent:scoreSpecification:blendingClientModelSpecification:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = objc_allocWithZone(v11);
  v19 = &v18[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier];
  *v19 = a3;
  *(v19 + 1) = a4;
  v20 = &v18[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier];
  *v20 = a5;
  *(v20 + 1) = a6;
  v21 = &v18[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind];
  *v21 = a7;
  *(v21 + 1) = a8;
  *&v18[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent] = a9;
  *&v18[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_scoreSpecification] = a10;
  *&v18[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification] = a11;
  return ContextualSuggestion.init(identifier:)(a1, a2);
}

uint64_t sub_2441979A8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2441979F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_244197A58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_244198A50;

  return sub_244197B10(a1, v4);
}

uint64_t sub_244197B10(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_244198B48;

  return v6(a1);
}

uint64_t sub_244197C08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_244198A50;

  return sub_244197DA0(a1, v4, v5, v6);
}

uint64_t sub_244197CD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_244198A54;

  return sub_244197DA0(a1, v4, v5, v6);
}

uint64_t sub_244197DA0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_244198A54;

  return v7();
}

uint64_t sub_244197E88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_244198A50;

  return sub_244197F48(v2, v3, v4);
}

uint64_t sub_244197F48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_244198A50;

  return v6();
}

uint64_t sub_244198030()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_244198A54;

  return sub_2441980E4(v2, v3, v4);
}

uint64_t sub_2441980E4(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  type metadata accessor for ContextualSuggestionSnapshot();
  v4 = sub_2441D8C0C();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_2441986DC;

  return sub_2441981F0(v4);
}

uint64_t sub_2441981F0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_2441D8BAC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_2441D8BEC();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24419830C, 0, 0);
}

uint64_t sub_24419830C()
{
  v1 = v0[16];
  v2 = v0[13];
  v11 = v0[15];
  v12 = v0[14];
  v3 = v0[11];
  v5 = v0[9];
  v4 = v0[10];
  v10 = v0[12];
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v0[6] = sub_2441988CC;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2441988C4;
  v0[5] = &block_descriptor_15;
  v7 = _Block_copy(v0 + 2);

  sub_2441D8BDC();
  v0[8] = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v1, v2, v7);
  _Block_release(v7);
  (*(v10 + 8))(v2, v3);
  (*(v11 + 8))(v1, v12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_244198540()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
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

uint64_t sub_2441985F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_244198640(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_244198688(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2441986DC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = sub_2441D88AC();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_244198880(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2441988CC()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + 152);

  v4 = v2(v3);
  return (*(*v1 + 288))(v4);
}

uint64_t sub_244198958(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_244198A54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_244198B48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_244198C40()
{
  v1 = (*(*v0 + 144))();
  if (!v1)
  {
    return;
  }

  if (!*(v1 + 16))
  {

    return;
  }

  v2 = 0;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v27 = v7;
  v28 = v1;
  while (v6)
  {
LABEL_13:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v2 << 6);
    v11 = (*(v1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(v1 + 56) + 8 * v10);
    v15 = *(*v29 + 168);

    v16 = v14;
    v17 = v15();
    if (*(v17 + 16))
    {
      v18 = sub_244198F90(v13, v12);
      v20 = v19;

      if (v20)
      {
        v21 = *(*(v17 + 56) + 8 * v18);

        v22 = [v21 allObjects];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E20, &qword_2441DBC28);
        v23 = sub_2441D8D0C();

        if (v23 >> 62)
        {
          v24 = sub_2441D8F5C();
          if (v24)
          {
LABEL_17:
            if (v24 < 1)
            {
LABEL_34:
              __break(1u);
              return;
            }

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v26 = MEMORY[0x245D5A7F0](i, v23);
              }

              else
              {
                v26 = *(v23 + 8 * i + 32);
                swift_unknownObjectRetain();
              }

              [v26 serviceDidUpdateWithSnapshot_];
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_7;
    }

LABEL_7:

    v7 = v27;
    v1 = v28;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_13;
    }
  }
}

unint64_t sub_244198F90(uint64_t a1, uint64_t a2)
{
  sub_2441D924C();
  sub_2441D8C9C();
  v4 = sub_2441D926C();

  return sub_244199008(a1, a2, v4);
}

unint64_t sub_244199008(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2441D91CC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_244199110(uint64_t a1)
{
  v3 = v1[5];
  os_unfair_lock_lock((v3 + 24));
  sub_2441991D8((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  result = (*(*v1 + 112))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v1, a1, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2441991D8(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

id _s26ContextualSuggestionClient013CarPlayWidgetB8ProviderC8provider_9didUpdateyAA0abG0C_AA0aB8SnapshotCtF_0()
{
  v1 = v0;
  v2 = sub_2441D8B8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2441957AC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2441D8B7C();
  v8 = sub_2441D8E1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_2441D92EC();
    v13 = sub_244195848(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_244192000, v7, v8, "%s: suggestion provider updated snapshot, requesting coalesced refresh", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245D5B3C0](v10, -1, -1);
    MEMORY[0x245D5B3C0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  result = *(v1 + 104);
  if (result)
  {
    return [result runAfterDelaySeconds:0 coalescingBehavior:1.0];
  }

  __break(1u);
  return result;
}

unint64_t sub_2441994A8()
{
  result = qword_280F94B18;
  if (!qword_280F94B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F94B18);
  }

  return result;
}

uint64_t sub_2441994FC()
{
  if (qword_280F94EA0 != -1)
  {
    swift_once();
  }

  v0 = sub_2441D8B8C();

  return __swift_project_value_buffer(v0, qword_280F94EA8);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_244199598()
{
  sub_244199ABC(v0, &v44);
  if (v49 > 2u)
  {
    if (v49 == 3)
    {
      v41 = v44;
      v42 = v45;
      v38[0] = 0;
      v38[1] = 0xE000000000000000;
      sub_2441D8FEC();

      v39 = 0xD000000000000018;
      v40 = 0x80000002441DF590;
      sub_2441BD0D4(&v41, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5B50, &unk_2441DAF40);
      v21 = sub_2441D8C7C();
      MEMORY[0x245D5A4A0](v21);

      v18 = v39;
      sub_2441AA43C(&v41);
    }

    else
    {
      if (v49 != 4)
      {
        v23 = *(&v44 + 1);
        v24 = v44;
        *&v41 = 0;
        *(&v41 + 1) = 0xE000000000000000;
        sub_2441D8FEC();
        MEMORY[0x245D5A4A0](0xD00000000000002ELL, 0x80000002441DF560);
        v30 = [v24 description];
        v31 = sub_2441D8C6C();
        v33 = v32;

        MEMORY[0x245D5A4A0](v31, v33);

        MEMORY[0x245D5A4A0](544437792, 0xE400000000000000);
        v29 = [v23 description];
        goto LABEL_26;
      }

      v8 = v47;
      v7 = v48;
      v41 = v44;
      v42 = v45;
      v43 = v46;
      sub_2441D8FEC();

      v9 = sub_2441D8F6C();
      MEMORY[0x245D5A4A0](v9);

      MEMORY[0x245D5A4A0](0x617571656E752027, 0xEB00000000203A6CLL);
      v10 = [v8 description];
      v11 = sub_2441D8C6C();
      v13 = v12;

      MEMORY[0x245D5A4A0](v11, v13);

      MEMORY[0x245D5A4A0](544437792, 0xE400000000000000);
      v14 = [v7 description];
      v15 = sub_2441D8C6C();
      v17 = v16;

      MEMORY[0x245D5A4A0](v15, v17);

      v18 = 0x6574656D61726170;
      sub_244194E68(&v41);
    }

    return v18;
  }

  if (v49)
  {
    if (v49 == 1)
    {
      v1 = v44;
      v2 = v45;
      sub_2441D8FEC();

      *&v41 = 0xD000000000000019;
      *(&v41 + 1) = 0x80000002441DF5E0;
      if (*(&v1 + 1))
      {
        v3 = v1;
      }

      else
      {
        v3 = 7104878;
      }

      if (*(&v1 + 1))
      {
        v4 = *(&v1 + 1);
      }

      else
      {
        v4 = 0xE300000000000000;
      }

      MEMORY[0x245D5A4A0](v3, v4);

      MEMORY[0x245D5A4A0](0x272073762027, 0xE600000000000000);
      if (*(&v2 + 1))
      {
        v5 = v2;
      }

      else
      {
        v5 = 7104878;
      }

      if (*(&v2 + 1))
      {
        v6 = *(&v2 + 1);
      }

      else
      {
        v6 = 0xE300000000000000;
      }

      MEMORY[0x245D5A4A0](v5, v6);
      goto LABEL_21;
    }

    v23 = *(&v44 + 1);
    v24 = v44;
    sub_2441D8FEC();

    *&v41 = 0xD000000000000020;
    *(&v41 + 1) = 0x80000002441DF5B0;
    v25 = [v24 description];
    v26 = sub_2441D8C6C();
    v28 = v27;

    MEMORY[0x245D5A4A0](v26, v28);

    MEMORY[0x245D5A4A0](544437792, 0xE400000000000000);
    v29 = [v23 description];
LABEL_26:
    v34 = v29;
    v35 = sub_2441D8C6C();
    v37 = v36;

    MEMORY[0x245D5A4A0](v35, v37);

    return v41;
  }

  v19 = v44;
  v20 = v45;
  sub_2441D8FEC();

  *&v41 = 0xD000000000000019;
  *(&v41 + 1) = 0x80000002441DF5E0;
  MEMORY[0x245D5A4A0](v19, *(&v19 + 1));

  MEMORY[0x245D5A4A0](0x272073762027, 0xE600000000000000);
  MEMORY[0x245D5A4A0](v20, *(&v20 + 1));
LABEL_21:

  MEMORY[0x245D5A4A0](39, 0xE100000000000000);
  return v41;
}

void sub_244199AF4()
{
  v1 = v0;
  sub_2441B540C(&v260);
  if (v261)
  {
    sub_2441B8138(&v260, &v262);
    type metadata accessor for WidgetStackSuggestionGenerator(0);
    v2 = sub_2441D8B7C();
    v3 = sub_2441D8E1C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_244192000, v2, v3, "Loaded debug rotation", v4, 2u);
      MEMORY[0x245D5B3C0](v4, -1, -1);
    }

    sub_2441B5A64(&v262);
    __swift_destroy_boxed_opaque_existential_0(&v262);
    return;
  }

  sub_2441979F8(&v260, &qword_27EDD5DB8, &qword_2441DBA38);
  v5 = *(v0 + 8);
  v262 = MEMORY[0x277D84F90];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_24:
    v255 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = sub_2441D8F5C();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_7:
  v7 = 0;
  v255 = MEMORY[0x277D84F90];
  do
  {
    v8 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245D5A7F0](v8, v5);
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      type metadata accessor for ContextualWidgetSuggestion();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    MEMORY[0x245D5A4E0]();
    if (*((v262 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v262 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2441D8D2C();
    }

    sub_2441D8D4C();
    v255 = v262;
  }

  while (v7 != v6);
LABEL_25:
  type metadata accessor for WidgetStackSuggestionGenerator(0);

  v11 = sub_2441D8B7C();
  v12 = sub_2441D8E1C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v262 = v14;
    *v13 = 136315138;
    v15 = type metadata accessor for ContextualWidgetSuggestion();
    v16 = MEMORY[0x245D5A510](v255, v15);
    v18 = sub_244195848(v16, v17, &v262);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_244192000, v11, v12, "Suggestions: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245D5B3C0](v14, -1, -1);
    MEMORY[0x245D5B3C0](v13, -1, -1);
  }

  v19 = *v1;
  v236 = *v1 >> 62;
  if (v236)
  {
    goto LABEL_268;
  }

  v257 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
  v256 = v1;
  v259 = v19;
  if (v257)
  {
    if (v257 < 1)
    {
      goto LABEL_272;
    }

    for (i = 0; i != v257; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245D5A7F0](i, v19);
      }

      else
      {
      }

      sub_2441B2ED4(v255);
    }
  }

  if (v255 >> 62)
  {
    v21 = sub_2441D8F5C();
    if (!v21)
    {
      goto LABEL_237;
    }
  }

  else
  {
    v21 = *((v255 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
LABEL_237:

      if (v236)
      {
        v212 = sub_2441D8F5C();
      }

      else
      {
        v212 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v213 = MEMORY[0x277D84F90];
      if (!v212)
      {
        return;
      }

      v262 = MEMORY[0x277D84F90];
      sub_2441D904C();
      if (v212 < 0)
      {
        goto LABEL_273;
      }

      v214 = 0;
      v215 = v19 & 0xC000000000000001;
      while (1)
      {
        if (v215)
        {
          v216 = MEMORY[0x245D5A7F0](v214, v19);
          v217 = *(v216 + 32);
          if (!v217)
          {
LABEL_248:
            v219 = [*(v216 + 16) identifier];
            if (!v219)
            {
              sub_2441D8C6C();
              v219 = sub_2441D8C4C();
            }

            if (v213 >> 62 && sub_2441D8F5C())
            {
              sub_2441B7AA4(v213);
            }

            v220 = objc_allocWithZone(ATXWidgetStackSuggestion);
            sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
            sub_244195E64();
            v221 = sub_2441D8DAC();

            [v220 initWithStackIdentifier:v219 topWidget:0 suggestedWidgets:v221];

            v19 = v259;
            goto LABEL_245;
          }
        }

        else
        {
          v216 = *(v19 + 8 * v214 + 32);

          v217 = *(v216 + 32);
          if (!v217)
          {
            goto LABEL_248;
          }
        }

        v218 = v217;

LABEL_245:
        ++v214;
        sub_2441D902C();
        sub_2441D905C();
        sub_2441D906C();
        sub_2441D903C();
        if (v212 == v214)
        {
          return;
        }
      }
    }
  }

  v227 = v21;
  v22 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v236)
  {
    v23 = sub_2441D8F5C();
  }

  else
  {
    v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v244 = 0;
  v24 = v255 & 0xC000000000000001;
  v258 = v19 & 0xC000000000000001;
  v252 = v19 & 0xFFFFFFFFFFFFFF8;
  v253 = v23;
  while (1)
  {
    if (v24)
    {
      v25 = MEMORY[0x245D5A7F0]();
      v26 = v244 + 1;
      if (__OFADD__(v244, 1))
      {
        goto LABEL_266;
      }
    }

    else
    {
      if (v244 >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_274;
      }

      v25 = *(v255 + 32 + 8 * v244);
      v26 = v244 + 1;
      if (__OFADD__(v244, 1))
      {
        goto LABEL_266;
      }
    }

    v1 = v25;
    v244 = v26;
    if (!v23)
    {
LABEL_236:

      goto LABEL_237;
    }

    v27 = 0;
    while (1)
    {
      if (v258)
      {
        v28 = MEMORY[0x245D5A7F0](v27, v19);
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_255;
        }
      }

      else
      {
        if (v27 >= *(v22 + 16))
        {
          goto LABEL_256;
        }

        v28 = *(v19 + 8 * v27 + 32);

        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          v257 = sub_2441D8F5C();
          goto LABEL_29;
        }
      }

      v30 = *(v28 + 32);
      v31 = v30;

      if (!v30)
      {
        break;
      }

      ++v27;
      if (v29 == v23)
      {
        goto LABEL_236;
      }
    }

    v32 = v1;
    sub_2441B5F78(v1);
    v254 = v1;
    v1 = v256;
    v33 = *v256;
    v232 = *v256 >> 62;
    if (v232)
    {
      v34 = sub_2441D8F5C();
      v246 = v33;
      if (!v34)
      {
        goto LABEL_108;
      }

LABEL_62:
      v35 = 0;
      v36 = v33 & 0xC000000000000001;
      v238 = v33 + 32;
      v240 = (v33 & 0xFFFFFFFFFFFFFF8);
      v237 = v34;
      v234 = v33 & 0xC000000000000001;
      while (1)
      {
        while (1)
        {
          if (v36)
          {
            v1 = MEMORY[0x245D5A7F0](v35, v33);
            v37 = __OFADD__(v35++, 1);
            if (v37)
            {
              goto LABEL_261;
            }
          }

          else
          {
            if (v35 >= v240[2])
            {
              goto LABEL_265;
            }

            v1 = *(v238 + 8 * v35);

            v37 = __OFADD__(v35++, 1);
            if (v37)
            {
              goto LABEL_261;
            }
          }

          if (!*(v1 + 32))
          {
            v38 = [*(v1 + 16) topWidgetIdentifier];
            if (v38)
            {
              break;
            }
          }

          if (v35 == v34)
          {
            goto LABEL_108;
          }
        }

        v242 = v35;
        v39 = v38;
        v40 = sub_2441D8C6C();
        v42 = v41;

        v43 = [*(v1 + 16) widgets];
        sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
        v1 = sub_2441D8D0C();

        if (v1 >> 62)
        {
          v44 = sub_2441D8F5C();
          if (!v44)
          {
LABEL_106:

            v19 = v259;
            v23 = v253;
            v32 = v254;
            goto LABEL_107;
          }
        }

        else
        {
          v44 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v44)
          {
            goto LABEL_106;
          }
        }

        v19 = 4;
        while (1)
        {
          v45 = v19 - 4;
          if ((v1 & 0xC000000000000001) != 0)
          {
            v46 = MEMORY[0x245D5A7F0](v19 - 4, v1);
            v47 = v19 - 3;
            if (__OFADD__(v45, 1))
            {
              goto LABEL_257;
            }
          }

          else
          {
            if (v45 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_258;
            }

            v46 = *(v1 + 8 * v19);
            v47 = v19 - 3;
            if (__OFADD__(v45, 1))
            {
              goto LABEL_257;
            }
          }

          v48 = v46;
          v49 = [v46 identifier];
          v50 = sub_2441D8C6C();
          v52 = v51;

          if (v50 == v40 && v52 == v42)
          {
            break;
          }

          v54 = sub_2441D91CC();

          v22 = v252;
          if (v54)
          {
            goto LABEL_89;
          }

          ++v19;
          if (v47 == v44)
          {
            goto LABEL_106;
          }
        }

        v22 = v252;
LABEL_89:

        v55 = *&v254[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier];
        v56 = *&v254[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier + 8];
        v57 = [v48 chsWidget];
        v58 = [v57 extensionIdentity];

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
        v59 = sub_2441D89BC();
        v61 = v60;
        swift_endAccess();

        v1 = v256;
        v19 = v259;
        if (v55 == v59 && v56 == v61)
        {

          v32 = v254;
        }

        else
        {
          v62 = sub_2441D91CC();

          v32 = v254;
          if ((v62 & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        v63 = *&v32[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind];
        v64 = *&v32[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind + 8];
        v65 = [v48 chsWidget];
        v66 = [v65 kind];

        v67 = sub_2441D8C6C();
        v69 = v68;

        if (v63 == v67 && v64 == v69)
        {

          v32 = v254;
        }

        else
        {
          v70 = sub_2441D91CC();

          v32 = v254;
          if ((v70 & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        v71 = [v48 chsWidget];
        v72 = [v71 intentReference];

        if (v72)
        {
          v73 = [v72 intent];

          if (v73)
          {
            v74 = *&v32[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent];
            if (v74)
            {
              v75 = [objc_opt_self() intent:v73 isEqualToIntent:v74];

              if ((v75 & 1) == 0)
              {
                goto LABEL_104;
              }
            }

            else
            {
            }
          }
        }

        sub_2441B36AC(v32);
LABEL_104:

        v23 = v253;
LABEL_107:
        v33 = v246;
        v34 = v237;
        v35 = v242;
        v36 = v234;
        if (v242 == v237)
        {
          goto LABEL_108;
        }
      }
    }

    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v246 = *v256;
    if (v34)
    {
      goto LABEL_62;
    }

LABEL_108:
    if (v232)
    {
      v76 = sub_2441D8F5C();
      if (v76)
      {
LABEL_112:
        v1 = 4;
        while (1)
        {
          v77 = v1 - 4;
          if ((v33 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x245D5A7F0](v1 - 4, v33);
            v37 = __OFADD__(v77, 1);
            v78 = v1 - 3;
            if (v37)
            {
              goto LABEL_262;
            }
          }

          else
          {
            if (v77 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_267;
            }

            v19 = *(v33 + 8 * v1);

            v37 = __OFADD__(v77, 1);
            v78 = v1 - 3;
            if (v37)
            {
              goto LABEL_262;
            }
          }

          if (!*(v19 + 32))
          {
            break;
          }

          ++v1;
          v19 = v259;
          if (v78 == v76)
          {
            goto LABEL_122;
          }
        }

        sub_2441B36AC(v32);

        v180 = v32;
        v1 = v256;
        v181 = sub_2441D8B7C();
        v182 = sub_2441D8E1C();

        if (os_log_type_enabled(v181, v182))
        {
          v183 = swift_slowAlloc();
          v184 = swift_slowAlloc();
          v250 = swift_slowAlloc();
          v262 = v250;
          *v183 = 136315394;
          v185 = [*(v19 + 16) identifier];
          v186 = sub_2441D8C6C();
          v188 = v187;

          v189 = v186;
          v1 = v256;
          v190 = sub_244195848(v189, v188, &v262);

          *(v183 + 4) = v190;
          v22 = v252;
          *(v183 + 12) = 2112;
          *(v183 + 14) = v180;
          *v184 = v32;
          v191 = v180;
          _os_log_impl(&dword_244192000, v181, v182, "Stack <%s> successfully smart rotated to %@", v183, 0x16u);
          sub_2441979F8(v184, &unk_27EDD5F60, &qword_2441DBCB0);
          v192 = v184;
          v23 = v253;
          MEMORY[0x245D5B3C0](v192, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v250);
          MEMORY[0x245D5B3C0](v250, -1, -1);
          MEMORY[0x245D5B3C0](v183, -1, -1);
        }

        v19 = v259;
LABEL_227:

        goto LABEL_232;
      }
    }

    else
    {
      v76 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v76)
      {
        goto LABEL_112;
      }
    }

LABEL_122:
    sub_2441B53B8();
    v79 = swift_allocError();
    *v80 = 3;
    *(v80 + 8) = 1;
    swift_willThrow();
    v1 = v256;
    if (!v79)
    {
      goto LABEL_227;
    }

    *&v260 = v79;
    v81 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5CC8, &unk_2441DB250);
    if (swift_dynamicCast())
    {

      v82 = v32;
      v83 = v262;
      v84 = v263;
      v85 = v82;
      v86 = sub_2441D8B7C();
      v87 = sub_2441D8E1C();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *v88 = 138412546;
        *(v88 + 4) = v85;
        *v89 = v85;
        *(v88 + 12) = 2112;
        sub_2441B53B8();
        swift_allocError();
        *v90 = v83;
        *(v90 + 8) = v84;
        v91 = v85;
        v23 = v253;
        v92 = _swift_stdlib_bridgeErrorToNSError();
        *(v88 + 14) = v92;
        v89[1] = v92;
        _os_log_impl(&dword_244192000, v86, v87, "Can't smart rotate to suggestion: %@: %@", v88, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F60, &qword_2441DBCB0);
        swift_arrayDestroy();
        MEMORY[0x245D5B3C0](v89, -1, -1);
        MEMORY[0x245D5B3C0](v88, -1, -1);
      }

      v22 = v252;
      v32 = v254;
    }

    else
    {

      v93 = v32;
      v94 = sub_2441D8B7C();
      v95 = sub_2441D8E0C();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = v32;
        v97 = v79;
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v98 = 138412290;
        *(v98 + 4) = v93;
        *v99 = v93;
        v100 = v93;
        _os_log_impl(&dword_244192000, v94, v95, "Can't smart rotate to suggestion: %@: unknown failure", v98, 0xCu);
        sub_2441979F8(v99, &unk_27EDD5F60, &qword_2441DBCB0);
        MEMORY[0x245D5B3C0](v99, -1, -1);
        MEMORY[0x245D5B3C0](v98, -1, -1);
        v101 = v97;
        v32 = v96;
        v1 = v256;
        v19 = v259;
      }

      else
      {
        v101 = v79;
      }
    }

    v102 = *v1;
    if (!(*v1 >> 62))
    {
      v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v103)
      {
        goto LABEL_222;
      }

      goto LABEL_133;
    }

    v103 = sub_2441D8F5C();
    if (!v103)
    {
LABEL_222:
      sub_24419C618();
      v179 = swift_allocError();
      *v193 = 4;
      *(v193 + 8) = 1;
      swift_willThrow();
      if (v179)
      {
        goto LABEL_223;
      }

      goto LABEL_227;
    }

LABEL_133:
    v104 = 0;
    v105 = v102 & 0xC000000000000001;
    v230 = v102 & 0xFFFFFFFFFFFFFF8;
    v231 = v102;
    v229 = v103;
    v235 = v102 & 0xC000000000000001;
LABEL_136:
    if (v105)
    {
      v106 = MEMORY[0x245D5A7F0](v104, v102);
      v37 = __OFADD__(v104++, 1);
      if (v37)
      {
        goto LABEL_260;
      }
    }

    else
    {
      if (v104 >= *(v230 + 16))
      {
        goto LABEL_264;
      }

      v37 = __OFADD__(v104++, 1);
      if (v37)
      {
        goto LABEL_260;
      }
    }

    if (*(v106 + 32))
    {

      goto LABEL_135;
    }

    v245 = v106;
    v107 = *&v32[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification];
    v243 = v104;
    if (!v107)
    {
      sub_2441B53B8();
      v118 = swift_allocError();
      *v119 = 0;
      *(v119 + 8) = 1;
LABEL_156:
      swift_willThrow();
      goto LABEL_208;
    }

    v108 = [v107 clientModelId];
    if (!v108)
    {
      sub_2441D8C6C();
      v108 = sub_2441D8C4C();
    }

    v109 = [objc_opt_self() clientModelTypeFromClientModelId_];

    v110 = __ROR8__(v109 - 2, 1);
    v111 = (1 << v110) & 0x32B;
    if (v110 > 9 || v111 == 0)
    {
      sub_24419C618();
      v162 = swift_allocError();
      *v163 = v109;
      v118 = v162;
      *(v163 + 8) = 0;
      goto LABEL_156;
    }

    v113 = *&v32[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_scoreSpecification];
    if (v113)
    {
      v114 = v113;
      if ([v114 suggestedConfidenceCategory] <= 2)
      {
        sub_24419C618();
        v116 = swift_allocError();
        v117 = 3;
LABEL_153:
        *v115 = v117;
        *(v115 + 8) = 1;
        swift_willThrow();
LABEL_154:

        v118 = v116;
        goto LABEL_208;
      }
    }

    v120 = *v1;
    if (*v1 >> 62)
    {
      v121 = sub_2441D8F5C();
      if (!v121)
      {
LABEL_200:
        v160 = *&v32[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier + 8];
        v161 = sub_2441D8C4C();
        if (v160)
        {
          v160 = sub_2441D8C4C();
        }

        v114 = [objc_allocWithZone(ATXWidgetLocationAuthorizationTracker) initWithExtensionBundleIdentifier:v161 containerBundleIdentifier:v160];

        if (![v114 widgetWantsLocation] || (objc_msgSend(v114, sel_isContainerAuthorizedForWidgetUpdates) & 1) != 0)
        {

          v118 = 0;
          goto LABEL_208;
        }

        sub_24419C618();
        v116 = swift_allocError();
        v117 = 5;
        goto LABEL_153;
      }
    }

    else
    {
      v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v121)
      {
        goto LABEL_200;
      }
    }

    v122 = 0;
    v226 = &v32[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier];
    v247 = &v32[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind];
    v239 = OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent;
    v123 = v120 & 0xC000000000000001;
    v222 = v120 & 0xFFFFFFFFFFFFFF8;
    v224 = v121;
    v225 = v120;
    v223 = v120 & 0xC000000000000001;
LABEL_161:
    if (v123)
    {
      v124 = v122;
      v125 = MEMORY[0x245D5A7F0](v122, v120);
      v37 = __OFADD__(v124, 1);
      v126 = v124 + 1;
      if (v37)
      {
        break;
      }

      goto LABEL_167;
    }

    if (v122 >= *(v222 + 16))
    {
      goto LABEL_275;
    }

    v127 = v122;

    v37 = __OFADD__(v127, 1);
    v126 = v127 + 1;
    if (v37)
    {
      break;
    }

LABEL_167:
    v228 = v126;
    v233 = v125;
    v128 = [*(v125 + 16) widgets];
    sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
    v129 = sub_2441D8D0C();

    if (!(v129 >> 62))
    {
      v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v130)
      {
        goto LABEL_169;
      }

LABEL_193:

      v102 = v231;
      v156 = *(v233 + 32);
      v19 = v259;
      v22 = v252;
      if (v156)
      {
        v114 = v156;
        v157 = [v114 suggestedWidgets];
        sub_244195E64();
        v158 = sub_2441D8DCC();

        if ((v158 & 0xC000000000000001) != 0)
        {
          v159 = sub_2441D8F5C();
        }

        else
        {
          v159 = *(v158 + 16);
        }

        if (v159)
        {
          sub_24419C618();
          v116 = swift_allocError();
          *v178 = 1;
          *(v178 + 8) = 1;
          swift_willThrow();

          goto LABEL_154;
        }
      }

      v120 = v225;
      v122 = v228;
      v123 = v223;
      if (v228 == v224)
      {
        goto LABEL_200;
      }

      goto LABEL_161;
    }

    v130 = sub_2441D8F5C();
    if (!v130)
    {
      goto LABEL_193;
    }

LABEL_169:
    v248 = *(v226 + 1);
    v249 = *v226;
    v19 = 4;
    while (1)
    {
      v131 = v19 - 4;
      if ((v129 & 0xC000000000000001) != 0)
      {
        v132 = MEMORY[0x245D5A7F0](v19 - 4, v129);
      }

      else
      {
        if (v131 >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_263;
        }

        v132 = *(v129 + 8 * v19);
      }

      v133 = v132;
      v134 = v19 - 3;
      if (__OFADD__(v131, 1))
      {
        goto LABEL_259;
      }

      v135 = v130;
      v136 = [v132 chsWidget];
      v137 = [v136 extensionIdentity];

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
      v138 = sub_2441D89BC();
      v140 = v139;
      swift_endAccess();

      if (v249 == v138 && v248 == v140)
      {
      }

      else
      {
        v142 = sub_2441D91CC();

        v32 = v254;
        if ((v142 & 1) == 0)
        {
          goto LABEL_170;
        }
      }

      v143 = *v247;
      v144 = *(v247 + 1);
      v145 = [v133 chsWidget];
      v146 = [v145 kind];

      v147 = sub_2441D8C6C();
      v149 = v148;

      if (v143 == v147 && v144 == v149)
      {

        v1 = v256;
        v32 = v254;
      }

      else
      {
        v150 = sub_2441D91CC();

        v1 = v256;
        v32 = v254;
        if ((v150 & 1) == 0)
        {
          goto LABEL_170;
        }
      }

      v151 = [v133 chsWidget];
      v152 = [v151 intentReference];

      if (!v152)
      {
        goto LABEL_207;
      }

      v153 = [v152 intent];

      if (!v153)
      {
        goto LABEL_207;
      }

      v154 = *&v32[v239];
      if (!v154)
      {
        break;
      }

      v155 = [objc_opt_self() intent:v153 isEqualToIntent:v154];

      if (v155)
      {
        goto LABEL_207;
      }

LABEL_170:

      ++v19;
      v130 = v135;
      v23 = v253;
      if (v134 == v135)
      {
        goto LABEL_193;
      }
    }

LABEL_207:

    sub_24419C618();
    v118 = swift_allocError();
    *v164 = 0;
    *(v164 + 8) = 1;
    swift_willThrow();

    v19 = v259;
    v22 = v252;
    v23 = v253;
    v102 = v231;
LABEL_208:
    if (!v118)
    {
      sub_2441B3C1C(v32, *(v1 + 32));

      v165 = v32;
      v166 = sub_2441D8B7C();
      v167 = sub_2441D8E1C();

      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v251 = swift_slowAlloc();
        v262 = v251;
        *v168 = 136315394;
        v170 = [*(v245 + 16) identifier];
        v171 = sub_2441D8C6C();
        v173 = v172;

        v174 = v171;
        v22 = v252;
        v175 = sub_244195848(v174, v173, &v262);
        v1 = v256;

        *(v168 + 4) = v175;
        v32 = v254;
        *(v168 + 12) = 2112;
        *(v168 + 14) = v165;
        *v169 = v254;
        v176 = v165;
        _os_log_impl(&dword_244192000, v166, v167, "Stack <%s> successfully suggested new widget with: %@", v168, 0x16u);
        sub_2441979F8(v169, &unk_27EDD5F60, &qword_2441DBCB0);
        v177 = v169;
        v23 = v253;
        MEMORY[0x245D5B3C0](v177, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v251);
        MEMORY[0x245D5B3C0](v251, -1, -1);
        MEMORY[0x245D5B3C0](v168, -1, -1);

        v102 = v231;

        v103 = v229;
        v104 = v243;
        v105 = v235;
      }

      else
      {

        v103 = v229;
        v104 = v243;
        v105 = v235;
        v23 = v253;
        v22 = v252;
      }

LABEL_135:
      if (v104 == v103)
      {
        goto LABEL_222;
      }

      goto LABEL_136;
    }

    v179 = v118;
LABEL_223:
    *&v260 = v179;
    v194 = v179;
    if (swift_dynamicCast())
    {

      v195 = v32;
      v196 = v262;
      v197 = v263;
      v198 = v195;
      v199 = sub_2441D8B7C();
      v200 = sub_2441D8E1C();

      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        *v201 = 138412546;
        *(v201 + 4) = v198;
        *v202 = v198;
        *(v201 + 12) = 2112;
        sub_24419C618();
        swift_allocError();
        *v203 = v196;
        *(v203 + 8) = v197;
        v204 = v198;
        v23 = v253;
        v205 = _swift_stdlib_bridgeErrorToNSError();
        *(v201 + 14) = v205;
        v202[1] = v205;
        _os_log_impl(&dword_244192000, v199, v200, "Can't suggest new widget with suggestion: %@: %@", v201, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F60, &qword_2441DBCB0);
        swift_arrayDestroy();
        MEMORY[0x245D5B3C0](v202, -1, -1);
        MEMORY[0x245D5B3C0](v201, -1, -1);
        v198 = v199;
        v199 = v204;
      }

      v22 = v252;
    }

    else
    {
      v241 = v179;

      v206 = v32;
      v207 = sub_2441D8B7C();
      v208 = sub_2441D8E0C();

      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        *v209 = 138412290;
        *(v209 + 4) = v206;
        *v210 = v206;
        v211 = v206;
        _os_log_impl(&dword_244192000, v207, v208, "Can't suggest new widget with suggestion: %@: unknown failure", v209, 0xCu);
        sub_2441979F8(v210, &unk_27EDD5F60, &qword_2441DBCB0);
        MEMORY[0x245D5B3C0](v210, -1, -1);
        MEMORY[0x245D5B3C0](v209, -1, -1);
      }

      else
      {
      }
    }

LABEL_232:
    v24 = v255 & 0xC000000000000001;
    if (v244 == v227)
    {
      goto LABEL_237;
    }
  }

  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
LABEL_274:
  __break(1u);
LABEL_275:
  __break(1u);
}

unint64_t sub_24419C618()
{
  result = qword_27EDD5D50;
  if (!qword_27EDD5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5D50);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24419C684(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24419C708()
{
  v1 = v0;
  sub_2441D8FEC();
  MEMORY[0x245D5A4A0](0xD000000000000039, 0x80000002441E05B0);
  MEMORY[0x245D5A4A0](*(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier), *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier + 8));
  MEMORY[0x245D5A4A0](0xD00000000000001DLL, 0x80000002441E05F0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6288, &qword_2441DD210);
  v2 = sub_2441D8C7C();
  MEMORY[0x245D5A4A0](v2);

  MEMORY[0x245D5A4A0](0x203A646E696B202CLL, 0xE800000000000000);
  MEMORY[0x245D5A4A0](*(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind), *(v1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind + 8));
  MEMORY[0x245D5A4A0](0x746E65746E69202CLL, 0xEA0000000000203ALL);
  v3 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6290, &qword_2441DD218);
  v4 = sub_2441D8C7C();
  MEMORY[0x245D5A4A0](v4);

  MEMORY[0x245D5A4A0](0xD000000000000016, 0x80000002441E0610);
  v5 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_scoreSpecification);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD6298, &qword_2441DD220);
  v6 = sub_2441D8C7C();
  MEMORY[0x245D5A4A0](v6);

  MEMORY[0x245D5A4A0](0xD000000000000023, 0x80000002441E0630);
  v7 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD62A0, &qword_2441DD228);
  v8 = sub_2441D8C7C();
  MEMORY[0x245D5A4A0](v8);

  MEMORY[0x245D5A4A0](15913, 0xE200000000000000);
  return 0;
}

uint64_t sub_24419C974()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 120);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v1, v2, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24419CA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2441D89EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24419CACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2441D89EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_24419CB88()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419CBC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419CBFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419CC34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419CC8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419CCC4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24419CD0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419CD6C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419CDB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419CDF0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24419CE3C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24419CE9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419CEE0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2441D8B8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_24419CF8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2441D8B8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24419D050()
{
  MEMORY[0x245D5B450](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419D0A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419D0D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D114()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24419D160()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D1A8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24419D1E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D220()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419D258()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D2A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24419D2EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24419D344()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24419D394()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D3CC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24419D418()
{
  MEMORY[0x245D5B450](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24419D450()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D48C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24419D4D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D510()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24419D554()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void hashIt(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          hashIt(*(*(&v11 + 1) + 8 * v9++), v4);
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v10 = [v3 hash];
    [v4 appendBytes:&v10 length:8];
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __atxlog_handle_default(uint64_t a1)
{
  if (__atxlog_handle_default_onceToken != -1)
  {
    __atxlog_handle_default_cold_1();
  }

  v2 = __atxlog_handle_default_log;

  return v2;
}

uint64_t ____atxlog_handle_default_block_invoke()
{
  __atxlog_handle_default_log = os_log_create("com.apple.duetexpertd.atx", "general");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_xpc(uint64_t a1)
{
  if (__atxlog_handle_xpc_onceToken != -1)
  {
    __atxlog_handle_xpc_cold_1();
  }

  v2 = __atxlog_handle_xpc_log;

  return v2;
}

uint64_t ____atxlog_handle_xpc_block_invoke()
{
  __atxlog_handle_xpc_log = os_log_create("com.apple.duetexpertd.atx", "xpc");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_heuristic(uint64_t a1)
{
  if (__atxlog_handle_heuristic_onceToken != -1)
  {
    __atxlog_handle_heuristic_cold_1();
  }

  v2 = __atxlog_handle_heuristic_log;

  return v2;
}

uint64_t ____atxlog_handle_heuristic_block_invoke()
{
  __atxlog_handle_heuristic_log = os_log_create("com.apple.duetexpertd.atx", "heuristic");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notifications(uint64_t a1)
{
  if (__atxlog_handle_notifications_onceToken != -1)
  {
    __atxlog_handle_notifications_cold_1();
  }

  v2 = __atxlog_handle_notifications_log;

  return v2;
}

uint64_t ____atxlog_handle_notifications_block_invoke()
{
  __atxlog_handle_notifications_log = os_log_create("com.apple.duetexpertd.atx", "notifications");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_pmm(uint64_t a1)
{
  if (__atxlog_handle_pmm_onceToken != -1)
  {
    __atxlog_handle_pmm_cold_1();
  }

  v2 = __atxlog_handle_pmm_log;

  return v2;
}

uint64_t ____atxlog_handle_pmm_block_invoke()
{
  __atxlog_handle_pmm_log = os_log_create("com.apple.duetexpertd.mm", "GENERAL");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_dailyroutines(uint64_t a1)
{
  if (__atxlog_handle_dailyroutines_onceToken != -1)
  {
    __atxlog_handle_dailyroutines_cold_1();
  }

  v2 = __atxlog_handle_dailyroutines_log;

  return v2;
}

uint64_t ____atxlog_handle_dailyroutines_block_invoke()
{
  __atxlog_handle_dailyroutines_log = os_log_create("com.apple.duetexpertd.atx", "dailyroutines");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_feedback(uint64_t a1)
{
  if (__atxlog_handle_feedback_onceToken != -1)
  {
    __atxlog_handle_feedback_cold_1();
  }

  v2 = __atxlog_handle_feedback_log;

  return v2;
}

uint64_t ____atxlog_handle_feedback_block_invoke()
{
  __atxlog_handle_feedback_log = os_log_create("com.apple.duetexpertd.atx", "feedback");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_modes(uint64_t a1)
{
  if (__atxlog_handle_modes_onceToken != -1)
  {
    __atxlog_handle_modes_cold_1();
  }

  v2 = __atxlog_handle_modes_log;

  return v2;
}

uint64_t ____atxlog_handle_modes_block_invoke()
{
  __atxlog_handle_modes_log = os_log_create("com.apple.duetexpertd.atx", "modes");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_hero(uint64_t a1)
{
  if (__atxlog_handle_hero_onceToken != -1)
  {
    __atxlog_handle_hero_cold_1();
  }

  v2 = __atxlog_handle_hero_log;

  return v2;
}

uint64_t ____atxlog_handle_hero_block_invoke()
{
  __atxlog_handle_hero_log = os_log_create("com.apple.duetexpertd.atx", "hero");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_deletions(uint64_t a1)
{
  if (__atxlog_handle_deletions_onceToken != -1)
  {
    __atxlog_handle_deletions_cold_1();
  }

  v2 = __atxlog_handle_deletions_log;

  return v2;
}

uint64_t ____atxlog_handle_deletions_block_invoke()
{
  __atxlog_handle_deletions_log = os_log_create("com.apple.duetexpertd.atx", "deletions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_gi(uint64_t a1)
{
  if (__atxlog_handle_gi_onceToken != -1)
  {
    __atxlog_handle_gi_cold_1();
  }

  v2 = __atxlog_handle_gi_log;

  return v2;
}

uint64_t ____atxlog_handle_gi_block_invoke()
{
  __atxlog_handle_gi_log = os_log_create("com.apple.duetexpertd.atx", "information");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_timeline(uint64_t a1)
{
  if (__atxlog_handle_timeline_onceToken != -1)
  {
    __atxlog_handle_timeline_cold_1();
  }

  v2 = __atxlog_handle_timeline_log;

  return v2;
}

uint64_t ____atxlog_handle_timeline_block_invoke()
{
  __atxlog_handle_timeline_log = os_log_create("com.apple.duetexpertd.atx", "timeline");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_relevant_shortcut(uint64_t a1)
{
  if (__atxlog_handle_relevant_shortcut_onceToken != -1)
  {
    __atxlog_handle_relevant_shortcut_cold_1();
  }

  v2 = __atxlog_handle_relevant_shortcut_log;

  return v2;
}

uint64_t ____atxlog_handle_relevant_shortcut_block_invoke()
{
  __atxlog_handle_relevant_shortcut_log = os_log_create("com.apple.duetexpertd.atx", "relevant_shortcut");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_relevance_model(uint64_t a1)
{
  if (__atxlog_handle_relevance_model_onceToken != -1)
  {
    __atxlog_handle_relevance_model_cold_1();
  }

  v2 = __atxlog_handle_relevance_model_log;

  return v2;
}

uint64_t ____atxlog_handle_relevance_model_block_invoke()
{
  __atxlog_handle_relevance_model_log = os_log_create("com.apple.duetexpertd.atx", "relevance_model");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_watch(uint64_t a1)
{
  if (__atxlog_handle_watch_onceToken != -1)
  {
    __atxlog_handle_watch_cold_1();
  }

  v2 = __atxlog_handle_watch_log;

  return v2;
}

uint64_t ____atxlog_handle_watch_block_invoke()
{
  __atxlog_handle_watch_log = os_log_create("com.apple.duetexpertd.atx", "watch");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_ui(uint64_t a1)
{
  if (__atxlog_handle_ui_onceToken != -1)
  {
    __atxlog_handle_ui_cold_1();
  }

  v2 = __atxlog_handle_ui_log;

  return v2;
}

uint64_t ____atxlog_handle_ui_block_invoke()
{
  __atxlog_handle_ui_log = os_log_create("com.apple.duetexpertd.atx", "UI");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending(uint64_t a1)
{
  if (__atxlog_handle_blending_onceToken != -1)
  {
    __atxlog_handle_blending_cold_1();
  }

  v2 = __atxlog_handle_blending_log;

  return v2;
}

uint64_t ____atxlog_handle_blending_block_invoke()
{
  __atxlog_handle_blending_log = os_log_create("com.apple.duetexpertd.atx", "blending");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending_internal_cache(uint64_t a1)
{
  if (__atxlog_handle_blending_internal_cache_onceToken != -1)
  {
    __atxlog_handle_blending_internal_cache_cold_1();
  }

  v2 = __atxlog_handle_blending_internal_cache_log;

  return v2;
}

uint64_t ____atxlog_handle_blending_internal_cache_block_invoke()
{
  __atxlog_handle_blending_internal_cache_log = os_log_create("com.apple.duetexpertd.atx", "blending_internal_cache");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending_ecosystem(uint64_t a1)
{
  if (__atxlog_handle_blending_ecosystem_onceToken != -1)
  {
    __atxlog_handle_blending_ecosystem_cold_1();
  }

  v2 = __atxlog_handle_blending_ecosystem_log;

  return v2;
}

uint64_t ____atxlog_handle_blending_ecosystem_block_invoke()
{
  __atxlog_handle_blending_ecosystem_log = os_log_create("com.apple.duetexpertd.atx", "blending_ecosystem");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_home_screen(uint64_t a1)
{
  if (__atxlog_handle_home_screen_onceToken != -1)
  {
    __atxlog_handle_home_screen_cold_1();
  }

  v2 = __atxlog_handle_home_screen_log;

  return v2;
}

uint64_t ____atxlog_handle_home_screen_block_invoke()
{
  __atxlog_handle_home_screen_log = os_log_create("com.apple.duetexpertd.atx", "homescreen");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_sleep_schedule(uint64_t a1)
{
  if (__atxlog_handle_sleep_schedule_onceToken != -1)
  {
    __atxlog_handle_sleep_schedule_cold_1();
  }

  v2 = __atxlog_handle_sleep_schedule_log;

  return v2;
}

uint64_t ____atxlog_handle_sleep_schedule_block_invoke()
{
  __atxlog_handle_sleep_schedule_log = os_log_create("com.apple.duetexpertd.atx", "sleepschedule");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_lock_screen(uint64_t a1)
{
  if (__atxlog_handle_lock_screen_onceToken != -1)
  {
    __atxlog_handle_lock_screen_cold_1();
  }

  v2 = __atxlog_handle_lock_screen_log;

  return v2;
}

uint64_t ____atxlog_handle_lock_screen_block_invoke()
{
  __atxlog_handle_lock_screen_log = os_log_create("com.apple.duetexpertd.atx", "lockscreen");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_anchor(uint64_t a1)
{
  if (__atxlog_handle_anchor_onceToken != -1)
  {
    __atxlog_handle_anchor_cold_1();
  }

  v2 = __atxlog_handle_anchor_log;

  return v2;
}

uint64_t ____atxlog_handle_anchor_block_invoke()
{
  __atxlog_handle_anchor_log = os_log_create("com.apple.duetexpertd.atx", "anchor");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_prediction(uint64_t a1)
{
  if (__atxlog_handle_app_prediction_onceToken != -1)
  {
    __atxlog_handle_app_prediction_cold_1();
  }

  v2 = __atxlog_handle_app_prediction_log;

  return v2;
}

uint64_t ____atxlog_handle_app_prediction_block_invoke()
{
  __atxlog_handle_app_prediction_log = os_log_create("com.apple.duetexpertd.atx", "app_prediction");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_action_prediction(uint64_t a1)
{
  if (__atxlog_handle_action_prediction_onceToken != -1)
  {
    __atxlog_handle_action_prediction_cold_1();
  }

  v2 = __atxlog_handle_action_prediction_log;

  return v2;
}

uint64_t ____atxlog_handle_action_prediction_block_invoke()
{
  __atxlog_handle_action_prediction_log = os_log_create("com.apple.duetexpertd.atx", "action_prediction");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_library(uint64_t a1)
{
  if (__atxlog_handle_app_library_onceToken != -1)
  {
    __atxlog_handle_app_library_cold_1();
  }

  v2 = __atxlog_handle_app_library_log;

  return v2;
}

uint64_t ____atxlog_handle_app_library_block_invoke()
{
  __atxlog_handle_app_library_log = os_log_create("com.apple.duetexpertd.atx", "app_library");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_install(uint64_t a1)
{
  if (__atxlog_handle_app_install_onceToken != -1)
  {
    __atxlog_handle_app_install_cold_1();
  }

  v2 = __atxlog_handle_app_install_log;

  return v2;
}

uint64_t ____atxlog_handle_app_install_block_invoke()
{
  __atxlog_handle_app_install_log = os_log_create("com.apple.duetexpertd.atx", "app_install");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_backup(uint64_t a1)
{
  if (__atxlog_handle_backup_onceToken != -1)
  {
    __atxlog_handle_backup_cold_1();
  }

  v2 = __atxlog_handle_backup_log;

  return v2;
}

uint64_t ____atxlog_handle_backup_block_invoke()
{
  __atxlog_handle_backup_log = os_log_create("com.apple.duetexpertd.atx", "backup");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_metrics(uint64_t a1)
{
  if (__atxlog_handle_metrics_onceToken != -1)
  {
    __atxlog_handle_metrics_cold_1();
  }

  v2 = __atxlog_handle_metrics_log;

  return v2;
}

uint64_t ____atxlog_handle_metrics_block_invoke()
{
  __atxlog_handle_metrics_log = os_log_create("com.apple.duetexpertd.atx", "metrics");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_trial_assets(uint64_t a1)
{
  if (__atxlog_handle_trial_assets_onceToken != -1)
  {
    __atxlog_handle_trial_assets_cold_1();
  }

  v2 = __atxlog_handle_trial_assets_log;

  return v2;
}

uint64_t ____atxlog_handle_trial_assets_block_invoke()
{
  __atxlog_handle_trial_assets_log = os_log_create("com.apple.duetexpertd.atx", "trial_assets");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notification_management(uint64_t a1)
{
  if (__atxlog_handle_notification_management_onceToken != -1)
  {
    __atxlog_handle_notification_management_cold_1();
  }

  v2 = __atxlog_handle_notification_management_log;

  return v2;
}

uint64_t ____atxlog_handle_notification_management_block_invoke()
{
  __atxlog_handle_notification_management_log = os_log_create("com.apple.duetexpertd.atx", "notification_management");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_contextual_actions(uint64_t a1)
{
  if (__atxlog_handle_contextual_actions_onceToken != -1)
  {
    __atxlog_handle_contextual_actions_cold_1();
  }

  v2 = __atxlog_handle_contextual_actions_log;

  return v2;
}

uint64_t ____atxlog_handle_contextual_actions_block_invoke()
{
  __atxlog_handle_contextual_actions_log = os_log_create("com.apple.duetexpertd.atx", "contextual_actions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_intents_helper(uint64_t a1)
{
  if (__atxlog_handle_intents_helper_onceToken != -1)
  {
    __atxlog_handle_intents_helper_cold_1();
  }

  v2 = __atxlog_handle_intents_helper_log;

  return v2;
}

uint64_t ____atxlog_handle_intents_helper_block_invoke()
{
  __atxlog_handle_intents_helper_log = os_log_create("com.apple.duetexpertd.atx", "intents_helper");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_context_heuristic(uint64_t a1)
{
  if (__atxlog_handle_context_heuristic_onceToken != -1)
  {
    __atxlog_handle_context_heuristic_cold_1();
  }

  v2 = __atxlog_handle_context_heuristic_log;

  return v2;
}

uint64_t ____atxlog_handle_context_heuristic_block_invoke()
{
  __atxlog_handle_context_heuristic_log = os_log_create("com.apple.duetexpertd.atx", "context_heuristic");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_zkw_hide(uint64_t a1)
{
  if (__atxlog_handle_zkw_hide_onceToken != -1)
  {
    __atxlog_handle_zkw_hide_cold_1();
  }

  v2 = __atxlog_handle_zkw_hide_log;

  return v2;
}

uint64_t ____atxlog_handle_zkw_hide_block_invoke()
{
  __atxlog_handle_zkw_hide_log = os_log_create("com.apple.duetexpertd.atx", "zkw_hide");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_context_user_education_suggestions(uint64_t a1)
{
  if (__atxlog_handle_context_user_education_suggestions_onceToken != -1)
  {
    __atxlog_handle_context_user_education_suggestions_cold_1();
  }

  v2 = __atxlog_handle_context_user_education_suggestions_log;

  return v2;
}

uint64_t ____atxlog_handle_context_user_education_suggestions_block_invoke()
{
  __atxlog_handle_context_user_education_suggestions_log = os_log_create("com.apple.duetexpertd.atx", "user_education_suggestions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_time_intelligence(uint64_t a1)
{
  if (__atxlog_handle_time_intelligence_onceToken != -1)
  {
    __atxlog_handle_time_intelligence_cold_1();
  }

  v2 = __atxlog_handle_time_intelligence_log;

  return v2;
}

uint64_t ____atxlog_handle_time_intelligence_block_invoke()
{
  __atxlog_handle_time_intelligence_log = os_log_create("com.apple.duetexpertd.atx", "time");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_contextual_engine(uint64_t a1)
{
  if (__atxlog_handle_contextual_engine_onceToken != -1)
  {
    __atxlog_handle_contextual_engine_cold_1();
  }

  v2 = __atxlog_handle_contextual_engine_log;

  return v2;
}

uint64_t ____atxlog_handle_contextual_engine_block_invoke()
{
  __atxlog_handle_contextual_engine_log = os_log_create("com.apple.duetexpertd.atx", "contextualengine");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_usage_insights(uint64_t a1)
{
  if (__atxlog_handle_usage_insights_onceToken != -1)
  {
    __atxlog_handle_usage_insights_cold_1();
  }

  v2 = __atxlog_handle_usage_insights_log;

  return v2;
}

uint64_t ____atxlog_handle_usage_insights_block_invoke()
{
  __atxlog_handle_usage_insights_log = os_log_create("com.apple.duetexpertd.atx", "usage_insights");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notification_categorization(uint64_t a1)
{
  if (__atxlog_handle_notification_categorization_onceToken != -1)
  {
    __atxlog_handle_notification_categorization_cold_1();
  }

  v2 = __atxlog_handle_notification_categorization_log;

  return v2;
}

uint64_t ____atxlog_handle_notification_categorization_block_invoke()
{
  __atxlog_handle_notification_categorization_log = os_log_create("com.apple.duetexpertd.atx", "notification_categorization");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_settings_actions(uint64_t a1)
{
  if (__atxlog_handle_settings_actions_onceToken != -1)
  {
    __atxlog_handle_settings_actions_cold_1();
  }

  v2 = __atxlog_handle_settings_actions_log;

  return v2;
}

uint64_t ____atxlog_handle_settings_actions_block_invoke()
{
  __atxlog_handle_settings_actions_log = os_log_create("com.apple.duetexpertd.atx", "settings_actions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_client_donations(uint64_t a1)
{
  if (__atxlog_handle_client_donations_onceToken != -1)
  {
    __atxlog_handle_client_donations_cold_1();
  }

  v2 = __atxlog_handle_client_donations_log;

  return v2;
}

uint64_t ____atxlog_handle_client_donations_block_invoke()
{
  __atxlog_handle_client_donations_log = os_log_create("com.apple.duetexpertd.atx", "client_donations");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_carPlay_widgets(uint64_t a1)
{
  if (__atxlog_handle_carPlay_widgets_onceToken != -1)
  {
    __atxlog_handle_carPlay_widgets_cold_1();
  }

  v2 = __atxlog_handle_carPlay_widgets_log;

  return v2;
}

uint64_t ____atxlog_handle_carPlay_widgets_block_invoke()
{
  __atxlog_handle_carPlay_widgets_log = os_log_create("com.apple.duetexpertd.atx", "carPlay");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_screen_entities(uint64_t a1)
{
  if (__atxlog_handle_screen_entities_onceToken != -1)
  {
    __atxlog_handle_screen_entities_cold_1();
  }

  v2 = __atxlog_handle_screen_entities_log;

  return v2;
}

uint64_t ____atxlog_handle_screen_entities_block_invoke()
{
  __atxlog_handle_screen_entities_log = os_log_create("com.apple.duetexpertd.atx", "screenEntities");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_document_predictor(uint64_t a1)
{
  if (__atxlog_handle_document_predictor_onceToken != -1)
  {
    __atxlog_handle_document_predictor_cold_1();
  }

  v2 = __atxlog_handle_document_predictor_log;

  return v2;
}

uint64_t ____atxlog_handle_document_predictor_block_invoke()
{
  __atxlog_handle_document_predictor_log = os_log_create("com.apple.duetexpertd.atx", "documentPredictor");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_ml_inference(uint64_t a1)
{
  if (__atxlog_handle_ml_inference_onceToken != -1)
  {
    __atxlog_handle_ml_inference_cold_1();
  }

  v2 = __atxlog_handle_ml_inference_log;

  return v2;
}

uint64_t ____atxlog_handle_ml_inference_block_invoke()
{
  __atxlog_handle_ml_inference_log = os_log_create("com.apple.duetexpertd.atx", "inference");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_menu_items(uint64_t a1)
{
  if (__atxlog_handle_menu_items_onceToken != -1)
  {
    __atxlog_handle_menu_items_cold_1();
  }

  v2 = __atxlog_handle_menu_items_log;

  return v2;
}

uint64_t ____atxlog_handle_menu_items_block_invoke()
{
  __atxlog_handle_menu_items_log = os_log_create("com.apple.duetexpertd.atx", "menuItems");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2441A0C6C()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for CarPlayWidgetEvent(uint64_t a1)
{
  result = qword_27EDD6D50;
  if (!qword_27EDD6D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2441A0D0C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CarPlayWidgetEvent(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_2441A0D54(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CarPlayWidgetEvent(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2441A0E04;
}

uint64_t sub_2441A0E38()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent(0) + 20));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_2441A0E70()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2441A0EC4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CarPlayWidgetEvent(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_2441A0F0C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CarPlayWidgetEvent(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2441A35E0;
}

uint64_t sub_2441A0FEC()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent(0) + 24));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_2441A1024()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2441A1078(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CarPlayWidgetEvent(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_2441A10C0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CarPlayWidgetEvent(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2441A35E0;
}

uint64_t sub_2441A11A0()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent(0) + 28));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_2441A11D8()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2441A122C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CarPlayWidgetEvent(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_2441A1274(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CarPlayWidgetEvent(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2441A35E0;
}

void sub_2441A1324(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

uint64_t sub_2441A13DC()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent(0) + 32));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_2441A1414()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent(0) + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_2441A1448(int a1)
{
  result = type metadata accessor for CarPlayWidgetEvent(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_2441A1480(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CarPlayWidgetEvent(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_2441A14E8;
}

uint64_t sub_2441A14E8(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

uint64_t sub_2441A1534()
{
  result = type metadata accessor for CarPlayWidgetEvent(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

double sub_2441A1564()
{
  v1 = v0 + *(type metadata accessor for CarPlayWidgetEvent(0) + 40);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2441A159C(double a1)
{
  result = type metadata accessor for CarPlayWidgetEvent(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_2441A15D4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CarPlayWidgetEvent(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_2441A1640;
}

uint64_t sub_2441A1640(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_2441A1688()
{
  result = type metadata accessor for CarPlayWidgetEvent(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_2441A16B8()
{
  v1 = (v0 + *(type metadata accessor for CarPlayWidgetEvent(0) + 44));
  if (v1[9])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_2441A16F8(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  result = type metadata accessor for CarPlayWidgetEvent(0);
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*sub_2441A1740(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for CarPlayWidgetEvent(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_2441A17B8;
}

uint64_t sub_2441A17B8(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_2441A180C()
{
  result = type metadata accessor for CarPlayWidgetEvent(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 8) = 256;
  return result;
}

uint64_t sub_2441A1840@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2441D89EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2441A18A8(uint64_t a1)
{
  v3 = sub_2441D89EC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void sub_2441A198C(uint64_t a1@<X8>)
{
  sub_2441A2D14();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_2441A19D8(uint64_t a2@<X8>)
{
  sub_2441A2D14();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_2441A1A1C(uint64_t a1, uint64_t a2)
{
  sub_2441D924C();
  sub_2441D8C1C();
  return sub_2441D926C();
}

uint64_t sub_2441A1A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_2441A3498();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2441A1AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2441D924C();
  sub_2441D8C1C();
  return sub_2441D926C();
}

int *sub_2441A1B64@<X0>(uint64_t a1@<X8>)
{
  sub_2441D89DC();
  result = type metadata accessor for CarPlayWidgetEvent(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 8) = 256;
  return result;
}

uint64_t sub_2441A1C5C()
{
  v0 = sub_2441D8B6C();
  __swift_allocate_value_buffer(v0, qword_27EDDB0E0);
  __swift_project_value_buffer(v0, qword_27EDDB0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AA8, ":y");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AB0, &qword_2441DACA8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2441DA970;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "car_play_identifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_2441D8B4C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "widget_identifier";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "extension_identifier";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "widget_kind";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "widget_family";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "timestamp";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "outcome";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v9();
  return sub_2441D8B5C();
}

uint64_t sub_2441A1FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2441D8A6C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1 || result == 2 || result == 3)
        {
LABEL_4:
          type metadata accessor for CarPlayWidgetEvent(0);
          sub_2441D8AAC();
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          type metadata accessor for CarPlayWidgetEvent(0);
          sub_2441D8A9C();
        }

        else if (result == 7)
        {
          type metadata accessor for CarPlayWidgetEvent(0);
          sub_2441A3498();
          sub_2441D8A7C();
        }
      }

      else
      {
        if (result == 4)
        {
          goto LABEL_4;
        }

        type metadata accessor for CarPlayWidgetEvent(0);
        sub_2441D8A8C();
      }

      result = sub_2441D8A6C();
    }
  }

  return result;
}

int *sub_2441A2164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CarPlayWidgetEvent(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    result = sub_2441D8B3C();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v5 + v10[6] + 8))
  {
    sub_2441D8B3C();
  }

  if (*(v5 + v10[7] + 8))
  {
    sub_2441D8B3C();
  }

  if (*(v5 + v10[8] + 8))
  {
    sub_2441D8B3C();
  }

  sub_2441A22BC(v5, a1, a2, a3);
  sub_2441A2334(v5, a1, a2, a3);
  sub_2441A23AC(v5, a1, a2, a3);
  return sub_2441D89CC();
}

uint64_t sub_2441A22BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CarPlayWidgetEvent(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return sub_2441D8B1C();
  }

  return result;
}

uint64_t sub_2441A2334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CarPlayWidgetEvent(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_2441D8B2C();
  }

  return result;
}

uint64_t sub_2441A23AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CarPlayWidgetEvent(0);
  if ((*(a1 + *(result + 44) + 9) & 1) == 0)
  {
    sub_2441A3498();
    return sub_2441D8B0C();
  }

  return result;
}

uint64_t sub_2441A2454()
{
  sub_2441D924C();
  type metadata accessor for CarPlayWidgetEvent(0);
  sub_2441A3598(&qword_27EDD5A30, type metadata accessor for CarPlayWidgetEvent, &unk_2441DABD0);
  sub_2441D8C1C();
  return sub_2441D926C();
}

uint64_t sub_2441A24DC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2441D89DC();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 8) = 256;
  return result;
}

uint64_t sub_2441A2598(uint64_t a1, uint64_t a2)
{
  v4 = sub_2441A3598(&qword_27EDD5A98, type metadata accessor for CarPlayWidgetEvent, &unk_2441DAB48);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2441A263C(uint64_t a1)
{
  v2 = sub_2441A3598(&qword_27EDD5A68, type metadata accessor for CarPlayWidgetEvent, &unk_2441DAAD0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2441A26A8(uint64_t a1, uint64_t a2)
{
  sub_2441D924C();
  sub_2441D8C1C();
  return sub_2441D926C();
}

uint64_t sub_2441A2700(uint64_t a1, uint64_t a2)
{
  sub_2441A3598(&qword_27EDD5A68, type metadata accessor for CarPlayWidgetEvent, &unk_2441DAAD0);

  return sub_2441D8AFC();
}

uint64_t sub_2441A277C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2441D924C();
  sub_2441D8C1C();
  return sub_2441D926C();
}

uint64_t sub_2441A27D4()
{
  v0 = sub_2441D8B6C();
  __swift_allocate_value_buffer(v0, qword_27EDDB0F8);
  __swift_project_value_buffer(v0, qword_27EDDB0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AA8, ":y");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AB0, &qword_2441DACA8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2441DA980;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2441D8B4C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ADDED_MANUALLY";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REMOVED_MANUALLY";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ADDED_BY_SYSTEM";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "REMOVED_BY_SYSTEM";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "ROTATED_TO_MANUALLY";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "ROTATED_TO_BY_SYSTEM";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "USER_TAPPED_ON_WIDGET";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v9();
  return sub_2441D8B5C();
}

uint64_t sub_2441A2B44(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_2441D8B6C();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_2441A2BBC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2441D8B6C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2441A2C78@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2441D8B6C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2441A2D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayWidgetEvent(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2441D91CC();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_2441D91CC();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_2441D91CC();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_2441D91CC();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_37:
    v37 = v4[9];
    v38 = (a1 + v37);
    v39 = *(a1 + v37 + 4);
    v40 = (a2 + v37);
    v41 = *(a2 + v37 + 4);
    if (v39)
    {
      if (!v41)
      {
        return 0;
      }
    }

    else
    {
      if (*v38 != *v40)
      {
        LOBYTE(v41) = 1;
      }

      if (v41)
      {
        return 0;
      }
    }

    v42 = v4[10];
    v43 = (a1 + v42);
    v44 = *(a1 + v42 + 8);
    v45 = (a2 + v42);
    v46 = *(a2 + v42 + 8);
    if (v44)
    {
      if (!v46)
      {
        return 0;
      }
    }

    else
    {
      if (*v43 != *v45)
      {
        LOBYTE(v46) = 1;
      }

      if (v46)
      {
        return 0;
      }
    }

    v47 = v4[11];
    v48 = a1 + v47;
    v49 = *(a1 + v47 + 9);
    v50 = a2 + v47;
    if (v49)
    {
      if ((*(v50 + 9) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(v50 + 9) & 1) != 0 || !sub_2441A1B58(*v48, *(v48 + 8) & 1, *v50))
    {
      return 0;
    }

    sub_2441D89EC();
    sub_2441A3598(&qword_27EDD5AB8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_2441D8C3C() & 1;
  }

  if (!v33)
  {
    goto LABEL_37;
  }

  return 0;
}

unint64_t sub_2441A2FC0()
{
  result = qword_27EDD5A38;
  if (!qword_27EDD5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5A38);
  }

  return result;
}

unint64_t sub_2441A3018()
{
  result = qword_27EDD5A40;
  if (!qword_27EDD5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5A40);
  }

  return result;
}

unint64_t sub_2441A3070()
{
  result = qword_27EDD5A48;
  if (!qword_27EDD5A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDD5A50, qword_2441DA9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5A48);
  }

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

unint64_t sub_2441A3120()
{
  result = qword_27EDD5A58;
  if (!qword_27EDD5A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5A58);
  }

  return result;
}

void sub_2441A32BC(uint64_t a1)
{
  sub_2441D89EC();
  if (v1 <= 0x3F)
  {
    sub_2441A33CC(319, &qword_27EDD5A78, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_2441A33CC(319, &qword_27EDD5A80, MEMORY[0x277D849A8]);
      if (v3 <= 0x3F)
      {
        sub_2441A33CC(319, &qword_27EDD5A88, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          sub_2441A33CC(319, &qword_27EDD5A90, &type metadata for CarPlayWidgetEvent.CarPlayWidgetOutcomeType);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2441A33CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2441D8F1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CarPlayWidgetEvent.CarPlayWidgetOutcomeType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CarPlayWidgetEvent.CarPlayWidgetOutcomeType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2441A3468(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_2441A3498()
{
  result = qword_27EDD5AA0;
  if (!qword_27EDD5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5AA0);
  }

  return result;
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2441A3598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CarPlayIdentity.carPlayIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

ContextualSuggestionClient::CarPlayIdentity_optional __swiftcall CarPlayIdentity.init(carPlayIdentifier:)(Swift::String carPlayIdentifier)
{
  object = carPlayIdentifier._object;
  countAndFlagsBits = carPlayIdentifier._countAndFlagsBits;
  v4 = v1;
  v5 = sub_2441D8B8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v12 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    *v4 = countAndFlagsBits;
    v4[1] = object;
  }

  else
  {

    v13 = sub_2441957AC();
    (*(v6 + 16))(v11, v13, v5);
    v14 = sub_2441D8B7C();
    v15 = sub_2441D8E0C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_244192000, v14, v15, "Trying to initialize CarPlayIdentity with an empty carPlayIdentifier string", v16, 2u);
      MEMORY[0x245D5B3C0](v16, -1, -1);
    }

    v7 = (*(v6 + 8))(v11, v5);
    *v4 = 0;
    v4[1] = 0;
  }

  result.value.carPlayIdentifier._object = v8;
  result.value.carPlayIdentifier._countAndFlagsBits = v7;
  result.is_nil = v9;
  return result;
}

void sub_2441A37A0()
{
  sub_2441D8C6C();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2441D8C4C();

  v2 = [v0 initWithSuiteName_];

  qword_27EDDB110 = v2;
}

uint64_t *sub_2441A3828()
{
  if (qword_27EDD6D60 != -1)
  {
    swift_once();
  }

  return &qword_27EDDB110;
}

uint64_t sub_2441A3878()
{
  if (qword_27EDD6D60 != -1)
  {
    swift_once();
  }

  v0 = qword_27EDDB110;
  v1 = qword_27EDDB110;
  return v0;
}

uint64_t sub_2441A3914(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_2441A39E4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

id sub_2441A3A80()
{
  v0 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v1 = sub_2441D8C4C();
  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t sub_2441A3B30(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_2441A3BC0()
{
  [*(v0 + 32) invalidate];

  return v0;
}

uint64_t sub_2441A3C00()
{
  [*(v0 + 32) invalidate];

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_2441A3C58()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v2 = sub_2441D8C4C();
  v3 = [v1 initWithIdentifier_];

  *(v0 + 32) = v3;
  *(v0 + 40) = 0;
  return v0;
}

uint64_t sub_2441A3CEC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v2 = sub_2441D8C4C();
  v3 = [v1 initWithIdentifier_];

  *(v0 + 32) = v3;
  *(v0 + 40) = 0;
  return v0;
}

uint64_t sub_2441A3D6C()
{
  type metadata accessor for ContextualSuggestionProvider();
  v0 = sub_2441CAF08();
  v1 = *v0;
  v2 = v0[1];

  return ContextualSuggestionProvider.__allocating_init(endpoint:)(v1, v2);
}

id sub_2441A3DB8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CFA380]);

  return [v0 init];
}

uint64_t CarPlayWidgetSuggestionProvider.stackSuggestions.getter()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 24));
  sub_2441A9078((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));

  return v3;
}

uint64_t CarPlayWidgetSuggestionProvider.shouldDisableSuppressionTimerForTooling.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 84) = a1;
  return result;
}

uint64_t CarPlayWidgetSuggestionProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  CarPlayWidgetSuggestionProvider.init()();
  return v0;
}

unint64_t CarPlayWidgetSuggestionProvider.init()()
{
  v1 = v0;
  v34 = *v0;
  v2 = sub_2441D8E2C();
  MEMORY[0x28223BE20](v2);
  v36 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2441D8BEC();
  MEMORY[0x28223BE20](v4 - 8);
  v35 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2441D8E3C();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2441D895C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextualSuggestionProvider();
  v13 = sub_2441CAF08();
  v14 = *v13;
  v15 = v13[1];

  v0[5] = ContextualSuggestionProvider.__allocating_init(endpoint:)(v14, v15);
  v0[6] = [objc_allocWithZone(MEMORY[0x277CFA380]) init];
  CarPlayWidgetEngagementStream.init()((v0 + 7));
  *(v0 + 84) = 0;
  v0[13] = 0;
  v0[15] = 0;
  swift_unknownObjectWeakInit();
  v16._countAndFlagsBits = 0x746C7561666564;
  v16._object = 0xE700000000000000;
  CarPlayIdentity.init(carPlayIdentifier:)(v16);
  v17 = v41;
  v37 = v2;
  if (v41)
  {
    v18 = v40;
LABEL_5:
    v32 = v18;
    v1[11] = v18;
    v1[12] = v17;
    type metadata accessor for CarPlayWidgetSuggestionProvider.GuardedData();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v25 = objc_allocWithZone(MEMORY[0x277CF0BD8]);

    v26 = sub_2441D8C4C();
    v27 = [v25 initWithIdentifier_];

    *(v24 + 32) = v27;
    *(v24 + 40) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AC0, &unk_2441DACF0);
    v28 = swift_allocObject();
    *(v28 + 24) = 0;
    *(v28 + 16) = v24;
    v1[2] = v28;
    v31[1] = sub_244194FC8(0, &qword_27EDD5DE0, 0x277D85C78);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_2441D8FEC();

    v40 = 0x6C7070612E6D6F63;
    v41 = 0xEA00000000002E65;
    v29 = sub_2441D92EC();
    MEMORY[0x245D5A4A0](v29);

    MEMORY[0x245D5A4A0](0x74756F6C6C61632ELL, 0xE800000000000000);
    (*(v6 + 104))(v8, *MEMORY[0x277D85268], v33);
    sub_2441D8BDC();
    v40 = MEMORY[0x277D84F90];
    sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
    sub_244198640(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660, MEMORY[0x277D83970]);
    sub_2441D8F3C();
    v1[3] = sub_2441D8E6C();
    *(v1 + 20) = 0;
    type metadata accessor for CarPlayWidgetConfigurationManager();
    v30 = v32;
    v40 = v32;
    v41 = v17;

    v1[4] = CarPlayWidgetConfigurationManager.__allocating_init(carPlayIdentity:)(&v40);
    v40 = v30;
    v41 = v17;
    sub_2441A44DC(&v40);

    return v1;
  }

  sub_2441D894C();
  v19 = sub_2441D893C();
  v21 = v20;
  (*(v10 + 8))(v12, v9);
  v22._countAndFlagsBits = v19;
  v22._object = v21;
  result = CarPlayIdentity.init(carPlayIdentifier:)(v22);
  v17 = v39;
  if (v39)
  {
    v18 = v38;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_2441A44DC(uint64_t *a1)
{
  v2 = v1;
  v64 = *v1;
  v4 = sub_2441D8BBC();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2441D8B8C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v13 = *a1;
  v12 = a1[1];
  v14 = sub_2441957AC();
  v15 = *(v7 + 16);
  v60 = v14;
  v61 = v7 + 16;
  v59 = v15;
  (v15)(v11);

  v16 = sub_2441D8B7C();
  v17 = sub_2441D8E1C();

  v18 = os_log_type_enabled(v16, v17);
  v63 = v7;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v55 = v6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v54 = v13;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315394;
    v23 = sub_2441D92EC();
    v25 = sub_244195848(v23, v24, aBlock);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_244195848(v54, v12, aBlock);
    _os_log_impl(&dword_244192000, v16, v17, "%s initialized with carPlayIdentifier %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v22, -1, -1);
    v26 = v20;
    v6 = v55;
    MEMORY[0x245D5B3C0](v26, -1, -1);
  }

  v27 = *(v7 + 8);
  v27(v11, v6);
  v28 = sub_2441A4FDC();
  v29 = *(v2 + 104);
  *(v2 + 104) = v28;

  if ([objc_opt_self() isInternalBuild])
  {
    sub_2441C28B4();
    sub_244194FC8(0, &qword_27EDD5DE0, 0x277D85C78);
    v31 = v56;
    v30 = v57;
    v32 = v58;
    (*(v57 + 104))(v56, *MEMORY[0x277D851B8], v58);

    v33 = sub_2441D8E7C();
    (*(v30 + 8))(v31, v32);
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = swift_allocObject();
    v36 = v64;
    *(v35 + 16) = v34;
    *(v35 + 24) = v36;
    aBlock[4] = sub_2441A984C;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2441A5EE0;
    aBlock[3] = &block_descriptor_22;
    v37 = _Block_copy(aBlock);

    v38 = sub_2441D8C8C();

    swift_beginAccess();
    notify_register_dispatch((v38 + 32), (v2 + 80), v33, v37);
    swift_endAccess();

    _Block_release(v37);
  }

  v39 = *(**(v2 + 40) + 120);
  v40 = swift_unknownObjectRetain();
  v39(v40, &protocol witness table for CarPlayWidgetSuggestionProvider);
  v41 = v62;
  v59(v62, v60, v6);
  v42 = sub_2441D8B7C();
  v43 = sub_2441D8E1C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = v6;
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v44 = 136315394;
    v47 = sub_2441D92EC();
    v49 = sub_244195848(v47, v48, aBlock);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_244195848(0xD000000000000011, 0x80000002441DEC60, aBlock);
    _os_log_impl(&dword_244192000, v42, v43, "%s.%s: resetting delegate notification suspension timer", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v46, -1, -1);
    MEMORY[0x245D5B3C0](v44, -1, -1);

    v50 = v41;
    v51 = v45;
  }

  else
  {

    v50 = v41;
    v51 = v6;
  }

  v27(v50, v51);
  v52 = *(v2 + 16);
  os_unfair_lock_lock((v52 + 24));
  sub_2441A77D4((v52 + 16), v2, v64);
  os_unfair_lock_unlock((v52 + 24));
}

uint64_t CarPlayWidgetSuggestionProvider.__allocating_init(identity:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  CarPlayWidgetSuggestionProvider.init(identity:)(a1);
  return v2;
}

uint64_t *CarPlayWidgetSuggestionProvider.init(identity:)(uint64_t *a1)
{
  v2 = v1;
  v28 = sub_2441D8E2C();
  MEMORY[0x28223BE20](v28);
  v27 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2441D8BEC();
  MEMORY[0x28223BE20](v5 - 8);
  v26 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2441D8E3C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v25 = *a1;
  v12 = v25;
  type metadata accessor for ContextualSuggestionProvider();
  v13 = sub_2441CAF08();
  v14 = *v13;
  v15 = v13[1];

  *(v2 + 40) = ContextualSuggestionProvider.__allocating_init(endpoint:)(v14, v15);
  *(v2 + 48) = [objc_allocWithZone(MEMORY[0x277CFA380]) init];
  CarPlayWidgetEngagementStream.init()(v2 + 56);
  *(v2 + 84) = 0;
  *(v2 + 104) = 0;
  *(v2 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 88) = v12;
  *(v2 + 96) = v11;
  type metadata accessor for CarPlayWidgetSuggestionProvider.GuardedData();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = objc_allocWithZone(MEMORY[0x277CF0BD8]);

  v18 = sub_2441D8C4C();
  v19 = [v17 initWithIdentifier_];

  *(v16 + 32) = v19;
  *(v16 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AC0, &unk_2441DACF0);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v16;
  *(v2 + 16) = v20;
  v24[1] = sub_244194FC8(0, &qword_27EDD5DE0, 0x277D85C78);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_2441D8FEC();

  v29 = 0x6C7070612E6D6F63;
  v30 = 0xEA00000000002E65;
  v21 = sub_2441D92EC();
  MEMORY[0x245D5A4A0](v21);

  MEMORY[0x245D5A4A0](0x74756F6C6C61632ELL, 0xE800000000000000);
  (*(v8 + 104))(v10, *MEMORY[0x277D85268], v7);
  sub_2441D8BDC();
  v29 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
  sub_244198640(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660, MEMORY[0x277D83970]);
  sub_2441D8F3C();
  *(v2 + 24) = sub_2441D8E6C();
  *(v2 + 80) = 0;
  type metadata accessor for CarPlayWidgetConfigurationManager();
  v22 = v25;
  v29 = v25;
  v30 = v11;

  *(v2 + 32) = CarPlayWidgetConfigurationManager.__allocating_init(carPlayIdentity:)(&v29);
  v29 = v22;
  v30 = v11;
  sub_2441A44DC(&v29);

  return v2;
}

id sub_2441A4FDC()
{
  v1 = *v0;
  v2 = sub_2441D8BBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_244194FC8(0, &qword_27EDD5DE0, 0x277D85C78);
  (*(v3 + 104))(v5, *MEMORY[0x277D851C8], v2);
  v6 = sub_2441D8E7C();
  (*(v3 + 8))(v5, v2);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v9 = objc_allocWithZone(MEMORY[0x277D42628]);
  aBlock[4] = sub_2441A9C80;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = &block_descriptor_51;
  v10 = _Block_copy(aBlock);

  v11 = [v9 initWithQueue:v6 operation:v10];

  _Block_release(v10);

  return v11;
}

uint64_t sub_2441A5218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_2441D8B8C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441A52D8, 0, 0);
}

uint64_t sub_2441A52D8()
{
  v21 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_2441957AC();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2441D8B7C();
  v6 = sub_2441D8E1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = sub_2441D92EC();
    v15 = sub_244195848(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_244192000, v5, v6, "%s: received CarPlay debug rotation notification", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245D5B3C0](v12, -1, -1);
    MEMORY[0x245D5B3C0](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v17 = swift_task_alloc();
    v0[11] = v17;
    *v17 = v0;
    v17[1] = sub_2441A550C;

    return sub_2441A5640();
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2441A550C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2441A5640()
{
  v1[2] = v0;
  v2 = sub_2441D8B8C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  type metadata accessor for WidgetStackSuggestionGenerator(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441A5738, 0, 0);
}

uint64_t sub_2441A5738()
{
  v1 = *(v0[2] + 32);
  v0[8] = v1;
  v2 = (*v1 + 160) & 0xFFFFFFFFFFFFLL | 0x5879000000000000;
  v0[9] = *(*v1 + 160);
  v0[10] = v2;
  return MEMORY[0x2822009F8](sub_2441A5778, v1, 0);
}

uint64_t sub_2441A5778()
{
  *(v0 + 88) = (*(v0 + 72))();
  *(v0 + 96) = 0;

  return MEMORY[0x2822009F8](sub_2441A5810, 0, 0);
}

void sub_2441A5810()
{
  v1 = v0[11];
  if (!v1)
  {
    goto LABEL_11;
  }

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!sub_2441D8F5C())
  {
LABEL_10:

LABEL_11:
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[3];
    v22 = sub_2441957AC();
    (*(v20 + 16))(v19, v22, v21);
    v23 = sub_2441D8B7C();
    v24 = sub_2441D8E1C();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[4];
    v26 = v0[5];
    v28 = v0[3];
    if (v25)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_244192000, v23, v24, "Not producing CarPlay stack suggestions, no stacks in configuration", v29, 2u);
      MEMORY[0x245D5B3C0](v29, -1, -1);
    }

    (*(v27 + 8))(v26, v28);
    goto LABEL_14;
  }

LABEL_4:
  v2 = (*(**(v0[2] + 40) + 144))();
  v3 = v0[12];
  v31 = v2;
  if (v2)
  {

    v5 = sub_2441A660C(v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];
  v11 = *(v10 + 48);
  v12 = sub_2441957AC();
  (*(v9 + 16))(v7, v12, v8);
  sub_2441B4620(2, v1, v5, v11, v7, v6);
  v13 = sub_2441B4894();
  v15 = v14;
  v16 = *(v10 + 16);
  v17 = swift_task_alloc();
  *(v17 + 16) = v13;
  *(v17 + 24) = v15;
  os_unfair_lock_lock((v16 + 24));
  sub_2441A9B64((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
  if (!v3)
  {
    v18 = v0[7];

    sub_2441A6968();

    sub_2441A9BF8(v18);
LABEL_14:

    v30 = v0[1];

    v30();
  }
}

uint64_t sub_2441A5AE8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_2441957AC();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2441D8B7C();
  v6 = sub_2441D8E1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_244192000, v5, v6, "Not producing CarPlay stack suggestions, no stacks in configuration", v11, 2u);
    MEMORY[0x245D5B3C0](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2441A5C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2441A991C(a3, v25 - v10);
  v12 = sub_2441D8D9C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2441A998C(v11);
  }

  else
  {
    sub_2441D8D8C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2441D8D7C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2441D8C8C() + 32;
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

      sub_2441A998C(a3);

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

  sub_2441A998C(a3);
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

uint64_t sub_2441A5EE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2441A5F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_2441D8D9C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = a2;
  sub_2441A5C20(0, 0, v8, a4, v11);
}

uint64_t sub_2441A6084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_2441D8B8C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441A6144, 0, 0);
}

uint64_t sub_2441A6144()
{
  v21 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_2441957AC();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2441D8B7C();
  v6 = sub_2441D8E1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = sub_2441D92EC();
    v15 = sub_244195848(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_244192000, v5, v6, "%s: running coalesced refresh", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245D5B3C0](v12, -1, -1);
    MEMORY[0x245D5B3C0](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v17 = swift_task_alloc();
    v0[11] = v17;
    *v17 = v0;
    v17[1] = sub_2441A9D9C;

    return sub_2441A5640();
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

void *CarPlayWidgetSuggestionProvider.deinit()
{
  v1 = v0;
  v2 = sub_2441D8B8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2441957AC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2441D8B7C();
  v8 = sub_2441D8E1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    v11 = sub_2441D92EC();
    v13 = sub_244195848(v11, v12, v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_244192000, v7, v8, "%s: deinit", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245D5B3C0](v10, -1, -1);
    MEMORY[0x245D5B3C0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  notify_cancel(*(v1 + 80));

  v14 = *(v1 + 56);
  v15 = *(v1 + 72);

  sub_2441A90E0(v1 + 112);
  return v1;
}

uint64_t CarPlayWidgetSuggestionProvider.__deallocating_deinit()
{
  CarPlayWidgetSuggestionProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

unint64_t sub_2441A660C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D5A7F0](v2, v25);
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = *(isUniquelyReferenced_nonNull_bridgeObject + OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_suggestions);

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_2441D8F5C();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2441D8F5C();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          v12 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_2441D8F5C();
        goto LABEL_20;
      }

      if (v10)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_2441D900C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2441D8F5C();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v14 >> 1) - v13) < v9)
          {
            goto LABEL_42;
          }

          v30 = v3;
          v16 = v12 + 8 * v13 + 32;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_44;
            }

            sub_244198640(&qword_27EDD5B18, &qword_27EDD5B10, &qword_2441DAEF8, MEMORY[0x277D83988]);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B10, &qword_2441DAEF8);
              v18 = sub_2441A9604(v31, i, v7);
              v20 = *v19;
              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            type metadata accessor for ContextualSuggestion();
            swift_arrayInitWithCopy();
          }

          v3 = v30;
          v1 = v26;
          if (v9 >= 1)
          {
            v21 = *(v12 + 16);
            v5 = __OFADD__(v21, v9);
            v22 = v21 + v9;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v12 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_25;
        }
      }

      if (v9 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
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
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_2441D8F5C();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

void sub_2441A6968()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2441D8BAC();
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2441D8BEC();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2441D8B8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2441957AC();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2441D8B7C();
  v12 = sub_2441D8E1C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = v6;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    v17 = sub_2441D92EC();
    v19 = sub_244195848(v17, v18, aBlock);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_244192000, v11, v12, "%s: requesting delegate notification", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x245D5B3C0](v16, -1, -1);
    v20 = v14;
    v3 = v30;
    MEMORY[0x245D5B3C0](v20, -1, -1);

    v21 = (*(v7 + 8))(v9, v29);
  }

  else
  {

    v21 = (*(v7 + 8))(v9, v6);
  }

  v22 = v1[2];
  MEMORY[0x28223BE20](v21);
  *(&v28 - 2) = v1;
  *(&v28 - 1) = v2;
  os_unfair_lock_lock((v22 + 24));
  sub_2441A9C54((v22 + 16), aBlock);
  os_unfair_lock_unlock((v22 + 24));
  v23 = aBlock[0];
  if (aBlock[0])
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v1;
    *(v24 + 24) = v23;
    aBlock[4] = sub_24419C974;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2441988C4;
    aBlock[3] = &block_descriptor_44;
    v25 = _Block_copy(aBlock);

    v26 = v31;
    sub_2441D8BDC();
    v36 = MEMORY[0x277D84F90];
    sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
    sub_244198640(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00, MEMORY[0x277D83970]);
    v27 = v33;
    sub_2441D8F3C();
    MEMORY[0x245D5A650](0, v26, v27, v25);
    _Block_release(v25);
    (*(v35 + 8))(v27, v3);
    (*(v32 + 8))(v26, v34);
  }
}

uint64_t sub_2441A6E78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 120);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2441A6EC8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 120) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CarPlayWidgetSuggestionProvider.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 120) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CarPlayWidgetSuggestionProvider.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 120);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_2441A7050;
}

void sub_2441A7050(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 120) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_2441A70D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v7 = sub_2441D8B8C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v66 - v13 + 16;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v66 - v16 + 16;
  MEMORY[0x28223BE20](v15);
  v19 = v66 - v18 + 16;
  swift_beginAccess();
  if (*(a2 + 84) == 1)
  {
    v20 = sub_2441957AC();
    (*(v8 + 16))(v19, v20, v7);
    v21 = sub_2441D8B7C();
    v22 = sub_2441D8E1C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v66[0] = v24;
      *v23 = 136315138;
      v25 = sub_2441D92EC();
      v27 = sub_244195848(v25, v26, v66);
      v65 = v7;
      v28 = a1;
      v29 = a4;
      v30 = v27;

      *(v23 + 4) = v30;
      a4 = v29;
      a1 = v28;
      _os_log_impl(&dword_244192000, v21, v22, "%s: rotation suppression is disabled for tooling via property, notifying immediately", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x245D5B3C0](v24, -1, -1);
      MEMORY[0x245D5B3C0](v23, -1, -1);

      (*(v8 + 8))(v19, v65);
    }

    else
    {

      (*(v8 + 8))(v19, v7);
    }

    v56 = *a1;
    swift_beginAccess();
    *a4 = *(v56 + 16);
  }

  v65 = a4;
  if (qword_27EDD6D60 != -1)
  {
    swift_once();
  }

  v31 = qword_27EDDB110;
  if (qword_27EDDB110)
  {
    sub_2441C27C4();

    v32 = sub_2441D8C4C();

    v33 = [v31 BOOLForKey_];

    if (v33)
    {
      v34 = sub_2441957AC();
      (*(v8 + 16))(v17, v34, v7);
      v35 = sub_2441D8B7C();
      v36 = sub_2441D8E1C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v66[0] = v38;
        *v37 = 136315138;
        v39 = sub_2441D92EC();
        v41 = sub_244195848(v39, v40, v66);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_244192000, v35, v36, "%s: rotation suppression is disabled via defaults override, notifying immediately", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x245D5B3C0](v38, -1, -1);
        MEMORY[0x245D5B3C0](v37, -1, -1);
      }

      (*(v8 + 8))(v17, v7);
      v42 = *a1;
      swift_beginAccess();
      v43 = *(v42 + 16);
LABEL_20:
      *v65 = v43;
    }
  }

  v44 = *a1;
  if (![*(*a1 + 32) isScheduled])
  {
    v57 = sub_2441957AC();
    (*(v8 + 16))(v11, v57, v7);
    v58 = sub_2441D8B7C();
    v59 = sub_2441D8E1C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v66[0] = v61;
      *v60 = 136315138;
      v62 = sub_2441D92EC();
      v64 = sub_244195848(v62, v63, v66);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_244192000, v58, v59, "%s: no delegate notification suspension timer scheduled, notifying immediately", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x245D5B3C0](v61, -1, -1);
      MEMORY[0x245D5B3C0](v60, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    swift_beginAccess();
    *(v44 + 40) = 0;
    swift_beginAccess();
    v43 = *(v44 + 16);
    goto LABEL_20;
  }

  [*(v44 + 32) timeRemaining];
  v46 = v45;
  v47 = sub_2441957AC();
  (*(v8 + 16))(v14, v47, v7);
  v48 = sub_2441D8B7C();
  v49 = sub_2441D8E1C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v66[0] = v51;
    *v50 = 136315394;
    v52 = sub_2441D92EC();
    v54 = sub_244195848(v52, v53, v66);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2048;
    *(v50 + 14) = v46;
    _os_log_impl(&dword_244192000, v48, v49, "%s: delegate notification suspension timer already scheduled %f seconds left, setting notification to pending", v50, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x245D5B3C0](v51, -1, -1);
    MEMORY[0x245D5B3C0](v50, -1, -1);
  }

  (*(v8 + 8))(v14, v7);
  result = swift_beginAccess();
  *(v44 + 40) = 1;
  *v65 = 0;
  return result;
}

void sub_2441A77D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if ([*(*a1 + 32) isScheduled])
  {
    [*(v5 + 32) timeRemaining];
    if (v6 > 300.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 300.0;
    }
  }

  else
  {
    v7 = 300.0;
  }

  [*(v5 + 32) cancel];
  v8 = *(v5 + 32);
  v9 = *(a2 + 24);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a3;
  v14[4] = sub_244195384;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_24419531C;
  v14[3] = &block_descriptor;
  v12 = _Block_copy(v14);
  v13 = v8;

  [v13 scheduleWithFireInterval:v9 leewayInterval:v12 queue:v7 handler:1.0];
  _Block_release(v12);
}

uint64_t sub_2441A797C()
{
  v1 = *(v0[2] + 32);
  v0[3] = v1;
  v2 = (*v1 + 160) & 0xFFFFFFFFFFFFLL | 0x5879000000000000;
  v0[4] = *(*v1 + 160);
  v0[5] = v2;
  return MEMORY[0x2822009F8](sub_2441A79BC, v1, 0);
}

uint64_t sub_2441A79BC()
{
  v1 = (*(v0 + 32))();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t CarPlayWidgetSuggestionProvider.writeStacks(_:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = sub_2441D8B8C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2441A7B30, 0, 0);
}

uint64_t sub_2441A7B30()
{
  v1 = *(v0[8] + 32);
  v0[14] = v1;
  v2 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0xAFF000000000000;
  v0[15] = *(*v1 + 168);
  v0[16] = v2;
  return MEMORY[0x2822009F8](sub_2441A7B70, v1, 0);
}

uint64_t sub_2441A7B70()
{
  *(v0 + 136) = (*(v0 + 120))(*(v0 + 56)) & 1;

  return MEMORY[0x2822009F8](sub_2441A7C40, 0, 0);
}

char *sub_2441A7C40()
{
  v92 = v0;
  v1 = v0;
  if (*(v0 + 136) == 1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = sub_2441957AC();
    v77 = *(v4 + 16);
    v77(v2, v5, v3);
    v6 = sub_2441D8B7C();
    v7 = sub_2441D8E1C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v1[13];
    v10 = v1[10];
    v11 = v1[11];
    v88 = v1;
    v78 = v5;
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v89 = v13;
      *v12 = 136315138;
      v14 = sub_2441D92EC();
      v16 = sub_244195848(v14, v15, &v89);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_244192000, v6, v7, "%s: configuration manager cache did update, requesting coalesced refresh", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x245D5B3C0](v13, -1, -1);
      MEMORY[0x245D5B3C0](v12, -1, -1);
    }

    v76 = *(v11 + 8);
    v76(v9, v10);
    v17 = v1[7];
    if (v17 >> 62)
    {
      goto LABEL_43;
    }

    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v91 = MEMORY[0x277D84F90];
      result = sub_2441A94D8(0, v18 & ~(v18 >> 63), 0);
      if ((v18 & 0x8000000000000000) == 0)
      {
        v21 = 0;
        v81 = v18;
        v82 = v17 & 0xC000000000000001;
        v22 = v91;
        v79 = v1[7] + 32;
        v80 = v17 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v17 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            v18 = sub_2441D8F5C();
            goto LABEL_6;
          }

          if (v82)
          {
            v23 = MEMORY[0x245D5A7F0]();
          }

          else
          {
            if (v21 >= *(v80 + 16))
            {
              goto LABEL_42;
            }

            v23 = *(v79 + 8 * v21);
          }

          v24 = v23;
          v25 = [v23 widgets];
          sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
          v26 = sub_2441D8D0C();

          v27 = v26;
          if (v26 >> 62)
          {
            v44 = v26;
            v28 = sub_2441D8F5C();
            v27 = v44;
            v85 = v17;
            if (!v28)
            {
LABEL_26:

              goto LABEL_27;
            }
          }

          else
          {
            v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v85 = v17;
            if (!v28)
            {
              goto LABEL_26;
            }
          }

          v29 = v27;
          v89 = v19;
          sub_2441A94D8(0, v28 & ~(v28 >> 63), 0);
          if (v28 < 0)
          {
            goto LABEL_41;
          }

          v86 = v28;
          v83 = v24;
          v84 = v22;
          v30 = 0;
          v19 = v89;
          v31 = v29;
          v32 = v29 & 0xC000000000000001;
          v33 = v29;
          do
          {
            if (v32)
            {
              v34 = MEMORY[0x245D5A7F0](v30, v31);
            }

            else
            {
              v34 = *(v31 + 8 * v30 + 32);
            }

            v35 = v34;
            v36 = [v34 chsWidget];
            v37 = [v36 extensionIdentity];

            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
            v38 = sub_2441D89BC();
            v40 = v39;
            swift_endAccess();

            v89 = v19;
            v42 = *(v19 + 16);
            v41 = *(v19 + 24);
            if (v42 >= v41 >> 1)
            {
              sub_2441A94D8((v41 > 1), v42 + 1, 1);
              v19 = v89;
            }

            ++v30;
            *(v19 + 16) = v42 + 1;
            v43 = v19 + 16 * v42;
            *(v43 + 32) = v38;
            *(v43 + 40) = v40;
            v31 = v33;
          }

          while (v86 != v30);

          v1 = v88;
          v18 = v81;
          v24 = v83;
          v22 = v84;
LABEL_27:
          v45 = [v24 identifier];
          v46 = sub_2441D8C6C();
          v48 = v47;

          v89 = v46;
          v90 = v48;
          MEMORY[0x245D5A4A0](5972026, 0xE300000000000000);
          v1[5] = v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AD8, &qword_2441DAD10);
          sub_244198640(&qword_27EDD5AE0, &qword_27EDD5AD8, &qword_2441DAD10, MEMORY[0x277D83958]);
          v49 = sub_2441D8C2C();
          v51 = v50;

          MEMORY[0x245D5A4A0](v49, v51);

          MEMORY[0x245D5A4A0](93, 0xE100000000000000);
          v53 = v89;
          v52 = v90;

          v91 = v22;
          v55 = *(v22 + 16);
          v54 = *(v22 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_2441A94D8((v54 > 1), v55 + 1, 1);
            v22 = v91;
          }

          *(v22 + 16) = v55 + 1;
          v56 = v22 + 16 * v55;
          *(v56 + 32) = v53;
          *(v56 + 40) = v52;
          v21 = v85;
          v19 = MEMORY[0x277D84F90];
          if (v85 == v18)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
      goto LABEL_45;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_32:
    v57 = v1[12];
    v58 = v1[10];
    v1[6] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AD8, &qword_2441DAD10);
    sub_244198640(&qword_27EDD5AE0, &qword_27EDD5AD8, &qword_2441DAD10, MEMORY[0x277D83958]);
    v59 = sub_2441D8C2C();
    v61 = v60;

    v77(v57, v78, v58);

    v62 = sub_2441D8B7C();
    v63 = sub_2441D8E1C();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v1[12];
    v66 = v1[10];
    if (v64)
    {
      v67 = swift_slowAlloc();
      v87 = v65;
      v68 = v59;
      v69 = swift_slowAlloc();
      v89 = v69;
      *v67 = 136315394;
      v70 = sub_2441D92EC();
      v72 = sub_244195848(v70, v71, &v89);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2080;
      v73 = sub_244195848(v68, v61, &v89);

      *(v67 + 14) = v73;
      _os_log_impl(&dword_244192000, v62, v63, "%s: configuration manager cache did update, stacks = {%s}; requesting coalesced refresh", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D5B3C0](v69, -1, -1);
      v1 = v88;
      MEMORY[0x245D5B3C0](v67, -1, -1);

      v74 = v87;
    }

    else
    {

      v74 = v65;
    }

    v76(v74, v66);
    result = *(v1[8] + 104);
    if (!result)
    {
LABEL_45:
      __break(1u);
      return result;
    }

    [result runAfterDelaySeconds:0 coalescingBehavior:1.0];
  }

  v75 = v1[1];

  return v75();
}

Swift::Void __swiftcall CarPlayWidgetSuggestionProvider.logViewDidAppear()()
{
  v1 = v0[7];
  v2 = v0[8];
  v6 = v0[9];
  v3 = v6;
  v4 = v1;
  v5 = v2;
  CarPlayWidgetEngagementStream.logViewDidAppear()();
}

Swift::Void __swiftcall CarPlayWidgetSuggestionProvider.logUserDidTap(_:)(ATXWidget *a1)
{
  v3 = v1[7];
  v4 = v1[8];
  v11 = v1[9];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v11;
  v8 = v3;
  v9 = v4;
  v10._countAndFlagsBits = v5;
  v10._object = v6;
  CarPlayWidgetEngagementStream.logUserDidTap(_:carPlayIdentifier:)(a1, v10);
}

Swift::Void __swiftcall CarPlayWidgetSuggestionProvider.logUserDidAdd(_:)(ATXWidget *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2441D8B8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2441957AC();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_2441D8B7C();
  v11 = sub_2441D8E1C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v34 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315394;
    v15 = sub_2441D92EC();
    v17 = sub_244195848(v15, v16, &v35);
    v33 = v5;
    v18 = v17;

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_244195848(0xD000000000000011, 0x80000002441DE980, &v35);
    _os_log_impl(&dword_244192000, v10, v11, "%s.%s: resetting delegate notification suspension timer due to user action - user added a widget", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v14, -1, -1);
    v19 = v13;
    a1 = v34;
    MEMORY[0x245D5B3C0](v19, -1, -1);

    (*(v6 + 8))(v8, v33);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v20 = v2[2];
  os_unfair_lock_lock((v20 + 24));
  sub_2441A77D4((v20 + 16), v2, v4);
  os_unfair_lock_unlock((v20 + 24));
  v22 = v2[8];
  v23 = v2[9];
  v35 = v2[7];
  v21 = v35;
  v36 = v22;
  v37 = v23;
  v24 = v2[11];
  v25 = v2[12];
  v26 = v23;
  v27 = v21;
  v28 = v22;
  v29._countAndFlagsBits = v24;
  v29._object = v25;
  CarPlayWidgetEngagementStream.logUserDidAdd(_:carPlayIdentifier:)(a1, v29);
  v30 = v35;
  v31 = v37;
}

Swift::Void __swiftcall CarPlayWidgetSuggestionProvider.logUserDidRemove(_:)(ATXWidget *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2441D8B8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2441957AC();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_2441D8B7C();
  v11 = sub_2441D8E1C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v34 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315394;
    v15 = sub_2441D92EC();
    v17 = sub_244195848(v15, v16, &v35);
    v33 = v5;
    v18 = v17;

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_244195848(0xD000000000000014, 0x80000002441DE9A0, &v35);
    _os_log_impl(&dword_244192000, v10, v11, "%s.%s: resetting delegate notification suspension timer due to user action - user removed a widget", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v14, -1, -1);
    v19 = v13;
    a1 = v34;
    MEMORY[0x245D5B3C0](v19, -1, -1);

    (*(v6 + 8))(v8, v33);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v20 = v2[2];
  os_unfair_lock_lock((v20 + 24));
  sub_2441A77D4((v20 + 16), v2, v4);
  os_unfair_lock_unlock((v20 + 24));
  v22 = v2[8];
  v23 = v2[9];
  v35 = v2[7];
  v21 = v35;
  v36 = v22;
  v37 = v23;
  v24 = v2[11];
  v25 = v2[12];
  v26 = v23;
  v27 = v21;
  v28 = v22;
  v29._countAndFlagsBits = v24;
  v29._object = v25;
  CarPlayWidgetEngagementStream.logUserDidRemove(_:carPlayIdentifier:)(a1, v29);
  v30 = v35;
  v31 = v37;
}

void CarPlayWidgetSuggestionProvider.logStackDidChange(to:reason:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2441D8B8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2441957AC();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_2441D8B7C();
  v13 = sub_2441D8E1C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = a1;
    v17 = v16;
    v37 = v16;
    *v15 = 136315394;
    v18 = sub_2441D92EC();
    v34 = v7;
    v20 = sub_244195848(v18, v19, &v37);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_244195848(0xD00000000000001DLL, 0x80000002441DE9C0, &v37);
    _os_log_impl(&dword_244192000, v12, v13, "%s.%s: resetting delegate notification suspension timer due to stack rotation", v15, 0x16u);
    swift_arrayDestroy();
    v21 = v17;
    a1 = v35;
    MEMORY[0x245D5B3C0](v21, -1, -1);
    v22 = v15;
    a2 = v36;
    MEMORY[0x245D5B3C0](v22, -1, -1);

    (*(v8 + 8))(v10, v34);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v23 = v3[2];
  os_unfair_lock_lock((v23 + 24));
  sub_2441A77D4((v23 + 16), v3, v6);
  os_unfair_lock_unlock((v23 + 24));
  v25 = v3[8];
  v26 = v3[9];
  v37 = v3[7];
  v24 = v37;
  v38 = v25;
  v39 = v26;
  v27 = v3[11];
  v28 = v3[12];
  v29 = v26;
  v30 = v24;
  v31 = v25;
  CarPlayWidgetEngagementStream.logStackDidChange(_:widget:reason:carPlayIdentifier:)(0, a1, a2, v27, v28);
  v32 = v37;
  v33 = v39;
}

void CarPlayWidgetSuggestionProvider.logWidgetStack(_:didChangeTo:reason:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v36 = a1;
  v37 = a2;
  v6 = *v3;
  v7 = sub_2441D8B8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2441957AC();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_2441D8B7C();
  v13 = sub_2441D8E1C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v34 = v7;
    v17 = v16;
    v38 = v16;
    *v15 = 136315394;
    v18 = sub_2441D92EC();
    v20 = sub_244195848(v18, v19, &v38);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_244195848(0xD000000000000025, 0x80000002441DE9E0, &v38);
    _os_log_impl(&dword_244192000, v12, v13, "%s.%s: resetting delegate notification suspension timer due to stack rotation", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v17, -1, -1);
    v21 = v15;
    a3 = v35;
    MEMORY[0x245D5B3C0](v21, -1, -1);

    (*(v8 + 8))(v10, v34);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v22 = v4[2];
  os_unfair_lock_lock((v22 + 24));
  sub_2441A77D4((v22 + 16), v4, v6);
  os_unfair_lock_unlock((v22 + 24));
  v24 = v4[8];
  v25 = v4[9];
  v38 = v4[7];
  v23 = v38;
  v39 = v24;
  v40 = v25;
  v26 = v4[11];
  v27 = v4[12];
  v28 = v25;
  v29 = v23;
  v30 = v24;
  CarPlayWidgetEngagementStream.logStackDidChange(_:widget:reason:carPlayIdentifier:)(v36, v37, a3, v26, v27);
  v31 = v38;
  v32 = v40;
}

uint64_t sub_2441A902C(uint64_t a1)
{

  swift_getAtKeyPath();

  return v2;
}

uint64_t sub_2441A9078@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

void *sub_2441A9108(uint64_t a1, unint64_t a2)
{
  v3 = sub_2441A9154(a1, a2);
  sub_2441A9284(&unk_28578E1B0);
  return v3;
}

void *sub_2441A9154(uint64_t a1, unint64_t a2)
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

  v6 = sub_2441A9370(v5, 0);
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

  result = sub_2441D901C();
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
        v10 = sub_2441D8CBC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2441A9370(v10, 0);
        result = sub_2441D8FDC();
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

uint64_t sub_2441A9284(uint64_t result)
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

  result = sub_2441A93E4(result, v11, 1, v3);
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

void *sub_2441A9370(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B08, &qword_2441DBA40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2441A93E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B08, &qword_2441DBA40);
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

char *sub_2441A94D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2441A94F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2441A94F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5AF0, &qword_2441DAEA8);
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

void (*sub_2441A9604(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D5A7F0](a2, a3);
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
    return sub_2441A9684;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2441A96AC(uint64_t a1, int a2)
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

uint64_t sub_2441A96F4(uint64_t result, int a2, int a3)
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

uint64_t sub_2441A97B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2441A97D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27EDD5AE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDD5AE8);
    }
  }
}

uint64_t sub_2441A9884()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A54;

  return sub_2441A5218(v4, v5, v6, v2, v3);
}

uint64_t sub_2441A991C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2441A998C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2441A99F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_244198A50;

  return sub_244197B10(a1, v4);
}

uint64_t sub_2441A9AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_244198A54;

  return sub_244197B10(a1, v4);
}

uint64_t sub_2441A9B64(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v4 + 16) = v3;

  swift_beginAccess();
  *(v4 + 24) = v2;
}

uint64_t sub_2441A9BF8(uint64_t a1)
{
  v2 = type metadata accessor for WidgetStackSuggestionGenerator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_25Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2441A9CF8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A50;

  return sub_2441A6084(v4, v5, v6, v2, v3);
}

uint64_t sub_2441A9DB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65736572706572 && a2 == 0xEE006E6F69746174;
  if (v4 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL)
  {

    return 1;
  }

  else
  {
    v6 = sub_2441D91CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2441A9EC8(char a1)
{
  sub_2441D924C();
  MEMORY[0x245D5AA50](a1 & 1);
  return sub_2441D926C();
}

uint64_t sub_2441A9F10(char a1)
{
  if (a1)
  {
    return 0x6974736567677573;
  }

  else
  {
    return 0x6E65736572706572;
  }
}

uint64_t sub_2441A9F74()
{
  v1 = *v0;
  sub_2441D924C();
  MEMORY[0x245D5AA50](v1);
  return sub_2441D926C();
}

uint64_t sub_2441A9FE8(uint64_t a1)
{
  v2 = *v1;
  sub_2441D924C();
  MEMORY[0x245D5AA50](v2);
  return sub_2441D926C();
}

uint64_t sub_2441AA02C()
{
  if (*v0)
  {
    return 0x6974736567677573;
  }

  else
  {
    return 0x6E65736572706572;
  }
}

uint64_t sub_2441AA07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65736572706572 && a2 == 0xEE006E6F69746174;
  if (v6 || (sub_2441D91CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2441D91CC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2441AA170(uint64_t a1)
{
  v2 = sub_2441AA75C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441AA1AC(uint64_t a1)
{
  v2 = sub_2441AA75C();

  return MEMORY[0x2821FE720](a1, v2);
}

id ContextualSuggestionContext.__allocating_init(representation:suggestions:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_representation] = a1;
  *&v5[OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_suggestions] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ContextualSuggestionContext.init(representation:suggestions:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_representation] = a1;
  *&v2[OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_suggestions] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_2441AA328(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_representation) + OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_identifier);
  v3 = (*(a2 + OBJC_IVAR____TtC26ContextualSuggestionClient27ContextualSuggestionContext_representation) + OBJC_IVAR____TtC26ContextualSuggestionClient21ContextRepresentation_identifier);
  if (*v2 == *v3 && v2[1] == v3[1])
  {
    return 1;
  }

  else
  {
    return sub_2441D91CC();
  }
}

id ContextualSuggestionContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextualSuggestionContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2441AA43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5B50, &unk_2441DAF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2441AA4A8()
{
  result = qword_27EDD5B60;
  if (!qword_27EDD5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5B60);
  }

  return result;
}

unint64_t sub_2441AA500()
{
  result = qword_27EDD5B68;
  if (!qword_27EDD5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5B68);
  }

  return result;
}

unint64_t sub_2441AA558()
{
  result = qword_27EDD5B70;
  if (!qword_27EDD5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5B70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextualSuggestionContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContextualSuggestionContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2441AA75C()
{
  result = qword_27EDD5BE0;
  if (!qword_27EDD5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5BE0);
  }

  return result;
}

id sub_2441AA7B0()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 112);
  }

  else
  {
    sub_2441C23D8();
    v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);

    v4 = sub_2441D8C4C();

    v5 = [v3 initWithMachServiceName:v4 options:0];

    v6 = contextualEngineInternalInterface.getter();
    [v5 setRemoteObjectInterface_];

    [v5 resume];
    v7 = *(v0 + 112);
    *(v0 + 112) = v5;
    v2 = v5;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

void *sub_2441AA88C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  v2 = sub_2441AA7B0();
  aBlock[4] = sub_2441AD8A8;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441AAC44;
  aBlock[3] = &block_descriptor_93;
  v3 = _Block_copy(aBlock);

  v4 = [v2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);

  sub_2441D8F2C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5CD0, &unk_2441DB260);
  if (swift_dynamicCast())
  {
    v5 = v8;
  }

  else
  {
    swift_beginAccess();
    v5 = *v1;
    if (!*v1)
    {
      sub_2441AD8C8();
      swift_allocError();
    }

    swift_willThrow();
    v6 = v5;
  }

  return v5;
}

id sub_2441AAA50(void *a1, uint64_t a2)
{
  v4 = sub_2441D8B8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2441994FC();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_2441D8B7C();
  v11 = sub_2441D8E0C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = sub_2441D88AC();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_244192000, v10, v11, "ContextualEngineInternalClient: Error grabbing remote object proxy: %@", v12, 0xCu);
    sub_2441979F8(v13, &unk_27EDD5F60, &qword_2441DBCB0);
    MEMORY[0x245D5B3C0](v13, -1, -1);
    MEMORY[0x245D5B3C0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  v15 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_2441AAC44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2441AACCC()
{
  v1 = sub_2441AA88C();
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2441AAE3C;
  v2 = v1;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5C50, &qword_2441DB0C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2441AB03C;
  v0[13] = &block_descriptor_0;
  v0[14] = v3;
  [v2 fetchAllSnapshotsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2441AAE3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_2441AAFC8;
  }

  else
  {
    v4 = sub_2441AAF5C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2441AAF5C()
{
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2441AAFC8(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2441AB03C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5CC8, &unk_2441DB250);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    type metadata accessor for ContextualSuggestionSnapshot();
    **(*(v4 + 64) + 40) = sub_2441D8C0C();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_2441AB2A4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_2441AB34C;

  return sub_2441AACAC();
}

uint64_t sub_2441AB34C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_2441D88AC();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for ContextualSuggestionSnapshot();
    v9 = sub_2441D8BFC();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_2441AB50C()
{
  v1 = sub_2441AA88C();
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2441AB67C;
  v2 = v1;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5C58, &qword_2441DB0D8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2441AB79C;
  v0[13] = &block_descriptor_4;
  v0[14] = v3;
  [v2 fetchSnapshotOverrideWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2441AB67C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_2441AD960;
  }

  else
  {
    v4 = sub_2441AD958;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2441AB79C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5CC8, &unk_2441DB250);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2441AB9EC(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_2441ABA94;

  return sub_2441AB4EC();
}

uint64_t sub_2441ABA94(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = sub_2441D88AC();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_2441ABC38(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_2441ABC58, v1, 0);
}

uint64_t sub_2441ABC58()
{
  v1 = sub_2441AA88C();
  v0[20] = v1;
  v2 = v0[18];
  v0[2] = v0;
  v0[3] = sub_2441ABDC8;
  v3 = v1;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5C60, &qword_2441DB0E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2441ABF4C;
  v0[13] = &block_descriptor_8;
  v0[14] = v4;
  [v3 overrideWithSnapshot:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2441ABDC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_2441AAFC8;
  }

  else
  {
    v4 = sub_2441ABEE8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2441ABEE8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2441ABF4C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5CC8, &unk_2441DB250);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2441AC184(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_2441AC248;

  return sub_2441ABC38(v5);
}

uint64_t sub_2441AC248()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 32);
  if (v2)
  {
    v8 = sub_2441D88AC();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_2441AC408()
{
  v1 = sub_2441AA88C();
  v0[19] = v1;
  v0[2] = v0;
  v0[3] = sub_2441AC570;
  v2 = v1;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5C60, &qword_2441DB0E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2441ABF4C;
  v0[13] = &block_descriptor_12;
  v0[14] = v3;
  [v2 updateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}
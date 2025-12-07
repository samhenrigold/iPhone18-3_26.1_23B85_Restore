unint64_t sub_226F756D4()
{
  result = qword_27D7B8EA0;
  if (!qword_27D7B8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8EA0);
  }

  return result;
}

uint64_t WorkoutPlanGenerationScheduledItem.copyWith(modalityKind:duration:filterProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a3;
  v14 = *v7;
  if (a3 != 0xFF)
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = a6;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = *(v7 + 32);
  v15 = *(v7 + 16);
  v16 = *(v7 + 24);
  v24 = *v7;
  v22 = a4;
  sub_226EB396C(v15, v16, v17);
  v14 = v24;
  a4 = v22;
  v18 = a6;
  if (!a6)
  {
LABEL_3:
    v19 = a4;
    v23 = v14;

    v14 = v23;
    a4 = v19;
    v18 = v20;
  }

LABEL_4:
  if ((a5 & 1) == 0)
  {
    v14 = a4;
  }

  *(a7 + 16) = v15;
  *(a7 + 24) = v16;
  *(a7 + 32) = v17 & 1;
  *a7 = v14;
  *(a7 + 8) = v18;
  sub_226F75830(a1, a2, v10);
}

uint64_t sub_226F75830(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_226EB396C(result, a2, a3 & 1);
  }

  return result;
}

void sub_226F7587C(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EA8, &unk_227678700);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  v37 = v9;
  v38 = v8;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_getKeyPath();
  v10 = sub_227664A30();
  v12 = v11;
  v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v42[0] = v10;
  v42[1] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226ED25F8(v42, v40);
  v14 = v41;
  if (v41)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v40, v41);
    v39 = &v36;
    v16 = v6;
    v17 = v5;
    v18 = *(v14 - 8);
    v19 = MEMORY[0x28223BE20](v15);
    v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v14);
    v5 = v17;
    v6 = v16;
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B8EB0 &unk_2276833A0))];

  sub_226EBC888(v42);
  v25 = qword_2813B2078;
  swift_beginAccess();
  v26 = v24;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v42, 0);
  swift_endAccess();

  v30 = sub_227542780(v7 + v25, v5, v6);
  v31 = v42[5];
  if (v30)
  {
    if (v30 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v32 = sub_22723F488(0);
  if (v31)
  {
LABEL_10:

    return;
  }

  v33 = v32;
  [v32 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v34 = sub_22766C9E0();
  v35 = sub_226EDAB24(v34);

  sub_226EDAB78(v35, v37);
}

id sub_226F75D10(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BuddyCompletionMonitor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_226F75D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = sub_227662750();
  v4 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v47 - v7;
  v8 = sub_227666650();
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  if (v19)
  {
    v47 = a2;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = *(a1 + 48);
    v48 = v12;
    v28 = v12 + 2;
    v27 = v12[2];
    v58 = v12[9];
    v59 = v27;
    (v27)(v15, v26 + v58 * v21, v8, v13);
    v49 = (v4 + 8);
    v57 = (v28 - 1);
    v55 = (v28 + 2);

    v60 = a1;
    v50 = v28;
    v51 = v15;
    if (v22)
    {
      goto LABEL_17;
    }

LABEL_13:
    while (1)
    {
      v31 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v31 >= v23)
      {

        v45 = v47;
        (v48[4])(v47, v15, v8);
        return (v48[7])(v45, 0, 1, v8);
      }

      v22 = *(v16 + 8 * v31);
      ++v20;
      if (v22)
      {
        v20 = v31;
        while (1)
        {
LABEL_17:
          v32 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v59(v10, *(a1 + 48) + (v32 | (v20 << 6)) * v58, v8);
          v33 = *(sub_227666640() + 16);

          v34 = v33 == 0;
          v35 = *(sub_227666640() + 16);

          if ((v34 ^ (v35 != 0)))
          {
            v36 = v10;
            v37 = v52;
            sub_227666630();
            v38 = v53;
            sub_227666630();
            v56 = sub_2276626C0();
            v39 = *v49;
            v40 = v38;
            v41 = v8;
            v42 = v54;
            (*v49)(v40, v54);
            v43 = v37;
            v10 = v36;
            v44 = v42;
            v8 = v41;
            v15 = v51;
            v39(v43, v44);
            if (v56)
            {
              goto LABEL_19;
            }

LABEL_12:
            result = (*v57)(v10, v8);
            a1 = v60;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v30 = *(sub_227666640() + 16);

            if (v30)
            {
              goto LABEL_12;
            }

LABEL_19:
            (*v57)(v15, v8);
            result = (*v55)(v15, v10, v8);
            a1 = v60;
            if (!v22)
            {
              goto LABEL_13;
            }
          }
        }
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v19)
    {
      v20 = v19 + 1;
      v25 = *(a1 + 64 + 8 * v19);
      v24 -= 64;
      ++v19;
      if (v25)
      {
        v47 = a2;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    v46 = v12[7];

    return v46(a2, 1, 1, v8, v13);
  }

  return result;
}

uint64_t sub_226F76214()
{
  v0 = sub_227668220();
  v2 = v1;
  v3 = sub_227668230();
  v4 = sub_227668200();
  v5 = *(v4 + 16);
  if (v5)
  {
    v16 = MEMORY[0x277D84F90];
    v6 = v4;
    sub_226F1F808(0, v5, 0);
    v7 = v6;
    v8 = v16;
    v9 = *(v16 + 16);
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v12 = *(v16 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_226F1F808((v12 > 1), v9 + 1, 1);
        v7 = v6;
      }

      *(v16 + 16) = v9 + 1;
      *(v16 + v9 + 32) = v11;
      ++v10;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v13 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];

  return MEMORY[0x2821AAA90](v0, v2, v3, v13, v14, v8);
}

void sub_226F76358()
{
  v1 = v0;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 1);
  if (!*MEMORY[0x277D86398])
  {
    __break(1u);
    goto LABEL_6;
  }

  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86398], 1);
  if (!*MEMORY[0x277D86380])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86380], 1);
  if (*MEMORY[0x277D86358])
  {
    v3 = *MEMORY[0x277D86298];
    xpc_dictionary_set_int64(v2, *MEMORY[0x277D86358], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(v2, *MEMORY[0x277D86288], v3);
    xpc_dictionary_set_int64(v2, *MEMORY[0x277D86270], *MEMORY[0x277D862A0]);
    xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v4 = swift_allocObject();
    v4[2] = v1;
    v4[3] = 0xD000000000000045;
    v4[4] = 0x8000000227694A20;
    v7[0] = sub_226F78CE8;
    v7[1] = v4;
    v7[2] = 0xD000000000000045;
    v7[3] = 0x8000000227694A20;
    v7[4] = v2;
    swift_beginAccess();

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_227369A70(v7, 0, isUniquelyReferenced_nonNull_native);
    *(v1 + 16) = v6;
    swift_endAccess();
    swift_unknownObjectRelease();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_226F76544()
{
  v1 = v0;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 1);
  if (!*MEMORY[0x277D86398])
  {
    __break(1u);
    goto LABEL_6;
  }

  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86398], 1);
  if (!*MEMORY[0x277D86380])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86380], 1);
  if (*MEMORY[0x277D86358])
  {
    v3 = *MEMORY[0x277D862D0];
    xpc_dictionary_set_int64(v2, *MEMORY[0x277D86358], *MEMORY[0x277D862D0]);
    xpc_dictionary_set_int64(v2, *MEMORY[0x277D86288], v3);
    xpc_dictionary_set_int64(v2, *MEMORY[0x277D86270], *MEMORY[0x277D862B8]);
    xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v4 = swift_allocObject();
    v4[2] = v1;
    v4[3] = 0xD00000000000003CLL;
    v4[4] = 0x80000002276949E0;
    v7[0] = sub_226F78CC4;
    v7[1] = v4;
    v7[2] = 0xD00000000000003CLL;
    v7[3] = 0x80000002276949E0;
    v7[4] = v2;
    swift_beginAccess();

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_227369A70(v7, 1, isUniquelyReferenced_nonNull_native);
    *(v1 + 16) = v6;
    swift_endAccess();
    swift_unknownObjectRelease();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_226F76730()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 1);
  if (*MEMORY[0x277D86378])
  {
    xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86378], 1);
    xpc_dictionary_set_int64(v1, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(v1, *MEMORY[0x277D86270], *MEMORY[0x277D862B8]);
    xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v2 = swift_allocObject();
    v2[2] = v0;
    v2[3] = 0xD000000000000030;
    v2[4] = 0x80000002276949A0;
    v5[0] = sub_226F78CA0;
    v5[1] = v2;
    v5[2] = 0xD000000000000030;
    v5[3] = 0x80000002276949A0;
    v5[4] = v1;
    swift_beginAccess();

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 16);
    *(v0 + 16) = 0x8000000000000000;
    sub_227369A70(v5, 2, isUniquelyReferenced_nonNull_native);
    *(v0 + 16) = v4;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_226F768D8()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 1);
  if (*MEMORY[0x277D86398])
  {
    xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86398], 1);
    if (*MEMORY[0x277D86378])
    {
      xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86378], 1);
      xpc_dictionary_set_int64(v1, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
      xpc_dictionary_set_int64(v1, *MEMORY[0x277D86270], *MEMORY[0x277D862B8]);
      xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
      v2 = swift_allocObject();
      v2[2] = v0;
      v2[3] = 0xD000000000000037;
      v2[4] = 0x8000000227694960;
      v5[0] = sub_226F78C7C;
      v5[1] = v2;
      v5[2] = 0xD000000000000037;
      v5[3] = 0x8000000227694960;
      v5[4] = v1;
      swift_beginAccess();

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = *(v0 + 16);
      *(v0 + 16) = 0x8000000000000000;
      sub_227369A70(v5, 3, isUniquelyReferenced_nonNull_native);
      *(v0 + 16) = v4;
      swift_endAccess();
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_226F76AA0()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 1);
  if (*MEMORY[0x277D86398])
  {
    xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86398], 1);
    if (*MEMORY[0x277D86380])
    {
      xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86380], 1);
      xpc_dictionary_set_int64(v1, *MEMORY[0x277D86288], *MEMORY[0x277D862B8]);
      xpc_dictionary_set_int64(v1, *MEMORY[0x277D86270], *MEMORY[0x277D862B0]);
      xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
      v2 = swift_allocObject();
      v2[2] = v0;
      v2[3] = 0xD000000000000036;
      v2[4] = 0x8000000227694920;
      v5[0] = sub_226F78C58;
      v5[1] = v2;
      v5[2] = 0xD000000000000036;
      v5[3] = 0x8000000227694920;
      v5[4] = v1;
      swift_beginAccess();

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = *(v0 + 16);
      *(v0 + 16) = 0x8000000000000000;
      sub_227369A70(v5, 4, isUniquelyReferenced_nonNull_native);
      *(v0 + 16) = v4;
      swift_endAccess();
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_226F76C68()
{
  v1 = v0;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 0);
  if (*MEMORY[0x277D86398])
  {
    xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86398], 1);
    if (*MEMORY[0x277D86380])
    {
      xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86380], 1);
      v3 = *MEMORY[0x277D862B8];
      xpc_dictionary_set_int64(v2, *MEMORY[0x277D86288], *MEMORY[0x277D862B8]);
      xpc_dictionary_set_int64(v2, *MEMORY[0x277D86270], v3);
      xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
      v4 = swift_allocObject();
      v4[2] = v1;
      v4[3] = 0xD00000000000003BLL;
      v4[4] = 0x80000002276948E0;
      v7[0] = sub_226F78C34;
      v7[1] = v4;
      v7[2] = 0xD00000000000003BLL;
      v7[3] = 0x80000002276948E0;
      v7[4] = v2;
      swift_beginAccess();

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = *(v1 + 16);
      *(v1 + 16) = 0x8000000000000000;
      sub_227369A70(v7, 5, isUniquelyReferenced_nonNull_native);
      *(v1 + 16) = v6;
      swift_endAccess();
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_226F76E2C()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 0);
  if (*MEMORY[0x277D86380])
  {
    xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86380], 1);
    xpc_dictionary_set_int64(v1, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(v1, *MEMORY[0x277D86270], *MEMORY[0x277D862B8]);
    xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v2 = swift_allocObject();
    v2[2] = v0;
    v2[3] = 0xD000000000000034;
    v2[4] = 0x80000002276948A0;
    v5[0] = sub_226F78C10;
    v5[1] = v2;
    v5[2] = 0xD000000000000034;
    v5[3] = 0x80000002276948A0;
    v5[4] = v1;
    swift_beginAccess();

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 16);
    *(v0 + 16) = 0x8000000000000000;
    sub_227369A70(v5, 6, isUniquelyReferenced_nonNull_native);
    *(v0 + 16) = v4;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_226F76FD4()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 1);
  if (!*MEMORY[0x277D86398])
  {
    __break(1u);
    goto LABEL_7;
  }

  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86398], 1);
  if (!*MEMORY[0x277D86380])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86380], 1);
  if (!*MEMORY[0x277D86328])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86328], 1);
  if (*MEMORY[0x277D86368])
  {
    xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86368], 1);
    xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v2 = swift_allocObject();
    v2[2] = v0;
    v2[3] = 0xD000000000000030;
    v2[4] = 0x8000000227694860;
    v5[0] = sub_226F78BEC;
    v5[1] = v2;
    v5[2] = 0xD000000000000030;
    v5[3] = 0x8000000227694860;
    v5[4] = v1;
    swift_beginAccess();

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 16);
    *(v0 + 16) = 0x8000000000000000;
    sub_227369A70(v5, 7, isUniquelyReferenced_nonNull_native);
    *(v0 + 16) = v4;
    swift_endAccess();
    swift_unknownObjectRelease();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_226F7719C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  swift_beginAccess();
  v15 = *(a1 + 24);
  if (*(v15 + 16) && (v16 = sub_226F3A978(a4), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 16 * v16);

    sub_22766A730();

    v19 = sub_22766B380();
    v20 = sub_22766C8B0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = v18;
      v22 = v21;
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_226E97AE8(a2, a3, &v33);
      _os_log_impl(&dword_226E8E000, v19, v20, "calling handler for [%{public}s]", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA9A450](v23, -1, -1);
      v24 = v22;
      v18 = v32;
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    v25 = (*(v9 + 8))(v14, v8);
    v18(v25);
  }

  else
  {
    sub_22766A730();

    v27 = sub_22766B380();
    v28 = sub_22766C890();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_226E97AE8(a2, a3, &v33);
      _os_log_impl(&dword_226E8E000, v27, v28, "No handler registered for [%{public}s]", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v29, -1, -1);
    }

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_226F774B8()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_226F77540(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_226F77588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DuetObserver.RegistrationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DuetObserver.RegistrationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_226F77734()
{
  result = qword_2813A4CC8;
  if (!qword_2813A4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A4CC8);
  }

  return result;
}

unint64_t sub_226F7778C()
{
  result = qword_27D7B8EC0;
  if (!qword_27D7B8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8EC0);
  }

  return result;
}

uint64_t sub_226F77900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v8 + 24);
  *(v8 + 24) = 0x8000000000000000;
  sub_227369BF4(a4, v15, a5, isUniquelyReferenced_nonNull_native);
  *(v8 + 24) = v39;
  swift_endAccess();
  sub_22766A730();

  v17 = sub_22766B380();
  v18 = sub_22766C8B0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v41 = v20;
    *v19 = 136446210;
    swift_beginAccess();
    v21 = *(v8 + 16);
    if (*(v21 + 16) && (v22 = sub_226F3A978(a5), (v23 & 1) != 0))
    {
      v24 = (*(v21 + 56) + 40 * v22);
      v25 = v24[1];
      v37 = *v24;
      v38 = v11;
      v26 = v24[2];
      v27 = v24[3];
      v28 = v24[4];

      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v29 = v28;
      v30 = v37;
      v11 = v38;
      v31 = v25;
    }

    else
    {
      v27 = 0;
      v26 = 0;
      v31 = 0;
      v30 = 0;
      v29 = 0;
    }

    sub_226F78B9C(v30, v31, v26, v27, v29);
    v39 = v26;
    v40 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v32 = sub_22766CB80();
    v34 = v33;

    v35 = sub_226E97AE8(v32, v34, &v41);

    *(v19 + 4) = v35;
    _os_log_impl(&dword_226E8E000, v17, v18, "Storing handler for [%{public}s]", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA9A450](v20, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);
  }

  return (*(v12 + 8))(v14, v11);
}

void sub_226F77C00()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  sub_22766A730();
  sub_22766B370();
  v12 = *(v3 + 8);
  v52 = v3 + 8;
  v53 = v2;
  v51 = v12;
  v12(v11, v2);
  if (*(v1 + 32) == 1)
  {
    swift_beginAccess();
    v43 = v1;
    v13 = *(v1 + 16);
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = *MEMORY[0x277D86238];
    v47 = v57;
    v48 = v19;
    v49 = v13;

    v20 = 0;
    *&v21 = 136446210;
    v44 = v21;
    v46 = v8;
    while (v17)
    {
LABEL_11:
      v26 = (*(v49 + 56) + 40 * (__clz(__rbit64(v17)) | (v20 << 6)));
      v27 = v26[1];
      v54 = *v26;
      v28 = v26[2];
      v29 = v26[3];
      v30 = v26[4];

      v55 = v30;
      swift_unknownObjectRetain();
      sub_22766A730();

      v31 = sub_22766B380();
      v32 = sub_22766C8B0();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v50 = v28;
        v34 = v33;
        v35 = swift_slowAlloc();
        v45 = v27;
        v36 = v35;
        aBlock[0] = v35;
        *v34 = v44;
        *(v34 + 4) = sub_226E97AE8(v50, v29, aBlock);
        _os_log_impl(&dword_226E8E000, v31, v32, "calling xpc_activity_register for [%{public}s]", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        v37 = v36;
        v27 = v45;
        MEMORY[0x22AA9A450](v37, -1, -1);
        v38 = v34;
        v28 = v50;
        MEMORY[0x22AA9A450](v38, -1, -1);
      }

      v51(v8, v53);
      v17 &= v17 - 1;
      v22 = swift_allocObject();
      v22[2] = v28;
      v22[3] = v29;
      v22[4] = v54;
      v22[5] = v27;
      v22[6] = v55;
      v57[2] = sub_226F78B04;
      v57[3] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v57[0] = sub_226F78B14;
      v57[1] = &block_descriptor;
      v23 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      v24 = sub_22766C0B0();
      xpc_activity_register((v24 + 32), v48, v23);

      _Block_release(v23);
      swift_unknownObjectRelease();

      v8 = v46;
    }

    while (1)
    {
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v25 >= v18)
      {

        *(v43 + 32) = 0;
        return;
      }

      v17 = *(v14 + 8 * v25);
      ++v20;
      if (v17)
      {
        v20 = v25;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    sub_22766A730();
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_226E8E000, v39, v40, "Already active", v41, 2u);
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    v51(v5, v53);
  }
}

void sub_226F78128()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  sub_22766A730();
  sub_22766B370();
  v40 = *(v3 + 8);
  v41 = v3 + 8;
  v40(v11, v2);
  if (*(v1 + 32))
  {
    v12 = v2;
    sub_22766A730();
    v13 = sub_22766B380();
    v14 = sub_22766C8B0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226E8E000, v13, v14, "Already inactive", v15, 2u);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    v40(v5, v12);
  }

  else
  {
    swift_beginAccess();
    v36 = v1;
    v16 = *(v1 + 16);
    v17 = v16 + 64;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 64);
    v21 = (v18 + 63) >> 6;
    v39 = v16;

    v22 = 0;
    *&v23 = 136446210;
    v37 = v23;
    v38 = v2;
    while (v20)
    {
LABEL_14:
      v26 = (*(v39 + 56) + 40 * (__clz(__rbit64(v20)) | (v22 << 6)));
      v27 = v26[2];
      v43 = v26[1];
      v44 = v27;
      v29 = v26[3];
      v28 = v26[4];

      v42 = v28;
      swift_unknownObjectRetain();
      sub_22766A730();

      v30 = sub_22766B380();
      v31 = sub_22766C8B0();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v45 = v33;
        *v32 = v37;
        *(v32 + 4) = sub_226E97AE8(v44, v29, &v45);
        _os_log_impl(&dword_226E8E000, v30, v31, "calling xpc_activity_unregister for [%{public}s]", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x22AA9A450](v33, -1, -1);
        v34 = v32;
        v2 = v38;
        MEMORY[0x22AA9A450](v34, -1, -1);
      }

      v40(v8, v2);
      v20 &= v20 - 1;
      v24 = sub_22766C0B0();
      xpc_activity_unregister((v24 + 32));
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v25 >= v21)
      {

        *(v36 + 32) = 1;
        return;
      }

      v20 = *(v17 + 8 * v25);
      ++v22;
      if (v20)
      {
        v22 = v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

void sub_226F78534(_xpc_activity_s *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v53 = a6;
  v54 = a5;
  v56 = a2;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = &v50 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  state = xpc_activity_get_state(a1);
  sub_22766A730();

  v21 = sub_22766B380();
  v22 = sub_22766C8B0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v50 = v16;
    v24 = v23;
    v25 = swift_slowAlloc();
    v51 = a1;
    v26 = v10;
    v27 = v25;
    v57 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_226E97AE8(v56, a3, &v57);
    *(v24 + 12) = 2050;
    *(v24 + 14) = state;
    _os_log_impl(&dword_226E8E000, v21, v22, "Scheduling [%s] xpc activity fired for state=%{public}ld", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v28 = v27;
    v10 = v26;
    a1 = v51;
    MEMORY[0x22AA9A450](v28, -1, -1);
    v29 = v24;
    v16 = v50;
    MEMORY[0x22AA9A450](v29, -1, -1);
  }

  v30 = *(v10 + 8);
  v31 = v30(v19, v9);
  if (state)
  {
    a4(v31);
    v32 = v55;
    sub_22766A730();

    v33 = sub_22766B380();
    v34 = sub_22766C8B0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v57 = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_226E97AE8(v56, a3, &v57);
      _os_log_impl(&dword_226E8E000, v33, v34, "Scheduling [%{public}s] setting update task as done", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA9A450](v36, -1, -1);
      MEMORY[0x22AA9A450](v35, -1, -1);
    }

    v30(v32, v9);
    if (!xpc_activity_set_state(a1, 5))
    {
      v45 = v52;
      sub_22766A730();

      v46 = sub_22766B380();
      v47 = sub_22766C890();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v57 = v49;
        *v48 = 136446210;
        *(v48 + 4) = sub_226E97AE8(v56, a3, &v57);
        _os_log_impl(&dword_226E8E000, v46, v47, "Scheduling [%{public}s] failed to set xpc activity state to done", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x22AA9A450](v49, -1, -1);
        MEMORY[0x22AA9A450](v48, -1, -1);
      }

      v30(v45, v9);
    }
  }

  else
  {
    v37 = xpc_activity_copy_criteria(a1);
    if (!v37 || (v38 = xpc_equal(v37, v53), swift_unknownObjectRelease(), !v38))
    {
      sub_22766A730();

      v39 = sub_22766B380();
      v40 = sub_22766C8B0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = v16;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v57 = v43;
        *v42 = 136446210;
        *(v42 + 4) = sub_226E97AE8(v56, a3, &v57);
        _os_log_impl(&dword_226E8E000, v39, v40, "Scheduling [%{public}s] setting criteria", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);

        v44 = v41;
      }

      else
      {

        v44 = v16;
      }

      v30(v44, v9);
      xpc_activity_set_criteria(a1, v53);
    }
  }
}

uint64_t sub_226F78B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_226F78B9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_226F78D10@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D60];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_226F78D90@<X0>(void *a1@<X8>)
{
  v2 = sub_2276689F0();
  v4 = v3;
  v6 = v5 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE990, &qword_22768B6F0);
  sub_227663AD0();
  result = sub_226EB2DFC(v2, v4, v6);
  *a1 = v8;
  a1[1] = v9;
  return result;
}

uint64_t sub_226F78E18(uint64_t a1)
{
  *(a1 + 24) = sub_226F78E80(&qword_2813A5560, &unk_227688C58);
  result = sub_226F78E80(&qword_2813A5558, MEMORY[0x277D53710]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_226F78E80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227668A00();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_226F78EC4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2276674C0();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB930, &unk_22767B3F0);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v53 - v11;
  v13 = sub_227662750();
  v64 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v53 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v53 - v21;
  v23 = [a1 identifier];
  if (!v23)
  {
    goto LABEL_9;
  }

  v59 = a2;
  v60 = v2;
  v24 = v23;
  v58 = sub_22766C000();
  v26 = v25;

  v27 = [a1 startDate];
  if (!v27)
  {

LABEL_9:
    v45 = sub_227664DD0();
    sub_226F79FDC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D51028], v45);
    swift_willThrow();

    return;
  }

  v28 = v27;
  v57 = v26;
  sub_227662710();

  (*(v64 + 32))(v22, v18, v13);
  [a1 duration];
  v29 = [a1 workoutActivityType];
  if ((v29 & 0x80000000) == 0)
  {
    v55 = v29;
    v54 = [a1 isIndoorWorkout];
    v30 = [a1 sessionReference];
    v56 = a1;
    if (v30)
    {
      v31 = v30;
      v32 = [v30 sessionIdentifier];
      if (v32)
      {
        v33 = v32;
        v53[2] = sub_22766C000();

        v34 = [v31 workoutIdentifier];
        if (v34)
        {
          v35 = v22;
          v36 = v13;
          v37 = v34;
          sub_22766C000();
          v53[1] = v38;

          sub_2276674A0();
          v39 = v62;
          v40 = v12;
          v41 = v7;
          v42 = v63;
          (*(v62 + 32))(v12, v41, v63);
          v43 = v42;
          v44 = 0;
LABEL_14:
          (*(v39 + 56))(v40, v44, 1, v43);
          sub_226E93170(v40, v61, &unk_27D7BB930, &unk_22767B3F0);
          v52 = v64;
          (*(v64 + 16))(v15, v35, v36);
          sub_227664C70();

          sub_226E97D1C(v40, &unk_27D7BB930, &unk_22767B3F0);
          (*(v52 + 8))(v35, v36);
          return;
        }
      }

      v35 = v22;
      v40 = v12;
      v36 = v13;
      v50 = sub_227664DD0();
      sub_226F79FDC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v48 = swift_allocError();
      (*(*(v50 - 8) + 104))(v51, *MEMORY[0x277D51028], v50);
      swift_willThrow();
    }

    else
    {
      v35 = v22;
      v40 = v12;
      v36 = v13;
      v47 = sub_227664DD0();
      sub_226F79FDC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v48 = swift_allocError();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D51028], v47);
      swift_willThrow();
    }

    v60 = 0;

    v44 = 1;
    v39 = v62;
    v43 = v63;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_226F79544(void *a1, uint64_t a2)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB930, &unk_22767B3F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_227662750();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664C40();
  v11 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227664C80();
  [a1 setDuration_];
  sub_227664C90();
  v12 = sub_2276626A0();
  (*(v8 + 8))(v10, v7);
  [a1 setStartDate_];

  v13 = sub_227664C60();
  if (v13 >= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFFLL;
  }

  else
  {
    v14 = v13;
  }

  [a1 setWorkoutActivityType_];
  [a1 setIsIndoorWorkout_];
  sub_227664C50();
  v15 = sub_2276674C0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    sub_226E97D1C(v6, &unk_27D7BB930, &unk_22767B3F0);
    v17 = 0;
  }

  else
  {
    v18 = sub_226F92D7C(v20);
    if (v2)
    {
      (*(v16 + 8))(v6, v15);
      return;
    }

    v17 = v18;
    (*(v16 + 8))(v6, v15);
  }

  [a1 setSessionReference_];
}

void *static HealthKitWorkout.representativeSamples()()
{
  v36 = sub_227662750();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB930, &unk_22767B3F0);
  MEMORY[0x28223BE20](v1 - 8);
  v34 = v24 - v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EC8, &qword_227672860);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = v24 - v4;
  v32 = sub_227664CA0();
  v37 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F5D274();
  v6 = sub_22766BE70();
  v7 = sub_22766C090();
  v8 = sub_22766C410();
  sub_2276674C0();
  sub_226F79FDC(&qword_27D7B8ED0, MEMORY[0x277D52DB0], &protocol conformance descriptor for HealthKitSessionReference);
  v9 = sub_22766CB70();
  v10 = sub_227662630();
  sub_226F5D220();
  v11 = sub_22766CFA0();
  v56 = v7;
  v57[0] = v6;
  v57[1] = v57;
  v57[2] = &v56;
  v54 = v9;
  v55 = v8;
  v57[3] = &v55;
  v57[4] = &v54;
  v52 = v11;
  v53 = v10;
  v57[5] = &v53;
  v57[6] = &v52;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8ED8, &qword_227672868);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EE0, &qword_227672870);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v40 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v41 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v42 = sub_226F5BF60(&qword_27D7B8EE8, &qword_27D7B8ED8, &qword_227672868);
  v43 = sub_226F5BF60(&qword_27D7B8EF0, &qword_27D7B8EE0, &qword_227672870);
  v44 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v45 = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v12 = sub_2276638E0();

  v13 = *(v12 + 16);
  if (v13)
  {
    v39 = MEMORY[0x277D84F90];
    result = sub_226F1F828(0, v13, 0);
    v15 = 0;
    v26 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = v39;
    v25 = (v38 + 16);
    v24[1] = v37 + 32;
    v29 = v3;
    v28 = v12;
    v27 = v13;
    v17 = v31;
    while (v15 < *(v12 + 16))
    {
      v18 = v26 + *(v3 + 72) * v15;
      v38 = v16;
      v19 = v30;
      sub_226E93170(v18, v30, &qword_27D7B8EC8, &qword_227672860);
      v20 = *(v33 + 96);
      sub_226E93170(v19 + *(v33 + 80), v34, &unk_27D7BB930, &unk_22767B3F0);
      (*v25)(v35, v19 + v20, v36);

      sub_227664C70();
      v21 = v19;
      v16 = v38;
      sub_226E97D1C(v21, &qword_27D7B8EC8, &qword_227672860);
      v39 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1F828((v22 > 1), v23 + 1, 1);
        v16 = v39;
      }

      ++v15;
      *(v16 + 16) = v23 + 1;
      result = (*(v37 + 32))(v16 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v23, v17, v32);
      v3 = v29;
      v12 = v28;
      if (v27 == v15)
      {

        return v16;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_226F79F84(uint64_t a1)
{
  result = sub_226F79FDC(&qword_2813A5768, MEMORY[0x277D50E98], &protocol conformance descriptor for HealthKitWorkout);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226F79FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226F7A024(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), double a4)
{
  v47 = a3;
  v46 = a2(0);
  v6 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v35 - v7;
  v44 = sub_227666330();
  v8 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v42 = v10;
    v35[1] = v4;
    v51 = MEMORY[0x277D84F90];
    sub_226F1F888(0, v11, 0);
    v49 = a1 + 56;
    v50 = v51;
    result = sub_22766CC90();
    v13 = v8;
    v14 = result;
    v15 = 0;
    v40 = v6 + 8;
    v41 = v6 + 16;
    v43 = v13;
    v38 = v6;
    v39 = v13 + 32;
    v36 = a1 + 64;
    v37 = v11;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v49 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_22;
      }

      v48 = *(a1 + 36);
      v20 = v45;
      v19 = v46;
      v21 = (*(v6 + 16))(v45, *(a1 + 48) + *(v6 + 72) * v14, v46);
      v47(v21);
      v22 = a1;
      v23 = v42;
      sub_227666300();
      (*(v6 + 8))(v20, v19);
      v24 = v50;
      v51 = v50;
      v26 = *(v50 + 16);
      v25 = *(v50 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226F1F888((v25 > 1), v26 + 1, 1);
        v24 = v51;
      }

      *(v24 + 16) = v26 + 1;
      v27 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v50 = v24;
      result = (*(v43 + 32))(v24 + v27 + *(v43 + 72) * v26, v23, v44);
      v16 = 1 << *(v22 + 32);
      if (v14 >= v16)
      {
        goto LABEL_23;
      }

      v28 = *(v49 + 8 * v18);
      if ((v28 & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v22;
      if (v48 != *(v22 + 36))
      {
        goto LABEL_25;
      }

      v29 = v28 & (-2 << (v14 & 0x3F));
      if (v29)
      {
        v16 = __clz(__rbit64(v29)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v17 = v37;
      }

      else
      {
        v30 = v18 << 6;
        v31 = v18 + 1;
        v17 = v37;
        v32 = (v36 + 8 * v18);
        while (v31 < (v16 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_226EB526C(v14, v48, 0);
            v16 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v14, v48, 0);
      }

LABEL_4:
      ++v15;
      v14 = v16;
      v6 = v38;
      if (v15 == v17)
      {
        return v50;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226F7A400(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(BOOL, unint64_t, uint64_t), void (*a5)(uint64_t))
{
  v54 = a5;
  v53 = a2(0);
  v9 = *(v53 - 8);
  v10 = MEMORY[0x28223BE20](v53);
  v52 = &v40 - v11;
  v51 = (a3)(0, v10);
  v12 = *(v51 - 8);
  v13 = MEMORY[0x28223BE20](v51);
  v15 = &v40 - v14;
  v16 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v49 = v15;
    v41 = a4;
    v42 = v5;
    v58 = MEMORY[0x277D84F90];
    (a4)(0, v16, 0, v13);
    v56 = a1 + 56;
    v57 = v58;
    result = sub_22766CC90();
    v18 = result;
    v19 = 0;
    v47 = v9 + 8;
    v48 = v9 + 16;
    v50 = v12;
    v45 = v9;
    v46 = v12 + 32;
    v43 = a1 + 64;
    v44 = v16;
    v20 = v9;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
    {
      v23 = v18 >> 6;
      if ((*(v56 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_22;
      }

      v55 = *(a1 + 36);
      v25 = v52;
      v24 = v53;
      v26 = (*(v20 + 16))(v52, *(a1 + 48) + *(v20 + 72) * v18, v53);
      v27 = a1;
      v28 = v49;
      v54(v26);
      (*(v20 + 8))(v25, v24);
      v29 = v57;
      v58 = v57;
      v31 = *(v57 + 16);
      v30 = *(v57 + 24);
      if (v31 >= v30 >> 1)
      {
        v41(v30 > 1, v31 + 1, 1);
        v29 = v58;
      }

      *(v29 + 16) = v31 + 1;
      v32 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v57 = v29;
      result = (*(v50 + 32))(v29 + v32 + *(v50 + 72) * v31, v28, v51);
      v21 = 1 << *(v27 + 32);
      if (v18 >= v21)
      {
        goto LABEL_23;
      }

      v33 = *(v56 + 8 * v23);
      if ((v33 & (1 << v18)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v27;
      if (v55 != *(v27 + 36))
      {
        goto LABEL_25;
      }

      v34 = v33 & (-2 << (v18 & 0x3F));
      if (v34)
      {
        v21 = __clz(__rbit64(v34)) | v18 & 0x7FFFFFFFFFFFFFC0;
        v22 = v44;
      }

      else
      {
        v35 = v23 << 6;
        v36 = v23 + 1;
        v22 = v44;
        v37 = (v43 + 8 * v23);
        while (v36 < (v21 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_226EB526C(v18, v55, 0);
            v21 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v18, v55, 0);
      }

LABEL_4:
      ++v19;
      v18 = v21;
      v20 = v45;
      if (v19 == v22)
      {
        return v57;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226F7A7DC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v37 = a3;
  v36 = a2(0);
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v29 - v6;
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v29[1] = v3;
    v42 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v40 = a1 + 56;
    v41 = v42;
    result = sub_22766CC90();
    v9 = result;
    v10 = 0;
    v33 = v5 + 8;
    v34 = v5 + 16;
    v30 = a1 + 64;
    v31 = v7;
    v32 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v40 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v35;
      v15 = v36;
      v16 = (*(v5 + 16))(v35, *(a1 + 48) + *(v5 + 72) * v9, v36);
      v39 = v37(v16);
      v18 = v17;
      result = (*(v5 + 8))(v14, v15);
      v19 = v41;
      v42 = v41;
      v20 = *(v41 + 16);
      if (v20 >= *(v41 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v19 = v42;
      }

      *(v19 + 16) = v20 + 1;
      v21 = v19 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v18;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v22 = *(v40 + 8 * v13);
      if ((v22 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v41 = v19;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v9 & 0x3F));
      if (v23)
      {
        v11 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v31;
        v5 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v12 = v31;
        v26 = (v30 + 8 * v13);
        v5 = v32;
        while (v25 < (v11 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v9, v38, 0);
            v11 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v9, v38, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_226F7AAEC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v29 = a5;
  v40 = a4(0);
  MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v39 = &v29 - v13;
  v36 = *(a3 + 16);
  if (v36)
  {
    v14 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = *(v11 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v11;
      v20 = a1;
      v21 = v39;
      (*(v11 + 16))(v39, v18, v40, v12);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v33)(v39, v40);

        return;
      }

      if (v23)
      {
        v24 = *v34;
        (*v34)(v37, v39, v40);
        v25 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29(0, *(v25 + 16) + 1, 1);
          v25 = v41;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          v29(v27 > 1, v28 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v28 + 1;
        v38 = v25;
        v24((v25 + v15 + v28 * v16), v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        (*v33)(v39, v40);
        a3 = v17;
      }

      ++v14;
      v11 = v19;
      if (v36 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:
  }
}

void *sub_226F7ADD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2274CD6BC(*(a1 + 16), 0);
  v4 = sub_2274CDE20(&v6, v3 + 4, v2, a1);
  sub_226EBB21C(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_226F7AE64(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_22766CD20();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_226ECC830(v3, 0);
  sub_22746B238((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_226F7AF1C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_2276645A0();
  v8 = v7;
  sub_226E93170(a2, v5, &qword_27D7B8F20, &qword_2276767D0);
  v9 = sub_227666B60();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_226E97D1C(v5, &qword_27D7B8F20, &qword_2276767D0);
    v11 = 0;
  }

  else
  {
    v12 = sub_227666A90();
    v14 = v13;
    (*(v10 + 8))(v5, v9);
    if (v6 == v12 && v8 == v14)
    {

      v11 = 1;
    }

    else
    {
      v11 = sub_22766D190();
    }
  }

  return v11 & 1;
}

uint64_t sub_226F7B0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  v7 = a3();
  v11[0] = a4();
  v11[1] = v8;
  v10[2] = v11;
  LOBYTE(a5) = sub_226F7E160(a5, v10, v7);

  return a5 & 1;
}

void sub_226F7B170(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v82 = a4;
  v6 = sub_2276624A0();
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v74 - v9;
  v10 = sub_227664A10();
  v87 = *(v10 - 8);
  v88 = v10;
  MEMORY[0x28223BE20](v10);
  v75 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v74 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v74 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F68, &qword_2276729E8);
  MEMORY[0x28223BE20](v17 - 8);
  v80 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v81 = &v74 - v20;
  v21 = sub_227664EB0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v78 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v74 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F70, &unk_2276729F0);
  MEMORY[0x28223BE20](v27 - 8);
  v79 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.n128_f64[0] = MEMORY[0x28223BE20](v29);
  v32 = &v74 - v31;
  v33 = a1[1];
  v93 = *a1;
  v91 = v21;
  v92 = v33;
  v34 = *(a2 + 16);
  v83 = v22;
  v84 = &v74 - v31;
  if (v34)
  {
    v86 = v16;
    v37 = *(v22 + 16);
    v35 = v22 + 16;
    v36 = v37;
    v38 = a2 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v39 = *(v35 + 56);
    while (1)
    {
      v36(v26, v38, v21, v30);
      if (sub_227664E60() == v93 && v40 == v92)
      {
        break;
      }

      v41 = sub_22766D190();

      if (v41)
      {
        goto LABEL_10;
      }

      v21 = v91;
      (*(v35 - 8))(v26, v91);
      v38 += v39;
      if (!--v34)
      {
        v42 = 1;
        v22 = v83;
        v32 = v84;
        goto LABEL_11;
      }
    }

LABEL_10:
    v22 = v83;
    v32 = v84;
    v21 = v91;
    (*(v83 + 32))(v84, v26, v91);
    v42 = 0;
LABEL_11:
    v16 = v86;
  }

  else
  {
    v42 = 1;
  }

  (*(v22 + 56))(v32, v42, 1, v21, v30);
  v43 = v89 + 56;
  v44 = 1 << *(v89 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v89 + 56);
  v47 = (v44 + 63) >> 6;
  v48 = v87;
  v49 = (v87 + 32);
  v85 = v87 + 16;
  v86 = (v87 + 8);

  v50 = 0;
  v51 = v88;
  if (v46)
  {
    while (1)
    {
      v52 = v50;
LABEL_19:
      (*(v48 + 16))(v16, *(v89 + 48) + *(v48 + 72) * (__clz(__rbit64(v46)) | (v52 << 6)), v51);
      v53 = *(v48 + 32);
      v53(v90, v16, v51);
      if (sub_2276649A0() == v93 && v54 == v92)
      {

        goto LABEL_27;
      }

      v55 = sub_22766D190();

      if (v55)
      {
        break;
      }

      v46 &= v46 - 1;
      v51 = v88;
      (*v86)(v90, v88);
      v50 = v52;
      v48 = v87;
      if (!v46)
      {
        goto LABEL_16;
      }
    }

    v51 = v88;
LABEL_27:
    v48 = v87;
    v57 = v81;
    v53(v81, v90, v51);
    v56 = 0;
LABEL_28:
    v58 = v91;
    v59 = v83;
    v60 = v80;
    (*(v48 + 56))(v57, v56, 1, v51);
    v61 = v84;
    v62 = v79;
    sub_226E93170(v84, v79, &qword_27D7B8F70, &unk_2276729F0);
    if ((*(v59 + 48))(v62, 1, v58) == 1)
    {
      sub_226E97D1C(v57, &qword_27D7B8F68, &qword_2276729E8);
      v63 = &qword_27D7B8F70;
      v64 = &unk_2276729F0;
      sub_226E97D1C(v61, &qword_27D7B8F70, &unk_2276729F0);
      v65 = v62;
    }

    else
    {
      v66 = v48;
      v67 = v78;
      (*(v59 + 32))(v78, v62, v58);
      sub_226E93170(v57, v60, &qword_27D7B8F68, &qword_2276729E8);
      if ((*(v66 + 48))(v60, 1, v51) != 1)
      {
        v69 = v75;
        (*v49)(v75, v60, v51);
        sub_227664EA0();
        v70 = sub_2276649F0();
        v89 = v71;
        v90 = v70;

        v87 = sub_2276649C0();
        v85 = v72;
        v83 = sub_227664E80();
        sub_227664A00();
        sub_2276649B0();
        sub_2276649D0();
        sub_2276692C0();
        (*v86)(v69, v88);
        (*(v59 + 8))(v67, v91);
        sub_226E97D1C(v81, &qword_27D7B8F68, &qword_2276729E8);
        sub_226E97D1C(v84, &qword_27D7B8F70, &unk_2276729F0);
        v68 = 0;
        goto LABEL_34;
      }

      (*(v59 + 8))(v67, v58);
      v63 = &qword_27D7B8F68;
      v64 = &qword_2276729E8;
      sub_226E97D1C(v57, &qword_27D7B8F68, &qword_2276729E8);
      sub_226E97D1C(v84, &qword_27D7B8F70, &unk_2276729F0);
      v65 = v60;
    }

    sub_226E97D1C(v65, v63, v64);
    v68 = 1;
LABEL_34:
    v73 = sub_2276692D0();
    (*(*(v73 - 8) + 56))(v82, v68, 1, v73);
    return;
  }

LABEL_16:
  while (1)
  {
    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v52 >= v47)
    {

      v56 = 1;
      v57 = v81;
      goto LABEL_28;
    }

    v46 = *(v43 + 8 * v52);
    ++v50;
    if (v46)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_226F7BA68(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v85 = a4;
  v6 = sub_2276624A0();
  MEMORY[0x28223BE20](v6 - 8);
  v80 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = v76 - v9;
  v10 = sub_227666980();
  v11 = *(v10 - 8);
  v91 = v10;
  v92 = v11;
  MEMORY[0x28223BE20](v10);
  v78 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v94 = v76 - v14;
  MEMORY[0x28223BE20](v15);
  v89 = v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FA0, &qword_227672A48);
  MEMORY[0x28223BE20](v17 - 8);
  v81 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = v76 - v20;
  v21 = sub_227666FF0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v82 = v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v76 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FA8, &unk_227672A50);
  MEMORY[0x28223BE20](v27 - 8);
  v83 = v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.n128_f64[0] = MEMORY[0x28223BE20](v29);
  v32 = v76 - v31;
  v33 = a1[1];
  v97 = *a1;
  v95 = v21;
  v96 = v33;
  v34 = *(a2 + 16);
  v86 = v22;
  v87 = v76 - v31;
  if (v34)
  {
    v37 = *(v22 + 16);
    v35 = v22 + 16;
    v36 = v37;
    v38 = a2 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v39 = *(v35 + 56);
    while (1)
    {
      v36(v26, v38, v21, v30);
      if (sub_227666F70() == v97 && v40 == v96)
      {
        break;
      }

      v41 = sub_22766D190();

      if (v41)
      {
        goto LABEL_10;
      }

      v21 = v95;
      (*(v35 - 8))(v26, v95);
      v38 += v39;
      if (!--v34)
      {
        v42 = 1;
        v22 = v86;
        v32 = v87;
        goto LABEL_11;
      }
    }

LABEL_10:
    v22 = v86;
    v32 = v87;
    v21 = v95;
    (*(v86 + 32))(v87, v26, v95);
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

LABEL_11:
  (*(v22 + 56))(v32, v42, 1, v21);
  v43 = v92;
  v44 = v93 + 56;
  v45 = 1 << *(v93 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v93 + 56);
  v48 = (v45 + 63) >> 6;
  v88 = v92 + 16;
  v49 = (v92 + 32);
  v90 = (v92 + 8);

  v50 = 0;
  v51 = v91;
  if (v47)
  {
    while (1)
    {
      v52 = v50;
LABEL_18:
      v53 = v89;
      (*(v43 + 16))(v89, *(v93 + 48) + *(v43 + 72) * (__clz(__rbit64(v47)) | (v52 << 6)), v51);
      v54 = *(v43 + 32);
      v54(v94, v53, v51);
      if (sub_227666910() == v97 && v55 == v96)
      {

        goto LABEL_26;
      }

      v56 = sub_22766D190();

      if (v56)
      {
        break;
      }

      v47 &= v47 - 1;
      v51 = v91;
      (*v90)(v94, v91);
      v50 = v52;
      v43 = v92;
      if (!v47)
      {
        goto LABEL_15;
      }
    }

    v51 = v91;
LABEL_26:
    v43 = v92;
    v58 = v84;
    v54(v84, v94, v51);
    v57 = 0;
LABEL_27:
    v59 = v95;
    v60 = v86;
    v61 = v83;
    (*(v43 + 56))(v58, v57, 1, v51);
    v62 = v87;
    sub_226E93170(v87, v61, &qword_27D7B8FA8, &unk_227672A50);
    if ((*(v60 + 48))(v61, 1, v59) == 1)
    {
      sub_226E97D1C(v58, &qword_27D7B8FA0, &qword_227672A48);
      v63 = &qword_27D7B8FA8;
      v64 = &unk_227672A50;
      sub_226E97D1C(v62, &qword_27D7B8FA8, &unk_227672A50);
      v65 = v61;
    }

    else
    {
      v66 = v61;
      v67 = v82;
      (*(v60 + 32))(v82, v66, v59);
      v68 = v81;
      sub_226E93170(v58, v81, &qword_27D7B8FA0, &qword_227672A48);
      if ((*(v43 + 48))(v68, 1, v51) != 1)
      {
        v70 = v68;
        v71 = v78;
        (*v49)(v78, v70, v51);
        v89 = sub_227666940();
        v94 = v72;
        v93 = sub_227666950();
        v92 = sub_227666FE0();
        v91 = sub_227666F80();
        v88 = sub_227666F90();

        v86 = sub_227666FB0();
        v83 = v73;
        v77 = v74;
        v81 = sub_227666FA0();
        v76[1] = sub_227666FC0();
        sub_227666960();
        sub_227666920();
        sub_227666970();
        sub_2276645B0();
        (*v90)(v71, v51);
        (*(v60 + 8))(v67, v95);
        sub_226E97D1C(v84, &qword_27D7B8FA0, &qword_227672A48);
        sub_226E97D1C(v87, &qword_27D7B8FA8, &unk_227672A50);
        v69 = 0;
        goto LABEL_33;
      }

      (*(v60 + 8))(v67, v59);
      v63 = &qword_27D7B8FA0;
      v64 = &qword_227672A48;
      sub_226E97D1C(v58, &qword_27D7B8FA0, &qword_227672A48);
      sub_226E97D1C(v87, &qword_27D7B8FA8, &unk_227672A50);
      v65 = v68;
    }

    sub_226E97D1C(v65, v63, v64);
    v69 = 1;
LABEL_33:
    v75 = sub_2276645D0();
    (*(*(v75 - 8) + 56))(v85, v69, 1, v75);
    return;
  }

LABEL_15:
  while (1)
  {
    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v52 >= v48)
    {

      v57 = 1;
      v58 = v84;
      goto LABEL_27;
    }

    v47 = *(v44 + 8 * v52);
    ++v50;
    if (v47)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_226F7C3A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v5 + 8))(v7, v4);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB910, &qword_22767B3B0);
  v13 = swift_allocObject();
  v14 = v9;
  v15 = v10;

  v16 = sub_22766A070();
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  v17 = MEMORY[0x22AA99A00](v16);
  sub_22754466C(a2);
  objc_autoreleasePoolPop(v17);
  swift_setDeallocating();

  v18 = qword_2813B2078;
  v19 = sub_22766A100();
  (*(*(v19 - 8) + 8))(v13 + v18, v19);
  return swift_deallocClassInstance();
}

void sub_226F7C604(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v7 = a1[3];
  v46 = a1;
  v8 = __swift_project_boxed_opaque_existential_0(a1, v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v13 = swift_allocObject();
  v14 = v9;
  v15 = v10;

  sub_22766A070();
  v48 = v14;
  v49 = v12;
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  v54 = v15;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  swift_getKeyPath();
  v47 = a2;
  v16 = sub_227664BB0();
  v17 = sub_226F7A7DC(v16, MEMORY[0x277D52828], MEMORY[0x277D527A8]);

  v53[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v53[0] = v17;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226E93170(v53, v51, &unk_27D7BC990, &qword_227670A30);
  v19 = v52;
  if (v52)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v51, v52);
    v50 = &v45;
    v21 = *(v19 - 8);
    v22 = MEMORY[0x28223BE20](v20);
    v24 = a3;
    v25 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v25, v22);
    v26 = sub_22766D170();
    v27 = v25;
    a3 = v24;
    (*(v21 + 8))(v27, v19);
    v5 = v3;
    __swift_destroy_boxed_opaque_existential_0(v51);
  }

  else
  {
    v26 = 0;
  }

  v28 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v29 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v53, &unk_27D7BC990, &qword_227670A30);
  v30 = &qword_2813B2078;
  swift_beginAccess();
  v31 = v29;
  v32 = sub_22766A080();
  v34 = v33;
  MEMORY[0x22AA985C0]();
  if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    sub_22766C3A0();
    v32(v53, 0);
    swift_endAccess();

    v35 = sub_227284754(0);
    if (v5)
    {

      *a3 = v5;
      return;
    }

    v36 = v35;
    v37 = a3;
    type metadata accessor for ManagedCatalogWorkoutReference();
    v38 = v54;
    a3 = sub_22766C9E0();

    swift_setDeallocating();
    v39 = *v30;
    v40 = sub_22766A100();
    (*(*(v40 - 8) + 8))(v13 + v39, v40);
    swift_deallocClassInstance();
    v45 = v37;
    if (a3 >> 62)
    {
      break;
    }

    v31 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      goto LABEL_21;
    }

LABEL_9:
    v13 = 0;
    v32 = (a3 & 0xC000000000000001);
    while (1)
    {
      if (v32)
      {
        v41 = MEMORY[0x22AA991A0](v13, a3);
      }

      else
      {
        if (v13 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v41 = *(a3 + 8 * v13 + 32);
      }

      v42 = v41;
      v30 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v41 setBodyFocusIdentifierss_];
      [v42 setContributorIdentifierss_];
      [v42 setEquipmentIdentifierss_];
      [v42 setMusicGenreIdentifierss_];
      [v42 setSkillLevelIdentifierss_];
      [v42 setThemeIdentifierss_];
      [v42 setTrainerIdentifierss_];

      ++v13;
      if (v30 == v31)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_22766C360();
  }

  v31 = sub_22766CD20();
  if (v31)
  {
    goto LABEL_9;
  }

LABEL_21:

  v43 = __swift_project_boxed_opaque_existential_0(v46, v46[3]);
  v44 = sub_227664BB0();
  sub_22755B834(v44, v43[1], *(v43 + 16), v43[3]);
}

void sub_226F7CC54(void *a1, uint64_t a2, void *a3)
{
  v47 = a3;
  v4 = v3;
  v6 = a1[3];
  v43 = a1;
  v7 = __swift_project_boxed_opaque_existential_0(a1, v6);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9008, &unk_227672BC0);
  v12 = swift_allocObject();
  v13 = &qword_2813B2078;
  v14 = v8;
  v15 = v9;

  sub_22766A070();
  v45 = v14;
  v46 = v11;
  *(v12 + 16) = v14;
  *(v12 + 24) = v15;
  v51 = v15;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  swift_getKeyPath();
  v44 = a2;
  v16 = sub_227664B90();
  v17 = sub_226F7A7DC(v16, MEMORY[0x277D52790], MEMORY[0x277D52770]);

  v50[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v50[0] = v17;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226E93170(v50, v48, &unk_27D7BC990, &qword_227670A30);
  v19 = v49;
  if (v49)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v48, v49);
    v21 = *(v19 - 8);
    v22 = MEMORY[0x28223BE20](v20);
    v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    v4 = v3;
    v13 = &qword_2813B2078;
    __swift_destroy_boxed_opaque_existential_0(v48);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9078 &qword_227672D10))];

  sub_226E97D1C(v50, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v28 = v27;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  v32 = v51;
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    sub_22766C3A0();
    v29(v50, 0);
    swift_endAccess();

    v33 = sub_22728473C(0);
    if (v4)
    {

      *v47 = v4;
      return;
    }

    v34 = v33;
    type metadata accessor for ManagedCatalogProgramReference();
    v28 = sub_22766C9E0();

    swift_setDeallocating();
    v35 = *v13;
    v36 = sub_22766A100();
    (*(*(v36 - 8) + 8))(v12 + v35, v36);
    swift_deallocClassInstance();
    if (v28 >> 62)
    {
      break;
    }

    v37 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
      goto LABEL_21;
    }

LABEL_9:
    v12 = 0;
    v29 = (v28 & 0xC000000000000001);
    v13 = &off_2785D6000;
    while (1)
    {
      if (v29)
      {
        v38 = MEMORY[0x22AA991A0](v12, v28);
      }

      else
      {
        if (v12 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v38 = *(v28 + 8 * v12 + 32);
      }

      v32 = v38;
      v39 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v38 setContributorIdentifierss_];
      [v32 setEquipmentIdentifierss_];
      [v32 setMusicGenreIdentifierss_];
      [v32 setThemeIdentifierss_];
      [v32 setTrainerIdentifierss_];
      [v32 setWorkoutIdentifierss_];

      ++v12;
      if (v39 == v37)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_22766C360();
  }

  v37 = sub_22766CD20();
  if (v37)
  {
    goto LABEL_9;
  }

LABEL_21:

  v40 = __swift_project_boxed_opaque_existential_0(v43, v43[3]);
  v41 = sub_227664B90();
  sub_22755BE54(v41, v40[1], *(v40 + 16), v40[3]);
}

void sub_226F7D270(void *a1, uint64_t a2, uint64_t *a3)
{
  v49 = a3;
  v5 = a1[3];
  v41 = a1;
  v6 = __swift_project_boxed_opaque_existential_0(a1, v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9028, &unk_22767F070);
  v11 = swift_allocObject();
  v12 = &qword_2813B2078;
  v13 = v7;
  v14 = v8;

  sub_22766A070();
  v43 = v13;
  v44 = v10;
  *(v11 + 16) = v13;
  *(v11 + 24) = v14;
  v45 = v14;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v42 = a2;
  v15 = sub_227664B80();
  v16 = sub_226F7A7DC(v15, MEMORY[0x277D519E0], MEMORY[0x277D519D8]);
  v17 = v3;

  v48[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v48[0] = v16;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226E93170(v48, v46, &unk_27D7BC990, &qword_227670A30);
  v19 = v47;
  if (v47)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v46, v47);
    v21 = *(v19 - 8);
    v22 = MEMORY[0x28223BE20](v20);
    v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    v12 = &qword_2813B2078;
    __swift_destroy_boxed_opaque_existential_0(v46);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9080 &qword_227672D40))];

  sub_226E97D1C(v48, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v28 = v27;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    sub_22766C3A0();
    v29(v48, 0);
    swift_endAccess();

    v32 = sub_22728476C(0);
    if (v17)
    {

      *v49 = v17;
      return;
    }

    v29 = v32;
    type metadata accessor for ManagedCatalogTipReference();
    v33 = v45;
    v28 = sub_22766C9E0();

    swift_setDeallocating();
    v34 = *v12;
    v35 = sub_22766A100();
    (*(*(v35 - 8) + 8))(v11 + v34, v35);
    swift_deallocClassInstance();
    if (v28 >> 62)
    {
      break;
    }

    v36 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
      goto LABEL_21;
    }

LABEL_9:
    v11 = 0;
    v17 = v28 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x22AA991A0](v11, v28);
      }

      else
      {
        if (v11 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v37 = *(v28 + 8 * v11 + 32);
      }

      v29 = v37;
      v12 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v37 setCategoryIdentifiers_];

      ++v11;
      if (v12 == v36)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_22766C360();
  }

  v36 = sub_22766CD20();
  if (v36)
  {
    goto LABEL_9;
  }

LABEL_21:

  v38 = __swift_project_boxed_opaque_existential_0(v41, v41[3]);
  v39 = sub_227664B80();
  sub_22755C474(v39, v38[1], *(v38 + 16), v38[3]);
}

void sub_226F7D85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(__n128))
{
  v6 = a3(0);
  if (!v4)
  {
    v7 = v6;
    [v6 setResultType_];
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v8 = sub_22766C820();
    v9 = [v8 keyPath];

    v10 = sub_22766C000();
    v12 = v11;

    v13 = v10;

    v14 = sub_22766C820();
    v15 = v7;
    v16 = [v14 keyPath];

    v17 = sub_22766C000();
    v19 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2276728D0;
    v21 = MEMORY[0x277D837D0];
    *(v20 + 32) = v13;
    *(v20 + 40) = v12;
    *(v20 + 88) = v21;
    *(v20 + 56) = v21;
    *(v20 + 64) = v17;
    *(v20 + 72) = v19;

    v22 = sub_22766C2B0();

    [v15 setPropertiesToFetch_];

    sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
    v47 = v17;
    v23 = sub_22766C9E0();
    v24 = sub_2273C20D4(v23);

    if (v24)
    {
      v25 = v24[2];
      if (v25)
      {
        v42 = v15;
        v48 = MEMORY[0x277D84F90];
        v43 = v25;
        sub_226F1F968(0, v25, 0);
        v26 = 0;
        v27 = v48;
        v44 = v12;
        v45 = v19;
        v46 = v24;
        while (v26 < v24[2])
        {
          v29 = v13;
          v30 = a4;

          v31 = (a4)(v28, v13, v12, v47, v19);
          v33 = v32;
          v35 = v34;

          v48 = v27;
          v37 = *(v27 + 16);
          v36 = *(v27 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_226F1F968((v36 > 1), v37 + 1, 1);
            v27 = v48;
          }

          ++v26;
          *(v27 + 16) = v37 + 1;
          v38 = (v27 + 24 * v37);
          v38[4] = v31;
          v38[5] = v33;
          v38[6] = v35;
          v12 = v44;
          a4 = v30;
          v13 = v29;
          v19 = v45;
          v24 = v46;
          if (v43 == v26)
          {

            v15 = v42;
            goto LABEL_14;
          }
        }

        __break(1u);

        __break(1u);
      }

      else
      {

        v27 = MEMORY[0x277D84F90];
LABEL_14:
        if (*(v27 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FF0, &qword_227672B88);
          v41 = sub_22766D010();
        }

        else
        {
          v41 = MEMORY[0x277D84F98];
        }

        v48 = v41;
        sub_226F91F08(v27, 1, &v48);
      }
    }

    else
    {

      v39 = sub_227664DD0();
      sub_226F89164(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D51018], v39);
      swift_willThrow();
    }
  }
}

uint64_t sub_226F7DD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) && (v9 = sub_226E92000(a2, a3), (v10 & 1) != 0))
  {
    sub_226E97CC0(*(a1 + 56) + 32 * v9, &v19);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC990, &qword_227670A30);
  if ((swift_dynamicCast() & 1) == 0 || !v18)
  {
    goto LABEL_14;
  }

  v5 = v17;
  if (*(a1 + 16) && (v11 = sub_226E92000(a4, a5), (v12 & 1) != 0))
  {
    sub_226E97CC0(*(a1 + 56) + 32 * v11, &v19);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_14:
    v14 = sub_227664DD0();
    sub_226F89164(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51018], v14);
    swift_willThrow();
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227670CD0;
  *(v13 + 32) = v17;
  *(v13 + 40) = v18;
  return v5;
}

uint64_t sub_226F7DF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) && (v9 = sub_226E92000(a2, a3), (v10 & 1) != 0))
  {
    sub_226E97CC0(*(a1 + 56) + 32 * v9, &v19);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC990, &qword_227670A30);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v5 = v17;
  if (*(a1 + 16) && (v11 = sub_226E92000(a4, a5), (v12 & 1) != 0))
  {
    sub_226E97CC0(*(a1 + 56) + 32 * v11, &v19);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_13:
    v14 = sub_227664DD0();
    sub_226F89164(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51018], v14);
    swift_willThrow();
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227670CD0;
  *(v13 + 32) = v17;
  *(v13 + 40) = v18;
  return v5;
}

uint64_t sub_226F7E160(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

uint64_t sub_226F7E20C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

void sub_226F7E2BC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v14 = *(*(a3 + 48) + (__clz(__rbit64(v9)) | (v12 << 6)));
      v13 = a1(&v14);
      if (v3 || (v13 & 1) != 0)
      {
        break;
      }

      v9 &= v9 - 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_226F7E3E0(uint64_t a1, char a2, void *a3)
{
  v43 = *(a1 + 16);
  if (!v43)
  {
    goto LABEL_22;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *a3;

  sub_226EB396C(v7, v6, v8);
  v11 = sub_226E92000(v4, v5);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_226FF0F7C();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

  sub_226FE3DF8(v14, a2 & 1);
  v16 = sub_226E92000(v4, v5);
  if ((v15 & 1) == (v17 & 1))
  {
    v11 = v16;
    if ((v15 & 1) == 0)
    {
LABEL_12:
      v20 = *a3;
      *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
      v21 = (v20[6] + 16 * v11);
      *v21 = v4;
      v21[1] = v5;
      v22 = v20[7] + 24 * v11;
      *v22 = v7;
      *(v22 + 8) = v6;
      *(v22 + 16) = v8;
      v23 = v20[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v20[2] = v25;
      if (v43 != 1)
      {
        v26 = (a1 + 104);
        v27 = 1;
        while (v27 < *(a1 + 16))
        {
          v29 = *(v26 - 4);
          v28 = *(v26 - 3);
          v7 = *(v26 - 2);
          v6 = *(v26 - 1);
          v8 = *v26;
          v30 = *a3;

          sub_226EB396C(v7, v6, v8);
          v31 = sub_226E92000(v29, v28);
          v33 = v30[2];
          v34 = (v32 & 1) == 0;
          v24 = __OFADD__(v33, v34);
          v35 = v33 + v34;
          if (v24)
          {
            goto LABEL_24;
          }

          v36 = v32;
          if (v30[3] < v35)
          {
            sub_226FE3DF8(v35, 1);
            v31 = sub_226E92000(v29, v28);
            if ((v36 & 1) != (v37 & 1))
            {
              goto LABEL_26;
            }
          }

          if (v36)
          {
            goto LABEL_9;
          }

          v38 = *a3;
          *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
          v39 = (v38[6] + 16 * v31);
          *v39 = v29;
          v39[1] = v28;
          v40 = v38[7] + 24 * v31;
          *v40 = v7;
          *(v40 + 8) = v6;
          *(v40 + 16) = v8;
          v41 = v38[2];
          v24 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v24)
          {
            goto LABEL_25;
          }

          ++v27;
          v38[2] = v42;
          v26 += 40;
          if (v43 == v27)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

LABEL_22:

      return;
    }

LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_226EB2DFC(v7, v6, v8);

      return;
    }

    goto LABEL_27;
  }

LABEL_26:
  sub_22766D220();
  __break(1u);
LABEL_27:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_226F7E7D0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22766D190() & 1;
  }
}

uint64_t sub_226F7E828(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t (*a4)(void))
{
  v45 = a2;
  v46 = a3;
  v44 = a4(0);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v36 = v4;
    v50 = MEMORY[0x277D84F90];
    v10 = v6;
    sub_226F1EFF0(0, v8, 0);
    v49 = v50;
    v11 = a1 + 56;
    result = sub_22766CC90();
    v12 = v10;
    v13 = result;
    v14 = 0;
    v41 = v10 + 8;
    v42 = v10 + 16;
    v37 = a1 + 64;
    v38 = v8;
    v39 = v10;
    v40 = a1 + 56;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v47 = *(a1 + 36);
      v18 = v43;
      v17 = v44;
      v19 = v12;
      (*(v12 + 16))(v43, *(a1 + 48) + *(v12 + 72) * v13, v44);
      v20 = v45(v18);
      v48 = v21;
      result = (*(v19 + 8))(v18, v17);
      v22 = v49;
      v50 = v49;
      v24 = *(v49 + 16);
      v23 = *(v49 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_226F1EFF0((v23 > 1), v24 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v24 + 1;
      v25 = v22 + 16 * v24;
      v26 = v48;
      *(v25 + 32) = v20;
      *(v25 + 40) = v26;
      v15 = 1 << *(a1 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v11 = v40;
      v27 = *(v40 + 8 * v16);
      if ((v27 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      v49 = v22;
      if (v47 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v28 = v27 & (-2 << (v13 & 0x3F));
      if (v28)
      {
        v15 = __clz(__rbit64(v28)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v12 = v39;
      }

      else
      {
        v29 = v16 << 6;
        v30 = v16 + 1;
        v31 = (v37 + 8 * v16);
        while (v30 < (v15 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            v34 = v39;
            result = sub_226EB526C(v13, v47, 0);
            v12 = v34;
            v15 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        v35 = v39;
        result = sub_226EB526C(v13, v47, 0);
        v12 = v35;
      }

LABEL_4:
      ++v14;
      v13 = v15;
      if (v14 == v38)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

char *sub_226F7EB64(uint64_t a1, void *a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v5 + 8))(v7, v4);
  v8 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FD8, &unk_227672B10);
  v13 = swift_allocObject();
  v14 = v9;
  v15 = v10;

  sub_22766A070();
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  swift_getKeyPath();
  sub_227230638(a1);
  v17 = v16;
  v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v36[0] = v17;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226E93170(v36, v34, &unk_27D7BC990, &qword_227670A30);
  v19 = v35;
  if (v35)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v34, v35);
    v21 = *(v19 - 8);
    v22 = MEMORY[0x28223BE20](v20);
    v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9068 &unk_227683240))];

  sub_226E97D1C(v36, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v36, 0);
  swift_endAccess();

  v30 = sub_2272346B8(100);
  swift_setDeallocating();

  v31 = qword_2813B2078;
  v32 = sub_22766A100();
  (*(*(v32 - 8) + 8))(v13 + v31, v32);
  swift_deallocClassInstance();
  return v30;
}

uint64_t sub_226F7F05C(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v23 = sub_227669890();
  v19 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v22);
  sub_226E9DD3C("CatalogDataStore::queryEquipment", 32, 2, &dword_226E8E000, 0, v20);
  v6 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB8, &unk_227672A60);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  sub_2272349B8(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
    swift_willThrow();
    v16 = v21;
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669920();
  }

  else
  {
    sub_227669580();
    sub_226F89164(&unk_28139B208, MEMORY[0x277D53E88], MEMORY[0x277D53E90]);
    v16 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
  }

  (*(v19 + 8))(v5, v23);
  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v16;
}

uint64_t sub_226F7F468(uint64_t a1, uint64_t *a2, char a3, void *a4)
{
  v72 = a2;
  v7 = sub_227669890();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E9DD3C("CatalogDataStore::queryCatalogMetadataJournals", 46, 2, &dword_226E8E000, 0, v78);
  (*(v8 + 8))(v10, v7);
  v11 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  v15 = v11[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC8, &qword_227672AA0);
  v16 = swift_allocObject();
  v17 = v12;
  v18 = v13;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  swift_getKeyPath();
  v19 = sub_227073F2C(a1);
  v73 = a1;
  if (a3)
  {
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
    v76[0] = v19;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v20 = sub_22766C820();
    sub_226E93170(v76, v74, &unk_27D7BC990, &qword_227670A30);
    v21 = v75;
    if (v75)
    {
      v22 = __swift_project_boxed_opaque_existential_0(v74, v75);
      v23 = *(v21 - 8);
      v24 = MEMORY[0x28223BE20](v22);
      v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v26, v24);
      v27 = sub_22766D170();
      (*(v23 + 8))(v26, v21);
      v28 = v80;
      __swift_destroy_boxed_opaque_existential_0(v74);
    }

    else
    {
      v27 = 0;
      v28 = v80;
    }

    v38 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FD0 qword_227672AD0))];

    sub_226E97D1C(v76, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v39 = sub_22766A080();
    v41 = v40;
    MEMORY[0x22AA985C0]();
    if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v39(v76, 0);
    swift_endAccess();

    sub_227234CB8(100);
    if (!v28)
    {
LABEL_21:
      swift_setDeallocating();

      v66 = qword_2813B2078;
      v67 = sub_22766A100();
      (*(*(v67 - 8) + 8))(v16 + v66, v67);
      swift_deallocClassInstance();
      sub_227666330();
      sub_226F89164(&qword_28139B698, MEMORY[0x277D522A0], MEMORY[0x277D522A8]);
      v65 = sub_22766C5B0();

      __swift_project_boxed_opaque_existential_0(v78, v79);
      sub_227669930();
      __swift_destroy_boxed_opaque_existential_0(v78);
      return v65;
    }
  }

  else
  {
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
    v76[0] = v19;
    v29 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v71 = v29;
    v30 = sub_22766C820();
    sub_226E93170(v76, v74, &unk_27D7BC990, &qword_227670A30);
    v31 = v75;
    if (v75)
    {
      v32 = __swift_project_boxed_opaque_existential_0(v74, v75);
      v33 = *(v31 - 8);
      v34 = MEMORY[0x28223BE20](v32);
      v36 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v36, v34);
      v37 = sub_22766D170();
      (*(v33 + 8))(v36, v31);
      __swift_destroy_boxed_opaque_existential_0(v74);
    }

    else
    {
      v37 = 0;
    }

    v70 = objc_opt_self();
    v42 = [v70 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FD0, qword_227672AD0);
    [objc_allocWithZone(v43) initWithLeftExpression:v30 rightExpression:v42 modifier:0 type:10 options:0];

    sub_226E97D1C(v76, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v44 = sub_22766A080();
    v46 = v45;
    MEMORY[0x22AA985C0]();
    if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v44(v76, 0);
    swift_endAccess();

    swift_getKeyPath();
    v77 = MEMORY[0x277D839F8];
    v76[0] = v72;

    v47 = sub_22766C820();
    sub_226E93170(v76, v74, &unk_27D7BC990, &qword_227670A30);
    v48 = v75;
    if (v75)
    {
      v49 = __swift_project_boxed_opaque_existential_0(v74, v75);
      v72 = &v69;
      v50 = v43;
      v51 = *(v48 - 8);
      v52 = MEMORY[0x28223BE20](v49);
      v54 = &v69 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v51 + 16))(v54, v52);
      v55 = sub_22766D170();
      (*(v51 + 8))(v54, v48);
      v43 = v50;
      __swift_destroy_boxed_opaque_existential_0(v74);
    }

    else
    {
      v55 = 0;
    }

    v56 = v80;
    v57 = [v70 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v58 = [objc_allocWithZone(v43) initWithLeftExpression:v47 rightExpression:v57 modifier:0 type:3 options:0];

    sub_226E97D1C(v76, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v59 = v58;
    v60 = sub_22766A080();
    v62 = v61;
    MEMORY[0x22AA985C0]();
    if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v60(v76, 0);
    swift_endAccess();

    sub_227234CB8(100);
    if (!v56)
    {
      goto LABEL_21;
    }
  }

  swift_setDeallocating();

  v63 = qword_2813B2078;
  v64 = sub_22766A100();
  (*(*(v64 - 8) + 8))(v16 + v63, v64);
  swift_deallocClassInstance();
  v65 = v79;
  __swift_project_boxed_opaque_existential_0(v78, v79);
  sub_227669930();
  __swift_destroy_boxed_opaque_existential_0(v78);
  return v65;
}

uint64_t sub_226F7FF9C(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v23 = sub_227669890();
  v19 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v22);
  sub_226E9DD3C("CatalogDataStore::queryCatalogModalityReferences", 48, 2, &dword_226E8E000, 0, v20);
  v6 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  sub_226EB1A68(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
    swift_willThrow();
    v16 = v21;
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669920();
  }

  else
  {
    sub_227666FF0();
    sub_226F89164(&unk_28139B578, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
    v16 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
  }

  (*(v19 + 8))(v5, v23);
  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v16;
}

char *sub_226F803A8(void (**a1)(char *, uint64_t), uint64_t *a2, int a3, void *a4)
{
  v86 = a4;
  v87 = a1;
  LODWORD(v88) = a3;
  v89 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F10, &qword_227672928);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v78 - v5;
  v7 = sub_2276645D0();
  v84 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v78 - v11;
  v13 = sub_227666330();
  v82 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227669890();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E9DD3C("CatalogDataStore::queryCatalogModalities", 40, 2, &dword_226E8E000, 0, v93);
  v20 = v19;
  v21 = v86;
  (*(v17 + 8))(v20, v16);
  v22 = v95;
  v23 = sub_226F7F468(v87, v89, v88 & 1, v21);
  v24 = v22;
  if (v22)
  {
    goto LABEL_16;
  }

  v25 = v82;
  v95 = v13;
  v80 = v12;
  v83 = v9;
  v85 = v7;
  v81 = v6;
  v26 = *(v23 + 16);
  if (v26)
  {
    v79 = 0;
    v92[0] = MEMORY[0x277D84F90];
    v27 = v23;
    sub_226F1EF90();
    v28 = v92[0];
    v29 = v25 + 16;
    v30 = *(v25 + 16);
    v31 = *(v25 + 80);
    v82 = v27;
    v32 = v27 + ((v31 + 32) & ~v31);
    v88 = *(v25 + 72);
    v89 = v30;
    v87 = (v25 + 8);
    v33 = v95;
    do
    {
      v34 = v29;
      (v89)(v15, v32, v33);
      v35 = sub_227666310();
      v37 = v36;
      (*v87)(v15, v33);
      v92[0] = v28;
      v38 = *(v28 + 16);
      v6 = (v38 + 1);
      if (v38 >= *(v28 + 24) >> 1)
      {
        sub_226F1EF90();
        v28 = v92[0];
      }

      *(v28 + 16) = v6;
      v39 = v28 + 16 * v38;
      *(v39 + 32) = v35;
      *(v39 + 40) = v37;
      v32 += v88;
      --v26;
      v33 = v95;
      v29 = v34;
    }

    while (v26);

    v24 = v79;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v40 = v86;
  v41 = sub_226F7FF9C(v28, v86);
  if (v24)
  {

LABEL_16:
    __swift_project_boxed_opaque_existential_0(v93, v94);
    sub_227669930();
    __swift_destroy_boxed_opaque_existential_0(v93);
    return v6;
  }

  v87 = v41;
  v42 = __swift_project_boxed_opaque_existential_0(v40, v40[3]);
  v43 = v28;
  v44 = *v42;
  v45 = v42[1];
  v46 = *(v42 + 16);
  v47 = v42[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F90, &qword_227672A10);
  v6 = swift_allocObject();
  v48 = v44;
  v49 = v45;

  sub_22766A070();
  *(v6 + 2) = v48;
  *(v6 + 3) = v49;
  v6[32] = v46;
  *(v6 + 5) = v47;
  swift_getKeyPath();
  v95 = v43;
  v50 = sub_227073F2C(v43);
  v92[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v92[0] = v50;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v51 = sub_22766C820();
  sub_226E93170(v92, v90, &unk_27D7BC990, &qword_227670A30);
  v52 = v91;
  if (v91)
  {
    v53 = __swift_project_boxed_opaque_existential_0(v90, v91);
    v54 = *(v52 - 8);
    v55 = MEMORY[0x28223BE20](v53);
    v57 = &v78 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v54 + 16))(v57, v55);
    v58 = sub_22766D170();
    (*(v54 + 8))(v57, v52);
    __swift_destroy_boxed_opaque_existential_0(v90);
  }

  else
  {
    v58 = 0;
  }

  v59 = v84;
  v60 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F98 &qword_227672A40))];

  sub_226E97D1C(v92, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v61 = sub_22766A080();
  v63 = v62;
  MEMORY[0x22AA985C0]();
  v64 = v87;
  if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    sub_22766C3A0();
    (v61)(v92, 0);
    swift_endAccess();

    v89 = sub_227234FB8(100);
    swift_setDeallocating();

    v66 = qword_2813B2078;
    v67 = sub_22766A100();
    (*(*(v67 - 8) + 8))(&v6[v66], v67);
    swift_deallocClassInstance();
    v88 = *(v95 + 16);
    if (!v88)
    {
      break;
    }

    v68 = 0;
    v69 = v59;
    v59 += 6;
    v61 = (v69 + 4);
    v70 = (v95 + 40);
    v6 = MEMORY[0x277D84F90];
    v71 = v81;
    while (v68 < *(v95 + 16))
    {
      v72 = *v70;
      v92[0] = *(v70 - 1);
      v92[1] = v72;

      sub_226F7BA68(v92, v64, v89, v71);
      v73 = v85;

      if ((*v59)(v71, 1, v73) == 1)
      {
        sub_226E97D1C(v71, &qword_27D7B8F10, &qword_227672928);
      }

      else
      {
        v74 = *v61;
        v75 = v80;
        (*v61)();
        (v74)(v83, v75, v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2273A5224(0, *(v6 + 2) + 1, 1, v6);
        }

        v77 = *(v6 + 2);
        v76 = *(v6 + 3);
        if (v77 >= v76 >> 1)
        {
          v6 = sub_2273A5224((v76 > 1), v77 + 1, 1, v6);
        }

        *(v6 + 2) = v77 + 1;
        (v74)(&v6[((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v77], v83, v85);
        v71 = v81;
        v64 = v87;
      }

      ++v68;
      v70 += 2;
      if (v88 == v68)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    sub_22766C360();
    v64 = v87;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_30:

  __swift_project_boxed_opaque_existential_0(v93, v94);
  sub_227669930();
  __swift_destroy_boxed_opaque_existential_0(v93);
  return v6;
}

uint64_t sub_226F80E80(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v23 = sub_227669890();
  v19 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v22);
  sub_226E9DD3C("CatalogDataStore::queryMusicGenres", 34, 2, &dword_226E8E000, 0, v20);
  v6 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F88, &qword_227672A08);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  sub_226ED00DC(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
    swift_willThrow();
    v16 = v21;
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669920();
  }

  else
  {
    sub_2276632A0();
    sub_226F89164(&qword_28139BD28, MEMORY[0x277D4FE80], MEMORY[0x277D4FE88]);
    v16 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
  }

  (*(v19 + 8))(v5, v23);
  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v16;
}

uint64_t sub_226F8128C(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v23 = sub_227669890();
  v19 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v22);
  sub_226E9DD3C("CatalogDataStore::queryCatalogThemes", 36, 2, &dword_226E8E000, 0, v20);
  v6 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F80, &qword_227672A00);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  sub_227233DB8(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
    swift_willThrow();
    v16 = v21;
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669920();
  }

  else
  {
    sub_227663A30();
    sub_226F89164(&qword_28139BC90, MEMORY[0x277D50278], MEMORY[0x277D50280]);
    v16 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
  }

  (*(v19 + 8))(v5, v23);
  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v16;
}

uint64_t sub_226F81698(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v23 = sub_227669890();
  v19 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v22);
  sub_226E9DD3C("CatalogDataStore::queryTrainerReferences", 40, 2, &dword_226E8E000, 0, v20);
  v6 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F78, &qword_22767F0A0);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  sub_227233AB8(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
    swift_willThrow();
    v16 = v21;
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669920();
  }

  else
  {
    sub_227664EB0();
    sub_226F89164(&qword_28139B8B8, MEMORY[0x277D51130], MEMORY[0x277D51138]);
    v16 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
  }

  (*(v19 + 8))(v5, v23);
  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v16;
}

char *sub_226F81AA4(void (**a1)(char *, uint64_t), uint64_t *a2, int a3, void *a4)
{
  v86 = a4;
  v87 = a1;
  LODWORD(v88) = a3;
  v89 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F50, &qword_2276729A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v78 - v5;
  v7 = sub_2276692D0();
  v84 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v78 - v11;
  v13 = sub_227666330();
  v82 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227669890();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E9DD3C("CatalogDataStore::queryTrainers", 31, 2, &dword_226E8E000, 0, v93);
  v20 = v19;
  v21 = v86;
  (*(v17 + 8))(v20, v16);
  v22 = v95;
  v23 = sub_226F7F468(v87, v89, v88 & 1, v21);
  v24 = v22;
  if (v22)
  {
    goto LABEL_16;
  }

  v25 = v82;
  v95 = v13;
  v80 = v12;
  v83 = v9;
  v85 = v7;
  v81 = v6;
  v26 = *(v23 + 16);
  if (v26)
  {
    v79 = 0;
    v92[0] = MEMORY[0x277D84F90];
    v27 = v23;
    sub_226F1EF90();
    v28 = v92[0];
    v29 = v25 + 16;
    v30 = *(v25 + 16);
    v31 = *(v25 + 80);
    v82 = v27;
    v32 = v27 + ((v31 + 32) & ~v31);
    v88 = *(v25 + 72);
    v89 = v30;
    v87 = (v25 + 8);
    v33 = v95;
    do
    {
      v34 = v29;
      (v89)(v15, v32, v33);
      v35 = sub_227666310();
      v37 = v36;
      (*v87)(v15, v33);
      v92[0] = v28;
      v38 = *(v28 + 16);
      v6 = (v38 + 1);
      if (v38 >= *(v28 + 24) >> 1)
      {
        sub_226F1EF90();
        v28 = v92[0];
      }

      *(v28 + 16) = v6;
      v39 = v28 + 16 * v38;
      *(v39 + 32) = v35;
      *(v39 + 40) = v37;
      v32 += v88;
      --v26;
      v33 = v95;
      v29 = v34;
    }

    while (v26);

    v24 = v79;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v40 = v86;
  v41 = sub_226F81698(v28, v86);
  if (v24)
  {

LABEL_16:
    __swift_project_boxed_opaque_existential_0(v93, v94);
    sub_227669930();
    __swift_destroy_boxed_opaque_existential_0(v93);
    return v6;
  }

  v87 = v41;
  v42 = __swift_project_boxed_opaque_existential_0(v40, v40[3]);
  v43 = v28;
  v44 = *v42;
  v45 = v42[1];
  v46 = *(v42 + 16);
  v47 = v42[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F58, &qword_2276729A8);
  v6 = swift_allocObject();
  v48 = v44;
  v49 = v45;

  sub_22766A070();
  *(v6 + 2) = v48;
  *(v6 + 3) = v49;
  v6[32] = v46;
  *(v6 + 5) = v47;
  swift_getKeyPath();
  v95 = v43;
  v50 = sub_227073F2C(v43);
  v92[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v92[0] = v50;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v51 = sub_22766C820();
  sub_226E93170(v92, v90, &unk_27D7BC990, &qword_227670A30);
  v52 = v91;
  if (v91)
  {
    v53 = __swift_project_boxed_opaque_existential_0(v90, v91);
    v54 = *(v52 - 8);
    v55 = MEMORY[0x28223BE20](v53);
    v57 = &v78 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v54 + 16))(v57, v55);
    v58 = sub_22766D170();
    (*(v54 + 8))(v57, v52);
    __swift_destroy_boxed_opaque_existential_0(v90);
  }

  else
  {
    v58 = 0;
  }

  v59 = v84;
  v60 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F60 &qword_2276729E0))];

  sub_226E97D1C(v92, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v61 = sub_22766A080();
  v63 = v62;
  MEMORY[0x22AA985C0]();
  v64 = v87;
  if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    sub_22766C3A0();
    (v61)(v92, 0);
    swift_endAccess();

    v89 = sub_2272352B8(100);
    swift_setDeallocating();

    v66 = qword_2813B2078;
    v67 = sub_22766A100();
    (*(*(v67 - 8) + 8))(&v6[v66], v67);
    swift_deallocClassInstance();
    v88 = *(v95 + 16);
    if (!v88)
    {
      break;
    }

    v68 = 0;
    v69 = v59;
    v59 += 6;
    v61 = (v69 + 4);
    v70 = (v95 + 40);
    v6 = MEMORY[0x277D84F90];
    v71 = v81;
    while (v68 < *(v95 + 16))
    {
      v72 = *v70;
      v92[0] = *(v70 - 1);
      v92[1] = v72;

      sub_226F7B170(v92, v64, v89, v71);
      v73 = v85;

      if ((*v59)(v71, 1, v73) == 1)
      {
        sub_226E97D1C(v71, &qword_27D7B8F50, &qword_2276729A0);
      }

      else
      {
        v74 = *v61;
        v75 = v80;
        (*v61)();
        (v74)(v83, v75, v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2273A524C(0, *(v6 + 2) + 1, 1, v6);
        }

        v77 = *(v6 + 2);
        v76 = *(v6 + 3);
        if (v77 >= v76 >> 1)
        {
          v6 = sub_2273A524C((v76 > 1), v77 + 1, 1, v6);
        }

        *(v6 + 2) = v77 + 1;
        (v74)(&v6[((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v77], v83, v85);
        v71 = v81;
        v64 = v87;
      }

      ++v68;
      v70 += 2;
      if (v88 == v68)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    sub_22766C360();
    v64 = v87;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_30:

  __swift_project_boxed_opaque_existential_0(v93, v94);
  sub_227669930();
  __swift_destroy_boxed_opaque_existential_0(v93);
  return v6;
}

uint64_t sub_226F8257C(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v23 = sub_227669890();
  v19 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v22);
  sub_226E9DD3C("CatalogDataStore::queryBodyFocuses", 34, 2, &dword_226E8E000, 0, v20);
  v6 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F48, &qword_227672998);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  sub_226ED85A4(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
    swift_willThrow();
    v16 = v21;
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669920();
  }

  else
  {
    sub_227669530();
    sub_226F89164(&unk_28139B238, MEMORY[0x277D53E10], MEMORY[0x277D53E18]);
    v16 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
  }

  (*(v19 + 8))(v5, v23);
  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v16;
}

uint64_t sub_226F82988(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v23 = sub_227669890();
  v19 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v22);
  sub_226E9DD3C("CatalogDataStore::querySkillLevels", 34, 2, &dword_226E8E000, 0, v20);
  v6 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F40, &qword_227672990);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  sub_226ED13FC(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
    swift_willThrow();
    v16 = v21;
    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669920();
  }

  else
  {
    sub_2276633A0();
    sub_226F89164(&unk_28139BCF8, MEMORY[0x277D4FF18], MEMORY[0x277D4FF20]);
    v16 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v20, v21);
    sub_227669930();
  }

  (*(v19 + 8))(v5, v23);
  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v16;
}

uint64_t sub_226F82D94(uint64_t a1, void *a2)
{
  v402 = a2;
  v3 = sub_2276624A0();
  MEMORY[0x28223BE20](v3 - 8);
  v365 = v319 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v364 = v319 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EF8, &qword_227672908);
  MEMORY[0x28223BE20](v7 - 8);
  v373 = v319 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  MEMORY[0x28223BE20](v9 - 8);
  v372 = v319 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v11 - 8);
  v371 = v319 - v12;
  v13 = sub_227662190();
  MEMORY[0x28223BE20](v13 - 8);
  v370 = v319 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F08, &qword_227672920);
  MEMORY[0x28223BE20](v15 - 8);
  v369 = v319 - v16;
  v376 = sub_2276645D0();
  v374 = *(v376 - 8);
  MEMORY[0x28223BE20](v376);
  v368 = v319 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v377 = v319 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F10, &qword_227672928);
  MEMORY[0x28223BE20](v20 - 8);
  v367 = v319 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v385 = v319 - v23;
  v389 = sub_2276664D0();
  v388 = *(v389 - 8);
  MEMORY[0x28223BE20](v389);
  v366 = v319 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v390 = v319 - v26;
  MEMORY[0x28223BE20](v27);
  v387 = v319 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F18, &unk_227672930);
  MEMORY[0x28223BE20](v29 - 8);
  v378 = v319 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v384 = v319 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  MEMORY[0x28223BE20](v33 - 8);
  v381 = v319 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v386 = v319 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F28, qword_227672940);
  MEMORY[0x28223BE20](v37 - 8);
  v382 = v319 - v38;
  v383 = sub_2276642E0();
  v375 = *(v383 - 8);
  MEMORY[0x28223BE20](v383);
  v363 = v319 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = sub_22766B390();
  v399 = *(v397 - 8);
  MEMORY[0x28223BE20](v397);
  v396 = (v319 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = sub_227666B60();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v380 = v319 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v379 = v319 - v45;
  MEMORY[0x28223BE20](v46);
  v391 = v319 - v47;
  MEMORY[0x28223BE20](v48);
  v392 = v319 - v49;
  MEMORY[0x28223BE20](v50);
  v393 = (v319 - v51);
  MEMORY[0x28223BE20](v52);
  v400 = v319 - v53;
  MEMORY[0x28223BE20](v54);
  v404 = (v319 - v55);
  MEMORY[0x28223BE20](v56);
  v403 = v319 - v57;
  MEMORY[0x28223BE20](v58);
  v60 = v319 - v59;
  v61 = sub_227669890();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v64 = v319 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E9DD3C("CatalogDataStore::queryCatalogWorkouts", 38, 2, &dword_226E8E000, 0, &v412);
  (*(v62 + 8))(v64, v61);
  v65 = *(a1 + 16);
  v408 = v41;
  v394 = a1;
  v395 = v42;
  v398 = v65;
  if (v65)
  {
    v66 = v42 + 16;
    v67 = *(v42 + 16);
    v68 = a1 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v405 = *(v66 + 56);
    v406 = v67;
    v407 = v66;
    v69 = (v66 - 8);
    v70 = MEMORY[0x277D84F90];
    v67(v60, v68, v41);
    while (1)
    {
      v71 = sub_227666AD0();
      (*v69)(v60, v41);
      v72 = *(v71 + 16);
      v41 = *(v70 + 2);
      v73 = v41 + v72;
      if (__OFADD__(v41, v72))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v73 > *(v70 + 3) >> 1)
      {
        if (v41 <= v73)
        {
          v75 = v41 + v72;
        }

        else
        {
          v75 = v41;
        }

        v70 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v75, 1, v70);
      }

      v41 = v408;
      if (*(v71 + 16))
      {
        if ((*(v70 + 3) >> 1) - *(v70 + 2) < v72)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          v164 = MEMORY[0x277D84F90];
LABEL_110:
          v172 = sub_226F3E6A8(v164);

          v173 = sub_226F7ADD4(v172);
          v174 = v402;
          v175 = v401;
          v176 = sub_226F8257C(v173, v402);
          if (v175)
          {

            goto LABEL_133;
          }

          v392 = v176;
          v401 = 0;

          v177 = __swift_project_boxed_opaque_existential_0(v174, v174[3]);
          v178 = *v177;
          v65 = v177[1];
          v179 = v396;
          sub_22766A730();
          sub_22766B370();
          (v360)(v179, v397);
          [v178 reset];
          [v65 reset];
          v180 = v398;
          if (v398)
          {
            v407 = *(v395 + 16);
            v65 = v394 + ((*(v395 + 80) + 32) & ~*(v395 + 80));
            v406 = *(v395 + 72);
            v130 = (v395 + 8);
            v181 = MEMORY[0x277D84F90];
            while (1)
            {
              v182 = v391;
              v407(v391, v65, v41);
              v128 = sub_227666AF0();
              (*v130)(v182, v41);
              v183 = *(v128 + 16);
              v108 = *(v181 + 2);
              v184 = v108 + v183;
              if (__OFADD__(v108, v183))
              {
                goto LABEL_220;
              }

              v185 = swift_isUniquelyReferenced_nonNull_native();
              if (!v185 || v184 > *(v181 + 3) >> 1)
              {
                if (v108 <= v184)
                {
                  v186 = v108 + v183;
                }

                else
                {
                  v186 = v108;
                }

                v181 = sub_226EB3F78(v185, v186, 1, v181);
              }

              v41 = v408;
              if (*(v128 + 16))
              {
                if ((*(v181 + 3) >> 1) - *(v181 + 2) < v183)
                {
                  goto LABEL_223;
                }

                swift_arrayInitWithCopy();

                if (v183)
                {
                  v187 = *(v181 + 2);
                  v77 = __OFADD__(v187, v183);
                  v188 = v187 + v183;
                  if (v77)
                  {
                    goto LABEL_224;
                  }

                  *(v181 + 2) = v188;
                }
              }

              else
              {

                if (v183)
                {
                  goto LABEL_221;
                }
              }

              v65 += v406;
              if (!--v180)
              {
                goto LABEL_131;
              }
            }
          }

LABEL_130:
          v181 = MEMORY[0x277D84F90];
LABEL_131:
          v189 = sub_226F3E6A8(v181);

          v190 = sub_226F7ADD4(v189);
          v191 = v402;
          v192 = v401;
          v193 = sub_226F82988(v190, v402);
          if (v192)
          {

            goto LABEL_133;
          }

          v357 = v193;
          v401 = 0;

          v195 = __swift_project_boxed_opaque_existential_0(v191, v191[3]);
          v196 = *v195;
          v197 = v195[1];
          v198 = v396;
          sub_22766A730();
          sub_22766B370();
          (v360)(v198, v397);
          [v196 reset];
          [v197 reset];
          v113 = MEMORY[0x277D84F90];
          v199 = v398;
          if (v398)
          {
            v411[0] = MEMORY[0x277D84F90];
            sub_226F1EF90();
            v113 = v411[0];
            v406 = *(v395 + 16);
            v200 = v394 + ((*(v395 + 80) + 32) & ~*(v395 + 80));
            v393 = *(v395 + 72);
            v407 = (v395 + 16);
            v201 = (v395 + 8);
            do
            {
              v202 = v404;
              v406(v404, v200, v41);
              v203 = sub_227666A50();
              v205 = v204;
              (*v201)(v202, v41);
              v411[0] = v113;
              v206 = *(v113 + 16);
              if (v206 >= *(v113 + 24) >> 1)
              {
                sub_226F1EF90();
                v113 = v411[0];
              }

              *(v113 + 16) = v206 + 1;
              v207 = v113 + 16 * v206;
              *(v207 + 32) = v203;
              *(v207 + 40) = v205;
              v200 += v393;
              --v199;
              v41 = v408;
            }

            while (v199);
LABEL_143:
            v191 = v402;
          }

          v208 = sub_226F3E6A8(v113);

          v209 = __swift_project_boxed_opaque_existential_0(v191, v191[3]);
          v210 = *v209;
          v211 = v209[1];
          v212 = *(v209 + 16);
          v213 = v209[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F30, &unk_22767F080);
          v65 = swift_allocObject();
          v108 = &qword_2813B2078;
          v214 = v210;
          v215 = v211;

          sub_22766A070();
          *(v65 + 16) = v214;
          *(v65 + 24) = v215;
          *(v65 + 32) = v212;
          *(v65 + 40) = v213;
          swift_getKeyPath();
          v411[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
          v411[0] = v208;
          sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
          v358 = v208;

          v114 = sub_22766C820();
          sub_226E93170(v411, &v409, &unk_27D7BC990, &qword_227670A30);
          v216 = v410;
          if (!v410)
          {
            goto LABEL_149;
          }

          v217 = __swift_project_boxed_opaque_existential_0(&v409, v410);
          v218 = *(v216 - 8);
          v219 = MEMORY[0x28223BE20](v217);
          v221 = v319 - ((v220 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v218 + 16))(v221, v219);
          v222 = sub_22766D170();
          (*(v218 + 8))(v221, v216);
          __swift_destroy_boxed_opaque_existential_0(&v409);
LABEL_150:
          v130 = v401;
          v223 = [objc_opt_self() expressionForConstantValue_];
          swift_unknownObjectRelease();
          [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F38 &qword_227672988))];

          sub_226E97D1C(v411, &unk_27D7BC990, &qword_227670A30);
          swift_beginAccess();
          v128 = sub_22766A080();
          v225 = v224;
          MEMORY[0x22AA985C0]();
          if (*((*v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_226;
          }

          while (2)
          {
            sub_22766C3A0();
            (v128)(v411, 0);
            swift_endAccess();

            v226 = sub_2272355B8(100);
            if (v130)
            {

              swift_setDeallocating();

              v227 = *v108;
              v228 = sub_22766A100();
              (*(*(v228 - 8) + 8))(v65 + v227, v228);
              swift_deallocClassInstance();
              goto LABEL_134;
            }

            v229 = v226;
            swift_setDeallocating();

            v230 = *v108;
            v231 = sub_22766A100();
            (*(*(v231 - 8) + 8))(v65 + v230, v231);
            swift_deallocClassInstance();
            v232 = __swift_project_boxed_opaque_existential_0(v402, v402[3]);
            v233 = *v232;
            v234 = v232[1];
            v235 = v396;
            sub_22766A730();
            sub_22766B370();
            (v360)(v235, v397);
            [v233 reset];
            [v234 reset];
            v236 = v358 + 56;
            v237 = 1 << *(v358 + 32);
            if (v237 < 64)
            {
              v238 = ~(-1 << v237);
            }

            else
            {
              v238 = -1;
            }

            v108 = v238 & *(v358 + 56);
            v239 = (v237 + 63) >> 6;
            v402 = (v395 + 16);
            v404 = (v395 + 8);
            v351 = (v395 + 32);
            v361 = (v395 + 56);
            v399 = v229;
            v397 = (v229 + 56);
            v391 = (v388 + 16);
            v396 = (v388 + 32);
            v393 = (v388 + 8);
            v360 = (v388 + 56);
            v356 = (v395 + 48);
            v350 = (v388 + 48);
            v349 = (v374 + 48);
            v348 = (v374 + 32);
            v347 = (v374 + 16);
            v346 = (v374 + 8);
            v355 = (v375 + 56);
            v354 = (v375 + 48);
            v345 = (v375 + 32);

            v128 = 0;
            v65 = MEMORY[0x277D84F90];
            v353 = v236;
            v352 = v239;
            while (2)
            {
              v240 = v128;
              v241 = v394;
              v242 = v389;
              v243 = v386;
              if (v108)
              {
LABEL_158:
                v401 = v130;
                v128 = v240;
                v244 = v395;
LABEL_164:
                v245 = (*(v358 + 48) + ((v128 << 10) | (16 * __clz(__rbit64(v108)))));
                v246 = *v245;
                v406 = v245[1];
                v407 = v246;

                v130 = v398;
                if (v398)
                {
                  v374 = v108;
                  v247 = v241 + ((*(v244 + 80) + 32) & ~*(v244 + 80));
                  v248 = *(v244 + 72);
                  v249 = *(v244 + 16);
                  v250 = v408;
                  v251 = v379;
                  while (1)
                  {
                    v249(v251, v247, v250);
                    if (sub_227666A50() == v407 && v252 == v406)
                    {
                      break;
                    }

                    v253 = sub_22766D190();

                    if (v253)
                    {
                      goto LABEL_173;
                    }

                    v250 = v408;
                    (*v404)(v251, v408);
                    v247 += v248;
                    if (!--v130)
                    {
                      v254 = 1;
                      v242 = v389;
                      v243 = v386;
                      goto LABEL_174;
                    }
                  }

LABEL_173:
                  v255 = v251;
                  v243 = v386;
                  v250 = v408;
                  (*v351)(v386, v255, v408);
                  v254 = 0;
                  v242 = v389;
LABEL_174:
                  v108 = v374;
                }

                else
                {
                  v254 = 1;
                  v250 = v408;
                }

                v374 = (v108 - 1) & v108;
                (*v361)(v243, v254, 1, v250);
                v256 = 1 << *(v399 + 32);
                if (v256 < 64)
                {
                  v257 = ~(-1 << v256);
                }

                else
                {
                  v257 = -1;
                }

                v258 = v257 & *(v399 + 56);
                v259 = (v256 + 63) >> 6;

                v261 = 0;
                while (1)
                {
                  if (!v258)
                  {
                    while (1)
                    {
                      v108 = v261 + 1;
                      if (__OFADD__(v261, 1))
                      {
                        goto LABEL_222;
                      }

                      if (v108 >= v259)
                      {

                        v266 = 1;
                        goto LABEL_192;
                      }

                      v258 = *(v397 + 8 * v108);
                      ++v261;
                      if (v258)
                      {
                        goto LABEL_184;
                      }
                    }
                  }

                  v108 = v261;
LABEL_184:
                  v262 = v388;
                  v263 = v387;
                  (*(v388 + 16))(v387, *(v260 + 48) + *(v388 + 72) * (__clz(__rbit64(v258)) | (v108 << 6)), v242);
                  v130 = *(v262 + 32);
                  (v130)(v390, v263, v242);
                  if (sub_227666370() == v407 && v264 == v406)
                  {

                    goto LABEL_191;
                  }

                  v265 = sub_22766D190();

                  if (v265)
                  {
                    break;
                  }

                  v258 &= v258 - 1;
                  v242 = v389;
                  (*v393)(v390, v389);
                  v261 = v108;
                  v260 = v399;
                }

LABEL_191:
                v242 = v389;
                (v130)(v384, v390, v389);
                v266 = 0;
LABEL_192:
                v267 = v385;
                v268 = v384;
                v269 = (*v360)(v384, v266, 1, v242);
                v270 = v242;
                MEMORY[0x28223BE20](v269);
                v271 = v386;
                v317 = v386;
                v272 = v401;
                sub_227543A0C(sub_226F875CC, v405, v267);
                v401 = v272;
                v273 = v271;
                v274 = v381;
                sub_226E93170(v273, v381, &qword_27D7B8F20, &qword_2276767D0);
                v275 = v267;
                v276 = v408;
                if ((*v356)(v274, 1, v408) == 1)
                {

                  sub_226E97D1C(v275, &qword_27D7B8F10, &qword_227672928);
                  sub_226E97D1C(v268, &qword_27D7B8F18, &unk_227672930);
                  sub_226E97D1C(v274, &qword_27D7B8F20, &qword_2276767D0);
                  v242 = v270;
                  v243 = v386;
                  goto LABEL_199;
                }

                v277 = v380;
                (*v351)(v380, v274, v276);
                v278 = v378;
                sub_226E93170(v268, v378, &qword_27D7B8F18, &unk_227672930);
                v242 = v270;
                if ((*v350)(v278, 1, v270) == 1)
                {

                  sub_226E97D1C(v385, &qword_27D7B8F10, &qword_227672928);
                  sub_226E97D1C(v268, &qword_27D7B8F18, &unk_227672930);
                  sub_226E97D1C(v278, &qword_27D7B8F18, &unk_227672930);
                  (*v404)(v277, v276);
LABEL_198:
                  v243 = v386;
LABEL_199:
                  v283 = v382;
                  v284 = v383;
                  (*v355)(v382, 1, 1, v383);
                }

                else
                {
                  v279 = v366;
                  (*v396)(v366, v278, v242);
                  v280 = v385;
                  v281 = v367;
                  sub_226E93170(v385, v367, &qword_27D7B8F10, &qword_227672928);
                  v282 = v376;
                  if ((*v349)(v281, 1, v376) == 1)
                  {

                    (*v393)(v279, v242);
                    sub_226E97D1C(v280, &qword_27D7B8F10, &qword_227672928);
                    sub_226E97D1C(v384, &qword_27D7B8F18, &unk_227672930);
                    sub_226E97D1C(v281, &qword_27D7B8F10, &qword_227672928);
                    (*v404)(v380, v408);
                    goto LABEL_198;
                  }

                  v285 = (*v348)(v377, v281, v282);
                  MEMORY[0x28223BE20](v285);
                  v286 = v380;
                  v287 = v392;

                  v288 = v401;
                  sub_226F7AAEC(sub_226F875EC, v316, v287, MEMORY[0x277D53E10], sub_226ED62C0);
                  v344 = v289;
                  MEMORY[0x28223BE20](v289);
                  v290 = v362;

                  sub_226F7AAEC(sub_226F87648, v316, v290, MEMORY[0x277D53E88], sub_226F1F868);
                  v343 = v291;
                  MEMORY[0x28223BE20](v291);
                  v292 = v403;

                  sub_226F7AAEC(sub_226F876A4, v316, v292, MEMORY[0x277D4FE80], sub_226F1F6A8);
                  v342 = v293;
                  MEMORY[0x28223BE20](v293);
                  v294 = v357;

                  sub_226F7AAEC(sub_226F87700, v316, v294, MEMORY[0x277D4FF18], sub_226ED3590);
                  v341 = v295;
                  MEMORY[0x28223BE20](v295);
                  v296 = v400;

                  sub_226F7AAEC(sub_226F8775C, v316, v296, MEMORY[0x277D50278], sub_226F1F308);
                  v340 = v297;
                  MEMORY[0x28223BE20](v297);
                  v317 = v286;
                  v298 = v359;

                  sub_226F7AAEC(sub_226F877B8, v316, v298, MEMORY[0x277D53B20], sub_226F1F908);
                  v332 = v299;
                  v401 = v288;
                  v338 = sub_227666440();
                  v339 = sub_227666490();
                  v337 = sub_227666450();
                  v336 = sub_2276663E0();
                  v335 = sub_2276663F0();
                  v334 = sub_227666A70();
                  v333 = v300;
                  v328 = v301;
                  sub_227666410();
                  v331 = sub_2276663A0();
                  sub_227666A60();
                  sub_227666B40();
                  v330 = sub_227666B30();
                  v329 = sub_227666420();
                  v327 = sub_2276664C0();
                  v326 = v302;
                  v325 = sub_2276663B0();
                  v324 = sub_227666B50();
                  v323 = v303;
                  v320 = v304;
                  (*v347)(v368, v377, v282);
                  v322 = sub_227666460();
                  v321 = v305;
                  sub_227666400();
                  v319[5] = sub_227666390();
                  sub_2276664A0();
                  v306 = sub_227665DB0();
                  (*(*(v306 - 8) + 56))(v373, 1, 1, v306);
                  sub_227666380();
                  v319[4] = sub_227666470();
                  v319[3] = v307;
                  sub_2276663C0();
                  v319[2] = sub_2276664B0();
                  v319[1] = v308;
                  v319[0] = sub_227666480();
                  v310 = v309;
                  v311 = sub_2276663D0();
                  v312 = sub_227666B20();
                  v242 = v389;
                  v318 = v312;
                  v316[1] = v311;
                  v317 = v332;
                  v316[0] = v310;
                  v283 = v382;
                  sub_227664260();
                  (*v346)(v377, v376);
                  (*v393)(v279, v242);
                  sub_226E97D1C(v385, &qword_27D7B8F10, &qword_227672928);
                  sub_226E97D1C(v384, &qword_27D7B8F18, &unk_227672930);
                  v284 = v383;
                  (*v355)(v283, 0, 1, v383);
                  (*v404)(v286, v408);
                  v243 = v386;
                }

                sub_226E97D1C(v243, &qword_27D7B8F20, &qword_2276767D0);
                if ((*v354)(v283, 1, v284) != 1)
                {
                  v313 = *v345;
                  (*v345)(v363, v283, v284);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v65 = sub_2273A5274(0, *(v65 + 16) + 1, 1, v65);
                  }

                  v315 = *(v65 + 16);
                  v314 = *(v65 + 24);
                  if (v315 >= v314 >> 1)
                  {
                    v65 = sub_2273A5274((v314 > 1), v315 + 1, 1, v65);
                  }

                  *(v65 + 16) = v315 + 1;
                  v313((v65 + ((*(v375 + 80) + 32) & ~*(v375 + 80)) + *(v375 + 72) * v315), v363, v383);
                  v130 = v401;
                  v236 = v353;
                  v239 = v352;
                  v108 = v374;
                  continue;
                }

                sub_226E97D1C(v283, &qword_27D7B8F28, qword_227672940);
                v240 = v128;
                v130 = v401;
                v236 = v353;
                v239 = v352;
                v108 = v374;
                v241 = v394;
                if (v374)
                {
                  goto LABEL_158;
                }
              }

              break;
            }

            v244 = v395;
            while (1)
            {
              v128 = v240 + 1;
              if (__OFADD__(v240, 1))
              {
                break;
              }

              if (v128 >= v239)
              {

                __swift_project_boxed_opaque_existential_0(&v412, v413);
                sub_227669930();
                __swift_destroy_boxed_opaque_existential_0(&v412);
                return v65;
              }

              v108 = *(v236 + 8 * v128);
              ++v240;
              if (v108)
              {
                v401 = v130;
                goto LABEL_164;
              }
            }

LABEL_225:
            __break(1u);
LABEL_226:
            sub_22766C360();
            continue;
          }
        }

        swift_arrayInitWithCopy();

        if (v72)
        {
          v76 = *(v70 + 2);
          v77 = __OFADD__(v76, v72);
          v78 = v76 + v72;
          if (v77)
          {
            goto LABEL_108;
          }

          *(v70 + 2) = v78;
        }
      }

      else
      {

        if (v72)
        {
          goto LABEL_87;
        }
      }

      v68 += v405;
      if (!--v65)
      {
        goto LABEL_19;
      }

      v406(v60, v68, v41);
    }

    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v70 = MEMORY[0x277D84F90];
LABEL_19:
  v79 = sub_226F3E6A8(v70);

  v80 = *(v79 + 16);
  if (v80)
  {
    v81 = sub_2274CD6BC(*(v79 + 16), 0);
    v82 = sub_2274CDE20(v411, v81 + 4, v80, v79);
    sub_226EBB21C(v411[0]);
    if (v82 == v80)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  v81 = MEMORY[0x277D84F90];
LABEL_23:
  v83 = v402;
  v84 = v401;
  v85 = sub_226F7F05C(v81, v402);
  if (!v84)
  {
    v362 = v85;
    v401 = 0;
    v65 = 0x29287465736572;

    v86 = __swift_project_boxed_opaque_existential_0(v83, v83[3]);
    v87 = *v86;
    v88 = v86[1];
    v89 = v396;
    sub_22766A730();
    v361 = "outs(_:age:handle:)";
    sub_22766B370();
    v90 = *(v399 + 8);
    v399 += 8;
    v360 = v90;
    (v90)(v89, v397);
    [v87 reset];
    [v88 reset];
    v91 = MEMORY[0x277D84F90];
    v92 = v398;
    if (v398)
    {
      v411[0] = MEMORY[0x277D84F90];
      sub_226F1EF90();
      v91 = v411[0];
      v406 = *(v395 + 16);
      v93 = v394 + ((*(v395 + 80) + 32) & ~*(v395 + 80));
      v405 = *(v395 + 72);
      v407 = (v395 + 16);
      v94 = (v395 + 8);
      do
      {
        v95 = v404;
        v96 = v408;
        v406(v404, v93, v408);
        v97 = sub_227666A90();
        v99 = v98;
        (*v94)(v95, v96);
        v411[0] = v91;
        v65 = *(v91 + 16);
        if (v65 >= *(v91 + 24) >> 1)
        {
          sub_226F1EF90();
          v91 = v411[0];
        }

        *(v91 + 16) = v65 + 1;
        v100 = v91 + 16 * v65;
        *(v100 + 32) = v97;
        *(v100 + 40) = v99;
        v93 += v405;
        --v92;
      }

      while (v92);
      v41 = v408;
    }

    v101 = v402;
    v102 = v401;
    v103 = sub_226F803A8(v91, 0, 1, v402);
    if (v102)
    {
LABEL_133:

      goto LABEL_134;
    }

    v405 = v103;
    v401 = 0;

    v104 = __swift_project_boxed_opaque_existential_0(v101, v101[3]);
    v105 = *v104;
    v106 = v104[1];
    v107 = v396;
    sub_22766A730();
    sub_22766B370();
    (v360)(v107, v397);
    [v105 reset];
    [v106 reset];
    v108 = v398;
    if (v398)
    {
      v407 = *(v395 + 16);
      v109 = v394 + ((*(v395 + 80) + 32) & ~*(v395 + 80));
      v406 = *(v395 + 72);
      v110 = (v395 + 8);
      v111 = MEMORY[0x277D84F90];
      while (1)
      {
        v112 = v403;
        v407(v403, v109, v41);
        v113 = sub_227666AE0();
        (*v110)(v112, v41);
        v114 = *(v113 + 16);
        v65 = *(v111 + 2);
        v41 = &v114[v65];
        if (__OFADD__(v65, v114))
        {
          break;
        }

        v115 = swift_isUniquelyReferenced_nonNull_native();
        if (!v115 || v41 > *(v111 + 3) >> 1)
        {
          if (v65 <= v41)
          {
            v116 = &v114[v65];
          }

          else
          {
            v116 = v65;
          }

          v111 = sub_226EB3F78(v115, v116, 1, v111);
        }

        v41 = v408;
        if (*(v113 + 16))
        {
          if ((*(v111 + 3) >> 1) - *(v111 + 2) < v114)
          {
            __break(1u);
            goto LABEL_143;
          }

          swift_arrayInitWithCopy();

          if (v114)
          {
            v117 = *(v111 + 2);
            v77 = __OFADD__(v117, v114);
            v118 = &v114[v117];
            if (v77)
            {
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              v222 = 0;
              goto LABEL_150;
            }

            *(v111 + 2) = v118;
          }
        }

        else
        {

          if (v114)
          {
            goto LABEL_129;
          }
        }

        v109 += v406;
        if (!--v108)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v111 = MEMORY[0x277D84F90];
LABEL_49:
    v119 = sub_226F3E6A8(v111);

    v120 = sub_226F7ADD4(v119);
    v121 = v402;
    v122 = v401;
    v123 = sub_226F80E80(v120, v402);
    if (v122)
    {

      goto LABEL_133;
    }

    v403 = v123;
    v401 = 0;

    v124 = __swift_project_boxed_opaque_existential_0(v121, v121[3]);
    v125 = *v124;
    v126 = v124[1];
    v127 = v396;
    sub_22766A730();
    sub_22766B370();
    (v360)(v127, v397);
    [v125 reset];
    [v126 reset];
    v128 = v398;
    if (v398)
    {
      v407 = *(v395 + 16);
      v129 = v394 + ((*(v395 + 80) + 32) & ~*(v395 + 80));
      v406 = *(v395 + 72);
      v130 = (v395 + 8);
      v65 = MEMORY[0x277D84F90];
      while (1)
      {
        v131 = v400;
        v407(v400, v129, v41);
        v132 = sub_227666A80();
        (*v130)(v131, v41);
        v114 = *(v132 + 16);
        v108 = *(v65 + 16);
        v133 = &v114[v108];
        if (__OFADD__(v108, v114))
        {
          goto LABEL_147;
        }

        v134 = swift_isUniquelyReferenced_nonNull_native();
        if (!v134 || v133 > *(v65 + 24) >> 1)
        {
          if (v108 <= v133)
          {
            v135 = &v114[v108];
          }

          else
          {
            v135 = v108;
          }

          v65 = sub_226EB3F78(v134, v135, 1, v65);
        }

        v41 = v408;
        if (*(v132 + 16))
        {
          if ((*(v65 + 24) >> 1) - *(v65 + 16) < v114)
          {
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
LABEL_213:
            __break(1u);
LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
LABEL_224:
            __break(1u);
            goto LABEL_225;
          }

          swift_arrayInitWithCopy();

          if (v114)
          {
            v136 = *(v65 + 16);
            v77 = __OFADD__(v136, v114);
            v137 = &v114[v136];
            if (v77)
            {
              goto LABEL_211;
            }

            *(v65 + 16) = v137;
          }
        }

        else
        {

          if (v114)
          {
            goto LABEL_148;
          }
        }

        v129 += v406;
        if (!--v128)
        {
          goto LABEL_68;
        }
      }
    }

    v65 = MEMORY[0x277D84F90];
LABEL_68:
    v138 = sub_226F3E6A8(v65);

    v139 = sub_226F7ADD4(v138);
    v140 = v402;
    v141 = v401;
    v142 = sub_226F8128C(v139, v402);
    if (v141)
    {

      goto LABEL_133;
    }

    v400 = v142;
    v401 = 0;

    v143 = __swift_project_boxed_opaque_existential_0(v140, v140[3]);
    v144 = *v143;
    v65 = v143[1];
    v145 = v396;
    sub_22766A730();
    sub_22766B370();
    (v360)(v145, v397);
    [v144 reset];
    [v65 reset];
    v146 = v398;
    if (v398)
    {
      v407 = *(v395 + 16);
      v65 = v394 + ((*(v395 + 80) + 32) & ~*(v395 + 80));
      v406 = *(v395 + 72);
      v130 = (v395 + 8);
      v147 = MEMORY[0x277D84F90];
      while (1)
      {
        v148 = v393;
        v407(v393, v65, v41);
        v128 = sub_227666AA0();
        (*v130)(v148, v41);
        v149 = *(v128 + 16);
        v108 = *(v147 + 2);
        v150 = v108 + v149;
        if (__OFADD__(v108, v149))
        {
          goto LABEL_212;
        }

        v151 = swift_isUniquelyReferenced_nonNull_native();
        if (!v151 || v150 > *(v147 + 3) >> 1)
        {
          if (v108 <= v150)
          {
            v152 = v108 + v149;
          }

          else
          {
            v152 = v108;
          }

          v147 = sub_226EB3F78(v151, v152, 1, v147);
        }

        v41 = v408;
        if (*(v128 + 16))
        {
          if ((*(v147 + 3) >> 1) - *(v147 + 2) < v149)
          {
            goto LABEL_214;
          }

          swift_arrayInitWithCopy();

          if (v149)
          {
            v153 = *(v147 + 2);
            v77 = __OFADD__(v153, v149);
            v154 = v153 + v149;
            if (v77)
            {
              goto LABEL_215;
            }

            *(v147 + 2) = v154;
          }
        }

        else
        {

          if (v149)
          {
            goto LABEL_213;
          }
        }

        v65 += v406;
        if (!--v146)
        {
          goto LABEL_89;
        }
      }
    }

LABEL_88:
    v147 = MEMORY[0x277D84F90];
LABEL_89:
    v155 = sub_226F3E6A8(v147);

    v156 = sub_226F7ADD4(v155);
    v157 = v402;
    v158 = v401;
    v159 = sub_226F81AA4(v156, 0, 1, v402);
    if (!v158)
    {
      v359 = v159;
      v401 = 0;

      v160 = __swift_project_boxed_opaque_existential_0(v157, v157[3]);
      v161 = *v160;
      v65 = v160[1];
      v162 = v396;
      sub_22766A730();
      sub_22766B370();
      (v360)(v162, v397);
      [v161 reset];
      [v65 reset];
      v163 = v398;
      if (v398)
      {
        v407 = *(v395 + 16);
        v65 = v394 + ((*(v395 + 80) + 32) & ~*(v395 + 80));
        v406 = *(v395 + 72);
        v130 = (v395 + 8);
        v164 = MEMORY[0x277D84F90];
        while (1)
        {
          v165 = v392;
          v407(v392, v65, v41);
          v128 = sub_227666AC0();
          (*v130)(v165, v41);
          v166 = *(v128 + 16);
          v108 = *(v164 + 2);
          v167 = v108 + v166;
          if (__OFADD__(v108, v166))
          {
            goto LABEL_216;
          }

          v168 = swift_isUniquelyReferenced_nonNull_native();
          if (!v168 || v167 > *(v164 + 3) >> 1)
          {
            if (v108 <= v167)
            {
              v169 = v108 + v166;
            }

            else
            {
              v169 = v108;
            }

            v164 = sub_226EB3F78(v168, v169, 1, v164);
          }

          v41 = v408;
          if (*(v128 + 16))
          {
            if ((*(v164 + 3) >> 1) - *(v164 + 2) < v166)
            {
              goto LABEL_218;
            }

            swift_arrayInitWithCopy();

            if (v166)
            {
              v170 = *(v164 + 2);
              v77 = __OFADD__(v170, v166);
              v171 = v170 + v166;
              if (v77)
              {
                goto LABEL_219;
              }

              *(v164 + 2) = v171;
            }
          }

          else
          {

            if (v166)
            {
              goto LABEL_217;
            }
          }

          v65 += v406;
          if (!--v163)
          {
            goto LABEL_110;
          }
        }
      }

      goto LABEL_109;
    }

    goto LABEL_133;
  }

LABEL_134:
  __swift_project_boxed_opaque_existential_0(&v412, v413);
  sub_227669930();
  __swift_destroy_boxed_opaque_existential_0(&v412);
  return v65;
}

char *sub_226F8616C(uint64_t a1, uint64_t a2)
{
  v49 = sub_227669890();
  v42 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v48);
  v41 = v5;
  sub_226E9DD3C("CatalogDataStore::queryCatalogWorkoutReferencesMediaTypes", 57, 2, &dword_226E8E000, 0, v46);
  v6 = __swift_project_boxed_opaque_existential_0(v48, v48[3]);
  v7 = *v6;
  v8 = v6[1];
  LOBYTE(v5) = *(v6 + 16);
  v9 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v10 = swift_allocObject();
  v11 = v7;
  v12 = v8;

  v13 = MEMORY[0x277D84F90];
  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v9;
  swift_getKeyPath();
  v14 = *(a1 + 16);
  if (v14)
  {
    v45[0] = v13;
    sub_226F1EFF0(0, v14, 0);
    v13 = v45[0];
    v15 = a1 + 32;
    do
    {
      ++v15;
      v16 = sub_227664C10();
      v45[0] = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        v39 = v16;
        v38 = v17;
        sub_226F1EFF0((v18 > 1), v19 + 1, 1);
        v17 = v38;
        v16 = v39;
        v13 = v45[0];
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      --v14;
    }

    while (v14);
  }

  v45[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v45[0] = v13;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v21 = sub_22766C820();
  sub_226E93170(v45, v43, &unk_27D7BC990, &qword_227670A30);
  v22 = v44;
  if (v44)
  {
    v23 = __swift_project_boxed_opaque_existential_0(v43, v44);
    v24 = *(v22 - 8);
    v25 = MEMORY[0x28223BE20](v23);
    v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);
    v28 = sub_22766D170();
    (*(v24 + 8))(v27, v22);
    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v45, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v45, 0);
  swift_endAccess();

  v33 = v40;
  v34 = sub_226EE010C(100);
  swift_setDeallocating();

  v35 = qword_2813B2078;
  v36 = sub_22766A100();
  (*(*(v36 - 8) + 8))(v10 + v35, v36);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v46, v47);
  sub_227669930();
  if (v33)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v46, v47);
    sub_227669920();
  }

  (*(v42 + 8))(v41, v49);
  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(v48);
  return v34;
}

void *sub_226F86808(char a1, void *a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  v9 = *(v6 + 8);
  v9(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9070, &qword_227672CE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = a1;
  v11 = sub_226F8616C(inited, a2);
  swift_setDeallocating();
  if (!v2)
  {
    v12 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v13 = *v12;
    v14 = v12[1];
    sub_22766A730();
    sub_22766B370();
    v9(v8, v5);
    [v13 reset];
    [v14 reset];
    v15 = *(v11 + 2);
    if (v15)
    {
      v16 = sub_2274CD7E0(*(v11 + 2), 0);
      v17 = *(sub_227666B60() - 8);
      sub_2274CDF78(&v21, &v16[(*(v17 + 80) + 32) & ~*(v17 + 80)], v15, v11);
      v19 = v18;
      sub_226EBB21C(v21);
      if (v19 == v15)
      {
LABEL_6:
        a2 = sub_226F82D94(v16, a2);

        return a2;
      }

      __break(1u);
    }

    v16 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  return a2;
}

uint64_t sub_226F86AB0(uint64_t a1, uint64_t a2)
{
  v40 = sub_227669890();
  v33 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v39);
  sub_226E9DD3C("CatalogDataStore::queryCatalogWorkoutReferencesIdentifiers", 58, 2, &dword_226E8E000, 0, v37);
  v6 = __swift_project_boxed_opaque_existential_0(v39, v39[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v32[0] = a1;
  v14 = sub_227073F2C(a1);
  v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v36[0] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v36, v34, &unk_27D7BC990, &qword_227670A30);
  v16 = v35;
  if (v35)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v34, v35);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v36, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v24 = sub_22766A080();
  v26 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v24(v36, 0);
  swift_endAccess();

  v27 = v32[1];
  sub_226EE010C(100);
  swift_setDeallocating();

  v28 = qword_2813B2078;
  v29 = sub_22766A100();
  (*(*(v29 - 8) + 8))(v11 + v28, v29);
  swift_deallocClassInstance();
  if (v27)
  {
    __swift_project_boxed_opaque_existential_0(v37, v38);
    sub_227669930();
    swift_willThrow();
    v30 = v38;
    __swift_project_boxed_opaque_existential_0(v37, v38);
    sub_227669920();
  }

  else
  {
    sub_227666B60();
    sub_226F89164(&qword_28139B5D8, MEMORY[0x277D52828], MEMORY[0x277D52830]);
    v30 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v37, v38);
    sub_227669930();
  }

  (*(v33 + 8))(v5, v40);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v30;
}

uint64_t sub_226F87158(uint64_t a1, uint64_t *a2, char a3, void *a4)
{
  v64 = a2;
  v7 = sub_227666330();
  v63 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = (v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  v16 = *(v11 + 8);
  v15 = v11 + 8;
  v14 = v16;
  v16(v13, v10);
  v17 = a3 & 1;
  v18 = v65;
  v19 = a4;
  v20 = sub_226F7F468(a1, v64, v17, a4);
  if (!v18)
  {
    v21 = v20;
    v64 = v9;
    v65 = v7;
    v59 = 0;
    v22 = __swift_project_boxed_opaque_existential_0(v19, v19[3]);
    v60 = v14;
    v23 = v13;
    v24 = *v22;
    v25 = v22[1];
    sub_22766A730();
    v57 = "outs(_:age:handle:)";
    sub_22766B370();
    v58 = v23;
    v26 = v23;
    v27 = v60;
    v60(v26, v10);
    [v24 reset];
    [v25 reset];
    v28 = *(v21 + 16);
    if (v28)
    {
      v54[2] = v15;
      v55 = v10;
      v56 = v19;
      v66 = MEMORY[0x277D84F90];
      sub_226F1EF90();
      v29 = v21;
      v30 = v66;
      v31 = v64;
      v33 = v63 + 16;
      v32 = *(v63 + 16);
      v34 = *(v63 + 80);
      v54[1] = v29;
      v35 = v29 + ((v34 + 32) & ~v34);
      v62 = *(v63 + 72);
      v63 = v32;
      v61 = (v33 - 8);
      v36 = v65;
      do
      {
        v37 = v33;
        (v63)(v31, v35, v36);
        v38 = sub_227666310();
        v36 = v65;
        v39 = v38;
        v41 = v40;
        (*v61)(v31, v65);
        v66 = v30;
        v42 = *(v30 + 16);
        if (v42 >= *(v30 + 24) >> 1)
        {
          sub_226F1EF90();
          v36 = v65;
          v30 = v66;
        }

        *(v30 + 16) = v42 + 1;
        v43 = v30 + 16 * v42;
        *(v43 + 32) = v39;
        *(v43 + 40) = v41;
        v35 += v62;
        --v28;
        v33 = v37;
        v31 = v64;
      }

      while (v28);

      v10 = v55;
      v19 = v56;
      v27 = v60;
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
    }

    v44 = v59;
    v45 = sub_226F86AB0(v30, v19);
    a1 = v44;
    if (!v44)
    {
      v46 = v45;

      v47 = __swift_project_boxed_opaque_existential_0(v19, v19[3]);
      v48 = v10;
      v49 = *v47;
      v50 = v47[1];
      v51 = v27;
      v52 = v58;
      sub_22766A730();
      sub_22766B370();
      v51(v52, v48);
      [v49 reset];
      [v50 reset];
      a1 = sub_226F82D94(v46, v19);
    }
  }

  return a1;
}

uint64_t sub_226F87830(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22766D190() & 1;
  }
}

char *sub_226F87894(uint64_t a1)
{
  v22 = sub_227669890();
  v18 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v21);
  sub_226E9DD3C("CatalogDataStore::queryAllCatalogProgramReferences", 50, 2, &dword_226E8E000, 0, v19);
  v5 = __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9008, &unk_227672BC0);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v13 = sub_226EE12F0(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v19, v20);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v19, v20);
    sub_227669920();
  }

  (*(v18 + 8))(v4, v22);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v13;
}

char *sub_226F87C04(uint64_t a1)
{
  v22 = sub_227669890();
  v18 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v21);
  sub_226E9DD3C("CatalogDataStore::queryAllBodyFocuses", 37, 2, &dword_226E8E000, 0, v19);
  v5 = __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F48, &qword_227672998);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v13 = sub_226ED85A4(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v19, v20);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v19, v20);
    sub_227669920();
  }

  (*(v18 + 8))(v4, v22);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v13;
}

uint64_t sub_226F87F74(uint64_t a1)
{
  v67 = sub_227669890();
  v3 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v66);
  sub_226E9DD3C("CatalogDataStore::queryCatalogModalityKinds", 43, 2, &dword_226E8E000, 0, v64);
  v6 = __swift_project_boxed_opaque_existential_0(v66, v66[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_226F7D85C(KeyPath, v15, sub_227284724, sub_226F7DD4C);
  if (v1)
  {

    swift_setDeallocating();

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v11 + v17, v18);
    swift_deallocClassInstance();
    __swift_project_boxed_opaque_existential_0(v64, v65);
    sub_227669930();
    swift_willThrow();
    v19 = v65;
    __swift_project_boxed_opaque_existential_0(v64, v65);
    sub_227669920();
    (*(v3 + 8))(v5, v67);
    __swift_destroy_boxed_opaque_existential_0(v64);
    __swift_destroy_boxed_opaque_existential_0(v66);
    return v19;
  }

  else
  {
    v20 = v16;
    v57 = v5;
    v58 = 0;
    v59 = v3;

    swift_setDeallocating();

    v21 = qword_2813B2078;
    v22 = sub_22766A100();
    (*(*(v22 - 8) + 8))(v11 + v21, v22);
    swift_deallocClassInstance();
    v23 = 1 << *(v20 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v20 + 64);
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    if (!v25)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      while (1)
      {
        v29 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v30 = v29 | (v27 << 6);
        v31 = *(*(v20 + 56) + 8 * v30);
        if (v31[2])
        {
          break;
        }

        if (!v25)
        {
          goto LABEL_8;
        }
      }

      v33 = (*(v20 + 48) + 16 * v30);
      v34 = v33[1];
      v56 = *v33;
      v35 = v31[5];
      v60 = v31[4];
      v61 = v35;
      sub_226EC1E18();
      v55 = v34;

      sub_227663AE0();
      v36 = v62[0];
      v54 = v62[1];
      v53 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_2273A529C(0, v28[2] + 1, 1, v28);
      }

      v38 = v28[2];
      v37 = v28[3];
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v52 = v38 + 1;
        v43 = v28;
        v44 = v38;
        v45 = sub_2273A529C((v37 > 1), v38 + 1, 1, v43);
        v38 = v44;
        v39 = v52;
        v28 = v45;
      }

      v28[2] = v39;
      v40 = &v28[5 * v38];
      v41 = v55;
      v40[4] = v56;
      v40[5] = v41;
      v42 = v54;
      v40[6] = v36;
      v40[7] = v42;
      *(v40 + 64) = v53;
    }

    while (v25);
    while (1)
    {
LABEL_8:
      v32 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v32 >= v26)
      {
        break;
      }

      v25 = *(v20 + 64 + 8 * v32);
      ++v27;
      if (v25)
      {
        v27 = v32;
        goto LABEL_6;
      }
    }

    if (v28[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE0, &unk_227672B70);
      v46 = sub_22766D010();
    }

    else
    {
      v46 = MEMORY[0x277D84F98];
    }

    v47 = v67;
    v62[0] = v46;
    v48 = v58;
    sub_226F7E3E0(v28, 1, v62);
    v49 = v59;
    v50 = v57;
    if (!v48)
    {
      v19 = v62[0];
      __swift_project_boxed_opaque_existential_0(v64, v65);
      sub_227669930();
      (*(v49 + 8))(v50, v47);
      __swift_destroy_boxed_opaque_existential_0(v64);
      __swift_destroy_boxed_opaque_existential_0(v66);
      return v19;
    }

LABEL_25:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

char *sub_226F885E0(uint64_t a1)
{
  v22 = sub_227669890();
  v18 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v21);
  sub_226E9DD3C("CatalogDataStore::queryAllCatalogThemes", 39, 2, &dword_226E8E000, 0, v19);
  v5 = __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F80, &qword_227672A00);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v13 = sub_227233DB8(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v19, v20);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v19, v20);
    sub_227669920();
  }

  (*(v18 + 8))(v4, v22);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v13;
}

char *sub_226F88950(uint64_t a1)
{
  v22 = sub_227669890();
  v18 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v21);
  sub_226E9DD3C("CatalogDataStore::queryAllCatalogThemeCategories", 48, 2, &dword_226E8E000, 0, v19);
  v5 = __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9010, &unk_227672BD0);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v13 = sub_2272358B8(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v19, v20);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v19, v20);
    sub_227669920();
  }

  (*(v18 + 8))(v4, v22);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v13;
}

char *sub_226F88CC0(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9020, &unk_227672BE0);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v14 = sub_227235BB8(100);
  swift_setDeallocating();

  v15 = qword_2813B2078;
  v16 = sub_22766A100();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  swift_deallocClassInstance();
  return v14;
}

char *sub_226F88F0C(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FD8, &unk_227672B10);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v14 = sub_2272346B8(100);
  swift_setDeallocating();

  v15 = qword_2813B2078;
  v16 = sub_22766A100();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  swift_deallocClassInstance();
  return v14;
}

uint64_t sub_226F89164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_226F891AC(uint64_t a1)
{
  v22 = sub_227669890();
  v18 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v21);
  sub_226E9DD3C("CatalogDataStore::queryAllEquipment", 35, 2, &dword_226E8E000, 0, v19);
  v5 = __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB8, &unk_227672A60);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v13 = sub_2272349B8(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v19, v20);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v19, v20);
    sub_227669920();
  }

  (*(v18 + 8))(v4, v22);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v13;
}

char *sub_226F8951C(uint64_t a1)
{
  v22 = sub_227669890();
  v18 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v21);
  sub_226E9DD3C("CatalogDataStore::queryAllTrainerReferences", 43, 2, &dword_226E8E000, 0, v19);
  v5 = __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F78, &qword_22767F0A0);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v13 = sub_227233AB8(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v19, v20);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v19, v20);
    sub_227669920();
  }

  (*(v18 + 8))(v4, v22);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v13;
}

void sub_226F8988C(uint64_t a1, void *a2, double a3)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  v11 = *(v8 + 8);
  v11(v10, v7);
  v60 = a1;
  v12 = sub_226F7A024(a1, MEMORY[0x277D53B20], MEMORY[0x277D53AF8], a3);
  v13 = sub_226F420C8(v12);

  sub_22766A770();
  sub_22766B370();
  v11(v10, v7);
  v14 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_2275592A0(v13, v14[1], *(v14 + 16), v14[3]);

  if (v3)
  {
    return;
  }

  v15 = a2[3];
  v56 = a2;
  v16 = __swift_project_boxed_opaque_existential_0(a2, v15);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  v20 = v16[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F58, &qword_2276729A8);
  v21 = swift_allocObject();
  v22 = v17;
  v23 = v18;

  sub_22766A070();
  v54 = v23;
  v55 = v22;
  *(v21 + 16) = v22;
  *(v21 + 24) = v23;
  v59 = v19;
  *(v21 + 32) = v19;
  v58 = v20;
  *(v21 + 40) = v20;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();

  v25 = sub_226F7E828(v60, sub_226F921B4, KeyPath, MEMORY[0x277D53B20]);
  v57 = 0;

  v63[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v63[0] = v25;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v26 = sub_22766C820();
  sub_226E93170(v63, v61, &unk_27D7BC990, &qword_227670A30);
  v27 = v62;
  if (v62)
  {
    v28 = __swift_project_boxed_opaque_existential_0(v61, v62);
    v29 = *(v27 - 8);
    v30 = MEMORY[0x28223BE20](v28);
    v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    v33 = sub_22766D170();
    (*(v29 + 8))(v32, v27);
    __swift_destroy_boxed_opaque_existential_0(v61);
  }

  else
  {
    v33 = 0;
  }

  v34 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F60 &qword_2276729E0))];

  sub_226E97D1C(v63, &unk_27D7BC990, &qword_227670A30);
  v35 = qword_2813B2078;
  swift_beginAccess();
  v36 = sub_22766A080();
  v38 = v37;
  MEMORY[0x22AA985C0]();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v36(v63, 0);
  swift_endAccess();

  v39 = sub_2275427C8(v21 + v35, v59, v58);
  if (!v39)
  {
    v48 = v57;
    v49 = sub_227284844(0);
    v41 = v48;
    if (!v48)
    {
      v50 = v49;
      [v49 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v51 = sub_22766C9E0();
      v52 = sub_226EDAB24(v51);

      sub_226EDAB78(v52, v54);

      v40 = v60;
      goto LABEL_10;
    }

LABEL_16:

    return;
  }

  v40 = v60;
  if (v39 != 1)
  {
    swift_willThrow();
    goto LABEL_16;
  }

  v41 = v57;
LABEL_10:
  v42 = MEMORY[0x277D53B20];
  v43 = sub_226F7A400(v40, MEMORY[0x277D53B20], MEMORY[0x277D51130], sub_226F1F6C8, MEMORY[0x277D4DB08]);
  v44 = sub_226F7A400(v40, v42, MEMORY[0x277D50C78], sub_226F1F8C8, MEMORY[0x277D4DB00]);
  v45 = v56;
  v46 = __swift_project_boxed_opaque_existential_0(v56, v56[3]);
  sub_22755A354(v43, v46[1], *(v46 + 16), v46[3]);

  if (!v41)
  {
    v47 = __swift_project_boxed_opaque_existential_0(v45, v45[3]);
    sub_22755A880(v44, v47[1], *(v47 + 16), v47[3]);
  }
}

void sub_226F8A004(uint64_t a1, void *a2, double a3)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  v11 = *(v8 + 8);
  v11(v10, v7);
  v60 = a1;
  v12 = sub_226F7A024(a1, MEMORY[0x277D50A30], MEMORY[0x277D50A10], a3);
  v13 = sub_226F420C8(v12);

  sub_22766A770();
  sub_22766B370();
  v11(v10, v7);
  v14 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_2275592A0(v13, v14[1], *(v14 + 16), v14[3]);

  if (v3)
  {
    return;
  }

  v15 = a2[3];
  v56 = a2;
  v16 = __swift_project_boxed_opaque_existential_0(a2, v15);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  v20 = v16[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F90, &qword_227672A10);
  v21 = swift_allocObject();
  v22 = v17;
  v23 = v18;

  sub_22766A070();
  v54 = v23;
  v55 = v22;
  *(v21 + 16) = v22;
  *(v21 + 24) = v23;
  v59 = v19;
  *(v21 + 32) = v19;
  v58 = v20;
  *(v21 + 40) = v20;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();

  v25 = sub_226F7E828(v60, sub_226F92188, KeyPath, MEMORY[0x277D50A30]);
  v57 = 0;

  v63[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v63[0] = v25;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v26 = sub_22766C820();
  sub_226E93170(v63, v61, &unk_27D7BC990, &qword_227670A30);
  v27 = v62;
  if (v62)
  {
    v28 = __swift_project_boxed_opaque_existential_0(v61, v62);
    v29 = *(v27 - 8);
    v30 = MEMORY[0x28223BE20](v28);
    v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    v33 = sub_22766D170();
    (*(v29 + 8))(v32, v27);
    __swift_destroy_boxed_opaque_existential_0(v61);
  }

  else
  {
    v33 = 0;
  }

  v34 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F98 &qword_227672A40))];

  sub_226E97D1C(v63, &unk_27D7BC990, &qword_227670A30);
  v35 = qword_2813B2078;
  swift_beginAccess();
  v36 = sub_22766A080();
  v38 = v37;
  MEMORY[0x22AA985C0]();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v36(v63, 0);
  swift_endAccess();

  v39 = sub_227542810(v21 + v35, v59, v58);
  if (!v39)
  {
    v48 = v57;
    v49 = sub_2272848A4(0);
    v41 = v48;
    if (!v48)
    {
      v50 = v49;
      [v49 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v51 = sub_22766C9E0();
      v52 = sub_226EDAB24(v51);

      sub_226EDAB78(v52, v54);

      v40 = v60;
      goto LABEL_10;
    }

LABEL_16:

    return;
  }

  v40 = v60;
  if (v39 != 1)
  {
    swift_willThrow();
    goto LABEL_16;
  }

  v41 = v57;
LABEL_10:
  v42 = MEMORY[0x277D50A30];
  v43 = sub_226F7A400(v40, MEMORY[0x277D50A30], MEMORY[0x277D52AF8], sub_226EB5880, MEMORY[0x277D4DAE0]);
  v44 = sub_226F7A400(v40, v42, MEMORY[0x277D52758], sub_226F1F8A8, MEMORY[0x277D4DAD8]);
  v45 = v56;
  v46 = __swift_project_boxed_opaque_existential_0(v56, v56[3]);
  sub_22755ADBC(v43, v46[1], *(v46 + 16), v46[3]);

  if (!v41)
  {
    v47 = __swift_project_boxed_opaque_existential_0(v45, v45[3]);
    sub_22755B2F8(v44, v47[1], *(v47 + 16), v47[3]);
  }
}

void sub_226F8A77C(uint64_t a1, void *a2, double a3)
{
  v124 = a2;
  v6 = sub_2276642E0();
  v7 = *(v6 - 8);
  v121 = v6;
  v122 = v7;
  MEMORY[0x28223BE20](v6);
  v120 = v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  v13 = *(v10 + 8);
  v13(v12, v9);
  v123 = a1;
  v14 = sub_226F7A024(a1, MEMORY[0x277D50820], MEMORY[0x277D50790], a3);
  v15 = sub_226F420C8(v14);

  sub_22766A770();
  v16 = v124;
  sub_22766B370();
  v13(v12, v9);
  v17 = __swift_project_boxed_opaque_existential_0(v16, v16[3]);
  sub_2275592A0(v15, v17[1], *(v17 + 16), v17[3]);
  if (v3)
  {
LABEL_2:

    return;
  }

  v18 = sub_226F7A7DC(v123, MEMORY[0x277D50820], MEMORY[0x277D50790]);
  v119 = 0;
  v117 = MEMORY[0x22AA99A00]();
  v19 = __swift_project_boxed_opaque_existential_0(v16, v16[3]);
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  v23 = v19[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v24 = swift_allocObject();
  v25 = &qword_2813B2078;
  v26 = v20;
  v27 = v21;

  sub_22766A070();
  v114 = v26;
  v115 = v23;
  *(v24 + 16) = v26;
  *(v24 + 24) = v27;
  v116 = v27;
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  swift_getKeyPath();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v127[0] = v18;
  v28 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
  v118 = v18;

  v113[1] = v28;
  v29 = sub_22766C820();
  sub_226E93170(v127, v125, &unk_27D7BC990, &qword_227670A30);
  v30 = v126;
  if (v126)
  {
    v31 = __swift_project_boxed_opaque_existential_0(v125, v126);
    v32 = *(v30 - 8);
    v33 = MEMORY[0x28223BE20](v31);
    v35 = v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v35, v33);
    v36 = sub_22766D170();
    (*(v32 + 8))(v35, v30);
    v25 = &qword_2813B2078;
    __swift_destroy_boxed_opaque_existential_0(v125);
  }

  else
  {
    v36 = 0;
  }

  v37 = objc_opt_self();
  v38 = [v37 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v39 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v127, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v40 = v39;
  v41 = sub_22766A080();
  v43 = v42;
  MEMORY[0x22AA985C0]();
  if (*((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    sub_22766C3A0();
    v41(v127, 0);
    swift_endAccess();

    v44 = v119;
    v45 = sub_227284754(0);
    v41 = v44;
    if (v44)
    {

      objc_autoreleasePoolPop(v117);
      return;
    }

    v46 = v45;
    type metadata accessor for ManagedCatalogWorkoutReference();
    v47 = v116;
    v48 = sub_22766C9E0();

    swift_setDeallocating();
    v49 = *v25;
    v50 = sub_22766A100();
    (*(*(v50 - 8) + 8))(v24 + v49, v50);
    swift_deallocClassInstance();
    v113[0] = v37;
    if (v48 >> 62)
    {
      break;
    }

    v40 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_23;
    }

LABEL_11:
    v37 = 0;
    v25 = (v48 & 0xC000000000000001);
    while (1)
    {
      if (v25)
      {
        v51 = MEMORY[0x22AA991A0](v37, v48);
      }

      else
      {
        if (v37 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v51 = *(v48 + 8 * v37 + 32);
      }

      v24 = v51;
      v52 = (v37 + 1);
      if (__OFADD__(v37, 1))
      {
        break;
      }

      [v51 setBodyFocusIdentifierss_];
      [v24 setContributorIdentifierss_];
      [v24 setEquipmentIdentifierss_];
      [v24 setMusicGenreIdentifierss_];
      [v24 setSkillLevelIdentifierss_];
      [v24 setThemeIdentifierss_];
      [v24 setTrainerIdentifierss_];

      ++v37;
      if (v52 == v40)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    sub_22766C360();
  }

  v40 = sub_22766CD20();
  if (v40)
  {
    goto LABEL_11;
  }

LABEL_23:

  objc_autoreleasePoolPop(v117);
  v53 = __swift_project_boxed_opaque_existential_0(v124, v124[3]);
  v54 = *v53;
  v55 = v53[1];
  v56 = *(v53 + 16);
  v57 = v53[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F30, &unk_22767F080);
  v58 = swift_allocObject();
  v59 = v54;
  v60 = v55;

  sub_22766A070();
  v115 = v60;
  v116 = v59;
  *(v58 + 16) = v59;
  *(v58 + 24) = v60;
  LODWORD(v119) = v56;
  *(v58 + 32) = v56;
  v117 = v57;
  *(v58 + 40) = v57;
  swift_getKeyPath();
  v61 = sub_227073F2C(v118);

  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v127[0] = v61;

  v62 = sub_22766C820();
  sub_226E93170(v127, v125, &unk_27D7BC990, &qword_227670A30);
  v63 = v126;
  if (v126)
  {
    v64 = __swift_project_boxed_opaque_existential_0(v125, v126);
    v65 = *(v63 - 8);
    v66 = MEMORY[0x28223BE20](v64);
    v68 = v113 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v65 + 16))(v68, v66);
    v69 = sub_22766D170();
    (*(v65 + 8))(v68, v63);
    __swift_destroy_boxed_opaque_existential_0(v125);
  }

  else
  {
    v69 = 0;
  }

  v70 = [v113[0] expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F38 &qword_227672988))];

  sub_226E97D1C(v127, &unk_27D7BC990, &qword_227670A30);
  v71 = qword_2813B2078;
  swift_beginAccess();
  v72 = sub_22766A080();
  v74 = v73;
  MEMORY[0x22AA985C0]();
  if (*((*v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    sub_22766C3A0();
    (v72)(v127, 0);
    swift_endAccess();

    v75 = sub_227542858(v58 + v71, v119, v117);
    if (!v75)
    {
      v82 = sub_22728488C(0);
      v76 = v124;
      v83 = v82;
      [v82 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v84 = sub_22766C9E0();
      v112 = sub_226EDAB24(v84);

      sub_226EDAB78(v112, v115);

      goto LABEL_30;
    }

    v76 = v124;
    if (v75 != 1)
    {
      break;
    }

LABEL_30:
    v77 = MEMORY[0x277D50820];
    v78 = v123;
    v79 = sub_226F7A400(v123, MEMORY[0x277D50820], MEMORY[0x277D52828], sub_226F1F928, MEMORY[0x277D4DAD0]);
    v80 = sub_226F7A400(v78, v77, MEMORY[0x277D52300], sub_226F1F8E8, MEMORY[0x277D4DAC8]);
    v81 = __swift_project_boxed_opaque_existential_0(v76, v76[3]);
    sub_2275598DC(v79, v81[1], *(v81 + 16), v81[3]);

    v85 = __swift_project_boxed_opaque_existential_0(v76, v76[3]);
    sub_227559E18(v80, v85[1], *(v85 + 16), v85[3]);

    v86 = v78;
    v88 = *(v78 + 56);
    v58 = v78 + 56;
    v87 = v88;
    v89 = 1 << *(v86 + 32);
    v90 = -1;
    if (v89 < 64)
    {
      v90 = ~(-1 << v89);
    }

    v91 = v90 & v87;
    v92 = (v89 + 63) >> 6;
    v93 = v122;
    v116 = (v122 + 8);
    v117 = (v122 + 16);

    v72 = 0;
    v119 = MEMORY[0x277D84F90];
    while (v91)
    {
      v94 = v120;
      v71 = v121;
LABEL_44:
      (*(v93 + 16))(v94, *(v123 + 48) + *(v93 + 72) * (__clz(__rbit64(v91)) | (v72 << 6)), v71);
      v96 = sub_2276642D0();
      (*(v93 + 8))(v94, v71);
      v97 = *(v96 + 16);
      v98 = v119[2];
      v99 = v98 + v97;
      if (__OFADD__(v98, v97))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v119;
      if (!isUniquelyReferenced_nonNull_native || v99 > v119[3] >> 1)
      {
        if (v98 <= v99)
        {
          v102 = v98 + v97;
        }

        else
        {
          v102 = v98;
        }

        v101 = sub_2273A524C(isUniquelyReferenced_nonNull_native, v102, 1, v119);
      }

      v91 &= v91 - 1;
      v103 = *(v96 + 16);
      v119 = v101;
      if (v103)
      {
        v118 = (v101[3] >> 1) - v101[2];
        sub_2276692D0();
        if (v118 < v97)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        v93 = v122;
        if (v97)
        {
          v104 = v119[2];
          v105 = __OFADD__(v104, v97);
          v106 = v104 + v97;
          if (v105)
          {
            goto LABEL_62;
          }

          v119[2] = v106;
        }
      }

      else
      {

        v93 = v122;
        if (v97)
        {
          goto LABEL_60;
        }
      }
    }

    v94 = v120;
    v71 = v121;
    while (1)
    {
      v95 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v95 >= v92)
      {
        v107 = v123;

        v108 = sub_226F42C0C(v119);

        v109 = v124;
        sub_226F8988C(v108, v124, a3);

        v110 = sub_226F7A400(v107, MEMORY[0x277D50820], MEMORY[0x277D50A30], sub_226F1F9E8, MEMORY[0x277D507F8]);
        v111 = sub_226F42DA8(v110);

        sub_226F8A004(v111, v109, a3);
        goto LABEL_2;
      }

      v91 = *(v58 + 8 * v95);
      ++v72;
      if (v91)
      {
        v72 = v95;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_58:
    sub_22766C360();
  }

  swift_willThrow();
}

uint64_t sub_226F8B794(uint64_t a1, void *a2)
{
  v4 = sub_227669890();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E9DD3C("CatalogDataStore.insertCatalogChangeset", 39, 2, &dword_226E8E000, 1, v153);
  (*(v5 + 8))(v7, v4);
  v8 = *(sub_227664BF0() + 16);

  v154 = a1;
  v147 = a2;
  if (v8)
  {
    v9 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v10 = *v9;
    v11 = v9[1];
    v12 = *(v9 + 16);
    v13 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
    v14 = swift_allocObject();
    v15 = v10;
    v16 = v11;

    sub_22766A070();
    v144 = v16;
    v145 = v15;
    *(v14 + 16) = v15;
    *(v14 + 24) = v16;
    v146 = v12;
    *(v14 + 32) = v12;
    *(v14 + 40) = v13;
    swift_getKeyPath();
    v17 = sub_227664BF0();
    sub_227230638(v17);
    v19 = v18;

    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
    v151[0] = v19;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v20 = sub_22766C820();
    sub_226E93170(v151, v149, &unk_27D7BC990, &qword_227670A30);
    v21 = v150;
    if (v150)
    {
      v22 = __swift_project_boxed_opaque_existential_0(v149, v150);
      v23 = *(v21 - 8);
      v24 = MEMORY[0x28223BE20](v22);
      v26 = &v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v26, v24);
      v27 = sub_22766D170();
      (*(v23 + 8))(v26, v21);
      __swift_destroy_boxed_opaque_existential_0(v149);
    }

    else
    {
      v27 = 0;
    }

    v28 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

    sub_226E97D1C(v151, &unk_27D7BC990, &qword_227670A30);
    v29 = qword_2813B2078;
    swift_beginAccess();
    v30 = sub_22766A080();
    v32 = v31;
    MEMORY[0x22AA985C0]();
    if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v30(v151, 0);
    swift_endAccess();

    v33 = sub_227542978(v14 + v29, v146, v13);
    if (v33)
    {
      a1 = v154;
      if (v33 != 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v54 = v148;
      v55 = sub_227284754(0);
      a1 = v154;
      if (v54)
      {
        goto LABEL_58;
      }

      v56 = v55;
      [v55 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v57 = sub_22766C9E0();
      v148 = 0;
      v58 = sub_226EDAB24(v57);

      sub_226EDAB78(v58, v144);
    }

    a2 = v147;
  }

  v34 = *(sub_227664BD0() + 16);

  if (v34)
  {
    v35 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v36 = *v35;
    v37 = v35[1];
    v38 = *(v35 + 16);
    v39 = v35[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9008, &unk_227672BC0);
    v40 = swift_allocObject();
    v41 = v36;
    v42 = v37;

    sub_22766A070();
    v144 = v42;
    v145 = v41;
    *(v40 + 16) = v41;
    *(v40 + 24) = v42;
    v146 = v38;
    *(v40 + 32) = v38;
    *(v40 + 40) = v39;
    swift_getKeyPath();
    v43 = sub_227664BD0();
    sub_227230638(v43);
    v45 = v44;

    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
    v151[0] = v45;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v46 = sub_22766C820();
    sub_226E93170(v151, v149, &unk_27D7BC990, &qword_227670A30);
    v47 = v150;
    if (v150)
    {
      v48 = __swift_project_boxed_opaque_existential_0(v149, v150);
      v49 = *(v47 - 8);
      v50 = MEMORY[0x28223BE20](v48);
      v52 = &v144 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v52, v50);
      v53 = sub_22766D170();
      (*(v49 + 8))(v52, v47);
      __swift_destroy_boxed_opaque_existential_0(v149);
    }

    else
    {
      v53 = 0;
    }

    v59 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9078 &qword_227672D10))];

    sub_226E97D1C(v151, &unk_27D7BC990, &qword_227670A30);
    v60 = qword_2813B2078;
    swift_beginAccess();
    v61 = sub_22766A080();
    v63 = v62;
    MEMORY[0x22AA985C0]();
    if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v61(v151, 0);
    swift_endAccess();

    v64 = sub_227542930(v40 + v60, v146, v39);
    if (v64)
    {
      a1 = v154;
      if (v64 != 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v85 = v148;
      v86 = sub_22728473C(0);
      a1 = v154;
      if (v85)
      {
        goto LABEL_58;
      }

      v87 = v86;
      [v86 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v88 = sub_22766C9E0();
      v148 = 0;
      v89 = sub_226EDAB24(v88);

      sub_226EDAB78(v89, v144);
    }

    a2 = v147;
  }

  v65 = *(sub_227664BC0() + 16);

  if (!v65)
  {
    goto LABEL_35;
  }

  v66 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v67 = *v66;
  v68 = v66[1];
  v69 = *(v66 + 16);
  v70 = v66[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9028, &unk_22767F070);
  v71 = swift_allocObject();
  v72 = v67;
  v73 = v68;

  sub_22766A070();
  v144 = v73;
  v145 = v72;
  *(v71 + 16) = v72;
  *(v71 + 24) = v73;
  v146 = v69;
  *(v71 + 32) = v69;
  *(v71 + 40) = v70;
  swift_getKeyPath();
  v74 = sub_227664BC0();
  sub_227230638(v74);
  v76 = v75;

  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v151[0] = v76;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v77 = sub_22766C820();
  sub_226E93170(v151, v149, &unk_27D7BC990, &qword_227670A30);
  v78 = v150;
  if (v150)
  {
    v79 = __swift_project_boxed_opaque_existential_0(v149, v150);
    v80 = *(v78 - 8);
    v81 = MEMORY[0x28223BE20](v79);
    v83 = &v144 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v80 + 16))(v83, v81);
    v84 = sub_22766D170();
    (*(v80 + 8))(v83, v78);
    __swift_destroy_boxed_opaque_existential_0(v149);
  }

  else
  {
    v84 = 0;
  }

  v90 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9080 &qword_227672D40))];

  sub_226E97D1C(v151, &unk_27D7BC990, &qword_227670A30);
  v91 = qword_2813B2078;
  swift_beginAccess();
  v92 = sub_22766A080();
  v94 = v93;
  MEMORY[0x22AA985C0]();
  if (*((*v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v92(v151, 0);
  swift_endAccess();

  v95 = sub_2275428E8(v71 + v91, v146, v70);
  if (!v95)
  {
    v117 = v148;
    v118 = sub_22728476C(0);
    a1 = v154;
    if (v117)
    {
      goto LABEL_58;
    }

    v119 = v118;
    [v118 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v120 = sub_22766C9E0();
    v148 = 0;
    v121 = sub_226EDAB24(v120);

    sub_226EDAB78(v121, v144);

    goto LABEL_34;
  }

  a1 = v154;
  if (v95 != 1)
  {
LABEL_57:
    swift_willThrow();
    goto LABEL_58;
  }

LABEL_34:
  a2 = v147;
LABEL_35:
  v96 = *(sub_227664BE0() + 16);

  if (!v96)
  {
    v116 = v148;
    goto LABEL_48;
  }

  v97 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v98 = *v97;
  v99 = v97[1];
  v100 = *(v97 + 16);
  v101 = v97[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F78, &qword_22767F0A0);
  v102 = swift_allocObject();
  v103 = v98;
  v104 = v99;

  sub_22766A070();
  v144 = v104;
  v145 = v103;
  *(v102 + 16) = v103;
  *(v102 + 24) = v104;
  v146 = v100;
  *(v102 + 32) = v100;
  *(v102 + 40) = v101;
  swift_getKeyPath();
  v105 = sub_227664BE0();
  sub_227230638(v105);
  v107 = v106;

  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v151[0] = v107;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v108 = sub_22766C820();
  sub_226E93170(v151, v149, &unk_27D7BC990, &qword_227670A30);
  v109 = v150;
  if (v150)
  {
    v110 = __swift_project_boxed_opaque_existential_0(v149, v150);
    v111 = *(v109 - 8);
    v112 = MEMORY[0x28223BE20](v110);
    v114 = &v144 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v111 + 16))(v114, v112);
    v115 = sub_22766D170();
    (*(v111 + 8))(v114, v109);
    __swift_destroy_boxed_opaque_existential_0(v149);
  }

  else
  {
    v115 = 0;
  }

  v122 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9088 &unk_227672D70))];

  sub_226E97D1C(v151, &unk_27D7BC990, &qword_227670A30);
  v123 = qword_2813B2078;
  swift_beginAccess();
  v124 = sub_22766A080();
  v126 = v125;
  MEMORY[0x22AA985C0]();
  if (*((*v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v124(v151, 0);
  swift_endAccess();

  v127 = sub_2275428A0(v102 + v123, v146, v101);
  if (!v127)
  {
    v136 = v148;
    v137 = sub_22728482C(0);
    v116 = v136;
    a1 = v154;
    if (!v136)
    {
      v138 = v137;
      [v137 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v139 = sub_22766C9E0();
      v143 = sub_226EDAB24(v139);

      sub_226EDAB78(v143, v144);

      goto LABEL_47;
    }

LABEL_58:

    goto LABEL_59;
  }

  v116 = v148;
  a1 = v154;
  if (v127 != 1)
  {
    goto LABEL_57;
  }

LABEL_47:
  a2 = v147;
LABEL_48:
  v128 = *(sub_227664BB0() + 16);

  if (v128)
  {
    v130 = MEMORY[0x22AA99A00](v129);
    sub_226F7C604(a2, a1, v151);
    if (v116)
    {
      goto LABEL_56;
    }

    v116 = 0;
    objc_autoreleasePoolPop(v130);
  }

  v131 = *(sub_227664B90() + 16);

  if (!v131)
  {
    goto LABEL_54;
  }

  v130 = MEMORY[0x22AA99A00](v132);
  sub_226F7CC54(a2, a1, v151);
  if (v116)
  {
LABEL_56:
    objc_autoreleasePoolPop(v130);
    goto LABEL_59;
  }

  v116 = 0;
  objc_autoreleasePoolPop(v130);
LABEL_54:
  v133 = *(sub_227664B80() + 16);

  if (v133)
  {
    v130 = MEMORY[0x22AA99A00](v134);
    sub_226F7D270(a2, a1, v151);
    if (v116)
    {
      goto LABEL_56;
    }

    objc_autoreleasePoolPop(v130);
  }

  v140 = *(sub_227664BA0() + 16);

  if (v140)
  {
    v141 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v142 = sub_227664BA0();
    sub_22755CC38(v142, v141[1], *(v141 + 16), v141[3]);
  }

LABEL_59:
  __swift_project_boxed_opaque_existential_0(v153, v153[3]);
  sub_227669930();
  return __swift_destroy_boxed_opaque_existential_0(v153);
}

void sub_226F8CA70(uint64_t a1, void *a2)
{
  v27 = a1;
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v6, v3);
  v7 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v11 = *(v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB910, &qword_22767B3B0);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  v15 = qword_2813B2078;
  swift_beginAccess();
  v16 = sub_2275429C0(v12 + v15, v11, v10);
  if (v16)
  {
    if (v16 == 1)
    {

LABEL_4:
      v17 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9090, &qword_227672D80);
      v18 = sub_227665030();
      v19 = *(v18 - 8);
      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_227670CD0;
      (*(v19 + 16))(v21 + v20, v27, v18);
      sub_22755D9A0(v21, v17[1], *(v17 + 16), v17[3]);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v22 = v28;
    v23 = sub_227284784(0);
    if (!v22)
    {
      v24 = v23;
      [v23 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v25 = sub_22766C9E0();
      v26 = sub_226EDAB24(v25);

      sub_226EDAB78(v26, v14);

      goto LABEL_4;
    }
  }
}

void sub_226F8CE04(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v412 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  v6 = a1[3];
  v413 = a1;
  v7 = __swift_project_boxed_opaque_existential_0(a1, v6);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v11 = *(v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F48, &qword_227672998);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  v15 = qword_2813B2078;
  swift_beginAccess();
  v16 = sub_227542E58(v12 + v15, v11, v10);
  if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v277 = v414;
    v278 = sub_22728491C(0);
    if (v277)
    {
      goto LABEL_81;
    }

    v279 = v278;
    [v278 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v280 = sub_22766C9E0();
    v414 = 0;
    v281 = sub_226EDAB24(v280);

    sub_226EDAB78(v281, v14);
  }

  v17 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[3];
  v21 = *(v17 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9000, &qword_227672BB8);
  v22 = swift_allocObject();
  v23 = v18;
  v24 = v19;

  sub_22766A070();
  *(v22 + 16) = v23;
  *(v22 + 24) = v24;
  *(v22 + 32) = v21;
  *(v22 + 40) = v20;
  v25 = qword_2813B2078;
  swift_beginAccess();
  v26 = sub_227542E38(v22 + v25, v21, v20);
  if (v26)
  {
    if (v26 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v282 = v414;
    v283 = sub_2272462A0(0);
    if (v282)
    {
      goto LABEL_81;
    }

    v284 = v283;
    [v283 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v285 = sub_22766C9E0();
    v414 = 0;
    v286 = sub_226EDAB24(v285);

    sub_226EDAB78(v286, v24);
  }

  v27 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v28 = *v27;
  v29 = v27[1];
  v30 = v27[3];
  v31 = *(v27 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC8, &qword_227672AA0);
  v32 = swift_allocObject();
  v33 = v28;
  v34 = v29;

  sub_22766A070();
  *(v32 + 16) = v33;
  *(v32 + 24) = v34;
  *(v32 + 32) = v31;
  *(v32 + 40) = v30;
  v35 = qword_2813B2078;
  swift_beginAccess();
  v36 = sub_227542DF0(v32 + v35, v31, v30);
  if (v36)
  {
    if (v36 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v287 = v414;
    v288 = sub_2272848BC(0);
    if (v287)
    {
      goto LABEL_81;
    }

    v289 = v288;
    [v288 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v290 = sub_22766C9E0();
    v414 = 0;
    v291 = sub_226EDAB24(v290);

    sub_226EDAB78(v291, v34);
  }

  v37 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v38 = *v37;
  v39 = v37[1];
  v40 = v37[3];
  v41 = *(v37 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F90, &qword_227672A10);
  v42 = swift_allocObject();
  v43 = v38;
  v44 = v39;

  sub_22766A070();
  *(v42 + 16) = v43;
  *(v42 + 24) = v44;
  *(v42 + 32) = v41;
  *(v42 + 40) = v40;
  v45 = qword_2813B2078;
  swift_beginAccess();
  v46 = sub_227542810(v42 + v45, v41, v40);
  if (v46)
  {
    if (v46 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v292 = v414;
    v293 = sub_2272848A4(0);
    if (v292)
    {
      goto LABEL_81;
    }

    v294 = v293;
    [v293 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v295 = sub_22766C9E0();
    v414 = 0;
    v296 = sub_226EDAB24(v295);

    sub_226EDAB78(v296, v44);
  }

  v47 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v48 = *v47;
  v49 = v47[1];
  v50 = v47[3];
  v51 = *(v47 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
  v52 = swift_allocObject();
  v53 = v48;
  v54 = v49;

  sub_22766A070();
  *(v52 + 16) = v53;
  *(v52 + 24) = v54;
  *(v52 + 32) = v51;
  *(v52 + 40) = v50;
  v55 = qword_2813B2078;
  swift_beginAccess();
  v56 = sub_227542DA8(v52 + v55, v51, v50);
  if (v56)
  {
    if (v56 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v297 = v414;
    v298 = sub_227284724(0);
    if (v297)
    {
      goto LABEL_81;
    }

    v299 = v298;
    [v298 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v300 = sub_22766C9E0();
    v414 = 0;
    v301 = sub_226EDAB24(v300);

    sub_226EDAB78(v301, v54);
  }

  v57 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v58 = *v57;
  v59 = v57[1];
  v60 = v57[3];
  v61 = *(v57 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9008, &unk_227672BC0);
  v62 = swift_allocObject();
  v63 = v58;
  v64 = v59;

  sub_22766A070();
  *(v62 + 16) = v63;
  *(v62 + 24) = v64;
  *(v62 + 32) = v61;
  *(v62 + 40) = v60;
  v65 = qword_2813B2078;
  swift_beginAccess();
  v66 = sub_227542930(v62 + v65, v61, v60);
  if (v66)
  {
    if (v66 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v302 = v414;
    v303 = sub_22728473C(0);
    if (v302)
    {
      goto LABEL_81;
    }

    v304 = v303;
    [v303 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v305 = sub_22766C9E0();
    v414 = 0;
    v306 = sub_226EDAB24(v305);

    sub_226EDAB78(v306, v64);
  }

  v67 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v68 = *v67;
  v69 = v67[1];
  v70 = v67[3];
  v71 = *(v67 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB910, &qword_22767B3B0);
  v72 = swift_allocObject();
  v73 = v68;
  v74 = v69;

  sub_22766A070();
  *(v72 + 16) = v73;
  *(v72 + 24) = v74;
  *(v72 + 32) = v71;
  *(v72 + 40) = v70;
  v75 = qword_2813B2078;
  swift_beginAccess();
  v76 = sub_2275429C0(v72 + v75, v71, v70);
  if (v76)
  {
    if (v76 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v307 = v414;
    v308 = sub_227284784(0);
    if (v307)
    {
      goto LABEL_81;
    }

    v309 = v308;
    [v308 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v310 = sub_22766C9E0();
    v414 = 0;
    v311 = sub_226EDAB24(v310);

    sub_226EDAB78(v311, v74);
  }

  v77 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v78 = *v77;
  v79 = v77[1];
  v80 = v77[3];
  v81 = *(v77 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F80, &qword_227672A00);
  v82 = swift_allocObject();
  v83 = v78;
  v84 = v79;

  sub_22766A070();
  *(v82 + 16) = v83;
  *(v82 + 24) = v84;
  *(v82 + 32) = v81;
  *(v82 + 40) = v80;
  v85 = qword_2813B2078;
  swift_beginAccess();
  v86 = sub_227542D60(v82 + v85, v81, v80);
  if (v86)
  {
    if (v86 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v312 = v414;
    v313 = sub_227284904(0);
    if (v312)
    {
      goto LABEL_81;
    }

    v314 = v313;
    [v313 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v315 = sub_22766C9E0();
    v414 = 0;
    v326 = sub_226EDAB24(v315);

    sub_226EDAB78(v326, v84);
  }

  v87 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v88 = *v87;
  v89 = v87[1];
  v90 = v87[3];
  v91 = *(v87 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9010, &unk_227672BD0);
  v92 = swift_allocObject();
  v93 = v88;
  v94 = v89;

  sub_22766A070();
  *(v92 + 16) = v93;
  *(v92 + 24) = v94;
  *(v92 + 32) = v91;
  *(v92 + 40) = v90;
  v95 = qword_2813B2078;
  swift_beginAccess();
  v96 = sub_227542D18(v92 + v95, v91, v90);
  if (v96)
  {
    if (v96 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v316 = v414;
    v317 = sub_2272848EC(0);
    if (v316)
    {
      goto LABEL_81;
    }

    v318 = v317;
    [v317 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v319 = sub_22766C9E0();
    v414 = 0;
    v320 = sub_226EDAB24(v319);

    sub_226EDAB78(v320, v94);
  }

  v97 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v98 = *v97;
  v99 = v97[1];
  v100 = v97[3];
  v101 = *(v97 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9018, &unk_22767F020);
  v102 = swift_allocObject();
  v103 = v98;
  v104 = v99;

  sub_22766A070();
  *(v102 + 16) = v103;
  *(v102 + 24) = v104;
  *(v102 + 32) = v101;
  *(v102 + 40) = v100;
  v105 = qword_2813B2078;
  swift_beginAccess();
  v106 = sub_227542CF8(v102 + v105, v101, v100);
  if (v106)
  {
    if (v106 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v321 = v414;
    v322 = sub_227244EA0(0);
    if (v321)
    {
      goto LABEL_81;
    }

    v323 = v322;
    [v322 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v324 = sub_22766C9E0();
    v414 = 0;
    v325 = sub_226EDAB24(v324);

    sub_226EDAB78(v325, v104);
  }

  v107 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v108 = *v107;
  v109 = v107[1];
  v110 = v107[3];
  v111 = *(v107 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9020, &unk_227672BE0);
  v112 = swift_allocObject();
  v113 = v108;
  v114 = v109;

  sub_22766A070();
  *(v112 + 16) = v113;
  *(v112 + 24) = v114;
  *(v112 + 32) = v111;
  *(v112 + 40) = v110;
  v115 = qword_2813B2078;
  swift_beginAccess();
  v116 = sub_227542CB0(v112 + v115, v111, v110);
  if (v116)
  {
    if (v116 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v327 = v414;
    v328 = sub_227284934(0);
    if (v327)
    {
      goto LABEL_81;
    }

    v329 = v328;
    [v328 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v330 = sub_22766C9E0();
    v414 = 0;
    v331 = sub_226EDAB24(v330);

    sub_226EDAB78(v331, v114);
  }

  v117 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v118 = *v117;
  v119 = v117[1];
  v120 = v117[3];
  v121 = *(v117 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9028, &unk_22767F070);
  v122 = swift_allocObject();
  v123 = v118;
  v124 = v119;

  sub_22766A070();
  *(v122 + 16) = v123;
  *(v122 + 24) = v124;
  *(v122 + 32) = v121;
  *(v122 + 40) = v120;
  v125 = qword_2813B2078;
  swift_beginAccess();
  v126 = sub_2275428E8(v122 + v125, v121, v120);
  if (v126)
  {
    if (v126 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v332 = v414;
    v333 = sub_22728476C(0);
    if (v332)
    {
      goto LABEL_81;
    }

    v334 = v333;
    [v333 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v335 = sub_22766C9E0();
    v414 = 0;
    v336 = sub_226EDAB24(v335);

    sub_226EDAB78(v336, v124);
  }

  v127 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v128 = *v127;
  v129 = v127[1];
  v130 = v127[3];
  v131 = *(v127 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F30, &unk_22767F080);
  v132 = swift_allocObject();
  v133 = v128;
  v134 = v129;

  sub_22766A070();
  *(v132 + 16) = v133;
  *(v132 + 24) = v134;
  *(v132 + 32) = v131;
  *(v132 + 40) = v130;
  v135 = qword_2813B2078;
  swift_beginAccess();
  v136 = sub_227542858(v132 + v135, v131, v130);
  if (v136)
  {
    if (v136 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v337 = v414;
    v338 = sub_22728488C(0);
    if (v337)
    {
      goto LABEL_81;
    }

    v339 = v338;
    [v338 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v340 = sub_22766C9E0();
    v414 = 0;
    v341 = sub_226EDAB24(v340);

    sub_226EDAB78(v341, v134);
  }

  v137 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v138 = *v137;
  v139 = v137[1];
  v140 = v137[3];
  v141 = *(v137 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v142 = swift_allocObject();
  v143 = v138;
  v144 = v139;

  sub_22766A070();
  *(v142 + 16) = v143;
  *(v142 + 24) = v144;
  *(v142 + 32) = v141;
  *(v142 + 40) = v140;
  v145 = qword_2813B2078;
  swift_beginAccess();
  v146 = sub_227542978(v142 + v145, v141, v140);
  if (v146)
  {
    if (v146 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v342 = v414;
    v343 = sub_227284754(0);
    if (v342)
    {
      goto LABEL_81;
    }

    v344 = v343;
    [v343 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v345 = sub_22766C9E0();
    v414 = 0;
    v346 = sub_226EDAB24(v345);

    sub_226EDAB78(v346, v144);
  }

  v147 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v148 = *v147;
  v149 = v147[1];
  v150 = v147[3];
  v151 = *(v147 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9030, &unk_227672BF0);
  v152 = swift_allocObject();
  v153 = v148;
  v154 = v149;

  sub_22766A070();
  *(v152 + 16) = v153;
  *(v152 + 24) = v154;
  *(v152 + 32) = v151;
  *(v152 + 40) = v150;
  v155 = qword_2813B2078;
  swift_beginAccess();
  v156 = sub_227542C90(v152 + v155, v151, v150);
  if (v156)
  {
    if (v156 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v347 = v414;
    v348 = sub_2272444A0(0);
    if (v347)
    {
      goto LABEL_81;
    }

    v349 = v348;
    [v348 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v350 = sub_22766C9E0();
    v414 = 0;
    v351 = sub_226EDAB24(v350);

    sub_226EDAB78(v351, v154);
  }

  v157 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v158 = *v157;
  v159 = v157[1];
  v160 = v157[3];
  v161 = *(v157 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB8, &unk_227672A60);
  v162 = swift_allocObject();
  v163 = v158;
  v164 = v159;

  sub_22766A070();
  *(v162 + 16) = v163;
  *(v162 + 24) = v164;
  *(v162 + 32) = v161;
  *(v162 + 40) = v160;
  v165 = qword_2813B2078;
  swift_beginAccess();
  v166 = sub_227542C48(v162 + v165, v161, v160);
  if (v166)
  {
    if (v166 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v352 = v414;
    v353 = sub_227284874(0);
    if (v352)
    {
      goto LABEL_81;
    }

    v354 = v353;
    [v353 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v355 = sub_22766C9E0();
    v414 = 0;
    v356 = sub_226EDAB24(v355);

    sub_226EDAB78(v356, v164);
  }

  v167 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v168 = *v167;
  v169 = v167[1];
  v170 = v167[3];
  v171 = *(v167 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9038, &unk_22767F030);
  v172 = swift_allocObject();
  v173 = v168;
  v174 = v169;

  sub_22766A070();
  *(v172 + 16) = v173;
  *(v172 + 24) = v174;
  *(v172 + 32) = v171;
  *(v172 + 40) = v170;
  v175 = qword_2813B2078;
  swift_beginAccess();
  v176 = sub_227542C28(v172 + v175, v171, v170);
  if (v176)
  {
    if (v176 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v357 = v414;
    v358 = sub_227243AA0(0);
    if (v357)
    {
      goto LABEL_81;
    }

    v359 = v358;
    [v358 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v360 = sub_22766C9E0();
    v414 = 0;
    v361 = sub_226EDAB24(v360);

    sub_226EDAB78(v361, v174);
  }

  v177 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v178 = *v177;
  v179 = v177[1];
  v180 = v177[3];
  v181 = *(v177 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9040, &unk_227672C00);
  v182 = swift_allocObject();
  v183 = v178;
  v184 = v179;

  sub_22766A070();
  *(v182 + 16) = v183;
  *(v182 + 24) = v184;
  *(v182 + 32) = v181;
  *(v182 + 40) = v180;
  v185 = qword_2813B2078;
  swift_beginAccess();
  v186 = sub_227542C08(v182 + v185, v181, v180);
  if (v186)
  {
    if (v186 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v362 = v414;
    v363 = sub_2272435A0(0);
    if (v362)
    {
      goto LABEL_81;
    }

    v364 = v363;
    [v363 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v365 = sub_22766C9E0();
    v414 = 0;
    v366 = sub_226EDAB24(v365);

    sub_226EDAB78(v366, v184);
  }

  v187 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v188 = *v187;
  v189 = v187[1];
  v190 = v187[3];
  v191 = *(v187 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F88, &qword_227672A08);
  v192 = swift_allocObject();
  v193 = v188;
  v194 = v189;

  sub_22766A070();
  *(v192 + 16) = v193;
  *(v192 + 24) = v194;
  *(v192 + 32) = v191;
  *(v192 + 40) = v190;
  v195 = qword_2813B2078;
  swift_beginAccess();
  v196 = sub_227542BC0(v192 + v195, v191, v190);
  if (v196)
  {
    if (v196 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v367 = v414;
    v368 = sub_22728485C(0);
    if (v367)
    {
      goto LABEL_81;
    }

    v369 = v368;
    [v368 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v370 = sub_22766C9E0();
    v414 = 0;
    v371 = sub_226EDAB24(v370);

    sub_226EDAB78(v371, v194);
  }

  v197 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v198 = *v197;
  v199 = v197[1];
  v200 = v197[3];
  v201 = *(v197 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9048, &unk_22767F040);
  v202 = swift_allocObject();
  v203 = v198;
  v204 = v199;

  sub_22766A070();
  *(v202 + 16) = v203;
  *(v202 + 24) = v204;
  *(v202 + 32) = v201;
  *(v202 + 40) = v200;
  v205 = qword_2813B2078;
  swift_beginAccess();
  v206 = sub_227542BA0(v202 + v205, v201, v200);
  if (v206)
  {
    if (v206 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v372 = v414;
    v373 = sub_2272430A0(0);
    if (v372)
    {
      goto LABEL_81;
    }

    v374 = v373;
    [v373 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v375 = sub_22766C9E0();
    v414 = 0;
    v376 = sub_226EDAB24(v375);

    sub_226EDAB78(v376, v204);
  }

  v207 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v208 = *v207;
  v209 = v207[1];
  v210 = v207[3];
  v211 = *(v207 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F40, &qword_227672990);
  v212 = swift_allocObject();
  v213 = v208;
  v214 = v209;

  sub_22766A070();
  *(v212 + 16) = v213;
  *(v212 + 24) = v214;
  *(v212 + 32) = v211;
  *(v212 + 40) = v210;
  v215 = qword_2813B2078;
  swift_beginAccess();
  v216 = sub_227542B58(v212 + v215, v211, v210);
  if (v216)
  {
    if (v216 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v377 = v414;
    v378 = sub_2272848D4(0);
    if (v377)
    {
      goto LABEL_81;
    }

    v379 = v378;
    [v378 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v380 = sub_22766C9E0();
    v414 = 0;
    v381 = sub_226EDAB24(v380);

    sub_226EDAB78(v381, v214);
  }

  v217 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v218 = *v217;
  v219 = v217[1];
  v220 = v217[3];
  v221 = *(v217 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9050, &unk_227672C10);
  v222 = swift_allocObject();
  v223 = v218;
  v224 = v219;

  sub_22766A070();
  *(v222 + 16) = v223;
  *(v222 + 24) = v224;
  *(v222 + 32) = v221;
  *(v222 + 40) = v220;
  v225 = qword_2813B2078;
  swift_beginAccess();
  v226 = sub_227542B38(v222 + v225, v221, v220);
  if (v226)
  {
    if (v226 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v382 = v414;
    v383 = sub_227242BA0(0);
    if (v382)
    {
      goto LABEL_81;
    }

    v384 = v383;
    [v383 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v385 = sub_22766C9E0();
    v414 = 0;
    v386 = sub_226EDAB24(v385);

    sub_226EDAB78(v386, v224);
  }

  v227 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v228 = *v227;
  v229 = v227[1];
  v230 = v227[3];
  v231 = *(v227 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9058, &unk_22767F050);
  v232 = swift_allocObject();
  v233 = v228;
  v234 = v229;

  sub_22766A070();
  *(v232 + 16) = v233;
  *(v232 + 24) = v234;
  *(v232 + 32) = v231;
  *(v232 + 40) = v230;
  v235 = qword_2813B2078;
  swift_beginAccess();
  v236 = sub_227542B18(v232 + v235, v231, v230);
  if (v236)
  {
    if (v236 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v387 = v414;
    v388 = sub_2272426A0(0);
    if (v387)
    {
      goto LABEL_81;
    }

    v389 = v388;
    [v388 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v390 = sub_22766C9E0();
    v414 = 0;
    v391 = sub_226EDAB24(v390);

    sub_226EDAB78(v391, v234);
  }

  v237 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v238 = *v237;
  v239 = v237[1];
  v240 = v237[3];
  v241 = *(v237 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9060, qword_227672C20);
  v242 = swift_allocObject();
  v243 = v238;
  v244 = v239;

  sub_22766A070();
  *(v242 + 16) = v243;
  *(v242 + 24) = v244;
  *(v242 + 32) = v241;
  *(v242 + 40) = v240;
  v245 = qword_2813B2078;
  swift_beginAccess();
  v246 = sub_227542A28(v242 + v245, v241, v240);
  if (v246)
  {
    if (v246 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v392 = v414;
    v393 = sub_2272421A0(0);
    if (v392)
    {
      goto LABEL_81;
    }

    v394 = v393;
    [v393 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v395 = sub_22766C9E0();
    v414 = 0;
    v396 = sub_226EDAB24(v395);

    sub_226EDAB78(v396, v244);
  }

  v247 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v248 = *v247;
  v249 = v247[1];
  v250 = v247[3];
  v251 = *(v247 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F58, &qword_2276729A8);
  v252 = swift_allocObject();
  v253 = v248;
  v254 = v249;

  sub_22766A070();
  *(v252 + 16) = v253;
  *(v252 + 24) = v254;
  *(v252 + 32) = v251;
  *(v252 + 40) = v250;
  v255 = qword_2813B2078;
  swift_beginAccess();
  v256 = sub_2275427C8(v252 + v255, v251, v250);
  if (v256)
  {
    if (v256 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v397 = v414;
    v398 = sub_227284844(0);
    if (v397)
    {
      goto LABEL_81;
    }

    v399 = v398;
    [v398 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v400 = sub_22766C9E0();
    v414 = 0;
    v401 = sub_226EDAB24(v400);

    sub_226EDAB78(v401, v254);
  }

  v257 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v258 = *v257;
  v259 = v257[1];
  v260 = v257[3];
  v261 = *(v257 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F78, &qword_22767F0A0);
  v262 = swift_allocObject();
  v263 = v258;
  v264 = v259;

  sub_22766A070();
  *(v262 + 16) = v263;
  *(v262 + 24) = v264;
  *(v262 + 32) = v261;
  *(v262 + 40) = v260;
  v265 = qword_2813B2078;
  swift_beginAccess();
  v266 = sub_2275428A0(v262 + v265, v261, v260);
  if (v266)
  {
    if (v266 == 1)
    {

      goto LABEL_79;
    }

LABEL_82:
    swift_willThrow();
    goto LABEL_81;
  }

  v402 = v414;
  v403 = sub_22728482C(0);
  if (v402)
  {
    goto LABEL_81;
  }

  v408 = v403;
  [v403 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v409 = sub_22766C9E0();
  v414 = 0;
  v410 = sub_226EDAB24(v409);

  sub_226EDAB78(v410, v264);

LABEL_79:
  v267 = __swift_project_boxed_opaque_existential_0(v413, v413[3]);
  v268 = *v267;
  v269 = v267[1];
  v270 = v267[3];
  v271 = *(v267 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FF8, &unk_22767F060);
  v272 = swift_allocObject();
  v273 = v268;
  v274 = v269;

  sub_22766A070();
  *(v272 + 16) = v273;
  *(v272 + 24) = v274;
  *(v272 + 32) = v271;
  *(v272 + 40) = v270;
  v275 = qword_2813B2078;
  swift_beginAccess();
  v276 = sub_227542A08(v272 + v275, v271, v270);
  if (v276)
  {
    if (v276 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_81;
  }

  v404 = v414;
  v405 = sub_22728479C(0);
  if (v404)
  {
LABEL_81:

    return;
  }

  v406 = v405;
  [v405 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v407 = sub_22766C9E0();
  v411 = sub_226EDAB24(v407);

  sub_226EDAB78(v411, v274);
}
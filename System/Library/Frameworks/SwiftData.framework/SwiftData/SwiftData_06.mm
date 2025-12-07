id sub_197468A88(void *a1)
{
  v2 = [a1 count];
  v34 = [objc_allocWithZone(MEMORY[0x1E695DF90]) initWithCapacity_];
  v32 = a1;
  v33 = sub_197521D7C();
  sub_197521D9C();
  if (v43)
  {
    v3 = &unk_1EAF2AFF0;
    v4 = &unk_19752C750;
    do
    {
      sub_1974028B8(&v42, v40);
      sub_1974028B8(&v44, &v41);
      sub_1973FE0E4(v40, &v37, v3, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
      v8 = [v32 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v8)
      {
        sub_197521FDC();
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      v39[0] = v37;
      v39[1] = v38;
      sub_1973FE0E4(v39, &v37, &qword_1EAF2AF20, &unk_19752F320);
      if (*(&v38 + 1))
      {
        sub_1973F3D34(0, &qword_1EAF2ACD8, 0x1E695DF20);
        if (swift_dynamicCast())
        {
          v5 = v35[0];
          v6 = sub_197468A88(v35[0]);
          goto LABEL_4;
        }
      }

      else
      {
        sub_19740C044(&v37, &qword_1EAF2AF20, &unk_19752F320);
      }

      sub_1973FE0E4(v39, &v37, &qword_1EAF2AF20, &unk_19752F320);
      if (!*(&v38 + 1))
      {
        sub_19740C044(&v37, &qword_1EAF2AF20, &unk_19752F320);
LABEL_18:
        sub_1973FE0E4(v39, &v37, &qword_1EAF2AF20, &unk_19752F320);
        if (*(&v38 + 1))
        {
          sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
          if (swift_dynamicCast())
          {
            v9 = v35[0];
            sub_1973FE0E4(v40, &v37, v3, v4);
            v10 = [v9 description];
            if (!v10)
            {
              sub_1975217BC();
              v10 = sub_19752178C();
              v3 = &unk_1EAF2AFF0;
            }

            sub_1973FE0E4(&v37, v35, v3, v4);
            [v34 __swift_setObject_forKeyedSubscript_];

LABEL_34:
            swift_unknownObjectRelease();
            sub_19740C044(&v37, v3, v4);
            goto LABEL_5;
          }
        }

        else
        {
          sub_19740C044(&v37, &qword_1EAF2AF20, &unk_19752F320);
        }

        sub_1973FE0E4(v39, &v37, &qword_1EAF2AF20, &unk_19752F320);
        if (*(&v38 + 1))
        {
          sub_1973F3D34(0, &qword_1EAF2AEA0, 0x1E696ABC0);
          if (swift_dynamicCast())
          {
            v11 = v35[0];
            sub_1973FE0E4(v40, &v37, v3, v4);
            v12 = [v11 domain];
            v13 = v4;
            v14 = v3;
            if (!v12)
            {
              sub_1975217BC();
              v12 = sub_19752178C();
            }

            v30 = [v11 code];
            v15 = [v11 userInfo];
            v16 = sub_1975215FC();
            v31 = v11;
            v17 = v16;

            sub_197467F14(v17);

            v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v19 = sub_1975215EC();

            v20 = [v18 initWithDomain:v12 code:v30 userInfo:v19];

            sub_1973FE0E4(&v37, v35, v14, v13);
            [v34 __swift_setObject_forKeyedSubscript_];

            swift_unknownObjectRelease();
            sub_19740C044(&v37, v14, v13);
            sub_19740C044(v39, &qword_1EAF2AF20, &unk_19752F320);
            sub_19740C044(v40, v14, v13);
            v3 = v14;
            v4 = v13;
            goto LABEL_6;
          }
        }

        else
        {
          sub_19740C044(&v37, &qword_1EAF2AF20, &unk_19752F320);
        }

        sub_1973FE0E4(v40, &v37, v3, v4);
        sub_1973FE0E4(v39, v35, &qword_1EAF2AF20, &unk_19752F320);
        v21 = v36;
        if (v36)
        {
          v22 = __swift_project_boxed_opaque_existential_1Tm(v35, v36);
          v31 = &v30;
          v23 = v4;
          v24 = *(v21 - 8);
          MEMORY[0x1EEE9AC00](v22, v22);
          v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v24 + 16))(v26);
          v27 = sub_19752281C();
          v28 = v26;
          v3 = &unk_1EAF2AFF0;
          (*(v24 + 8))(v28, v21);
          v4 = v23;
          __swift_destroy_boxed_opaque_existential_1Tm(v35);
        }

        else
        {
          v27 = 0;
        }

        sub_1973FE0E4(&v37, v35, v3, v4);
        [v34 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      sub_1973F3D34(0, &qword_1EAF2AFE8, 0x1E695DEC8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_18;
      }

      v5 = v35[0];
      v6 = sub_19746924C(v35[0]);
LABEL_4:
      v7 = v6;
      sub_1973FE0E4(v40, &v37, v3, v4);
      [v34 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
LABEL_5:
      sub_19740C044(v39, &qword_1EAF2AF20, &unk_19752F320);
      sub_19740C044(v40, v3, v4);
LABEL_6:
      sub_197521D9C();
    }

    while (v43);
  }

  return v34;
}

id sub_19746924C(void *a1)
{
  v2 = sub_1975211FC();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 count];
  v7 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithCapacity_];
  sub_197521F0C();
  sub_1975211EC();
  if (v32)
  {
    v8 = MEMORY[0x1E69E7CA0];
    v9 = &off_1E74AD000;
    v10 = &off_1E74AD000;
    do
    {
      sub_1974028B8(&v31, &v29);
      sub_197404860(&v29, v28);
      sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
      if (swift_dynamicCast())
      {
        v11 = v27;
        v12 = [v27 v9[338]];
        if (!v12)
        {
          sub_1975217BC();
          v12 = sub_19752178C();
          v10 = &off_1E74AD000;
        }

        [v7 v10[436]];
      }

      else
      {
        sub_197404860(&v29, v28);
        sub_1973F3D34(0, &qword_1EAF2AEA0, 0x1E696ABC0);
        if (swift_dynamicCast())
        {
          v13 = v7;
          v14 = v27;
          v15 = [v27 domain];
          if (!v15)
          {
            sub_1975217BC();
            v15 = sub_19752178C();
          }

          v16 = [v14 code];
          v17 = [v14 userInfo];
          v18 = v8;
          v19 = sub_1975215FC();

          sub_197467F14(v19);

          v20 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v21 = sub_1975215EC();

          v22 = v20;
          v8 = v18;
          v23 = [v22 initWithDomain:v15 code:v16 userInfo:v21];

          v10 = &off_1E74AD000;
          v7 = v13;
          [v13 addObject_];

          v9 = &off_1E74AD000;
        }

        else
        {
          __swift_project_boxed_opaque_existential_1Tm(&v29, v30);
          [v7 v10[436]];
          swift_unknownObjectRelease();
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v29);
      sub_1975211EC();
    }

    while (v32);
  }

  (*(v25 + 8))(v5, v26);
  return v7;
}

void sub_197469694(id *a1, uint64_t a2, void *a3, char **a4)
{
  v7 = *a1;
  v8 = [*a1 changedObjectID];
  v9 = v8;
  if (!a2)
  {
    goto LABEL_11;
  }

  v10 = *(a2 + 72);
  v11 = [v8 entityName];
  v12 = sub_1975217BC();
  v14 = v13;

  if (!*(v10 + 16))
  {

LABEL_11:

    return;
  }

  v15 = sub_1973F4028(v12, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

  v18 = *(*(v10 + 56) + 8 * v15);
  v19 = *(v18 + 144);
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = *(v18 + 152);

  sub_197469858(v31, v7, v19, a3, v19, v20);
  sub_1974713D0(v31, &v29);
  v21 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1974771C0(0, *(v21 + 2) + 1, 1, v21);
    *a4 = v21;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    *a4 = sub_1974771C0((v23 > 1), v24 + 1, 1, v21);
  }

  sub_19747142C(v31);
  v25 = *a4;
  *(v25 + 2) = v24 + 1;
  v26 = &v25[48 * v24];
  v28 = v29;
  v27 = v30[0];
  *(v26 + 57) = *(v30 + 9);
  *(v26 + 2) = v28;
  *(v26 + 3) = v27;
}

void sub_197469858(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, char *a3@<X0>, void *a4@<X2>, uint64_t a5@<X3>, char *a6@<X4>)
{
  v12 = [a2 changeType];
  if (v12 == 2)
  {
    v18 = a2;
    v19 = [a4 transactionNumber];
    a1[3] = type metadata accessor for DefaultHistoryDelete(0, a5, a6, v20);
    a1[4] = swift_getWitnessTable();
    v21 = swift_allocObject();
    *a1 = v21;
    sub_197469D54(v18, v19, a3, a6, a5, a6, v21 + 16);
    v17 = 2;
    goto LABEL_7;
  }

  if (v12 == 1)
  {
    v13 = a2;
    v14 = [a4 transactionNumber];
    a1[3] = type metadata accessor for DefaultHistoryUpdate(0, a5, a6, v15);
    a1[4] = swift_getWitnessTable();
    v16 = swift_allocObject();
    *a1 = v16;
    sub_197469BE0(v13, v14, a3, a6, a5, a6, v16 + 16);
    v17 = 1;
LABEL_7:
    *(a1 + 40) = v17;
    return;
  }

  if (!v12)
  {
    v22 = a2;
    v23 = [a4 transactionNumber];
    a1[3] = type metadata accessor for DefaultHistoryInsert(0, a5, a6, v24);
    a1[4] = swift_getWitnessTable();
    v25 = swift_allocObject();
    *a1 = v25;
    sub_197469B24(v22, v23, v25 + 16);
    v17 = 0;
    goto LABEL_7;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197524500);
  [a2 changeType];
  type metadata accessor for NSPersistentHistoryChangeType(0);
  sub_19752235C();
  sub_1975223EC();
  __break(1u);
}

double sub_197469B24@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v8 = [a1 changedObjectID];
  v9 = [a1 changeID];

  v13 = v8;
  v14 = 0;
  sub_1974CF6D4(v9, a2, &v13, &v15);
  v10 = v16;
  v11 = v17;
  result = *&v15;
  *a5 = v15;
  *(a5 + 16) = v10;
  *(a5 + 24) = v11;
  return result;
}

double sub_197469BE0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = [a1 updatedProperties];
  if (v14)
  {
    v15 = v14;
    sub_1973F3D34(0, &qword_1ED7C9B98, 0x1E695D6D8);
    sub_197471480(&qword_1ED7C6D40, &qword_1ED7C9B98, 0x1E695D6D8);
    sub_197521BCC();
  }

  v16 = sub_19746FAB8(a1, a5, a3, a6, a4);

  v17 = [a1 changedObjectID];
  v18 = [a1 changeID];

  v23 = v17;
  v24 = 0;
  sub_1974CF6EC(v18, a2, &v23, v16, &v25);
  v19 = v26;
  v20 = v27;
  v21 = v28;
  result = *&v25;
  *a7 = v25;
  *(a7 + 16) = v19;
  *(a7 + 24) = v20;
  *(a7 + 32) = v21;
  return result;
}

double sub_197469D54@<D0>(void *a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = [a1 tombstone];
  if (v14)
  {
    v15 = v14;
    sub_1975215FC();
  }

  sub_19746A164(a1, a5, a3, a6, a4, &v25);

  v21 = v25;
  v16 = [a1 changedObjectID];
  v17 = [a1 changeID];

  v23 = v16;
  v24 = 0;
  v22 = v21;
  sub_1974CF888(v17, a2, &v23, &v22, &v25);
  v18 = v26;
  v19 = v27;
  *a7 = v25;
  *(a7 + 16) = v18;
  *(a7 + 24) = v19;
  result = *&v28;
  *(a7 + 32) = v28;
  return result;
}

uint64_t sub_197469EB8(void **a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char *a6)
{
  v9 = *a1;
  v10 = sub_19752178C();
  v11 = [v9 valueForKey_];

  if (v11)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v30 = v6;

      MEMORY[0x19A8DFF80](46, 0xE100000000000000);

      v12 = [v9 name];
      v13 = sub_1975217BC();
      v15 = v14;

      MEMORY[0x19A8DFF80](v13, v15);

      v16 = sub_1974A280C(v25, v26, a4, a6);

      sub_19752228C();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        *&v29[0] = v17;
      }

      else
      {
        *&v29[0] = v16;
      }

      sub_197521AAC();
      return sub_197521A7C();
    }
  }

  else
  {
    sub_19740C044(v29, &qword_1EAF2AF20, &unk_19752F320);
  }

  v18 = [v9 name];
  v19 = sub_1975217BC();
  v21 = v20;

  v22 = sub_1974A280C(v19, v21, a4, a6);

  sub_19752228C();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    *&v29[0] = v23;
  }

  else
  {
    *&v29[0] = v22;
  }

  sub_197521AAC();
  return sub_197521A7C();
}

void sub_19746A164(void *a1@<X2>, uint64_t a2@<X3>, char *a3@<X4>, uint64_t a4@<X5>, char *a5@<X6>, _OWORD *a6@<X8>)
{
  sub_1974CF708(&v25);
  v11 = [a1 tombstone];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1975215FC();

    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    while (v16)
    {
      v19 = v18;
LABEL_10:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = v20 | (v19 << 6);
      sub_19741FFE0(*(v13 + 48) + 40 * v21, v23);
      sub_197404860(*(v13 + 56) + 32 * v21, v24);
      sub_19746A320(v23, v24, &v25, a2, a3, a4, a5);
      sub_19740C044(v23, &qword_1EAF2AFB8, &qword_19752C720);
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        goto LABEL_13;
      }

      v16 = *(v13 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    *a6 = v25;
  }
}

uint64_t sub_19746A320(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7)
{
  sub_19741FFE0(a1, v21);
  swift_dynamicCast();
  sub_1974A280C(v19, v20, a5, a7);

  sub_19752228C();
  v12 = swift_dynamicCastClassUnconditional();
  v13 = a2[3];
  v14 = __swift_project_boxed_opaque_existential_1Tm(a2, v13);
  v21[3] = v13;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v21);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_2Tm, v14, v13);
  v17 = type metadata accessor for HistoryTombstone(0, a4, a6, v16);

  sub_1974CF7D0(v12, v21, v17);

  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

id sub_19746A47C(void *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v1 + 56) + 8 * v11);
    v16 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v17 = [v16 initWithLongLong_];
    if (v17)
    {
      v41 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = sub_1973F4028(v14, v13);
      v24 = v8[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        result = sub_1975229CC();
        __break(1u);
        return result;
      }

      v28 = v23;
      if (v8[3] >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        v33 = v22;
        sub_19747B114();
        v22 = v33;
        if ((v28 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        v30 = v22;

        v31 = v8[7];
        v32 = *(v31 + 8 * v30);
        *(v31 + 8 * v30) = v41;
      }

      else
      {
        sub_1974786D8(v27, isUniquelyReferenced_nonNull_native);
        v22 = sub_1973F4028(v14, v13);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_30;
        }

LABEL_19:
        if (v28)
        {
          goto LABEL_20;
        }

LABEL_22:
        v8[(v22 >> 6) + 8] |= 1 << v22;
        v34 = (v8[6] + 16 * v22);
        *v34 = v14;
        v34[1] = v13;
        *(v8[7] + 8 * v22) = v41;
        v35 = v8[2];
        v26 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v26)
        {
          goto LABEL_28;
        }

        v8[2] = v36;
      }
    }

    else
    {
      v18 = sub_1973F4028(v14, v13);
      v20 = v19;

      if (v20)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_19747B114();
        }

        sub_1974A013C(v18, v8);
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  v37 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
  v38 = sub_1975215EC();
  v39 = [v37 initWithDictionary_];

  if (!v39)
  {
    goto LABEL_29;
  }

  return v39;
}

uint64_t sub_19746A79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(type metadata accessor for DataStoreBatchFetchRequest(0, a2, a3, a4) + 40);
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;
  v13 = v4;
  v9 = MEMORY[0x19A8E1370]();
  v10 = sub_197464164(a1 + v8, v4, sub_197471314, v12);
  objc_autoreleasePoolPop(v9);
  return v10;
}

void sub_19746A83C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a1 + 16);
  sub_1974076EC(a2, a3, a4, a5);
  if (v6)
  {

    return;
  }

  v14 = v13;
  sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
  v15 = sub_197521E8C();
  v16 = v15;
  if (!(v15 >> 62))
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_22:

    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v17 = sub_1975220EC();
  if (!v17)
  {
    goto LABEL_22;
  }

LABEL_6:
  v41 = v12;
  v42 = v14;
  v43 = a6;
  v47 = 0;
  *&v44 = MEMORY[0x1E69E7CC0];
  sub_1975222CC();
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v18 = 0;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x19A8E0960](v18, v16);
    }

    else
    {
      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    v21 = [v19 objectID];

    sub_19752229C();
    sub_1975222DC();
    sub_1975222EC();
    sub_1975222AC();
  }

  while (v17 != v18);

  v14 = v44;
  if ((v44 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v31 = v14;
    v32 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      v33 = MEMORY[0x19A8E0960](v32, v31);
      ResultsCollectionElement = type metadata accessor for CoreDataFetchResultsCollectionElement();
      v35 = swift_allocObject();
      v35[3] = 0;
      v35[4] = 0;
      swift_weakInit();
      v35[3] = 0;
      v35[4] = 0;
      v35[2] = v33;
      swift_unknownObjectRelease();
      swift_weakAssign();
      v36 = ResultsCollectionElement;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_197477070(0, v23[2] + 1, 1, v23);
      }

      v38 = v23[2];
      v37 = v23[3];
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v40 = sub_197477070((v37 > 1), v38 + 1, 1, v23);
        v39 = v38 + 1;
        v23 = v40;
      }

      ++v32;
      v45 = v36;
      v46 = &off_1F0BAA170;
      *&v44 = v35;
      v23[2] = v39;
      sub_197471350(&v44, &v23[5 * v38 + 4]);
    }

    while (v17 != v32);
    goto LABEL_20;
  }

  if (v17 <= *(v44 + 16))
  {
    v22 = type metadata accessor for CoreDataFetchResultsCollectionElement();
    v23 = MEMORY[0x1E69E7CC0];
    v24 = 32;
    do
    {
      v25 = v14;
      v26 = *&v14[v24];
      v27 = swift_allocObject();
      v27[3] = 0;
      v27[4] = 0;
      swift_weakInit();
      v27[3] = 0;
      v27[4] = 0;
      v27[2] = v26;
      v28 = v26;
      swift_unknownObjectRelease();
      swift_weakAssign();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_197477070(0, v23[2] + 1, 1, v23);
      }

      v30 = v23[2];
      v29 = v23[3];
      if (v30 >= v29 >> 1)
      {
        v23 = sub_197477070((v29 > 1), v30 + 1, 1, v23);
      }

      v45 = v22;
      v46 = &off_1F0BAA170;
      *&v44 = v27;
      v23[2] = v30 + 1;
      sub_197471350(&v44, &v23[5 * v30 + 4]);
      v24 += 8;
      --v17;
      v14 = v25;
    }

    while (v17);
LABEL_20:

    a6 = v43;
LABEL_23:

    *a6 = v23;
    return;
  }

  __break(1u);
}

uint64_t sub_19746AC8C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_19746ACCC()
{
  v1 = *v0;
  v2 = 0x6C6261646F636564;
  v3 = 0xD000000000000012;
  if (v1 != 4)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x726F66736E617274;
  if (v1 != 1)
  {
    v4 = 0x7469736F706D6F63;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_19746ADA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1974710EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19746ADE0(uint64_t a1)
{
  v2 = sub_197471948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746AE1C(uint64_t a1)
{
  v2 = sub_197471948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746AE58(void *a1, int a2)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B038, &qword_19752C980);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v47 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B040, &qword_19752C988);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v44 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B048, &qword_19752C990);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v41 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B050, &qword_19752C998);
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B058, &qword_19752C9A0);
  v37 = *(v16 - 8);
  v38 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B060, &qword_19752C9A8);
  v36 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v35 - v22;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B068, &qword_19752C9B0);
  v24 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v25);
  v27 = &v35 - v26;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_197471948();
  sub_197522B0C();
  v28 = (v24 + 8);
  if (v51 > 2u)
  {
    if (v51 == 3)
    {
      v55 = 3;
      sub_197471A44();
      v31 = v41;
      v32 = v50;
      sub_19752266C();
      v34 = v42;
      v33 = v43;
    }

    else if (v51 == 4)
    {
      v56 = 4;
      sub_1974719F0();
      v31 = v44;
      v32 = v50;
      sub_19752266C();
      v34 = v45;
      v33 = v46;
    }

    else
    {
      v57 = 5;
      sub_19747199C();
      v31 = v47;
      v32 = v50;
      sub_19752266C();
      v34 = v48;
      v33 = v49;
    }

    (*(v34 + 8))(v31, v33);
  }

  else if (v51)
  {
    if (v51 == 1)
    {
      v53 = 1;
      sub_197471AEC();
      v29 = v50;
      sub_19752266C();
      (*(v37 + 8))(v19, v38);
      return (*v28)(v27, v29);
    }

    v54 = 2;
    sub_197471A98();
    v32 = v50;
    sub_19752266C();
    (*(v39 + 8))(v15, v40);
  }

  else
  {
    v52 = 0;
    sub_197471B40();
    v32 = v50;
    sub_19752266C();
    (*(v36 + 8))(v23, v20);
  }

  return (*v28)(v27, v32);
}

uint64_t sub_19746B44C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEB8, &qword_19752C678);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19746FA10();
  sub_197522B0C();
  v16 = 0;
  sub_19752268C();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    sub_19746FA64();
    sub_1975226EC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_19746B5F0(uint64_t a1)
{
  v2 = sub_197471A98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746B62C(uint64_t a1)
{
  v2 = sub_197471A98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746B680(uint64_t a1)
{
  v2 = sub_197471B40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746B6BC(uint64_t a1)
{
  v2 = sub_197471B40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746B710(uint64_t a1)
{
  v2 = sub_19747199C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746B74C(uint64_t a1)
{
  v2 = sub_19747199C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746B7A0(uint64_t a1)
{
  v2 = sub_1974719F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746B7DC(uint64_t a1)
{
  v2 = sub_1974719F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746B830(uint64_t a1)
{
  v2 = sub_197471A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746B86C(uint64_t a1)
{
  v2 = sub_197471A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746B8C0(uint64_t a1)
{
  v2 = sub_197471AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746B8FC(uint64_t a1)
{
  v2 = sub_197471AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746B938()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_19746B980(uint64_t a1)
{
  v2 = *v1;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v2);
  return sub_197522A9C();
}

uint64_t sub_19746B9C4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1974702E8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_19746BA34()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_19746BAA8(uint64_t a1)
{
  v2 = *v1;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v2);
  return sub_197522A9C();
}

uint64_t sub_19746BAEC()
{
  if (*v0)
  {
    return 0x7954657275747566;
  }

  else
  {
    return 0x79747265706F7270;
  }
}

uint64_t sub_19746BB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79747265706F7270 && a2 == 0xEC000000656D614ELL;
  if (v6 || (sub_19752282C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7954657275747566 && a2 == 0xEA00000000006570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19752282C();

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

uint64_t sub_19746BC34(uint64_t a1)
{
  v2 = sub_19746FA10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746BC70(uint64_t a1)
{
  v2 = sub_19746FA10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_19746BCAC(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_19752282C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_19746BD0C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_19746FF9C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_19746BD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  swift_beginAccess();
  v11 = *(v4 + 16);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_197403C30(v9, v10);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v14 = sub_1973FFB18(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

LABEL_6:
  sub_197404860(a1, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1973FF710(v19, a3, a4, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();
  sub_1974028EC(v9, v10);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_1973FF658(v14, v9, v10, v16);
  sub_1974028C8(v9, v10);
  *(v5 + 16) = v18;
  return swift_endAccess();
}

uint64_t sub_19746BEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  swift_beginAccess();
  v11 = *(v4 + 24);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_197403C30(v9, v10);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v14 = sub_1974BF974(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

LABEL_6:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19747CCC8(a1, a3, a4, isUniquelyReferenced_nonNull_native);

  swift_beginAccess();
  sub_1974028EC(v9, v10);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v5 + 24);
  *(v5 + 24) = 0x8000000000000000;
  sub_19747CB28(v14, v9, v10, v16);
  sub_1974028C8(v9, v10);
  *(v5 + 24) = v18;
  return swift_endAccess();
}

uint64_t sub_19746C028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  swift_beginAccess();
  v11 = *(v4 + 56);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_197403C30(v9, v10);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v14 = sub_1973FFB18(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

LABEL_6:
  sub_197404860(a1, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1973FF710(v19, a3, a4, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();
  sub_1974028EC(v9, v10);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v5 + 56);
  *(v5 + 56) = 0x8000000000000000;
  sub_1973FF658(v14, v9, v10, v16);
  sub_1974028C8(v9, v10);
  *(v5 + 56) = v18;
  return swift_endAccess();
}

uint64_t sub_19746C188(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  swift_beginAccess();
  v11 = *(v4 + 40);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_197403C30(v9, v10);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v14 = sub_1974249DC(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

LABEL_6:

  v15 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19741213C(v15, a3, a4, isUniquelyReferenced_nonNull_native);

  swift_beginAccess();
  sub_1974028EC(v9, v10);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + 40);
  *(v5 + 40) = 0x8000000000000000;
  sub_1974249B0(v14, v9, v10, v17);
  sub_1974028C8(v9, v10);
  *(v5 + 40) = v19;
  return swift_endAccess();
}

uint64_t sub_19746C2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  swift_beginAccess();
  v11 = *(v4 + 48);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_197403C30(v9, v10);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v14 = sub_19740141C(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

LABEL_6:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_197400C64(a1, a3, a4, isUniquelyReferenced_nonNull_native);

  swift_beginAccess();
  sub_1974028EC(v9, v10);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v5 + 48);
  *(v5 + 48) = 0x8000000000000000;
  sub_1974013F4(v14, v9, v10, v16);
  sub_1974028C8(v9, v10);
  *(v5 + 48) = v18;
  return swift_endAccess();
}

uint64_t sub_19746C460(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  sub_1974028EC(v1, v2);
  sub_19749B76C(0, v1, v2);
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(v1, v2);
  sub_19749B798(0, v1, v2);
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(v1, v2);
  sub_19749B76C(0, v1, v2);
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(v1, v2);
  sub_19749B930(0, v1, v2);
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(v1, v2);
  sub_19749B904(0, v1, v2);
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(v1, v2);
  sub_19749B76C(0, v1, v2);
  return swift_endAccess();
}

void *sub_19746C608(uint64_t a1, uint64_t a2)
{
  sub_1973F3D34(0, qword_1ED7C6730, 0x1E695DF90);
  v3 = sub_197521D6C();
  if ((*(a2 + 120) & 2) != 0)
  {
    sub_197521D7C();
    sub_197521D9C();
    v33 = v29;
    v34 = v30;
    v35 = v31;
    for (i = v32; *(&v30 + 1); i = v32)
    {
      sub_1974028B8(&v33, &v29);
      sub_1974028B8(&v35, &v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
      if (swift_dynamicCast())
      {
        sub_19746D01C(v38);
        v25 = v24;

        if (v25)
        {
          __swift_project_boxed_opaque_existential_1Tm(&v29, *(&v30 + 1));
          [v3 __swift_setObject_forKeyedSubscript_];
          swift_unknownObjectRelease();
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v29);
      sub_197521D9C();
      v33 = v29;
      v34 = v30;
      v35 = v31;
    }

    v26 = sub_19746D1F0(v3, a2);

    return v26;
  }

  result = swift_beginAccess();
  v5 = *(a2 + 128);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return v3;
    }

    goto LABEL_4;
  }

  result = sub_1975220EC();
  v6 = result;
  if (!result)
  {
    return v3;
  }

LABEL_4:
  if (v6 >= 1)
  {
    v7 = v5 & 0xC000000000000001;

    v8 = 0;
    v9 = MEMORY[0x1E69E6158];
    v27 = v5;
    while (1)
    {
      if (v7)
      {
        MEMORY[0x19A8E0960](v8, v5);
      }

      else
      {
      }

      type metadata accessor for Schema.CompositeAttribute();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = v17;
        swift_beginAccess();
        v19 = *(v18 + 24);
        *&v29 = *(v18 + 16);
        *(&v29 + 1) = v19;

        v20 = [v3 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v20)
        {
          sub_197521FDC();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = 0u;
          v30 = 0u;
        }

        v33 = v29;
        v34 = v30;
        if (!*(&v30 + 1))
        {

          sub_19740C044(&v33, &qword_1EAF2AF20, &unk_19752F320);
          goto LABEL_9;
        }

        sub_1973F3D34(0, &qword_1EAF2ACD8, 0x1E695DF20);
        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_9;
        }

        v21 = v37;
        if ((*(v18 + 120) & 2) == 0 || [v37 count])
        {
          v10 = v6;
          v11 = v7;
          v12 = v3;
          v13 = v9;
          v14 = *(v18 + 16);
          v15 = *(v18 + 24);

          v16 = sub_19746C608(v21, v18);
          *&v33 = v14;
          *(&v33 + 1) = v15;
          v9 = v13;
          v3 = v12;
          v7 = v11;
          v6 = v10;
          v5 = v27;
          [v3 __swift_setObject_forKeyedSubscript_];
        }

        else
        {
          v23 = *(v18 + 16);
          v22 = *(v18 + 24);

          *&v33 = v23;
          *(&v33 + 1) = v22;
          [v3 __swift_setObject_forKeyedSubscript_];
        }

        swift_unknownObjectRelease();
      }

LABEL_9:
      if (v6 == ++v8)
      {

        return v3;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19746CA90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for CompositeDecoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v8[2] = MEMORY[0x1E69E7CC0];
  v10 = a2;
  v11 = sub_197441730(v9);
  v8[4] = a3;
  v8[5] = v10;
  v8[3] = v11;
  sub_197413CBC(&qword_1ED7C6930, type metadata accessor for CompositeDecoder, &unk_19752E8E8);

  sub_197521B9C();
}

uint64_t sub_19746CD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = dynamic_cast_existential_2_conditional(a6, a6, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
  if (result)
  {
    return sub_19746CDB0(result, a2, a3, a4, a5, a6, result, a7, v15);
  }

  return result;
}

uint64_t sub_19746CDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a4;
  v27[0] = a9;
  v27[1] = a3;
  v28 = sub_197521F5C();
  v11 = *(v28 - 8);
  v13 = MEMORY[0x1EEE9AC00](v28, v12);
  v15 = v27 - v14;
  v16 = *(a7 - 8);
  v18 = MEMORY[0x1EEE9AC00](v13, v17);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v27 - v22;
  sub_197520B7C();
  swift_allocObject();
  sub_197520B6C();
  sub_197520B5C();

  (*(v16 + 32))(v20, v23, a7);
  v24 = swift_dynamicCast();
  (*(*(a5 - 8) + 56))(v15, v24 ^ 1u, 1, a5);
  v25 = v29;
  swift_beginAccess();
  return (*(v11 + 40))(v25, v15, v28);
}

void sub_19746D01C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = a1 + 64;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_13:
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v8 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_197404860(*(a1 + 56) + 32 * v12, v16);
        *&v17 = v14;
        *(&v17 + 1) = v15;
        sub_1974028B8(v16, &v18);

        v10 = v8;
LABEL_14:
        v20 = v17;
        v21[0] = v18;
        v21[1] = v19;
        if (!*(&v17 + 1))
        {
          break;
        }

        sub_1974028B8(v21, &v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        sub_19746D01C(*&v16[0]);

        v7 = v10;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (v6 <= v7 + 1)
      {
        v9 = v7 + 1;
      }

      else
      {
        v9 = v6;
      }

      v10 = v9 - 1;
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v8 >= v6)
        {
          v5 = 0;
          v18 = 0u;
          v19 = 0u;
          v17 = 0u;
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v8);
        ++v7;
        if (v5)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void *sub_19746D1F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1973F3D34(0, qword_1ED7C6730, 0x1E695DF90);
  v4 = sub_197521D6C();
  result = swift_beginAccess();
  v6 = a2[16];
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return v4;
  }

  result = sub_1975220EC();
  v7 = result;
  if (!result)
  {
    return v4;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = v6 & 0xC000000000000001;

    v9 = 0;
    v21 = v6;
    do
    {
      if (v8)
      {
        v10 = MEMORY[0x19A8E0960](v9, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        swift_beginAccess();
        v23 = *(v10 + 16);

        v13 = [v4 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v13)
        {
          sub_197521FDC();
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = 0u;
          v24 = 0u;
        }

        v25[0] = v23;
        v25[1] = v24;
        if (*(&v24 + 1))
        {
          sub_1973F3D34(0, &qword_1EAF2ACD8, 0x1E695DF20);
          if (swift_dynamicCast())
          {
            swift_beginAccess();
            v14 = v7;
            v15 = v8;
            v16 = v3;
            v17 = v4;
            v18 = v12[2];
            v19 = v12[3];

            v20 = sub_19746D1F0(v22, v12);
            *&v25[0] = v18;
            *(&v25[0] + 1) = v19;
            v4 = v17;
            v3 = v16;
            v8 = v15;
            v7 = v14;
            v6 = v21;
            [v4 __swift_setObject_forKeyedSubscript_];

            swift_unknownObjectRelease();
          }
        }

        else
        {

          sub_19740C044(v25, &qword_1EAF2AF20, &unk_19752F320);
        }
      }

      else
      {
      }

      ++v9;
    }

    while (v7 != v9);

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_19746D578()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError;
  if (*&v0[OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError])
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager;
  v4 = *&v0[OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager];
  if (!v4)
  {
    v18[0] = 0;
    if ([v0 _validateStages_])
    {
      v8 = *&v0[v3];
      if (v8)
      {
        v9 = v18[0];
        v10 = v8;
        v11 = [v10 stages];
        sub_1973F3D34(0, qword_1ED7C8060, 0x1E695D660);
        v12 = sub_1975219CC();

        return v12;
      }

      if (!*&v0[v1])
      {
        result = sub_1975223EC();
        __break(1u);
        return result;
      }

      v17 = v18[0];
    }

    else
    {
      v13 = v18[0];
      v14 = sub_1975211DC();

      swift_willThrow();
      v15 = *&v0[v1];
      *&v0[v1] = v14;
      v16 = v14;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = [v5 stages];
  sub_1973F3D34(0, qword_1ED7C8060, 0x1E695D660);
  v7 = sub_1975219CC();

  return v7;
}

char *sub_19746D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError;
  *&v4[OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError] = 0;
  v11 = OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager;
  *&v4[OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager] = 0;
  sub_19746F310(a2, a3);
  if (v5)
  {
    sub_19740AB48(a4, type metadata accessor for ModelConfiguration);

    type metadata accessor for DefaultMigrationManager(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v4[OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_schema] = a1;
    v12 = &v4[OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationPlan];
    *v12 = a2;
    *(v12 + 1) = a3;
    sub_19740B324(a4, &v4[OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_configuration], type metadata accessor for ModelConfiguration);
    sub_1973F3D34(0, qword_1ED7C8060, 0x1E695D660);

    v13 = sub_1975219BC();
    v15.receiver = v4;
    v15.super_class = type metadata accessor for DefaultMigrationManager(0);
    v4 = objc_msgSendSuper2(&v15, sel_initWithMigrationStages_, v13);

    sub_19740AB48(a4, type metadata accessor for ModelConfiguration);
  }

  return v4;
}

void sub_19746D954(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError);
  if (v3)
  {
    swift_willThrow();
LABEL_3:
    v4 = v3;
    return;
  }

  v5 = OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager;
  if (!*(v1 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager))
  {
    sub_19746DA54();
    if (v2)
    {
      v3 = 0;
      goto LABEL_3;
    }

    v7 = *(v1 + v5);
    *(v1 + v5) = v6;
  }
}

void sub_19746DA54()
{
  v2 = v1;
  v3 = v0;
  v4 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  v5 = v0 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationPlan;
  v6 = *(v0 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationPlan);
  v7 = *(v5 + 8);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v25 = v6;
    v10 = (v8 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = (*(*v10 + 8))(v11, *v10);
      (*(v12 + 16))(&v30, v11, v12);
      v26 = v30;
      v27 = v31;
      type metadata accessor for Schema();
      swift_allocObject();
      Schema.init(_:version:)(v13, &v26);

      MEMORY[0x19A8E00D0](v14);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1975219FC();
      }

      sub_197521A4C();

      v10 += 2;
      --v9;
    }

    while (v9);
    v6 = v25;
  }

  v28 = 0;
  v29 = v4;
  v15 = (*(v7 + 16))(v6, v7);
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = (v15 + 32);
    while (v18 < *(v16 + 16))
    {
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[3];
      v32 = v19[2];
      v33 = v22;
      v30 = v20;
      v31 = v21;
      v23 = sub_197470AEC(&v30, &v26);
      v4 = MEMORY[0x19A8E1370](v23);
      sub_19746DCE8(&v30, v3, &v28, &v29);
      if (v2)
      {
        goto LABEL_14;
      }

      v2 = 0;
      ++v18;
      objc_autoreleasePoolPop(v4);
      sub_197470B48(&v30);
      v19 += 4;
      if (v17 == v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    objc_autoreleasePoolPop(v4);
    __break(1u);
  }

  else
  {
LABEL_12:

    sub_1973F3D34(0, &qword_1ED7C8348, 0x1E695D6F0);

    sub_197521E9C();
    v24 = v28;
  }
}

void sub_19746DCE8(void *a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if (v8 < 0)
  {
    v91 = a1[5];
    v92 = a1[4];
    v38 = a1[6];
    v94 = a1[7];
    v39 = v8 & 0x7FFFFFFFFFFFFFFFLL;
    v40 = (*(v6 + 8))(v5, v6);
    (*(v6 + 16))(&v101, v5, v6);
    v99 = v101;
    v100 = v102;
    type metadata accessor for Schema();
    swift_allocObject();
    v41 = Schema.init(_:version:)(v40, &v99);
    v42 = (*(v39 + 8))(v7, v39);
    (*(v39 + 16))(&v101, v7, v39);
    v99 = v101;
    v100 = v102;
    swift_allocObject();
    v43 = Schema.init(_:version:)(v42, &v99);
    if (qword_1ED7C9CC0 != -1)
    {
      swift_once();
    }

    v44 = qword_1ED7C9CC8;
    [qword_1ED7C9CC8 lock];
    if (qword_1ED7C9598 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v45 = sub_19741AA7C(v41, qword_1ED7CE630);
    swift_endAccess();
    if (!v45)
    {
      v46 = sub_19741AB44();
      v45 = v46;
      if (v46)
      {
        [v46 _makeImmutable];
      }
    }

    v103 = v41;
    [v44 unlock];
    [v44 lock];
    swift_beginAccess();
    v47 = sub_19741AA7C(v43, qword_1ED7CE630);
    swift_endAccess();
    if (!v47)
    {
      v48 = sub_19741AB44();
      if (!v48)
      {
        [v44 unlock];
        if (v45)
        {

          v14 = a4;
          goto LABEL_60;
        }

        v47 = 0;
        goto LABEL_75;
      }

      v47 = v48;
      [v48 _makeImmutable];
    }

    [v44 unlock];
    if (v45)
    {
      v87 = v38;
      v49 = [v45 versionChecksum];
      if (!v49)
      {
        sub_1975217BC();
        v49 = sub_19752178C();
      }

      v50 = objc_allocWithZone(MEMORY[0x1E695D640]);
      v51 = v45;
      v52 = [v50 initWithModel:v51 versionChecksum:v49];
      v85 = v51;

      v53 = [v47 versionChecksum];
      if (!v53)
      {
        sub_1975217BC();
        v53 = sub_19752178C();
      }

      v54 = objc_allocWithZone(MEMORY[0x1E695D640]);
      v55 = v47;
      v56 = [v54 initWithModel:v55 versionChecksum:v53];

      sub_1973F3D34(0, &qword_1EAF2AA70, 0x1E695D5B0);
      v57 = v52;
      v82 = v56;
      v83 = v57;
      v58 = sub_197521E2C();
      v59 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v60 = swift_allocObject();
      v60[2] = v92;
      v60[3] = v91;
      v61 = v103;
      v60[4] = v59;
      v60[5] = v61;

      sub_197470BC0(v92, v91);
      sub_197521E4C();

      v62 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v63 = swift_allocObject();
      v63[2] = v87;
      v63[3] = v94;
      v63[4] = v62;
      v63[5] = v43;

      sub_197470BC0(v87, v94);
      sub_197521E3C();

      if (*a3)
      {
        objc_opt_self();
        v64 = swift_dynamicCastObjCClass();
        if (v64)
        {
          [v64 setSubsequentStage_];
        }
      }

      v65 = v58;
      v14 = a4;
      MEMORY[0x19A8E00D0]();
      if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1975219FC();
        v14 = a4;
      }

      sub_197521A4C();

      goto LABEL_60;
    }

LABEL_75:
    v14 = a4;

    goto LABEL_60;
  }

  v9 = (*(v6 + 8))(*a1, v6);
  (*(v6 + 16))(&v101, v5, v6);
  v99 = v101;
  v100 = v102;
  type metadata accessor for Schema();
  swift_allocObject();
  v103 = Schema.init(_:version:)(v9, &v99);
  v10 = (*(v8 + 8))(v7, v8);
  (*(v8 + 16))(&v101, v7, v8);
  v99 = v101;
  v100 = v102;
  swift_allocObject();
  v93 = Schema.init(_:version:)(v10, &v99);
  v11 = *(*(a2 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationPlan + 8) + 8);
  v12 = (v11)(*(a2 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationPlan), *(a2 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationPlan + 8));
  v13 = v12;
  v90 = *(v12 + 16);
  if (!v90)
  {

    goto LABEL_57;
  }

  v81 = v11;
  v14 = 0;
  v15 = 0;
  v84 = v12 + 40;
  v86 = MEMORY[0x1E69E7CC0];
  do
  {
    v16 = (v84 + 16 * v14);
    v14 = (v14 + 1);
    while (1)
    {
      v19 = *(v16 - 1);
      v18 = *v16;
      v20 = (*(*v16 + 8))(v19, *v16);
      (*(v18 + 16))(&v101, v19, v18);
      v99 = v101;
      v100 = v102;
      swift_allocObject();
      v21 = Schema.init(_:version:)(v20, &v99);
      if (qword_1ED7C9CC0 != -1)
      {
        swift_once();
      }

      v22 = qword_1ED7C9CC8;
      [qword_1ED7C9CC8 lock];
      if (qword_1ED7C9598 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v23 = sub_19741AA7C(v21, qword_1ED7CE630);
      if (v23)
      {
        v24 = v23;
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v25 = sub_19741AB44();
        if (!v25)
        {
          [v22 unlock];
          *&v101 = 0;
          *(&v101 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD00000000000003ELL, 0x8000000197524260);
          *&v99 = v21;
          sub_19752235C();
          sub_1975223EC();
          __break(1u);
          return;
        }

        v24 = v25;
        [v25 _makeImmutable];
      }

      [v22 unlock];
      v26 = *(v21 + 56);
      v101 = *(v21 + 40);
      v102 = v26;
      v27 = *(v103 + 56);
      v99 = *(v103 + 40);
      v100 = v27;
      if ((_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v101, &v99) & 1) == 0)
      {
        v97 = v101;
        v98 = v102;
        v95 = v99;
        v96 = v100;
        if (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v95, &v97) & 1) == 0 && (sub_197421268(*(v21 + 64), *(v103 + 64)))
        {
          break;
        }
      }

      v28 = *(v21 + 56);
      v101 = *(v21 + 40);
      v102 = v28;
      v29 = *(v93 + 56);
      v99 = *(v93 + 40);
      v100 = v29;
      if ((_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v101, &v99) & 1) == 0)
      {
        v97 = v101;
        v98 = v102;
        v95 = v99;
        v96 = v100;
        if (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v95, &v97) & 1) == 0 && (sub_197421268(*(v21 + 64), *(v93 + 64)))
        {

          v69 = (v81() + 16);
          if (!*v69)
          {

LABEL_55:

            v14 = a4;
LABEL_58:
            sub_1973F3D34(0, qword_1ED7C6960, 0x1E695D618);
            v21 = sub_197521EAC();
            MEMORY[0x19A8E00D0]();
            if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_89;
            }

            goto LABEL_59;
          }

          v70 = v69[2 * *v69];

          v14 = a4;
          if (v19 != v70)
          {

            goto LABEL_58;
          }

          v71 = [v24 versionChecksum];
          v72 = sub_1975217BC();
          v74 = v73;

          v75 = v86;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_19741E330(0, *(v86 + 2) + 1, 1, v86);
          }

          v77 = *(v75 + 2);
          v76 = *(v75 + 3);
          v78 = v75;
          if (v77 >= v76 >> 1)
          {
            v78 = sub_19741E330((v76 > 1), v77 + 1, 1, v75);
          }

          *(v78 + 2) = v77 + 1;
          v79 = &v78[16 * v77];
          *(v79 + 4) = v72;
          *(v79 + 5) = v74;
LABEL_57:
          v14 = a4;
          goto LABEL_58;
        }
      }

      if (v15)
      {
        goto LABEL_27;
      }

      if (v90 == v14)
      {
        goto LABEL_55;
      }

      v15 = 0;
LABEL_5:
      v16 += 2;
      v17 = v14 >= *(v13 + 16);
      v14 = (v14 + 1);
      if (v17)
      {
        goto LABEL_82;
      }
    }

    if (*a3)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        if (v90 == v14)
        {
          goto LABEL_55;
        }

        v15 = 1;
        goto LABEL_5;
      }
    }

LABEL_27:
    v30 = [v24 versionChecksum];
    v31 = sub_1975217BC();
    v33 = v32;

    v34 = v86;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_19741E330(0, *(v86 + 2) + 1, 1, v86);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_19741E330((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v37 = &v34[16 * v36];
    *(v37 + 4) = v31;
    *(v37 + 5) = v33;
    if (v90 == v14)
    {

      goto LABEL_57;
    }

    v86 = v34;
    v15 = 1;
  }

  while (v14 < *(v13 + 16));
LABEL_82:
  __break(1u);
LABEL_83:
  v66 = sub_1975220EC();
  if (v66)
  {
    while (1)
    {
      v67 = v66 - 1;
      if (__OFSUB__(v66, 1))
      {
        break;
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
        goto LABEL_86;
      }

      if ((v67 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v67 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v66 = *(v21 + 8 * v67 + 32);
        goto LABEL_67;
      }

      __break(1u);
LABEL_89:
      sub_1975219FC();
LABEL_59:
      sub_197521A4C();

LABEL_60:
      v21 = *v14;
      if (*v14 >> 62)
      {
        goto LABEL_83;
      }

      v66 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v66)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_86:

    v80 = MEMORY[0x19A8E0960](v67, v21);

    v66 = v80;
  }

LABEL_67:
  v68 = *a3;
  *a3 = v66;
}

void *sub_19746EB60(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60[1] = a7;
  v62 = a6;
  v65 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF30, &qword_19752C6A0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = v60 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v63 = v60 - v23;
  v24 = type metadata accessor for ModelConfiguration(0);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v26, v29);
  v33 = v60 - v32;
  v64 = a3;
  if (!a3)
  {
    return result;
  }

  v61 = v31;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v34 = result;
  sub_19740B324(result + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_configuration, v28, type metadata accessor for ModelConfiguration);
  sub_197470BC0(v64, v65);

  sub_197471368(v28, v33, type metadata accessor for ModelConfiguration);
  v35 = [a1 container];
  if (!v35)
  {
    v44 = sub_1975212CC();
    v45 = v63;
    (*(*(v44 - 8) + 56))(v63, 1, 1, v44);
    v46 = v67;
    goto LABEL_15;
  }

  v36 = v35;
  v37 = [v35 persistentStoreDescriptions];

  sub_1973F3D34(0, &qword_1ED7C9B90, 0x1E695D6C8);
  v38 = sub_1975219CC();
  v39 = v38;
  if (!(v38 >> 62))
  {
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (!sub_1975220EC())
  {
    goto LABEL_25;
  }

LABEL_6:

  if ((v39 & 0xC000000000000001) == 0)
  {
    if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v40 = *(v39 + 32);
    goto LABEL_9;
  }

LABEL_26:
  v40 = MEMORY[0x19A8E0960](0, v39);
LABEL_9:
  v41 = v40;

  v42 = [v41 URL];

  if (v42)
  {
    sub_19752127C();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v46 = v67;
  v47 = sub_1975212CC();
  (*(*(v47 - 8) + 56))(v21, v43, 1, v47);
  v45 = v63;
  sub_19746F6B4(v21, v63);
LABEL_15:
  v48 = *(v24 + 40);
  v49 = v62;

  *&v33[v48] = v49;
  sub_1973FE0E4(v45, v17, &qword_1EAF2AE78, &qword_19752C290);
  sub_19740B324(v33, v12, type metadata accessor for ModelConfiguration);
  (*(v61 + 56))(v12, 0, 1, v24);
  type metadata accessor for ModelContainer();
  swift_allocObject();

  v51 = sub_197473DF4(v50, 0, 0, 0, 0, v17, v12);
  if (v46)
  {
LABEL_28:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v52 = v51;
  type metadata accessor for ModelContext(0);
  swift_allocObject();

  v54 = sub_19740B6EC(v53);

  v56 = v64;
  v55 = v65;
  v64(v54);
  sub_19740E3D0(1);
  swift_beginAccess();
  v57 = v52[6];
  v58 = *(v57 + 16);
  if (v58)
  {
    v67 = 0;
    v59 = v57 + 32;
    v62 = v57;

    do
    {
      sub_1973FE0E4(v59, v66, &qword_1EAF2AF38, &qword_19752C6A8);
      type metadata accessor for DefaultStore(0);
      if (swift_dynamicCastClass())
      {
        sub_19745C5E8();
      }

      swift_unknownObjectRelease();
      sub_197414BEC(v66);
      v59 += 56;
      --v58;
    }

    while (v58);
    sub_197471304(v64, v65);
  }

  else
  {
    sub_197471304(v56, v55);
  }

  sub_19740C044(v63, &qword_1EAF2AE78, &qword_19752C290);
  return sub_19740AB48(v33, type metadata accessor for ModelConfiguration);
}

id sub_19746F250(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_19746F310(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  v5 = (*(a2 + 16))(a1, a2);
  v6 = v5;
  v29 = *(v5 + 16);
  if (!v29)
  {
  }

  v7 = 0;
  v33 = v5 + 32;
  while (1)
  {
    v8 = (v33 + (v7 << 6));
    v9 = v8[2];
    v10 = v8[3];
    v11 = v8[1];
    v30[0] = *v8;
    v30[1] = v11;
    v31 = v9;
    v32 = v10;
    v12 = *&v30[0];
    v13 = v11;
    if ((*(&v11 + 1) & 0x8000000000000000) != 0)
    {
      v19 = v32;
      sub_197470BC0(v31, *(&v31 + 1));
      sub_197470BC0(v19, *(&v19 + 1));
      sub_197520B4C();
      sub_197520B4C();
      v20 = *(v4 + 16);
      if (v20)
      {
        v15 = 0;
        v21 = (v4 + 32);
        while (*v21 != v12)
        {
          ++v15;
          v21 += 2;
          if (v20 == v15)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:
        v15 = sub_197520B4C();
      }

      if (v20)
      {
        v17 = 0;
        v22 = (v4 + 32);
        while (*(v4 + 16) != v17)
        {
          if (*v22 == v13)
          {
            goto LABEL_32;
          }

          ++v17;
          v22 += 2;
          if (v20 == v17)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_48;
      }

LABEL_31:
      v17 = sub_197520B4C();
LABEL_32:
      if (v15 == sub_197520B4C() || v17 == sub_197520B4C())
      {
        if (v17 == sub_197520B4C())
        {
          if (qword_1EAF2ADA8 != -1)
          {
            swift_once();
          }

          if (dyld_program_sdk_at_least())
          {
            goto LABEL_40;
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
      sub_197520B4C();
      sub_197520B4C();
      v14 = *(v4 + 16);
      if (v14)
      {
        v15 = 0;
        v16 = (v4 + 32);
        while (*v16 != v12)
        {
          ++v15;
          v16 += 2;
          if (v14 == v15)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v15 = sub_197520B4C();
      }

      if (v14)
      {
        v17 = 0;
        v18 = (v4 + 32);
        while (*(v4 + 16) != v17)
        {
          if (*v18 == v13)
          {
            goto LABEL_15;
          }

          ++v17;
          v18 += 2;
          if (v14 == v17)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        swift_once();
LABEL_41:
        v24 = &byte_1EAF2B800;
        goto LABEL_46;
      }

LABEL_14:
      v17 = sub_197520B4C();
LABEL_15:
      if (v15 == sub_197520B4C() || v17 == sub_197520B4C())
      {
LABEL_40:

        if (qword_1EAF2AD80 != -1)
        {
          goto LABEL_50;
        }

        goto LABEL_41;
      }
    }

    if (v17 < v15)
    {
      break;
    }

LABEL_18:
    ++v7;
    sub_197470B48(v30);
    if (v7 == v29)
    {
    }

    if (v7 >= *(v6 + 16))
    {
      goto LABEL_49;
    }
  }

  if (qword_1EAF2AD78 != -1)
  {
    swift_once();
  }

  v24 = &byte_1EAF2B7E8;
LABEL_46:
  v25 = *v24;
  v27 = *(v24 + 1);
  v26 = *(v24 + 2);
  sub_19744BE3C();
  swift_allocError();
  *v28 = v25;
  *(v28 + 8) = v27;
  *(v28 + 16) = v26;

  swift_willThrow();
  return sub_197470B48(v30);
}

uint64_t sub_19746F6B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19746F744()
{
  result = qword_1EAF2AE90;
  if (!qword_1EAF2AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2AE90);
  }

  return result;
}

uint64_t sub_19746F8DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19746F914(uint64_t a1)
{
  result = type metadata accessor for ModelConfiguration(319);
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

uint64_t sub_19746F9C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

unint64_t sub_19746FA10()
{
  result = qword_1EAF2AEC0;
  if (!qword_1EAF2AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2AEC0);
  }

  return result;
}

unint64_t sub_19746FA64()
{
  result = qword_1EAF2AEC8;
  if (!qword_1EAF2AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2AEC8);
  }

  return result;
}

uint64_t sub_19746FAB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_19752228C();
  v10 = sub_1975215CC();
  v18 = v10;
  v11 = [a1 updatedProperties];
  if (!v11)
  {
    return v10;
  }

  v12 = v11;
  sub_1973F3D34(0, &qword_1ED7C9B98, 0x1E695D6D8);
  sub_197471480(&qword_1ED7C6D40, &qword_1ED7C9B98, 0x1E695D6D8);
  v13 = sub_197521BCC();

  MEMORY[0x1EEE9AC00](v14, v15);
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = &v18;
  sub_197463070(sub_1974714D0, v17, v13);

  return v18;
}

void sub_19746FBF8(unint64_t a1, uint64_t a2, void *a3, char **a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1975220EC())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x19A8E0960](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_197469694(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_19746FCFC(unint64_t a1, char *a2, uint64_t *a3)
{
  v6 = type metadata accessor for DefaultHistoryTransaction(0);
  v32 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v26 - v12;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1975220EC())
  {
    v15 = 0;
    v27 = &a2[OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration];
    v28 = i;
    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    v31 = a1 & 0xC000000000000001;
    v29 = v10;
    while (1)
    {
      if (v31)
      {
        v16 = MEMORY[0x19A8E0960](v15, a1);
      }

      else
      {
        if (v15 >= *(v30 + 16))
        {
          goto LABEL_16;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = *&v27[*(type metadata accessor for ModelConfiguration(0) + 40)];

      a2 = v17;
      sub_19746723C(a2, v19, v13);
      sub_19740B324(v13, v10, type metadata accessor for DefaultHistoryTransaction);
      v20 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_197477198(0, v20[2] + 1, 1, v20);
        *a3 = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        *a3 = sub_197477198((v22 > 1), v23 + 1, 1, v20);
      }

      sub_19740AB48(v13, type metadata accessor for DefaultHistoryTransaction);
      v24 = *a3;
      v24[2] = v23 + 1;
      v25 = v24 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v23;
      v10 = v29;
      sub_197471368(v29, v25, type metadata accessor for DefaultHistoryTransaction);

      ++v15;
      if (v18 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_19746FF9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AED0, &unk_19752C680);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19746FA10();
  sub_197522AFC();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_1975225EC();
    v10[13] = 1;
    sub_19747018C();
    sub_19752261C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_19747018C()
{
  result = qword_1EAF2AED8;
  if (!qword_1EAF2AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2AED8);
  }

  return result;
}

unint64_t sub_1974701E0()
{
  result = qword_1EAF2AF00;
  if (!qword_1EAF2AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2AF00);
  }

  return result;
}

unint64_t sub_197470234()
{
  result = qword_1EAF2AF08;
  if (!qword_1EAF2AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2AF08);
  }

  return result;
}

BOOL sub_197470288(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v8 = *a1;
  v9[0] = v3;
  *(v9 + 14) = *(a1 + 30);
  v4 = v2[1];
  v6 = *v2;
  v7[0] = v4;
  *(v7 + 14) = *(v2 + 30);
  return _s9SwiftData6SchemaC9AttributeC6OptionV2eeoiySbAG_AGtFZ_0(&v8, &v6);
}

uint64_t sub_1974702E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0A8, &qword_19752C9B8);
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v59 = &v44[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0B0, &qword_19752C9C0);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v58 = &v44[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0B8, &qword_19752C9C8);
  v10 = *(v9 - 8);
  v52 = v9;
  v53 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v61 = &v44[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0C0, &qword_19752C9D0);
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v60 = &v44[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0C8, &qword_19752C9D8);
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v44[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0D0, &qword_19752C9E0);
  v47 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v44[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0D8, &qword_19752C9E8);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v44[-v27];
  v29 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v29);
  sub_197471948();
  v30 = v62;
  sub_197522AFC();
  if (v30)
  {
    goto LABEL_9;
  }

  v46 = v20;
  v31 = v19;
  v33 = v60;
  v32 = v61;
  v62 = v25;
  v34 = sub_19752262C();
  if (*(v34 + 16) != 1 || (v35 = *(v34 + 32), v35 == 6))
  {
    v37 = sub_19752226C();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0E0, &unk_19752C9F0);
    *v39 = &type metadata for DefaultStore.FutureType;
    sub_1975224EC();
    sub_19752225C();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v62 + 8))(v28, v24);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    return 0;
  }

  v45 = *(v34 + 32);
  if (v35 > 2)
  {
    if (v35 != 3)
    {
      v36 = v62;
      if (v35 == 4)
      {
        v68 = 4;
        sub_1974719F0();
        v41 = v58;
        sub_1975224DC();
        (*(v55 + 8))(v41, v54);
      }

      else
      {
        v69 = 5;
        sub_19747199C();
        v43 = v59;
        sub_1975224DC();
        (*(v56 + 8))(v43, v57);
      }

      goto LABEL_17;
    }

    v67 = 3;
    sub_197471A44();
    sub_1975224DC();
    v42 = v62;
    (*(v53 + 8))(v32, v52);
    (*(v42 + 8))(v28, v24);
  }

  else
  {
    if (v35)
    {
      if (v35 == 1)
      {
        v65 = 1;
        sub_197471AEC();
        sub_1975224DC();
        v36 = v62;
        (*(v48 + 8))(v31, v49);
      }

      else
      {
        v66 = 2;
        sub_197471A98();
        sub_1975224DC();
        v36 = v62;
        (*(v50 + 8))(v33, v51);
      }

LABEL_17:
      (*(v36 + 8))(v28, v24);
      goto LABEL_18;
    }

    v64 = 0;
    sub_197471B40();
    sub_1975224DC();
    (*(v47 + 8))(v23, v46);
    (*(v62 + 8))(v28, v24);
  }

LABEL_18:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  return v45;
}

uint64_t sub_197470BC0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_81Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_197470C44()
{
  sub_197521FEC();
  v13 = 63;
  v14 = 0xE100000000000000;
  v11 = 0;
  v12 = 0xE000000000000000;
  v0 = sub_197416D54();
  v1 = MEMORY[0x1E69E6158];
  sub_197521FBC(&v13, &v11, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v0, v0, v0);

  v13 = 33;
  v14 = 0xE100000000000000;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_197521FBC(&v13, &v11, 0, 0, 0, 1, v1, v1, v1, v0, v0, v0);

  v13 = 46;
  v14 = 0xE100000000000000;
  sub_197521F9C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFA0, &qword_19752C710);
  sub_1974717A0(&qword_1EAF2AFA8, &qword_1EAF2AFA0, &qword_19752C710, MEMORY[0x1E69E6958]);
  v3 = sub_1975216CC();
  v4 = v2;
  if (v3 == 0x6E656B6F74 && v2 == 0xE500000000000000 || (sub_19752282C() & 1) != 0 || v3 == 0xD000000000000015 && 0x80000001975244A0 == v4 || (sub_19752282C() & 1) != 0 || v3 == 25705 && v4 == 0xE200000000000000 || (sub_19752282C() & 1) != 0)
  {
    v5 = 1179403603;

LABEL_11:

    return v5;
  }

  if (v3 == 0x6D617473656D6974 && v4 == 0xE900000000000070 || (sub_19752282C() & 1) != 0)
  {
    v5 = 0x4D415453454D4954;
LABEL_17:

    goto LABEL_11;
  }

  if (v3 == 0x726F68747561 && v4 == 0xE600000000000000 || (sub_19752282C() & 1) != 0)
  {
    v5 = 0x5354524F48545541;

    goto LABEL_11;
  }

  if (v3 == 0xD000000000000010 && 0x80000001975244C0 == v4 || (sub_19752282C() & 1) != 0)
  {

    v5 = 0x4449454C444E5542;
    goto LABEL_11;
  }

  v5 = 0x49535345434F5250;
  if (v3 == 0xD000000000000011 && 0x80000001975244E0 == v4)
  {
    goto LABEL_17;
  }

  v7 = sub_19752282C();

  if (v7)
  {
    goto LABEL_11;
  }

  if (qword_1EAF2AD28 != -1)
  {
    swift_once();
  }

  v8 = byte_1EAF2B6F8;
  v5 = qword_1EAF2B700;
  v9 = unk_1EAF2B708;
  sub_19744BE3C();
  swift_allocError();
  *v10 = v8;
  *(v10 + 8) = v5;
  *(v10 + 16) = v9;
  swift_willThrow();

  return v5;
}

uint64_t sub_1974710EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6261646F636564 && a2 == 0xE900000000000065;
  if (v4 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F66736E617274 && a2 == 0xED0000656C62616DLL || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469736F706D6F63 && a2 == 0xE900000000000065 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001975247C0 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001975247E0 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000197524800 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_197471304(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_197471350(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_197471368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_197471480(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1973F3D34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_197471530@<X0>(void *a1@<X8>)
{
  result = sub_19746506C(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_197471568@<X0>(void *a1@<X8>)
{
  result = sub_1974648B8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultStore.DefaultStoreSnapshotValueFuture.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DefaultStore.DefaultStoreSnapshotValueFuture.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1974717A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_1974717EC()
{
  result = qword_1EAF2B018;
  if (!qword_1EAF2B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B018);
  }

  return result;
}

unint64_t sub_197471844()
{
  result = qword_1EAF2B020;
  if (!qword_1EAF2B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B020);
  }

  return result;
}

unint64_t sub_19747189C()
{
  result = qword_1EAF2B028;
  if (!qword_1EAF2B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B028);
  }

  return result;
}

unint64_t sub_1974718F4()
{
  result = qword_1EAF2B030;
  if (!qword_1EAF2B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B030);
  }

  return result;
}

unint64_t sub_197471948()
{
  result = qword_1EAF2B070;
  if (!qword_1EAF2B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B070);
  }

  return result;
}

unint64_t sub_19747199C()
{
  result = qword_1EAF2B078;
  if (!qword_1EAF2B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B078);
  }

  return result;
}

unint64_t sub_1974719F0()
{
  result = qword_1EAF2B080;
  if (!qword_1EAF2B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B080);
  }

  return result;
}

unint64_t sub_197471A44()
{
  result = qword_1EAF2B088;
  if (!qword_1EAF2B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B088);
  }

  return result;
}

unint64_t sub_197471A98()
{
  result = qword_1EAF2B090;
  if (!qword_1EAF2B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B090);
  }

  return result;
}

unint64_t sub_197471AEC()
{
  result = qword_1EAF2B098;
  if (!qword_1EAF2B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B098);
  }

  return result;
}

unint64_t sub_197471B40()
{
  result = qword_1EAF2B0A0;
  if (!qword_1EAF2B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B0A0);
  }

  return result;
}

uint64_t sub_197471B94(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_197471C24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_197471D4C()
{
  result = qword_1EAF2B0E8;
  if (!qword_1EAF2B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B0E8);
  }

  return result;
}

unint64_t sub_197471DA4()
{
  result = qword_1EAF2B0F0;
  if (!qword_1EAF2B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B0F0);
  }

  return result;
}

unint64_t sub_197471DFC()
{
  result = qword_1EAF2B0F8;
  if (!qword_1EAF2B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B0F8);
  }

  return result;
}

unint64_t sub_197471E54()
{
  result = qword_1EAF2B100;
  if (!qword_1EAF2B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B100);
  }

  return result;
}

unint64_t sub_197471EAC()
{
  result = qword_1EAF2B108;
  if (!qword_1EAF2B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B108);
  }

  return result;
}

unint64_t sub_197471F04()
{
  result = qword_1EAF2B110;
  if (!qword_1EAF2B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B110);
  }

  return result;
}

unint64_t sub_197471F5C()
{
  result = qword_1EAF2B118;
  if (!qword_1EAF2B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B118);
  }

  return result;
}

unint64_t sub_197471FB4()
{
  result = qword_1EAF2B120;
  if (!qword_1EAF2B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B120);
  }

  return result;
}

unint64_t sub_19747200C()
{
  result = qword_1EAF2B128;
  if (!qword_1EAF2B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B128);
  }

  return result;
}

unint64_t sub_197472064()
{
  result = qword_1EAF2B130;
  if (!qword_1EAF2B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B130);
  }

  return result;
}

unint64_t sub_1974720BC()
{
  result = qword_1EAF2B138;
  if (!qword_1EAF2B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B138);
  }

  return result;
}

unint64_t sub_197472114()
{
  result = qword_1EAF2B140;
  if (!qword_1EAF2B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B140);
  }

  return result;
}

unint64_t sub_19747216C()
{
  result = qword_1EAF2B148;
  if (!qword_1EAF2B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B148);
  }

  return result;
}

unint64_t sub_1974721C4()
{
  result = qword_1EAF2B150;
  if (!qword_1EAF2B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B150);
  }

  return result;
}

unint64_t sub_19747221C()
{
  result = qword_1EAF2B158;
  if (!qword_1EAF2B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B158);
  }

  return result;
}

void *DefaultSerialModelExecutor.__allocating_init(modelContext:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_197472984(a1);

  return v2;
}

void *DefaultSerialModelExecutor.init(modelContext:)(uint64_t a1)
{
  v1 = sub_197472984(a1);

  return v1;
}

uint64_t DefaultSerialModelExecutor.deinit()
{
  v1 = v0;
  if (qword_1EAF2ACB8 != -1)
  {
    swift_once();
  }

  if (dyld_program_sdk_at_least())
  {
    if (qword_1ED7C7270 != -1)
    {
      swift_once();
    }

    if ((*(qword_1ED7CE5B8 + 16) & 1) == 0)
    {
      if (*(*(v0 + 16) + 48))
      {
        if (qword_1EAF2AD08 != -1)
        {
          swift_once();
        }

        v2 = sub_19752157C();
        __swift_project_value_buffer(v2, qword_1EAF33E68);
        v3 = sub_19752155C();
        v4 = sub_197521DDC();
        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 0;
          _os_log_impl(&dword_1973F2000, v3, v4, "ModelActor was deinitialized while ModelContext has unsaved changes.  This violates the non-Sendable isolation scope of the ModelContext.  The ModelActor should be strongly reference for as long as the ModelContext is in use.  This will be a hard error in Swift 6.", v5, 2u);
          MEMORY[0x19A8E1B50](v5, -1, -1);
        }
      }

      else
      {

        sub_19740E3D0(1);
      }
    }
  }

  return v1;
}

uint64_t DefaultSerialModelExecutor.__deallocating_deinit()
{
  DefaultSerialModelExecutor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1974726A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (_SD_get_current_context_tsd())
  {
    v3 = swift_retain_n();

    sub_19744AB88(v2);
  }

  else
  {
    _SD_get_current_context_tsd();
    type metadata accessor for _SwiftDataContextThreadLocalState();
    v4 = swift_allocObject();
    *(v4 + 16) = MEMORY[0x1E69E7CC0];
    sub_19744AB88(v2);
    _SD_set_current_context_tsd(v4);
  }

  sub_19744ADA8(&qword_1ED7C6D30, &protocol conformance descriptor for DefaultSerialModelExecutor);
  swift_job_run();
  result = _SD_get_current_context_tsd();
  if (result)
  {
    v6 = swift_retain_n();

    v7 = sub_19744BE90(v2);

    if (v7)
    {
    }
  }

  return result;
}

uint64_t sub_19747280C(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_197521B1C();
}

uint64_t sub_19747286C(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_197521B2C();
}

uint64_t ModelActor.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  ModelActor.modelContext.getter(a3, a5);
  v12 = v5;
  LOBYTE(v13) = v6;
  v7 = sub_1974309B4(&v12);
  v9 = v8;

  v12 = v7;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

void *sub_197472984(uint64_t a1)
{
  v2 = v1;
  v2[4] = 0;
  v2[2] = a1;
  if (*(a1 + 16))
  {
    result = *(a1 + 16);
  }

  else
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  v2[3] = result;
  v5 = objc_allocWithZone(MEMORY[0x1E695D628]);

  v6 = [v5 initWithConcurrencyType_];
  v7 = v2[4];
  v2[4] = v6;

  v8 = v2[4];
  if (v8)
  {
    [v8 set:1 isSwiftBound:?];
  }

  if (*(a1 + 62) == 1)
  {
    sub_1974B033C();
    *(a1 + 62) = 0;
  }

  if (_SD_get_current_context_tsd())
  {
    v9 = swift_retain_n();

    v10 = sub_1974BEE44(a1);

    if (v10)
    {
    }
  }

  return v2;
}

uint64_t sub_197472AEC(uint64_t a1)
{
  *(a1 + 8) = sub_19744ADA8(&qword_1ED7C6D28, &protocol conformance descriptor for DefaultSerialModelExecutor);
  result = sub_19744ADA8(&qword_1ED7C6D30, &protocol conformance descriptor for DefaultSerialModelExecutor);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_197472B54(uint64_t a1)
{
  result = sub_19744ADA8(qword_1ED7C6D48, &protocol conformance descriptor for DefaultSerialModelExecutor);
  *(a1 + 8) = result;
  return result;
}

void sub_197472C38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF30, &qword_19752C6A0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v34 - v4;
  v6 = type metadata accessor for ModelConfiguration(0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v38 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v37 = &v34 - v15;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v21 = (v14 + 56);
  v42 = a1;

  v22 = 0;
  v35 = v21;
  v36 = v5;
  while (v19)
  {
LABEL_11:
    sub_197414BA4(*(v42 + 48) + 40 * (__clz(__rbit64(v19)) | (v22 << 6)), v41);
    sub_197421420(v41, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B170, &qword_19752D118);
    v24 = swift_dynamicCast();
    v25 = *v21;
    if (v24)
    {
      v25(v5, 0, 1, v6);
      v26 = v5;
      v27 = v37;
      sub_19740B38C(v26, v37);
      v28 = v6;
      v29 = v39;
      sub_19741598C(v27, v39);
      v30 = v38;
      v31 = v29;
      v6 = v28;
      sub_19747D408(v38, v31);
      v32 = v30;
      v21 = v35;
      sub_19740B2C8(v32);
      v33 = v27;
      v5 = v36;
      sub_19740B2C8(v33);
    }

    else
    {
      v25(v5, 1, 1, v6);
      sub_1974454C0(v5, &qword_1EAF2AF30, &qword_19752C6A0);
    }

    v19 &= v19 - 1;
    sub_197414BEC(v41);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      return;
    }

    v19 = *(v16 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_197472F34(void *a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_197522A5C(), __swift_project_boxed_opaque_existential_1(a1, a1[3]), sub_1975216BC(), v4 = sub_197522A9C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      sub_197414BA4(*(a2 + 48) + 40 * v6, v12);
      v8 = v13;
      v9 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v10 = sub_19749BC0C(a1, v8, v9);
      sub_197414BEC(v12);
      if (v10)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_197473058(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_19752213C();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (sub_19752202C(), v5 = sub_1975216AC(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
    {
      v8 = ~v6;
      do
      {
        v9 = sub_19752173C();
        if (v9)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }
}

uint64_t sub_197473184(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v4 = sub_19752213C();

    return v4 & 1;
  }

  if (*(a2 + 16))
  {
    sub_197522A5C();
    swift_beginAccess();

    sub_19752180C();

    v6 = sub_197522A9C();
    v7 = -1 << *(a2 + 32);
    v8 = v6 & ~v7;
    if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v9 = ~v7;
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      do
      {
        v10 = *(*(a2 + 48) + 8 * v8);
        swift_beginAccess();
        v11 = v10[2] == a1[2] && v10[3] == a1[3];
        if (!v11 && (sub_19752282C() & 1) == 0)
        {
          goto LABEL_7;
        }

        swift_beginAccess();
        v12 = v10[6];
        v13 = a1[6];
        if (v12)
        {
          if (!v13)
          {
            goto LABEL_7;
          }

          v14 = v10[5] == a1[5] && v12 == v13;
          if (!v14 && (sub_19752282C() & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        else if (v13)
        {
          goto LABEL_7;
        }

        swift_beginAccess();
        v15 = v10[10];
        v16 = a1[10];

        v17 = sub_197415D98(v15, v16);

        if (v17 & 1) != 0 && (swift_beginAccess(), v18 = v10[11], v19 = a1[11], , , v20 = sub_19741616C(v18, v19), , , (v20))
        {
          swift_beginAccess();
          v21 = v10[4];
          v22 = a1[4];

          v23 = sub_197416704(v21, v22);

          if (v23)
          {
            return 1;
          }
        }

        else
        {
        }

LABEL_7:
        v8 = (v8 + 1) & v9;
      }

      while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_197473494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = a3;
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v24);
  v6 = v24;
  if (v25)
  {
    if (v25 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v6, 1);
      sub_197452CB8(&v26);
      sub_1974028C8(v6, 1);
      sub_1974028C8(v6, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v6, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v6, 2);
      sub_1974028C8(v6, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v6, 0);
    sub_197521F4C();
    sub_1974028C8(v6, 0);
    sub_1974028C8(v6, 0);
  }

  v8 = sub_197522A9C();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  v21 = v3 + 56;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v19 = ~v9;
  v20 = v3;
  while (1)
  {
    v11 = *(*(v3 + 48) + 16 * v10 + 8);
    v12 = swift_getObjectType();
    swift_unknownObjectRetain();
    v22 = v12;
    v23 = v11;
    PersistentModel.persistentModelID.getter(v12, v11, &v26);
    v13 = v26;
    v14 = v27;
    PersistentModel.persistentModelID.getter(ObjectType, a2, &v24);
    v15 = v24;
    LOBYTE(v11) = v25;
    v16 = sub_19742291C(v13, v14, v24, v25);
    sub_1974028C8(v15, v11);
    sub_1974028C8(v13, v14);
    if ((v16 & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = PersistentModel.modelContext.getter(v22, v23);
    v18 = PersistentModel.modelContext.getter(ObjectType, a2);
    swift_unknownObjectRelease();
    if (!v17)
    {
      break;
    }

    if (!v18)
    {
      goto LABEL_18;
    }

    if (v17 == v18)
    {
      return 1;
    }

LABEL_11:
    v3 = v20;
    v10 = (v10 + 1) & v19;
    if (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  if (v18)
  {
LABEL_18:

    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_1974737C8@<X0>(void *a2@<X8>)
{
  v5 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();

  sub_197472C38(v3);

  *a2 = v5;
  return result;
}

uint64_t sub_197473844()
{
  v2 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();

  sub_197472C38(v0);

  return v2;
}

void (*sub_1974738B8(uint64_t a1))(uint64_t a1, char a2, __n128 a3)
{
  v4 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();

  sub_197472C38(v2);

  *(a1 + 24) = v4;
  return sub_19747394C;
}

void sub_19747394C(uint64_t a1, char a2, __n128 a3)
{
  if (a2)
  {

    sub_197480890(v3);
  }

  else
  {
    v4 = *(a1 + 24);

    sub_197480890(v4);
  }
}

uint64_t sub_1974739B0()
{
  sub_197522A5C();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_1975216BC();
  return sub_197522A9C();
}

uint64_t sub_197473A60(uint64_t a1)
{
  sub_197522A5C();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1975216BC();
  return sub_197522A9C();
}

uint64_t sub_197473AC0(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return sub_19749BC0C(a2, v3, v4) & 1;
}

uint64_t sub_197473B10()
{
  if (*(v0 + 64) || (v1 = v0, type metadata accessor for ModelContext(0), swift_allocObject(), v2 = , v3 = sub_19740B6EC(v2), , sub_1974B05A8(), *(v1 + 64) = v3, , (result = *(v1 + 64)) != 0))
  {
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197473B90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

double sub_197473BF0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_197473C28(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t ModelContainer.__allocating_init(for:migrationPlan:configurations:)(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v11 = 1uLL;
  type metadata accessor for Schema();
  v12 = 0;
  swift_allocObject();
  v8 = Schema.init(_:version:)(a1, &v11);
  type metadata accessor for ModelContainer();
  v9 = swift_allocObject();
  ModelContainer.init(for:migrationPlan:configurations:)(v8, a2, a3, a4);
  return v9;
}

void *sub_197473DF4(char *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v250 = a7;
  v245 = a6;
  v235 = a5;
  v241 = a4;
  v240 = a3;
  v239 = a2;
  v251 = a1;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE48, &unk_19752C0B0);
  v9 = MEMORY[0x1EEE9AC00](v233, v8);
  v234 = &v223 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v232 = &v223 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v231 = &v223 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v237 = &v223 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v238 = &v223 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v223 - v24;
  v26 = sub_1975212CC();
  v246 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v230 = &v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v253 = &v223 - v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  v254 = &v223 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF30, &qword_19752C6A0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = &v223 - v37;
  v39 = type metadata accessor for ModelConfiguration(0);
  v40 = *(v39 - 8);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v243 = &v223 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v47 = &v223 - v46;
  v49 = MEMORY[0x1EEE9AC00](v45, v48);
  v51 = &v223 - v50;
  v53 = MEMORY[0x1EEE9AC00](v49, v52);
  v55 = &v223 - v54;
  MEMORY[0x1EEE9AC00](v53, v56);
  v248 = &v223 - v57;
  v249 = v7;
  v7[5] = MEMORY[0x1E69E7CD0];
  v58 = v7 + 5;
  v58[1] = MEMORY[0x1E69E7CC0];
  v229 = v58 + 1;
  v58[2] = MEMORY[0x1E69E7CC8];
  v228 = v58 + 2;
  v244 = v58;
  v58[3] = 0;
  _SD_Initialize_framework();
  sub_197404790(v250, v38, &qword_1EAF2AF30, &qword_19752C6A0);
  v236 = v40;
  v59 = v40;
  v60 = v246;
  v61 = *(v59 + 48);
  v247 = v39;
  v62 = v61(v38, 1, v39);
  v242 = v26;
  if (v62 == 1)
  {
    sub_1974454C0(v38, &qword_1EAF2AF30, &qword_19752C6A0);
    sub_197404790(v245, v25, &qword_1EAF2AE78, &qword_19752C290);
    v63 = &off_1E74AD000;
    if ((v60[6])(v25, 1, v26) == 1)
    {
      sub_1974454C0(v25, &qword_1EAF2AE78, &qword_19752C290);
      v64 = v247;
      v65 = v247[10];
      *&v51[v247[15]] = 0;
      v66 = &v51[v64[5]];
      *v66 = 0x746C7561666564;
      *(v66 + 1) = 0xE700000000000000;
      v67 = v251;
      *&v51[v65] = v251;
      v51[v64[11]] = 1;
      v68 = &v51[v64[8]];
      *v68 = 1;
      *(v68 + 1) = 0;
      *(v68 + 2) = 0;
      v69 = &v51[v64[9]];
      *v69 = 1;
      *(v69 + 1) = 0;
      *(v69 + 2) = 0;
      v51[v64[13]] = 0;
      v70 = v64[12];
      if (v241)
      {
        v51[v70] = 1;
        v51[v64[14]] = 0;

        sub_19752122C();
        v71 = &v51[v64[6]];
        *v71 = 0;
        *(v71 + 1) = 0;
      }

      else
      {
        v51[v70] = 0;
        v51[v64[14]] = 1;
        v95 = v233;
        v96 = v232;
        v97 = &v232[*(v233 + 48)];
        v98 = &v232[*(v233 + 64)];
        LOWORD(v255) = 1;
        *&v256 = 0;
        *(&v255 + 1) = 0;

        *v97 = sub_197461664(v96, &v255);
        v97[1] = v99;
        *v98 = v100;
        *(v98 + 1) = v101;
        v102 = v234;
        sub_197404790(v96, v234, &qword_1EAF2AE48, &unk_19752C0B0);

        v103 = v246;
        v104 = v242;
        (v246)[4](v51, v102, v242);
        *&v255 = 0x746C7561666564;
        *(&v255 + 1) = 0xE700000000000000;
        MEMORY[0x19A8DFF80](0x65726F74732ELL, 0xE600000000000000);
        sub_19752125C();

        v105 = v96;
        v63 = &off_1E74AD000;
        sub_197480DA8(v105, v102);
        v106 = (v102 + *(v95 + 48));
        v107 = *v106;
        v108 = v106[1];

        v109 = &v51[v247[6]];
        *v109 = v107;
        *(v109 + 1) = v108;
        v110 = v104;
        v64 = v247;
        (v103[1])(v102, v110);
      }

      v111 = [objc_opt_self() v63[324]];
      sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
      v113 = v112;

      v114 = 0;
      v115 = 0;
      if ((v113 & 1) == 0)
      {
        v114 = sub_1974A98BC();
      }

      v116 = &v51[v64[7]];
      *v116 = v114;
      v116[1] = v115;
    }

    else
    {
      v74 = v254;
      (v60)[4](v254, v25, v26);
      v75 = v60[2];
      v76 = v253;
      v75(v253, v74, v26);
      v77 = v247;
      v78 = v247[10];
      *&v47[v247[15]] = 0;
      v79 = &v47[v77[5]];
      *v79 = 0x746C7561666564;
      *(v79 + 1) = 0xE700000000000000;
      v67 = v251;
      *&v47[v78] = v251;
      v75(v47, v76, v26);
      v47[v77[14]] = 0;

      sub_19752128C();
      v80 = sub_19752188C();

      v47[v77[12]] = v80 & 1;
      v47[v77[11]] = 1;
      v81 = &v47[v77[6]];
      *v81 = 0;
      *(v81 + 1) = 0;
      v82 = &v47[v77[8]];
      *v82 = 256;
      *(v82 + 1) = 0;
      *(v82 + 2) = 0;
      v47[v77[13]] = 0;
      v83 = &v47[v77[9]];
      *v83 = 1;
      *(v83 + 1) = 0;
      *(v83 + 2) = 0;
      v84 = [objc_opt_self() processInfo];
      sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
      v86 = v85;

      v87 = 0;
      v88 = 0;
      if ((v86 & 1) == 0)
      {
        v87 = sub_1974A98BC();
        v88 = v89;
      }

      v90 = v246[1];
      v91 = v76;
      v92 = v242;
      v90(v91, v242);
      v90(v254, v92);
      v93 = v247;
      v94 = &v47[v247[7]];
      *v94 = v87;
      v94[1] = v88;
      v51 = v47;
      v64 = v93;
    }

    v72 = v249;
    v73 = v248;
  }

  else
  {
    sub_19740B38C(v38, v55);
    v51 = v55;
    v72 = v249;
    v67 = v251;
    v73 = v248;
    v64 = v247;
  }

  sub_19740B38C(v51, v73);
  v261 = v64;
  v262 = sub_197413D04(&qword_1ED7C9B58, type metadata accessor for ModelConfiguration, &protocol conformance descriptor for ModelConfiguration);
  v117 = __swift_allocate_boxed_opaque_existential_1(&v260);
  sub_19741598C(v73, v117);
  v118 = v244;
  swift_beginAccess();
  v119 = *v118;

  v120 = sub_197472F34(&v260, v119);

  if (v120)
  {
    if (qword_1EAF2AD40 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_16;
  }

  v125 = v64[10];
  v126 = *(v73 + v125);
  if (v126)
  {
    v127 = *(v126 + 64);
    if (v127 >> 62)
    {
      v222 = *(v73 + v125);
      v128 = sub_1975220EC();
      v126 = v222;
    }

    else
    {
      v128 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v234 = v126;

    if (v128)
    {
      v129 = 0;
      v72 = (v127 & 0xFFFFFFFFFFFFFF8);
      v73 = &v255;
      do
      {
        if ((v127 & 0xC000000000000001) != 0)
        {
          v131 = MEMORY[0x19A8E0960](v129, v127);
          v130 = v131;
          v133 = v129 + 1;
          if (__OFADD__(v129, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v129 >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

          v130 = *(v127 + 8 * v129 + 32);

          v133 = v129 + 1;
          if (__OFADD__(v129, 1))
          {
LABEL_31:
            __break(1u);
            break;
          }
        }

        *&v255 = v130;
        MEMORY[0x1EEE9AC00](v131, v132);
        *(&v223 - 2) = &v255;
        v134 = v252;
        if ((sub_1974159FC(sub_197480F48, (&v223 - 4), v135) & 1) == 0)
        {

          v72 = v249;
          v73 = v248;
          if (qword_1EAF2AD58 != -1)
          {
            swift_once();
          }

          v158 = byte_1EAF2B788;
          v160 = qword_1EAF2B790;
          v159 = unk_1EAF2B798;
          sub_19744BE3C();
          swift_allocError();
          *v161 = v158;
          *(v161 + 8) = v160;
          *(v161 + 16) = v159;
          swift_willThrow();

          goto LABEL_17;
        }

        v252 = v134;

        ++v129;
      }

      while (v133 != v128);
    }

    v72 = v249;
    v67 = v251;
    v73 = v248;
  }

  else
  {
    *(v73 + v125) = v67;

    v234 = v67;
  }

  v72[2] = v67;
  v263 = MEMORY[0x1E69E7CD0];
  v136 = *(v67 + 8);
  if (v136 >> 62)
  {
    v137 = sub_1975220EC();
  }

  else
  {
    v137 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v138 = MEMORY[0x1E69E7CC8];
  if (!v137)
  {
    v147 = MEMORY[0x1E69E7CD0];
LABEL_48:

    v72[9] = v147;
    v72[10] = v138;
    v148 = v240;
    v72[3] = v239;
    v72[4] = v148;
    v149 = v261;
    v150 = v262;
    __swift_project_boxed_opaque_existential_1(&v260, v261);
    v151 = *(v150 + 64);
    v254 = v147;

    v152 = v252;
    v151(v149, v150);
    if (v152)
    {

      sub_1974454C0(v250, &qword_1EAF2AF30, &qword_19752C6A0);
      sub_1974454C0(v245, &qword_1EAF2AE78, &qword_19752C290);
LABEL_76:
      sub_197414BEC(&v260);

      sub_19740B2C8(v73);

      return v72;
    }

    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFF8, &unk_19752D470);
    v154 = *(v236 + 80);
    v155 = (v154 + 32) & ~v154;
    v236 = *(v236 + 72);
    v232 = v154;
    v156 = swift_allocObject();
    v227 = xmmword_19752C280;
    *(v156 + 16) = xmmword_19752C280;
    sub_19741598C(v73, v156 + v155);
    v157 = v251;

    swift_setDeallocating();
    sub_19740B2C8(v156 + v155);
    swift_deallocClassInstance();
    sub_197414BA4(&v260, &v259);
    swift_beginAccess();
    sub_197419B14(&v255, &v259);
    swift_endAccess();
    sub_197414BEC(&v255);
    v233 = v138;
    v252 = 0;
    v240 = v155;
    v239 = v153;
    if (v234)
    {
      v253 = v234;
    }

    else
    {

      v253 = v157;
    }

    v162 = v246;
    v163 = v72[4];
    v246 = v72[3];
    v244 = v163;
    v164 = v162;
    v165 = v238;
    v166 = v242;
    v224 = v162[2];
    v224(v238, v73, v242);
    v167 = v164[7];
    v167(v165, 0, 1, v166);
    sub_19741598C(v73, v243);
    type metadata accessor for DefaultStore(0);
    v168 = swift_allocObject();
    *(v168 + 40) = 0;
    v223 = OBJC_IVAR____TtC9SwiftData12DefaultStore_requestedStoreURL;
    v225 = v167;
    v167(v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore_requestedStoreURL, 1, 1, v166);
    *(v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore_hasSpotlight) = 0;
    *(v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore_model) = 0;
    *(v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription) = 0;
    *(v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore_store) = 0;
    *(v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore_errorOnLoad) = 0;
    v226 = OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager;
    *(v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager) = 0;
    v169 = (v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationPlan);
    v170 = (v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore__managedObjectContextFactory);
    *v169 = 0;
    v169[1] = 0;
    v171 = type metadata accessor for DefaultStore.DefaultManagedObjectContextFactory();
    v172 = swift_allocObject();
    v170[3] = v171;
    v170[4] = &off_1F0BA5A68;
    *v170 = v172;
    v173 = OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
    v174 = swift_allocObject();
    *(v174 + 16) = 0;
    *(v168 + v173) = v174;
    *(v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier) = MEMORY[0x1E69E7CC8];
    *(v168 + 16) = 0x746C7561666564;
    *(v168 + 24) = 0xE700000000000000;
    v175 = v253;
    *(v168 + 32) = v253;
    *(v168 + 40) = v241 & 1;
    *(v168 + 41) = 0;
    v176 = v237;
    sub_197404790(v165, v237, &qword_1EAF2AE78, &qword_19752C290);
    if ((v164[6])(v176, 1, v166) == 1)
    {

      sub_1974454C0(v176, &qword_1EAF2AE78, &qword_19752C290);
    }

    else
    {
      v177 = v230;
      (v164)[4](v230, v176, v166);
      v178 = v231;
      v224(v231, v177, v166);
      v225(v178, 0, 1, v166);
      v179 = v223;
      swift_beginAccess();

      sub_1973F6E44(v178, v168 + v179, &qword_1EAF2AE78, &qword_19752C290);
      swift_endAccess();
      sub_19752128C();
      LOBYTE(v179) = sub_19752188C();

      (v164[1])(v177, v166);
      if (v179)
      {
        *(v168 + 40) = 1;
      }
    }

    v180 = v244;
    *v169 = v246;
    v169[1] = v180;
    v181 = *(v168 + v226);
    *(v168 + v226) = 0;

    v182 = v243;
    v183 = *(v243 + v247[7] + 8);
    v184 = v240;
    v185 = swift_allocObject();
    *(v185 + 16) = v227;
    sub_19741598C(v182, v185 + v184);
    v186 = sub_19741A1AC(v175, v185);
    swift_setDeallocating();
    sub_19740B2C8(v185 + v184);
    result = swift_deallocClassInstance();
    v188 = v252;
    if (!v186)
    {
      __break(1u);
      return result;
    }

    v189 = 0x1E695D688;
    if (v183)
    {
      v189 = 0x1E695D668;
    }

    v190 = objc_allocWithZone(*v189);
    v191 = sub_19752178C();
    v192 = [v190 initWithName:v191 managedObjectModel:v186];

    sub_19744CC00(0, &qword_1ED7C9B90, 0x1E695D6C8);
    v193 = v192;
    v194 = sub_1975219BC();
    [v193 setPersistentStoreDescriptions_];

    *(v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) = v193;
    v195 = *(v168 + 32);
    v196 = v193;

    v246 = v196;
    v72 = [v196 persistentStoreCoordinator];
    v73 = *(v195 + 64);
    if (v73 >> 62)
    {
      v197 = sub_1975220EC();
    }

    else
    {
      v197 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v247 = v186;
    if (v197)
    {
      if (v197 < 1)
      {
        __break(1u);
        goto LABEL_91;
      }

      for (i = 0; i != v197; ++i)
      {
        if ((v73 & 0xC000000000000001) != 0)
        {
          MEMORY[0x19A8E0960](i, v73);
        }

        else
        {
        }

        sub_19750E574();
      }

      v188 = v252;
    }

    else
    {
    }

    v199 = sub_19741598C(v243, v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration);
    v200 = MEMORY[0x19A8E1370](v199);
    v201 = [*(v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) managedObjectModel];
    v202 = *(v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore_model);
    *(v168 + OBJC_IVAR____TtC9SwiftData12DefaultStore_model) = v201;
    v203 = v201;

    v204 = v235;
    v205 = sub_1974085B0(v203, v235 & 1);
    v72 = v249;
    v73 = v248;
    if (v188)
    {

      objc_autoreleasePoolPop(v200);
      v206 = v245;
      v207 = v247;

      sub_1974454C0(v250, &qword_1EAF2AF30, &qword_19752C6A0);
      sub_1974454C0(v206, &qword_1EAF2AE78, &qword_19752C290);
      sub_1974454C0(v238, &qword_1EAF2AE78, &qword_19752C290);
      sub_19740B2C8(v243);
      goto LABEL_76;
    }

    v208 = v205;

    objc_autoreleasePoolPop(v200);
    if ((v204 & 1) == 0)
    {
      sub_19740C0A4();
    }

    v195 = v245;
    v197 = v229;
    v209 = v247;

    sub_1974454C0(v238, &qword_1EAF2AE78, &qword_19752C290);
    sub_19740B2C8(v243);
    v210 = sub_197413D04(&qword_1ED7C9B80, type metadata accessor for DefaultStore, &protocol conformance descriptor for DefaultStore);
    sub_197414BA4(&v260, &v255);
    *(&v257 + 1) = v168;
    v258 = v210;
    swift_beginAccess();
    v193 = *v197;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v197 = v193;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_81:
      v213 = v193[2];
      v212 = v193[3];
      if (v213 >= v212 >> 1)
      {
        v193 = sub_19740D174((v212 > 1), v213 + 1, 1, v193);
      }

      v193[2] = v213 + 1;
      v214 = &v193[7 * v213];
      v215 = v255;
      v216 = v256;
      v217 = v257;
      v214[10] = v258;
      *(v214 + 3) = v216;
      *(v214 + 4) = v217;
      *(v214 + 2) = v215;
      v72[6] = v193;
      swift_endAccess();
      v218 = DefaultStore.identifier.getter();
      v220 = v219;
      swift_beginAccess();

      v221 = swift_isUniquelyReferenced_nonNull_native();
      v259 = v72[7];
      v72[7] = 0x8000000000000000;
      sub_19748064C(v168, v218, v220, v221, &v259);

      v72[7] = v259;
      swift_endAccess();
      sub_19740CEC0();

      sub_1974454C0(v250, &qword_1EAF2AF30, &qword_19752C6A0);
      sub_1974454C0(v195, &qword_1EAF2AE78, &qword_19752C290);
      sub_197414BEC(&v260);

      sub_19740B2C8(v73);
      return v72;
    }

LABEL_91:
    v193 = sub_19740D174(0, v193[2] + 1, 1, v193);
    *v197 = v193;
    goto LABEL_81;
  }

  v139 = 0;
  v254 = (v136 & 0xC000000000000001);
  v253 = (v136 & 0xFFFFFFFFFFFFFF8);
  while (v254)
  {
    v140 = MEMORY[0x19A8E0960](v139, v136);
    v141 = v139 + 1;
    if (__OFADD__(v139, 1))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      v147 = v263;
      v72 = v249;
      v73 = v248;
      goto LABEL_48;
    }

LABEL_41:
    swift_beginAccess();
    v142 = v138;
    v143 = *(v140 + 16);
    v144 = *(v140 + 24);

    v73 = v136;
    sub_197414EA0(&v255, v143, v144);

    v145 = *(v140 + 16);
    v72 = *(v140 + 24);

    v146 = swift_isUniquelyReferenced_nonNull_native();
    *&v255 = v142;
    sub_1973F883C(v140, v145, v72, v146, &qword_1EAF2B380, &qword_19752D538, sub_1973FB840);

    v138 = v255;
    ++v139;
    if (v141 == v137)
    {
      goto LABEL_46;
    }
  }

  if (v139 < *(v253 + 2))
  {
    v140 = *(v136 + 8 * v139 + 32);

    v141 = v139 + 1;
    if (__OFADD__(v139, 1))
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  swift_once();
LABEL_16:
  v121 = byte_1EAF2B740;
  v123 = qword_1EAF2B748;
  v122 = unk_1EAF2B750;
  sub_19744BE3C();
  swift_allocError();
  *v124 = v121;
  *(v124 + 8) = v123;
  *(v124 + 16) = v122;
  swift_willThrow();

LABEL_17:

  sub_1974454C0(v250, &qword_1EAF2AF30, &qword_19752C6A0);
  sub_1974454C0(v245, &qword_1EAF2AE78, &qword_19752C290);
  sub_197414BEC(&v260);
  sub_19740B2C8(v73);

  type metadata accessor for ModelContainer();
  swift_deallocPartialClassInstance();
  return v72;
}

uint64_t ModelContainer.__allocating_init(for:configurations:)(uint64_t a1, unint64_t a2)
{
  v7 = 1uLL;
  type metadata accessor for Schema();
  v8 = 0;
  swift_allocObject();
  v4 = Schema.init(_:version:)(a1, &v7);
  type metadata accessor for ModelContainer();
  v5 = swift_allocObject();
  ModelContainer.init(for:configurations:)(v4, a2);
  return v5;
}

{
  v4 = swift_allocObject();
  ModelContainer.init(for:configurations:)(a1, a2);
  return v4;
}

void *ModelContainer.init(for:configurations:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF30, &qword_19752C6A0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v126 - v7;
  v134 = type metadata accessor for ModelConfiguration(0);
  v132 = *(v134 - 8);
  v10 = MEMORY[0x1EEE9AC00](v134, v9);
  v130 = v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v129 = v126 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v127 = (v126 - v16);
  v17 = MEMORY[0x1E69E7CD0];
  *(v2 + 40) = MEMORY[0x1E69E7CD0];
  v18 = v2 + 40;
  *(v2 + 48) = MEMORY[0x1E69E7CC0];
  v19 = v2 + 48;
  *(v2 + 56) = MEMORY[0x1E69E7CC8];
  v128 = (v2 + 56);
  *(v2 + 64) = 0;
  _SD_Initialize_framework();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  v155 = v17;
  v139 = a1;
  v20 = *(a1 + 64);
  if (v20 >> 62)
  {
    goto LABEL_101;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v131 = v8;
    v126[0] = v19;

    v138 = v2;
    v136 = v18;
    if (!v21)
    {
      v8 = MEMORY[0x1E69E7CC8];
      v29 = MEMORY[0x1E69E7CD0];
      goto LABEL_15;
    }

    v137 = a2;
    v18 = 0;
    v141 = v20 & 0xFFFFFFFFFFFFFF8;
    v142 = v20 & 0xC000000000000001;
    v8 = MEMORY[0x1E69E7CC8];
    v140 = v20;
    while (v142)
    {
      v22 = MEMORY[0x19A8E0960](v18, v20);
      v23 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_12;
      }

LABEL_8:
      swift_beginAccess();
      a2 = v21;
      v24 = v8;
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);

      sub_197414EA0(&v145, v25, v26);

      v27 = *(v22 + 16);
      v19 = *(v22 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v145 = v24;
      v21 = a2;
      v2 = &v145;
      sub_1973F883C(v22, v27, v19, isUniquelyReferenced_nonNull_native, &qword_1EAF2B380, &qword_19752D538, sub_1973FB840);

      v8 = v145;
      ++v18;
      v20 = v140;
      if (v23 == a2)
      {
        goto LABEL_13;
      }
    }

    if (v18 >= *(v141 + 16))
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v22 = *(v20 + 8 * v18 + 32);

    v23 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v29 = v155;
    a2 = v137;
    v2 = v138;
    v18 = v136;
LABEL_15:

    *(v2 + 72) = v29;
    *(v2 + 80) = v8;
    v30 = *(a2 + 16);

    v135 = v8;
    v133 = v30;
    v126[1] = v29;
    if (!v30)
    {
      ModelConfiguration.init(isStoredInMemoryOnly:)(0, v127);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_1973F8160(0, *(a2 + 16) + 1, 1, a2, &qword_1EAF2B3F0, &qword_19752D5B0, &qword_1EAF2B170, &qword_19752D118);
      }

      v32 = *(a2 + 16);
      v31 = *(a2 + 24);
      v33 = v134;
      if (v32 >= v31 >> 1)
      {
        v125 = sub_1973F8160((v31 > 1), v32 + 1, 1, a2, &qword_1EAF2B3F0, &qword_19752D5B0, &qword_1EAF2B170, &qword_19752D118);
        v33 = v134;
        a2 = v125;
      }

      *(&v146 + 1) = v33;
      *&v147 = sub_197413D04(&qword_1ED7C9B58, type metadata accessor for ModelConfiguration, &protocol conformance descriptor for ModelConfiguration);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v145);
      v35 = v127;
      sub_19741598C(v127, boxed_opaque_existential_1);
      *(a2 + 16) = v32 + 1;
      sub_1973FA938(&v145, a2 + 40 * v32 + 32);
      sub_19740B2C8(v35);
      v133 = *(a2 + 16);
      if (!v133)
      {

        v20 = MEMORY[0x1E69E7CC0];
        if (!*(MEMORY[0x1E69E7CC0] + 16))
        {
          goto LABEL_66;
        }

        goto LABEL_63;
      }
    }

    v140 = a2 + 32;
    swift_beginAccess();
    v2 = 0;
    v127 = (v132 + 56);
    v20 = MEMORY[0x1E69E7CC0];
    v137 = a2;
LABEL_22:
    if (v2 >= *(a2 + 16))
    {
      goto LABEL_100;
    }

    v142 = v20;
    sub_197421420(v140 + 40 * v2, &v152);
    sub_197421420(&v152, &v149);
    v19 = *v18;
    v36 = *(*v18 + 16);
    v141 = v2;
    if (!v36)
    {
LABEL_29:
      v43 = *(&v150 + 1);
      v44 = v151;
      v2 = __swift_project_boxed_opaque_existential_1(&v149, *(&v150 + 1));
      v45 = (*(v44 + 40))(v43, v44);
      if (v45)
      {
        v126[2] = v45;
        a2 = *(v45 + 64);
        if (a2 >> 62)
        {
          v46 = sub_1975220EC();
        }

        else
        {
          v46 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v46)
        {
          v19 = 0;
          v20 = a2 & 0xC000000000000001;
          v18 = a2 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v20)
            {
              v48 = MEMORY[0x19A8E0960](v19, a2);
              v47 = v48;
              v8 = (v19 + 1);
              if (__OFADD__(v19, 1))
              {
                goto LABEL_97;
              }
            }

            else
            {
              if (v19 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_98;
              }

              v47 = *(a2 + 8 * v19 + 32);

              v8 = (v19 + 1);
              if (__OFADD__(v19, 1))
              {
                goto LABEL_97;
              }
            }

            v2 = v126;
            *&v145 = v47;
            MEMORY[0x1EEE9AC00](v48, v49);
            v126[-2] = &v145;
            v50 = v156;
            v52 = sub_1974159FC(sub_197480F2C, &v126[-4], v51);
            v156 = v50;
            if ((v52 & 1) == 0)
            {
              break;
            }

            ++v19;
            if (v8 == v46)
            {
              goto LABEL_43;
            }
          }

          if (qword_1EAF2AD58 != -1)
          {
            swift_once();
          }

          v70 = byte_1EAF2B788;
          v72 = qword_1EAF2B790;
          v71 = unk_1EAF2B798;
          sub_19744BE3C();
          swift_allocError();
          *v73 = v70;
          *(v73 + 8) = v72;
          *(v73 + 16) = v71;
          swift_willThrow();

          v59 = v138;

          __swift_destroy_boxed_opaque_existential_1Tm_0(&v152);
          sub_197414BEC(&v149);

          goto LABEL_61;
        }

LABEL_43:

        v8 = v135;
        v18 = v136;
        a2 = v137;
      }

      else
      {
        v53 = *(&v150 + 1);
        v54 = v151;
        __swift_mutable_project_boxed_opaque_existential_1(&v149, *(&v150 + 1));
        v19 = *(v54 + 48);

        (v19)(v55, v53, v54);
      }

      v56 = *(&v150 + 1);
      v57 = v151;
      __swift_project_boxed_opaque_existential_1(&v149, *(&v150 + 1));
      v58 = v156;
      (*(v57 + 64))(v56, v57);
      v59 = v138;
      v20 = v142;
      if (v58)
      {
        __swift_destroy_boxed_opaque_existential_1Tm_0(&v152);

        sub_197414BEC(&v149);

LABEL_61:

        return v59;
      }

      v156 = 0;
      sub_197414BA4(&v149, v144);
      swift_beginAccess();
      sub_197419B14(&v145, v144);
      swift_endAccess();
      sub_197414BEC(&v145);
      sub_197421420(&v152, &v145);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B170, &qword_19752D118);
      v60 = v131;
      v61 = v134;
      if (swift_dynamicCast())
      {
        (*v127)(v60, 0, 1, v61);
        v62 = v60;
        v63 = v129;
        sub_19740B38C(v62, v129);
        sub_19741598C(v63, v130);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1974773F8(0, *(v20 + 16) + 1, 1, v20, &qword_1EAF2AFF8, &unk_19752D470, type metadata accessor for ModelConfiguration);
        }

        v65 = *(v20 + 16);
        v64 = *(v20 + 24);
        if (v65 >= v64 >> 1)
        {
          v20 = sub_1974773F8((v64 > 1), v65 + 1, 1, v20, &qword_1EAF2AFF8, &unk_19752D470, type metadata accessor for ModelConfiguration);
        }

        sub_19740B2C8(v129);
        __swift_destroy_boxed_opaque_existential_1Tm_0(&v152);
        *(v20 + 16) = v65 + 1;
        sub_19740B38C(v130, v20 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v65);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm_0(&v152);
        (*v127)(v60, 1, 1, v61);
        sub_1974454C0(v60, &qword_1EAF2AF30, &qword_19752C6A0);
      }

      v2 = v141 + 1;
      sub_197414BEC(&v149);
      if (v2 == v133)
      {

        if (!*(v20 + 16))
        {
LABEL_66:

LABEL_67:
          swift_beginAccess();
          v75 = *v18 + 56;
          v76 = 1 << *(*v18 + 32);
          v77 = -1;
          if (v76 < 64)
          {
            v77 = ~(-1 << v76);
          }

          v78 = v77 & *(*v18 + 56);
          v2 = (v76 + 63) >> 6;
          v140 = *v18;

          a2 = 0;
          v136 = v2;
          v137 = v75;
LABEL_72:
          if (!v78)
          {
            while (1)
            {
              v81 = a2 + 1;
              if (__OFADD__(a2, 1))
              {
                break;
              }

              if (v81 >= v2)
              {

                v59 = v138;
                sub_19740CEC0();

                return v59;
              }

              v78 = *(v75 + 8 * v81);
              ++a2;
              if (v78)
              {
                a2 = v81;
                goto LABEL_77;
              }
            }

LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            v21 = sub_1975220EC();
            continue;
          }

LABEL_77:
          sub_197414BA4(*(v140 + 48) + 40 * (__clz(__rbit64(v78)) | (a2 << 6)), &v152);
          v149 = v152;
          v150 = v153;
          v82 = v154;
          v151 = v154;
          v83 = *(&v153 + 1);
          v84 = __swift_project_boxed_opaque_existential_1(&v149, *(&v153 + 1));
          v85 = v138[2];
          v86 = v138[3];
          v87 = v138[4];

          v88 = v84;
          v89 = v156;
          v90 = sub_19740AF04(v88, v85, v86, v87, v83, v82);
          v156 = v89;
          if (v89)
          {
            v59 = v138;

            sub_197414BEC(&v149);

            return v59;
          }

          v92 = v90;
          v93 = v91;

          sub_197414BA4(&v149, &v145);
          *(&v147 + 1) = v92;
          v148 = v93;
          v94 = v126[0];
          swift_beginAccess();
          v95 = *v94;
          swift_unknownObjectRetain();
          v96 = swift_isUniquelyReferenced_nonNull_native();
          *v94 = v95;
          if ((v96 & 1) == 0)
          {
            v95 = sub_19740D174(0, v95[2] + 1, 1, v95);
            *v94 = v95;
          }

          v98 = v95[2];
          v97 = v95[3];
          if (v98 >= v97 >> 1)
          {
            v95 = sub_19740D174((v97 > 1), v98 + 1, 1, v95);
          }

          v95[2] = v98 + 1;
          v99 = &v95[7 * v98];
          v100 = v145;
          v101 = v146;
          v102 = v147;
          v99[10] = v148;
          *(v99 + 3) = v101;
          *(v99 + 4) = v102;
          *(v99 + 2) = v100;
          *v94 = v95;
          swift_endAccess();
          ObjectType = swift_getObjectType();
          v104 = *(v93 + 40);
          v105 = v92;
          v141 = v93;
          v106 = v104(ObjectType, v93);
          v19 = v107;
          v108 = v128;
          swift_beginAccess();
          v142 = v105;
          swift_unknownObjectRetain();
          v109 = swift_isUniquelyReferenced_nonNull_native();
          v143 = *v108;
          v110 = v143;
          *v108 = 0x8000000000000000;
          v112 = sub_1973F4028(v106, v19);
          v113 = *(v110 + 16);
          v114 = (v111 & 1) == 0;
          v115 = v113 + v114;
          if (__OFADD__(v113, v114))
          {
            __break(1u);
            goto LABEL_103;
          }

          v20 = v111;
          if (*(v110 + 24) >= v115)
          {
            if (v109)
            {
              v18 = v143;
              if ((v111 & 1) == 0)
              {
                goto LABEL_89;
              }
            }

            else
            {
              sub_19747B284();
              v18 = v143;
              if ((v20 & 1) == 0)
              {
                goto LABEL_89;
              }
            }
          }

          else
          {
            sub_19740CAD4(v115, v109);
            v116 = sub_1973F4028(v106, v19);
            if ((v20 & 1) != (v117 & 1))
            {
              goto LABEL_105;
            }

            v112 = v116;
            v18 = v143;
            if ((v20 & 1) == 0)
            {
LABEL_89:
              *(v18 + 8 * (v112 >> 6) + 64) |= 1 << v112;
              v118 = (*(v18 + 48) + 16 * v112);
              *v118 = v106;
              v118[1] = v19;
              v119 = (*(v18 + 56) + 16 * v112);
              v120 = v141;
              *v119 = v142;
              v119[1] = v120;
              v121 = *(v18 + 16);
              v122 = __OFADD__(v121, 1);
              v123 = v121 + 1;
              if (v122)
              {
                __break(1u);
LABEL_105:
                result = sub_1975229CC();
                __break(1u);
                return result;
              }

              *(v18 + 16) = v123;
              goto LABEL_71;
            }
          }

          v79 = (*(v18 + 56) + 16 * v112);
          v80 = v141;
          *v79 = v142;
          v79[1] = v80;

          swift_unknownObjectRelease();
LABEL_71:
          v78 &= v78 - 1;
          *v128 = v18;
          swift_endAccess();
          swift_unknownObjectRelease();
          sub_197414BEC(&v149);
          v8 = v135;
          v2 = v136;
          v75 = v137;
          goto LABEL_72;
        }

LABEL_63:
        v74 = sub_19741A1AC(v139, v20);

        goto LABEL_67;
      }

      goto LABEL_22;
    }

    break;
  }

  sub_197522A5C();
  __swift_project_boxed_opaque_existential_1(&v149, *(&v150 + 1));

  sub_1975216BC();
  v37 = sub_197522A9C();
  v38 = -1 << *(v19 + 32);
  v39 = v37 & ~v38;
  if (((*(v19 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
  {
LABEL_28:

    v18 = v136;
    a2 = v137;
    goto LABEL_29;
  }

  v40 = ~v38;
  while (1)
  {
    sub_197414BA4(*(v19 + 48) + 40 * v39, &v145);
    v41 = *(&v146 + 1);
    v42 = v147;
    __swift_project_boxed_opaque_existential_1(&v145, *(&v146 + 1));
    LOBYTE(v41) = sub_19749BC0C(&v149, v41, v42);
    sub_197414BEC(&v145);
    if (v41)
    {
      break;
    }

    v39 = (v39 + 1) & v40;
    if (((*(v19 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (qword_1EAF2AD40 != -1)
  {
LABEL_103:
    swift_once();
  }

  v66 = byte_1EAF2B740;
  v68 = qword_1EAF2B748;
  v67 = unk_1EAF2B750;
  sub_19744BE3C();
  swift_allocError();
  *v69 = v66;
  *(v69 + 8) = v68;
  *(v69 + 16) = v67;
  swift_willThrow();

  v59 = v138;

  __swift_destroy_boxed_opaque_existential_1Tm_0(&v152);
  sub_197414BEC(&v149);

  return v59;
}

uint64_t sub_197476B80()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    do
    {
      sub_197404790(v4, v11, &qword_1EAF2AF38, &qword_19752C6A8);
      v5 = v11[6];
      ObjectType = swift_getObjectType();
      (*(v5 + 72))(ObjectType, v5);
      swift_unknownObjectRelease();
      sub_197414BEC(v11);
      v4 += 56;
      --v3;
    }

    while (v3);
  }

  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = MEMORY[0x1E69E7CC0];

  if (qword_1ED7C9CD8 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED7CE678;
  v11[0] = v7;
  v9 = *(qword_1ED7CE678 + 16);
  os_unfair_lock_lock(v9 + 4);
  sub_19745CCBC(v8, v11, v1);
  os_unfair_lock_unlock(v9 + 4);
}

void sub_197476CFC()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    while (v4 < *(v2 + 16))
    {
      sub_197404790(v5, v8, &qword_1EAF2AF38, &qword_19752C6A8);
      v6 = v8[6];
      ObjectType = swift_getObjectType();
      (*(v6 + 72))(ObjectType, v6);
      if (v1)
      {

        swift_unknownObjectRelease();
        sub_197414BEC(v8);
        return;
      }

      swift_unknownObjectRelease();
      ++v4;
      sub_197414BEC(v8);
      v5 += 56;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t sub_197476E20()
{
  swift_beginAccess();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = MEMORY[0x1E69E7CC0];

  if (qword_1ED7C9CD8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED7CE678;
  v5 = v1;
  v3 = *(qword_1ED7CE678 + 16);
  os_unfair_lock_lock(v3 + 4);
  sub_19745CCBC(v2, &v5, v0);
  os_unfair_lock_unlock(v3 + 4);
}

id static ModelContainer.remoteChange.getter()
{
  if (qword_1ED7C8620 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED7C8628;

  return v1;
}

uint64_t sub_197476F3C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_197476F7C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[1];
      v18 = *v7;
      v19[0] = v9;
      *(v19 + 14) = *(v7 + 30);
      v10 = v7[1];
      v16 = *v7;
      v17[0] = v10;
      *(v17 + 14) = *(v7 + 30);
      sub_19741DE14(&v18, &v14);
      v11 = a1(&v16);
      if (v3)
      {
        break;
      }

      v4 = v11;
      v14 = v16;
      v15[0] = v17[0];
      *(v15 + 14) = *(v17 + 14);
      sub_19741EE34(&v14);
      v12 = v8-- == 0;
      v7 = (v7 + 40);
      if ((v4 | v12))
      {
        return v4 & 1;
      }
    }

    v14 = v16;
    v15[0] = v17[0];
    *(v15 + 14) = *(v17 + 14);
    sub_19741EE34(&v14);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

char *sub_197477094(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B388, &qword_19752D540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1974771C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B430, &qword_19752D5F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1974772DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B348, &qword_19752D4F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1974773F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
  result = _swift_stdlib_malloc_size_0(v17);
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

void *sub_1974775F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B340, &qword_19752D4E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19747772C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B260, &qword_19752D3F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_197477820(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B268, &qword_19752D400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B270, &qword_19752D408);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_197477954(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B248, &qword_19752D3D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B250, &unk_19752D3E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_197477AA4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_197477BC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B438, &qword_19752D5F8);
  result = sub_19752243C();
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
      v20 = 16 * (v17 | (v8 << 6));
      v30 = *(*(v5 + 48) + v20);
      v21 = *(v5 + 56) + v20;
      if (v4)
      {
        sub_197480ED0(v21, v31);
      }

      else
      {
        sub_197480E74(v21, v31);
      }

      sub_197522A5C();
      MEMORY[0x19A8E1190](v30);
      result = sub_197522A9C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      *(*(v7 + 48) + v16) = v30;
      result = sub_197480ED0(v31, *(v7 + 56) + v16);
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

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_197477E60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B188, &qword_19752D318);
  v34 = v4;
  result = sub_19752243C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 16 * v20);
      v24 = v23[1];
      v35 = *v23;
      if ((v34 & 1) == 0)
      {
      }

      sub_19752202C();
      result = sub_1975216AC();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v35;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19747813C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1B8, &qword_19752D348);
  v37 = v4;
  result = sub_19752243C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1974783FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B300, &qword_19752D4A8);
  result = sub_19752243C();
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      sub_197522A5C();
      type metadata accessor for CFRunLoopObserver(0);
      sub_197413D04(&qword_1ED7C7338, type metadata accessor for CFRunLoopObserver, &unk_19752BA6C);
      sub_19752140C();
      result = sub_197522A9C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1974786EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_19752243C();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_197478988(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  result = sub_19752243C();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v4;
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(v7 + 48) + 16 * v23;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v38 & 1) == 0)
      {
        sub_1974028EC(*v24, *(v24 + 8));
      }

      sub_197522A5C();
      if (v26)
      {
        if (v26 == 1)
        {
          MEMORY[0x19A8E1190](1);
          sub_19752180C();
          sub_19752180C();
          if (v25[3])
          {
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          sub_197522A7C();
          v7 = v37;
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v18 = v27;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v18 = v27;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v19 = *(v9 + 48) + 16 * v17;
      *v19 = v25;
      *(v19 + 8) = v26;
      *(*(v9 + 56) + 8 * v17) = v18;
      ++*(v9 + 16);
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_42;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_42:
  *v5 = v9;
  return result;
}

uint64_t sub_197478D8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = sub_1975213EC();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v6);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3A0, &unk_19752FB70);
  v38 = v4;
  result = sub_19752243C();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v17 = (v5 + 32);
    v18 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v41 = *(*(v8 + 48) + 16 * v23);
      v25 = *(v5 + 72);
      v26 = v24 + v25 * v23;
      if (v38)
      {
        (*v17)(v39, v26, v40);
      }

      else
      {
        (*v36)(v39, v26, v40);
      }

      sub_197522A5C();
      MEMORY[0x19A8E1190](v41);
      result = sub_197522A9C();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v10 + 48) + 16 * v19) = v41;
      result = (*v17)(*(v10 + 56) + v25 * v19, v39, v40);
      ++*(v10 + 16);
      v5 = v37;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1974790F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3B0, &qword_19752D570);
  result = sub_19752243C();
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
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_197522A5C();
      MEMORY[0x19A8E1190](v29);
      result = sub_197522A9C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v29;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_197479384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3B8, &qword_19752D578);
  result = sub_19752243C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_197522A4C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1974795F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B438, &qword_19752D5F8);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_197480E74(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_197480ED0(v19, *(v4 + 56) + v17);
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

void sub_197479770()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B188, &qword_19752D318);
  v2 = *v0;
  v3 = sub_19752242C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v19;
        v21[1] = v20;
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
}

void sub_1974798E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B360, &unk_19752D510);
  v2 = *v0;
  v3 = sub_19752242C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v22 = 40 * v17;
        sub_197421420(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1973FA938(v25, *(v4 + 56) + v22);
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
}

void sub_197479AB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1B8, &qword_19752D348);
  v2 = *v0;
  v3 = sub_19752242C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void sub_197479C3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B178, &qword_19752D308);
  v2 = *v0;
  v3 = sub_19752242C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + v17) = v18;
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
}

void *sub_197479DB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B198, &qword_197531230);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_197479F1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B208, &qword_19752D398);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void sub_19747A08C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B288, &qword_19752D420);
  v2 = *v0;
  v3 = sub_19752242C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 *= 40;
        v19 = *(v2 + 56) + v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        *(*(v4 + 48) + v18) = *(*(v2 + 48) + v18);
        v24 = *(v4 + 56) + v17;
        *v24 = v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        *(v24 + 24) = v23;
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
}

void *sub_19747A224()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B300, &qword_19752D4A8);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
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

id sub_19747A39C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B398, &unk_19752D550);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        result = v18;
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

char *sub_19747A4FC()
{
  v1 = v0;
  v34 = sub_19752135C();
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF2B458, &unk_19752FD40);
  v4 = *v0;
  v5 = sub_19752242C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_19747A790()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1D8, &qword_19752D368);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v18 = 16 * v17;
        v19 = *(v2 + 48) + 16 * v17;
        v20 = *v19;
        v17 *= 24;
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v4 + 48) + v18;
        v25 = *(v19 + 8);
        v26 = *(v21 + 16);
        *v24 = *v19;
        *(v24 + 8) = v25;
        v27 = *(v4 + 56) + v17;
        *v27 = v22;
        *(v27 + 8) = v23;
        *(v27 + 16) = v26;
        sub_1974028EC(v20, v25);

        result = sub_1974028EC(v23, v26);
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
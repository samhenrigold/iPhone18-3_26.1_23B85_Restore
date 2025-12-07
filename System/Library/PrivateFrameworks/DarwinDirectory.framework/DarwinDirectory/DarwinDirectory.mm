uint64_t sub_2480CFF30(uint64_t a1)
{
  result = sub_2480CFFE0(&qword_27EE87340, type metadata accessor for LibSystemGroupRecord, &unk_2480DD3F4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2480CFF88(uint64_t a1)
{
  result = sub_2480CFFE0(&qword_27EE87348, type metadata accessor for LibSystemUserRecord, &unk_2480DD45C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2480CFFE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2480D0028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 4);
  *(a2 + 8) = sub_2480DCAAC();
  *(a2 + 16) = v4;
  v5 = type metadata accessor for LibSystemUserRecord(0);
  sub_2480DCA3C();
  v6 = sub_2480DCAAC();
  v7 = (a2 + v5[7]);
  *v7 = v6;
  v7[1] = v8;
  v9 = sub_2480DCAAC();
  v10 = (a2 + v5[8]);
  *v10 = v9;
  v10[1] = v11;
  *(a2 + v5[9]) = *(a1 + 40);
  result = sub_2480DCAAC();
  v13 = (a2 + v5[10]);
  *v13 = result;
  v13[1] = v14;
  *(a2 + v5[11]) = *(a1 + 32);
  return result;
}

uint64_t sub_2480D013C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 4);
  *(a2 + 8) = sub_2480DCAAC();
  *(a2 + 16) = v4;
  v5 = type metadata accessor for LibSystemGroupRecord(0);
  sub_2480DCA3C();
  v6 = 0;
  *(a2 + *(v5 + 32)) = *(a1 + 32);
  v12 = MEMORY[0x277D84FA0];
  while (1)
  {
    result = *(*(a1 + 40) + 8 * v6);
    if (!result)
    {
      break;
    }

    v8 = sub_2480DCAAC();
    sub_2480D3FE0(&v11, v8, v9);

    if (__OFADD__(v6++, 1))
    {
      __break(1u);
      break;
    }
  }

  *(a2 + *(v5 + 28)) = v12;
  return result;
}

id sub_2480D06AC()
{
  v1 = type metadata accessor for Group(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(v0 + v10, v18);
  swift_dynamicCast();
  sub_2480D8A20(&v9[*(v7 + 32)], v6, type metadata accessor for Group);
  sub_2480D8A88(v9, type metadata accessor for User);
  sub_2480D8A20(v6, v4, type metadata accessor for Group);
  v11 = objc_allocWithZone(DDGroup);
  v12 = &v11[OBJC_IVAR___DDGroup__group];
  v12[3] = v1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  sub_2480D8A20(v4, boxed_opaque_existential_0, type metadata accessor for Group);
  v17.receiver = v11;
  v17.super_class = DDGroup;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  sub_2480D8A88(v4, type metadata accessor for Group);
  sub_2480D8A88(v6, type metadata accessor for Group);
  return v14;
}

uint64_t sub_2480D0918(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v7 = type metadata accessor for Group(0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v10 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(&a1[v10], v15);
  swift_dynamicCast();
  v11 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(v2 + v11, v15);
  swift_dynamicCast();
  sub_2480D89BC(v9, &v6[*(v4 + 32)]);
  v16 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  sub_2480D8AE8(v6, boxed_opaque_existential_0, type metadata accessor for User);

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v2 + v11));
  sub_2480D899C(v15, (v2 + v11));
  return swift_endAccess();
}

uint64_t sub_2480D11A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v7 = sub_2480D1680(a1);

  v8 = sub_2480D82C4(v7);

  v9 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(v2 + v9, v13);
  swift_dynamicCast();
  *&v6[*(v4 + 44)] = v8;

  v14 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  sub_2480D8AE8(v6, boxed_opaque_existential_0, type metadata accessor for User);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v2 + v9));
  sub_2480D899C(v13, (v2 + v9));
  return swift_endAccess();
}

uint64_t sub_2480D1304(uint64_t a1)
{
  v3 = type metadata accessor for Group(0);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v32 = &v28 - v6;
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v28 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_2480DCC5C();
    v37 = a1 + 56;
    result = sub_2480DCB3C();
    v9 = result;
    v10 = 0;
    v11 = *(a1 + 36);
    v29 = a1 + 64;
    v30 = v11;
    v31 = a1;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v37 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_21;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v36 = v10;
      v11 = v7;
      v14 = *(a1 + 48) + *(v34 + 72) * v9;
      v15 = v32;
      sub_2480D8A20(v14, v32, type metadata accessor for Group);
      v16 = v33;
      sub_2480D8A20(v15, v33, type metadata accessor for Group);
      v17 = objc_allocWithZone(DDGroup);
      v18 = &v17[OBJC_IVAR___DDGroup__group];
      v18[3] = v35;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
      sub_2480D8A20(v16, boxed_opaque_existential_0, type metadata accessor for Group);
      v38.receiver = v17;
      v38.super_class = DDGroup;
      objc_msgSendSuper2(&v38, sel_init);
      sub_2480D8A88(v16, type metadata accessor for Group);
      v20 = v15;
      a1 = v31;
      sub_2480D8A88(v20, type metadata accessor for Group);
      sub_2480DCC3C();
      sub_2480DCC6C();
      sub_2480DCC7C();
      result = sub_2480DCC4C();
      v12 = 1 << *(a1 + 32);
      if (v9 >= v12)
      {
        goto LABEL_23;
      }

      v21 = *(v37 + 8 * v13);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v7 = v11;
      LODWORD(v11) = v30;
      if (v30 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v9 & 0x3F));
      if (v22)
      {
        v12 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v13 << 6;
        v24 = v13 + 1;
        v25 = (v29 + 8 * v13);
        while (v24 < (v12 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_2480D89AC(v9, v30, 0);
            v12 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_2480D89AC(v9, v30, 0);
      }

LABEL_4:
      v10 = v36 + 1;
      v9 = v12;
      if (v36 + 1 == v7)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_21:
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

uint64_t sub_2480D1680(uint64_t a1)
{
  v3 = type metadata accessor for Group(0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_2480DCBAC();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v48 = MEMORY[0x277D84F90];
    sub_2480D7980(0, v6 & ~(v6 >> 63), 0);
    v43 = v48;
    if (v42)
    {
      result = sub_2480DCB5C();
    }

    else
    {
      result = sub_2480DCB3C();
      v8 = *(a1 + 36);
    }

    v45 = result;
    v46 = v8;
    v47 = v42 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v37 = a1 + 56;
      v38 = v10;
      v35[1] = v1;
      v36 = a1 + 64;
      v39 = v6;
      while (v9 < v6)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_37;
        }

        v13 = v45;
        v14 = v46;
        v15 = v47;
        v16 = a1;
        sub_2480D7F70(v45, v46, v47, a1);
        v18 = v17;
        v19 = OBJC_IVAR___DDGroup__group;
        swift_beginAccess();
        sub_2480D1F28(v18 + v19, v44);
        swift_dynamicCast();

        v20 = v43;
        v48 = v43;
        v21 = v5;
        v23 = *(v43 + 16);
        v22 = *(v43 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_2480D7980((v22 > 1), v23 + 1, 1);
          v20 = v48;
        }

        *(v20 + 16) = v23 + 1;
        v24 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v43 = v20;
        result = sub_2480D8AE8(v21, v20 + v24 + *(v40 + 72) * v23, type metadata accessor for Group);
        v5 = v21;
        if (v42)
        {
          if (!v15)
          {
            goto LABEL_42;
          }

          a1 = v16;
          if (sub_2480DCB7C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87398, &qword_2480DD388);
          v11 = sub_2480DCAEC();
          sub_2480DCBEC();
          result = v11(v44, 0);
          if (v9 == v6)
          {
LABEL_34:
            sub_2480D89AC(v45, v46, v47);
            return v43;
          }
        }

        else
        {
          if (v15)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v16;
          v25 = 1 << *(v16 + 32);
          if (v13 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v13 >> 6;
          v27 = *(v37 + 8 * (v13 >> 6));
          if (((v27 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v16 + 36) != v14)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v13 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_2480D89AC(v13, v14, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_2480D89AC(v13, v14, 0);
          }

LABEL_33:
          v34 = *(v16 + 36);
          v45 = v25;
          v46 = v34;
          v47 = 0;
          v6 = v39;
          if (v9 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t DDUser.isEqual(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for User(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = sub_2480D1DF4(a1, v18);
  if (!v19)
  {
    sub_2480D1EAC(v18);
    goto LABEL_6;
  }

  type metadata accessor for DDUser(v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v14 = 0;
    return v14 & 1;
  }

  v11 = v17;
  if (v17 == v2)
  {

    v14 = 1;
  }

  else
  {
    v12 = OBJC_IVAR___DDUser__user;
    swift_beginAccess();
    sub_2480D1F28(v2 + v12, v18);
    swift_dynamicCast();
    v13 = OBJC_IVAR___DDUser__user;
    swift_beginAccess();
    sub_2480D1F28(v11 + v13, v18);
    swift_dynamicCast();
    v14 = _s15DarwinDirectory4UserV2eeoiySbAC_ACtFZ_0(v9, v7);

    sub_2480D8A88(v7, type metadata accessor for User);
    sub_2480D8A88(v9, type metadata accessor for User);
  }

  return v14 & 1;
}

uint64_t sub_2480D1DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87350, &qword_2480DD378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
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

uint64_t sub_2480D1EAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87350, &qword_2480DD378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2480D1F28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t DDUser.hash.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(v2 + v6, v9);
  swift_dynamicCast();
  sub_2480DCCCC();
  User.hash(into:)(v9);
  v7 = sub_2480DCD0C();
  sub_2480D8A88(v5, type metadata accessor for User);
  return v7;
}

id sub_2480D21E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = (a3)(0, a2);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9 + 16;
  v11 = sub_2480DCA5C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v15 = *a4;
  swift_beginAccess();
  sub_2480D1F28(a1 + v15, v19);
  swift_dynamicCast();
  (*(v12 + 16))(v14, v10, v11);
  sub_2480D8A88(v10, a5);
  v16 = sub_2480DCA1C();
  (*(v12 + 8))(v14, v11);

  return v16;
}

uint64_t sub_2480D23D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = (a3)(0, a2);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9 + 16;
  v11 = *a4;
  swift_beginAccess();
  sub_2480D1F28(a1 + v11, v15);
  swift_dynamicCast();
  v12 = *&v10[*(v8 + 20)];
  sub_2480D8A88(v10, a5);
  return v12;
}

void sub_2480D24EC(char *a1, uint64_t a2, int a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t (*a6)(void))
{
  v10 = (a4)(0, a2);
  MEMORY[0x28223BE20](v10);
  v12 = &v16[-v11];
  v13 = *a5;
  swift_beginAccess();
  sub_2480D1F28(&a1[v13], &v17);
  v14 = a1;
  swift_dynamicCast();
  *&v12[*(v10 + 20)] = a3;
  v18 = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  sub_2480D8AE8(v12, boxed_opaque_existential_0, a6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(&a1[v13]);
  sub_2480D899C(&v17, &a1[v13]);
  swift_endAccess();
}

id sub_2480D265C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = (a3)(0, a2);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9 + 16;
  v11 = *a4;
  swift_beginAccess();
  sub_2480D1F28(a1 + v11, v15);
  swift_dynamicCast();

  sub_2480D8A88(v10, a5);
  v12 = sub_2480DCA7C();

  return v12;
}

void sub_2480D27AC(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t (*a6)(void))
{
  v9 = (a4)(0, a2);
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-v10];
  v12 = sub_2480DCA8C();
  v14 = v13;
  v15 = *a5;
  swift_beginAccess();
  sub_2480D1F28(&a1[v15], &v20);
  v16 = a1;
  swift_dynamicCast();
  v17 = &v11[*(v9 + 24)];
  *v17 = v12;
  v17[1] = v14;

  v21 = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
  sub_2480D8AE8(v11, boxed_opaque_existential_0, a6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(&a1[v15]);
  sub_2480D899C(&v20, &a1[v15]);
  swift_endAccess();
}

id sub_2480D2938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = (a3)(0, a2);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9 + 16;
  v11 = *a4;
  swift_beginAccess();
  sub_2480D1F28(a1 + v11, v15);
  swift_dynamicCast();

  sub_2480D8A88(v10, a5);
  v12 = sub_2480DCA7C();

  return v12;
}

void sub_2480D2A88(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t (*a6)(void))
{
  v9 = (a4)(0, a2);
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-v10];
  v12 = sub_2480DCA8C();
  v14 = v13;
  v15 = *a5;
  swift_beginAccess();
  sub_2480D1F28(&a1[v15], &v20);
  v16 = a1;
  swift_dynamicCast();
  v17 = &v11[*(v9 + 28)];
  *v17 = v12;
  v17[1] = v14;

  v21 = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
  sub_2480D8AE8(v11, boxed_opaque_existential_0, a6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(&a1[v15]);
  sub_2480D899C(&v20, &a1[v15]);
  swift_endAccess();
}

void sub_2480D3014(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  type metadata accessor for DDGroup(a1);
  sub_2480D8908(&qword_27EE87380, v6, type metadata accessor for DDGroup, MEMORY[0x277D85378]);
  v7 = sub_2480DCACC();
  v8 = a1;
  a4(v7);
}

uint64_t sub_2480D30CC(uint64_t a1)
{
  v3 = type metadata accessor for Group(0);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v6 = sub_2480D1680(a1);

  v7 = sub_2480D82C4(v6);

  v8 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(v1 + v8, v12);
  swift_dynamicCast();
  *&v5[*(v3 + 36)] = v7;

  v13 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  sub_2480D8AE8(v5, boxed_opaque_existential_0, type metadata accessor for Group);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v8));
  sub_2480D899C(v12, (v1 + v8));
  return swift_endAccess();
}

id _sSo6DDUserC15DarwinDirectoryEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t DDGroup.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Group(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v9 = sub_2480D1DF4(a1, v17);
  if (!v18)
  {
    sub_2480D1EAC(v17);
    goto LABEL_6;
  }

  type metadata accessor for DDGroup(v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v13 = 0;
    return v13 & 1;
  }

  v10 = v16;
  if (v16 == v1)
  {

    v13 = 1;
  }

  else
  {
    v11 = OBJC_IVAR___DDGroup__group;
    swift_beginAccess();
    sub_2480D1F28(v1 + v11, v17);
    swift_dynamicCast();
    v12 = OBJC_IVAR___DDGroup__group;
    swift_beginAccess();
    sub_2480D1F28(v10 + v12, v17);
    swift_dynamicCast();
    v13 = _s15DarwinDirectory5GroupV2eeoiySbAC_ACtFZ_0(v8, v6);

    sub_2480D8A88(v6, type metadata accessor for Group);
    sub_2480D8A88(v8, type metadata accessor for Group);
  }

  return v13 & 1;
}

uint64_t sub_2480D359C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_2480DCB2C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_2480D1EAC(v10);
  return v8 & 1;
}

uint64_t DDGroup.hash.getter()
{
  v1 = type metadata accessor for Group(0);
  MEMORY[0x28223BE20](v1);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(v0 + v4, v7);
  swift_dynamicCast();
  sub_2480DCCCC();
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  sub_2480DCCFC();
  sub_2480DCA9C();
  sub_2480DCA9C();
  sub_2480D7B78(v7, *&v3[*(v1 + 32)]);
  sub_2480D7CD4(v7, *&v3[*(v1 + 36)]);
  v5 = sub_2480DCD0C();
  sub_2480D8A88(v3, type metadata accessor for Group);
  return v5;
}

uint64_t sub_2480D37FC(uint64_t a1, unsigned int *a2)
{
  v42 = a1;
  v4 = type metadata accessor for LibSystemUserRecord(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v40 = &v38[-v9];
  v41 = v2;
  v10 = *v2;
  sub_2480DCCCC();
  v11 = *a2;
  sub_2480DCCFC();
  v12 = *(a2 + 2);
  v52 = *(a2 + 1);
  sub_2480DCA9C();
  v13 = v4[6];
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v50 = v13;
  sub_2480DCA6C();
  v14 = (a2 + v4[7]);
  v15 = *v14;
  v48 = v14[1];
  v49 = v15;
  sub_2480DCA9C();
  v16 = (a2 + v4[8]);
  v17 = *v16;
  v46 = v16[1];
  v47 = v17;
  sub_2480DCA9C();
  v45 = *(a2 + v4[9]);
  sub_2480DCCFC();
  v18 = (a2 + v4[10]);
  v19 = *v18;
  v43 = v18[1];
  v44 = v19;
  sub_2480DCA9C();
  v20 = v4[11];
  v51 = a2;
  v39 = *(a2 + v20);
  sub_2480DCCEC();
  v21 = sub_2480DCD0C();
  v22 = -1 << *(v10 + 32);
  v23 = v21 & ~v22;
  if ((*(v10 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v24 = ~v22;
    v25 = *(v5 + 72);
    while (1)
    {
      sub_2480D8A20(*(v10 + 48) + v25 * v23, v8, type metadata accessor for LibSystemUserRecord);
      if (*v8 == v11)
      {
        v26 = *(v8 + 1) == v52 && *(v8 + 2) == v12;
        if (v26 || (sub_2480DCCAC()) && (sub_2480DCA2C())
        {
          v27 = &v8[v4[7]];
          v28 = *v27 == v49 && v27[1] == v48;
          if (v28 || (sub_2480DCCAC() & 1) != 0)
          {
            v29 = &v8[v4[8]];
            v30 = *v29 == v47 && v29[1] == v46;
            if (v30 || (sub_2480DCCAC()) && *&v8[v4[9]] == v45)
            {
              v31 = &v8[v4[10]];
              v32 = *v31 == v44 && v31[1] == v43;
              if (v32 || (sub_2480DCCAC()) && v39 == v8[v4[11]])
              {
                break;
              }
            }
          }
        }
      }

      sub_2480D8A88(v8, type metadata accessor for LibSystemUserRecord);
      v23 = (v23 + 1) & v24;
      if (((*(v10 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    sub_2480D8A88(v8, type metadata accessor for LibSystemUserRecord);
    sub_2480D8A88(v51, type metadata accessor for LibSystemUserRecord);
    sub_2480D8A20(*(v10 + 48) + v25 * v23, v42, type metadata accessor for LibSystemUserRecord);
    return 0;
  }

  else
  {
LABEL_29:
    v33 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v51;
    v36 = v40;
    sub_2480D8A20(v51, v40, type metadata accessor for LibSystemUserRecord);
    v53 = *v33;
    sub_2480D5828(v36, v23, isUniquelyReferenced_nonNull_native);
    *v33 = v53;
    sub_2480D8AE8(v35, v42, type metadata accessor for LibSystemUserRecord);
    return 1;
  }
}

uint64_t sub_2480D3C5C(uint64_t a1, unsigned int *a2)
{
  v30 = a1;
  v4 = type metadata accessor for LibSystemGroupRecord(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v28 = (&v27 - v9);
  v29 = v2;
  v10 = *v2;
  sub_2480DCCCC();
  v11 = *a2;
  sub_2480DCCFC();
  v12 = *(a2 + 2);
  v35 = *(a2 + 1);
  sub_2480DCA9C();
  v13 = v4[6];
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = v13;
  sub_2480DCA6C();
  v32 = *(a2 + v4[7]);
  sub_2480D7B78(v36, v32);
  v14 = v4;
  v15 = v4[8];
  v34 = a2;
  v31 = *(a2 + v15);
  sub_2480DCCEC();
  v16 = sub_2480DCD0C();
  v17 = -1 << *(v10 + 32);
  v18 = v16 & ~v17;
  if ((*(v10 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(v5 + 72);
    while (1)
    {
      sub_2480D8A20(*(v10 + 48) + v20 * v18, v8, type metadata accessor for LibSystemGroupRecord);
      if (*v8 == v11)
      {
        v21 = *(v8 + 1) == v35 && *(v8 + 2) == v12;
        if (v21 || (sub_2480DCCAC()) && (sub_2480DCA2C() & 1) != 0 && (sub_2480D9188(*&v8[v14[7]], v32) & 1) != 0 && v31 == v8[v14[8]])
        {
          break;
        }
      }

      sub_2480D8A88(v8, type metadata accessor for LibSystemGroupRecord);
      v18 = (v18 + 1) & v19;
      if (((*(v10 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_2480D8A88(v8, type metadata accessor for LibSystemGroupRecord);
    sub_2480D8A88(v34, type metadata accessor for LibSystemGroupRecord);
    sub_2480D8A20(*(v10 + 48) + v20 * v18, v30, type metadata accessor for LibSystemGroupRecord);
    return 0;
  }

  else
  {
LABEL_14:
    v23 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v26 = v28;
    sub_2480D8A20(v34, v28, type metadata accessor for LibSystemGroupRecord);
    *&v36[0] = *v23;
    sub_2480D5C88(v26, v18, isUniquelyReferenced_nonNull_native);
    *v23 = *&v36[0];
    sub_2480D8AE8(v25, v30, type metadata accessor for LibSystemGroupRecord);
    return 1;
  }
}

uint64_t sub_2480D3FE0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2480DCCCC();
  sub_2480DCA9C();
  v8 = sub_2480DCD0C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2480DCCAC() & 1) != 0)
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

    sub_2480D601C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2480D4130(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2480DCBBC();

    if (v9)
    {

      type metadata accessor for DDGroup(v10);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_2480DCBAC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_2480D46FC(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_2480D523C(v21 + 1);
    }

    v19 = v8;
    sub_2480D57A4(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for DDGroup(a1);
  v12 = sub_2480DCB0C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_2480D619C(v19, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2480DCB1C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v14);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_2480D4340(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = type metadata accessor for Group(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = &v29 - v9;
  v30 = v2;
  v10 = *v2;
  sub_2480DCCCC();
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  v11 = *(a2 + v4[5]);
  sub_2480DCCFC();
  v12 = (a2 + v4[6]);
  v13 = *v12;
  v36 = v12[1];
  v37 = v13;
  sub_2480DCA9C();
  v14 = (a2 + v4[7]);
  v15 = *v14;
  v34 = v14[1];
  v35 = v15;
  sub_2480DCA9C();
  v33 = *(a2 + v4[8]);
  sub_2480D7B78(v38, v33);
  v32 = *(a2 + v4[9]);
  sub_2480D7CD4(v38, v32);
  v16 = sub_2480DCD0C();
  v17 = -1 << *(v10 + 32);
  v18 = v16 & ~v17;
  if ((*(v10 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(v5 + 72);
    while (1)
    {
      sub_2480D8A20(*(v10 + 48) + v20 * v18, v8, type metadata accessor for Group);
      if ((sub_2480DCA2C() & 1) != 0 && *&v8[v4[5]] == v11)
      {
        v21 = &v8[v4[6]];
        v22 = *v21 == v37 && *(v21 + 1) == v36;
        if (v22 || (sub_2480DCCAC() & 1) != 0)
        {
          v23 = &v8[v4[7]];
          v24 = *v23 == v35 && *(v23 + 1) == v34;
          if (v24 || (sub_2480DCCAC()) && (sub_2480D9188(*&v8[v4[8]], v33) & 1) != 0 && (sub_2480D9340(*&v8[v4[9]], v32))
          {
            break;
          }
        }
      }

      sub_2480D8A88(v8, type metadata accessor for Group);
      v18 = (v18 + 1) & v19;
      if (((*(v10 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_2480D8A88(v8, type metadata accessor for Group);
    sub_2480D8A88(a2, type metadata accessor for Group);
    sub_2480D8A20(*(v10 + 48) + v20 * v18, v31, type metadata accessor for Group);
    return 0;
  }

  else
  {
LABEL_19:
    v26 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v29;
    sub_2480D8A20(a2, v29, type metadata accessor for Group);
    *&v38[0] = *v26;
    sub_2480D62F8(v28, v18, isUniquelyReferenced_nonNull_native);
    *v26 = *&v38[0];
    sub_2480D8AE8(a2, v31, type metadata accessor for Group);
    return 1;
  }
}

uint64_t sub_2480D46FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873A8, &qword_2480DD398);
    v2 = sub_2480DCC1C();
    v16 = v2;
    sub_2480DCB6C();
    v3 = sub_2480DCBDC();
    if (v3)
    {
      type metadata accessor for DDGroup(v3);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2480D523C(v10 + 1);
        }

        v2 = v16;
        result = sub_2480DCB0C();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_2480DCBDC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2480D48D8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for LibSystemUserRecord(0);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873C0, &qword_2480DD3B0);
  result = sub_2480DCC0C();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
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
    v22 = v1;
    v23 = result + 56;
    for (i = v6; v13; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = *(v6 + 48);
      v26 = *(v25 + 72);
      sub_2480D8AE8(v18 + v26 * (v15 | (v9 << 6)), v5, type metadata accessor for LibSystemUserRecord);
      sub_2480DCCCC();
      sub_2480DCCFC();
      sub_2480DCA9C();
      sub_2480DCA5C();
      sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2480DCA6C();
      sub_2480DCA9C();
      sub_2480DCA9C();
      sub_2480DCCFC();
      sub_2480DCA9C();
      sub_2480DCCEC();
      sub_2480DCD0C();
      v19 = v23;
      v20 = sub_2480DCB4C();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v6 = i;
      result = sub_2480D8AE8(v5, *(v8 + 48) + v20 * v26, type metadata accessor for LibSystemUserRecord);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v14)
      {
        break;
      }

      v17 = v10[v9];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v6 + 32);
    if (v21 >= 64)
    {
      bzero(v10, ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v21;
    }

    v2 = v22;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_2480D4C3C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for LibSystemGroupRecord(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873B0, &qword_2480DD3A0);
  result = sub_2480DCC0C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v34 = *(v32 + 72);
      sub_2480D8AE8(v20 + v34 * (v17 | (v9 << 6)), v5, type metadata accessor for LibSystemGroupRecord);
      sub_2480DCCCC();
      sub_2480DCCFC();
      sub_2480DCA9C();
      v21 = v33;
      sub_2480DCA5C();
      sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2480DCA6C();
      sub_2480D7B78(v35, *&v5[*(v21 + 28)]);
      sub_2480DCCEC();
      result = sub_2480DCD0C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
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

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_2480D8AE8(v5, *(v8 + 48) + v16 * v34, type metadata accessor for LibSystemGroupRecord);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_2480D4FDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873B8, &qword_2480DD3A8);
  result = sub_2480DCC0C();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2480DCCCC();
      sub_2480DCA9C();
      result = sub_2480DCD0C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2480D523C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873A8, &qword_2480DD398);
  result = sub_2480DCC0C();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_2480DCB0C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2480D5464(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Group(0);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87390, &qword_2480DD380);
  result = sub_2480DCC0C();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
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
    v25 = v1;
    v26 = result + 56;
    for (i = v6; v13; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = *(v6 + 48);
      v19 = *(v28 + 72);
      sub_2480D8AE8(v18 + v19 * (v15 | (v9 << 6)), v5, type metadata accessor for Group);
      sub_2480DCCCC();
      sub_2480DCA5C();
      sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2480DCA6C();
      v20 = v29;
      sub_2480DCCFC();
      sub_2480DCA9C();
      sub_2480DCA9C();
      sub_2480D7B78(v30, *&v5[*(v20 + 32)]);
      sub_2480D7CD4(v30, *&v5[*(v20 + 36)]);
      sub_2480DCD0C();
      v21 = v26;
      v22 = sub_2480DCB4C();
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = *(v8 + 48) + v22 * v19;
      v6 = i;
      result = sub_2480D8AE8(v5, v23, type metadata accessor for Group);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v14)
      {
        break;
      }

      v17 = v10[v9];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v6 + 32);
    if (v24 >= 64)
    {
      bzero(v10, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v24;
    }

    v2 = v25;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

unint64_t sub_2480D57A4(uint64_t a1, uint64_t a2)
{
  sub_2480DCB0C();
  result = sub_2480DCB4C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2480D5828(unsigned int *a1, unint64_t a2, char a3)
{
  v50 = a1;
  v6 = type metadata accessor for LibSystemUserRecord(0);
  v46 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v45 = v3;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a3)
  {
    sub_2480D48D8(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_2480D66D4(type metadata accessor for LibSystemUserRecord, &qword_27EE873C0, &qword_2480DD3B0, type metadata accessor for LibSystemUserRecord);
      goto LABEL_36;
    }

    sub_2480D6B88(v9 + 1);
  }

  v11 = *v3;
  sub_2480DCCCC();
  v12 = v50;
  v13 = *v50;
  sub_2480DCCFC();
  v14 = *(v12 + 1);
  v15 = *(v12 + 2);
  sub_2480DCA9C();
  v16 = v6[6];
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v49 = v16;
  sub_2480DCA6C();
  v17 = (v12 + v6[7]);
  v18 = *v17;
  v47 = v17[1];
  v48 = v18;
  sub_2480DCA9C();
  v19 = (v12 + v6[8]);
  v20 = *v19;
  v43 = v19[1];
  v44 = v20;
  sub_2480DCA9C();
  v42 = *(v12 + v6[9]);
  sub_2480DCCFC();
  v21 = (v12 + v6[10]);
  v22 = *v21;
  v40 = v21[1];
  v41 = v22;
  sub_2480DCA9C();
  HIDWORD(v39) = *(v12 + v6[11]);
  sub_2480DCCEC();
  v23 = sub_2480DCD0C();
  v24 = -1 << *(v11 + 32);
  a2 = v23 & ~v24;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v25 = ~v24;
    v26 = *(v46 + 72);
    do
    {
      sub_2480D8A20(*(v11 + 48) + v26 * a2, v8, type metadata accessor for LibSystemUserRecord);
      if (*v8 == v13)
      {
        v27 = *(v8 + 1) == v14 && *(v8 + 2) == v15;
        if (v27 || (sub_2480DCCAC()) && (sub_2480DCA2C())
        {
          v28 = &v8[v6[7]];
          v29 = *v28 == v48 && *(v28 + 1) == v47;
          if (v29 || (sub_2480DCCAC() & 1) != 0)
          {
            v30 = &v8[v6[8]];
            v31 = *v30 == v44 && *(v30 + 1) == v43;
            if (v31 || (sub_2480DCCAC()) && *&v8[v6[9]] == v42)
            {
              v32 = &v8[v6[10]];
              v33 = *v32 == v41 && *(v32 + 1) == v40;
              if (v33 || (sub_2480DCCAC()) && HIDWORD(v39) == v8[v6[11]])
              {
                goto LABEL_39;
              }
            }
          }
        }
      }

      sub_2480D8A88(v8, type metadata accessor for LibSystemUserRecord);
      a2 = (a2 + 1) & v25;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_36:
  v34 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2480D8AE8(v50, *(v34 + 48) + *(v46 + 72) * a2, type metadata accessor for LibSystemUserRecord);
  v36 = *(v34 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (!v37)
  {
    *(v34 + 16) = v38;
    return result;
  }

  __break(1u);
LABEL_39:
  sub_2480D8A88(v8, type metadata accessor for LibSystemUserRecord);
  result = sub_2480DCCBC();
  __break(1u);
  return result;
}

uint64_t sub_2480D5C88(unsigned int *a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for LibSystemGroupRecord(0);
  v31 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v30 = v3;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_2480D4C3C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_2480D66D4(type metadata accessor for LibSystemGroupRecord, &qword_27EE873B0, &qword_2480DD3A0, type metadata accessor for LibSystemGroupRecord);
      goto LABEL_21;
    }

    sub_2480D6EB0(v9 + 1);
  }

  v11 = *v3;
  sub_2480DCCCC();
  v12 = v33;
  v13 = *v33;
  sub_2480DCCFC();
  v14 = *(v12 + 1);
  v15 = *(v12 + 2);
  sub_2480DCA9C();
  v16 = v6[6];
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v32 = v16;
  sub_2480DCA6C();
  v29 = *(v12 + v6[7]);
  sub_2480D7B78(v34, v29);
  v28 = *(v12 + v6[8]);
  sub_2480DCCEC();
  v17 = sub_2480DCD0C();
  v18 = -1 << *(v11 + 32);
  a2 = v17 & ~v18;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v31 + 72);
    while (1)
    {
      sub_2480D8A20(*(v11 + 48) + v20 * a2, v8, type metadata accessor for LibSystemGroupRecord);
      if (*v8 == v13)
      {
        v21 = *(v8 + 1) == v14 && *(v8 + 2) == v15;
        if (v21 || (sub_2480DCCAC()) && (sub_2480DCA2C() & 1) != 0 && (sub_2480D9188(*&v8[v6[7]], v29) & 1) != 0 && v28 == v8[v6[8]])
        {
          break;
        }
      }

      sub_2480D8A88(v8, type metadata accessor for LibSystemGroupRecord);
      a2 = (a2 + 1) & v19;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    sub_2480D8A88(v8, type metadata accessor for LibSystemGroupRecord);
    sub_2480DCCBC();
    __break(1u);
  }

LABEL_21:
  v22 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2480D8AE8(v33, *(v22 + 48) + *(v31 + 72) * a2, type metadata accessor for LibSystemGroupRecord);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

uint64_t sub_2480D601C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2480D4FDC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2480D68DC();
      goto LABEL_16;
    }

    sub_2480D7224(v8 + 1);
  }

  v10 = *v4;
  sub_2480DCCCC();
  sub_2480DCA9C();
  result = sub_2480DCD0C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2480DCCAC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2480DCCBC();
  __break(1u);
  return result;
}

void sub_2480D619C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2480D523C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2480D6A38();
      goto LABEL_12;
    }

    sub_2480D745C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_2480DCB0C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for DDGroup(v9);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2480DCB1C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2480DCCBC();
  __break(1u);
}

uint64_t sub_2480D62F8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for Group(0);
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v34 = v8;
  v35 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_2480D5464(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2480D66D4(type metadata accessor for Group, &qword_27EE87390, &qword_2480DD380, type metadata accessor for Group);
      goto LABEL_26;
    }

    sub_2480D7670(v11 + 1);
  }

  v13 = *v3;
  sub_2480DCCCC();
  sub_2480DCA5C();
  sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  v14 = *(a1 + v7[5]);
  sub_2480DCCFC();
  v15 = (a1 + v7[6]);
  v16 = v15[1];
  v38 = *v15;
  sub_2480DCA9C();
  v17 = (a1 + v7[7]);
  v18 = *v17;
  v36 = v17[1];
  v37 = v18;
  sub_2480DCA9C();
  v33 = *(a1 + v7[8]);
  sub_2480D7B78(v39, v33);
  v32 = *(a1 + v7[9]);
  sub_2480D7CD4(v39, v32);
  v19 = sub_2480DCD0C();
  v20 = -1 << *(v13 + 32);
  a2 = v19 & ~v20;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v8 + 72);
    while (1)
    {
      sub_2480D8A20(*(v13 + 48) + v22 * a2, v10, type metadata accessor for Group);
      if ((sub_2480DCA2C() & 1) != 0 && *&v10[v7[5]] == v14)
      {
        v23 = &v10[v7[6]];
        v24 = *v23 == v38 && *(v23 + 1) == v16;
        if (v24 || (sub_2480DCCAC() & 1) != 0)
        {
          v25 = &v10[v7[7]];
          v26 = *v25 == v37 && *(v25 + 1) == v36;
          if (v26 || (sub_2480DCCAC()) && (sub_2480D9188(*&v10[v7[8]], v33) & 1) != 0 && (sub_2480D9340(*&v10[v7[9]], v32))
          {
            break;
          }
        }
      }

      sub_2480D8A88(v10, type metadata accessor for Group);
      a2 = (a2 + 1) & v21;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_2480D8A88(v10, type metadata accessor for Group);
    sub_2480DCCBC();
    __break(1u);
  }

LABEL_26:
  v27 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2480D8AE8(a1, *(v27 + 48) + *(v34 + 72) * a2, type metadata accessor for Group);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v31;
  }

  return result;
}

void *sub_2480D66D4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = sub_2480DCBFC();
  v15 = v14;
  if (*(v13 + 16))
  {
    v30 = v8;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 56);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = *(v10 + 72) * (v25 | (v19 << 6));
        sub_2480D8A20(*(v13 + 48) + v28, v12, a4);
        result = sub_2480D8AE8(v12, *(v15 + 48) + v28, a4);
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v30;
        goto LABEL_21;
      }

      v27 = *(v13 + 56 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v15;
  }

  return result;
}

void *sub_2480D68DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873B8, &qword_2480DD3A8);
  v2 = *v0;
  v3 = sub_2480DCBFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

id sub_2480D6A38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873A8, &qword_2480DD398);
  v2 = *v0;
  v3 = sub_2480DCBFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

  return result;
}

uint64_t sub_2480D6B88(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for LibSystemUserRecord(0);
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873C0, &qword_2480DD3B0);
  result = sub_2480DCC0C();
  v8 = result;
  if (*(v6 + 16))
  {
    v21 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    for (i = result + 56; v12; ++*(v8 + 16))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = *(v23 + 72);
      v18 = *(v6 + 48) + v17 * (v14 | (v9 << 6));
      v24 = type metadata accessor for LibSystemUserRecord;
      v25 = v17;
      sub_2480D8A20(v18, v5, type metadata accessor for LibSystemUserRecord);
      sub_2480DCCCC();
      sub_2480DCCFC();
      sub_2480DCA9C();
      sub_2480DCA5C();
      sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2480DCA6C();
      sub_2480DCA9C();
      sub_2480DCA9C();
      sub_2480DCCFC();
      sub_2480DCA9C();
      sub_2480DCCEC();
      sub_2480DCD0C();
      v19 = i;
      v20 = sub_2480DCB4C();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_2480D8AE8(v5, *(v8 + 48) + v20 * v25, v24);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v21;
        goto LABEL_16;
      }

      v16 = *(v6 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_2480D6EB0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for LibSystemGroupRecord(0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873B0, &qword_2480DD3A0);
  result = sub_2480DCC0C();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v1;
    v30 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v33 = *(v31 + 72);
      sub_2480D8A20(v20 + v33 * (v17 | (v9 << 6)), v5, type metadata accessor for LibSystemGroupRecord);
      sub_2480DCCCC();
      sub_2480DCCFC();
      sub_2480DCA9C();
      v21 = v32;
      sub_2480DCA5C();
      sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2480DCA6C();
      sub_2480D7B78(v34, *&v5[*(v21 + 28)]);
      sub_2480DCCEC();
      result = sub_2480DCD0C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v6 = v30;
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
      v6 = v30;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_2480D8AE8(v5, *(v8 + 48) + v16 * v33, type metadata accessor for LibSystemGroupRecord);
      ++*(v8 + 16);
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_2480D7224(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873B8, &qword_2480DD3A8);
  result = sub_2480DCC0C();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2480DCCCC();

      sub_2480DCA9C();
      result = sub_2480DCD0C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_2480D745C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873A8, &qword_2480DD398);
  result = sub_2480DCC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_2480DCB0C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

  return result;
}

uint64_t sub_2480D7670(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Group(0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87390, &qword_2480DD380);
  result = sub_2480DCC0C();
  v8 = result;
  if (*(v6 + 16))
  {
    v24 = v1;
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
    v25 = result + 56;
    for (i = v6; v13; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = *(v6 + 48);
      v19 = *(v27 + 72);
      sub_2480D8A20(v18 + v19 * (v15 | (v9 << 6)), v5, type metadata accessor for Group);
      sub_2480DCCCC();
      sub_2480DCA5C();
      sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2480DCA6C();
      v20 = v28;
      sub_2480DCCFC();
      sub_2480DCA9C();
      sub_2480DCA9C();
      sub_2480D7B78(v29, *&v5[*(v20 + 32)]);
      sub_2480D7CD4(v29, *&v5[*(v20 + 36)]);
      sub_2480DCD0C();
      v21 = v25;
      v22 = sub_2480DCB4C();
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = *(v8 + 48) + v22 * v19;
      v6 = i;
      result = sub_2480D8AE8(v5, v23, type metadata accessor for Group);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v24;
        goto LABEL_16;
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v8;
  }

  return result;
}

void *sub_2480D7980(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2480D79A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2480D79A0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE873A0, &qword_2480DD390);
  v10 = *(type metadata accessor for Group(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Group(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2480D7B78(__int128 *a1, uint64_t a2)
{
  sub_2480DCD0C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C1C64B0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_2480DCCCC();

        sub_2480DCA9C();
        v11 = sub_2480DCD0C();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480D7CD4(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Group(0);
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  *&v22[13] = a1[2];
  *&v22[15] = v7;
  v22[17] = *(a1 + 8);
  v9 = *a1;
  v8 = a1[1];
  v20[0] = a1;
  *&v22[9] = v9;
  *&v22[11] = v8;
  v20[1] = sub_2480DCD0C();
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  for (i = 0; v12; v15 ^= v19)
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    sub_2480D8A20(*(a2 + 48) + *(v21 + 72) * (v18 | (v17 << 6)), v6, type metadata accessor for Group);
    sub_2480DCCCC();
    sub_2480DCA5C();
    sub_2480D8908(&qword_27EE87368, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_2480DCA6C();
    sub_2480DCCFC();
    sub_2480DCA9C();
    sub_2480DCA9C();
    sub_2480D7B78(v22, *&v6[*(v4 + 32)]);
    sub_2480D7CD4(v22, *&v6[*(v4 + 36)]);
    v19 = sub_2480DCD0C();
    result = sub_2480D8A88(v6, type metadata accessor for Group);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return MEMORY[0x24C1C64B0](v15);
    }

    v12 = *(a2 + 56 + 8 * v17);
    ++i;
    if (v12)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2480D7F70(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = MEMORY[0x24C1C63A0](a1, a2, v7);
      type metadata accessor for DDGroup(v15);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for DDGroup(a1);
    if (sub_2480DCB8C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2480DCB9C();
    swift_dynamicCast();
    v4 = v16;
    v8 = sub_2480DCB0C();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2480DCB1C();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_2480D8168(unint64_t a1)
{
  v1 = a1;
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = a1)
  {
    v4 = type metadata accessor for DDGroup(a1);
    v6 = sub_2480D8908(&qword_27EE87380, v5, type metadata accessor for DDGroup, MEMORY[0x277D85378]);
    result = MEMORY[0x24C1C62B0](i, v4, v6);
    v13 = result;
    if (j)
    {
      break;
    }

    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1C6400](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(v1 + 8 * j + 32);
      }

      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2480D4130(&v12, v10);

      if (v11 == v8)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    a1 = sub_2480DCBAC();
  }

  v9 = result;
  v8 = sub_2480DCBAC();
  result = v9;
  if (v8)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2480D82C4(uint64_t a1)
{
  v2 = type metadata accessor for Group(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_2480D8908(&qword_27EE87388, 255, type metadata accessor for Group, &protocol conformance descriptor for Group);
  result = MEMORY[0x24C1C62B0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_2480D8A20(v12, v6, type metadata accessor for Group);
      sub_2480D4340(v8, v6);
      sub_2480D8A88(v8, type metadata accessor for Group);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

id sub_2480D8458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(a5 + v13, v26);
  type metadata accessor for Group(0);
  swift_dynamicCast();
  v14 = &v12[v10[9]];
  *v14 = 0x706D652F7261762FLL;
  *(v14 + 1) = 0xEA00000000007974;
  v15 = &v12[v10[10]];
  strcpy(v15, "/usr/bin/false");
  v15[15] = -18;
  v16 = MEMORY[0x277D84FA0];
  *&v12[v10[11]] = MEMORY[0x277D84FA0];
  *&v12[v10[12]] = v16;
  sub_2480DCA4C();
  if (qword_27EE87310 != -1)
  {
    swift_once();
  }

  *&v12[v10[5]] = sub_2480DBEB4();
  v17 = &v12[v10[6]];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = &v12[v10[7]];
  *v18 = a3;
  *(v18 + 1) = a4;
  v19 = objc_allocWithZone(DDUser);
  v20 = &v19[OBJC_IVAR___DDUser__user];
  v20[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  sub_2480D8A20(v12, boxed_opaque_existential_0, type metadata accessor for User);
  v25.receiver = v19;
  v25.super_class = DDUser;

  v22 = objc_msgSendSuper2(&v25, sel_init);
  sub_2480D8A88(v12, type metadata accessor for User);
  return v22;
}

uint64_t sub_2480D86BC(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_2480D8704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Group(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84FA0];
  *&v11[*(v9 + 32)] = MEMORY[0x277D84FA0];
  *&v11[*(v9 + 36)] = v12;
  sub_2480DCA4C();
  if (qword_27EE87310 != -1)
  {
    swift_once();
  }

  *&v11[v8[5]] = sub_2480DA948();
  v13 = &v11[v8[6]];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v11[v8[7]];
  *v14 = a3;
  *(v14 + 1) = a4;
  v15 = objc_allocWithZone(DDGroup);
  v16 = &v15[OBJC_IVAR___DDGroup__group];
  v16[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  sub_2480D8A20(v11, boxed_opaque_existential_0, type metadata accessor for Group);
  v20.receiver = v15;
  v20.super_class = DDGroup;

  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_2480D8A88(v11, type metadata accessor for Group);
  return v18;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2480D8908(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

_OWORD *sub_2480D899C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2480D89AC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2480D89BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Group(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480D8A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480D8A88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2480D8AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480D8BBC(uint64_t a1)
{
  sub_2480DCCFC();
  sub_2480DCA9C();
  type metadata accessor for LibSystemUserRecord(0);
  sub_2480DCA5C();
  sub_2480D90E8(&qword_27EE87368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  sub_2480DCA9C();
  sub_2480DCA9C();
  sub_2480DCCFC();
  sub_2480DCA9C();
  return sub_2480DCCEC();
}

uint64_t sub_2480D8CC4()
{
  sub_2480DCCCC();
  sub_2480DCCFC();
  sub_2480DCA9C();
  type metadata accessor for LibSystemUserRecord(0);
  sub_2480DCA5C();
  sub_2480D90E8(&qword_27EE87368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  sub_2480DCA9C();
  sub_2480DCA9C();
  sub_2480DCCFC();
  sub_2480DCA9C();
  sub_2480DCCEC();
  return sub_2480DCD0C();
}

uint64_t sub_2480D8DE8(uint64_t a1)
{
  sub_2480DCCCC();
  sub_2480D8BBC(v2);
  return sub_2480DCD0C();
}

uint64_t sub_2480D8E28(uint64_t a1)
{
  sub_2480DCCCC();
  sub_2480DCCFC();
  sub_2480DCA9C();
  sub_2480DCA5C();
  sub_2480D90E8(&qword_27EE87368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  sub_2480D7B78(v4, *(v1 + *(a1 + 28)));
  sub_2480DCCEC();
  return sub_2480DCD0C();
}

uint64_t sub_2480D8F00(__int128 *a1, uint64_t a2)
{
  sub_2480DCCFC();
  sub_2480DCA9C();
  sub_2480DCA5C();
  sub_2480D90E8(&qword_27EE87368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  sub_2480D7B78(a1, *(v2 + *(a2 + 28)));
  return sub_2480DCCEC();
}

uint64_t sub_2480D8FC8(uint64_t a1, uint64_t a2)
{
  sub_2480DCCCC();
  sub_2480DCCFC();
  sub_2480DCA9C();
  sub_2480DCA5C();
  sub_2480D90E8(&qword_27EE87368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  sub_2480D7B78(v5, *(v2 + *(a2 + 28)));
  sub_2480DCCEC();
  return sub_2480DCD0C();
}

uint64_t sub_2480D90E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2480D9150(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2480D9188(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_2480DCCCC();

    sub_2480DCA9C();
    v16 = sub_2480DCD0C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_2480DCCAC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480D9340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Group(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  result = MEMORY[0x28223BE20](v8);
  v14 = &v39 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v21 = a2 + 56;
  if (v19)
  {
    while (1)
    {
      v40 = v20;
      v41 = v16;
      v22 = __clz(__rbit64(v19));
      v39 = (v19 - 1) & v19;
LABEL_13:
      v43 = v12;
      v44 = a1;
      v25 = *(v12 + 72);
      sub_2480D9938(*(a1 + 48) + v25 * (v22 | (v15 << 6)), v14);
      v42 = v14;
      sub_2480D999C(v14, v10);
      sub_2480DCCCC();
      sub_2480DCA5C();
      sub_2480D90E8(&qword_27EE87368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2480DCA6C();
      v26 = *&v10[v4[5]];
      sub_2480DCCFC();
      v27 = &v10[v4[6]];
      v28 = *v27;
      v49 = *(v27 + 1);
      v50 = v28;
      sub_2480DCA9C();
      v29 = &v10[v4[7]];
      v30 = *v29;
      v47 = *(v29 + 1);
      v48 = v30;
      sub_2480DCA9C();
      v46 = *&v10[v4[8]];
      sub_2480D7B78(v51, v46);
      v45 = *&v10[v4[9]];
      sub_2480D7CD4(v51, v45);
      v31 = sub_2480DCD0C();
      v32 = -1 << *(a2 + 32);
      v33 = v31 & ~v32;
      if (((*(v21 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
      {
        break;
      }

      v34 = ~v32;
      while (1)
      {
        sub_2480D9938(*(a2 + 48) + v33 * v25, v7);
        if ((sub_2480DCA2C() & 1) != 0 && *&v7[v4[5]] == v26)
        {
          v35 = &v7[v4[6]];
          v36 = *v35 == v50 && *(v35 + 1) == v49;
          if (v36 || (sub_2480DCCAC() & 1) != 0)
          {
            v37 = &v7[v4[7]];
            v38 = *v37 == v48 && *(v37 + 1) == v47;
            if (v38 || (sub_2480DCCAC()) && (sub_2480D9188(*&v7[v4[8]], v46) & 1) != 0 && (sub_2480D9340(*&v7[v4[9]], v45))
            {
              break;
            }
          }
        }

        sub_2480D9A00(v7);
        v33 = (v33 + 1) & v34;
        if (((*(v21 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      sub_2480D9A00(v7);
      result = sub_2480D9A00(v10);
      v12 = v43;
      a1 = v44;
      v16 = v41;
      v14 = v42;
      v19 = v39;
      v20 = v40;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

LABEL_33:
    sub_2480D9A00(v10);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v16 + 8 * v15);
    ++v23;
    if (v24)
    {
      v40 = v20;
      v41 = v16;
      v22 = __clz(__rbit64(v24));
      v39 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480D9730(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v4 || (sub_2480DCCAC()) && (v5 = type metadata accessor for LibSystemUserRecord(0), (sub_2480DCA2C()) && ((v6 = v5[7], v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), (v10 || (sub_2480DCCAC()) && ((v11 = v5[8], v12 = *(a1 + v11), v13 = *(a1 + v11 + 8), v14 = (a2 + v11), v12 == *v14) ? (v15 = v13 == v14[1]) : (v15 = 0), (v15 || (sub_2480DCCAC()) && *(a1 + v5[9]) == *(a2 + v5[9]) && ((v16 = v5[10], v17 = *(a1 + v16), v18 = *(a1 + v16 + 8), v19 = (a2 + v16), v17 == *v19) && v18 == v19[1] || (sub_2480DCCAC()))))
  {
    v20 = *(a1 + v5[11]) ^ *(a2 + v5[11]) ^ 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_2480D9878(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v4 || (sub_2480DCCAC()) && (v5 = type metadata accessor for LibSystemGroupRecord(0), (sub_2480DCA2C()) && (sub_2480D9188(*(a1 + *(v5 + 28)), *(a2 + *(v5 + 28))))
  {
    v6 = *(a1 + *(v5 + 32)) ^ *(a2 + *(v5 + 32)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2480D9938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Group(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480D999C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Group(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480D9A00(uint64_t a1)
{
  v2 = type metadata accessor for Group(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2480D9A8C(uint64_t a1)
{
  result = sub_2480DCA5C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2480DCA5C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2480DCA5C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2480D9CA4(uint64_t a1)
{
  sub_2480DCA5C();
  if (v1 <= 0x3F)
  {
    sub_2480D9D48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2480D9D48()
{
  if (!qword_27EE873F8)
  {
    v0 = sub_2480DCAFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE873F8);
    }
  }
}

uint64_t sub_2480D9DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), void (*a6)(_BYTE *, _BYTE *), uint64_t (*a7)(void))
{
  v11 = (a4)(0, a2);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  a5(a1);
  swift_beginAccess();
  a6(v16, v14);
  swift_endAccess();
  return sub_2480DB3BC(v16, a7);
}

uint64_t sub_2480D9F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t Group.init(name:fullName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Group(0);
  v11 = MEMORY[0x277D84FA0];
  *(a5 + v10[8]) = MEMORY[0x277D84FA0];
  *(a5 + v10[9]) = v11;
  sub_2480DCA4C();
  if (qword_27EE87310 != -1)
  {
    swift_once();
  }

  result = sub_2480DA948();
  *(a5 + v10[5]) = result;
  v13 = (a5 + v10[6]);
  *v13 = a1;
  v13[1] = a2;
  v14 = (a5 + v10[7]);
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t type metadata accessor for Group(uint64_t a1)
{
  result = qword_27EE87408;
  if (!qword_27EE87408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Group.hashValue.getter()
{
  sub_2480DCCCC();
  sub_2480DCA5C();
  sub_2480DB1F0(&qword_27EE87368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  v1 = type metadata accessor for Group(0);
  sub_2480DCCFC();
  sub_2480DCA9C();
  sub_2480DCA9C();
  sub_2480D7B78(v3, *(v0 + *(v1 + 32)));
  sub_2480D7CD4(v3, *(v0 + *(v1 + 36)));
  return sub_2480DCD0C();
}

uint64_t Group.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2480DCA5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Group.gid.setter(int a1)
{
  result = type metadata accessor for Group(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Group.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for Group(0) + 24));

  return v1;
}

uint64_t Group.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Group(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Group.fullName.getter()
{
  v1 = *(v0 + *(type metadata accessor for Group(0) + 28));

  return v1;
}

uint64_t Group.fullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Group(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Group.aliases.getter()
{
  type metadata accessor for Group(0);
}

uint64_t Group.aliases.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Group(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Group.nestedGroups.getter()
{
  type metadata accessor for Group(0);
}

uint64_t Group.nestedGroups.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Group(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Group.hash(into:)(__int128 *a1)
{
  sub_2480DCA5C();
  sub_2480DB1F0(&qword_27EE87368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  v3 = type metadata accessor for Group(0);
  sub_2480DCCFC();
  sub_2480DCA9C();
  sub_2480DCA9C();
  sub_2480D7B78(a1, *(v1 + *(v3 + 32)));
  v4 = *(v1 + *(v3 + 36));

  return sub_2480D7CD4(a1, v4);
}

uint64_t sub_2480DA67C(int *a1)
{
  sub_2480DCCCC();
  sub_2480DCA5C();
  sub_2480DB1F0(&qword_27EE87368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  sub_2480DCCFC();
  sub_2480DCA9C();
  sub_2480DCA9C();
  sub_2480D7B78(v4, *(v1 + a1[8]));
  sub_2480D7CD4(v4, *(v1 + a1[9]));
  return sub_2480DCD0C();
}

uint64_t sub_2480DA76C(__int128 *a1, int *a2)
{
  sub_2480DCA5C();
  sub_2480DB1F0(&qword_27EE87368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  sub_2480DCCFC();
  sub_2480DCA9C();
  sub_2480DCA9C();
  sub_2480D7B78(a1, *(v2 + a2[8]));
  v5 = *(v2 + a2[9]);

  return sub_2480D7CD4(a1, v5);
}

uint64_t sub_2480DA858(uint64_t a1, int *a2)
{
  sub_2480DCCCC();
  sub_2480DCA5C();
  sub_2480DB1F0(&qword_27EE87368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  sub_2480DCCFC();
  sub_2480DCA9C();
  sub_2480DCA9C();
  sub_2480D7B78(v5, *(v2 + a2[8]));
  sub_2480D7CD4(v5, *(v2 + a2[9]));
  return sub_2480DCD0C();
}

uint64_t sub_2480DA948()
{
  v0 = type metadata accessor for LibSystemGroupRecord(0);
  v38 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = (&v35 - v5);
  v7 = MEMORY[0x28223BE20](v4);
  v36 = &v35 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v35 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87420, &qword_2480DD5B8);
  MEMORY[0x28223BE20](v11 - 8);
  v37 = (&v35 - v12);
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84FA0];
  v14 = (v13 + 16);
  aBlock[4] = sub_2480DB270;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2480D9F00;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  DarwinDirectoryRecordStoreApply();
  _Block_release(v15);
  swift_beginAccess();
  v16 = *v14;

  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 56);
  if (v19)
  {
    v35 = v0;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = *(v38 + 72);
    v27 = v36;
    sub_2480DB2F4(*(v16 + 48) + v26 * v21, v36);
    sub_2480DB358(v27, v10);

    if (v22)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v29 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v29 >= v23)
      {

        v31 = v37;
        sub_2480DB358(v10, v37);
        v32 = 0;
        v0 = v35;
        goto LABEL_20;
      }

      v22 = *(v16 + 56 + 8 * v29);
      ++v20;
      if (v22)
      {
        while (1)
        {
          v30 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          sub_2480DB2F4(*(v16 + 48) + (v30 | (v29 << 6)) * v26, v3);
          sub_2480DB358(v3, v6);
          if (*v10 >= *v6)
          {
            result = sub_2480DB3BC(v6, type metadata accessor for LibSystemGroupRecord);
            v20 = v29;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_2480DB3BC(v10, type metadata accessor for LibSystemGroupRecord);
            result = sub_2480DB358(v6, v10);
            v20 = v29;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v29 = v20;
        }
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v24 = 0;
  v23 = (v17 + 63) >> 6;
  while (v23 - 1 != v19)
  {
    v20 = v19 + 1;
    v25 = *(v16 + 64 + 8 * v19);
    v24 -= 64;
    ++v19;
    if (v25)
    {
      v35 = v0;
      v22 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) - v24;
      goto LABEL_9;
    }
  }

  v32 = 1;
  v31 = v37;
LABEL_20:
  v33 = v38;
  (*(v38 + 56))(v31, v32, 1, v0);

  result = (*(v33 + 48))(v31, 1, v0);
  if (result == 1)
  {
    goto LABEL_26;
  }

  v34 = *v31;
  sub_2480DB3BC(v31, type metadata accessor for LibSystemGroupRecord);
  result = (v34 + 1);
  if (v34 == -1)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t _s15DarwinDirectory5GroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2480DCA2C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Group(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_2480DCCAC() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_2480DCCAC() & 1) == 0 || (sub_2480D9188(*(a1 + v5[8]), *(a2 + v5[8])) & 1) == 0)
  {
    return 0;
  }

  v16 = v5[9];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);

  return sub_2480D9340(v17, v18);
}

uint64_t sub_2480DAF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2480DCA5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2480DAFF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2480DCA5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_2480DB0AC(uint64_t a1)
{
  sub_2480DCA5C();
  if (v1 <= 0x3F)
  {
    sub_2480D9D48();
    if (v2 <= 0x3F)
    {
      sub_2480DB15C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2480DB15C(uint64_t a1)
{
  if (!qword_27EE87418)
  {
    type metadata accessor for Group(255);
    sub_2480DB1F0(&qword_27EE87388, type metadata accessor for Group, &protocol conformance descriptor for Group);
    v1 = sub_2480DCAFC();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE87418);
    }
  }
}

uint64_t sub_2480DB1F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2480DB238()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2480DB2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibSystemGroupRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480DB358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibSystemGroupRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480DB3BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t User.init(name:fullName:primaryGroup:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for User(0);
  v13 = (a6 + v12[9]);
  *v13 = 0x706D652F7261762FLL;
  v13[1] = 0xEA00000000007974;
  v14 = (a6 + v12[10]);
  strcpy(v14, "/usr/bin/false");
  v14[15] = -18;
  v15 = MEMORY[0x277D84FA0];
  *(a6 + v12[11]) = MEMORY[0x277D84FA0];
  *(a6 + v12[12]) = v15;
  sub_2480DCA4C();
  if (qword_27EE87310 != -1)
  {
    swift_once();
  }

  *(a6 + v12[5]) = sub_2480DBEB4();
  v16 = (a6 + v12[6]);
  *v16 = a1;
  v16[1] = a2;
  v17 = (a6 + v12[7]);
  *v17 = a3;
  v17[1] = a4;
  return sub_2480DC958(a5, a6 + v12[8], type metadata accessor for Group);
}

uint64_t type metadata accessor for User(uint64_t a1)
{
  result = qword_27EE87430;
  if (!qword_27EE87430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t User.hashValue.getter()
{
  sub_2480DCCCC();
  User.hash(into:)(v1);
  return sub_2480DCD0C();
}

uint64_t User.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2480DCA5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t User.uid.setter(int a1)
{
  result = type metadata accessor for User(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t User.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for User(0) + 24));

  return v1;
}

uint64_t User.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.fullName.getter()
{
  v1 = *(v0 + *(type metadata accessor for User(0) + 28));

  return v1;
}

uint64_t User.fullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.primaryGroup.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for User(0) + 32);

  return sub_2480D89BC(a1, v3);
}

uint64_t User.homeDirectory.getter()
{
  v1 = *(v0 + *(type metadata accessor for User(0) + 36));

  return v1;
}

uint64_t User.homeDirectory.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.shell.getter()
{
  v1 = *(v0 + *(type metadata accessor for User(0) + 40));

  return v1;
}

uint64_t User.shell.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.memberships.getter()
{
  type metadata accessor for User(0);
}

uint64_t User.memberships.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for User(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t User.aliases.getter()
{
  type metadata accessor for User(0);
}

uint64_t User.aliases.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for User(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t User.hash(into:)(__int128 *a1)
{
  sub_2480DCA5C();
  sub_2480DC850(&qword_27EE87368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2480DCA6C();
  v3 = type metadata accessor for User(0);
  sub_2480DCCFC();
  sub_2480DCA9C();
  sub_2480DCA9C();
  v4 = v1 + v3[8];
  sub_2480DCA6C();
  v5 = type metadata accessor for Group(0);
  sub_2480DCCFC();
  sub_2480DCA9C();
  sub_2480DCA9C();
  sub_2480D7B78(a1, *(v4 + *(v5 + 32)));
  sub_2480D7CD4(a1, *(v4 + *(v5 + 36)));
  sub_2480DCA9C();
  sub_2480DCA9C();
  sub_2480D7CD4(a1, *(v1 + v3[11]));
  v6 = *(v1 + v3[12]);

  return sub_2480D7B78(a1, v6);
}

uint64_t sub_2480DBE30()
{
  sub_2480DCCCC();
  User.hash(into:)(v1);
  return sub_2480DCD0C();
}

uint64_t sub_2480DBE74(uint64_t a1)
{
  sub_2480DCCCC();
  User.hash(into:)(v2);
  return sub_2480DCD0C();
}

uint64_t sub_2480DBEB4()
{
  v0 = type metadata accessor for LibSystemUserRecord(0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v36 - v5);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = (&v36 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE87440, &qword_2480DD680);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = (&v36 - v13);
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84FA0];
  v15 = (v14 + 16);
  aBlock[4] = sub_2480DC8D0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2480D9F00;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);

  DarwinDirectoryRecordStoreApply();
  _Block_release(v16);
  swift_beginAccess();
  v17 = *v15;

  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 56);
  if (v20)
  {
    v37 = v0;
    v21 = 0;
    v22 = __clz(__rbit64(v20));
    v23 = (v20 - 1) & v20;
    v24 = (v18 + 63) >> 6;
LABEL_9:
    v27 = *(v17 + 48);
    v36 = v1;
    v28 = *(v1 + 72);
    sub_2480DC8F0(v27 + v28 * v22, v9, type metadata accessor for LibSystemUserRecord);
    sub_2480DC958(v9, v11, type metadata accessor for LibSystemUserRecord);

    v30 = v38;
    if (v23)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v31 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v31 >= v24)
      {

        v33 = v39;
        sub_2480DC958(v11, v39, type metadata accessor for LibSystemUserRecord);
        v34 = 0;
        v1 = v36;
        v0 = v37;
        goto LABEL_20;
      }

      v23 = *(v17 + 56 + 8 * v31);
      ++v21;
      if (v23)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          sub_2480DC8F0(*(v17 + 48) + (v32 | (v31 << 6)) * v28, v30, type metadata accessor for LibSystemUserRecord);
          sub_2480DC958(v30, v6, type metadata accessor for LibSystemUserRecord);
          if (*v11 >= *v6)
          {
            result = sub_2480DC9C0(v6);
            v21 = v31;
            if (!v23)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_2480DC9C0(v11);
            result = sub_2480DC958(v6, v11, type metadata accessor for LibSystemUserRecord);
            v21 = v31;
            if (!v23)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v31 = v21;
        }
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v25 = 0;
  v24 = (v18 + 63) >> 6;
  while (v24 - 1 != v20)
  {
    v21 = v20 + 1;
    v26 = *(v17 + 64 + 8 * v20);
    v25 -= 64;
    ++v20;
    if (v26)
    {
      v37 = v0;
      v23 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) - v25;
      goto LABEL_9;
    }
  }

  v34 = 1;
  v33 = v39;
LABEL_20:
  (*(v1 + 56))(v33, v34, 1, v0);

  result = (*(v1 + 48))(v33, 1, v0);
  if (result == 1)
  {
    goto LABEL_26;
  }

  v35 = *v33;
  sub_2480DC9C0(v33);
  result = (v35 + 1);
  if (v35 == -1)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t _s15DarwinDirectory4UserV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2480DCA2C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for User(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_2480DCCAC() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_2480DCCAC() & 1) == 0)
  {
    return 0;
  }

  if ((_s15DarwinDirectory5GroupV2eeoiySbAC_ACtFZ_0(a1 + v5[8], a2 + v5[8]) & 1) == 0)
  {
    return 0;
  }

  v16 = v5[9];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_2480DCCAC() & 1) == 0)
  {
    return 0;
  }

  v21 = v5[10];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (sub_2480DCCAC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_2480D9340(*(a1 + v5[11]), *(a2 + v5[11])) & 1) == 0)
  {
    return 0;
  }

  v25 = v5[12];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);

  return sub_2480D9188(v26, v27);
}

uint64_t sub_2480DC51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2480DCA5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Group(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2480DC658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2480DCA5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Group(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2480DC780(uint64_t a1)
{
  sub_2480DCA5C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Group(319);
    if (v2 <= 0x3F)
    {
      sub_2480DB15C(319);
      if (v3 <= 0x3F)
      {
        sub_2480D9D48();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2480DC850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2480DC898()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2480DC8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480DC958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480DC9C0(uint64_t a1)
{
  v2 = type metadata accessor for LibSystemUserRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}
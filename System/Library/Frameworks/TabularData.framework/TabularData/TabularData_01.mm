uint64_t sub_21B23B550@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(*(v3 + 8) + 8))(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21B23B5A8(uint64_t a1)
{
  result = MEMORY[0x21CEED8D0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_21B233D18(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B23B6C4(uint64_t *a1)
{
  v2 = sub_21B248FC4();
  v3 = MEMORY[0x21CEED8D0](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v17 = v3;
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 40);
  v12 = a1 + 6;
  v10 = a1[6];
  v11 = v12[1];
  if (v10 != v11)
  {
    do
    {
      v15[0] = v4;
      v15[1] = v5;
      v15[2] = v7;
      v15[3] = v6;
      v15[4] = v8;
      v16 = v9;
      v13 = DataFrame.Rows.index(after:)(v10);
      sub_21B254588(v15, v10);
      v10 = v13;
    }

    while (v13 != v11);
    v3 = v17;
  }

  sub_21B23A9F4(v6, v8, v9);
  return v3;
}

Swift::Void __swiftcall DataFrame.removeAlias(_:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  v3 = *(v2 + 16);
  if (v3)
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    v6 = 0;
    v7 = (v2 + 40);
    do
    {
      v8 = v6 + 1;
      v9 = *(v7 - 1) == countAndFlagsBits && *v7 == object;
      if (v9 || (sub_21B34B9F4() & 1) != 0)
      {
        sub_21B248A60(v6, v6 + 1);
      }

      v7 += 4;
      ++v6;
    }

    while (v3 != v8);
  }

  sub_21B23DD58(0, 0, 2);

  sub_21B23A9F4(0, 0, 2);
}

uint64_t DataFrame.rows.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  if (!*(*v1 + 16))
  {

    goto LABEL_6;
  }

  sub_21B233A74(v3 + 32, v13);
  v6 = v14;
  v7 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v8 = *(v7 + 8);
  v9 = *(v8 + 48);

  v10 = v9(v6, v8);
  result = sub_21B233960(v13);
  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v10)
    {
      v12 = 0;
LABEL_7:
      *a1 = v3;
      *(a1 + 8) = v4;
      *(a1 + 16) = v5;
      *(a1 + 24) = 0;
      *(a1 + 32) = v10;
      *(a1 + 40) = v12;
      return result;
    }

LABEL_6:
    v10 = 0;
    v12 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B23B9BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  result = sub_21B2A32B8();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = result;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_21B23BA34(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

__n128 DataFrame.rows.setter(__n128 *a1)
{

  v3 = a1[1].n128_u64[0];
  sub_21B23A9F4(a1[1].n128_i64[1], a1[2].n128_i64[0], a1[2].n128_i8[8]);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  return result;
}

void (*DataFrame.rows.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  if (!*(*v1 + 16))
  {
    goto LABEL_7;
  }

  sub_21B233A74(v5 + 32, v3 + 48);
  v8 = *(v4 + 72);
  v9 = *(v4 + 80);
  __swift_project_boxed_opaque_existential_1((v4 + 48), v8);
  v10 = *(v9 + 8);
  v11 = *(v10 + 48);

  v12 = v11(v8, v10);
  sub_21B233960(v4 + 48);
  if (v12 < 0)
  {
    __break(1u);
LABEL_7:

    goto LABEL_8;
  }

  if (v12)
  {
    v13 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v12 = 0;
  v13 = 2;
LABEL_9:
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = 0;
  *(v4 + 32) = v12;
  *(v4 + 40) = v13;
  return sub_21B23BC54;
}

void sub_21B23BC54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[11];
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = *(*a1 + 40);
  v12 = **a1;
  if (a2)
  {

    sub_21B254074(v6, v7, v8);

    sub_21B23A9F4(v6, v7, v8);
    *v3 = v12;
    v3[1] = v4;
    v3[2] = v5;
    v9 = v2[3];
    v10 = v2[4];
    v11 = *(v2 + 40);

    sub_21B23A9F4(v9, v10, v11);
  }

  else
  {

    sub_21B23A9F4(v6, v7, v8);
    *v3 = v12;
    v3[1] = v4;
    v3[2] = v5;
  }

  free(v2);
}

uint64_t DataFrame.shape.getter()
{
  if (!*(*v0 + 16))
  {

    goto LABEL_6;
  }

  sub_21B233A74(*v0 + 32, v9);
  v1 = v10;
  v2 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v3 = *(v2 + 8);
  v4 = *(v3 + 48);

  v5 = v4(v1, v3);
  result = sub_21B233960(v9);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v7 = 0;
LABEL_7:
      v8 = sub_21B2FB1D4(0, v5, v7);

      sub_21B23A9F4(0, v5, v7);
      return v8;
    }

LABEL_6:
    v5 = 0;
    v7 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

TabularData::DataFrame __swiftcall DataFrame.init()()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  v0[1] = v2;
  v3 = sub_21B25DC2C(v2);
  v1[2] = v3;
  result.columnIndicesByName._rawValue = v5;
  result.aliases._rawValue = v4;
  result.columns._rawValue = v3;
  return result;
}

uint64_t sub_21B23BEF8@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v69 = MEMORY[0x277D84F90];
  sub_21B254034(0, v3, 0);
  v4 = v69;
  if (v3)
  {
    v5 = *(v2 + 16);
    v6 = v2 + 32;
    v7 = v3;
    do
    {
      if (!v5)
      {
        goto LABEL_39;
      }

      sub_21B233A74(v6, &v65);
      v8 = v67;
      __swift_project_boxed_opaque_existential_1(&v65, v67);
      v9 = (*(*(*(&v8 + 1) + 8) + 48))(v8);
      sub_21B233960(&v65);
      v69 = v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21B254034((v10 > 1), v11 + 1, 1);
        v4 = v69;
      }

      *(v4 + 16) = v11 + 1;
      *(v4 + 8 * v11 + 32) = v9;
      v6 += 40;
      --v5;
      --v7;
    }

    while (v7);
  }

  v12 = *(v2 + 16);
  if (v3 != v12)
  {
    v51 = v2 + 40 * v3 + 32;
    do
    {
      if (v3 >= v12)
      {
        goto LABEL_40;
      }

      sub_21B233A74(v51, &v65);
      v52 = v67;
      __swift_project_boxed_opaque_existential_1(&v65, v67);
      v53 = (*(*(*(&v52 + 1) + 8) + 48))(v52);
      sub_21B233960(&v65);
      v69 = v4;
      v55 = *(v4 + 16);
      v54 = *(v4 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_21B254034((v54 > 1), v55 + 1, 1);
        v4 = v69;
      }

      ++v3;
      *(v4 + 16) = v55 + 1;
      *(v4 + 8 * v55 + 32) = v53;
      v12 = *(v2 + 16);
      v51 += 40;
    }

    while (v3 != v12);
  }

  v14 = sub_21B25EF30(v13);

  v15 = *(v14 + 16);

  if (v15 <= 1)
  {

    sub_21B31703C(MEMORY[0x277D84FA0], 46, 0xE100000000000000, &v69);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_21B25DC2C(MEMORY[0x277D84F90]);
    v18 = 0;
    v19 = v2 + 32;
    v58 = v3;
    v59 = v2;
    while (1)
    {
      if (v3 == v18)
      {

        *a2 = v16;
        a2[1] = MEMORY[0x277D84F90];
        a2[2] = v17;
        return result;
      }

      if (v18 >= *(v2 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        sub_21B34BA84();
        __break(1u);
        break;
      }

      sub_21B233A74(v19, &v66);
      v62 = v66;
      v63 = v67;
      v20 = v68;
      v64 = v68;
      v21 = *(&v67 + 1);
      __swift_project_boxed_opaque_existential_1(&v62, *(&v67 + 1));
      v22 = (*(*(v20 + 8) + 8))(v21);
      v24 = sub_21B233B78(v22, v23);
      v26 = v25;

      v27 = *(&v63 + 1);
      v4 = v64;
      __swift_mutable_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      (*(*(v4 + 8) + 16))(v24, v26, v27);
      sub_21B233A74(&v62, v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_21B249C94(0, *(v16 + 2) + 1, 1, v16, &qword_27CD7E4E8, &qword_21B351DA0, &type metadata for AnyColumn);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_21B249C94((v28 > 1), v29 + 1, 1, v16, &qword_27CD7E4E8, &qword_21B351DA0, &type metadata for AnyColumn);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[40 * v29];
      v31 = v60[0];
      v32 = v60[1];
      *(v30 + 8) = v61;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v33 = *(&v63 + 1);
      v34 = v64;
      __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      v35 = (*(*(v34 + 8) + 8))(v33);
      v37 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v60[0] = v17;
      v40 = sub_21B24B5D0(v35, v37, MEMORY[0x277D83758], sub_21B24FDE4);
      v41 = *(v17 + 2);
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        goto LABEL_37;
      }

      v4 = v39;
      if (*(v17 + 3) >= v43)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v39 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_21B25201C();
          if ((v4 & 1) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        sub_21B24BE68(v43, isUniquelyReferenced_nonNull_native);
        v44 = sub_21B24B5D0(v35, v37, MEMORY[0x277D83758], sub_21B24FDE4);
        if ((v4 & 1) != (v45 & 1))
        {
          goto LABEL_42;
        }

        v40 = v44;
        if ((v4 & 1) == 0)
        {
LABEL_25:
          v17 = *&v60[0];
          *(*&v60[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
          v46 = (*(v17 + 6) + 16 * v40);
          *v46 = v35;
          v46[1] = v37;
          *(*(v17 + 7) + 8 * v40) = v18;
          v47 = *(v17 + 2);
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_41;
          }

          *(v17 + 2) = v49;
          goto LABEL_11;
        }
      }

      v17 = *&v60[0];
      *(*(*&v60[0] + 56) + 8 * v40) = v18;
LABEL_11:
      sub_21B233960(&v62);
      ++v18;
      v19 += 40;
      v3 = v58;
      v2 = v59;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_38;
      }
    }
  }

  v65 = 0;
  *&v66 = 0xE000000000000000;
  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000047, 0x800000021B34C3C0);
  v56 = MEMORY[0x21CEED760](v4, MEMORY[0x277D83B88]);
  MEMORY[0x21CEED5E0](v56);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DataFrame.init<A>(columns:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E0D0, &qword_21B351970);
  v9 = sub_21B25DD98();
  v60 = sub_21B34B674();
  MEMORY[0x28223BE20](v60);
  v63 = v8;
  v70 = v8;
  *&v71 = a2;
  *(&v71 + 1) = v9;
  *&v72 = a3;
  v10 = sub_21B34B664();
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v64 = a1;
  isUniquelyReferenced_nonNull_native = sub_21B23CCA8(sub_21B23CC48, 0, a2, MEMORY[0x277D83B88], MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v13);

  v16 = sub_21B25EF30(v15);

  v17 = *(v16 + 16);

  if (v17 >= 2)
  {
LABEL_24:
    v70 = 0;
    *&v71 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000047, 0x800000021B34C3C0);
    v57 = MEMORY[0x21CEED760](isUniquelyReferenced_nonNull_native, MEMORY[0x277D83B88]);
    MEMORY[0x21CEED5E0](v57);

    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v59 = a4;

  sub_21B31703C(MEMORY[0x277D84FA0], 46, 0xE100000000000000, &v74);
  v18 = MEMORY[0x277D84F90];
  v19 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  v70 = 0;
  isUniquelyReferenced_nonNull_native = v64;
  sub_21B34BA54();
  sub_21B34B644();
  v20 = v12;
  sub_21B34B654();
  if (*(&v72 + 1))
  {
    v21 = MEMORY[0x277D84F90];
    v63 = a2;
    v62 = v10;
    v61 = v12;
    while (1)
    {
      v22 = v18;
      v23 = isUniquelyReferenced_nonNull_native;
      v64 = v70;
      v67 = v71;
      v68 = v72;
      v24 = v73;
      v69 = v73;
      v25 = *(&v72 + 1);
      __swift_project_boxed_opaque_existential_1(&v67, *(&v72 + 1));
      v26 = (*(*(v24 + 8) + 8))(v25);
      v28 = sub_21B233B78(v26, v27);
      v30 = v29;

      v31 = *(&v68 + 1);
      v32 = v69;
      __swift_mutable_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
      (*(*(v32 + 8) + 16))(v28, v30, v31);
      sub_21B233A74(&v67, v65);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_21B249C94(0, *(v21 + 2) + 1, 1, v21, &qword_27CD7E4E8, &qword_21B351DA0, &type metadata for AnyColumn);
      }

      v34 = *(v21 + 2);
      v33 = *(v21 + 3);
      if (v34 >= v33 >> 1)
      {
        v21 = sub_21B249C94((v33 > 1), v34 + 1, 1, v21, &qword_27CD7E4E8, &qword_21B351DA0, &type metadata for AnyColumn);
      }

      *(v21 + 2) = v34 + 1;
      v35 = &v21[40 * v34];
      v36 = v65[0];
      v37 = v65[1];
      *(v35 + 8) = v66;
      *(v35 + 2) = v36;
      *(v35 + 3) = v37;
      v38 = *(&v68 + 1);
      v39 = v69;
      __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
      v40 = (*(*(v39 + 8) + 8))(v38);
      v42 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v65[0] = v19;
      v44 = sub_21B24B5D0(v40, v42, MEMORY[0x277D83758], sub_21B24FDE4);
      v45 = v19[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        break;
      }

      v48 = v43;
      if (v19[3] >= v47)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21B25201C();
        }
      }

      else
      {
        sub_21B24BE68(v47, isUniquelyReferenced_nonNull_native);
        v49 = sub_21B24B5D0(v40, v42, MEMORY[0x277D83758], sub_21B24FDE4);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_23;
        }

        v44 = v49;
      }

      isUniquelyReferenced_nonNull_native = v23;
      v18 = v22;
      if (v48)
      {

        v19 = *&v65[0];
        *(*(*&v65[0] + 56) + 8 * v44) = v64;
      }

      else
      {
        v19 = *&v65[0];
        *(*&v65[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
        v51 = (v19[6] + 16 * v44);
        *v51 = v40;
        v51[1] = v42;
        *(v19[7] + 8 * v44) = v64;
        v52 = v19[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_22;
        }

        v19[2] = v54;
      }

      sub_21B233960(&v67);
      v10 = v62;
      v20 = v61;
      sub_21B34B654();
      a2 = v63;
      if (!*(&v72 + 1))
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    sub_21B34BA84();
    __break(1u);
    goto LABEL_24;
  }

  v21 = v18;
LABEL_20:
  (*(*(a2 - 1) + 8))(isUniquelyReferenced_nonNull_native, a2);
  (*(v58 + 8))(v20, v10);

  v56 = v59;
  *v59 = v21;
  v56[1] = v18;
  v56[2] = v19;
  return result;
}

uint64_t sub_21B23CC48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(*(v3 + 8) + 48))(v4);
  *a2 = result;
  return result;
}

uint64_t sub_21B23CCA8(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_21B34B474();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_21B34AED4();
  v63 = sub_21B34B774();
  v58 = sub_21B34B784();
  sub_21B34B744();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_21B34AEC4();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_21B34B4D4();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_21B34B764();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_21B34B4D4();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_21B34B764();
      sub_21B34B4D4();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t DataFrame.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v29 = *a1;
  v30 = v3;
  v31 = v4;
  v32 = v5;
  v22 = v6;
  v33 = v6;
  v34 = v7;
  v8 = DataFrame.Slice.columns.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v20 = v5;
    v21 = v3;
    v28 = MEMORY[0x277D84F90];
    sub_21B254088(0, v9, 0);
    v10 = v28;
    v11 = v8 + 32;
    do
    {
      sub_21B25EFA4(v11, v23);
      v13 = v24;
      v12 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v12 + 16))(v26, v13, v12);
      sub_21B25F000(v23);
      v28 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21B254088((v14 > 1), v15 + 1, 1);
        v10 = v28;
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 40 * v15;
      v17 = v26[0];
      v18 = v26[1];
      *(v16 + 64) = v27;
      *(v16 + 32) = v17;
      *(v16 + 48) = v18;
      v11 += 40;
      --v9;
    }

    while (v9);

    v3 = v21;
    v5 = v20;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  result = sub_21B23A9F4(v5, v22, v7);
  *a2 = v10;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t sub_21B23D53C(uint64_t a1)
{
  v2 = sub_21B34B574();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_21B25FCFC(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t DataFrame.columnNames(forAlias:)(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = 0;
  v6 = *(v2 + 8);
  v7 = *(v6 + 16);
  v32 = v6;
  v8 = v6 + 56;
  v9 = -v7;
  v30 = v8;
  v31 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = v5 + 1;
  v11 = (v8 + 32 * v5);
  while (v9 + v10 != 1)
  {
    v5 = v10;
    if ((v10 - 1) >= *(v32 + 16))
    {
      __break(1u);
      return result;
    }

    v13 = *(v11 - 3);
    v12 = *(v11 - 2);
    v14 = *(v11 - 1);
    v15 = *v11;
    if (v13 == v4 && v12 == a2)
    {
      v13 = v4;
LABEL_12:

      v17 = v31;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B254054(0, *(v31 + 16) + 1, 1);
        v17 = v31;
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        result = sub_21B254054((v18 > 1), v19 + 1, 1);
        v20 = v19 + 1;
        v17 = v31;
      }

      *(v17 + 16) = v20;
      v31 = v17;
      v21 = (v17 + 32 * v19);
      v21[4] = v13;
      v21[5] = v12;
      v21[6] = v14;
      v21[7] = v15;
      v8 = v30;
      goto LABEL_2;
    }

    ++v10;
    v11 += 4;
    result = sub_21B34B9F4();
    if (result)
    {
      goto LABEL_12;
    }
  }

  v22 = *(v31 + 16);
  if (v22)
  {
    v33 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v22, 0);
    v23 = v33;
    v24 = (v31 + 56);
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      v27 = *(v33 + 16);
      v28 = *(v33 + 24);

      if (v27 >= v28 >> 1)
      {
        sub_21B231F10((v28 > 1), v27 + 1, 1);
      }

      *(v33 + 16) = v27 + 1;
      v29 = v33 + 16 * v27;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v24 += 4;
      --v22;
    }

    while (v22);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v23;
}

uint64_t DataFrame.containsColumn<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for ColumnID(0, a2, a3, a4);
  v7 = sub_21B233AD0();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  v20 = DataFrame.indexOfColumn(_:)(v10);
  value = v20.value;
  is_nil = v20.is_nil;

  if (is_nil)
  {
    return 0;
  }

  if ((value & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (value >= *(*v5 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_21B233A74(*v5 + 40 * value + 32, v17);
  v15 = v18;
  v14 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v16 = (*(*(v14 + 8) + 80))(v15);
  sub_21B233960(v17);
  return v16 == a2;
}

Swift::Int DataFrame.containsColumn<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = DataFrame.indexOfColumn(_:)(*&a1);
  if (v13.is_nil)
  {
    return 0;
  }

  if (v13.value < 0)
  {
    __break(1u);
  }

  else if (v13.value < *(*v4 + 16))
  {
    sub_21B233A74(*v4 + 40 * v13.value + 32, v10);
    v7 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = (*(*(v6 + 8) + 80))(v7);
    sub_21B233960(v10);
    v13.value = v8 == a4;
    return v13.value;
  }

  __break(1u);
  return v13.value;
}

Swift::Void __swiftcall DataFrame.addAlias(_:forColumn:)(Swift::String _, Swift::String forColumn)
{
  v3 = v2;
  object = forColumn._object;
  countAndFlagsBits = forColumn._countAndFlagsBits;
  if (*(*(v2 + 16) + 16) && (v6 = _._object, v7 = _._countAndFlagsBits, sub_21B24B5D0(forColumn._countAndFlagsBits, forColumn._object, MEMORY[0x277D83758], sub_21B24FDE4), (v8 & 1) != 0))
  {
    v9 = *(v2 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_21B249A10(0, v9[2] + 1, 1, v9);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_21B249A10((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    v12 = &v9[4 * v11];
    v12[4] = v7;
    v12[5] = v6;
    v12[6] = countAndFlagsBits;
    v12[7] = object;
    *(v3 + 8) = v9;
  }

  else
  {
    sub_21B34B634();

    MEMORY[0x21CEED5E0](countAndFlagsBits, object);
    MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
    sub_21B34B824();
    __break(1u);
  }
}

uint64_t sub_21B23DB68(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v29 = a2;
  v4 = *(v2 + 3);
  v5 = *(v2 + 40);
  v6 = v2[1];
  v27 = *v2;
  v28[0] = v6;
  *(v28 + 9) = *(v2 + 25);
  v7 = v4;
  if (v5)
  {
    if (v5 == 1 && *(v4 + 16))
    {
      v7 = *(v4 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v9)
      {
        v7 = 0;
      }

      else
      {
        v7 = v8;
      }
    }
  }

  sub_21B2A6400();
  if ((v11 & 1) == 0)
  {
    if (v7 != v10)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

LABEL_10:
  v24 = 0;
  v25 = 0;
  v26 = 2;
  v12 = v4;
  if (v5)
  {
    if (v5 == 1 && *(v4 + 16))
    {
      v12 = *(v4 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v15)
      {
        v12 = 0;
      }

      else
      {
        v12 = v14;
      }
    }
  }

  while (1)
  {
    do
    {
      v16 = v12;
      sub_21B2A6400();
      if (v18)
      {
        if (!v12)
        {
          return v24;
        }
      }

      else if (v12 == v17)
      {
        return v24;
      }

      v12 = DataFrame.Rows.index(after:)(v12);
      v21 = v27;
      v22 = *&v28[0];
      v23 = v16;

      v19 = a1(&v21);

      if (v3)
      {
        return sub_21B23A9F4(v24, v25, v26);
      }
    }

    while ((v19 & 1) == 0);
    if (v12 < v16)
    {
      break;
    }

    sub_21B248A60(v16, v12);
  }

  __break(1u);
  return result;
}

void *sub_21B23DD58(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result;
  v7 = a2;
  if (a3)
  {
    if (a3 != 1 || !result[2])
    {
      return result;
    }

    v6 = result[4];
    v7 = result[5];
    sub_21B254074(result, a2, 1);
  }

  sub_21B248BBC(1, v5, a2, a3, &v52);
  v8 = v52;
  v9 = *v39;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_66;
  }

  for (i = v9; ; i = sub_21B23A31C(v9))
  {
    v49 = i;
    if (v8 == v53)
    {
      break;
    }

    if (v53 <= v8)
    {
      v24 = v8;
    }

    else
    {
      v24 = v53;
    }

    v44 = v53;
    v45 = v24;
    v42 = v54;
    v41 = v54;
    v40 = v54 + 32;
    while (v8 != v45)
    {
      if (v55)
      {
        if (v55 != 1)
        {
          goto LABEL_68;
        }

        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        v25 = *(v41 + 16);
        if (v8 >= v25)
        {
          goto LABEL_64;
        }

        v26 = *(v40 + 16 * v8);
      }

      else
      {
        if (v8)
        {
          goto LABEL_62;
        }

        v25 = 1;
        v26 = v42;
      }

      v46 = *(&v26 + 1);
      if (v8 >= v25)
      {
        goto LABEL_57;
      }

      v27 = v26;
      if (v7 != v26)
      {
        if (v7 >= v26)
        {
          goto LABEL_65;
        }

        v43 = v8;
        v47 = 32 * v6;
        v48 = 32 * v7;
        v8 = i;
        while (1)
        {
          if (v6 != v7)
          {
            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            v28 = i[2];
            if (v6 >= v28)
            {
              goto LABEL_51;
            }

            if (v7 >= v28)
            {
              goto LABEL_52;
            }

            v51 = v6;
            v6 = v27;
            v29 = (v8 + v47);
            v31 = *(v8 + v47 + 32);
            v30 = *(v8 + v47 + 40);
            v32 = *(v8 + v47 + 48);
            v9 = *(v8 + v47 + 56);
            v33 = (v8 + v48);
            v34 = *(v8 + v48 + 40);
            v35 = *(v8 + v48 + 48);
            v36 = *(v8 + v48 + 56);
            v29[4] = *(v8 + v48 + 32);
            v29[5] = v34;
            v29[6] = v35;
            v29[7] = v36;
            v37 = i[2];

            if (v7 >= v37)
            {
              goto LABEL_53;
            }

            v33[4] = v31;
            v33[5] = v30;
            v33[6] = v32;
            v33[7] = v9;

            v27 = v6;
            i = v49;
            v6 = v51;
          }

          v38 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          ++v7;
          v8 += 32;
          ++v6;
          if (v27 == v7)
          {
            v6 = v38;
            v8 = v43;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        break;
      }

LABEL_27:
      ++v8;
      v7 = v46;
      if (v8 == v44)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    ;
  }

LABEL_8:
  sub_21B261664(&v52, &qword_27CD7E4F0, qword_21B351DA8);
  v11 = v49;
  *v39 = v49;
  v12 = v49[2];
  if (v7 != v12)
  {
    v13 = 4 * v7;
    v14 = 4 * v6;
    do
    {
      if (v6 != v7)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        if (v6 >= v12)
        {
          goto LABEL_59;
        }

        if (v7 >= v12)
        {
          goto LABEL_60;
        }

        v15 = &v11[v14];
        v9 = v11[v14 + 4];
        v8 = v11[v14 + 5];
        v16 = v11[v14 + 6];
        v17 = v11[v14 + 7];
        v18 = v7;
        v7 = &v11[v13];
        v19 = v11[v13 + 5];
        v20 = v11[v13 + 6];
        v21 = v11[v13 + 7];
        v15[4] = v11[v13 + 4];
        v15[5] = v19;
        v15[6] = v20;
        v15[7] = v21;
        v50 = v11[2];

        if (v18 >= v50)
        {
          goto LABEL_61;
        }

        *(v7 + 32) = v9;
        *(v7 + 40) = v8;
        *(v7 + 48) = v16;
        *(v7 + 56) = v17;

        v11 = v49;
        v7 = v18;
      }

      v22 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_54;
      }

      v23 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_55;
      }

      ++v7;
      v12 = v11[2];
      v13 += 4;
      v14 += 4;
      ++v6;
    }

    while (v23 != v12);
    *v39 = v11;
    v7 = v11[2];
    v6 = v22;
  }

  if (v7 >= v6)
  {
    return sub_21B22EF78(v6, v7, sub_21B249A10, sub_21B25DF10);
  }

  __break(1u);
LABEL_68:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DataFrame.append<A>(column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Column(0, a2, a3, a4);
  Column.eraseToAnyColumn()(v4, v5, v6, v8);
  DataFrame.append(column:)(v8);
  return sub_21B233960(v8);
}

uint64_t DataFrame.append(column:)(uint64_t a1)
{
  v2 = v1;
  sub_21B233A74(a1, v52);
  sub_21B23B2EC(v52);
  v4 = *v1;
  v3 = v1[1];
  v5 = v2[2];
  *&v49 = v4;
  *(&v49 + 1) = v3;
  *&v50 = v5;
  v6 = v53;
  v7 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v8 = *(v7 + 8);
  v9 = *(v8 + 8);

  v10._countAndFlagsBits = v9(v6, v8);
  v55 = DataFrame.indexOfColumn(_:)(v10);
  LOBYTE(v3) = v55.is_nil;

  if ((v3 & 1) == 0)
  {
    v11 = *(v4 + 2);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v48 = MEMORY[0x277D84F90];
      sub_21B231F10(0, v11, 0);
      v12 = v48;
      v13 = (v4 + 32);
      do
      {
        sub_21B233A74(v13, &v49);
        v15 = *(&v50 + 1);
        v14 = v51;
        __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
        v16 = (*(*(v14 + 8) + 8))(v15);
        v18 = v17;
        sub_21B233960(&v49);
        v20 = *(v48 + 16);
        v19 = *(v48 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_21B231F10((v19 > 1), v20 + 1, 1);
        }

        *(v48 + 16) = v20 + 1;
        v21 = v48 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v13 += 40;
        --v11;
      }

      while (v11);
    }

    v22 = sub_21B25DE78(v12);

    sub_21B31703C(v22, 46, 0xE100000000000000, &v49);
    v24 = v53;
    v23 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v25 = (*(*(v23 + 8) + 8))(v24);
    v27 = sub_21B233B78(v25, v26);
    v29 = v28;

    v30 = v53;
    v31 = v54;
    __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
    (*(*(v31 + 8) + 16))(v27, v29, v30);
  }

  v33 = v53;
  v32 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v34._countAndFlagsBits = (*(*(v32 + 8) + 8))(v33);
  DataFrame.removeAlias(_:)(v34);

  v36 = v53;
  v35 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v37 = (*(*(v35 + 8) + 8))(v36);
  v39 = v38;
  v40 = *(v4 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v49 = v2[2];
  sub_21B23A60C(v40, v37, v39, isUniquelyReferenced_nonNull_native);

  v2[2] = v49;
  sub_21B233A74(v52, &v49);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_21B249C94(0, *(v4 + 2) + 1, 1, v4, &qword_27CD7E4E8, &qword_21B351DA0, &type metadata for AnyColumn);
  }

  v43 = *(v4 + 2);
  v42 = *(v4 + 3);
  if (v43 >= v42 >> 1)
  {
    v4 = sub_21B249C94((v42 > 1), v43 + 1, 1, v4, &qword_27CD7E4E8, &qword_21B351DA0, &type metadata for AnyColumn);
  }

  *(v4 + 2) = v43 + 1;
  v44 = &v4[40 * v43];
  v45 = v49;
  v46 = v50;
  *(v44 + 8) = v51;
  *(v44 + 2) = v45;
  *(v44 + 3) = v46;
  *v2 = v4;
  return sub_21B233960(v52);
}

uint64_t DataFrame.insert<A>(column:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Column(0, a3, a3, a4);
  Column.eraseToAnyColumn()(v5, v6, v7, v9);
  DataFrame.insert(column:at:)(v9, a2);
  return sub_21B233960(v9);
}

uint64_t DataFrame.insert(column:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_21B233A74(a1, v60);
  sub_21B23B2EC(v60);
  v6 = *v2;
  v5 = v2[1];
  v7 = v3[2];
  v57[0] = v6;
  v57[1] = v5;
  v57[2] = v7;
  v9 = v61;
  v8 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v10 = *(v8 + 8);
  v11 = *(v10 + 8);

  v12._countAndFlagsBits = v11(v9, v10);
  v63 = DataFrame.indexOfColumn(_:)(v12);
  LOBYTE(v5) = v63.is_nil;

  if ((v5 & 1) == 0)
  {
    v13 = *(v6 + 16);
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v55 = a2;
      v56 = MEMORY[0x277D84F90];
      sub_21B231F10(0, v13, 0);
      v14 = v56;
      v15 = v6 + 32;
      do
      {
        sub_21B233A74(v15, v57);
        v17 = v58;
        v16 = v59;
        __swift_project_boxed_opaque_existential_1(v57, v58);
        v18 = (*(*(v16 + 8) + 8))(v17);
        v20 = v19;
        sub_21B233960(v57);
        v22 = *(v56 + 16);
        v21 = *(v56 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_21B231F10((v21 > 1), v22 + 1, 1);
        }

        *(v56 + 16) = v22 + 1;
        v23 = v56 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v15 += 40;
        --v13;
      }

      while (v13);
      a2 = v55;
    }

    v24 = sub_21B25DE78(v14);

    sub_21B31703C(v24, 46, 0xE100000000000000, v57);
    v26 = v61;
    v25 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v27 = (*(*(v25 + 8) + 8))(v26);
    v29 = sub_21B233B78(v27, v28);
    v31 = v30;

    v33 = v61;
    v32 = v62;
    __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
    (*(*(v32 + 8) + 16))(v29, v31, v33);
  }

  v35 = v61;
  v34 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v36._countAndFlagsBits = (*(*(v34 + 8) + 8))(v35);
  DataFrame.removeAlias(_:)(v36);

  if (*(v6 + 16) < a2)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (a2 < 0)
  {
LABEL_26:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v37 = MEMORY[0x277D84F90];
  sub_21B233A74(v60, v57);
  sub_21B249770(a2, a2, v57);
  v38 = *v3;
  v39 = *(*v3 + 16);
  if (v39)
  {
    sub_21B231F10(0, v39, 0);
    v40 = v38 + 32;
    do
    {
      sub_21B233A74(v40, v57);
      v42 = v58;
      v41 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v43 = (*(*(v41 + 8) + 8))(v42);
      v45 = v44;
      sub_21B233960(v57);
      v47 = *(v37 + 16);
      v46 = *(v37 + 24);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        sub_21B231F10((v46 > 1), v47 + 1, 1);
      }

      *(v37 + 16) = v48;
      v49 = v37 + 16 * v47;
      *(v49 + 32) = v43;
      *(v49 + 40) = v45;
      v40 += 40;
      --v39;
    }

    while (v39);
    v39 = *(v38 + 16);
  }

  else
  {
    v48 = *(v37 + 16);
  }

  if (v39 >= v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = v39;
  }

  if (v50)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0E8, &qword_21B351978);
    v51 = sub_21B34B894();
  }

  else
  {
    v51 = MEMORY[0x277D84F98];
  }

  v57[0] = v51;

  sub_21B25C8CC(v52, 0, v39, 1, v57);

  v53 = v57[0];
  sub_21B233960(v60);

  v3[2] = v53;
  return result;
}

uint64_t DataFrame.removeColumn<A>(_:)(uint64_t *a1, uint64_t a2)
{
  DataFrame.removeColumn(_:)(*a1, a1[1], v4);
  sub_21B3338E8(a2, a2);
  return sub_21B233960(v4);
}

uint64_t DataFrame.removeColumn(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = v3[1];
  v9 = v3[2];
  v36 = *v3;
  v37 = v8;
  v38 = v9;

  v10 = sub_21B23AC94(a1, a2);

  sub_21B23EE18(v10, a3);
  v11 = *(v8 + 16);
  v12 = 2;
  if (v11)
  {
    v13 = 0;
    v36 = 0;
    v37 = 0;
    v14 = (v8 + 56);
    LOBYTE(v38) = 2;
    do
    {
      v15 = v13 + 1;
      v16 = *(v14 - 1) == a1 && *v14 == a2;
      if (v16 || (sub_21B34B9F4() & 1) != 0)
      {
        sub_21B248A60(v13, v13 + 1);
      }

      v14 += 4;
      ++v13;
    }

    while (v11 != v15);
    v17 = v36;
    v18 = v37;
    v12 = v38;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  sub_21B23DD58(v17, v18, v12);
  sub_21B23A9F4(v17, v18, v12);
  v19 = *v4;
  v20 = *(*v4 + 16);
  if (v20)
  {
    v41 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v20, 0);
    v21 = v41;
    v22 = v19 + 32;
    do
    {
      sub_21B233A74(v22, &v36);
      v24 = v39;
      v23 = v40;
      __swift_project_boxed_opaque_existential_1(&v36, v39);
      v25 = (*(*(v23 + 8) + 8))(v24);
      v27 = v26;
      sub_21B233960(&v36);
      v41 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_21B231F10((v28 > 1), v29 + 1, 1);
        v21 = v41;
      }

      *(v21 + 16) = v30;
      v31 = v21 + 16 * v29;
      *(v31 + 32) = v25;
      *(v31 + 40) = v27;
      v22 += 40;
      --v20;
    }

    while (v20);
    v20 = *(v19 + 16);
  }

  else
  {
    v30 = *(MEMORY[0x277D84F90] + 16);
  }

  if (v20 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v20;
  }

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0E8, &qword_21B351978);
    v33 = sub_21B34B894();
  }

  else
  {
    v33 = MEMORY[0x277D84F98];
  }

  v36 = v33;

  sub_21B25C8CC(v34, 0, v20, 1, &v36);

  v4[2] = v36;
  return result;
}

uint64_t sub_21B23EE18@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21B23A2F4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 64);
    result = memmove((v9 + 32), (v9 + 72), 40 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t DataFrame.transformColumn<A, B>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return DataFrame.transformColumn<A, B>(_:_:)(*a1, a1[1], a2, a3, a4, a5);
}

{
  return DataFrame.transformColumn<A, B>(_:_:)(*a1, a1[1], a2, a3, a4, a5);
}

uint64_t DataFrame.transformColumn<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = v6[1];
  v14 = v6[2];
  *&v27 = *v6;
  v12 = v27;
  *(&v27 + 1) = v13;
  v28 = v14;

  v15 = sub_21B23AC94(a1, a2);

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v15 >= *(v27 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    result = sub_21B23A2F4(v12);
    v12 = result;
    goto LABEL_6;
  }

  sub_21B233A74(v27 + 40 * v15 + 32, v25);
  sub_21B234878(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
  v18 = type metadata accessor for Column(0, a5, v16, v17);
  swift_dynamicCast();
  v29 = type metadata accessor for Column(0, a6, v19, v20);
  v30 = &off_282CAA128;
  v21 = v31;
  Column.map<A>(_:)(a3, a4, v18, a6, &v27);

  if (v21)
  {
    return __swift_deallocate_boxed_opaque_existential_1(&v27);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v15 >= *(v12 + 16))
  {
    __break(1u);
  }

  else
  {
    v23 = v12 + 40 * v15;
    __swift_destroy_boxed_opaque_existential_1Tm((v23 + 32));
    result = sub_21B234878(&v27, v23 + 32);
    *v6 = v12;
  }

  return result;
}

{
  v8 = v7;
  v39 = a4;
  v28 = a3;
  v14 = v6[1];
  v15 = v6[2];
  *&v35 = *v6;
  v13 = v35;
  *(&v35 + 1) = v14;
  v36 = v15;

  v16 = sub_21B23AC94(a1, a2);

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v16 >= *(v35 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    result = sub_21B23A2F4(v13);
    v13 = result;
    goto LABEL_6;
  }

  v27 = v6;
  sub_21B233A74(v35 + 40 * v16 + 32, v33);
  sub_21B234878(v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
  v19 = type metadata accessor for Column(0, a5, v17, v18);
  v20 = swift_dynamicCast();
  v29 = v31;
  v30 = v32;
  MEMORY[0x28223BE20](v20);
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = v28;
  v26[5] = v39;
  v37 = type metadata accessor for Column(0, a6, v21, v22);
  v38 = &off_282CAA128;
  Column.map<A>(_:)(sub_21B25FDA0, v26, v19, a6, &v35);

  if (v8)
  {
    return __swift_deallocate_boxed_opaque_existential_1(&v35);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v24 = v27;
  if (v16 >= *(v13 + 16))
  {
    __break(1u);
  }

  else
  {
    v25 = v13 + 40 * v16;
    __swift_destroy_boxed_opaque_existential_1Tm((v25 + 32));
    result = sub_21B234878(&v35, v25 + 32);
    *v24 = v13;
  }

  return result;
}

uint64_t sub_21B23F350@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = a3;
  v19 = a2;
  v20 = a6;
  v9 = sub_21B34B474();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = *(a4 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    (*(v10 + 8))(v13, v9);
    return (*(*(a5 - 8) + 56))(v20, 1, 1, a5);
  }

  else
  {
    (*(v14 + 32))(v16, v13, a4);
    v19(v16);
    return (*(v14 + 8))(v16, a4);
  }
}

uint64_t *DataFrame.append(row:)(uint64_t *result)
{
  v2 = *result;
  v3 = *(*result + 16);
  v4 = *v1;
  if (v3 != *(*v1 + 2))
  {
LABEL_12:
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
    v17[0] = *(v2 + 16);
    v15 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v15);

    MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
    v17[0] = *(v4 + 2);
    v16 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v16);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  if (v3)
  {
    v5 = v1;
    v6 = result[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_10;
    }

    while (v3 <= *(v2 + 16))
    {
      v7 = 0;
      v2 += 32;
      for (i = (v4 + 32); ; i += 40)
      {
        sub_21B233A74(v2, v18);
        if (v7 >= *(v4 + 2))
        {
          break;
        }

        ++v7;
        v9 = v19;
        v10 = v20;
        v11 = __swift_project_boxed_opaque_existential_1(v18, v19);
        v17[3] = v9;
        v17[4] = *(v10 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
        (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
        v13 = *(i + 24);
        v14 = *(i + 32);
        __swift_mutable_project_boxed_opaque_existential_1(i, v13);
        (*(v14 + 56))(v6, v17, v13, v14);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        result = sub_21B233960(v18);
        *v5 = v4;
        v2 += 40;
        if (v3 == v7)
        {
          return result;
        }
      }

      __break(1u);
LABEL_10:
      v4 = sub_21B23A2F4(v4);
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t DataFrame.append(row:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  if (v2 == *(*v1 + 2))
  {
    if (v2)
    {
      v4 = result;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_9;
      }

      while (1)
      {
        v5 = 0;
        v6 = v4 + 32;
        for (i = (v3 + 32); ; i += 40)
        {
          sub_21B2615FC(v6, &v14, &qword_27CD7E0F8, &unk_21B3557C0);
          if (v5 >= *(v3 + 2))
          {
            break;
          }

          ++v5;
          v4 = v2;
          v8 = *(i + 24);
          v9 = *(i + 32);
          __swift_mutable_project_boxed_opaque_existential_1(i, v8);
          v10 = v8;
          v2 = v4;
          (*(v9 + 24))(&v14, v10, v9);
          result = sub_21B261664(&v14, &qword_27CD7E0F8, &unk_21B3557C0);
          *v13 = v3;
          v6 += 32;
          if (v4 == v5)
          {
            return result;
          }
        }

        __break(1u);
LABEL_9:
        v3 = sub_21B23A2F4(v3);
      }
    }
  }

  else
  {
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
    v11 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v11);

    MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
    v12 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v12);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DataFrame.append(valuesByColumn:)(Swift::OpaquePointer valuesByColumn)
{
  v2 = *(valuesByColumn._rawValue + 2);
  v3 = *v1;
  if (v2 != *(*v1 + 2))
  {
LABEL_59:
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
    *&v83 = *(valuesByColumn._rawValue + 2);
    v72 = MEMORY[0x277D83B88];
    v73 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v73);

    MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
    *&v83 = *(v3 + 2);
    v74 = sub_21B34B944();
    v70 = v75;
    MEMORY[0x21CEED5E0](v74);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    while (1)
    {
      sub_21B34B824();
      __break(1u);
LABEL_61:

      *&v85 = 0;
      *(&v85 + 1) = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD000000000000029, 0x800000021B34C490);
      MEMORY[0x21CEED5E0](v70, v72);
      MEMORY[0x21CEED5E0](0xD000000000000025, 0x800000021B34C4C0);
    }
  }

  v4 = v1;
  v5 = MEMORY[0x277D84F90];
  if (v2)
  {
    *&v83 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v2, 0);
    v5 = v83;
    v6 = v3;
    v7 = (v3 + 32);
    do
    {
      sub_21B233A74(v7, &v85);
      v9 = *(&v86 + 1);
      v8 = v87;
      __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
      v10 = (*(*(v8 + 8) + 8))(v9);
      v12 = v11;
      sub_21B233960(&v85);
      *&v83 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21B231F10((v13 > 1), v14 + 1, 1);
        v5 = v83;
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v7 += 40;
      --v2;
    }

    while (v2);
    v3 = v6;
  }

  v16 = sub_21B25DE78(v5);

  v88 = v16;
  v17 = v4[1];
  v18 = *(v17 + 2);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    *&v85 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v18, 0);
    v19 = v85;
    v20 = (v17 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      *&v85 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);

      if (v24 >= v23 >> 1)
      {
        sub_21B231F10((v23 > 1), v24 + 1, 1);
        v19 = v85;
      }

      *(v19 + 16) = v24 + 1;
      v25 = v19 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v20 += 4;
      --v18;
    }

    while (v18);
  }

  sub_21B25FE24(v19);

  v26 = v88;
  rawValue = valuesByColumn._rawValue;

  v76 = v26;
  if ((sub_21B240390(v28, v26) & 1) == 0)
  {
LABEL_54:

    v68 = sub_21B23B5A8(v67);
    if (*(v76 + 16) <= *(v68 + 16) >> 3)
    {
      *&v85 = v68;
      sub_21B25D08C(v76);
      v69 = v85;
    }

    else
    {
      v69 = sub_21B25D1B8(v76, v68);
    }

    v70 = sub_21B23D53C(v69);
    v72 = v71;

    if (v72)
    {
      goto LABEL_61;
    }

    __break(1u);
    goto LABEL_59;
  }

  v80 = *(v3 + 2);
  if (v80)
  {
    v29 = 0;
    v30 = 0;
    v77 = v4;
    do
    {
      if (v29 >= *(v3 + 2))
      {
        goto LABEL_50;
      }

      sub_21B233A74(&v3[40 * v29 + 32], &v85);
      v36 = *(&v86 + 1);
      v35 = v87;
      __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
      v37 = (*(*(v35 + 8) + 8))(v36);
      v39 = v38;
      sub_21B233960(&v85);
      if (rawValue[2])
      {
        v40 = sub_21B24B5D0(v37, v39, MEMORY[0x277D83758], sub_21B24FDE4);
        v42 = v41;

        if (v42)
        {
          sub_21B2615FC(rawValue[7] + 32 * v40, v82, &qword_27CD7E0F8, &unk_21B3557C0);
          v83 = v82[0];
          v84 = v82[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_21B23A2F4(v3);
          }

          if (v29 < *(v3 + 2))
          {
            v43 = &v3[40 * v29];
            v44 = *(v43 + 7);
            v45 = *(v43 + 8);
            __swift_mutable_project_boxed_opaque_existential_1((v43 + 32), v44);
            (*(v45 + 24))(&v83, v44, v45);
            v34 = &v83;
            goto LABEL_17;
          }

          goto LABEL_52;
        }
      }

      else
      {
      }

      v47 = sub_21B25FAA4(v46, v4, v29);
      v81 = v30;

      v48 = *(v47 + 16);
      if (v48)
      {
        v79 = v3;
        *&v85 = MEMORY[0x277D84F90];
        sub_21B231F10(0, v48, 0);
        v49 = v85;
        v50 = (v47 + 40);
        do
        {
          v51 = *(v50 - 1);
          v52 = *v50;
          *&v85 = v49;
          v54 = *(v49 + 16);
          v53 = *(v49 + 24);

          if (v54 >= v53 >> 1)
          {
            sub_21B231F10((v53 > 1), v54 + 1, 1);
            v49 = v85;
          }

          *(v49 + 16) = v54 + 1;
          v55 = v49 + 16 * v54;
          *(v55 + 32) = v51;
          *(v55 + 40) = v52;
          v50 += 4;
          --v48;
        }

        while (v48);

        v56 = v79;
      }

      else
      {
        v56 = v3;

        v49 = MEMORY[0x277D84F90];
      }

      v3 = *(v49 + 16);
      rawValue = valuesByColumn._rawValue;
      if (!v3)
      {
LABEL_44:

        v3 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_21B23A2F4(v56);
        }

        v4 = v77;
        v30 = v81;
        if (v29 < *(v3 + 2))
        {
          v64 = &v3[40 * v29];
          v65 = *(v64 + 7);
          v66 = *(v64 + 8);
          __swift_mutable_project_boxed_opaque_existential_1((v64 + 32), v65);
          (*(v66 + 16))(v65, v66);
          goto LABEL_18;
        }

        goto LABEL_51;
      }

      v57 = 0;
      v58 = (v49 + 40);
      while (1)
      {
        if (v57 >= *(v49 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        if (*(valuesByColumn._rawValue + 2))
        {
          v59 = *(v58 - 1);
          v60 = *v58;

          v61 = sub_21B24B5D0(v59, v60, MEMORY[0x277D83758], sub_21B24FDE4);
          v63 = v62;

          if (v63)
          {
            break;
          }
        }

        ++v57;
        v58 += 2;
        if (v3 == v57)
        {
          goto LABEL_44;
        }
      }

      sub_21B2615FC(*(valuesByColumn._rawValue + 7) + 32 * v61, &v83, &qword_27CD7E0F8, &unk_21B3557C0);
      v85 = v83;
      v86 = v84;
      v3 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_21B23A2F4(v56);
      }

      v4 = v77;
      v30 = v81;
      if (v29 >= *(v3 + 2))
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v31 = &v3[40 * v29];
      v32 = *(v31 + 7);
      v33 = *(v31 + 8);
      __swift_mutable_project_boxed_opaque_existential_1((v31 + 32), v32);
      (*(v33 + 24))(&v85, v32, v33);
      v34 = &v85;
LABEL_17:
      sub_21B261664(v34, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_18:
      *v4 = v3;
      ++v29;
    }

    while (v29 != v80);
  }
}

uint64_t sub_21B24028C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_21B233D18(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
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
      goto LABEL_9;
    }
  }
}

uint64_t sub_21B240390(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v20 = result;
  while (v7)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_23;
    }

LABEL_8:
    v10 = (*(result + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v10;
    v11 = v10[1];
    sub_21B34BBC4();

    sub_21B34AD94();
    v13 = sub_21B34BC24();
    v14 = -1 << *(a2 + 32);
    v15 = v13 & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_22:

      goto LABEL_23;
    }

    v7 &= v7 - 1;
    v16 = ~v14;
    while (1)
    {
      v17 = (*(a2 + 48) + 16 * v15);
      v18 = *v17 == v12 && v17[1] == v11;
      if (v18 || (sub_21B34B9F4() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = v20;
  }

  do
  {
    v19 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v19 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v19);
    ++v3;
  }

  while (!v7);
  v3 = v19;
  if (*(a2 + 16))
  {
    goto LABEL_8;
  }

LABEL_23:

  return 0;
}

Swift::Void __swiftcall DataFrame.appendEmptyRow()()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v3 = 0;
      v4 = (v1 + 32);
      while (v3 < *(v1 + 2))
      {
        ++v3;
        v5 = *(v4 + 24);
        v6 = *(v4 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
        (*(v6 + 16))(v5, v6);
        *v0 = v1;
        v4 += 40;
        if (v2 == v3)
        {
          return;
        }
      }

      __break(1u);
LABEL_8:
      v1 = sub_21B23A2F4(v1);
    }
  }
}

uint64_t *DataFrame.insert(row:at:)(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  v5 = *v2;
  if (v4 != *(*v2 + 2))
  {
LABEL_12:
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C4F0);
    v19[0] = *(v3 + 16);
    v16 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v16);

    MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
    v19[0] = *(v5 + 2);
    v17 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v17);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  if (v4)
  {
    v6 = v2;
    v7 = result[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_10;
    }

    while (v4 <= *(v3 + 16))
    {
      v8 = 0;
      v3 += 32;
      for (i = (v5 + 32); ; i += 40)
      {
        sub_21B233A74(v3, v20);
        if (v8 >= *(v5 + 2))
        {
          break;
        }

        ++v8;
        v10 = v21;
        v11 = v22;
        v12 = __swift_project_boxed_opaque_existential_1(v20, v21);
        v19[3] = v10;
        v19[4] = *(v11 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
        (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
        v14 = *(i + 24);
        v15 = *(i + 32);
        __swift_mutable_project_boxed_opaque_existential_1(i, v14);
        (*(v15 + 64))(v7, v19, a2, v14, v15);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        result = sub_21B233960(v20);
        *v6 = v5;
        v3 += 40;
        if (v4 == v8)
        {
          return result;
        }
      }

      __break(1u);
LABEL_10:
      v5 = sub_21B23A2F4(v5);
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

Swift::Void __swiftcall DataFrame.removeRow(at:)(Swift::Int at)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v5 = 0;
      v6 = (v2 + 32);
      while (v5 < *(v2 + 2))
      {
        ++v5;
        v7 = *(v6 + 24);
        v8 = *(v6 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
        (*(v8 + 80))(at, v7, v8);
        *v1 = v2;
        v6 += 40;
        if (v3 == v5)
        {
          return;
        }
      }

      __break(1u);
LABEL_8:
      v2 = sub_21B23A2F4(v2);
    }
  }
}

uint64_t sub_21B240988@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = a1;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  if (!*(*v3 + 16))
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    goto LABEL_6;
  }

  sub_21B233A74(v7 + 32, v24);
  v11 = v25;
  v12 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v13 = *(v12 + 8);
  v14 = *(v13 + 48);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v15 = v14(v11, v13);
  result = sub_21B233960(v24);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v4 = a2;
    v5 = a1;
    if (v15)
    {
      v17 = 0;
LABEL_7:
      sub_21B254074(0, v15, v17);

      sub_21B23A9F4(0, v15, v17);
      v18 = v4(v5, 0, v15, v17);
      v20 = v19;
      v22 = v21;
      result = sub_21B23A9F4(0, v15, v17);
      *a3 = v7;
      *(a3 + 8) = v8;
      *(a3 + 16) = v9;
      *(a3 + 24) = v18;
      *(a3 + 32) = v20;
      *(a3 + 40) = v22;
      return result;
    }

LABEL_6:
    v15 = 0;
    v17 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B240B24(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    goto LABEL_5;
  }

  LOBYTE(v4) = a4;
  v6 = a2;
  if (a4 != 1)
  {
    v7 = 1;
    goto LABEL_7;
  }

  v7 = *(a2 + 2);
  if (!v7)
  {
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

LABEL_7:
  v9 = 0;
  v10 = v7 - 1;
  v11 = &v6[2 * v7 + 3];
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4)
    {
      if (v10 >= v6[2])
      {
        goto LABEL_36;
      }
    }

    else if (v10 >= 1)
    {
LABEL_36:
      while (1)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        sub_21B23A9F4(v6, a3, v4);
LABEL_30:
        v26[0] = 0;
        v26[1] = 0;
        v27 = 2;
        v22 = *(v8 + 2);
        if (!v22)
        {
          break;
        }

        v6 = &v8[16 * v22 + 24];
        while (v22 <= *(v8 + 2))
        {
          --v22;
          v4 = v26;
          sub_21B28DFBC(*(v6 - 1), *v6);
          v6 -= 2;
          if (!v22)
          {

            return v26[0];
          }
        }

        __break(1u);
      }

      goto LABEL_42;
    }

    if (v4)
    {
      break;
    }

    v12 = v6;
    v13 = a3;
    if (v10)
    {
      goto LABEL_41;
    }

LABEL_16:
    v14 = v13 - v12;
    if (__OFSUB__(v13, v12))
    {
      goto LABEL_37;
    }

    v15 = v9 + v14;
    if (__OFADD__(v9, v14))
    {
      goto LABEL_38;
    }

    if (v15 > a1)
    {
      if (__OFSUB__(a1, v9))
      {
        __break(1u);
      }

      else
      {
        v5 = sub_21B24985C(a1 - v9, v12, v13);
        v12 = v18;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_27:
          v20 = *(v8 + 2);
          v19 = *(v8 + 3);
          if (v20 >= v19 >> 1)
          {
            v8 = sub_21B2356AC((v19 > 1), v20 + 1, 1, v8);
          }

          sub_21B23A9F4(v6, a3, v4);
          *(v8 + 2) = v20 + 1;
          v21 = &v8[16 * v20];
          *(v21 + 4) = v5;
          *(v21 + 5) = v12;
          goto LABEL_30;
        }
      }

      v8 = sub_21B2356AC(0, *(v8 + 2) + 1, 1, v8);
      goto LABEL_27;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_21B2356AC(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v5 >= v16 >> 1)
    {
      v8 = sub_21B2356AC((v16 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v5 + 1;
    v17 = &v8[16 * v5];
    *(v17 + 4) = v12;
    *(v17 + 5) = v13;
    --v10;
    v11 -= 2;
    v9 = v15;
    if (v10 == -1)
    {
      goto LABEL_39;
    }
  }

  if (v10 < v6[2])
  {
    v12 = *(v11 - 1);
    v13 = *v11;
    goto LABEL_16;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:

  return 0;
}

Swift::Void __swiftcall DataFrame.append(rowsOf:)(TabularData::DataFrame rowsOf)
{
  v4 = *v2;
  v5 = *(*v2 + 2);
  v30 = *rowsOf.columns._rawValue;
  if (v5 != *(*rowsOf.columns._rawValue + 16))
  {
    while (1)
    {
LABEL_24:
      sub_21B34B824();
      __break(1u);
LABEL_25:
      sub_21B233A74(v3, &v34);
      v23 = v36;
      v22 = v37;
      __swift_project_boxed_opaque_existential_1(&v34, v36);
      v24 = (*(*(v22 + 8) + 8))(v23);
      v3 = v25;
      sub_21B233960(&v34);
      MEMORY[0x21CEED5E0](v24, v3);

      MEMORY[0x21CEED5E0](0x2720646E612027, 0xE700000000000000);
      sub_21B233A74(v1, &v34);
      v26 = v36;
      v27 = v37;
      __swift_project_boxed_opaque_existential_1(&v34, v36);
      v1 = (*(*(v27 + 8) + 8))(v26);
      v29 = v28;
      sub_21B233960(&v34);
      MEMORY[0x21CEED5E0](v1, v29);

      MEMORY[0x21CEED5E0](2240039, 0xE300000000000000);
    }
  }

  v6 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_20;
  }

  for (*v2 = v4; v5; *v6 = v4)
  {
    v7 = 0;
    v3 = (v4 + 32);
    v1 = v30 + 32;
    while (v7 < *(v4 + 2))
    {
      sub_21B233A74(v3, &v34);
      v9 = v36;
      v8 = v37;
      __swift_project_boxed_opaque_existential_1(&v34, v36);
      v10 = (*(*(v8 + 8) + 8))(v9);
      v12 = v11;
      sub_21B233960(&v34);
      if (v7 >= *(v30 + 16))
      {
        goto LABEL_18;
      }

      sub_21B233A74(v1, v31);
      v14 = v32;
      v13 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v15 = (*(*(v13 + 8) + 8))(v14);
      v17 = v16;
      sub_21B233960(v31);
      if (v10 == v15 && v12 == v17)
      {
      }

      else
      {
        v19 = sub_21B34B9F4();

        if ((v19 & 1) == 0)
        {
          v34 = 0;
          v35 = 0xE000000000000000;
          sub_21B34B634();
          v31[0] = v34;
          v31[1] = v35;
          MEMORY[0x21CEED5E0](0xD000000000000032, 0x800000021B34C550);
          if (v7 < *(v4 + 2))
          {
            goto LABEL_25;
          }

          __break(1u);
          goto LABEL_24;
        }
      }

      if (v7 >= *(v4 + 2))
      {
        goto LABEL_19;
      }

      ++v7;
      sub_21B233A74(v1, &v34);
      v20 = *(v3 + 24);
      v21 = *(v3 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v3, v20);
      (*(v21 + 40))(&v34, v20, v21);
      sub_21B233960(&v34);
      *v6 = v4;
      v1 += 40;
      v3 += 40;
      if (v5 == v7)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v4 = sub_21B23A2F4(v4);
  }
}

Swift::Void __swiftcall DataFrame.append(_:)(TabularData::DataFrame a1)
{
  v2 = v1;
  v3 = *a1.columns._rawValue;
  v4 = MEMORY[0x277D84FA0];
  v67 = MEMORY[0x277D84FA0];
  v57 = *(v3 + 2);
  if (!v57)
  {
LABEL_16:
    if (!*(v4 + 16))
    {
      goto LABEL_39;
    }

    if (*(v3 + 2))
    {
      sub_21B233A74((v3 + 32), v64);
      v26 = v65;
      v25 = v66;
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v27 = *(v25 + 8);
      v2 = (v27 + 48);
      v28 = *(v27 + 48);

      v5 = (v28)(v26, v27);
      sub_21B233960(v64);
      if (v5 < 0)
      {
        __break(1u);
        goto LABEL_49;
      }

      v2 = v58;
      if (v5)
      {
        v29 = 0;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v5 = 0;
    v29 = 2;
LABEL_23:
    v30 = sub_21B2FB1D4(0, v5, v29);

    sub_21B23A9F4(0, v5, v29);
    v28 = *v2;
    v5 = *(*v2 + 2);
    if (v5)
    {
      v58 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_25:
        v31 = 0;
        *v2 = v28;
        v32 = v4 + 56;
        v57 = v5;
        while (v31 != v5)
        {
          v33 = v4;
          if (*(v4 + 16) && (v34 = sub_21B34BBB4(), v35 = -1 << *(v4 + 32), v36 = v34 & ~v35, ((*(v32 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0))
          {
            v37 = ~v35;
            while (*(*(v4 + 48) + 8 * v36) != v31)
            {
              v36 = (v36 + 1) & v37;
              if (((*(v32 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
LABEL_33:
            if ((v58 & 0x8000000000000000) != 0)
            {
              goto LABEL_46;
            }

            if (v58)
            {
              v3 = &v28[40 * v31 + 32];
              v38 = v58;
              while (v31 < *(v28 + 2))
              {
                v39 = *(v3 + 3);
                v40 = *(v3 + 4);
                v5 = __swift_mutable_project_boxed_opaque_existential_1(v3, v39);
                (*(v40 + 16))(v39, v40);
                *v2 = v28;
                if (!--v38)
                {
                  goto LABEL_26;
                }
              }

              __break(1u);
              goto LABEL_41;
            }
          }

LABEL_26:
          ++v31;
          v5 = v57;
          v4 = v33;
          if (v31 == v57)
          {
            goto LABEL_39;
          }
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_49:
      v28 = sub_21B23A2F4(v28);
      goto LABEL_25;
    }

LABEL_39:

    return;
  }

  v5 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_47:
    v5 = sub_21B23A2F4(v5);
  }

  v6 = 0;
  *v2 = v5;
  v7 = (v3 + 32);
  v56 = v3;
  while (1)
  {
    if (v6 >= *(v3 + 2))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    sub_21B233A74(v7, v64);
    v12 = *v2;
    v11 = v2[1];
    v13 = v2[2];
    v61[0] = *v2;
    v61[1] = v11;
    v61[2] = v13;
    v15 = v65;
    v14 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v3 = *(v14 + 8);
    v16 = *(v3 + 1);

    v17._countAndFlagsBits = v16(v15, v3);
    v2 = v58;
    *&v18 = DataFrame.indexOfColumn(_:)(v17);
    v19 = v18;
    v5 = *(&v18 + 1);

    if ((v5 & 1) == 0)
    {
      break;
    }

LABEL_5:
    ++v6;
    sub_21B233960(v64);
    v7 += 40;
    v3 = v56;
    if (v57 == v6)
    {
      v4 = v67;
      goto LABEL_16;
    }
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  if (v19 >= *(v12 + 2))
  {
    goto LABEL_43;
  }

  sub_21B233A74(&v12[40 * v19 + 32], v61);
  v21 = v62;
  v20 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  v22 = (*(*(v20 + 8) + 80))(v21);
  v24 = v65;
  v23 = v66;
  v5 = __swift_project_boxed_opaque_existential_1(v64, v65);
  if (v22 == (*(*(v23 + 8) + 80))(v24))
  {
    v2 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_21B23A2F4(v12);
    }

    if (v19 >= *(v12 + 2))
    {
      goto LABEL_44;
    }

    v8 = &v12[40 * v19];
    v9 = *(v8 + 7);
    v10 = *(v8 + 8);
    __swift_mutable_project_boxed_opaque_existential_1((v8 + 32), v9);
    (*(v10 + 40))(v64, v9, v10);
    *v58 = v12;
    v5 = &v67;
    sub_21B254588(&v59, v19);
    sub_21B233960(v61);
    goto LABEL_5;
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  sub_21B34B634();

  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021B34C5B0;
  v41 = v62;
  v42 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  v43 = (*(*(v42 + 8) + 8))(v41);
  MEMORY[0x21CEED5E0](v43);

  MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
  v44 = v59;
  v45 = v60;
  v59 = 0xD000000000000018;
  v60 = 0x800000021B34C590;
  MEMORY[0x21CEED5E0](v44, v45);

  v47 = v59;
  v46 = v60;
  v49 = v62;
  v48 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  (*(*(v48 + 8) + 80))(v49);
  v59 = sub_21B34BD24();
  v60 = v50;
  MEMORY[0x21CEED5E0](0x202E737620, 0xE500000000000000);
  v52 = v65;
  v51 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  (*(*(v51 + 8) + 80))(v52);
  v53 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v53);

  v54 = v59;
  v55 = v60;
  v59 = v47;
  v60 = v46;

  MEMORY[0x21CEED5E0](v54, v55);

  sub_21B34B824();
  __break(1u);
}

uint64_t sub_21B24185C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_21B34BBC4();
  sub_21B2615FC(a1, &v19, &qword_27CD7E200, &unk_21B352050);
  if (*(&v20 + 1))
  {
    v17[0] = v19;
    v17[1] = v20;
    v18 = v21;
    sub_21B34BBE4();
    sub_21B34B5C4();
    sub_21B260E14(v17);
  }

  else
  {
    sub_21B34BBE4();
  }

  v5 = sub_21B34BC24();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (1)
  {
    sub_21B2615FC(*(a2 + 48) + 40 * v7, &v19, &qword_27CD7E200, &unk_21B352050);
    sub_21B2615FC(&v19, v12, &qword_27CD7E200, &unk_21B352050);
    sub_21B2615FC(a1, &v14, &qword_27CD7E200, &unk_21B352050);
    if (!v13)
    {
      break;
    }

    sub_21B2615FC(v12, v17, &qword_27CD7E200, &unk_21B352050);
    if (!*(&v15 + 1))
    {
      sub_21B261664(&v19, &qword_27CD7E200, &unk_21B352050);
      sub_21B260E14(v17);
      goto LABEL_9;
    }

    v10[0] = v14;
    v10[1] = v15;
    v11 = v16;
    v9 = MEMORY[0x21CEEDD80](v17, v10);
    sub_21B260E14(v10);
    sub_21B261664(&v19, &qword_27CD7E200, &unk_21B352050);
    sub_21B260E14(v17);
    sub_21B261664(v12, &qword_27CD7E200, &unk_21B352050);
    if (v9)
    {
      return 1;
    }

LABEL_10:
    v7 = (v7 + 1) & v8;
    if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  sub_21B261664(&v19, &qword_27CD7E200, &unk_21B352050);
  if (*(&v15 + 1))
  {
LABEL_9:
    sub_21B261664(v12, &qword_27CD7E208, &qword_21B351B20);
    goto LABEL_10;
  }

  sub_21B261664(v12, &qword_27CD7E200, &unk_21B352050);
  return 1;
}

uint64_t sub_21B241ACC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v97 = *MEMORY[0x277D85DE8];
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21B34BBC4();
  v6 = a2 >> 60;
  sub_21B34BBE4();
  if (a2 >> 60 != 15)
  {
    sub_21B34A744();
  }

  v7 = sub_21B34BC24();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  if (a1)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2 == 0xC000000000000000;
  }

  v12 = !v11;
  v88 = v12;
  v13 = __OFSUB__(HIDWORD(a1), a1);
  v86 = v13;
  v89 = a2 >> 62;
  v84 = (a1 >> 32) - a1;
  v85 = a1 >> 32;
  v87 = v10;
  while (1)
  {
    v14 = (*(a3 + 48) + 16 * v9);
    v16 = *v14;
    v15 = v14[1];
    if (v15 >> 60 == 15)
    {
      if (v6 > 0xE)
      {
        sub_21B260DAC(v16, v15);
        sub_21B260DAC(a1, a2);
        goto LABEL_156;
      }

LABEL_19:
      sub_21B260DAC(v16, v15);
      sub_21B260DAC(a1, a2);
      sub_21B260C58(v16, v15);
      v17 = a1;
      v18 = a2;
      goto LABEL_20;
    }

    if (v6 > 0xE)
    {
      goto LABEL_19;
    }

    v19 = v15 >> 62;
    if (v15 >> 62 == 3)
    {
      if (v16)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15 == 0xC000000000000000;
      }

      v22 = !v20 || a2 >> 62 != 3;
      if (((v22 | v88) & 1) == 0)
      {
        sub_21B260DAC(0, 0xC000000000000000);
        sub_21B260DAC(0, 0xC000000000000000);
        sub_21B260C58(0, 0xC000000000000000);
        v16 = 0;
        goto LABEL_156;
      }

LABEL_42:
      v23 = 0;
      goto LABEL_43;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_42;
      }

      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_160;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_161;
      }

      v23 = v23;
    }

    else
    {
      v23 = BYTE6(v15);
    }

LABEL_43:
    if (v89 > 1)
    {
      if (v89 != 2)
      {
        if (!v23)
        {
LABEL_155:
          sub_21B260DAC(v16, v15);
          sub_21B260DAC(a1, a2);
          sub_21B260C58(a1, a2);
          goto LABEL_156;
        }

LABEL_61:
        sub_21B260DAC(v16, v15);
        sub_21B260DAC(a1, a2);
        sub_21B260C58(a1, a2);
        v17 = v16;
        v18 = v15;
LABEL_20:
        sub_21B260C58(v17, v18);
        goto LABEL_21;
      }

      v29 = *(a1 + 16);
      v28 = *(a1 + 24);
      v26 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v26)
      {
        goto LABEL_159;
      }
    }

    else
    {
      v27 = BYTE6(a2);
      if (v89)
      {
        v27 = HIDWORD(a1) - a1;
        if (v86)
        {
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
        }
      }
    }

    if (v23 != v27)
    {
      goto LABEL_61;
    }

    if (v23 < 1)
    {
      goto LABEL_155;
    }

    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      if (v16 > v16 >> 32)
      {
        goto LABEL_162;
      }

      sub_21B260DAC(v16, v15);
      sub_21B260DAC(v16, v15);
      sub_21B260DAC(a1, a2);
      v39 = sub_21B34A574();
      if (v39)
      {
        v40 = v39;
        v41 = sub_21B34A594();
        if (__OFSUB__(v16, v41))
        {
          goto LABEL_164;
        }

        v81 = (v16 - v41 + v40);
      }

      else
      {
        v81 = 0;
      }

      v6 = a2 >> 60;
      sub_21B34A584();
      v10 = v87;
      if (v89 == 2)
      {
        v69 = *(a1 + 16);
        v79 = *(a1 + 24);
        v48 = sub_21B34A574();
        if (v48)
        {
          v70 = sub_21B34A594();
          if (__OFSUB__(v69, v70))
          {
            goto LABEL_178;
          }

          v48 += v69 - v70;
        }

        v26 = __OFSUB__(v79, v69);
        v71 = v79 - v69;
        if (v26)
        {
          goto LABEL_174;
        }

        v72 = sub_21B34A584();
        if (v72 >= v71)
        {
          v51 = v71;
        }

        else
        {
          v51 = v72;
        }

        v52 = v81;
        if (!v81)
        {
          goto LABEL_185;
        }

        v6 = a2 >> 60;
        if (!v48)
        {
          goto LABEL_184;
        }
      }

      else
      {
        if (v89 != 1)
        {
          v68 = v81;
          *__s1 = a1;
          *&__s1[8] = a2;
          __s1[10] = BYTE2(a2);
          __s1[11] = BYTE3(a2);
          __s1[12] = BYTE4(a2);
          __s1[13] = BYTE5(a2);
          if (!v81)
          {
            goto LABEL_188;
          }

          goto LABEL_138;
        }

        if (v85 < a1)
        {
          goto LABEL_173;
        }

        v48 = sub_21B34A574();
        if (v48)
        {
          v53 = sub_21B34A594();
          if (__OFSUB__(a1, v53))
          {
            goto LABEL_180;
          }

          v48 += a1 - v53;
        }

        v54 = sub_21B34A584();
        v51 = (a1 >> 32) - a1;
        if (v54 < v84)
        {
          v51 = v54;
        }

        v52 = v81;
        if (!v81)
        {
          goto LABEL_191;
        }

        if (!v48)
        {
          goto LABEL_190;
        }
      }

      goto LABEL_134;
    }

    *__s1 = v16;
    *&__s1[8] = v15;
    __s1[10] = BYTE2(v15);
    __s1[11] = BYTE3(v15);
    __s1[12] = BYTE4(v15);
    __s1[13] = BYTE5(v15);
    if (!v89)
    {
      goto LABEL_77;
    }

    if (v89 == 1)
    {
      if (v85 < a1)
      {
        goto LABEL_166;
      }

      sub_21B260DAC(v16, v15);
      sub_21B260DAC(v16, v15);
      sub_21B260DAC(a1, a2);
      v30 = sub_21B34A574();
      if (!v30)
      {
        goto LABEL_192;
      }

      v31 = v30;
      v32 = sub_21B34A594();
      if (__OFSUB__(a1, v32))
      {
        goto LABEL_170;
      }

      v33 = (a1 - v32 + v31);
      result = sub_21B34A584();
      if (!v33)
      {
        goto LABEL_193;
      }

      goto LABEL_109;
    }

    v77 = *(a1 + 24);
    v83 = *(a1 + 16);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(a1, a2);
    v42 = sub_21B34A574();
    if (v42)
    {
      v55 = sub_21B34A594();
      v56 = v83;
      if (__OFSUB__(v83, v55))
      {
        goto LABEL_176;
      }

      v42 = &v83[v42 - v55];
    }

    else
    {
      v56 = v83;
    }

    v73 = v77 - v56;
    if (__OFSUB__(v77, v56))
    {
      goto LABEL_169;
    }

    v74 = sub_21B34A584();
    if (!v42)
    {
      goto LABEL_189;
    }

LABEL_148:
    if (v74 >= v73)
    {
      v75 = v73;
    }

    else
    {
      v75 = v74;
    }

    v61 = memcmp(__s1, v42, v75);
    sub_21B260C58(v16, v15);
    sub_21B260C58(a1, a2);
    sub_21B260C58(v16, v15);
    v6 = a2 >> 60;
LABEL_152:
    v10 = v87;
    if (!v61)
    {
      return 1;
    }

LABEL_21:
    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if (v19 != 2)
  {
    *&__s1[6] = 0;
    *__s1 = 0;
    if (!v89)
    {
LABEL_77:
      __s2 = a1;
      v91 = a2;
      v92 = BYTE2(a2);
      v93 = BYTE3(a2);
      v94 = BYTE4(a2);
      v95 = BYTE5(a2);
      sub_21B260DAC(v16, v15);
      sub_21B260DAC(a1, a2);
      v45 = memcmp(__s1, &__s2, BYTE6(a2));
      v46 = a1;
      v47 = a2;
      goto LABEL_139;
    }

    if (v89 != 2)
    {
      if (v85 < a1)
      {
        goto LABEL_165;
      }

      sub_21B260DAC(v16, v15);
      sub_21B260DAC(v16, v15);
      sub_21B260DAC(a1, a2);
      v57 = sub_21B34A574();
      if (!v57)
      {
        goto LABEL_194;
      }

      v58 = v57;
      v59 = sub_21B34A594();
      if (__OFSUB__(a1, v59))
      {
        goto LABEL_171;
      }

      v33 = (a1 - v59 + v58);
      result = sub_21B34A584();
      if (!v33)
      {
        goto LABEL_195;
      }

LABEL_109:
      if (result >= v84)
      {
        v60 = (a1 >> 32) - a1;
      }

      else
      {
        v60 = result;
      }

      v61 = memcmp(__s1, v33, v60);
      sub_21B260C58(v16, v15);
      v62 = a1;
      v63 = a2;
LABEL_136:
      sub_21B260C58(v62, v63);
      sub_21B260C58(v16, v15);
      goto LABEL_152;
    }

    v76 = *(a1 + 24);
    v82 = *(a1 + 16);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(a1, a2);
    v42 = sub_21B34A574();
    if (v42)
    {
      v43 = sub_21B34A594();
      v44 = v82;
      if (__OFSUB__(v82, v43))
      {
        goto LABEL_175;
      }

      v42 = &v82[v42 - v43];
    }

    else
    {
      v44 = v82;
    }

    v73 = v76 - v44;
    if (__OFSUB__(v76, v44))
    {
      goto LABEL_167;
    }

    v74 = sub_21B34A584();
    if (!v42)
    {
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      sub_21B34A584();
LABEL_193:
      __break(1u);
LABEL_194:
      result = sub_21B34A584();
LABEL_195:
      __break(1u);
      return result;
    }

    goto LABEL_148;
  }

  v35 = *(v16 + 16);
  sub_21B260DAC(v16, v15);
  sub_21B260DAC(v16, v15);
  sub_21B260DAC(a1, a2);
  v36 = sub_21B34A574();
  if (v36)
  {
    v37 = v36;
    v38 = sub_21B34A594();
    if (__OFSUB__(v35, v38))
    {
      goto LABEL_163;
    }

    v80 = (v35 - v38 + v37);
  }

  else
  {
    v80 = 0;
  }

  v6 = a2 >> 60;
  sub_21B34A584();
  v10 = v87;
  if (v89 != 2)
  {
    if (v89 == 1)
    {
      if (v85 < a1)
      {
        goto LABEL_168;
      }

      v48 = sub_21B34A574();
      if (v48)
      {
        v49 = sub_21B34A594();
        if (__OFSUB__(a1, v49))
        {
          goto LABEL_179;
        }

        v48 += a1 - v49;
      }

      v50 = sub_21B34A584();
      v51 = (a1 >> 32) - a1;
      if (v50 < v84)
      {
        v51 = v50;
      }

      v52 = v80;
      if (!v80)
      {
        goto LABEL_183;
      }

      if (!v48)
      {
        goto LABEL_182;
      }

      goto LABEL_134;
    }

    v68 = v80;
    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v80)
    {
      goto LABEL_181;
    }

LABEL_138:
    v45 = memcmp(v68, __s1, BYTE6(a2));
    sub_21B260C58(a1, a2);
    v46 = v16;
    v47 = v15;
LABEL_139:
    sub_21B260C58(v46, v47);
    sub_21B260C58(v16, v15);
    if (!v45)
    {
      return 1;
    }

    goto LABEL_21;
  }

  v64 = *(a1 + 16);
  v78 = *(a1 + 24);
  v48 = sub_21B34A574();
  if (v48)
  {
    v65 = sub_21B34A594();
    if (__OFSUB__(v64, v65))
    {
      goto LABEL_177;
    }

    v48 += v64 - v65;
  }

  v26 = __OFSUB__(v78, v64);
  v66 = v78 - v64;
  if (v26)
  {
    goto LABEL_172;
  }

  v67 = sub_21B34A584();
  if (v67 >= v66)
  {
    v51 = v66;
  }

  else
  {
    v51 = v67;
  }

  v52 = v80;
  if (!v80)
  {
    goto LABEL_187;
  }

  v6 = a2 >> 60;
  if (!v48)
  {
    goto LABEL_186;
  }

LABEL_134:
  if (v52 != v48)
  {
    v61 = memcmp(v52, v48, v51);
    sub_21B260C58(a1, a2);
    v62 = v16;
    v63 = v15;
    goto LABEL_136;
  }

  sub_21B260C58(a1, a2);
  sub_21B260C58(v16, v15);
LABEL_156:
  sub_21B260C58(v16, v15);
  return 1;
}

uint64_t DataFrame.append(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v76 = MEMORY[0x277D84FA0];
  v72[0] = v3;
  v72[1] = v4;
  v72[2] = v6;
  v73 = v5;
  v74 = v7;
  v75 = v8;
  v9 = DataFrame.Slice.columns.getter();
  v65 = *(v9 + 16);
  if (v65)
  {
    v10 = v9;
    v11 = *v1;
    v61 = v7;
    v62 = v5;
    v60 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84FA0];
    if (!*(MEMORY[0x277D84FA0] + 16))
    {
    }

LABEL_17:
    v10 = sub_21B2FB1D4(v5, v7, v8);

    sub_21B254074(v5, v7, v8);

    sub_21B23A9F4(v5, v7, v8);
    v32 = *v2;
    v33 = *(*v2 + 2);
    if (!v33)
    {
    }

    v65 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_21B23A2F4(v32);
    }

    v34 = 0;
    *v2 = v32;
    v35 = v11 + 56;
    v62 = v32 + 32;
    v64 = v33;
    while (v34 != v33)
    {
      v36 = v11;
      if (*(v11 + 16) && (v37 = sub_21B34BBB4(), v38 = -1 << *(v11 + 32), v39 = v37 & ~v38, ((*(v35 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
      {
        v40 = ~v38;
        while (*(*(v11 + 48) + 8 * v39) != v34)
        {
          v39 = (v39 + 1) & v40;
          if (((*(v35 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        if (v65 < 0)
        {
          goto LABEL_41;
        }

        if (v65)
        {
          v41 = &v62[40 * v34];
          v10 = v65;
          while (v34 < *(v32 + 2))
          {
            v42 = *(v41 + 24);
            v43 = *(v41 + 32);
            v11 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
            (*(v43 + 16))(v42, v43);
            *v2 = v32;
            if (!--v10)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_36;
        }
      }

LABEL_21:
      ++v34;
      v33 = v64;
      v11 = v36;
      if (v34 == v64)
      {
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  v11 = sub_21B23A2F4(v11);
LABEL_3:
  v12 = 0;
  *v2 = v11;
  v13 = v10;
  v14 = v10 + 32;
  v66 = v2;
  v63 = v10;
  do
  {
    if (v12 >= *(v13 + 16))
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_21B25EFA4(v14, v72);
    v16 = *v2;
    v15 = v2[1];
    v17 = v2[2];
    v69[0] = *v2;
    v69[1] = v15;
    v69[2] = v17;
    v19 = v73;
    v18 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v10 = *(v18 + 8);
    v20 = *(v10 + 8);

    v21._countAndFlagsBits = v20(v19, v10);
    v2 = v66;
    *&v22 = DataFrame.indexOfColumn(_:)(v21);
    v23 = v22;
    v11 = *(&v22 + 1);

    if ((v11 & 1) == 0)
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (v23 >= *(v16 + 2))
      {
        goto LABEL_38;
      }

      sub_21B233A74(&v16[40 * v23 + 32], v69);
      v25 = v70;
      v24 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v26 = (*(*(v24 + 8) + 80))(v25);
      v28 = v73;
      v27 = v74;
      v11 = __swift_project_boxed_opaque_existential_1(v72, v73);
      if (v26 != (*(*(v27 + 8) + 80))(v28))
      {

        v67 = 0;
        v68 = 0xE000000000000000;
        sub_21B34B634();

        v67 = 0xD00000000000001CLL;
        v68 = 0x800000021B34C5B0;
        v45 = v70;
        v46 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v47 = (*(*(v46 + 8) + 8))(v45);
        MEMORY[0x21CEED5E0](v47);

        MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
        v48 = v67;
        v49 = v68;
        v67 = 0xD000000000000018;
        v68 = 0x800000021B34C590;
        MEMORY[0x21CEED5E0](v48, v49);

        v51 = v67;
        v50 = v68;
        v53 = v70;
        v52 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        (*(*(v52 + 8) + 80))(v53);
        v67 = sub_21B34BD24();
        v68 = v54;
        MEMORY[0x21CEED5E0](0x202E737620, 0xE500000000000000);
        v56 = v73;
        v55 = v74;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        (*(*(v55 + 8) + 80))(v56);
        v57 = sub_21B34BD24();
        MEMORY[0x21CEED5E0](v57);

        v58 = v67;
        v59 = v68;
        v67 = v51;
        v68 = v50;

        MEMORY[0x21CEED5E0](v58, v59);

        result = sub_21B34B824();
        __break(1u);
        return result;
      }

      v2 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_21B23A2F4(v16);
      }

      if (v23 >= *(v16 + 2))
      {
        goto LABEL_39;
      }

      v29 = &v16[40 * v23];
      v30 = *(v29 + 7);
      v31 = *(v29 + 8);
      __swift_mutable_project_boxed_opaque_existential_1((v29 + 32), v30);
      (*(v31 + 48))(v72, v30, v31);
      *v66 = v16;
      v11 = &v76;
      sub_21B254588(&v67, v23);
      sub_21B233960(v69);
    }

    ++v12;
    sub_21B25F000(v72);
    v14 += 40;
    v13 = v63;
  }

  while (v65 != v12);

  v11 = v76;
  v7 = v61;
  v5 = v62;
  v8 = v60;
  if (*(v76 + 16))
  {
    goto LABEL_17;
  }
}

uint64_t DataFrame.filter<A>(on:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *v7;
  v11 = v7[1];
  v13 = v7[2];
  DataFrame.subscript.getter(a1, a2, a3, a6);
  v37[0] = v40;
  v37[1] = v41;
  v37[2] = v42;
  v16 = type metadata accessor for Column(0, a6, v14, v15);
  WitnessTable = swift_getWitnessTable();
  v18 = v43;
  sub_21B2D2874(a4, a5, v16, WitnessTable, &v40);
  if (v18)
  {
  }

  v43 = v11;
  v20 = v40;
  v35 = v41;
  v21 = v42;
  if (!*(v12 + 16))
  {
    swift_bridgeObjectRetain_n();
    v26 = v43;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
LABEL_8:
    v25 = 0;
    v27 = 2;
    goto LABEL_9;
  }

  sub_21B233A74(v12 + 32, v37);
  v22 = v38;
  v23 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v24 = *(v23 + 8);
  v34 = *(v24 + 48);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v25 = v34(v22, v24);
  result = sub_21B233960(v37);
  if (v25 < 0)
  {
    __break(1u);
    return result;
  }

  v26 = v43;
  if (!v25)
  {
    goto LABEL_8;
  }

  v27 = 0;
LABEL_9:
  sub_21B254074(0, v25, v27);

  sub_21B23A9F4(0, v25, v27);
  v43 = v12;
  v28 = sub_21B248CCC(v20, v35, v21, 0, v25, v27);
  v29 = v26;
  v31 = v30;
  v33 = v32;

  result = sub_21B23A9F4(v20, v35, v21);
  *a7 = v43;
  *(a7 + 8) = v29;
  *(a7 + 16) = v13;
  *(a7 + 24) = v28;
  *(a7 + 32) = v31;
  *(a7 + 40) = v33;
  return result;
}

uint64_t DataFrame.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 2);
  v10 = *v4;
  v11 = *v4;
  v12 = v8;
  v13 = DataFrame.indexOfColumn(_:)(*&a1);
  if (!v13.is_nil)
  {
    if (v13.value < 0)
    {
      __break(1u);
    }

    else if (v13.value < *(v10 + 16))
    {
      sub_21B233A74(v10 + 40 * v13.value + 32, &v11);
      sub_21B3338E8(a4, a4);
      return sub_21B233960(&v11);
    }

    __break(1u);
  }

  sub_21B34B634();

  MEMORY[0x21CEED5E0](a1, a2);
  MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

{
  v11 = DataFrame.indexOfColumn(_:)(*&a1);
  if (v11.is_nil)
  {
    sub_21B34B634();

    MEMORY[0x21CEED5E0](a1, a2);
    MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
    result = sub_21B34B824();
    __break(1u);
  }

  else
  {
    DataFrame.subscript.getter(v11.value, *&v11.is_nil, a4);
    sub_21B34B474();
    type metadata accessor for Column(0, a4, v8, v9);
    swift_getWitnessTable();
    return sub_21B34B084();
  }

  return result;
}

uint64_t DataFrame.filter<A>(on:_:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1[1];
  v11 = *v5;
  v10 = v5[1];
  v12 = v5[2];
  v45[0] = *a1;
  v45[1] = v9;

  DataFrame.subscript.getter(v45, a4);

  v42[0] = v46;
  v42[1] = v47;
  v42[2] = v48;
  v15 = type metadata accessor for Column(0, a4, v13, v14);
  WitnessTable = swift_getWitnessTable();
  v17 = v49;
  sub_21B2D2874(a2, a3, v15, WitnessTable, &v46);
  if (v17)
  {
  }

  v40 = v12;
  v49 = v10;
  v19 = v46;
  v20 = v47;
  v21 = v48;
  if (!*(v11 + 16))
  {
    swift_bridgeObjectRetain_n();
    v31 = v49;
    swift_bridgeObjectRetain_n();
    v29 = v40;
    swift_bridgeObjectRetain_n();
    v27 = a5;
    v28 = v31;
LABEL_8:
    v26 = 0;
    v30 = 2;
    goto LABEL_9;
  }

  sub_21B233A74(v11 + 32, v42);
  v22 = v43;
  v23 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v24 = *(v23 + 8);
  v25 = *(v24 + 48);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v26 = v25(v22, v24);
  result = sub_21B233960(v42);
  v27 = a5;
  if (v26 < 0)
  {
    __break(1u);
    return result;
  }

  v28 = v49;
  v29 = v40;
  if (!v26)
  {
    goto LABEL_8;
  }

  v30 = 0;
LABEL_9:
  sub_21B254074(0, v26, v30);

  sub_21B23A9F4(0, v26, v30);
  v49 = sub_21B248CCC(v19, v20, v21, 0, v26, v30);
  v33 = v32;
  v34 = v28;
  v35 = v11;
  v36 = v29;
  v38 = v37;

  result = sub_21B23A9F4(v19, v20, v21);
  *v27 = v35;
  *(v27 + 8) = v34;
  v39 = v49;
  *(v27 + 16) = v36;
  *(v27 + 24) = v39;
  *(v27 + 32) = v33;
  *(v27 + 40) = v38;
  return result;
}

uint64_t DataFrame.subscript.getter(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v2 + 2);
  v9 = *v2;
  v10 = *v2;
  v11 = v6;
  v7._countAndFlagsBits = v4;
  v7._object = v5;
  v12 = DataFrame.indexOfColumn(_:)(v7);
  if (!v12.is_nil)
  {
    if (v12.value < 0)
    {
      __break(1u);
    }

    else if (v12.value < *(v9 + 16))
    {
      sub_21B233A74(v9 + 40 * v12.value + 32, &v10);
      sub_21B3338E8(a2, a2);
      return sub_21B233960(&v10);
    }

    __break(1u);
  }

  sub_21B34B634();

  MEMORY[0x21CEED5E0](v4, v5);
  MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DataFrame.filter(_:)@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  v6 = a1;
  v50 = a3;
  v8 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  if (*(*v3 + 16))
  {
    v10 = v4;
    sub_21B233A74(v8 + 32, v45);
    v11 = v9;
    v12 = v7;
    v14 = v46;
    v13 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v15 = *(v13 + 8);
    v16 = *(v15 + 48);

    v17 = v12;
    v9 = v11;

    v18 = v16(v14, v15);
    result = sub_21B233960(v45);
    if (v18 < 0)
    {
      __break(1u);
      goto LABEL_17;
    }

    v4 = v10;
    v7 = v17;
    v6 = a1;
    v5 = a2;
    if (v18)
    {
      v20 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v18 = 0;
  v20 = 2;
LABEL_7:
  v48[0] = v8;
  v48[1] = v7;
  v48[2] = v9;
  v48[3] = 0;
  v48[4] = v18;
  v49 = v20;
  v21 = sub_21B23DB68(v6, v5);
  v23 = v22;
  v25 = v24;
  result = sub_21B25FE94(v48);
  if (v4)
  {
    return result;
  }

  v26 = v25;
  if (!*(v8 + 16))
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    goto LABEL_13;
  }

  v41 = v21;
  sub_21B233A74(v8 + 32, v45);
  v27 = v9;
  v28 = v7;
  v30 = v46;
  v29 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v31 = *(v29 + 8);
  v32 = *(v31 + 48);
  swift_bridgeObjectRetain_n();
  v42 = v28;
  v9 = v27;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v33 = v32(v30, v31);
  result = sub_21B233960(v45);
  if (v33 < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v21 = v41;
  v7 = v42;
  if (!v33)
  {
LABEL_13:
    v33 = 0;
    v34 = 2;
    goto LABEL_14;
  }

  v34 = 0;
LABEL_14:
  sub_21B254074(0, v33, v34);

  sub_21B23A9F4(0, v33, v34);
  v35 = sub_21B248CCC(v21, v23, v26, 0, v33, v34);
  v37 = v36;
  v39 = v38;
  result = sub_21B23A9F4(v21, v23, v26);
  v40 = v50;
  *v50 = v8;
  v40[1] = v7;
  v40[2] = v9;
  v40[3] = v35;
  v40[4] = v37;
  *(v40 + 40) = v39;
  return result;
}

uint64_t sub_21B24377C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v45 = a2 + 32;
    v8 = (a1 + 40);
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = *(v8 - 1);
      v11 = *v8;
      v49 = a2;
      v50 = a3;
      v51 = a4;

      v12._countAndFlagsBits = v10;
      v12._object = v11;
      v57 = DataFrame.indexOfColumn(_:)(v12);
      if (v57.is_nil)
      {
        goto LABEL_37;
      }

      if (v57.value < 0)
      {
        break;
      }

      if (v57.value >= *(a2 + 16))
      {
        goto LABEL_36;
      }

      v13 = a3;
      sub_21B233A74(v45 + 40 * v57.value, &v49);
      v15 = v52;
      v14 = v53;
      __swift_mutable_project_boxed_opaque_existential_1(&v49, v52);
      (*(*(v14 + 8) + 16))(v10, v11, v15);
      sub_21B233A74(&v49, &v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21B249C94(0, *(v9 + 2) + 1, 1, v9, &qword_27CD7E4E8, &qword_21B351DA0, &type metadata for AnyColumn);
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      a3 = v13;
      if (v17 >= v16 >> 1)
      {
        v9 = sub_21B249C94((v16 > 1), v17 + 1, 1, v9, &qword_27CD7E4E8, &qword_21B351DA0, &type metadata for AnyColumn);
      }

      *(v9 + 2) = v17 + 1;
      v18 = &v9[40 * v17];
      v19 = v54;
      v20 = v55;
      *(v18 + 8) = v56;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
      sub_21B233960(&v49);
      v8 += 2;
      if (!--v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_21B34B634();

    v49 = 0xD00000000000001ALL;
    v50 = 0x800000021B34C410;
    MEMORY[0x21CEED5E0](v10, v11);
    MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
    goto LABEL_39;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_13:
  sub_21B23BEF8(v9, &v54);

  v22 = sub_21B25DE78(v21);

  v23 = *(a3 + 16);
  if (!v23)
  {
LABEL_34:

    v43 = v55;
    *a5 = v54;
    *(a5 + 16) = v43;
    return result;
  }

  v24 = 0;
  v25 = a3 + 32;
  v26 = v22 + 56;
  v46 = a3 + 32;
  while (1)
  {
    if (!*(v22 + 16))
    {
      goto LABEL_16;
    }

    v27 = (v25 + 32 * v24);
    v28 = v27[1];
    v48 = *v27;
    v30 = v27[2];
    v29 = v27[3];
    sub_21B34BBC4();

    sub_21B34AD94();
    v31 = sub_21B34BC24();
    v32 = -1 << *(v22 + 32);
    v33 = v31 & ~v32;
    if ((*(v26 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
    {
      break;
    }

LABEL_15:

LABEL_16:
    if (++v24 == v23)
    {
      goto LABEL_34;
    }
  }

  v34 = ~v32;
  while (1)
  {
    v35 = (*(v22 + 48) + 16 * v33);
    v36 = *v35 == v30 && v35[1] == v29;
    if (v36 || (sub_21B34B9F4() & 1) != 0)
    {
      break;
    }

    v33 = (v33 + 1) & v34;
    if (((*(v26 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (*(v55 + 16))
  {
    sub_21B24B5D0(v30, v29, MEMORY[0x277D83758], sub_21B24FDE4);
    if (v37)
    {
      v38 = *(&v54 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_21B249A10(0, v38[2] + 1, 1, v38);
      }

      v40 = v38[2];
      v39 = v38[3];
      if (v40 >= v39 >> 1)
      {
        v38 = sub_21B249A10((v39 > 1), v40 + 1, 1, v38);
      }

      v38[2] = v40 + 1;
      v41 = &v38[4 * v40];
      v25 = v46;
      v41[4] = v48;
      v41[5] = v28;
      v41[6] = v30;
      v41[7] = v29;
      *(&v54 + 1) = v38;
      goto LABEL_16;
    }
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  sub_21B34B634();

  v49 = 0xD00000000000001ALL;
  v50 = 0x800000021B34C410;
  MEMORY[0x21CEED5E0](v30, v29);
  MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
LABEL_39:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DataFrame.subscript.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = a1;
  v47 = a4;
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v47 - v12;
  v14 = *v4;
  v57 = *(v4 + 8);
  v15 = *(v8 + 16);
  v52 = v7;
  v51 = v8 + 16;
  v48 = v15;
  v15(v10, v7, a2);
  v50 = v10;
  sub_21B34AEC4();
  v53 = a2;
  v54 = a3;
  swift_getAssociatedConformanceWitness();
  v55 = v13;
  v56 = AssociatedTypeWitness;
  sub_21B34B4D4();
  v16 = v62;
  if (v62)
  {
    v7 = v61;
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      v61 = v14;
      v62 = v57;
      v18._countAndFlagsBits = v7;
      v18._object = v16;
      v65 = DataFrame.indexOfColumn(_:)(v18);
      if (v65.is_nil)
      {
        break;
      }

      if (v65.value < 0)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v65.value >= *(v14 + 16))
      {
        goto LABEL_37;
      }

      sub_21B233A74(v14 + 32 + 40 * v65.value, &v61);
      v19 = v63;
      v20 = v64;
      __swift_mutable_project_boxed_opaque_existential_1(&v61, v63);
      (*(*(v20 + 8) + 16))(v7, v16, v19);
      sub_21B233A74(&v61, &v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_21B249C94(0, *(v17 + 2) + 1, 1, v17, &qword_27CD7E4E8, &qword_21B351DA0, &type metadata for AnyColumn);
      }

      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      if (v22 >= v21 >> 1)
      {
        v17 = sub_21B249C94((v21 > 1), v22 + 1, 1, v17, &qword_27CD7E4E8, &qword_21B351DA0, &type metadata for AnyColumn);
      }

      *(v17 + 2) = v22 + 1;
      v23 = &v17[40 * v22];
      v24 = v58;
      v25 = v59;
      *(v23 + 8) = v60;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      sub_21B233960(&v61);
      sub_21B34B4D4();
      v7 = v61;
      v16 = v62;
      if (!v62)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_13:
    (*(v49 + 8))(v55, v56);
    sub_21B23BEF8(v17, &v58);
    v16 = v53;
    v48(v50, v52, v53);
    v26 = sub_21B34B134();
    v27 = v26;
    v28 = v57;
    v29 = *(v57 + 16);
    if (!v29)
    {
LABEL_35:

      v45 = v59;
      v46 = v47;
      *v47 = v58;
      *(v46 + 2) = v45;
      return result;
    }

    v30 = 0;
    v55 = *(v57 + 16);
    v56 = v57 + 32;
    v31 = v26 + 56;
    while (v30 < *(v28 + 16))
    {
      if (*(v27 + 16))
      {
        v32 = (v56 + 32 * v30);
        v33 = v32[1];
        *&v57 = *v32;
        v7 = v32[2];
        v34 = v32[3];
        sub_21B34BBC4();

        sub_21B34AD94();
        v35 = sub_21B34BC24();
        v36 = -1 << *(v27 + 32);
        v16 = v35 & ~v36;
        if ((*(v31 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v37 = ~v36;
          while (1)
          {
            v38 = (*(v27 + 48) + 16 * v16);
            v39 = *v38 == v7 && v38[1] == v34;
            if (v39 || (sub_21B34B9F4() & 1) != 0)
            {
              break;
            }

            v16 = (v16 + 1) & v37;
            if (((*(v31 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          if (!*(v59 + 16) || (sub_21B24B5D0(v7, v34, MEMORY[0x277D83758], sub_21B24FDE4), (v40 & 1) == 0))
          {
            v61 = 0;
            *&v62 = 0xE000000000000000;
            sub_21B34B634();

            v61 = 0xD00000000000001ALL;
            *&v62 = 0x800000021B34C410;
            MEMORY[0x21CEED5E0](v7, v34);
            MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
            goto LABEL_41;
          }

          v16 = *(&v58 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_21B249A10(0, *(v16 + 16) + 1, 1, v16);
          }

          v42 = *(v16 + 16);
          v41 = *(v16 + 24);
          if (v42 >= v41 >> 1)
          {
            v16 = sub_21B249A10((v41 > 1), v42 + 1, 1, v16);
          }

          *(v16 + 16) = v42 + 1;
          v43 = (v16 + 32 * v42);
          v43[4] = v57;
          v43[5] = v33;
          v43[6] = v7;
          v43[7] = v34;
          *(&v58 + 1) = v16;
          v29 = v55;
        }

        else
        {
LABEL_15:
        }
      }

      if (++v30 == v29)
      {
        goto LABEL_35;
      }
    }

LABEL_38:
    __break(1u);
  }

  v61 = 0;
  *&v62 = 0xE000000000000000;
  sub_21B34B634();

  v61 = 0xD00000000000001ALL;
  *&v62 = 0x800000021B34C410;
  MEMORY[0x21CEED5E0](v7, v16);
  MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
LABEL_41:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B244378@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];

  result = sub_21B2A32B8();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = result;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return result;
}

__n128 sub_21B2443F0(__n128 *a1)
{

  v3 = a1[1].n128_u64[0];
  sub_21B23A9F4(a1[1].n128_i64[1], a1[2].n128_i64[0], a1[2].n128_i8[8]);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  return result;
}

uint64_t (*sub_21B244450(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DataFrame.rows.modify(v2);
  return sub_21B2444C0;
}

void sub_21B2444C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_21B244510()
{

  v0 = sub_21B2A32B8();
  v2 = v1;
  v4 = v3;
  v5 = sub_21B2FB1D4(v0, v1, v3);

  sub_21B23A9F4(v0, v2, v4);
  return v5;
}

unint64_t DataFrame.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  result = sub_21B23AC94(a1, a2);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v7 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = v7 + 40 * result + 32;

  return sub_21B233A74(v6, a3);
}

unint64_t sub_21B244640@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = sub_21B23AC94(*a2, a2[1]);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v6 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = v6 + 40 * result + 32;

  return sub_21B233A74(v5, a3);
}

uint64_t sub_21B2446C8(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_21B233A74(a1, v7);

  v5 = sub_21B23AC94(v3, v4);

  sub_21B239CC0(v5, v7);
  return sub_21B233960(v7);
}

uint64_t DataFrame.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_21B23AC94(a2, a3);

  sub_21B239CC0(v6, a1);

  return sub_21B233960(a1);
}

unint64_t DataFrame.subscript.modify(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  v10 = *v3;
  result = sub_21B23AC94(a2, a3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v10 + 16))
  {
    sub_21B233A74(v10 + 40 * result + 32, v8);
    return sub_21B24492C;
  }

  __break(1u);
  return result;
}

void sub_21B24492C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  if (a2)
  {
    sub_21B233A74(*a1, v2 + 40);

    v5 = sub_21B23AC94(v4, v3);

    sub_21B239CC0(v5, v2 + 40);
    sub_21B233960(v2 + 40);
  }

  else
  {

    v6 = sub_21B23AC94(v4, v3);

    sub_21B239CC0(v6, v2);
  }

  sub_21B233960(v2);

  free(v2);
}

uint64_t DataFrame.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *v3;
  v11 = DataFrame.indexOfColumn(_:)(*&a1);
  if (v11.is_nil)
  {
    goto LABEL_9;
  }

  if (v11.value < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v11.value >= *(v9 + 16))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    sub_21B34B634();

    MEMORY[0x21CEED5E0](a1, a2);
    MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v7 = v9 + 40 * v11.value + 32;

  return sub_21B233A74(v7, a3);
}

uint64_t sub_21B244BB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_21B233A74(a1, v6);

  return DataFrame.subscript.setter(v6, v3, v4);
}

uint64_t DataFrame.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = v3[1];
  v9 = v3[2];
  v18 = *v3;
  v19 = v8;
  v20 = v9;

  v10._countAndFlagsBits = a2;
  v10._object = a3;
  v24 = DataFrame.indexOfColumn(_:)(v10);
  is_nil = v24.is_nil;

  if (is_nil)
  {
    sub_21B233A74(a1, &v18);
    v12 = v21;
    v13 = v22;
    __swift_mutable_project_boxed_opaque_existential_1(&v18, v21);
    (*(*(v13 + 8) + 16))(a2, a3, v12);
    DataFrame.append(column:)(&v18);
    sub_21B233960(a1);
    return sub_21B233960(&v18);
  }

  else
  {
    v15 = v4[1];
    v16 = v4[2];
    v18 = *v4;
    v19 = v15;
    v20 = v16;

    v17 = sub_21B23AC94(a2, a3);

    sub_21B239CC0(v17, a1);

    return sub_21B233960(a1);
  }
}

void (*DataFrame.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  DataFrame.subscript.getter(a2, a3, v7);
  return sub_21B244E58;
}

void sub_21B244E58(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  if (a2)
  {
    sub_21B233A74(*a1, v2 + 40);

    DataFrame.subscript.setter(v2 + 40, v4, v3);
    sub_21B233960(v2);
  }

  else
  {

    DataFrame.subscript.setter(v2, v4, v3);
  }

  free(v2);
}

unint64_t DataFrame.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v3 + 16) > result)
  {
    sub_21B233A74(*v3 + 40 * result + 32, v5);
    sub_21B3338E8(a3, a3);
    return sub_21B233960(v5);
  }

  __break(1u);
  return result;
}

uint64_t DataFrame.subscript.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = v5[1];
  v12 = v5[2];
  v30 = *v5;
  *&v31 = v11;
  *(&v31 + 1) = v12;

  v13._countAndFlagsBits = a2;
  v13._object = a3;
  v34 = DataFrame.indexOfColumn(_:)(v13);
  is_nil = v34.is_nil;

  if (is_nil)
  {
    v32 = a1;
    sub_21B34B474();
    v15 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    Column.init<A>(name:contents:)(a2, a3, &v32, a5, v15, WitnessTable, &v30);
    v32 = v30;
    v33 = v31;
    DataFrame.append<A>(column:)(&v32, a5, v17, v18);
  }

  else
  {
    v30 = a1;
    sub_21B34B474();
    v20 = sub_21B34B054();

    v21 = swift_getWitnessTable();
    Column.init<A>(name:contents:)(a2, a3, &v30, a5, v20, v21, &v32);
    v24 = type metadata accessor for Column(0, a5, v22, v23);
    Column.eraseToAnyColumn()(v24, v25, v26, &v30);

    v27 = v6[1];
    v28 = v6[2];
    v32 = *v6;
    *&v33 = v27;
    *(&v33 + 1) = v28;

    v29 = sub_21B23AC94(a2, a3);

    sub_21B239CC0(v29, &v30);
    return sub_21B233960(&v30);
  }
}

{
  v8 = *(a1 + 16);
  v9 = v5[1];
  v10 = v5[2];
  v23 = *v5;
  v24 = v9;
  v25 = v10;

  v11._countAndFlagsBits = a2;
  v11._object = a3;
  v27 = DataFrame.indexOfColumn(_:)(v11);
  is_nil = v27.is_nil;

  if (is_nil)
  {

    v23 = a2;
    v24 = a3;
    v25 = v8;

    DataFrame.append<A>(column:)(&v23, a5, v15, v16);
  }

  else
  {
    v18 = type metadata accessor for Column(0, a5, v13, v14);
    Column.eraseToAnyColumn()(v18, v19, v20, &v23);

    v21 = sub_21B23AC94(a2, a3);

    sub_21B239CC0(v21, &v23);
    return sub_21B233960(&v23);
  }
}

void (*DataFrame.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x30uLL);
  }

  *a1 = v11;
  v11[4] = a5;
  v11[5] = v5;
  v11[2] = a3;
  v11[3] = a4;
  v11[1] = a2;
  *v11 = DataFrame.subscript.getter(a2, a3, v12, a5);
  return sub_21B245408;
}

void sub_21B245408(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;

  v7 = v3[4];
  v8 = v3[1];
  if (a2)
  {

    DataFrame.subscript.setter(v9, v8, v4, v10, v7);
  }

  else
  {
    DataFrame.subscript.setter(v5, v3[1], v4, v6, v3[4]);
  }

  free(v3);
}

uint64_t (*DataFrame.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x40uLL);
  }

  *a1 = v11;
  v11[6] = a5;
  v11[7] = v5;
  v11[4] = a3;
  v11[5] = a4;
  v11[3] = a2;
  DataFrame.subscript.getter(a2, a3, v12, a5);
  return sub_21B245748;
}

void sub_21B245748(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[2];
  v10[0] = **a1;
  v10[1] = v3;
  v10[2] = v7;
  if (a2)
  {

    DataFrame.subscript.setter(v10, v6, v5, v8, v4);
  }

  else
  {

    DataFrame.subscript.setter(v10, v6, v5, v9, v4);
  }

  free(v2);
}

double sub_21B24581C@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *(a1 + 2);
  v7 = *a2;
  v8 = a2[1];
  v12 = *a1;
  v13 = v6;
  v10[0] = v7;
  v10[1] = v8;

  DataFrame.subscript.getter(v10, v5);

  *a4 = v10[2];
  result = *&v11;
  *(a4 + 8) = v11;
  return result;
}

uint64_t sub_21B2458A0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v6 = *a3;
  v5 = a3[1];
  v7 = a1[1];
  v8 = a1[2];
  v11[0] = *a1;
  v11[1] = v7;
  v11[2] = v8;
  v10[0] = v6;
  v10[1] = v5;

  return DataFrame.subscript.setter(v11, v10, v4);
}

uint64_t DataFrame.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v7 = *a2;
  v6 = a2[1];
  v8 = v3[1];
  v9 = v3[2];
  v21 = *v3;
  v22 = v8;
  v23 = v9;

  v10._countAndFlagsBits = v7;
  v10._object = v6;
  v25 = DataFrame.indexOfColumn(_:)(v10);
  is_nil = v25.is_nil;

  if (is_nil)
  {

    v21 = v7;
    v22 = v6;
    v23 = v5;

    DataFrame.append<A>(column:)(&v21, a3, v14, v15);
  }

  else
  {
    v17 = type metadata accessor for Column(0, a3, v12, v13);
    Column.eraseToAnyColumn()(v17, v18, v19, &v21);

    v20 = sub_21B23AC94(v7, v6);

    sub_21B239CC0(v20, &v21);
    return sub_21B233960(&v21);
  }
}

void (*DataFrame.subscript.modify(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v8 = *a2;
  v9 = a2[1];
  v7[5] = v8;
  v7[6] = v9;
  v10 = *(v3 + 2);
  v13 = *v3;
  v14 = v10;
  v12[0] = v8;
  v12[1] = v9;
  swift_bridgeObjectRetain_n();
  DataFrame.subscript.getter(v12, a3);

  return sub_21B245BCC;
}

void sub_21B245BCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = v2[5];
  v5 = v2[6];
  v7 = v2[3];
  v8 = v2[2];
  v9[0] = v4;
  v9[1] = v3;
  v9[2] = v8;
  v10[0] = v6;
  v10[1] = v5;
  if (a2)
  {

    DataFrame.subscript.setter(v9, v10, v7);
  }

  else
  {
    DataFrame.subscript.setter(v9, v10, v7);
  }

  free(v2);
}

unint64_t DataFrame.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    return sub_21B233A74(*v2 + 40 * result + 32, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B245CAC@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 16))
  {
    return sub_21B233A74(*result + 40 * v3 + 32, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B245CE0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  sub_21B233A74(a1, v5);
  sub_21B239CC0(v3, v5);
  return sub_21B233960(v5);
}

uint64_t DataFrame.subscript.setter(uint64_t a1, unint64_t a2)
{
  sub_21B239CC0(a2, a1);

  return sub_21B233960(a1);
}

uint64_t (*DataFrame.subscript.modify(uint64_t (**a1)(), unint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x60uLL);
  }

  *a1 = result;
  *(result + 10) = a2;
  *(result + 11) = v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > a2)
  {
    sub_21B233A74(*v2 + 40 * a2 + 32, result);
    return sub_21B245E0C;
  }

  __break(1u);
  return result;
}

void sub_21B245E0C(unint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[10];
    sub_21B233A74(*a1, (v2 + 5));
    sub_21B239CC0(v3, (v2 + 5));
    sub_21B233960((v2 + 5));
  }

  else
  {
    sub_21B239CC0(v2[10], v2);
  }

  sub_21B233960(v2);

  free(v2);
}

uint64_t DataFrame.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Column(0, a4, a3, a4);
  Column.eraseToAnyColumn()(v5, v6, v7, v9);

  sub_21B239CC0(a2, v9);
  return sub_21B233960(v9);
}

void (*DataFrame.subscript.modify(void *a1, unint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  *a1 = v9;
  v9[5] = a4;
  v9[6] = v4;
  v9[3] = a2;
  v9[4] = a3;
  DataFrame.subscript.getter(a2, v10, a4);
  return sub_21B245FC8;
}

void sub_21B245FC8(uint64_t **a1, char a2, uint64_t a3)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  v10[0] = v5;
  v10[1] = v4;
  v10[2] = v8;
  if (a2)
  {

    DataFrame.subscript.setter(v10, v7, v9, v6);
  }

  else
  {
    DataFrame.subscript.setter(v10, v7, a3, v6);
  }

  free(v3);
}

uint64_t DataFrame.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  if (!*(*v2 + 16))
  {

    goto LABEL_6;
  }

  sub_21B233A74(v5 + 32, v16);
  v8 = v17;
  v9 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v10 = *(v9 + 8);
  v11 = *(v10 + 48);

  v12 = v11(v8, v10);
  result = sub_21B233960(v16);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = v12;
    if (v12)
    {
      v15 = 0;
LABEL_7:
      result = sub_21B23A9F4(0, v14, v15);
      *a2 = v5;
      a2[1] = v6;
      a2[2] = v7;
      a2[3] = a1;
      return result;
    }

LABEL_6:
    v14 = 0;
    v15 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B24617C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;

  v8 = sub_21B2A32B8();
  result = sub_21B23A9F4(v8, v9, v10);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

uint64_t sub_21B2461F4(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8[0] = *a1;
  v8[1] = v4;
  v8[2] = v6;
  v8[3] = v5;

  return DataFrame.subscript.setter(v8, v3);
}

uint64_t DataFrame.subscript.setter(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  v6 = *v3;
  v5 = v3[1];
  v26 = v5;
  v25 = v3[2];
  if (*(*v3 + 2))
  {
    v7 = *a1;
    v8 = a1[3];
    sub_21B233A74((v6 + 32), v29);
    v10 = v30;
    v9 = v31;
    v11 = __swift_project_boxed_opaque_existential_1(v29, v30);
    v12 = *(v9 + 8);
    v13 = *(v12 + 48);

    v14 = v13(v10, v12);
    sub_21B233960(v29);
    if (v14 < 0)
    {
      goto LABEL_16;
    }

    v5 = *(v6 + 2);
    if (v7[2] != v5)
    {
      goto LABEL_19;
    }

    v11 = v7;
    if (v5)
    {
      v23 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_17;
      }

      while (v5 <= v11[2])
      {
        v24 = v14;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          sub_21B233A74(&v11[v15 / 8 + 4], v29);
          if (v16 >= *(v6 + 2))
          {
            break;
          }

          ++v16;
          v17 = v30;
          v18 = v31;
          v19 = __swift_project_boxed_opaque_existential_1(v29, v30);
          v28[3] = v17;
          v28[4] = *(v18 + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
          (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v19, v17);
          v14 = *&v6[v15 + 56];
          v21 = *&v6[v15 + 64];
          __swift_mutable_project_boxed_opaque_existential_1(&v6[v15 + 32], v14);
          (*(v21 + 72))(a2, v8, v28, v14, v21);
          v11 = v7;
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
          sub_21B233960(v29);
          v15 += 40;
          if (v5 == v16)
          {

            v3 = v23;
            v14 = v24;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v6 = sub_21B23A2F4(v6);
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {

    if (v4[2])
    {
LABEL_19:
      result = sub_21B34B824();
      __break(1u);
      return result;
    }

    v14 = 0;
  }

LABEL_14:

  result = sub_21B23A9F4(0, v14, 2 * (v14 == 0));
  *v3 = v6;
  v3[1] = v26;
  v3[2] = v25;
  return result;
}

void (*DataFrame.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 112) = a2;
  *(v5 + 120) = v2;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  if (!*(*v2 + 16))
  {

    goto LABEL_9;
  }

  sub_21B233A74(v7 + 32, v5);
  v10 = v6[3];
  v11 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v10);
  v12 = *(v11 + 8);
  v13 = *(v12 + 48);

  v14 = v13(v10, v12);
  result = sub_21B233960(v6);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = v14;
    if (v14)
    {
      v17 = 0;
LABEL_10:
      sub_21B23A9F4(0, v16, v17);
      v6[10] = v7;
      v6[11] = v8;
      v6[12] = v9;
      v6[13] = a2;
      return sub_21B2466B8;
    }

LABEL_9:
    v16 = 0;
    v17 = 2;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_21B2466B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[15];
  v42 = (*a1)[13];
  v43 = (*a1)[10];
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(*v3 + 2);
  if ((a2 & 1) == 0)
  {
    v41 = v5;
    if (v7)
    {
      sub_21B233A74((v4 + 32), v2);
      v16 = v2[3];
      v15 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v16);
      v17 = *(v15 + 8);
      v18 = *(v17 + 48);
      v11 = v17 + 48;

      v13 = v18(v16, v17);
      sub_21B233960(v2);
      if (v13 < 0)
      {
        goto LABEL_40;
      }

      if (v13)
      {
        v19 = 0;
LABEL_22:
        v11 = *(v43 + 16);
        if (v11 != *(v4 + 2))
        {
          goto LABEL_45;
        }

        if (v11)
        {
          v38 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_25;
        }

LABEL_33:

        v35 = v2[15];

        sub_21B23A9F4(0, v13, v19);
        *v35 = v4;
        v35[1] = v5;
        v35[2] = v6;
        goto LABEL_34;
      }
    }

    else
    {
    }

    v13 = 0;
    v19 = 2;
    goto LABEL_22;
  }

  if (v7)
  {
    sub_21B233A74((v4 + 32), v2);
    v9 = v2[3];
    v8 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v9);
    v10 = *(v8 + 8);
    v12 = *(v10 + 48);
    v11 = v10 + 48;

    v13 = v12(v9, v10);
    sub_21B233960(v2);
    if (v13 < 0)
    {
      goto LABEL_39;
    }

    if (v13)
    {
      v14 = 0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v13 = 0;
  v14 = 2;
LABEL_12:
  v11 = *(v43 + 16);
  if (v11 != *(v4 + 2))
  {
    goto LABEL_45;
  }

  if (!v11)
  {

LABEL_31:

    v34 = v2[15];

    sub_21B23A9F4(0, v13, v14);
    *v34 = v4;
    v34[1] = v5;
    v34[2] = v6;

LABEL_34:

    free(v2);
    return;
  }

  v38 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_41;
  }

  while (v11 <= *(v43 + 16))
  {
    v36 = v13;
    v41 = v5;
    v39 = v6;
    v13 = 0;
    v20 = 0;
    while (1)
    {
      sub_21B233A74(v43 + v13 + 32, v2);
      if (v20 >= *(v4 + 2))
      {
        break;
      }

      v21 = v2[14];
      ++v20;
      v6 = &v4[v13];
      v22 = v2[3];
      v5 = v2[4];
      v23 = __swift_project_boxed_opaque_existential_1(v2, v22);
      v2[8] = v22;
      v2[9] = *(v5 + 1);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 5);
      (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v23, v22);
      v25 = *&v4[v13 + 56];
      v26 = *&v4[v13 + 64];
      __swift_mutable_project_boxed_opaque_existential_1((v6 + 32), *(v6 + 7));
      (*(v26 + 72))(v21, v42, v2 + 5, v25, v26);
      __swift_destroy_boxed_opaque_existential_1Tm(v2 + 5);
      sub_21B233960(v2);
      v13 += 40;
      if (v11 == v20)
      {

        v6 = v39;
        v5 = v41;
        v13 = v36;
        v14 = v38;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v4 = sub_21B23A2F4(v4);
  }

  __break(1u);
LABEL_43:
  v4 = sub_21B23A2F4(v4);
LABEL_25:
  if (v11 <= *(v43 + 16))
  {
    v37 = v13;
    v40 = v6;
    v13 = 0;
    v27 = 0;
    while (1)
    {
      sub_21B233A74(v43 + v13 + 32, v2);
      if (v27 >= *(v4 + 2))
      {
        goto LABEL_38;
      }

      v28 = v2[14];
      ++v27;
      v5 = &v4[v13];
      v29 = v2[3];
      v6 = v2[4];
      v30 = __swift_project_boxed_opaque_existential_1(v2, v29);
      v2[8] = v29;
      v2[9] = *(v6 + 1);
      v31 = __swift_allocate_boxed_opaque_existential_1(v2 + 5);
      (*(*(v29 - 8) + 16))(v31, v30, v29);
      v32 = *&v4[v13 + 56];
      v33 = *&v4[v13 + 64];
      __swift_mutable_project_boxed_opaque_existential_1((v5 + 32), *(v5 + 7));
      (*(v33 + 72))(v28, v42, v2 + 5, v32, v33);
      __swift_destroy_boxed_opaque_existential_1Tm(v2 + 5);
      sub_21B233960(v2);
      v13 += 40;
      if (v11 == v27)
      {

        v6 = v40;
        v5 = v41;
        v13 = v37;
        v19 = v38;
        goto LABEL_33;
      }
    }
  }

  __break(1u);
LABEL_45:
  sub_21B34B824();
  __break(1u);
}

uint64_t DataFrame.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, char *a3@<X1>, uint64_t a4@<X2>)
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  if (!*(*v4 + 16))
  {

LABEL_7:
    sub_21B2A6400();
    v18 = v17;
    v20 = v19;

    sub_21B23A9F4(0, 0, 2);
    if (v20)
    {
      v16 = 0;
    }

    else
    {
      v16 = v18;
    }

    if (!*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  sub_21B233A74(v7 + 32, v54);
  v11 = v55;
  v10 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v12 = *(v10 + 8);
  v13 = *(v12 + 48);

  v14 = v13(v11, v12);
  result = sub_21B233960(v54);
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  sub_21B23A9F4(0, v14, 0);
  v16 = 0;
  if (!*(v7 + 16))
  {
LABEL_5:

    goto LABEL_14;
  }

LABEL_11:
  v49 = a4;
  sub_21B233A74(v7 + 32, v54);
  v22 = v55;
  v21 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v23 = *(v21 + 8);
  v24 = *(v23 + 48);

  v25 = v24(v22, v23);
  result = sub_21B233960(v54);
  if (v25 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  a4 = v49;
  if (v25)
  {
    v26 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v25 = 0;
  v26 = 2;
LABEL_15:
  sub_21B2A6400();
  v28 = v27;
  v30 = v29;

  result = sub_21B23A9F4(0, v25, v26);
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  if (v31 < v16)
  {
    goto LABEL_28;
  }

  v32 = sub_21B288DA4(a1, v16, v31, a3, a4);
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if (!*(v7 + 16))
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    goto LABEL_24;
  }

  v51 = v32;
  v53 = a2;
  sub_21B233A74(v7 + 32, v54);
  v38 = v55;
  v39 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v40 = *(v39 + 8);
  v41 = *(v40 + 48);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v42 = v41(v38, v40);
  result = sub_21B233960(v54);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v33 = v51;
    a2 = v53;
    if (v42)
    {
      v43 = 0;
LABEL_25:
      sub_21B254074(0, v42, v43);

      sub_21B23A9F4(0, v42, v43);
      v44 = sub_21B248CCC(v33, v35, v37, 0, v42, v43);
      v46 = v45;
      v48 = v47;
      result = sub_21B23A9F4(v33, v35, v37);
      *a2 = v7;
      *(a2 + 8) = v8;
      *(a2 + 16) = v9;
      *(a2 + 24) = v44;
      *(a2 + 32) = v46;
      *(a2 + 40) = v48;
      return result;
    }

LABEL_24:
    v42 = 0;
    v43 = 2;
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_21B2470A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 40)
  {
    sub_21B2615FC(v3, v10, &qword_27CD7E200, &unk_21B352050);
    sub_21B2615FC(i, &v12, &qword_27CD7E200, &unk_21B352050);
    if (v11)
    {
      break;
    }

    if (*(&v13 + 1))
    {
      goto LABEL_14;
    }

    sub_21B261664(v10, &qword_27CD7E200, &unk_21B352050);
LABEL_5:
    v3 += 40;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_21B2615FC(v10, v9, &qword_27CD7E200, &unk_21B352050);
  if (*(&v13 + 1))
  {
    v7[0] = v12;
    v7[1] = v13;
    v8 = v14;
    v5 = MEMORY[0x21CEEDD80](v9, v7);
    sub_21B260E14(v7);
    sub_21B260E14(v9);
    sub_21B261664(v10, &qword_27CD7E200, &unk_21B352050);
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_21B260E14(v9);
LABEL_14:
  sub_21B261664(v10, &qword_27CD7E208, &qword_21B351B20);
  return 0;
}

uint64_t sub_21B247250(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t (*a4)(_BYTE *, _BYTE *), void (*a5)(_BYTE *))
{
  v5 = *(a1 + 16);
  if (v5 == *(a2 + 16))
  {
    if (!v5 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      v9 = a1 + 32;
      v10 = a2 + 32;
      do
      {
        a3(v9, v14);
        a3(v10, v13);
        v11 = a4(v14, v13);
        a5(v13);
        a5(v14);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v9 += 40;
        v10 += 40;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_21B247340(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t DataFrame.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  result = MEMORY[0x21CEEE3B0](*(*v1 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 32;
    do
    {
      sub_21B233A74(v6, v7);
      AnyColumn.hash(into:)(a1);
      result = sub_21B233960(v7);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t DataFrame.hashValue.getter()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_21B233A74(v3, v5);
      AnyColumn.hash(into:)(v6);
      sub_21B233960(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return sub_21B34BC24();
}

uint64_t sub_21B2474A4(uint64_t a1)
{
  v2 = *v1;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_21B233A74(v4, v6);
      AnyColumn.hash(into:)(v7);
      sub_21B233960(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return sub_21B34BC24();
}

uint64_t DataFrame.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, int64x2_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v111 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v111 - v12;
  v14 = MEMORY[0x277D84F90];
  result = sub_21B25DC2C(MEMORY[0x277D84F90]);
  v132.i64[0] = v14;
  v132.i64[1] = v14;
  v133 = result;
  v121 = *(a1 + 16);
  if (!v121)
  {
    v110 = result;

    v109 = vdupq_n_s64(v14);
LABEL_177:
    *a2 = v109;
    a2[1].i64[0] = v110;
    return result;
  }

  v112 = v11;
  v116 = v8;
  v114 = v5;
  v113 = v4;
  v118 = a2;
  v16 = 0;
  v120 = a1 + 32;
  v117 = xmmword_21B351960;
  v119 = a1;
  v115 = v13;
LABEL_3:
  if (v16 >= *(a1 + 16))
  {
    goto LABEL_180;
  }

  v17 = (v120 + 24 * v16);
  v19 = *v17;
  v18 = v17[1];
  v20 = v17[2];
  v21 = *(v20 + 16);
  v123 = v16;
  v124 = v18;
  v122 = v19;
  if (!v21)
  {

LABEL_27:
    v31 = *(v20 + 16);
    v32 = MEMORY[0x277D84F90];
    if (v31)
    {
      v125 = MEMORY[0x277D84F90];

      sub_21B254168(0, v31, 0);
      v32 = v125;
      v33 = v20 + 32;
      do
      {
        sub_21B2615FC(v33, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
        v130 = v126;
        v131 = v127;
        if (*(&v127 + 1))
        {
          v34 = swift_dynamicCast();
          if (v34)
          {
            BYTE8(v129) = 0;
            v35 = v129;
          }

          else
          {
            v35 = 0;
            *&v129 = 0;
            BYTE8(v129) = 1;
          }

          v36 = v34 ^ 1;
        }

        else
        {
          sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
          v35 = 0;
          *&v129 = 0;
          v36 = 1;
          BYTE8(v129) = 1;
        }

        v125 = v32;
        v38 = *(v32 + 16);
        v37 = *(v32 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_21B254168((v37 > 1), v38 + 1, 1);
          v32 = v125;
        }

        *(v32 + 16) = v38 + 1;
        v39 = v32 + 16 * v38;
        *(v39 + 32) = v35;
        *(v39 + 40) = v36;
        v33 += 32;
        --v31;
      }

      while (v31);

      v40 = v124;
    }

    else
    {

      v40 = v124;
    }

    sub_21B234EF8(v32);
    v42 = v41;

    v43 = &qword_27CD7E170;
    v44 = &unk_21B3526E0;
    goto LABEL_88;
  }

  v22 = v20 + 32;

  v23 = 0;
  v24 = v20 + 32;
  while (v23 < *(v20 + 16))
  {
    sub_21B2615FC(v24, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
    sub_21B2615FC(&v126, &v130, &qword_27CD7E0F8, &unk_21B3557C0);
    if (*(&v131 + 1))
    {
      if (swift_dynamicCast())
      {
        result = sub_21B261664(&v126, &qword_27CD7E0F8, &unk_21B3557C0);
        goto LABEL_7;
      }
    }

    else
    {
      sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
    }

    v130 = v126;
    v131 = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E108, &qword_21B351980);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      v25 = *(v20 + 16);
      if (!v25)
      {
LABEL_51:
        v49 = *(v20 + 16);
        v50 = MEMORY[0x277D84F90];
        if (v49)
        {
          v125 = MEMORY[0x277D84F90];

          sub_21B254148(0, v49, 0);
          v50 = v125;
          do
          {
            sub_21B2615FC(v22, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
            v130 = v126;
            v131 = v127;
            if (*(&v127 + 1))
            {
              v51 = swift_dynamicCast();
              if (v51)
              {
                BYTE8(v129) = 0;
                v52 = v129;
              }

              else
              {
                v52 = 0;
                *&v129 = 0;
                BYTE8(v129) = 1;
              }

              v53 = v51 ^ 1;
            }

            else
            {
              sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
              v52 = 0;
              *&v129 = 0;
              v53 = 1;
              BYTE8(v129) = 1;
            }

            v125 = v50;
            v55 = *(v50 + 16);
            v54 = *(v50 + 24);
            if (v55 >= v54 >> 1)
            {
              sub_21B254148((v54 > 1), v55 + 1, 1);
              v50 = v125;
            }

            *(v50 + 16) = v55 + 1;
            v56 = v50 + 16 * v55;
            *(v56 + 32) = v52;
            *(v56 + 40) = v53;
            v22 += 32;
            --v49;
          }

          while (v49);

          v40 = v124;
        }

        else
        {

          v40 = v124;
        }

        sub_21B25E224(v50);
        v42 = v57;

        v43 = &qword_27CD7E168;
        v44 = &unk_21B3526C0;
        goto LABEL_88;
      }

      v26 = 0;
      v27 = v20 + 32;
      while (2)
      {
        if (v26 >= *(v20 + 16))
        {
          goto LABEL_179;
        }

        sub_21B2615FC(v27, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
        sub_21B2615FC(&v126, &v130, &qword_27CD7E0F8, &unk_21B3557C0);
        if (!*(&v131 + 1))
        {
          sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
          break;
        }

        if (swift_dynamicCast())
        {
          result = sub_21B261664(&v126, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_17:
          ++v26;
          v27 += 32;
          if (v25 == v26)
          {
            goto LABEL_51;
          }

          continue;
        }

        break;
      }

      v130 = v126;
      v131 = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
      result = swift_dynamicCast();
      if (result)
      {
        goto LABEL_17;
      }

      v28 = *(v20 + 16);
      if (!v28)
      {
LABEL_74:
        v58 = *(v20 + 16);
        v59 = MEMORY[0x277D84F90];
        if (v58)
        {
          *&v129 = MEMORY[0x277D84F90];

          sub_21B254128(0, v58, 0);
          v59 = v129;
          do
          {
            sub_21B2615FC(v22, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
            v130 = v126;
            v131 = v127;
            if (*(&v127 + 1))
            {
              v60 = swift_dynamicCast();
              if (v60)
              {
                BYTE4(v125) = 0;
                v61 = v125;
              }

              else
              {
                v61 = 0;
                LODWORD(v125) = 0;
                BYTE4(v125) = 1;
              }

              v62 = v60 ^ 1;
            }

            else
            {
              sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
              v61 = 0;
              LODWORD(v125) = 0;
              v62 = 1;
              BYTE4(v125) = 1;
            }

            *&v129 = v59;
            v64 = *(v59 + 16);
            v63 = *(v59 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_21B254128((v63 > 1), v64 + 1, 1);
              v59 = v129;
            }

            *(v59 + 16) = v64 + 1;
            v65 = v59 + 8 * v64;
            *(v65 + 32) = v61;
            *(v65 + 36) = v62;
            v22 += 32;
            --v58;
          }

          while (v58);

          v40 = v124;
        }

        else
        {

          v40 = v124;
        }

        sub_21B25FEE8(v59);
        v42 = v66;

        v43 = &qword_27CD7E160;
        v44 = &unk_21B352A10;
LABEL_88:
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
        v128 = &off_282CAA128;
        *&v126 = v122;
LABEL_89:
        *(&v126 + 1) = v40;
        *&v127 = v42;
        *(&v127 + 1) = v67;
        goto LABEL_90;
      }

      v29 = 0;
      v30 = v20 + 32;
      while (2)
      {
        if (v29 >= *(v20 + 16))
        {
          goto LABEL_181;
        }

        sub_21B2615FC(v30, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
        sub_21B2615FC(&v126, &v130, &qword_27CD7E0F8, &unk_21B3557C0);
        if (!*(&v131 + 1))
        {
          sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
          break;
        }

        if (swift_dynamicCast())
        {
          result = sub_21B261664(&v126, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_42:
          ++v29;
          v30 += 32;
          if (v28 == v29)
          {
            goto LABEL_74;
          }

          continue;
        }

        break;
      }

      v130 = v126;
      v131 = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E118, &qword_21B351990);
      result = swift_dynamicCast();
      if (result)
      {
        goto LABEL_42;
      }

      v45 = *(v20 + 16);
      v46 = MEMORY[0x277D84F90];
      if (!v45)
      {
LABEL_92:
        v68 = *(v20 + 16);
        if (!v68)
        {
          v69 = v19;
          v70 = v46;

          v40 = v124;
LABEL_104:
          v42 = sub_21B25DFE0(v70);

          v74 = &qword_27CD7E158;
          v75 = &unk_21B3526B0;
          goto LABEL_174;
        }

        v69 = v19;
        v125 = v46;

        sub_21B254108(0, v68, 0);
        v70 = v125;
        while (2)
        {
          sub_21B2615FC(v22, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
          v130 = v126;
          v131 = v127;
          if (*(&v127 + 1))
          {
            if (swift_dynamicCast())
            {
              v71 = v129;
              goto LABEL_99;
            }
          }

          else
          {
            sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
          }

          v71 = 0uLL;
          v129 = 0u;
LABEL_99:
          v125 = v70;
          v73 = *(v70 + 16);
          v72 = *(v70 + 24);
          if (v73 >= v72 >> 1)
          {
            v111 = v71;
            sub_21B254108((v72 > 1), v73 + 1, 1);
            v71 = v111;
            v70 = v125;
          }

          *(v70 + 16) = v73 + 1;
          *(v70 + 16 * v73 + 32) = v71;
          v22 += 32;
          if (!--v68)
          {

            v40 = v124;

            goto LABEL_104;
          }

          continue;
        }
      }

      v47 = 0;
      v48 = v20 + 32;
      while (1)
      {
        if (v47 >= *(v20 + 16))
        {
          goto LABEL_182;
        }

        sub_21B2615FC(v48, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
        sub_21B2615FC(&v126, &v130, &qword_27CD7E0F8, &unk_21B3557C0);
        if (!*(&v131 + 1))
        {
          break;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_72;
        }

        result = sub_21B261664(&v126, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_66:
        ++v47;
        v48 += 32;
        v46 = MEMORY[0x277D84F90];
        if (v45 == v47)
        {
          goto LABEL_92;
        }
      }

      sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_72:
      v130 = v126;
      v131 = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E120, &qword_21B351998);
      result = swift_dynamicCast();
      if (result)
      {

        goto LABEL_66;
      }

      v76 = *(v20 + 16);
      if (!v76)
      {
LABEL_126:
        v82 = *(v20 + 16);
        if (v82)
        {
          v69 = v19;
          *&v129 = MEMORY[0x277D84F90];

          sub_21B2540E8(0, v82, 0);
          v83 = v129;
          while (1)
          {
            sub_21B2615FC(v22, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
            v130 = v126;
            v131 = v127;
            if (!*(&v127 + 1))
            {
              break;
            }

            if (!swift_dynamicCast())
            {
              goto LABEL_132;
            }

            v84 = v125;
LABEL_133:
            *&v129 = v83;
            v86 = *(v83 + 16);
            v85 = *(v83 + 24);
            if (v86 >= v85 >> 1)
            {
              sub_21B2540E8((v85 > 1), v86 + 1, 1);
              v83 = v129;
            }

            *(v83 + 16) = v86 + 1;
            *(v83 + v86 + 32) = v84;
            v22 += 32;
            if (!--v82)
            {

              v40 = v124;

              goto LABEL_138;
            }
          }

          sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_132:
          v84 = 2;
          LOBYTE(v125) = 2;
          goto LABEL_133;
        }

        v69 = v19;

        v83 = MEMORY[0x277D84F90];
        v40 = v124;
LABEL_138:
        sub_21B260114(v83);
        v42 = v87;

        v74 = &qword_27CD7E150;
        v75 = &unk_21B3526D0;
LABEL_174:
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
        v128 = &off_282CAA128;
        *&v126 = v69;
        goto LABEL_89;
      }

      v77 = 0;
      v78 = v20 + 32;
      while (1)
      {
        if (v77 >= *(v20 + 16))
        {
          goto LABEL_183;
        }

        sub_21B2615FC(v78, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
        sub_21B2615FC(&v126, &v130, &qword_27CD7E0F8, &unk_21B3557C0);
        if (!*(&v131 + 1))
        {
          break;
        }

        if (!swift_dynamicCast())
        {
          goto LABEL_114;
        }

        result = sub_21B261664(&v126, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_108:
        ++v77;
        v78 += 32;
        if (v76 == v77)
        {
          goto LABEL_126;
        }
      }

      sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_114:
      v130 = v126;
      v131 = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E128, &qword_21B3519A0);
      result = swift_dynamicCast();
      if (result)
      {
        goto LABEL_108;
      }

      v79 = *(v20 + 16);
      if (!v79)
      {
LABEL_139:
        v88 = *(v20 + 16);
        if (v88)
        {
          v69 = v19;
          v125 = MEMORY[0x277D84F90];

          sub_21B2540C8(0, v88, 0);
          v89 = v125;
          while (1)
          {
            sub_21B2615FC(v22, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
            v130 = v126;
            v131 = v127;
            if (!*(&v127 + 1))
            {
              break;
            }

            if (!swift_dynamicCast())
            {
              goto LABEL_145;
            }

            v90 = v129;
LABEL_146:
            v125 = v89;
            v92 = *(v89 + 16);
            v91 = *(v89 + 24);
            if (v92 >= v91 >> 1)
            {
              v111 = v90;
              sub_21B2540C8((v91 > 1), v92 + 1, 1);
              v90 = v111;
              v89 = v125;
            }

            *(v89 + 16) = v92 + 1;
            *(v89 + 16 * v92 + 32) = v90;
            v22 += 32;
            if (!--v88)
            {

              v40 = v124;

              goto LABEL_151;
            }
          }

          sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_145:
          v90 = v117;
          v129 = v117;
          goto LABEL_146;
        }

        v69 = v19;

        v89 = MEMORY[0x277D84F90];
        v40 = v124;
LABEL_151:
        v42 = sub_21B26032C(v89);

        v74 = &qword_27CD7E148;
        v75 = &unk_21B352A20;
        goto LABEL_174;
      }

      v80 = 0;
      v81 = v20 + 32;
      while (1)
      {
        if (v80 >= *(v20 + 16))
        {
          goto LABEL_184;
        }

        sub_21B2615FC(v81, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
        sub_21B2615FC(&v126, &v130, &qword_27CD7E0F8, &unk_21B3557C0);
        if (!*(&v131 + 1))
        {
          break;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_124;
        }

        sub_21B234324(v129, *(&v129 + 1));
        result = sub_21B261664(&v126, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_118:
        ++v80;
        v81 += 32;
        if (v79 == v80)
        {
          goto LABEL_139;
        }
      }

      sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_124:
      v130 = v126;
      v131 = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E130, &qword_21B3519A8);
      result = swift_dynamicCast();
      if (result)
      {
        result = sub_21B260C58(v129, *(&v129 + 1));
        goto LABEL_118;
      }

      *&v111 = *(v20 + 16);
      if (!v111)
      {
LABEL_163:
        v100 = *(v20 + 16);
        if (v100)
        {
          v69 = v19;
          *&v129 = MEMORY[0x277D84F90];

          sub_21B2540A8(0, v100, 0);
          v101 = v129;
          do
          {
            sub_21B2615FC(v22, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
            v130 = v126;
            v131 = v127;
            if (*(&v127 + 1))
            {
              v102 = sub_21B34A834();
              v103 = v116;
              v104 = swift_dynamicCast();
              (*(*(v102 - 8) + 56))(v103, v104 ^ 1u, 1, v102);
            }

            else
            {
              sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
              v105 = sub_21B34A834();
              (*(*(v105 - 8) + 56))(v116, 1, 1, v105);
            }

            *&v129 = v101;
            v107 = *(v101 + 16);
            v106 = *(v101 + 24);
            if (v107 >= v106 >> 1)
            {
              sub_21B2540A8((v106 > 1), v107 + 1, 1);
              v101 = v129;
            }

            *(v101 + 16) = v107 + 1;
            sub_21B260BE8(v116, v101 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v107);
            v22 += 32;
            --v100;
          }

          while (v100);

          v40 = v124;
        }

        else
        {
          v69 = v19;

          v101 = MEMORY[0x277D84F90];
          v40 = v124;
        }

        v42 = sub_21B260568(v101);

        v74 = &qword_27CD7E140;
        v75 = &unk_21B3526A0;
        goto LABEL_174;
      }

      v93 = 0;
      v94 = v20 + 32;
      while (2)
      {
        if (v93 >= *(v20 + 16))
        {
          goto LABEL_185;
        }

        sub_21B2615FC(v94, &v126, &qword_27CD7E0F8, &unk_21B3557C0);
        sub_21B2615FC(&v126, &v130, &qword_27CD7E0F8, &unk_21B3557C0);
        if (*(&v131 + 1))
        {
          v96 = sub_21B34A834();
          v97 = v115;
          v98 = swift_dynamicCast();
          (*(*(v96 - 8) + 56))(v97, v98 ^ 1u, 1, v96);
        }

        else
        {
          sub_21B261664(&v130, &qword_27CD7E0F8, &unk_21B3557C0);
          v96 = sub_21B34A834();
          v97 = v115;
          (*(*(v96 - 8) + 56))(v115, 1, 1, v96);
        }

        sub_21B34A834();
        if (!(*(*(v96 - 8) + 48))(v97, 1, v96))
        {
          sub_21B261664(&v126, &qword_27CD7E0F8, &unk_21B3557C0);
          v95 = v115;
          goto LABEL_155;
        }

        v130 = v126;
        v131 = v127;
        v99 = v112;
        if (swift_dynamicCast())
        {
          sub_21B261664(v99, &qword_27CD7E100, &unk_21B352A30);
          v95 = v115;
LABEL_155:
          ++v93;
          result = sub_21B261664(v95, &qword_27CD7E100, &unk_21B352A30);
          v94 += 32;
          v19 = v122;
          if (v111 == v93)
          {
            goto LABEL_163;
          }

          continue;
        }

        break;
      }

      sub_21B261664(v115, &qword_27CD7E100, &unk_21B352A30);
      v108 = sub_21B260990(v20);

      *(&v127 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E138, &qword_21B3519B0);
      v128 = &off_282CAA128;
      *&v126 = v122;
      *(&v126 + 1) = v124;
      *&v127 = v108;
LABEL_90:
      DataFrame.append(column:)(&v126);
      result = sub_21B233960(&v126);
      a1 = v119;
      v16 = v123 + 1;
      if (v123 + 1 == v121)
      {

        v109 = v132;
        v110 = v133;
        a2 = v118;
        goto LABEL_177;
      }

      goto LABEL_3;
    }

LABEL_7:
    ++v23;
    v24 += 32;
    if (v21 == v23)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
  return result;
}

uint64_t sub_21B248A60(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = *v2;
  v6 = *(v2 + 16);
  if (!*(v2 + 16))
  {
LABEL_4:
    result = sub_21B2A6400();
    if (v8)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v4 == a2 || v7 > v4)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (!v6)
    {
LABEL_13:
      result = sub_21B2A6400();
      if (v10)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      if (v9 != v4)
      {
        if (v6)
        {
          v13 = *(v5 + 16);
LABEL_27:
          v14 = v13;
          goto LABEL_28;
        }

LABEL_26:
        v13 = 1;
        goto LABEL_27;
      }

      if (!v6)
      {
        v12 = 0;
        if (v5 <= a2)
        {
          goto LABEL_18;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = *(v5 + 16);
      if (v11)
      {
        v12 = v11 - 1;
        v5 = *(v5 + 16 * (v11 - 1) + 32);
        if (v5 <= a2)
        {
LABEL_18:

          return sub_21B24967C(v5, a2, v12);
        }

        goto LABEL_25;
      }

      goto LABEL_32;
    }

    goto LABEL_12;
  }

  if (v6 == 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (result != a2)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  if (result == a2)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_12:
  if (*(v5 + 16))
  {
    goto LABEL_13;
  }

LABEL_21:
  v13 = 0;
  v14 = 0;
LABEL_28:

  return sub_21B28E6D0(v13, v14, v4, a2);
}

uint64_t sub_21B248BBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = a4;
  if (a4)
  {
    if (a4 == 1)
    {
      v9 = *(a2 + 16);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  result = sub_21B334FF8(0, result, v9, a2, a3, a4);
  if (v10)
  {
    if (v5 == 2)
    {
LABEL_19:
      result = 0;
      v11 = 0;
      goto LABEL_24;
    }

    if (v5 != 1)
    {
      result = 1;
      v11 = 1;
      goto LABEL_24;
    }

    result = *(a2 + 16);
LABEL_16:
    v11 = *(a2 + 16);
    if (v11 >= result)
    {
      if (result < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_24:
      *a5 = result;
      *(a5 + 8) = v11;
      *(a5 + 16) = a2;
      *(a5 + 24) = a3;
      *(a5 + 32) = v5;
      return result;
    }

    goto LABEL_27;
  }

  if (!v5)
  {
    if (result <= 1)
    {
      v11 = 1;
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    goto LABEL_26;
  }

  if (v5 != 2)
  {
    goto LABEL_16;
  }

  if (result <= 0)
  {
    v11 = 0;
    if (result < 0)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

char *sub_21B248CCC(char *result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = 0;
  v8 = 0;
  v31 = a4 + 32;
  v9 = result + 40;
  v10 = MEMORY[0x277D84F90];
  v39 = result;
  v34 = result + 40;
  while (1)
  {
    if (a6)
    {
      if (a6 == 1)
      {
        v11 = *(a4 + 16);
        if (v8 != v11)
        {
          if (v8 >= v11)
          {
            goto LABEL_65;
          }

          v12 = (v31 + 16 * v8);
          v14 = *v12;
          v13 = v12[1];
          goto LABEL_11;
        }

        sub_21B23A9F4(a4, a5, 1);
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

LABEL_56:
      sub_21B249474(v10, 0, 1);
      return v10;
    }

    if (v8 == 1)
    {
      goto LABEL_56;
    }

    if (v8)
    {
      goto LABEL_66;
    }

    v14 = a4;
    v13 = a5;
LABEL_11:
    v15 = &v9[16 * v7];
    v16 = v7;
    v37 = v8 + 1;
    v17 = a3;
    if (!a3)
    {
      while (v16 < 1)
      {
        v18 = a2;
        if (v16)
        {
          goto LABEL_59;
        }

LABEL_18:
        if (v14 < v18)
        {
          break;
        }

        ++v16;
        v15 += 2;
        v17 = a3;
        if (a3)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_21;
    }

LABEL_12:
    if (v17 != 1)
    {
      goto LABEL_22;
    }

    if (v16 < *(result + 2))
    {
      break;
    }

LABEL_21:
    v7 = v16;
LABEL_22:
    if (v14 <= result)
    {
      v19 = result;
    }

    else
    {
      v19 = v14;
    }

    v38 = v19;
    v20 = &v9[16 * v7];
    v32 = v7;
    v33 = v10;
    for (i = a3; !a3; i = a3)
    {
      v22 = result;
      if (v7)
      {
        goto LABEL_2;
      }

LABEL_31:
      if (v22 >= v13)
      {
        goto LABEL_2;
      }

      if (a3)
      {
        if (v7 >= *(result + 2))
        {
          goto LABEL_60;
        }

        v23 = *v20;
        if (v14 <= *(v20 - 1))
        {
          v24 = *(v20 - 1);
        }

        else
        {
          v24 = v14;
        }
      }

      else
      {
        v24 = v38;
        v23 = a2;
        if (v7)
        {
          goto LABEL_63;
        }
      }

      if (v13 >= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = v13;
      }

      if (v25 < v24)
      {
        __break(1u);
        goto LABEL_58;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_21B2356AC(0, *(v10 + 2) + 1, 1, v10);
      }

      v27 = *(v10 + 2);
      v26 = *(v10 + 3);
      if (v27 >= v26 >> 1)
      {
        v10 = sub_21B2356AC((v26 > 1), v27 + 1, 1, v10);
      }

      *(v10 + 2) = v27 + 1;
      v28 = &v10[16 * v27];
      *(v28 + 4) = v24;
      *(v28 + 5) = v25;
      if (a3)
      {
        result = v39;
        if (v7 >= *(v39 + 2))
        {
          goto LABEL_61;
        }

        v29 = *v20;
      }

      else
      {
        result = v39;
        v29 = a2;
        if (v7)
        {
          goto LABEL_64;
        }
      }

      if (v29 >= v13)
      {
        goto LABEL_2;
      }

      ++v7;
      v20 += 2;
    }

    if (i == 1)
    {
      if (v7 < *(result + 2))
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          v22 = *(v20 - 1);
          goto LABEL_31;
        }

        goto LABEL_62;
      }

LABEL_2:
      v8 = v37;
      v9 = v34;
    }

    else
    {
      v8 = v37;
      v10 = v33;
      v9 = v34;
      v7 = v32;
    }
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = *v15;
    goto LABEL_18;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

Swift::Int sub_21B248FC4()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  if (result < v2)
  {
    for (i = 0; ; ++i)
    {
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      result = DataFrame.Rows.index(after:)(result);
      if (result == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (v2 < result)
  {
    v4 = 0;
    while (!__OFSUB__(v4--, 1))
    {
      result = DataFrame.Rows.index(before:)(result);
      if (result == v2)
      {
        return v4;
      }
    }

    goto LABEL_14;
  }

  return 0;
}

void sub_21B249084(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = a1 + 14;
  if (v2 >= 0)
  {
    v5 = a1 + 7;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(*(sub_21B34A834() - 8) + 72);
  v12 = v11 * a1;
  if ((v11 * a1) >> 64 != (v11 * a1) >> 63)
  {
    goto LABEL_14;
  }

  v13 = v10 & 0xFFFFFFFFFFFFFFC0;
  v14 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v15 = v14 + v12;
  if (__OFADD__(v14, v12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = swift_slowAlloc();
  v16[1] = 0;
  v16[2] = 0;
  *v16 = a1;
  if (v2 < -1015)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v17 = v16;
  if (v13 != -64)
  {
    bzero(v16 + 8, v13 + 64);
  }

  *a2 = v17;
  a2[1] = v17 + v15;
}

void sub_21B249160(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = a1 + 14;
  if (v2 >= 0)
  {
    v5 = a1 + 7;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (!v7)
  {
    v9 = v8;
  }

  if ((a1 - 0x800000000000000) >> 60 != 15)
  {
    goto LABEL_13;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFC0;
  v11 = (v9 & 0xFFFFFFFFFFFFFFC0) + 128;
  v12 = v11 + 16 * a1;
  if (__OFADD__(v11, 16 * a1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = swift_slowAlloc();
  v13[1] = 0;
  v13[2] = 0;
  *v13 = a1;
  if (v2 < -1015)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v13;
  if (v10 != -64)
  {
    bzero(v13 + 8, v10 + 64);
  }

  *a2 = v14;
  a2[1] = v14 + v12;
}

void sub_21B249224(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = a1 + 14;
  if (v2 >= 0)
  {
    v5 = a1 + 7;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (!v7)
  {
    v9 = v8;
  }

  if ((a1 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_13;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFC0;
  v11 = (v9 & 0xFFFFFFFFFFFFFFC0) + 128;
  v12 = v11 + 4 * a1;
  if (__OFADD__(v11, 4 * a1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = swift_slowAlloc();
  v13[1] = 0;
  v13[2] = 0;
  *v13 = a1;
  if (v2 < -1015)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v13;
  if (v10 != -64)
  {
    bzero(v13 + 8, v10 + 64);
  }

  *a2 = v14;
  a2[1] = v14 + v12;
}

void sub_21B2492E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = a1 + 14;
  if (v2 >= 0)
  {
    v5 = a1 + 7;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (!v7)
  {
    v9 = v8;
  }

  v10 = 24 * a1;
  if ((a1 * 24) >> 64 != (24 * a1) >> 63)
  {
    goto LABEL_13;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v9 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + v10;
  if (__OFADD__(v12, v10))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = swift_slowAlloc();
  v14[1] = 0;
  v14[2] = 0;
  *v14 = a1;
  if (v2 < -1015)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v15 = v14;
  if (v11 != -64)
  {
    bzero(v14 + 8, v11 + 64);
  }

  *a2 = v15;
  a2[1] = v15 + v13;
}

void sub_21B2493B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = a1 + 14;
  if (v2 >= 0)
  {
    v5 = a1 + 7;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (!v7)
  {
    v9 = v8;
  }

  if ((a1 - 0x400000000000000) >> 59 != 31)
  {
    goto LABEL_13;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFC0;
  v11 = (v9 & 0xFFFFFFFFFFFFFFC0) + 128;
  v12 = v11 + 32 * a1;
  if (__OFADD__(v11, 32 * a1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = swift_slowAlloc();
  v13[1] = 0;
  v13[2] = 0;
  *v13 = a1;
  if (v2 < -1015)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v13;
  if (v10 != -64)
  {
    bzero(v13 + 8, v10 + 64);
  }

  *a2 = v14;
  a2[1] = v14 + v12;
}

uint64_t sub_21B249474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a3;
  sub_21B248BBC(1, a1, a2, a3, &v22);
  v7 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v22;
  if (v23 <= v22)
  {
    v11 = v22;
  }

  else
  {
    v11 = v23;
  }

  if (v6 == 2)
  {
LABEL_5:
    sub_21B254074(a1, a2, v3);
    sub_21B254074(a1, a2, v3);
    sub_21B23A9F4(a1, a2, v3);

    return sub_21B23A9F4(v7, v8, v9);
  }

  else
  {
    v13 = 0;
    v14 = (a1 + 40);
    v15 = (v24 + 16 * v22 + 40);
    while (1)
    {
      if (v3)
      {
        v16 = *(a1 + 16);
        if (v13 == v16)
        {
          goto LABEL_5;
        }

        if (v13 >= v16)
        {
          goto LABEL_32;
        }

        v17 = *(v14 - 1);
        v18 = *v14;
      }

      else
      {
        if (v13 == 1)
        {
          goto LABEL_5;
        }

        if (v13)
        {
          goto LABEL_36;
        }

        v17 = a1;
        v18 = a2;
      }

      if (v23 == v10)
      {
        goto LABEL_5;
      }

      if (v11 == v10)
      {
        break;
      }

      if (v26)
      {
        if (v26 != 1)
        {
          goto LABEL_37;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        v19 = *(v24 + 16);
        if (v10 >= v19)
        {
          goto LABEL_35;
        }

        v20 = *(v15 - 1);
        v21 = *v15;
      }

      else
      {
        if (v10)
        {
          goto LABEL_34;
        }

        v19 = 1;
        v20 = v24;
        v21 = v25;
      }

      if (v10 >= v19)
      {
        goto LABEL_31;
      }

      if (v18 < v20 && v17 != v18)
      {
        ++v10;
        v14 += 2;
        v15 += 2;
        ++v13;
        if (v20 != v21)
        {
          continue;
        }
      }

      __break(1u);
      __break(1u);
      break;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B24967C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v6 = result;
  v7 = *(v3 + 16);
  if (!*(v3 + 16))
  {
    if (!a3)
    {
LABEL_9:
      *v3 = v6;
      *(v3 + 8) = a2;
      *(v3 + 16) = v7;
      return result;
    }

    __break(1u);
  }

  if (v7 == 1)
  {
    v8 = *v3;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = sub_21B23A330(v8);
      v8 = result;
      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (*(v8 + 16) > a3)
        {
          v9 = v8 + 16 * a3;
          *(v9 + 32) = v6;
          *(v9 + 40) = a2;
          v6 = v8;
          a2 = 0;
          goto LABEL_9;
        }

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

unint64_t sub_21B249770(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_21B249C94(isUniquelyReferenced_nonNull_native, v14, 1, v5, &qword_27CD7E4E8, &qword_21B351DA0, &type metadata for AnyColumn);
    *v3 = v5;
  }

  result = sub_21B25CF84(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_21B24985C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = a2 - a3;
  if (__OFSUB__(a2, a3))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
LABEL_8:
    if (a2 <= a3)
    {
      return a2;
    }

    goto LABEL_12;
  }

  v5 = a3 - result;
  if (!__OFADD__(a3, v4))
  {
    if (v5 < a2)
    {
      goto LABEL_14;
    }

    a2 = a3 - result;
    if (v5 > a3)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

char *sub_21B2498F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D0, &qword_21B351CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_21B249A10(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4D8, &qword_21B351D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4E0, &qword_21B351D98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B249B44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E370, &qword_21B351C80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 48 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_21B249C94(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21B249DB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E458, &qword_21B351D58);
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
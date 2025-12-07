uint64_t sub_21B2EBBE0@<X0>(void *a1@<X8>)
{
  v4 = v1[29];
  v3 = v1[30];
  v5 = v1[31];
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E140, &unk_21B3526A0);
  a1[4] = &off_282CAA128;
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
}

uint64_t sub_21B2EBC54(uint64_t a1, uint64_t a2)
{

  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return result;
}

uint64_t AnyColumnSlice.name.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t AnyColumnSlice.wrappedElementType.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 80))(v2);
}

uint64_t AnyColumnSlice.assumingType<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v9 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  if ((*(*(v8 + 8) + 80))(v9) == a1)
  {
    sub_21B233A10(v4, &v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
    type metadata accessor for ColumnSlice(0, a2, v10, v11);
    if (swift_dynamicCast())
    {

      sub_21B233A10(v4, &v45);
      swift_dynamicCast();
      v12 = v40;
      v13 = v41;
      v34 = a3;
      v14 = v42;
      v15 = v43;
      v16 = v44;
      v45 = v40;
      v46 = v41;
      v47 = v42;
      v48 = v43;
      v49 = v44;
      v19 = type metadata accessor for Column(255, a2, v17, v18);
      swift_getWitnessTable();
      v20 = sub_21B34BB44();
      MEMORY[0x21CEEE2D0](v39, v20);
      v21 = v39[1];
      v33 = v39[0];
      v22 = v39[2];
      v40 = v12;
      v41 = v13;
      v42 = v14;
      v43 = v15;
      v44 = v16;
      swift_getWitnessTable();
      sub_21B34B194();
      v35[0] = v35[1];
      sub_21B297EA4(v35, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], &v36, v23);
      v24 = v36;
      v25 = v37;
      LOBYTE(v13) = v38;
      v40 = v33;
      v41 = v21;
      v42 = v22;
      sub_21B28B2B8(v36, v37, v38, v19, v34);

      sub_21B23A9F4(v24, v25, v13);
    }

    else
    {
      sub_21B233A10(v4, &v45);
      type metadata accessor for DiscontiguousColumnSlice(0, a2, v27, v28);
      return swift_dynamicCast();
    }
  }

  else
  {
    sub_21B34B634();

    v45 = 0xD00000000000001CLL;
    v46 = 0x800000021B34C840;
    v29 = v4[3];
    v30 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v29);
    (*(*(v30 + 8) + 80))(v29);
    v31 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v31);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    v32 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v32);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t AnyColumnSlice.missingCount.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 56))(v2);
}

uint64_t sub_21B2EC0DC@<X0>(uint64_t a1@<X8>)
{
  v58 = MEMORY[0x277D84FA0];
  v55 = 0;
  v56 = 0;
  v57 = 2;
  v3 = *(v1 + 16);
  v52 = *v1;
  v53[0] = v3;
  *(v53 + 9) = *(v1 + 25);
  v59 = v52;
  v4 = *(v1 + 24);
  v37 = *(v1 + 16);
  v34 = v4;
  v35 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v35 == 1 && *(v4 + 16))
    {
      v5 = (v4 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v7 = *(v37 + 16);
      if (!v7)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v5 = (v7 + 8);
    }

    v4 = *v5;
  }

  v29 = v4;
  v60 = v59;
  v61 = v37;
  result = swift_beginAccess();
  v8 = *(v37 + 16);
  if (!v8)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v32 = *v1;
  v33 = *(v8 + 8);
  v9 = v34;
  v30 = *(v1 + 32);
  v31 = *(v1 + 8);
  if (v35)
  {
    if (v35 == 1 && *(v34 + 16))
    {
      v10 = (v34 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v11 = *(v37 + 16);
      if (!v11)
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v10 = (v11 + 8);
    }

    v9 = *v10;
  }

  v12 = v29;
  if (v29 != v33)
  {
    v74 = v52;
    *v75 = v53[0];
    *&v75[9] = *(v53 + 9);
    sub_21B2615FC(v1, v39, &qword_27CD7E710, &qword_21B352330);
    sub_21B2615FC(v1, v39, &qword_27CD7E710, &qword_21B352330);
    swift_beginAccess();
    v16 = v29;
    while (1)
    {
      result = sub_21B2B4370();
      v17 = *(v37 + 16);
      if (!v17)
      {
        break;
      }

      if (v9 == *(v17 + 8))
      {
        goto LABEL_38;
      }

      v36 = result;
      v68 = v32;
      v69 = v31;
      v70 = v37;
      v71 = v34;
      v72 = v30;
      v73 = v35;
      v18 = sub_21B2AE370(v9);
      v20 = v19;
      v62 = v32;
      v63 = v31;
      v64 = v37;
      v65 = v34;
      v21 = v18;
      v66 = v30;
      v67 = v35;
      result = sub_21B2B4370();
      v9 = result;
      v22 = v58;
      if (*(v58 + 16))
      {
        sub_21B34BBC4();
        sub_21B34BBE4();
        if ((v20 & 1) == 0)
        {
          MEMORY[0x21CEEE3B0](v21);
        }

        result = sub_21B34BC24();
        v23 = -1 << *(v22 + 32);
        v24 = result & ~v23;
        if ((*(v22 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
        {
          v25 = ~v23;
          do
          {
            v26 = *(v22 + 48) + 16 * v24;
            if (*(v26 + 8))
            {
              if (v20)
              {
                goto LABEL_20;
              }
            }

            else if ((v20 & 1) == 0 && *v26 == v21)
            {
              goto LABEL_20;
            }

            v24 = (v24 + 1) & v25;
          }

          while (((*(v22 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
        }
      }

      v27 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        break;
      }

      if (v27 < v16)
      {
        __break(1u);
LABEL_37:
        result = v33;
LABEL_38:
        v14 = v55;
        v13 = v56;
        v15 = v57;
        v12 = v29;
        goto LABEL_39;
      }

      sub_21B28DFBC(v16, v27);
      sub_21B256274(v39, v21, v20 & 1);
LABEL_20:
      v16 = v36;
      if (v36 == v33)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  sub_21B2615FC(v1, v39, &qword_27CD7E710, &qword_21B352330);
  sub_21B2615FC(v1, v39, &qword_27CD7E710, &qword_21B352330);
  v13 = 0;
  v14 = 0;
  v15 = 2;
  result = v29;
LABEL_39:
  v39[0] = v52;
  v39[1] = v53[0];
  v39[2] = v53[1];
  v40 = v12;
  v41 = v33;
  v42 = result;
  v43 = v32;
  v44 = v31;
  v45 = v37;
  v46 = v34;
  v47 = v30;
  v48 = v35;
  *&v49[3] = *&v54[3];
  *v49 = *v54;
  v50 = v9;
  v51 = 1;
  sub_21B261664(v39, &qword_27CD7F178, &qword_21B356210);

  v28 = *(&v60 + 1);
  *a1 = v60;
  *(a1 + 8) = v28;
  *(a1 + 16) = v37;
  *(a1 + 24) = v14;
  *(a1 + 32) = v13;
  *(a1 + 40) = v15;
  return sub_21B2615FC(&v60, v38, &qword_27CD7E170, &unk_21B3526E0);
}

uint64_t sub_21B2EC584@<X0>(uint64_t a1@<X8>)
{
  v55 = MEMORY[0x277D84FA0];
  v52 = 0;
  v53 = 0;
  v54 = 2;
  v3 = *(v1 + 16);
  v49 = *v1;
  v50[0] = v3;
  *(v50 + 9) = *(v1 + 25);
  v56 = v49;
  v4 = *(v1 + 24);
  v34 = *(v1 + 16);
  v31 = v4;
  v32 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v32 == 1 && *(v4 + 16))
    {
      v5 = (v4 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v7 = *(v34 + 16);
      if (!v7)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v5 = (v7 + 8);
    }

    v4 = *v5;
  }

  v57 = v56;
  v58 = v34;
  result = swift_beginAccess();
  v8 = *(v34 + 16);
  if (!v8)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v29 = *v1;
  v30 = *(v8 + 8);
  v9 = v31;
  v27 = *(v1 + 8);
  v28 = *(v1 + 32);
  if (v32)
  {
    if (v32 == 1 && *(v31 + 16))
    {
      v10 = (v31 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v11 = *(v34 + 16);
      if (!v11)
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v10 = (v11 + 8);
    }

    v9 = *v10;
  }

  v26 = a1;
  v12 = v4;
  if (v4 != v30)
  {
    v71 = v49;
    *v72 = v50[0];
    *&v72[9] = *(v50 + 9);
    sub_21B2615FC(v1, v36, &qword_27CD7E708, &qword_21B352328);
    sub_21B2615FC(v1, v36, &qword_27CD7E708, &qword_21B352328);
    swift_beginAccess();
    v25 = v4;
    while (1)
    {
      result = sub_21B2B4370();
      v16 = *(v34 + 16);
      if (!v16)
      {
        break;
      }

      if (v9 == *(v16 + 8))
      {
        goto LABEL_38;
      }

      v33 = result;
      v65 = v29;
      v66 = v27;
      v67 = v34;
      v68 = v31;
      v69 = v28;
      v70 = v32;
      v17 = sub_21B2AEB50(v9);
      v59 = v29;
      v60 = v27;
      v61 = v34;
      v62 = v31;
      v63 = v28;
      v64 = v32;
      result = sub_21B2B4370();
      v9 = result;
      v18 = v55;
      if (*(v55 + 16))
      {
        sub_21B34BBC4();
        sub_21B34BBE4();
        if ((v17 & 0x10000) == 0)
        {
          sub_21B34BBF4();
        }

        result = sub_21B34BC24();
        v19 = -1 << *(v18 + 32);
        v20 = result & ~v19;
        if ((*(v18 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          do
          {
            v22 = *(v18 + 48) + 4 * v20;
            if (*(v22 + 2))
            {
              if ((v17 & 0x10000) != 0)
              {
                goto LABEL_20;
              }
            }

            else if ((v17 & 0x10000) == 0 && *v22 == *&v17)
            {
              goto LABEL_20;
            }

            v20 = (v20 + 1) & v21;
          }

          while (((*(v18 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
        }
      }

      v23 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        break;
      }

      if (v23 < v4)
      {
        __break(1u);
LABEL_37:
        result = v30;
LABEL_38:
        v14 = v52;
        v13 = v53;
        v15 = v54;
        v12 = v25;
        goto LABEL_39;
      }

      sub_21B28DFBC(v4, v23);
      sub_21B256130(v36, v17 & 0x1FFFF);
LABEL_20:
      v4 = v33;
      if (v33 == v30)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  sub_21B2615FC(v1, v36, &qword_27CD7E708, &qword_21B352328);
  sub_21B2615FC(v1, v36, &qword_27CD7E708, &qword_21B352328);
  v13 = 0;
  v14 = 0;
  v15 = 2;
  result = v12;
LABEL_39:
  v36[0] = v49;
  v36[1] = v50[0];
  v36[2] = v50[1];
  v37 = v12;
  v38 = v30;
  v39 = result;
  v40 = v29;
  v41 = v27;
  v42 = v34;
  v43 = v31;
  v44 = v28;
  v45 = v32;
  *&v46[3] = *&v51[3];
  *v46 = *v51;
  v47 = v9;
  v48 = 1;
  sub_21B261664(v36, &qword_27CD7F180, &qword_21B356218);

  v24 = *(&v57 + 1);
  *v26 = v57;
  *(v26 + 8) = v24;
  *(v26 + 16) = v34;
  *(v26 + 24) = v14;
  *(v26 + 32) = v13;
  *(v26 + 40) = v15;
  return sub_21B2615FC(&v57, v35, &qword_27CD7ED10, &qword_21B354A68);
}

uint64_t sub_21B2ECA28@<X0>(uint64_t a1@<X8>)
{
  v55 = MEMORY[0x277D84FA0];
  v52 = 0;
  v53 = 0;
  v54 = 2;
  v3 = *(v1 + 16);
  v49 = *v1;
  v50[0] = v3;
  *(v50 + 9) = *(v1 + 25);
  v56 = v49;
  v4 = *(v1 + 24);
  v34 = *(v1 + 16);
  v31 = v4;
  v32 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v32 == 1 && *(v4 + 16))
    {
      v5 = (v4 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v7 = *(v34 + 16);
      if (!v7)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v5 = (v7 + 8);
    }

    v4 = *v5;
  }

  v57 = v56;
  v58 = v34;
  result = swift_beginAccess();
  v8 = *(v34 + 16);
  if (!v8)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v29 = *v1;
  v30 = *(v8 + 8);
  v9 = v31;
  v27 = *(v1 + 8);
  v28 = *(v1 + 32);
  if (v32)
  {
    if (v32 == 1 && *(v31 + 16))
    {
      v10 = (v31 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v11 = *(v34 + 16);
      if (!v11)
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v10 = (v11 + 8);
    }

    v9 = *v10;
  }

  v26 = a1;
  v12 = v4;
  if (v4 != v30)
  {
    v71 = v49;
    *v72 = v50[0];
    *&v72[9] = *(v50 + 9);
    sub_21B2615FC(v1, v36, &qword_27CD7E700, &qword_21B352320);
    sub_21B2615FC(v1, v36, &qword_27CD7E700, &qword_21B352320);
    swift_beginAccess();
    v25 = v4;
    while (1)
    {
      result = sub_21B2B4370();
      v16 = *(v34 + 16);
      if (!v16)
      {
        break;
      }

      if (v9 == *(v16 + 8))
      {
        goto LABEL_38;
      }

      v33 = result;
      v65 = v29;
      v66 = v27;
      v67 = v34;
      v68 = v31;
      v69 = v28;
      v70 = v32;
      v17 = sub_21B2AE9BC(v9);
      v59 = v29;
      v60 = v27;
      v61 = v34;
      v62 = v31;
      v63 = v28;
      v64 = v32;
      result = sub_21B2B4370();
      v9 = result;
      v18 = v55;
      if (*(v55 + 16))
      {
        sub_21B34BBC4();
        sub_21B34BBE4();
        if ((v17 & 0x100000000) == 0)
        {
          sub_21B34BC04();
        }

        result = sub_21B34BC24();
        v19 = -1 << *(v18 + 32);
        v20 = result & ~v19;
        if ((*(v18 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          do
          {
            v22 = *(v18 + 48) + 8 * v20;
            if (*(v22 + 4))
            {
              if ((v17 & 0x100000000) != 0)
              {
                goto LABEL_20;
              }
            }

            else if ((v17 & 0x100000000) == 0 && *v22 == *&v17)
            {
              goto LABEL_20;
            }

            v20 = (v20 + 1) & v21;
          }

          while (((*(v18 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
        }
      }

      v23 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        break;
      }

      if (v23 < v4)
      {
        __break(1u);
LABEL_37:
        result = v30;
LABEL_38:
        v14 = v52;
        v13 = v53;
        v15 = v54;
        v12 = v25;
        goto LABEL_39;
      }

      sub_21B28DFBC(v4, v23);
      sub_21B255FD4(v36, v17 | ((HIDWORD(v17) & 1) << 32));
LABEL_20:
      v4 = v33;
      if (v33 == v30)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  sub_21B2615FC(v1, v36, &qword_27CD7E700, &qword_21B352320);
  sub_21B2615FC(v1, v36, &qword_27CD7E700, &qword_21B352320);
  v13 = 0;
  v14 = 0;
  v15 = 2;
  result = v12;
LABEL_39:
  v36[0] = v49;
  v36[1] = v50[0];
  v36[2] = v50[1];
  v37 = v12;
  v38 = v30;
  v39 = result;
  v40 = v29;
  v41 = v27;
  v42 = v34;
  v43 = v31;
  v44 = v28;
  v45 = v32;
  *&v46[3] = *&v51[3];
  *v46 = *v51;
  v47 = v9;
  v48 = 1;
  sub_21B261664(v36, &qword_27CD7F188, &qword_21B356220);

  v24 = *(&v57 + 1);
  *v26 = v57;
  *(v26 + 8) = v24;
  *(v26 + 16) = v34;
  *(v26 + 24) = v14;
  *(v26 + 32) = v13;
  *(v26 + 40) = v15;
  return sub_21B2615FC(&v57, v35, &qword_27CD7E160, &unk_21B352A10);
}

uint64_t sub_21B2ECEDC@<X0>(uint64_t a1@<X8>)
{
  v58 = MEMORY[0x277D84FA0];
  v55 = 0;
  v56 = 0;
  v57 = 2;
  v3 = *(v1 + 16);
  v52 = *v1;
  v53[0] = v3;
  *(v53 + 9) = *(v1 + 25);
  v59 = v52;
  v4 = *(v1 + 24);
  v37 = *(v1 + 16);
  v33 = v4;
  v34 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v34 == 1 && *(v4 + 16))
    {
      v5 = (v4 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v7 = *(v37 + 16);
      if (!v7)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v5 = (v7 + 8);
    }

    v4 = *v5;
  }

  v28 = v4;
  v60 = v59;
  v61 = v37;
  result = swift_beginAccess();
  v8 = *(v37 + 16);
  if (!v8)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v31 = *v1;
  v32 = *(v8 + 8);
  v9 = v33;
  v29 = *(v1 + 32);
  v30 = *(v1 + 8);
  if (v34)
  {
    if (v34 == 1 && *(v33 + 16))
    {
      v10 = (v33 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v11 = *(v37 + 16);
      if (!v11)
      {
LABEL_48:
        __break(1u);
        return result;
      }

      v10 = (v11 + 8);
    }

    v9 = *v10;
  }

  v12 = v28;
  if (v28 != v32)
  {
    v74 = v52;
    *v75 = v53[0];
    *&v75[9] = *(v53 + 9);
    sub_21B2615FC(v1, v39, &qword_27CD7E6F8, &qword_21B352318);
    sub_21B2615FC(v1, v39, &qword_27CD7E6F8, &qword_21B352318);
    swift_beginAccess();
    v16 = v28;
    while (1)
    {
      result = sub_21B2B4370();
      v17 = *(v37 + 16);
      if (!v17)
      {
        break;
      }

      if (v9 == *(v17 + 8))
      {
        goto LABEL_42;
      }

      v35 = result;
      v68 = v31;
      v69 = v30;
      v70 = v37;
      v71 = v33;
      v72 = v29;
      v73 = v34;
      v36 = COERCE_DOUBLE(sub_21B2AE370(v9));
      v19 = v18;
      v62 = v31;
      v63 = v30;
      v64 = v37;
      v65 = v33;
      v66 = v29;
      v67 = v34;
      result = sub_21B2B4370();
      v9 = result;
      v20 = v58;
      if (*(v58 + 16))
      {
        sub_21B34BBC4();
        if (v19)
        {
          sub_21B34BBE4();
        }

        else
        {
          sub_21B34BBE4();
          v21 = (*&v36 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? *&v36 : 0;
          MEMORY[0x21CEEE3F0](v21);
        }

        result = sub_21B34BC24();
        v22 = -1 << *(v20 + 32);
        v23 = result & ~v22;
        if ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v24 = ~v22;
          do
          {
            v25 = *(v20 + 48) + 16 * v23;
            if (*(v25 + 8))
            {
              if (v19)
              {
                goto LABEL_20;
              }
            }

            else if ((v19 & 1) == 0 && *v25 == v36)
            {
              goto LABEL_20;
            }

            v23 = (v23 + 1) & v24;
          }

          while (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
        }
      }

      v26 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        break;
      }

      if (v26 < v16)
      {
        __break(1u);
LABEL_41:
        result = v32;
LABEL_42:
        v14 = v55;
        v13 = v56;
        v15 = v57;
        v12 = v28;
        goto LABEL_43;
      }

      sub_21B28DFBC(v16, v26);
      sub_21B255E74(v39, *&v36, v19 & 1);
LABEL_20:
      v16 = v35;
      if (v35 == v32)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_21B2615FC(v1, v39, &qword_27CD7E6F8, &qword_21B352318);
  sub_21B2615FC(v1, v39, &qword_27CD7E6F8, &qword_21B352318);
  v13 = 0;
  v14 = 0;
  v15 = 2;
  result = v28;
LABEL_43:
  v39[0] = v52;
  v39[1] = v53[0];
  v39[2] = v53[1];
  v40 = v12;
  v41 = v32;
  v42 = result;
  v43 = v31;
  v44 = v30;
  v45 = v37;
  v46 = v33;
  v47 = v29;
  v48 = v34;
  *&v49[3] = *&v54[3];
  *v49 = *v54;
  v50 = v9;
  v51 = 1;
  sub_21B261664(v39, &qword_27CD7F190, &qword_21B356228);

  v27 = *(&v60 + 1);
  *a1 = v60;
  *(a1 + 8) = v27;
  *(a1 + 16) = v37;
  *(a1 + 24) = v14;
  *(a1 + 32) = v13;
  *(a1 + 40) = v15;
  return sub_21B2615FC(&v60, v38, &qword_27CD7E168, &unk_21B3526C0);
}

uint64_t sub_21B2ED390@<X0>(uint64_t a1@<X8>)
{
  v55 = MEMORY[0x277D84FA0];
  v52 = 0;
  v53 = 0;
  v54 = 2;
  v3 = *(v1 + 16);
  v49 = *v1;
  v50[0] = v3;
  *(v50 + 9) = *(v1 + 25);
  v56 = v49;
  v4 = *(v1 + 24);
  v34 = *(v1 + 16);
  v31 = v4;
  v32 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v32 == 1 && *(v4 + 16))
    {
      v5 = (v4 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v7 = *(v34 + 16);
      if (!v7)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v5 = (v7 + 8);
    }

    v4 = *v5;
  }

  v57 = v56;
  v58 = v34;
  result = swift_beginAccess();
  v8 = *(v34 + 16);
  if (!v8)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v29 = *v1;
  v30 = *(v8 + 8);
  v9 = v31;
  v27 = *(v1 + 8);
  v28 = *(v1 + 32);
  if (v32)
  {
    if (v32 == 1 && *(v31 + 16))
    {
      v10 = (v31 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v11 = *(v34 + 16);
      if (!v11)
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v10 = (v11 + 8);
    }

    v9 = *v10;
  }

  v26 = a1;
  v12 = v4;
  if (v4 != v30)
  {
    v71 = v49;
    *v72 = v50[0];
    *&v72[9] = *(v50 + 9);
    sub_21B2615FC(v1, v36, &qword_27CD7E6F0, &qword_21B352310);
    sub_21B2615FC(v1, v36, &qword_27CD7E6F0, &qword_21B352310);
    swift_beginAccess();
    v25 = v4;
    while (1)
    {
      result = sub_21B2B4370();
      v16 = *(v34 + 16);
      if (!v16)
      {
        break;
      }

      if (v9 == *(v16 + 8))
      {
        goto LABEL_38;
      }

      v33 = result;
      v65 = v29;
      v66 = v27;
      v67 = v34;
      v68 = v31;
      v69 = v28;
      v70 = v32;
      v17 = sub_21B2AE834(v9);
      v59 = v29;
      v60 = v27;
      v61 = v34;
      v62 = v31;
      v63 = v28;
      v64 = v32;
      result = sub_21B2B4370();
      v9 = result;
      v18 = v55;
      if (*(v55 + 16))
      {
        sub_21B34BBC4();
        if (v17 != 2)
        {
          sub_21B34BBE4();
        }

        sub_21B34BBE4();
        result = sub_21B34BC24();
        v19 = -1 << *(v18 + 32);
        v20 = result & ~v19;
        if ((*(v18 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          do
          {
            v22 = *(*(v18 + 48) + v20);
            if (v22 == 2)
            {
              if (v17 == 2)
              {
                goto LABEL_20;
              }
            }

            else if (v17 != 2 && ((v22 ^ v17) & 1) == 0)
            {
              goto LABEL_20;
            }

            v20 = (v20 + 1) & v21;
          }

          while (((*(v18 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
        }
      }

      v23 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        break;
      }

      if (v23 < v4)
      {
        __break(1u);
LABEL_37:
        result = v30;
LABEL_38:
        v14 = v52;
        v13 = v53;
        v15 = v54;
        v12 = v25;
        goto LABEL_39;
      }

      sub_21B28DFBC(v4, v23);
      sub_21B255D28(v36, v17);
LABEL_20:
      v4 = v33;
      if (v33 == v30)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  sub_21B2615FC(v1, v36, &qword_27CD7E6F0, &qword_21B352310);
  sub_21B2615FC(v1, v36, &qword_27CD7E6F0, &qword_21B352310);
  v13 = 0;
  v14 = 0;
  v15 = 2;
  result = v12;
LABEL_39:
  v36[0] = v49;
  v36[1] = v50[0];
  v36[2] = v50[1];
  v37 = v12;
  v38 = v30;
  v39 = result;
  v40 = v29;
  v41 = v27;
  v42 = v34;
  v43 = v31;
  v44 = v28;
  v45 = v32;
  *&v46[3] = *&v51[3];
  *v46 = *v51;
  v47 = v9;
  v48 = 1;
  sub_21B261664(v36, &qword_27CD7F198, &qword_21B356230);

  v24 = *(&v57 + 1);
  *v26 = v57;
  *(v26 + 8) = v24;
  *(v26 + 16) = v34;
  *(v26 + 24) = v14;
  *(v26 + 32) = v13;
  *(v26 + 40) = v15;
  return sub_21B2615FC(&v57, v35, &qword_27CD7E150, &unk_21B3526D0);
}

uint64_t sub_21B2ED83C@<X0>(uint64_t a1@<X8>)
{
  v63 = MEMORY[0x277D84FA0];
  v60 = 0;
  v61 = 0;
  v62 = 2;
  v3 = *(v1 + 16);
  v57 = *v1;
  v58[0] = v3;
  *(v58 + 9) = *(v1 + 25);
  v64 = v57;
  v42 = *(v1 + 16);
  v40 = *(v1 + 24);
  v4 = v40;
  v41 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v41 == 1 && *(v40 + 16))
    {
      v5 = (v40 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v7 = *(v42 + 16);
      if (!v7)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v5 = (v7 + 8);
    }

    v4 = *v5;
  }

  v35 = v4;
  v65 = v64;
  v66 = v42;
  result = swift_beginAccess();
  v8 = *(v42 + 16);
  if (!v8)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v38 = *v1;
  v39 = *(v8 + 8);
  v9 = v40;
  v36 = *(v1 + 32);
  v37 = *(v1 + 8);
  if (v41)
  {
    if (v41 == 1 && *(v40 + 16))
    {
      v10 = (v40 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v11 = *(v42 + 16);
      if (!v11)
      {
LABEL_49:
        __break(1u);
        return result;
      }

      v10 = (v11 + 8);
    }

    v9 = *v10;
  }

  v34 = a1;
  sub_21B2615FC(v1, v44, &qword_27CD7E6E8, &qword_21B352308);
  sub_21B2615FC(v1, v44, &qword_27CD7E6E8, &qword_21B352308);
  v12 = v35;
  if (v35 != v39)
  {
    v17 = v35;
    while (1)
    {
      v79 = v57;
      *v80 = v58[0];
      *&v80[9] = *(v58 + 9);
      v16 = sub_21B2B4370();
      result = swift_beginAccess();
      v18 = *(v42 + 16);
      if (!v18)
      {
        break;
      }

      if (v9 == *(v18 + 8))
      {
        goto LABEL_42;
      }

      v73 = v38;
      v74 = v37;
      v75 = v42;
      v76 = v40;
      v77 = v36;
      v78 = v41;
      v19 = sub_21B2AE51C(v9);
      v21 = v20;
      v67 = v38;
      v68 = v37;
      v69 = v42;
      v70 = v40;
      v71 = v36;
      v72 = v41;
      v9 = sub_21B2B4370();
      v22 = v63;
      if (*(v63 + 16))
      {
        sub_21B34BBC4();
        sub_21B34BBE4();
        if (v21)
        {
          sub_21B34AD94();
        }

        v23 = sub_21B34BC24();
        v24 = v22 + 56;
        v25 = -1 << *(v22 + 32);
        v26 = v23 & ~v25;
        if ((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          v28 = *(v22 + 48);
          do
          {
            v29 = (v28 + 16 * v26);
            v30 = v29[1];
            if (v30)
            {
              if (v21)
              {
                v31 = *v29 == v19 && v30 == v21;
                if (v31 || (sub_21B34B9F4() & 1) != 0)
                {
                  goto LABEL_39;
                }
              }
            }

            else if (!v21)
            {
              goto LABEL_40;
            }

            v26 = (v26 + 1) & v27;
          }

          while (((*(v24 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
        }
      }

      result = v17;
      v32 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        break;
      }

      if (v32 < v17)
      {
        goto LABEL_45;
      }

      sub_21B28DFBC(v17, v32);
      sub_21B255BA0(v44, v19, v21);
LABEL_39:

LABEL_40:
      v17 = v16;
      if (v16 == v39)
      {
        v16 = v39;
LABEL_42:
        v14 = v60;
        v13 = v61;
        v15 = v62;
        v12 = v35;
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v13 = 0;
  v14 = 0;
  v15 = 2;
  v16 = v35;
LABEL_43:
  v44[0] = v57;
  v44[1] = v58[0];
  v44[2] = v58[1];
  v45 = v12;
  v46 = v39;
  v47 = v16;
  v48 = v38;
  v49 = v37;
  v50 = v42;
  v51 = v40;
  v52 = v36;
  v53 = v41;
  *&v54[3] = *&v59[3];
  *v54 = *v59;
  v55 = v9;
  v56 = 1;
  sub_21B261664(v44, &qword_27CD7F1A0, &qword_21B356238);

  v33 = *(&v65 + 1);
  *v34 = v65;
  *(v34 + 8) = v33;
  *(v34 + 16) = v42;
  *(v34 + 24) = v14;
  *(v34 + 32) = v13;
  *(v34 + 40) = v15;
  return sub_21B2615FC(&v65, v43, &qword_27CD7E158, &unk_21B3526B0);
}

uint64_t sub_21B2EDCE0@<X0>(uint64_t a1@<X8>)
{
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D8, &qword_21B351B08);
  MEMORY[0x28223BE20](v99);
  v4 = &v73 - v3;
  v105 = sub_21B34A834();
  v5 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v95 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v75 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v77 = &v73 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v73 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v96 = &v73 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v76 = &v73 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v104 = &v73 - v20;
  MEMORY[0x28223BE20](v19);
  v84 = &v73 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F1A8, &qword_21B356240);
  MEMORY[0x28223BE20](v83);
  v82 = &v73 - v22;
  v129 = MEMORY[0x277D84FA0];
  v127 = 0;
  v126 = 0;
  v128 = 2;
  v23 = *(v1 + 16);
  v120 = *v1;
  v121[0] = v23;
  *(v121 + 9) = *(v1 + 25);
  v130 = v120;
  v24 = *(v1 + 16);
  v89 = *(v1 + 24);
  v74 = v89;
  v90 = *(v1 + 40);
  if (v90)
  {
    if (v90 == 1 && *(v89 + 16))
    {
      v25 = (v89 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v27 = *(v24 + 16);
      if (!v27)
      {
        goto LABEL_49;
      }

      v25 = (v27 + 8);
    }

    v74 = *v25;
  }

  v131 = v130;
  v132 = v24;
  result = swift_beginAccess();
  v28 = *(v24 + 16);
  if (!v28)
  {
    goto LABEL_48;
  }

  v29 = *(v28 + 8);
  v123 = v120;
  v124 = v121[0];
  v125 = v121[1];
  v30 = *v1;
  v85 = *(v1 + 8);
  v86 = v30;
  v87 = *(v1 + 32);
  v88 = v29;
  v31 = v89;
  if (v90)
  {
    if (v90 == 1 && *(v89 + 16))
    {
      v32 = (v89 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v33 = *(v24 + 16);
      if (!v33)
      {
        goto LABEL_50;
      }

      v32 = (v33 + 8);
    }

    v31 = *v32;
  }

  v34 = v74;
  if (v74 == v88)
  {
    sub_21B2615FC(v1, v107, &qword_27CD7E6E0, &qword_21B352300);
    sub_21B2615FC(v1, v107, &qword_27CD7E6E0, &qword_21B352300);
    v35 = 0;
    v36 = 0;
    v37 = 2;
    v38 = v24;
    result = v34;
LABEL_44:
    v107[0] = v123;
    v107[1] = v124;
    v107[2] = v125;
    v108 = v34;
    v109 = v88;
    v110 = result;
    v111 = v86;
    v112 = v85;
    v113 = v38;
    v114 = v89;
    v115 = v87;
    v116 = v90;
    *&v117[3] = *&v122[3];
    *v117 = *v122;
    v118 = v31;
    v119 = 1;
    sub_21B261664(v107, &qword_27CD7F1B0, &qword_21B356248);

    v72 = *(&v131 + 1);
    *a1 = v131;
    *(a1 + 8) = v72;
    *(a1 + 16) = v24;
    *(a1 + 24) = v36;
    *(a1 + 32) = v35;
    *(a1 + 40) = v37;
    return sub_21B2615FC(&v131, &v106, &qword_27CD7E140, &unk_21B3526A0);
  }

  v73 = a1;
  v145 = v120;
  *v146 = v121[0];
  *&v146[9] = *(v121 + 9);
  v98 = v14;
  sub_21B2615FC(v1, v107, &qword_27CD7E6E0, &qword_21B352300);
  sub_21B2615FC(v1, v107, &qword_27CD7E6E0, &qword_21B352300);
  swift_beginAccess();
  v94 = (v5 + 32);
  v97 = (v5 + 8);
  v79 = v24;
  v80 = v4;
  v81 = (v5 + 48);
  while (1)
  {
    result = sub_21B2B4370();
    v39 = *(v24 + 16);
    if (!v39)
    {
      goto LABEL_47;
    }

    if (v31 == *(v39 + 8))
    {
      v38 = v24;
LABEL_43:
      v36 = v126;
      v35 = v127;
      v37 = v128;
      v24 = v132;
      a1 = v73;
      v34 = v74;
      goto LABEL_44;
    }

    v91 = v34;
    v93 = result;
    v40 = v31;
    v41 = v85;
    v42 = v86;
    v139 = v86;
    v140 = v85;
    v43 = v89;
    v141 = v24;
    v142 = v89;
    v44 = v87;
    v143 = v87;
    v45 = v90;
    v144 = v90;
    v46 = v84;
    sub_21B2AE6A4(v40, v84);
    v133 = v42;
    v134 = v41;
    v47 = v98;
    v135 = v24;
    v136 = v43;
    v48 = v96;
    v137 = v44;
    v138 = v45;
    v49 = v81;
    v92 = sub_21B2B4370();
    v50 = v82;
    v51 = *(v83 + 48);
    v52 = v46;
    v53 = v80;
    sub_21B260BE8(v52, &v82[v51]);
    sub_21B260BE8(&v50[v51], v104);
    v103 = v129;
    if (*(v129 + 16))
    {
      sub_21B34BBC4();
      v54 = v76;
      sub_21B2615FC(v104, v76, &qword_27CD7E100, &unk_21B352A30);
      v55 = *v49;
      if ((*v49)(v54, 1, v105) == 1)
      {
        sub_21B34BBE4();
      }

      else
      {
        v56 = v95;
        v57 = v105;
        (*v94)(v95, v54, v105);
        sub_21B34BBE4();
        sub_21B260D68(&qword_27CD7E1E0, MEMORY[0x277CC9588]);
        sub_21B34AAB4();
        v58 = v57;
        v47 = v98;
        (*v97)(v56, v58);
      }

      v59 = sub_21B34BC24();
      v60 = -1 << *(v103 + 32);
      v61 = v59 & ~v60;
      v102 = v103 + 56;
      if ((*(v103 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
      {
        v100 = ~v60;
        v101 = *(v75 + 72);
        while (1)
        {
          sub_21B2615FC(*(v103 + 48) + v101 * v61, v48, &qword_27CD7E100, &unk_21B352A30);
          v62 = *(v99 + 48);
          sub_21B2615FC(v48, v53, &qword_27CD7E100, &unk_21B352A30);
          sub_21B2615FC(v104, v53 + v62, &qword_27CD7E100, &unk_21B352A30);
          if (v55(v53, 1, v105) == 1)
          {
            break;
          }

          sub_21B2615FC(v53, v47, &qword_27CD7E100, &unk_21B352A30);
          if (v55(v53 + v62, 1, v105) == 1)
          {
            sub_21B261664(v48, &qword_27CD7E100, &unk_21B352A30);
            (*v97)(v47, v105);
LABEL_28:
            sub_21B261664(v53, &qword_27CD7E1D8, &qword_21B351B08);
            goto LABEL_29;
          }

          v63 = v95;
          v64 = v105;
          (*v94)(v95, v53 + v62, v105);
          sub_21B260D68(&qword_27CD7E1E8, MEMORY[0x277CC9598]);
          v65 = sub_21B34AC54();
          v66 = *v97;
          v67 = v63;
          v48 = v96;
          (*v97)(v67, v64);
          sub_21B261664(v48, &qword_27CD7E100, &unk_21B352A30);
          v66(v98, v64);
          v47 = v98;
          sub_21B261664(v53, &qword_27CD7E100, &unk_21B352A30);
          if (v65)
          {
            goto LABEL_39;
          }

LABEL_29:
          v61 = (v61 + 1) & v100;
          if (((*(v102 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        sub_21B261664(v48, &qword_27CD7E100, &unk_21B352A30);
        if (v55(v53 + v62, 1, v105) == 1)
        {
          v71 = v53;
          goto LABEL_38;
        }

        goto LABEL_28;
      }
    }

LABEL_35:
    result = v91;
    v68 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      break;
    }

    if (v68 < v91)
    {
      goto LABEL_46;
    }

    sub_21B28DFBC(v91, v68);
    v69 = v78;
    sub_21B2615FC(v104, v78, &qword_27CD7E100, &unk_21B352A30);
    v70 = v77;
    sub_21B255530(v77, v69);
    v71 = v70;
LABEL_38:
    sub_21B261664(v71, &qword_27CD7E100, &unk_21B352A30);
LABEL_39:
    sub_21B261664(v104, &qword_27CD7E100, &unk_21B352A30);
    v31 = v92;
    v34 = v93;
    v24 = v79;
    if (v93 == v88)
    {
      v38 = v79;
      result = v88;
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_21B2EE75C@<X0>(uint64_t a1@<X8>)
{
  v64 = MEMORY[0x277D84FA0];
  v61 = 0;
  v62 = 0;
  v63 = 2;
  v3 = *(v1 + 16);
  v59 = *v1;
  v60[0] = v3;
  *(v60 + 9) = *(v1 + 25);
  v65 = v59;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v5;
  v7 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v7 == 1 && *(v5 + 16))
    {
      v8 = (v5 + 32);
    }

    else
    {
      swift_beginAccess();
      v9 = *(v4 + 16);
      if (!v9)
      {
        goto LABEL_49;
      }

      v8 = (v9 + 8);
    }

    v6 = *v8;
  }

  v41 = v6;
  v66 = v65;
  v67 = v4;
  swift_beginAccess();
  v10 = *(v4 + 16);
  if (!v10)
  {
    goto LABEL_48;
  }

  v43 = *v1;
  v44 = *(v10 + 8);
  v42 = *(v1 + 8);
  v11 = v5;
  v45 = *(v1 + 32);
  if (v7)
  {
    if (v7 == 1 && *(v5 + 16))
    {
      v12 = (v5 + 32);
    }

    else
    {
      swift_beginAccess();
      v13 = *(v4 + 16);
      if (!v13)
      {
        goto LABEL_50;
      }

      v12 = (v13 + 8);
    }

    v11 = *v12;
  }

  v40 = a1;
  sub_21B2615FC(v1, v47, &qword_27CD7E6D8, &qword_21B3522F8);
  sub_21B2615FC(v1, v47, &qword_27CD7E6D8, &qword_21B3522F8);
  v14 = v41;
  if (v41 == v44)
  {
    v15 = 0;
    v16 = 0;
    v17 = 1;
    v18 = 2;
    v19 = v41;
LABEL_42:
    v47[0] = v59;
    v47[1] = v60[0];
    v47[2] = v60[1];
    v48 = v14;
    v49 = v44;
    v50 = v19;
    v51 = v43;
    v52 = v42;
    v53 = v4;
    v54 = v5;
    v55 = v45;
    v56 = v7;
    v57 = v11;
    v58 = v17;
    sub_21B261664(v47, &qword_27CD7F1B8, &unk_21B356250);

    v37 = *(&v66 + 1);
    *v40 = v66;
    *(v40 + 8) = v37;
    *(v40 + 16) = v4;
    *(v40 + 24) = v16;
    *(v40 + 32) = v15;
    *(v40 + 40) = v18;
    return sub_21B2615FC(&v66, v46, &qword_27CD7E148, &unk_21B352A20);
  }

  v20 = v41;
  while (1)
  {
    v74 = v59;
    v75[0] = v60[0];
    *(v75 + 9) = *(v60 + 9);
    v19 = sub_21B2B4370();
    swift_beginAccess();
    v23 = *(v4 + 16);
    if (!v23)
    {
      goto LABEL_46;
    }

    if (v11 == *(v23 + 8))
    {
      v17 = 1;
LABEL_41:
      v16 = v61;
      v15 = v62;
      v18 = v63;
      v14 = v41;
      goto LABEL_42;
    }

    if ((sub_21B2D3BE8(v11, v5, v45, v7) & 1) == 0)
    {
      *&v47[0] = 0;
      *(&v47[0] + 1) = 0xE000000000000000;
      sub_21B34B634();

      *&v47[0] = 0x6E6F697469736F70;
      *(&v47[0] + 1) = 0xE900000000000020;
      v46[0] = v11;
      v39 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v39);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_53;
    }

    if (v11 < 0)
    {
      goto LABEL_53;
    }

    v24 = *(v4 + 16);
    if (!v24)
    {
      goto LABEL_47;
    }

    if (v11 >= v24[1])
    {
      goto LABEL_53;
    }

    v25 = v24 + 8;
    if (((*(v24 + (v11 >> 3) + 64) >> (v11 & 7)) & 1) == 0)
    {
      v34 = 0;
      v35 = 0xF000000000000000;
      goto LABEL_33;
    }

    v26 = *v24;
    v27 = __OFADD__(v26, 7);
    v28 = v26 + 7;
    if (v27)
    {
      break;
    }

    v29 = v28 / 8;
    v31 = v29 - 1;
    v30 = v29 < 1;
    v32 = v29 + 62;
    if (!v30)
    {
      v32 = v31;
    }

    v33 = &v25[2 * v11] + (v32 & 0xFFFFFFFFFFFFFFC0);
    v34 = *(v33 + 64);
    v35 = *(v33 + 72);
    sub_21B260DC0(v34, v35);
LABEL_33:
    v68 = v43;
    v69 = v42;
    v70 = v4;
    v71 = v5;
    v72 = v45;
    v73 = v7;
    v11 = sub_21B2B4370();
    if (v35 >> 60 == 11)
    {
      v17 = 0;
      goto LABEL_41;
    }

    if (sub_21B241ACC(v34, v35, v64))
    {
      v21 = v34;
      v22 = v35;
    }

    else
    {
      v36 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_44;
      }

      if (v36 < v20)
      {
        goto LABEL_45;
      }

      sub_21B28DFBC(v20, v36);
      sub_21B254968(v47, v34, v35);
      v22 = *(&v47[0] + 1);
      v21 = *&v47[0];
    }

    sub_21B260C58(v21, v22);
    v20 = v19;
    if (v19 == v44)
    {
      v17 = 1;
      v19 = v44;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_53:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2EEC78(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v6 = *(v5 + 8);
  v7 = *(v6 + 16);

  return v7(v2, v3, v4, v6);
}

uint64_t AnyColumnSlice.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  return (*(*(v6 + 8) + 16))(a1, a2, v5);
}

uint64_t (*AnyColumnSlice.name.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  *a1 = (*(*(v4 + 8) + 8))(v3);
  a1[1] = v5;
  return sub_21B2EEDE0;
}

uint64_t sub_21B2EEDE0(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v6);
  v8 = *(v7 + 8);
  v9 = *(v8 + 16);
  if ((a2 & 1) == 0)
  {
    return v9(v5, v4, v6, v8);
  }

  v9(v5, v4, v6, v8);
}

uint64_t AnyColumnSlice.count.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 48))(v2);
}

Swift::Bool __swiftcall AnyColumnSlice.isNil(at:)(Swift::Int at)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 96))(at, v3) & 1;
}

uint64_t AnyColumnSlice.hashValue.getter()
{
  sub_21B34BBC4();
  AnyColumnSlice.hash(into:)(v1);
  return sub_21B34BC24();
}

uint64_t sub_21B2EEFA4()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t sub_21B2EEFF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  return (*(*(v6 + 8) + 16))(a1, a2, v5);
}

uint64_t (*sub_21B2EF05C(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  *a1 = (*(*(v4 + 8) + 8))(v3);
  a1[1] = v5;
  return sub_21B2EEDE0;
}

uint64_t sub_21B2EF0D8()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 80))(v2);
}

uint64_t sub_21B2EF124(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 128))(a1, v3);
}

uint64_t AnyColumnSlice.subscript.getter(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 128))(a1, v3);
}

uint64_t sub_21B2EF1FC(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(*(v6 + 8) + 144))(a1, a2, v5);
}

uint64_t AnyColumnSlice.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(*(v6 + 8) + 144))(a1, a2, v5);
}

uint64_t sub_21B2EF2E4()
{
  sub_21B34BBC4();
  AnyColumnSlice.hash(into:)(v1);
  return sub_21B34BC24();
}

uint64_t AnyColumnSlice.hash(into:)(uint64_t a1)
{
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(*(v3 + 8) + 8))(v4);
  sub_21B34AD94();

  v6 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v7 = (*(*(v5 + 8) + 48))(v6);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_11:
    sub_21B2F1184(a1, v8);
  }

  v9 = v7;
  v29 = MEMORY[0x277D84F90];
  sub_21B253FF4(0, v7 & ~(v7 >> 63), 0);
  v8 = v29;
  v11 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  result = (*(*(v10 + 8) + 32))(v11);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v13 = result;
    do
    {
      v15 = v1[3];
      v14 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v15);
      (*(*(v14 + 8) + 128))(&v24, v13, v15);
      v23[0] = v24;
      v23[1] = v25;
      if (*(&v25 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v28 = 0;
          v26 = 0u;
          v27 = 0u;
        }
      }

      else
      {
        sub_21B261664(v23, &qword_27CD7E0F8, &unk_21B3557C0);
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
      }

      v29 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21B253FF4((v16 > 1), v17 + 1, 1);
        v8 = v29;
      }

      *(v8 + 16) = v17 + 1;
      v18 = v8 + 40 * v17;
      v19 = v26;
      v20 = v27;
      *(v18 + 64) = v28;
      *(v18 + 32) = v19;
      *(v18 + 48) = v20;
      v22 = v1[3];
      v21 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v22);
      v13 = (*(*(v21 + 8) + 64))(v13, v22);
      --v9;
    }

    while (v9);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2EF5B4(uint64_t a1)
{
  sub_21B34BBC4();
  AnyColumnSlice.hash(into:)(v2);
  return sub_21B34BC24();
}

uint64_t AnyColumnSlice.startIndex.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 32))(v2);
}

uint64_t AnyColumnSlice.endIndex.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 40))(v2);
}

Swift::Int __swiftcall AnyColumnSlice.index(after:)(Swift::Int after)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 64))(after, v3);
}

Swift::Int __swiftcall AnyColumnSlice.index(before:)(Swift::Int before)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 72))(before, v3);
}

uint64_t sub_21B2EF748(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  sub_21B2615FC(a1, v8, &qword_27CD7E0F8, &unk_21B3557C0);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  (*(*(v6 + 8) + 136))(v4, v8, v5);
  return sub_21B261664(v8, &qword_27CD7E0F8, &unk_21B3557C0);
}

uint64_t AnyColumnSlice.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  (*(*(v6 + 8) + 136))(a2, a1, v5);
  return sub_21B261664(a1, &qword_27CD7E0F8, &unk_21B3557C0);
}

void (*AnyColumnSlice.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v3 = v2;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  *a1 = v6;
  *(v6 + 64) = a2;
  *(v6 + 72) = v3;
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  (*(*(v8 + 8) + 128))(a2, v7);
  return sub_21B2EF930;
}

void sub_21B2EF930(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[8];
    v3 = v2[9];
    sub_21B2615FC(*a1, (v2 + 4), &qword_27CD7E0F8, &unk_21B3557C0);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v5);
    (*(*(v6 + 8) + 136))(v4, v2 + 4, v5);
    sub_21B261664((v2 + 4), &qword_27CD7E0F8, &unk_21B3557C0);
  }

  else
  {
    v8 = v2[8];
    v7 = v2[9];
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, v9);
    (*(*(v10 + 8) + 136))(v8, v2, v9);
  }

  sub_21B261664(v2, &qword_27CD7E0F8, &unk_21B3557C0);

  free(v2);
}

uint64_t sub_21B2EFA48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  sub_21B25EFA4(a1, v9);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v6);
  (*(*(v7 + 8) + 152))(v4, v5, v9, v6);
  return sub_21B25F000(v9);
}

uint64_t AnyColumnSlice.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v7);
  (*(*(v8 + 8) + 152))(a2, a3, a1, v7);

  return sub_21B25F000(a1);
}

void (*AnyColumnSlice.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x68uLL);
  }

  *a1 = v8;
  v8[11] = a3;
  v8[12] = v4;
  v8[10] = a2;
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  (*(*(v10 + 8) + 144))(a2, a3, v9);
  return sub_21B2EFC2C;
}

void sub_21B2EFC2C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[11];
    v3 = v2[12];
    v5 = v2[10];
    sub_21B25EFA4(*a1, (v2 + 5));
    v6 = *(v3 + 24);
    v7 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v6);
    (*(*(v7 + 8) + 152))(v5, v4, v2 + 5, v6);
    sub_21B25F000((v2 + 5));
  }

  else
  {
    v9 = v2[11];
    v8 = v2[12];
    v10 = v2[10];
    v11 = *(v8 + 24);
    v12 = *(v8 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v8, v11);
    (*(*(v12 + 8) + 152))(v10, v9, v2, v11);
  }

  sub_21B25F000(v2);

  free(v2);
}

uint64_t sub_21B2EFD1C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  (*(*(v6 + 8) + 136))(v4, a1, v5);
  return sub_21B261664(a1, &qword_27CD7E0F8, &unk_21B3557C0);
}

void (*sub_21B2EFDA0(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  *a1 = v5;
  v6 = *a2;
  *(v5 + 64) = v2;
  *(v5 + 72) = v6;
  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v7);
  (*(*(v8 + 8) + 128))(v6, v7);
  return sub_21B2EFE58;
}

void sub_21B2EFE58(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[8];
    v3 = v2[9];
    sub_21B2615FC(*a1, (v2 + 4), &qword_27CD7E0F8, &unk_21B3557C0);
    v5 = *(v4 + 24);
    v6 = *(v4 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    (*(*(v6 + 8) + 136))(v3, v2 + 4, v5);
    sub_21B261664((v2 + 4), &qword_27CD7E0F8, &unk_21B3557C0);
  }

  else
  {
    v7 = v2[8];
    v8 = v2[9];
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, v9);
    (*(*(v10 + 8) + 136))(v8, v2, v9);
  }

  sub_21B261664(v2, &qword_27CD7E0F8, &unk_21B3557C0);

  free(v2);
}

uint64_t sub_21B2EFF74(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v6);
  (*(*(v7 + 8) + 152))(v4, v5, a1, v6);

  return sub_21B25F000(a1);
}

void (*sub_21B2EFFF8(void *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  *a1 = v5;
  v7 = *a2;
  v6 = a2[1];
  v5[10] = v2;
  v5[11] = v7;
  v5[12] = v6;
  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  (*(*(v9 + 8) + 144))(v7, v6, v8);
  return sub_21B2F00C0;
}

void sub_21B2F00C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  if (a2)
  {
    v5 = v2[10];
    sub_21B25EFA4(*a1, (v2 + 5));
    v6 = *(v5 + 24);
    v7 = *(v5 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
    (*(*(v7 + 8) + 152))(v4, v3, v2 + 5, v6);
    sub_21B25F000((v2 + 5));
  }

  else
  {
    v8 = v2[10];
    v9 = *(v8 + 24);
    v10 = *(v8 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    (*(*(v10 + 8) + 152))(v4, v3, v2, v9);
  }

  sub_21B25F000(v2);

  free(v2);
}

uint64_t sub_21B2F01B4@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(void *)@<X0>)
{
  result = sub_21B338334(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21B2F01EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  result = (*(*(v6 + 8) + 72))(v4, v5);
  *a2 = result;
  return result;
}

uint64_t sub_21B2F0258(uint64_t *a1)
{
  v3 = *a1;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  result = (*(*(v5 + 8) + 72))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_21B2F02C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  result = (*(*(v4 + 8) + 32))(v5);
  *a1 = result;
  return result;
}

uint64_t sub_21B2F0320@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  result = (*(*(v4 + 8) + 40))(v5);
  *a1 = result;
  return result;
}

uint64_t (*sub_21B2F037C(uint64_t a1, uint64_t *a2))(uint64_t a1)
{
  v3 = *a2;
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  (*(*(v5 + 8) + 128))(v3, v4);
  return sub_21B2F0404;
}

uint64_t sub_21B2F042C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  return (*(*(v5 + 8) + 144))(v2, v3, v4);
}

uint64_t sub_21B2F049C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v6 = (*(*(v4 + 8) + 32))(v5);
  v8 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  result = (*(*(v7 + 8) + 40))(v8);
  if (result < v6)
  {
    __break(1u);
  }

  else
  {
    *a1 = v6;
    a1[1] = result;
  }

  return result;
}

BOOL sub_21B2F0544()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = (*(*(v2 + 8) + 32))(v3);
  v6 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  return v4 == (*(*(v5 + 8) + 40))(v6);
}

void *sub_21B2F05D8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = v3;
    v8 = v3[3];
    v7 = v3[4];
    __swift_project_boxed_opaque_existential_1(v6, v8);
    v9 = (*(*(v7 + 8) + 32))(v8);
    v11 = v6[3];
    v10 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v11);
    result = (*(*(v10 + 8) + 40))(v11);
    if (v5 >= v9 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_21B2F0694(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_21B2F06B0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_21B2F06CC(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2F06E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  result = (*(*(v6 + 8) + 64))(v4, v5);
  *a2 = result;
  return result;
}

uint64_t sub_21B2F0754(uint64_t *a1)
{
  v3 = *a1;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  result = (*(*(v5 + 8) + 64))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_21B2F07C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_21B25EFA4(v1, a1);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v6 = (*(*(v4 + 8) + 32))(v5);
  result = sub_21B25F000(v2);
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_21B2F0838()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 48))(v2);
}

void *sub_21B2F0884()
{
  v1 = sub_21B263DC8(v0);
  sub_21B25F000(v0);
  return v1;
}

uint64_t _s11TabularData9AnyColumnV11descriptionSSvg_0()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 168))(v2);
}

uint64_t AnyColumnSlice.customMirror.getter()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v2 + 8) + 176))(v3);
}

uint64_t sub_21B2F0968()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v2 + 8) + 176))(v3);
}

uint64_t AnyColumnSlice.distinct()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  (*(*(v4 + 8) + 80))(v5);
  if (swift_dynamicCastMetatype())
  {
    sub_21B26DF44(v17);
    v6 = &qword_27CD7E710;
    v7 = &qword_21B352330;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E710, &qword_21B352330);
    a1[4] = &off_282CAB618;
    v8 = swift_allocObject();
    *a1 = v8;
    sub_21B2EC0DC(v8 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26E1B8(v17);
    v6 = &qword_27CD7E708;
    v7 = &qword_21B352328;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E708, &qword_21B352328);
    a1[4] = &off_282CAB618;
    v9 = swift_allocObject();
    *a1 = v9;
    sub_21B2EC584(v9 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26E434(v17);
    v6 = &qword_27CD7E700;
    v7 = &qword_21B352320;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E700, &qword_21B352320);
    a1[4] = &off_282CAB618;
    v10 = swift_allocObject();
    *a1 = v10;
    sub_21B2ECA28(v10 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26E6AC(v17);
    v6 = &qword_27CD7E6F8;
    v7 = &qword_21B352318;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6F8, &qword_21B352318);
    a1[4] = &off_282CAB618;
    v11 = swift_allocObject();
    *a1 = v11;
    sub_21B2ECEDC(v11 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26E924(v17);
    v6 = &qword_27CD7E6F0;
    v7 = &qword_21B352310;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6F0, &qword_21B352310);
    a1[4] = &off_282CAB618;
    v12 = swift_allocObject();
    *a1 = v12;
    sub_21B2ED390(v12 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26EB98(v17);
    v6 = &qword_27CD7E6E8;
    v7 = &qword_21B352308;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6E8, &qword_21B352308);
    a1[4] = &off_282CAB618;
    v13 = swift_allocObject();
    *a1 = v13;
    sub_21B2ED83C(v13 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  sub_21B34A834();
  if (swift_dynamicCastMetatype())
  {
    sub_21B26EE10(v17);
    v6 = &qword_27CD7E6E0;
    v7 = &qword_21B352300;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6E0, &qword_21B352300);
    a1[4] = &off_282CAB618;
    v14 = swift_allocObject();
    *a1 = v14;
    sub_21B2EDCE0(v14 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26F088(v17);
    v6 = &qword_27CD7E6D8;
    v7 = &qword_21B3522F8;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6D8, &qword_21B3522F8);
    a1[4] = &off_282CAB618;
    v15 = swift_allocObject();
    *a1 = v15;
    sub_21B2EE75C(v15 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  return sub_21B2F0DDC();
}

uint64_t sub_21B2F0DDC()
{
  v1 = v0;
  v32 = MEMORY[0x277D84FA0];
  v29 = 0;
  v30 = 0;
  v31 = 2;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = (*(*(v2 + 8) + 32))(v3);
  v6 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v7 = (*(*(v5 + 8) + 40))(v6);
  if (v7 < v4)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    sub_21B261664(&v23, &qword_27CD7E200, &unk_21B352050);
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_21B34B634();

    *&v26 = 0xD00000000000002ALL;
    *(&v26 + 1) = 0x800000021B34D600;
    v19 = v1[3];
    v18 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v19);
    (*(*(v18 + 8) + 80))(v19);
    v20 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v20);

    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v8 = v7;
  if (v4 != v7)
  {
    while (v4 < v8)
    {
      v12 = v1[3];
      v13 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v12);
      (*(*(v13 + 8) + 128))(&v26, v4, v12);
      if (*(&v27 + 1))
      {
        sub_21B261720(&v26, v22);
        sub_21B2616C4(v22, v21);
        if (!swift_dynamicCast())
        {
          goto LABEL_17;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        v26 = v23;
        v27 = v24;
        v28 = v25;
      }

      else
      {
        sub_21B261664(&v26, &qword_27CD7E0F8, &unk_21B3557C0);
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
      }

      v14 = v4 + 1;
      if ((sub_21B24185C(&v26, v32) & 1) == 0)
      {
        sub_21B2615FC(&v26, v22, &qword_27CD7E200, &unk_21B352050);
        sub_21B254668(&v23, v22);
        sub_21B261664(&v23, &qword_27CD7E200, &unk_21B352050);
        sub_21B28DFBC(v4, v4 + 1);
      }

      sub_21B261664(&v26, &qword_27CD7E200, &unk_21B352050);
      ++v4;
      if (v8 == v14)
      {
        v10 = v29;
        v9 = v30;
        v11 = v31;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v10 = 0;
  v11 = 2;
LABEL_14:

  v15 = v1[3];
  v16 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v15);
  (*(*(v16 + 8) + 160))(v10, v9, v11, v15);
  return sub_21B23A9F4(v10, v9, v11);
}

uint64_t sub_21B2F1184(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CEEE3B0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      sub_21B2615FC(v5, &v8, &qword_27CD7E200, &unk_21B352050);
      if (*(&v9 + 1))
      {
        v6[0] = v8;
        v6[1] = v9;
        v7 = v10;
        sub_21B34BBE4();
        sub_21B34B5C4();
        result = sub_21B260E14(v6);
      }

      else
      {
        result = sub_21B34BBE4();
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s11TabularData14AnyColumnSliceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v6 = (*(*(v4 + 8) + 8))(v5);
  v8 = v7;
  v10 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  if (v6 == (*(*(v9 + 8) + 8))(v10) && v8 == v11)
  {
  }

  else
  {
    v13 = sub_21B34B9F4();

    v14 = 0;
    if ((v13 & 1) == 0)
    {
      return v14 & 1;
    }
  }

  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = (*(*(v15 + 8) + 48))(v16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v19 = v17;
    v57 = MEMORY[0x277D84F90];
    sub_21B253FF4(0, v17 & ~(v17 >> 63), 0);
    v18 = v57;
    v21 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v21);
    result = (*(*(v20 + 8) + 32))(v21);
    if (v19 < 0)
    {
      __break(1u);
      goto LABEL_31;
    }

    v23 = result;
    do
    {
      v25 = a1[3];
      v24 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v25);
      (*(*(v24 + 8) + 128))(&v52, v23, v25);
      v50 = v52;
      v51 = v53;
      if (*(&v53 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v56 = 0;
          v54 = 0u;
          v55 = 0u;
        }
      }

      else
      {
        sub_21B261664(&v50, &qword_27CD7E0F8, &unk_21B3557C0);
        v54 = 0u;
        v55 = 0u;
        v56 = 0;
      }

      v57 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_21B253FF4((v26 > 1), v27 + 1, 1);
        v18 = v57;
      }

      *(v18 + 16) = v27 + 1;
      v28 = v18 + 40 * v27;
      v29 = v54;
      v30 = v55;
      *(v28 + 64) = v56;
      *(v28 + 32) = v29;
      *(v28 + 48) = v30;
      v32 = a1[3];
      v31 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v32);
      v23 = (*(*(v31 + 8) + 64))(v23, v32);
      --v19;
    }

    while (v19);
  }

  v34 = a2[3];
  v33 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v34);
  v35 = (*(*(v33 + 8) + 48))(v34);
  v36 = MEMORY[0x277D84F90];
  if (!v35)
  {
LABEL_28:
    v14 = sub_21B2470A0(v18, v36);

    return v14 & 1;
  }

  v37 = v35;
  v57 = MEMORY[0x277D84F90];
  sub_21B253FF4(0, v35 & ~(v35 >> 63), 0);
  v36 = v57;
  v39 = a2[3];
  v38 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v39);
  result = (*(*(v38 + 8) + 32))(v39);
  if ((v37 & 0x8000000000000000) == 0)
  {
    v40 = result;
    do
    {
      v42 = a2[3];
      v41 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v42);
      (*(*(v41 + 8) + 128))(&v52, v40, v42);
      v50 = v52;
      v51 = v53;
      if (*(&v53 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v56 = 0;
          v54 = 0u;
          v55 = 0u;
        }
      }

      else
      {
        sub_21B261664(&v50, &qword_27CD7E0F8, &unk_21B3557C0);
        v54 = 0u;
        v55 = 0u;
        v56 = 0;
      }

      v57 = v36;
      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_21B253FF4((v43 > 1), v44 + 1, 1);
        v36 = v57;
      }

      *(v36 + 16) = v44 + 1;
      v45 = v36 + 40 * v44;
      v46 = v54;
      v47 = v55;
      *(v45 + 64) = v56;
      *(v45 + 32) = v46;
      *(v45 + 48) = v47;
      v49 = a2[3];
      v48 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v49);
      v40 = (*(*(v48 + 8) + 64))(v40, v49);
      --v37;
    }

    while (v37);
    goto LABEL_28;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_0()
{

  sub_21B23A9F4(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t sub_21B2F177C()
{
  result = qword_27CD7F140;
  if (!qword_27CD7F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F140);
  }

  return result;
}

unint64_t sub_21B2F17D0()
{
  result = qword_27CD7F148;
  if (!qword_27CD7F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F148);
  }

  return result;
}

unint64_t sub_21B2F1828()
{
  result = qword_27CD7F150;
  if (!qword_27CD7F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F150);
  }

  return result;
}

unint64_t sub_21B2F187C()
{
  result = qword_27CD7F158;
  if (!qword_27CD7F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F158);
  }

  return result;
}

unint64_t sub_21B2F18D4()
{
  result = qword_27CD7F160;
  if (!qword_27CD7F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F160);
  }

  return result;
}

unint64_t sub_21B2F192C()
{
  result = qword_27CD7F168;
  if (!qword_27CD7F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F168);
  }

  return result;
}

unint64_t sub_21B2F1984()
{
  result = qword_27CD7F170;
  if (!qword_27CD7F170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E540, &unk_21B352040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F170);
  }

  return result;
}

double DataFrame.explodeColumn<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v3[1];
  v7 = v3[2];
  v10[2] = *v3;
  v10[3] = v6;
  v10[4] = v7;
  v10[0] = v4;
  v10[1] = v5;
  DataFrame.explodingColumn<A>(_:)(v10, a2, a3, &v11);

  v8 = v12;
  result = *&v11;
  *v3 = v11;
  v3[2] = v8;
  return result;
}

uint64_t DataFrame.explodingColumn<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v90 = a4;
  v103 = a3;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v129 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v115 = &v88 - v8;
  v9 = sub_21B34B474();
  MEMORY[0x28223BE20](v9 - 8);
  v114 = &v88 - v10;
  v95 = v7;
  v124 = swift_getAssociatedTypeWitness();
  v128 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v88 - v11;
  v12 = sub_21B34B474();
  v127 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v97 = &v88 - v14;
  v126 = *(a2 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v94 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v96 = &v88 - v17;
  v98 = v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_21B34B474();
  MEMORY[0x28223BE20](v19 - 8);
  v110 = &v88 - v20;
  v21 = *a1;
  v22 = a1[1];
  v24 = v4[1];
  v25 = v4[2];
  *&v132 = *v4;
  v23 = v132;
  *(&v132 + 1) = v24;
  *&v133 = v25;
  v89 = sub_21B23AC94(v21, v22);
  *&v132 = v23;
  *(&v132 + 1) = v24;
  *&v133 = v25;
  *&v135 = v21;
  *(&v135 + 1) = v22;

  DataFrame.subscript.getter(&v135, a2);

  v27 = *(&v130 + 1);
  v26 = v130;
  v132 = v130;
  v91 = *&v131[0];
  *&v133 = *&v131[0];
  v111 = type metadata accessor for Column(0, a2, v28, v29);
  v30 = Column.count.getter();

  Column.init(name:capacity:)(v26, v27, v30, AssociatedTypeWitness, &v143);
  v140 = v23;
  v141 = v24;
  v142 = v25;
  *&v130 = v21;
  *(&v130 + 1) = v22;

  DataFrame.removeColumn<A>(_:)(&v130, a2);

  *&v138 = MEMORY[0x277D84F90];
  *(&v138 + 1) = MEMORY[0x277D84F90];
  v139 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  v31 = *(v23 + 16);
  v113 = a2;
  v99 = v27;
  if (v31)
  {
    v32 = v23 + 32;
    do
    {
      sub_21B233A74(v32, &v132);
      v34 = *(&v133 + 1);
      v33 = *&v134[0];
      __swift_project_boxed_opaque_existential_1(&v132, *(&v133 + 1));
      if ((*(*(v33 + 8) + 8))(v34) == v26 && v35 == v27)
      {
      }

      else
      {
        v37 = sub_21B34B9F4();

        if ((v37 & 1) == 0)
        {
          v39 = *(&v133 + 1);
          v38 = *&v134[0];
          __swift_project_boxed_opaque_existential_1(&v132, *(&v133 + 1));
          (*(*(v38 + 8) + 88))(&v130, v39);
          v40 = *(&v131[0] + 1);
          v41 = *&v131[1];
          __swift_project_boxed_opaque_existential_1(&v130, *(&v131[0] + 1));
          v43 = *(&v133 + 1);
          v42 = *&v134[0];
          __swift_project_boxed_opaque_existential_1(&v132, *(&v133 + 1));
          v44 = (*(*(v42 + 8) + 48))(v43);
          v45 = *(v41 + 32);
          v46 = v41;
          v27 = v99;
          v45(&v135, v44, v40, v46);
          DataFrame.append(column:)(&v135);
          sub_21B233960(&v135);
          sub_21B233960(&v132);
          __swift_destroy_boxed_opaque_existential_1Tm(&v130);
          goto LABEL_5;
        }
      }

      sub_21B233960(&v132);
LABEL_5:
      v32 += 40;
      --v31;
    }

    while (v31);
  }

  *&v132 = v26;
  *(&v132 + 1) = v27;
  v47 = v91;
  *&v133 = v91;
  v48 = v111;
  swift_getWitnessTable();
  sub_21B34B194();
  v131[3] = v131[4];
  *&v135 = v26;
  *(&v135 + 1) = v27;
  v136 = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v50 = sub_21B2A85CC();
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v135 = v130;
  v136 = *&v131[0];
  v137 = *(v131 + 8);
  v108 = v50;
  v109 = v49;
  *&v132 = v49;
  *(&v132 + 1) = v48;
  *&v133 = v50;
  *(&v133 + 1) = WitnessTable;
  v107 = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v105 = (v127 + 32);
  v106 = TupleTypeMetadata2 - 8;
  v104 = (v126 + 6);
  v102 = (v126 + 4);
  v93 = (v126 + 2);
  v122 = (v129 + 48);
  v119 = (v129 + 32);
  v117 = (v129 + 8);
  v92 = (v128 + 8);
  v100 = (v126 + 1);
  v101 = (v127 + 8);
  v53 = v115;
  v52 = AssociatedTypeWitness;
  v54 = v114;
  v56 = v97;
  v55 = v98;
  v57 = v96;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        *&v130 = v109;
        *(&v130 + 1) = v111;
        *&v131[0] = v108;
        *(&v131[0] + 1) = v107;
        v58 = sub_21B34B664();
        v59 = v110;
        sub_21B34B654();
        v60 = TupleTypeMetadata2;
        if ((*(*(TupleTypeMetadata2 - 8) + 48))(v59, 1, TupleTypeMetadata2) == 1)
        {
          v130 = v132;
          v131[0] = v133;
          v131[1] = v134[0];
          *(&v131[1] + 9) = *(v134 + 9);
          (*(*(v58 - 8) + 8))(&v130, v58);

          v135 = v143;
          v136 = v144;

          DataFrame.insert<A>(column:at:)(&v135, v89, v52, v82);

          v84 = v139;
          v85 = v90;
          *v90 = v138;
          *(v85 + 2) = v84;
          return result;
        }

        v129 = *v59;
        (*v105)(v56, &v59[*(v60 + 48)], v55);
        v61 = v113;
        if ((*v104)(v56, 1, v113) != 1)
        {
          break;
        }

        (*v101)(v56, v55);
      }

      (*v102)(v57, v56, v61);
      if ((sub_21B34B214() & 1) == 0)
      {
        break;
      }

      (*v100)(v57, v61);
    }

    (*v93)(v94, v57, v61);
    sub_21B34AEC4();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_21B34B4D4();
    v120 = *v122;
    if (v120(v54, 1, v52) != 1)
    {
      break;
    }

LABEL_19:
    (*v92)(v123, v124);
    v57 = v96;
    (*v100)(v96, v113);
    v56 = v97;
    v55 = v98;
  }

  v118 = *v119;
  v118(v53, v54, v52);
  while (1)
  {
    v65 = v140;
    v66 = *(v140 + 16);
    v127 = v142;
    v128 = v141;
    if (v66)
    {
      sub_21B233A74(v140 + 32, &v130);
      v68 = *(&v131[0] + 1);
      v67 = *&v131[1];
      v69 = __swift_project_boxed_opaque_existential_1(&v130, *(&v131[0] + 1));
      v70 = *(v67 + 8);
      v125 = *(v70 + 48);
      v126 = v69;

      v71 = v125(v68, v70);
      sub_21B233960(&v130);
      if (v71 < 0)
      {
        goto LABEL_41;
      }

      if (v71)
      {
        v72 = 0;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v71 = 0;
    v72 = 2;
LABEL_30:
    sub_21B23A9F4(0, v71, v72);
    v73 = *(v65 + 16);
    v68 = v138;
    if (v73 != *(v138 + 16))
    {
      goto LABEL_43;
    }

    if (v73)
    {
      break;
    }

LABEL_22:
    v64 = type metadata accessor for Column(0, v52, v62, v63);
    Column.append(_:)(v53, v64);
    (*v117)(v53, v52);
    sub_21B34B4D4();
    if (v120(v54, 1, v52) == 1)
    {
      goto LABEL_19;
    }

    v118(v53, v54, v52);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v68 = sub_21B23A2F4(v68);
  }

  if (v73 <= *(v65 + 16))
  {
    v74 = 0;
    v75 = 0;
    while (1)
    {
      sub_21B233A74(v65 + v74 + 32, &v130);
      if (v75 >= *(v68 + 2))
      {
        break;
      }

      ++v75;
      v76 = *(&v131[0] + 1);
      v77 = *&v131[1];
      v78 = __swift_project_boxed_opaque_existential_1(&v130, *(&v131[0] + 1));
      *&v137 = v76;
      *(&v137 + 1) = *(v77 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v135);
      (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v78, v76);
      v81 = *&v68[v74 + 56];
      v80 = *&v68[v74 + 64];
      __swift_mutable_project_boxed_opaque_existential_1(&v68[v74 + 32], v81);
      (*(v80 + 56))(v129, &v135, v81, v80);
      __swift_destroy_boxed_opaque_existential_1Tm(&v135);
      sub_21B233960(&v130);
      *&v138 = v68;
      v74 += 40;
      if (v73 == v75)
      {

        v53 = v115;
        v52 = AssociatedTypeWitness;
        v54 = v114;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  *&v130 = 0;
  *(&v130 + 1) = 0xE000000000000000;
  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
  *&v135 = *(v65 + 16);
  v86 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v86);

  MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
  *&v135 = *(v68 + 2);
  v87 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v87);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

double DataFrame.explodeColumn<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5[1];
  v9 = v5[2];
  v13[2] = *v5;
  v13[3] = v8;
  v13[4] = v9;
  ColumnID.init(_:_:)(a1, a2, v13);
  v12[0] = v13[0];
  v12[1] = v13[1];

  DataFrame.explodingColumn<A>(_:)(v12, a4, a5, &v14);

  v10 = v15;
  result = *&v14;
  *v5 = v14;
  v5[2] = v10;
  return result;
}

uint64_t DataFrame.explodingColumn<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = *(v5 + 2);
  v13 = *v5;
  v14 = v9;
  ColumnID.init(_:_:)(a1, a2, v12);
  v11[0] = v12[0];
  v11[1] = v12[1];

  DataFrame.explodingColumn<A>(_:)(v11, a3, a4, a5);
}

uint64_t Order.areOrdered<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*v4)
  {
    v5 = sub_21B34AB84();
  }

  else
  {
    v5 = sub_21B34AB94();
  }

  return v5 & 1;
}

TabularData::DataFrame __swiftcall RowGroupingProtocol.counts()()
{
  v4 = 2;
  v1 = (*(v0 + 32))(&v4);
  result.columnIndicesByName._rawValue = v3;
  result.aliases._rawValue = v2;
  result.columns._rawValue = v1;
  return result;
}

uint64_t RowGroupingProtocol.sums<A>(_:_:order:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *x8_0@<X8>, uint64_t a9)
{
  v20 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21B351EA0;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v17 = *(a7 + 40);

  v17(v29, v16, sub_21B2F2C0C, 0, sub_21B2F2CD8, v22, a6, a6, a5, a7);

  v28[2] = v29[0];
  v28[3] = v29[1];
  v28[4] = v29[2];
  v28[0] = 678262131;
  v28[1] = 0xE400000000000000;
  MEMORY[0x21CEED5E0](a1, a2);
  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  v18 = v28[0];
  LOBYTE(v28[0]) = v20;
  sub_21B2F2D44(v18, v28, x8_0);
}

uint64_t sub_21B2F2C1C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for DiscontiguousColumnSlice(0, a1, a1, a2);
  DiscontiguousColumnSlice<A>.sum()(v7, a3);
  return (*(*(a1 - 8) + 56))(a4, 0, 1, a1);
}

uint64_t sub_21B2F2D44@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X3>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = v3[1];
  v6 = v3[2];
  if (v4 == 2)
  {
    *a3 = *v3;
    a3[1] = v5;
    a3[2] = v6;
  }

  else
  {
    v19 = *v3;
    v20 = v5;
    v21 = v6;
    if (v4)
    {
      v8 = MEMORY[0x28223BE20](a1);
      v16 = v10;
      v17 = v12;
      v18 = v10;
      v13 = sub_21B2F3D68;
    }

    else
    {
      v8 = MEMORY[0x28223BE20](a1);
      v16 = v10;
      v17 = v14;
      v18 = v10;
      v13 = sub_21B2F3D9C;
    }

    return DataFrameProtocol.sorted<A>(on:_:by:)(v8, v9, v13, &v15, &type metadata for DataFrame, v10, &protocol witness table for DataFrame, v11);
  }
}

uint64_t RowGroupingProtocol.sums<A>(_:order:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v11 = *a2;
  return RowGroupingProtocol.sums<A>(_:_:order:)(v8, v9, &v11, a3, a4, a5, a6, a8, a7);
}

uint64_t RowGroupingProtocol.means<A>(_:_:order:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v18 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21B351EA0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v15 = *(a6 + 40);

  v15(v26, v14, sub_21B2F3080, 0, sub_21B2F3094, v20, a5, a5, a4, a6);

  v25[2] = v26[0];
  v25[3] = v26[1];
  v25[4] = v26[2];
  v25[0] = 0x286E61656DLL;
  v25[1] = 0xE500000000000000;
  MEMORY[0x21CEED5E0](a1, a2);
  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  v16 = v25[0];
  LOBYTE(v25[0]) = v18;
  sub_21B2F2D44(v16, v25, a8);
}

uint64_t RowGroupingProtocol.means<A>(_:order:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = *a2;
  return RowGroupingProtocol.means<A>(_:_:order:)(v7, v8, &v10, a3, a4, a5, a6, a7);
}

uint64_t RowGroupingProtocol.quantiles<A>(_:_:quantile:order:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v19 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21B351EA0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a9;
  v26 = a3;
  v16 = *(a7 + 40);

  v16(v28, v15, sub_21B2F32CC, 0, sub_21B2F33B0, v21, a6, a6, a5, a7);

  v27[2] = v28[0];
  v27[3] = v28[1];
  v27[4] = v28[2];
  v27[0] = 0x656C69746E617571;
  v27[1] = 0xE900000000000028;
  MEMORY[0x21CEED5E0](a1, a2);
  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  v17 = v27[0];
  LOBYTE(v27[0]) = v19;
  sub_21B2F2D44(v17, v27, a8);
}

uint64_t sub_21B2F32E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for DiscontiguousColumnSlice(0, a3, a2, a3);
  sub_21B30FED4(a1, v9, a4);
  return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
}

uint64_t RowGroupingProtocol.quantiles<A>(_:quantile:order:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v14 = *a3;
  return RowGroupingProtocol.quantiles<A>(_:_:quantile:order:)(v12, v11, a2, &v14, a4, a5, a6, a8, a7);
}

uint64_t RowGroupingProtocol.minimums<A>(_:order:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = *a2;
  return RowGroupingProtocol.minimums<A>(_:_:order:)(v7, v8, &v10, a3, a4, a5, a6, a7);
}

uint64_t sub_21B2F3554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21B351EA0;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v18 = *(a6 + 40);

  v18(v29, v17, a9, 0, a10, v23, a5, a5, a4, a6);

  v28[2] = v29[0];
  v28[3] = v29[1];
  v28[4] = v29[2];
  v28[0] = a11;
  v28[1] = 0xE400000000000000;
  MEMORY[0x21CEED5E0](a1, a2);
  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  v19 = v28[0];
  LOBYTE(v28[0]) = v21;
  sub_21B2F2D44(v19, v28, a8);
}

uint64_t sub_21B2F36F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x21CEED5E0](a1, a2);
  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  return a3;
}

uint64_t RowGroupingProtocol.maximums<A>(_:order:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = *a2;
  return RowGroupingProtocol.maximums<A>(_:_:order:)(v7, v8, &v10, a3, a4, a5, a6, a7);
}

uint64_t RowGroupingProtocol.aggregated<A, B>(on:into:transform:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a1;
  v15 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21B351EA0;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  v29 = a2;
  v30 = a3;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a4;
  v27 = a5;
  v17 = *(a9 + 40);

  v17(v16, sub_21B2F39F4, v28, sub_21B2F3AFC, v21, a7, a8, a6, a9);
}

uint64_t sub_21B2F396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a3;
  }

  else
  {
    MEMORY[0x21CEED5E0](a1, a2, a3);
    MEMORY[0x21CEED5E0](41, 0xE100000000000000);
    v4 = 0x7461676572676761;
  }

  return v4;
}

uint64_t sub_21B2F39FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v10(v7);
  if (!v3)
  {
    (*(v6 + 32))(a3, v9, a2);
    return (*(v6 + 56))(a3, 0, 1, a2);
  }

  return result;
}

uint64_t Order.hashValue.getter()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](v1);
  return sub_21B34BC24();
}

unint64_t sub_21B2F3BEC()
{
  result = qword_27CD7F1C0[0];
  if (!qword_27CD7F1C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD7F1C0);
  }

  return result;
}

__n128 __swift_memcpy61_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21B2F3DEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 61))
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

uint64_t sub_21B2F3E34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 61) = 1;
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

    *(result + 61) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2F3F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v36 = a5;
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v7 = v6;
  v10 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_21B34B474();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v40 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v32 - v17;
  v19 = *(v10 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  if (sub_21B34B2B4())
  {
    v22 = *(v40 + 56);

    return v22(a6, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v33 = a6;
    (*(v19 + 16))(v21, v6, v10);
    v26 = type metadata accessor for Column(0, AssociatedTypeWitness, v24, v25);
    if (swift_dynamicCast())
    {
      v27 = v39;
      v37(v26, v39);
      v28 = *(v40 + 48);
      if (v28(v15, 1, AssociatedTypeWitness) == 1)
      {
        (*(v40 + 16))(v18, v7 + *(a1 + 36), AssociatedTypeWitness);
        if (v28(v15, 1, AssociatedTypeWitness) != 1)
        {
          (*(v34 + 8))(v15, v35);
        }
      }

      else
      {
        (*(v40 + 32))(v18, v15, AssociatedTypeWitness);
      }

      v29 = *(a1 + 36);
      v30 = v38(v18, v7 + v29, AssociatedTypeWitness, v27);

      if (v30)
      {
        v31 = v33;
        (*(v40 + 32))(v33, v18, AssociatedTypeWitness);
      }

      else
      {
        (*(v40 + 8))(v18, AssociatedTypeWitness);
        v31 = v33;
        (*(v40 + 16))(v33, v7 + v29, AssociatedTypeWitness);
      }

      return (*(v40 + 56))(v31, 0, 1, AssociatedTypeWitness);
    }

    else
    {
      return v36(a1, v39);
    }
  }
}

uint64_t sub_21B2F4394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *, char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v58 = a2;
  v66 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v55 = &v53 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v80 = &v53 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_21B34B474();
  MEMORY[0x28223BE20](v11 - 8);
  v72 = &v53 - v12;
  swift_getWitnessTable();
  v13 = sub_21B34AAF4();
  v77 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v76 = &v53 - v14;
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v82 = v13;
  v83 = a1;
  v84 = WitnessTable;
  v85 = v16;
  v74 = WitnessTable;
  v17 = v16;
  v71 = v16;
  v75 = sub_21B34B674();
  MEMORY[0x28223BE20](v75);
  v82 = v13;
  v83 = a1;
  v84 = WitnessTable;
  v85 = v17;
  v73 = sub_21B34B664();
  v53 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v19 = &v53 - v18;
  v54 = sub_21B34B474();
  v56 = *(v54 - 8);
  v20 = MEMORY[0x28223BE20](v54);
  v60 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v70 = &v53 - v23;
  MEMORY[0x28223BE20](v22);
  v79 = v8;
  v24 = v8;
  v26 = &v53 - v25;
  v27 = *(v24 + 56);
  v81 = v7;
  v28 = v7;
  v29 = v61;
  v65 = v24 + 56;
  v64 = v27;
  v27(v66, 1, 1, v28);
  v30 = v29[7];
  v63 = (v29 + 7);
  v62 = v30;
  (v30)(v26, 1, 1, AssociatedTypeWitness);
  v31 = v76;
  sub_21B34B2E4();
  sub_21B34BA54();
  (v77[1])(v31, v13);
  v32 = v72;
  v33 = v55;
  sub_21B34B644();
  v71 = v19;
  v34 = v54;
  sub_21B34B654();
  v35 = *(TupleTypeMetadata2 - 8);
  v36 = *(v35 + 48);
  v68 = v35 + 48;
  v69 = v36;
  if (v36(v32, 1, TupleTypeMetadata2) == 1)
  {
LABEL_2:
    (*(v53 + 8))(v71, v73);
    return (*(v56 + 8))(v26, v34);
  }

  v38 = *(v79 + 32);
  v77 = (v29 + 4);
  v78 = v38;
  v74 = (v29 + 6);
  v75 = (v56 + 16);
  v76 = (v56 + 8);
  v61 = v29 + 1;
  v79 += 32;
  v57 = (v79 - 24);
  v67 = TupleTypeMetadata2;
  while (1)
  {
    v42 = *(TupleTypeMetadata2 + 48);
    v78(v80, v32, v81);
    v43 = *v77;
    (*v77)(v33, &v32[v42], AssociatedTypeWitness);
    v44 = *v75;
    v45 = v70;
    (*v75)(v70, v26, v34);
    v46 = *v74;
    v47 = (*v74)(v45, 1, AssociatedTypeWitness);
    v48 = *v76;
    (*v76)(v45, v34);
    if (v47 == 1)
    {
      goto LABEL_4;
    }

    v49 = v60;
    v44(v60, v26, v34);
    result = v46(v49, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      break;
    }

    v50 = v49;
    v51 = v59(v33, v49, AssociatedTypeWitness, v58);
    v52 = *v61;
    (*v61)(v50, AssociatedTypeWitness);
    if ((v51 & 1) == 0)
    {
      v52(v33, AssociatedTypeWitness);
      (*v57)(v80, v81);
      goto LABEL_5;
    }

LABEL_4:
    v48(v26, v34);
    v39 = v81;
    v40 = sub_21B34B474();
    v41 = v66;
    (*(*(v40 - 8) + 8))(v66, v40);
    v78(v41, v80, v39);
    v64(v41, 0, 1, v39);
    v43(v26, v33, AssociatedTypeWitness);
    (v62)(v26, 0, 1, AssociatedTypeWitness);
LABEL_5:
    v32 = v72;
    sub_21B34B654();
    TupleTypeMetadata2 = v67;
    if (v69(v32, 1, v67) == 1)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t FilledColumn<>.sum()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = *(a1 + 16);
  v31 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v32 = &v30 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v34 = &v30 - v12;
  v13 = *(v5 - 1);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  v16 = *(a2 + 24);
  v17 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v17);
  swift_getWitnessTable();
  v36 = v3;
  if (sub_21B34B2B4())
  {
    swift_getAssociatedConformanceWitness();
    sub_21B34BA24();
    return sub_21B34B9E4();
  }

  else
  {
    (*(v13 + 16))(v15, v36, v5);
    v21 = type metadata accessor for Column(0, AssociatedTypeWitness, v19, v20);
    if (swift_dynamicCast())
    {
      v22 = v39;
      v23 = v34;
      Column<A>.sum()(v21, *(v16 + 8));
      v38 = sub_21B328D40(v22, AssociatedTypeWitness);
      sub_21B2CFAF0();
      v24 = v30;
      sub_21B34B544();
      v25 = v32;
      sub_21B34B144();
      v26 = *(v35 + 8);
      v26(v24, AssociatedTypeWitness);
      sub_21B34B834();

      v26(v25, AssociatedTypeWitness);
      return (v26)(v23, AssociatedTypeWitness);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      sub_21B34BA24();
      v27 = v34;
      v28 = sub_21B34B9E4();
      MEMORY[0x28223BE20](v28);
      v29 = v31;
      *(&v30 - 4) = v5;
      *(&v30 - 3) = v29;
      *(&v30 - 2) = v33;
      *(&v30 - 1) = AssociatedTypeWitness;
      swift_getWitnessTable();
      sub_21B34AF34();
      return (*(v35 + 8))(v27, AssociatedTypeWitness);
    }
  }
}

{
  v38 = a3;
  v5 = *(a1 + 16);
  v33 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v32 = &v31 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v35 = &v31 - v12;
  v13 = *(v5 - 1);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  v16 = *(*(a2 + 16) + 8);
  v17 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v17);
  swift_getWitnessTable();
  v37 = v3;
  if (sub_21B34B2B4())
  {
    swift_getAssociatedConformanceWitness();
    sub_21B34BA24();
    return sub_21B34B9E4();
  }

  else
  {
    (*(v13 + 16))(v15, v37, v5);
    v21 = type metadata accessor for Column(0, AssociatedTypeWitness, v19, v20);
    if (swift_dynamicCast())
    {
      v33 = v39;
      v22 = v40;
      v23 = v35;
      Column<A>.sum()(v21, *(v16 + 8));
      sub_21B328D40(v22, AssociatedTypeWitness);
      v24 = v31;
      sub_21B34AA84();
      v25 = v32;
      sub_21B34B144();
      v26 = *(v36 + 8);
      v26(v24, AssociatedTypeWitness);
      sub_21B34B834();

      v26(v25, AssociatedTypeWitness);
      return (v26)(v23, AssociatedTypeWitness);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      sub_21B34BA24();
      v27 = v35;
      v28 = sub_21B34B9E4();
      MEMORY[0x28223BE20](v28);
      v30 = v33;
      v29 = v34;
      *(&v31 - 4) = v5;
      *(&v31 - 3) = v30;
      *(&v31 - 2) = v29;
      *(&v31 - 1) = AssociatedTypeWitness;
      swift_getWitnessTable();
      sub_21B34AF34();
      return (*(v36 + 8))(v27, AssociatedTypeWitness);
    }
  }
}

uint64_t FilledColumn<>.mean()(uint64_t a1, uint64_t a2)
{
  v16[1] = *(a1 + 16);
  v17 = a2;
  WitnessTable = swift_getWitnessTable();
  v5 = sub_21B2FCC28(sub_21B2F5DC8, v16, a1, MEMORY[0x277D839F8], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v4);
  v6 = *(v5 + 16);
  if (!v6)
  {

LABEL_11:
    *&result = 0.0;
    return result;
  }

  if (v6 == 1)
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
LABEL_8:
    v12 = v6 - v7;
    v13 = (v5 + 8 * v7 + 32);
    do
    {
      v14 = *v13++;
      v9 = v9 + v14;
      v8 = v8 + 1.0;
      --v12;
    }

    while (v12);
    goto LABEL_10;
  }

  v7 = v6 & 0x7FFFFFFFFFFFFFFELL;
  v10 = (v5 + 40);
  v8 = 0.0;
  v11 = v6 & 0x7FFFFFFFFFFFFFFELL;
  v9 = 0.0;
  do
  {
    v8 = v8 + 1.0 + 1.0;
    v9 = v9 + *(v10 - 1) + *v10;
    v10 += 2;
    v11 -= 2;
  }

  while (v11);
  if (v6 != v7)
  {
    goto LABEL_8;
  }

LABEL_10:

  if (v8 == 0.0)
  {
    goto LABEL_11;
  }

  *&result = v9 / v8;
  return result;
}

uint64_t FilledColumn<>.standardDeviation(deltaDegreesOfFreedom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *(a2 + 16);
  v11 = a3;
  WitnessTable = swift_getWitnessTable();
  v7 = sub_21B2FCC28(sub_21B2F55C4, v10, a2, MEMORY[0x277D839F8], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);
  v8 = sub_21B2F55E8(v7, a1);

  return v8;
}

uint64_t sub_21B2F5404@<X0>(uint64_t a1@<X0>, double *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v15 - v9;
  (*(v8 + 16))(v15 - v9, a1, AssociatedTypeWitness);
  if (sub_21B34B524() < 65)
  {
    v13 = sub_21B34B534();
    v14 = sub_21B34B514();
    result = (*(v8 + 8))(v10, AssociatedTypeWitness);
    if (v13)
    {
      v12 = v14;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    sub_21B2CFB44();
    sub_21B2659F4();
    sub_21B34A9B4();
    result = (*(v8 + 8))(v10, AssociatedTypeWitness);
    v12 = *&v15[1];
  }

  *a5 = v12;
  return result;
}

uint64_t sub_21B2F55E8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v2 = *(a1 + 16);
    if (!v2)
    {
      return 0;
    }

    __asm { FMOV            V0.2D, #1.0 }

    if (v2 == 1)
    {
      v8 = 0;
      v9 = 0uLL;
    }

    else
    {
      v8 = v2 & 0x7FFFFFFFFFFFFFFELL;
      v10 = (a1 + 40);
      v9 = 0uLL;
      v11 = v2 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v12.f64[1] = *(&_Q0 + 1);
        v12.f64[0] = *(v10 - 1);
        v13 = vaddq_f64(v9, v12);
        v12.f64[1] = *(&_Q0 + 1);
        v12.f64[0] = *v10;
        v9 = vaddq_f64(v13, v12);
        v10 += 2;
        v11 -= 2;
      }

      while (v11);
      if (v2 == v8)
      {
LABEL_10:
        if (v9.f64[1] != 0.0)
        {
          v17 = v9.f64[0] / v9.f64[1];
          if (v2 >= 4)
          {
            v18 = v2 & 0x7FFFFFFFFFFFFFFCLL;
            v20 = vdupq_lane_s64(*&v17, 0);
            v21 = (a1 + 48);
            v19 = 0.0;
            v22 = v2 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v23 = vsubq_f64(v21[-1], v20);
              v24 = vsubq_f64(*v21, v20);
              v25 = vmulq_f64(v23, v23);
              v26 = vmulq_f64(v24, v24);
              v19 = v19 + v25.f64[0] + v25.f64[1] + v26.f64[0] + v26.f64[1];
              v21 += 2;
              v22 -= 4;
            }

            while (v22);
            if (v2 == v18)
            {
LABEL_18:
              v30 = v2 <= a2;
              v31 = v2 - a2;
              if (!v30)
              {
                return sqrt(v19 / v31);
              }

              return 0;
            }
          }

          else
          {
            v18 = 0;
            v19 = 0.0;
          }

          v27 = v2 - v18;
          v28 = (a1 + 8 * v18 + 32);
          do
          {
            v29 = *v28++;
            v19 = v19 + (v29 - v17) * (v29 - v17);
            --v27;
          }

          while (v27);
          goto LABEL_18;
        }

        return 0;
      }
    }

    v14 = v2 - v8;
    v15 = (a1 + 8 * v8 + 32);
    do
    {
      v16.f64[1] = *(&_Q0 + 1);
      v16.f64[0] = *v15++;
      v9 = vaddq_f64(v9, v16);
      --v14;
    }

    while (v14);
    goto LABEL_10;
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t FilledColumn<>.mean()@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21B310088(v3, a1, WitnessTable, a2, a3);
}

uint64_t FilledColumn<>.standardDeviation(deltaDegreesOfFreedom:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21B3106A0(v4, a1, a2, WitnessTable, a3, a4);
}

uint64_t FilledColumn.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v26 = a1;
  v27 = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21B34B474();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = *(v7 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 16);
  v25 = v4;
  v17(v16, v4, v7);
  v24 = v6;
  v18 = sub_21B34B314();
  v26 = v10;
  (*(v10 + 16))(v13);
  v18(v28, 0);
  (*(v14 + 8))(v16, v7);
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 48);
  if (v20(v13, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v19 + 32))(v27, v13, AssociatedTypeWitness);
  }

  v21 = *(a2 + 36);
  v22 = swift_getAssociatedTypeWitness();
  (*(*(v22 - 8) + 16))(v27, v25 + v21, v22);
  result = (v20)(v13, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v26 + 8))(v13, v9);
  }

  return result;
}

uint64_t OptionalColumnProtocol.filled(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v19 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v5, a2);
  (*(v11 + 16))(v14, a1, AssociatedTypeWitness);
  return sub_21B2F627C(v16, v14, a2, a3, a4);
}

uint64_t sub_21B2F627C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = *(type metadata accessor for FilledColumn(0, a3, a4, v9) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 32);

  return v12(a5 + v10, a2, AssociatedTypeWitness);
}

uint64_t FilledColumn.defaultValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t sub_21B2F648C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for FilledColumn(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);

  return FilledColumn.name.setter(v4, v5, v6);
}

void (*FilledColumn.name.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[2] = v2;
  v7 = *(*(a2 + 24) + 8);
  v5[3] = v7;
  v8 = *(v7 + 16);
  v5[4] = *(a2 + 16);
  *v5 = v8();
  v6[1] = v9;
  return sub_21B2F65A0;
}

void sub_21B2F65A0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = *(v5 + 24);
  v7 = (*a1)[4];
  if (a2)
  {

    v6(v3, v4, v7, v5);
  }

  else
  {
    v6(**a1, v4, v7, v5);
  }

  free(v2);
}

uint64_t sub_21B2F6680(uint64_t a1, void (*a2)(uint64_t, void))
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  a2(v4, *(*(*(*(a1 + 24) + 8) + 8) + 8));
  return (*(v5 + 8))(v7, v4);
}

uint64_t FilledColumn.index(after:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v2, v3);
  sub_21B34B1E4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t FilledColumn.index(before:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v2, v3);
  sub_21B34AB24();
  return (*(v4 + 8))(v6, v3);
}

void (*sub_21B2F69AC(void *a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = FilledColumn.name.modify(v4, a2);
  return sub_21B2444C0;
}

uint64_t sub_21B2F6A24(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_21B2F6BAC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B2F6C34(v6, a2, a3);
  return sub_21B285370;
}

void (*sub_21B2F6C34(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  FilledColumn.subscript.getter(a2, a3, v8);
  return sub_21B2854A4;
}

uint64_t sub_21B2F6D24@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_21B34B474();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_21B2F6DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_21B34AB54();
}

uint64_t sub_21B2F6E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_21B34AB44();
}

uint64_t sub_21B2F6EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_21B34AB64();
}

uint64_t sub_21B2F6F44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(v8 + 32))(&v12 - v9, a1, AssociatedTypeWitness);
  a4(v10, a2);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_21B2F7068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 - 8);
  (*(v6 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  sub_21B34B7D4();
  FilledColumn.startIndex.getter(a1);
  v4 = *(v6 + 8);

  return v4(v2, a1);
}

uint64_t sub_21B2F7160(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B2F71B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_21B2DBAB0(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_21B2F7240(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_21B2F72E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_21B2F7560(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_21B2F7880(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = MEMORY[0x277D84F90];
    sub_21B254088(0, v8, 0);
    result = v39;
    v10 = (a1 + 64);
    while (1)
    {
      v35 = v8;
      v36 = result;
      v11 = v6;
      v12 = *(v10 - 4);
      v13 = *(v10 - 2);
      v14 = *(v10 - 1);
      v15 = *v10;
      v16 = *a2;
      v17 = *(*a2 + 16);
      v18 = *(v10 - 3);

      if (!v17 || (v19 = sub_21B24B534(v13, v14), (v20 & 1) == 0))
      {
        sub_21B34B634();

        MEMORY[0x21CEED5E0](v13, v14);
        MEMORY[0x21CEED5E0](0x616420303030302ELL, 0xEF656C6966206174);
        sub_21B239564();
        swift_allocError();
        *v30 = 0x20676E697373694DLL;
        *(v30 + 8) = 0xE800000000000000;
        *(v30 + 16) = 0;
        swift_willThrow();
        goto LABEL_12;
      }

      v21 = (*(v16 + 56) + 24 * v19);
      v23 = *v21;
      v22 = v21[1];
      v24 = v21[2];
      sub_21B260DC0(*v21, v22);

      sub_21B273654(v12, v18, v15, a3, a4, a5 & 1, v23, v22, v37, v24);
      v6 = v11;
      if (v11)
      {
        break;
      }

      sub_21B234324(v23, v22);

      result = v36;
      v39 = v36;
      v26 = *(v36 + 16);
      v25 = *(v36 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_21B254088((v25 > 1), v26 + 1, 1);
        result = v39;
      }

      v10 += 5;
      *(result + 16) = v26 + 1;
      v27 = result + 40 * v26;
      v28 = v37[0];
      v29 = v37[1];
      *(v27 + 64) = v38;
      *(v27 + 32) = v28;
      *(v27 + 48) = v29;
      v8 = v35 - 1;
      if (v35 == 1)
      {
        return result;
      }
    }

    sub_21B234324(v23, v22);

LABEL_12:
  }

  return result;
}

uint64_t DataFrame.init(contentsOfSFrameDirectory:columns:rows:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, _OWORD *a6@<X8>)
{
  v159 = a5;
  v160 = a3;
  v161 = a4;
  v158 = a6;
  v169 = *MEMORY[0x277D85DE8];
  v9 = sub_21B34A6D4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v162 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v163 = &v142 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v164 = &v142 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v142 - v17;
  sub_21B34A6B4();
  v19 = [objc_opt_self() defaultManager];
  sub_21B34A6C4();
  v20 = sub_21B34AC74();

  v21 = [v19 fileExistsAtPath_];

  if ((v21 & 1) == 0)
  {

    sub_21B239564();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 6;
    swift_willThrow();

    goto LABEL_6;
  }

  v156 = v19;
  v157 = a2;
  v22 = sub_21B34A6E4();
  if (v6)
  {

LABEL_6:
    v27 = *(v10 + 8);
    v27(a1, v9);
    return (v27)(v18, v9);
  }

  v153 = v18;
  v154 = v9;
  v155 = a1;
  v25 = v22;
  v26 = v23;
  v29 = sub_21B2F9150(v22, v23);
  v31 = v30;
  sub_21B234324(v25, v26);
  *&v167 = v29;
  *(&v167 + 1) = v31;

  MEMORY[0x21CEED5E0](0x695F656D6172662ELL, 0xEA00000000007864);

  v32 = v164;
  sub_21B34A6B4();

  v33 = v10;
  v34 = *(v10 + 16);
  v35 = v163;
  v36 = v154;
  v34(v163, v32, v154);
  v37 = sub_21B34A6E4();
  sub_21B2E2A48(v37, v38);
  v39 = 0;
  v41 = v40;
  v42 = *(v33 + 8);
  v149 = v33 + 8;
  v148 = v42;
  v42(v35, v36);
  v166 = MEMORY[0x277D84F98];
  v43 = *(v41 + 16);
  v44 = MEMORY[0x277D84F90];
  v143 = v41;
  if (v43)
  {
    v163 = 0;
    *&v167 = MEMORY[0x277D84F90];

    sub_21B231F10(0, v43, 0);
    v44 = v167;
    v45 = (v41 + 56);
    v46 = v162;
    do
    {
      v47 = *(v45 - 1);
      v48 = *v45;
      *&v167 = v44;
      v50 = *(v44 + 16);
      v49 = *(v44 + 24);

      if (v50 >= v49 >> 1)
      {
        sub_21B231F10((v49 > 1), v50 + 1, 1);
        v44 = v167;
      }

      *(v44 + 16) = v50 + 1;
      v51 = v44 + 16 * v50;
      *(v51 + 32) = v47;
      *(v51 + 40) = v48;
      v45 += 5;
      --v43;
    }

    while (v43);

    v39 = v163;
  }

  else
  {
    v46 = v162;
  }

  v52 = sub_21B25DE78(v44);

  v53 = 0;
  v55 = v52 + 56;
  v54 = *(v52 + 56);
  v150 = v52;
  v56 = 1 << *(v52 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & v54;
  v59 = (v56 + 63) >> 6;
  v60 = MEMORY[0x277D84F98];
  v147 = v52 + 56;
  v146 = v59;
  while (2)
  {
    v151 = v60;
    if (v58)
    {
      v64 = v46;
      goto LABEL_25;
    }

    do
    {
      v65 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (v65 >= v59)
      {
        v123 = v164;

        if (v157)
        {
          v124 = sub_21B2F9544(v157, v143);
          v125 = v154;
          v126 = v155;
          if (v39)
          {

            v127 = v148;
            v148(v126, v125);
            v127(v123, v125);
            v127(v153, v125);
          }

          v129 = v124;

          v128 = v129;
        }

        else
        {
          v125 = v154;
          v126 = v155;
          v128 = v143;
        }

        v130 = sub_21B2F7880(v128, &v166, v160, v161, v159 & 1);
        v131 = v156;
        v132 = v153;
        if (!v39)
        {
          v135 = v130;

          sub_21B23BEF8(v135, &v167);

          v136 = v148;
          v148(v126, v125);
          v136(v123, v125);
          v136(v132, v125);

          v137 = v168;
          v138 = v158;
          *v158 = v167;
          *(v138 + 2) = v137;
          return result;
        }

        v133 = v126;
        v134 = v148;
        v148(v133, v125);
        v134(v123, v125);
        v134(v132, v125);
      }

      v58 = *(v55 + 8 * v65);
      ++v53;
    }

    while (!v58);
    v64 = v46;
    v53 = v65;
LABEL_25:
    v66 = (*(v150 + 48) + ((v53 << 10) | (16 * __clz(__rbit64(v58)))));
    v67 = v66[1];
    v163 = *v66;
    *&v167 = v163;
    *(&v167 + 1) = v67;
    v68 = v67;
    swift_bridgeObjectRetain_n();
    MEMORY[0x21CEED5E0](0x303030302ELL, 0xE500000000000000);
    sub_21B34A6B4();

    v69 = v64;
    v70 = sub_21B34A6E4();
    if (v39)
    {

      v139 = v154;
      v140 = v69;
      v141 = v148;
      v148(v155, v154);
      v141(v140, v139);
      v141(v164, v139);
      v141(v153, v139);
    }

    *&v167 = v70;
    *(&v167 + 1) = v71;
    v168 = MEMORY[0x277D84F90];
    v72 = v71 >> 62;
    v152 = v58;
    if ((v71 >> 62) > 1)
    {
      if (v72 != 2)
      {
        v95 = v70;
        v96 = v71;
        memset(v165, 0, 14);
        sub_21B23AA08(v165, v165);
        sub_21B234324(v95, v96);
        v75 = v69;
        v76 = v163;
        v77 = v68;
        goto LABEL_54;
      }

      v78 = v71;
      v79 = *(v70 + 16);
      v80 = *(v70 + 24);
      v144 = v70;

      v81 = sub_21B34A574();
      if (v81)
      {
        v82 = v81;
        v83 = v78;
        v84 = sub_21B34A594();
        if (__OFSUB__(v79, v84))
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
        }

        v85 = (v79 - v84 + v82);
      }

      else
      {
        v83 = v78;
        v85 = 0;
      }

      v97 = __OFSUB__(v80, v79);
      v98 = v80 - v79;
      v145 = v68;
      v99 = v163;
      if (!v97)
      {
        v100 = sub_21B34A584();
        if (v100 >= v98)
        {
          v101 = v98;
        }

        else
        {
          v101 = v100;
        }

        v102 = v85 + v101;
        if (v85)
        {
          v103 = v102;
        }

        else
        {
          v103 = 0;
        }

        sub_21B23AA08(v85, v103);
        sub_21B234324(v144, v83);
        v75 = v162;
        v77 = v145;
        v76 = v99;
        goto LABEL_54;
      }

LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (!v72)
    {
      v145 = v68;
      v165[0] = v70;
      v73 = v70;
      LOWORD(v165[1]) = v71;
      BYTE2(v165[1]) = BYTE2(v71);
      v74 = v71;
      BYTE3(v165[1]) = BYTE3(v71);
      BYTE4(v165[1]) = BYTE4(v71);
      BYTE5(v165[1]) = BYTE5(v71);
      sub_21B23AA08(v165, v165 + BYTE6(v71));
      sub_21B234324(v73, v74);
      v75 = v69;
      v76 = v163;
      v77 = v145;
      goto LABEL_54;
    }

    v145 = v71;
    v86 = v70;
    v144 = v70;
    v87 = (v70 >> 32) - v70;
    if (v70 >> 32 < v70)
    {
      goto LABEL_78;
    }

    v88 = sub_21B34A574();
    if (!v88)
    {
      goto LABEL_37;
    }

    v89 = sub_21B34A594();
    if (__OFSUB__(v86, v89))
    {
      goto LABEL_81;
    }

    v88 = (v88 + v86 - v89);
LABEL_37:
    v90 = v145;
    v91 = sub_21B34A584();
    if (v91 >= v87)
    {
      v92 = v87;
    }

    else
    {
      v92 = v91;
    }

    v93 = v88 + v92;
    if (v88)
    {
      v94 = v93;
    }

    else
    {
      v94 = 0;
    }

    sub_21B23AA08(v88, v94);
    v76 = v163;
    sub_21B234324(v144, v90);
    v75 = v162;
    v77 = v68;
LABEL_54:
    v148(v75, v154);
    v104 = v167;
    v105 = v168;
    sub_21B260DC0(v167, *(&v167 + 1));

    v151 = v104;
    sub_21B234324(v104, *(&v104 + 1));
    v106 = v105;

    v107 = v166;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v167 = v107;
    v109 = v77;
    v111 = sub_21B24B534(v76, v77);
    v112 = *(v107 + 16);
    v113 = (v110 & 1) == 0;
    v114 = v112 + v113;
    if (__OFADD__(v112, v113))
    {
      goto LABEL_76;
    }

    v115 = v110;
    if (*(v107 + 24) >= v114)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v118 = *(&v104 + 1);
        if ((v110 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_17;
      }

      sub_21B2530B8();
      v118 = *(&v104 + 1);
      if (v115)
      {
        goto LABEL_17;
      }

LABEL_61:
      v60 = v167;
      *(v167 + 8 * (v111 >> 6) + 64) |= 1 << v111;
      v119 = (v60[6] + 16 * v111);
      *v119 = v163;
      v119[1] = v109;
      v120 = (v60[7] + 24 * v111);
      *v120 = v151;
      v120[1] = v118;
      v120[2] = v106;
      v121 = v60[2];
      v97 = __OFADD__(v121, 1);
      v122 = v121 + 1;
      if (!v97)
      {
        v60[2] = v122;
        goto LABEL_18;
      }

      goto LABEL_77;
    }

    sub_21B24DBA4(v114, isUniquelyReferenced_nonNull_native);
    v116 = sub_21B24B534(v163, v109);
    if ((v115 & 1) == (v117 & 1))
    {
      v111 = v116;
      v118 = *(&v104 + 1);
      if ((v115 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_17:

      v60 = v167;
      v61 = (*(v167 + 56) + 24 * v111);
      v62 = *v61;
      v63 = v61[1];
      *v61 = v151;
      v61[1] = v118;
      v61[2] = v106;
      sub_21B234324(v62, v63);

LABEL_18:
      v55 = v147;
      v59 = v146;
      v46 = v162;
      v58 = (v152 - 1) & v152;
      v166 = v60;
      continue;
    }

    break;
  }

  result = sub_21B34BA84();
  __break(1u);
  return result;
}

unint64_t sub_21B2F89A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_65;
  }

  result = sub_21B24B534(0x666572705F6D756ELL, 0xEC00000073657869);
  if ((v7 & 1) == 0)
  {
    goto LABEL_65;
  }

  v8 = (*(a1 + 56) + 16 * result);
  v9 = *v8;
  v10 = v8[1];
  v11 = HIBYTE(v10) & 0xF;
  v12 = v9 & 0xFFFFFFFFFFFFLL;
  if (!((v10 & 0x2000000000000000) != 0 ? HIBYTE(v10) & 0xF : v9 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_65;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {

    v15 = sub_21B3411A0(v9, v10, 10);
    v39 = v38;

    if (v39)
    {
      goto LABEL_65;
    }

    goto LABEL_70;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v60 = v9;
    v61 = v10 & 0xFFFFFFFFFFFFFFLL;
    if (v9 == 43)
    {
      if (v11)
      {
        if (--v11)
        {
          v15 = 0;
          v25 = &v60 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v11)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_97:
      __break(1u);
      return result;
    }

    if (v9 != 45)
    {
      if (v11)
      {
        v15 = 0;
        v30 = &v60;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          v30 = (v30 + 1);
          if (!--v11)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v11)
    {
      if (--v11)
      {
        v15 = 0;
        v19 = &v60 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          ++v19;
          if (!--v11)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_95;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    result = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_21B34B6F4();
  }

  v14 = *result;
  if (v14 == 43)
  {
    if (v12 >= 1)
    {
      v11 = v12 - 1;
      if (v12 != 1)
      {
        v15 = 0;
        if (result)
        {
          v22 = (result + 1);
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_63;
            }

            v24 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_63;
            }

            v15 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_63;
            }

            ++v22;
            if (!--v11)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_55;
      }

      goto LABEL_63;
    }

    goto LABEL_96;
  }

  if (v14 == 45)
  {
    if (v12 >= 1)
    {
      v11 = v12 - 1;
      if (v12 != 1)
      {
        v15 = 0;
        if (result)
        {
          v16 = (result + 1);
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              goto LABEL_63;
            }

            v18 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_63;
            }

            v15 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              goto LABEL_63;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v11) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v12)
  {
    v15 = 0;
    if (result)
    {
      while (1)
      {
        v28 = *result - 48;
        if (v28 > 9)
        {
          goto LABEL_63;
        }

        v29 = 10 * v15;
        if ((v15 * 10) >> 64 != (10 * v15) >> 63)
        {
          goto LABEL_63;
        }

        v15 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          goto LABEL_63;
        }

        ++result;
        if (!--v12)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_63:
  v15 = 0;
  LOBYTE(v11) = 1;
LABEL_64:
  if (v11)
  {
LABEL_65:
    v33 = 0;
    v34 = 0x800000021B34D7B0;
    v35 = 36;
LABEL_66:
    v36 = v35 | 0xD000000000000010;
LABEL_67:
    sub_21B239564();
    swift_allocError();
    *v37 = v36;
    *(v37 + 8) = v34;
    *(v37 + 16) = v33;
    return swift_willThrow();
  }

LABEL_70:
  if (!*(a1 + 16) || (v40 = sub_21B24B534(0x6E6F6973726576, 0xE700000000000000), (v41 & 1) == 0))
  {
    v33 = 0;
    v34 = 0x800000021B34D7F0;
    v35 = 39;
    goto LABEL_66;
  }

  v42 = (*(a1 + 56) + 16 * v40);
  v44 = *v42;
  v43 = v42[1];
  v45 = *v42 == 49 && v43 == 0xE100000000000000;
  if (!v45 && (sub_21B34B9F4() & 1) == 0)
  {
    v60 = 0;
    v61 = 0xE000000000000000;

    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000026, 0x800000021B34D830);
    MEMORY[0x21CEED5E0](v44, v43);

    v52 = 0x800000021B34D860;
    v53 = 0xD000000000000010;
LABEL_90:
    MEMORY[0x21CEED5E0](v53, v52);
    v36 = v60;
    v34 = v61;
    v33 = 1;
    goto LABEL_67;
  }

  if (!*(a2 + 16) || (result = sub_21B24B534(0x73746E65746E6F63, 0xE800000000000000), (v46 & 1) == 0))
  {
    v33 = 0;
    v34 = 0x800000021B34D880;
    v35 = 40;
    goto LABEL_66;
  }

  v47 = (*(a2 + 56) + 16 * result);
  v49 = *v47;
  v48 = v47[1];
  if (*v47 != 0x656D61726673 || v48 != 0xE600000000000000)
  {
    result = sub_21B34B9F4();
    if ((result & 1) == 0)
    {
      v60 = 0;
      v61 = 0xE000000000000000;

      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD00000000000001DLL, 0x800000021B34D8C0);
      MEMORY[0x21CEED5E0](v49, v48);

      v53 = 0xD000000000000015;
      v52 = 0x800000021B34D8E0;
      goto LABEL_90;
    }
  }

  if (*(a3 + 16) != v15)
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000003BLL, 0x800000021B34D900);
    v54 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v54);

    MEMORY[0x21CEED5E0](0x6578696665727020, 0xEE00207475622073);
    v56 = v60;
    v55 = v61;
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_21B34B634();

    v60 = 0xD000000000000023;
    v61 = 0x800000021B34D940;
    v57 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v57);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    v58 = v60;
    v59 = v61;
    v60 = v56;
    v61 = v55;

    MEMORY[0x21CEED5E0](v58, v59);

    v33 = 0;
    v36 = v60;
    v34 = v61;
    goto LABEL_67;
  }

  if (v15 != 3)
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_21B34B634();

    v60 = 0xD000000000000018;
    v61 = 0x800000021B34D970;
    v51 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v51);

    MEMORY[0x21CEED5E0](0x746365707865202CLL, 0xED00002E33206465);
    v36 = v60;
    v34 = v61;
    v33 = 3;
    goto LABEL_67;
  }

  return result;
}

uint64_t sub_21B2F9150(uint64_t a1, unint64_t a2)
{
  v4 = sub_21B30FB6C(a1, a2);
  if (v3)
  {
    MEMORY[0x21CEEE850](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
    if (swift_dynamicCast())
    {
      MEMORY[0x21CEEE840](v3);
      sub_21B239564();
      swift_allocError();
      *v5 = 0xD000000000000028;
      *(v5 + 8) = 0x800000021B34D690;
      *(v5 + 16) = 0;
      swift_willThrow();
    }

    MEMORY[0x21CEEE840](v3);
  }

  else
  {
    v6 = *(v4 + 16);
    v7 = v4;
    v8 = (v4 + 48);
    v9 = v6 + 1;
    do
    {
      if (!--v9)
      {

        v20 = 0x800000021B34D770;
        sub_21B239564();
        swift_allocError();
        v22 = 0xD000000000000039;
        goto LABEL_31;
      }

      v2 = *(v8 - 1);
      v10 = *v8;
      if (*(v8 - 2) == 0x65766968637261 && v2 == 0xE700000000000000)
      {
        break;
      }

      v8 += 3;
    }

    while ((sub_21B34B9F4() & 1) == 0);
    v27 = v7;
    v12 = (v7 + 48);
    v13 = v6 + 1;
    do
    {
      if (!--v13)
      {

        v23 = "Directory archive index is missing the 'metadata' section.";
LABEL_30:
        v20 = (v23 - 32) | 0x8000000000000000;
        sub_21B239564();
        swift_allocError();
        v22 = 0xD00000000000003ALL;
        goto LABEL_31;
      }

      v14 = *v12;
      if (*(v12 - 2) == 0x617461646174656DLL && *(v12 - 1) == 0xE800000000000000)
      {
        break;
      }

      v12 += 3;
    }

    while ((sub_21B34B9F4() & 1) == 0);
    v16 = (v27 + 48);
    v17 = v6 + 1;
    do
    {
      if (!--v17)
      {

        v23 = "Directory archive index is missing the 'prefixes' section.";
        goto LABEL_30;
      }

      v18 = *v16;
      if (*(v16 - 2) == 0x7365786966657270 && *(v16 - 1) == 0xE800000000000000)
      {
        break;
      }

      v16 += 3;
    }

    while ((sub_21B34B9F4() & 1) == 0);

    sub_21B2F89A8(v10, v14, v18);

    if (*(v18 + 16))
    {
      v2 = v18;
      v25 = sub_21B24B534(842018864, 0xE400000000000000);
      if (v26)
      {
        v2 = *(*(v18 + 56) + 16 * v25);

        return v2;
      }
    }

    v20 = 0x800000021B34D6C0;
    sub_21B239564();
    swift_allocError();
    v22 = 0xD00000000000002DLL;
LABEL_31:
    *v21 = v22;
    *(v21 + 8) = v20;
    *(v21 + 16) = 0;
    swift_willThrow();
  }

  return v2;
}

void *sub_21B2F9544(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v31 = MEMORY[0x277D84F90];
    sub_21B254388(0, v2, 0);
    v6 = 0;
    v3 = v31;
    v7 = a1 + 32;
    v8 = (a2 + 64);
    v9 = *(a2 + 16) + 1;
    v27 = a1 + 32;
    v28 = v2;
    v25 = v9;
    v26 = (a2 + 64);
    do
    {
      v10 = (v7 + 16 * v6);
      v29 = v6 + 1;
      v30 = v3;
      v12 = *v10;
      v11 = v10[1];
      v13 = v9;
      v3 = v8;
      while (1)
      {
        if (!--v13)
        {
          sub_21B239564();
          swift_allocError();
          *v23 = v12;
          *(v23 + 8) = v11;
          *(v23 + 16) = 5;
          swift_willThrow();

          return v3;
        }

        v15 = *(v3 - 4);
        v14 = *(v3 - 3);
        v17 = *(v3 - 2);
        v16 = *(v3 - 1);
        v18 = *v3;
        if (v15 == v12 && v14 == v11)
        {
          break;
        }

        v3 += 5;
        if (sub_21B34B9F4())
        {
          goto LABEL_12;
        }
      }

      v15 = v12;
LABEL_12:
      v3 = v30;
      v20 = v30[2];
      v21 = v30[3];

      if (v20 >= v21 >> 1)
      {
        sub_21B254388((v21 > 1), v20 + 1, 1);
        v3 = v30;
      }

      v3[2] = v20 + 1;
      v22 = &v3[5 * v20];
      v22[4] = v15;
      v22[5] = v14;
      v22[6] = v17;
      v22[7] = v16;
      v22[8] = v18;
      v6 = v29;
      v8 = v26;
      v7 = v27;
      v9 = v25;
    }

    while (v29 != v28);
  }

  return v3;
}

uint64_t CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29 = *a5;
  v20 = sub_21B34AB04();
  if ((v20 & 0x100) != 0 || (v21 = v20, v31 = a3, v32 = a4, v22 = sub_21B34AB04(), (v22 & 0x100) != 0))
  {
    result = sub_21B34B824();
    __break(1u);
  }

  else
  {
    v23 = v22;
    v24 = a7 & 1;

    v25 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v25 setFormatOptions_];
    v26 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v26 setFormatOptions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E460, &qword_21B352890);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_21B351EA0;
    result = swift_allocObject();
    *(result + 16) = v25;
    *(result + 24) = v26;
    *(result + 32) = xmmword_21B356570;
    *(result + 48) = xmmword_21B356580;
    *(v27 + 32) = sub_21B2FABE8;
    *(v27 + 40) = result;
    *a9 = a1 & 1;
    *(a9 + 8) = a2;
    *(a9 + 16) = v31;
    *(a9 + 24) = v32;
    *(a9 + 32) = v29;
    *(a9 + 40) = v27;
    *(a9 + 48) = a6 & 1;
    *(a9 + 49) = v24;
    *(a9 + 50) = a8 & 1;
    *(a9 + 51) = v21;
    *(a9 + 52) = v23;
  }

  return result;
}

uint64_t sub_21B2F9944@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21B2F99AC@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7F248, &qword_21B356598);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_21B34A8E4();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21B34A7E4();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B34A7C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B34A7A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21B34A7B4();
  MEMORY[0x28223BE20](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x277CC9458], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9468], v8);
  (*(v5 + 104))(v21, *MEMORY[0x277CC9480], v27);
  sub_21B34A8C4();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_21B34A7D4();
  }

  return result;
}

uint64_t CSVReadingOptions.nilEncodings.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t CSVReadingOptions.trueEncodings.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t CSVReadingOptions.falseEncodings.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t CSVReadingOptions.dateParsers.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t CSVReadingOptions.addDateParseStrategy<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v6 + 32))(v10 + v9, v8, a2);
  v11 = *(v3 + 40);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21B24A830(0, v11[2] + 1, 1, v11);
    v11 = result;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    result = sub_21B24A830((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_21B27D170;
  v15[5] = v10;
  *(v3 + 40) = v11;
  return result;
}

uint64_t CSVWritingOptions.dateFormat.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CSVWritingOptions.dateFormat.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CSVWritingOptions.dateFormatter.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_21B2FA358(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 24) = sub_21B2FAD98;
  *(a2 + 32) = v5;
  return result;
}

uint64_t CSVWritingOptions.dateFormatter.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t (*CSVWritingOptions.dateFormatter.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_21B2FA450;
}

uint64_t sub_21B2FA450(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 24) = v3;
    *(v4 + 32) = v2;
  }

  else
  {

    *(v4 + 24) = v3;
    *(v4 + 32) = v2;
  }

  return result;
}

uint64_t CSVWritingOptions.nilEncoding.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t CSVWritingOptions.nilEncoding.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t CSVWritingOptions.trueEncoding.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t CSVWritingOptions.trueEncoding.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t CSVWritingOptions.falseEncoding.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t CSVWritingOptions.falseEncoding.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t CSVWritingOptions.newline.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t CSVWritingOptions.newline.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t CSVWritingOptions.delimiter.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t CSVWritingOptions.delimiter.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v44 = a6;
  v45 = a7;
  v41 = a4;
  v42 = a5;
  v46 = a14;
  v40 = a10;
  v43 = a13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7F248, &qword_21B356598);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v39 - v20;
  v22 = sub_21B34A874();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);

  v26 = sub_21B2FAB04;
  if (a3)
  {
    v39 = a8;
    v27 = objc_allocWithZone(MEMORY[0x277CCA968]);

    v28 = [v27 init];
    sub_21B34A844();
    v29 = sub_21B34A854();
    (*(v23 + 8))(v25, v22);
    [v28 setLocale_];

    sub_21B34A8C4();
    v30 = sub_21B34A8E4();
    v31 = *(v30 - 8);
    v32 = 0;
    if ((*(v31 + 48))(v21, 1, v30) != 1)
    {
      v32 = sub_21B34A8D4();
      (*(v31 + 8))(v21, v30);
    }

    [v28 setTimeZone_];

    v33 = sub_21B34AC74();

    [v28 setDateFormat_];

    result = swift_allocObject();
    *(result + 16) = v28;
    v26 = sub_21B2FAC14;
    a8 = v39;
  }

  else
  {
    result = 0;
  }

  *a9 = a1 & 1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v26;
  *(a9 + 32) = result;
  v35 = v42;
  *(a9 + 40) = v41;
  *(a9 + 48) = v35;
  v36 = v45;
  *(a9 + 56) = v44;
  *(a9 + 64) = v36;
  v37 = v40;
  *(a9 + 72) = a8;
  *(a9 + 80) = v37;
  *(a9 + 88) = 10;
  *(a9 + 96) = 0xE100000000000000;
  v38 = v46;
  *(a9 + 104) = v43;
  *(a9 + 112) = v38;
  return result;
}

uint64_t sub_21B2FAA90(uint64_t a1, void *a2)
{
  v3 = sub_21B34A804();
  v4 = [a2 stringFromDate_];

  v5 = sub_21B34AC84();
  return v5;
}

uint64_t sub_21B2FAB04()
{
  v0 = sub_21B34A7F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B2F99AC(v3);
  v4 = sub_21B34A794();
  (*(v1 + 8))(v3, v0);
  return v4;
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21B2FAC38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
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

uint64_t sub_21B2FAC80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2FACE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B2FAD2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2FADD0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CSVWritingError.column.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t CSVWritingError.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_21B34B634();

  v12 = 0xD000000000000019;
  v13 = 0x800000021B34D1B0;
  v11[0] = v2;
  v6 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v6);

  MEMORY[0x21CEED5E0](0x206E6D756C6F6320, 0xE900000000000027);
  MEMORY[0x21CEED5E0](v1, v4);
  MEMORY[0x21CEED5E0](2112039, 0xE300000000000000);
  sub_21B260DC0(v3, v5);
  sub_21B2CB408(1024, v3, v5, v11);
  sub_21B2D062C(v11[0], v11[1]);
  v7 = MEMORY[0x21CEED760]();
  v9 = v8;

  MEMORY[0x21CEED5E0](v7, v9);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  return v12;
}

uint64_t sub_21B2FAF9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B2FAFE4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

int64_t sub_21B2FB03C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = sub_21B2FB104(a2, a3, a4);
  result = sub_21B2CB3D0(a1, v5);
  v10 = (v9 >> 1) - v8;
  if (v9 >> 1 == v8)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    if ((v9 >> 1) > v8)
    {
      v11 = (v7 + 8 * v8);
      while (1)
      {
        v12 = *v11++;
        result = v12;
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 < result)
        {
          goto LABEL_11;
        }

        sub_21B28DFBC(result, v13);
        if (!--v10)
        {
          swift_unknownObjectRelease();
          return 0;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B2FB104(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v5 = result;
  v6 = 0;
  v12 = MEMORY[0x277D84F90];
  v7 = (result + 40);
  v8 = a3;
  if (!a3)
  {
    goto LABEL_6;
  }

  while (1)
  {
    if (v8 != 1)
    {
      return v12;
    }

    v9 = *(v5 + 16);
    if (v6 == v9)
    {
      return v12;
    }

    if (v6 >= v9)
    {
      break;
    }

    v10 = *(v7 - 1);
    for (i = *v7; ; i = a2)
    {
      ++v6;
      result = sub_21B2708C0(v10, i);
      v7 += 2;
      v8 = a3;
      if (a3)
      {
        break;
      }

LABEL_6:
      if (v6 == 1)
      {
        return v12;
      }

      if (v6)
      {
        goto LABEL_13;
      }

      v10 = v5;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_21B2FB1D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0;
  result = 0;
  v6 = (a1 + 40);
  while (1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return 0;
      }

      v7 = *(a1 + 16);
      if (v4 == v7)
      {
        return result;
      }

      if (v4 >= v7)
      {
        goto LABEL_17;
      }

      v8 = *(v6 - 1);
      v9 = *v6;
    }

    else
    {
      if (v4 == 1)
      {
        return result;
      }

      if (v4)
      {
        goto LABEL_18;
      }

      v8 = a1;
      v9 = a2;
    }

    v10 = v9 - v8;
    if (__OFSUB__(v9, v8))
    {
      break;
    }

    ++v4;
    v6 += 2;
    v11 = __OFADD__(result, v10);
    result += v10;
    if (v11)
    {
      __break(1u);
      return 0;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21B2FB268@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    goto LABEL_33;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = (a3 + 56);
  while (1)
  {
    v12 = *v10;
    v10 += 6;
    v11 = v12;
    v13 = v7 + v12;
    if (__OFADD__(v7, v12))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v13 <= result)
    {
      goto LABEL_3;
    }

    if (v7 <= result)
    {
      break;
    }

    v14 = __OFADD__(v6, v11);
    v6 += v11;
    if (v14)
    {
      goto LABEL_25;
    }

    if (v7 < a2)
    {
      goto LABEL_14;
    }

LABEL_3:
    ++v9;
    v7 = v13;
    if (v4 == v9)
    {
      goto LABEL_21;
    }
  }

  v8 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_26;
  }

  v15 = v11 - v8;
  if (__OFSUB__(v11, v8))
  {
    goto LABEL_27;
  }

  v14 = __OFADD__(v6, v15);
  v6 += v15;
  if (v14)
  {
    goto LABEL_28;
  }

  v5 = v9;
  if (v7 >= a2)
  {
    goto LABEL_3;
  }

LABEL_14:
  if (v13 < a2)
  {
    goto LABEL_3;
  }

  v4 = v9 + 1;
  if (v9 + 1 < v5)
  {
    goto LABEL_30;
  }

  v16 = a2 - v7;
  if (__OFSUB__(a2, v7))
  {
    goto LABEL_31;
  }

  v17 = v11 - v16;
  if (__OFSUB__(v11, v16))
  {
    goto LABEL_32;
  }

  v14 = __OFSUB__(v6, v17);
  v6 -= v17;
  if (!v14)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_21:
  if (v4 >= v5)
  {
    v16 = *(a3 + 48 * v4 + 8);
LABEL_23:
    *a4 = v5;
    a4[1] = v4;
    a4[2] = v8;
    a4[3] = v16;
    a4[4] = v6;
    return result;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_21B2FB36C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(result + 48 * v2 + 8);
    v5 = (result + 56);
    v6 = *(result + 16);
    while (1)
    {
      v7 = *v5;
      v5 += 6;
      v8 = __OFADD__(v3, v7);
      v3 += v7;
      if (v8)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = 0;
LABEL_7:
    *a2 = 0;
    a2[1] = v2;
    a2[2] = 0;
    a2[3] = v4;
    a2[4] = v3;
  }

  return result;
}

uint64_t sub_21B2FB3C0(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21B2FB468(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_21B2FB720(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t sub_21B2FBAAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B2FBB38(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_21B2FBD14(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_21B2FBFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for Tuple2(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t sub_21B2FC0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_21B34AC54())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for Tuple2(0, v12);
    v10 = sub_21B34AC54();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_21B2FC1EC(uint64_t a1)
{
  v26 = a1;
  v1 = *(a1 + 24);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v25 - v7;
  v9 = *(v6 + 16);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v27 = 0x28656C707554;
  v28 = 0xE600000000000000;
  v16 = *(v10 + 16);
  v16(&v25 - v14);
  (v16)(v13, v15, v9);
  v17 = sub_21B34AD54();
  v19 = v18;
  (*(v10 + 8))(v15, v9);
  MEMORY[0x21CEED5E0](v17, v19);

  MEMORY[0x21CEED5E0](8236, 0xE200000000000000);
  v20 = *(v2 + 16);
  v20(v8, v25 + *(v26 + 52), v1);
  v20(v5, v8, v1);
  v21 = sub_21B34AD54();
  v23 = v22;
  (*(v2 + 8))(v8, v1);
  MEMORY[0x21CEED5E0](v21, v23);

  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  return v27;
}

uint64_t sub_21B2FC488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v20[5] = a10;
  v18 = type metadata accessor for Tuple3(0, v20);
  (*(*(a5 - 8) + 32))(a9 + *(v18 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a9 + *(v18 + 72), a3, a6);
}

uint64_t sub_21B2FC5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_21B34AC54() & 1) != 0 && (v16[0] = a3, v16[1] = a4, v16[2] = a5, v16[3] = a6, v16[4] = a7, v16[5] = a8, type metadata accessor for Tuple3(0, v16), (sub_21B34AC54()))
  {
    v14 = sub_21B34AC54();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_21B2FC67C(uint64_t a1, void *a2)
{
  sub_21B34AAB4();
  sub_21B34AAB4();
  return sub_21B34AAB4();
}

uint64_t sub_21B2FC6E8(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_21B34BBC4();
  a2(v5, a1);
  return sub_21B34BC24();
}

uint64_t sub_21B2FC788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_21B34BBC4();
  a4(v7, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B2FC7F0(uint64_t a1)
{
  v45 = *(a1 + 32);
  v44 = *(v45 - 8);
  v2 = MEMORY[0x28223BE20](a1);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v42 = &v40 - v5;
  v6 = *(v4 + 24);
  v40 = v4;
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = *(v10 + 16);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_21B34B634();

  v46 = 0x28656C707554;
  v47 = 0xE600000000000000;
  v20 = *(v14 + 16);
  v20(v19, v1, v13);
  v20(v17, v19, v13);
  v21 = sub_21B34AD54();
  v23 = v22;
  (*(v14 + 8))(v19, v13);
  MEMORY[0x21CEED5E0](v21, v23);

  MEMORY[0x21CEED5E0](8236, 0xE200000000000000);
  v24 = v40;
  v25 = *(v7 + 16);
  v26 = v1;
  v25(v12, v1 + *(v40 + 68), v6);
  v25(v41, v12, v6);
  v27 = sub_21B34AD54();
  v29 = v28;
  (*(v7 + 8))(v12, v6);
  MEMORY[0x21CEED5E0](v27, v29);

  MEMORY[0x21CEED5E0](8236, 0xE200000000000000);
  v31 = v44;
  v30 = v45;
  v32 = *(v44 + 16);
  v33 = v26 + *(v24 + 72);
  v34 = v42;
  v32(v42, v33, v45);
  v32(v43, v34, v30);
  v35 = v30;
  v36 = sub_21B34AD54();
  v38 = v37;
  (*(v31 + 8))(v34, v35);
  MEMORY[0x21CEED5E0](v36, v38);

  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  return v46;
}

uint64_t sub_21B2FCC28(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_21B34B1D4();
  if (!v19)
  {
    return sub_21B34AFD4();
  }

  v41 = v19;
  v45 = sub_21B34B774();
  v32 = sub_21B34B784();
  sub_21B34B744();
  result = sub_21B34B1B4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_21B34B314();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_21B34B764();
      result = sub_21B34B244();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RowGrouping.randomSplit(by:seed:)(double a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6)
{
  v23 = v6[1];
  v7 = v6[2];
  v43 = *v6;
  v8 = *(a6 + 16);
  v9 = *(a6 + 24);
  v38 = v8;
  v39 = v9;
  v40 = a1;
  v41 = a4;
  v42 = a5 & 1;
  v33 = v8;
  v34 = v9;
  v35 = sub_21B3035EC;
  v36 = &v37;
  sub_21B34B474();

  swift_getTupleTypeMetadata2();
  v10 = sub_21B34B054();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_21B2FCC28(sub_21B3036EC, v32, v10, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  v43 = v14;
  v30 = v8;
  v31 = v9;
  v15 = sub_21B34B054();
  v16 = swift_getTupleTypeMetadata2();
  v17 = swift_getWitnessTable();
  v19 = sub_21B2FCC28(sub_21B3039E4, v29, v15, v16, MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v18);
  v43 = v14;
  v27 = v8;
  v28 = v9;
  v21 = sub_21B2FCC28(sub_21B303CD4, v26, v15, v16, MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v20);

  RowGrouping.init<A>(groups:groupKeysColumnName:)(v19, v23, v7, v8, &type metadata for DataFrame.Slice, v9, &protocol witness table for DataFrame.Slice, a2);

  return RowGrouping.init<A>(groups:groupKeysColumnName:)(v21, v23, v7, v8, &type metadata for DataFrame.Slice, v9, &protocol witness table for DataFrame.Slice, a3);
}

TabularData::DataFrame __swiftcall RowGrouping.ungrouped()()
{
  v3 = v1;
  v4 = v2[1];
  v5 = v2[2];
  *&v35 = *v2;
  v6 = *(v0 + 24);
  v28 = *(v0 + 16);
  v29 = v6;
  v30 = v35;
  v31 = v4;
  v32 = v5;
  v23 = v28;
  v24 = v6;
  v25 = sub_21B303CF4;
  v26 = &v27;
  sub_21B34B474();

  swift_getTupleTypeMetadata2();
  v7 = sub_21B34B054();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_21B2FCC28(sub_21B303D04, v22, v7, &type metadata for DataFrame, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v10 + 48);
    v21 = *(v10 + 32);
    v35 = v21;
    v36 = v12;

    v14 = v11 - 1;
    if (v14)
    {
      v15 = (v10 + 72);
      do
      {
        v16 = *v15;
        v33 = *(v15 - 1);
        v34 = v16;
        v13.columns._rawValue = &v33;
        DataFrame.append(rowsOf:)(v13);
        v15 += 3;
        --v14;
      }

      while (v14);
      v21 = v35;
      v12 = v36;
    }

    *v3 = v21;
    *(v3 + 16) = v12;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
    *v3 = MEMORY[0x277D84F90];
    *(v3 + 8) = v20;
    v17 = sub_21B25DC2C(v20);
    *(v3 + 16) = v17;
  }

  result.columnIndicesByName._rawValue = v19;
  result.aliases._rawValue = v18;
  result.columns._rawValue = v17;
  return result;
}

void sub_21B2FD4BC(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4364(&v6, *(v4 + 16), a1);
    sub_21B2B0940(*(v4 + 16), *(v4 + 24));
    *(v4 + 16) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E180, &qword_21B351AB0);
    v5 = swift_allocObject();
    swift_beginAccess();
    sub_21B2B4360();
    *(v5 + 16) = v6;

    *v1 = v5;
  }
}

void sub_21B2FD5CC(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2AFD1C(*(v4 + 16), a1, &v6);
    sub_21B2B0954(*(v4 + 16));
    *(v4 + 16) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
    v5 = swift_allocObject();
    swift_beginAccess();
    sub_21B2AEFEC(*(v4 + 16), a1, &v6);
    *(v5 + 16) = v6;

    *v1 = v5;
  }
}

void sub_21B2FD6DC(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2AFF0C(*(v4 + 16), a1, &v6);
    sub_21B2B0A2C(*(v4 + 16));
    *(v4 + 16) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
    v5 = swift_allocObject();
    swift_beginAccess();
    sub_21B2AF188(*(v4 + 16), a1, &v6);
    *(v5 + 16) = v6;

    *v1 = v5;
  }
}

void sub_21B2FD7B0(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4364(&v6, *(v4 + 16), a1);
    sub_21B2B0C0C(*(v4 + 16), *(v4 + 24));
    *(v4 + 16) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3A8, &qword_21B351CB8);
    v5 = swift_allocObject();
    swift_beginAccess();
    sub_21B2B4360();
    *(v5 + 16) = v6;

    *v1 = v5;
  }
}

void sub_21B2FD884(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4364(&v6, *(v4 + 16), a1);
    sub_21B2B0D10(*(v4 + 16), *(v4 + 24));
    *(v4 + 16) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3C0, &qword_21B355BC0);
    v5 = swift_allocObject();
    swift_beginAccess();
    sub_21B2B4360();
    *(v5 + 16) = v6;

    *v1 = v5;
  }
}

void sub_21B2FD958(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4364(&v6, *(v4 + 16), a1);
    sub_21B2B0D24(*(v4 + 16), *(v4 + 24));
    *(v4 + 16) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E360, &qword_21B351C70);
    v5 = swift_allocObject();
    swift_beginAccess();
    sub_21B2B4360();
    *(v5 + 16) = v6;

    *v1 = v5;
  }
}

void sub_21B2FDA2C(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4364(&v6, *(v4 + 16), a1);
    sub_21B2B0D38(*(v4 + 16), *(v4 + 24));
    *(v4 + 16) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E358, &qword_21B351C68);
    v5 = swift_allocObject();
    swift_beginAccess();
    sub_21B2B4360();
    *(v5 + 16) = v6;

    *v1 = v5;
  }
}

void sub_21B2FDB00(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B0554(*(v4 + 16), a1, &v6);
    sub_21B2B0D4C(*(v4 + 16));
    *(v4 + 16) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E338, &qword_21B351C50);
    v5 = swift_allocObject();
    swift_beginAccess();
    sub_21B2AF50C(*(v4 + 16), a1, &v6);
    *(v5 + 16) = v6;

    *v1 = v5;
  }
}

void sub_21B2FDBD4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4364(&v6, *(v4 + 16), a1);
    sub_21B2B0E44(*(v4 + 16), *(v4 + 24));
    *(v4 + 16) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E320, &qword_21B351C38);
    v5 = swift_allocObject();
    swift_beginAccess();
    sub_21B2B4360();
    *(v5 + 16) = v6;

    *v1 = v5;
  }
}

void sub_21B2FDCE4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2AFD1C(*(v4 + 16), a1, &v6);
    sub_21B2B0B34(*(v4 + 16));
    *(v4 + 16) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B0, &unk_21B354470);
    v5 = swift_allocObject();
    swift_beginAccess();
    sub_21B2AF9E0(*(v4 + 16), a1, &v6);
    *(v5 + 16) = v6;

    *v1 = v5;
  }
}

uint64_t sub_21B2FDDB8(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4368();
    result = sub_21B2B436C();
    *(v4 + 16) = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4F8, &qword_21B354CA0);
    v6 = swift_allocObject();
    swift_beginAccess();
    sub_21B2AFB80(*(v4 + 16), a1, &v7);
    *(v6 + 16) = v7;

    *v1 = v6;
  }

  return result;
}

uint64_t sub_21B2FDE8C(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v5 + 8);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v10 = *(v9 + 16);
    if (v10)
    {
      if (*v10 < v7)
      {
        sub_21B2B3630(v7, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = *v11;
    if (*v11 >= v7)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
      v13 = swift_allocObject();
      sub_21B2AF188(v11, v12, v14);
      *(v13 + 16) = *v14;

      *v1 = v13;
      v9 = v13;
LABEL_14:
      swift_beginAccess();
      return sub_21B2B1010(a1, *(v9 + 16));
    }

    if (v12 + 0x4000000000000000 >= 0)
    {
      if (2 * v12 <= v7)
      {
        v12 = v7;
      }

      else
      {
        v12 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE000()
{
  v1 = *v0;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 8);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v8 = *(v7 + 16);
    if (v8)
    {
      if (*v8 < v5)
      {
        sub_21B2B3794(v5, 1);
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  result = swift_beginAccess();
  v9 = *(v7 + 16);
  if (v9)
  {
    if (*v9 >= v5 || *v9 + 0x4000000000000000 >= 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3A8, &qword_21B351CB8);
      v10 = swift_allocObject();
      sub_21B2B4360();
      *(v10 + 16) = v11;

      *v0 = v10;
LABEL_11:
      swift_beginAccess();
      return sub_21B2B4374();
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE174(uint64_t a1, char a2)
{
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = *(v7 + 8);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v12 = *(v11 + 16);
    if (v12)
    {
      if (*v12 < v9)
      {
        sub_21B2B3508(v9, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = *v13;
    if (*v13 >= v9)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
      v15 = swift_allocObject();
      sub_21B2AEE64(v13, v14, v16);
      *(v15 + 16) = *v16;

      *v2 = v15;
      v11 = v15;
LABEL_14:
      swift_beginAccess();
      return sub_21B2B0F30(a1, a2 & 1, *(v11 + 16));
    }

    if (v14 + 0x4000000000000000 >= 0)
    {
      if (2 * v14 <= v9)
      {
        v14 = v9;
      }

      else
      {
        v14 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE2F8()
{
  v1 = *v0;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 8);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v8 = *(v7 + 16);
    if (v8)
    {
      if (*v8 < v5)
      {
        sub_21B2B37A8(v5, 1);
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  result = swift_beginAccess();
  v9 = *(v7 + 16);
  if (v9)
  {
    if (*v9 >= v5 || *v9 + 0x4000000000000000 >= 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3C0, &qword_21B355BC0);
      v10 = swift_allocObject();
      sub_21B2B4360();
      *(v10 + 16) = v11;

      *v0 = v10;
LABEL_11:
      swift_beginAccess();
      return sub_21B2B4374();
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE46C(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v5 + 8);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v10 = *(v9 + 16);
    if (v10)
    {
      if (*v10 < v7)
      {
        sub_21B2B3688(v7, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = *v11;
    if (*v11 >= v7)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A8, &unk_21B354C90);
      v13 = swift_allocObject();
      sub_21B2AF39C(v11, v12, v14);
      *(v13 + 16) = *v14;

      *v1 = v13;
      v9 = v13;
LABEL_14:
      swift_beginAccess();
      return sub_21B2B133C(a1, *(v9 + 16));
    }

    if (v12 + 0x4000000000000000 >= 0)
    {
      if (2 * v12 <= v7)
      {
        v12 = v7;
      }

      else
      {
        v12 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE5E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v5 + 8);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v10 = *(v9 + 16);
    if (v10)
    {
      if (*v10 < v7)
      {
        sub_21B2B36A0(v7, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = *v11;
    if (*v11 >= v7)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E498, &unk_21B354490);
      v13 = swift_allocObject();
      sub_21B2AF858(v11, v12, v14);
      *(v13 + 16) = *v14;

      *v1 = v13;
      v9 = v13;
LABEL_14:
      swift_beginAccess();
      return sub_21B2B1400(a1 | ((HIDWORD(a1) & 1) << 32), *(v9 + 16));
    }

    if (v12 + 0x4000000000000000 >= 0)
    {
      if (2 * v12 <= v7)
      {
        v12 = v7;
      }

      else
      {
        v12 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE75C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = *(v7 + 8);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v12 = *(v11 + 16);
    if (v12)
    {
      if (*v12 < v9)
      {
        sub_21B2B365C(v9, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = *v13;
    if (*v13 >= v9)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B0, &unk_21B354470);
      v15 = swift_allocObject();
      sub_21B2AF9E0(v13, v14, v16);
      *(v15 + 16) = *v16;

      *v2 = v15;
      v11 = v15;
LABEL_14:
      swift_beginAccess();
      return sub_21B2B127C(a1, a2, *(v11 + 16));
    }

    if (v14 + 0x4000000000000000 >= 0)
    {
      if (2 * v14 <= v9)
      {
        v14 = v9;
      }

      else
      {
        v14 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE8E0()
{
  v1 = *v0;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 8);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v8 = *(v7 + 16);
    if (v8)
    {
      if (*v8 < v5)
      {
        sub_21B2B3520(v5, 1);
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  result = swift_beginAccess();
  v9 = *(v7 + 16);
  if (v9)
  {
    if (*v9 >= v5 || *v9 + 0x4000000000000000 >= 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E180, &qword_21B351AB0);
      v10 = swift_allocObject();
      sub_21B2B4360();
      *(v10 + 16) = v11;

      *v0 = v10;
LABEL_11:
      swift_beginAccess();
      return sub_21B2B4374();
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}
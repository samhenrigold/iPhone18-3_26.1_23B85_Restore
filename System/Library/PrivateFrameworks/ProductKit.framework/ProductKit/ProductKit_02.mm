void sub_260E36894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void, void))
{
  v43 = a6;
  v44 = a2;
  v39 = a4;
  v40 = a5;
  v45 = a3;
  v47 = a1;
  v8 = sub_260E68A24();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_260E68A44();
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54740, &unk_260E6D7C0);
  MEMORY[0x28223BE20](v41);
  v46 = &v39 - v12;
  v13 = sub_260E68904();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MarketingPartNumberURL(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  (*(v14 + 16))(v16, v47, v13);
  _Block_copy(a7);
  if (_s10ProductKit22MarketingPartNumberURLV7isValid3urlSb10Foundation0F0V_tFZ_0(v24))
  {
    (*(v14 + 32))(v19, v16, v13);
    sub_260E360EC(v19, v22);
    v25 = *(v43 + OBJC_IVAR___ProductKitCatalogInternal_catalog);
    v26 = v46;
    sub_260E36E34(v22, v46, type metadata accessor for MarketingPartNumberURL);
    v27 = (v26 + *(v41 + 36));
    sub_260E36150(v25 + 16, v27);
    if (sub_260E69764())
    {
      sub_260E15590();
      v28 = swift_allocError();
      *v29 = xmmword_260E6D7B0;
      *(v29 + 16) = 2;
      v30 = sub_260E68844();
      (a7)[2](a7, 0, 0, v30);
    }

    else
    {
      v34 = swift_allocObject();
      *(v34 + 16) = sub_260E36E1C;
      *(v34 + 24) = v23;
      __swift_project_boxed_opaque_existential_0(v27, v27[3]);

      v35 = sub_260E3589C();
      v37 = v36;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_260E36F38;
      *(v38 + 24) = v34;

      sub_260E61A78(v35, v37, v39, v40, sub_260E36F3C, v38);
    }

    sub_260E361B4(v22);
    sub_260E36210(v26);
  }

  else
  {
    sub_260E68A14();
    sub_260E35F84(MEMORY[0x277D84F90]);
    sub_260E36094();
    sub_260E68834();
    v31 = sub_260E68A34();
    (*(v42 + 8))(v11, v9);
    swift_willThrow();
    (*(v14 + 8))(v16, v13);
    v32 = v31;
    v33 = sub_260E68844();
    (a7)[2](a7, 0, 0, v33);
  }
}

uint64_t sub_260E36DE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260E36E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_260E36E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54768, &qword_260E6D800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_260E36F4C(uint64_t a1)
{
  v2 = sub_260E689E4();
  v3 = *(v2 - 8);
  v72 = v2;
  v73 = v3;
  MEMORY[0x28223BE20](v2);
  v71 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54780, &qword_260E6D818);
  MEMORY[0x28223BE20](v70);
  v69 = &v54 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8);
  MEMORY[0x28223BE20](v68);
  v67 = &v54 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  v56 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v54 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE547A8, &unk_260E6D840);
  MEMORY[0x28223BE20](v63);
  v62 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v61 = &v54 - v13;
  v74 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54798, &qword_260E6D830);
    v14 = sub_260E69744();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  v15 = v74 + 64;
  v16 = 1 << *(v74 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v74 + 64);
  v19 = (v16 + 63) >> 6;
  v58 = v73 + 32;
  v59 = v73 + 16;
  v55 = v14 + 8;

  v21 = 0;
  v60 = v15;
  v57 = v14;
  v65 = v8;
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return v14;
    }

    v18 = *(v15 + 8 * v23);
    ++v21;
    if (v18)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v25 = v24 | (v23 << 6);
        v26 = v73;
        v27 = (*(v74 + 48) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];
        v30 = v63;
        v31 = v61;
        v32 = v72;
        (*(v73 + 16))(&v61[*(v63 + 48)], *(v74 + 56) + *(v73 + 72) * v25, v72);
        *v31 = v29;
        v31[1] = v28;
        v33 = v62;
        sub_260E38F58(v31, v62, &qword_27FE547A8, &unk_260E6D840);
        v34 = *(v30 + 48);
        v35 = *(v70 + 48);
        v36 = *v33;
        v37 = v33[1];
        (*(v26 + 32))(v71, v33 + v34, v32);

        v38 = v69;
        v39 = v37;
        swift_dynamicCast();
        v40 = *(v68 + 48);
        v41 = &v38[v35];
        v42 = v67;
        sub_260E38F58(v41, &v67[v40], &qword_27FE54710, &qword_260E6D688);
        v43 = &v42[v40];
        v44 = v64;
        sub_260E38F58(v43, v64, &qword_27FE54710, &qword_260E6D688);
        v45 = v65;
        v46 = v36;
        sub_260E38F58(v44, v65, &qword_27FE54710, &qword_260E6D688);
        v47 = v36;
        v14 = v57;
        result = sub_260E35BFC(v47, v37);
        v48 = result;
        if (v49)
        {
          v22 = (v14[6] + 16 * result);
          *v22 = v46;
          v22[1] = v37;

          result = sub_260E38EE8(v45, v14[7] + *(v56 + 72) * v48);
          v21 = v23;
          v15 = v60;
          if (!v18)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v15 = v60;
          if (v14[2] >= v14[3])
          {
            goto LABEL_20;
          }

          *(v55 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
          v50 = (v14[6] + 16 * result);
          *v50 = v46;
          v50[1] = v39;
          result = sub_260E38F58(v45, v14[7] + *(v56 + 72) * result, &qword_27FE54710, &qword_260E6D688);
          v51 = v14[2];
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            goto LABEL_21;
          }

          v14[2] = v53;
          v21 = v23;
          if (!v18)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v23 = v21;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_260E374E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54780, &qword_260E6D818) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8);
  v7 = *a1;
  v6 = a1[1];
  sub_260E38E70(a1 + v4, a2 + *(v5 + 48));
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_260E37570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54798, &qword_260E6D830);
  v40 = v4;
  result = sub_260E69734();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_260E38F58(v28, v41, &qword_27FE54710, &qword_260E6D688);
      }

      else
      {
        sub_260E38E70(v28, v41);
      }

      sub_260E698F4();
      sub_260E690C4();
      result = sub_260E69914();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_260E38F58(v41, *(v9 + 56) + v27 * v17, &qword_27FE54710, &qword_260E6D688);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_260E378D0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_260E695D4() + 1) & ~v5;
    while (1)
    {
      sub_260E698F4();

      sub_260E690C4();
      v9 = sub_260E69914();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_260E37AD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54798, &qword_260E6D830);
  v4 = *v0;
  v5 = sub_260E69724();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_260E38E70(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_260E38F58(v25, *(v27 + 56) + v26, &qword_27FE54710, &qword_260E6D688);
      }

      while (v15);
    }

    v18 = v10;
    v6 = v32;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void sub_260E37D1C(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54780, &qword_260E6D818);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54778, &qword_260E6D810);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = (&v40 - v13);
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v40 = v5;
  v45 = v19;
  if (v20)
  {
    v41 = a1;
    v21 = v18;
LABEL_11:
    v25 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v21 << 6);
    v27 = (*(v16 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    sub_260E38E70(*(v16 + 56) + *(v42 + 72) * v26, v8);
    v30 = v44;
    v31 = *(v44 + 48);
    *v15 = v29;
    v15[1] = v28;
    v32 = v8;
    v33 = v30;
    sub_260E38F58(v32, v15 + v31, &qword_27FE54710, &qword_260E6D688);
    v34 = v43;
    (*(v43 + 56))(v15, 0, 1, v33);

    v24 = v21;
    v35 = v34;
    a1 = v41;
LABEL_12:
    *v1 = v16;
    v1[1] = v17;
    v1[2] = v45;
    v1[3] = v24;
    v1[4] = v25;
    v36 = v1[5];
    sub_260E38F58(v15, v11, &qword_27FE54778, &qword_260E6D810);
    v37 = 1;
    if ((*(v35 + 48))(v11, 1, v33) != 1)
    {
      v38 = v40;
      sub_260E38F58(v11, v40, &qword_27FE54780, &qword_260E6D818);
      v36(v38);
      sub_260E155E4(v38, &qword_27FE54780, &qword_260E6D818);
      v37 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8);
    (*(*(v39 - 8) + 56))(a1, v37, 1, v39);
  }

  else
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        v35 = v43;
        v33 = v44;
        (*(v43 + 56))(&v40 - v13, 1, 1, v44, v14);
        v25 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v21);
      ++v18;
      if (v20)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

unint64_t sub_260E380E4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_260E68FF4();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_9:
    sub_260E155E4(&v9, &qword_27FE542C8, &qword_260E6BFE0);
    return sub_260E66BA4(MEMORY[0x277D84F90]);
  }

  v3 = sub_260E68FF4();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_260E695C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE547A0, &qword_260E6D838);
  if (swift_dynamicCast())
  {
    v5 = sub_260E36F4C(v7);

    return v5;
  }

  return sub_260E66BA4(MEMORY[0x277D84F90]);
}

uint64_t sub_260E38268(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54790, &qword_260E6D828);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v39 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v40 = a1;
  v41 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v42 = v17;
  v43 = 0;
  v44 = v20 & v18;
  v45 = a2;
  v46 = a3;

  v39[1] = a3;

  while (1)
  {
    sub_260E37D1C(v15);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8);
    if ((*(*(v21 - 8) + 48))(v15, 1, v21) == 1)
    {
      sub_260E38EE0(v40);
    }

    v23 = *v15;
    v22 = v15[1];
    sub_260E38F58(v15 + *(v21 + 48), v12, &qword_27FE54710, &qword_260E6D688);
    v24 = *a5;
    v26 = sub_260E35BFC(v23, v22);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (a4)
      {
        v33 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_260E37AD4();
        v33 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_260E38EE8(v12, v33[7] + *(v47 + 72) * v26);
      a4 = 1;
    }

    else
    {
      sub_260E37570(v29, a4 & 1);
      v31 = sub_260E35BFC(v23, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v26 = v31;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_14:
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v23;
      v34[1] = v22;
      sub_260E38F58(v12, v33[7] + *(v47 + 72) * v26, &qword_27FE54710, &qword_260E6D688);
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_20;
      }

      v33[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_260E69874();
  __break(1u);
  return result;
}

void sub_260E385B4(uint64_t a1)
{
  v66 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54770, &qword_260E6D808);
  MEMORY[0x28223BE20](v1 - 8);
  v62 = v60 - v2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  v68 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v69 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54778, &qword_260E6D810);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v60 - v10;
  v12 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v60[1] = "tKit.updateVideoPlaneSize";
  v13 = sub_260E68FF4();
  v14 = [v12 initWithSuiteName_];

  if (v14)
  {
    v15 = sub_260E68FF4();
    v16 = [v14 objectForKey_];

    if (v16)
    {
      sub_260E695C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
    }

    v72 = v70;
    v73 = v71;
    if (*(&v71 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54788, &qword_260E6D820);
      if (swift_dynamicCast())
      {
        v17 = v70;
        v18 = v66;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v72 = v17;
        sub_260E38268(v18, sub_260E374E4, 0, isUniquelyReferenced_nonNull_native, &v72);
        v60[0] = 0;
        swift_bridgeObjectRelease_n();
        v66 = v72;
      }

      else
      {
        v60[0] = 0;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
  }

  v60[0] = 0;
  sub_260E155E4(&v72, &qword_27FE542C8, &qword_260E6BFE0);
LABEL_11:
  v20 = v66 + 64;
  v21 = 1 << *(v66 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v66 + 64);
  v24 = (v21 + 63) >> 6;
  v61 = (v68 + 56);
  v25 = 0;

  v64 = v8;
  v67 = v11;
  while (v23)
  {
    v27 = v25;
LABEL_26:
    v30 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v31 = v30 | (v27 << 6);
    v32 = v65;
    v33 = (*(v66 + 48) + 16 * v31);
    v35 = *v33;
    v34 = v33[1];
    sub_260E38E70(*(v66 + 56) + *(v68 + 72) * v31, v65);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54780, &qword_260E6D818);
    v37 = *(v36 + 48);
    v38 = v64;
    *v64 = v35;
    *(v38 + 1) = v34;
    v39 = v32;
    v8 = v38;
    sub_260E38F58(v39, &v38[v37], &qword_27FE54710, &qword_260E6D688);
    (*(*(v36 - 8) + 56))(v8, 0, 1, v36);

LABEL_27:
    v40 = v67;
    sub_260E38F58(v8, v67, &qword_27FE54778, &qword_260E6D810);
    v41 = v40;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54780, &qword_260E6D818);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {

      v55 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v56 = sub_260E68FF4();
      v57 = [v55 initWithSuiteName_];

      if (v57)
      {
        v58 = sub_260E68F84();

        v59 = sub_260E68FF4();
        [v57 setObject:v58 forKey:v59];
      }

      else
      {
      }

      return;
    }

    v43 = *v41;
    v44 = v41[1];
    v45 = v41 + *(v42 + 48);
    v46 = v69;
    sub_260E38F58(v45, v69, &qword_27FE54710, &qword_260E6D688);
    v47 = sub_260E689E4();
    if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
    {
      v48 = sub_260E35BFC(v43, v44);
      v50 = v49;

      if (v50)
      {
        v51 = swift_isUniquelyReferenced_nonNull_native();
        *&v72 = v26;
        if (!v51)
        {
          sub_260E37AD4();
          v26 = v72;
        }

        v52 = v62;
        sub_260E38F58(*(v26 + 56) + *(v68 + 72) * v48, v62, &qword_27FE54710, &qword_260E6D688);
        sub_260E378D0(v48, v26);
        v53 = 0;
      }

      else
      {
        v53 = 1;
        v52 = v62;
      }

      (*v61)(v52, v53, 1, v63);
      sub_260E155E4(v52, &qword_27FE54770, &qword_260E6D808);
    }

    else
    {
    }

    sub_260E155E4(v69, &qword_27FE54710, &qword_260E6D688);
  }

  if (v24 <= v25 + 1)
  {
    v28 = v25 + 1;
  }

  else
  {
    v28 = v24;
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54780, &qword_260E6D818);
      (*(*(v54 - 8) + 56))(v8, 1, 1, v54);
      v23 = 0;
      v25 = v29;
      goto LABEL_27;
    }

    v23 = *(v20 + 8 * v27);
    ++v25;
    if (v23)
    {
      v25 = v27;
      goto LABEL_26;
    }
  }

  __break(1u);
}

BOOL sub_260E38D68()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_260E68FF4();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_260E68FF4();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  sub_260E69024();

  v5 = sub_260E69764();

  return v5 == 1;
}

uint64_t sub_260E38E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E38EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E38F58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_260E38FD4()
{
  result = qword_27FE547B0;
  if (!qword_27FE547B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE547B0);
  }

  return result;
}

uint64_t sub_260E39050(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000004C5FLL;
  v3 = a1;
  v4 = 0xEA0000000000525FLL;
  if (a1 == 4)
  {
    v4 = 0xEA00000000004C5FLL;
  }

  if (a1 == 3)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0x64726143786F7250;
  }

  if (a1 == 3)
  {
    v6 = 0x8000000260E71220;
  }

  else
  {
    v6 = v4;
  }

  v7 = 0x8000000260E710A0;
  v8 = 0xD00000000000001CLL;
  v9 = 0x8000000260E710C0;
  v10 = 0xD00000000000001DLL;
  if (v3 != 1)
  {
    v10 = 0xD00000000000001ALL;
    v9 = 0x8000000260E71200;
  }

  if (v3)
  {
    v8 = v10;
    v7 = v9;
  }

  if (v3 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v3 <= 2)
  {
    v12 = v7;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x8000000260E71220;
      if (v11 != 0xD00000000000001BLL)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xEA0000000000525FLL;
      }

      if (v11 != 0x64726143786F7250)
      {
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x8000000260E710C0;
      if (v11 != 0xD00000000000001DLL)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v2 = 0x8000000260E71200;
      if (v11 != 0xD00000000000001ALL)
      {
LABEL_36:
        v13 = sub_260E69834();
        goto LABEL_37;
      }
    }
  }

  else
  {
    v2 = 0x8000000260E710A0;
    if (v11 != 0xD00000000000001CLL)
    {
      goto LABEL_36;
    }
  }

  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_260E391D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = 0xD000000000000017;
  v4 = "BatterySwap_loop";
  v5 = a1;
  if (a1 == 5)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (a1 == 5)
  {
    v7 = "ProxCard_loop-charged";
  }

  else
  {
    v7 = "ProxCard_loop-charging";
  }

  v8 = 0xD000000000000015;
  if (a1 == 3)
  {
    v9 = 0xD000000000000011;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (v5 == 3)
  {
    v10 = "ProxCard_case-open-charging";
  }

  else
  {
    v10 = "ProxCard_connect-loop";
  }

  if (v5 > 4)
  {
    v9 = v6;
    v10 = v7;
  }

  if (v5 == 1)
  {
    v11 = "ProxCard_features";
  }

  else
  {
    v8 = 0xD000000000000011;
    v11 = "oxCard_L";
  }

  if (v5)
  {
    v3 = v8;
    v12 = v11;
  }

  else
  {
    v12 = "BatterySwap_loop";
  }

  if (v5 > 2)
  {
    v13 = v10;
  }

  else
  {
    v9 = v3;
    v13 = v12;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD000000000000015;
        v4 = "ProxCard_features";
      }

      else
      {
        v4 = "oxCard_L";
      }
    }

    else
    {
      v2 = 0xD000000000000017;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000016;
      v4 = "ProxCard_loop-charged";
    }

    else
    {
      v2 = 0xD000000000000014;
      v4 = "ProxCard_loop-charging";
    }
  }

  else if (a2 == 3)
  {
    v4 = "ProxCard_case-open-charging";
  }

  else
  {
    v2 = 0xD000000000000015;
    v4 = "ProxCard_connect-loop";
  }

  if (v9 == v2 && (v13 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_260E69834();
  }

  return v14 & 1;
}

uint64_t sub_260E39370(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000004C5FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xEA00000000004C5FLL;
    }

    else
    {
      v5 = 0xEA0000000000525FLL;
    }

    v4 = 0x64726143786F7250;
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000001DLL;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v3)
    {
      v5 = 0x8000000260E710C0;
    }

    else
    {
      v5 = 0x8000000260E710A0;
    }
  }

  if (a2 != 2)
  {
    v2 = 0xEA0000000000525FLL;
  }

  v6 = 0xD00000000000001CLL;
  v7 = 0x8000000260E710C0;
  if (a2)
  {
    v6 = 0xD00000000000001DLL;
  }

  else
  {
    v7 = 0x8000000260E710A0;
  }

  if (a2 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x64726143786F7250;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_260E69834();
  }

  return v10 & 1;
}

uint64_t sub_260E39488(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = 0xD000000000000017;
  v4 = "BatterySwap_loop";
  v5 = a1;
  if (a1 == 4)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (a1 == 4)
  {
    v7 = "ProxCard_loop-charged";
  }

  else
  {
    v7 = "ProxCard_loop-charging";
  }

  if (a1 == 3)
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v8 = v6;
  }

  if (v5 == 3)
  {
    v9 = "ProxCard_connect-loop";
  }

  else
  {
    v9 = v7;
  }

  if (v5 == 1)
  {
    v10 = 0xD000000000000015;
  }

  else
  {
    v10 = 0xD000000000000011;
  }

  if (v5 == 1)
  {
    v11 = "ProxCard_features";
  }

  else
  {
    v11 = "oxCard_L";
  }

  if (v5)
  {
    v3 = v10;
    v12 = v11;
  }

  else
  {
    v12 = "BatterySwap_loop";
  }

  if (v5 > 2)
  {
    v13 = v9;
  }

  else
  {
    v8 = v3;
    v13 = v12;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v4 = "ProxCard_connect-loop";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000016;
      v4 = "ProxCard_loop-charged";
    }

    else
    {
      v2 = 0xD000000000000014;
      v4 = "ProxCard_loop-charging";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v4 = "ProxCard_features";
    }

    else
    {
      v2 = 0xD000000000000011;
      v4 = "oxCard_L";
    }
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (v8 == v2 && (v13 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_260E69834();
  }

  return v14 & 1;
}

uint64_t sub_260E395F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000706F6F6C5FLL;
  v3 = 0x64726143786F7250;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (v4)
    {
      v8 = 0x8000000260E71010;
    }

    else
    {
      v8 = 0x8000000260E70FF0;
    }
  }

  else
  {
    v5 = 0x5F656C6261736944;
    v6 = 0xEC000000706F6F6CLL;
    if (a1 == 3)
    {
      v5 = 0x64726143786F7250;
      v6 = 0xED0000706F6F6C5FLL;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000017;
    }

    else
    {
      v7 = v5;
    }

    if (v4 == 2)
    {
      v8 = 0x8000000260E71030;
    }

    else
    {
      v8 = v6;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (a2)
    {
      v2 = 0x8000000260E71010;
    }

    else
    {
      v2 = 0x8000000260E70FF0;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v2 = 0x8000000260E71030;
      if (v7 != 0xD000000000000017)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (a2 != 3)
    {
      v2 = 0xEC000000706F6F6CLL;
      if (v7 != 0x5F656C6261736944)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }
  }

  if (v7 != v3)
  {
LABEL_31:
    v9 = sub_260E69834();
    goto LABEL_32;
  }

LABEL_28:
  if (v8 != v2)
  {
    goto LABEL_31;
  }

  v9 = 1;
LABEL_32:

  return v9 & 1;
}

uint64_t sub_260E39794()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE547B8);
  v1 = __swift_project_value_buffer(v0, qword_27FE547B8);
  if (qword_27FE53E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t HeadphonePairing.Configuration.engravingInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_260E16198(v2, v3, v4, v5);
}

__n128 HeadphonePairing.Configuration.engravingInformation.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_260E15F78(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

char *HeadphonePairing.Configuration.init(hardwareModel:color:timeout:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *result;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  *(a3 + 48) = -1;
  *(a3 + 16) = v4;
  *a3 = a2;
  *(a3 + 8) = a4;
  return result;
}

uint64_t HeadphonePairing.AssetRequest.assets()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  type metadata accessor for MobileAssetResult(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E399D0, 0, 0);
}

uint64_t sub_260E399D0()
{
  if (qword_27FE53DB0 != -1)
  {
    swift_once();
  }

  v1 = sub_260E68E94();
  v0[10] = __swift_project_value_buffer(v1, qword_27FE547B8);
  v2 = sub_260E68E74();
  v3 = sub_260E69474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v2, v3, "Beginning asset request", v4, 2u);
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

  v6 = sub_260E3A010(v5);
  v0[11] = v6;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_260E39B54;
  v8 = v0[9];

  return sub_260E3AE30(v8, v6);
}

uint64_t sub_260E39B54()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_260E39FA4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 112) = v3;
    *v3 = v2;
    v3[1] = sub_260E39CF0;

    return sub_260E3A180(v2 + 16);
  }
}

uint64_t sub_260E39CF0()
{

  return MEMORY[0x2822009F8](sub_260E39DEC, 0, 0);
}

uint64_t sub_260E39DEC()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  sub_260E423C8(v0[9], v1, type metadata accessor for MobileAssetResult);
  sub_260E3C3D8(v2, v3, v4, v5);
  v6 = sub_260E6848C();
  sub_260E41B44(v1, type metadata accessor for MobileAssetResult);
  v7 = sub_260E68E74();
  v8 = sub_260E69474();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_260E02000, v7, v8, "Finished asset request", v9, 2u);
    MEMORY[0x2666F1EF0](v9, -1, -1);

    sub_260E3C41C(v2, v3, v4, v5);
  }

  else
  {
    sub_260E3C41C(v2, v3, v4, v5);
  }

  v10 = v0[6];
  sub_260E41B44(v0[9], type metadata accessor for MobileAssetResult);
  *v10 = v6;
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;

  v11 = v0[1];

  return v11();
}

uint64_t sub_260E39FA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E3A010(uint64_t a1)
{
  v15 = HeadphoneHardwareModel.rawValue.getter();
  v16 = v2;
  MEMORY[0x2666F0C00](3307053, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548F0, &qword_260E6E260);
  v3 = (type metadata accessor for MobileAssetRequest(0) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_260E6BDD0;
  v7 = v6 + v5;

  sub_260E689F4();
  *(v7 + v3[7]) = 0;
  v8 = (v7 + v3[8]);
  *v8 = v15;
  v8[1] = v16;
  v9 = v7 + v3[9];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v7 + v4;
  v11 = *(v1 + 16);
  sub_260E689F4();
  *(v10 + v3[7]) = 1;
  v12 = (v10 + v3[8]);
  *v12 = v15;
  v12[1] = v16;
  v13 = v10 + v3[9];
  *v13 = v11;
  *(v13 + 8) = 0;
  return v6;
}

uint64_t sub_260E3A180(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_260E68904();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E3A240, 0, 0);
}

uint64_t sub_260E3A240()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 40);
  *(v0 + 152) = v2;
  v3 = *(v1 + 48);
  *(v0 + 160) = v3;
  v4 = *(v1 + 56);
  *(v0 + 168) = v4;
  v5 = *(v1 + 64);
  *(v0 + 248) = v5;
  if (v5 == 255)
  {
    v25 = *(v0 + 112);
    *v25 = 0;
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = 1;

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    sub_260E15E24(v2, v3, v4, v5);
    if (qword_27FE53DB0 != -1)
    {
      swift_once();
    }

    v6 = sub_260E68E94();
    *(v0 + 176) = __swift_project_value_buffer(v6, qword_27FE547B8);
    v7 = sub_260E68E74();
    v8 = sub_260E69474();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_260E02000, v7, v8, "Fetching engraved asset", v9, 2u);
      MEMORY[0x2666F1EF0](v9, -1, -1);
    }

    v10 = _sSo11CKContainerC10ProductKitE16AirTagsContainerABvgZ_0();
    *(v0 + 184) = v10;
    v11 = _sSo11CKContainerC10ProductKitE31PersonalizationManateeContainerABvgZ_0();
    *(v0 + 192) = v11;
    v12 = qword_27FE53DA8;
    v13 = v10;
    v14 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 128);
    v18 = __swift_project_value_buffer(v17, qword_27FE54558);
    (*(v16 + 16))(v15, v18, v17);
    type metadata accessor for PersonalizationAssetManager();
    swift_allocObject();
    v19 = PersonalizationAssetManager.init(container:manateeContainer:cacheDirectory:)(v13, v14, v15);
    *(v0 + 200) = v19;
    v20 = swift_allocObject();
    *(v0 + 208) = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v2;
    *(v20 + 32) = v3;
    *(v20 + 40) = v4;
    *(v20 + 48) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54898, &qword_260E6E1A0);
    inited = swift_initStackObject();
    *(v0 + 216) = inited;
    *(inited + 16) = xmmword_260E6BDB0;
    *(inited + 32) = 1;
    *(inited + 40) = &unk_260E6E198;
    *(inited + 48) = v20;
    sub_260E16198(v2, v3, v4, v5);

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A0, &qword_260E6E1A8);
    v23 = swift_task_alloc();
    *(v0 + 224) = v23;
    *(v23 + 16) = inited;
    *(v23 + 24) = 0x3FF0000000000000;
    v24 = swift_task_alloc();
    *(v0 + 232) = v24;
    *v24 = v0;
    v24[1] = sub_260E3A608;

    return MEMORY[0x282200740](v0 + 72, v22);
  }
}

uint64_t sub_260E3A608()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_260E3A828;
  }

  else
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A8, &qword_260E6E1C0);
    swift_arrayDestroy();

    v2 = sub_260E3A760;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E3A760()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 248);

  sub_260E15F78(v4, v3, v2, v6);

  v7 = *(v0 + 88);
  *v5 = *(v0 + 72);
  v5[1] = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_260E3A828()
{
  v23 = v0;
  v1 = *(v0 + 240);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A8, &qword_260E6E1C0);
  swift_arrayDestroy();

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    v20 = *(v0 + 160);
    v21 = *(v0 + 168);
    v8 = *(v0 + 152);
    v9 = *(v0 + 248);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v0 + 104) = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_260E02000, v5, v6, "Failed to fetch engraving information: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
    sub_260E15F78(v8, v20, v21, v9);
  }

  else
  {
    v16 = *(v0 + 240);
    sub_260E15F78(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 248));
  }

  v17 = *(v0 + 112);
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 1;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_260E3AA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a1;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  v7 = swift_task_alloc();
  *(v6 + 88) = v7;
  *v7 = v6;
  v7[1] = sub_260E3AB1C;

  return PersonalizationAssetManager.asset(for:)(v6 + 16, v6 + 48);
}

uint64_t sub_260E3AB1C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_260E1C6CC;
  }

  else
  {
    v2 = sub_260E3AC30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E3AC30()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_260E3AC54(uint64_t *a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  v16 = *(a1 + 3);
  v13 = a1[5];
  LOBYTE(a1) = *(a1 + 48);
  v14 = *v8;
  v18 = type metadata accessor for MobileAssetManager();
  v19 = &off_2873619E8;
  *&v17 = v14;
  *(v4 + 16) = v10;
  *(v4 + 24) = v11;
  *(v4 + 32) = v12;
  *(v4 + 40) = v16;
  *(v4 + 56) = v13;
  *(v4 + 64) = a1;
  sub_260E41B2C(&v17, v4 + 72);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v4;
}

uint64_t HeadphonePairing.AssetRequest.deinit()
{
  sub_260E15F78(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  return v0;
}

uint64_t HeadphonePairing.AssetRequest.__deallocating_deinit()
{
  sub_260E15F78(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_260E3AE30(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for MobileAssetRequest(0);
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v3[17] = *(v5 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E3AF08, 0, 0);
}

uint64_t sub_260E3AF08()
{
  v1 = *(v0 + 104);
  sub_260E36150(*(v0 + 112) + 72, v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = *(v0 + 152);
    v3 = *(v0 + 128);
    v23 = *(*(v0 + 120) + 20);
    v4 = *(v3 + 80);
    v5 = *(v0 + 104) + ((v4 + 32) & ~v4);
    v21 = (v4 + 16) & ~v4;
    v22 = *(v3 + 72);
    v6 = (*(v0 + 136) + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x277D84F90];
    do
    {
      v9 = *(v0 + 144);
      v8 = *(v0 + 152);
      sub_260E423C8(v5, v8, type metadata accessor for MobileAssetRequest);
      if (*(v24 + v23))
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      sub_260E428BC(v8, v9, type metadata accessor for MobileAssetRequest);
      sub_260E36150(v0 + 16, v0 + 56);
      v11 = swift_allocObject();
      sub_260E428BC(v9, v11 + v21, type metadata accessor for MobileAssetRequest);
      sub_260E41B2C((v0 + 56), v11 + v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_260E41EB0(0, v7[2] + 1, 1, v7);
      }

      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        v7 = sub_260E41EB0((v12 > 1), v13 + 1, 1, v7);
      }

      v7[2] = v13 + 1;
      v14 = &v7[3 * v13];
      v14[4] = v10;
      v14[5] = &unk_260E6E1F0;
      v14[6] = v11;
      v5 += v22;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *(v0 + 160) = v7;
  v15 = *(*(v0 + 112) + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548B8, &qword_260E6E1F8);
  type metadata accessor for MobileAssetResult(0);
  v17 = swift_task_alloc();
  *(v0 + 168) = v17;
  *(v17 + 16) = v7;
  *(v17 + 24) = v15;
  v18 = swift_task_alloc();
  *(v0 + 176) = v18;
  *v18 = v0;
  v18[1] = sub_260E3B1E8;
  v19 = *(v0 + 96);

  return MEMORY[0x282200740](v19, v16);
}

uint64_t sub_260E3B1E8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_260E3B384;
  }

  else
  {

    v2 = sub_260E3B30C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E3B30C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E3B384()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

id HeadphonePairing.Assets.personalizationAsset.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_260E3C3D8(v2, v3, v4, v5);
}

ProductKit::HeadphonePairing::Assets::AdjustedImageIdentifier_optional __swiftcall HeadphonePairing.Assets.AdjustedImageIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HeadphonePairing.Assets.AdjustedImageIdentifier.rawValue.getter()
{
  v1 = 0xD00000000000001CLL;
  if (*v0)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x64726143786F7250;
  }
}

uint64_t sub_260E3B50C()
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E3B5CC(uint64_t a1)
{
  sub_260E690C4();
}

uint64_t sub_260E3B670(uint64_t a1)
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

void sub_260E3B738(unint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000525FLL;
  if (*v1 == 2)
  {
    v2 = 0xEA00000000004C5FLL;
  }

  v3 = 0xD00000000000001CLL;
  v4 = 0x8000000260E710A0;
  if (*v1)
  {
    v3 = 0xD00000000000001DLL;
    v4 = 0x8000000260E710C0;
  }

  if (*v1 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0x64726143786F7250;
    v5 = v2;
  }

  *a1 = v3;
  a1[1] = v5;
}

uint64_t HeadphonePairing.Assets.FileIdentifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_260E69764();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_260E3B83C()
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E3B8B0(uint64_t a1)
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E3B904@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_260E69764();

  *a2 = v3 != 0;
  return result;
}

ProductKit::HeadphonePairing::Assets::VideoIdentifier_optional __swiftcall HeadphonePairing.Assets.VideoIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HeadphonePairing.Assets.VideoIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000015;
  v2 = *v0;
  v3 = 0xD000000000000014;
  if (v2 == 4)
  {
    v3 = 0xD000000000000016;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = v3;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_260E3BAA8(uint64_t a1)
{
  sub_260E690C4();
}

void sub_260E3BB90(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = *v1;
  v4 = "ProxCard_connect-loop";
  v5 = "ProxCard_loop-charged";
  v6 = 0xD000000000000014;
  if (v3 == 4)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v5 = "ProxCard_loop-charging";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "ProxCard_features";
  if (v3 != 1)
  {
    v2 = 0xD000000000000011;
    v8 = "oxCard_L";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD000000000000017;
    v9 = "BatterySwap_loop";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v7;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

ProductKit::HeadphonePairing::Assets::ViewIdentifier_optional __swiftcall HeadphonePairing.Assets.ViewIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t HeadphonePairing.Assets.ViewIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_260E3BCF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = "ProxCard_repair-loop";
  }

  else
  {
    v4 = "caseClosedCharged";
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a2)
  {
    v6 = "caseClosedCharged";
  }

  else
  {
    v6 = "ProxCard_repair-loop";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_260E69834();
  }

  return v8 & 1;
}

uint64_t sub_260E3BD98()
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E3BE14(uint64_t a1)
{
  sub_260E690C4();
}

uint64_t sub_260E3BE7C(uint64_t a1)
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E3BEF4@<X0>(char *a2@<X8>)
{
  v3 = sub_260E69764();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_260E3BF54(unint64_t *a1@<X8>)
{
  v2 = "caseClosedCharged";
  v3 = 0xD000000000000011;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = "ProxCard_repair-loop";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

ProductKit::HeadphonePairing::Assets::VideoViewIdentifier_optional __swiftcall HeadphonePairing.Assets.VideoViewIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HeadphonePairing.Assets.VideoViewIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0x72616843706F6F6CLL;
  }

  else
  {
    return 0x6F72746E69;
  }
}

uint64_t sub_260E3C070(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEB00000000646567;
  if (v2 != 1)
  {
    v3 = 0xEC000000676E6967;
  }

  if (*a1)
  {
    v4 = 0x72616843706F6F6CLL;
  }

  else
  {
    v4 = 0x6F72746E69;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0xEB00000000646567;
  if (*a2 != 1)
  {
    v6 = 0xEC000000676E6967;
  }

  if (*a2)
  {
    v7 = 0x72616843706F6F6CLL;
  }

  else
  {
    v7 = 0x6F72746E69;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_260E69834();
  }

  return v9 & 1;
}

uint64_t sub_260E3C158()
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E3C208(uint64_t a1)
{
  sub_260E690C4();
}

uint64_t sub_260E3C2A4(uint64_t a1)
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

void sub_260E3C35C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEB00000000646567;
  if (v2 != 1)
  {
    v4 = 0xEC000000676E6967;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x72616843706F6F6CLL;
  }

  else
  {
    v6 = 0x6F72746E69;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

id sub_260E3C3D8(id result, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 1)
  {
    sub_260E15E4C(result, a2);

    return a4;
  }

  return result;
}

void sub_260E3C41C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 1)
  {
    sub_260E15FB4(a1, a2);
  }
}

uint64_t HeadphonePairing.Assets.adjustedImage(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  v8 = *a1;
  v9 = *v2;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v12 = 0xEA00000000004C5FLL;
    }

    else
    {
      v12 = 0xEA0000000000525FLL;
    }

    v11 = 0x64726143786F7250;
  }

  else
  {
    if (!*a1)
    {
      v10 = v9;
      v11 = 0xD00000000000001CLL;
      v12 = 0x8000000260E710A0;
      goto LABEL_13;
    }

    v12 = 0x8000000260E710C0;
    v11 = 0xD00000000000001DLL;
  }

  v13 = sub_260E69834();
  v14 = v9;

  if (v13)
  {
    goto LABEL_14;
  }

  if (v8 != 1)
  {
    v15 = sub_260E69834();

    if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_13:

LABEL_14:
  v21[0] = v11;
  v21[1] = v12;
  v21[2] = v9;
  v21[3] = 6778480;
  v21[4] = 0xE300000000000000;
  v22 = 1;
  GenericAsset.fileURL.getter(v7);
  v16 = sub_260E68904();
  v17 = (*(*(v16 - 8) + 48))(v7, 1, v16);
  sub_260E155E4(v7, &qword_27FE54320, &qword_260E6E720);
  if (v17 == 1)
  {

    v11 = 0xD000000000000014;
    v12 = 0x8000000260E72B10;
  }

LABEL_16:
  v18 = *(type metadata accessor for AdjustedAsset(0) + 20);

  v19 = v9;

  sub_260E50238(a2 + v18);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v19;
  *(a2 + 24) = 6778480;
  *(a2 + 32) = 0xE300000000000000;
  *(a2 + 40) = 1;
}

id HeadphonePairing.Assets.file(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x8000000260E71100;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0x7473696C70;
  *(a1 + 32) = 0xE500000000000000;
  *(a1 + 40) = 0;
  return v2;
}

uint64_t HeadphonePairing.Assets.video(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0xD000000000000015;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = *a1;
  v10 = *v2;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      v12 = "ProxCard_loop-charged";
      if (v9 == 4)
      {
        v13 = 0xD000000000000016;
      }

      else
      {
        v13 = 0xD000000000000014;
      }

      if (v9 != 4)
      {
        v12 = "ProxCard_loop-charging";
      }

      goto LABEL_13;
    }

    v11 = "ProxCard_connect-loop";
  }

  else
  {
    if (!*a1)
    {
      v13 = 0xD000000000000017;
      v12 = "BatterySwap_loop";
      goto LABEL_13;
    }

    v11 = "ProxCard_features";
    if (v9 != 1)
    {
      v12 = "oxCard_L";
      v13 = 0xD000000000000011;
LABEL_13:
      v26 = "BatterySwap_loop";
      v14 = v12 | 0x8000000000000000;
      goto LABEL_14;
    }
  }

  v14 = v11 | 0x8000000000000000;
  if ((v11 | 0x8000000000000000) == 0x8000000260E71120)
  {
    v27 = *v2;
    v18 = v10;
LABEL_30:

    v13 = v5;
    goto LABEL_31;
  }

  v26 = "BatterySwap_loop";
  v13 = 0xD000000000000015;
LABEL_14:
  v15 = sub_260E69834();
  v16 = v10;

  if (v15)
  {
    goto LABEL_32;
  }

  v27 = v10;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      goto LABEL_27;
    }

    v17 = 0x8000000260E71140;
  }

  else
  {
    if (v9 != 1)
    {
      goto LABEL_27;
    }

    v17 = 0x8000000260E71120;
  }

  if (0x8000000260E71140 == v17)
  {
LABEL_29:
    v5 = v13;
    goto LABEL_30;
  }

LABEL_27:
  v19 = sub_260E69834();

  if ((v19 & 1) == 0)
  {
    v10 = v27;
    if (v9 != 4)
    {
      v25 = sub_260E69834();

      if ((v25 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    goto LABEL_29;
  }

LABEL_31:
  v10 = v27;
LABEL_32:
  v28 = v13;
  v29 = v14;
  v30 = v10;
  v31 = 7761773;
  v32 = 0xE300000000000000;
  v33 = 0;
  GenericAsset.fileURL.getter(v8);
  v20 = sub_260E68904();
  v21 = (*(*(v20 - 8) + 48))(v8, 1, v20);
  sub_260E155E4(v8, &qword_27FE54320, &qword_260E6E720);
  if (v21 == 1)
  {

    v14 = 0xED0000706F6F6C5FLL;
    v13 = 0x64726143786F7250;
  }

LABEL_34:
  v22 = *(type metadata accessor for AdjustedAsset(0) + 20);

  v23 = v10;

  sub_260E50238(a2 + v22);
  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v23;
  *(a2 + 24) = 7761773;
  *(a2 + 32) = 0xE300000000000000;
  *(a2 + 40) = 0;
}

char *HeadphonePairing.Assets.videoView(_:)(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  MEMORY[0x28223BE20](v3 - 8);
  v170 = &v147[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v161 = &v147[-v6];
  v160 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  MEMORY[0x28223BE20](v160);
  v162 = &v147[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  MEMORY[0x28223BE20](v8 - 8);
  v153 = &v147[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v159 = &v147[-v11];
  MEMORY[0x28223BE20](v12);
  v157 = &v147[-v13];
  MEMORY[0x28223BE20](v14);
  v168 = &v147[-v15];
  MEMORY[0x28223BE20](v16);
  v165 = &v147[-v17];
  MEMORY[0x28223BE20](v18);
  v171 = &v147[-v19];
  v20 = type metadata accessor for AdjustedAsset(0);
  MEMORY[0x28223BE20](v20 - 8);
  v158 = &v147[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v156 = &v147[-v23];
  MEMORY[0x28223BE20](v24);
  v155 = &v147[-v25];
  MEMORY[0x28223BE20](v26);
  v28 = &v147[-v27];
  MEMORY[0x28223BE20](v29);
  v31 = &v147[-v30];
  v32 = sub_260E68904();
  v176 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v152 = &v147[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v151 = &v147[-v35];
  MEMORY[0x28223BE20](v36);
  v166 = &v147[-v37];
  MEMORY[0x28223BE20](v38);
  v164 = &v147[-v39];
  MEMORY[0x28223BE20](v40);
  v169 = &v147[-v41];
  MEMORY[0x28223BE20](v42);
  v175 = &v147[-v43];
  v167 = *a1;
  v44 = v1[1];
  v46 = v1[2];
  v45 = v1[3];
  v47 = v1[4];
  *&v173 = *v1;
  *&v177 = v173;
  *(&v177 + 1) = v44;
  *(&v173 + 1) = v44;
  *&v174 = v46;
  *&v178 = v46;
  *(&v178 + 1) = v45;
  *(&v174 + 1) = v45;
  v172 = v47;
  *&v179 = v47;
  v186 = 1;
  HeadphonePairing.Assets.video(_:)(&v186, v31);
  v48 = *v31;
  v49 = *(v31 + 1);
  v51 = *(v31 + 2);
  v50 = *(v31 + 3);
  v52 = *(v31 + 4);
  v53 = v31[40];

  v54 = v51;

  sub_260E41B44(v31, type metadata accessor for AdjustedAsset);
  *&v177 = v48;
  *(&v177 + 1) = v49;
  *&v178 = v54;
  *(&v178 + 1) = v50;
  *&v179 = v52;
  BYTE8(v179) = v53;
  v55 = v171;
  GenericAsset.fileURL.getter(v171);
  v57 = (v176 + 48);
  v56 = *(v176 + 48);
  v58 = v32;
  if ((v56)(v55, 1, v32) != 1)
  {
    v59 = *(v176 + 32);
    v163 = v176 + 32;
    v154 = v59;
    v59(v175, v55, v32);

    v177 = v173;
    v178 = v174;
    v60 = v172;
    *&v179 = v172;
    v186 = 0;
    HeadphonePairing.Assets.video(_:)(&v186, v28);
    v61 = *v28;
    v62 = *(v28 + 1);
    v171 = v56;
    v63 = *(v28 + 2);
    v64 = *(v28 + 3);
    v65 = *(v28 + 4);
    v66 = v28[40];

    v67 = v63;

    sub_260E41B44(v28, type metadata accessor for AdjustedAsset);
    *&v177 = v61;
    *(&v177 + 1) = v62;
    *&v178 = v67;
    *(&v178 + 1) = v64;
    *&v179 = v65;
    BYTE8(v179) = v66;
    v68 = v165;
    GenericAsset.fileURL.getter(v165);
    v69 = v58;
    if ((v171)(v68, 1, v58) == 1)
    {
      (*(v176 + 8))(v175, v58);
      sub_260E155E4(v68, &qword_27FE54320, &qword_260E6E720);

      goto LABEL_5;
    }

    v78 = v60;
    v154(v169, v68, v58);

    v165 = v57;
    v79 = v173;
    v177 = v173;
    v80 = v174;
    v178 = v174;
    *&v179 = v60;
    v186 = 2;
    v81 = v155;
    HeadphonePairing.Assets.video(_:)(&v186, v155);
    v82 = *(v81 + 1);
    v150 = *v81;
    v83 = *(v81 + 2);
    v149 = *(v81 + 3);
    v84 = *(v81 + 4);
    v170 = v69;
    v148 = v81[40];

    v85 = v83;

    sub_260E41B44(v81, type metadata accessor for AdjustedAsset);
    *&v177 = v150;
    *(&v177 + 1) = v82;
    *&v178 = v85;
    *(&v178 + 1) = v149;
    *&v179 = v84;
    BYTE8(v179) = v148;
    GenericAsset.fileURL.getter(v168);

    v177 = v79;
    v178 = v80;
    *&v179 = v78;
    v186 = 3;
    v86 = v156;
    HeadphonePairing.Assets.video(_:)(&v186, v156);
    v88 = *v86;
    v87 = *(v86 + 1);
    v89 = *(v86 + 2);
    v90 = *(v86 + 3);
    v91 = *(v86 + 4);
    v92 = v86[40];

    v93 = v89;
    v94 = v171;
    v95 = v93;

    sub_260E41B44(v86, type metadata accessor for AdjustedAsset);
    *&v177 = v88;
    *(&v177 + 1) = v87;
    *&v178 = v95;
    *(&v178 + 1) = v90;
    *&v179 = v91;
    BYTE8(v179) = v92;
    v96 = v170;
    v97 = v157;
    GenericAsset.fileURL.getter(v157);

    if ((v94)(v97, 1, v96) == 1)
    {
      v98 = v164;
      (*(v176 + 16))(v164, v175, v96);
      if ((v94)(v97, 1, v96) != 1)
      {
        sub_260E155E4(v97, &qword_27FE54320, &qword_260E6E720);
      }
    }

    else
    {
      v98 = v164;
      v154(v164, v97, v96);
    }

    v177 = v173;
    v178 = v174;
    *&v179 = v172;
    v186 = 4;
    v99 = v158;
    HeadphonePairing.Assets.video(_:)(&v186, v158);
    v101 = *v99;
    v100 = *(v99 + 1);
    v102 = *(v99 + 2);
    v103 = *(v99 + 3);
    v104 = *(v99 + 4);
    v105 = v99[40];

    v106 = v102;

    sub_260E41B44(v99, type metadata accessor for AdjustedAsset);
    *&v177 = v101;
    *(&v177 + 1) = v100;
    *&v178 = v106;
    *(&v178 + 1) = v103;
    *&v179 = v104;
    BYTE8(v179) = v105;
    v107 = v159;
    GenericAsset.fileURL.getter(v159);

    v108 = v171;
    if ((v171)(v107, 1, v96) == 1)
    {
      v109 = v176;
      (*(v176 + 16))(v166, v175, v96);
      if ((v108)(v107, 1, v96) != 1)
      {
        sub_260E155E4(v107, &qword_27FE54320, &qword_260E6E720);
      }
    }

    else
    {
      v154(v166, v107, v96);
      v109 = v176;
    }

    if (v167)
    {
      v110 = sub_260E69834();

      v108 = v171;
      if ((v110 & 1) == 0)
      {
        if (v167 == 2)
        {
          v111 = sub_260E69834();

          v112 = v162;
          if ((v111 & 1) == 0)
          {
            (*(v109 + 16))(v162, v166, v96);
            swift_storeEnumTagMultiPayload();
            v113 = v173;
            goto LABEL_30;
          }
        }

        else
        {

          v112 = v162;
        }

        (*(v109 + 16))(v112, v98, v96);
LABEL_29:
        swift_storeEnumTagMultiPayload();
        v113 = v173;
        if (!v167)
        {
          swift_bridgeObjectRelease_n();
          v126 = 880.0;
          v125 = 750.0;
LABEL_38:
          type metadata accessor for MobileAssetManager();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v128 = [objc_opt_self() bundleForClass_];
          v129 = sub_260E68FF4();

          v130 = sub_260E68FF4();
          v131 = [v128 URLForResource:v129 withExtension:v130];

          if (v131)
          {
            v132 = v152;
            sub_260E688C4();

            v133 = v161;
            sub_260E423C8(v112, v161, type metadata accessor for VideoViewConfiguration.VideoSequence);
            v134 = type metadata accessor for VideoViewConfiguration(0);
            sub_260E50238(&v133[v134[5]]);
            v135 = v134[6];
            v154(&v133[v135], v132, v96);
            (*(v109 + 56))(&v133[v135], 0, 1, v96);
            v136 = v134[7];
            v137 = sub_260E68DB4();
            (*(*(v137 - 8) + 56))(&v133[v136], 1, 1, v137);
            sub_260E194C8(&v177);
            v138 = &v133[v134[8]];
            *v138 = v125;
            v138[1] = v126;
            *&v133[v134[9]] = 0;
            v139 = &v133[v134[10]];
            v140 = v180;
            *(v139 + 2) = v179;
            *(v139 + 3) = v140;
            v139[128] = v185;
            v141 = v184;
            *(v139 + 6) = v183;
            *(v139 + 7) = v141;
            v142 = v182;
            *(v139 + 4) = v181;
            *(v139 + 5) = v142;
            v143 = v178;
            *v139 = v177;
            *(v139 + 1) = v143;
            *&v133[v134[11]] = 0;
            (*(*(v134 - 1) + 56))(v133, 0, 1, v134);
          }

          else
          {
            v144 = type metadata accessor for VideoViewConfiguration(0);
            v133 = v161;
            (*(*(v144 - 8) + 56))(v161, 1, 1, v144);
          }

          *&v177 = v113;
          *(&v177 + 1) = *(&v173 + 1);
          v178 = v174;
          *&v179 = v172;
          v145 = sub_260E3DF8C(v133);
          sub_260E155E4(v133, &qword_27FE544D8, &unk_260E6C160);
          sub_260E41B44(v112, type metadata accessor for VideoViewConfiguration.VideoSequence);
          v146 = *(v109 + 8);
          v146(v166, v96);
          v146(v98, v96);
          sub_260E155E4(v168, &qword_27FE54320, &qword_260E6E720);
          v146(v169, v96);
          v146(v175, v96);
          return v145;
        }

LABEL_30:
        v124 = sub_260E69834();

        if (v124)
        {
          v125 = 750.0;
        }

        else
        {
          v125 = 1050.0;
        }

        if (v124)
        {
          v126 = 880.0;
        }

        else
        {
          v126 = 750.0;
        }

        sub_260E69834();

        goto LABEL_38;
      }
    }

    else
    {
    }

    v114 = v153;
    sub_260E15684(v168, v153, &qword_27FE54320, &qword_260E6E720);
    if ((v108)(v114, 1, v96) == 1)
    {
      sub_260E155E4(v114, &qword_27FE54320, &qword_260E6E720);
      v115 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
      v116 = *(v109 + 16);
      v112 = v162;
      v116(v162, v175, v96);
      v116((v112 + v115), v169, v96);
      v109 = v176;
    }

    else
    {
      v117 = v151;
      v118 = v114;
      v119 = v154;
      v154(v151, v118, v96);
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
      v121 = *(v120 + 48);
      v122 = *(v120 + 64);
      v123 = *(v176 + 16);
      v112 = v162;
      v123(v162, v175, v96);
      v123((v112 + v121), v169, v96);
      v109 = v176;
      v98 = v164;
      v119(v112 + v122, v117, v96);
    }

    goto LABEL_29;
  }

  sub_260E155E4(v55, &qword_27FE54320, &qword_260E6E720);

LABEL_5:

  if (qword_27FE53DB0 != -1)
  {
    swift_once();
  }

  v70 = sub_260E68E94();
  __swift_project_value_buffer(v70, qword_27FE547B8);
  v71 = sub_260E68E74();
  v72 = sub_260E69474();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_260E02000, v71, v72, "Could not find asset files", v73, 2u);
    MEMORY[0x2666F1EF0](v73, -1, -1);
  }

  v74 = type metadata accessor for VideoViewConfiguration(0);
  v75 = v170;
  (*(*(v74 - 8) + 56))(v170, 1, 1, v74);
  v76 = objc_allocWithZone(type metadata accessor for AdjustedVideoView(0));
  return sub_260E559EC(v75);
}

char *sub_260E3DF8C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for VideoViewConfiguration(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  v16 = *(v1 + 32);
  sub_260E15684(a1, v8, &qword_27FE544D8, &unk_260E6C160);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_260E155E4(v8, &qword_27FE544D8, &unk_260E6C160);
LABEL_5:
    sub_260E15684(a1, v5, &qword_27FE544D8, &unk_260E6C160);
    v17 = objc_allocWithZone(type metadata accessor for AdjustedVideoView(0));
    return sub_260E559EC(v5);
  }

  sub_260E428BC(v8, v15, type metadata accessor for VideoViewConfiguration);
  if (v16 == 1)
  {
    sub_260E41B44(v15, type metadata accessor for VideoViewConfiguration);
    goto LABEL_5;
  }

  sub_260E423C8(v15, v12, type metadata accessor for VideoViewConfiguration);
  v19 = objc_allocWithZone(type metadata accessor for PersonalizedVideoView(0));
  v20 = sub_260E0CE14(v12);
  sub_260E41B44(v15, type metadata accessor for VideoViewConfiguration);
  return v20;
}

void __swiftcall HeadphonePairing.Assets.view(_:)(UIView *__return_ptr retstr, ProductKit::HeadphonePairing::Assets::ViewIdentifier a2)
{
  v3 = a2;
  v4 = type metadata accessor for AdjustedAsset(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-v8];
  v10 = v2[1];
  v12 = v2[2];
  v11 = v2[3];
  v13 = v2[4];
  if (*v3)
  {
    v17 = *v2;
    v18 = v10;
    v19 = v12;
    v20 = v11;
    v21 = v13;
    v16 = 1;
  }

  else
  {
    v17 = *v2;
    v18 = v10;
    v19 = v12;
    v20 = v11;
    v21 = v13;
    v16 = 0;
  }

  HeadphonePairing.Assets.adjustedImage(_:)(&v16, v9);
  sub_260E423C8(v9, v6, type metadata accessor for AdjustedAsset);
  v14 = objc_allocWithZone(type metadata accessor for AdjustedImageView());
  sub_260E5B188(v6);
  sub_260E41B44(v9, type metadata accessor for AdjustedAsset);
}

id sub_260E3E360@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x8000000260E71100;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0x7473696C70;
  *(a1 + 32) = 0xE500000000000000;
  *(a1 + 40) = 0;
  return v2;
}

uint64_t sub_260E3E3A4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 96) = a4;
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 72) = a1;
  v5 = type metadata accessor for MobileAssetResult(0);
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548C0, &qword_260E6E210);
  *(v4 + 128) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548B8, &qword_260E6E1F8);
  *(v4 + 136) = v6;
  *(v4 + 144) = *(v6 - 8);
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548C8, &qword_260E6E218);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545A0, &qword_260E6CA30);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E3E5D0, 0, 0);
}

uint64_t sub_260E3E5D0()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  v0[29] = v2;
  v47 = v2;
  if (v2)
  {
    v49 = v0 + 2;
    v52 = *v0[10];
    v3 = sub_260E69304();
    v4 = *(v3 - 8);
    v51 = *(v4 + 56);
    v50 = (v4 + 48);
    v48 = (v4 + 8);
    v5 = (v1 + 48);
    v6 = &qword_27FE545A0;
    v7 = &qword_260E6CA30;
    v8 = v47;
    do
    {
      v55 = v8;
      v12 = v0[27];
      v11 = v0[28];
      v13 = v7;
      v14 = v6;
      v16 = *(v5 - 2);
      v15 = *(v5 - 1);
      v54 = v5;
      v17 = *v5;
      v51(v11, 1, 1, v3);
      v18 = swift_allocObject();
      *(v18 + 16) = 0u;
      v19 = (v18 + 16);
      *(v18 + 32) = v16;
      *(v18 + 40) = v15;
      v6 = v14;
      v7 = v13;
      v0 = v53;
      *(v18 + 48) = v17;
      sub_260E15684(v11, v12, v6, v7);
      LODWORD(v12) = (*v50)(v12, 1, v3);
      swift_retain_n();
      v20 = v53[27];
      if (v12 == 1)
      {
        sub_260E155E4(v53[27], v6, v7);
        if (*v19)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_260E692F4();
        (*v48)(v20, v3);
        if (*v19)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v21 = sub_260E69284();
          v22 = v23;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v21 = 0;
      v22 = 0;
LABEL_10:

      if (v22 | v21)
      {
        v9 = v49;
        *v49 = 0;
        v49[1] = 0;
        v53[4] = v21;
        v53[5] = v22;
      }

      else
      {
        v9 = 0;
      }

      v10 = v53[28];
      v53[6] = 1;
      v53[7] = v9;
      v53[8] = v52;
      swift_task_create();

      sub_260E155E4(v10, v6, v7);
      v5 = v54 + 3;
      v8 = v55 - 1;
    }

    while (v55 != 1);
  }

  v24 = v0[26];
  v25 = v0[12];
  v26 = sub_260E69304();
  (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v25;
  sub_260E40A7C(v24, &unk_260E6E238, v27, &qword_27FE548B8, &qword_260E6E1F8);
  sub_260E155E4(v24, &qword_27FE545A0, &qword_260E6CA30);
  if (v47)
  {
    v28 = v0[11];
    v31 = *(v28 + 32);
    v29 = v28 + 32;
    v30 = v31;

    v36 = 1;
LABEL_14:
    v37 = (v29 + 24 * v36);
    while (1)
    {
      if (v47 == v36)
      {

        goto LABEL_22;
      }

      if (v36 >= v47)
      {
        break;
      }

      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_26;
      }

      v40 = *v37;
      v37 += 3;
      v39 = v40;
      ++v36;
      if (v30 < v40)
      {

        v36 = v38;
        v30 = v39;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v30 = -1;
LABEL_22:
    v53[30] = v30;
    v41 = v53[25];
    v42 = v53[13];
    v43 = v53[14];
    v44 = *(v43 + 56);
    v53[31] = v44;
    v53[32] = (v43 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v44(v41, 1, 1, v42);
    v53[33] = -1;
    v53[34] = 0;
    v45 = swift_task_alloc();
    v53[35] = v45;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D0, &qword_260E6E240);
    *v45 = v53;
    v45[1] = sub_260E3EAA8;
    v32 = v53[16];
    v33 = 0;
    v34 = 0;
  }

  return MEMORY[0x2822004D0](v32, v33, v34, v35);
}

uint64_t sub_260E3EAA8()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_260E3F398;
  }

  else
  {
    v2 = sub_260E3EBBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E3EBBC()
{
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) != 1)
  {
    v4 = v0[19];
    v3 = v0[20];
    sub_260E38F58(v1, v3, &qword_27FE548B8, &qword_260E6E1F8);
    sub_260E15684(v3, v4, &qword_27FE548B8, &qword_260E6E1F8);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248);
    if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
    {
      v6 = v0[25];
      v7 = v0[22];
      v8 = v0[13];
      v9 = v0[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      sub_260E69354();
      sub_260E15684(v6, v7, &qword_27FE548C8, &qword_260E6E218);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        v10 = v0[20];
        sub_260E155E4(v0[22], &qword_27FE548C8, &qword_260E6E218);
        sub_260E15590();
        swift_allocError();
        *v11 = xmmword_260E6D940;
        *(v11 + 16) = 2;
        swift_willThrow();
        v12 = v10;
LABEL_6:
        sub_260E155E4(v12, &qword_27FE548B8, &qword_260E6E1F8);
        goto LABEL_7;
      }

      v36 = v0[22];
LABEL_17:
      v38 = v0[25];
      v39 = v0[9];
      sub_260E155E4(v0[20], &qword_27FE548B8, &qword_260E6E1F8);
      sub_260E155E4(v38, &qword_27FE548C8, &qword_260E6E218);
      sub_260E428BC(v36, v39, type metadata accessor for MobileAssetResult);

      v13 = v0[1];
      goto LABEL_18;
    }

    v14 = v0[34];
    v15 = v0[19];
    v16 = *(v15 + *(v5 + 48));
    v17 = sub_260E38F58(v15, v0[24], &qword_27FE548C8, &qword_260E6E218);
    v21 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return MEMORY[0x2822004D0](v17, v18, v19, v20);
    }

    v22 = v0[23];
    v23 = v0[13];
    v24 = v0[14];
    sub_260E15684(v0[24], v22, &qword_27FE548C8, &qword_260E6E218);
    v25 = *(v24 + 48);
    v26 = v25(v22, 1, v23);
    v27 = v0[23];
    if (v26 == 1)
    {
      v28 = v0[29];
      sub_260E155E4(v27, &qword_27FE548C8, &qword_260E6E218);
      if (v21 == v28)
      {
        v30 = v0 + 21;
        v29 = v0[21];
        v31 = v0[25];
        v32 = v0[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
        sub_260E69354();
        sub_260E15684(v31, v29, &qword_27FE548C8, &qword_260E6E218);
        if (v25(v29, 1, v32) == 1)
        {
          v33 = v0[24];
          v34 = v0[20];
          sub_260E155E4(v0[21], &qword_27FE548C8, &qword_260E6E218);
          sub_260E15590();
          swift_allocError();
          *v35 = xmmword_260E6D930;
          *(v35 + 16) = 2;
          swift_willThrow();
          sub_260E155E4(v33, &qword_27FE548C8, &qword_260E6E218);
          v12 = v34;
          goto LABEL_6;
        }

        goto LABEL_16;
      }

      v41 = v0[20];
      sub_260E155E4(v0[24], &qword_27FE548C8, &qword_260E6E218);
      sub_260E155E4(v41, &qword_27FE548B8, &qword_260E6E1F8);
    }

    else
    {
      v30 = v0 + 15;
      v37 = v0[30];
      sub_260E428BC(v27, v0[15], type metadata accessor for MobileAssetResult);
      if (v16 == v37)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
        sub_260E69354();
LABEL_16:
        v36 = *v30;
        sub_260E155E4(v0[24], &qword_27FE548C8, &qword_260E6E218);
        goto LABEL_17;
      }

      v42 = v0[33];
      v43 = v0[20];
      sub_260E155E4(v0[24], &qword_27FE548C8, &qword_260E6E218);
      sub_260E155E4(v43, &qword_27FE548B8, &qword_260E6E1F8);
      if (v42 < v16)
      {
        v44 = v0[31];
        v45 = v0[25];
        v46 = v0[15];
        v47 = v0[13];
        sub_260E155E4(v45, &qword_27FE548C8, &qword_260E6E218);
        sub_260E428BC(v46, v45, type metadata accessor for MobileAssetResult);
        v44(v45, 0, 1, v47);
        goto LABEL_26;
      }

      sub_260E41B44(v0[15], type metadata accessor for MobileAssetResult);
    }

    v16 = v0[33];
LABEL_26:
    v0[33] = v16;
    v0[34] = v21;
    v48 = swift_task_alloc();
    v0[35] = v48;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D0, &qword_260E6E240);
    *v48 = v0;
    v48[1] = sub_260E3EAA8;
    v17 = v0[16];
    v18 = 0;
    v19 = 0;

    return MEMORY[0x2822004D0](v17, v18, v19, v20);
  }

  sub_260E155E4(v1, &qword_27FE548C0, &qword_260E6E210);
  sub_260E15590();
  swift_allocError();
  *v2 = xmmword_260E6D940;
  *(v2 + 16) = 2;
  swift_willThrow();
LABEL_7:
  sub_260E155E4(v0[25], &qword_27FE548C8, &qword_260E6E218);

  v13 = v0[1];
LABEL_18:

  return v13();
}

uint64_t sub_260E3F398()
{
  sub_260E155E4(*(v0 + 200), &qword_27FE548C8, &qword_260E6E218);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E3F4B0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 136) = a4;
  *(v4 + 120) = a2;
  *(v4 + 128) = a3;
  *(v4 + 112) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545A0, &qword_260E6CA30);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E3F56C, 0, 0);
}

uint64_t sub_260E3F56C()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  v43 = v2;
  if (v2)
  {
    v45 = (v0 + 56);
    v48 = **(v0 + 120);
    v3 = sub_260E69304();
    v4 = *(v3 - 8);
    v47 = *(v4 + 56);
    v46 = (v4 + 48);
    v44 = (v4 + 8);
    v5 = (v1 + 48);
    v6 = &qword_27FE545A0;
    v7 = &qword_260E6CA30;
    v8 = v43;
    do
    {
      v51 = v8;
      v11 = *(v0 + 152);
      v10 = *(v0 + 160);
      v12 = v7;
      v13 = v6;
      v14 = *(v5 - 2);
      v15 = *(v5 - 1);
      v50 = v5;
      v16 = *v5;
      v47(v10, 1, 1, v3);
      v17 = swift_allocObject();
      *(v17 + 16) = 0u;
      v18 = (v17 + 16);
      *(v17 + 32) = v14;
      *(v17 + 40) = v15;
      v6 = v13;
      v7 = v12;
      v0 = v49;
      *(v17 + 48) = v16;
      sub_260E15684(v10, v11, v6, v7);
      LODWORD(v11) = (*v46)(v11, 1, v3);
      swift_retain_n();
      v19 = *(v49 + 152);
      if (v11 == 1)
      {
        sub_260E155E4(*(v49 + 152), v6, v7);
        if (*v18)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_260E692F4();
        (*v44)(v19, v3);
        if (*v18)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v20 = sub_260E69284();
          v21 = v22;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v20 = 0;
      v21 = 0;
LABEL_9:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A0, &qword_260E6E1A8);
      v23 = (v21 | v20);
      if (v21 | v20)
      {
        v23 = v45;
        *v45 = 0;
        v45[1] = 0;
        *(v49 + 72) = v20;
        *(v49 + 80) = v21;
      }

      v9 = *(v49 + 160);
      *(v49 + 88) = 1;
      *(v49 + 96) = v23;
      *(v49 + 104) = v48;
      swift_task_create();

      sub_260E155E4(v9, v6, v7);
      v5 = v50 + 3;
      v8 = v51 - 1;
    }

    while (v51 != 1);
  }

  v24 = *(v0 + 144);
  v25 = *(v0 + 136);
  v26 = sub_260E69304();
  (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v25;
  sub_260E40A7C(v24, &unk_260E6E1E0, v27, &qword_27FE548A0, &qword_260E6E1A8);
  sub_260E155E4(v24, &qword_27FE545A0, &qword_260E6CA30);
  if (v43)
  {
    v28 = *(v0 + 128);
    v31 = *(v28 + 32);
    v29 = v28 + 32;
    v30 = v31;

    v36 = 1;
LABEL_13:
    v37 = (v29 + 24 * v36);
    while (1)
    {
      if (v43 == v36)
      {

        goto LABEL_21;
      }

      if (v36 >= v43)
      {
        break;
      }

      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_25;
      }

      v40 = *v37;
      v37 += 3;
      v39 = v40;
      ++v36;
      if (v30 < v40)
      {

        v36 = v38;
        v30 = v39;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    v30 = -1;
LABEL_21:
    *(v49 + 224) = 1;
    *(v49 + 192) = 0u;
    *(v49 + 208) = 0u;
    *(v49 + 176) = v30;
    *(v49 + 184) = -1;
    v41 = swift_task_alloc();
    *(v49 + 232) = v41;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548B0, &qword_260E6E1E8);
    *v41 = v49;
    v41[1] = sub_260E3FA30;
    v32 = v49 + 16;
    v33 = 0;
    v34 = 0;
  }

  return MEMORY[0x2822004D0](v32, v33, v34, v35);
}

uint64_t sub_260E3FA30()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_260E40070;
  }

  else
  {
    v2 = sub_260E3FB44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E3FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  if (v5 != 3)
  {
    v11 = *(v4 + 16);
    v12 = *(v4 + 32);
    v13 = *(v4 + 48);
    if (v5 == 2)
    {
      v14 = *(v4 + 224);
      v15 = *(v4 + 16);
      v42 = *(v4 + 16);
      v16 = *(v4 + 24);
      sub_260E423A8(v11, *(&v11 + 1), v12, 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A0, &qword_260E6E1A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      sub_260E69354();
      if (v14 == 1)
      {
        sub_260E15590();
        swift_allocError();
        *v17 = xmmword_260E6D940;
        *(v17 + 16) = 2;
        swift_willThrow();
        v18 = v15;
        v19 = v16;
        v20 = v12;
        v21 = 2;
LABEL_6:
        sub_260E42388(v18, v19, v20, v21);
        goto LABEL_7;
      }

LABEL_13:
      v39 = *(v4 + 200);
      v40 = *(v4 + 216);
      v29 = v42;
LABEL_16:
      v35 = *(v4 + 112);
      sub_260E42388(v29, *(&v29 + 1), v12, v5);
      *v35 = v39;
      v35[1] = v40;

      v22 = *(v4 + 8);
      goto LABEL_17;
    }

    v23 = *(v4 + 192);
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return MEMORY[0x2822004D0](a1, a2, a3, a4);
    }

    if (v5 == 1)
    {
      v25 = *(v4 + 224);
      if (v24 == *(v4 + 168))
      {
        v26 = *(v4 + 16);
        v42 = *(v4 + 16);
        v27 = *(v4 + 24);
        sub_260E423A8(v11, *(&v11 + 1), v12, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A0, &qword_260E6E1A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
        sub_260E69354();
        if (v25 == 1)
        {
          sub_260E15590();
          swift_allocError();
          *v28 = xmmword_260E6D930;
          *(v28 + 16) = 2;
          swift_willThrow();
          v18 = v26;
          v19 = v27;
          v20 = v12;
          v21 = 1;
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      v12 = *(v4 + 216);
      v37 = *(v4 + 200);
      v5 = *(v4 + 224);
    }

    else
    {
      if (v13 == *(v4 + 176))
      {
        v30 = *(v4 + 216);
        v41 = *(v4 + 224);
        v32 = *(v4 + 200);
        v31 = *(v4 + 208);
        v33 = *(v4 + 16);
        sub_260E423B8(v11, *(&v11 + 1), v12, v5);
        sub_260E3C3D8(v33, *(&v33 + 1), v12, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A0, &qword_260E6E1A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
        sub_260E69354();
        sub_260E3C41C(v32, v31, v30, v41);
        sub_260E3C41C(v33, *(&v33 + 1), v12, v5);
        v29 = v33;
        *&v34 = v12;
        *(&v34 + 1) = v5;
        v39 = v33;
        v40 = v34;
        goto LABEL_16;
      }

      if (*(v4 + 184) < v13)
      {
        v43 = *(v4 + 16);
        sub_260E3C41C(*(v4 + 200), *(v4 + 208), *(v4 + 216), *(v4 + 224));
        v37 = v43;
        goto LABEL_25;
      }

      sub_260E3C41C(v11, *(&v11 + 1), *(v4 + 32), *(v4 + 40));
      v12 = *(v4 + 216);
      v5 = *(v4 + 224);
      v37 = *(v4 + 200);
    }

    v13 = *(v4 + 184);
LABEL_25:
    *(v4 + 216) = v12;
    *(v4 + 224) = v5;
    *(v4 + 200) = v37;
    *(v4 + 184) = v13;
    *(v4 + 192) = v24;
    v38 = swift_task_alloc();
    *(v4 + 232) = v38;
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548B0, &qword_260E6E1E8);
    *v38 = v4;
    v38[1] = sub_260E3FA30;
    a1 = v4 + 16;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822004D0](a1, a2, a3, a4);
  }

  v6 = *(v4 + 216);
  v7 = *(v4 + 224);
  v9 = *(v4 + 200);
  v8 = *(v4 + 208);
  sub_260E42388(*(v4 + 16), *(v4 + 24), *(v4 + 32), 3);
  sub_260E15590();
  swift_allocError();
  *v10 = xmmword_260E6D940;
  *(v10 + 16) = 2;
  swift_willThrow();
  sub_260E3C41C(v9, v8, v6, v7);
LABEL_7:

  v22 = *(v4 + 8);
LABEL_17:

  return v22();
}

uint64_t sub_260E40070()
{
  sub_260E3C41C(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E400FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[3] = a1;
  v5[4] = a4;
  v9 = (a5 + *a5);
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_260E401F8;

  return v9(a1);
}

uint64_t sub_260E401F8()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_260E403DC;
  }

  else
  {
    *(v2 + 56) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248) + 48);
    v3 = sub_260E40328;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E40328()
{
  v1 = *(v0 + 24);
  *(v1 + *(v0 + 56)) = *(v0 + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_260E403DC()
{
  v22 = v0;
  if (qword_27FE53DF0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_260E68E94();
  __swift_project_value_buffer(v2, qword_27FE54C50);
  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69474();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260E02000, v4, v5, "Race task failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[3];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248) + 48);
  v16 = type metadata accessor for MobileAssetResult(0);
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = v0[3];
  *(v17 + v15) = v0[4];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248);
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  v19 = v0[1];

  return v19();
}

uint64_t sub_260E40660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[3] = a1;
  v5[4] = a4;
  v9 = (a5 + *a5);
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_260E4075C;

  return v9(a1);
}

uint64_t sub_260E4075C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_260E40890;
  }

  else
  {
    v2 = sub_260E40870;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E40890()
{
  v18 = v0;
  if (qword_27FE53DF0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_260E68E94();
  __swift_project_value_buffer(v2, qword_27FE54C50);
  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69474();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260E02000, v4, v5, "Race task failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[3];
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 1;
  *(v0[3] + 32) = v0[4];
  v15 = v0[1];

  return v15();
}

uint64_t sub_260E40A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545A0, &qword_260E6CA30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v22 - v12;
  sub_260E15684(a1, v22 - v12, &qword_27FE545A0, &qword_260E6CA30);
  v14 = sub_260E69304();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_260E155E4(v13, &qword_27FE545A0, &qword_260E6CA30);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_260E69284();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_260E692F4();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v20 = (v18 | v16);
  if (v18 | v16)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v16;
    v23[3] = v18;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v19;
  swift_task_create();
}

uint64_t sub_260E40C80(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_260E40CA4, 0, 0);
}

uint64_t sub_260E40CA4(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 32) = v5;
  *v5 = v1;
  v5[1] = sub_260E40D8C;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_260E40D8C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_260E40F4C;
  }

  else
  {
    v2 = sub_260E40EA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E40EA0()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_260E40F4C()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_260E41000(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_260E41024, 0, 0);
}

uint64_t sub_260E41024(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 32) = v5;
  *v5 = v1;
  v5[1] = sub_260E4110C;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_260E4110C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_260E41250;
  }

  else
  {
    v2 = sub_260E41220;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E41220()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = xmmword_260E6D950;
  return (*(v0 + 8))();
}

uint64_t sub_260E41250()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = xmmword_260E6D950;
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_260E412D0()
{
  result = qword_27FE547D0;
  if (!qword_27FE547D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE547D0);
  }

  return result;
}

unint64_t sub_260E41328()
{
  result = qword_27FE547D8;
  if (!qword_27FE547D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE547D8);
  }

  return result;
}

unint64_t sub_260E41380()
{
  result = qword_27FE547E0;
  if (!qword_27FE547E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE547E0);
  }

  return result;
}

unint64_t sub_260E41408()
{
  result = qword_27FE547F8;
  if (!qword_27FE547F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE547F8);
  }

  return result;
}

unint64_t sub_260E41490()
{
  result = qword_27FE54810;
  if (!qword_27FE54810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54810);
  }

  return result;
}

unint64_t sub_260E41518()
{
  result = qword_27FE54828;
  if (!qword_27FE54828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54828);
  }

  return result;
}

unint64_t sub_260E415A0()
{
  result = qword_27FE54840;
  if (!qword_27FE54840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54840);
  }

  return result;
}

unint64_t sub_260E41628()
{
  result = qword_27FE54858;
  if (!qword_27FE54858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54858);
  }

  return result;
}

unint64_t sub_260E41680()
{
  result = qword_27FE54860;
  if (!qword_27FE54860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54860);
  }

  return result;
}

unint64_t sub_260E416D8()
{
  result = qword_27FE54868;
  if (!qword_27FE54868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54868);
  }

  return result;
}

unint64_t sub_260E41730()
{
  result = qword_27FE54870;
  if (!qword_27FE54870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54870);
  }

  return result;
}

unint64_t sub_260E41788()
{
  result = qword_27FE54878;
  if (!qword_27FE54878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54878);
  }

  return result;
}

unint64_t sub_260E417E0()
{
  result = qword_27FE54880;
  if (!qword_27FE54880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54880);
  }

  return result;
}

uint64_t type metadata accessor for HeadphonePairing.AssetRequest(uint64_t a1)
{
  result = qword_27FE54888;
  if (!qword_27FE54888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10ProductKit27PersonalizationAssetManagerC0D0VSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260E418FC(uint64_t *a1, int a2)
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

uint64_t sub_260E41944(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for HeadphonePairing.Assets.VideoIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeadphonePairing.Assets.VideoIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_260E41B2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_260E41B44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_260E41BA4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548F8, &qword_260E6E268);
  v10 = *(sub_260E68904() - 8);
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
  v15 = *(sub_260E68904() - 8);
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

void *sub_260E41D7C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54900, &qword_260E6E270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54908, &qword_260E6E278);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_260E41EB0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548E0, &qword_260E6E250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548E8, &qword_260E6E258);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_260E41FF8()
{

  sub_260E15F8C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_260E42040(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260E30A3C;

  return sub_260E3AA68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_260E42108(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260E343A8;

  return sub_260E3F4B0(a1, a2, v6, v7);
}

uint64_t sub_260E421CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260E343A8;

  return sub_260E40660(a1, v4, v5, v6, v7);
}

uint64_t sub_260E42294()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_260E422CC(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260E343A8;

  return sub_260E41000(a1, v4);
}

void sub_260E42388(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 3)
  {
    sub_260E42398(a1, a2, a3, a4);
  }
}

void sub_260E42398(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 2)
  {
    sub_260E3C41C(a1, a2, a3, a4);
  }
}

id sub_260E423A8(id result, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 2)
  {
    return sub_260E3C3D8(result, a2, a3, a4);
  }

  return result;
}

id sub_260E423B8(id result, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 3)
  {
    return sub_260E423A8(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_260E423C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_260E42430()
{
  v1 = *(type metadata accessor for MobileAssetRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_260E68A04();
  (*(*(v6 - 8) + 8))(v5, v6);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4));

  return MEMORY[0x2821FE8E8](v0, v4 + 40, v2 | 7);
}

uint64_t sub_260E42530(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileAssetRequest(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260E343A8;

  return sub_260E4BFE4(a1, v1 + v5, v1 + v6);
}

uint64_t sub_260E42638(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260E343A8;

  return sub_260E3E3A4(a1, a2, v6, v7);
}

uint64_t objectdestroy_61Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_260E42738(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260E343A8;

  return sub_260E400FC(a1, v4, v5, v6, v7);
}

uint64_t sub_260E42800(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260E343A8;

  return sub_260E40C80(a1, v4);
}

uint64_t sub_260E428BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double Adjustments.init(fileURL:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_260E68914();
  v6 = v5;
  if (qword_27FE53DC0 != -1)
  {
    swift_once();
  }

  sub_260E43CA8();
  sub_260E68784();
  v7 = sub_260E68904();
  (*(*(v7 - 8) + 8))(a1, v7);
  sub_260E15FB4(v4, v6);
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_260E42BF4()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54910);
  v1 = __swift_project_value_buffer(v0, qword_27FE54910);
  if (qword_27FE53E58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E42CBC()
{
  sub_260E687A4();
  swift_allocObject();
  result = sub_260E68794();
  qword_27FE54928 = result;
  return result;
}

ProductKit::Adjustments::Adjustment __swiftcall Adjustments.Adjustment.init(bias:matrix:)(Swift::Double bias, Swift::Double matrix)
{
  *v2 = bias;
  v2[1] = matrix;
  result.matrix = matrix;
  result.bias = bias;
  return result;
}

uint64_t sub_260E42D14()
{
  if (*v0)
  {
    return 0x78697274616DLL;
  }

  else
  {
    return 1935763810;
  }
}

uint64_t sub_260E42D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1935763810 && a2 == 0xE400000000000000;
  if (v5 || (sub_260E69834() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x78697274616DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_260E69834();

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

uint64_t sub_260E42E28(uint64_t a1)
{
  v2 = sub_260E43CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E42E64(uint64_t a1)
{
  v2 = sub_260E43CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Adjustments.Adjustment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54938, &qword_260E6E280);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E43CFC();
  sub_260E69944();
  v8[15] = 0;
  sub_260E697D4();
  if (!v1)
  {
    v8[14] = 1;
    sub_260E697D4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Adjustments.Adjustment.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54948, &qword_260E6E288);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E43CFC();
  sub_260E69934();
  if (!v2)
  {
    v16 = 0;
    sub_260E69794();
    v10 = v9;
    v15 = 1;
    sub_260E69794();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 Adjustments.dark.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 Adjustments.light.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

ProductKit::Adjustments __swiftcall Adjustments.init(dark:light:)(ProductKit::Adjustments::Adjustment dark, ProductKit::Adjustments::Adjustment light)
{
  v5 = *v2;
  v6 = *v3;
  *v4 = *v2;
  v4[1] = v6;
  result.light.matrix = light.matrix;
  result.light.bias = light.bias;
  result.dark.matrix = *&v6;
  result.dark.bias = *&v5;
  return result;
}

uint64_t sub_260E43228()
{
  if (*v0)
  {
    return 0x746867696CLL;
  }

  else
  {
    return 1802658148;
  }
}

uint64_t sub_260E43258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802658148 && a2 == 0xE400000000000000;
  if (v5 || (sub_260E69834() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_260E69834();

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

uint64_t sub_260E43330(uint64_t a1)
{
  v2 = sub_260E43D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E4336C(uint64_t a1)
{
  v2 = sub_260E43D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Adjustments.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54950, &qword_260E6E290);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E43D50();
  sub_260E69944();
  v15 = v8;
  v16 = v9;
  v14 = 0;
  sub_260E43DA4();
  sub_260E697F4();
  if (!v2)
  {
    v15 = v10;
    v16 = v11;
    v14 = 1;
    sub_260E697F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Adjustments.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54968, &qword_260E6E298);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E43D50();
  sub_260E69934();
  if (!v2)
  {
    v13 = 0;
    sub_260E43DF8();
    sub_260E697B4();
    v9 = v12;
    v13 = 1;
    sub_260E697B4();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_260E43774(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v7 = sub_260E43840(v12, 0, 0, 1, a1, a2, v6);
  v8 = v12[0];
  if (!v7)
  {
    ObjectType = MEMORY[0x277D840A0];
    v12[0] = a1;
    v12[1] = a2;
    v10 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = v7;

  ObjectType = swift_getObjectType();
  v12[0] = v9;
  v10 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_260E1426C(v12, v10);
    *a3 = v10 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v8;
}

unint64_t sub_260E43840(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6, double a7)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v10 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v10)
        {
          v13[0] = a5;
          v13[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v13, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v10) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_260E4394C(a5, a6);
    *a1 = v9;
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
    v12 = a6;
    result = sub_260E696A4();
    a6 = v12;
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

void *sub_260E4394C(uint64_t a1, unint64_t a2)
{
  v3 = sub_260E43998(a1, a2);
  sub_260E43AC8(&unk_28735D298);
  return v3;
}

void *sub_260E43998(uint64_t a1, unint64_t a2)
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

  v6 = sub_260E4DBB0(v5, 0);
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

  result = sub_260E696A4();
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
        v10 = sub_260E69114();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_260E4DBB0(v10, 0);
        result = sub_260E69634();
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

uint64_t sub_260E43AC8(uint64_t result)
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

  result = sub_260E43BB4(result, v11, 1, v3);
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

char *sub_260E43BB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549A8, &qword_260E6E5B8);
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

unint64_t sub_260E43CA8()
{
  result = qword_27FE54930;
  if (!qword_27FE54930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54930);
  }

  return result;
}

unint64_t sub_260E43CFC()
{
  result = qword_27FE54940;
  if (!qword_27FE54940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54940);
  }

  return result;
}

unint64_t sub_260E43D50()
{
  result = qword_27FE54958;
  if (!qword_27FE54958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54958);
  }

  return result;
}

unint64_t sub_260E43DA4()
{
  result = qword_27FE54960;
  if (!qword_27FE54960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54960);
  }

  return result;
}

unint64_t sub_260E43DF8()
{
  result = qword_27FE54970;
  if (!qword_27FE54970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54970);
  }

  return result;
}

uint64_t sub_260E43E4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260E43E6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_260E43EDC()
{
  result = qword_27FE54978;
  if (!qword_27FE54978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54978);
  }

  return result;
}

unint64_t sub_260E43F34()
{
  result = qword_27FE54980;
  if (!qword_27FE54980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54980);
  }

  return result;
}

unint64_t sub_260E43F8C()
{
  result = qword_27FE54988;
  if (!qword_27FE54988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54988);
  }

  return result;
}

unint64_t sub_260E43FE4()
{
  result = qword_27FE54990;
  if (!qword_27FE54990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54990);
  }

  return result;
}

unint64_t sub_260E4403C()
{
  result = qword_27FE54998;
  if (!qword_27FE54998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54998);
  }

  return result;
}

unint64_t sub_260E44094()
{
  result = qword_27FE549A0;
  if (!qword_27FE549A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE549A0);
  }

  return result;
}

uint64_t AirTagHardwareModel.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_260E69764();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_260E44170()
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E441E4(uint64_t a1)
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E44238@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_260E69764();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_260E442C0()
{
  result = qword_27FE549B0;
  if (!qword_27FE549B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE549B0);
  }

  return result;
}

unint64_t sub_260E44318()
{
  result = qword_27FE549B8;
  if (!qword_27FE549B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE549C0, &qword_260E6E660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE549B8);
  }

  return result;
}

uint64_t sub_260E4438C(unsigned __int8 a1)
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E44478(unsigned __int8 a1)
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E44584(uint64_t a1, unsigned __int8 a2)
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E4466C(uint64_t a1, unsigned __int8 a2)
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E44770(uint64_t a1, unsigned __int8 a2)
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E44878()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE549C8);
  v1 = __swift_project_value_buffer(v0, qword_27FE549C8);
  if (qword_27FE53E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E44998(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a1 + 24);
  v10 = *(a2 + 48);
  sub_260E16198(*a1, v4, v5, v9);
  result = sub_260E15F78(v6, v7, v8, v10);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v9;
  return result;
}

void (*HeadphonePairing2.Configuration.engravingInformation.modify(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[4] = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  *(v4 + 24) = v8;
  sub_260E16198(v5, v6, v7, v8);
  return sub_260E44AB4;
}

void sub_260E44AB4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  if (a2)
  {
    sub_260E16198(**a1, v4, v6, v7);
    sub_260E15F78(v8, v9, v10, v11);
    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    *(v3 + 48) = v7;
    sub_260E15F78(*v2, v2[1], v2[2], *(v2 + 24));
  }

  else
  {
    sub_260E15F78(*(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    *(v3 + 48) = v7;
  }

  free(v2);
}

__n128 _s10ProductKit17HeadphonePairing2V13ConfigurationV20engravingInformationAA27PersonalizationAssetManagerC0I4InfoOSgvs_0(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_260E15F78(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

char *HeadphonePairing2.Configuration.init(hardwareModel:color:timeout:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *result;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  *(a3 + 48) = -1;
  *(a3 + 16) = v4;
  *(a3 + 17) = 26;
  *a3 = a2;
  *(a3 + 8) = a4;
  return result;
}

__n128 HeadphonePairing2.AssetRequest.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t HeadphonePairing2.AssetRequest.assets()()
{
  v2 = sub_260E68C64();
  *(v1 + 32) = v2;
  *(v1 + 40) = *(v2 - 8);
  *(v1 + 48) = swift_task_alloc();
  v3 = sub_260E68E24();
  *(v1 + 56) = v3;
  *(v1 + 64) = *(v3 - 8);
  *(v1 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544A8, &qword_260E6C138);
  *(v1 + 80) = swift_task_alloc();
  v4 = sub_260E68C94();
  *(v1 + 88) = v4;
  *(v1 + 96) = *(v4 - 8);
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549E0, &unk_260E6E6E0);
  *(v1 + 120) = swift_task_alloc();
  v5 = sub_260E68DF4();
  *(v1 + 128) = v5;
  *(v1 + 136) = *(v5 - 8);
  *(v1 + 144) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v0;
  *(v1 + 152) = v6;
  *(v1 + 160) = v7;
  *(v1 + 168) = v0[1];
  *(v1 + 240) = *(v0 + 16);
  *(v1 + 176) = *(v0 + 3);
  *(v1 + 192) = v0[5];
  *(v1 + 241) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_260E44EE4, 0, 0);
}

uint64_t sub_260E44EE4(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 120);
  HeadphoneHardwareModel.rawValue.getter();
  sub_260E68DE4();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_260E155E4(*(v1 + 120), &qword_27FE549E0, &unk_260E6E6E0);
    sub_260E15590();
    swift_allocError();
    *v5 = xmmword_260E6C120;
    *(v5 + 16) = 2;
    swift_willThrow();

    v6 = *(v1 + 8);

    return v6();
  }

  v8 = *(v1 + 241);
  v9 = *(v1 + 152);
  v11 = *(v1 + 136);
  v10 = *(v1 + 144);
  v12 = *(v1 + 128);
  (*(v11 + 32))(v9, *(v1 + 120), v12);
  (*(v11 + 16))(v10, v9, v12);
  sub_260E68C74();
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      v29 = 1;
      goto LABEL_14;
    }

    v19 = *(v1 + 184);
    v20 = *(v1 + 192);
    v21 = *(v1 + 176);
    v23 = *(v1 + 64);
    v22 = *(v1 + 72);
    v24 = *(v1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544C0, &unk_260E6E6F0);
    *v22 = v21;
    v22[1] = v19;
    sub_260E16198(v21, v19, v20, 2);
    sub_260E15E4C(v21, v19);
    sub_260E68D64();
    (*(v23 + 104))(v22, *MEMORY[0x277D42750], v24);
  }

  else
  {
    if (v8)
    {
      v16 = *(v1 + 64);
      v15 = *(v1 + 72);
      v17 = *(v1 + 56);
      sub_260E16198(*(v1 + 176), *(v1 + 184), *(v1 + 192), 1);

      sub_260E68E14();
      v18 = MEMORY[0x277D42748];
    }

    else
    {
      v13 = *(v1 + 184);
      v14 = *(v1 + 176);
      v16 = *(v1 + 64);
      v15 = *(v1 + 72);
      v17 = *(v1 + 56);
      sub_260E16198(v14, v13, *(v1 + 192), 0);
      sub_260E15E4C(v14, v13);
      sub_260E68E04();
      v18 = MEMORY[0x277D42740];
    }

    (*(v16 + 104))(v15, *v18, v17);
  }

  v25 = *(v1 + 184);
  v26 = *(v1 + 192);
  v27 = *(v1 + 176);
  v28 = *(v1 + 241);
  (*(*(v1 + 64) + 32))(*(v1 + 80), *(v1 + 72), *(v1 + 56));
  sub_260E15F78(v27, v25, v26, v28);
  v29 = 0;
LABEL_14:
  v30 = *(v1 + 104);
  v31 = *(v1 + 112);
  v32 = *(v1 + 88);
  v33 = *(v1 + 96);
  (*(*(v1 + 64) + 56))(*(v1 + 80), v29, 1, *(v1 + 56));
  sub_260E68C84();
  (*(v33 + 16))(v30, v31, v32);
  sub_260E68C44();
  v34 = swift_task_alloc();
  *(v1 + 200) = v34;
  *v34 = v1;
  v34[1] = sub_260E45308;

  return MEMORY[0x2821A3588]();
}

uint64_t sub_260E45308(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_260E457F0;
  }

  else
  {
    v4 = sub_260E4541C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_260E4541C()
{
  v14 = v0;
  if (qword_27FE53DC8 != -1)
  {
    swift_once();
  }

  v1 = sub_260E68E94();
  __swift_project_value_buffer(v1, qword_27FE549C8);

  v2 = sub_260E68E74();
  v3 = sub_260E69474();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[26];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v0[3] = v4;
    sub_260E68D54();

    v7 = sub_260E69084();
    v9 = sub_260E43774(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_260E02000, v2, v3, "Returning valid assets: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2666F1EF0](v6, -1, -1);
    MEMORY[0x2666F1EF0](v5, -1, -1);
  }

  sub_260E692E4();
  v0[28] = sub_260E692D4();
  v11 = sub_260E69284();

  return MEMORY[0x2822009F8](sub_260E45608, v11, v10);
}

uint64_t sub_260E45608()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 240);

  type metadata accessor for HeadphonePairing2.Assets();
  v3 = swift_allocObject();
  *(v0 + 232) = v3;
  *(v3 + 16) = sub_260E68D44();
  *(v3 + 40) = v1;
  *(v3 + 24) = v2;

  v4 = sub_260E68CF4();

  *(v3 + 32) = v4;

  return MEMORY[0x2822009F8](sub_260E456C4, 0, 0);
}

uint64_t sub_260E456C4()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[11];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];
  v8 = v0[29];

  return v7(v8);
}

uint64_t sub_260E457F0()
{
  v25 = v0;
  if (qword_27FE53DC8 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_260E68E94();
  __swift_project_value_buffer(v2, qword_27FE549C8);
  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v10 = sub_260E69084();
    v12 = sub_260E43774(v10, v11, &v24);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260E02000, v4, v5, "Failed to find assets: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v23 = v0[19];
  v13 = v0[16];
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[12];
  v18 = v0[5];
  v19 = v0[6];
  v20 = v0[4];
  swift_willThrow();
  (*(v18 + 8))(v19, v20);
  (*(v17 + 8))(v15, v16);
  (*(v14 + 8))(v23, v13);

  v21 = v0[1];

  return v21();
}

uint64_t sub_260E45A70@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_260E68D84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542E0, &qword_260E6BFE8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_260E68DB4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32))
  {
    sub_260E68E54();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v14, v9, v10);
      v15 = sub_260E68DA4();
      v17 = v16;
      sub_260E68D94();
      v18 = sub_260E68D74();
      (*(v4 + 8))(v6, v3);
      result = (*(v11 + 8))(v14, v10);
      *a1 = v15;
      a1[1] = v17;
      a1[2] = v18;
      a1[3] = 0;
      return result;
    }
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10, v12);
  }

  result = sub_260E155E4(v9, &qword_27FE542E0, &qword_260E6BFE8);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  return result;
}

ProductKit::HeadphonePairing2::Assets::AdjustedImageIdentifier_optional __swiftcall HeadphonePairing2.Assets.AdjustedImageIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HeadphonePairing2.Assets.AdjustedImageIdentifier.rawValue.getter()
{
  v1 = 0x64726143786F7250;
  v2 = *v0;
  if (v2 == 3)
  {
    v1 = 0xD00000000000001BLL;
  }

  v3 = 0xD00000000000001DLL;
  if (v2 != 1)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_260E45E20(uint64_t a1)
{
  sub_260E690C4();
}

void sub_260E45F20(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000004C5FLL;
  v3 = 0x64726143786F7250;
  v4 = *v1;
  v5 = 0x8000000260E71220;
  if (v4 != 4)
  {
    v2 = 0xEA0000000000525FLL;
  }

  if (v4 == 3)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = v2;
  }

  v6 = 0x8000000260E710C0;
  v7 = 0xD00000000000001DLL;
  if (v4 != 1)
  {
    v7 = 0xD00000000000001ALL;
    v6 = 0x8000000260E71200;
  }

  if (!*v1)
  {
    v7 = 0xD00000000000001CLL;
    v6 = 0x8000000260E710A0;
  }

  if (*v1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  if (*v1 <= 2u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t HeadphonePairing2.Assets.FileIdentifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_260E69764();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_260E4606C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_260E69764();

  *a2 = v3 != 0;
  return result;
}

ProductKit::HeadphonePairing2::Assets::VideoIdentifier_optional __swiftcall HeadphonePairing2.Assets.VideoIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HeadphonePairing2.Assets.VideoIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000016;
  if (v2 != 5)
  {
    v3 = 0xD000000000000014;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_260E46210(uint64_t a1)
{
  sub_260E690C4();
}

unint64_t sub_260E46314@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = *v1;
  v4 = "ProxCard_loop-charged";
  v5 = 0xD000000000000016;
  if (v3 != 5)
  {
    v5 = 0xD000000000000014;
    v4 = "ProxCard_loop-charging";
  }

  v6 = "ProxCard_case-open-charging";
  if (v3 == 3)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000015;
  }

  if (v3 != 3)
  {
    v6 = "ProxCard_connect-loop";
  }

  if (*v1 <= 4u)
  {
    v5 = result;
    v4 = v6;
  }

  v8 = "ProxCard_features";
  if (v3 == 1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v8 = "oxCard_L";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD000000000000017;
    v9 = "BatterySwap_loop";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
  return result;
}

ProductKit::HeadphonePairing2::Assets::ViewIdentifier_optional __swiftcall HeadphonePairing2.Assets.ViewIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t HeadphonePairing2.Assets.ViewIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_260E46490@<X0>(char *a2@<X8>)
{
  v3 = sub_260E69764();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

ProductKit::HeadphonePairing2::Assets::VideoViewIdentifier_optional __swiftcall HeadphonePairing2.Assets.VideoViewIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HeadphonePairing2.Assets.VideoViewIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0x72616843706F6F6CLL;
  }

  else
  {
    return 0x6F72746E69;
  }
}

uint64_t sub_260E465EC@<X0>(uint64_t *a2@<X8>)
{
  v37 = a2;
  v2 = sub_260E68AA4();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260E68AD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549E8, &qword_260E6E700);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_260E68D14();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E68D04();
  result = (*(v16 + 48))(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = *(v16 + 32);
    v34 = v18;
    v35 = v15;
    v20(v18, v14, v15);
    sub_260E68CA4();
    (*(v6 + 16))(v8, v11, v5);
    sub_260E68AC4();
    v21 = sub_260E68A94();
    v33 = v22;
    v23 = sub_260E68A84();
    v24 = sub_260E68A64();
    v36 = v11;
    v25 = v5;
    v27 = v26;
    v28 = sub_260E68A74();
    (*(v38 + 8))(v4, v39);
    v29 = v37;
    v30 = v33;
    *v37 = v21;
    v29[1] = v30;
    v29[2] = v23;
    v29[3] = v24;
    v29[4] = v27;
    *(v29 + 40) = v28 & 1;
    type metadata accessor for AdjustedAsset(0);
    sub_260E68AB4();
    v31 = *(v6 + 8);
    v31(v8, v25);
    v31(v36, v25);
    return (*(v16 + 8))(v34, v35);
  }

  return result;
}

uint64_t sub_260E46A1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_260E68AA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549F0, &qword_260E6E708);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_260E68CC4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E68CB4();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_260E68D24();
    (*(v3 + 16))(v5, v8, v2);
    *a1 = sub_260E68A94();
    *(a1 + 8) = v17;
    *(a1 + 16) = sub_260E68A84();
    *(a1 + 24) = sub_260E68A64();
    *(a1 + 32) = v18;
    v19 = sub_260E68A74();
    v20 = *(v3 + 8);
    v20(v5, v2);
    v20(v8, v2);
    result = (*(v13 + 8))(v15, v12);
    *(a1 + 40) = v19 & 1;
  }

  return result;
}

uint64_t sub_260E46CC8@<X0>(uint64_t *a2@<X8>)
{
  v39 = a2;
  v40 = sub_260E68AA4();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_260E68AD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549F8, &unk_260E6E710);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_260E68CE4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E68CD4();
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = *(v14 + 32);
    v35 = v16;
    v18(v16, v12, v13);
    sub_260E68D34();
    (*(v4 + 16))(v6, v9, v3);
    v19 = v37;
    sub_260E68AC4();
    v33 = sub_260E68A94();
    v21 = v20;
    v22 = sub_260E68A84();
    v23 = sub_260E68A64();
    v36 = v13;
    v24 = v3;
    v25 = v23;
    v34 = v9;
    v26 = v6;
    v28 = v27;
    v29 = sub_260E68A74();
    (*(v38 + 8))(v19, v40);
    v30 = v29 & 1;
    v31 = v39;
    *v39 = v33;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v25;
    v31[4] = v28;
    *(v31 + 40) = v30;
    type metadata accessor for AdjustedAsset(0);
    sub_260E68AB4();
    v32 = *(v4 + 8);
    v32(v26, v24);
    v32(v34, v24);
    return (*(v14 + 8))(v35, v36);
  }

  return result;
}

char *sub_260E47118(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  MEMORY[0x28223BE20](v3 - 8);
  v236 = &v203 - v4;
  v5 = sub_260E68AA4();
  v210 = *(v5 - 8);
  v211 = v5;
  MEMORY[0x28223BE20](v5);
  v209 = &v203 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v208 = &v203 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549F0, &qword_260E6E708);
  MEMORY[0x28223BE20](v9 - 8);
  v213 = &v203 - v10;
  v224 = sub_260E68CC4();
  v214 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v207 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for VideoViewConfiguration(0);
  v235 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v230 = &v203 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v221 = COERCE_DOUBLE(type metadata accessor for VideoViewConfiguration.VideoSequence(0));
  MEMORY[0x28223BE20](v221);
  v226 = &v203 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  MEMORY[0x28223BE20](v14 - 8);
  v206 = &v203 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v222 = &v203 - v17;
  MEMORY[0x28223BE20](v18);
  v233 = &v203 - v19;
  MEMORY[0x28223BE20](v20);
  v212 = &v203 - v21;
  MEMORY[0x28223BE20](v22);
  *&v220 = &v203 - v23;
  MEMORY[0x28223BE20](v24);
  *&v218 = &v203 - v25;
  MEMORY[0x28223BE20](v26);
  v232 = &v203 - v27;
  MEMORY[0x28223BE20](v28);
  v227 = &v203 - v29;
  MEMORY[0x28223BE20](v30);
  v237 = &v203 - v31;
  v32 = type metadata accessor for AdjustedAsset(0);
  MEMORY[0x28223BE20](v32 - 8);
  v219 = (&v203 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v217 = (&v203 - v35);
  MEMORY[0x28223BE20](v36);
  v216 = (&v203 - v37);
  MEMORY[0x28223BE20](v38);
  v40 = (&v203 - v39);
  MEMORY[0x28223BE20](v41);
  v43 = (&v203 - v42);
  v44 = sub_260E68904();
  v241 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v204 = &v203 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v203 = &v203 - v47;
  MEMORY[0x28223BE20](v48);
  v205 = &v203 - v49;
  MEMORY[0x28223BE20](v50);
  v228 = &v203 - v51;
  MEMORY[0x28223BE20](v52);
  v229 = &v203 - v53;
  MEMORY[0x28223BE20](v54);
  v231 = &v203 - v55;
  MEMORY[0x28223BE20](v56);
  v239 = &v203 - v57;
  v240 = v1;
  LODWORD(v225) = *a1;
  LOBYTE(v244) = 1;
  sub_260E46CC8(v43);
  v58 = *v43;
  v59 = v43[1];
  v60 = v43[2];
  v61 = v43[3];
  v62 = v43[4];
  LOBYTE(a1) = *(v43 + 40);

  v63 = v60;

  sub_260E48E20(v43, type metadata accessor for AdjustedAsset);
  *&v244 = v58;
  *(&v244 + 1) = v59;
  *&v245 = v63;
  *(&v245 + 1) = v61;
  v64 = v44;
  v65 = v237;
  *&v246 = v62;
  BYTE8(v246) = a1;
  GenericAsset.fileURL.getter(v237);
  v66 = v241;
  v67 = *(v241 + 48);
  if (v67(v65, 1, v64) != 1)
  {
    v68 = *(v66 + 32);
    v215 = v66 + 32;
    v223 = v68;
    v68(v239, v65, v64);

    LOBYTE(v244) = 0;
    v237 = v66 + 48;
    sub_260E46CC8(v40);
    v69 = *v40;
    v70 = v40[1];
    v234 = v67;
    v71 = v40[2];
    v72 = v40[3];
    v73 = v40[4];
    v74 = *(v40 + 40);

    v75 = v71;

    v76 = v40;
    v77 = v75;
    sub_260E48E20(v76, type metadata accessor for AdjustedAsset);
    *&v244 = v69;
    *(&v244 + 1) = v70;
    *&v245 = v75;
    *(&v245 + 1) = v72;
    *&v246 = v73;
    BYTE8(v246) = v74;
    v78 = v227;
    GenericAsset.fileURL.getter(v227);
    if (v234(v78, 1, v64) == 1)
    {
      (*(v66 + 8))(v239, v64);
      sub_260E155E4(v78, &qword_27FE54320, &qword_260E6E720);

      goto LABEL_5;
    }

    v223(v231, v78, v64);

    LOBYTE(v244) = 2;
    v86 = v216;
    sub_260E46CC8(v216);
    v87 = *v86;
    v88 = v86[1];
    v89 = v86[2];
    v90 = v86[3];
    v227 = v64;
    v91 = v86[4];
    v92 = *(v86 + 40);

    v93 = v89;

    sub_260E48E20(v86, type metadata accessor for AdjustedAsset);
    *&v244 = v87;
    *(&v244 + 1) = v88;
    *&v245 = v93;
    *(&v245 + 1) = v90;
    *&v246 = v91;
    BYTE8(v246) = v92;
    GenericAsset.fileURL.getter(v232);

    LOBYTE(v244) = 4;
    v94 = v217;
    sub_260E46CC8(v217);
    v95 = *v94;
    v96 = v94[1];
    v97 = v94[2];
    v98 = v94[3];
    v99 = v94[4];
    LOBYTE(v90) = *(v94 + 40);

    v100 = v97;

    sub_260E48E20(v94, type metadata accessor for AdjustedAsset);
    *&v244 = v95;
    *(&v244 + 1) = v96;
    *&v245 = v100;
    *(&v245 + 1) = v98;
    *&v246 = v99;
    BYTE8(v246) = v90;
    v101 = *&v218;
    GenericAsset.fileURL.getter(*&v218);

    v102 = v227;
    v103 = v234;

    if (v103(v101, 1, v102) == 1)
    {
      (*(v241 + 16))(v229, v239, v102);
      v104 = v103(v101, 1, v102);
      v105 = v225;
      if (v104 != 1)
      {
        sub_260E155E4(v101, &qword_27FE54320, &qword_260E6E720);
      }
    }

    else
    {
      v223(v229, v101, v102);
      v105 = v225;
    }

    LOBYTE(v244) = 5;
    v106 = v219;
    sub_260E46CC8(v219);
    v107 = *v106;
    v108 = v106[1];
    v109 = v106[2];
    v110 = v106[3];
    v111 = v106[4];
    v112 = *(v106 + 40);

    v113 = v109;

    sub_260E48E20(v106, type metadata accessor for AdjustedAsset);
    *&v244 = v107;
    *(&v244 + 1) = v108;
    *&v245 = v113;
    *(&v245 + 1) = v110;
    *&v246 = v111;
    BYTE8(v246) = v112;
    v114 = *&v220;
    GenericAsset.fileURL.getter(*&v220);

    v115 = v234;
    v116 = v102;
    if (v234(v114, 1, v102) == 1)
    {
      v117 = v241;
      (*(v241 + 16))(v228, v239, v116);
      v118 = v115(v114, 1, v116);
      v119 = v223;
      if (v118 != 1)
      {
        sub_260E155E4(v114, &qword_27FE54320, &qword_260E6E720);
      }
    }

    else
    {
      v119 = v223;
      v223(v228, v114, v102);
      v117 = v241;
    }

    v220 = -2.56842574e207;
    if (v105)
    {
      v120 = sub_260E69834();

      if ((v120 & 1) == 0)
      {
        if (v105 == 2)
        {
          v121 = sub_260E69834();

          v122 = v226;
          v123 = v240;
          if ((v121 & 1) == 0)
          {
            v124 = *(v117 + 16);
            v125 = v226;
            v126 = v228;
LABEL_30:
            v219 = v124;
            (v124)(v125, v126, v116);
LABEL_31:
            swift_storeEnumTagMultiPayload();
            v135 = 8194;
            v136 = 8217;
            switch(*(v123 + 24))
            {
              case 1:
                v135 = 8207;
                goto LABEL_55;
              case 2:
                v135 = 8211;
                goto LABEL_55;
              case 3:
              case 4:
                goto LABEL_56;
              case 5:
                v135 = 8202;
                goto LABEL_55;
              case 6:
                v135 = 8223;
                goto LABEL_55;
              case 7:
                v135 = 8206;
                goto LABEL_55;
              case 8:
                v135 = 8212;
                goto LABEL_55;
              case 9:
                v135 = 8231;
                goto LABEL_55;
              case 0xA:
                v135 = 8210;
                goto LABEL_55;
              case 0xB:
                v135 = 8198;
                goto LABEL_55;
              case 0xC:
                v135 = 8204;
                goto LABEL_55;
              case 0xD:
                v135 = 8201;
                goto LABEL_55;
              case 0xE:
                v135 = 8215;
                goto LABEL_55;
              case 0xF:
                v135 = 8229;
                goto LABEL_55;
              case 0x10:
                v135 = 8218;
                goto LABEL_55;
              case 0x11:
                v135 = 8209;
                goto LABEL_55;
              case 0x12:
                v135 = 8214;
                goto LABEL_55;
              case 0x13:
                v135 = 8230;
                goto LABEL_55;
              case 0x14:
                v135 = 8197;
                goto LABEL_55;
              case 0x15:
                v135 = 8208;
                goto LABEL_55;
              case 0x16:
                v135 = 8195;
                goto LABEL_55;
              case 0x17:
                v135 = 8205;
                goto LABEL_55;
              case 0x18:
                v135 = 8203;
                goto LABEL_55;
              case 0x19:
                v135 = 8221;
                goto LABEL_55;
              default:
LABEL_55:
                v136 = v135;
LABEL_56:
                if (v105)
                {
                  v137 = sub_260E69834();

                  if ((v137 & 1) == 0)
                  {
                    LODWORD(v242.m11) = v136;
                    *&v244 = sub_260E69804();
                    *(&v244 + 1) = v138;
                    v139 = 0x68635F706F6F6C5FLL;
                    v140 = 0xED00006465677261;
                    goto LABEL_61;
                  }
                }

                else
                {
                }

                *&v244 = 0;
                *(&v244 + 1) = 0xE000000000000000;
                sub_260E69644();
                LODWORD(v242.m11) = v136;
                v141 = sub_260E69804();
                v143 = v142;

                *&v244 = v141;
                *(&v244 + 1) = v143;
                v139 = 0x7463656E6E6F635FLL;
                v140 = 0xEF656761676E655FLL;
LABEL_61:
                MEMORY[0x2666F0C00](v139, v140);
                type metadata accessor for MobileAssetManager();
                ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                v145 = [objc_opt_self() bundleForClass_];
                v146 = sub_260E68FF4();

                v147 = sub_260E68FF4();
                v148 = [v145 URLForResource:v146 withExtension:v147];

                if (v148)
                {
                  v149 = v222;
                  sub_260E688C4();

                  v150 = 0;
                }

                else
                {
                  v150 = 1;
                  v149 = v222;
                }

                (*(v117 + 56))(v149, v150, 1, v227);
                sub_260E48D40(v149, v233);
                if (v105)
                {
                  v151 = sub_260E69834();

                  if ((v151 & 1) == 0)
                  {
                    v152 = 750.0;
                    v153 = 1050.0;
                    goto LABEL_74;
                  }
                }

                else
                {
                }

                if (*(v123 + 24) == 9)
                {
                  v153 = 1100.0;
                }

                else
                {
                  v153 = 750.0;
                }

                if (*(v123 + 24) == 9)
                {
                  v152 = 785.0;
                }

                else
                {
                  v152 = 880.0;
                }

LABEL_74:
                v154 = v230;
                sub_260E48E88(v122, v230, type metadata accessor for VideoViewConfiguration.VideoSequence);
                v155 = v238;
                sub_260E50238(v154 + *(v238 + 20));
                sub_260E48DB0(v233, v154 + v155[6]);
                v156 = v155[7];
                v157 = sub_260E68DB4();
                (*(*(v157 - 8) + 56))(v154 + v156, 1, 1, v157);
                sub_260E194C8(&v244);
                v158 = (v154 + v155[8]);
                *v158 = v153;
                v158[1] = v152;
                *(v154 + v155[9]) = 0;
                v159 = v154 + v155[10];
                v160 = v251;
                *(v159 + 96) = v250;
                *(v159 + 112) = v160;
                *(v159 + 128) = v252;
                v161 = v247;
                *(v159 + 32) = v246;
                *(v159 + 48) = v161;
                v162 = v249;
                *(v159 + 64) = v248;
                *(v159 + 80) = v162;
                v163 = v245;
                *v159 = v244;
                *(v159 + 16) = v163;
                v225 = v155[11];
                *(v154 + v225) = 0;
                if (v105)
                {
                  v164 = sub_260E69834();

                  if ((v164 & 1) == 0)
                  {
                    v165 = v123;
                    goto LABEL_77;
                  }
                }

                else
                {
                }

                CATransform3DMakeScale(&v242, 0.85, 0.85, 1.0);
                sub_260E48E80(&v242);
                v168 = *&v242.m43;
                *(v159 + 96) = *&v242.m41;
                *(v159 + 112) = v168;
                *(v159 + 128) = v243;
                v169 = *&v242.m23;
                *(v159 + 32) = *&v242.m21;
                *(v159 + 48) = v169;
                v170 = *&v242.m33;
                *(v159 + 64) = *&v242.m31;
                *(v159 + 80) = v170;
                v171 = *&v242.m13;
                *v159 = *&v242.m11;
                *(v159 + 16) = v171;
                v165 = v123;
                if (!v105)
                {

                  goto LABEL_84;
                }

LABEL_77:
                if (v105 != 1)
                {
                  v220 = -1.68324414e212;
                }

                v166 = sub_260E69834();

                v167 = v232;
                if ((v166 & 1) == 0)
                {
LABEL_89:
                  v197 = v122;
                  v198 = v230;
                  v199 = v236;
                  sub_260E48E88(v230, v236, type metadata accessor for VideoViewConfiguration);
                  (*(v235 + 56))(v199, 0, 1, v238);
                  v200 = sub_260E526E8(v199, *(v165 + 32));
                  sub_260E155E4(v199, &qword_27FE544D8, &unk_260E6C160);
                  sub_260E155E4(v233, &qword_27FE54320, &qword_260E6E720);
                  sub_260E48E20(v197, type metadata accessor for VideoViewConfiguration.VideoSequence);
                  v201 = *(v117 + 8);
                  v202 = v227;
                  v201(v228, v227);
                  v201(v229, v202);
                  sub_260E155E4(v167, &qword_27FE54320, &qword_260E6E720);
                  v201(v231, v202);
                  v201(v239, v202);
                  sub_260E48E20(v198, type metadata accessor for VideoViewConfiguration);
                  return v200;
                }

LABEL_84:
                v172 = v213;
                sub_260E68CB4();
                v173 = v214;
                v174 = v224;
                if ((*(v214 + 48))(v172, 1, v224) == 1)
                {
                  __break(1u);
                  JUMPOUT(0x260E489D0);
                }

                v175 = v207;
                (*(v173 + 32))(v207, v172, v174);
                v176 = v208;
                sub_260E68D24();
                v177 = v209;
                v178 = v210;
                v179 = v211;
                (*(v210 + 16))(v209, v176, v211);
                v180 = sub_260E68A94();
                v221 = v181;
                v222 = v180;
                v220 = COERCE_DOUBLE(sub_260E68A84());
                v218 = COERCE_DOUBLE(sub_260E68A64());
                v183 = v182;
                v184 = sub_260E68A74();
                v185 = *(v178 + 8);
                v185(v177, v179);
                v185(v176, v179);
                v186 = v175;
                v187 = *&v221;
                (*(v173 + 8))(v186, v224);
                v188 = v184 & 1;
                v189 = v220;
                *&v242.m11 = v222;
                v242.m12 = v187;
                v242.m13 = v220;
                v242.m14 = v218;
                v242.m21 = v183;
                LOBYTE(v242.m22) = v188;
                v190 = v206;
                GenericAsset.fileURL.getter(v206);
                v191 = v227;
                if (v234(v190, 1, v227) == 1)
                {
                  sub_260E155E4(v190, &qword_27FE54320, &qword_260E6E720);

                  v165 = v240;
                  v117 = v241;
                }

                else
                {
                  v192 = v203;
                  v223(v203, v190, v191);

                  v117 = v241;
                  v193 = v204;
                  (v219)(v204, v192, v191);
                  sub_260E64768(v193, &v242);
                  (*(v117 + 8))(v192, v191);
                  m11 = v242.m11;
                  v195 = v230;
                  v196 = v225;

                  *(v195 + v196) = m11;
                  v165 = v240;
                }

                v122 = v226;
                v167 = v232;
                goto LABEL_89;
            }
          }
        }

        else
        {

          v122 = v226;
          v123 = v240;
        }

        v124 = *(v117 + 16);
        v125 = v122;
        v126 = v229;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v127 = v212;
    sub_260E48DB0(v232, v212);
    if (v234(v127, 1, v116) == 1)
    {
      sub_260E155E4(v127, &qword_27FE54320, &qword_260E6E720);
      v128 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
      v129 = *(v117 + 16);
      v122 = v226;
      (v129)(v226, v239, v116);
      v219 = v129;
      (v129)(v122 + v128, v231, v116);
    }

    else
    {
      v130 = v205;
      v119(v205, v127, v116);
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
      v132 = *(v131 + 48);
      v133 = *(v131 + 64);
      v134 = *(v117 + 16);
      v122 = v226;
      (v134)(v226, v239, v116);
      v219 = v134;
      (v134)(v122 + v132, v231, v116);
      v223((v122 + v133), v130, v116);
      v105 = v225;
    }

    v123 = v240;
    goto LABEL_31;
  }

  sub_260E155E4(v65, &qword_27FE54320, &qword_260E6E720);

LABEL_5:

  if (qword_27FE53DC8 != -1)
  {
    swift_once();
  }

  v79 = sub_260E68E94();
  __swift_project_value_buffer(v79, qword_27FE549C8);
  v80 = sub_260E68E74();
  v81 = sub_260E69474();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_260E02000, v80, v81, "Could not find asset files", v82, 2u);
    MEMORY[0x2666F1EF0](v82, -1, -1);
  }

  v83 = v236;
  (*(v235 + 56))(v236, 1, 1, v238);
  v84 = objc_allocWithZone(type metadata accessor for AdjustedVideoView(0));
  return sub_260E559EC(v83);
}

id sub_260E48A38(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AdjustedAsset(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24[-1] - v8;
  LOBYTE(v24[0]) = (*a1 & 1) != 0;
  sub_260E465EC((&v24[-1] - v8));
  LOBYTE(v24[0]) = *(v2 + 24);
  if (HeadphoneHardwareModel.rawValue.getter() == 0x3173646F50726941 && v10 == 0xEA0000000000342CLL)
  {
    goto LABEL_3;
  }

  v11 = sub_260E69834();

  if (v11)
  {
    goto LABEL_5;
  }

  LOBYTE(v24[0]) = *(v2 + 24);
  if (HeadphoneHardwareModel.rawValue.getter() == 0x3173646F50726941 && v21 == 0xEA0000000000352CLL)
  {
LABEL_3:

LABEL_5:
    v12 = 100.0;
    v13 = 0x404B800000000000;
    goto LABEL_6;
  }

  v22 = sub_260E69834();

  if (v22)
  {
    goto LABEL_5;
  }

  v12 = 24.0;
  v13 = 0x4055C00000000000;
LABEL_6:
  v14 = *&v13;
  v15 = *(v2 + 32);
  sub_260E48E88(v9, v6, type metadata accessor for AdjustedAsset);
  v16 = type metadata accessor for PersonalizedImageView();
  v17 = objc_allocWithZone(v16);
  v18 = sub_260E55088(v6, v14, v12, 68.0);
  if (v15)
  {
    v24[3] = v16;
    v24[4] = sub_260E48EF0();
    v24[0] = v18;
    v19 = v18;
    sub_260E68E34();
    sub_260E48E20(v9, type metadata accessor for AdjustedAsset);
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    sub_260E48E20(v9, type metadata accessor for AdjustedAsset);
  }

  return v18;
}

uint64_t HeadphonePairing2.Assets.deinit()
{

  return v0;
}

uint64_t HeadphonePairing2.Assets.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_260E48D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E48DB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E48E20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_260E48E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_260E48EF0()
{
  result = qword_27FE54A00;
  if (!qword_27FE54A00)
  {
    type metadata accessor for PersonalizedImageView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54A00);
  }

  return result;
}

unint64_t sub_260E48F4C()
{
  result = qword_27FE54A08;
  if (!qword_27FE54A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54A08);
  }

  return result;
}

unint64_t sub_260E48FD4()
{
  result = qword_27FE54A20;
  if (!qword_27FE54A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54A20);
  }

  return result;
}

unint64_t sub_260E4905C()
{
  result = qword_27FE54A38;
  if (!qword_27FE54A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54A38);
  }

  return result;
}

unint64_t sub_260E490E4()
{
  result = qword_27FE54A50;
  if (!qword_27FE54A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54A50);
  }

  return result;
}

unint64_t sub_260E4916C()
{
  result = qword_27FE54A68;
  if (!qword_27FE54A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54A68);
  }

  return result;
}

uint64_t sub_260E491F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 24) = v5;
  return sub_260E16198(v3, v2, v4, v5);
}

uint64_t getEnumTagSinglePayload for HeadphonePairing2.Assets.VideoIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphonePairing2.Assets.VideoIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void GenericAsset.fileURL.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  v5 = [objc_opt_self() mainScreen];
  [v5 scale];
  v7 = v6;
  v8 = v6;

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (v4)
  {
    MEMORY[0x2666F0C00](64, 0xE100000000000000);
    v9 = sub_260E69804();
    MEMORY[0x2666F0C00](v9);

    MEMORY[0x2666F0C00](120, 0xE100000000000000);
  }

  v10 = sub_260E68FF4();

  v11 = sub_260E68FF4();
  v12 = [v3 URLForResource:v10 withExtension:v11];

  if (v12)
  {
    sub_260E688C4();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_260E68904();
  (*(*(v14 - 8) + 56))(a1, v13, 1, v14);
}

uint64_t GenericAsset.fileName.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t GenericAsset.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_260E69644();

  MEMORY[0x2666F0C00](v1, v2);
  MEMORY[0x2666F0C00](0x656C646E7562202CLL, 0xEA0000000000203ALL);
  v4 = [v3 description];
  v5 = sub_260E69024();
  v7 = v6;

  MEMORY[0x2666F0C00](v5, v7);

  MEMORY[0x2666F0C00](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t AdjustedAsset.asset.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  v7 = v4;
}

uint64_t AdjustedAsset.adjustmentURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdjustedAsset(0) + 20);
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AdjustedAsset(uint64_t a1)
{
  result = qword_27FE54A80;
  if (!qword_27FE54A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t AdjustedAsset.description.getter()
{
  sub_260E69644();

  v0 = GenericAsset.description.getter();
  MEMORY[0x2666F0C00](v0);

  MEMORY[0x2666F0C00](41, 0xE100000000000000);
  return 0xD000000000000015;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_260E499EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_260E49A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_260E49AA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_260E68904();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_260E49B64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_260E68904();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_260E49C08(uint64_t a1)
{
  result = sub_260E68904();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_260E49CE8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_260E68904();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_260E49DA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_260E68904();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s19ParentDirectoryCRUDVMa(uint64_t a1)
{
  result = qword_27FE54AA8;
  if (!qword_27FE54AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260E49E98(uint64_t a1)
{
  result = sub_260E49F1C();
  if (v2 <= 0x3F)
  {
    result = sub_260E68904();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_260E49F1C()
{
  result = qword_27FE54AB8;
  if (!qword_27FE54AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE54AB8);
  }

  return result;
}

uint64_t sub_260E49F68()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54A90);
  v1 = __swift_project_value_buffer(v0, qword_27FE54A90);
  if (qword_27FE53E60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CBA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_260E4A030()
{
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = _s19ParentDirectoryCRUDVMa(0);
  MEMORY[0x28223BE20](v2);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v37 - v6;
  v39 = 0;
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  v38 = v0;
  sub_260E688E4();
  v10 = sub_260E68FF4();

  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v39];

  if (v11)
  {
    if (v39)
    {
      return;
    }

    if (qword_27FE53DD0 != -1)
    {
      swift_once();
    }

    v12 = sub_260E68E94();
    __swift_project_value_buffer(v12, qword_27FE54A90);
    sub_260E33D88(v38, v7);
    v13 = sub_260E68E74();
    v14 = sub_260E69464();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40[0] = v16;
      *v15 = 136315138;
      v17 = sub_260E688E4();
      v19 = v18;
      sub_260E4A8D0(v7);
      v20 = sub_260E43774(v17, v19, v40);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_260E02000, v13, v14, "PersonalizationAssetManager.parentDirectory is a file {path: %s}", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x2666F1EF0](v16, -1, -1);
      MEMORY[0x2666F1EF0](v15, -1, -1);
    }

    else
    {

      sub_260E4A8D0(v7);
    }

    sub_260E15590();
    swift_allocError();
    *v36 = 0;
    *(v36 + 8) = 0;
    *(v36 + 16) = 2;
  }

  else
  {
    if (qword_27FE53DD0 != -1)
    {
      swift_once();
    }

    v21 = sub_260E68E94();
    __swift_project_value_buffer(v21, qword_27FE54A90);
    sub_260E33D88(v38, v4);
    v22 = sub_260E68E74();
    v23 = sub_260E69474();
    v24 = os_log_type_enabled(v22, v23);
    v37[1] = v1;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40[0] = v26;
      *v25 = 136315138;
      v27 = sub_260E688E4();
      v29 = v28;
      sub_260E4A8D0(v4);
      v30 = sub_260E43774(v27, v29, v40);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_260E02000, v22, v23, "Creating directory: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x2666F1EF0](v26, -1, -1);
      MEMORY[0x2666F1EF0](v25, -1, -1);
    }

    else
    {

      sub_260E4A8D0(v4);
    }

    v31 = [v8 defaultManager];
    v32 = sub_260E68894();
    v40[0] = 0;
    v33 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v40];

    if (v33)
    {
      v34 = v40[0];
      return;
    }

    v35 = v40[0];
    sub_260E68854();
  }

  swift_willThrow();
}

uint64_t sub_260E4A4DC(uint64_t a1, uint64_t a2)
{
  v5 = sub_260E68904();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  _s19ParentDirectoryCRUDVMa(0);
  v21[0] = a1;
  v21[1] = a2;
  sub_260E688A4();
  v12 = *v2;
  sub_260E688E4();
  v13 = sub_260E68FF4();

  v14 = [v12 fileExistsAtPath_];

  if (v14)
  {
    sub_260E688A4();
    v15 = v21[3];
    v16 = sub_260E68914();
    if (v15)
    {
      v17 = *(v6 + 8);
      v17(v8, v5);
      return (v17)(v11, v5);
    }

    else
    {
      v19 = *(v6 + 8);
      v20 = v16;
      v19(v8, v5);
      v19(v11, v5);
      return v20;
    }
  }

  else
  {
    (*(v6 + 8))(v11, v5);
    return 0;
  }
}

uint64_t sub_260E4A6EC(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = sub_260E68904();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19ParentDirectoryCRUDVMa(0);
  sub_260E688A4();
  v7 = *v2;
  sub_260E688E4();
  v8 = sub_260E68FF4();

  v9 = [v7 fileExistsAtPath_];

  if (v9)
  {
    v10 = sub_260E68894();
    v16[0] = 0;
    v11 = [v7 removeItemAtURL:v10 error:v16];

    if (v11)
    {
      v12 = *(v4 + 8);
      v13 = v16[0];
      return v12(v6, v3);
    }

    v15 = v16[0];
    sub_260E68854();

    swift_willThrow();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_260E4A8D0(uint64_t a1)
{
  v2 = _s19ParentDirectoryCRUDVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E4A92C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_260E4A950, 0, 0);
}

uint64_t sub_260E4A950()
{
  v20 = v0;
  if (qword_27FE53DD8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_260E68E94();
  v0[8] = __swift_project_value_buffer(v2, qword_27FE54AC0);

  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69474();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_260E43774(v8, v6, &v19);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v7;
    *v10 = v7;
    v12 = v7;
    _os_log_impl(&dword_260E02000, v4, v5, "Fetch all records START {type: %s, database: %@}", v9, 0x16u);
    sub_260E4BA94(v10);
    MEMORY[0x2666F1EF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);
  }

  sub_260E157C4(0, &qword_27FE54AD8, 0x277CBC578);
  v13 = objc_opt_self();

  v14 = [v13 predicateWithValue_];
  v15 = sub_260E69514();
  v0[9] = v15;
  v16 = *MEMORY[0x277CBBFC0];
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_260E4ABF4;

  return MEMORY[0x28210DF20](v15, 0, 0, v16);
}

uint64_t sub_260E4ABF4(uint64_t a1, void *a2)
{
  v5 = *v3;
  *(v5 + 88) = a1;
  *(v5 + 96) = v2;

  if (v2)
  {
    v6 = sub_260E4B214;
  }

  else
  {

    v6 = sub_260E4AD10;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_260E4AD10()
{
  v47 = v0;
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = (v1 + 48);
    do
    {
      v15 = *(v4 - 2);
      v16 = *(v4 - 1);
      if (*v4)
      {
        *(v0 + 16) = v16;
        sub_260E4BAFC(v16);
        v17 = v15;
        sub_260E4BAFC(v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
        swift_willThrowTypedImpl();
        v18 = v17;
        sub_260E4BAFC(v16);
        v19 = sub_260E68E74();
        v20 = sub_260E69454();
        sub_260E4BB08(v16);

        if (os_log_type_enabled(v19, v20))
        {
          v44 = v3;
          v5 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v46 = v43;
          *v5 = 136315394;
          *(v0 + 24) = v16;
          v6 = v16;
          v7 = sub_260E69084();
          v9 = sub_260E43774(v7, v8, &v46);

          *(v5 + 4) = v9;
          *(v5 + 12) = 2080;
          *(v0 + 32) = v18;
          sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
          v10 = v18;
          v11 = sub_260E69084();
          v13 = sub_260E43774(v11, v12, &v46);

          *(v5 + 14) = v13;
          _os_log_impl(&dword_260E02000, v19, v20, "Error fetching record {error: %s, reccordID: %s}", v5, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2666F1EF0](v43, -1, -1);
          v14 = v5;
          v3 = v44;
          MEMORY[0x2666F1EF0](v14, -1, -1);
          sub_260E4BB08(v16);

          sub_260E4BB08(v16);
        }

        else
        {
          sub_260E4BB08(v16);

          sub_260E4BB08(v16);
        }
      }

      else
      {
        v21 = v15;
        sub_260E4BAFC(v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_260E41D7C(0, v3[2] + 1, 1, v3);
        }

        v23 = v3[2];
        v22 = v3[3];
        if (v23 >= v22 >> 1)
        {
          v3 = sub_260E41D7C((v22 > 1), v23 + 1, 1, v3);
        }

        v3[2] = v23 + 1;
        v24 = &v3[2 * v23];
        v24[4] = v21;
        v24[5] = v16;
      }

      v4 += 24;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v25 = sub_260E68E74();
  v26 = sub_260E69474();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v0;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v45 = v29;
    *v28 = 136315138;
    v30 = v3[2];
    v31 = MEMORY[0x277D84F90];
    if (v30)
    {
      v46 = MEMORY[0x277D84F90];
      sub_260E696D4();
      v32 = (v3 + 4);
      do
      {
        v33 = *v32;
        v32 += 2;
        v34 = v33;
        sub_260E696B4();
        sub_260E696E4();
        sub_260E696F4();
        sub_260E696C4();
        --v30;
      }

      while (v30);
      v31 = v46;
    }

    v0 = v27;
    v35 = *(v27 + 72);
    v36 = sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
    v37 = MEMORY[0x2666F0CD0](v31, v36);
    v39 = v38;

    v40 = sub_260E43774(v37, v39, &v45);

    *(v28 + 4) = v40;

    _os_log_impl(&dword_260E02000, v25, v26, "Fetch all records END -- loaded from CloudKit {records: %s}", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x2666F1EF0](v29, -1, -1);
    MEMORY[0x2666F1EF0](v28, -1, -1);
  }

  else
  {
  }

  v41 = *(v0 + 8);

  return v41(v3);
}

uint64_t sub_260E4B214()
{
  v16 = v0;
  v1 = v0[7];

  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_260E43774(v7, v5, &v15);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v6;
    *v9 = v6;
    v11 = v6;
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch all records FAIL {type: %s, database: %@}", v8, 0x16u);
    sub_260E4BA94(v9);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  v12 = v0[9];
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_260E4B3BC()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54AC0);
  v1 = __swift_project_value_buffer(v0, qword_27FE54AC0);
  if (qword_27FE53E60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CBA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E4B484(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_260E4B4A4, 0, 0);
}

uint64_t sub_260E4B4A4()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_260E157C4(0, &qword_27FE545D0, 0x277CBC5A0);
  *v4 = v0;
  v4[1] = sub_260E4B5BC;

  return MEMORY[0x28210DEC0](v0 + 2, v2, 0, &unk_260E6F170, v3, v5);
}

uint64_t sub_260E4B5BC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_260E4B740;
  }

  else
  {

    v2 = sub_260E4B6D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E4B6D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_260E4B740()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E4B7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_260E4B7D0, 0, 0);
}

uint64_t sub_260E4B7D0()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260E4B8F8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54738, &qword_260E6D7A8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_260E343C0;
  v0[13] = &block_descriptor_1;
  v0[14] = v3;
  [v2 fetchRecordWithID:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260E4B8F8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_260E4BA28;
  }

  else
  {
    v2 = sub_260E4BA08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E4BA28(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_260E4BA94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F0, &unk_260E6BFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E4BB14(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260E30A3C;

  return sub_260E4B7AC(a1, a2, v6);
}

uint64_t AbstractAssetRequest.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 104)));
  return v0;
}

uint64_t sub_260E4BC68()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54AE0);
  v1 = __swift_project_value_buffer(v0, qword_27FE54AE0);
  if (qword_27FE53E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}
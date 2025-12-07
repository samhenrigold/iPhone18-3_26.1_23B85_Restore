double sub_20DA29460@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_20D9D7174((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

_OWORD *sub_20DA294AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x277D83E88];
  v9 = *a5;
  v11 = sub_20D9CB170(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_20D9C29D8(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_20D9D2E2C();
    goto LABEL_7;
  }

  sub_20D9CE714(v14, a4 & 1);
  v20 = sub_20D9CB170(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D83E88]);
  sub_20DA2A034(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

_OWORD *sub_20DA29604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D837D0];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = sub_20D9CB170(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_20D9C29D8(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_20D9D2E2C();
    goto LABEL_7;
  }

  sub_20D9CE714(v16, a5 & 1);
  v22 = sub_20D9CB170(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_20DA29FB0(v13, a3, a4, *v26, v26[1], v19);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_20DA297E8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, double a5)
{
  v23[0] = a5;
  v24 = MEMORY[0x277D839F8];
  v9 = *a4;
  v11 = sub_20D9CB170(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_20D9C29D8(v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_20D9D2E2C();
    goto LABEL_7;
  }

  sub_20D9CE714(v14, a3 & 1);
  v20 = sub_20D9CB170(a1, a2);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v23, MEMORY[0x277D839F8]);
  sub_20DA29F2C(v11, a1, a2, v17, *v22);

  return __swift_destroy_boxed_opaque_existential_0(v23);
}

_OWORD *sub_20DA29938(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_20D9CB170(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_20D9C29D8(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_20D9D2E2C();
    goto LABEL_7;
  }

  sub_20D9CE714(v14, a4 & 1);
  v20 = sub_20D9CB170(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D839B0]);
  sub_20DA29EA8(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

_OWORD *sub_20DA29A90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A8, &qword_20DD94E08);
  v29 = v10;
  *&v28 = a1;
  v11 = *a5;
  v13 = sub_20D9CB170(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_20D9C29D8(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_20D9D2E2C();
    goto LABEL_7;
  }

  sub_20D9CE714(v16, a4 & 1);
  v22 = sub_20D9CB170(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_20DA2A0B8(v13, a2, a3, *v26, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_20DA29C88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6)
{
  v31 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v13 = *a5;
  v15 = sub_20D9CB170(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
      return sub_20D9C29D8(&v30, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_20D9D2E2C();
    goto LABEL_7;
  }

  sub_20D9CE714(v18, a4 & 1);
  v24 = sub_20D9CB170(a2, a3);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v31);
  MEMORY[0x28223BE20](v26);
  v28 = &v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  sub_20DA2A168(v15, a2, a3, v28, v21, a6);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_20DA29EA8(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20D9C29D8(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_20DA29F2C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v11[0] = a5;
  v12 = MEMORY[0x277D839F8];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20D9C29D8(v11, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_20DA29FB0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_20D9C29D8(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_20DA2A034(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83E88];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20D9C29D8(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_20DA2A0B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A8, &qword_20DD94E08);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_20D9C29D8(&v15, (a5[7] + 32 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_20DA2A168(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_20D9C29D8(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

void sub_20DA2A23C(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_20D9D7174(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_20D9C29D8(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_20D9D76EC(v20, &unk_27C844360, &unk_20DD94D70);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20DA2A39C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844388, &qword_20DD95590);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - v4;
  v42 = sub_20DD636C4();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844390, &qword_20DD94DF0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    sub_20DA031AC(v14, v33, &qword_27C844390, &qword_20DD94DF0);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_20DA031AC(v36, v39, &qword_27C844388, &qword_20DD95590);
      v34(v37);
      sub_20D9D76EC(v37, &qword_27C844388, &qword_20DD95590);
      v35 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844398, &qword_20DD94DF8);
    return (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v13, 1, 1, v44);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for CameraEventDebugLogger(uint64_t a1)
{
  result = qword_27C844318;
  if (!qword_27C844318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20DA2A7CC()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  sub_20DD63504();
  v1 = sub_20DD64E74();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    v3 = sub_20DD634D4();
    v7[0] = 0;
    v4 = [v0 removeItemAtURL:v3 error:v7];

    if (v4)
    {
      v5 = v7[0];
    }

    else
    {
      v6 = v7[0];
      sub_20DD634A4();

      swift_willThrow();
    }
  }
}

uint64_t sub_20DA2A8F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442E0, &qword_20DD95D90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20DA2A968()
{
  result = qword_27C844308;
  if (!qword_27C844308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844308);
  }

  return result;
}

void sub_20DA2A9D4(uint64_t a1)
{
  sub_20DA2AE94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of CameraEventDebugLogger.removeExistingFiles()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20D9C76B4;

  return v5();
}

uint64_t dispatch thunk of CameraEventDebugLogger.logFetchEventsToJSON(dateInterval:limit:ascending:reason:playheadPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *((*MEMORY[0x277D85000] & *v6) + 0x100);
  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_20D9D7010;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of CameraEventDebugLogger.logEvents(_:toJSONWithDebugLogType:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x108);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20D9D77BC;

  return v9(a1, a2);
}

void sub_20DA2AE94(uint64_t a1)
{
  if (!qword_27C844328)
  {
    sub_20DD63484();
    v1 = sub_20DD65494();
    if (!v2)
    {
      atomic_store(v1, &qword_27C844328);
    }
  }
}

unint64_t sub_20DA2AEEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_20DA2A23C(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_20D9C29D8(v44, v42);
  v14 = *a5;
  result = sub_20D9CB170(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_20D9CE714(v20, a4 & 1);
    result = sub_20D9CB170(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_20DD659E4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_20D9D2E2C();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_20D9C29D8(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_20D9C29D8(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_20DA2A23C(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_20D9C29D8(v44, v42);
        v32 = *a5;
        result = sub_20D9CB170(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_20D9CE714(v36, 1);
          result = sub_20D9CB170(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_20D9C29D8(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_20D9C29D8(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_20DA2A23C(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_20D9C51CC(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20DA2B1FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20D9D77C4;

  return sub_20DA256DC(v2, v3, v5, v4);
}

uint64_t sub_20DA2B2BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9D77C4;

  return sub_20DAB33DC(v2, v3, v4);
}

uint64_t sub_20DA2B37C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_20D9D77C4;

  return sub_20DA23D70(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_20DA2B458(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20DAB34C4(a1, v4, v5, v6);
}

uint64_t sub_20DA2B524()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9C76B4;

  return sub_20DA22540(v2, v3);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20DA2B610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id HFAccessoryRepresentable.moveToRoom(room:)(uint64_t a1)
{
  v2 = [v1 hf:a1 moveToRoom:?];

  return v2;
}

id HFAccessoryRepresentable.room.getter()
{
  v1 = [v0 hf_safeRoom];

  return v1;
}

id HFAccessoryRepresentable.homeKitObject.getter()
{
  v1 = [v0 hf_homeKitObject];

  return v1;
}

id HFAccessoryRepresentable.accessoryType.getter()
{
  v1 = [v0 hf_accessoryType];

  return v1;
}

id HFAccessoryRepresentable.itemClass.getter()
{
  result = [v0 hf_itemClass];
  if (result)
  {
    swift_getObjCClassMetadata();
    return swift_dynamicCastTypeToObjCProtocolConditional();
  }

  return result;
}

uint64_t sub_20DA2B860(uint64_t a1, SEL *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v9 = [v5 *a2];
  sub_20D9D7510(0, a3, a4);
  sub_20D9EC18C(a5, a3, a4);
  v10 = sub_20DD651E4();

  return v10;
}

uint64_t sub_20DA2B9B4(uint64_t *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_9;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  while ((a2 & 0xC000000000000001) == 0)
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = *(a2 + 32);
      swift_unknownObjectRetain();
      goto LABEL_6;
    }

    __break(1u);
LABEL_9:
    if (!sub_20DD655B4())
    {
      return 0;
    }
  }

  v3 = MEMORY[0x20F326680](0, a2);
LABEL_6:
  [v3 mediaProfiles];
  sub_20D9D7510(0, &qword_27C8443C0, 0x277CD1BD8);
  sub_20D9EC18C(&qword_27C8443C8, &qword_27C8443C0, 0x277CD1BD8);
  result = sub_20DD651D4();
  __break(1u);
  return result;
}

uint64_t Sequence<>.contains(services:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  return sub_20D9DFCF4(sub_20DA2BEA0, v4, a1) & 1;
}

uint64_t sub_20DA2BEF4(uint64_t a1, void *a2)
{
  v3 = HFAccessoryRepresentable.containedServices.getter(a1);
  LOBYTE(a2) = sub_20D9F01FC(a2, v3);

  return a2 & 1;
}

uint64_t sub_20DA2BFA0(uint64_t a1)
{
  v1 = HFAccessoryRepresentable.associatedAccessories.getter(a1);
  v2 = HFAccessoryRepresentable.associatedAccessories.getter(v1);
  v3 = sub_20DA2C050(v1, v2, &qword_27C844290, 0x277CD1650);

  return v3 & 1;
}

uint64_t sub_20DA2C050(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v5)
    {
      v8 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v8 = a2;
      }

      sub_20DA2C2A0(v8, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v9 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        v7 = sub_20D9D7510(0, a3, a4);
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v29 = v15;
        v17 = a1;
        if (!v13)
        {
LABEL_24:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              goto LABEL_36;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v30 = (v20 - 1) & v20;
              goto LABEL_29;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v7, v6);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v30 = (v13 - 1) & v13;
LABEL_29:
          v21 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v22 = sub_20DD65444();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          while (1)
          {
            v26 = *(*(a2 + 48) + 8 * v24);
            v27 = sub_20DD65454();

            if (v27)
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v15 = v29;
          v13 = v30;
          v17 = a1;
          if (!v30)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v9 = 0;
    }

    return v9 & 1;
  }

  if (a1 < 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v5)
  {
    sub_20DA2C2A0(v6, a2);
    return v9 & 1;
  }

  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x2821FCF40](v7, v6);
}

void sub_20DA2C2A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_20DD655B4())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_20DD65604();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20DA2C3C4@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo21HFImageIconIdentifiera4HomeE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t _sSo21HFImageIconIdentifiera4HomeE8allCasesSayABGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8443E0, &unk_20DD94E78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20DD94E20;
  *(v0 + 32) = @"HFImageIconIdentifierServiceSensor";
  *(v0 + 40) = @"HFImageIconIdentifierService2Sensors";
  *(v0 + 48) = @"HFImageIconIdentifierService3Sensors";
  *(v0 + 56) = @"HFImageIconIdentifierService4Sensors";
  *(v0 + 64) = @"HFImageIconIdentifierService5Sensors";
  *(v0 + 72) = @"HFImageIconIdentifierService6Sensors";
  *(v0 + 80) = @"HFImageIconIdentifierWaterDroplet";
  *(v0 + 88) = @"HFImageIconIdentifierSceneArrivingHome";
  *(v0 + 96) = @"HFImageIconIdentifierSceneBreakfast";
  *(v0 + 104) = @"HFImageIconIdentifierSceneChillOut";
  *(v0 + 112) = @"HFImageIconIdentifierSceneCoffee";
  *(v0 + 120) = @"HFImageIconIdentifierSceneDinner";
  *(v0 + 128) = @"HFImageIconIdentifierSceneLeavingHome";
  *(v0 + 136) = @"HFImageIconIdentifierSceneMovie";
  *(v0 + 144) = @"HFImageIconIdentifierSceneParty";
  *(v0 + 152) = @"HFImageIconIdentifierSceneRomance";
  *(v0 + 160) = @"HFImageIconIdentifierSceneSleep";
  *(v0 + 168) = @"HFImageIconIdentifierSceneWakeUp";
  *(v0 + 176) = @"HFImageIconIdentifierTriggerTime";
  *(v0 + 184) = @"HFImageIconIdentifierTriggerLocation";
  *(v0 + 192) = @"HFImageIconIdentifierTriggerCharacteristic";
  *(v0 + 200) = @"HFImageIconIdentifierTriggerSensor";
  *(v0 + 208) = @"HFImageIconIdentifierMapLocationHome";
  *(v0 + 216) = @"HFImageIconIdentifierMapLocationMarker";
  *(v0 + 224) = @"HFImageIconIdentifierGeneric";
  *(v0 + 232) = @"HFImageIconIdentifierPlaceholder";
  *(v0 + 240) = @"HFImageIconIdentifierDecorationSwing";
  *(v0 + 248) = @"HFImageIconIdentifierSiriOrbRegular";
  *(v0 + 256) = @"HFImageIconIdentifierSiriOrbSmall";
  *(v0 + 264) = @"HFImageIconIdentifierHomeRegular";
  *(v0 + 272) = @"HFImageIconIdentifierHomeSmall";
  *(v0 + 280) = @"HFImageIconIdentifierNaturalLightingRegular";
  *(v0 + 288) = @"HFImageIconIdentifierNaturalLightingSmall";
  *(v0 + 296) = @"HFImageIconIdentifierSetupBannerDisclosure";
  *(v0 + 304) = @"HFImageIconIdentifierSeparatorArrow";
  v1 = @"HFImageIconIdentifierServiceSensor";
  v2 = @"HFImageIconIdentifierService2Sensors";
  v3 = @"HFImageIconIdentifierService3Sensors";
  v4 = @"HFImageIconIdentifierService4Sensors";
  v5 = @"HFImageIconIdentifierService5Sensors";
  v6 = @"HFImageIconIdentifierService6Sensors";
  v7 = @"HFImageIconIdentifierWaterDroplet";
  v8 = @"HFImageIconIdentifierSceneArrivingHome";
  v9 = @"HFImageIconIdentifierSceneBreakfast";
  v10 = @"HFImageIconIdentifierSceneChillOut";
  v11 = @"HFImageIconIdentifierSceneCoffee";
  v12 = @"HFImageIconIdentifierSceneDinner";
  v13 = @"HFImageIconIdentifierSceneLeavingHome";
  v14 = @"HFImageIconIdentifierSceneMovie";
  v15 = @"HFImageIconIdentifierSceneParty";
  v16 = @"HFImageIconIdentifierSceneRomance";
  v17 = @"HFImageIconIdentifierSceneSleep";
  v18 = @"HFImageIconIdentifierSceneWakeUp";
  v19 = @"HFImageIconIdentifierTriggerTime";
  v20 = @"HFImageIconIdentifierTriggerLocation";
  v21 = @"HFImageIconIdentifierTriggerCharacteristic";
  v22 = @"HFImageIconIdentifierTriggerSensor";
  v23 = @"HFImageIconIdentifierMapLocationHome";
  v24 = @"HFImageIconIdentifierMapLocationMarker";
  v25 = @"HFImageIconIdentifierGeneric";
  v26 = @"HFImageIconIdentifierPlaceholder";
  v27 = @"HFImageIconIdentifierDecorationSwing";
  v28 = @"HFImageIconIdentifierSiriOrbRegular";
  v29 = @"HFImageIconIdentifierSiriOrbSmall";
  v30 = @"HFImageIconIdentifierHomeRegular";
  v31 = @"HFImageIconIdentifierHomeSmall";
  v32 = @"HFImageIconIdentifierNaturalLightingRegular";
  v33 = @"HFImageIconIdentifierNaturalLightingSmall";
  v34 = @"HFImageIconIdentifierSetupBannerDisclosure";
  v35 = @"HFImageIconIdentifierSeparatorArrow";
  return v0;
}

unint64_t sub_20DA2C7A8()
{
  result = qword_27C8443D0;
  if (!qword_27C8443D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443D8, &qword_20DD94E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8443D0);
  }

  return result;
}

uint64_t sub_20DA2C814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  sub_20DD651E4();
  v5 = a1;
  sub_20DD63C74();
}

uint64_t DataModel.home(_:willReadValuesFor:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    result = sub_20DD655B4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(a2 + 16);
    if (!result)
    {
      return result;
    }
  }

  return sub_20DD63C74();
}

void sub_20DA2C920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  v4 = sub_20DD651E4();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    if (!sub_20DD655B4())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *(v4 + 16);
  v7 = a1;
  if (v6)
  {
LABEL_3:
    sub_20DD63C74();
  }

LABEL_4:
}

uint64_t sub_20DA2CA14(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  v7 = sub_20DD651E4();
  v8 = sub_20DD651E4();
  v9 = a3;
  v10 = a1;
  sub_20DA2F3E8(v7, v8);
}

Swift::Void __swiftcall DataModel.executionEnvironmentRunningStateDidChange(_:)(HFExecutionEnvironment *a1)
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = [(HFExecutionEnvironment *)a1 runningState];
  v7 = sub_20DD65114();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_20DD650F4();
  v8 = sub_20DD650E4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;
  v9[5] = ObjectType;
  sub_20DA1C514(0, 0, v5, &unk_20DD94E90, v9);
}

uint64_t sub_20DA2CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_20DD64C44();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_20DD63BD4();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  sub_20DD650F4();
  v5[10] = sub_20DD650E4();
  v9 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA2CD88, v9, v8);
}

uint64_t sub_20DA2CD88()
{
  v1 = v0[2];

  if (v1 == 1)
  {
    v3 = v0 + 9;
    v9 = v0[9];
    v4 = v0 + 8;
    v10 = v0[8];
    v7 = v0 + 7;
    v11 = v0[7];
    sub_20DD63C84();
    v8 = sub_20DD63C64();
    (*(v10 + 104))(v9, *MEMORY[0x277D15410], v11);
    sub_20DD63C54();
  }

  else if (v1)
  {
    v3 = v0 + 6;
    sub_20DD63BC4();
    v8 = sub_20DD64C24();
    v12 = sub_20DD65374();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = v0[2];
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v13;
      _os_log_impl(&dword_20D9BF000, v8, v12, "Received unknown running state from HFExecutionEnvironment: %lu", v14, 0xCu);
      MEMORY[0x20F327D10](v14, -1, -1);
    }

    v4 = v0 + 5;
    v7 = v0 + 4;
  }

  else
  {
    v3 = v0 + 9;
    v2 = v0[9];
    v4 = v0 + 8;
    v5 = v0[8];
    v7 = v0 + 7;
    v6 = v0[7];
    sub_20DD63C84();
    v8 = sub_20DD63C64();
    (*(v5 + 104))(v2, *MEMORY[0x277D15410], v6);
    sub_20DD63C44();
  }

  v15 = *v3;
  v16 = *v7;
  v17 = *v4;

  (*(v17 + 8))(v15, v16);

  v18 = v0[1];

  return v18();
}

void sub_20DA2CF98(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = a3;
  v9 = [v8 runningState];
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_20DD650F4();
  v11 = sub_20DD650E4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v9;
  v12[5] = ObjectType;
  sub_20DA1C514(0, 0, v7, &unk_20DD94FD0, v12);
}

Swift::Void __swiftcall DataModel.didUpdate(toInstallingState:for:)(Swift::Bool toInstallingState, HMAccessory *a2)
{
  v4 = sub_20DD63744();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20DD64464();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  if ([(HMAccessory *)a2 supportsCHIP])
  {
    v15 = MEMORY[0x277D16638];
  }

  else
  {
    v16 = *MEMORY[0x277D165E8];
    v17 = sub_20DD64454();
    (*(*(v17 - 8) + 104))(v14, v16, v17);
    v15 = MEMORY[0x277D16610];
  }

  v18 = *(v9 + 104);
  v18(v14, *v15, v8);
  v19 = [(HMAccessory *)a2 uniqueIdentifier];
  sub_20DD63714();

  if (toInstallingState)
  {
    (*(v9 + 16))(v12, v14, v8);
  }

  else
  {
    v18(v12, *MEMORY[0x277D16600], v8);
  }

  sub_20DD63C34();
  v20 = *(v9 + 8);
  v20(v12, v8);
  (*(v5 + 8))(v7, v4);
  v20(v14, v8);
}

void sub_20DA2D398(void *a1, uint64_t a2, Swift::Bool a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  DataModel.didUpdate(toInstallingState:for:)(a3, v6);
}

uint64_t HMHome.notifyHomeObserversOfChanged(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_20DD65114();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_20DD650F4();
  v7 = v1;

  v8 = sub_20DD650E4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v9[5] = a1;
  sub_20DA1C514(0, 0, v5, &unk_20DD94EA0, v9);
}

uint64_t sub_20DA2D540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_20DD650F4();
  v5[10] = sub_20DD650E4();
  v7 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA2D5D8, v7, v6);
}

uint64_t sub_20DA2D5D8()
{
  v1 = v0[9];
  v2 = v0[8];

  v3 = [objc_opt_self() sharedDispatcher];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v0[6] = sub_20DA2FC94;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DA2E46C;
  v0[5] = &block_descriptor_78;
  v5 = _Block_copy(v0 + 2);
  v6 = v2;

  [v3 dispatchHomeObserverMessage:v5 sender:0];
  _Block_release(v5);

  v7 = v0[1];

  return v7();
}

void sub_20DA2D728(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 respondsToSelector_])
  {
    if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
    {
      sub_20D9EBA70(MEMORY[0x277D84F90]);
    }

    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
    v5 = sub_20DD651C4();
    v6 = sub_20DD651C4();

    [a1 home:a2 didWriteValuesForCharacteristics:v5 failedCharacteristics:v6];
  }
}

Swift::Void __swiftcall HMHome.notifyHomeObserversOfNewRoom(_:)(HMRoom a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_20DD65114();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_20DD650F4();
  v7 = v1;
  v8 = a1.super.isa;
  v9 = sub_20DD650E4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = v8;
  sub_20DA1C514(0, 0, v5, &unk_20DD94EB0, v10);
}

uint64_t sub_20DA2D9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_20DD650F4();
  v5[10] = sub_20DD650E4();
  v7 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA2DA4C, v7, v6);
}

uint64_t sub_20DA2DA4C()
{
  v1 = v0[9];
  v2 = v0[8];

  v3 = [objc_opt_self() sharedDispatcher];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v0[6] = sub_20DA2FC20;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DA2E46C;
  v0[5] = &block_descriptor_72;
  v5 = _Block_copy(v0 + 2);
  v6 = v2;
  v7 = v1;

  [v3 dispatchHomeObserverMessage:v5 sender:0];
  _Block_release(v5);

  v8 = v0[1];

  return v8();
}

Swift::Void __swiftcall HMHome.notifyHomeObserversOfRoomChanged(_:for:)(HMRoom _, HMAccessory *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_20DD65114();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_20DD650F4();
  v9 = v2;
  v10 = _.super.isa;
  v11 = a2;
  v12 = sub_20DD650E4();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v11;
  sub_20DA1C514(0, 0, v7, &unk_20DD94EC0, v13);
}

uint64_t sub_20DA2DCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_20DD650F4();
  v6[11] = sub_20DD650E4();
  v8 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA2DD7C, v8, v7);
}

uint64_t sub_20DA2DD7C()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];

  v4 = [objc_opt_self() sharedDispatcher];
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v0[6] = sub_20DA2FB98;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DA2E46C;
  v0[5] = &block_descriptor_66;
  v6 = _Block_copy(v0 + 2);
  v7 = v3;
  v8 = v2;
  v9 = v1;

  [v4 dispatchHomeObserverMessage:v6 sender:0];
  _Block_release(v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20DA2DED0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = sub_20DD65114();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_20DD650F4();
  v8 = v6;

  v9 = sub_20DD650E4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = a1;
  sub_20DA1C514(0, 0, v5, &unk_20DD94FF8, v10);
}

uint64_t sub_20DA2E000(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *v1;
  v7 = sub_20DD65114();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_20DD650F4();
  v8 = v6;
  v9 = a1;
  v10 = sub_20DD650E4();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  sub_20DA1C514(0, 0, v5, &unk_20DD94FF0, v11);
}

uint64_t sub_20DA2E130(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = *v2;
  v9 = sub_20DD65114();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_20DD650F4();
  v10 = v8;
  v11 = a1;
  v12 = a2;
  v13 = sub_20DD650E4();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v10;
  v14[5] = v11;
  v14[6] = v12;
  sub_20DA1C514(0, 0, v7, &unk_20DD94FE8, v14);
}

uint64_t sub_20DA2E298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_20DD650F4();
  *(v4 + 72) = sub_20DD650E4();
  v6 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA2E330, v6, v5);
}

uint64_t sub_20DA2E330()
{
  v1 = v0[8];

  v2 = [objc_opt_self() sharedDispatcher];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[6] = sub_20DA2FB1C;
  v0[7] = v3;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DA2E46C;
  v0[5] = &block_descriptor_60;
  v4 = _Block_copy(v0 + 2);
  v5 = v1;

  [v2 dispatchAccessoryObserverMessage:v4 sender:0];
  _Block_release(v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20DA2E46C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_20DA2E4EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_20DD65114();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_20DD650F4();
  v8 = v2;
  v9 = sub_20DD650E4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_20DA1C514(0, 0, v6, a2, v10);
}

uint64_t sub_20DA2E60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_20DD650F4();
  *(v4 + 72) = sub_20DD650E4();
  v6 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA2E6A4, v6, v5);
}

uint64_t sub_20DA2E6A4()
{
  v1 = v0[8];

  v2 = [objc_opt_self() sharedDispatcher];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[6] = sub_20DA2FAF8;
  v0[7] = v3;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DA2E46C;
  v0[5] = &block_descriptor_3;
  v4 = _Block_copy(v0 + 2);
  v5 = v1;

  [v2 dispatchAccessoryObserverMessage:v4 sender:0];
  _Block_release(v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20DA2E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *v4;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_20DD650F4();
  v11 = v9;
  v12 = sub_20DD650E4();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_20DA1C514(0, 0, v8, a4, v13);
}

uint64_t HMCharacteristic.hasReadInProgress.getter()
{
  if (![objc_opt_self() synchronizesHomeDataModel])
  {
    return 2;
  }

  v1 = [v0 service];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 accessory];

  if (!v3)
  {
    return 2;
  }

  v4 = [v3 home];

  if (!v4)
  {
    return 2;
  }

  v5 = [v4 hf_characteristicValueManagerIfCreated];

  if (!v5)
  {
    return 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = v0;
  v7 = v0;
  sub_20D9EBA70(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  v8 = sub_20DD651C4();

  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_20DD655B4())
    {
      sub_20D9EEAC8(MEMORY[0x277D84F90]);
    }
  }

  sub_20D9D7510(0, &qword_280E02140, 0x277CD1800);
  sub_20D9EC18C(&qword_280E02138, &qword_280E02140, 0x277CD1800);
  v9 = sub_20DD651C4();

  v10 = [v5 cachedLoadingStateForCharacteristics:v8 actionSets:v9];

  return v10 == 1;
}

uint64_t HMCharacteristic.hasWriteInProgress.getter()
{
  if (![objc_opt_self() synchronizesHomeDataModel])
  {
    return 2;
  }

  v1 = [v0 service];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 accessory];

  if (!v3)
  {
    return 2;
  }

  v4 = [v3 home];

  if (!v4)
  {
    return 2;
  }

  v5 = [v4 hf_characteristicValueManagerIfCreated];

  if (!v5)
  {
    return 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = v0;
  v7 = v0;
  sub_20D9EBA70(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  v8 = sub_20DD651C4();

  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_20DD655B4())
    {
      sub_20D9EEAC8(MEMORY[0x277D84F90]);
    }
  }

  sub_20D9D7510(0, &qword_280E02140, 0x277CD1800);
  sub_20D9EC18C(&qword_280E02138, &qword_280E02140, 0x277CD1800);
  v9 = sub_20DD651C4();

  v10 = [v5 cachedLoadingStateForCharacteristics:v8 actionSets:v9];

  return v10 == 2;
}

void HMCharacteristic.error.getter(uint64_t a1@<X8>)
{
  if ([objc_opt_self() synchronizesHomeDataModel])
  {
    v3 = [v1 service];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 accessory];

      if (v5)
      {
        v6 = [v5 home];

        if (v6)
        {
          v7 = [v6 hf_characteristicValueManagerIfCreated];

          if (v7)
          {
            if ([v7 cachedReadErrorForCharacteristic_])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
              sub_20D9D7510(0, &qword_27C8443F8, 0x277CCA9B8);
              if (swift_dynamicCast())
              {
                v8 = [v21 domain];
                v9 = sub_20DD64EB4();
                v11 = v10;

                if (v9 == sub_20DD64EB4() && v11 == v12)
                {

                  goto LABEL_15;
                }

                v15 = sub_20DD65974();

                if (v15)
                {
LABEL_15:
                  v16 = [v21 code];

                  if (v16 == 103)
                  {
                    v17 = sub_20DD643C4();
                    (*(*(v17 - 8) + 56))(a1, 1, 1, v17);

                    return;
                  }

                  goto LABEL_18;
                }
              }
            }

LABEL_18:
            if ([v7 cachedReadErrorForCharacteristic_] && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00), sub_20D9D7510(0, &qword_27C8443F8, 0x277CCA9B8), (swift_dynamicCast() & 1) != 0))
            {
              [v21 code];
              v18 = [v21 domain];
              sub_20DD64EB4();

              sub_20DD643B4();
              v19 = sub_20DD643C4();
              (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
            }

            else
            {

              v20 = sub_20DD643C4();
              (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
            }

            return;
          }
        }
      }
    }
  }

  v13 = sub_20DD643C4();
  v14 = *(*(v13 - 8) + 56);

  v14(a1, 1, 1, v13);
}

uint64_t HMCharacteristic.hasValidRead.getter()
{
  if (![objc_opt_self() synchronizesHomeDataModel])
  {
    return 2;
  }

  v1 = [v0 service];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 accessory];

  if (!v3)
  {
    return 2;
  }

  v4 = [v3 home];

  if (!v4)
  {
    return 2;
  }

  v5 = [v4 hf_characteristicValueManagerIfCreated];

  if (!v5)
  {
    return 2;
  }

  v6 = [v5 allReadCharacteristics];
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  v7 = sub_20DD651E4();

  v8 = sub_20D9EFDB8(v0, v7);

  return v8 & 1;
}

uint64_t sub_20DA2F3E8(uint64_t *a1, uint64_t a2)
{
  v6 = sub_20DA54FA8(a1);

  sub_20DA12BD0(v2);
  v3 = v6;
  if (!(v6 >> 62))
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = sub_20DD655B4();
  v3 = v6;
  if (v5)
  {
LABEL_3:
    sub_20D9F916C(v3);

    sub_20DD63C74();
  }

LABEL_4:
}

uint64_t sub_20DA2F4A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9D77C4;

  return sub_20DA2CC38(a1, v4, v5, v7, v6);
}

uint64_t sub_20DA2F568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9D77C4;

  return sub_20DA2D540(a1, v4, v5, v7, v6);
}

uint64_t sub_20DA2F628(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9D77C4;

  return sub_20DA2D9B4(a1, v4, v5, v7, v6);
}

uint64_t sub_20DA2F6E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9D77C4;

  return sub_20DA2DCE0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20DA2F7B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20DA2E298(a1, v4, v5, v6);
}

uint64_t sub_20DA2F864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20DA2E60C(a1, v4, v5, v6);
}

uint64_t sub_20DA2F918(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9C76B4;

  return sub_20DA2CC38(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_20DA2FB28(void *a1, const char **a2)
{
  v5 = *(v2 + 16);
  result = [a1 respondsToSelector_];
  if (result)
  {
    v7 = *a2;

    return [a1 v7];
  }

  return result;
}

id sub_20DA2FB98(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  result = [a1 respondsToSelector_];
  if (result)
  {

    return [a1 home:v3 didUpdateRoom:v4 forAccessory:v5];
  }

  return result;
}

id sub_20DA2FC20(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = [a1 respondsToSelector_];
  if (result)
  {

    return [a1 home:v3 didAddRoom:v4];
  }

  return result;
}

BOOL sub_20DA2FD04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_20DA36A04(a4, a5, a6);
  }

  while ((sub_20DD64E64() & 1) == 0);
  return v10 != v11;
}

void sub_20DA2FE0C(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v31 = a1;
  v27 = a3;
  v37 = sub_20DD64164();
  v6 = MEMORY[0x28223BE20](v37);
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v27 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v32 = v8 + 32;
  v33 = v8;
  v28 = (v8 + 8);
  v29 = v8 + 16;
  v34 = a2;

  v15 = 0;
  v16 = v30;
  if (v13)
  {
    while (1)
    {
      v35 = v4;
      v17 = v15;
LABEL_9:
      v18 = v33;
      v19 = v37;
      (*(v33 + 16))(v16, *(v34 + 48) + *(v33 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v37);
      v20 = *(v18 + 32);
      v21 = v36;
      v20(v36, v16, v19);
      v22 = v35;
      v23 = v31(v21);
      v4 = v22;
      if (v22)
      {
        (*v28)(v36, v37);

        return;
      }

      if (v23)
      {
        break;
      }

      v13 &= v13 - 1;
      (*v28)(v36, v37);
      v15 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v26 = v27;
    v20(v27, v36, v37);
    v25 = v26;
    v24 = 0;
LABEL_14:
    (*(v33 + 56))(v25, v24, 1, v37);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v24 = 1;
        v25 = v27;
        goto LABEL_14;
      }

      v13 = *(v10 + 8 * v17);
      ++v15;
      if (v13)
      {
        v35 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void *sub_20DA300CC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F326680](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_20DA30228(void (*a1)(uint64_t, uint64_t))
{
  sub_20DD649A4();
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_0(v5, v6);
  a1(v2, v3);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t HFEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20DD649D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20DD64784();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D17970])
  {
    (*(v5 + 96))(v7, v4);
    (*(v9 + 32))(v11, v7, v8);
    sub_20DD64774();
    (*(v9 + 8))(v11, v8);
    __swift_project_boxed_opaque_existential_0(v16, v16[3]);
    sub_20DD647E4();
    v12 = sub_20DD63744();
    (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v14 = sub_20DD63744();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t HFEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DD64784();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20DD649D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v16 = type metadata accessor for HFEvent(0);
  sub_20D9C90A8(v1 + *(v16 + 20), v15);
  v17 = sub_20DD63744();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_20D9D76EC(v15, &unk_27C843A70, &qword_20DD94260);
    (*(v7 + 16))(v9, v1, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D17970])
    {
      (*(v7 + 96))(v9, v6);
      v20 = v23;
      v19 = v24;
      (*(v23 + 32))(v5, v9, v24);
      sub_20DD64774();
      __swift_project_boxed_opaque_existential_0(v25, v25[3]);
      sub_20DD647D4();
      (*(v20 + 8))(v5, v19);
      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
      (*(v18 + 56))(v13, 1, 1, v17);
      (*(v7 + 8))(v9, v6);
    }

    return sub_20DA30928(v13, a1);
  }

  else
  {
    (*(v18 + 32))(a1, v15, v17);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }
}

uint64_t type metadata accessor for HFEvent(uint64_t a1)
{
  result = qword_27C844418;
  if (!qword_27C844418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20DA30928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA30998(uint64_t a1)
{
  v2 = v1;
  v163 = a1;
  v134 = sub_20DD64654();
  v133 = *(v134 - 8);
  v3 = MEMORY[0x28223BE20](v134);
  v129 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v128 = &v124 - v5;
  v139 = sub_20DD647B4();
  v138 = *(v139 - 8);
  v6 = MEMORY[0x28223BE20](v139);
  v132 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v131 = &v124 - v8;
  v144 = sub_20DD64994();
  v143 = *(v144 - 8);
  v9 = MEMORY[0x28223BE20](v144);
  v137 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v136 = &v124 - v11;
  v149 = sub_20DD646C4();
  v148 = *(v149 - 8);
  v12 = MEMORY[0x28223BE20](v149);
  v142 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v141 = &v124 - v14;
  v15 = sub_20DD64964();
  v152 = *(v15 - 8);
  v153 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v147 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v146 = &v124 - v18;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844430, &qword_20DD950B8);
  MEMORY[0x28223BE20](v154);
  v20 = &v124 - v19;
  v21 = sub_20DD63744();
  v158 = *(v21 - 8);
  v159 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v157 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v156 = &v124 - v24;
  v25 = sub_20DD649D4();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v162 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v124 - v29;
  v161 = sub_20DD64784();
  v31 = *(v161 - 8);
  v32 = MEMORY[0x28223BE20](v161);
  v130 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v135 = &v124 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v140 = &v124 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v145 = &v124 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v151 = &v124 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v160 = &v124 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v124 - v44;
  v46 = v26[2];
  v150 = v2;
  v46(v30, v2, v25);
  v164 = v26;
  v165 = v25;
  v47 = v26[11];
  v48 = v47(v30, v25);
  if (v48 == *MEMORY[0x277D17970])
  {
    v49 = v48;
    v124 = v20;
    v50 = v165;
    v51 = v164[12];
    v127 = v164 + 12;
    v126 = v51;
    v51(v30, v165);
    v52 = *(v31 + 32);
    v155 = v45;
    v53 = v161;
    v125 = v52;
    v52();
    v30 = v162;
    v46(v162, v163, v50);
    v54 = v47(v30, v50);
    v55 = v53;
    if (v54 == v49)
    {
      v164 = v31;
      v126(v30, v165);
      v56 = v160;
      (v125)(v160, v30, v53);
      v57 = v155;
      sub_20DD64774();
      __swift_project_boxed_opaque_existential_0(&v166, v167);
      v58 = v156;
      sub_20DD647E4();
      __swift_destroy_boxed_opaque_existential_0(&v166);
      sub_20DD64774();
      __swift_project_boxed_opaque_existential_0(&v166, v167);
      v59 = v157;
      sub_20DD647E4();
      __swift_destroy_boxed_opaque_existential_0(&v166);
      v60 = sub_20DD63704();
      v61 = *(v158 + 8);
      v62 = v59;
      v63 = v159;
      v61(v62, v159);
      v61(v58, v63);
      if ((v60 & 1) == 0)
      {
        v87 = v164[1];
        v87(v56, v55);
        return (v87)(v57, v55);
      }

      v64 = *(v154 + 48);
      v65 = v164;
      v66 = v164[2];
      v67 = v56;
      v68 = v124;
      v66(v124, v57, v55);
      v66((v68 + v64), v67, v55);
      v69 = v65[11];
      v70 = v69(v68, v55);
      v71 = v70;
      if (v70 == *MEMORY[0x277D17788])
      {
        v72 = v151;
        v66(v151, v68, v55);
        v73 = v65[12];
        v73(v72, v55);
        v74 = v69(v68 + v64, v55);
        v75 = v68;
        if (v74 == v71)
        {
          v76 = v64;
          v73((v75 + v64), v55);
          v78 = v152;
          v77 = v153;
          v79 = *(v152 + 32);
          v80 = v72;
          v81 = v146;
          v79(v146, v80, v153);
          v82 = v147;
          v79(v147, (v75 + v76), v77);
          sub_20DA31A74(v81, v82);
          v83 = *(v78 + 8);
          v83(v82, v77);
          v83(v81, v77);
          v84 = v65[1];
          v84(v160, v55);
          v84(v155, v55);
          v85 = v75;
          return (v84)(v85, v55);
        }

        v99 = v65[1];
        v99(v160, v55);
        v99(v155, v55);
        (*(v152 + 8))(v72, v153);
        return sub_20D9D76EC(v68, &qword_27C844430, &qword_20DD950B8);
      }

      v165 = v64;
      if (v70 == *MEMORY[0x277D17750])
      {
        v88 = v145;
        v68 = v124;
        v66(v145, v124, v55);
        v89 = v164;
        v90 = v164[12];
        v90(v88, v55);
        v91 = v165;
        if (v69(v68 + v165, v55) == v71)
        {
          v90((v68 + v91), v55);
          v92 = v148;
          v93 = *(v148 + 32);
          v94 = v88;
          v95 = v141;
          v96 = v149;
          v93(v141, v94, v149);
          v97 = v68 + v91;
          v98 = v142;
          v93(v142, v97, v96);
          sub_20DA31CD4(v95, v98);
LABEL_26:
          v120 = *(v92 + 8);
          v120(v98, v96);
          v120(v95, v96);
          v84 = v89[1];
          v84(v160, v55);
          v84(v155, v55);
          v85 = v68;
          return (v84)(v85, v55);
        }

        v106 = v89[1];
        v106(v160, v55);
        v106(v155, v55);
        (*(v148 + 8))(v88, v149);
      }

      else if (v70 == *MEMORY[0x277D17790])
      {
        v100 = v140;
        v68 = v124;
        v66(v140, v124, v55);
        v89 = v164;
        v101 = v164[12];
        v101(v100, v55);
        v102 = v165;
        if (v69(v68 + v165, v55) == v71)
        {
          v101((v68 + v102), v55);
          v92 = v143;
          v103 = *(v143 + 32);
          v104 = v100;
          v95 = v136;
          v96 = v144;
          v103(v136, v104, v144);
          v105 = v68 + v102;
          v98 = v137;
          v103(v137, v105, v96);
          sub_20DA31F4C(v95, v98);
          goto LABEL_26;
        }

        v113 = v89[1];
        v113(v160, v55);
        v113(v155, v55);
        (*(v143 + 8))(v100, v144);
      }

      else if (v70 == *MEMORY[0x277D17768])
      {
        v107 = v135;
        v68 = v124;
        v66(v135, v124, v55);
        v89 = v164;
        v108 = v164[12];
        v108(v107, v55);
        v109 = v165;
        if (v69(v68 + v165, v55) == v71)
        {
          v108((v68 + v109), v55);
          v92 = v138;
          v110 = *(v138 + 32);
          v95 = v131;
          v111 = v107;
          v96 = v139;
          v110(v131, v111, v139);
          v112 = v68 + v109;
          v98 = v132;
          v110(v132, v112, v96);
          sub_20DA321AC(v95, v98);
          goto LABEL_26;
        }

        v121 = v89[1];
        v121(v160, v55);
        v121(v155, v55);
        (*(v138 + 8))(v107, v139);
      }

      else if (v70 == *MEMORY[0x277D17798])
      {
        v114 = v130;
        v68 = v124;
        v66(v130, v124, v55);
        v89 = v164;
        v115 = v164[12];
        v115(v114, v55);
        v116 = v165;
        if (v69(v68 + v165, v55) == v71)
        {
          v115((v68 + v116), v55);
          v92 = v133;
          v117 = *(v133 + 32);
          v95 = v128;
          v118 = v114;
          v96 = v134;
          v117(v128, v118, v134);
          v119 = v68 + v116;
          v98 = v129;
          v117(v129, v119, v96);
          sub_20DA32434(v95, v98);
          goto LABEL_26;
        }

        v123 = v89[1];
        v123(v160, v55);
        v123(v155, v55);
        (*(v133 + 8))(v114, v134);
      }

      else
      {
        v122 = v164[1];
        v122(v160, v55);
        v122(v155, v55);
        v68 = v124;
      }

      return sub_20D9D76EC(v68, &qword_27C844430, &qword_20DD950B8);
    }

    (*(v31 + 8))(v155, v53);
  }

  return (v164[1])(v30, v165);
}

uint64_t sub_20DA31A74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844438, &qword_20DD950C0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = sub_20DD64944();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  sub_20DD64954();
  sub_20DD64954();
  v15 = *(v5 + 56);
  v16 = *(v9 + 32);
  v16(v7, v14, v8);
  v16(&v7[v15], v12, v8);
  v17 = *(v9 + 88);
  v18 = v17(v7, v8);
  if (v18 == *MEMORY[0x277D178C0])
  {
    v19 = v17(&v7[v15], v8);
    v20 = MEMORY[0x277D178D8];
  }

  else
  {
    if (v18 != *MEMORY[0x277D178C8])
    {
      return sub_20D9D76EC(v7, &qword_27C844438, &qword_20DD950C0);
    }

    v19 = v17(&v7[v15], v8);
    v20 = MEMORY[0x277D178D0];
  }

  if (v19 == *v20)
  {
    (*(v9 + 8))(v7, v8);
    return sub_20DA34460(a1, a2, v22[1], 30.0);
  }

  return sub_20D9D76EC(v7, &qword_27C844438, &qword_20DD950C0);
}

uint64_t sub_20DA31CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844450, &qword_20DD950C8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v21 - v6;
  v8 = sub_20DD646A4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  sub_20DD646B4();
  sub_20DD646B4();
  v15 = *(v5 + 56);
  v16 = *(v9 + 32);
  v16(v7, v14, v8);
  v16(&v7[v15], v12, v8);
  v17 = *(v9 + 88);
  v18 = v17(v7, v8);
  if (v18 == *MEMORY[0x277D176C0])
  {
    if (v17(&v7[v15], v8) == *MEMORY[0x277D176D8])
    {
      v19 = 30.0;
LABEL_7:
      sub_20DA34984(a1, a2, v21[1], v19);
      return (*(v9 + 8))(v7, v8);
    }
  }

  else if (v18 == *MEMORY[0x277D176C8] && v17(&v7[v15], v8) == *MEMORY[0x277D176D0])
  {
    v19 = 300.0;
    goto LABEL_7;
  }

  return sub_20D9D76EC(v7, &qword_27C844450, &qword_20DD950C8);
}

uint64_t sub_20DA31F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844468, &qword_20DD950D0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = sub_20DD64974();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  sub_20DD64984();
  sub_20DD64984();
  v15 = *(v5 + 56);
  v16 = *(v9 + 32);
  v16(v7, v14, v8);
  v16(&v7[v15], v12, v8);
  v17 = *(v9 + 88);
  v18 = v17(v7, v8);
  if (v18 == *MEMORY[0x277D17930])
  {
    v19 = v17(&v7[v15], v8);
    v20 = MEMORY[0x277D17938];
  }

  else
  {
    if (v18 != *MEMORY[0x277D17918])
    {
      return sub_20D9D76EC(v7, &qword_27C844468, &qword_20DD950D0);
    }

    v19 = v17(&v7[v15], v8);
    v20 = MEMORY[0x277D17920];
  }

  if (v19 == *v20)
  {
    (*(v9 + 8))(v7, v8);
    return sub_20DA34E38(a1, a2, v22[1], 30.0);
  }

  return sub_20D9D76EC(v7, &qword_27C844468, &qword_20DD950D0);
}

uint64_t sub_20DA321AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844480, &qword_20DD950D8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = sub_20DD64794();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  sub_20DD647A4();
  sub_20DD647A4();
  v15 = *(v5 + 56);
  v16 = *(v9 + 32);
  v16(v7, v14, v8);
  v16(&v7[v15], v12, v8);
  v17 = *(v9 + 88);
  v18 = v17(v7, v8);
  if (v18 == *MEMORY[0x277D177D0])
  {
    v19 = v17(&v7[v15], v8);
    v20 = MEMORY[0x277D177E0];
  }

  else
  {
    if (v18 != *MEMORY[0x277D177D8] && v18 != *MEMORY[0x277D177B0] && v18 != *MEMORY[0x277D177E8])
    {
      return sub_20D9D76EC(v7, &qword_27C844480, &qword_20DD950D8);
    }

    v19 = v17(&v7[v15], v8);
    v20 = MEMORY[0x277D177B8];
  }

  if (v19 == *v20)
  {
    (*(v9 + 8))(v7, v8);
    return sub_20DA352EC(a1, a2, v22[1], 30.0);
  }

  return sub_20D9D76EC(v7, &qword_27C844480, &qword_20DD950D8);
}

uint64_t sub_20DA32434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844498, &qword_20DD950E0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = sub_20DD64634();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  sub_20DD64644();
  sub_20DD64644();
  v15 = *(v5 + 56);
  v16 = *(v9 + 32);
  v16(v7, v14, v8);
  v16(&v7[v15], v12, v8);
  v17 = *(v9 + 88);
  v18 = v17(v7, v8);
  if (v18 == *MEMORY[0x277D175D8])
  {
    v19 = v17(&v7[v15], v8);
    v20 = MEMORY[0x277D175F0];
  }

  else
  {
    if (v18 != *MEMORY[0x277D175E0])
    {
      return sub_20D9D76EC(v7, &qword_27C844498, &qword_20DD950E0);
    }

    v19 = v17(&v7[v15], v8);
    v20 = MEMORY[0x277D175E8];
  }

  if (v19 == *v20)
  {
    (*(v9 + 8))(v7, v8);
    return sub_20DA357A0(a1, a2, v22[1], 30.0);
  }

  return sub_20D9D76EC(v7, &qword_27C844498, &qword_20DD950E0);
}

uint64_t HFEvent.hashValue.getter()
{
  sub_20DD65A64();
  _s4Home7HFEventV4hash4intoys6HasherVz_tF_0();
  return sub_20DD65AA4();
}

uint64_t sub_20DA326E0()
{
  sub_20DD65A64();
  _s4Home7HFEventV4hash4intoys6HasherVz_tF_0();
  return sub_20DD65AA4();
}

uint64_t sub_20DA32724(uint64_t a1)
{
  sub_20DD65A64();
  _s4Home7HFEventV4hash4intoys6HasherVz_tF_0();
  return sub_20DD65AA4();
}

id HFEvent.home.getter()
{
  v0 = sub_20DD63744();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedDispatcher];
  v5 = [v4 homeManager];

  if (!v5)
  {
    return 0;
  }

  sub_20DD649A4();
  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  sub_20DD64684();
  __swift_destroy_boxed_opaque_existential_0(v10);
  v6 = sub_20DD636F4();
  (*(v1 + 8))(v3, v0);
  v7 = [v5 hf:v6 homeWithIdentifier:?];

  return v7;
}

id sub_20DA32924(void (*a1)(uint64_t, uint64_t), SEL *a2)
{
  v23 = a1;
  v24 = a2;
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20DD649D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20DD64784();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v2, v7);
  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D17970])
  {
    (*(v8 + 96))(v10, v7);
    (*(v12 + 32))(v14, v10, v11);
    v15 = HFEvent.home.getter();
    if (v15)
    {
      v16 = v15;
      sub_20DD64774();
      v17 = v26;
      v18 = v27;
      __swift_project_boxed_opaque_existential_0(v25, v26);
      v23(v17, v18);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v19 = sub_20DD636F4();
      (*(v4 + 8))(v6, v3);
      v20 = [v16 *v24];
    }

    else
    {
      v20 = 0;
    }

    (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  return v20;
}

void *HFEvent.user.getter()
{
  v1 = HFEvent.home.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 hf_allUsersIncludingCurrentUser];

  sub_20D9D7510(0, &qword_27C844400, 0x277CD1EE0);
  v4 = sub_20DD64FD4();

  MEMORY[0x28223BE20](v5);
  v8[2] = v0;
  v6 = sub_20DA300CC(sub_20DA3315C, v8, v4);

  return v6;
}

uint64_t sub_20DA32D24(id *a1)
{
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A68, &unk_20DD940F0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = [*a1 uniqueIdentifier];
  sub_20DD63714();

  (*(v3 + 56))(v16, 0, 1, v2);
  HFEvent.userIdentifier.getter(v14);
  v18 = *(v6 + 56);
  sub_20D9C90A8(v16, v8);
  sub_20D9C90A8(v14, &v8[v18]);
  v19 = *(v3 + 48);
  if (v19(v8, 1, v2) != 1)
  {
    sub_20D9C90A8(v8, v26);
    if (v19(&v8[v18], 1, v2) != 1)
    {
      v21 = &v8[v18];
      v22 = v25;
      (*(v3 + 32))(v25, v21, v2);
      sub_20DA36A04(&qword_280E02288, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v20 = sub_20DD64E64();
      v23 = *(v3 + 8);
      v23(v22, v2);
      sub_20D9D76EC(v14, &unk_27C843A70, &qword_20DD94260);
      sub_20D9D76EC(v16, &unk_27C843A70, &qword_20DD94260);
      v23(v26, v2);
      sub_20D9D76EC(v8, &unk_27C843A70, &qword_20DD94260);
      return v20 & 1;
    }

    sub_20D9D76EC(v14, &unk_27C843A70, &qword_20DD94260);
    sub_20D9D76EC(v16, &unk_27C843A70, &qword_20DD94260);
    (*(v3 + 8))(v26, v2);
    goto LABEL_6;
  }

  sub_20D9D76EC(v14, &unk_27C843A70, &qword_20DD94260);
  sub_20D9D76EC(v16, &unk_27C843A70, &qword_20DD94260);
  if (v19(&v8[v18], 1, v2) != 1)
  {
LABEL_6:
    sub_20D9D76EC(v8, &qword_27C843A68, &unk_20DD940F0);
    v20 = 0;
    return v20 & 1;
  }

  sub_20D9D76EC(v8, &unk_27C843A70, &qword_20DD94260);
  v20 = 1;
  return v20 & 1;
}

void *HFEvent.guestUser.getter()
{
  v1 = HFEvent.home.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() sharedDispatcher];
  v4 = [v3 pinCodeManagerForHome_];

  v5 = [v4 guestUserInformation];
  sub_20D9D7510(0, &qword_27C844408, 0x277CD1638);
  v6 = sub_20DD64FD4();

  MEMORY[0x28223BE20](v7);
  v10[2] = v0;
  v8 = sub_20DA300CC(sub_20DA33710, v10, v6);

  return v8;
}

uint64_t sub_20DA332B4(id *a1)
{
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A68, &unk_20DD940F0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v27 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = [*a1 labelIdentifier];
  if (v16)
  {
    v17 = v16;
    sub_20DD63714();

    (*(v3 + 56))(v15, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v15, 1, 1, v2);
  }

  HFEvent.userIdentifier.getter(v13);
  v18 = *(v5 + 48);
  sub_20D9C90A8(v15, v7);
  sub_20D9C90A8(v13, &v7[v18]);
  v19 = *(v3 + 48);
  if (v19(v7, 1, v2) != 1)
  {
    v21 = v27;
    sub_20D9C90A8(v7, v27);
    if (v19(&v7[v18], 1, v2) != 1)
    {
      v22 = &v7[v18];
      v23 = v26;
      (*(v3 + 32))(v26, v22, v2);
      sub_20DA36A04(&qword_280E02288, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v20 = sub_20DD64E64();
      v24 = *(v3 + 8);
      v24(v23, v2);
      sub_20D9D76EC(v13, &unk_27C843A70, &qword_20DD94260);
      sub_20D9D76EC(v15, &unk_27C843A70, &qword_20DD94260);
      v24(v27, v2);
      sub_20D9D76EC(v7, &unk_27C843A70, &qword_20DD94260);
      return v20 & 1;
    }

    sub_20D9D76EC(v13, &unk_27C843A70, &qword_20DD94260);
    sub_20D9D76EC(v15, &unk_27C843A70, &qword_20DD94260);
    (*(v3 + 8))(v21, v2);
    goto LABEL_9;
  }

  sub_20D9D76EC(v13, &unk_27C843A70, &qword_20DD94260);
  sub_20D9D76EC(v15, &unk_27C843A70, &qword_20DD94260);
  if (v19(&v7[v18], 1, v2) != 1)
  {
LABEL_9:
    sub_20D9D76EC(v7, &qword_27C843A68, &unk_20DD940F0);
    v20 = 0;
    return v20 & 1;
  }

  sub_20D9D76EC(v7, &unk_27C843A70, &qword_20DD94260);
  v20 = 1;
  return v20 & 1;
}

uint64_t HFEvent.id.getter()
{
  v1 = sub_20DD63604();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20DD636C4();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v53 - v8;
  v9 = sub_20DD63744();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20DD64784();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20DD649D4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v0, v16);
  if ((*(v17 + 88))(v19, v16) == *MEMORY[0x277D17970])
  {
    v55 = v6;
    (*(v17 + 96))(v19, v16);
    v53 = v13;
    v54 = v12;
    (*(v13 + 32))(v15, v19, v12);
    v56 = v0;
    sub_20DD649A4();
    __swift_project_boxed_opaque_existential_0(v64, v65);
    sub_20DD64684();
    __swift_destroy_boxed_opaque_existential_0(v64);
    v20 = sub_20DD636E4();
    v22 = v21;
    v23 = v58;
    v24 = v59;
    v25 = *(v58 + 8);
    v25(v11, v59);
    v66 = v20;
    v67 = v22;
    MEMORY[0x20F325E90](45, 0xE100000000000000);
    sub_20DD64774();
    __swift_project_boxed_opaque_existential_0(v64, v65);
    sub_20DD647E4();
    __swift_destroy_boxed_opaque_existential_0(v64);
    v26 = sub_20DD636E4();
    v28 = v27;
    v25(v11, v24);
    MEMORY[0x20F325E90](v26, v28);

    MEMORY[0x20F325E90](45, 0xE100000000000000);
    sub_20DD64774();
    __swift_project_boxed_opaque_existential_0(v64, v65);
    v29 = v57;
    sub_20DD647D4();
    __swift_destroy_boxed_opaque_existential_0(v64);
    v30 = (*(v23 + 48))(v29, 1, v24);
    v31 = v15;
    if (v30 == 1)
    {
      sub_20D9D76EC(v29, &unk_27C843A70, &qword_20DD94260);
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v32 = sub_20DD636E4();
      v33 = v42;
      v25(v29, v24);
    }

    v44 = v62;
    v43 = v63;
    v45 = v61;
    v64[0] = v32;
    v64[1] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844118, qword_20DD96F20);
    v46 = sub_20DD64ED4();
    MEMORY[0x20F325E90](v46);

    MEMORY[0x20F325E90](45, 0xE100000000000000);
    sub_20DD649A4();
    __swift_project_boxed_opaque_existential_0(v64, v65);
    v47 = v55;
    sub_20DD64694();
    __swift_destroy_boxed_opaque_existential_0(v64);
    sub_20DA33EDC(v3);
    v48 = sub_20DD63594();
    v50 = v49;
    (*(v44 + 8))(v3, v43);
    (*(v60 + 8))(v47, v45);
    MEMORY[0x20F325E90](v48, v50);

    MEMORY[0x20F325E90](45, 0xE100000000000000);
    v51 = HFEvent.stateDescription.getter();
    MEMORY[0x20F325E90](v51);

    v41 = v66;
    (*(v53 + 8))(v31, v54);
  }

  else
  {
    sub_20DD649A4();
    __swift_project_boxed_opaque_existential_0(v64, v65);
    sub_20DD64684();
    __swift_destroy_boxed_opaque_existential_0(v64);
    v34 = sub_20DD636E4();
    v36 = v35;
    (*(v58 + 8))(v11, v59);
    v66 = v34;
    v67 = v36;
    MEMORY[0x20F325E90](45, 0xE100000000000000);
    sub_20DD649A4();
    __swift_project_boxed_opaque_existential_0(v64, v65);
    sub_20DD64694();
    __swift_destroy_boxed_opaque_existential_0(v64);
    sub_20DA33EDC(v3);
    v37 = sub_20DD63594();
    v39 = v38;
    (*(v62 + 8))(v3, v63);
    (*(v60 + 8))(v6, v61);
    MEMORY[0x20F325E90](v37, v39);

    MEMORY[0x20F325E90](45, 0xE100000000000000);
    v40 = HFEvent.stateDescription.getter();
    MEMORY[0x20F325E90](v40);

    v41 = v66;
    (*(v17 + 8))(v19, v16);
  }

  return v41;
}

uint64_t sub_20DA33EDC@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844500, &qword_20DD97000);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_20DD63834();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20DD635F4();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20DD635D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20DD635B4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20DD635C4();
  MEMORY[0x28223BE20](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x277CC9458], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9468], v8);
  (*(v5 + 104))(v21, *MEMORY[0x277CC9480], v27);
  sub_20DD63814();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_20DD635E4();
  }

  return result;
}

uint64_t sub_20DA34334@<X0>(uint64_t *a1@<X8>)
{
  result = HFEvent.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_20DA34384(uint64_t a1)
{
  sub_20DD649D4();
  if (v1 <= 0x3F)
  {
    sub_20DA34408(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20DA34408(uint64_t a1)
{
  if (!qword_27C844428)
  {
    sub_20DD63744();
    v1 = sub_20DD65494();
    if (!v2)
    {
      atomic_store(v1, &qword_27C844428);
    }
  }
}

uint64_t sub_20DA34460(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v39 = a3;
  v40 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v37 - v9;
  v41 = sub_20DD636C4();
  v10 = *(v41 - 8);
  v11 = MEMORY[0x28223BE20](v41);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = sub_20DD64964();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v23 = *(v17 + 16);
  v23(&v37 - v21, a1, v16);
  v23(v20, v40, v16);
  sub_20DA36A04(&qword_27C844440, MEMORY[0x277D17908], MEMORY[0x277D17900]);
  sub_20DD64694();
  sub_20DD64694();
  sub_20DD635A4();
  v25 = v24;
  v26 = *(v10 + 8);
  v27 = v41;
  v26(v13, v41);
  v26(v15, v27);
  if (fabs(v25) <= a4)
  {
    sub_20DA36A04(&qword_27C844448, MEMORY[0x277D17908], MEMORY[0x277D178F8]);
    v30 = v42;
    sub_20DD647D4();
    v31 = *(v17 + 8);
    v31(v22, v16);
    v32 = sub_20DD63744();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    if (v34(v30, 1, v32) == 1)
    {
      v35 = v38;
      sub_20DD647D4();
      v31(v20, v16);
      if (v34(v42, 1, v32) != 1)
      {
        sub_20D9D76EC(v42, &unk_27C843A70, &qword_20DD94260);
      }
    }

    else
    {
      v31(v20, v16);
      v35 = v38;
      (*(v33 + 32))(v38, v42, v32);
      (*(v33 + 56))(v35, 0, 1, v32);
    }

    v36 = type metadata accessor for HFEvent(0);
    return sub_20DA34914(v35, v39 + *(v36 + 20));
  }

  else
  {
    v28 = *(v17 + 8);
    v28(v20, v16);
    return (v28)(v22, v16);
  }
}

uint64_t sub_20DA34914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA34984(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v39 = a3;
  v40 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v37 - v9;
  v41 = sub_20DD636C4();
  v10 = *(v41 - 8);
  v11 = MEMORY[0x28223BE20](v41);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = sub_20DD646C4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v23 = *(v17 + 16);
  v23(&v37 - v21, a1, v16);
  v23(v20, v40, v16);
  sub_20DA36A04(&qword_27C844458, MEMORY[0x277D17710], MEMORY[0x277D17708]);
  sub_20DD64694();
  sub_20DD64694();
  sub_20DD635A4();
  v25 = v24;
  v26 = *(v10 + 8);
  v27 = v41;
  v26(v13, v41);
  v26(v15, v27);
  if (fabs(v25) <= a4)
  {
    sub_20DA36A04(&qword_27C844460, MEMORY[0x277D17710], MEMORY[0x277D17700]);
    v30 = v42;
    sub_20DD647D4();
    v31 = *(v17 + 8);
    v31(v22, v16);
    v32 = sub_20DD63744();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    if (v34(v30, 1, v32) == 1)
    {
      v35 = v38;
      sub_20DD647D4();
      v31(v20, v16);
      if (v34(v42, 1, v32) != 1)
      {
        sub_20D9D76EC(v42, &unk_27C843A70, &qword_20DD94260);
      }
    }

    else
    {
      v31(v20, v16);
      v35 = v38;
      (*(v33 + 32))(v38, v42, v32);
      (*(v33 + 56))(v35, 0, 1, v32);
    }

    v36 = type metadata accessor for HFEvent(0);
    return sub_20DA34914(v35, v39 + *(v36 + 20));
  }

  else
  {
    v28 = *(v17 + 8);
    v28(v20, v16);
    return (v28)(v22, v16);
  }
}

uint64_t sub_20DA34E38(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v39 = a3;
  v40 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v37 - v9;
  v41 = sub_20DD636C4();
  v10 = *(v41 - 8);
  v11 = MEMORY[0x28223BE20](v41);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = sub_20DD64994();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v23 = *(v17 + 16);
  v23(&v37 - v21, a1, v16);
  v23(v20, v40, v16);
  sub_20DA36A04(&qword_27C844470, MEMORY[0x277D17960], MEMORY[0x277D17958]);
  sub_20DD64694();
  sub_20DD64694();
  sub_20DD635A4();
  v25 = v24;
  v26 = *(v10 + 8);
  v27 = v41;
  v26(v13, v41);
  v26(v15, v27);
  if (fabs(v25) <= a4)
  {
    sub_20DA36A04(&qword_27C844478, MEMORY[0x277D17960], MEMORY[0x277D17950]);
    v30 = v42;
    sub_20DD647D4();
    v31 = *(v17 + 8);
    v31(v22, v16);
    v32 = sub_20DD63744();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    if (v34(v30, 1, v32) == 1)
    {
      v35 = v38;
      sub_20DD647D4();
      v31(v20, v16);
      if (v34(v42, 1, v32) != 1)
      {
        sub_20D9D76EC(v42, &unk_27C843A70, &qword_20DD94260);
      }
    }

    else
    {
      v31(v20, v16);
      v35 = v38;
      (*(v33 + 32))(v38, v42, v32);
      (*(v33 + 56))(v35, 0, 1, v32);
    }

    v36 = type metadata accessor for HFEvent(0);
    return sub_20DA34914(v35, v39 + *(v36 + 20));
  }

  else
  {
    v28 = *(v17 + 8);
    v28(v20, v16);
    return (v28)(v22, v16);
  }
}

uint64_t sub_20DA352EC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v39 = a3;
  v40 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v37 - v9;
  v41 = sub_20DD636C4();
  v10 = *(v41 - 8);
  v11 = MEMORY[0x28223BE20](v41);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = sub_20DD647B4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v23 = *(v17 + 16);
  v23(&v37 - v21, a1, v16);
  v23(v20, v40, v16);
  sub_20DA36A04(&qword_27C844488, MEMORY[0x277D17810], MEMORY[0x277D17808]);
  sub_20DD64694();
  sub_20DD64694();
  sub_20DD635A4();
  v25 = v24;
  v26 = *(v10 + 8);
  v27 = v41;
  v26(v13, v41);
  v26(v15, v27);
  if (fabs(v25) <= a4)
  {
    sub_20DA36A04(&qword_27C844490, MEMORY[0x277D17810], MEMORY[0x277D17800]);
    v30 = v42;
    sub_20DD647D4();
    v31 = *(v17 + 8);
    v31(v22, v16);
    v32 = sub_20DD63744();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    if (v34(v30, 1, v32) == 1)
    {
      v35 = v38;
      sub_20DD647D4();
      v31(v20, v16);
      if (v34(v42, 1, v32) != 1)
      {
        sub_20D9D76EC(v42, &unk_27C843A70, &qword_20DD94260);
      }
    }

    else
    {
      v31(v20, v16);
      v35 = v38;
      (*(v33 + 32))(v38, v42, v32);
      (*(v33 + 56))(v35, 0, 1, v32);
    }

    v36 = type metadata accessor for HFEvent(0);
    return sub_20DA34914(v35, v39 + *(v36 + 20));
  }

  else
  {
    v28 = *(v17 + 8);
    v28(v20, v16);
    return (v28)(v22, v16);
  }
}

uint64_t sub_20DA357A0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v39 = a3;
  v40 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v37 - v9;
  v41 = sub_20DD636C4();
  v10 = *(v41 - 8);
  v11 = MEMORY[0x28223BE20](v41);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = sub_20DD64654();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v23 = *(v17 + 16);
  v23(&v37 - v21, a1, v16);
  v23(v20, v40, v16);
  sub_20DA36A04(&qword_27C8444A0, MEMORY[0x277D17620], MEMORY[0x277D17618]);
  sub_20DD64694();
  sub_20DD64694();
  sub_20DD635A4();
  v25 = v24;
  v26 = *(v10 + 8);
  v27 = v41;
  v26(v13, v41);
  v26(v15, v27);
  if (fabs(v25) <= a4)
  {
    sub_20DA36A04(&qword_27C8444A8, MEMORY[0x277D17620], MEMORY[0x277D17610]);
    v30 = v42;
    sub_20DD647D4();
    v31 = *(v17 + 8);
    v31(v22, v16);
    v32 = sub_20DD63744();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    if (v34(v30, 1, v32) == 1)
    {
      v35 = v38;
      sub_20DD647D4();
      v31(v20, v16);
      if (v34(v42, 1, v32) != 1)
      {
        sub_20D9D76EC(v42, &unk_27C843A70, &qword_20DD94260);
      }
    }

    else
    {
      v31(v20, v16);
      v35 = v38;
      (*(v33 + 32))(v38, v42, v32);
      (*(v33 + 56))(v35, 0, 1, v32);
    }

    v36 = type metadata accessor for HFEvent(0);
    return sub_20DA34914(v35, v39 + *(v36 + 20));
  }

  else
  {
    v28 = *(v17 + 8);
    v28(v20, v16);
    return (v28)(v22, v16);
  }
}

BOOL sub_20DA35C54(uint64_t a1)
{
  v99 = a1;
  v76 = sub_20DD64634();
  v81 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v79 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_20DD64654();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20DD64794();
  v86 = *(v3 - 8);
  v87 = v3;
  MEMORY[0x28223BE20](v3);
  v84 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_20DD647B4();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20DD64974();
  v92 = *(v6 - 8);
  v93 = v6;
  MEMORY[0x28223BE20](v6);
  v91 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20DD64994();
  v89 = *(v8 - 8);
  v90 = v8;
  MEMORY[0x28223BE20](v8);
  v88 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20DD646A4();
  v97 = *(v10 - 8);
  v98 = v10;
  MEMORY[0x28223BE20](v10);
  v96 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20DD646C4();
  v94 = *(v12 - 8);
  v95 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20DD64944();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20DD64964();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20DD64784();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v26, v99, v23);
  v27 = (*(v24 + 88))(v26, v23);
  if (v27 == *MEMORY[0x277D17788])
  {
    (*(v24 + 96))(v26, v23);
    v28 = *(v20 + 32);
    v75 = v19;
    v28(v22, v26, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8444D0, &qword_20DD95108);
    v29 = *(v16 + 72);
    v30 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_20DD94280;
    v32 = v31 + v30;
    v33 = *(v16 + 104);
    v33(v32, *MEMORY[0x277D178D8], v15);
    v33(v32 + v29, *MEMORY[0x277D178D0], v15);
    sub_20DD64954();
    v34 = sub_20DA2FD04(v18, v31, MEMORY[0x277D178E8], &qword_27C8444D8, MEMORY[0x277D178E8], MEMORY[0x277D178F0]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v16 + 8))(v18, v15);
    (*(v20 + 8))(v22, v75);
    return v34;
  }

  if (v27 == *MEMORY[0x277D17750])
  {
    (*(v24 + 96))(v26, v23);
    v35 = v94;
    v36 = v95;
    (*(v94 + 32))(v14, v26, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8444C8, &qword_20DD95100);
    v37 = v97;
    v38 = *(v97 + 72);
    v39 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_20DD94280;
    v41 = *(v37 + 104);
    v42 = v98;
    v41(v40 + v39, *MEMORY[0x277D176D8], v98);
    v41(v40 + v39 + v38, *MEMORY[0x277D176D0], v42);
    v43 = v96;
    sub_20DD646B4();
    v34 = sub_20DA2FD04(v43, v40, MEMORY[0x277D176F0], &qword_27C8444E0, MEMORY[0x277D176F0], MEMORY[0x277D176F8]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v37 + 8))(v43, v42);
    (*(v35 + 8))(v14, v36);
    return v34;
  }

  if (v27 == *MEMORY[0x277D17790])
  {
    (*(v24 + 96))(v26, v23);
    v45 = v88;
    v44 = v89;
    v46 = v90;
    (*(v89 + 32))(v88, v26, v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8444C0, &qword_20DD950F8);
    v47 = v92;
    v48 = *(v92 + 72);
    v49 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_20DD94280;
    v51 = v50 + v49;
    v52 = *(v47 + 104);
    v53 = v93;
    v52(v51, *MEMORY[0x277D17920], v93);
    v52(v51 + v48, *MEMORY[0x277D17938], v53);
    v54 = v91;
    sub_20DD64984();
    v55 = &unk_27C8444E8;
    v56 = MEMORY[0x277D17940];
    v57 = MEMORY[0x277D17940];
    v58 = MEMORY[0x277D17948];
LABEL_9:
    v34 = sub_20DA2FD04(v54, v50, v56, v55, v57, v58);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v47 + 8))(v54, v53);
    (*(v44 + 8))(v45, v46);
    return v34;
  }

  if (v27 == *MEMORY[0x277D17768])
  {
    (*(v24 + 96))(v26, v23);
    v45 = v82;
    v44 = v83;
    v46 = v85;
    (*(v83 + 32))(v82, v26, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8444B8, &qword_20DD950F0);
    v47 = v86;
    v59 = *(v86 + 72);
    v60 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_20DD94280;
    v61 = v50 + v60;
    v62 = *(v47 + 104);
    v53 = v87;
    v62(v61, *MEMORY[0x277D177B8], v87);
    v62(v61 + v59, *MEMORY[0x277D177E0], v53);
    v54 = v84;
    sub_20DD647A4();
    v55 = &unk_27C8444F0;
    v56 = MEMORY[0x277D177F0];
    v57 = MEMORY[0x277D177F0];
    v58 = MEMORY[0x277D177F8];
    goto LABEL_9;
  }

  if (v27 == *MEMORY[0x277D17798])
  {
    (*(v24 + 96))(v26, v23);
    v64 = v78;
    v65 = v77;
    v66 = v80;
    (*(v78 + 32))(v77, v26, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8444B0, &qword_20DD950E8);
    v67 = v81;
    v68 = *(v81 + 72);
    v69 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_20DD94280;
    v71 = v70 + v69;
    v72 = *(v67 + 104);
    v73 = v76;
    v72(v71, *MEMORY[0x277D175F0], v76);
    v72(v71 + v68, *MEMORY[0x277D175E8], v73);
    v74 = v79;
    sub_20DD64644();
    v34 = sub_20DA2FD04(v74, v70, MEMORY[0x277D17600], &qword_27C8444F8, MEMORY[0x277D17600], MEMORY[0x277D17608]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v67 + 8))(v74, v73);
    (*(v64 + 8))(v65, v66);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    return 0;
  }

  return v34;
}

uint64_t sub_20DA36A04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HFHomeKitDispatcher.allHomes.getter()
{
  v1[3] = v0;
  v1[4] = sub_20DD650F4();
  v1[5] = sub_20DD650E4();
  v3 = sub_20DD65094();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_20DA36B00, v3, v2);
}

uint64_t sub_20DA36B00()
{
  v14 = v0;
  v1 = [*(v0 + 24) homeManager];
  if (v1)
  {
    v2 = v1;
    if ([*(v0 + 24) hasLoadedHomes])
    {

      v3 = [v2 homes];
      sub_20DA37338();
      sub_20DD64FD4();

      v13 = sub_20DA3990C(v4);
      sub_20DA38A6C(&v13);

      v10 = v13;
      v11 = *(v0 + 8);

      return v11(v10);
    }
  }

  v5 = sub_20DD650E4();
  *(v0 + 64) = v5;
  v6 = swift_allocObject();
  *(v0 + 72) = v6;
  swift_unknownObjectWeakInit();
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441E0, &qword_20DD949E8);
  *v7 = v0;
  v7[1] = sub_20DA36D38;
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 16, v5, v9, 0x73656D6F486C6C61, 0xE800000000000000, sub_20DA37330, v6, v8);
}

uint64_t sub_20DA36D38()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = v2[6];
    v4 = v2[7];
    v5 = sub_20DA36ED4;
  }

  else
  {

    v2[12] = v2[2];
    v3 = v2[6];
    v4 = v2[7];
    v5 = sub_20DA36E6C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20DA36E6C()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20DA36ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DA36F44()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C84C610);
  __swift_project_value_buffer(v0, qword_27C84C610);
  if (qword_27C842490 != -1)
  {
    swift_once();
  }

  v1 = qword_280E03EA8;
  return sub_20DD64C54();
}

void static HFHomeKitDispatcher.Error.failed(with:title:description:)(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  if (!a3)
  {
    v9 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = sub_20DD64E74();
  if (v6)
  {
LABEL_3:
    v6 = sub_20DD64E74();
  }

LABEL_4:
  v10 = [objc_opt_self() hf:a1 errorWithCode:v9 title:v6 description:?];

  *a6 = v10;
  *(a6 + 8) = 1;
}

id sub_20DA370C4(uint64_t a1, SEL *a2, _BYTE *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_20DA37100(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844528, &qword_20DD95208);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock[-1] - v5;
  if ((sub_20DD65194() & 1) == 0 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v8 = Strong, v9 = [Strong allHomesFuture], v8, v9))
  {
    (*(v4 + 16))(v6, a1, v3);
    v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    (*(v4 + 32))(v11 + v10, v6, v3);
    aBlock[4] = sub_20DA39B30;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20DA1AA10;
    aBlock[3] = &block_descriptor_4;
    v12 = _Block_copy(aBlock);

    v13 = [v9 addCompletionBlock_];
    _Block_release(v12);
  }

  else
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20DD650B4();
  }
}

unint64_t sub_20DA37338()
{
  result = qword_280E01EF0;
  if (!qword_280E01EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E01EF0);
  }

  return result;
}

uint64_t sub_20DA37384(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844528, &qword_20DD95208);
    return sub_20DD650A4();
  }

  else
  {
    if (a1)
    {
      sub_20DA37338();
      sub_20DD64FC4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844528, &qword_20DD95208);
    return sub_20DD650B4();
  }
}

uint64_t HFHomeKitDispatcher.refresh(until:)(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  v3 = sub_20DD636C4();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  sub_20DD650F4();
  *(v2 + 64) = sub_20DD650E4();
  v5 = sub_20DD65094();
  *(v2 + 72) = v5;
  *(v2 + 80) = v4;

  return MEMORY[0x2822009F8](sub_20DA37544, v5, v4);
}

uint64_t sub_20DA37544()
{
  if (qword_27C842460 != -1)
  {
    swift_once();
  }

  if ((byte_27C844510 & 1) == 0 && qword_27C842468 != -1)
  {
    swift_once();
  }

  sub_20DD63684();
  sub_20DD63584();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_20DA37690;
  v2 = *(v0 + 56);

  return HFHomeKitDispatcher.refresh(until:)(v2);
}

uint64_t sub_20DA37690()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = sub_20DA378A0;
  }

  else
  {
    v8 = sub_20DA37828;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20DA37828()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DA378A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HFHomeKitDispatcher.refresh(until:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20DD636C4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_20DD650F4();
  v2[7] = sub_20DD650E4();
  v5 = sub_20DD65094();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x2822009F8](sub_20DA37A0C, v5, v4);
}

uint64_t sub_20DA37A0C()
{
  v31 = v0;
  v1 = [*(v0 + 24) homeManager];
  *(v0 + 80) = v1;
  if (v1)
  {
    if (qword_27C842458 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = sub_20DD64C44();
    *(v0 + 88) = __swift_project_value_buffer(v6, qword_27C84C610);
    (*(v3 + 16))(v2, v5, v4);
    v7 = sub_20DD64C24();
    v8 = sub_20DD65384();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = *(v0 + 32);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30[0] = v29;
      *v13 = 136315394;
      *(v13 + 4) = sub_20D9E0B38(0x2868736572666572, 0xEF293A6C69746E75, v30);
      *(v13 + 12) = 2080;
      sub_20DA399F4();
      v14 = sub_20DD65934();
      v16 = v15;
      (*(v11 + 8))(v10, v12);
      v17 = sub_20D9E0B38(v14, v16, v30);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_20D9BF000, v7, v8, ">>> %s until:%s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v29, -1, -1);
      MEMORY[0x20F327D10](v13, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v27 = swift_task_alloc();
    *(v0 + 96) = v27;
    *v27 = v0;
    v27[1] = sub_20DA37E88;
    v28 = *(v0 + 16);

    return HMHomeManager.refresh(before:)(v28);
  }

  else
  {

    if (qword_27C842458 != -1)
    {
      swift_once();
    }

    v18 = sub_20DD64C44();
    __swift_project_value_buffer(v18, qword_27C84C610);
    v19 = sub_20DD64C24();
    v20 = sub_20DD65364();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_20D9E0B38(0x2868736572666572, 0xEF293A6C69746E75, v30);
      _os_log_impl(&dword_20D9BF000, v19, v20, "%s HMHomeManager is nil", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x20F327D10](v22, -1, -1);
      MEMORY[0x20F327D10](v21, -1, -1);
    }

    sub_20DA399A0();
    swift_allocError();
    v24 = v23;
    *v23 = [objc_opt_self() hf:-1 errorWithCode:0 title:0 description:?];
    *(v24 + 8) = 1;
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_20DA37E88()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_20DA38118;
  }

  else
  {
    v5 = sub_20DA37FC4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20DA37FC4()
{
  v10 = v0;

  v1 = sub_20DD64C24();
  v2 = sub_20DD65384();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 80);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_20D9E0B38(0x2868736572666572, 0xEF293A6C69746E75, &v9);
    _os_log_impl(&dword_20D9BF000, v1, v2, "<<< %s finished synchronization succesfully", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F327D10](v6, -1, -1);
    MEMORY[0x20F327D10](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20DA38118()
{
  v9 = v0;

  v1 = sub_20DD64C24();
  v2 = sub_20DD65364();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_20D9E0B38(0x2868736572666572, 0xEF293A6C69746E75, &v8);
    _os_log_impl(&dword_20D9BF000, v1, v2, "<<< %s exceeded timeout and failed", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x20F327D10](v4, -1, -1);
    MEMORY[0x20F327D10](v3, -1, -1);
  }

  v5 = *(v0 + 80);
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t HFHomeKitDispatcher.waitForAllHomes(timeout:)(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  sub_20DD650F4();
  *(v2 + 32) = sub_20DD650E4();
  v4 = sub_20DD65094();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x2822009F8](sub_20DA38310, v4, v3);
}

uint64_t sub_20DA38310()
{
  if ([*(v0 + 24) hasLoadedHomes])
  {
    goto LABEL_2;
  }

  if (qword_27C842460 != -1)
  {
    swift_once();
  }

  if (byte_27C844510)
  {
    goto LABEL_11;
  }

  if (qword_27C842468 != -1)
  {
    swift_once();
  }

  if (byte_27C844511 == 1)
  {
LABEL_11:
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_20DA3849C;
    v4 = *(v0 + 16);

    return HFHomeKitDispatcher.refresh(until:)(v4);
  }

  else
  {
LABEL_2:
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_20DA38604;

    return HFHomeKitDispatcher.allHomes.getter();
  }
}

uint64_t sub_20DA3849C()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](sub_20DA3892C, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[9] = v5;
    *v5 = v2;
    v5[1] = sub_20DA38604;

    return HFHomeKitDispatcher.allHomes.getter();
  }
}

uint64_t sub_20DA38604(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  v5 = *(v3 + 48);
  v6 = *(v3 + 40);
  if (v1)
  {
    v7 = sub_20DA38990;
  }

  else
  {
    v7 = sub_20DA38748;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20DA38748()
{
  v13 = v0;

  if (qword_27C842458 != -1)
  {
    swift_once();
  }

  v1 = sub_20DD64C44();
  __swift_project_value_buffer(v1, qword_27C84C610);

  v2 = sub_20DD64C24();
  v3 = sub_20DD65384();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D9E0B38(0xD000000000000019, 0x800000020DD99040, &v12);
    *(v6 + 12) = 2048;
    if (v5 >> 62)
    {
      v8 = sub_20DD655B4();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 14) = v8;

    _os_log_impl(&dword_20D9BF000, v2, v3, "%s Finished lazy loading of [HMHome]: count=%ld", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F327D10](v7, -1, -1);
    MEMORY[0x20F327D10](v6, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 80);

  return v9(v10);
}

uint64_t sub_20DA3892C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DA38990()
{
  v1 = *(v0 + 88);

  sub_20DA399A0();
  swift_allocError();
  v3 = v2;
  *v2 = [objc_opt_self() hf:59 errorWithCode:0 title:0 description:?];
  *(v3 + 8) = 1;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20DA38A6C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20DA73A14(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_20DA38AD8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_20DA38AD8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20DD65924();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20DA37338();
        v6 = sub_20DD65034();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_20DA38D50(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20DA38BDC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20DA38BDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_5:
    v18 = a3;
    v6 = *(v19 + 8 * a3);
    v16 = v5;
    v17 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 name];
      sub_20DD64EB4();

      v11 = [v9 name];
      sub_20DD64EB4();

      sub_20D9C8A28();
      v12 = sub_20DD654D4();

      if (v12 != -1)
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 8;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v13 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v13;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20DA38D50(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v104 = result;
    while (1)
    {
      v11 = v9 + 1;
      v105 = v9;
      if (v9 + 1 < v8)
      {
        v12 = v9;
        v109 = v8;
        v100 = v10;
        v102 = v5;
        v13 = *(*v6 + 8 * v11);
        v106 = 8 * v9;
        v14 = (*v6 + 8 * v9);
        v16 = *v14;
        v15 = v14 + 2;
        v17 = v13;
        v9 = v16;
        v18 = [v17 name];
        sub_20DD64EB4();

        v19 = [v9 name];
        sub_20DD64EB4();

        sub_20D9C8A28();
        v111 = sub_20DD654D4();

        v20 = v12 + 2;
        while (1)
        {
          v11 = v109;
          if (v109 == v20)
          {
            break;
          }

          v21 = *(v15 - 1);
          v9 = *v15;
          v22 = v21;
          v23 = [v9 name];
          sub_20DD64EB4();

          v24 = [v22 name];
          sub_20DD64EB4();

          v25 = sub_20DD654D4();

          ++v20;
          ++v15;
          if ((v111 == -1) == (v25 != -1))
          {
            v11 = (v20 - 1);
            break;
          }
        }

        v10 = v100;
        v5 = v102;
        v6 = a3;
        v7 = v104;
        v26 = v106;
        if (v111 == -1)
        {
          v27 = v105;
          if (v11 < v105)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v105 < v11)
          {
            v28 = 8 * v11 - 8;
            v29 = v11;
            do
            {
              if (v27 != --v29)
              {
                v31 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v30 = *(v31 + v26);
                *(v31 + v26) = *(v31 + v28);
                *(v31 + v28) = v30;
              }

              ++v27;
              v28 -= 8;
              v26 += 8;
            }

            while (v27 < v29);
          }
        }
      }

      v32 = v6[1];
      if (v11 >= v32)
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v11, v105))
      {
        goto LABEL_116;
      }

      if (v11 - v105 >= a4)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v105, a4))
      {
        goto LABEL_117;
      }

      if (&v105[a4] >= v32)
      {
        v33 = v6[1];
      }

      else
      {
        v33 = &v105[a4];
      }

      if (v33 < v105)
      {
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v34 = v105;
      if (v11 != v33)
      {
        break;
      }

LABEL_37:
      if (v11 < v34)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20D9E014C(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v47 = *(v10 + 2);
      v46 = *(v10 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        result = sub_20D9E014C((v46 > 1), v47 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v48;
      v49 = &v10[16 * v47];
      *(v49 + 4) = v105;
      *(v49 + 5) = v11;
      v50 = *v7;
      if (!v50)
      {
        goto LABEL_125;
      }

      v9 = v11;
      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v52 = *(v10 + 4);
            v53 = *(v10 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_57:
            if (v55)
            {
              goto LABEL_104;
            }

            v68 = &v10[16 * v48];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_107;
            }

            v74 = &v10[16 * v51 + 32];
            v76 = *v74;
            v75 = *(v74 + 1);
            v62 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v62)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v72, v77))
            {
              goto LABEL_111;
            }

            if (v72 + v77 >= v54)
            {
              if (v54 < v77)
              {
                v51 = v48 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v78 = &v10[16 * v48];
          v80 = *v78;
          v79 = *(v78 + 1);
          v62 = __OFSUB__(v79, v80);
          v72 = v79 - v80;
          v73 = v62;
LABEL_71:
          if (v73)
          {
            goto LABEL_106;
          }

          v81 = &v10[16 * v51];
          v83 = *(v81 + 4);
          v82 = *(v81 + 5);
          v62 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v62)
          {
            goto LABEL_109;
          }

          if (v84 < v72)
          {
            goto LABEL_3;
          }

LABEL_78:
          v89 = v51 - 1;
          if (v51 - 1 >= v48)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*v6)
          {
            goto LABEL_122;
          }

          v90 = *&v10[16 * v89 + 32];
          v91 = *&v10[16 * v51 + 40];
          sub_20DA39514((*v6 + 8 * v90), (*v6 + 8 * *&v10[16 * v51 + 32]), (*v6 + 8 * v91), v50);
          if (v5)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_20DA73550(v10);
          }

          if (v89 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v92 = &v10[16 * v89];
          *(v92 + 4) = v90;
          *(v92 + 5) = v91;
          result = sub_20DA734C4(v51);
          v48 = *(v10 + 2);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v56 = &v10[16 * v48 + 32];
        v57 = *(v56 - 64);
        v58 = *(v56 - 56);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_102;
        }

        v61 = *(v56 - 48);
        v60 = *(v56 - 40);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_103;
        }

        v63 = &v10[16 * v48];
        v65 = *v63;
        v64 = *(v63 + 1);
        v62 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v62)
        {
          goto LABEL_105;
        }

        v62 = __OFADD__(v54, v66);
        v67 = v54 + v66;
        if (v62)
        {
          goto LABEL_108;
        }

        if (v67 >= v59)
        {
          v85 = &v10[16 * v51 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v62 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v62)
          {
            goto LABEL_112;
          }

          if (v54 < v88)
          {
            v51 = v48 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v6[1];
      v7 = v104;
      if (v9 >= v8)
      {
        goto LABEL_88;
      }
    }

    v101 = v10;
    v103 = v5;
    v35 = *v6;
    v36 = *v6 + 8 * v11 - 8;
    v37 = &v105[-v11];
    v107 = v33;
    do
    {
      v110 = v36;
      v112 = v11;
      v38 = *(v35 + 8 * v11);
      v108 = v37;
      do
      {
        v39 = *v36;
        v9 = v38;
        v40 = v39;
        v41 = [v9 name];
        sub_20DD64EB4();

        v42 = [v40 name];
        sub_20DD64EB4();

        sub_20D9C8A28();
        v43 = sub_20DD654D4();

        if (v43 != -1)
        {
          break;
        }

        if (!v35)
        {
          goto LABEL_121;
        }

        v44 = *v36;
        v38 = *(v36 + 8);
        *v36 = v38;
        *(v36 + 8) = v44;
        v36 -= 8;
      }

      while (!__CFADD__(v37++, 1));
      ++v11;
      v36 = v110 + 8;
      v37 = v108 - 1;
    }

    while ((v112 + 1) != v107);
    v11 = v107;
    v10 = v101;
    v5 = v103;
    v6 = a3;
    v7 = v104;
LABEL_36:
    v34 = v105;
    goto LABEL_37;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_88:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_20DA73550(v10);
    v10 = result;
  }

  v93 = *(v10 + 2);
  if (v93 >= 2)
  {
    while (*v6)
    {
      v94 = v10;
      v10 = (v93 - 1);
      v95 = *&v94[16 * v93];
      v96 = *&v94[16 * v93 + 24];
      sub_20DA39514((*v6 + 8 * v95), (*v6 + 8 * *&v94[16 * v93 + 16]), (*v6 + 8 * v96), v9);
      if (v5)
      {
      }

      if (v96 < v95)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_20DA73550(v94);
      }

      if (v93 - 2 >= *(v94 + 2))
      {
        goto LABEL_114;
      }

      v97 = &v94[16 * v93];
      *v97 = v95;
      *(v97 + 1) = v96;
      result = sub_20DA734C4(v93 - 1);
      v10 = v94;
      v93 = *(v94 + 2);
      if (v93 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_20DA39514(void **__src, id *a2, id *a3, void **__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = __dst;
    if (__dst != a2 || &a2[v12] <= __dst)
    {
      memmove(__dst, a2, 8 * v12);
      v5 = a2;
    }

    v44 = &v15[v12];
    if (v10 < 8 || v5 <= v6)
    {
      v39 = v5;
    }

    else
    {
      __srca = v15;
LABEL_25:
      v41 = v5;
      v27 = v5 - 1;
      v28 = v4 - 1;
      v29 = v44;
      v42 = v27;
      do
      {
        v30 = v28;
        v31 = v28 + 1;
        v32 = *--v29;
        v33 = *v27;
        v34 = v32;
        v35 = v33;
        v36 = [v34 name];
        sub_20DD64EB4();

        v37 = [v35 name];
        sub_20DD64EB4();

        sub_20D9C8A28();
        v38 = sub_20DD654D4();

        if (v38 == -1)
        {
          v25 = v31 == v41;
          v4 = v30;
          if (!v25)
          {
            *v30 = *v42;
          }

          v15 = __srca;
          if (v44 <= __srca || (v5 = v42, v42 <= v6))
          {
            v39 = v42;
            goto LABEL_38;
          }

          goto LABEL_25;
        }

        if (v31 != v44)
        {
          *v30 = *v29;
        }

        v28 = v30 - 1;
        v44 = v29;
        v27 = v42;
      }

      while (v29 > __srca);
      v44 = v29;
      v39 = v41;
      v15 = __srca;
    }
  }

  else
  {
    if (__dst != __src || &__src[v9] <= __dst)
    {
      v13 = __dst;
      memmove(__dst, __src, 8 * v9);
      v5 = a2;
      __dst = v13;
    }

    v44 = &__dst[v9];
    v15 = __dst;
    if (v7 >= 8 && v5 < v4)
    {
      while (1)
      {
        v16 = v4;
        v17 = *v15;
        v18 = v5;
        v19 = *v5;
        v20 = v17;
        v21 = [v19 name];
        sub_20DD64EB4();

        v22 = [v20 name];
        sub_20DD64EB4();

        sub_20D9C8A28();
        v23 = sub_20DD654D4();

        if (v23 != -1)
        {
          break;
        }

        v24 = v18;
        v5 = v18 + 1;
        if (v6 != v18)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v6;
        if (v15 < v44)
        {
          v4 = v16;
          if (v5 < v16)
          {
            continue;
          }
        }

        goto LABEL_35;
      }

      v24 = v15;
      v25 = v6 == v15++;
      v5 = v18;
      if (v25)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v6 = *v24;
      goto LABEL_14;
    }

LABEL_35:
    v39 = v6;
  }

LABEL_38:
  if (v39 != v15 || v39 >= (v15 + ((v44 - v15 + (v44 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v39, v15, 8 * (v44 - v15));
  }

  return 1;
}

unint64_t sub_20DA3990C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_20DD655B4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_20D9EF64C();
  sub_20DA16A84(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_20DA399A0()
{
  result = qword_27C844518;
  if (!qword_27C844518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844518);
  }

  return result;
}

unint64_t sub_20DA399F4()
{
  result = qword_27C844520;
  if (!qword_27C844520)
  {
    sub_20DD636C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844520);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So19HFHomeKitDispatcherC4HomeE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_20DA39A7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20DA39AC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_20DA39B08(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_20DA39B30(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844528, &qword_20DD95208);

  return sub_20DA37384(a1, a2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DA39BD4(uint64_t a1)
{
  v2 = sub_20DD63904();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20DD64674();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v29 = MEMORY[0x277D84FA0];
  if (!a1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844620, &qword_20DD955A0);
    v14 = *(v7 + 72);
    v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v26[0] = *(v7 + 80);
    v26[2] = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_20DD95210;
    v27 = v15;
    v28 = v2;
    v17 = v16 + v15;
    v18 = *(v7 + 104);
    v18(v17, *MEMORY[0x277D17658], v6);
    v19 = *MEMORY[0x277D17670];
    v26[1] = v14;
    v18(v17 + v14, v19, v6);
    v18(v17 + 2 * v14, *MEMORY[0x277D17678], v6);
    v20 = sub_20D9EEAEC(v16);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v29 = v20;
    v21 = v28;
    (*(v3 + 104))(v5, *MEMORY[0x277D15288], v28);
    sub_20DA483E4(&qword_27C844628, MEMORY[0x277D15290], MEMORY[0x277D15268]);
    LOBYTE(v16) = sub_20DD638B4();
    (*(v3 + 8))(v5, v21);
    if (v16)
    {

      v22 = v27;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_20DD93A70;
      v18(v23 + v22, *MEMORY[0x277D17660], v6);
      v24 = sub_20D9EEAEC(v23);
      swift_setDeallocating();
      (*(v7 + 8))(v23 + v22, v6);
      swift_deallocClassInstance();
      return v24;
    }

    return v29;
  }

  if (a1 == 1)
  {
    (*(v7 + 104))(v10, *MEMORY[0x277D17680], v6);
    sub_20D9E20DC(v12, v10);
    (*(v7 + 8))(v12, v6);
    return v29;
  }

  result = sub_20DD65814();
  __break(1u);
  return result;
}

uint64_t sub_20DA39FFC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  *a2 = v4;
  return result;
}

uint64_t sub_20DA3A07C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_20DD64CE4();
}

uint64_t sub_20DA3A0F8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  return v3;
}

uint64_t sub_20DA3A16C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844600, &qword_20DD95538);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844538, &qword_20DD95278);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_20DA3A30C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  *a2 = v4;
  return result;
}

uint64_t sub_20DA3A38C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_20DD64CE4();
}

uint64_t sub_20DA3A408(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  return v3;
}

uint64_t sub_20DA3A47C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8445F8, &qword_20DD95530);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844548, &qword_20DD952C8);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_20DA3A61C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  *a2 = v4;
  return result;
}

uint64_t sub_20DA3A69C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_20DD64CE4();
}

uint64_t sub_20DA3A710(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  return v3;
}

uint64_t sub_20DA3A784(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8445F0, &qword_20DD95528);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844558, &qword_20DD95318);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

id ActivityLogCoordinator.init(home:targetKind:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v26 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844558, &qword_20DD95318);
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844548, &qword_20DD952C8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844538, &qword_20DD95278);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  swift_defaultActor_initialize();
  v15 = OBJC_IVAR___HFActivityLogCoordinator_Swift__eventsByDate;
  v28 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844560, &qword_20DD95320);
  sub_20DD64C94();
  (*(v12 + 32))(&v3[v15], v14, v11);
  v16 = OBJC_IVAR___HFActivityLogCoordinator_Swift__lastError;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844568, qword_20DD95328);
  sub_20DD64C94();
  (*(v8 + 32))(&v3[v16], v10, v7);
  v17 = OBJC_IVAR___HFActivityLogCoordinator_Swift__activelyFetching;
  LOBYTE(v28) = 0;
  sub_20DD64C94();
  (*(v4 + 32))(&v3[v17], v6, v24);
  v18 = OBJC_IVAR___HFActivityLogCoordinator_Swift_queryController;
  sub_20DD64704();
  *&v3[v18] = sub_20DD646F4();
  sub_20DD63654();
  *&v3[OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount] = 0;
  v19 = OBJC_IVAR___HFActivityLogCoordinator_Swift_oldestFetchStartDate;
  v20 = sub_20DD636C4();
  (*(*(v20 - 8) + 56))(&v3[v19], 1, 1, v20);
  *&v3[OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer] = 0;
  v21 = v26;
  *(v3 + 14) = v25;
  *(v3 + 15) = v21;
  v22 = type metadata accessor for ActivityLogCoordinator(0);
  v27.receiver = v3;
  v27.super_class = v22;
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t type metadata accessor for ActivityLogCoordinator(uint64_t a1)
{
  result = qword_27C8445C0;
  if (!qword_27C8445C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityLogCoordinator.deinit()
{
  v1 = v0;
  v2 = sub_20DD64C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer;
  v7 = *(v1 + OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer);
  if (v7)
  {
    v8 = qword_27C842480;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = qword_27C84C658;
    sub_20DD64C54();
    v11 = sub_20DD64C24();
    v12 = sub_20DD65384();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20D9BF000, v11, v12, "Deinit - Stopping auto-fetch timer", v13, 2u);
      MEMORY[0x20F327D10](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    [v9 invalidate];
  }

  v14 = OBJC_IVAR___HFActivityLogCoordinator_Swift__eventsByDate;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844538, &qword_20DD95278);
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v16 = OBJC_IVAR___HFActivityLogCoordinator_Swift__lastError;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844548, &qword_20DD952C8);
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  v18 = OBJC_IVAR___HFActivityLogCoordinator_Swift__activelyFetching;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844558, &qword_20DD95318);
  (*(*(v19 - 8) + 8))(v1 + v18, v19);

  v20 = OBJC_IVAR___HFActivityLogCoordinator_Swift_oneMonthAgo;
  v21 = sub_20DD636C4();
  (*(*(v21 - 8) + 8))(v1 + v20, v21);
  sub_20D9D76EC(v1 + OBJC_IVAR___HFActivityLogCoordinator_Swift_oldestFetchStartDate, &unk_27C843810, &qword_20DD93F00);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t ActivityLogCoordinator.__deallocating_deinit()
{
  ActivityLogCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20DA3B0A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DA3B15C;

  return sub_20DA45D84(a1, a2);
}

uint64_t sub_20DA3B15C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_20DA3B25C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 432) = a4;
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844570, &unk_20DD95350);
  *(v5 + 120) = swift_task_alloc();
  v6 = sub_20DD649D4();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844198, &qword_20DD949D0);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844578, &qword_20DD95360);
  *(v5 + 168) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844580, &qword_20DD95368);
  *(v5 + 176) = v7;
  *(v5 + 184) = *(v7 - 8);
  *(v5 + 192) = swift_task_alloc();
  v8 = sub_20DD64614();
  *(v5 + 200) = v8;
  *(v5 + 208) = *(v8 - 8);
  *(v5 + 216) = swift_task_alloc();
  v9 = sub_20DD64624();
  *(v5 + 224) = v9;
  *(v5 + 232) = *(v9 - 8);
  *(v5 + 240) = swift_task_alloc();
  v10 = sub_20DD63744();
  *(v5 + 248) = v10;
  *(v5 + 256) = *(v10 - 8);
  *(v5 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  v11 = sub_20DD636C4();
  *(v5 + 288) = v11;
  *(v5 + 296) = *(v11 - 8);
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844588, &qword_20DD95370);
  *(v5 + 320) = v12;
  *(v5 + 328) = *(v12 - 8);
  *(v5 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA3B660, v4, 0);
}

uint64_t sub_20DA3B660()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  sub_20DA4688C(*(v0 + 88), v3);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = *(v0 + 312);
  v8 = *(v0 + 288);
  v7 = *(v0 + 296);
  v9 = *(v0 + 280);
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, *(v0 + 112) + OBJC_IVAR___HFActivityLogCoordinator_Swift_oneMonthAgo, *(v0 + 288));
    if (v4(v9, 1, v8) != 1)
    {
      sub_20D9D76EC(*(v0 + 280), &unk_27C843810, &qword_20DD93F00);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 280), *(v0 + 288));
  }

  v10 = *(v0 + 288);
  v11 = *(v0 + 272);
  sub_20DA4688C(*(v0 + 96), v11);
  if (v4(v11, 1, v10) == 1)
  {
    v12 = *(v0 + 288);
    v13 = *(v0 + 272);
    sub_20DD63684();
    if (v4(v13, 1, v12) != 1)
    {
      sub_20D9D76EC(*(v0 + 272), &unk_27C843810, &qword_20DD93F00);
    }
  }

  else
  {
    (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 272), *(v0 + 288));
  }

  v38 = *(v0 + 320);
  v14 = *(v0 + 264);
  v34 = *(v0 + 296);
  v35 = *(v0 + 256);
  v36 = *(v0 + 248);
  v37 = *(v0 + 288);
  v28 = *(v0 + 240);
  v15 = *(v0 + 224);
  v16 = *(v0 + 232);
  v31 = *(v0 + 312);
  v29 = *(v0 + 216);
  v30 = *(v0 + 304);
  v32 = *(v0 + 208);
  v33 = *(v0 + 200);
  v17 = *(v0 + 112);
  v18 = *(v17 + 112);
  v19 = [v18 uniqueIdentifier];
  sub_20DD63714();

  v20 = [v18 hf_currentUserIsOwner];
  v21 = MEMORY[0x277D175C0];
  if (!v20)
  {
    v21 = MEMORY[0x277D175C8];
  }

  (*(v16 + 104))(v28, *v21, v15);
  sub_20DD64704();
  sub_20DA39BD4(*(v17 + 120));
  sub_20DD646D4();

  *(v0 + 48) = sub_20DD646E4();
  *(v0 + 56) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844590, &unk_20DD95380);
  *(v0 + 344) = type metadata accessor for HFEvent(0);
  sub_20D9EF5F8(&qword_27C844598, &qword_27C844590, &unk_20DD95380, MEMORY[0x277D177A8]);
  sub_20DD65804();
  (*(v32 + 8))(v29, v33);
  (*(v16 + 8))(v28, v15);
  (*(v35 + 8))(v14, v36);
  v23 = *(v34 + 8);
  v23(v30, v37);
  v23(v31, v37);
  v24 = MEMORY[0x20F326710](v38);
  (*(v0 + 64))(v24);

  sub_20DD657D4();
  sub_20DD657E4();
  *(v0 + 352) = sub_20DA483E4(&qword_27C8445A0, type metadata accessor for ActivityLogCoordinator, &protocol conformance descriptor for ActivityLogCoordinator);
  *(v0 + 360) = 0;
  swift_getObjectType();
  v26 = sub_20DD65094();
  *(v0 + 368) = v26;
  *(v0 + 376) = v25;

  return MEMORY[0x2822009F8](sub_20DA3BB4C, v26, v25);
}

uint64_t sub_20DA3BB4C()
{
  v1 = v0[44];
  v2 = v0[14];
  v0[48] = sub_20DD657C4();
  v3 = sub_20D9EF5F8(&qword_27C8445A8, &qword_27C844578, &qword_20DD95360, MEMORY[0x277D177A0]);
  v4 = swift_task_alloc();
  v0[49] = v4;
  *v4 = v0;
  v4[1] = sub_20DA3BC54;
  v5 = v0[20];
  v6 = v0[15];

  return MEMORY[0x282200310](v6, v2, v1, v0 + 10, v5, v3);
}

uint64_t sub_20DA3BC54()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_20DA3BF74;
  }

  else
  {
    (*(v2 + 384))();
    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_20DA3BD7C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20DA3BD7C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20D9D76EC(v3, &qword_27C844570, &unk_20DD95350);
    v4 = v0[19];
    v5 = v0[14];
    v6 = *(v0[43] - 8);
    v0[53] = v6;
    (*(v6 + 56))(v4, 1, 1);

    return MEMORY[0x2822009F8](sub_20DA3C384, v5, 0);
  }

  else
  {
    (*(v2 + 32))(v0[18], v3, v1);
    v7 = sub_20DD657D4();
    v0[51] = v8;
    v13 = (v7 + *v7);
    v9 = swift_task_alloc();
    v0[52] = v9;
    *v9 = v0;
    v9[1] = sub_20DA3C144;
    v11 = v0[18];
    v10 = v0[19];

    return v13(v10, v11);
  }
}

uint64_t sub_20DA3BF74()
{
  v1 = v0[48];
  v2 = v0[14];
  v0[50] = v0[10];
  v1();

  return MEMORY[0x2822009F8](sub_20DA3BFF8, v2, 0);
}

uint64_t sub_20DA3BFF8()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DA3C144()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 376);
  v6 = *(v1 + 368);

  return MEMORY[0x2822009F8](sub_20DA3C2E4, v6, v5);
}

uint64_t sub_20DA3C2E4()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = *(v0[43] - 8);
  v0[53] = v3;
  (*(v3 + 56))(v1, 0, 1);

  return MEMORY[0x2822009F8](sub_20DA3C384, v2, 0);
}

uint64_t sub_20DA3C384()
{
  v1 = v0[19];
  v2 = (*(v0[53] + 48))(v1, 1);
  if (v2 == 1)
  {
    v5 = v0[41];
    v6 = v0[42];
    v7 = v0[40];
    (*(v0[23] + 8))(v0[24], v0[22]);
    (*(v5 + 8))(v6, v7);

    v8 = v0[1];
    v9 = v0[45];

    return v8(v9);
  }

  else
  {
    v11 = v0[45];
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      sub_20D9D76EC(v1, &qword_27C844198, &qword_20DD949D0);
      v0[45] = v12;
      swift_getObjectType();
      v13 = sub_20DD65094();
      v4 = v14;
      v0[46] = v13;
      v0[47] = v14;
      v2 = sub_20DA3BB4C;
      v3 = v13;
    }

    return MEMORY[0x2822009F8](v2, v3, v4);
  }
}

uint64_t sub_20DA3C5A4()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA3C64C, v0, 0);
}

uint64_t sub_20DA3C64C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_20DD636C4();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v4(v1, 1, 1, v3);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_20DA3C760;
  v6 = v0[3];
  v7 = v0[4];

  return sub_20DA3B25C(v7, v6, 1, 0);
}

uint64_t sub_20DA3C760(uint64_t a1)
{
  v4 = *v2;
  v4[6] = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[2];
    sub_20D9D76EC(v4[3], &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v5, &unk_27C843810, &qword_20DD93F00);

    return MEMORY[0x2822009F8](sub_20DA3C938, v6, 0);
  }

  else
  {
    v7 = v4[4];
    sub_20D9D76EC(v4[3], &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v7, &unk_27C843810, &qword_20DD93F00);

    v8 = v4[1];

    return v8(a1 > 0);
  }
}

uint64_t sub_20DA3C938()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_20DA3CB20(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v2[3] = swift_task_alloc();
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_20DA3CBF0, a2, 0);
}

uint64_t sub_20DA3CBF0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_20DD636C4();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v4(v1, 1, 1, v3);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_20DA3CD04;
  v6 = v0[3];
  v7 = v0[4];

  return sub_20DA3B25C(v7, v6, 1, 0);
}

uint64_t sub_20DA3CD04(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 56) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 16);
    sub_20D9D76EC(*(v4 + 24), &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v5, &unk_27C843810, &qword_20DD93F00);

    return MEMORY[0x2822009F8](sub_20DA3CF08, v6, 0);
  }

  else
  {
    v8 = *(v4 + 32);
    v7 = *(v4 + 40);
    v9 = *(v4 + 24);

    sub_20D9D76EC(v9, &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v8, &unk_27C843810, &qword_20DD93F00);
    (*(v7 + 16))(v7, a1 > 0, 0);
    _Block_release(*(v4 + 40));

    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_20DA3CF08()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = sub_20DD63494();

  (*(v2 + 16))(v2, 0, v3);
  _Block_release(*(v0 + 40));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20DA3CFC4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844280, &qword_20DD94B28);
  v2[11] = swift_task_alloc();
  v2[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8445B0, &unk_20DD953A0);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v3 = sub_20DD636C4();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v2[21] = *(v4 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA3D1B0, v1, 0);
}

uint64_t sub_20DA3D1B0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[9];
  v5 = OBJC_IVAR___HFActivityLogCoordinator_Swift_oldestFetchStartDate;
  v0[25] = OBJC_IVAR___HFActivityLogCoordinator_Swift_oldestFetchStartDate;
  swift_beginAccess();
  sub_20DA4688C(v4 + v5, v3);
  v6 = *(v2 + 48);
  v0[26] = v6;
  v0[27] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v1) == 1)
  {
    sub_20D9D76EC(v0[18], &unk_27C843810, &qword_20DD93F00);
LABEL_4:
    v11 = v0[23];
    v12 = v0[20];
    v13 = v0[19];
    v14 = v0[14];
    v15 = v0[8];
    v16 = v0[9];
    v17 = sub_20DD65114();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    (*(v12 + 16))(v11, v15, v13);
    sub_20DD650F4();

    v18 = sub_20DD650E4();
    v19 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 2) = v18;
    *(v20 + 3) = v21;
    *(v20 + 4) = v16;
    v22 = *(v12 + 32);
    v0[28] = v22;
    v0[29] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v22(&v20[v19], v11, v13);
    v23 = sub_20DA1C814(0, 0, v14, &unk_20DD953B8, v20);
    v0[30] = v23;
    v24 = swift_task_alloc();
    v0[31] = v24;
    *v24 = v0;
    v24[1] = sub_20DA3D550;
    v26 = v0[10];
    v25 = v0[11];

    return MEMORY[0x282200460](v25, v23, v26);
  }

  v7 = v0[24];
  v8 = v0[19];
  v9 = v0[20];
  (*(v9 + 32))(v7, v0[18], v8);
  sub_20DA483E4(&qword_27C8445B8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v10 = sub_20DD64E54();
  (*(v9 + 8))(v7, v8);
  if (v10)
  {
    goto LABEL_4;
  }

  v27 = v0[1];

  return v27(0);
}

uint64_t sub_20DA3D550()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_20DA3D660, v1, 0);
}

uint64_t sub_20DA3D660()
{
  v1 = v0[11];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

    sub_20D9D76EC(v1, &qword_27C844280, &qword_20DD94B28);
    v32 = 0;
  }

  else
  {
    v3 = v0[28];
    v31 = v0[26];
    v4 = v0[22];
    v5 = v0[19];
    v6 = v0[17];
    v7 = v0[12];
    v8 = v0[13];
    v29 = v0[9];
    v30 = v0[25];
    v9 = *(v2 + 48);
    v10 = *(v7 + 48);
    *v8 = *v1;
    v3(&v8[v10], &v1[v9], v5);
    v32 = *v8;
    v3(v4, &v8[*(v7 + 48)], v5);
    sub_20DA4688C(v29 + v30, v6);
    if (v31(v6, 1, v5) == 1)
    {
      v11 = v0[17];

      sub_20D9D76EC(v11, &unk_27C843810, &qword_20DD93F00);
    }

    else
    {
      v12 = v0[26];
      v13 = v0[25];
      v14 = v0[19];
      v15 = v0[16];
      v16 = v0[9];
      sub_20D9D76EC(v0[17], &unk_27C843810, &qword_20DD93F00);
      sub_20DA4688C(v16 + v13, v15);
      result = v12(v15, 1, v14);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v19 = v0[19];
      v18 = v0[20];
      v20 = v0[16];
      v21 = sub_20DD63644();

      v22 = *(v18 + 8);
      v22(v20, v19);
      if ((v21 & 1) == 0)
      {
        v22(v0[22], v0[19]);
        goto LABEL_9;
      }
    }

    v23 = v0[25];
    v24 = v0[19];
    v25 = v0[20];
    v26 = v0[15];
    v27 = v0[9];
    (v0[28])(v26, v0[22], v24);
    (*(v25 + 56))(v26, 0, 1, v24);
    swift_beginAccess();
    sub_20DA469F4(v26, v27 + v23);
    swift_endAccess();
  }

LABEL_9:

  v28 = v0[1];

  return v28(v32);
}

uint64_t sub_20DA3D98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_20DD650F4();
  v5[3] = sub_20DD650E4();
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_20DA3DA54;

  return sub_20DA3DBF0(a1, a5);
}

uint64_t sub_20DA3DA54()
{

  v1 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA3DB90, v1, v0);
}

uint64_t sub_20DA3DB90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DA3DBF0(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_20DD64C44();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = *(type metadata accessor for HFEvent(0) - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v5 = sub_20DD637B4();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = sub_20DD637C4();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v7 = sub_20DD637A4();
  v3[31] = v7;
  v3[32] = *(v7 - 8);
  v3[33] = swift_task_alloc();
  v8 = sub_20DD637F4();
  v3[34] = v8;
  v3[35] = *(v8 - 8);
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v9 = sub_20DD636C4();
  v3[42] = v9;
  v3[43] = *(v9 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  sub_20DD650F4();
  v3[49] = sub_20DD650E4();
  v11 = sub_20DD65094();
  v3[50] = v11;
  v3[51] = v10;

  return MEMORY[0x2822009F8](sub_20DA3DFC8, v11, v10);
}

uint64_t sub_20DA3DFC8(uint64_t a1, uint64_t a2)
{
  v101 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  if (*(v2 + 496) == 1)
  {
    v3 = *(v2 + 112);

LABEL_3:
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

    v5 = *(v2 + 8);

    return v5();
  }

  v94 = *(v2 + 344);
  v88 = *(v2 + 288);
  v89 = *(v2 + 328);
  v95 = *(v2 + 272);
  v97 = *(v2 + 336);
  v8 = *(v2 + 256);
  v7 = *(v2 + 264);
  v10 = *(v2 + 240);
  v9 = *(v2 + 248);
  v92 = *(v2 + 280);
  v11 = *(v2 + 224);
  v12 = *(v2 + 232);
  v13 = *(v2 + 208);
  v14 = *(v2 + 216);
  v15 = *(v2 + 200);
  sub_20DD637D4();
  (*(v8 + 104))(v7, *MEMORY[0x277CC9878], v9);
  (*(v12 + 104))(v10, *MEMORY[0x277CC9900], v11);
  (*(v13 + 104))(v14, *MEMORY[0x277CC98E8], v15);
  sub_20DD637E4();
  (*(v13 + 8))(v14, v15);
  (*(v12 + 8))(v10, v11);
  (*(v8 + 8))(v7, v9);
  (*(v92 + 8))(v88, v95);
  v91 = *(v94 + 48);
  result = v91(v89, 1, v97);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v16 = *(v2 + 336);
  v17 = *(v2 + 344);
  v18 = *(v2 + 320);
  v82 = *(v17 + 32);
  v82(*(v2 + 384), *(v2 + 328), v16);
  v85 = *(v17 + 56);
  v85(v18, 1, 1, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  v19 = *(v2 + 96);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v2 + 344);
    v22 = sub_20D9E09B4(*(v19 + 16), 0);
    v23 = sub_20D9EB224(&v100, &v22[(*(v21 + 80) + 32) & ~*(v21 + 80)], v20, v19);
    v24 = v100;

    sub_20D9C51CC(v24);
    if (v23 == v20)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v22 = MEMORY[0x277D84F90];
LABEL_11:
  v100 = v22;
  sub_20DA44724(&v100);

  v25 = v100;
  v87 = *(v100 + 2);
  if (v87)
  {
    v26 = 0;
    v27 = 0;
    v90 = *(v2 + 344);
    v96 = (v90 + 8);
    v98 = *(v2 + 176);
    v86 = v100;
    do
    {
      if (v26 >= *(v25 + 16))
      {
        goto LABEL_56;
      }

      (*(v90 + 16))(*(v2 + 376), v25 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v26, *(v2 + 336));
      if (v27 >= 20)
      {
        (*v96)(*(v2 + 376), *(v2 + 336));

        goto LABEL_49;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_20DD64CD4();

      v30 = *(v2 + 104);
      if (!*(v30 + 16))
      {
        goto LABEL_57;
      }

      v31 = sub_20D9CB72C(*(v2 + 376));
      if ((v32 & 1) == 0)
      {
        goto LABEL_58;
      }

      v93 = v26;
      v33 = *(*(v30 + 56) + 8 * v31);

      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = *(v2 + 336);
        v36 = *(v2 + 312);
        v37 = *(v2 + 320);
        sub_20DA1A828(v33 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * (v34 - 1), *(v2 + 192));
        sub_20DA4688C(v37, v36);
        if (v91(v36, 1, v35) == 1)
        {
          v83 = *(v2 + 336);
          v38 = *(v2 + 320);
          v39 = *(v2 + 304);
          v40 = *(v2 + 192);
          sub_20D9D76EC(*(v2 + 312), &unk_27C843810, &qword_20DD93F00);
          sub_20DD649A4();
          __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
          sub_20DD64694();
          sub_20DA1A960(v40);
          sub_20D9D76EC(v38, &unk_27C843810, &qword_20DD93F00);
          __swift_destroy_boxed_opaque_existential_0((v2 + 16));
          v85(v39, 0, 1, v83);
          sub_20DA47868(v39, v38);
        }

        else
        {
          v41 = *(v2 + 312);
          sub_20DA1A960(*(v2 + 192));
          sub_20D9D76EC(v41, &unk_27C843810, &qword_20DD93F00);
        }
      }

      if (sub_20DD63634())
      {
        (*v96)(*(v2 + 376), *(v2 + 336));

        goto LABEL_37;
      }

      if ((sub_20DD63644() & 1) == 0)
      {
        v84 = v34 + v27;
        while (1)
        {
          if (!v34)
          {
            v45 = *v96;
            v27 = v84;
LABEL_33:
            v45(*(v2 + 376), *(v2 + 336));

            goto LABEL_14;
          }

          if (v34 > *(v33 + 16))
          {
            break;
          }

          --v34;
          v42 = *(v2 + 368);
          v43 = *(v2 + 336);
          v44 = *(v2 + 184);
          sub_20DA1A828(v33 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v34, v44);
          sub_20DD649A4();
          sub_20DA1A960(v44);
          __swift_project_boxed_opaque_existential_0((v2 + 56), *(v2 + 80));
          sub_20DD64694();
          __swift_destroy_boxed_opaque_existential_0((v2 + 56));
          LOBYTE(v44) = sub_20DD63644();
          v45 = *v96;
          (*v96)(v42, v43);
          if ((v44 & 1) == 0)
          {
            goto LABEL_33;
          }

          v29 = __OFADD__(v27++, 1);
          if (v29)
          {
            goto LABEL_55;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      (*v96)(*(v2 + 376), *(v2 + 336));
      v28 = *(v33 + 16);

      v29 = __OFADD__(v27, v28);
      v27 += v28;
      if (v29)
      {
        goto LABEL_59;
      }

LABEL_14:
      v25 = v86;
      v26 = v93 + 1;
    }

    while (v93 + 1 != v87);

    if (v27 < 20)
    {
      goto LABEL_38;
    }

LABEL_49:

    if (qword_27C842480 != -1)
    {
      swift_once();
    }

    v71 = qword_27C84C658;
    sub_20DD64C54();
    v72 = sub_20DD64C24();
    v73 = sub_20DD65354();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 134217984;
      *(v74 + 4) = v27;
      _os_log_impl(&dword_20D9BF000, v72, v73, "Not prefetching events, at least %ld left in the list", v74, 0xCu);
      MEMORY[0x20F327D10](v74, -1, -1);
    }

    v75 = *(v2 + 384);
    v76 = *(v2 + 336);
    v77 = *(v2 + 344);
    v78 = *(v2 + 320);
    v79 = *(v2 + 168);
    v80 = *(v2 + 136);
    v81 = *(v2 + 144);
    v3 = *(v2 + 112);

    (*(v81 + 8))(v79, v80);
    sub_20D9D76EC(v78, &unk_27C843810, &qword_20DD93F00);
    (*(v77 + 8))(v75, v76);
    goto LABEL_3;
  }

  v27 = 0;
LABEL_37:

LABEL_38:
  if (qword_27C842480 != -1)
  {
LABEL_60:
    swift_once();
  }

  v46 = qword_27C84C658;
  *(v2 + 416) = qword_27C84C658;
  v47 = v46;
  sub_20DD64C54();
  v48 = sub_20DD64C24();
  v49 = sub_20DD65384();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = v27;
    _os_log_impl(&dword_20D9BF000, v48, v49, "Prefetching more events, only %ld left in the list", v50, 0xCu);
    MEMORY[0x20F327D10](v50, -1, -1);
  }

  v51 = *(v2 + 360);
  v52 = *(v2 + 336);
  v53 = *(v2 + 344);
  v99 = *(v2 + 320);
  v54 = *(v2 + 296);
  v55 = *(v2 + 160);
  v56 = *(v2 + 136);
  v57 = *(v2 + 144);
  v58 = *(v2 + 128);

  v59 = *(v57 + 8);
  *(v2 + 424) = v59;
  *(v2 + 432) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v59(v55, v56);
  v60 = *(v53 + 16);
  v60(v51, v58 + OBJC_IVAR___HFActivityLogCoordinator_Swift_oneMonthAgo, v52);
  sub_20DA4688C(v99, v54);
  v61 = v91(v54, 1, v52);
  v62 = *(v2 + 352);
  v63 = *(v2 + 296);
  if (v61 == 1)
  {
    v64 = *(v2 + 336);
    (v60)(v62, *(v2 + 120));
    if (v91(v63, 1, v64) != 1)
    {
      sub_20D9D76EC(*(v2 + 296), &unk_27C843810, &qword_20DD93F00);
    }
  }

  else
  {
    v82(v62, *(v2 + 296), *(v2 + 336));
  }

  v65 = *(v2 + 112);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
  *(v2 + 440) = v66;
  v67 = *(v66 + 48);
  v68 = swift_task_alloc();
  *(v2 + 448) = v68;
  *v68 = v2;
  v68[1] = sub_20DA3EC84;
  v70 = *(v2 + 352);
  v69 = *(v2 + 360);

  return sub_20DA40090(v65 + v67, v69, v70, 200, 0);
}

uint64_t sub_20DA3EC84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v4[57] = v1;

  v6 = (v5 + 8);
  v4[58] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7 = v4[45];
  v8 = v4[44];
  v9 = v4[42];
  if (v1)
  {
    v10 = *v6;
    v4[61] = *v6;
    v10(v8, v9);
    v10(v7, v9);
    v11 = v4[50];
    v12 = v4[51];
    v13 = sub_20DA3F040;
  }

  else
  {
    v4[59] = a1;
    v14 = *v6;
    v4[60] = *v6;
    v14(v8, v9);
    v14(v7, v9);
    v11 = v4[50];
    v12 = v4[51];
    v13 = sub_20DA3EE70;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_20DA3EE70()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[55];
  v4 = v0[48];
  v5 = v0[42];
  v6 = v0[40];
  v7 = v0[14];

  sub_20D9D76EC(v6, &unk_27C843810, &qword_20DD93F00);
  v1(v4, v5);
  *v7 = v2;
  (*(*(v3 - 8) + 56))(v7, 0, 1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DA3F040()
{
  v1 = v0[57];
  v2 = v0[52];

  v3 = v2;
  sub_20DD64C54();
  v4 = v1;
  v5 = sub_20DD64C24();
  v6 = sub_20DD65364();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[57];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20D9BF000, v5, v6, "Error while prefetching events: %@", v8, 0xCu);
    sub_20D9D76EC(v9, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v9, -1, -1);
    MEMORY[0x20F327D10](v8, -1, -1);
  }

  v12 = v0[57];
  v23 = v0[61];
  v13 = v0[55];
  v14 = v0[53];
  v15 = v0[48];
  v16 = v0[42];
  v17 = v0[40];
  v18 = v0[19];
  v19 = v0[17];
  v22 = v0[14];

  v14(v18, v19);
  sub_20D9D76EC(v17, &unk_27C843810, &qword_20DD93F00);
  v23(v15, v16);
  (*(*(v13 - 8) + 56))(v22, 1, 1, v13);

  v20 = v0[1];

  return v20();
}

uint64_t sub_20DA3F330(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_20DD65114();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_20DD650F4();

  v8 = sub_20DD650E4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = a1;
  *(v9 + 40) = v2;
  sub_20DA1C514(0, 0, v6, &unk_20DD953D0, v9);
}

uint64_t sub_20DA3F45C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 80) = a4;
  v6 = sub_20DD64C44();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  *(v5 + 48) = swift_task_alloc();
  sub_20DD650F4();
  *(v5 + 56) = sub_20DD650E4();
  v8 = sub_20DD65094();
  *(v5 + 64) = v8;
  *(v5 + 72) = v7;

  return MEMORY[0x2822009F8](sub_20DA3F560, v8, v7);
}

uint64_t sub_20DA3F560()
{
  if (*(v0 + 80) == 1)
  {
    if (qword_27C842480 != -1)
    {
      swift_once();
    }

    v1 = qword_27C84C658;
    sub_20DD64C54();
    v2 = sub_20DD64C24();
    v3 = sub_20DD65384();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20D9BF000, v2, v3, "Beginning auto-fetch timer", v4, 2u);
      MEMORY[0x20F327D10](v4, -1, -1);
    }

    v5 = *(v0 + 48);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    (*(v7 + 8))(v5, v6);
    v9 = sub_20DA3F790;
  }

  else
  {
    if (qword_27C842480 != -1)
    {
      swift_once();
    }

    v10 = qword_27C84C658;
    sub_20DD64C54();
    v11 = sub_20DD64C24();
    v12 = sub_20DD65384();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20D9BF000, v11, v12, "Stopping auto-fetch timer", v13, 2u);
      MEMORY[0x20F327D10](v13, -1, -1);
    }

    v15 = *(v0 + 32);
    v14 = *(v0 + 40);
    v8 = *(v0 + 16);
    v16 = *(v0 + 24);

    (*(v15 + 8))(v14, v16);
    v9 = sub_20DA3F86C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_20DA3F790()
{
  sub_20DA3F908(0);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_20DA3F7F8, v1, v2);
}

uint64_t sub_20DA3F7F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DA3F86C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer;
  v3 = *(v1 + OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v1 + v2);
    *(v1 + v2) = 0;
  }

  v5 = v0[8];
  v6 = v0[9];

  return MEMORY[0x2822009F8](sub_20DA4852C, v5, v6);
}

void sub_20DA3F908(char a1)
{
  v3 = sub_20DD64C44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer;
  v8 = *(v1 + OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer);
  if (v8)
  {
    [v8 invalidate];
  }

  else if (a1)
  {
    return;
  }

  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_20DA4763C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA446BC;
  aBlock[3] = &block_descriptor_5;
  v10 = _Block_copy(aBlock);
  v11 = objc_opt_self();

  v12 = [v11 timerWithTimeInterval:0 repeats:v10 block:5.0];
  _Block_release(v10);

  v13 = *(v1 + v7);
  *(v1 + v7) = v12;
  v14 = v12;

  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v15 = qword_27C84C658;
  sub_20DD64C54();
  v16 = sub_20DD64C24();
  v17 = sub_20DD65354();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_20D9BF000, v16, v17, "Scheduling update timer", v18, 2u);
    MEMORY[0x20F327D10](v18, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v19 = [objc_opt_self() mainRunLoop];
  [v19 addTimer:v14 forMode:*MEMORY[0x277CBE640]];
}

void ActivityLogCoordinator.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void ActivityLogCoordinator.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_20DA3FCAC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActivityLogCoordinator(0);
  result = sub_20DD64C84();
  *a2 = result;
  return result;
}

void sub_20DA3FCEC()
{
  v0 = @"activityHistoryDebug";
  v1 = HFPreferencesBoolForKey(v0);

  byte_27C84C628 = v1;
}

uint64_t sub_20DA3FD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a8;
  v8[2] = a1;
  v8[3] = sub_20DD650F4();
  v8[4] = sub_20DD650E4();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0) + 48);
  v15 = swift_task_alloc();
  v8[5] = v15;
  *v15 = v8;
  v15[1] = sub_20DA3FE3C;

  return sub_20DA40090(a1 + v14, a5, a6, a7, v9);
}

uint64_t sub_20DA3FE3C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_20DD65094();
    v7 = v6;
    v8 = sub_20DA4002C;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_20DD65094();
    v7 = v9;
    v8 = sub_20DA3FFBC;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_20DA3FFBC()
{
  v1 = v0[7];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_20DA4002C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DA40090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 104) = a4;
  *(v6 + 112) = v5;
  *(v6 + 419) = a5;
  *(v6 + 88) = a2;
  *(v6 + 96) = a3;
  *(v6 + 80) = a1;
  v7 = sub_20DD636C4();
  *(v6 + 120) = v7;
  *(v6 + 128) = *(v7 - 8);
  *(v6 + 136) = swift_task_alloc();
  v8 = sub_20DD637F4();
  *(v6 + 144) = v8;
  *(v6 + 152) = *(v8 - 8);
  *(v6 + 160) = swift_task_alloc();
  v9 = sub_20DD64C44();
  *(v6 + 168) = v9;
  *(v6 + 176) = *(v9 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  v10 = sub_20DD64614();
  *(v6 + 232) = v10;
  *(v6 + 240) = *(v10 - 8);
  *(v6 + 248) = swift_task_alloc();
  v11 = sub_20DD64624();
  *(v6 + 256) = v11;
  *(v6 + 264) = *(v11 - 8);
  *(v6 + 272) = swift_task_alloc();
  v12 = sub_20DD63744();
  *(v6 + 280) = v12;
  *(v6 + 288) = *(v12 - 8);
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844588, &qword_20DD95370);
  *(v6 + 312) = v13;
  *(v6 + 320) = *(v13 - 8);
  *(v6 + 328) = swift_task_alloc();
  sub_20DD650F4();
  *(v6 + 336) = sub_20DD650E4();
  v15 = sub_20DD65094();
  *(v6 + 344) = v15;
  *(v6 + 352) = v14;

  return MEMORY[0x2822009F8](sub_20DA40438, v15, v14);
}

void sub_20DA40438(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 419) & 1) == 0)
  {
    v3 = *(v2 + 112);
    v4 = *(v3 + OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
      return;
    }

    *(v3 + OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount) = v6;
    if (v6 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v2 + 418) = 1;

      sub_20DD64CE4();
    }
  }

  v7 = *(v2 + 304);
  v8 = *(v2 + 288);
  v33 = *(v2 + 280);
  v9 = *(v2 + 264);
  v10 = *(v2 + 272);
  v11 = *(v2 + 256);
  v28 = *(v2 + 240);
  v29 = *(v2 + 232);
  v30 = *(v2 + 128);
  v31 = *(v2 + 224);
  v32 = *(v2 + 120);
  v12 = *(v2 + 112);
  v25 = *(v2 + 104);
  v26 = *(v2 + 248);
  v23 = *(v2 + 88);
  v24 = *(v2 + 96);
  v13 = *(v12 + 112);
  *(v2 + 360) = v13;
  v14 = [v13 uniqueIdentifier];
  sub_20DD63714();

  v15 = [v13 hf_currentUserIsOwner];
  v16 = MEMORY[0x277D175C0];
  if (!v15)
  {
    v16 = MEMORY[0x277D175C8];
  }

  (*(v9 + 104))(v10, *v16, v11);
  sub_20DD64704();
  sub_20DA39BD4(*(v12 + 120));
  sub_20DD646D4();

  *(v2 + 48) = sub_20DD646E4();
  *(v2 + 56) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844590, &unk_20DD95380);
  type metadata accessor for HFEvent(0);
  sub_20D9EF5F8(&qword_27C844598, &qword_27C844590, &unk_20DD95380, MEMORY[0x277D177A8]);
  sub_20DD65804();
  (*(v28 + 8))(v27, v29);
  (*(v9 + 8))(v10, v11);
  v18 = *(v8 + 8);
  *(v2 + 368) = v18;
  *(v2 + 376) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v7, v33);
  (*(v30 + 56))(v31, 1, 1, v32);
  if (qword_27C842470 != -1)
  {
    swift_once();
  }

  v19 = byte_27C84C628;
  *(v2 + 420) = byte_27C84C628;
  v20 = swift_task_alloc();
  *(v2 + 384) = v20;
  *v20 = v2;
  v20[1] = sub_20DA407D0;
  v21 = *(v2 + 328);
  v22 = *(v2 + 216);

  sub_20DA414D8(v22, v21, v19);
}

uint64_t sub_20DA407D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[49] = a1;
  v5[50] = a2;
  v5[51] = v2;

  v6 = v4[44];
  v7 = v4[43];
  if (v2)
  {
    v8 = sub_20DA4104C;
  }

  else
  {
    v8 = sub_20DA40918;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20DA40918()
{
  v69 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  sub_20D9D76EC(v2, &unk_27C843810, &qword_20DD93F00);
  sub_20DA47868(v1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 72) = 0;

  sub_20DD64CE4();
  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v3 = qword_27C84C658;
  sub_20DD64C54();
  v4 = sub_20DD64C24();
  v5 = sub_20DD65384();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 400);
    v7 = *(v0 + 104);
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v6;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v7;
    _os_log_impl(&dword_20D9BF000, v4, v5, "Fetched %ld event(s) out of %ld limit", v8, 0x16u);
    MEMORY[0x20F327D10](v8, -1, -1);
  }

  v9 = *(v0 + 200);
  v11 = *(v0 + 168);
  v10 = *(v0 + 176);

  v12 = *(v10 + 8);
  v12(v9, v11);
  sub_20DD64C54();
  v13 = sub_20DD64C24();
  v14 = sub_20DD65384();
  if (os_log_type_enabled(v13, v14))
  {
    v66 = v12;
    v15 = *(v0 + 392);
    v16 = *(v0 + 420);
    v17 = *(v0 + 192);
    v18 = *(v0 + 168);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v68[0] = v20;
    *v19 = 134218242;
    *(v19 + 4) = *(v15 + 16);
    *(v19 + 12) = 2080;
    if (v16)
    {
      v21 = 0x2947554245442820;
    }

    else
    {
      v21 = 0;
    }

    if (v16)
    {
      v22 = 0xE900000000000020;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v23 = sub_20D9E0B38(v21, v22, v68);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_20D9BF000, v13, v14, "%ld event(s) after processing%s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x20F327D10](v20, -1, -1);
    MEMORY[0x20F327D10](v19, -1, -1);

    v66(v17, v18);
  }

  else
  {
    v24 = *(v0 + 192);
    v25 = *(v0 + 168);

    v12(v24, v25);
  }

  v26 = *(v0 + 392);
  if (*(v26 + 16))
  {
    v27 = *(v0 + 408);
    v28 = *(v0 + 160);
    sub_20DD637D4();
    v29 = swift_task_alloc();
    *(v29 + 16) = v28;

    v31 = sub_20DA42D78(v30, sub_20DA478D8, v29);

    swift_getKeyPath();
    swift_getKeyPath();
    v32 = sub_20DD64CC4();
    v34 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = *v34;
    *v34 = 0x8000000000000000;
    sub_20DA48074(v31, sub_20DA45CBC, 0, isUniquelyReferenced_nonNull_native, v68);
    if (v27)
    {

      *v34 = v68[0];
    }

    v37 = *(v0 + 152);
    v67 = *(v0 + 160);
    v38 = *(v0 + 144);

    *v34 = v68[0];

    v32(v0 + 16, 0);

    (*(v37 + 8))(v67, v38);
  }

  if (*(v0 + 400) == *(v0 + 104))
  {
    v39 = *(v0 + 208);
    v41 = *(v0 + 120);
    v40 = *(v0 + 128);
    sub_20DA4688C(*(v0 + 224), v39);
    result = (*(v40 + 48))(v39, 1, v41);
    if (result == 1)
    {
      goto LABEL_32;
    }

    v42 = *(v0 + 328);
    v44 = *(v0 + 312);
    v43 = *(v0 + 320);
    v45 = *(v0 + 224);
    v46 = *(v0 + 208);
    v48 = *(v0 + 128);
    v47 = *(v0 + 136);
    v49 = *(v0 + 120);

    sub_20D9D76EC(v45, &unk_27C843810, &qword_20DD93F00);
    (*(v43 + 8))(v42, v44);
    v50 = *(v48 + 32);
    v50(v47, v46, v49);
  }

  else
  {
    v51 = *(v0 + 328);
    v52 = *(v0 + 312);
    v53 = *(v0 + 320);
    v54 = *(v0 + 224);
    v55 = *(v0 + 128);
    v56 = *(v0 + 136);
    v57 = *(v0 + 120);
    v58 = *(v0 + 88);

    sub_20D9D76EC(v54, &unk_27C843810, &qword_20DD93F00);
    (*(v53 + 8))(v51, v52);
    (*(v55 + 16))(v56, v58, v57);
    v50 = *(v55 + 32);
  }

  v59 = *(v0 + 419);
  v60 = *(v26 + 16);
  v50(*(v0 + 80), *(v0 + 136), *(v0 + 120));

  if ((v59 & 1) == 0)
  {
    v61 = *(v0 + 112);
    v62 = *(v61 + OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount);
    v63 = __OFSUB__(v62, 1);
    v64 = v62 - 1;
    if (!v63)
    {
      *(v61 + OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount) = v64;
      if (!v64)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 417) = 0;

        sub_20DD64CE4();
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

LABEL_28:

  v65 = *(v0 + 8);

  return v65(v60);
}

uint64_t sub_20DA4104C()
{
  v41 = v0;

  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = qword_27C84C658;
  sub_20DD64C54();

  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65364();

  if (os_log_type_enabled(v4, v5))
  {
    v36 = *(v0 + 408);
    v35 = *(v0 + 368);
    v6 = *(v0 + 360);
    v7 = *(v0 + 296);
    v8 = *(v0 + 280);
    v37 = *(v0 + 176);
    v38 = *(v0 + 168);
    v39 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40 = v11;
    *v9 = 136315394;
    v12 = [v6 uniqueIdentifier];
    sub_20DD63714();

    sub_20DA483E4(&qword_27C8436C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_20DD65934();
    v15 = v14;
    v35(v7, v8);
    v16 = sub_20D9E0B38(v13, v15, &v40);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v36;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_20D9BF000, v4, v5, "Error with home query for %s %@", v9, 0x16u);
    sub_20D9D76EC(v10, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F327D10](v11, -1, -1);
    MEMORY[0x20F327D10](v9, -1, -1);

    (*(v37 + 8))(v39, v38);
  }

  else
  {
    v20 = *(v0 + 176);
    v19 = *(v0 + 184);
    v21 = *(v0 + 168);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 408);
  v24 = *(v0 + 320);
  v23 = *(v0 + 328);
  v25 = *(v0 + 312);
  v26 = *(v0 + 224);
  v27 = *(v0 + 419);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v22;

  v28 = v22;
  sub_20DD64CE4();
  swift_willThrow();
  sub_20D9D76EC(v26, &unk_27C843810, &qword_20DD93F00);
  result = (*(v24 + 8))(v23, v25);
  if ((v27 & 1) == 0)
  {
    v30 = *(v0 + 112);
    v31 = *(v30 + OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount);
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v32)
    {
      __break(1u);
      return result;
    }

    *(v30 + OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount) = v33;
    if (!v33)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 416) = 0;

      sub_20DD64CE4();
    }
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_20DA414D8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 540) = a3;
  *(v3 + 168) = a1;
  *(v3 + 176) = a2;
  v4 = sub_20DD649D4();
  *(v3 + 184) = v4;
  *(v3 + 192) = *(v4 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  v5 = sub_20DD64784();
  *(v3 + 216) = v5;
  *(v3 + 224) = *(v5 - 8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  *(v3 + 248) = swift_task_alloc();
  v6 = sub_20DD63744();
  *(v3 + 256) = v6;
  *(v3 + 264) = *(v6 - 8);
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  v7 = sub_20DD636C4();
  *(v3 + 288) = v7;
  *(v3 + 296) = *(v7 - 8);
  *(v3 + 304) = swift_task_alloc();
  v8 = type metadata accessor for HFEvent(0);
  *(v3 + 312) = v8;
  *(v3 + 320) = *(v8 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844198, &qword_20DD949D0);
  *(v3 + 352) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844588, &qword_20DD95370);
  *(v3 + 360) = v9;
  *(v3 + 368) = *(v9 - 8);
  *(v3 + 376) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844580, &qword_20DD95368);
  *(v3 + 384) = v10;
  *(v3 + 392) = *(v10 - 8);
  *(v3 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = sub_20DD650F4();
  *(v3 + 448) = sub_20DD650E4();
  v12 = sub_20DD65094();
  *(v3 + 456) = v12;
  *(v3 + 464) = v11;

  return MEMORY[0x2822009F8](sub_20DA4191C, v12, v11);
}

uint64_t sub_20DA4191C()
{
  v1 = *(v0 + 432);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 360);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v7 = *(v0 + 176);
  v8 = *(v6 + 56);
  *(v0 + 472) = v8;
  *(v0 + 480) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 1, 1, v5);
  (*(v3 + 16))(v2, v7, v4);
  sub_20D9EF5F8(&qword_27C844610, &qword_27C844588, &qword_20DD95370, MEMORY[0x277D85990]);
  sub_20DD651A4();
  *(v0 + 536) = *MEMORY[0x277D17970];
  v9 = MEMORY[0x277D84F98];
  *(v0 + 488) = MEMORY[0x277D84F98];
  *(v0 + 496) = v9;
  v10 = MEMORY[0x277D84F90];
  *(v0 + 504) = 0;
  *(v0 + 512) = v10;
  v11 = sub_20DD650E4();
  *(v0 + 520) = v11;
  v12 = sub_20D9EF5F8(&qword_27C844618, &qword_27C844580, &qword_20DD95368, MEMORY[0x277D85980]);
  v13 = swift_task_alloc();
  *(v0 + 528) = v13;
  *v13 = v0;
  v13[1] = sub_20DA41AE8;
  v14 = *(v0 + 384);
  v15 = *(v0 + 352);
  v16 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v15, v11, v16, v0 + 136, v14, v12);
}

uint64_t sub_20DA41AE8()
{
  v2 = *v1;

  v3 = *(v2 + 456);
  v4 = *(v2 + 464);
  if (v0)
  {
    v5 = sub_20DA42738;
  }

  else
  {
    v5 = sub_20DA41C08;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20DA41C08()
{
  v2 = *(v1 + 352);
  if ((*(*(v1 + 320) + 48))(v2, 1, *(v1 + 312)) == 1)
  {
    v3 = *(v1 + 432);
    v4 = *(v1 + 168);
    (*(*(v1 + 392) + 8))(*(v1 + 400), *(v1 + 384));

    sub_20DA47868(v3, v4);

    v5 = *(v1 + 8);
    v7 = *(v1 + 504);
    v6 = *(v1 + 512);

    return v5(v6, v7);
  }

  v9 = *(v1 + 504);
  sub_20DA1A8FC(v2, *(v1 + 344));
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_56;
  }

  v131 = v9 + 1;
  v10 = *(v1 + 424);
  v11 = *(v1 + 288);
  v12 = *(v1 + 296);
  sub_20DA4688C(*(v1 + 432), v10);
  v13 = *(v12 + 48);
  LODWORD(v11) = v13(v10, 1, v11);
  sub_20D9D76EC(v10, &unk_27C843810, &qword_20DD93F00);
  if (v11 == 1)
  {
    goto LABEL_9;
  }

  v14 = *(v1 + 432);
  v15 = *(v1 + 416);
  v16 = *(v1 + 288);
  sub_20DD649A4();
  __swift_project_boxed_opaque_existential_0((v1 + 96), *(v1 + 120));
  sub_20DD64694();
  __swift_destroy_boxed_opaque_existential_0((v1 + 96));
  sub_20DA4688C(v14, v15);
  v17 = v13(v15, 1, v16);
  if (v17 == 1)
  {
    __break(1u);
    return MEMORY[0x282200310](v17, v18, v19, v20, v21, v22);
  }

  v23 = *(v1 + 416);
  v25 = *(v1 + 296);
  v24 = *(v1 + 304);
  v26 = *(v1 + 288);
  v27 = sub_20DD63644();
  v28 = *(v25 + 8);
  v28(v24, v26);
  v28(v23, v26);
  if (v27)
  {
LABEL_9:
    v29 = *(v1 + 472);
    v30 = *(v1 + 432);
    v31 = *(v1 + 408);
    v32 = *(v1 + 288);
    sub_20DD649A4();
    __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
    sub_20DD64694();
    sub_20D9D76EC(v30, &unk_27C843810, &qword_20DD93F00);
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
    v29(v31, 0, 1, v32);
    sub_20DA47868(v31, v30);
  }

  if (*(v1 + 540))
  {
LABEL_23:
    sub_20DA1A828(*(v1 + 344), *(v1 + 336));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0 = *(v1 + 512);
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_24:
      v77 = *(v0 + 16);
      v76 = *(v0 + 24);
      if (v77 >= v76 >> 1)
      {
        v0 = sub_20D9E0628((v76 > 1), v77 + 1, 1, v0);
      }

      v78 = *(v1 + 336);
      v79 = *(v1 + 320);
      sub_20DA1A960(*(v1 + 344));
      *(v0 + 16) = v77 + 1;
      sub_20DA1A8FC(v78, v0 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v77);
LABEL_27:
      *(v1 + 504) = v131;
      *(v1 + 512) = v0;
      v80 = sub_20DD650E4();
      *(v1 + 520) = v80;
      v81 = sub_20D9EF5F8(&qword_27C844618, &qword_27C844580, &qword_20DD95368, MEMORY[0x277D85980]);
      v82 = swift_task_alloc();
      *(v1 + 528) = v82;
      *v82 = v1;
      v82[1] = sub_20DA41AE8;
      v21 = *(v1 + 384);
      v17 = *(v1 + 352);
      v19 = MEMORY[0x277D85700];
      v20 = v1 + 136;
      v18 = v80;
      v22 = v81;

      return MEMORY[0x282200310](v17, v18, v19, v20, v21, v22);
    }

LABEL_56:
    v0 = sub_20D9E0628(0, *(v0 + 16) + 1, 1, v0);
    goto LABEL_24;
  }

  v33 = *(v1 + 536);
  v34 = *(v1 + 208);
  v35 = *(v1 + 184);
  v36 = *(v1 + 192);
  v37 = *(v36 + 16);
  (v37)(v34, *(v1 + 344), v35);
  v38 = *(v36 + 88);
  v39 = v38(v34, v35);
  v40 = *(v1 + 256);
  v41 = *(v1 + 264);
  v42 = *(v1 + 248);
  if (v39 != v33)
  {
    (*(*(v1 + 192) + 8))(*(v1 + 208), *(v1 + 184));
    (*(v41 + 56))(v42, 1, 1, v40);
    goto LABEL_22;
  }

  v129 = v38;
  v130 = v37;
  v43 = *(v1 + 240);
  v44 = *(v1 + 216);
  v45 = *(v1 + 224);
  v46 = *(v1 + 208);
  v128 = *(*(v1 + 192) + 96);
  v128(v46, *(v1 + 184));
  v127 = *(v45 + 32);
  v127(v43, v46, v44);
  sub_20DD64774();
  v126 = *(v45 + 8);
  v126(v43, v44);
  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  sub_20DD647E4();
  (*(v41 + 56))(v42, 0, 1, v40);
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  if ((*(v41 + 48))(v42, 1, v40) == 1)
  {
LABEL_22:
    sub_20D9D76EC(*(v1 + 248), &unk_27C843A70, &qword_20DD94260);
    goto LABEL_23;
  }

  v47 = *(v1 + 536);
  v48 = *(v1 + 344);
  v49 = *(v1 + 200);
  v50 = *(v1 + 184);
  (*(*(v1 + 264) + 32))(*(v1 + 280), *(v1 + 248), *(v1 + 256));
  v130(v49, v48, v50);
  if (v129(v49, v50) == v47)
  {
    v51 = *(v1 + 232);
    v52 = *(v1 + 216);
    v53 = *(v1 + 200);
    v128(v53, *(v1 + 184));
    v127(v51, v53, v52);
    LOBYTE(v53) = sub_20DA35C54(v51);
    v126(v51, v52);
    if (v53)
    {
      if (!*(*(v1 + 496) + 16) || (v58 = sub_20D9CB38C(*(v1 + 280), v54, v55, v56, v57), (v59 & 1) == 0))
      {
        v121 = *(v1 + 344);
        (*(*(v1 + 264) + 8))(*(v1 + 280), *(v1 + 256));
        sub_20DA1A960(v121);
        v0 = *(v1 + 512);
        v73 = *(v1 + 488);
        v74 = *(v1 + 496);
        goto LABEL_54;
      }

      v63 = *(*(*(v1 + 496) + 56) + 8 * v58);
      v64 = sub_20D9CB38C(*(v1 + 280), v59, v60, v61, v62);
      if ((v65 & 1) == 0)
      {
        v73 = *(v1 + 488);
        v74 = *(v1 + 496);
        goto LABEL_50;
      }

      v0 = v64;
      v66 = *(v1 + 488);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 160) = v66;
      if (!v67)
      {
        goto LABEL_63;
      }

      v72 = (v1 + 488);
      while (1)
      {
        v73 = *v72;
        (*(*(v1 + 264) + 8))(*(*v72 + 48) + *(*(v1 + 264) + 72) * v0, *(v1 + 256));
        sub_20DA288EC(v0, v73);
        v74 = v73;
LABEL_50:
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v0 = *(v1 + 512);
        if (v67)
        {
          if ((v63 & 0x8000000000000000) != 0)
          {
            goto LABEL_61;
          }
        }

        else
        {
LABEL_60:
          v67 = sub_20DA45D70(v0);
          v0 = v67;
          if ((v63 & 0x8000000000000000) != 0)
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }
        }

        if (v63 < *(v0 + 16))
        {
          v122 = *(v1 + 344);
          v123 = *(v1 + 280);
          v124 = *(v1 + 256);
          v125 = *(v1 + 264);
          sub_20DA30998(v122);
          (*(v125 + 8))(v123, v124);
          sub_20DA1A960(v122);
          goto LABEL_54;
        }

LABEL_62:
        __break(1u);
LABEL_63:
        v72 = (v1 + 160);
        sub_20D9D3280(v67, v68, v69, v70, v71);
      }
    }
  }

  else
  {
    (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
  }

  v83 = *(v1 + 512);
  v84 = *(v1 + 488);
  v0 = *(v1 + 272);
  v85 = *(v1 + 264);
  v87 = *(v85 + 16);
  v86 = (v85 + 16);
  v63 = v87;
  v87(v0, *(v1 + 280), *(v1 + 256));
  v74 = *(v83 + 2);
  v73 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 152) = v84;
  v92 = sub_20D9CB38C(v0, v88, v89, v90, v91);
  v97 = *(v84 + 16);
  v98 = (v93 & 1) == 0;
  v99 = __OFADD__(v97, v98);
  v100 = v97 + v98;
  if (v99)
  {
    __break(1u);
    goto LABEL_58;
  }

  v101 = v93;
  if (*(*(v1 + 488) + 24) >= v100)
  {
    v130 = v83;
    if ((v73 & 1) == 0)
    {
      v108 = v92;
      sub_20D9D3280(v92, v93, v94, v95, v96);
      v92 = v108;
    }

LABEL_40:
    v73 = *(v1 + 152);
    v110 = *(v1 + 264);
    v109 = *(v1 + 272);
    v111 = *(v1 + 256);
    v112 = (v110 + 8);
    if (v101)
    {
      *(*(v73 + 56) + 8 * v92) = v74;
      v86 = *v112;
      (*v112)(v109, v111);
    }

    else
    {
      *(v73 + 8 * (v92 >> 6) + 64) |= 1 << v92;
      v0 = v92;
      (v63)(*(v73 + 48) + *(v110 + 72) * v92, v109, v111);
      *(*(v73 + 56) + 8 * v0) = v74;
      v86 = *(v110 + 8);
      v86(v109, v111);
      v113 = *(v73 + 16);
      v99 = __OFADD__(v113, 1);
      v114 = v113 + 1;
      if (v99)
      {
        __break(1u);
        goto LABEL_60;
      }

      *(v73 + 16) = v114;
    }

    sub_20DA1A828(*(v1 + 344), *(v1 + 328));
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v0 = *(v1 + 512);
    if (v115)
    {
LABEL_45:
      v117 = *(v0 + 16);
      v116 = *(v0 + 24);
      if (v117 >= v116 >> 1)
      {
        v0 = sub_20D9E0628((v116 > 1), v117 + 1, 1, v0);
      }

      v118 = *(v1 + 344);
      v120 = *(v1 + 320);
      v119 = *(v1 + 328);
      v86(*(v1 + 280), *(v1 + 256));
      sub_20DA1A960(v118);
      *(v0 + 16) = v117 + 1;
      sub_20DA1A8FC(v119, v0 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v117);
      v74 = v73;
LABEL_54:
      *(v1 + 488) = v73;
      *(v1 + 496) = v74;
      goto LABEL_27;
    }

LABEL_58:
    v0 = sub_20D9E0628(0, *(v130 + 2) + 1, 1, v0);
    goto LABEL_45;
  }

  v102 = *(v1 + 272);
  sub_20D9CEDF0(v100, v73, v94, v95, v96);
  v92 = sub_20D9CB38C(v102, v103, v104, v105, v106);
  if ((v101 & 1) == (v107 & 1))
  {
    v130 = v83;
    goto LABEL_40;
  }

  return sub_20DD659E4();
}

uint64_t sub_20DA42738()
{

  v1 = v0[17];
  v0[18] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
  if (sub_20DD65954())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = v0[54];
  (*(v0[49] + 8))(v0[50], v0[48]);
  sub_20D9D76EC(v3, &unk_27C843810, &qword_20DD93F00);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DA42948@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v28 = a2;
  v37 = a1;
  v2 = sub_20DD637B4();
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  MEMORY[0x28223BE20](v2);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DD637C4();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20DD637A4();
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20DD636C4();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - v14;
  sub_20DD649A4();
  __swift_project_boxed_opaque_existential_0(v38, v38[3]);
  sub_20DD64694();
  __swift_destroy_boxed_opaque_existential_0(v38);
  (*(v8 + 104))(v10, *MEMORY[0x277CC9878], v7);
  v16 = v32;
  v17 = v5;
  (*(v39 + 104))(v32, *MEMORY[0x277CC9900], v5);
  v18 = v35;
  v19 = v36;
  v20 = v34;
  (*(v36 + 104))(v34, *MEMORY[0x277CC98E8], v35);
  v21 = v10;
  v22 = v16;
  v23 = v20;
  sub_20DD637E4();
  v24 = v31;
  (*(v19 + 8))(v23, v18);
  v25 = v17;
  v26 = v33;
  (*(v39 + 8))(v22, v25);
  (*(v30 + 8))(v21, v29);
  (*(v24 + 8))(v12, v26);
  result = (*(v24 + 48))(v15, 1, v26);
  if (result != 1)
  {
    return (*(v24 + 32))(v28, v15, v26);
  }

  __break(1u);
  return result;
}

void *sub_20DA42D78(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v52 = a3;
  v49 = sub_20DD636C4();
  v6 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HFEvent(0);
  v50 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v48 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v39 - v12;
  v13 = MEMORY[0x277D84F98];
  v55 = MEMORY[0x277D84F98];
  v47 = *(a1 + 16);
  if (v47)
  {
    v14 = 0;
    v43 = v6 + 32;
    v44 = v6;
    v42 = (v6 + 8);
    v41 = xmmword_20DD93A70;
    v15 = a1;
    v45 = a1;
    v53 = v8;
    while (v14 < *(v15 + 16))
    {
      v16 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v17 = *(v50 + 72);
      v18 = v15;
      v19 = v15 + v16 + v17 * v14;
      v20 = v54;
      sub_20DA1A828(v19, v54);
      v51(v20);
      if (v4)
      {
        sub_20DA1A960(v54);

        goto LABEL_20;
      }

      v22 = sub_20D9CB72C(v8);
      v23 = v13[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_22;
      }

      v26 = v21;
      if (v13[3] < v25)
      {
        sub_20D9CF1B0(v25, 1);
        v13 = v55;
        v27 = sub_20D9CB72C(v53);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v22 = v27;
      }

      if (v26)
      {
        (*v42)(v53, v49);
        v29 = v13[7];
        sub_20DA1A8FC(v54, v48);
        v30 = *(v29 + 8 * v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v29 + 8 * v22) = v30;
        v46 = 0;
        v40 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_20D9E0628(0, v30[2] + 1, 1, v30);
          *(v29 + 8 * v22) = v30;
        }

        v33 = v30[2];
        v32 = v30[3];
        if (v33 >= v32 >> 1)
        {
          v30 = sub_20D9E0628((v32 > 1), v33 + 1, 1, v30);
          *(v40 + 8 * v22) = v30;
        }

        v15 = v45;
        v30[2] = v33 + 1;
        sub_20DA1A8FC(v48, v30 + v16 + v33 * v17);
        v4 = v46;
        v8 = v53;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843890, &qword_20DD93F58);
        v34 = swift_allocObject();
        *(v34 + 16) = v41;
        sub_20DA1A8FC(v54, v34 + v16);
        v13[(v22 >> 6) + 8] |= 1 << v22;
        v8 = v53;
        (*(v44 + 32))(v13[6] + *(v44 + 72) * v22, v53, v49);
        *(v13[7] + 8 * v22) = v34;
        v35 = v13[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_23;
        }

        v13[2] = v37;
        v15 = v18;
      }

      if (v47 == ++v14)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_20DD659E4();
    __break(1u);
  }

  else
  {
LABEL_20:

    return v13;
  }

  return result;
}

uint64_t sub_20DA431A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DA431C4, 0, 0);
}

uint64_t sub_20DA431C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_20DD649D4();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = *(type metadata accessor for HFEvent(0) + 20);
  v5 = sub_20DD63744();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_20DA432A8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_20DD64C44();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v9 = qword_27C84C658;
  sub_20DD64C54();
  v10 = sub_20DD64C24();
  v11 = sub_20DD65354();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20D9BF000, v10, v11, "Timer fired, scheduling task", v12, 2u);
    MEMORY[0x20F327D10](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = sub_20DD65114();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    sub_20DD650F4();

    v16 = sub_20DD650E4();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;

    sub_20DA89720(0, 0, v4, &unk_20DD95548, v17);
  }

  return result;
}

uint64_t sub_20DA4357C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v4[21] = swift_task_alloc();
  v4[22] = *(type metadata accessor for HFEvent(0) - 8);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v5 = sub_20DD636C4();
  v4[28] = v5;
  v6 = *(v5 - 8);
  v4[29] = v6;
  v4[30] = *(v6 + 64);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v7 = sub_20DD64C44();
  v4[38] = v7;
  v4[39] = *(v7 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = sub_20DD650F4();
  v4[42] = sub_20DD650E4();
  v9 = sub_20DD65094();
  v4[43] = v9;
  v4[44] = v8;

  return MEMORY[0x2822009F8](sub_20DA43848, v9, v8);
}

uint64_t sub_20DA43848()
{
  v46 = v0;
  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v1 = qword_27C84C658;
  sub_20DD64C54();
  v2 = sub_20DD64C24();
  v3 = sub_20DD65354();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20D9BF000, v2, v3, "Timer task running", v4, 2u);
    MEMORY[0x20F327D10](v4, -1, -1);
  }

  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[45] = Strong;
  if (Strong)
  {
    v9 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_20DD64CD4();

    v10 = v0[16];
    v11 = *(v10 + 16);
    if (v11)
    {
      v43 = v9;
      v12 = v0[29];
      v13 = sub_20D9E09B4(v11, 0);
      v14 = sub_20D9EB224(&v45, &v13[(*(v12 + 80) + 32) & ~*(v12 + 80)], v11, v10);
      v15 = v45;

      v16 = sub_20D9C51CC(v15);
      if (v14 != v11)
      {
        __break(1u);
        goto LABEL_24;
      }

      v9 = v43;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v45 = v13;
    sub_20DA44724(&v45);
    v21 = v0[28];
    v22 = v0[29];
    v23 = v0[27];

    sub_20DA5319C(v45, v23);

    v24 = *(v22 + 48);
    v0[46] = v24;
    v0[47] = (v22 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v25 = v24(v23, 1, v21);
    v26 = v0[28];
    v27 = v0[29];
    if (v25 == 1)
    {
      v28 = v0[36];
      sub_20D9D76EC(v0[27], &unk_27C843810, &qword_20DD93F00);
      (*(v27 + 16))(v28, v9 + OBJC_IVAR___HFActivityLogCoordinator_Swift_oneMonthAgo, v26);
      v29 = *(v27 + 32);
      v30 = (v27 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      goto LABEL_20;
    }

    v32 = *(v27 + 32);
    v31 = v27 + 32;
    v29 = v32;
    v32(v0[35], v0[27], v0[28]);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_20DD64CD4();

    v33 = v0[17];
    if (*(v33 + 16))
    {
      v16 = sub_20D9CB72C(v0[35]);
      if (v17)
      {
        v34 = *(*(v33 + 56) + 8 * v16);
        if (*(v34 + 16))
        {
          v44 = v9;

          if (*(v34 + 16))
          {
            v30 = v31 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
            v42 = v0[35];
            v36 = v0[28];
            v35 = v0[29];
            v37 = v0[23];
            v38 = *(v0[22] + 80);
            sub_20DA1A828(v34 + ((v38 + 32) & ~v38), v37);

            sub_20DD649A4();
            __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
            sub_20DD64694();
            (*(v35 + 8))(v42, v36);
            __swift_destroy_boxed_opaque_existential_0(v0 + 2);
            sub_20DA1A960(v37);
            v9 = v44;
LABEL_20:
            v40 = v0[36];
            v39 = v0[37];
            v41 = v0[28];
            v0[48] = v29;
            v0[49] = v30;
            v29(v39, v40, v41);
            sub_20DD63684();
            v16 = sub_20DA43DEC;
            v17 = v9;
            v18 = 0;

            return MEMORY[0x2822009F8](v16, v17, v18);
          }

LABEL_27:
          __break(1u);
          return MEMORY[0x2822009F8](v16, v17, v18);
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_20DA43DEC()
{
  v29 = v0[48];
  v1 = v0[45];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[32];
  v27 = v5;
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[28];
  v9 = v0[21];
  v28 = v9;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = *(v6 + 16);
  v11(v3, v2, v8);
  v11(v5, v4, v8);
  v12 = v1;

  v13 = sub_20DD650E4();
  v14 = *(v6 + 80);
  v15 = (v14 + 40) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v13;
  *(v17 + 3) = v18;
  *(v17 + 4) = v12;
  v29(&v17[v15], v3, v8);
  v29(&v17[v16], v27, v8);
  v19 = &v17[(v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v19 = 200;
  v19[8] = 1;
  v20 = sub_20DA89464(0, 0, v28, &unk_20DD95558, v17);
  v0[50] = v20;
  v21 = swift_task_alloc();
  v0[51] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
  *v21 = v0;
  v21[1] = sub_20DA44038;
  v24 = v0[19];
  v23 = v0[20];
  v25 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v23, v20, v24, v22, v25);
}

uint64_t sub_20DA44038()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = sub_20DA4437C;
  }

  else
  {
    v4 = sub_20DA44164;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20DA44164()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 360);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  (*(v0 + 384))(*(v0 + 248), *(v0 + 160) + *(*(v0 + 152) + 48), v3);
  v5 = OBJC_IVAR___HFActivityLogCoordinator_Swift_oldestFetchStartDate;
  swift_beginAccess();
  sub_20DA4688C(v2 + v5, v4);
  if (v1(v4, 1, v3) == 1)
  {
    v6 = *(v0 + 208);

    sub_20D9D76EC(v6, &unk_27C843810, &qword_20DD93F00);
LABEL_5:
    v18 = *(v0 + 224);
    v19 = *(v0 + 232);
    v20 = *(v0 + 192);
    (*(v0 + 384))(v20, *(v0 + 248), v18);
    (*(v19 + 56))(v20, 0, 1, v18);
    swift_beginAccess();
    sub_20DA469F4(v20, v2 + v5);
    swift_endAccess();
    goto LABEL_7;
  }

  v7 = *(v0 + 368);
  v8 = *(v0 + 224);
  v9 = *(v0 + 200);
  sub_20D9D76EC(*(v0 + 208), &unk_27C843810, &qword_20DD93F00);
  sub_20DA4688C(v2 + v5, v9);
  v10 = v7(v9, 1, v8);
  if (v10 == 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  v15 = *(v0 + 200);
  v16 = sub_20DD63644();

  v17 = *(v14 + 8);
  v17(v15, v13);
  if (v16)
  {
    goto LABEL_5;
  }

  v17(*(v0 + 248), *(v0 + 224));
LABEL_7:
  sub_20DA3F908(1);
  v11 = *(v0 + 344);
  v12 = *(v0 + 352);
  v10 = sub_20DA44550;

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_20DA4437C()
{

  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  return MEMORY[0x2822009F8](sub_20DA443E0, v1, v2);
}

uint64_t sub_20DA443E0()
{
  v1 = v0[37];
  v2 = v0[34];
  v4 = v0[28];
  v3 = v0[29];

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20DA44550()
{
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[28];
  v4 = v0[29];

  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);

  v6 = v0[1];

  return v6();
}

void sub_20DA446BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_20DA44724(uint64_t *a1)
{
  v2 = *(sub_20DD636C4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20DA73A28(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20DA447CC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20DA447CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20DD65924();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20DD636C4();
        v6 = sub_20DD65034();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20DD636C4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20DA44BBC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20DA448F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20DA448F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20DD636C4();
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_20DA483E4(&qword_27C8445B8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v26 = sub_20DD64E54();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}
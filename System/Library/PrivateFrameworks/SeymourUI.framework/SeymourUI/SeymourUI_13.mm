unint64_t sub_20B6B134C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763AC0, &qword_20C154DF8);
    v3 = sub_20C13DE84();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_20B65CEB8();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B143C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763AB8, &qword_20C154DF0);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, &v11, &qword_27C773210, &qword_20C159860);
      v5 = v11;
      result = sub_20B65CEB8();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_20B6B3B74(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B1564(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A78, &qword_20C154DA0);
    v3 = sub_20C13DE84();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_20B65CEB8();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B1650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763970, &qword_20C154C70);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, &v11, &qword_27C763978, &unk_20C163AF0);
      v5 = v11;
      result = sub_20B65CEB8();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_20B6B3B74(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B1778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767A50, &qword_20C154DE8);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, &v13, &qword_27C762F18, &unk_20C161740);
      v5 = v13;
      v6 = v14;
      result = sub_20B65AA60(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20B6B3B74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B18A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763AA8, &qword_20C154DD8);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, &v15, &qword_27C763AB0, &qword_20C154DE0);
      v5 = v15;
      v6 = v16;
      result = sub_20B65AA60(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B19D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763AA0, &qword_20C154DD0);
    v3 = sub_20C13DE84();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_20B65AA60(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_20B6B1AEC(uint64_t a1, char a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v7 = [objc_opt_self() systemFontOfSize_];
  }

  else
  {
    v7 = [objc_opt_self() systemFontOfSize:a4 weight:*&a1];
  }

  v8 = v7;
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];
  if (v10)
  {
    v11 = v10;

    v9 = v11;
  }

  if ((a2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    v13 = *MEMORY[0x277D74380];
    *(inited + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
    v14 = swift_initStackObject();
    v15 = MEMORY[0x277D74430];
    *(v14 + 16) = xmmword_20C14F980;
    v16 = *v15;
    *(v14 + 32) = *v15;
    *(v14 + 40) = a1;
    v17 = v13;
    v18 = v16;
    v19 = sub_20B6B134C(v14);
    swift_setDeallocating();
    sub_20B520158(v14 + 32, &unk_27C773200, qword_20C158A40);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
    *(inited + 40) = v19;
    sub_20B6B143C(inited);
    swift_setDeallocating();
    sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
    type metadata accessor for AttributeName(0);
    sub_20B5E5BD0();
    v20 = sub_20C13C744();

    v21 = [v9 fontDescriptorByAddingAttributes_];

    v9 = v21;
  }

  v22 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];

  return v22;
}

unint64_t sub_20B6B1D74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639B8, &qword_20C154CC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769280, &qword_20C154CC8);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C7639B8, &qword_20C154CC0);
      result = sub_20B65AAD8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20C132EE4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_20B6B1F5C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763968, &qword_20C154C68);
  v3 = sub_20C13DE84();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_20B65AC3C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_20B65AC3C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20B6B2070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763990, &qword_20C154C90);
    v3 = sub_20C13DE84();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_20B65CEBC();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_20B6B2150(uint64_t a1, char a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v5 = [objc_opt_self() systemFontOfSize_];
  }

  else
  {
    v5 = [objc_opt_self() systemFontOfSize:a4 weight:*&a1];
  }

  v6 = v5;
  v7 = [v6 fontDescriptor];
  v8 = [v7 fontDescriptorWithDesign_];
  if (v8)
  {
    v9 = v8;

    v7 = v9;
  }

  v10 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];

  return v10;
}

unint64_t sub_20B6B2248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639C8, &qword_20C154CD8);
    v3 = sub_20C13DE84();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_20B65AD10(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_20B6B2348(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763938, &qword_20C154C30);
  v3 = sub_20C13DE84();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_20B65CEBC();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_20B65CEBC();
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20B6B2458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769320, &qword_20C154C20);
  v3 = sub_20C13DE84();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_20B52F9E8(&v24, v23, &qword_27C763930, &qword_20C154C28);
  result = sub_20B65AA60(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 104);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = v3[7] + 56 * result;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    *(v12 + 48) = v28;
    *(v12 + 16) = v14;
    *(v12 + 32) = v15;
    *v12 = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = (v10 + 72);
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = *(v10 + 64);
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_20B52F9E8(&v24, v23, &qword_27C763930, &qword_20C154C28);
    result = sub_20B65AA60(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20B6B2600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763918, &qword_20C154C08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763920, &qword_20C154C10);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C763918, &qword_20C154C08);
      result = sub_20B65AD60(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20C132E94();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B27E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763940, &qword_20C154C38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769230, &qword_20C154C40);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C763940, &qword_20C154C38);
      v11 = *v5;
      v12 = v5[1];
      result = sub_20B65AA60(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_20C1365F4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B29D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A10, &qword_20C18B2D0);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, v14, &unk_27C762260, &unk_20C14FC80);
      v5 = v14[0];
      result = sub_20B65AE34(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = v3[7] + 40 * result;
      v9 = v15;
      v10 = v16;
      *(v8 + 32) = v17;
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B2B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763958, &qword_20C154C58);
    v3 = sub_20C13DE84();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_20B65AA60(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B2C08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A68, &qword_20C154D90);
    v3 = sub_20C13DE84();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_20B65AE50(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B2CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639F8, &qword_20C154D10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A00, &qword_20C154D18);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C7639F8, &qword_20C154D10);
      result = sub_20B65AED8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20C132FD4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B2F20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A60, &qword_20C154D78);
    v3 = sub_20C13DE84();
    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_20B65AFAC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B3000(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A58, &qword_20C154D70);
    v3 = sub_20C13DE84();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      swift_unknownObjectRetain();
      result = sub_20B65AFF0(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B314C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_20C13DE84();
  LOBYTE(v8) = *(a1 + 32);
  v9 = *(a1 + 40);
  result = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v20 = v9;
    return v7;
  }

  v12 = (a1 + 56);
  while (1)
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v7[6] + result) = v8;
    *(v7[7] + 8 * result) = v9;
    v13 = v7[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v7[2] = v15;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v8 = *(v12 - 8);
    v17 = *v12;
    v18 = v9;
    result = a4(v8);
    v12 = v16;
    v9 = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20B6B3284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763960, &qword_20C154C60);
    v3 = sub_20C13DE84();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_20B65AFF0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B3378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A90, &qword_20C154DC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A98, &qword_20C154DC8);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C763A90, &qword_20C154DC0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_20B65AA60(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_20C134514();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B3564(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A88, &qword_20C154DB8);
    v3 = sub_20C13DE84();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_20B65AA60(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B3668(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A80, &qword_20C154DA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7695F0, &qword_20C154DB0);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C763A80, &qword_20C154DA8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_20B65AA60(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_20C133B04();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B3854(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763948, &qword_20C154C48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763950, &qword_20C154C50);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C763948, &qword_20C154C48);
      result = sub_20B65AAD8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20C132EE4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B3A3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769330, &unk_20C15A800);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, &v16, &unk_27C765CF0, &qword_20C176DC0);
      v5 = v16;
      v6 = v17;
      result = sub_20B65AA60(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_20B6B3B74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_20B6B3B84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763980, &qword_20C154C78);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, &v11, &qword_27C763988, &qword_20C154C80);
      v5 = v11;
      result = sub_20B65CEB8();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_20B6B3B74(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B3CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639D8, &qword_20C154CE8);
    v3 = sub_20C13DE84();
    v4 = (a1 + 32);

    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      result = sub_20B65CC80();
      if (v8)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 56) + 8 * result) = v5;
      v9 = *(v3 + 16);
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B3D7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A08, &qword_20C16F080);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769270, &unk_20C18E120);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C763A08, &qword_20C16F080);
      result = sub_20B65B1D4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20C1365F4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B3F8C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_20C13DE84();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B4084(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A70, &qword_20C157E20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7695E0, &qword_20C154D98);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C763A70, &qword_20C157E20);
      v11 = *v5;
      v12 = v5[1];
      result = sub_20B65AA60(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_20C136FE4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B4270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763AC8, &unk_20C154E00);
    v3 = sub_20C13DE84();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_20B65AA60(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B4370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639E8, &qword_20C154D00);
    v3 = sub_20C13DE84();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_20B65AA60(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B4474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A18, &qword_20C16F260);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A20, &unk_20C1556E0);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C763A18, &qword_20C16F260);
      result = sub_20B65A98C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20C133244();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B465C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A40, &qword_20C154D58);
    v3 = sub_20C13DE84();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = sub_20B65B514(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B4764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B980, &qword_20C154CF8);
    v3 = sub_20C13DE84();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_20B65B564(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B4860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763998, &qword_20C154C98);
    v3 = sub_20C13DE84();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;

      result = sub_20B65AA60(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_20B6B4970(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639F0, &qword_20C154D08);
  v3 = sub_20C13DE84();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_20B65AFAC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_20B65AFAC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20B6B4AA0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_20C13DE84();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B4B94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639E0, &qword_20C154CF0);
    v3 = sub_20C13DE84();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_20B65CEB8();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B4C84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A28, &qword_20C154D20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A30, &qword_20C154D28);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C763A28, &qword_20C154D20);
      v11 = *v5;
      v12 = v5[1];
      result = sub_20B65AA60(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_20C1356C4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B4E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A38, &qword_20C154D38);
    v3 = sub_20C13DE84();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_20B65B6B0(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B4F68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639D0, &qword_20C154CE0);
    v3 = sub_20C13DE84();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_20B65AA60(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20B6B5078(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_20C13DE84();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_20B65AA60(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_20B6B5174()
{
  sub_20B583E6C(v0 + 16);
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_containerBuilder);
  v1 = OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_valueNode;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90, &unk_20C14F3C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_unitNode, v2);

  v4 = OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_contentSemantic;
  v5 = sub_20C132204();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SingleMetricNodeBuilder(uint64_t a1)
{
  result = qword_27C763AD0;
  if (!qword_27C763AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B6B5320(uint64_t a1)
{
  type metadata accessor for ContainerNodeBuilder(319);
  if (v1 <= 0x3F)
  {
    sub_20B592C74(319);
    if (v2 <= 0x3F)
    {
      sub_20C132204();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20B6B543C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v54 = a1;
  v55 = sub_20C132204();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContainerNodeBuilder(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8, &unk_20C14F3F0);
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90, &unk_20C14F3C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v44 - v22;
  v57 = *(v11 + 16);
  v58 = v11 + 16;
  v57(v19, v3 + OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_valueNode, v10, v21);

  sub_20C132074();

  v24 = *(v11 + 8);
  v24(v19, v10);
  (v57)(v13, v3 + OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_unitNode, v10);

  v56 = v16;
  sub_20C132074();

  v24(v13, v10);
  v25 = OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_containerBuilder;
  swift_beginAccess();
  sub_20B6B5ADC(v3 + v25, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F88, &unk_20C16C120);
  v26 = sub_20C132264();
  v27 = *(v26 - 8);
  v48 = v11 + 8;
  v44 = v7;
  v28 = v27;
  v46 = v3;
  v29 = *(v27 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20C14F320;
  v32 = v31 + v30;
  v45 = v23;
  v33 = v57;
  (v57)(v32, v23, v10);
  v47 = v24;
  v34 = *MEMORY[0x277CE9CD8];
  v35 = *(v28 + 104);
  v35(v32, v34, v26);
  v33(v32 + v29, v56, v10);
  v35(v32 + v29, v34, v26);
  v36 = v49;
  v37 = v44;
  sub_20B7E27F8(v49);

  sub_20B593250(v37);
  v39 = v52;
  v38 = v53;
  v40 = v55;
  (*(v53 + 16))(v52, v46 + OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_contentSemantic, v55);
  v41 = v51;
  sub_20C131FA4();
  (*(v38 + 8))(v39, v40);
  (*(v50 + 8))(v36, v41);
  v42 = v47;
  v47(v56, v10);
  return v42(v45, v10);
}

double sub_20B6B59E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 + OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_localizedValue);
  *v7 = a1;
  v7[1] = a2;

  v8 = (v4 + OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_localizedUnit);
  *v8 = a3;
  v8[1] = a4;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 8);

    v11(ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

uint64_t sub_20B6B5ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerNodeBuilder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B6B5B40(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v80 = a4;
  v83 = a3;
  v77 = a2;
  v89 = a1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90, &unk_20C14F3C0);
  v91 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v75 - v7;
  MEMORY[0x28223BE20](v8);
  v78 = &v75 - v9;
  MEMORY[0x28223BE20](v10);
  v79 = &v75 - v11;
  v90 = sub_20C132EE4();
  v12 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8, &unk_20C14F3F0);
  v75 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  v85 = sub_20C132254();
  v18 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v88 = v4;
  v21 = (v4 + OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_containerBuilder);
  if (qword_27C760748 != -1)
  {
    swift_once();
  }

  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FC0, &qword_20C154EC0) + 48);
  v23 = *MEMORY[0x277CE9C90];
  v24 = sub_20C132234();
  (*(*(v24 - 8) + 104))(v20, v23, v24);
  *&v20[v22] = 0x40000000;
  (*(v18 + 104))(v20, *MEMORY[0x277CE9CB8], v85);
  v21[1] = 2;
  sub_20C132ED4();
  sub_20C132104();
  v25 = *(v12 + 8);
  v76 = v14;
  v86 = v25;
  v87 = v12 + 8;
  v25(v14, v90);
  v26 = type metadata accessor for ContainerNodeBuilder(0);
  sub_20C131F24();
  (*(v75 + 8))(v17, v15);
  *v21 = 1;
  v27 = sub_20C131F44();
  v28 = &v21[v26[7]];
  *v28 = v27;
  v28[8] = v29;
  v30 = sub_20C131FD4();
  v31 = &v21[v26[8]];
  *v31 = v30;
  v31[8] = v32;
  v33 = sub_20C131FE4();
  v34 = &v21[v26[9]];
  *v34 = v33;
  *(v34 + 1) = v35;
  v34[20] = v36;
  *(v34 + 4) = v37;
  v34[21] = v38;
  v39 = sub_20C132384();
  v40 = &v21[v26[10]];
  *v40 = v39 & 0xFFFFFFFFFFLL;
  v40[12] = v41;
  *(v40 + 2) = v42;
  v40[13] = 0;
  v43 = sub_20C132004();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  (*(v18 + 8))(v20, v85);
  v50 = &v21[v26[11]];
  *v50 = v43;
  *(v50 + 1) = v45;
  *(v50 + 2) = v47;
  v50[24] = v49;
  v51 = v88;
  v52 = (v88 + OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_localizedUnit);
  *v52 = 0;
  v52[1] = 0;
  v53 = (v51 + OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_localizedValue);
  *v53 = 0;
  v53[1] = 0;
  v54 = OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_contentSemantic;
  v55 = *MEMORY[0x277CE9C88];
  v56 = sub_20C132204();
  (*(*(v56 - 8) + 104))(v51 + v54, v55, v56);
  v57 = v77;
  sub_20C1323E4();
  if (v58 == -1)
  {
    sub_20C1323D4();
  }

  v59 = v84;
  v60 = v76;
  sub_20C132ED4();
  v61 = v78;
  sub_20C1320B4();
  v86(v60, v90);
  sub_20C1323A4();
  v62 = v79;
  sub_20C131FF4();
  v63 = v91;
  v64 = *(v91 + 8);
  v64(v61, v59);
  v65 = *(v63 + 32);
  v91 = v63 + 32;
  v65(v51 + OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_valueNode, v62, v59);
  v66 = v80;
  sub_20C1323E4();
  if (v67 == -1)
  {
    sub_20C1323D4();
  }

  sub_20C132ED4();
  v68 = v81;
  v69 = v83;
  sub_20C1320B4();
  v86(v60, v90);
  sub_20C1323A4();
  v70 = v82;
  sub_20C131FF4();
  v71 = sub_20C132364();
  v72 = *(*(v71 - 8) + 8);
  v72(v69, v71);
  v72(v89, v71);
  v64(v68, v59);
  v73 = v88;
  v65(v88 + OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_unitNode, v70, v59);
  return v73;
}

unint64_t sub_20B6B6304()
{
  result = qword_27C763AE0;
  if (!qword_27C763AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763AE0);
  }

  return result;
}

unint64_t sub_20B6B636C()
{
  result = qword_27C763AE8;
  if (!qword_27C763AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763AE8);
  }

  return result;
}

uint64_t sub_20B6B63C0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_20B51C88C(0, &qword_2811004C8, 0x277D75940);
  sub_20B6B6458();
  v2 = sub_20C13CF74();

  return v2;
}

unint64_t sub_20B6B6458()
{
  result = qword_2811004C0;
  if (!qword_2811004C0)
  {
    sub_20B51C88C(255, &qword_2811004C8, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811004C0);
  }

  return result;
}

uint64_t sub_20B6B64C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20BB43208(a1, v1);
}

uint64_t sub_20B6B6560(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20BB43864(a1, v1);
}

uint64_t sub_20B6B65F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20BB43EC0(a1, v1);
}

uint64_t sub_20B6B6690(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762230, &qword_20C14FC08);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAD0, &unk_20C1664E0);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = v34 - v6;
  v7 = sub_20C132EE4();
  MEMORY[0x28223BE20](v7 - 8);
  v46 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20C137374();
  v9 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20C137454();
  v11 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v14)
  {
    v34[1] = v1;
    v54 = MEMORY[0x277D84F90];
    sub_20BB5DB9C(0, v14, 0);
    v53 = v54;
    v16 = a1 + 56;
    result = sub_20C13DAA4();
    v17 = result;
    v18 = 0;
    v39 = v9 + 8;
    v40 = v9 + 16;
    v37 = v13;
    v38 = v11 + 32;
    v35 = a1 + 64;
    v36 = v14;
    v41 = a1 + 56;
    v42 = v11;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
    {
      if ((*(v16 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_22;
      }

      v51 = v17 >> 6;
      v52 = 1 << v17;
      v20 = *(a1 + 36);
      v49 = v18;
      v50 = v20;
      v22 = v44;
      v21 = v45;
      (*(v9 + 16))(v44, *(a1 + 48) + *(v9 + 72) * v17, v45);
      sub_20C1372B4();
      sub_20C1372F4();
      sub_20C137304();
      sub_20C137444();
      (*(v9 + 8))(v22, v21);
      v23 = v53;
      v54 = v53;
      v25 = *(v53 + 16);
      v24 = *(v53 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_20BB5DB9C((v24 > 1), v25 + 1, 1);
        v23 = v54;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v53 = v23;
      result = (*(v42 + 32))(v23 + v26 + *(v42 + 72) * v25, v37, v43);
      v19 = 1 << *(a1 + 32);
      v16 = v41;
      if (v17 >= v19)
      {
        goto LABEL_23;
      }

      v27 = *(v41 + 8 * v51);
      if ((v27 & v52) == 0)
      {
        goto LABEL_24;
      }

      if (v50 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v28 = v27 & (-2 << (v17 & 0x3F));
      if (v28)
      {
        v19 = __clz(__rbit64(v28)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v51 << 6;
        v30 = v51 + 1;
        v31 = (v35 + 8 * v51);
        while (v30 < (v19 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_20B526EA4(v17, v50, 0);
            v19 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_20B526EA4(v17, v50, 0);
      }

LABEL_4:
      v18 = v49 + 1;
      v17 = v19;
      if (v49 + 1 == v36)
      {
        return v53;
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

uint64_t sub_20B6B6B68(uint64_t a1)
{
  v43 = sub_20C136894();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C132EE4();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x277D84F90];
    v33 = a1;
    sub_20BB5DD5C(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_20C13DAA4();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      sub_20C136884();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_20BB5DD5C((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_20B526EA4(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_20B526EA4(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void sub_20B6B713C(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a3;
  v23 = a1;
  v21 = type metadata accessor for ButtonAction.ActionType(0);
  v24 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v25 = a2;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      sub_20B6D8600(*(v25 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v9, type metadata accessor for ButtonAction.ActionType);
      sub_20B6D86C8(v9, v6, type metadata accessor for ButtonAction.ActionType);
      v17 = v23(v6);
      if (v3)
      {
        sub_20B6D8668(v6, type metadata accessor for ButtonAction.ActionType);

        return;
      }

      if (v17)
      {
        break;
      }

      v13 &= v13 - 1;
      sub_20B6D8668(v6, type metadata accessor for ButtonAction.ActionType);
      v15 = v16;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v20 = v22;
    sub_20B6D86C8(v6, v22, type metadata accessor for ButtonAction.ActionType);
    v19 = v20;
    v18 = 0;
LABEL_13:
    (*(v24 + 56))(v19, v18, 1, v21);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v18 = 1;
        v19 = v22;
        goto LABEL_13;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_20B6B74CC(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v25 = a3;
  v6 = a2 + 56;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a2 + 48) + 24 * (__clz(__rbit64(v9)) | (v12 << 6)));
      v14 = v13[1];
      v15 = v13[2];
      *&v23 = *v13;
      *(&v23 + 1) = v14;
      v24 = v15;
      v16 = v23;

      v17 = a1(&v23);
      if (v3)
      {
        v20 = v23;

        return;
      }

      if (v17)
      {
        break;
      }

      v9 &= v9 - 1;
      v18 = v23;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v21 = v24;
    v22 = v25;
    *v25 = v23;
    *(v22 + 2) = v21;
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

        v19 = v25;
        *v25 = 0;
        *(v19 + 1) = 0;
        *(v19 + 2) = 0;
        return;
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

void sub_20B6B7654(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;
  v20 = a3;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(v20 + 48) + 24 * (__clz(__rbit64(v7)) | (v10 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v18[0] = v12;
      v18[1] = v13;
      v19 = v14;
      v15 = sub_20B6D8730(v12, v13, v14);
      v16 = (a1)(v18, v15);
      if (v3)
      {
        break;
      }

      if (v16)
      {
        goto LABEL_12;
      }

      v7 &= v7 - 1;
      sub_20B6D8758(v12, v13, v14);
      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    sub_20B6D8758(v12, v13, v14);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
LABEL_12:

        return;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_20B6B7860(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v32 = a1;
  v28 = a4;
  v38 = a3(0);
  MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v31 = &v28 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v33 = v9 + 32;
  v34 = v9;
  v29 = (v9 + 8);
  v30 = v9 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v14)
  {
    while (1)
    {
      v36 = v5;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v5 = v23;
      if (v23)
      {
        (*v29)(v37, v38);

        return;
      }

      if (v24)
      {
        break;
      }

      v14 &= v14 - 1;
      (*v29)(v37, v38);
      v16 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
LABEL_14:
    (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        v25 = 1;
        v26 = v28;
        goto LABEL_14;
      }

      v14 = *(v11 + 8 * v18);
      ++v16;
      if (v14)
      {
        v36 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20B6B7B50@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7, v9);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

uint64_t sub_20B6B7D48(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v3[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764880, &unk_20C157820);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EE8, &unk_20C1556D0);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_20C132EE4();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_20C133274();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v3[19] = swift_task_alloc();
  v8 = sub_20C136C64();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  v3[24] = swift_task_alloc();
  v9 = sub_20C135174();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v10 = sub_20C13BB84();
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6B8124, 0, 0);
}

uint64_t sub_20B6B8124(uint64_t a1)
{
  v58 = v1;
  v2 = v1[32];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[25];
  v6 = v1[26];
  v7 = v1[24];
  v8 = v1[4];
  sub_20C13B454();
  sub_20C13BB64();
  v9 = *(v4 + 8);
  v9(v2, v3);
  __swift_project_boxed_opaque_existential_1((v8 + 56), *(v8 + 80));
  sub_20C13B184();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v10 = v1[24];
    v11 = &unk_27C76BC00;
    v12 = &unk_20C1500B0;
LABEL_5:
    sub_20B520158(v10, v11, v12);
    v17 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51B88], v17);
    swift_willThrow();

    v19 = v1[1];

    return v19();
  }

  v13 = v1[20];
  v14 = v1[21];
  v15 = v1[19];
  (*(v1[26] + 32))(v1[28], v1[24], v1[25]);
  __swift_project_boxed_opaque_existential_1((v8 + 56), *(v8 + 80));
  sub_20C13B174();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v16 = v1[19];
    (*(v1[26] + 8))(v1[28], v1[25]);
    v11 = &qword_27C768690;
    v12 = &unk_20C14FD90;
    v10 = v16;
    goto LABEL_5;
  }

  v21 = v1[18];
  v22 = v1[15];
  v23 = v1[16];
  v24 = v1[3];
  (*(v1[21] + 32))(v1[23], v1[19], v1[20]);
  sub_20C13B454();
  v56 = *(v23 + 16);
  v56(v21, v24, v22);
  v25 = sub_20C13BB74();
  v26 = sub_20C13D1F4();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v1[31];
  v29 = v1[29];
  v30 = v1[18];
  v31 = v1[16];
  v55 = v1[15];
  if (v27)
  {
    v54 = v1[29];
    v53 = v26;
    v33 = v1[13];
    v32 = v1[14];
    v50 = v1[12];
    v49 = v1[18];
    buf = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v57 = v52;
    *buf = 136315138;
    sub_20C133254();
    sub_20B6D8780(&qword_27C763EF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v34 = sub_20C13DFA4();
    v36 = v35;
    (*(v33 + 8))(v32, v50);
    (*(v31 + 8))(v49, v55);
    v37 = sub_20B51E694(v34, v36, &v57);

    *(buf + 4) = v37;
    _os_log_impl(&dword_20B517000, v25, v53, "Requesting Workout Plan Repetition for template: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x20F2F6A40](v52, -1, -1);
    MEMORY[0x20F2F6A40](buf, -1, -1);

    v38 = v28;
    v39 = v54;
  }

  else
  {

    (*(v31 + 8))(v30, v55);
    v38 = v28;
    v39 = v29;
  }

  v9(v38, v39);
  v40 = v1[17];
  v41 = v1[15];
  v42 = v1[8];
  v43 = v1[3];
  v44 = v1[4];
  (*(v1[26] + 16))(v1[27], v1[28], v1[25]);
  v56(v40, v43, v41);
  sub_20C137844();
  __swift_project_boxed_opaque_existential_1((v44 + 16), *(v44 + 40));
  sub_20C139964();
  v45 = swift_task_alloc();
  v1[33] = v45;
  *(v45 + 16) = "SeymourUI/RemoteBrowsingWorkoutPlanClient.swift";
  *(v45 + 24) = 47;
  *(v45 + 32) = 2;
  *(v45 + 40) = 93;
  *(v45 + 48) = v42;
  v46 = swift_task_alloc();
  v1[34] = v46;
  v47 = sub_20C133954();
  v1[35] = v47;
  *v46 = v1;
  v46[1] = sub_20B6B87EC;
  v48 = v1[2];

  return MEMORY[0x2822008A0](v48, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B6D87F0, v45, v47);
}

uint64_t sub_20B6B87EC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_20B6B8B98;
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v3 = sub_20B6B893C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B6B893C()
{
  v1 = v0[35];
  v2 = v0[26];
  v16 = v0[25];
  v17 = v0[28];
  v3 = v0[21];
  v4 = v0[22];
  v12 = v0[23];
  v13 = v0[20];
  v5 = v0[10];
  v14 = v0[9];
  v15 = v0[11];
  v6 = v0[5];
  v7 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[4] + 56), *(v0[4] + 80));
  v8 = *(v1 - 8);
  (*(v8 + 16))(v6, v7, v1);
  (*(v8 + 56))(v6, 0, 1, v1);
  sub_20C136B54();
  sub_20B520158(v6, &unk_27C76A970, &qword_20C14FC10);
  sub_20C13B1B4();
  v9 = *(v3 + 8);
  v9(v4, v13);
  (*(v5 + 8))(v15, v14);
  v9(v12, v13);
  (*(v2 + 8))(v17, v16);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20B6B8B98()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20B6B8D2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_20C136CE4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EB0, &qword_20C155600);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  v2[13] = swift_task_alloc();
  v6 = sub_20C135174();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6B8F5C, 0, 0);
}

uint64_t sub_20B6B8F5C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  __swift_project_boxed_opaque_existential_1((v0[3] + 56), *(v0[3] + 80));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[13], &unk_27C76BC00, &unk_20C1500B0);
    v4 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[14];
    v11 = v0[15];
    v12 = v0[8];
    v13 = v0[9];
    v14 = v0[7];
    v20 = v0[6];
    v16 = v0[2];
    v15 = v0[3];
    (*(v11 + 32))(v8, v0[13], v10);
    (*(v11 + 16))(v9, v8, v10);
    (*(v12 + 16))(v13, v16, v14);
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
    sub_20C139B14();
    v17 = swift_task_alloc();
    v0[18] = v17;
    *(v17 + 16) = "SeymourUI/RemoteBrowsingWorkoutPlanClient.swift";
    *(v17 + 24) = 47;
    *(v17 + 32) = 2;
    *(v17 + 40) = 107;
    *(v17 + 48) = v20;
    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    v18[1] = sub_20B6B92D0;
    v19 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v18, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B6D87EC, v17, v19);
  }
}

uint64_t sub_20B6B92D0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_20B6B9508;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_20B6B9420;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B6B9420()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B6B9508()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20B6B9608(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v2[9] = swift_task_alloc();
  v3 = sub_20C136C64();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6B9738, 0, 0);
}

uint64_t sub_20B6B9738()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  __swift_project_boxed_opaque_existential_1((*(v0 + 56) + 56), *(*(v0 + 56) + 80));
  sub_20C13B174();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(*(v0 + 72), &qword_27C768690, &unk_20C14FD90);
    v4 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();
  }

  else
  {
    v6 = *(v0 + 64);
    (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), *(v0 + 80));
    sub_20C136A54();
    v7 = sub_20C133954();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_20B520158(*(v0 + 64), &unk_27C76A970, &qword_20C14FC10);
    }

    else
    {
      (*(v8 + 32))(*(v0 + 48), *(v0 + 64), v7);
      *(v0 + 16) = sub_20C1338B4();
      *(v0 + 24) = v9 & 1;
      *(v0 + 32) = 0;
      *(v0 + 40) = 1;
      sub_20B6CD3B4();
      sub_20B6CD408();
      if (sub_20C133BF4())
      {
        (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

        v10 = *(v0 + 8);
        goto LABEL_10;
      }

      (*(v8 + 8))(*(v0 + 48), v7);
    }

    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 80);
    v14 = sub_20C134E24();
    sub_20B6D8780(&unk_27C762270, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D511A8], v14);
    swift_willThrow();
    (*(v12 + 8))(v11, v13);
  }

  v10 = *(v0 + 8);
LABEL_10:

  return v10();
}

uint64_t sub_20B6B9B00(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772270, &qword_20C155560);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_20C133134();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_20C133954();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v2[16] = swift_task_alloc();
  v6 = sub_20C136C64();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6B9D24, 0, 0);
}

uint64_t sub_20B6B9D24()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1((v0[5] + 56), *(v0[5] + 80));
  sub_20C13B174();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[16], &qword_27C768690, &unk_20C14FD90);
    v4 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = sub_20B6B9F74;
    v9 = v0[15];

    return sub_20B6B9608(v9);
  }
}

uint64_t sub_20B6B9F74()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_20B6BA538;
  }

  else
  {
    v2 = sub_20B6BA088;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B6BA088()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 104))(v1, *MEMORY[0x277CC9968], v3);
  v4 = sub_20C133834();
  (*(v2 + 8))(v1, v3);
  v5 = sub_20C136BC4();
  v6 = sub_20B6D7960(v4, v5, sub_20B6D6490, sub_20B6D6490);

  v0[2] = v6;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E80, &qword_20C1555A0);
  sub_20B6D6ABC(&qword_27C772280, &qword_27C763E80, &qword_20C1555A0, MEMORY[0x277D83520]);
  v7 = sub_20C13CBF4();

  v0[3] = v7;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E88, &qword_20C1555E0);
  sub_20B6D6ABC(&qword_27C763E90, &qword_27C763E88, &qword_20C1555E0, MEMORY[0x277D83970]);
  sub_20B6D8780(&qword_27C763E98, MEMORY[0x277D51640], MEMORY[0x277D51650]);
  v8 = sub_20C13CBF4();

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v0[7];
    v38 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v9, 0);
    v11 = v38;
    v36 = v0;
    v12 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v37 = *(v10 + 72);
    do
    {
      v13 = v0[8];
      v14 = v0[9];
      sub_20B52F9E8(v12, v14, &unk_27C772270, &qword_20C155560);
      sub_20B52F9E8(v14, v13, &unk_27C772270, &qword_20C155560);
      v15 = sub_20C1367E4();
      v17 = v16;

      sub_20B520158(v14, &unk_27C772270, &qword_20C155560);
      v18 = sub_20C135C54();
      (*(*(v18 - 8) + 8))(v13, v18);
      v20 = *(v38 + 16);
      v19 = *(v38 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_20B526D44((v19 > 1), v20 + 1, 1);
      }

      *(v38 + 16) = v20 + 1;
      v21 = v38 + 16 * v20;
      *(v21 + 32) = v15;
      *(v21 + 40) = v17;
      v0 = v36;
      v12 += v37;
      --v9;
    }

    while (v9);
    v22 = v36[18];
    v23 = v36[19];
    v24 = v36[17];
    v26 = v36[14];
    v25 = v36[15];
    v27 = v36[13];

    (*(v26 + 8))(v25, v27);
    (*(v22 + 8))(v23, v24);
  }

  else
  {
    v29 = v0[18];
    v28 = v0[19];
    v30 = v0[17];
    v31 = v0[14];
    v32 = v0[15];
    v33 = v0[13];

    (*(v31 + 8))(v32, v33);
    (*(v29 + 8))(v28, v30);
    v11 = MEMORY[0x277D84F90];
  }

  v34 = v0[1];

  return v34(v11);
}

uint64_t sub_20B6BA538()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B6BA5F8(uint64_t a1)
{
  v2 = sub_20C135214();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_20C135C14();
}

uint64_t sub_20B6BA6C0()
{
  v1[2] = v0;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E60, &qword_20C1554F8);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v2 = sub_20C137294();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v1[11] = swift_task_alloc();
  v3 = sub_20C136C64();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_20C13BB84();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6BA8D0, 0, 0);
}

uint64_t sub_20B6BA8D0(uint64_t a1)
{
  v2 = v1;
  v4 = v1[16];
  v3 = v1[17];
  v5 = v1[15];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[11];
  v9 = v1[2];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v4 + 8))(v3, v5);
  __swift_project_boxed_opaque_existential_1((v9 + 56), *(v9 + 80));
  sub_20C13B174();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_20B520158(v1[11], &qword_27C768690, &unk_20C14FD90);
    v10 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51B88], v10);
    swift_willThrow();

    v12 = v1[1];

    return v12();
  }

  else
  {
    (*(v1[13] + 32))(v1[14], v1[11], v1[12]);
    v14 = sub_20C136BC4();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v1[9];
      v56 = v1[3];
      v66 = MEMORY[0x277D84F90];
      sub_20BB5DCD4(0, v15, 0);
      v17 = v66;
      v18 = v14 + 64;
      result = sub_20C13DAA4();
      v19 = 0;
      v20 = *(v14 + 36);
      v57 = v16;
      v55 = v2;
      v50 = v14 + 72;
      v51 = v15;
      v52 = v20;
      v53 = v14 + 64;
      v54 = v14;
      while ((result & 0x8000000000000000) == 0 && result < 1 << *(v14 + 32))
      {
        if ((*(v18 + 8 * (result >> 6)) & (1 << result)) == 0)
        {
          goto LABEL_30;
        }

        if (v20 != *(v14 + 36))
        {
          goto LABEL_31;
        }

        v59 = 1 << result;
        v60 = result >> 6;
        v58 = v19;
        v22 = *(v56 + 48);
        v24 = v2[6];
        v23 = v2[7];
        v62 = v2[5];
        v63 = v2[4];
        v65 = v17;
        v25 = *(v14 + 48);
        v26 = result;
        v27 = sub_20C135C54();
        v28 = *(v27 - 8);
        (*(v28 + 16))(v23, v25 + *(v28 + 72) * v26, v27);
        v29 = *(v14 + 56);
        v30 = sub_20C136104();
        v31 = *(v30 - 8);
        v64 = v26;
        (*(v31 + 16))(v23 + v22, v29 + *(v31 + 72) * v26, v30);
        (*(v28 + 32))(v24, v23, v27);
        (*(v31 + 32))(v24 + *(v56 + 48), v23 + v22, v30);
        sub_20B52F9E8(v24, v62, &qword_27C763E60, &qword_20C1554F8);
        v61 = *(v56 + 48);
        sub_20B52F9E8(v24, v63, &qword_27C763E60, &qword_20C1554F8);
        sub_20C137274();
        sub_20B520158(v24, &qword_27C763E60, &qword_20C1554F8);
        (*(v28 + 8))(v63, v27);
        (*(v31 + 8))(v62 + v61, v30);
        v17 = v65;
        v33 = *(v65 + 16);
        v32 = *(v65 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_20BB5DCD4((v32 > 1), v33 + 1, 1);
          v17 = v65;
        }

        v2 = v55;
        v34 = v55[10];
        v35 = v55[8];
        *(v17 + 16) = v33 + 1;
        (*(v57 + 32))(v17 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v33, v34, v35);
        v14 = v54;
        v21 = 1 << *(v54 + 32);
        result = v64;
        if (v64 >= v21)
        {
          goto LABEL_32;
        }

        v18 = v53;
        v36 = *(v53 + 8 * v60);
        if ((v36 & v59) == 0)
        {
          goto LABEL_33;
        }

        v20 = v52;
        if (v52 != *(v54 + 36))
        {
          goto LABEL_34;
        }

        v37 = v36 & (-2 << (v64 & 0x3F));
        if (v37)
        {
          v21 = __clz(__rbit64(v37)) | v64 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v38 = v60 << 6;
          v39 = (v50 + 8 * v60);
          v40 = v60 + 1;
          while (v40 < (v21 + 63) >> 6)
          {
            v42 = *v39++;
            v41 = v42;
            v38 += 64;
            ++v40;
            if (v42)
            {
              sub_20B526EA4(v64, v52, 0);
              v21 = __clz(__rbit64(v41)) + v38;
              goto LABEL_8;
            }
          }

          sub_20B526EA4(v64, v52, 0);
        }

LABEL_8:
        v19 = v58 + 1;
        result = v21;
        if (v58 + 1 == v51)
        {

          v43 = v17;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    else
    {

      v43 = MEMORY[0x277D84F90];
LABEL_26:
      v45 = v2[13];
      v44 = v2[14];
      v46 = v2[12];
      v47 = v2;
      v48 = sub_20B716824(v43);

      (*(v45 + 8))(v44, v46);

      v49 = v47[1];

      return v49(v48);
    }
  }

  return result;
}

uint64_t sub_20B6BB048()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v1[3] = swift_task_alloc();
  v2 = sub_20C136C64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_20C13BB84();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6BB19C, 0, 0);
}

uint64_t sub_20B6BB19C(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[2];
  v7 = v1[3];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v4);
  __swift_project_boxed_opaque_existential_1((v8 + 56), *(v8 + 80));
  sub_20C13B174();
  v9 = (*(v6 + 48))(v7, 1, v5);
  v10 = v1[6];
  if (v9 == 1)
  {
    sub_20B520158(v1[3], &qword_27C768690, &unk_20C14FD90);
    v11 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51B88], v11);
    swift_willThrow();

    v13 = v1[1];

    return v13();
  }

  else
  {
    v15 = v1[4];
    v16 = v1[5];
    (*(v16 + 32))(v1[6], v1[3], v15);
    v17 = sub_20C136BA4();
    (*(v16 + 8))(v10, v15);

    v18 = v1[1];

    return v18(v17);
  }
}

uint64_t sub_20B6BB440(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_20C132EE4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_20C133954();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772020, &qword_20C182C00);
  v3[11] = swift_task_alloc();
  v6 = sub_20C1353F4();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v3[15] = swift_task_alloc();
  v7 = sub_20C136C64();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = sub_20C13BB84();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6BB6E4, 0, 0);
}

uint64_t sub_20B6BB6E4(uint64_t a1)
{
  v3 = v1[20];
  v2 = v1[21];
  v4 = v1[19];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[15];
  v8 = v1[4];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v4);
  __swift_project_boxed_opaque_existential_1((v8 + 56), *(v8 + 80));
  sub_20C13B174();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_20B520158(v1[15], &qword_27C768690, &unk_20C14FD90);
    v9 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51B88], v9);
    swift_willThrow();

    v11 = v1[1];
LABEL_8:

    return v11();
  }

  v12 = v1[12];
  v13 = v1[13];
  v14 = v1[11];
  v15 = v1[3];
  (*(v1[17] + 32))(v1[18], v1[15], v1[16]);
  v16 = sub_20C136B24();
  *(swift_task_alloc() + 16) = v15;
  sub_20B6B7860(sub_20B6D6B04, v16, MEMORY[0x277D518F8], v14);

  if ((*(v13 + 48))(v14, 1, v12) != 1)
  {
    v21 = v1[13];
    v20 = v1[14];
    v23 = v1[11];
    v22 = v1[12];
    v24 = v1[2];
    (*(v1[17] + 8))(v1[18], v1[16]);
    v25 = *(v21 + 32);
    v25(v20, v23, v22);
    v25(v24, v20, v22);

    v11 = v1[1];
    goto LABEL_8;
  }

  sub_20B520158(v1[11], &unk_27C772020, &qword_20C182C00);
  v17 = swift_task_alloc();
  v1[22] = v17;
  *v17 = v1;
  v17[1] = sub_20B6BBAFC;
  v18 = v1[10];

  return sub_20B6B9608(v18);
}

uint64_t sub_20B6BBAFC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_20B6BC070;
  }

  else
  {
    v2 = sub_20B6BBC10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B6BBC10()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_20C133804();
  v4 = sub_20C132EC4();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_20B6BBE70;
    v6 = v0[2];

    return sub_20B6BC238(v6);
  }

  else
  {
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[16];
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];
    v14 = sub_20C134E24();
    sub_20B6D8780(&unk_27C762270, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51190], v14);
    swift_willThrow();
    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_20B6BBE70()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_20B6BC144;
  }

  else
  {
    v2 = sub_20B6BBF84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B6BBF84()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B6BC070()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B6BC144()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B6BC238(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_20C132E94();
  v2[4] = swift_task_alloc();
  v3 = sub_20C132EE4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FDB0, &qword_20C155550);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E60, &qword_20C1554F8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = sub_20C136104();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v5 = sub_20C133954();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v2[29] = swift_task_alloc();
  v6 = sub_20C136C64();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();
  v7 = sub_20C13BB84();
  v2[33] = v7;
  v2[34] = *(v7 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6BC5C8, 0, 0);
}

uint64_t sub_20B6BC5C8(uint64_t a1)
{
  v3 = v1[34];
  v2 = v1[35];
  v4 = v1[33];
  v5 = v1[30];
  v6 = v1[31];
  v7 = v1[29];
  v8 = v1[3];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v4);
  __swift_project_boxed_opaque_existential_1((v8 + 56), *(v8 + 80));
  sub_20C13B174();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_20B520158(v1[29], &qword_27C768690, &unk_20C14FD90);
    v9 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51B88], v9);
    swift_willThrow();

    v11 = v1[1];

    return v11();
  }

  else
  {
    (*(v1[31] + 32))(v1[32], v1[29], v1[30]);
    v13 = swift_task_alloc();
    v1[36] = v13;
    *v13 = v1;
    v13[1] = sub_20B6BC92C;
    v14 = v1[28];

    return sub_20B6B9608(v14);
  }
}

uint64_t sub_20B6BC92C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_20B6BD8CC;
  }

  else
  {
    v2 = sub_20B6BCA40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_20B6BCA40(uint64_t a1)
{
  v2 = v1;
  v3 = v1[37];
  v4 = sub_20C136BC4();
  sub_20B6CD490(v4);
  v6 = v5;
  v123 = v3;

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v2[16];
    v130 = v2[11];
    v154 = MEMORY[0x277D84F90];
    sub_20BB5DD18(0, v7, 0);
    v9 = v154;
    v10 = v6 + 64;
    v11 = sub_20C13DAA4();
    v12 = 0;
    v125 = v6 + 72;
    v126 = v7;
    v127 = v6 + 64;
    v128 = v6;
    v129 = v8;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v6 + 32))
    {
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_76;
      }

      v133 = 1 << v11;
      v134 = v11 >> 6;
      v131 = v12;
      v132 = *(v6 + 36);
      v152 = v9;
      v146 = v2[24];
      v14 = v2[14];
      v136 = v2[15];
      v138 = *(v130 + 48);
      v15 = v2[13];
      v140 = v2[12];
      v16 = *(v6 + 48);
      v17 = v11;
      v18 = sub_20C135C54();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v14, v16 + *(v19 + 72) * v17, v18);
      v149 = *(v8 + 72);
      v142 = v17;
      (*(v8 + 16))(v14 + v138, *(v6 + 56) + v149 * v17, v136);
      (*(v19 + 32))(v15, v14, v18);
      v20 = *(v8 + 32);
      v21 = v14 + v138;
      v9 = v152;
      v20(v15 + *(v130 + 48), v21, v136);
      sub_20B6D6420(v15, v140);
      v20(v146, v140 + *(v130 + 48), v136);
      (*(v19 + 8))(v140, v18);
      v23 = *(v152 + 16);
      v22 = *(v152 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_20BB5DD18((v22 > 1), v23 + 1, 1);
        v9 = v152;
      }

      v24 = v2[24];
      v25 = v2[15];
      *(v9 + 16) = v23 + 1;
      v8 = v129;
      v20(v9 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + v23 * v149, v24, v25);
      v6 = v128;
      v13 = 1 << *(v128 + 32);
      if (v142 >= v13)
      {
        goto LABEL_77;
      }

      v10 = v127;
      v26 = *(v127 + 8 * v134);
      if ((v26 & v133) == 0)
      {
        goto LABEL_78;
      }

      if (v132 != *(v128 + 36))
      {
        goto LABEL_79;
      }

      v27 = v26 & (-2 << (v142 & 0x3F));
      if (v27)
      {
        v13 = __clz(__rbit64(v27)) | v142 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v134 << 6;
        v29 = (v125 + 8 * v134);
        v30 = v134 + 1;
        while (v30 < (v13 + 63) >> 6)
        {
          v32 = *v29++;
          v31 = v32;
          v28 += 64;
          ++v30;
          if (v32)
          {
            sub_20B526EA4(v142, v132, 0);
            v13 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        sub_20B526EA4(v142, v132, 0);
      }

LABEL_4:
      v12 = v131 + 1;
      v11 = v13;
      if (v131 + 1 == v126)
      {

        goto LABEL_21;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_21:
  v33 = *(v9 + 16);
  v150 = v2;
  v151 = v33;
  v153 = v9;
  if (v33)
  {
    v34 = v2;
    v35 = v2[16];
    v36 = *(v35 + 16);
    v35 += 16;
    v147 = v36;
    v37 = v9 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v38 = *(v35 + 56);
    v39 = v33;
    v40 = (v35 - 8);
    v41 = 0.0;
    v42 = v37;
    do
    {
      v43 = v34[25];
      v44 = v34[15];
      v147(v43, v42, v44);
      sub_20C1360E4();
      v46 = v45;
      v47 = *v40;
      (*v40)(v43, v44);
      v41 = v41 + v46;
      v42 += v38;
      --v39;
    }

    while (v39);
    v48 = 0.0;
    v49 = v151;
    do
    {
      v50 = v34[23];
      v51 = v34[15];
      v147(v50, v37, v51);
      sub_20C1360C4();
      v53 = v52;
      v47(v50, v51);
      v48 = v48 + v53;
      v37 += v38;
      --v49;
    }

    while (v49);
    v54 = 0;
    v55 = v34[16];
    v56 = (v55 + 32);
    v148 = MEMORY[0x277D84F90];
    v9 = v153;
    do
    {
      if (v54 >= *(v9 + 16))
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v58 = *(v55 + 72);
      (*(v55 + 16))(v150[22], v9 + v57 + v58 * v54, v150[15]);
      if (sub_20C1360A4() == 29)
      {
        (*(v55 + 8))(v150[22], v150[15]);
      }

      else
      {
        v59 = *v56;
        (*v56)(v150[21], v150[22], v150[15]);
        v60 = v148;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_20BB5DD18(0, *(v148 + 16) + 1, 1);
          v60 = v148;
        }

        v62 = *(v60 + 16);
        v61 = *(v60 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_20BB5DD18((v61 > 1), v62 + 1, 1);
          v60 = v148;
        }

        v63 = v150[21];
        v64 = v150[15];
        *(v60 + 16) = v62 + 1;
        v148 = v60;
        v59(v60 + v57 + v62 * v58, v63, v64);
        v9 = v153;
      }

      ++v54;
    }

    while (v151 != v54);
    v65 = 0;
    v2 = v150;
    v66 = v150[16];
    v67 = v66 + 16;
    v143 = (v66 + 32);
    v68 = MEMORY[0x277D84F90];
    v69 = v151;
    while (v65 < *(v9 + 16))
    {
      v70 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v71 = *(v66 + 72);
      (*(v66 + 16))(v150[20], v9 + v70 + v71 * v65, v150[15]);
      if (sub_20C1360A4() == 29)
      {
        v72 = v67;
        v73 = *v143;
        (*v143)(v150[19], v150[20], v150[15]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_20BB5DD18(0, *(v68 + 16) + 1, 1);
        }

        v75 = *(v68 + 16);
        v74 = *(v68 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_20BB5DD18((v74 > 1), v75 + 1, 1);
        }

        v76 = v150[19];
        v77 = v150[15];
        *(v68 + 16) = v75 + 1;
        v73(v68 + v70 + v75 * v71, v76, v77);
        v69 = v151;
        v67 = v72;
      }

      else
      {
        (*(v66 + 8))(v150[20], v150[15]);
      }

      ++v65;
      v9 = v153;
      if (v69 == v65)
      {
        goto LABEL_46;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    return;
  }

LABEL_46:
  v139 = v2[8];
  v78 = sub_20C1338A4();
  v79 = v78 + 64;
  v80 = -1;
  v81 = -1 << *(v78 + 32);
  if (-v81 < 64)
  {
    v80 = ~(-1 << -v81);
  }

  v82 = v80 & *(v78 + 64);
  v83 = (63 - v81) >> 6;
  v141 = v78;

  v84 = 0;
  v135 = v79;
  v137 = 0;
  if (v82)
  {
    while (1)
    {
      v85 = v84;
LABEL_53:
      v86 = v2[10];
      v144 = v2[9];
      v87 = v2;
      v88 = __clz(__rbit64(v82)) | (v85 << 6);
      v89 = *(v141 + 48);
      v90 = sub_20C135214();
      v91 = *(v90 - 8);
      (*(v91 + 16))(v86, v89 + *(v91 + 72) * v88, v90);
      *(v86 + *(v139 + 48)) = *(*(v141 + 56) + 8 * v88);
      sub_20B52F9E8(v86, v144, &unk_27C76FDB0, &qword_20C155550);
      v92 = *(*(v144 + *(v139 + 48)) + 16);

      sub_20B520158(v86, &unk_27C76FDB0, &qword_20C155550);
      v93 = v137 + v92;
      if (__OFADD__(v137, v92))
      {
        goto LABEL_82;
      }

      v82 &= v82 - 1;
      (*(v91 + 8))(v87[9], v90);
      v84 = v85;
      v2 = v87;
      v9 = v153;
      v79 = v135;
      v137 = v93;
      if (!v82)
      {
        goto LABEL_50;
      }
    }
  }

  while (1)
  {
LABEL_50:
    v85 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (v85 >= v83)
    {
      break;
    }

    v82 = *(v79 + 8 * v85);
    ++v84;
    if (v82)
    {
      goto LABEL_53;
    }
  }

  v94 = v151;
  if (v151)
  {
    v95 = 0;
    v96 = v2[16];
    v145 = (v96 + 32);
    v97 = MEMORY[0x277D84F90];
    while (v95 < *(v9 + 16))
    {
      v98 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      v99 = *(v96 + 72);
      (*(v96 + 16))(v2[18], v9 + v98 + v99 * v95, v2[15]);
      if (sub_20C1360F4())
      {
        v100 = *v145;
        (*v145)(v2[17], v2[18], v2[15]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_20BB5DD18(0, *(v97 + 16) + 1, 1);
        }

        v102 = *(v97 + 16);
        v101 = *(v97 + 24);
        if (v102 >= v101 >> 1)
        {
          sub_20BB5DD18((v101 > 1), v102 + 1, 1);
        }

        v103 = v150[17];
        v104 = v150[15];
        *(v97 + 16) = v102 + 1;
        v105 = v97 + v98 + v102 * v99;
        v2 = v150;
        v100(v105, v103, v104);
        v94 = v151;
      }

      else
      {
        (*(v96 + 8))(v2[18], v2[15]);
      }

      ++v95;
      v9 = v153;
      if (v94 == v95)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_81;
  }

LABEL_67:

  sub_20C133804();
  sub_20C1338D4();
  if (v123)
  {
    v107 = v2[31];
    v106 = v2[32];
    v108 = v2[30];
    v109 = v2[27];
    v110 = v2[28];
    v111 = v2[26];
    v112 = v2[6];
    v113 = v2[7];
    v114 = v2[5];

    (*(v112 + 8))(v113, v114);
    (*(v109 + 8))(v110, v111);
    (*(v107 + 8))(v106, v108);

    v115 = v2[1];
  }

  else
  {
    v117 = v2[31];
    v116 = v2[32];
    v124 = v2[30];
    v118 = v2;
    v121 = v2 + 27;
    v119 = v2[27];
    v120 = v121[1];
    v122 = v118[26];

    sub_20C135394();
    (*(v119 + 8))(v120, v122);
    (*(v117 + 8))(v116, v124);

    v115 = v118[1];
  }

  v115();
}

uint64_t sub_20B6BD8CC()
{
  (*(v0[31] + 8))(v0[32], v0[30]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B6BDA4C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20C132EE4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_20C1353F4();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v2[12] = swift_task_alloc();
  v5 = sub_20C136C64();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6BDC70, 0, 0);
}

void sub_20B6BDC70(uint64_t a1)
{
  v63 = v1;
  v2 = v1[19];
  v3 = v1[16];
  v4 = v1[17];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[12];
  v8 = v1[4];
  sub_20C13B454();
  sub_20C13BB64();
  v9 = *(v4 + 8);
  v9(v2, v3);
  __swift_project_boxed_opaque_existential_1((v8 + 56), *(v8 + 80));
  sub_20C13B174();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_20B520158(v1[12], &qword_27C768690, &unk_20C14FD90);
    v10 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51B88], v10);
    swift_willThrow();
LABEL_16:

    v51 = v1[1];
    goto LABEL_19;
  }

  v52 = v9;
  (*(v1[14] + 32))(v1[15], v1[12], v1[13]);
  v1[2] = sub_20C136B24();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EC0, &qword_20C155658);
  sub_20B6D6ABC(&qword_27C763EC8, &qword_27C763EC0, &qword_20C155658, MEMORY[0x277D83B68]);
  sub_20B6D8780(&qword_27C763ED0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v12 = sub_20C13CBF4();

  v13 = sub_20C136BA4();
  v14 = sub_20B6B6B68(v13);

  v15 = *(v12 + 16);
  if (!v15)
  {
LABEL_10:

LABEL_15:
    v47 = v1[14];
    v46 = v1[15];
    v48 = v1[13];
    v49 = sub_20C134E24();
    sub_20B6D8780(&unk_27C762270, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D51190], v49);
    swift_willThrow();
    (*(v47 + 8))(v46, v48);
    goto LABEL_16;
  }

  v16 = v1[9];
  v57 = (v1[6] + 8);
  v59 = v12;
  v61 = (v16 + 8);
  v53 = v16;
LABEL_5:
  if (v15 > *(v12 + 16))
  {
    __break(1u);
    return;
  }

  --v15;
  v54 = *(v16 + 16);
  v54(v1[11], v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v15, v1[8]);
  sub_20C135384();
  v17 = 0;
  v18 = *(v14 + 16);
  while (v18 != v17)
  {
    v19 = v17 + 1;
    sub_20B6D8780(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v20 = sub_20C13C894();
    v17 = v19;
    if (v20)
    {
      v21 = v1[11];
      v22 = v1[8];
      (*v57)(v1[7], v1[5]);
      (*v61)(v21, v22);
      v12 = v59;
      v16 = v53;
      if (v15)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  v23 = v1[11];
  v25 = v1[8];
  v24 = v1[9];
  v26 = v1[3];
  (*v57)(v1[7], v1[5]);

  (*(v24 + 32))(v26, v23, v25);
  sub_20C1353B4();
  if (v27 <= 0.0)
  {
    (*v61)(v1[3], v1[8]);
    goto LABEL_15;
  }

  v28 = v1[10];
  v29 = v1[8];
  v30 = v1[3];
  sub_20C13B454();
  v54(v28, v30, v29);
  v31 = sub_20C13BB74();
  v32 = sub_20C13D1C4();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v1[18];
  v36 = v1[15];
  v35 = v1[16];
  v37 = v1[14];
  v60 = v1[13];
  v38 = v1[10];
  v39 = v1[8];
  if (v33)
  {
    v58 = v1[15];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v62 = v41;
    *v40 = 136315138;
    sub_20B6D8780(&qword_27C763ED8, MEMORY[0x277D518F8], MEMORY[0x277D51910]);
    v55 = v35;
    v56 = v34;
    v42 = sub_20C13DFA4();
    v44 = v43;
    (*v61)(v38, v39);
    v45 = sub_20B51E694(v42, v44, &v62);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_20B517000, v31, v32, "RemoteBrowsingWorkoutPlanClient.queryPendingHistoricWorkoutPlanSummary: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x20F2F6A40](v41, -1, -1);
    MEMORY[0x20F2F6A40](v40, -1, -1);

    v52(v56, v55);
    (*(v37 + 8))(v58, v60);
  }

  else
  {

    (*v61)(v38, v39);
    v52(v34, v35);
    (*(v37 + 8))(v36, v60);
  }

  v51 = v1[1];
LABEL_19:

  v51();
}

uint64_t sub_20B6BE498()
{
  v1[2] = v0;
  v2 = sub_20C13B0C4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAD0, &unk_20C1664E0);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770CE0, &unk_20C155510);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  v1[9] = swift_task_alloc();
  v3 = sub_20C1353F4();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_20C132E94();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = sub_20C133954();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[21] = v6;
  v7 = swift_task_alloc();
  v1[22] = v7;
  *v7 = v1;
  v7[1] = sub_20B6BE77C;

  return sub_20B6B9608(v6);
}

uint64_t sub_20B6BE77C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_20B6BF4C0;
  }

  else
  {
    v2 = sub_20B6BE890;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B6BE890(uint64_t a1)
{
  v2 = v1[23];
  sub_20C1338D4();
  if (v2)
  {
    (*(v1[18] + 8))(v1[21], v1[17]);

    v3 = v1[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v1[24] = v5;
    *v5 = v1;
    v5[1] = sub_20B6BEA2C;
    v6 = v1[16];

    return sub_20B6B9B00(v6);
  }
}

uint64_t sub_20B6BEA2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_20B6BF5B4;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_20B6BEB54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20B6BEB54()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v4 = *(v0[26] + 16);

  sub_20C132E64();
  v5 = sub_20C132E04();
  v6 = *(v3 + 8);
  v0[27] = v6;
  v0[28] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  if (!v4 || (v5 & 1) != 0)
  {
    v10 = swift_task_alloc();
    v0[29] = v10;
    *v10 = v0;
    v10[1] = sub_20B6BED54;
    v11 = v0[12];

    return sub_20B6BC238(v11);
  }

  else
  {
    v7 = v0[18];
    v6(v0[16], v0[13]);
    (*(v7 + 8))(v0[21], v0[17]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_20B6BED54()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_20B6BF6E0;
  }

  else
  {
    v2 = sub_20B6BEE68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B6BEE68()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  (*(v0[14] + 56))(v1, 1, 1, v0[13]);
  v5 = sub_20C132EE4();
  v6 = *(*(v5 - 8) + 56);
  v6(v2, 1, 1, v5);
  v7 = sub_20C133594();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v6(v4, 1, 1, v5);
  sub_20C1338F4();
  sub_20B520158(v4, &unk_27C770CE0, &unk_20C155510);
  sub_20B520158(v3, &qword_27C76EAD0, &unk_20C1664E0);
  sub_20B520158(v2, &unk_27C770CE0, &unk_20C155510);
  sub_20B520158(v1, &qword_27C762AC0, &qword_20C14FC90);
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_20B6BF07C;
  v9 = v0[19];
  v10 = v0[20];

  return sub_20B6BF964(v9, v10);
}

uint64_t sub_20B6BF07C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_20B6BF804;
  }

  else
  {
    v5 = v2[18];
    v4 = v2[19];
    v6 = v2[17];
    v7 = *(v5 + 8);
    v2[33] = v7;
    v2[34] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);
    v3 = sub_20B6BF1B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B6BF1B4()
{
  v21 = v0[33];
  v24 = v0[27];
  v19 = v0[17];
  v20 = v0[20];
  v1 = v0[12];
  v22 = v0[13];
  v23 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  v17 = v1;
  v18 = v2;
  v16 = v3;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  __swift_project_boxed_opaque_existential_1((v6 + 56), *(v6 + 80));
  (*(v2 + 16))(v5, v1, v3);
  v8 = *MEMORY[0x277D4F630];
  v9 = sub_20C13B254();
  v15 = *(*(v9 - 8) + 104);
  v15(v5, v8, v9);
  v14 = *(v4 + 104);
  v14(v5, *MEMORY[0x277D4F518], v7);
  sub_20C13B2A4();
  v10 = *(v4 + 8);
  v10(v5, v7);
  __swift_project_boxed_opaque_existential_1((v6 + 56), *(v6 + 80));
  v11 = sub_20C137294();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v15(v5, *MEMORY[0x277D4F6A8], v9);
  v14(v5, *MEMORY[0x277D4F520], v7);
  sub_20C13B2A4();
  v10(v5, v7);
  v21(v20, v19);
  (*(v18 + 8))(v17, v16);
  v24(v23, v22);
  (v0[33])(v0[21], v0[17]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_20B6BF4C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B6BF5B4()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  (*(v0[14] + 8))(v0[16], v0[13]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B6BF6E0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  (*(v0 + 216))(*(v0 + 128), *(v0 + 104));
  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20B6BF804()
{
  v1 = v0[27];
  v11 = v0[21];
  v2 = v0[17];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = *(v0[18] + 8);
  v8(v0[20], v2);
  (*(v6 + 8))(v5, v7);
  v1(v3, v4);
  v8(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20B6BF964(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764880, &unk_20C157820);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_20C133954();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E68, &unk_20C155540);
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_20C132EE4();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E70, &unk_20C177A70);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770CE0, &unk_20C155510);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v3[24] = swift_task_alloc();
  v8 = sub_20C136C64();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  v3[29] = swift_task_alloc();
  v9 = sub_20C135174();
  v3[30] = v9;
  v3[31] = *(v9 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6BFD64, 0, 0);
}

uint64_t sub_20B6BFD64()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[29];
    v6 = &unk_27C76BC00;
    v7 = &unk_20C1500B0;
LABEL_5:
    sub_20B520158(v5, v6, v7);
    v12 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51B88], v12);
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }

  v8 = v0[25];
  v9 = v0[26];
  v10 = v0[24];
  (*(v0[31] + 32))(v0[33], v0[29], v0[30]);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_20C13B174();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v0[24];
    (*(v0[31] + 8))(v0[33], v0[30]);
    v6 = &qword_27C768690;
    v7 = &unk_20C14FD90;
    v5 = v11;
    goto LABEL_5;
  }

  v16 = v0[23];
  v17 = v0[20];
  v18 = v0[14];
  v19 = v0[15];
  v20 = v0[8];
  v21 = v0[9];
  (*(v0[26] + 32))(v0[28], v0[24], v0[25]);
  sub_20C133804();
  v64 = *(v19 + 56);
  v64(v16, 0, 1, v18);
  sub_20C136A54();
  if ((*(v21 + 48))(v17, 1, v20) == 1)
  {
    sub_20B520158(v0[20], &unk_27C76A970, &qword_20C14FC10);
    v22 = 1;
  }

  else
  {
    v23 = v0[20];
    v24 = v0[8];
    v25 = v0[9];
    sub_20C133804();
    (*(v25 + 8))(v23, v24);
    v22 = 0;
  }

  v27 = v0[22];
  v26 = v0[23];
  v29 = v0[17];
  v28 = v0[18];
  v30 = v0[14];
  v31 = v0[15];
  v64(v27, v22, 1, v30);
  v32 = *(v29 + 48);
  sub_20B52F9E8(v26, v28, &unk_27C770CE0, &unk_20C155510);
  sub_20B52F9E8(v27, v28 + v32, &unk_27C770CE0, &unk_20C155510);
  v33 = *(v31 + 48);
  if (v33(v28, 1, v30) == 1)
  {
    v34 = v0[23];
    v35 = v0[14];
    sub_20B520158(v0[22], &unk_27C770CE0, &unk_20C155510);
    sub_20B520158(v34, &unk_27C770CE0, &unk_20C155510);
    if (v33(v28 + v32, 1, v35) == 1)
    {
      sub_20B520158(v0[18], &unk_27C770CE0, &unk_20C155510);
LABEL_18:
      v47 = v0[27];
      v48 = v0[26];
      v49 = v0[19];
      v50 = v0[8];
      v51 = v0[9];
      v52 = v0[3];
      v66 = v0[25];
      __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
      (*(v51 + 16))(v49, v52, v50);
      (*(v51 + 56))(v49, 0, 1, v50);
      sub_20C136B54();
      sub_20B520158(v49, &unk_27C76A970, &qword_20C14FC10);
      sub_20C13B1B4();
      (*(v48 + 8))(v47, v66);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v36 = v0[14];
  sub_20B52F9E8(v0[18], v0[21], &unk_27C770CE0, &unk_20C155510);
  v37 = v33(v28 + v32, 1, v36);
  v38 = v0[22];
  v39 = v0[23];
  v40 = v0[21];
  if (v37 == 1)
  {
    v41 = v0[14];
    v42 = v0[15];
    sub_20B520158(v0[22], &unk_27C770CE0, &unk_20C155510);
    sub_20B520158(v39, &unk_27C770CE0, &unk_20C155510);
    (*(v42 + 8))(v40, v41);
LABEL_16:
    sub_20B520158(v0[18], &qword_27C763E70, &unk_20C177A70);
    goto LABEL_19;
  }

  v65 = v0[18];
  v43 = v0[15];
  v44 = v0[16];
  v45 = v0[14];
  (*(v43 + 32))(v44, v28 + v32, v45);
  sub_20B6D8780(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v63 = sub_20C13C894();
  v46 = *(v43 + 8);
  v46(v44, v45);
  sub_20B520158(v38, &unk_27C770CE0, &unk_20C155510);
  sub_20B520158(v39, &unk_27C770CE0, &unk_20C155510);
  v46(v40, v45);
  sub_20B520158(v65, &unk_27C770CE0, &unk_20C155510);
  if (v63)
  {
    goto LABEL_18;
  }

LABEL_19:
  v54 = v0[9];
  v53 = v0[10];
  v55 = v0[7];
  v56 = v0[8];
  v57 = v0[3];
  v58 = v0[4];
  (*(v0[31] + 16))(v0[32], v0[33], v0[30]);
  (*(v54 + 16))(v53, v57, v56);
  sub_20C137844();
  __swift_project_boxed_opaque_existential_1((v58 + 16), *(v58 + 40));
  sub_20C139974();
  v59 = swift_task_alloc();
  v0[34] = v59;
  *(v59 + 16) = "SeymourUI/RemoteBrowsingWorkoutPlanClient.swift";
  *(v59 + 24) = 47;
  *(v59 + 32) = 2;
  *(v59 + 40) = 503;
  *(v59 + 48) = v55;
  v60 = swift_task_alloc();
  v0[35] = v60;
  *v60 = v0;
  v60[1] = sub_20B6C05F4;
  v61 = v0[8];
  v62 = v0[2];

  return MEMORY[0x2822008A0](v62, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B6D6408, v59, v61);
}

uint64_t sub_20B6C05F4()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_20B6C08CC;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = sub_20B6C0744;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B6C0744()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[26];
  v6 = v0[25];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20B6C08CC()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20B6C0A7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  v3[5] = swift_task_alloc();
  v4 = sub_20C135214();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_20C133954();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v3[12] = swift_task_alloc();
  v6 = sub_20C136C64();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6C0C68, 0, 0);
}

uint64_t sub_20B6C0C68()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  __swift_project_boxed_opaque_existential_1((v0[4] + 56), *(v0[4] + 80));
  sub_20C13B174();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[12], &qword_27C768690, &unk_20C14FD90);
    v4 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_20B6C0EA4;
    v9 = v0[11];

    return sub_20B6B9608(v9);
  }
}

uint64_t sub_20B6C0EA4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_20B6C13C4;
  }

  else
  {
    v2 = sub_20B6C0FB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B6C0FB8(uint64_t a1)
{
  v2 = v1[8];
  sub_20C133814();
  v3 = sub_20B71C580();
  v4 = sub_20C136BC4();
  sub_20B6CD490(v4);

  sub_20C1338C4();
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  v7 = sub_20BEE11A8(sub_20B6D85C8, v6, v5, v3);

  v8 = sub_20B71C580();
  if (*(v8 + 16) <= *(v7 + 16) >> 3)
  {
    sub_20B6CE878(v8, &qword_27C76A410, &unk_20C14FBC0, MEMORY[0x277D51FE0], sub_20B6C9E5C);
  }

  else
  {
    v7 = sub_20B6D0E2C(v8, v7);
  }

  v9 = v1[5];
  sub_20B6C15AC(v7, v9);

  v10 = sub_20C135C54();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v12 = v1[14];
    v13 = v1[13];
    v14 = v1[10];
    v15 = v1[11];
    v16 = v1[9];
    v30 = v1[15];
    v32 = v1[8];
    v17 = v1[6];
    v18 = v1[7];
    sub_20B520158(v1[5], &qword_27C76A410, &unk_20C14FBC0);
    v19 = sub_20C134E24();
    sub_20B6D8780(&unk_27C762270, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51180], v19);
    swift_willThrow();
    (*(v14 + 8))(v15, v16);
    (*(v12 + 8))(v30, v13);
    (*(v18 + 8))(v32, v17);
  }

  else
  {
    v23 = v1[14];
    v22 = v1[15];
    v24 = v1[13];
    v31 = v1[8];
    v25 = v1[7];
    v29 = v1[6];
    v26 = v1[5];
    v27 = v1[2];
    (*(v1[10] + 8))(v1[11], v1[9]);
    (*(v23 + 8))(v22, v24);
    (*(v11 + 32))(v27, v26, v10);
    (*(v25 + 8))(v31, v29);
  }

  v21 = v1[1];

  return v21();
}

uint64_t sub_20B6C13C4()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

BOOL sub_20B6C147C(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C135214();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C135C04();
  sub_20B6D8780(&qword_27C763E98, MEMORY[0x277D51640], MEMORY[0x277D51650]);
  v6 = sub_20C13C834();
  (*(v3 + 8))(v5, v2);
  return (v6 & 1) == 0;
}

void sub_20B6C15AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C135C54();
  MEMORY[0x28223BE20](v4);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v46 = &v39 - v15;
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
    v39 = a2;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = v13[9];
    v27 = *(a1 + 48) + v26 * v21;
    v28 = v13[2];
    v40 = v13;
    v41 = v28;
    v42 = v13 + 2;
    v43 = v26;
    (v28)(v11, v27, v4, v14);
    v30 = v40 + 4;
    v29 = v40[4];
    v29(v46, v11, v4);
    v45 = a1;

    if (v22)
    {
      goto LABEL_12;
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

        v37 = v39;
        v29(v39, v46, v4);
        (v40[7])(v37, 0, 1, v4);
        return;
      }

      v22 = *(v16 + 8 * v31);
      ++v20;
      if (v22)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v33 = v44;
          v41(v44, *(v45 + 48) + (v32 | (v31 << 6)) * v43, v4);
          v29(v8, v33, v4);
          sub_20B6D8780(&qword_27C762288, MEMORY[0x277D51FE0], MEMORY[0x277D51FF0]);
          v34 = v46;
          v35 = sub_20C13C834();
          v36 = *(v30 - 3);
          if (v35)
          {
            v36(v34, v4);
            v29(v34, v8, v4);
            v20 = v31;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v36(v8, v4);
            v20 = v31;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v31 = v20;
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
        v39 = a2;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    v38 = v13[7];

    v38(a2, 1, 1, v4, v14);
  }
}

int64_t sub_20B6C1990(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v10, v9.i64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_20B6C1A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_20C132EE4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_20C133954();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v4[12] = swift_task_alloc();
  v7 = sub_20C136C64();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6C1BF8, 0, 0);
}

uint64_t sub_20B6C1BF8()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  __swift_project_boxed_opaque_existential_1((v0[5] + 56), *(v0[5] + 80));
  sub_20C13B174();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[12], &qword_27C768690, &unk_20C14FD90);
    v4 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_20B6C1E28;
    v9 = v0[11];

    return sub_20B6B9608(v9);
  }
}

uint64_t sub_20B6C1E28()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_20B6C22F4;
  }

  else
  {
    v2 = sub_20B6C1F3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B6C1F3C(__n128 a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[6];
  sub_20C133804();
  v5 = sub_20C132EC4();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v7 = v1[14];
    v6 = v1[15];
    v31 = v1[13];
    v8 = v1[10];
    v29 = v1[11];
    v30 = v1[9];
    v9 = v1[3];
    v10 = v1[4];
    v11 = sub_20C136BC4();
    v12 = sub_20C133814();

    v13 = sub_20B6D7460(v12, v9, v10, sub_20B6D6B70, sub_20B6D6B70);

    v14 = sub_20B6D7460(v11, v9, v10, sub_20B6D6F58, sub_20B6D6F58);

    sub_20B6CD490(v14);
    v16 = v15;

    sub_20B6D7960(v13, v16, sub_20B6D7644, sub_20B6D7644);

    v17 = sub_20B71C580();

    (*(v8 + 8))(v29, v30);
    (*(v7 + 8))(v6, v31);

    v18 = v1[1];

    return v18(v17);
  }

  else
  {
    v21 = v1[14];
    v20 = v1[15];
    v22 = v1[13];
    v24 = v1[10];
    v23 = v1[11];
    v25 = v1[9];
    v26 = sub_20C134E24();
    sub_20B6D8780(&unk_27C762270, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51188], v26);
    swift_willThrow();
    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);

    v28 = v1[1];

    return v28();
  }
}

uint64_t sub_20B6C22F4()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B6C2398(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_20C13B0C4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_20C136894();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EB8, &qword_20C155610);
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  v2[16] = swift_task_alloc();
  v7 = sub_20C135174();
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v8 = sub_20C13BB84();
  v2[21] = v8;
  v2[22] = *(v8 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6C2680, 0, 0);
}

uint64_t sub_20B6C2680(uint64_t a1)
{
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[16];
  v8 = v1[3];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v4);
  __swift_project_boxed_opaque_existential_1((v8 + 56), *(v8 + 80));
  sub_20C13B184();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_20B520158(v1[16], &unk_27C76BC00, &unk_20C1500B0);
    v9 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51B88], v9);
    swift_willThrow();

    v11 = v1[1];

    return v11();
  }

  else
  {
    v14 = v1[19];
    v13 = v1[20];
    v16 = v1[17];
    v15 = v1[18];
    v17 = v1[11];
    v18 = v1[9];
    v19 = v1[10];
    v27 = v1[12];
    v28 = v1[8];
    v29 = v1[7];
    v31 = v1[6];
    v20 = v1[2];
    v30 = v1[3];
    (*(v15 + 32))(v13, v1[16], v16);
    (*(v15 + 16))(v14, v13, v16);
    v21 = *(v17 + 16);
    v21(v27, v20, v19);
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1((v8 + 56), *(v8 + 80));
    v21(v18, v20, v19);
    v22 = *MEMORY[0x277D4F690];
    v23 = sub_20C13B254();
    (*(*(v23 - 8) + 104))(v18, v22, v23);
    (*(v28 + 104))(v18, *MEMORY[0x277D4F518], v29);
    sub_20C13B2A4();
    (*(v28 + 8))(v18, v29);
    __swift_project_boxed_opaque_existential_1((v30 + 16), *(v30 + 40));
    sub_20C139AC4();
    v24 = swift_task_alloc();
    v1[24] = v24;
    *(v24 + 16) = "SeymourUI/RemoteBrowsingWorkoutPlanClient.swift";
    *(v24 + 24) = 47;
    *(v24 + 32) = 2;
    *(v24 + 40) = 326;
    *(v24 + 48) = v31;
    v25 = swift_task_alloc();
    v1[25] = v25;
    *v25 = v1;
    v25[1] = sub_20B6C2B44;
    v26 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v25, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B6D87EC, v24, v26);
  }
}

uint64_t sub_20B6C2B44()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_20B6C2DA0;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_20B6C2C94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B6C2C94()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B6C2DA0()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20B6C2EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EE0, &qword_20C1803E0);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_20C133954();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = sub_20C137754();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000, &unk_20C16D940);
  v5[16] = swift_task_alloc();
  v9 = sub_20C137374();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v5[20] = swift_task_alloc();
  v10 = sub_20C136C64();
  v5[21] = v10;
  v5[22] = *(v10 - 8);
  v5[23] = swift_task_alloc();
  v11 = sub_20C13BB84();
  v5[24] = v11;
  v5[25] = *(v11 - 8);
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6C31D0, 0, 0);
}

uint64_t sub_20B6C31D0(uint64_t a1)
{
  v3 = v1[25];
  v2 = v1[26];
  v4 = v1[24];
  v5 = v1[21];
  v6 = v1[22];
  v7 = v1[20];
  v8 = v1[6];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v4);
  __swift_project_boxed_opaque_existential_1((v8 + 56), *(v8 + 80));
  sub_20C13B174();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_20B520158(v1[20], &qword_27C768690, &unk_20C14FD90);
    v9 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51B88], v9);
    swift_willThrow();
LABEL_5:

    v21 = v1[1];

    return v21();
  }

  v11 = v1[17];
  v12 = v1[18];
  v13 = v1[16];
  v14 = v1[5];
  (*(v1[22] + 32))(v1[23], v1[20], v1[21]);
  v15 = sub_20C136BB4();
  *(swift_task_alloc() + 16) = v14;
  sub_20B6B7860(sub_20B6D6B38, v15, MEMORY[0x277D53288], v13);

  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    v17 = v1[22];
    v16 = v1[23];
    v18 = v1[21];
    sub_20B520158(v1[16], &unk_27C772000, &unk_20C16D940);
    v19 = sub_20C134E24();
    sub_20B6D8780(&unk_27C762270, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51198], v19);
    swift_willThrow();
    (*(v17 + 8))(v16, v18);
    goto LABEL_5;
  }

  v24 = v1[11];
  v23 = v1[12];
  v25 = v1[10];
  v32 = v1[9];
  v27 = v1[5];
  v26 = v1[6];
  (*(v1[18] + 32))(v1[19], v1[16], v1[17]);
  (*(v24 + 16))(v23, v27, v25);

  sub_20C1372D4();
  sub_20C137744();
  __swift_project_boxed_opaque_existential_1((v26 + 16), *(v26 + 40));
  sub_20C139AD4();
  v28 = swift_task_alloc();
  v1[27] = v28;
  *(v28 + 16) = "SeymourUI/RemoteBrowsingWorkoutPlanClient.swift";
  *(v28 + 24) = 47;
  *(v28 + 32) = 2;
  *(v28 + 40) = 346;
  *(v28 + 48) = v32;
  v29 = swift_task_alloc();
  v1[28] = v29;
  v30 = sub_20C1364A4();
  *v29 = v1;
  v29[1] = sub_20B6C3720;
  v31 = v1[2];

  return MEMORY[0x2822008A0](v31, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B6D6B58, v28, v30);
}

uint64_t sub_20B6C3720()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_20B6C3998;
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3 = sub_20B6C3870;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B6C3870()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20B6C3998()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20B6C3AE0()
{
  v0 = sub_20C132EE4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  sub_20C1372B4();
  sub_20C133854();
  v7 = sub_20C132EC4();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_20B6C3C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_20C132EE4();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_20C133954();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[14] = v9;
  v10 = swift_task_alloc();
  v6[15] = v10;
  *v10 = v6;
  v10[1] = sub_20B6C3D7C;

  return sub_20B6B9608(v9);
}

uint64_t sub_20B6C3D7C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_20B6C4270;
  }

  else
  {
    v2 = sub_20B6C3E90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B6C3E90(__n128 a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  sub_20C133804();
  v5 = sub_20C132EC4();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    sub_20C133934();
    v6 = swift_task_alloc();
    v1[17] = v6;
    *v6 = v1;
    v6[1] = sub_20B6C40A8;
    v7 = v1[13];
    v8 = v1[2];

    return sub_20B6BF964(v7, v8);
  }

  else
  {
    v10 = v1[14];
    v11 = v1[11];
    v12 = v1[12];
    v13 = sub_20C134E24();
    sub_20B6D8780(&unk_27C762270, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51188], v13);
    swift_willThrow();
    (*(v12 + 8))(v10, v11);

    v15 = v1[1];

    return v15();
  }
}

uint64_t sub_20B6C40A8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_20B6C42F0;
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[11];
    v7 = *(v5 + 8);
    v2[19] = v7;
    v2[20] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);
    v3 = sub_20B6C41E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B6C41E0()
{
  (*(v0 + 152))(*(v0 + 112), *(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B6C4270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B6C42F0()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = *(v0[12] + 8);
  v3(v0[2], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B6C43A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E48, &unk_20C1554C0);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_20C13B0C4();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v2[13] = swift_task_alloc();
  v6 = sub_20C132EE4();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v7 = sub_20C133954();
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v2[20] = swift_task_alloc();
  v8 = sub_20C136C64();
  v2[21] = v8;
  v2[22] = *(v8 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  v2[25] = swift_task_alloc();
  v9 = sub_20C135174();
  v2[26] = v9;
  v2[27] = *(v9 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6C4764, 0, 0);
}

uint64_t sub_20B6C4764()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[3];
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[25];
    v6 = &unk_27C76BC00;
    v7 = &unk_20C1500B0;
LABEL_5:
    sub_20B520158(v5, v6, v7);
    v12 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51B88], v12);
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }

  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[20];
  (*(v0[27] + 32))(v0[29], v0[25], v0[26]);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_20C13B174();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v0[20];
    (*(v0[27] + 8))(v0[29], v0[26]);
    v6 = &qword_27C768690;
    v7 = &unk_20C14FD90;
    v5 = v11;
    goto LABEL_5;
  }

  (*(v0[22] + 32))(v0[24], v0[20], v0[21]);
  v16 = swift_task_alloc();
  v0[30] = v16;
  *v16 = v0;
  v16[1] = sub_20B6C4AAC;
  v17 = v0[19];

  return sub_20B6B9608(v17);
}

uint64_t sub_20B6C4AAC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_20B6C55BC;
  }

  else
  {
    v2 = sub_20B6C4BC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B6C4BC0(__n128 a1)
{
  v3 = v1[15];
  v2 = v1[16];
  v4 = v1[14];
  sub_20C133804();
  v5 = sub_20C132EC4();
  (*(v3 + 8))(v2, v4);
  v43 = v1[29];
  if (v5)
  {
    v40 = v1[26];
    v6 = v1[23];
    v7 = v1[22];
    v31 = v1[21];
    v8 = v1[17];
    v9 = v1[18];
    v38 = v1[16];
    v39 = v1[28];
    v35 = v1[15];
    v36 = v1[27];
    v10 = v1[13];
    v37 = v1[14];
    v11 = v1[12];
    v32 = v1[11];
    v33 = v1[10];
    v42 = v1[6];
    v12 = v1[3];
    v34 = v1[2];
    __swift_project_boxed_opaque_existential_1(v12 + 7, v12[10]);
    (*(v9 + 56))(v10, 1, 1, v8);
    sub_20C136B54();
    sub_20B520158(v10, &unk_27C76A970, &qword_20C14FC10);
    sub_20C13B1B4();
    v13 = *(v7 + 8);
    v1[32] = v13;
    v1[33] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v6, v31);
    __swift_project_boxed_opaque_existential_1(v12 + 7, v12[10]);
    v14 = sub_20C137294();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = *MEMORY[0x277D4F6A8];
    v16 = sub_20C13B254();
    (*(*(v16 - 8) + 104))(v11, v15, v16);
    (*(v32 + 104))(v11, *MEMORY[0x277D4F520], v33);
    sub_20C13B2A4();
    (*(v32 + 8))(v11, v33);
    (*(v36 + 16))(v39, v43, v40);
    (*(v35 + 16))(v38, v34, v37);
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1(v12 + 2, v12[5]);
    sub_20C1399B4();
    v17 = swift_task_alloc();
    v1[34] = v17;
    *(v17 + 16) = "SeymourUI/RemoteBrowsingWorkoutPlanClient.swift";
    *(v17 + 24) = 47;
    *(v17 + 32) = 2;
    *(v17 + 40) = 387;
    *(v17 + 48) = v42;
    v18 = swift_task_alloc();
    v1[35] = v18;
    *v18 = v1;
    v18[1] = sub_20B6C5168;
    v19 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v18, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B526A1C, v17, v19);
  }

  else
  {
    v20 = v1[27];
    v41 = v1[26];
    v21 = v1[24];
    v22 = v1[21];
    v23 = v1[22];
    v25 = v1[18];
    v24 = v1[19];
    v26 = v1[17];
    v27 = sub_20C134E24();
    sub_20B6D8780(&unk_27C762270, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51188], v27);
    swift_willThrow();
    (*(v25 + 8))(v24, v26);
    (*(v23 + 8))(v21, v22);
    (*(v20 + 8))(v43, v41);

    v29 = v1[1];

    return v29();
  }
}

uint64_t sub_20B6C5168()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_20B6C5424;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_20B6C52B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B6C52B8()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[27];
  v11 = v0[26];
  v4 = v0[24];
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  (*(v0[8] + 8))();
  (*(v7 + 8))(v6, v8);
  v1(v4, v5);
  (*(v3 + 8))(v2, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20B6C5424()
{
  v12 = v0[32];
  v1 = v0[27];
  v13 = v0[26];
  v14 = v0[29];
  v2 = v0[24];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  v12(v2, v3);
  (*(v1 + 8))(v14, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20B6C55BC()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  (*(v0[22] + 8))(v0[24], v0[21]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B6C56F8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_20C132EE4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E48, &unk_20C1554C0);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_20C13B0C4();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v2[17] = swift_task_alloc();
  v7 = sub_20C136C64();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  v2[22] = swift_task_alloc();
  v8 = sub_20C135174();
  v2[23] = v8;
  v2[24] = *(v8 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6C5A5C, 0, 0);
}

uint64_t sub_20B6C5A5C()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[3];
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[22];
    v6 = &unk_27C76BC00;
    v7 = &unk_20C1500B0;
LABEL_5:
    sub_20B520158(v5, v6, v7);
    v12 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51B88], v12);
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }

  v8 = v0[18];
  v9 = v0[19];
  v10 = v0[17];
  (*(v0[24] + 32))(v0[26], v0[22], v0[23]);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_20C13B174();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v0[17];
    (*(v0[24] + 8))(v0[26], v0[23]);
    v6 = &qword_27C768690;
    v7 = &unk_20C14FD90;
    v5 = v11;
    goto LABEL_5;
  }

  v35 = v0[24];
  v36 = v0[25];
  v37 = v0[23];
  v38 = v0[26];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[16];
  v19 = v0[14];
  v20 = v0[15];
  v29 = v0[18];
  v30 = v0[13];
  v32 = v0[8];
  v33 = v0[7];
  v34 = v0[9];
  v40 = v0[6];
  v39 = v0[3];
  v31 = v0[2];
  (*(v17 + 32))(v0[21], v0[17]);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v21 = sub_20C133954();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  sub_20C136B54();
  sub_20B520158(v18, &unk_27C76A970, &qword_20C14FC10);
  sub_20C13B1B4();
  v22 = *(v17 + 8);
  v0[27] = v22;
  v0[28] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v16, v29);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v23 = sub_20C137294();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = *MEMORY[0x277D4F6A8];
  v25 = sub_20C13B254();
  (*(*(v25 - 8) + 104))(v20, v24, v25);
  (*(v19 + 104))(v20, *MEMORY[0x277D4F520], v30);
  sub_20C13B2A4();
  (*(v19 + 8))(v20, v30);
  (*(v35 + 16))(v36, v38, v37);
  (*(v32 + 16))(v34, v31, v33);
  sub_20C137844();
  __swift_project_boxed_opaque_existential_1((v39 + 16), *(v39 + 40));
  sub_20C1399B4();
  v26 = swift_task_alloc();
  v0[29] = v26;
  *(v26 + 16) = "SeymourUI/RemoteBrowsingWorkoutPlanClient.swift";
  *(v26 + 24) = 47;
  *(v26 + 32) = 2;
  *(v26 + 40) = 408;
  *(v26 + 48) = v40;
  v27 = swift_task_alloc();
  v0[30] = v27;
  *v27 = v0;
  v27[1] = sub_20B6C6088;
  v28 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v27, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B6D87EC, v26, v28);
}

uint64_t sub_20B6C6088()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_20B6C631C;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_20B6C61D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B6C61D8()
{
  v1 = v0[27];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[18];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1(v5, v6);
  (*(v4 + 8))(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20B6C631C()
{
  v1 = v0[27];
  v11 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v6 + 8))(v7, v8);
  v1(v4, v5);
  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20B6C6488()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v1[3] = swift_task_alloc();
  v2 = sub_20C136C64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6C6580, 0, 0);
}

uint64_t sub_20B6C6580()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 56), *(v0[2] + 80));
  sub_20C13B174();
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_20B520158(v0[3], &qword_27C768690, &unk_20C14FD90);
    v6 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51B88], v6);
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[4];
    v11 = v0[5];
    (*(v11 + 32))(v0[6], v0[3], v10);
    v12 = sub_20C136BB4();
    v13 = sub_20B6B6690(v12);

    v14 = sub_20B7165D0(v13);

    (*(v11 + 8))(v5, v10);

    v15 = v0[1];

    return v15(v14);
  }
}

uint64_t sub_20B6C67D8()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v1[3] = swift_task_alloc();
  v2 = sub_20C136C64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6C68D0, 0, 0);
}

uint64_t sub_20B6C68D0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 56), *(v0[2] + 80));
  sub_20C13B174();
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_20B520158(v0[3], &qword_27C768690, &unk_20C14FD90);
    v6 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51B88], v6);
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[4];
    v11 = v0[5];
    (*(v11 + 32))(v0[6], v0[3], v10);
    v12 = sub_20C136BB4();
    (*(v11 + 8))(v5, v10);
    v13 = *(v12 + 16);

    v14 = v0[1];

    return v14(v13);
  }
}

uint64_t sub_20B6C6B00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v2[4] = swift_task_alloc();
  v3 = sub_20C136C64();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6C6BF8, 0, 0);
}

uint64_t sub_20B6C6BF8()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 56), *(v0[3] + 80));
  sub_20C13B174();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[4], &qword_27C768690, &unk_20C14FD90);
    v4 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    v11 = v0[2];
    (*(v9 + 32))(v8, v0[4], v10);
    v12 = sub_20C136BB4();

    v13 = sub_20B6D7FD4(v12, v11);

    (*(v9 + 8))(v8, v10);

    v14 = v0[1];

    return v14(v13);
  }
}

uint64_t sub_20B6C6E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_20C13B0C4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_20C137374();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E58, &unk_20C1554E0);
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v9 = sub_20C132EE4();
  v4[18] = v9;
  v4[19] = *(v9 - 8);
  v4[20] = swift_task_alloc();
  v10 = sub_20C1378A4();
  v4[21] = v10;
  v4[22] = *(v10 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000, &unk_20C16D940);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v11 = sub_20C136C64();
  v4[29] = v11;
  v4[30] = *(v11 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  v4[33] = swift_task_alloc();
  v12 = sub_20C135174();
  v4[34] = v12;
  v4[35] = *(v12 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6C7294, 0, 0);
}

uint64_t sub_20B6C7294()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[5];
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[33];
    v6 = &unk_27C76BC00;
    v7 = &unk_20C1500B0;
LABEL_5:
    sub_20B520158(v5, v6, v7);
    v13 = sub_20C1356F4();
    sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51B88], v13);
    swift_willThrow();
LABEL_6:

    v15 = v0[1];

    return v15();
  }

  v8 = v0[29];
  v9 = v0[30];
  v10 = v0[28];
  (*(v0[35] + 32))(v0[37], v0[33], v0[34]);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_20C13B174();
  v11 = *(v9 + 48);
  v0[38] = v11;
  v0[39] = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v10, 1, v8) == 1)
  {
    v12 = v0[28];
    (*(v0[35] + 8))(v0[37], v0[34]);
    v6 = &qword_27C768690;
    v7 = &unk_20C14FD90;
    v5 = v12;
    goto LABEL_5;
  }

  v17 = v0[32];
  v18 = v0[29];
  v19 = v0[30];
  v20 = v0[28];
  v21 = v0[26];
  v22 = v0[9];
  v23 = v0[10];
  v24 = v0[2];
  v25 = *(v19 + 32);
  v0[40] = v25;
  v0[41] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v25(v17, v20, v18);
  v26 = sub_20C136BB4();
  *(swift_task_alloc() + 16) = v24;
  sub_20B6B7860(sub_20B6D87CC, v26, MEMORY[0x277D53288], v21);

  v27 = *(v23 + 48);
  v0[42] = v27;
  v0[43] = (v23 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v26) = v27(v21, 1, v22);
  sub_20B520158(v21, &unk_27C772000, &unk_20C16D940);
  v28 = v0[37];
  if (v26 == 1)
  {
    v30 = v0[34];
    v29 = v0[35];
    v31 = v0[32];
    v32 = v0[29];
    v33 = v0[30];
    v34 = sub_20C134E24();
    sub_20B6D8780(&unk_27C762270, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51198], v34);
    swift_willThrow();
    (*(v33 + 8))(v31, v32);
    (*(v29 + 8))(v28, v30);
    goto LABEL_6;
  }

  v36 = v0[35];
  v46 = v0[36];
  v47 = v0[34];
  v38 = v0[23];
  v37 = v0[24];
  v45 = v0[37];
  v40 = v0[21];
  v39 = v0[22];
  v48 = v0[14];
  v41 = v0[5];
  (*(v0[19] + 16))(v0[20], v0[2], v0[18]);

  sub_20C137894();
  (*(v36 + 16))(v46, v45, v47);
  (*(v39 + 16))(v38, v37, v40);
  sub_20C137844();
  __swift_project_boxed_opaque_existential_1((v41 + 16), *(v41 + 40));
  sub_20C139B24();
  v42 = swift_task_alloc();
  v0[44] = v42;
  *(v42 + 16) = "SeymourUI/RemoteBrowsingWorkoutPlanClient.swift";
  *(v42 + 24) = 47;
  *(v42 + 32) = 2;
  *(v42 + 40) = 476;
  *(v42 + 48) = v48;
  v43 = swift_task_alloc();
  v0[45] = v43;
  *v43 = v0;
  v43[1] = sub_20B6C7928;
  v44 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v43, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B6D87EC, v42, v44);
}

uint64_t sub_20B6C7928()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_20B6C7F80;
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    v3 = sub_20B6C7A78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B6C7A78()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 56), *(*(v0 + 40) + 80));
  sub_20C13B174();
  if (v1(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 272);
    v6 = *(v0 + 280);
    v7 = *(v0 + 256);
    v8 = *(v0 + 232);
    v9 = *(v0 + 240);
    v49 = *(v0 + 216);
    v10 = *(v0 + 192);
    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v7, v8);
    (*(v6 + 8))(v4, v5);
    sub_20B520158(v49, &qword_27C768690, &unk_20C14FD90);
  }

  else
  {
    v13 = *(v0 + 336);
    v14 = *(v0 + 200);
    v15 = *(v0 + 72);
    v16 = *(v0 + 16);
    (*(v0 + 320))(*(v0 + 248), *(v0 + 216), *(v0 + 232));
    v17 = sub_20C136BB4();
    *(swift_task_alloc() + 16) = v16;
    sub_20B6B7860(sub_20B6CD45C, v17, MEMORY[0x277D53288], v14);

    v18 = v13(v14, 1, v15);
    v19 = *(v0 + 296);
    v21 = *(v0 + 272);
    v20 = *(v0 + 280);
    v22 = *(v0 + 256);
    v24 = *(v0 + 232);
    v23 = *(v0 + 240);
    v25 = *(v0 + 176);
    v48 = *(v0 + 168);
    v50 = *(v0 + 192);
    v26 = *(v0 + 128);
    v46 = *(v0 + 120);
    v47 = *(v0 + 136);
    if (v18 == 1)
    {
      v27 = *(v23 + 8);
      v44 = *(v0 + 200);
      v27(*(v0 + 248), v24);
      (*(v26 + 8))(v47, v46);
      (*(v25 + 8))(v50, v48);
      v27(v22, v24);
      (*(v20 + 8))(v19, v21);
      sub_20B520158(v44, &unk_27C772000, &unk_20C16D940);
    }

    else
    {
      v28 = *(v0 + 80);
      v43 = *(v0 + 296);
      v45 = *(v0 + 272);
      v29 = *(v0 + 56);
      v30 = *(v0 + 64);
      v38 = *(v0 + 48);
      v39 = *(v0 + 72);
      v41 = *(v0 + 256);
      v42 = *(v0 + 280);
      v31 = *(v0 + 40);
      v40 = *(v0 + 248);
      v32 = *(v0 + 88);
      (*(v28 + 32))();
      __swift_project_boxed_opaque_existential_1((v31 + 56), *(v31 + 80));
      sub_20C137324();
      v33 = *MEMORY[0x277D4F6B0];
      v34 = sub_20C13B254();
      (*(*(v34 - 8) + 104))(v30, v33, v34);
      (*(v29 + 104))(v30, *MEMORY[0x277D4F528], v38);
      sub_20C13B2A4();
      (*(v29 + 8))(v30, v38);
      (*(v28 + 8))(v32, v39);
      v35 = *(v23 + 8);
      v35(v40, v24);
      (*(v26 + 8))(v47, v46);
      (*(v25 + 8))(v50, v48);
      v35(v41, v24);
      (*(v42 + 8))(v43, v45);
    }
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_20B6C7F80()
{
  v1 = v0[35];
  v13 = v0[34];
  v14 = v0[37];
  v12 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[15];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v12, v3);
  (*(v1 + 8))(v14, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20B6C8150(uint64_t a1, uint64_t a2, void (*a3)(double))
{
  v4 = sub_20C132EE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v6);
  LOBYTE(a3) = sub_20C132EC4();
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_20B6C826C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20B6B7D48(a1, a2);
}

uint64_t sub_20B6C8334(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20B6BF964(a1, a2);
}

uint64_t sub_20B6C83E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52A9D4;

  return sub_20B6B9608(a1);
}

uint64_t sub_20B6C8498()
{
  v1 = sub_20C1356F4();
  sub_20B6D8780(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D51B98], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20B6C8598(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B6D87F4;

  return sub_20B6B9B00(a1);
}

uint64_t sub_20B6C8630(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20B6C0A7C(a1, a2);
}

uint64_t sub_20B6C86DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20B6D87F4;

  return sub_20B6C1A44(a1, a2, a3);
}

uint64_t sub_20B6C878C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B6D87F4;

  return sub_20B6C6488();
}

uint64_t sub_20B6C881C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B6D87F4;

  return sub_20B6C67D8();
}

uint64_t sub_20B6C88AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B6D87F4;

  return sub_20B6C6B00(a1);
}

uint64_t sub_20B6C8944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_20B52AC14;

  return sub_20B6C2EC0(a1, a2, a3, a4);
}

uint64_t sub_20B6C8A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_20B52AC14;

  return sub_20B6C3C14(a1, a2, a3, a4, a5);
}

uint64_t sub_20B6C8AD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20B6C56F8(a1);
}

uint64_t sub_20B6C8B6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20B6BB440(a1, a2);
}

uint64_t sub_20B6C8C18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20B6BDA4C(a1);
}

uint64_t sub_20B6C8CB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B6D87F4;

  return sub_20B6BB048();
}

uint64_t sub_20B6C8D44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20B6C2398(a1);
}

uint64_t sub_20B6C8DDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20B6B8D2C(a1);
}

uint64_t sub_20B6C8E74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20B6BE498();
}

uint64_t sub_20B6C8F04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B5ADE04;

  return sub_20B6BA6C0();
}

uint64_t sub_20B6C8F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20B52AC14;

  return sub_20B6C6E50(a1, a2, a3);
}

uint64_t sub_20B6C9044(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20B6C43A4(a1);
}

void *sub_20B6C90DC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_20B6CD5F0(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_20B6C9154(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

void *sub_20B6C9208(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_20B6C92AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C138034();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_20B6D8780(&unk_27C764140, MEMORY[0x277D53BA0], MEMORY[0x277D53BA8]);
  v31 = a1;
  v10 = sub_20C13C7B4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_20B6D8780(&qword_27C763F00, MEMORY[0x277D53BA0], MEMORY[0x277D53BB0]);
      v19 = sub_20C13C894();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20B70CB30();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_20B6CBCEC(v13, MEMORY[0x277D53BA0], &unk_27C764140, MEMORY[0x277D53BA0], MEMORY[0x277D53BA8]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_20B6C9598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C133524();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_20B6D8780(&qword_27C763F08, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
  v31 = a1;
  v10 = sub_20C13C7B4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_20B6D8780(&qword_27C764160, MEMORY[0x277D4FF88], MEMORY[0x277D4FF98]);
      v19 = sub_20C13C894();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20B70CB58();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_20B6CBCEC(v13, MEMORY[0x277D4FF88], &qword_27C763F08, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_20B6C9884(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *v1;
  sub_20C13E164();
  sub_20B964064(v3);
  sub_20C13CA64();

  v5 = sub_20C13E1B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 14;
  }

  v20 = v1;
  v8 = ~v6;
  while (2)
  {
    v9 = 0xED000073676E6952;
    v10 = 0x7974697669746361;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xE700000000000000;
        v10 = 0x7261426E727562;
        break;
      case 2:
        v9 = 0xE700000000000000;
        v11 = 0x636E65646163;
        goto LABEL_17;
      case 3:
        v9 = 0xE800000000000000;
        v10 = 0x65636E6174736964;
        break;
      case 4:
        v9 = 0xE600000000000000;
        v10 = 0x796772656E65;
        break;
      case 5:
        v10 = 0x7461527472616568;
        v9 = 0xE900000000000065;
        break;
      case 6:
        v9 = 0xE900000000000074;
        v10 = 0x6867696C68676968;
        break;
      case 7:
        v9 = 0xE900000000000079;
        v10 = 0x7469736E65746E69;
        break;
      case 8:
        v9 = 0xE700000000000000;
        v11 = 0x6E696C636E69;
LABEL_17:
        v10 = v11 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 9:
        v9 = 0xE300000000000000;
        v10 = 7172210;
        break;
      case 0xA:
        v9 = 0xE900000000000072;
        v10 = 0x6F74617261706573;
        break;
      case 0xB:
        v10 = 7172211;
        v9 = 0xE300000000000000;
        break;
      case 0xC:
        v9 = 0xE800000000000000;
        v10 = 0x73736572676F7270;
        break;
      case 0xD:
        v9 = 0xE500000000000000;
        v10 = 0x72656D6974;
        break;
      default:
        break;
    }

    v12 = 0x7974697669746361;
    v13 = 0xED000073676E6952;
    switch(v3)
    {
      case 1:
        v13 = 0xE700000000000000;
        if (v10 == 0x7261426E727562)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      case 2:
        v13 = 0xE700000000000000;
        v14 = 0x636E65646163;
        goto LABEL_47;
      case 3:
        v13 = 0xE800000000000000;
        if (v10 != 0x65636E6174736964)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 4:
        v13 = 0xE600000000000000;
        if (v10 != 0x796772656E65)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 5:
        v13 = 0xE900000000000065;
        if (v10 != 0x7461527472616568)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 6:
        v13 = 0xE900000000000074;
        if (v10 != 0x6867696C68676968)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 7:
        v13 = 0xE900000000000079;
        if (v10 != 0x7469736E65746E69)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 8:
        v13 = 0xE700000000000000;
        v14 = 0x6E696C636E69;
LABEL_47:
        if (v10 != (v14 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 9:
        v13 = 0xE300000000000000;
        if (v10 != 7172210)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 10:
        v13 = 0xE900000000000072;
        v12 = 0x6F74617261706573;
        goto LABEL_41;
      case 11:
        v13 = 0xE300000000000000;
        if (v10 != 7172211)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 12:
        v13 = 0xE800000000000000;
        if (v10 != 0x73736572676F7270)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 13:
        v13 = 0xE500000000000000;
        if (v10 != 0x72656D6974)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      default:
LABEL_41:
        if (v10 != v12)
        {
          goto LABEL_43;
        }

LABEL_42:
        if (v9 != v13)
        {
LABEL_43:
          v15 = sub_20C13DFF4();

          if (v15)
          {
            goto LABEL_51;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            return 14;
          }

          continue;
        }

LABEL_51:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *v2;
        v21 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20B70CF10();
          v18 = v21;
        }

        v16 = *(*(v18 + 48) + v7);
        sub_20B6CBFE8(v7);
        *v20 = v21;
        return v16;
    }
  }
}

uint64_t sub_20B6C9D3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_20C13E164();
  v4 = sub_20C137F94();
  MEMORY[0x20F2F58E0](v4);
  v5 = sub_20C13E1B4();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 7;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = sub_20C137F94();
    if (v9 == sub_20C137F94())
    {
      break;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 7;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20B70D130();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v7);
  sub_20B6CC324(v7);
  result = v13;
  *v2 = v14;
  return result;
}

uint64_t sub_20B6C9E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C135C54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_20B6D8780(&qword_27C762F50, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
  v31 = a1;
  v10 = sub_20C13C7B4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_20B6D8780(&qword_27C7640F0, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
      v19 = sub_20C13C894();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20B70D144();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_20B6CBCEC(v13, MEMORY[0x277D51FE0], &qword_27C762F50, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_20B6CA148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C135C84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_20C13E164();
  sub_20C135C74();
  v10 = sub_20C13E1B4();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v24 = v2;
    v25 = v6;
    v26 = v5;
    v27 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      v15 = MEMORY[0x277D52060];
      sub_20B6D8600(*(v9 + 48) + v14 * v12, v8, MEMORY[0x277D52060]);
      v16 = MEMORY[0x20F2ED3D0](v8, a1);
      sub_20B6D8668(v8, v15);
      if (v16)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v17 = 1;
        a2 = v27;
        goto LABEL_10;
      }
    }

    v18 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    v28 = *v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20B70CD04();
      v20 = v28;
    }

    v21 = MEMORY[0x277D52060];
    a2 = v27;
    sub_20B6D86C8(*(v20 + 48) + v14 * v12, v27, MEMORY[0x277D52060]);
    sub_20B6CD0F0(v12, MEMORY[0x277D52060], v21, MEMORY[0x277D52058]);
    v17 = 0;
    *v18 = v28;
LABEL_10:
    v6 = v25;
    v5 = v26;
  }

  else
  {
    v17 = 1;
  }

  return (*(v6 + 56))(a2, v17, 1, v5);
}

uint64_t sub_20B6CA3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = sub_20C134E04();
  v6 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_20C1333E4();
  v8 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763F18, &unk_20C155F30);
  MEMORY[0x28223BE20](v63);
  v11 = &v45 - v10;
  v66 = type metadata accessor for WorkoutPlanPreference(0);
  v12 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v58 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v45 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  v19 = *v3;
  sub_20C13E164();
  v65 = a1;
  sub_20BBC6470(v67);
  v20 = sub_20C13E1B4();
  v21 = v19 + 56;
  v64 = v19;
  v22 = -1 << *(v19 + 32);
  v23 = v20 & ~v22;
  v62 = v21;
  if (((*(v21 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
    v40 = 1;
    return (*(v12 + 56))(a2, v40, 1, v66);
  }

  v46 = v3;
  v48 = a2;
  v61 = ~v22;
  v47 = v12;
  v24 = *(v12 + 72);
  v51 = (v8 + 32);
  v56 = (v8 + 8);
  v25 = (v6 + 8);
  v50 = (v6 + 32);
  v26 = v60;
  v55 = v24;
  v54 = v18;
  v49 = v25;
  while (1)
  {
    v27 = v24 * v23;
    sub_20B6D8600(*(v64 + 48) + v24 * v23, v18, type metadata accessor for WorkoutPlanPreference);
    v28 = *(v63 + 48);
    sub_20B6D8600(v18, v11, type metadata accessor for WorkoutPlanPreference);
    sub_20B6D8600(v65, &v11[v28], type metadata accessor for WorkoutPlanPreference);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v29 = v58;
    sub_20B6D8600(v11, v58, type metadata accessor for WorkoutPlanPreference);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v53;
      v31 = v18;
      v32 = v59;
      (*v50)(v53, &v11[v28], v59);
      v33 = MEMORY[0x20F2EC550](v29, v30);
      v34 = *v25;
      (*v25)(v30, v32);
      sub_20B6D8668(v31, type metadata accessor for WorkoutPlanPreference);
      v34(v29, v32);
      if (v33)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    sub_20B6D8668(v18, type metadata accessor for WorkoutPlanPreference);
    (*v25)(v29, v59);
LABEL_4:
    sub_20B520158(v11, &qword_27C763F18, &unk_20C155F30);
LABEL_5:
    v23 = (v23 + 1) & v61;
    if (((*(v62 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      v40 = 1;
      a2 = v48;
      goto LABEL_19;
    }
  }

  sub_20B6D8600(v11, v26, type metadata accessor for WorkoutPlanPreference);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B6D8668(v18, type metadata accessor for WorkoutPlanPreference);
    (*v56)(v26, v57);
    goto LABEL_4;
  }

  v35 = v52;
  v36 = v57;
  (*v51)(v52, &v11[v28], v57);
  v37 = sub_20C1333C4();
  v38 = *v56;
  (*v56)(v35, v36);
  sub_20B6D8668(v18, type metadata accessor for WorkoutPlanPreference);
  v39 = v36;
  v25 = v49;
  v38(v26, v39);
  if ((v37 & 1) == 0)
  {
LABEL_12:
    sub_20B6D8668(v11, type metadata accessor for WorkoutPlanPreference);
    v26 = v60;
    v24 = v55;
    v18 = v54;
    goto LABEL_5;
  }

LABEL_16:
  sub_20B6D8668(v11, type metadata accessor for WorkoutPlanPreference);
  v41 = v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v41;
  v67[0] = *v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20B70D16C();
    v43 = v67[0];
  }

  a2 = v48;
  sub_20B6D86C8(*(v43 + 48) + v27, v48, type metadata accessor for WorkoutPlanPreference);
  sub_20B6CC4D0(v23);
  v40 = 0;
  *v41 = v67[0];
LABEL_19:
  v12 = v47;
  return (*(v12 + 56))(a2, v40, 1, v66);
}

uint64_t sub_20B6CAA78(char a1, void (*a2)(void))
{
  v5 = *v2;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](a1 & 1);
  v6 = sub_20C13E1B4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 2;
  }

  v9 = ~v7;
  while (*(*(v5 + 48) + v8) != (a1 & 1))
  {
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 2;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v8);
  sub_20B6CCA28(v8);
  result = v13;
  *v2 = v14;
  return result;
}

uint64_t sub_20B6CAB88(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_20C13DB74();

    if (v6)
    {
      v7 = sub_20B6CBB94(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_20B5E5C28();
  v10 = sub_20C13D5E4();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_20C13D5F4();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20B70CB94();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_20B6CCBD0(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_20B6CAD10(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_20C13E164();
  sub_20C13CA64();
  v6 = sub_20C13E1B4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_20C13DFF4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20B70CBA8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_20B6CCD70(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_20B6CAE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C135174();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_20B6D8780(&unk_27C764640, MEMORY[0x277D515D0], MEMORY[0x277D515D8]);
  v31 = a1;
  v10 = sub_20C13C7B4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_20B6D8780(&qword_27C763F30, MEMORY[0x277D515D0], MEMORY[0x277D515E0]);
      v19 = sub_20C13C894();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20B70D914();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_20B6CBCEC(v13, MEMORY[0x277D515D0], &unk_27C764640, MEMORY[0x277D515D0], MEMORY[0x277D515D8]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_20B6CB138(uint64_t a1)
{
  v2 = *v1;
  sub_20C13E164();
  sub_20C13C344();
  v3 = sub_20C13E1B4();
  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while (1)
  {

    v7 = sub_20C13C324();

    if (v7)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20B70DC1C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v5);
  sub_20B6CCF34(v5);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_20B6CB25C(unsigned __int8 a1)
{
  v3 = *v1;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](a1);
  v4 = sub_20C13E1B4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 5;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 5;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20B70DD6C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_20B6CCA28(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_20B6CB364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ButtonAction.ActionType(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_20C13E164();
  sub_20BDA4D9C(v26);
  v10 = sub_20C13E1B4();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v22 = v2;
    v23 = v6;
    v24 = v5;
    v25 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_20B6D8600(*(v9 + 48) + v14 * v12, v8, type metadata accessor for ButtonAction.ActionType);
      v15 = sub_20BDA80E4(v8, a1);
      sub_20B6D8668(v8, type metadata accessor for ButtonAction.ActionType);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v25;
        goto LABEL_10;
      }
    }

    v17 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    *&v26[0] = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20B70CF24();
      v19 = *&v26[0];
    }

    a2 = v25;
    sub_20B6D86C8(*(v19 + 48) + v14 * v12, v25, type metadata accessor for ButtonAction.ActionType);
    sub_20B6CD0F0(v12, type metadata accessor for ButtonAction.ActionType, type metadata accessor for ButtonAction.ActionType, sub_20BDA4D9C);
    v16 = 0;
    *v17 = *&v26[0];
LABEL_10:
    v6 = v23;
    v5 = v24;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_20B6CB5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C133244();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_20B6D8780(&qword_27C764180, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  v31 = a1;
  v10 = sub_20C13C7B4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_20B6D8780(&qword_27C762F98, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v19 = sub_20C13C894();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20B70D7AC();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_20B6CBCEC(v13, MEMORY[0x277CC9AF8], &qword_27C764180, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_20B6CB8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C137594();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_20B6D8780(&qword_27C763F10, MEMORY[0x277D534C8], MEMORY[0x277D534D0]);
  v31 = a1;
  v10 = sub_20C13C7B4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_20B6D8780(&qword_27C764450, MEMORY[0x277D534C8], MEMORY[0x277D534D8]);
      v19 = sub_20C13C894();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20B70E15C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_20B6CBCEC(v13, MEMORY[0x277D534C8], &qword_27C763F10, MEMORY[0x277D534C8], MEMORY[0x277D534D0]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_20B6CBB94(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_20C13DB34();
  v5 = swift_unknownObjectRetain();
  v6 = sub_20B705CB4(v5, v4);
  v15 = v6;

  v7 = sub_20C13D5E4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_20B5E5C28();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_20C13D5F4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_20B6CCBD0(v9);
  result = sub_20C13D5F4();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B6CBCEC(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = sub_20C13DAB4();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        sub_20B6D8780(v40, v41, v42);
        v24 = sub_20C13C7B4();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}
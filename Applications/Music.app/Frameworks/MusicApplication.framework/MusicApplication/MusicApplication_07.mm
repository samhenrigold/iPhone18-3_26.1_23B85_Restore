unint64_t sub_98B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEC0, &unk_AFA520);
    v3 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_2EC880(v5);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_98CA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBBF0, &qword_AFA548);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBBF8, &unk_AFA550);
    v7 = sub_ABB0C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v20 = *(v3 + 72);
    v21 = v8;

    while (1)
    {
      sub_15F84(v9, v5, &qword_DEBBF0, &qword_AFA548);
      result = sub_2EC9AC(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0, &qword_AF7AF0);
      sub_36B0C(v5, v13 + *(*(v14 - 8) + 72) * v12, &unk_DFEEE0, &qword_AF7AF0);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
      result = sub_36B0C(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &unk_E00040, &unk_AFA530);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v20;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_98EDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBB88, &qword_AFA468);
    v3 = sub_ABB0C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_90090(v7, v8);
      result = sub_2EBF88(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99008(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2EBF88(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99118(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2EBF88(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99214(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDD8, &qword_AFA820);
    v3 = sub_ABB0C0();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[1];
      v21 = *v4;
      v22 = v6;
      v7 = v4[3];
      *v23 = v4[2];
      *&v23[16] = v7;
      v8 = v4[5];
      *&v23[32] = v4[4];
      *&v23[48] = v8;
      *&v23[64] = *(v4 + 12);
      v24 = v21;
      v25 = v22;
      v26 = *v23;
      sub_15F84(&v21, v20, &qword_DEBDE0, &qword_AFA828);
      result = sub_2EC31C(&v24);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 40 * result;
      v12 = v25;
      *v11 = v24;
      *(v11 + 16) = v12;
      *(v11 + 32) = v26;
      v13 = (v3[7] + (result << 6));
      v14 = *&v23[40];
      v15 = *&v23[24];
      v16 = *&v23[56];
      *v13 = *&v23[8];
      v13[1] = v15;
      v13[2] = v14;
      v13[3] = v16;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_11;
      }

      v3[2] = v19;
      if (!i)
      {

        return v3;
      }

      v4 = (v4 + 104);
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99394(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBD90, &unk_B0A360);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v11, &qword_DEBD98, &qword_AFA7C0);
      v5 = v11;
      result = sub_2ECB8C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_9B098(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_994C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFF070, &qword_AFA818);
    v3 = sub_ABB0C0();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_2F5A90(v5);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_995A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDC8, &qword_AFA808);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDD0, &qword_AFA810);
    v7 = sub_ABB0C0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_15F84(v9, v5, &qword_DEBDC8, &qword_AFA808);
      result = sub_2EC048(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_AB3820();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 32 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDC0, &qword_AFA7F8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF080, &qword_AFA800);
    v7 = sub_ABB0C0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_15F84(v9, v5, &qword_DEBDC0, &qword_AFA7F8);
      result = sub_2EC048(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_AB3820();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 48 * v13);
      v17 = *(v8 + 1);
      v18 = *(v8 + 2);
      *v16 = *v8;
      v16[1] = v17;
      v16[2] = v18;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99994(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEFB0, &qword_AFA670);
  v3 = sub_ABB0C0();

  v4 = *(a1 + 240);
  v56 = *(a1 + 224);
  v57 = v4;
  v5 = *(a1 + 272);
  v58 = *(a1 + 256);
  v59 = v5;
  v6 = *(a1 + 176);
  v52 = *(a1 + 160);
  v53 = v6;
  v7 = *(a1 + 208);
  v54 = *(a1 + 192);
  v55 = v7;
  v8 = *(a1 + 112);
  v48 = *(a1 + 96);
  v49 = v8;
  v9 = *(a1 + 144);
  v50 = *(a1 + 128);
  v51 = v9;
  v10 = *(a1 + 48);
  v44 = *(a1 + 32);
  v45 = v10;
  v11 = *(a1 + 80);
  v46 = *(a1 + 64);
  v47 = v11;
  v13 = *(&v44 + 1);
  v12 = v44;
  sub_15F84(&v44, v43, &qword_DEBCD8, &qword_AFA678);
  result = sub_2EBF88(v12, v13);
  if (v15)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v16 = (a1 + 288);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v17 = (v3[6] + 16 * result);
    *v17 = v12;
    v17[1] = v13;
    v18 = (v3[7] + 240 * result);
    v19 = v45;
    v20 = v47;
    v18[1] = v46;
    v18[2] = v20;
    *v18 = v19;
    v21 = v48;
    v22 = v49;
    v23 = v51;
    v18[5] = v50;
    v18[6] = v23;
    v18[3] = v21;
    v18[4] = v22;
    v24 = v52;
    v25 = v53;
    v26 = v55;
    v18[9] = v54;
    v18[10] = v26;
    v18[7] = v24;
    v18[8] = v25;
    v27 = v56;
    v28 = v57;
    v29 = v59;
    v18[13] = v58;
    v18[14] = v29;
    v18[11] = v27;
    v18[12] = v28;
    v30 = v3[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      break;
    }

    v3[2] = v32;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v33 = v16 + 16;
    v34 = v16[13];
    v56 = v16[12];
    v57 = v34;
    v35 = v16[15];
    v58 = v16[14];
    v59 = v35;
    v36 = v16[9];
    v52 = v16[8];
    v53 = v36;
    v37 = v16[11];
    v54 = v16[10];
    v55 = v37;
    v38 = v16[5];
    v48 = v16[4];
    v49 = v38;
    v39 = v16[7];
    v50 = v16[6];
    v51 = v39;
    v40 = v16[1];
    v44 = *v16;
    v45 = v40;
    v41 = v16[3];
    v46 = v16[2];
    v47 = v41;
    v13 = *(&v44 + 1);
    v12 = v44;
    sub_15F84(&v44, v43, &qword_DEBCD8, &qword_AFA678);
    result = sub_2EBF88(v12, v13);
    v16 = v33;
    if (v42)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_99BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBC48, &qword_AFA5B8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF50, &qword_AFA5C0);
    v7 = sub_ABB0C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_15F84(v9, v5, &qword_DEBC48, &qword_AFA5B8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_2EC75C(*v5, v12);
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
      v18 = sub_AB31C0();
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99DBC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_ABB0C0();

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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99EB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEB0, &qword_AFA510);
    v3 = sub_ABB0C0();

    v4 = a1 + 48;
    while (1)
    {
      v21 = v1;
      v5 = *(v4 - 16);
      v6 = *(v4 - 8);
      v7 = *v4;
      v8 = *(v4 + 8);
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      v11 = *(v4 + 32);
      v12 = *(v4 + 40);

      v13 = v7;

      result = sub_2EBF88(v5, v6);
      if (v15)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      v17 = v3[7] + 48 * result;
      *v17 = v13;
      *(v17 + 8) = v8;
      *(v17 + 16) = v10;
      *(v17 + 24) = v9;
      *(v17 + 32) = v11;
      *(v17 + 40) = v12;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v4 += 64;
      v3[2] = v20;
      v1 = v21 - 1;
      if (v21 == 1)
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_9A004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBC18, &unk_AFA580);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBC20, &unk_B0A2D0);
    v7 = sub_ABB0C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v20 = *(v3 + 72);
    v21 = v8;

    while (1)
    {
      sub_15F84(v9, v5, &qword_DEBC18, &unk_AFA580);
      result = sub_2ECD38(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20, &qword_AFA570);
      sub_36B0C(v5, v13 + *(*(v14 - 8) + 72) * v12, &unk_DFEF20, &qword_AFA570);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
      result = sub_36B0C(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &unk_E00040, &unk_AFA530);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v20;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_9A238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF30, &qword_AFA578);
    v3 = sub_ABB0C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2ECCE8(v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_9A330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBC40, &qword_AFA5B0);
  v3 = sub_ABB0C0();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_2EC514(v4);
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

    v8 = sub_2EC514(v4);
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

unint64_t sub_9A440(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBC30, &qword_AFA598);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v11, &qword_DEBC38, &qword_AFA5A0);
      v5 = v11;
      result = sub_2F5AD8();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_9ACFC(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t _sSo15NSTextAlignmentV16MusicApplicationE012advancedTextB6PolicyAbC0fB0O_tcfC_0(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    v4 = 2;
    if (a1 == 4)
    {
      v4 = 0;
    }

    if (a1 == 3)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v1 = [objc_opt_self() sharedApplication];
      v2 = [v1 userInterfaceLayoutDirection] != &dword_0 + 1;

      return 2 * v2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 4;
  }
}

unint64_t _s16MusicApplication13TextAlignmentO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_9A67C()
{
  result = qword_DEBB60;
  if (!qword_DEBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBB60);
  }

  return result;
}

unint64_t sub_9A6D4()
{
  result = qword_DEBB68;
  if (!qword_DEBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBB68);
  }

  return result;
}

unint64_t sub_9A72C()
{
  result = qword_DEBB70;
  if (!qword_DEBB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBB70);
  }

  return result;
}

unint64_t sub_9A784()
{
  result = qword_DEBB78;
  if (!qword_DEBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBB78);
  }

  return result;
}

unint64_t sub_9A7DC()
{
  result = qword_DEBB80;
  if (!qword_DEBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBB80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextAlignment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TextAlignment(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TextCapitalization(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextCapitalization(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_9AAF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_9AB44(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 4 * -a2;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_9ABF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_9AC3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

_OWORD *sub_9ACFC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_9AE20(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    v6 = a5;
  }

  else
  {
    v7 = a3;
  }

  return result;
}

uint64_t sub_9AE98(uint64_t result)
{
  if ((result - 1) >= 3)
  {
  }

  return result;
}

uint64_t sub_9AEAC(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return swift_errorRetain();
  }

  return result;
}

id sub_9AEC0(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {

    return swift_errorRetain();
  }

  else
  {

    return a2;
  }
}

double sub_9AF20(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double TextLabelProperties.init(textAttributes:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = 1;
  result = 16.0;
  *(a2 + 64) = xmmword_AF9C80;
  return result;
}

double TextLabelProperties.init(identifier:attributedTextProvider:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = xmmword_AFA860;
  *(a5 + 48) = xmmword_AF82C0;
  result = 16.0;
  *(a5 + 64) = xmmword_AF9C80;
  return result;
}

double TextLabelProperties.init(textAttributor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = 1;
  result = 16.0;
  *(a2 + 64) = xmmword_AF9C80;
  return result;
}

void TextLabelProperties.scaledValue(forValue:text:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  if ((*(v3 + 40) & 0x8000000000000000) != 0)
  {
    v9 = *(v3 + 16);
    sub_2F118(v3, aBlock);
    v12 = v9(a1, a2);
    v13 = [v12 length];
    if (v13 < 1)
    {
    }

    else
    {
      v14 = v13;
      v19 = 0;
      v20 = 0;
      v15 = swift_allocObject();
      *(v15 + 16) = &v19;
      *(v15 + 24) = &v20;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_9B94C;
      *(v16 + 24) = v15;
      aBlock[4] = sub_9B954;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_9B8A0;
      aBlock[3] = &block_descriptor_13;
      v17 = _Block_copy(aBlock);

      [v12 enumerateAttribute:NSFontAttributeName inRange:0 options:v14 usingBlock:{0, v17, v19}];
      _Block_release(v17);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
      }

      else
      {
        v18 = v20;

        if (v18)
        {
          [v18 _scaledValueForValue:a3];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v6 = *(v3 + 48);
    sub_2F118(v3, aBlock);
    v7 = [v6 _fontAdjustedForCurrentContentSizeCategory];
    if (v7)
    {
      v8 = v7;

      v6 = v8;
    }

    [v6 _scaledValueForValue:a3];

    sub_2F174(v4);
  }
}

void TextLabelProperties.hash(into:)(uint64_t a1)
{
  if ((*(v1 + 40) & 0x8000000000000000) != 0)
  {
    v2 = sub_AB9540();
    sub_ABB5D0(~v2);
  }

  else
  {
    TextAttributes.hash(into:)(a1);
  }

  sub_ABB5D0(*(v1 + 56));
  v3 = *(v1 + 64);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_ABB600(*&v3);
  v4 = *(v1 + 72);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_ABB600(*&v4);
}

Swift::Int TextLabelProperties.hashValue.getter()
{
  sub_ABB5C0();
  TextLabelProperties.hash(into:)(v1);
  return sub_ABB610();
}

Swift::Int sub_9B7E0(uint64_t a1)
{
  sub_ABB5C0();
  TextLabelProperties.hash(into:)(v2);
  return sub_ABB610();
}

uint64_t sub_9B81C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s16MusicApplication19TextLabelPropertiesV2eeoiySbAC_ACtFZ_0(v8, v9) & 1;
}

uint64_t sub_9B8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_9ACFC(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_9BC10(v13);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s16MusicApplication19TextLabelPropertiesV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[5];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 40);
  if (v6 < 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    v13 = v4 == v7 && v5 == v8;
    if (!v13 && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(a2 + 24);
    v11 = a1[6];
    v12 = a1[4];
    v16[0] = v4;
    v16[1] = v5;
    v17 = *(a1 + 1);
    v18 = v12;
    v19 = v6;
    v20 = v11;
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_14;
    }

    v21 = v7;
    v22 = v8;
    v23 = v10;
    v24 = v9;
    if (!_s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(v16, &v21))
    {
      goto LABEL_14;
    }
  }

  if (a1[7] != *(a2 + 56) || (sub_7FD28(), (sub_AB38E0() & 1) == 0))
  {
LABEL_14:
    v14 = 0;
    return v14 & 1;
  }

  v14 = sub_AB38E0();
  return v14 & 1;
}

unint64_t sub_9BADC()
{
  result = qword_DEBE00;
  if (!qword_DEBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEBE00);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_9BB4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_9BB9C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 4 * -a2;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9BC10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E40, &unk_AF8050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_9BD38()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  *&v0[qword_DEBE90] = 0;
  *&v0[qword_DEBE98] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for ComposersViewController(0);
  v1 = objc_msgSendSuper2(&v11, "init");
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v2 = sub_AB9260();

  [v1 setTitle:v2];

  v3 = sub_AB9260();
  [v1 setPlayActivityFeatureName:v3];

  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (!v6)
  {
    v7 = sub_AB9260();
    [v1 setRestorationIdentifier:v7];
  }

  v8 = [v4 currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (!v9)
  {
    type metadata accessor for RestorationClass();
    [v1 setRestorationClass:swift_getObjCClassFromMetadata()];
  }

  return v1;
}

void sub_9BFD0(uint64_t a1)
{
  *(a1 + qword_DEBE90) = 0;
  *(a1 + qword_DEBE98) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_9C044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  v2 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;

  v4 = [v2 initWithProperties:isa relationships:0];

  qword_E70C40 = v4;
}

uint64_t sub_9C100()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v1 = qword_DEBE90;
  if (*&v0[qword_DEBE90])
  {
    v2 = *&v0[qword_DEBE90];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v3 = sub_AB9320();
    v5 = v4;
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v6 = v0;
    v2 = sub_4309D4(v3, v5);

    *&v0[v1] = v2;
  }

  return v2;
}

void sub_9C28C(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComposersViewController(0);
  v11.receiver = a1;
  v11.super_class = v7;
  v8 = a1;
  objc_msgSendSuper2(&v11, "viewDidAppear:", a3);
  v9 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v10 = MetricsEvent.Page.libraryComposersList.unsafeMutableAddressor();
  sub_9D330(v10, v6);
  (*(&stru_68.reloff + (swift_isaMask & *v9)))(v6, 0, 0, 0, 0, 0);
  sub_9D394(v6);
}

void sub_9C3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_9C5D0();
  }
}

double sub_9C3FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ComposersViewController(0);
  v4 = v10.receiver;
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v5 = sub_9C100();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 88) = sub_9D328;
  *(v5 + 96) = v6;

  sub_17654(v7, v8);

  return result;
}

double sub_9C4CC()
{
  v1 = v0;
  sub_9CB28();
  v2 = qword_DFE2F0;
  v3 = *(v0 + qword_DFE2F0);
  if (v3)
  {
    LOBYTE(v3) = [v3 isEmpty];
  }

  sub_3E2E84(v3);

  v4 = sub_9C100();
  v5 = *(v1 + v2);
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    v13 = *(v4 + 64);
    *(v4 + 64) = 1;
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_430320();
    goto LABEL_11;
  }

  v6 = (*(*(v1 + qword_DEBE90) + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 != 0;
    v11 = *(v4 + 64);
    *(v4 + 64) = v10;
    if (v11 == v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = *(v4 + 64);
  *(v4 + 64) = 0;
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_11:

  return result;
}

void sub_9C5D0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v3 = objc_opt_self();
  sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  v4 = v2;
  v5 = static MPModelAlbum.defaultMusicKind.getter();
  v6 = [v3 kindWithAlbumKind:v5];

  [v4 setItemKind:v6];
  v7 = sub_AB9260();
  [v4 setLabel:v7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF4EC0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  isa = sub_AB9740().super.isa;
  v11 = [objc_opt_self() propertySetWithProperties:isa];

  [v4 setSectionProperties:v11];
  if (qword_DE6788 != -1)
  {
    swift_once();
  }

  [v4 setItemProperties:qword_E70C40];

  if (*(*(sub_9C100() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
  {

    v12 = sub_AB9260();
  }

  else
  {
    v12 = 0;
  }

  [v4 setFilterText:v12];

  v13 = [v1 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(v4);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[4] = sub_9D2C0;
  v16[5] = v14;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_151E0;
  v16[3] = &block_descriptor_14;
  v15 = _Block_copy(v16);

  [v4 performWithResponseHandler:v15];
  _Block_release(v15);
}

double sub_9C91C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9D320, v5);

  return result;
}

void sub_9C9C0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    sub_3B4724(a2);
  }
}

void sub_9CA28(void *a1)
{
  v2 = v1;
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_AB92A0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  objc_allocWithZone(type metadata accessor for AlbumsViewController(0));
  v9 = a1;
  v13 = sub_13B3E0(3, a1, 1, v6, v8);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 pushViewController:v13 animated:1];

    v12 = v11;
  }

  else
  {
    v12 = v13;
  }
}

void *sub_9CB28()
{
  v1 = qword_DEBE98;
  if (*&v0[qword_DEBE98])
  {
    v2 = *&v0[qword_DEBE98];
  }

  else
  {
    v2 = sub_9CB90(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_9CB90(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v3 = sub_3E2914(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v6 = v3[7];
    v3[6] = sub_9D2B0;
    v3[7] = v4;

    sub_17654(v5, v6);

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v3[27];
    v9 = v3[28];
    v3[27] = sub_9D2B8;
    v3[28] = v7;

    sub_17654(v8, v9);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_9CCCC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!(_swiftEmptyArrayStorage >> 62) || !sub_ABB060())
    {
      return &_swiftEmptySetSingleton;
    }

    sub_118B4(_swiftEmptyArrayStorage);
    return v11;
  }

  v3 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF82B0;
  v5 = v3;
  result = [v5 loadViewIfNeeded];
  v7 = *&v5[qword_DFE2F8];
  if (v7)
  {
    v8 = v7;

    *(inited + 32) = v8;
    sub_118B4(inited);
    v10 = v9;
    swift_setDeallocating();
    swift_arrayDestroy();

    return v10;
  }

  __break(1u);
  return result;
}

__n128 sub_9CDFC@<Q0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v6 = Strong;
  v7 = sub_9C100();

  v8 = (*(v7 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v9 = v8[1];
  if (!v9)
  {

LABEL_10:
    v14 = *(a1 + 72);
    v12 = *(a1 + 80);
    v13 = *(a1 + 64);
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    v18 = *a1;
    v19 = *(a1 + 16);
    v16 = v23;
    v15 = a1;
    goto LABEL_11;
  }

  v10 = *v8;

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  if (qword_DE6BD0 != -1)
  {
    swift_once();
  }

  v23[3] = xmmword_E717A8;
  v23[4] = xmmword_E717B8;
  v23[1] = xmmword_E71788;
  v23[2] = xmmword_E71798;
  v23[0] = xmmword_E71778;
  v12 = qword_E717C8;
  v24 = qword_E717C8;
  v14 = *(&xmmword_E717B8 + 1);
  v13 = xmmword_E717B8;
  v20 = xmmword_E71798;
  v21 = xmmword_E717A8;
  v18 = xmmword_E71778;
  v19 = xmmword_E71788;
  v15 = v23;
  v16 = &v22;
LABEL_11:
  sub_576EC(v15, v16);
  *a3 = v18;
  *(a3 + 16) = v19;
  result = v21;
  *(a3 + 32) = v20;
  *(a3 + 48) = v21;
  *(a3 + 64) = v13;
  *(a3 + 72) = v14;
  *(a3 + 80) = v12;
  return result;
}

double sub_9CF64()
{

  return result;
}

id sub_9CFBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_9CFFC(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for ComposersViewController(uint64_t a1)
{
  result = qword_DEBEC8;
  if (!qword_DEBEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9D114(char *a1, id a2)
{
  v3 = [a2 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &a1[OBJC_IVAR____TtC16MusicApplication10PersonCell_personName];
  *v8 = v5;
  *(v8 + 1) = v7;

  v9 = *&a1[OBJC_IVAR____TtC16MusicApplication10PersonCell_textComponents];

  v10 = String.trim()();

  swift_beginAccess();
  v9[7] = v10;

  sub_2EB704();
  [a1 setNeedsLayout];
  v11 = &a1[OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkSize];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_42A2EC();
  v12 = &a1[OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkSize];
  *v12 = 0;
  *(v12 + 1) = 0;
  sub_42A2EC();
  v13 = &a1[OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkEdgeInsets];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_42A2EC();
  v14 = &a1[OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkEdgeInsets];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  return sub_42A2EC();
}

uint64_t sub_9D278()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_9D2E0()
{

  return swift_deallocObject();
}

uint64_t sub_9D330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9D394(uint64_t a1)
{
  v2 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id JSSocialOnboardingWelcomeViewController.__allocating_init(socialOnboardingWelcomeViewModel:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v3[v4] = TextDrawing.Cache.init()();
  *&v3[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView] = 0;
  v5 = &v3[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_socialOnboardingWelcomeViewModel] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

id JSSocialOnboardingWelcomeViewController.init(socialOnboardingWelcomeViewModel:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v1[v4] = TextDrawing.Cache.init()();
  *&v1[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView] = 0;
  v5 = &v1[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_socialOnboardingWelcomeViewModel] = a1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

void JSSocialOnboardingWelcomeViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v0 + v1) = TextDrawing.Cache.init()();
  *(v0 + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize);
  *v2 = 0;
  v2[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

Swift::Void __swiftcall JSSocialOnboardingWelcomeViewController.loadView()()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [objc_allocWithZone(type metadata accessor for TintColorObservingView()) initWithFrame:{v4, v6, v8, v10}];
  [v11 setAutoresizingMask:18];
  v12 = *&v1[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache];
  v13 = [v11 tintColor];
  swift_beginAccess();
  v14 = *(v12 + 24);
  *(v12 + 24) = v13;
  v15 = v13;

  sub_10710C();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = &v11[OBJC_IVAR____TtC16MusicApplication22TintColorObservingView_tintColorDidChangeCallback];
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  *v17 = sub_9E5A8;
  v17[1] = v16;

  sub_17654(v18, v19);

  [v1 setView:v11];
}

void sub_9D870(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache);
    v5 = Strong;
    swift_beginAccess();
    v6 = *(v4 + 24);
    *(v4 + 24) = a1;
    v7 = a1;

    sub_10710C();
  }
}

Swift::Void __swiftcall JSSocialOnboardingWelcomeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewWillAppear:", a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 setPrefersLargeTitles:0];
  }
}

Swift::Void __swiftcall JSSocialOnboardingWelcomeViewController.viewDidLoad()()
{
  v1 = v0;
  v64.receiver = v0;
  v64.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v64, "viewDidLoad");
  v2 = sub_9E06C();
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_textDrawingCache];
  v4 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textDrawingCache;
  swift_beginAccess();
  *&v2[v4] = v3;
  swift_retain_n();

  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView];
  v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v7 = *&v5[v6];
  *&v5[v6] = v3;

  v8 = v5;
  sub_2E6210(v7);

  v9 = OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView;
  v10 = *&v1[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView];
  v11 = *&v1[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_socialOnboardingWelcomeViewModel];
  v12 = (v11 + OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_headlineText);
  swift_beginAccess();
  if (v12[1])
  {
    v13 = *v12;
    v14 = v12[1];
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = &v10[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_headline];
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = v13;
  v15[1] = v14;
  v18 = v10;

  sub_138C60(v16, v17);

  v19 = *&v1[v9];
  v20 = (v11 + OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_titleText);
  swift_beginAccess();
  if (v20[1])
  {
    v21 = *v20;
    v22 = v20[1];
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = &v19[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_title];
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = v21;
  v23[1] = v22;
  v26 = v19;

  sub_138E18(v24, v25);

  v27 = *&v1[v9];
  v28 = (v11 + OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_subtitleText);
  swift_beginAccess();
  if (v28[1])
  {
    v29 = *v28;
    v30 = v28[1];
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  v31 = &v27[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_subtitle];
  swift_beginAccess();
  v32 = *v31;
  v33 = v31[1];
  *v31 = v29;
  v31[1] = v30;
  v34 = v27;

  sub_138FD4(v32, v33);

  v35 = OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_textAlignment;
  swift_beginAccess();
  v36 = *(v11 + v35);
  if (v36 != 6)
  {
    v37 = *&v1[v9];
    v38 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment;
    swift_beginAccess();
    v39 = v37[v38];
    v37[v38] = v36;
    if (v39 != v36)
    {
      v40 = *&v37[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents];
      v41 = *&v37[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 8];
      v42 = *&v37[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 16];
      v43 = v37;
      sub_13AE14(v36, v40, v41, v42);
      [v43 setNeedsLayout];
    }
  }

  v44 = *&v1[v9];
  v45 = OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_artwork;
  swift_beginAccess();
  v46 = *(v11 + v45);
  v47 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork;
  swift_beginAccess();
  v48 = *&v44[v47];
  *&v44[v47] = v46;
  v49 = v46;
  v50 = v44;

  sub_13938C();
  v51 = OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_artworkScaleMode;
  swift_beginAccess();
  v52 = *(v11 + v51);
  if (v52 != 3)
  {
    v53 = 0xEE00746946746365;
    v54 = 0x707341656C616373;
    v55 = *&v1[v9];
    v56 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode;
    swift_beginAccess();
    v57 = v55[v56];
    v55[v56] = v52;
    if (v57)
    {
      if (v57 == 1)
      {
        v58 = 0xD000000000000014;
        v59 = 0x8000000000B4DD30;
        if (!v52)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v59 = 0xEF6C6C6946746365;
        v58 = 0x707341656C616373;
        if (!v52)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v58 = 0x707341656C616373;
      v59 = 0xEE00746946746365;
      if (!v52)
      {
        goto LABEL_23;
      }
    }

    if (v52 != 1)
    {
      v53 = 0xEF6C6C6946746365;
      if (v58 != 0x707341656C616373)
      {
LABEL_28:
        v60 = sub_ABB3C0();
        v61 = v55;

        if ((v60 & 1) == 0)
        {
          [v61 setNeedsLayout];
        }

        goto LABEL_31;
      }

LABEL_26:
      if (v59 == v53)
      {

        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v54 = 0xD000000000000014;
    v53 = 0x8000000000B4DD30;
LABEL_23:
    if (v58 != v54)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

LABEL_31:
  v62 = [v1 view];
  if (v62)
  {
    v63 = v62;
    [v62 addSubview:*&v1[v9]];

    sub_9E0E4();
  }

  else
  {
    __break(1u);
  }
}

id sub_9E06C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController____lazy_storage___socialOnboardingWelcomeView);
  }

  else
  {
    type metadata accessor for JSSocialOnboardingWelcomeView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_9E0E4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize];
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize];
  v4 = sub_9E06C();
  v5 = *v2;
  v6 = [v4 traitCollection];
  [v6 displayScale];
  [v4 bounds];
  v8 = v7;
  v10 = v9;
  [v4 music_inheritedLayoutInsets];
  v15 = UIEdgeInsetsInsetRect_1(v8, v10, v5, 0.0, v11, v12, v13, v14);
  v17 = v16;
  v18 = *&v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView];
  v19 = [v18 traitCollection];
  [v19 displayScale];
  v21 = v20;

  if (v17 <= 5.99231045e307)
  {
    v22 = v17;
  }

  else
  {
    v22 = 5.99231045e307;
  }

  sub_2E94A4(v30, 0.0, 0.0, v15, v22, v21);
  sub_3F250(v30);

  sub_AB39F0();
  v24 = v23;

  if (v2[1] > v24)
  {
    v24 = v2[1];
  }

  type metadata accessor for CGSize(0);
  [v1 preferredContentSize];
  v28 = v25;
  v29 = v26;
  result = sub_AB38D0();
  if (result)
  {
    return [v1 setPreferredContentSize:{v3, v24, *&v3, *&v24, v28, v29}];
  }

  return result;
}

Swift::Void __swiftcall JSSocialOnboardingWelcomeViewController.viewWillLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = sub_9E06C();
    [v11 setFrame:{v4, v6, v8, v10}];
  }

  else
  {
    __break(1u);
  }
}

uint64_t JSSocialOnboardingWelcomeViewController.socialOnboardingVerticalStackVisibleBoundsDidChange(_:)(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC16MusicApplication39JSSocialOnboardingWelcomeViewController_visibleBoundsSize);
  *v5 = a3;
  v5[1] = a4;
  return sub_9E0E4();
}

uint64_t sub_9E570()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double sub_9E5E8()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v5 = v52 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v8 = Strong;
  v52[1] = v3;
  v53 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v5;
  v55 = v2;
  v56 = v1;
  v9 = *(v0 + 224);
  v10 = sub_13C80(0, &qword_DE7500, UIViewController_ptr);

  v60 = v10;
  v14 = WeakArray.allElements.getter(v11, v10, v12, v13);

  v15 = v8;
  v58 = v14;
  v59 = sub_4DE4FC(v14, v15, v0);
  v57 = v15;

  v61 = v0;
  v16 = sub_17DB8();
  sub_185CC(v16);
  v18 = v17;

  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = (v18 + 40);
    while (v20 < *(v18 + 16))
    {
      v24 = *v21;
      ObjectType = swift_getObjectType();
      v26 = *(v24 + 8);
      swift_unknownObjectRetain();
      v26(ObjectType, v24);
      type metadata accessor for ImpressionTracker();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        *(v27 + 40) = 1;
      }

      ++v20;
      swift_unknownObjectRelease();
      v26(ObjectType, v24);
      v9 = v22;
      v23 = swift_getObjectType();
      (*(v9 + 96))(v23, v9);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v21 += 2;
      if (v19 == v20)
      {
        goto LABEL_8;
      }
    }

LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_8:

    v9 = v61;
    v28 = *(v61 + 208);
    v29 = v59;
    if (*(v28 + 16) <= v59[2] >> 3)
    {
      v62[0] = v59;

      sub_1C4DBC(v28);

      v30 = v62[0];
    }

    else
    {

      v30 = sub_1C5C2C(v28, v29);
    }

    swift_weakInit();
    v31 = 1 << v30[32];
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v30 + 7);

    swift_beginAccess();
    v34 = 0;
    v35 = (v31 + 63) >> 6;
    while (v33)
    {
LABEL_19:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = *(*(v30 + 6) + ((v34 << 9) | (8 * v37)));
      v39 = *(v61 + 224);

      v9 = WeakArray.subscript.getter(v38, v39, v60, v40);

      if (v9)
      {
        if (swift_weakLoadStrong())
        {
          sub_9F014(v9, v38);
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v36 >= v35)
      {
        break;
      }

      v33 = *&v30[8 * v36 + 56];
      ++v34;
      if (v33)
      {
        v34 = v36;
        goto LABEL_19;
      }
    }

    swift_weakDestroy();
    v9 = v61;
    v41 = *(v61 + 208);
    v42 = v59;
    if (v59[2] <= *(v41 + 16) >> 3)
    {
      v63 = *(v61 + 208);

      sub_1C4DBC(v42);
      v43 = v63;
    }

    else
    {

      v43 = sub_1C5C2C(v42, v41);
    }

    sub_9EBF0(v43);
    *(v9 + 208) = v42;

    if (qword_DE6D68 == -1)
    {
      goto LABEL_27;
    }
  }

  swift_once();
LABEL_27:
  if (byte_E71A90 != 1 && *(v9 + 145) == 1 && (sub_472A68(v44) & 1) != 0)
  {
    v45 = v54;
    sub_AB3420();
    v46 = swift_allocObject();
    swift_weakInit();
    v48 = v55;
    v47 = v56;
    v49 = v53;
    (*(v55 + 16))(v53, v45, v56);
    v50 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v46;
    (*(v48 + 32))(v51 + v50, v49, v47);

    sub_48C6A0(sub_A97D0, v51);
    (*(v48 + 8))(v45, v47);
  }

  else
  {
  }

  return result;
}

void sub_9EBF0(uint64_t a1)
{
  v43 = sub_AB3430();
  v3 = *(v43 - 8);
  __chkstk_darwin();
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v4;
  __chkstk_darwin();
  v48 = &v37 - v5;
  v50 = v1;
  swift_weakInit();
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);

  swift_beginAccess();
  v10 = 0;
  v11 = (v7 + 63) >> 6;
  v38 = v3 + 32;
  v39 = v3 + 16;
  v42 = v3;
  v37 = v3 + 8;
  v44 = a1;
  while (v9)
  {
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(*(a1 + 48) + ((v10 << 9) | (8 * v13)));
    v15 = *(v50 + 224);
    v16 = sub_13C80(0, &qword_DE7500, UIViewController_ptr);

    v51 = v14;
    v18 = WeakArray.subscript.getter(v14, v15, v16, v17);

    if (v18)
    {
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v20 = Strong;
        v21 = v18;
        ObjectType = swift_getObjectType();
        v23 = swift_conformsToProtocol2();
        v49 = v21;
        if (v23)
        {
          v47 = *(v23 + 8);
          v24 = v23;
          v25 = v21;
          v47(ObjectType, v24);
          v27 = v26;
          v28 = swift_getObjectType();
          (*(v27 + 16))(0, v28, v27);

          v21 = v49;
          swift_unknownObjectRelease();
        }

        v47 = [v21 view];
        if (!v47)
        {
          goto LABEL_18;
        }

        v29 = v48;
        sub_AB3420();
        v45 = *(v20 + 88);
        v46 = v20;
        v30 = swift_allocObject();
        swift_weakInit();
        v32 = v42;
        v31 = v43;
        v33 = v40;
        (*(v42 + 16))(v40, v29, v43);
        v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v35 = swift_allocObject();
        v36 = v51;
        *(v35 + 16) = v30;
        *(v35 + 24) = v36;
        (*(v32 + 32))(v35 + v34, v33, v31);

        sub_48C6A0(sub_A9908, v35);
        (*(v32 + 8))(v48, v31);

        a1 = v44;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      swift_weakDestroy();
      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v10;
    if (v9)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_9F014(void *a1, uint64_t a2)
{
  v3 = v2;
  v80 = a2;
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v9 = &v68 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v78 = v9;
  v79 = Strong;
  v77 = v5;
  swift_getObjectType();
  v11 = swift_conformsToProtocol2();
  if (v11)
  {
    v12 = a1 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  v74 = v13;
  v14 = &selRef__authenticateReturningError_;
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v6;
  if (v12)
  {
    v73 = 0;
  }

  else
  {
    v15 = v11;
    v72 = v7;
    swift_beginAccess();
    v16 = v3[31];
    ObjectType = swift_getObjectType();
    v18 = a1;

    v19 = sub_472FF8(v18, v16);

    v20 = *(v15 + 8);
    if ((v19 & 1) == 0)
    {
      v20(ObjectType, v15);
      v22 = v21;
      v23 = swift_getObjectType();
      v24 = (*(v22 + 32))(v23, v22);
      swift_unknownObjectRelease();
      if (v24)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v20(ObjectType, v15);
        v26 = v25;
        v27 = swift_getObjectType();
        v73 = ObjectType;
        v70 = *(v26 + 40);
        v71 = v27;
        v28 = swift_unknownObjectRetain();
        v70(v28, &off_CFADC8, v71, v26);
        swift_unknownObjectRelease();
        v70 = v18;
        v71 = v20;
        v29 = (v20)(v73, v15);
        v69 = v30;
        v31 = v3[4];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_6AB8C(0, v31[2] + 1, 1, v31);
        }

        v33 = v31[2];
        v32 = v31[3];
        v18 = v70;
        if (v33 >= v32 >> 1)
        {
          v31 = sub_6AB8C((v32 > 1), v33 + 1, 1, v31);
        }

        v31[2] = v33 + 1;
        v34 = &v31[2 * v33];
        v35 = v69;
        v34[4] = v29;
        v34[5] = v35;
        v36 = v3[4];
        v3[4] = v31;
        sub_12E05C(v36);

        swift_beginAccess();
        sub_1A338(&v84, v18);
        swift_endAccess();

        ObjectType = v73;
        v20 = v71;
      }
    }

    v20(ObjectType, v15);
    v38 = v37;
    v39 = swift_getObjectType();
    v73 = (*(v38 + 80))(v39, v38);
    swift_unknownObjectRelease();
    v20(ObjectType, v15);
    v41 = v40;
    v42 = [v79 view];
    if (!v42)
    {
      goto LABEL_31;
    }

    v43 = v42;
    v44 = swift_getObjectType();
    v45 = [v43 isHidden];

    (*(v41 + 16))(v45 ^ 1, v44, v41);
    swift_unknownObjectRelease();
    v14 = &selRef__authenticateReturningError_;
  }

  v46 = sub_17DB8();
  v47 = sub_472FF8(a1, v46);

  if (v47)
  {
    v48 = 2;
  }

  else
  {
    v48 = 0;
  }

  v49 = [a1 v14[342]];
  v50 = v78;
  if (!v49)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  v51 = v49;
  sub_AB3420();
  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52 && (v53 = v52, sub_A0C94(v80, v82), v53, v90 = v82[6], v91 = v82[7], v92[0] = v83[0], *(v92 + 9) = *(v83 + 9), v86 = v82[2], v87 = v82[3], v88 = v82[4], v89 = v82[5], v84 = v82[0], v85 = v82[1], sub_A996C(&v84) != 1))
  {
    v99 = v90;
    v100 = v91;
    v101[0] = v92[0];
    *(v101 + 9) = *(v92 + 9);
    v95 = v86;
    v96 = v87;
    v97 = v88;
    v98 = v89;
    v93 = v84;
    v94 = v85;
    v72 = v3[11];
    v54 = v50;
    v55 = swift_allocObject();
    swift_weakInit();
    v57 = v76;
    v56 = v77;
    v58 = v48;
    v59 = v75;
    (*(v76 + 16))(v75, v54, v77);
    v60 = (*(v57 + 80) + 210) & ~*(v57 + 80);
    v61 = swift_allocObject();
    v62 = v100;
    *(v61 + 136) = v99;
    *(v61 + 152) = v62;
    *(v61 + 168) = v101[0];
    *(v61 + 177) = *(v101 + 9);
    v63 = v96;
    *(v61 + 72) = v95;
    *(v61 + 88) = v63;
    v64 = v98;
    *(v61 + 104) = v97;
    *(v61 + 120) = v64;
    v65 = v94;
    *(v61 + 40) = v93;
    v66 = v80;
    *(v61 + 16) = v55;
    *(v61 + 24) = v66;
    *(v61 + 32) = v51;
    *(v61 + 56) = v65;
    *(v61 + 200) = v73;
    *(v61 + 208) = v74;
    *(v61 + 209) = v58;
    (*(v57 + 32))(v61 + v60, v59, v56);

    v67 = v51;
    sub_15F84(v82, &v81, qword_DF1340, &unk_B07BD0);
    sub_48C6A0(sub_A9AAC, v61);
    sub_12E1C(v82, qword_DF1340, &unk_B07BD0);
    (*(v57 + 8))(v78, v56);
  }

  else
  {
    (*(v76 + 8))(v50, v77);
  }
}

void *sub_9F704(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_impressionTrackingIsEnabledOverride) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController____lazy_storage___impressionsTracker) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isInsidePopover) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  v5 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_wantsTopStackItemHairline) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isPageHeaderContentBottomHairlineVisible) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsRevisionID) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pendingStackItemUpdateRequests) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_wasUnderlappingStatusBar) = 2;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipRequest) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_shouldIgnoreStackItemUpdates) = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_viewModelKindToViewController;
  *(v1 + v6) = sub_96934(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKinds) = a1;
  v7 = sub_4D3A88(_swiftEmptyArrayStorage);
  v8 = [v7 navigationItem];
  v9 = sub_387998();
  if (v9 > 2)
  {
    if (v9 == 3)
    {

      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v10 = sub_ABB3C0();

  if ((v10 & 1) == 0)
  {
LABEL_5:
    if (qword_DE6B20 != -1)
    {
      swift_once();
    }

    v11 = qword_E01290;
    v12 = sub_AB9260();
    objc_setAssociatedObject(v8, v11, v12, &dword_0 + 1);

    [v8 _setManualScrollEdgeAppearanceEnabled:0];
    [v8 _setAutoScrollEdgeTransitionDistance:16.0];
    [v8 _setManualScrollEdgeAppearanceEnabled:1];
  }

LABEL_9:
  v24 = v7;
  v13 = sub_A0BB4();
  *(v13 + 145) = 0;
  v14 = *(v13 + 32);
  v15 = *(v14 + 16);

  if (v15)
  {
    v16 = 0;
    v17 = (v14 + 40);
    do
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
LABEL_23:
        swift_once();
        if ((byte_E71A90 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_21:

        v22 = v24;
        goto LABEL_27;
      }

      v20 = *v17;
      v21 = qword_DE6D68;
      swift_unknownObjectRetain();
      if (v21 == -1)
      {
        if (byte_E71A90)
        {
          goto LABEL_16;
        }
      }

      else
      {
        swift_once();
        if (byte_E71A90)
        {
LABEL_16:
          v18 = 0;
          goto LABEL_12;
        }
      }

      v18 = *(v13 + 145);
LABEL_12:
      ++v16;
      ObjectType = swift_getObjectType();
      (*(v20 + 16))(v18, ObjectType, v20);
      swift_unknownObjectRelease();
      v17 += 2;
    }

    while (v15 != v16);
  }

  if (qword_DE6D68 != -1)
  {
    goto LABEL_23;
  }

  if (byte_E71A90)
  {
    goto LABEL_21;
  }

LABEL_24:
  v22 = v24;
  if (*(v13 + 145))
  {
    sub_9E5E8();
  }

LABEL_27:
  sub_A363C();

  return v22;
}

void sub_9FE04(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for JSVerticalStackViewController(0);
  v6 = *a4;
  v7 = v11.receiver;
  v8 = objc_msgSendSuper2(&v11, v6, a3);
  v9 = (*&stru_388.segname[(swift_isaMask & *v7) - 8])(v8);
  if (v9)
  {
    v10 = v9;
    [v9 endAppearanceTransition];

    v7 = v10;
  }
}

void sub_9FECC()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for JSVerticalStackViewController(0);
  objc_msgSendSuper2(&v25, "viewDidLayoutSubviews");
  sub_A737C();
  v2 = (*&stru_388.segname[(swift_isaMask & *v0) - 8])();
  if (v2)
  {
    goto LABEL_2;
  }

  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem];
    if (v4)
    {
      v5 = *&stru_298.segname[(swift_isaMask & *v4) + 8];
      v6 = v4;
      v7 = v3;
      v24 = v6;
      if (v5() > 1u)
      {
      }

      else
      {
        v8 = sub_ABB3C0();

        if ((v8 & 1) == 0)
        {
LABEL_24:

          v2 = v24;
LABEL_2:

          return;
        }
      }

      v9 = sub_4D3DD0();
      UIView.statusBarFrame.getter(v26);

      if ((v27 & 1) == 0)
      {
        v11 = *&v26[2];
        v10 = *&v26[3];
        v13 = *v26;
        v12 = *&v26[1];
        [*&v7[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView] frame];
        CGRectGetMinY(v28);
        [*&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView] contentOffset];
        v29.origin.x = v13;
        v29.origin.y = v12;
        v29.size.width = v11;
        v29.size.height = v10;
        CGRectGetMidY(v29);
        sub_471A4();
        v14 = sub_AB38F0();
        v15 = v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_wasUnderlappingStatusBar];
        if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
        {
          v23 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_wasUnderlappingStatusBar;
          v22 = v14 & 1;
          v16 = [v1 navigationItem];
          v17 = [v1 parentViewController];
          if (v17)
          {
            v18 = v17;
            while (1)
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              v19 = v18;
              v20 = [v19 navigationItem];

              v18 = [v19 parentViewController];
              v16 = v20;
              if (!v18)
              {
                goto LABEL_20;
              }
            }
          }

          v20 = v16;
LABEL_20:
          if (v22)
          {
            (*(&stru_158.reloff + (swift_isaMask & *v24)))();
            v21 = sub_AB9260();
          }

          else
          {
            v21 = 0;
          }

          [v20 _setTitle:v21 animated:1];

          v1[v23] = v22;
        }
      }

      goto LABEL_24;
    }
  }
}

void sub_A02D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA9F0, &qword_AF8BD0);
  __chkstk_darwin();
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC5E0, &qword_AFACC0);
  v30 = *(v4 - 8);
  __chkstk_darwin();
  v28 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC5E8, &qword_AFACC8);
  v29 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v27 - v7;
  v9 = type metadata accessor for JSVerticalStackViewController(0);
  v32.receiver = v0;
  v32.super_class = v9;
  objc_msgSendSuper2(&v32, "viewDidLoad");
  v10 = [v0 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v0 viewBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = (*&stru_388.segname[(swift_isaMask & *v1) - 8])();
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = v13;
  v27 = v4;
  v15 = v6;
  v16 = sub_4D3DD0();
  v17 = *&v14[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView];
  *&v14[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView] = v16;
  v18 = v16;
  sub_3714A4(v17);

  v19 = [v14 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v20 = v19;
  [v11 addSubview:v19];

  v6 = v15;
  v4 = v27;
LABEL_5:
  static ApplicationCapabilities.shared.getter(v33);
  v21 = v33[4];

  sub_70C54(v33);
  v22 = sub_472A84(10, v21);

  if (v22)
  {
    if (qword_DE6800 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC5F0, &unk_AFACD0);
    v23 = v28;
    sub_AB54E0();
    swift_endAccess();
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v24 = sub_ABA150();
    v31 = v24;
    v25 = sub_ABA130();
    (*(*(v25 - 8) + 56))(v3, 1, 1, v25);
    sub_36A00(&qword_DEC5F8, &qword_DEC5E0, &qword_AFACC0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_60090();
    sub_AB5590();
    sub_12E1C(v3, &unk_DFA9F0, &qword_AF8BD0);
    (*(v30 + 8))(v23, v4);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_36A00(&unk_DEC600, &qword_DEC5E8, &qword_AFACC8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v26 = sub_AB55C0();
    (*(v29 + 8))(v8, v6);

    *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipSubscription) = v26;
  }

  else
  {
  }
}

void sub_A086C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem);
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = *(&stru_388.reserved2 + (swift_isaMask & *v5));
    v7 = v5;
    v8 = v6();
    v10 = v9;

    if (!v10)
    {
      goto LABEL_13;
    }

    v11._rawValue = &off_CEFEC8;
    v18._countAndFlagsBits = v8;
    v18._object = v10;
    v12 = sub_ABB140(v11, v18);

    if (v12)
    {
      if (v12 != 1)
      {
LABEL_13:

        return;
      }

      v13 = 1;
      if (!*(v2 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_11;
      }
    }

    v14 = sub_2EC5A8(v13);
    if (v15)
    {
      v16 = *(*(v2 + 56) + 8 * v14);
      v17 = v16;
LABEL_12:
      sub_A7F78(v16);

      v4 = v16;
      goto LABEL_13;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }
}

id sub_A0ACC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider];
  if (!v2 || (v3 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider + 8], v4 = , v5 = v2(v4), sub_17654(v2, v3), (result = v5) == 0))
  {
    result = [v1 parentViewController];
    if (result)
    {
      v7 = result;
      type metadata accessor for JSDrivenViewController(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
        v10 = v8;
        swift_beginAccess();
        v11 = *(v10 + v9);
        v12 = v11;

        return v11;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_A0BB4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController____lazy_storage___impressionsTracker;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController____lazy_storage___impressionsTracker])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController____lazy_storage___impressionsTracker];
  }

  else
  {
    v3 = v0;
    v4 = sub_4D3DD0();
    sub_A9124();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = type metadata accessor for PageHeaderContentViewController();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC590, &qword_AFABE8);
    swift_allocObject();
    v2 = sub_2BE654(v3, v4, inited, 1);
    *&v3[v1] = v2;
  }

  return v2;
}

double sub_A0C94@<D0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v5 = a2;
  v6 = &v69;
  v7 = &v45;
  if (a1 == -2)
  {
    v45 = xmmword_AFAA50;
    v46 = xmmword_AFAA50;
    v47 = xmmword_AFAA60;
    *v48 = 512;
    v48[2] = 20;
    memset(&v48[8], 0, 72);
    v49[0] = 1;
    *&v49[8] = 0;
    *&v49[16] = 0;
    v49[24] = 2;
    v50 = xmmword_AFAA50;
    v51 = xmmword_AFAA50;
    v52 = xmmword_AFAA60;
    *v53 = 512;
    v53[2] = 20;
    memset(v55, 0, sizeof(v55));
    v54 = 0u;
    v56 = 1;
    v57 = 0;
    v58 = 0;
    v59 = 2;
    goto LABEL_5;
  }

  if (a1 == -1)
  {
    *&v45 = 0xD000000000000019;
    *(&v45 + 1) = 0x8000000000B4E290;
    *&v46 = 0xD000000000000019;
    *(&v46 + 1) = 0x8000000000B4E290;
    v47 = xmmword_AFAA70;
    *v48 = 512;
    v48[2] = 20;
    memset(&v48[8], 0, 72);
    v49[0] = 1;
    *&v49[8] = 0;
    *&v49[16] = 0;
    v49[24] = 2;
    *&v50 = 0xD000000000000019;
    *(&v50 + 1) = 0x8000000000B4E290;
    *&v51 = 0xD000000000000019;
    *(&v51 + 1) = 0x8000000000B4E290;
    v52 = xmmword_AFAA70;
    *v53 = 512;
    v53[2] = 20;
    memset(v55, 0, sizeof(v55));
    v54 = 0u;
    v56 = 1;
    v57 = 0;
    v58 = 0;
    v59 = 2;
LABEL_5:
    sub_465F4(&v45, &v69);
    sub_46650(&v50);
    v66 = *&v48[48];
    v67 = *&v48[64];
    v68[0] = *v49;
    *(v68 + 9) = *&v49[9];
    v62 = v47;
    v63 = *v48;
    v64 = *&v48[16];
    v65 = *&v48[32];
    v60 = v45;
    v61 = v46;
    UIScreen.Dimensions.size.getter();
    v75 = v66;
    v76 = v67;
    v77[0] = v68[0];
    *(v77 + 9) = *(v68 + 9);
    v71 = v62;
    v72 = v63;
    v73 = v64;
    v74 = v65;
    v69 = v60;
    v70 = v61;
    goto LABEL_21;
  }

  v8 = *(v3 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_viewModelKindToViewController);
  v9 = (v8 + 64);
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v6 = ((v10 + 63) >> 6);
  swift_bridgeObjectRetain_n();
  v13 = 0;
  while (1)
  {
    if (!v12)
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v6)
        {

          sub_465CC(&v69);
          v5 = a2;
          v6 = &v69;
          goto LABEL_21;
        }

        v12 = v9[v14];
        ++v13;
        if (v12)
        {
          v13 = v14;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_30:
      v41 = 0;
      goto LABEL_33;
    }

LABEL_15:
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v12)));
    v16 = *(*(v8 + 48) + v15);
    v17 = *(*(v8 + 56) + v15);
    v44 = (v16 & 0xFFFFFFFFFFFFFF9);
    v4 = v17;
    v7 = *(sub_A0BB4() + 224);

    v18 = sub_13C80(0, &qword_DE7500, UIViewController_ptr);
    v20 = WeakArray.subscript.getter(a1, v7, v18, v19);

    if (v20)
    {

      if (v4 == v20)
      {
        break;
      }
    }

    v12 &= v12 - 1;
  }

  v9 = JSViewModelKind.innerViewModel.getter(v16);

  type metadata accessor for JSParagraphViewModel(0);
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v23 = *(&stru_298.flags + (swift_isaMask & *v21));
    v24 = v9;
    if (v23())
    {
      v25 = sub_27F09C(v24);
      v27 = v26;

      v45 = xmmword_AFAA80;
      *&v46 = v25;
      *(&v46 + 1) = v27;
      *&v47 = 8;
      *(&v47 + 1) = a1;
      *v48 = 512;
      v48[2] = 20;
      *&v48[8] = 0;
      *&v48[16] = 0;
      *&v48[24] = v22;
      memset(&v48[32], 0, 48);
      v49[0] = 0;
      *&v49[8] = 0;
      *&v49[16] = 0;
      v49[24] = 2;
      v50 = xmmword_AFAA80;
      *&v51 = v25;
      *(&v51 + 1) = v27;
      *&v52 = 8;
      *(&v52 + 1) = a1;
      *v53 = 512;
      v53[2] = 20;
      v54 = 0uLL;
      v55[0] = v22;
      memset(&v55[1], 0, 48);
      v56 = 0;
LABEL_25:
      v57 = 0;
      v58 = 0;
      v59 = 2;
      sub_465F4(&v45, &v69);
      sub_46650(&v50);
      v66 = *&v48[48];
      v67 = *&v48[64];
      v68[0] = *v49;
      *(v68 + 9) = *&v49[9];
      v62 = v47;
      v63 = *v48;
      v64 = *&v48[16];
      v65 = *&v48[32];
      v60 = v45;
      v61 = v46;
      UIScreen.Dimensions.size.getter();
      v75 = v66;
      v76 = v67;
      v77[0] = v68[0];
      v33 = *(v68 + 9);
      v6 = &v69;
      goto LABEL_34;
    }
  }

  type metadata accessor for JSInterstellarViewModel();
  if (swift_dynamicCastClass())
  {

    v45 = xmmword_AFAA90;
    v46 = xmmword_AFAAA0;
    v47 = xmmword_AF8610;
    *v48 = 512;
    v48[2] = 20;
    memset(&v48[8], 0, 72);
    v49[0] = 1;
    *&v49[8] = 0;
    *&v49[16] = 0;
    v49[24] = 2;
    v50 = xmmword_AFAA90;
    v51 = xmmword_AFAAA0;
    v52 = xmmword_AF8610;
    *v53 = 512;
    v53[2] = 20;
    memset(v55, 0, sizeof(v55));
    v54 = 0u;
    v56 = 1;
    goto LABEL_25;
  }

  v7 = (*(&stru_68.reserved2 + (swift_isaMask & *v9)))();
  v8 = v34;
  v12 = sub_27F09C(v9);
  v4 = v35;
  type metadata accessor for JSSearchLandingUpsell(0);
  v36 = swift_dynamicCastClass();
  v37 = v9;
  v6 = &v69;
  if (!v36)
  {
    goto LABEL_30;
  }

  v38 = v37;
  v39 = JSSearchLandingUpsell.tallVideoArtwork.getter();
  if (v39)
  {
    v40 = v39;

    v41 = 1;
  }

  else
  {
    v40 = JSSearchLandingUpsell.wideArtwork.getter();

    v41 = v40 != 0;
  }

LABEL_33:
  *&v45 = v7;
  *(&v45 + 1) = v8;
  *&v46 = v12;
  *(&v46 + 1) = v4;
  *&v47 = v9;
  *(&v47 + 1) = a1;
  v48[0] = v41;
  *&v48[1] = 5122;
  *&v48[8] = 0;
  *&v48[16] = 0;
  *&v48[24] = v9;
  memset(&v48[32], 0, 48);
  v49[0] = 1;
  *&v49[8] = 0;
  *&v49[16] = 0;
  v49[24] = 2;
  *&v50 = v7;
  *(&v50 + 1) = v8;
  *&v51 = v12;
  *(&v51 + 1) = v4;
  *&v52 = v9;
  *(&v52 + 1) = a1;
  v53[0] = v41;
  *&v53[1] = 5122;
  v54 = 0uLL;
  v55[0] = v9;
  memset(&v55[1], 0, 48);
  v56 = 1;
  v57 = 0;
  v58 = 0;
  v59 = 2;
  sub_465F4(&v45, &v69);
  sub_46650(&v50);
  v66 = *&v48[48];
  v67 = *&v48[64];
  v68[0] = *v49;
  *(v68 + 9) = *&v49[9];
  v62 = v47;
  v63 = *v48;
  v64 = *&v48[16];
  v65 = *&v48[32];
  v60 = v45;
  v61 = v46;
  UIScreen.Dimensions.size.getter();
  v75 = v66;
  v76 = v67;
  v77[0] = v68[0];
  v33 = *(v68 + 9);
LABEL_34:
  *(v6 + 137) = v33;
  v71 = v62;
  v72 = v63;
  v73 = v64;
  v74 = v65;
  v69 = v60;
  v70 = v61;
  v5 = a2;
LABEL_21:
  v28 = v76;
  v5[6] = v75;
  v5[7] = v28;
  v5[8] = v77[0];
  *(v5 + 137) = *(v6 + 137);
  v29 = v72;
  v5[2] = v71;
  v5[3] = v29;
  v30 = v74;
  v5[4] = v73;
  v5[5] = v30;
  result = *&v69;
  v32 = v70;
  *v5 = v69;
  v5[1] = v32;
  return result;
}

uint64_t sub_A1414(char a1)
{
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_impressionTrackingIsEnabledOverride) & a1;
    (*(result + 8))(ObjectType, result);
    v7 = v6;
    v8 = swift_getObjectType();
    (*(v7 + 16))(v5 & 1, v8, v7);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_A14D4(void *a1, __n128 a2)
{
  v4 = sub_4D3DD0();
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;

  v9 = [v2 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;

    v15 = (v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds);
    v16 = *(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds);
    v17 = *(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 8);
    v18 = *(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 16);
    v19 = *(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 24);
    *v15 = v6;
    v15[1] = v8;
    v15[2] = v12;
    v15[3] = v14;
    sub_4DB494(v16, v17, v18, v19);
    sub_4D7AA8();
    v20 = [a1 contentSize];
    if (v21 != 0.0)
    {
      v22 = (*&stru_388.segname[(swift_isaMask & *v2) - 8])(v20);
      if (v22)
      {
        v23 = v22;
        sub_375B00();
        if (*&v23[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_artworkVideoPlaybackController])
        {

          sub_38D1A8();
        }

        else
        {
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_A17E4(void *a1)
{
  v2 = v1;
  v4 = sub_AB7C10();
  v23 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7C50();
  v22 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController;
  v11 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController];
  if (a1)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    type metadata accessor for PageHeaderContentViewController();
    v12 = v11;
    v13 = a1;
    v14 = sub_ABA790();

    if (v14)
    {
      return;
    }

    v11 = *&v2[v10];
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  else if (!v11)
  {
    return;
  }

  v15 = v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isPageHeaderContentBottomHairlineVisible];
  v11[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isBottomHairlineVisible] = v15;
  v16 = *&v11[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView];
  v17 = v16[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible];
  v16[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible] = v15;
  if (v15 != v17)
  {
    [v16 setNeedsLayout];
  }

LABEL_9:
  if ((v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] & 1) == 0)
  {
    v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] = 1;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v18 = sub_ABA150();
    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    aBlock[4] = sub_A91D4;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_15;
    v20 = _Block_copy(aBlock);
    v21 = v2;

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_A9210(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
    sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
    sub_ABABB0();
    sub_ABA160();
    (*(v23 + 8))(v6, v4);
    (*(v22 + 8))(v9, v7);
    _Block_release(v20);
  }
}

void (*sub_A1BA8(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_A1C00;
}

void sub_A1C18(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController;
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController];
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = a1;
  if (!v4 || (type metadata accessor for PromotionalParallaxViewController(), v6 = v4, v5 = v5, v7 = sub_ABA790(), v5, v6, (v7 & 1) == 0))
  {
    v8 = v5;
    v70.value.super.super.isa = 0;
    PromotionalParallaxViewController.willMove(toParent:)(v70);
    v9 = sub_4D3DD0();
    v10 = *&v9[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView];
    *&v9[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView] = 0;
    sub_4DDD94(v10);

    [v8 removeFromParentViewController];
    v4 = *&v2[v3];
    if (!v4)
    {
LABEL_44:
      [v2 setNeedsStatusBarAppearanceUpdate];
      return;
    }

LABEL_7:
    v11 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem;
    v12 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem];
    if (!v12)
    {
      v16 = v4;
      goto LABEL_15;
    }

    v13 = *&stru_298.segname[(swift_isaMask & *v12) + 8];
    v14 = v4;
    v15 = v12;
    if (v13())
    {
      v17 = sub_ABB3C0();

      v19 = 0;
      if ((v17 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v20 = (*(&stru_2E8.size + (swift_isaMask & *v15)))(v18);
    v19 = v20 != 0;

LABEL_14:
    v14[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_prefersAnimatedBannerDisplay] = v19;

LABEL_15:
    v21 = &selRef__authenticateReturningError_;
    v22 = [v2 view];
    if (v22)
    {
      v23 = v22;
      [v22 safeAreaInsets];

      v24 = [v2 traitCollection];
      v25 = [v24 horizontalSizeClass];

      if (v25 == &dword_0 + 2)
      {
        v26 = *&v2[v11];
        if (v26)
        {
          v27 = *(&stru_2E8.size + (swift_isaMask & *v26));
          v28 = v26;
          v29 = v27();
          v21 = &selRef__authenticateReturningError_;
          v30 = v29;

          if (v30)
          {
          }
        }
      }

      sub_AB9E70();
      v31 = &v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets];
      v32 = *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets];
      v33 = *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets + 16];
      *v31 = v34.f64[0];
      v31[1] = v35;
      v31[2] = v36.f64[0];
      v31[3] = v37;
      v34.f64[1] = v35;
      v36.f64[1] = v37;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v32, v34), vceqq_f64(v33, v36)))) & 1) == 0)
      {
        sub_371830();
      }

      v38 = [v2 traitCollection];
      v39 = [v38 horizontalSizeClass];

      if (v39 == &dword_0 + 2 && (v40 = *&v2[v11]) != 0 && (v41 = *(&stru_2E8.size + (swift_isaMask & *v40)), v42 = v40, v43 = v41(), v42, v43))
      {

        horizontal = 0.0;
        vertical = 40.0;
      }

      else
      {
        horizontal = UIOffsetZero.horizontal;
        vertical = UIOffsetZero.vertical;
      }

      v46 = &v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions];
      v47 = *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions];
      v48 = *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions + 8];
      *v46 = horizontal;
      v46[1] = vertical;
      if (v47 != horizontal || v48 != vertical)
      {
        sub_375B00();
      }

      v50 = sub_4D3DD0();
      v51 = *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView];
      *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollView] = v50;
      v52 = v50;
      sub_3714A4(v51);

      v53 = v4;
      [v2 addChildViewController:v53];
      v54 = [v53 v21[342]];

      if (v54)
      {
        [v54 setHidden:1];
        if (([v2 isViewLoaded] & 1) == 0)
        {
LABEL_36:
          v57 = *&v2[v3];
          *&v2[v3] = v4;
          v58 = v53;

          v69.receiver = v58;
          v69.super_class = type metadata accessor for PromotionalParallaxViewController();
          objc_msgSendSuper2(&v69, "didMoveToParentViewController:", v2);
          v59 = [v58 navigationItem];
          v60 = [v58 parentViewController];
          if (v60)
          {
            v61 = v60;
            while (1)
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              v62 = v61;
              v63 = [v62 navigationItem];

              v61 = [v62 parentViewController];
              v59 = v63;
              if (!v61)
              {
                goto LABEL_43;
              }
            }
          }

          v63 = v59;
LABEL_43:
          sub_374C7C(v63);

          v64 = *&v2[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView];
          v65 = *&v58[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalImageryView];
          v66 = *&v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView];
          *&v64[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView] = v65;
          v67 = v65;
          v68 = v64;
          sub_4DDD94(v66);

          goto LABEL_44;
        }

        v55 = [v2 v21[342]];
        if (v55)
        {
          v56 = v55;
          [v55 addSubview:v54];

          goto LABEL_36;
        }

LABEL_48:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }
}

void *sub_A22C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
  v2 = v1;
  return v1;
}

void sub_A22F4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController) = a1;
  v2 = a1;
  sub_A1C18(v3);
}

void (*sub_A2354(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_A23AC;
}

void sub_A23C4(uint64_t a1, char a2, void (*a3)(id))
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *a1;
  v11 = *(v6 + v5);
  *(v6 + v5) = *a1;
  v8 = v7;
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    a3(v11);
  }

  else
  {
    a3(v11);
  }
}

uint64_t sub_A2458()
{
  v1 = [v0 childViewControllers];
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v2 = sub_AB9760();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_35F8D4(v4, v2);
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8 && v6)
      {
        v9 = v8;
        ObjectType = swift_getObjectType();
        LOBYTE(v9) = (*(v9 + 8))(ObjectType, v9);

        if (v9)
        {
          v11 = 1;
          goto LABEL_19;
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v11 = 0;
LABEL_19:

  return v11;
}

void sub_A25D0(unint64_t a1)
{
  v42 = a1;
  v2 = type metadata accessor for MetricsPageProperties(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC5C8, &unk_AFAC78) - 8;
  __chkstk_darwin();
  v11 = &v37 - v10;
  v12 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  swift_beginAccess();
  v13 = *(v9 + 56);
  v40 = v1;
  v38 = v12;
  sub_15F84(v1 + v12, v11, &unk_DF1330, &qword_AF9120);
  sub_15F84(v42, &v11[v13], &unk_DF1330, &qword_AF9120);
  v14 = *(v3 + 48);
  if (v14(v11, 1, v2) == 1)
  {
    if (v14(&v11[v13], 1, v2) == 1)
    {
      sub_12E1C(v11, &unk_DF1330, &qword_AF9120);
      return;
    }
  }

  else
  {
    sub_15F84(v11, v8, &unk_DF1330, &qword_AF9120);
    if (v14(&v11[v13], 1, v2) != 1)
    {
      sub_70CD8(&v11[v13], v5);
      v36 = static MetricsPageProperties.__derived_struct_equals(_:_:)(v8, v5);
      sub_A92C8(v5);
      sub_A92C8(v8);
      sub_12E1C(v11, &unk_DF1330, &qword_AF9120);
      if (v36)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_A92C8(v8);
  }

  sub_12E1C(v11, &qword_DEC5C8, &unk_AFAC78);
LABEL_7:
  v15 = *(v40 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
  if (v15 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)); ; i = sub_ABB060())
  {

    if (!i)
    {
      break;
    }

    v17 = 0;
    v18 = v15 & 0xC000000000000001;
    v19 = &qword_DE7500;
    v20 = UIViewController_ptr;
    v42 = v15 & 0xFFFFFFFFFFFFFF8;
    v37 = i;
    while (1)
    {
      if (v18)
      {
        v21 = sub_35F8D4(v17, v15);
      }

      else
      {
        if (v17 >= *(v42 + 16))
        {
          goto LABEL_25;
        }

        v21 = *(v15 + 8 * v17 + 32);
      }

      v22 = v21;
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v45 = v21;
      sub_13C80(0, v19, v20);
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB10, &qword_AF9260);
      if (swift_dynamicCast())
      {
        sub_70DF8(v43, v46);
        v25 = v39;
        sub_15F84(v40 + v38, v39, &unk_DF1330, &qword_AF9120);
        v26 = v15;
        v27 = v18;
        v41 = v24;
        v28 = v20;
        v29 = v19;
        v30 = v47;
        v31 = v48;
        __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
        v32 = *(v31 + 16);
        v33 = v25;
        i = v37;
        v34 = v30;
        v18 = v27;
        v15 = v26;
        v35 = v31;
        v19 = v29;
        v20 = v28;
        v32(v33, v34, v35);

        __swift_destroy_boxed_opaque_existential_0(v46);
      }

      else
      {
        v44 = 0;
        memset(v43, 0, sizeof(v43));

        sub_12E1C(v43, &qword_DEAB18, &qword_AF9268);
      }

      ++v17;
      if (v23 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_20:
}

void (*sub_A2A9C(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_15F84(v1 + v8, v7, &unk_DF1330, &qword_AF9120);
  return sub_A2BCC;
}

void sub_A2BCC(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_15F84(*(*a1 + 12), v6, &unk_DF1330, &qword_AF9120);
    sub_15F84(v7 + v4, v5, &unk_DF1330, &qword_AF9120);
    swift_beginAccess();
    sub_A9258(v6, v7 + v4);
    swift_endAccess();
    sub_A25D0(v5);
    sub_12E1C(v5, &unk_DF1330, &qword_AF9120);
  }

  else
  {
    sub_15F84(v7 + v4, v6, &unk_DF1330, &qword_AF9120);
    swift_beginAccess();
    sub_A9258(v3, v7 + v4);
    swift_endAccess();
    sub_A25D0(v6);
  }

  sub_12E1C(v6, &unk_DF1330, &qword_AF9120);
  sub_12E1C(v3, &unk_DF1330, &qword_AF9120);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

void sub_A2E34(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 viewBackgroundColor];
  sub_13C80(0, qword_DFAAC0, UIColor_ptr);
  v4 = sub_ABA790();

  if ((v4 & 1) == 0)
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_viewModelKindToViewController];
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v11 = v10;
LABEL_10:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = *(*(v5 + 56) + ((v11 << 9) | (8 * v12)));
        v14 = [v2 viewBackgroundColor];
        [v13 setViewBackgroundColor:v14];

        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }
  }
}

void sub_A3038(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v9 = a1 & 1;
  v10 = sub_AB7C10();
  v25 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(sub_AB7C50() - 8);
  __chkstk_darwin();
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v5[*a2];
  v5[*a2] = a1;
  if (v17 != v9 && v5[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] != 1)
  {
    v5[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] = 1;
    v23 = v14;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v18 = sub_ABA150();
    v19 = swift_allocObject();
    *(v19 + 16) = v5;
    aBlock[4] = a4;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = v24;
    v20 = _Block_copy(aBlock);
    v21 = v5;

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_A9210(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
    sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
    sub_ABABB0();
    sub_ABA160();
    (*(v25 + 8))(v12, v10);
    (*(v13 + 8))(v16, v23);
    _Block_release(v20);
  }
}

void sub_A335C(void *a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor];
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v3)
  {
    sub_13C80(0, qword_DFAAC0, UIColor_ptr);
    v5 = v3;
    v6 = a1;
    v7 = sub_ABA790();

    if (v7)
    {
      return;
    }

    v3 = *&v1[v2];
    if (v3)
    {
LABEL_8:
      v9 = v3;
      v11 = [v1 view];
      if (v11)
      {
        v10 = v11;
        [v11 setBackgroundColor:v9];
        goto LABEL_10;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }
  }

  v8 = [v1 view];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [v1 viewBackgroundColor];
  [v9 setBackgroundColor:v10];
LABEL_10:

  sub_A3ACC();
}

void sub_A34B8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKinds] = a1;

  if (v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing] == 1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_A9BA0;
    *(v3 + 24) = v2;
    v4 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pendingStackItemUpdateRequests;
    swift_beginAccess();
    v5 = *&v1[v4];
    v6 = v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v1[v4] = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_6AA00(0, v5[2] + 1, 1, v5);
      *&v1[v4] = v5;
    }

    v9 = v5[2];
    v8 = v5[3];
    if (v9 >= v8 >> 1)
    {
      v5 = sub_6AA00((v8 > 1), v9 + 1, 1, v5);
    }

    v5[2] = v9 + 1;
    v10 = &v5[2 * v9];
    v10[4] = sub_36C08;
    v10[5] = v3;
    *&v1[v4] = v5;
    swift_endAccess();
  }

  else
  {

    sub_A37A8(v1);
  }
}

void sub_A363C()
{
  if (v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing] == 1)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v0;
    v2 = swift_allocObject();
    *(v2 + 16) = sub_A96C4;
    *(v2 + 24) = v1;
    v3 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pendingStackItemUpdateRequests;
    swift_beginAccess();
    v4 = *&v0[v3];
    v5 = v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v0[v3] = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_6AA00(0, v4[2] + 1, 1, v4);
      *&v0[v3] = v4;
    }

    v8 = v4[2];
    v7 = v4[3];
    if (v8 >= v7 >> 1)
    {
      v4 = sub_6AA00((v7 > 1), v8 + 1, 1, v4);
    }

    v4[2] = v8 + 1;
    v9 = &v4[2 * v8];
    v9[4] = sub_36C08;
    v9[5] = v2;
    *&v0[v3] = v4;
    swift_endAccess();
  }

  else
  {

    sub_A37A8(v0);
  }
}

void sub_A37A8(_BYTE *a1)
{
  v2 = sub_AB7C10();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(sub_AB7C50() - 8);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsRevisionID];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *&a1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsRevisionID] = v12;
    if ((a1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] & 1) == 0)
    {
      a1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] = 1;
      v18 = v7;
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v17 = sub_ABA150();
      v13 = swift_allocObject();
      *(v13 + 16) = a1;
      aBlock[4] = sub_A9B84;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_167;
      v14 = _Block_copy(aBlock);
      v15 = a1;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_A9210(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
      sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
      sub_ABABB0();
      v16 = v17;
      sub_ABA160();
      (*(v3 + 8))(v5, v2);
      (*(v6 + 8))(v9, v18);
      _Block_release(v14);
    }
  }
}

void sub_A3ACC()
{
  v1 = sub_AB7C10();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_AB7C50() - 8);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] = 1;
    v14 = v6;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v13 = sub_ABA150();
    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    aBlock[4] = sub_A9B84;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_153;
    v10 = _Block_copy(aBlock);
    v11 = v0;

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_A9210(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
    sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
    sub_ABABB0();
    v12 = v13;
    sub_ABA160();
    (*(v2 + 8))(v4, v1);
    (*(v5 + 8))(v8, v14);
    _Block_release(v10);
  }
}

void sub_A3DD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v3 = (v309 - v2);
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v309 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(sub_AB7C50() - 8);
  __chkstk_darwin();
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate) != 1)
  {
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_shouldIgnoreStackItemUpdates) & 1) != 0 || (*(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing))
  {
    if (!*(*(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKinds) + 16))
    {
      v11 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController);
      if (v11)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_AF82B0;
        *(v12 + 32) = v11;
        v13 = v11;
        sub_4D4068(v12, 0);
      }

      else
      {

        sub_4D4068(_swiftEmptyArrayStorage, 0);
      }
    }

    return;
  }

  v337 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing;
  v326 = v9;
  v327 = v309 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = v7;
  v325 = v4;
  v335 = v3;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate) = 0;
  v376 = _swiftEmptyArrayStorage;
  v14 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKinds);
  v342 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isPageHeaderContentBottomHairlineVisible);
  v336 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_viewModelKindToViewController;
  v15 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_viewModelKindToViewController);

  v349 = sub_96934(_swiftEmptyArrayStorage);
  v16 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController);
  if (!v16)
  {
    v17 = 0;
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v17 = v16;
  sub_AB9730();
  if (*(&dword_10 + (v376 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v376 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_266;
  }

LABEL_11:
  sub_AB97F0();

  v17 = 1;
  v18 = v376;
LABEL_16:
  static ApplicationCapabilities.shared.getter(v377);
  v19 = v377[4];

  sub_70C54(v377);
  v20 = sub_472A84(10, v19);

  if (v20)
  {
    v21 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController);
    if (v21)
    {
      v22 = v17 + 1;
      v23 = v21;
      sub_AB9730();
      if (*(&dword_10 + (v376 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v376 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v18 = v376;
      v17 = v22;
    }
  }

  v24 = *(v14 + 2);
  v347 = v18;
  v348 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isInsidePopover;
  v333 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor;
  v334 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  swift_beginAccess();
  v25 = 0;
  v26 = (v14 + 32);
  v331 = UIFontTextStyleTitle2;
  v323 = &v354;
  v322 = (v5 + 8);
  v320 = 0x8000000000B4E1D0;
  v321 = (v8 + 8);
  v330 = UIContentSizeCategoryExtraSmall;
  v27 = *&UIEdgeInsetsZero.bottom;
  v328 = *&UIEdgeInsetsZero.top;
  v329 = v27;
  v317 = 0x8000000000B4E210;
  v318 = 0x8000000000B4E1F0;
  v315 = 0x8000000000B4E250;
  v316 = 0x8000000000B4E230;
  v314 = 0x8000000000B4E270;
  v332 = v342 ^ 1;
  v319 = 0xD000000000000011;
  v343 = 0xF000000000000007;
  v344 = v17;
  v339 = v15;
  v340 = (v14 + 32);
  v345 = v14;
  v341 = v24;
  do
  {
LABEL_22:
    if (v24 == v25)
    {

      *(v1 + v336) = v349;

      *(v1 + v337) = 1;
      v286 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsRevisionID);
      v287 = swift_allocObject();
      *(v287 + 16) = v1;
      *(v287 + 24) = v286;
      v341 = v286;
      v17 = v347;
      *(v287 + 32) = v347;
      v346 = v287;
      *(v287 + 40) = v342;
      if (!(v17 >> 62))
      {
        v28 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
        v288 = swift_allocObject();
        v345 = v288;
        *(v288 + 16) = v28;
        v8 = (v288 + 16);
        if (v28)
        {
          goto LABEL_239;
        }

        goto LABEL_268;
      }

LABEL_262:
      v5 = sub_ABB060();
      v305 = swift_allocObject();
      v345 = v305;
      *(v305 + 16) = v5;
      v8 = (v305 + 16);
      if (!v5)
      {
        v17 = v347;
LABEL_268:
        swift_bridgeObjectRetain_n();
        v307 = v1;
        sub_A7168(v307, v341, v17, v342);
        goto LABEL_269;
      }

      v306 = sub_ABB060();
      if (!v306)
      {
        swift_bridgeObjectRetain_n();
        v308 = v1;
        goto LABEL_269;
      }

      v28 = v306;
      if (v306 >= 1)
      {
        goto LABEL_276;
      }

      __break(1u);
LABEL_266:
      sub_AB97A0();
      goto LABEL_11;
    }

    v28 = v25;
    v29 = *(v14 + 2);
    if (v25 >= v29)
    {
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
      goto LABEL_262;
    }

    v30 = v26[v25];
    v8 = ((v30 >> 58) & 0x3C | (v30 >> 1) & 3);
    if (v8 != 3)
    {
      break;
    }

    ++v25;
  }

  while ((*(v348 + v1) & 1) != 0);
  v31 = v28 + v17;
  if (__OFADD__(v28, v17))
  {
    goto LABEL_259;
  }

  if (v28)
  {
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_260;
    }

    v32 = __OFADD__(v29, v17);
    v34 = v29 + v17;
    if (v32)
    {
      goto LABEL_261;
    }

    if (v33 == v34)
    {
      v35 = (&dword_0 + 2);
    }

    else
    {
      v35 = (&dword_0 + 1);
    }
  }

  else
  {
    v35 = 0;
  }

  v14 = (v30 & 0xFFFFFFFFFFFFFF9);
  v338 = sub_A6C4C(v30);
  v36 = *(v15 + 16);
  v347 = v14;
  if (v36)
  {
    v37 = sub_2EC220(v30);
    if (v38)
    {
      v39 = *(*(v15 + 56) + 8 * v37);
      goto LABEL_145;
    }
  }

  switch(v8)
  {
    case 1:
      v40 = objc_allocWithZone(type metadata accessor for JSShelfViewController(0));
      v41 = JSShelfViewController.init(shelf:)(v14);
      goto LABEL_86;
    case 2:
      v90 = type metadata accessor for JSBrickViewController(0);
      v91 = objc_allocWithZone(v90);
      *&v91[qword_DE8710] = 0;
      v91[qword_DE8718] = 1;
      v92 = &v91[qword_DE8720];
      *v92 = 0;
      *(v92 + 1) = 0;
      v92[16] = 1;
      v93 = &v91[qword_DE8730];
      *v93 = 0;
      v93[1] = 0;
      *&v91[qword_DE8738] = 0;
      *&v91[qword_DE8728] = v14;
      v352.receiver = v91;
      v352.super_class = v90;
      v94 = v14;
      v95 = objc_msgSendSuper2(&v352, "init");
      v96 = qword_DE6D80;
      v97 = v95;
      if (v96 != -1)
      {
        swift_once();
      }

      v98 = qword_E0BF40;
      if (objc_getAssociatedObject(v97, qword_E0BF40))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v373 = 0u;
        v374 = 0u;
      }

      v353 = v373;
      v354 = v374;
      if (*(&v374 + 1))
      {
        type metadata accessor for VerticalStackViewController.Item();
        if (swift_dynamicCast())
        {
          v14 = v351;
          goto LABEL_115;
        }

        v153 = v35;
      }

      else
      {
        v153 = v35;
        sub_12E1C(&v353, &unk_DE8E40, &unk_AF8050);
      }

      v168 = objc_allocWithZone(type metadata accessor for VerticalStackViewController.Item());
      v169 = v97;
      v170 = sub_4DE3E0();

      objc_setAssociatedObject(v169, v98, v170, &dword_0 + 1);
      v35 = v153;
      v14 = v170;
LABEL_115:
      v171 = *(v14 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets);
      v172 = *(v14 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 8);
      v174 = *(v14 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16);
      v173 = *(v14 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 24);
      *(v14 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16) = 0x4030000000000000;
      type metadata accessor for UIEdgeInsets(0);
      *&v353 = v171;
      *(&v353 + 1) = v172;
      *&v354 = 0x4030000000000000;
      *(&v354 + 1) = v173;
      *&v373 = v171;
      *(&v373 + 1) = v172;
      *&v374 = v174;
      *(&v374 + 1) = v173;
      if ((sub_AB38D0() & 1) == 0)
      {
        goto LABEL_125;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_125;
      }

      v176 = Strong;
      if (*(Strong + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) == 1)
      {
        goto LABEL_124;
      }

      *(Strong + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) = 1;
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v312 = sub_ABA150();
      v177 = swift_allocObject();
      *(v177 + 16) = v176;
      v355 = sub_A9B90;
      v356 = v177;
      *&v353 = _NSConcreteStackBlock;
      *(&v353 + 1) = 1107296256;
      v178 = &block_descriptor_137;
      goto LABEL_129;
    case 3:
      v99 = type metadata accessor for JSFlowcaseViewController(0);
      v100 = objc_allocWithZone(v99);
      *&v100[qword_E074A0] = 0;
      v101 = &v100[qword_E074B0];
      *v101 = 0;
      *(v101 + 1) = 0;
      v101[16] = 1;
      v102 = &v100[qword_E074B8];
      *v102 = 0;
      *(v102 + 1) = 0;
      *&v100[qword_E074A8] = v14;
      v357.receiver = v100;
      v357.super_class = v99;
      v103 = v14;
      v104 = objc_msgSendSuper2(&v357, "init");
      v105 = qword_DE6D80;
      v97 = v104;
      if (v105 != -1)
      {
        swift_once();
      }

      v106 = qword_E0BF40;
      if (objc_getAssociatedObject(v97, qword_E0BF40))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v373 = 0u;
        v374 = 0u;
      }

      v353 = v373;
      v354 = v374;
      if (*(&v374 + 1))
      {
        type metadata accessor for VerticalStackViewController.Item();
        if (swift_dynamicCast())
        {
          v14 = v351;
          goto LABEL_121;
        }

        v154 = v35;
      }

      else
      {
        v154 = v35;
        sub_12E1C(&v353, &unk_DE8E40, &unk_AF8050);
      }

      v179 = objc_allocWithZone(type metadata accessor for VerticalStackViewController.Item());
      v180 = v97;
      v181 = sub_4DE3E0();

      objc_setAssociatedObject(v180, v106, v181, &dword_0 + 1);
      v35 = v154;
      v14 = v181;
LABEL_121:
      v182 = *(v14 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets);
      v183 = *(v14 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 8);
      v185 = *(v14 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16);
      v184 = *(v14 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 24);
      *(v14 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16) = 0x4030000000000000;
      type metadata accessor for UIEdgeInsets(0);
      *&v353 = v182;
      *(&v353 + 1) = v183;
      *&v354 = 0x4030000000000000;
      *(&v354 + 1) = v184;
      *&v373 = v182;
      *(&v373 + 1) = v183;
      *&v374 = v185;
      *(&v374 + 1) = v184;
      if ((sub_AB38D0() & 1) != 0 && (v186 = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v176 = v186;
        if (*(v186 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) == 1)
        {
LABEL_124:
        }

        else
        {
          *(v186 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) = 1;
          sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
          v312 = sub_ABA150();
          v187 = swift_allocObject();
          *(v187 + 16) = v176;
          v355 = sub_A95F0;
          v356 = v187;
          *&v353 = _NSConcreteStackBlock;
          *(&v353 + 1) = 1107296256;
          v178 = &block_descriptor_130;
LABEL_129:
          *&v354 = sub_1B5EB4;
          *(&v354 + 1) = v178;
          v313 = _Block_copy(&v353);
          v311 = v176;

          sub_AB7C30();
          *&v353 = _swiftEmptyArrayStorage;
          v309[1] = sub_A9210(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          v346 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
          sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
          v188 = v324;
          v310 = v14;
          v14 = v325;
          sub_ABABB0();
          v189 = v327;
          v190 = v312;
          sub_ABA160();
          v191 = v188;
          v35 = v346;
          (*v322)(v191, v14);
          (*v321)(v189, v326);
          _Block_release(v313);
        }
      }

      else
      {
LABEL_125:
      }

      goto LABEL_146;
    case 4:
      v125 = objc_allocWithZone(type metadata accessor for JSGridViewController(0));
      v8 = v14;
      v59 = sub_4A50FC(v8);
      v126 = JSGrid.sections.getter();
      v14 = v35;
      if (v126 >> 62)
      {
        v281 = v126;
        v128 = sub_ABB060();
        v126 = v281;
      }

      else
      {
        v128 = *(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8));
      }

      if (!v128)
      {

        goto LABEL_133;
      }

      if ((v126 & 0xC000000000000001) != 0)
      {
        v129 = sub_35FC8C(0, v126, v127);
        goto LABEL_74;
      }

      if (*(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8)))
      {
        v129 = *(v126 + 32);
LABEL_74:
        v130 = v129;

        v131 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType;
        swift_beginAccess();
        v132 = v130[v131];

        if (v132 > 3 && v132 > 5)
        {
          if (v132 == 6)
          {

            goto LABEL_137;
          }
        }

        else
        {
          v192 = sub_ABB3C0();

          if (v192)
          {
            goto LABEL_137;
          }
        }

LABEL_133:
        v193 = sub_4D3C64();
        v194 = *&v193[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
        v195 = *&v193[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 8];
        v197 = *&v193[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16];
        v196 = *&v193[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 24];
        *&v193[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16] = 0x4030000000000000;
        type metadata accessor for UIEdgeInsets(0);
        *&v353 = v194;
        *(&v353 + 1) = v195;
        *&v354 = 0x4030000000000000;
        *(&v354 + 1) = v196;
        *&v373 = v194;
        *(&v373 + 1) = v195;
        *&v374 = v197;
        *(&v374 + 1) = v196;
        if ((sub_AB38D0() & 1) != 0 && (v198 = swift_unknownObjectWeakLoadStrong()) != 0)
        {
          v199 = v198;
          sub_4D55B0();
        }

        else
        {
        }

LABEL_137:
        v200 = sub_4D3C64();
        v201 = v200;
        if (v35)
        {
          v202 = 0.0;
        }

        else
        {
          v202 = 8.0;
        }

        v203 = *&v200[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 16];
        v204 = *&v200[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 24];
        v206 = *&v200[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
        v205 = *&v200[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 8];
        *&v200[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets] = v202;
        type metadata accessor for UIEdgeInsets(0);
        *&v353 = v202;
        *(&v353 + 1) = v205;
        *&v354 = v203;
        *(&v354 + 1) = v204;
        *&v373 = v206;
        *(&v373 + 1) = v205;
        *&v374 = v203;
        *(&v374 + 1) = v204;
        if (sub_AB38D0())
        {
          v207 = swift_unknownObjectWeakLoadStrong();
          if (v207)
          {
            v208 = v207;
            sub_4D55B0();

            v201 = v208;
          }
        }

LABEL_144:
        v39 = v59;
LABEL_145:
        v97 = v39;
LABEL_146:
        v351 = v97;
        sub_13C80(0, &qword_DE7500, UIViewController_ptr);
        v209 = v97;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB10, &qword_AF9260);
        if (swift_dynamicCast())
        {
          sub_70DF8(&v373, &v353);
          v14 = v335;
          sub_15F84(v1 + v334, v335, &unk_DF1330, &qword_AF9120);
          v346 = v1;
          v210 = v30;
          v211 = v15;
          v212 = v209;
          v213 = v35;
          v214 = *(&v354 + 1);
          v215 = v355;
          __swift_mutable_project_boxed_opaque_existential_1(&v353, *(&v354 + 1));
          v216 = *(v215 + 2);
          v217 = v215;
          v218 = v213;
          v209 = v212;
          v15 = v211;
          v30 = v210;
          v1 = v346;
          v216(v14, v214, v217);

          __swift_destroy_boxed_opaque_existential_0(&v353);
          if (v218 != (&dword_0 + 2))
          {
            goto LABEL_152;
          }
        }

        else
        {

          v375 = 0;
          v373 = 0u;
          v374 = 0u;
          sub_12E1C(&v373, &qword_DEAB18, &qword_AF9268);
          if (v35 != (&dword_0 + 2))
          {
            goto LABEL_152;
          }
        }

        v219 = *(v1 + v333);
        if (v219)
        {
          [v209 setViewBackgroundColor:v219];
          goto LABEL_157;
        }

LABEL_152:
        swift_getObjectType();
        v220 = swift_conformsToProtocol2();
        if (v220 && v209 && (v221 = v220, ObjectType = swift_getObjectType(), v346 = v30, v223 = v209, v224 = v1, v14 = (v221 + 8), v225 = *(v221 + 8), v226 = v223, v227 = ObjectType, v15 = v339, v228 = v225(v227, v221), v1 = v224, v209 = v223, v30 = v346, v229 = v228, v226, v229))
        {
          [v226 setViewBackgroundColor:v229];
        }

        else
        {
          v230 = v209;
          v231 = [(objc_class *)v1 viewBackgroundColor];
          [v230 setViewBackgroundColor:v231];
        }

LABEL_157:
        swift_getObjectType();
        v232 = swift_conformsToProtocol2();
        if (!v232 || !v209)
        {
          goto LABEL_168;
        }

        v8 = v232;
        if ((~v343 & 0xF000000000000007) != 0)
        {
          if (v338)
          {
            goto LABEL_163;
          }

          v264 = (v343 >> 58) & 0x3C | (v343 >> 1) & 3;
          if (v264 <= 14)
          {
            if (v264 <= 6)
            {
              if (v264 == 1)
              {
                v273 = v209;
                sub_70E5C(v343);
                v274 = JSShelf.sections.getter();
                if (v274 >> 62)
                {
                  v282 = v274;
                  v283 = sub_ABB060();
                  v274 = v282;
                  if (!v283)
                  {
                    goto LABEL_233;
                  }
                }

                else if (!*(&dword_10 + (v274 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_233;
                }

                if ((v274 & 0xC000000000000001) != 0)
                {
                  v276 = sub_360280(0, v274, v275);
                }

                else
                {
                  if (!*(&dword_10 + (v274 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_274;
                  }

                  v276 = *(v274 + 32);
                }

                v277 = v276;

                v278 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType;
                swift_beginAccess();
                v279 = v277[v278];

                if (v279 <= 5 || v279 <= 8)
                {
                  goto LABEL_227;
                }

                if (v279 != 9)
                {
                  if (v279 != 10)
                  {
                    goto LABEL_234;
                  }

LABEL_227:
                  v280 = sub_ABB3C0();

                  sub_2D4D8(v343);
                  v233 = v280 ^ 1;
                  goto LABEL_165;
                }
              }

              else
              {
                if (v264 != 4)
                {
                  goto LABEL_209;
                }

                v265 = v209;
                sub_70E5C(v343);
                v266 = JSGrid.sections.getter();
                if (v266 >> 62)
                {
                  v284 = v266;
                  v285 = sub_ABB060();
                  v266 = v284;
                  if (!v285)
                  {
LABEL_233:

LABEL_234:
                    sub_2D4D8(v343);
                    v233 = 1;
                    goto LABEL_165;
                  }
                }

                else if (!*(&dword_10 + (v266 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_233;
                }

                if ((v266 & 0xC000000000000001) != 0)
                {
                  v268 = sub_35FC8C(0, v266, v267);
                }

                else
                {
                  if (!*(&dword_10 + (v266 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_273;
                  }

                  v268 = *(v266 + 32);
                }

                v269 = v268;

                v270 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType;
                swift_beginAccess();
                v271 = v269[v270];

                if (v271 <= 3 || v271 <= 5)
                {
                  goto LABEL_227;
                }

                if (v271 != 6)
                {
                  goto LABEL_234;
                }
              }

              sub_2D4D8(v343);
              goto LABEL_164;
            }

            if (v264 != 7 && v264 != 11)
            {
              goto LABEL_209;
            }

LABEL_163:
            v235 = v209;
LABEL_164:
            v233 = 0;
            goto LABEL_165;
          }

          if (v264 > 19)
          {
            if (v264 != 20 && v264 != 21)
            {
LABEL_209:
              v272 = v209;
              v233 = 1;
              goto LABEL_165;
            }

            goto LABEL_163;
          }

          if (v264 != 15)
          {
            if (v264 != 19)
            {
              goto LABEL_209;
            }

            goto LABEL_163;
          }

          type metadata accessor for JSItemizedTextListViewController();
          v233 = swift_dynamicCastClass() == 0;
        }

        else
        {
          v233 = v338 ^ 1;
        }

        v234 = v209;
LABEL_165:
        if (!v28)
        {
          v233 &= v332;
        }

        v236 = swift_getObjectType();
        (*(v8 + 2))(v233 & 1, v236, v8);

LABEL_168:
        swift_getObjectType();
        v237 = swift_conformsToProtocol2();
        if (v237 && v209)
        {
          v238 = v237;
          v239 = (~v343 & 0xF000000000000007) != 0 && ((v343 >> 58) & 0x3C | (v343 >> 1) & 3) == 7;
          v240 = swift_getObjectType();
          v346 = v30;
          v241 = v1;
          v242 = *(v238 + 16);
          v243 = v209;
          v242(v239, v240, v238);
          v1 = v241;
          v30 = v346;

          v15 = v339;
        }

        type metadata accessor for JSSplitWidgetViewController();
        v244 = swift_dynamicCastClass();
        v14 = v345;
        if (v244)
        {
          v245 = v244;
          v246 = *(v244 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController);
          if (v246)
          {
            v247 = v209;
            v248 = v246;
            v249 = JSSplitWidgetViewModel.leftViewModelKind.getter();
            if ((~v249 & 0xF000000000000007) != 0)
            {
              v251 = v249;
              v252 = v349;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v353 = v252;
              sub_91ABC(v248, v251, isUniquelyReferenced_nonNull_native);
              sub_2D4D8(v251);
              v349 = v353;
            }

            else
            {
            }

            v15 = v339;
          }

          else
          {
            v250 = v209;
          }

          v254 = *(v245 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController);
          if (v254)
          {
            v255 = v254;
            v256 = JSSplitWidgetViewModel.rightViewModelKind.getter();
            if ((~v256 & 0xF000000000000007) != 0)
            {
              v257 = v256;
              v258 = v349;
              v259 = swift_isUniquelyReferenced_nonNull_native();
              *&v353 = v258;
              sub_91ABC(v255, v257, v259);
              sub_2D4D8(v257);

              v349 = v353;
            }

            else
            {
            }
          }

          else
          {
          }
        }

        v260 = v347;
        v261 = v209;
        v262 = v349;
        v263 = swift_isUniquelyReferenced_nonNull_native();
        *&v353 = v262;
        sub_91ABC(v261, v30, v263);

        v349 = v353;
        sub_AB9730();
        if (*(&dword_10 + (v376 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v376 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        v25 = v28 + 1;
        sub_AB97F0();
        sub_2D4D8(v343);

        v347 = v376;
        v343 = v30;
        v17 = v344;
        v26 = v340;
        v24 = v341;
        goto LABEL_22;
      }

      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      *&v353 = 0;
      *(&v353 + 1) = 0xE000000000000000;
      sub_ABAD90(53);
      v379._countAndFlagsBits = 0xD000000000000032;
      v379._object = 0x8000000000B4E190;
      sub_AB94A0(v379);
      *&v373 = v30;
      sub_ABAF70();
      v380._countAndFlagsBits = 46;
      v380._object = 0xE100000000000000;
      sub_AB94A0(v380);
      sub_ABAFD0();
      __break(1u);
LABEL_276:
      v17 = v347;
LABEL_239:
      v289 = v17 & 0xC000000000000001;
      swift_bridgeObjectRetain_n();
      v340 = v1;
      swift_beginAccess();
      v15 = 0;
      v344 = v8;
      do
      {
        if (v289)
        {
          v291 = sub_35F8D4(v15, v17);
        }

        else
        {
          v291 = *(v17 + 8 * v15 + 32);
        }

        v292 = v291;
        v350 = v291;
        sub_13C80(0, &qword_DE7500, UIViewController_ptr);
        v1 = v292;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB28, &qword_AFACA0);
        if (swift_dynamicCast())
        {
          sub_70DF8(&v373, &v353);
          v293 = *(&v354 + 1);
          v294 = v355;
          v348 = __swift_project_boxed_opaque_existential_1(&v353, *(&v354 + 1));
          v295 = swift_allocObject();
          v349 = v1;
          v296 = v28;
          v297 = v295;
          v295[2] = v345;
          v295[3] = sub_A9638;
          v295[4] = v346;
          v14 = *(v294 + 1);

          v298 = v294;
          v8 = v344;
          (v14)(sub_A96B8, v297, v293, v298);
          v28 = v296;
          v1 = v349;
          v17 = v347;

          __swift_destroy_boxed_opaque_existential_0(&v353);
        }

        else
        {
          v375 = 0;
          v373 = 0u;
          v374 = 0u;
          sub_12E1C(&v373, &qword_DEAB20, &qword_AF9270);
          v299 = *v8 - 1;
          if (__OFSUB__(*v8, 1))
          {
            goto LABEL_258;
          }

          *v8 = v299;
          if (!v299)
          {
            sub_A7168(v340, v341, v17, v342);
          }
        }

        v300 = [(objc_class *)v1 parentViewController];
        if (v300)
        {
          v301 = v300;
          type metadata accessor for JSDrivenViewController(0);
          v302 = swift_dynamicCastClass();
          if (v302)
          {
            v303 = v302;
            v14 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_canShowOfflineMessage;
            swift_beginAccess();
            v304 = *(v14 + v303);
            *(v14 + v303) = 0;
            if (v304 == 1)
            {
              sub_61E28(2);
            }

            v290 = v301;
          }

          else
          {
            v290 = v1;
            v1 = v301;
          }
        }

        ++v15;
      }

      while (v28 != v15);
LABEL_269:
      sub_2D4D8(v343);

      swift_bridgeObjectRelease_n();

      return;
    case 5:
      v80 = type metadata accessor for JSLiveRadioCaseViewController(0);
      v81 = objc_allocWithZone(v80);
      v81[qword_E07FE0] = 0;
      *&v81[qword_E07FE8] = 0;
      v82 = qword_E71968;
      v83 = type metadata accessor for MetricsPageProperties(0);
      (*(*(v83 - 8) + 56))(&v81[v82], 1, 1, v83);
      *&v81[qword_E71970] = 0;
      *&v81[qword_E07FF8] = 0;
      v84 = &v81[qword_E08000];
      *v84 = 0;
      *(v84 + 1) = 0;
      v84[16] = 1;
      v85 = &v81[qword_E08008];
      *v85 = 0;
      v85[1] = 0;
      *&v81[qword_E07FF0] = v14;
      v359.receiver = v81;
      v359.super_class = v80;
      v86 = v14;
      v41 = objc_msgSendSuper2(&v359, "init");
      goto LABEL_86;
    case 7:
      v63 = type metadata accessor for JSMenuViewController(0);
      v64 = objc_allocWithZone(v63);
      *&v64[qword_DE9D50] = 0;
      *&v64[qword_DE9D58] = 0;
      v64[qword_DE9D60] = 0;
      *&v64[qword_DE9D70] = 0;
      v65 = qword_DE9D78;
      v66 = sub_AB3820();
      (*(*(v66 - 8) + 56))(&v64[v65], 1, 1, v66);
      *&v64[qword_DE9D80] = 0;
      *&v64[qword_DE9D68] = v14;
      v358.receiver = v64;
      v358.super_class = v63;
      v67 = v14;
      v41 = objc_msgSendSuper2(&v358, "init");
      goto LABEL_86;
    case 11:
      v68 = type metadata accessor for JSStaticImageViewController();
      v69 = objc_allocWithZone(v68);
      *&v69[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_tapGestureRecognizerHandler] = 0;
      *&v69[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_imageView] = 0;
      *&v69[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_artworkCatalog] = 0;
      *&v69[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_image] = 0;
      *&v69[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_expectedImageAspectRatio] = 0x3FF0000000000000;
      *&v69[OBJC_IVAR____TtC16MusicApplication27JSStaticImageViewController_staticImageViewModel] = v14;
      v360.receiver = v69;
      v360.super_class = v68;
      v70 = v14;
      v71 = objc_msgSendSuper2(&v360, "initWithNibName:bundle:", 0, 0);
      v14 = v35;
      v72 = *(&stru_B8.reloff + (swift_isaMask & *v70));
      v59 = v71;
      v72(v71, &off_D12820);
      v35 = v14;
      v15 = v339;
      sub_41896C();
      goto LABEL_84;
    case 12:
      v52 = type metadata accessor for JSParagraphViewController();
      v53 = objc_allocWithZone(v52);
      v54 = &v53[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_additionalContentInsets];
      v55 = v329;
      *v54 = v328;
      *(v54 + 1) = v55;
      *&v53[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController____lazy_storage___paragraphView] = 0;
      *&v53[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_paragraphViewModel] = v14;
      v361.receiver = v53;
      v361.super_class = v52;
      v56 = v14;
      v57 = objc_msgSendSuper2(&v361, "initWithNibName:bundle:", 0, 0);
      v58 = qword_DE6D80;
      v59 = v57;
      if (v58 != -1)
      {
        swift_once();
      }

      v60 = qword_E0BF40;
      if (objc_getAssociatedObject(v59, qword_E0BF40))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v373 = 0u;
        v374 = 0u;
      }

      v353 = v373;
      v354 = v374;
      if (*(&v374 + 1))
      {
        type metadata accessor for VerticalStackViewController.Item();
        if (swift_dynamicCast())
        {
          v152 = v351;
          goto LABEL_112;
        }

        v14 = v35;
      }

      else
      {
        v14 = v35;
        sub_12E1C(&v353, &unk_DE8E40, &unk_AF8050);
      }

      v162 = objc_allocWithZone(type metadata accessor for VerticalStackViewController.Item());
      v163 = v59;
      v152 = sub_4DE3E0();

      objc_setAssociatedObject(v163, v60, v152, &dword_0 + 1);
      v35 = v14;
LABEL_112:
      v164 = &v152[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      v165 = *&v152[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      v166 = *&v152[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8];
      v167 = v152[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10];
      *v164 = 0;
      *(v164 + 4) = 256;
      v164[10] = 0;
      sub_4DBD3C(v165, v166 | (v167 << 16));

      goto LABEL_144;
    case 15:
      v77 = type metadata accessor for JSItemizedTextListViewController();
      v78 = objc_allocWithZone(v77);
      v78[OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_verticalStackItemPrefersTopHairline] = 1;
      *&v78[OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_textListView] = 0;
      *&v78[OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_viewModel] = v14;
      v362.receiver = v78;
      v362.super_class = v77;
      v79 = v14;
      v41 = objc_msgSendSuper2(&v362, "initWithNibName:bundle:", 0, 0);
      goto LABEL_86;
    case 16:
      v346 = type metadata accessor for JSGroupedTextListViewController();
      v42 = objc_allocWithZone(v346);
      v42[OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_verticalStackItemPrefersTopHairline] = 1;
      v43 = v35;
      v44 = OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textDrawingCache;
      type metadata accessor for TextDrawing.Cache();
      swift_allocObject();
      *&v42[v44] = TextDrawing.Cache.init()();
      v35 = v43;
      v45 = OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textListView;
      *&v42[v45] = [objc_allocWithZone(type metadata accessor for GroupedTextListView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      *&v42[OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_viewModel] = v14;
      v363.receiver = v42;
      v363.super_class = v346;
      v46 = v14;
      v41 = objc_msgSendSuper2(&v363, "initWithNibName:bundle:", 0, 0);
      goto LABEL_86;
    case 18:
      v73 = type metadata accessor for JSBadgingViewController();
      v74 = objc_allocWithZone(v73);
      v75 = OBJC_IVAR____TtC16MusicApplication23JSBadgingViewController_badgingView;
      *&v74[v75] = [objc_allocWithZone(type metadata accessor for BadgingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      *&v74[OBJC_IVAR____TtC16MusicApplication23JSBadgingViewController_badgingViewModel] = v14;
      v365.receiver = v74;
      v365.super_class = v73;
      v76 = v14;
      v41 = objc_msgSendSuper2(&v365, "initWithNibName:bundle:", 0, 0);
      goto LABEL_86;
    case 19:
      v133 = type metadata accessor for JSMusicVideoDetailViewController();
      v134 = objc_allocWithZone(v133);
      *&v134[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView] = 0;
      *&v134[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem] = 0;
      *&v134[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_musicVideoViewModel] = v14;
      v366.receiver = v134;
      v366.super_class = v133;
      v135 = v14;
      v51 = objc_msgSendSuper2(&v366, "initWithNibName:bundle:", 0, 0);
      sub_5D820();
      goto LABEL_77;
    case 20:
      v47 = type metadata accessor for JSTVShowEpisodeDetailViewController();
      v48 = objc_allocWithZone(v47);
      *&v48[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView] = 0;
      v49 = OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_artworkCachingReference;
      type metadata accessor for Artwork.CachingReference();
      *&v48[v49] = swift_allocObject();
      *&v48[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem] = 0;
      *&v48[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetail] = v14;
      v367.receiver = v48;
      v367.super_class = v47;
      v50 = v14;
      v51 = objc_msgSendSuper2(&v367, "initWithNibName:bundle:", 0, 0);
      sub_16580C();
      goto LABEL_77;
    case 21:
      v87 = type metadata accessor for JSTVShowPlayBarViewController();
      v88 = objc_allocWithZone(v87);
      *&v88[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_contentItem] = 0;
      *&v88[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarView] = 0;
      *&v88[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_episode] = 0;
      *&v88[OBJC_IVAR____TtC16MusicApplication29JSTVShowPlayBarViewController_tvShowPlayBarViewModel] = v14;
      v368.receiver = v88;
      v368.super_class = v87;
      v89 = v14;
      v51 = objc_msgSendSuper2(&v368, "initWithNibName:bundle:", 0, 0);
      sub_291574();
LABEL_77:

      v39 = v51;
      goto LABEL_145;
    case 22:
      v142 = objc_allocWithZone(type metadata accessor for JSSearchLandingUpsellViewController(0));
      sub_100A88(v14);
      goto LABEL_86;
    case 24:
      v61 = objc_allocWithZone(type metadata accessor for JSSocialOnboardingFriendsFinderViewController(0));
      v41 = sub_3388F0(v14);
      goto LABEL_86;
    case 28:
      v144 = type metadata accessor for JSSocialProfileCollectionViewController(0);
      v145 = objc_allocWithZone(v144);
      *&v145[qword_DF4608] = 0;
      *&v145[qword_DF4610] = 0;
      *&v145[qword_DF4600] = v14;
      v369.receiver = v145;
      v369.super_class = v144;
      v146 = v14;
      v147 = objc_msgSendSuper2(&v369, "init");
      swift_beginAccess();
      v14 = v35;
      v59 = v147;

      v148 = sub_AB9260();

      [v59 setTitle:v148];

      v35 = v14;
      v149 = v146 + OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_delegate;
      swift_beginAccess();
      *(v149 + 1) = &off_CFFCF8;
      swift_unknownObjectWeakAssign();

LABEL_84:
      goto LABEL_144;
    case 31:
      v346 = v35;
      v107 = type metadata accessor for JSSplitWidgetViewController();
      v108 = objc_allocWithZone(v107);
      *&v108[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView] = 0;
      *&v108[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController] = 0;
      *&v108[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController] = 0;
      v109 = &v108[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_lastSeenViewBounds];
      *v109 = 0u;
      v109[1] = 0u;
      v110 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_contentSizeObserverMap;
      v111 = v14;
      *&v108[v110] = sub_96FE0(_swiftEmptyArrayStorage);
      v108[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState] = 0x80;
      *&v108[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_splitWidgetViewModel] = v111;
      v371.receiver = v108;
      v371.super_class = v107;
      v14 = v111;
      v112 = objc_msgSendSuper2(&v371, "initWithNibName:bundle:", 0, 0);
      v113 = JSSplitWidgetViewModel.viewModelKinds.getter();
      sub_CCE28(v113);

      if (qword_DE6D80 != -1)
      {
        swift_once();
      }

      v114 = qword_E0BF40;
      if (objc_getAssociatedObject(v112, qword_E0BF40))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v373 = 0u;
        v374 = 0u;
      }

      v353 = v373;
      v354 = v374;
      if (*(&v374 + 1))
      {
        type metadata accessor for VerticalStackViewController.Item();
        if (swift_dynamicCast())
        {
          v155 = v351;

          goto LABEL_108;
        }
      }

      else
      {
        sub_12E1C(&v353, &unk_DE8E40, &unk_AF8050);
      }

      v156 = objc_allocWithZone(type metadata accessor for VerticalStackViewController.Item());
      v157 = v112;
      v155 = sub_4DE3E0();

      objc_setAssociatedObject(v157, v114, v155, &dword_0 + 1);
LABEL_108:
      v35 = v346;
      v158 = &v155[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      v159 = *&v155[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      v160 = *&v155[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8];
      v161 = v155[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10];
      *v158 = 0;
      *(v158 + 4) = 256;
      v158[10] = 0;
      sub_4DBD3C(v159, v160 | (v161 << 16));

      v39 = v112;
      goto LABEL_145;
    case 32:
      v346 = type metadata accessor for JSInlineSocialUpsellViewController();
      v120 = objc_allocWithZone(v346);
      *&v120[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_socialUpsellView] = 0;
      v121 = OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_artworkCachingReference;
      type metadata accessor for Artwork.CachingReference();
      *&v120[v121] = swift_allocObject();
      v122 = v35;
      v123 = OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_textDrawingCache;
      type metadata accessor for TextDrawing.Cache();
      swift_allocObject();
      *&v120[v123] = TextDrawing.Cache.init()();
      v35 = v122;
      *&v120[OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_inlineSocialUpsell] = v14;
      v370.receiver = v120;
      v370.super_class = v346;
      v124 = v14;
      v41 = objc_msgSendSuper2(&v370, "initWithNibName:bundle:", 0, 0);
      goto LABEL_86;
    case 34:
      v143 = objc_allocWithZone(type metadata accessor for JSInlinePopupViewController());
      sub_31A7BC(v14);
      goto LABEL_86;
    case 37:
      v115 = objc_allocWithZone(type metadata accessor for JSPrivacyLinkViewController());
      v41 = JSPrivacyLinkViewController.init(privacyLinkViewModel:)(v14);
      goto LABEL_86;
    case 38:
      v116 = type metadata accessor for JSBiographyViewController();
      v117 = objc_allocWithZone(v116);
      v346 = v35;
      v118 = OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_textDrawingCache;
      type metadata accessor for TextDrawing.Cache();
      swift_allocObject();
      *&v117[v118] = TextDrawing.Cache.init()();
      v35 = v346;
      *&v117[OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController____lazy_storage___biographyView] = 0;
      *&v117[OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_viewModel] = v14;
      v364.receiver = v117;
      v364.super_class = v116;
      v119 = v14;
      v41 = objc_msgSendSuper2(&v364, "initWithNibName:bundle:", 0, 0);
      goto LABEL_86;
    case 39:
      v346 = v35;
      v136 = type metadata accessor for JSSearchLandingViewController(0);
      v137 = objc_allocWithZone(v136);
      *(v137 + qword_DF9F88) = 0;
      *(v137 + qword_DF9F90) = 0;
      *(v137 + qword_DF9F98) = 0;
      v138 = v137 + qword_DF9FA8;
      *v138 = 0;
      v138[1] = 0;
      v313 = qword_DF9FB0;
      v139 = [objc_allocWithZone(UILabel) init];
      [v139 setAdjustsFontForContentSizeCategory:1];
      sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
      v140 = sub_ABA550();
      [v139 setFont:v140];

      [v139 setMaximumContentSizeCategory:v330];
      if (qword_DE6C98 != -1)
      {
        swift_once();
      }

      [v139 setTextColor:qword_E718D8];
      [v139 setNumberOfLines:1];
      *&v313[v137] = v139;
      *(v137 + qword_DF9FA0) = v14;
      v372.receiver = v137;
      v372.super_class = v136;
      v141 = v14;
      v97 = objc_msgSendSuper2(&v372, "init");
      v35 = v346;
      goto LABEL_146;
    case 40:
      v150 = objc_allocWithZone(_s14ViewControllerCMa());
      v151 = v14;
      v41 = sub_2882EC(v30 & 0xFFFFFFFFFFFFFF9);
      goto LABEL_86;
    case 41:
      v62 = objc_allocWithZone(type metadata accessor for JSListenNowMusicSiriUpsellViewController(0));
      v41 = sub_3504C(v14);
LABEL_86:
      v39 = v41;
      goto LABEL_145;
    default:
      goto LABEL_275;
  }
}

unint64_t sub_A6C4C(unint64_t a1)
{
  result = 0;
  v3 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  if (v3 <= 15)
  {
    if (v3 <= 4)
    {
      if (v3 == 1)
      {
        v17 = a1 & 0xFFFFFFFFFFFFFF9;
        v18 = ((a1 & 0xFFFFFFFFFFFFFF9) + OBJC_IVAR____TtC11MusicJSCore7JSShelf_title);
        swift_beginAccess();
        v19 = v18[1];
        v20 = *v18 & 0xFFFFFFFFFFFFLL;
        if ((v19 & 0x2000000000000000) != 0)
        {
          v20 = HIBYTE(v19) & 0xF;
        }

        if (!v20)
        {
          v21 = (v17 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_supertitle);
          swift_beginAccess();
          v22 = v21[1];
          v23 = *v21 & 0xFFFFFFFFFFFFLL;
          if ((v22 & 0x2000000000000000) != 0)
          {
            v23 = HIBYTE(v22) & 0xF;
          }

          return v23 != 0;
        }

        return 1;
      }

      if (v3 != 2)
      {
        if (v3 != 4)
        {
          return result;
        }

        result = JSGrid.sections.getter();
        if (result >> 62)
        {
          v36 = result;
          v37 = sub_ABB060();
          result = v36;
          if (v37)
          {
            goto LABEL_8;
          }
        }

        else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_8:
          if ((result & 0xC000000000000001) != 0)
          {
            v5 = sub_35FC8C(0, result, v4);
            goto LABEL_11;
          }

          if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
          {
            v5 = *(result + 32);
LABEL_11:
            v6 = v5;

            v7 = &v6[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title];
            swift_beginAccess();
            v9 = *v7;
            v8 = *(v7 + 1);

LABEL_44:
            v23 = HIBYTE(v8) & 0xF;
            v27 = v9 & 0xFFFFFFFFFFFFLL;
            goto LABEL_55;
          }

          __break(1u);
LABEL_76:
          __break(1u);
          return result;
        }

LABEL_72:

        return 0;
      }

      v10 = a1 & 0xFFFFFFFFFFFFFF9;
      v30 = ((a1 & 0xFFFFFFFFFFFFFF9) + OBJC_IVAR____TtC11MusicJSCore7JSBrick_title);
      swift_beginAccess();
      v31 = v30[1];
      if (v31)
      {
        if ((v31 & 0x2000000000000000) != 0 ? HIBYTE(v31) & 0xF : *v30 & 0xFFFFFFFFFFFFLL)
        {
          return 1;
        }
      }

      v14 = &OBJC_IVAR____TtC11MusicJSCore7JSBrick_supertitle;
      goto LABEL_61;
    }

    if (v3 == 5)
    {
      result = JSLiveRadioCase.items.getter();
      if (result >> 62)
      {
        v38 = result;
        v39 = sub_ABB060();
        result = v38;
        if (!v39)
        {
          goto LABEL_72;
        }
      }

      else if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_72;
      }

      if ((result & 0xC000000000000001) != 0)
      {
        v24 = sub_3600E0(0, result);
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_76;
        }

        v24 = *(result + 32);
      }

      v25 = v24;

      v26 = &v25[OBJC_IVAR____TtC11MusicJSCore19JSLiveRadioCaseItem_headerTitleText];
      swift_beginAccess();
      v9 = *v26;
      v8 = *(v26 + 1);

      if (v8)
      {

        goto LABEL_44;
      }

      return 0;
    }

    if (v3 == 12)
    {
      v15 = (*&stru_108.segname[(swift_isaMask & *(a1 & 0xFFFFFFFFFFFFFF9)) + 16])(0);
      goto LABEL_54;
    }

    if (v3 != 15)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v3 > 31)
  {
    switch(v3)
    {
      case ' ':
        v28 = a1 & 0xFFFFFFFFFFFFFF9;
        v29 = &OBJC_IVAR____TtC11MusicJSCore20JSInlineSocialUpsell_title;
        break;
      case '\'':
        v28 = a1 & 0xFFFFFFFFFFFFFF9;
        v29 = &OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_title;
        break;
      case ')':
        v15 = JSListenNowMusicSiriUpsell.title.getter();
        goto LABEL_54;
      default:
        return result;
    }

    v34 = (v28 + *v29);
    goto LABEL_62;
  }

  if (v3 == 16)
  {
LABEL_25:
    v15 = (*&stru_108.sectname[swift_isaMask & *(a1 & 0xFFFFFFFFFFFFFF9)])(0);
    goto LABEL_54;
  }

  if (v3 != 22)
  {
    if (v3 != 27)
    {
      return result;
    }

    v10 = a1 & 0xFFFFFFFFFFFFFF9;
    v11 = ((a1 & 0xFFFFFFFFFFFFFF9) + OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_headlineText);
    swift_beginAccess();
    v12 = v11[1];
    if (v12)
    {
      if ((v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : *v11 & 0xFFFFFFFFFFFFLL)
      {
        return 1;
      }
    }

    v14 = &OBJC_IVAR____TtC11MusicJSCore34JSSocialOnboardingWelcomeViewModel_titleText;
LABEL_61:
    v34 = (v10 + *v14);
LABEL_62:
    swift_beginAccess();
    v35 = v34[1];
    if (v35)
    {
      if ((v35 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v35) & 0xF;
      }

      else
      {
        v23 = *v34 & 0xFFFFFFFFFFFFLL;
      }

      return v23 != 0;
    }

    return 0;
  }

  v15 = JSSearchLandingUpsell.headline.getter();
LABEL_54:
  v33 = v15;
  v8 = v16;

  v23 = HIBYTE(v8) & 0xF;
  v27 = v33 & 0xFFFFFFFFFFFFLL;
LABEL_55:
  if ((v8 & 0x2000000000000000) == 0)
  {
    v23 = v27;
  }

  return v23 != 0;
}

void sub_A7168(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsRevisionID) == a2)
  {
    *(a1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing) = 0;
    sub_4D4068(a3, 0);
    v6 = *(a1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController);
    if (v6)
    {
      *(v6 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_isBottomHairlineVisible) = a4 & 1;
      v7 = *(v6 + OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView);
      v8 = v7[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible];
      v7[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible] = a4 & 1;
      if (v8 != (a4 & 1))
      {
        [v7 setNeedsLayout];
      }
    }

    v9 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers;
    swift_beginAccess();
    v10 = *(a1 + v9);
    *(a1 + v9) = _swiftEmptyArrayStorage;
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 40;
      do
      {
        v13 = *(v12 - 8);

        v13(v14);

        v12 += 16;
        --v11;
      }

      while (v11);
    }

    v15 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pendingStackItemUpdateRequests;
    swift_beginAccess();
    v16 = *(a1 + v15);
    v17 = *(v16 + 16);
    if (v17)
    {
      *(a1 + v15) = _swiftEmptyArrayStorage;
      v18 = v16 + 40;
      do
      {
        v19 = *(v18 - 8);

        v19(v20);

        v18 += 16;
        --v17;
      }

      while (v17);
    }

    else
    {
      sub_A3DD4();
    }
  }
}

void sub_A7310(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v7;
    if (!v7)
    {
      a2(v4);
    }
  }
}

void sub_A737C()
{
  v1 = v0;
  v2 = (*&stru_388.segname[(swift_isaMask & *v0) - 8])();
  if (!v2)
  {
    return;
  }

  v37 = v2;
  if (![v37 isViewLoaded] || (v3 = *&v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView]) != 0 && (objc_msgSend(v3, "bounds"), v5 == 0.0) && v4 == 0.0)
  {

    goto LABEL_7;
  }

  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = v7;
  [v7 safeAreaInsets];

  v9 = [v1 traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v10 == &dword_0 + 2)
  {
    v11 = *&v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem];
    if (v11)
    {
      v12 = *(&stru_2E8.size + (swift_isaMask & *v11));
      v13 = v11;
      v14 = v12();

      if (v14)
      {
      }
    }
  }

  sub_AB9E70();
  v15 = v37;
  v16 = &v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets];
  v17 = *&v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets];
  v18 = *&v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_sourceScrollViewExternalContentInsets + 16];
  *v16 = v19.f64[0];
  v16[1] = v20;
  v16[2] = v21.f64[0];
  v16[3] = v22;
  v19.f64[1] = v20;
  v21.f64[1] = v22;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v17, v19), vceqq_f64(v18, v21)))) & 1) == 0)
  {
    sub_371830();
    v15 = v37;
  }

  v23 = [v15 view];

  if (!v23)
  {
    goto LABEL_32;
  }

  v24 = [v1 view];
  if (!v24)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 bounds];
  [v23 setFrame:?];

  v6 = v37;
  if (v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_isAnimating] & 1) != 0 || (v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_prefersAnimatedBannerDisplay])
  {
    goto LABEL_8;
  }

  v26 = [v1 traitCollection];
  v27 = [v26 horizontalSizeClass];

  if (v27 == &dword_0 + 2 && (v28 = *&v1[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem]) != 0 && (v29 = *(&stru_2E8.size + (swift_isaMask & *v28)), v30 = v28, v31 = v29(), v30, v31))
  {

    horizontal = 0.0;
    vertical = 40.0;
  }

  else
  {
    horizontal = UIOffsetZero.horizontal;
    vertical = UIOffsetZero.vertical;
  }

  v6 = v37;
  v34 = &v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions];
  v36 = *&v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions];
  v35 = *&v37[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_backgroundViewOffsetAdditions + 8];
  *v34 = horizontal;
  v34[1] = vertical;
  if (v36 == horizontal && v35 == vertical)
  {
    goto LABEL_8;
  }

  sub_375B00();
LABEL_7:
  v6 = v37;
LABEL_8:
}

double sub_A777C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v1 = v9 - v0;
  static ApplicationCapabilities.shared.getter(v9);
  v2 = v9[4];

  sub_70C54(v9);
  v3 = sub_472A84(10, v2);

  if (v3)
  {
    v5 = sub_AB9990();
    (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_AB9940();

    v7 = sub_AB9930();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;

    sub_DBDC8(0, 0, v1, &unk_AFAC90, v8);
  }

  return result;
}

uint64_t sub_A7908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_AB9940();
  v4[6] = sub_AB9930();
  v6 = sub_AB98B0();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_A79A0, v6, v5);
}

uint64_t sub_A79A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem];
    if (v2)
    {
      v3 = Strong;
      v4 = *(&stru_388.reserved2 + (swift_isaMask & *v2));
      v5 = v2;
      v6 = v4();
      v8 = v7;

      if (v8)
      {
        v9._rawValue = &off_CEFEC8;
        v16._countAndFlagsBits = v6;
        v16._object = v8;
        v10 = sub_ABB140(v9, v16);

        if (!v10)
        {
          v11 = 0;
          goto LABEL_14;
        }

        if (v10 == 1)
        {
          v11 = 1;
LABEL_14:
          *(v0 + 112) = v11;
          if (qword_DE6800 != -1)
          {
            swift_once();
          }

          *(v0 + 80) = static UnifiedMessages.Coordinator.shared;
          v14 = swift_task_alloc();
          *(v0 + 88) = v14;
          *v14 = v0;
          v14[1] = sub_A7BBC;

          return sub_E09D4();
        }
      }
    }

    else
    {
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_A7BBC(char a1)
{
  v2 = *v1;
  *(*v1 + 113) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_A7CE4, v4, v3);
}

uint64_t sub_A7CE4()
{
  if (*(v0 + 113) == 1)
  {
    v1 = *(v0 + 112);
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_A7DCC;

    return sub_DC8E4(v1);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_A7DCC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_A7EF4, v4, v3);
}

uint64_t sub_A7EF4()
{
  v1 = v0[13];
  v2 = v0[9];
  sub_A7F78(v1);

  v3 = v0[1];

  return v3();
}

void sub_A7F78(void *a1)
{
  v2 = v1;
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(sub_AB7C50() - 8);
  __chkstk_darwin();
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController;
    v13 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController];
    v14 = a1;
    v53 = v14;
    if (!v13)
    {
      goto LABEL_26;
    }

    v15 = [v14 identifier];
    if (v15)
    {
      v16 = v15;
      v17 = sub_AB92A0();
      v19 = v18;

      v20 = *&v2[v12];
      if (!v20)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v17 = 0;
      v19 = 0;
      v20 = *&v2[v12];
      if (!v20)
      {
        goto LABEL_18;
      }
    }

    v22 = *&v20[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_inlineBubbleTipViewController];
    v23 = v20;
    v24 = [v22 dialogRequest];
    v25 = [v24 identifier];
    if (v25)
    {
      v26 = v25;
      v27 = sub_AB92A0();
      v29 = v28;

      v30 = v53;
      if (v19)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_18:
    v27 = 0;
    v29 = 0;
    v30 = v53;
    if (v19)
    {
LABEL_19:
      if (v29)
      {
        if (v17 == v27 && v19 == v29)
        {

          return;
        }

        v49 = sub_ABB3C0();

        v30 = v53;
        if (v49)
        {
          goto LABEL_37;
        }

LABEL_26:
        v35 = objc_allocWithZone(_s15InlineBubbleTipCMa());
        v36 = v53;
        v37 = sub_4F6F3C(v36);
        v38 = v37;
        v39 = *&v2[v12];
        *&v2[v12] = v37;
        if (v39)
        {
          v40 = v37;
          v39 = v39;
          v41 = sub_ABA790();

          if (v41)
          {
LABEL_31:

            v43 = *&v2[v12];
            if (v43)
            {
              v44 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v45 = &v43[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_handleUserDismissed];
              v46 = *&v43[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_handleUserDismissed];
              v47 = *&v43[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_handleUserDismissed + 8];
              *v45 = sub_A935C;
              v45[1] = v44;
              v48 = v43;

              sub_17654(v46, v47);
            }

            return;
          }
        }

        else
        {
          v42 = v37;
        }

        sub_A3ACC();
        goto LABEL_31;
      }

LABEL_25:

      goto LABEL_26;
    }

LABEL_14:
    if (!v29)
    {
LABEL_37:

      return;
    }

    goto LABEL_25;
  }

  v21 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController];
  if (v21)
  {
    *&v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController] = 0;
    if (v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] == 1)
    {
    }

    else
    {
      v2[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate] = 1;
      v52 = v9;
      v53 = v21;
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v51 = sub_ABA150();
      v31 = swift_allocObject();
      *(v31 + 16) = v2;
      aBlock[4] = sub_A9B84;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_114;
      v32 = _Block_copy(aBlock);
      v33 = v2;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_A9210(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
      sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
      sub_ABABB0();
      v34 = v51;
      sub_ABA160();
      (*(v5 + 8))(v7, v4);
      (*(v8 + 8))(v11, v52);
      _Block_release(v32);
    }
  }
}

void sub_A85A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController);
    *(Strong + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController) = 0;
    if (v3)
    {
      sub_A3ACC();

      v2 = v3;
    }
  }
}

double sub_A8618()
{
  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider), *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider + 8));

  sub_12E1C(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties, &unk_DF1330, &qword_AF9120);

  return result;
}

id sub_A872C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSVerticalStackViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSVerticalStackViewController(uint64_t a1)
{
  result = qword_DEC558;
  if (!qword_DEC558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A88D8(uint64_t a1)
{
  sub_70A34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_A89D0(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *v2;
  if (*(v5 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate) == 1)
  {
    sub_A3DD4();
  }

  if (*(v5 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing) != 1)
  {
    return a1();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers;
  swift_beginAccess();
  v8 = *(v5 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_6AA00(0, v8[2] + 1, 1, v8);
    *(v5 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_6AA00((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_2D4D0;
  v12[5] = v6;
  *(v5 + v7) = v8;
  return swift_endAccess();
}

void *sub_A8B20()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController);
  v2 = v1;
  return v1;
}

void sub_A8B50(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController);
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController) = a1;
  v2 = a1;
  sub_A17E4(v3);
}

uint64_t (*sub_A8BB0(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_A1BA8(v2);
  return sub_A9BB0;
}

uint64_t (*sub_A8C98(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*&stru_388.segname[(swift_isaMask & *v1) + 8])();
  return sub_A9BB0;
}

void sub_A8D40(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem);
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem) = a1;
  v2 = a1;
}

uint64_t sub_A8D9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  swift_beginAccess();
  return sub_15F84(v3 + v4, a1, &unk_DF1330, &qword_AF9120);
}

uint64_t sub_A8E08(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v4 = &v8[-v3];
  v5 = *v1;
  v6 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  swift_beginAccess();
  sub_15F84(v5 + v6, v4, &unk_DF1330, &qword_AF9120);
  swift_beginAccess();
  sub_A9258(a1, v5 + v6);
  swift_endAccess();
  sub_A25D0(v4);
  sub_12E1C(a1, &unk_DF1330, &qword_AF9120);
  return sub_12E1C(v4, &unk_DF1330, &qword_AF9120);
}

uint64_t (*sub_A8F18(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_A2A9C(v2);
  return sub_A8F8C;
}

void sub_A8F90(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_A8FDC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_A0C94(*a1, v9);
  v4 = v9[7];
  a2[6] = v9[6];
  a2[7] = v4;
  a2[8] = v10[0];
  *(a2 + 137) = *(v10 + 9);
  v5 = v9[3];
  a2[2] = v9[2];
  a2[3] = v5;
  v6 = v9[5];
  a2[4] = v9[4];
  a2[5] = v6;
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  a2[1] = v8;
  return result;
}

uint64_t sub_A9094(uint64_t a1)
{
  result = sub_A9210(&qword_DEC5C0, type metadata accessor for JSVerticalStackViewController, &unk_AFABF0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_A90EC()
{

  return swift_deallocObject();
}

uint64_t sub_A9124()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC5D0, &qword_AFACA8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_DEC5D8;
    v3 = &unk_AFACB0;
  }

  else
  {
    v2 = &unk_DF43B0;
    v3 = &unk_AF7D40;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_A919C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A9210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A9258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_A92C8(uint64_t a1)
{
  v2 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A9324()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_A937C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_A7908(a1, v4, v5, v6);
}

void sub_A9430()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_impressionTrackingIsEnabledOverride) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController____lazy_storage___impressionsTracker) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isInsidePopover) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pageHeaderContentViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_metricsPageProperties;
  v3 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_wantsTopStackItemHairline) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isPageHeaderContentBottomHairlineVisible) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_bottomStackItemBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsRevisionID) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_pendingStackItemUpdateRequests) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_headerItem) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_wasUnderlappingStatusBar) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipRequest) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_inlineBubbleTipSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_shouldIgnoreStackItemUpdates) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_viewModelKindToViewController;
  *(v0 + v4) = sub_96934(_swiftEmptyArrayStorage);
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_A95F8()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_120Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_A96D4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_A970C()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_A97D0(double a1)
{
  v3 = *(sub_AB3430() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_41BF9C(v4, v5, a1);
}

uint64_t sub_A9844()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_A9908()
{
  v1 = *(sub_AB3430() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_471ED0(v2, v3, v4);
}

uint64_t sub_A996C(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_A9990()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  v4 = *(v0 + 72);
  if (v4 >= 9)
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 210) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_A9AAC(double a1)
{
  v3 = *(sub_AB3430() - 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 200);
  v7 = *(v1 + 208);
  v8 = *(v1 + 16);
  v9 = *(v1 + 209);
  v10 = v1 + ((*(v3 + 80) + 210) & ~*(v3 + 80));

  return sub_46CE94(v8, v4, a1, v5, (v1 + 40), v6, v7, v9, v10);
}

void sub_A9C48(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSFlowcaseModelRequest();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication22JSFlowcaseModelRequest_flowcaseViewModel];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplication22JSFlowcaseModelRequest_flowcaseViewModel];
    *&v8[OBJC_IVAR____TtC16MusicApplication22JSFlowcaseModelRequest_flowcaseViewModel] = v5;
    v7 = v5;
  }
}

double sub_A9D6C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_60044();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_AAE7C, v12);

  return result;
}

double sub_A9E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);

  return result;
}

void sub_AA0DC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication31JSFlowcaseModelRequestOperation_request];
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication22JSFlowcaseModelRequest_flowcaseViewModel);
  if (v2)
  {
    v3 = v2;
    v4 = [v1 itemProperties];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 itemKind];
      if (!v6 || (v7 = v6, [v6 modelClass], v7, swift_getObjCClassMetadata(), (v8 = objc_msgSend(swift_getObjCClassFromMetadata(), "requiredStoreLibraryPersonalizationProperties")) == 0))
      {
        v8 = [objc_opt_self() emptyPropertySet];
      }

      v9 = [v5 propertySetByCombiningWithPropertySet:v8];

      v10 = objc_allocWithZone(type metadata accessor for JSModelFlowcaseItemBuilder());
      v11 = sub_281748(v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v13 = sub_AB9260();
    v36 = v12;
    [v12 appendSection:v13];

    v14 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v15 = sub_AB9260();
    v35 = v14;
    [v14 appendSection:v15];

    v16 = JSFlowcase.items.getter();
    v18 = v16;
    if (v16 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v33 = v1;
      v34 = v3;
      v1 = 0;
      v3 = &selRef__authenticateReturningError_;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v24 = sub_360628(v1, v18, v17);
        }

        else
        {
          if (v1 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_23;
          }

          v24 = *(v18 + 8 * v1 + 32);
        }

        v25 = v24;
        v26 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v11)
        {
          v27 = [a1 userIdentity];
          if (!v27)
          {
            __break(1u);
LABEL_21:

            v1 = v33;
            v3 = v34;
            goto LABEL_26;
          }

          v20 = v27;
          sub_28090C(v25, v27);
          v22 = v21;

          [v35 appendItem:v25];
          v23 = v22;
          [v36 appendItem:v23];
        }

        ++v1;
        if (v26 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_26:
    v28 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v1 unpersonalizedContentDescriptors:v36];
    [v28 setRepresentedObjects:v35];
    v29 = swift_allocObject();
    *(v29 + 16) = v1;
    *(v29 + 24) = a1;
    aBlock[4] = sub_AAD74;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_27;
    v30 = _Block_copy(aBlock);
    v31 = v1;
    v32 = a1;

    [v28 performWithResponseHandler:v30];
    _Block_release(v30);
  }

  else
  {
    __break(1u);
  }
}

void sub_AA4F0(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSFlowcaseModelResponse());
    v9 = a1;
    v13 = sub_AA74C(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication31JSFlowcaseModelRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication31JSFlowcaseModelRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

char *sub_AA74C(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_itemsDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_personalizationResponse] = a2;
  v4 = a2;
  v5 = [v4 representedObjectResults];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_jsResults] = v5;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for JSFlowcaseModelResponse();
  result = objc_msgSendSuper2(&v22, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v4;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v21 = a1;
    v11 = *&a1[OBJC_IVAR____TtC16MusicApplication22JSFlowcaseModelRequest_flowcaseViewModel];
    v12 = v11;
    v13 = *JSFlowcase.itemsDidChangeNotification.unsafeMutableAddressor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v15 = v9;
    v16 = v12;
    *&v15[OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_itemsDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v11, 1, 1, sub_AAF10, v14);

    v17 = MPModelResponseDidInvalidateNotification;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v8;
    v20 = v17;

    swift_allocObject();
    *&v15[OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v8, 1, 1, sub_AADB4, v18);

    LOBYTE(v18) = [v19 isValid];

    if ((v18 & 1) == 0)
    {
      [v15 _invalidate];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_AAA0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _invalidate];
  }
}

id sub_AABD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_AAC9C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_AACF4()
{

  return swift_deallocObject();
}

uint64_t sub_AAD34()
{

  return swift_deallocObject();
}

uint64_t sub_AAD7C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_AADD0()
{

  return swift_deallocObject();
}

uint64_t sub_AAE24()
{

  return swift_deallocObject();
}

uint64_t sub_AAE8C()
{

  return swift_deallocObject();
}

id sub_AAF14(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC16MusicApplication10DetailCell_footerAudioTraitDescriptions] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC16MusicApplication10DetailCell_showsAppleDigitalMasterText] = 0;
  v10 = OBJC_IVAR____TtC16MusicApplication10DetailCell_releaseDate;
  v11 = sub_AB3430();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication10DetailCell_trackCountAndDuration];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication10DetailCell_copyright];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabelSelectionHandler];
  *v14 = 0;
  v14[1] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabels] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 layer];
  [v16 setAllowsGroupOpacity:0];

  v17 = [v15 layer];
  [v17 setAllowsGroupBlending:0];

  return v15;
}

double sub_AB108(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210, &unk_B107A0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10[-1] - v5;
  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_footerAudioTraitDescriptions);
  *(v1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_footerAudioTraitDescriptions) = a1;
  if (sub_12C848(v7, a1))
  {
  }

  else
  {
    __chkstk_darwin();
    *(&v9 - 2) = v1;
    type metadata accessor for DetailCellTextStack(0);
    sub_AF6D0(&unk_DF8680, type metadata accessor for DetailCellTextStack, &unk_AFAE58);
    sub_AB6780();
    sub_AB6AA0();
    v10[3] = v3;
    v10[4] = sub_36A00(&unk_E09220, &unk_E09210, &unk_B107A0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    __swift_allocate_boxed_opaque_existential_0(v10);
    sub_AB6770();
    (*(v4 + 8))(v6, v3);
    sub_ABA2B0();
  }

  return result;
}

uint64_t sub_AB33C(char *a1)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210, &unk_B107A0);
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin();
  v21 = &v21 - v3;
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE81D8, &qword_AFAE20) - 8;
  __chkstk_darwin();
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC16MusicApplication10DetailCell_releaseDate;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_15F84(v24, v12, &unk_E01230, "|,\r");
  v24 = v1;
  sub_15F84(v1 + v13, &v12[v14], &unk_E01230, "|,\r");
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      return sub_12E1C(v12, &unk_E01230, "|,\r");
    }

    goto LABEL_6;
  }

  sub_15F84(v12, v9, &unk_E01230, "|,\r");
  if (v15(&v12[v14], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_6:
    sub_12E1C(v12, &qword_DE81D8, &qword_AFAE20);
LABEL_7:
    __chkstk_darwin();
    *(&v21 - 2) = v24;
    type metadata accessor for DetailCellTextStack(0);
    sub_AF6D0(&unk_DF8680, type metadata accessor for DetailCellTextStack, &unk_AFAE58);
    v17 = v21;
    sub_AB6780();
    sub_AB6AA0();
    v18 = v23;
    v25[3] = v23;
    v25[4] = sub_36A00(&unk_E09220, &unk_E09210, &unk_B107A0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    __swift_allocate_boxed_opaque_existential_0(v25);
    sub_AB6770();
    (*(v22 + 8))(v17, v18);
    return sub_ABA2B0();
  }

  (*(v5 + 32))(v7, &v12[v14], v4);
  sub_AF6D0(&qword_DE81E0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v19 = sub_AB91C0();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v9, v4);
  result = sub_12E1C(v12, &unk_E01230, "|,\r");
  if ((v19 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_AB89C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = sub_AB92A0();
  v11 = v10;
  v13 = a3;
  v12 = a1;
  sub_AB94C(v9, v11, a4, a5);
}

double sub_AB94C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210, &unk_B107A0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18[-1] - v10;
  v12 = (v4 + *a3);
  v13 = *v12;
  v14 = v12[1];
  *v12 = a1;
  v12[1] = a2;
  v15 = v13 == a1 && v14 == a2;
  if (v15 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    __chkstk_darwin();
    *(&v17 - 2) = v4;
    type metadata accessor for DetailCellTextStack(0);
    sub_AF6D0(&unk_DF8680, type metadata accessor for DetailCellTextStack, &unk_AFAE58);
    sub_AB6780();
    sub_AB6AA0();
    v18[3] = v8;
    v18[4] = sub_36A00(&unk_E09220, &unk_E09210, &unk_B107A0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    __swift_allocate_boxed_opaque_existential_0(v18);
    sub_AB6770();
    (*(v9 + 8))(v11, v8);
    sub_ABA2B0();
  }

  return result;
}

double sub_ABB9C(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210, &unk_B107A0);
  v4 = *(v3 - 8);
  *&result = __chkstk_darwin().n128_u64[0];
  v7 = &v11[-1] - v6;
  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabels);
  *(v1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabels) = a1;
  if (!v8)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (!a1 || (, v9 = sub_12C8D8(v8, a1), , (v9 & 1) == 0))
  {
LABEL_8:
    __chkstk_darwin();
    *(&v10 - 2) = v1;
    type metadata accessor for DetailCellTextStack(0);
    sub_AF6D0(&unk_DF8680, type metadata accessor for DetailCellTextStack, &unk_AFAE58);
    sub_AB6780();
    sub_AB6AA0();
    v11[3] = v3;
    v11[4] = sub_36A00(&unk_E09220, &unk_E09210, &unk_B107A0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    __swift_allocate_boxed_opaque_existential_0(v11);
    sub_AB6770();
    (*(v4 + 8))(v7, v3);
    sub_ABA2B0();

    return result;
  }

  return result;
}

void sub_AC228(char *a1@<X0>, uint64_t *a2@<X8>)
{
  [a1 music_inheritedLayoutInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_footerAudioTraitDescriptions];
  v25 = a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_showsAppleDigitalMasterText];
  v13 = OBJC_IVAR____TtC16MusicApplication10DetailCell_releaseDate;
  swift_beginAccess();
  v14 = type metadata accessor for DetailCellTextStack(0);
  sub_15F84(&a1[v13], a2 + v14[8], &unk_E01230, "|,\r");
  v16 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_trackCountAndDuration];
  v15 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_trackCountAndDuration + 8];
  v18 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_copyright];
  v17 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_copyright + 8];
  v19 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabels];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC8A8, &qword_AFAE18);
  swift_storeEnumTagMultiPayload();
  v21 = (a2 + v14[5]);
  *v21 = v5;
  v21[1] = v7;
  v21[2] = v9;
  v21[3] = v11;
  *(a2 + v14[6]) = v12;
  *(a2 + v14[7]) = v25;
  v22 = (a2 + v14[9]);
  *v22 = v16;
  v22[1] = v15;
  v23 = (a2 + v14[10]);
  *v23 = v18;
  v23[1] = v17;
  *(a2 + v14[11]) = v19;
  v24 = (a2 + v14[12]);
  *v24 = sub_AF5D8;
  v24[1] = v20;
  sub_8150C();

  sub_AB58F0();
  sub_AB58F0();
  sub_AB58F0();
  sub_AB58F0();
  sub_AB58F0();
  sub_AB58F0();
  sub_AB58F0();
}

void sub_AC504(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabelSelectionHandler];
    if (v5)
    {
      v6 = *&Strong[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabelSelectionHandler + 8];
      sub_307CC(*&Strong[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabelSelectionHandler], v6);

      v5(a1);
      sub_17654(v5, v6);
    }

    else
    {
    }
  }
}

void sub_AC678(uint64_t a1)
{
  sub_AFD60(319, &qword_E247E0, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_AC770@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_AB6240();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC8A8, &qword_AFAE18);
  __chkstk_darwin();
  v9 = &v14 - v8;
  sub_15F84(v2, &v14 - v8, &qword_DEC8A8, &qword_AFAE18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_AB6420();
    (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  else
  {
    v12 = sub_AB9F40();
    v13 = sub_AB6A40();
    sub_AB4A90(v12, &dword_0, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();
    (*(v5 + 8))(v7, v4);
  }

  return result;
}

__n128 sub_AC970@<Q0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_AB6C70();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9A8, &qword_AFAEA8);
  __chkstk_darwin();
  v8 = &v56 - v7;
  v9 = sub_AB6450();
  type metadata accessor for DetailCellTextStack(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8, &qword_AF9930);
  sub_AB5900();
  v10 = v57;
  *v8 = v9;
  *(v8 + 1) = v10;
  v8[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9B0, &qword_AFAEB0);
  sub_ACDF8(v1, &v8[*(v11 + 44)]);
  sub_AB6B70();
  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
  v12 = sub_AB6CA0();
  (*(v3 + 8))(v5, v2);

  KeyPath = swift_getKeyPath();
  v14 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9B8, &qword_AFAEE8) + 36)];
  *v14 = KeyPath;
  v14[1] = v12;
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v15 = qword_E718C8;
  v16 = sub_AB7420();
  v17 = swift_getKeyPath();
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9C0, &qword_AFAF20) + 36)];
  *v18 = v17;
  v18[1] = v16;
  LOBYTE(v17) = sub_AB6AB0();
  sub_AB5900();
  sub_AB5690();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9C8, &qword_AFAF28) + 36)];
  *v27 = v17;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  LOBYTE(v17) = sub_AB6AC0();
  sub_AB5900();
  sub_AB5690();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9D0, &qword_AFAF30) + 36)];
  *v36 = v17;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  LOBYTE(v16) = sub_AB6AD0();
  sub_AB5690();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9D8, &qword_AFAF38) + 36)];
  *v45 = v16;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  LOBYTE(v16) = sub_AB6AF0();
  sub_AB5690();
  v46 = &v8[*(v6 + 36)];
  *v46 = v16;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  sub_AB79F0();
  sub_AB5E90();
  v51 = v56;
  sub_36B0C(v8, v56, &qword_DEC9A8, &qword_AFAEA8);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9E0, &qword_AFAF40) + 36);
  v53 = v62;
  *(v52 + 64) = v61;
  *(v52 + 80) = v53;
  *(v52 + 96) = v63;
  v54 = v58;
  *v52 = v57;
  *(v52 + 16) = v54;
  result = v60;
  *(v52 + 32) = v59;
  *(v52 + 48) = result;
  return result;
}

uint64_t sub_ACDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v3 = sub_AB6420();
  v185 = *(v3 - 8);
  __chkstk_darwin();
  v184 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v189 = &v158 - v5;
  v6 = sub_AB3430();
  v191 = *(v6 - 8);
  __chkstk_darwin();
  v190 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v186 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  __chkstk_darwin();
  v181 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9E8, &qword_AFAF48);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v158 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9F0, &unk_AFAF50);
  __chkstk_darwin();
  v183 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v158 - v15;
  v17 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v198) = 7;
  sub_AFE98();
  v192 = sub_36A48();
  NSUserDefaults.subscript.getter(&v206);
  v187 = v3;
  v193 = v6;
  if (!v208)
  {
    sub_12E1C(&v206, &unk_DE8E40, &unk_AF8050);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:

    v29 = 1;
    goto LABEL_10;
  }

  v18 = v198;

  if ((v18 & 1) != 0 && (v19 = type metadata accessor for DetailCellTextStack(0), v20 = *(a1 + *(v19 + 24)), *(v20 + 16)))
  {
    v21 = v19;
    v22 = sub_AB6450();
    v188 = v21;
    v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8, &qword_AF9930);
    sub_AB5900();
    v23 = v206;
    *v13 = v22;
    *(v13 + 1) = v23;
    v13[16] = 0;
    v180 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DECA08, &unk_AFAFA8) + 44);
    *&v206 = v20;
    KeyPath = swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
    sub_36A00(&qword_DECA10, &unk_DFDE70, &unk_AF7D30, &protocol conformance descriptor for [A]);
    sub_AB78B0();
    LOBYTE(v22) = sub_AB6AC0();
    sub_AB5900();
    sub_AB5690();
    v24 = &v13[*(v10 + 36)];
    *v24 = v22;
    *(v24 + 1) = v25;
    *(v24 + 2) = v26;
    *(v24 + 3) = v27;
    *(v24 + 4) = v28;
    v24[40] = 0;
    sub_36B0C(v13, v16, &qword_DEC9E8, &qword_AFAF48);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v6 = v193;
LABEL_10:
  (*(v11 + 56))(v16, v29, 1, v10);
  v188 = type metadata accessor for DetailCellTextStack(0);
  v30 = a1;
  v31 = *(a1 + *(v188 + 28));
  v182 = v16;
  if (v31 == 1)
  {
    if (qword_DE6AF0 != -1)
    {
      swift_once();
    }

    v32 = qword_E71620;
    sub_AB75A0();
    v33 = sub_AB6F30();
    v35 = v34;
    v37 = v36;
    v38 = sub_AB6E50();
    v40 = v39;
    v42 = v41;
    sub_36B74(v33, v35, v37 & 1);

    sub_AB91E0();
    sub_AB3550();
    *&v206 = sub_AB9320();
    *(&v206 + 1) = v43;
    v44 = sub_AB6F20();
    v46 = v45;
    LOBYTE(v33) = v47;
    v48 = sub_AB6E50();
    v180 = v49;
    v181 = v48;
    LODWORD(v186) = v50;
    KeyPath = v51;
    sub_36B74(v44, v46, v33 & 1);

    sub_36B74(v38, v40, v42 & 1);

    LOBYTE(v44) = sub_AB6AC0();
    v52 = v188;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8, &qword_AF9930);
    sub_AB5900();
    sub_AB5690();
    v177 = v54;
    v178 = v53;
    v175 = v56;
    v176 = v55;
    LOBYTE(v206) = v186 & 1;
    LOBYTE(v198) = 0;
    v174 = v186 & 1;
    v173 = v44;
    v6 = v193;
  }

  else
  {
    v180 = 0;
    v181 = 0;
    KeyPath = 0;
    v173 = 0;
    v174 = 0;
    v177 = 0;
    v178 = 0;
    v175 = 0;
    v176 = 0;
    v52 = v188;
  }

  v57 = v189;
  sub_15F84(v30 + v52[8], v189, &unk_E01230, "|,\r");
  v58 = v191;
  v59 = (*(v191 + 48))(v57, 1, v6);
  v60 = v190;
  if (v59 == 1)
  {
    sub_12E1C(v57, &unk_E01230, "|,\r");
    v193 = 0;
    v188 = 0;
    v189 = 0;
    v186 = 0;
  }

  else
  {
    v172 = v30;
    (*(v58 + 32))(v190, v57, v6);
    if (qword_DE6CB8 != -1)
    {
      swift_once();
    }

    v61 = qword_E718F8;
    isa = sub_AB3370().super.isa;
    v63 = [v61 stringFromDate:isa];

    *&v206 = sub_AB92A0();
    *(&v206 + 1) = v64;
    v65 = sub_AB6F20();
    v67 = v66;
    LOBYTE(isa) = v68;
    v70 = v69;
    (*(v58 + 8))(v60, v193);

    v193 = v65;
    v188 = isa & 1;
    v189 = v67;
    sub_AFF30(v65, v67, isa & 1);
    v186 = v70;

    v30 = v172;
  }

  v71 = (v30 + v52[9]);
  v72 = v71[1];
  if (v72)
  {
    *&v206 = *v71;
    *(&v206 + 1) = v72;

    v73 = sub_AB6F20();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v184;
    sub_AC770(v184);
    v81 = sub_AB6410();
    (*(v185 + 8))(v80, v187);
    v82 = 2;
    if (v81)
    {
      v82 = 3;
    }

    v187 = v82;
    v83 = swift_getKeyPath();
    v192 = v73;
    v161 = v77 & 1;
    v162 = v75;
    sub_AFF30(v73, v75, v77 & 1);
    v172 = v79;

    v171 = v83;
  }

  else
  {
    v192 = 0;
    v161 = 0;
    v162 = 0;
    v171 = 0;
    v172 = 0;
    v187 = 0;
  }

  v84 = (v30 + v52[10]);
  v85 = v84[1];
  if (v85)
  {
    *&v206 = *v84;
    *(&v206 + 1) = v85;

    v86 = sub_AB6F20();
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = swift_getKeyPath();
    v184 = v86;
    v185 = v90 & 1;
    v191 = v88;
    sub_AFF30(v86, v88, v90 & 1);
    v190 = v92;

    v94 = v93;

    v95 = 3;
  }

  else
  {
    v184 = 0;
    v185 = 0;
    v190 = 0;
    v191 = 0;
    v94 = 0;
    v95 = 0;
  }

  v168 = *(v30 + v52[11]);
  if (v168)
  {
    v96 = (v30 + v52[12]);
    v97 = *v96;
    v98 = v96[1];

    v169 = v98;
    v170 = v97;
    sub_307CC(v97, v98);
    v99 = sub_AB6AB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8, &qword_AF9930);
    sub_AB5900();
    sub_AB5690();
    v160 = v100;
    v102 = v101;
    v104 = v103;
    v106 = v105;
    LOBYTE(v198) = 0;
    v167 = 0;
    v107 = sub_AB6AC0();
    sub_AB5900();
    sub_AB5690();
    v109 = v108;
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v165 = v99;
    v166 = v107;
  }

  else
  {
    v169 = 0;
    v170 = 0;
    v166 = 0;
    v167 = 0;
    v165 = 0;
    v160 = 0;
    v102 = 0;
    v104 = 0;
    v106 = 0;
    v109 = 0;
    v111 = 0;
    v113 = 0;
    v115 = 0;
  }

  v116 = v183;
  sub_15F84(v182, v183, &qword_DEC9F0, &unk_AFAF50);
  v117 = v116;
  v118 = v163;
  sub_15F84(v117, v163, &qword_DEC9F0, &unk_AFAF50);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC9F8, &unk_AFAF60);
  v120 = (v118 + v119[12]);
  *&v194 = v181;
  *(&v194 + 1) = v180;
  *&v195 = v174;
  *(&v195 + 1) = KeyPath;
  *&v196 = v173;
  *(&v196 + 1) = v178;
  *&v197[0] = v177;
  *(&v197[0] + 1) = v176;
  *&v197[1] = v175;
  BYTE8(v197[1]) = 0;
  v121 = v195;
  *v120 = v194;
  v120[1] = v121;
  v122 = v197[0];
  v120[2] = v196;
  v120[3] = v122;
  *(v120 + 57) = *(v197 + 9);
  v123 = (v118 + v119[16]);
  v124 = v188;
  v125 = v189;
  *v123 = v193;
  v123[1] = v125;
  v123[2] = v124;
  v126 = v187;
  v123[3] = v186;
  v127 = v118 + v119[20];
  v128 = v192;
  *v127 = v192;
  v129 = v128;
  v131 = v161;
  v130 = v162;
  *(v127 + 8) = v162;
  *(v127 + 16) = v131;
  v132 = v130;
  v133 = v171;
  *(v127 + 24) = v172;
  *(v127 + 32) = v133;
  *(v127 + 40) = v126;
  v187 = v126;
  *(v127 + 48) = 0;
  v134 = v118 + v119[24];
  v135 = v184;
  v136 = v185;
  *v134 = v184;
  v137 = v135;
  v138 = v190;
  *(v134 + 8) = v191;
  *(v134 + 16) = v136;
  v185 = v136;
  *(v134 + 24) = v138;
  *(v134 + 32) = v94;
  v164 = v95;
  *(v134 + 40) = v95;
  *(v134 + 48) = 0;
  v139 = v118 + v119[28];
  *&v198 = v168;
  *(&v198 + 1) = v170;
  *&v199 = v169;
  *(&v199 + 1) = v165;
  v140 = v160;
  *&v200 = v160;
  *(&v200 + 1) = v102;
  *&v201 = v104;
  *(&v201 + 1) = v106;
  *&v202 = v167;
  *(&v202 + 1) = v166;
  *&v203 = v109;
  *(&v203 + 1) = v111;
  *&v204 = v113;
  *(&v204 + 1) = v115;
  v205 = 0;
  *(v139 + 112) = 0;
  v141 = v201;
  v142 = v203;
  v143 = v204;
  *(v139 + 64) = v202;
  *(v139 + 80) = v142;
  v144 = v198;
  v145 = v199;
  *(v139 + 32) = v200;
  *(v139 + 48) = v141;
  *v139 = v144;
  *(v139 + 16) = v145;
  *(v139 + 96) = v143;
  sub_15F84(&v194, &v206, &qword_DEB810, &qword_AF9AE0);
  sub_AFEEC(v193, v189, v188, v186);
  v146 = v129;
  v192 = v129;
  v147 = v132;
  v148 = v132;
  LOBYTE(v132) = v131;
  v149 = v131;
  v151 = v171;
  v150 = v172;
  sub_AFF40(v146, v148, v149, v172, v171);
  v184 = v137;
  v152 = v191;
  v153 = v136;
  v154 = v190;
  v159 = v94;
  sub_AFF40(v137, v191, v153, v190, v94);
  sub_15F84(&v198, &v206, &qword_DECA00, &qword_AFAF70);
  sub_12E1C(v182, &qword_DEC9F0, &unk_AFAF50);
  LOBYTE(v118) = v185;
  sub_AFF90(v137, v152, v185, v154, v94);
  sub_AFF90(v192, v147, v132, v150, v151);
  v155 = v189;
  LOBYTE(v137) = v188;
  v156 = v186;
  sub_AFFE0(v193, v189, v188, v186);
  *&v206 = v168;
  *(&v206 + 1) = v170;
  v207 = v169;
  v208 = v165;
  v209 = v140;
  v210 = v102;
  v211 = v104;
  v212 = v106;
  v213 = v167;
  v214 = v166;
  v215 = v109;
  v216 = v111;
  v217 = v113;
  v218 = v115;
  v219 = 0;
  sub_12E1C(&v206, &qword_DECA00, &qword_AFAF70);
  sub_AFF90(v184, v191, v118, v190, v159);
  sub_AFF90(v192, v147, v132, v150, v151);
  sub_AFFE0(v193, v155, v137, v156);
  v220[0] = v181;
  v220[1] = v180;
  v220[2] = v174;
  v220[3] = KeyPath;
  v220[4] = v173;
  v220[5] = v178;
  v220[6] = v177;
  v220[7] = v176;
  v220[8] = v175;
  v221 = 0;
  sub_12E1C(v220, &qword_DEB810, &qword_AF9AE0);
  return sub_12E1C(v183, &qword_DEC9F0, &unk_AFAF50);
}
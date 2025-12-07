uint64_t sub_23D953EE8(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = __dst;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v6 = v13;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v51 = v6;
      v15 = v4;
      v16 = *v4;
      v17 = *v6;
      v18 = v16;
      v19 = [v17 name];
      sub_23D9DA8B4();

      v20 = sub_23D9DA8E4();
      v22 = v21;

      v23 = [v18 name];
      sub_23D9DA8B4();

      v24 = sub_23D9DA8E4();
      v26 = v25;

      if (v20 == v24 && v22 == v26)
      {
        break;
      }

      v28 = sub_23D9DAFC4();

      if ((v28 & 1) == 0)
      {
        goto LABEL_22;
      }

      v14 = v51;
      v6 = v51 + 1;
      v4 = v15;
      if (v13 != v51)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v13;
      if (v4 >= v54)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v14 = v15;
    v4 = v15 + 1;
    v6 = v51;
    if (v13 == v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v13 = *v14;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v12] <= a4)
  {
    memmove(a4, __src, 8 * v12);
  }

  v54 = &v4[v12];
  if (v10 >= 8 && v6 > __dst)
  {
    v47 = v4;
LABEL_30:
    v52 = v6;
    v29 = v6 - 1;
    v30 = v5;
    v31 = v54;
    v48 = v29;
    do
    {
      v32 = *--v31;
      v33 = *v29;
      v34 = v32;
      v35 = v33;
      v49 = v34;
      v36 = [v34 name];
      sub_23D9DA8B4();

      v37 = sub_23D9DA8E4();
      v39 = v38;

      v50 = v35;
      v40 = [v35 name];
      sub_23D9DA8B4();

      v41 = sub_23D9DA8E4();
      v43 = v42;

      if (v37 == v41 && v39 == v43)
      {

        v5 = v30 - 1;
      }

      else
      {
        v45 = sub_23D9DAFC4();

        v5 = v30 - 1;
        if (v45)
        {
          v4 = v47;
          if (v30 != v52)
          {
            *v5 = *v48;
          }

          if (v54 <= v47 || (v6 = v48, v48 <= __dst))
          {
            v6 = v48;
            goto LABEL_47;
          }

          goto LABEL_30;
        }
      }

      v4 = v47;
      v29 = v48;
      if (v54 != v30)
      {
        *v5 = *v31;
      }

      v54 = v31;
      v30 = v5;
    }

    while (v31 > v47);
    v54 = v31;
    v6 = v52;
  }

LABEL_47:
  if (v6 != v4 || v6 >= (v4 + ((v54 - v4 + (v54 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v54 - v4));
  }

  return 1;
}

uint64_t sub_23D954344(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_23D9DAF34();
LABEL_9:
  result = sub_23D9DAE94();
  *v2 = result;
  return result;
}

uint64_t sub_23D9543E4(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_27E2F41A8 != -1)
      {
        swift_once();
      }

      v1 = qword_27E2F7320;
      v2 = 0xD00000000000001CLL;
      if (!qword_27E2F7320)
      {
        return v2;
      }
    }

    else
    {
      if (qword_27E2F41A8 != -1)
      {
        swift_once();
      }

      v1 = qword_27E2F7320;
      v2 = 0xD000000000000016;
      if (!qword_27E2F7320)
      {
        return v2;
      }
    }

LABEL_19:
    v3 = v1;
    v4 = sub_23D9DA8A4();
    goto LABEL_20;
  }

  if (!a1)
  {
    if (qword_27E2F41A8 != -1)
    {
      swift_once();
    }

    v1 = qword_27E2F7320;
    v2 = 0xD000000000000015;
    if (!qword_27E2F7320)
    {
      return v2;
    }

    goto LABEL_19;
  }

  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  v2 = 0xD000000000000017;
  if (qword_27E2F7320)
  {
    v3 = qword_27E2F7320;
    v4 = sub_23D9DA8A4();
LABEL_20:
    v5 = sub_23D9DA8A4();
    v6 = sub_23D9DA8A4();
    v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

    v2 = sub_23D9DA8B4();
  }

  return v2;
}

char *sub_23D954634(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_23D9DAD44();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_23D9DAF34();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_23D9DAF34();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_23D954750(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_23D9DAF34();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_23D9DAF34();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_23D954344(result, 1);

  return sub_23D954634(v7, v6, 1, v4);
}

uint64_t sub_23D95483C(uint64_t a1)
{
  if (a1 > 49)
  {
    if (a1 != 50)
    {
      if (a1 == 100)
      {
        return 2;
      }

      return 4;
    }

    return 1;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 10)
      {
        return 0;
      }

      return 4;
    }

    return 3;
  }
}

double sub_23D9548D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a1;
  v8 = sub_23D9D8954();
  v49 = *(v8 - 8);
  *&v50 = v8 - 8;
  v9 = v49;
  *&v48 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  v54 = &v44 - v13;
  v15 = sub_23D9D89C4();
  v52 = v15;
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a2, v15);
  v17 = *(v16 + 56);
  v51 = v16 + 56;
  v53 = v17;
  v17(v14, 0, 1, v15);
  sub_23D9DA9B4();
  v18 = sub_23D9DA9A4();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  v45 = *(v9 + 16);
  v45(v11, a1, v8);
  sub_23D958270(a3, &v60);
  v21 = sub_23D9DA9A4();
  v22 = *(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = MEMORY[0x277D85700];
  v24 = *(a3 + 112);
  *(v23 + 128) = *(a3 + 96);
  *(v23 + 144) = v24;
  *(v23 + 160) = *(a3 + 128);
  v25 = *(a3 + 48);
  *(v23 + 64) = *(a3 + 32);
  *(v23 + 80) = v25;
  v26 = *(a3 + 80);
  *(v23 + 96) = *(a3 + 64);
  *(v23 + 112) = v26;
  v27 = *(a3 + 16);
  *(v23 + 32) = *a3;
  *(v23 + 48) = v27;
  (*(v9 + 32))(v23 + ((v22 + 168) & ~v22), v47, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4458, &qword_23D9DD3A0);
  sub_23D9DA594();
  v48 = v60;
  v28 = v61;
  v47 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4770, &unk_23D9E0CA0);
  v29 = (v22 + 32) & ~v22;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23D9DC3E0;
  v45((v30 + v29), v46, v8);
  v31 = sub_23D93D8F8(v30);
  swift_setDeallocating();
  (*(v9 + 8))(v30 + v29, v8);
  swift_deallocClassInstance();
  *&v55 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
  sub_23D9DA5A4();

  v32 = v58;
  v57 = *(a3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  v50 = v59;
  sub_23D9DA3D4();
  v33 = v55;
  LOBYTE(v29) = v56;
  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  sub_23D9DA3A4();
  v34 = v56;
  *a4 = v55;
  *(a4 + 16) = v34;
  v35 = type metadata accessor for VoiceSelectionCellDetailView(0);
  v36 = v35[5];
  v53(a4 + v36, 1, 1, v52);
  v37 = a4 + v35[7];
  *v37 = swift_getKeyPath();
  *(v37 + 40) = 0;
  v38 = v35[11];
  *(a4 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  sub_23D93DA98(v54, a4 + v36);
  v39 = a4 + v35[8];
  *v39 = v48;
  v40 = v47;
  *(v39 + 16) = v28;
  *(v39 + 24) = v40;
  v41 = a4 + v35[9];
  *v41 = v32;
  result = *&v50;
  *(v41 + 8) = v50;
  *(a4 + v35[6]) = 1;
  v43 = a4 + v35[10];
  *v43 = v33;
  *(v43 + 16) = v29;
  return result;
}

uint64_t sub_23D954E8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23D9D8954();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28[-v13 - 8];
  v16 = *a1;
  v15 = a1[1];
  v17 = sub_23D9DA9F4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  (*(v9 + 16))(v11, a5, v8);
  sub_23D9DA9B4();

  sub_23D958270(a4, v28);
  v18 = sub_23D9DA9A4();
  v19 = (*(v9 + 80) + 184) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v18;
  *(v20 + 24) = v21;
  *(v20 + 32) = v16;
  *(v20 + 40) = v15;
  v22 = *(a4 + 112);
  *(v20 + 144) = *(a4 + 96);
  *(v20 + 160) = v22;
  *(v20 + 176) = *(a4 + 128);
  v23 = *(a4 + 48);
  *(v20 + 80) = *(a4 + 32);
  *(v20 + 96) = v23;
  v24 = *(a4 + 80);
  *(v20 + 112) = *(a4 + 64);
  *(v20 + 128) = v24;
  v25 = *(a4 + 16);
  *(v20 + 48) = *a4;
  *(v20 + 64) = v25;
  (*(v9 + 32))(v20 + v19, v11, v8);
  sub_23D9BB718(0, 0, v14, &unk_23D9DE9C8, v20);
}

uint64_t sub_23D9550D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[49] = a6;
  v7[50] = a7;
  v7[47] = a4;
  v7[48] = a5;
  v8 = sub_23D9D88A4();
  v7[51] = v8;
  v7[52] = *(v8 - 8);
  v7[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v7[54] = swift_task_alloc();
  sub_23D9D8DA4();
  v7[55] = swift_task_alloc();
  v9 = sub_23D9D90B4();
  v7[56] = v9;
  v7[57] = *(v9 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  sub_23D9DA9B4();
  v7[60] = sub_23D9DA9A4();
  v11 = sub_23D9DA994();
  v7[61] = v11;
  v7[62] = v10;

  return MEMORY[0x2822009F8](sub_23D955294, v11, v10);
}

uint64_t sub_23D955294()
{
  v1 = *(v0 + 384);
  if (v1)
  {
    v2 = *(v0 + 392);
    *(v0 + 16) = *v2;
    v3 = *(v2 + 4);
    v5 = *(v2 + 1);
    v4 = *(v2 + 2);
    *(v0 + 64) = *(v2 + 3);
    *(v0 + 80) = v3;
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    v7 = *(v2 + 6);
    v6 = *(v2 + 7);
    v8 = *(v2 + 5);
    *(v0 + 144) = v2[16];
    *(v0 + 112) = v7;
    *(v0 + 128) = v6;
    *(v0 + 96) = v8;
    v9 = *v2;
    *(v0 + 504) = *v2;
    v10 = v2[1];
    *(v0 + 512) = v10;
    v11 = v2[2];
    *(v0 + 520) = v11;
    *(v0 + 184) = v9;
    *(v0 + 192) = v10;
    *(v0 + 200) = v11;
    *(v0 + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
    MEMORY[0x23EEF3850]();
    v12 = *(v0 + 328);
    *(v0 + 536) = v12;
    v13 = swift_task_alloc();
    *(v0 + 544) = v13;
    *v13 = v0;
    v13[1] = sub_23D955428;
    v14 = *(v0 + 376);

    return sub_23D9559BC(v12, v14, v1);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_23D955428(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 552) = a1;
  *(v4 + 560) = a2;

  v5 = *(v3 + 496);
  v6 = *(v3 + 488);

  return MEMORY[0x2822009F8](sub_23D955578, v6, v5);
}

uint64_t sub_23D955578()
{
  v28 = *(v0 + 512);
  v30 = *(v0 + 528);
  v26 = *(v0 + 504);
  v27 = *(v0 + 520);
  v1 = *(v0 + 456);
  v25 = *(v0 + 464);
  v23 = *(v0 + 472);
  v24 = *(v0 + 448);
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);
  v4 = *(v0 + 416);
  v5 = *(v0 + 400);
  v22 = *(v0 + 408);

  v6 = sub_23D9D8954();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3, v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);

  sub_23D9D8D74();
  sub_23D9D8894();
  sub_23D9D8874();
  (*(v4 + 8))(v2, v22);
  sub_23D9D9054();
  (*(v1 + 16))(v25, v23, v24);
  *(v0 + 208) = v26;
  *(v0 + 304) = v27;
  *(v0 + 312) = v26;
  *(v0 + 216) = v28;
  *(v0 + 224) = v27;
  sub_23D958900(v0 + 312, v0 + 344);

  sub_23D91F2DC(v0 + 304, v0 + 352, &qword_27E2F4D78, qword_23D9DD470);
  MEMORY[0x23EEF3850](v30);
  v8 = *(v0 + 336);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_23D93C638(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_23D93C638((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 504);
  v12 = *(v0 + 464);
  v29 = *(v0 + 472);
  v13 = *(v0 + 448);
  v14 = *(v0 + 456);
  v15 = *(v0 + 392);
  v31 = *(v0 + 512);
  v8[2] = v10 + 1;
  v16 = v13;
  (*(v14 + 32))(v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10, v12);
  *(v0 + 232) = v11;
  *(v0 + 240) = v31;
  *(v0 + 360) = v8;
  sub_23D9DA564();
  sub_23D95895C(v0 + 312);

  sub_23D91F344(v0 + 304, &qword_27E2F4D78, qword_23D9DD470);
  v17 = sub_23D9D9064();
  v18 = *(v15 + 56);
  *(v0 + 152) = *(v15 + 40);
  *(v0 + 168) = v18;
  *(v0 + 272) = v17;
  *(v0 + 280) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4DE8, &qword_23D9DE9E0);
  sub_23D9DA564();
  *(v0 + 256) = *(v15 + 24);
  *(v0 + 288) = *(v15 + 24);
  *(v0 + 568) = 0;
  *(v0 + 320) = *(v0 + 264);
  sub_23D91F2DC(v0 + 320, v0 + 368, &qword_27E2F5558, &unk_23D9DE9E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3C4();
  (*(v14 + 8))(v29, v16);
  sub_23D91F344(v0 + 256, &qword_27E2F4758, &unk_23D9DC7E0);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_23D9559BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_23D9D9954();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v3[10] = swift_task_alloc();
  v5 = sub_23D9D8C74();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  sub_23D9DA9B4();
  v3[14] = sub_23D9DA9A4();
  v7 = sub_23D9DA994();
  v3[15] = v7;
  v3[16] = v6;

  return MEMORY[0x2822009F8](sub_23D955B48, v7, v6);
}

uint64_t sub_23D955B48()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_17:

    v22 = v0[1];

    return v22(0, 0);
  }

  v3 = v0[6];
  v4 = 0;
  v5 = *(sub_23D9D90B4() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v5 + 72);
  do
  {
    v10 = sub_23D9D9074();
    if (!v11)
    {
      goto LABEL_5;
    }

    if (v10 == v0[5] && v11 == v3)
    {
    }

    else
    {
      v13 = sub_23D9DAFC4();

      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      __break(1u);
      return result;
    }

LABEL_5:
    v0[17] = v4;
    v6 += v7;
    --v2;
  }

  while (v2);
  if (!v4)
  {
    goto LABEL_17;
  }

  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];
  sub_23D9DACD4();
  v17 = sub_23D9D9D24();
  sub_23D9D91B4();

  sub_23D9D9944();
  sub_23D9589B0();
  sub_23D9D9964();
  v0[18] = v0[2];
  (*(v15 + 8))(v14, v16);
  v23 = (*MEMORY[0x277D70100] + MEMORY[0x277D70100]);
  v18 = swift_task_alloc();
  v0[19] = v18;
  *v18 = v0;
  v18[1] = sub_23D955DD8;
  v19 = v0[10];
  v20 = v0[5];
  v21 = v0[6];

  return v23(v19, v20, v21);
}

uint64_t sub_23D955DD8()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_23D955F1C, v3, v2);
}

void sub_23D955F1C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_23D91F344(v0[10], &qword_27E2F4460, &qword_23D9DC2A0);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v0[17];
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    sub_23D9BB28C();
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    v10 = v7;
    v5 = v8;
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[11];
    v0[3] = v9;
    v14 = sub_23D9DAF94();
    MEMORY[0x23EEF3C30](v14);

    MEMORY[0x23EEF3C30](41, 0xE100000000000000);

    MEMORY[0x23EEF3C30](10272, 0xE200000000000000);

    v4 = v10;
    (*(v12 + 8))(v11, v13);
  }

  v15 = v0[1];

  v15(v4, v5);
}

uint64_t sub_23D9560E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5568, &qword_23D9DE9F8);
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - v3;
  v5 = v0[7];
  v45 = v0[6];
  v46 = v5;
  v6 = v0[3];
  v41 = v0[2];
  v42 = v6;
  v7 = v0[5];
  v43 = v0[4];
  v44 = v7;
  v8 = v0[1];
  v39 = *v0;
  v40 = v8;
  v47 = *(v0 + 16);
  v35 = v39;
  v36 = *(v0 + 2);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  sub_23D9DA584();
  v10 = swift_allocObject();
  v11 = v46;
  *(v10 + 112) = v45;
  *(v10 + 128) = v11;
  *(v10 + 144) = v47;
  v12 = v42;
  *(v10 + 48) = v41;
  *(v10 + 64) = v12;
  v13 = v44;
  *(v10 + 80) = v43;
  *(v10 + 96) = v13;
  v14 = v40;
  *(v10 + 16) = v39;
  *(v10 + 32) = v14;
  sub_23D958270(&v39, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5570, &qword_23D9DEA00);
  sub_23D958A0C();
  sub_23D958AF8();
  sub_23D958BA8();
  sub_23D9DA624();
  v15 = swift_allocObject();
  v16 = v46;
  *(v15 + 112) = v45;
  *(v15 + 128) = v16;
  *(v15 + 144) = v47;
  v17 = v42;
  *(v15 + 48) = v41;
  *(v15 + 64) = v17;
  v18 = v44;
  *(v15 + 80) = v43;
  *(v15 + 96) = v18;
  v19 = v40;
  *(v15 + 16) = v39;
  *(v15 + 32) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_23D958C5C;
  *(v20 + 24) = v15;
  v21 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F55B8, &qword_23D9DEA18) + 36)];
  *v21 = sub_23D958C9C;
  *(v21 + 1) = v20;
  v22 = swift_allocObject();
  v23 = v46;
  *(v22 + 112) = v45;
  *(v22 + 128) = v23;
  *(v22 + 144) = v47;
  v24 = v42;
  *(v22 + 48) = v41;
  *(v22 + 64) = v24;
  v25 = v44;
  *(v22 + 80) = v43;
  *(v22 + 96) = v25;
  v26 = v40;
  *(v22 + 16) = v39;
  *(v22 + 32) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_23D958CA4;
  *(v27 + 24) = v22;
  v28 = &v4[*(v2 + 36)];
  *v28 = sub_23D94B0F8;
  v28[1] = v27;
  v37 = *v1;
  v38 = *(v1 + 2);
  sub_23D958270(&v39, &v35);
  sub_23D958270(&v39, &v35);
  MEMORY[0x23EEF3850](&v35, v9);
  *&v37 = v35;
  v29 = swift_allocObject();
  v30 = v46;
  *(v29 + 112) = v45;
  *(v29 + 128) = v30;
  *(v29 + 144) = v47;
  v31 = v42;
  *(v29 + 48) = v41;
  *(v29 + 64) = v31;
  v32 = v44;
  *(v29 + 80) = v43;
  *(v29 + 96) = v32;
  v33 = v40;
  *(v29 + 16) = v39;
  *(v29 + 32) = v33;
  sub_23D958270(&v39, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D78, qword_23D9DD470);
  sub_23D958D50();
  sub_23D958F44();
  sub_23D9DA1E4();

  return sub_23D91F344(v4, &qword_27E2F5568, &qword_23D9DE9F8);
}

uint64_t sub_23D9564EC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_23D9D91D4();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v48);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  MEMORY[0x28223BE20](v12);
  v49 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F55A0, &qword_23D9DEA08);
  v53 = *(v17 - 8);
  v54 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  swift_getKeyPath();
  v50 = v12;
  sub_23D9DA574();

  *v58 = v59;
  *&v58[16] = v60;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850](v57, v20);
  if (v57[1])
  {

    v47 = a1;
    sub_23D91F2DC(a1, v16, &qword_27E2F4D40, &qword_23D9DEA10);
    v21 = *(a2 + 56);
    v59 = *(a2 + 40);
    v60 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4DE8, &qword_23D9DE9E0);
    sub_23D9DA584();
    v46 = *v58;
    v44 = *&v58[24];
    v45 = *&v58[16];
    v59 = *a2;
    *&v60 = *(a2 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
    sub_23D9DA584();
    v22 = *v58;
    v43 = *&v58[8];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v23 = type metadata accessor for VoiceRotorItemView(0);
    v24 = v23[5];
    *&v19[v24] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
    swift_storeEnumTagMultiPayload();
    v25 = sub_23D9D8C74();
    (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
    sub_23D91F2DC(v11, v8, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9DA3A4();
    sub_23D91F344(v11, &qword_27E2F4460, &qword_23D9DC2A0);
    v26 = &v19[v23[10]];
    v58[0] = 0;
    sub_23D9DA3A4();
    v27 = *(&v59 + 1);
    *v26 = v59;
    *(v26 + 1) = v27;
    sub_23D91F2DC(v16, &v19[v23[6]], &qword_27E2F4D40, &qword_23D9DEA10);
    v28 = &v19[v23[7]];
    *v28 = v46;
    v29 = v44;
    *(v28 + 2) = v45;
    *(v28 + 3) = v29;
    v30 = &v19[v23[8]];
    *v30 = v22;
    *(v30 + 8) = v43;
    sub_23D9D8F04();
    v31 = v49;
    sub_23D91F2DC(v16, v49, &qword_27E2F4D40, &qword_23D9DEA10);
    v32 = sub_23D9D91C4();
    v33 = sub_23D9DACA4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v58 = v35;
      *v34 = 136315138;
      sub_23D958FF8(&qword_27E2F55B0, MEMORY[0x277CE78C8], MEMORY[0x277CE78D8]);
      sub_23D9DA5F4();
      sub_23D91F344(v31, &qword_27E2F4D40, &qword_23D9DEA10);
      v36 = sub_23D9BDA5C(v59, *(&v59 + 1), v58);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_23D918000, v32, v33, "VoiceRotorItemView.init voice=%s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x23EEF4BC0](v35, -1, -1);
      MEMORY[0x23EEF4BC0](v34, -1, -1);

      sub_23D91F344(v16, &qword_27E2F4D40, &qword_23D9DEA10);
    }

    else
    {

      sub_23D91F344(v16, &qword_27E2F4D40, &qword_23D9DEA10);
      sub_23D91F344(v31, &qword_27E2F4D40, &qword_23D9DEA10);
    }

    (*(v51 + 8))(v56, v52);
    sub_23D958FF8(&qword_27E2F55B0, MEMORY[0x277CE78C8], MEMORY[0x277CE78D8]);
    sub_23D9DA5F4();
    v40 = *(&v59 + 1);
    v39 = v54;
    v38 = v55;
    v41 = &v19[*(v54 + 52)];
    *v41 = v59;
    *(v41 + 1) = v40;
    sub_23D9590BC(v19, v38);
    v37 = 0;
  }

  else
  {

    v37 = 1;
    v39 = v54;
    v38 = v55;
  }

  return (*(v53 + 56))(v38, v37, 1, v39);
}

uint64_t sub_23D956C40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v5 = a3[2];
  v9 = v5;
  v10 = v4;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v5;
  sub_23D958900(&v10, v7);

  sub_23D91F2DC(&v9, v7, &qword_27E2F4D78, qword_23D9DD470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  MEMORY[0x23EEF3850](&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D78, qword_23D9DD470);
  sub_23D91F01C(&qword_27E2F5580, &qword_27E2F4D78, qword_23D9DD470, MEMORY[0x277D83960]);
  sub_23D9DA884();
  v7[0] = v4;
  v7[1] = v3;
  v7[2] = v5;
  sub_23D9DA564();
  sub_23D95895C(&v10);

  return sub_23D91F344(&v9, &qword_27E2F4D78, qword_23D9DD470);
}

uint64_t sub_23D956D8C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v8 = v4;
  v9 = v3;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v4;
  sub_23D958900(&v9, v6);

  sub_23D91F2DC(&v8, v6, &qword_27E2F4D78, qword_23D9DD470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  MEMORY[0x23EEF3850](&v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D78, qword_23D9DD470);
  sub_23D91F01C(&qword_27E2F5580, &qword_27E2F4D78, qword_23D9DD470, MEMORY[0x277D83960]);
  sub_23D91F01C(&qword_27E2F5610, &qword_27E2F4D78, qword_23D9DD470, MEMORY[0x277D83990]);
  sub_23D9DAAA4();
  v6[0] = v3;
  v6[1] = v2;
  v6[2] = v4;
  sub_23D9DA564();
  sub_23D95895C(&v9);

  return sub_23D91F344(&v8, &qword_27E2F4D78, qword_23D9DD470);
}

void sub_23D956F00(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = sub_23D9D9024();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v29 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  if (!*(*a1 + 16) && *(*a2 + 16) == 1)
  {
    v12 = a3[15];
    v13 = a3[16];
    v35 = a3[14];
    v36 = v12;
    v41 = v35;
    v42 = v12;
    v34 = v13;
    v43 = v13;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5600, &qword_23D9DEA38);
    MEMORY[0x23EEF3850](v39);
    v30 = *(v39[0] + 16);

    v14 = 0;
    v31 = v7 + 16;
    v32 = v7 + 8;
    while (1)
    {
      v15 = v14;
      if (v30 == v14)
      {
        return;
      }

      v41 = v35;
      v42 = v36;
      v43 = v34;
      MEMORY[0x23EEF3850](v39, v33);
      if (v15 >= *(v39[0] + 16))
      {
        break;
      }

      v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v17 = *(v7 + 72) * v15;
      v18 = *(v7 + 16);
      v19 = v37;
      v18(v11, v39[0] + v16 + v17, v37);

      v20 = sub_23D9D8FF4();
      v22 = v21;
      v3 = *(v7 + 8);
      v3(v11, v19);
      if (v20 == sub_23D9DA8B4() && v22 == v23)
      {

LABEL_13:
        v41 = v35;
        v42 = v36;
        v43 = v34;
        MEMORY[0x23EEF3850](v39, v33);
        if (v15 < *(v39[0] + 16))
        {
          v26 = v29;
          v27 = v37;
          v18(v29, v39[0] + v16 + v17, v37);

          v28 = sub_23D9D9004();
          v3(v26, v27);
          if (v28)
          {
            return;
          }

          v44 = v35;
          v45[0] = v34;
          v41 = v35;
          v42 = v36;
          v43 = v34;
          sub_23D958900(&v44, v39);

          sub_23D91F2DC(v45, v39, &qword_27E2F5608, &qword_23D9DEA40);
          MEMORY[0x23EEF3850](&v40, v33);
          v3 = v40;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_16;
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        v3 = sub_23D9512C4(v3);
LABEL_16:
        if (v15 >= *(v3 + 2))
        {
          __break(1u);
        }

        else
        {
          sub_23D9D9014();
          v39[0] = v35;
          v39[1] = v36;
          v39[2] = v34;
          v38 = v3;
          sub_23D9DA564();
          sub_23D95895C(&v44);

          sub_23D91F344(v45, &qword_27E2F5608, &qword_23D9DEA40);
        }

        return;
      }

      v25 = sub_23D9DAFC4();

      v14 = v15 + 1;
      if (v25)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_23D9572E0(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 112);
  *(v2 + 112) = *(a1 + 96);
  *(v2 + 128) = v3;
  *(v2 + 144) = *(a1 + 128);
  v4 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v4;
  v5 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v5;
  v6 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  sub_23D958270(a1, v8);
  return sub_23D9DA404();
}

uint64_t sub_23D9573A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v2 = qword_27E2F7320;
    v3 = sub_23D9DA8A4();
    v4 = sub_23D9DA8A4();
    v5 = sub_23D9DA8A4();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

    sub_23D9DA8B4();
  }

  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t VoiceRotorListView.body.getter@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 112);
  v7[6] = *(v1 + 96);
  v7[7] = v2;
  v8 = *(v1 + 128);
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v4 = *(v1 + 80);
  v7[4] = *(v1 + 64);
  v7[5] = v4;
  v5 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v5;
  return sub_23D957540(v7, a1);
}

uint64_t sub_23D957540@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5528, &qword_23D9DE858);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5530, &qword_23D9DE860);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = a1[7];
  v48 = a1[6];
  v49 = v16;
  v50 = *(a1 + 16);
  v17 = a1[3];
  v44 = a1[2];
  v45 = v17;
  v18 = a1[5];
  v46 = a1[4];
  v47 = v18;
  v19 = a1[1];
  v42 = *a1;
  v43 = v19;
  sub_23D9560E8();
  v20 = swift_allocObject();
  v21 = a1[7];
  *(v20 + 112) = a1[6];
  *(v20 + 128) = v21;
  *(v20 + 144) = *(a1 + 16);
  v22 = a1[3];
  *(v20 + 48) = a1[2];
  *(v20 + 64) = v22;
  v23 = a1[5];
  *(v20 + 80) = a1[4];
  *(v20 + 96) = v23;
  v24 = a1[1];
  *(v20 + 16) = *a1;
  *(v20 + 32) = v24;
  sub_23D958270(a1, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5538, &unk_23D9DE868);
  sub_23D9582A8();
  sub_23D9DA404();
  v41 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  v25 = v42;
  v26 = v43;
  v27 = swift_allocObject();
  v28 = a1[3];
  *(v27 + 48) = a1[2];
  *(v27 + 64) = v28;
  *(v27 + 144) = *(a1 + 16);
  v29 = a1[7];
  *(v27 + 112) = a1[6];
  *(v27 + 128) = v29;
  v30 = a1[5];
  *(v27 + 80) = a1[4];
  *(v27 + 96) = v30;
  v31 = a1[1];
  *(v27 + 16) = *a1;
  *(v27 + 32) = v31;
  v32 = &v8[*(v4 + 44)];
  *v32 = v25;
  v32[16] = v26;
  *(v32 + 3) = sub_23D958364;
  *(v32 + 4) = v27;
  v33 = *(v10 + 16);
  v33(v12, v15, v9);
  v34 = v39;
  sub_23D95836C(v8, v39);
  v35 = v40;
  v33(v40, v12, v9);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5548, &qword_23D9DE878);
  sub_23D95836C(v34, &v35[*(v36 + 48)]);
  sub_23D958270(a1, &v42);
  sub_23D9583DC(v8);
  v37 = *(v10 + 8);
  v37(v15, v9);
  sub_23D9583DC(v34);
  return (v37)(v12, v9);
}

uint64_t sub_23D9578E8()
{
  v0._countAndFlagsBits = 0x5F57454E5F444441;
  v0._object = 0xED00004543494F56;
  AXSUILocString(_:)(v0);
  sub_23D91B650();
  v1 = sub_23D9D9F04();
  v3 = v2;
  v5 = v4 & 1;
  sub_23D9DA114();
  sub_23D9274BC(v1, v3, v5);
}

uint64_t sub_23D9579C8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CB8, &unk_23D9DE880);
  sub_23D93BC8C();
  return sub_23D9D96D4();
}

uint64_t sub_23D957A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CD0, &qword_23D9DD250);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CC8, &unk_23D9DD240);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = swift_allocObject();
  v11 = *(a1 + 112);
  *(v10 + 112) = *(a1 + 96);
  *(v10 + 128) = v11;
  *(v10 + 144) = *(a1 + 128);
  v12 = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = v12;
  v13 = *(a1 + 80);
  *(v10 + 80) = *(a1 + 64);
  *(v10 + 96) = v13;
  v14 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v14;
  sub_23D958270(a1, &v35);
  sub_23D93B644(sub_23D95844C, v10, v5);
  KeyPath = swift_getKeyPath();
  v16 = &v5[*(v3 + 36)];
  *v16 = KeyPath;
  v16[8] = 0;
  v17._countAndFlagsBits = 0x45474155474E414CLL;
  v17._object = 0xEE00454C5449545FLL;
  v35 = AXSUILocString(_:)(v17);
  v18 = sub_23D93BE78();
  v19 = sub_23D91B650();
  v20 = MEMORY[0x277D837D0];
  sub_23D9DA064();

  sub_23D91F344(v5, &qword_27E2F4CD0, &qword_23D9DD250);
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B60, &unk_23D9DCF00);
  v35._countAndFlagsBits = v3;
  v35._object = v20;
  v36 = v18;
  v37 = v19;
  swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B50, &qword_23D9DCE20);
  v22 = sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20, MEMORY[0x277CDD7A0]);
  v35._countAndFlagsBits = v21;
  v35._object = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v32;
  sub_23D9DA1A4();
  (*(v7 + 8))(v9, v6);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CB8, &unk_23D9DE880) + 36);
  type metadata accessor for AXSUINavigationManager(0);
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x277D84F98];
  sub_23D9D8894();
  sub_23D9D8A44();
  v34 = v25;
  sub_23D9DA3A4();
  object = v35._object;
  *v24 = v35._countAndFlagsBits;
  *(v24 + 8) = object;
  *(v24 + 16) = swift_getKeyPath();
  *(v24 + 24) = 0;
  v27 = type metadata accessor for AXNavigationSink(0);
  v28 = *(v27 + 24);
  *(v24 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F63A0, &qword_23D9DE920);
  swift_storeEnumTagMultiPayload();
  v29 = *(v27 + 28);
  *(v24 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5630, qword_23D9DD310);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23D957E80(uint64_t a1)
{
  v2 = sub_23D9D9BC4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B50, &qword_23D9DCE20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_23D9D9BA4();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
  sub_23D9D94B4();
  v7 = sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20, MEMORY[0x277CDD7A0]);
  MEMORY[0x23EEF2F00](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23D95806C@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 112);
  v7[6] = *(v1 + 96);
  v7[7] = v2;
  v8 = *(v1 + 128);
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v4 = *(v1 + 80);
  v7[4] = *(v1 + 64);
  v7[5] = v4;
  v5 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v5;
  return sub_23D957540(v7, a1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_23D9580F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_23D958140(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23D9581B4()
{
  result = qword_27E2F5508;
  if (!qword_27E2F5508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5510, &qword_23D9DE848);
    sub_23D91F01C(&qword_27E2F5518, &qword_27E2F5520, &qword_23D9DE850, MEMORY[0x277CE14C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5508);
  }

  return result;
}

unint64_t sub_23D9582A8()
{
  result = qword_27E2F5540;
  if (!qword_27E2F5540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5538, &unk_23D9DE868);
    sub_23D958FF8(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5540);
  }

  return result;
}

uint64_t sub_23D95836C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5528, &qword_23D9DE858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9583DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5528, &qword_23D9DE858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D9584D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23D95850C()
{
  v1 = sub_23D9D8954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 168) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  sub_23D91F080(*(v0 + 128), *(v0 + 136));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23D95863C(uint64_t *a1)
{
  v3 = *(sub_23D9D8954() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 168) & ~*(v3 + 80));

  return sub_23D954E8C(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_23D9586C0()
{
  v1 = sub_23D9D8954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 184) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  sub_23D91F080(*(v0 + 144), *(v0 + 152));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23D9587F8(uint64_t a1)
{
  v4 = *(sub_23D9D8954() - 8);
  v5 = (*(v4 + 80) + 184) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23D928310;

  return sub_23D9550D0(a1, v6, v7, v8, v9, (v1 + 6), v1 + v5);
}

unint64_t sub_23D9589B0()
{
  result = qword_27E2F5560;
  if (!qword_27E2F5560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5560);
  }

  return result;
}

unint64_t sub_23D958A0C()
{
  result = qword_27E2F5578;
  if (!qword_27E2F5578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5550, &unk_23D9E2B60);
    sub_23D91F01C(&qword_27E2F5580, &qword_27E2F4D78, qword_23D9DD470, MEMORY[0x277D83960]);
    sub_23D91F01C(&qword_27E2F5588, &qword_27E2F4D78, qword_23D9DD470, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5578);
  }

  return result;
}

unint64_t sub_23D958AF8()
{
  result = qword_27E2F5590;
  if (!qword_27E2F5590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5570, &qword_23D9DEA00);
    sub_23D91F01C(&qword_27E2F5598, &qword_27E2F55A0, &qword_23D9DEA08, MEMORY[0x277CE1150]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5590);
  }

  return result;
}

unint64_t sub_23D958BA8()
{
  result = qword_27E2F55A8;
  if (!qword_27E2F55A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4D40, &qword_23D9DEA10);
    sub_23D958FF8(&qword_27E2F55B0, MEMORY[0x277CE78C8], MEMORY[0x277CE78D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F55A8);
  }

  return result;
}

uint64_t sub_23D958C64()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{

  sub_23D91F080(*(v0 + 112), *(v0 + 120));

  return swift_deallocObject();
}

unint64_t sub_23D958D50()
{
  result = qword_27E2F55C0;
  if (!qword_27E2F55C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5568, &qword_23D9DE9F8);
    sub_23D958E08();
    sub_23D91F01C(&qword_27E2F5098, &qword_27E2F50A0, &qword_23D9DEA30, MEMORY[0x277CE04A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F55C0);
  }

  return result;
}

unint64_t sub_23D958E08()
{
  result = qword_27E2F55C8;
  if (!qword_27E2F55C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F55B8, &qword_23D9DEA18);
    sub_23D958EC0();
    sub_23D91F01C(&qword_27E2F55E0, &qword_27E2F55E8, &unk_23D9DFA20, MEMORY[0x277CE04A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F55C8);
  }

  return result;
}

unint64_t sub_23D958EC0()
{
  result = qword_27E2F55D0;
  if (!qword_27E2F55D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F55D8, &unk_23D9DEA20);
    sub_23D958AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F55D0);
  }

  return result;
}

unint64_t sub_23D958F44()
{
  result = qword_27E2F55F0;
  if (!qword_27E2F55F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4D78, qword_23D9DD470);
    sub_23D958FF8(&qword_27E2F55F8, MEMORY[0x277CE78C8], MEMORY[0x277CE78D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F55F0);
  }

  return result;
}

uint64_t sub_23D958FF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D959040@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D9074();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D9590BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F55A0, &qword_23D9DEA08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D95914C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_23D9D8DA4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_23D91F344(a1, &qword_27E2F5900, &unk_23D9DC640);
    sub_23D960928(a2, v7);
    v13 = sub_23D9D8954();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_23D91F344(v7, &qword_27E2F5900, &unk_23D9DC640);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_23D962ECC(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_23D9D8954();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_23D959378(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_23D9D8954();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_23D91F344(a1, &qword_27E2F4210, &qword_23D9DBE60);
    sub_23D960AC8(a2, v7);
    (*(v9 + 8))(a2, v8);
    return sub_23D91F344(v7, &qword_27E2F4210, &qword_23D9DBE60);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_23D9630D0(v12, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_23D959568(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v4;
    v11 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_23D9632B4(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_23D9D88A4();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_23D91F344(a1, &qword_27E2F5658, &qword_23D9DEB98);
    sub_23D960C60(a2, v10);
    v8 = sub_23D9D88A4();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_23D91F344(v10, &qword_27E2F5658, &qword_23D9DEB98);
  }

  return result;
}

uint64_t sub_23D95968C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 0x100000000) != 0)
  {
    v10 = sub_23D960590(a2, a3);
    v12 = v11;

    if (v12)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23D96435C();
        v14 = v16;
      }

      result = sub_23D962B30(v10, v14);
      *v4 = v14;
    }
  }

  else
  {
    v7 = *&a1;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_23D963484(a2, a3, v8, v7);

    *v3 = v15;
  }

  return result;
}

uint64_t sub_23D959778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_23D9D8DA4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_23D91F344(a1, &qword_27E2F5900, &unk_23D9DC640);
    sub_23D960D4C(a2, a3, v9);

    return sub_23D91F344(v9, &qword_27E2F5900, &unk_23D9DC640);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_23D9635E0(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t View.axNavigationSink()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXNavigationSink(0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AXSUINavigationManager(0);
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F98];
  sub_23D9D8894();
  sub_23D9D8A44();
  v12[1] = v7;
  sub_23D9DA3A4();
  v8 = v12[3];
  *v6 = v12[2];
  *(v6 + 1) = v8;
  *(v6 + 2) = swift_getKeyPath();
  v6[24] = 0;
  v9 = *(v4 + 24);
  *&v6[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F63A0, &qword_23D9DE920);
  swift_storeEnumTagMultiPayload();
  v10 = *(v4 + 28);
  *&v6[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5630, qword_23D9DD310);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x23EEF34C0](v6, a1, v4, a2);
  return sub_23D95E214(v6, type metadata accessor for AXNavigationSink);
}

uint64_t sub_23D959B20()
{
  swift_getKeyPath();
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager, &protocol conformance descriptor for AXSUINavigationManager);
  sub_23D9D8A14();

  swift_beginAccess();
}

uint64_t sub_23D959BD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager, &protocol conformance descriptor for AXSUINavigationManager);
  sub_23D9D8A14();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_23D959CC4(uint64_t a1)
{
  swift_beginAccess();

  sub_23D95E2FC(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager, &protocol conformance descriptor for AXSUINavigationManager);
    sub_23D9D8A04();
  }
}

uint64_t sub_23D959E0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_23D959E74()
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D0, &qword_23D9DEFF0);
  MEMORY[0x28223BE20](v51);
  v2 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  sub_23D95A418(&v56);
  if (*(&v57 + 1))
  {
    v59 = v56;
    v60 = v57;
    v61 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F58E0, &unk_23D9DF000);
    v6 = swift_allocObject();
    v7 = v59;
    v8 = v60;
    *(v6 + 16) = xmmword_23D9DC3E0;
    *(v6 + 32) = v7;
    *(v6 + 48) = v8;
    *(v6 + 64) = v61;
    return v6;
  }

  sub_23D91F344(&v56, &qword_27E2F5658, &qword_23D9DEB98);
  swift_getKeyPath();
  *&v59 = v0;
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager, &protocol conformance descriptor for AXSUINavigationManager);
  sub_23D9D8A14();

  swift_beginAccess();
  v9 = *(v0 + 16);
  v10 = *(v9 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v6;
  }

  v49 = v5;
  v50 = v2;
  v55 = MEMORY[0x277D84F90];

  sub_23D964744(0, v10, 0);
  v6 = v55;
  v11 = v9 + 64;
  result = sub_23D9DADE4();
  v13 = result;
  v14 = 0;
  v54 = *(v9 + 36);
  v46 = v9 + 72;
  v47 = v10;
  v48 = v9 + 64;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v9 + 32))
  {
    v18 = v13 >> 6;
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_25;
    }

    if (v54 != *(v9 + 36))
    {
      goto LABEL_26;
    }

    v52 = v14;
    v53 = v6;
    v19 = v49;
    v20 = &v49[*(v51 + 48)];
    v21 = v51;
    v22 = *(v9 + 48);
    v23 = sub_23D9D88A4();
    v24 = *(v23 - 8);
    v25 = v9;
    v26 = v24;
    v27 = v22 + *(v24 + 72) * v13;
    v28 = v21;
    (*(v24 + 16))(v19, v27, v23);
    sub_23D95EBC0(*(v25 + 56) + 40 * v13, v20);
    v29 = v50;
    (*(v26 + 32))(v50, v19, v23);
    v30 = v29 + *(v28 + 48);
    v31 = *(v20 + 16);
    *v30 = *v20;
    *(v30 + 16) = v31;
    *(v30 + 32) = *(v20 + 32);
    sub_23D95EBC0(v30, &v59);
    v32 = v29;
    v6 = v53;
    result = sub_23D91F344(v32, &qword_27E2F58D0, &qword_23D9DEFF0);
    v55 = v6;
    v34 = *(v6 + 16);
    v33 = *(v6 + 24);
    if (v34 >= v33 >> 1)
    {
      result = sub_23D964744((v33 > 1), v34 + 1, 1);
      v6 = v55;
    }

    *(v6 + 16) = v34 + 1;
    v35 = v6 + 40 * v34;
    v36 = v59;
    v37 = v60;
    *(v35 + 64) = v61;
    *(v35 + 32) = v36;
    *(v35 + 48) = v37;
    v15 = 1 << *(v25 + 32);
    if (v13 >= v15)
    {
      goto LABEL_27;
    }

    v11 = v48;
    v38 = *(v48 + 8 * v18);
    if ((v38 & (1 << v13)) == 0)
    {
      goto LABEL_28;
    }

    v9 = v25;
    if (v54 != *(v25 + 36))
    {
      goto LABEL_29;
    }

    v39 = v38 & (-2 << (v13 & 0x3F));
    if (v39)
    {
      v15 = __clz(__rbit64(v39)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v16 = v47;
      v17 = v52;
    }

    else
    {
      v40 = v18 << 6;
      v41 = v18 + 1;
      v16 = v47;
      v42 = (v46 + 8 * v18);
      v17 = v52;
      while (v41 < (v15 + 63) >> 6)
      {
        v44 = *v42++;
        v43 = v44;
        v40 += 64;
        ++v41;
        if (v44)
        {
          result = sub_23D964DE4(v13, v54, 0);
          v15 = __clz(__rbit64(v43)) + v40;
          goto LABEL_6;
        }
      }

      result = sub_23D964DE4(v13, v54, 0);
    }

LABEL_6:
    v14 = v17 + 1;
    v13 = v15;
    if (v14 == v16)
    {

      return v6;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t AXSUINavigationManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F98];
  sub_23D9D8894();
  sub_23D9D8A44();
  return v0;
}

uint64_t AXSUINavigationManager.init()(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x277D84F98];
  sub_23D9D8894();
  sub_23D9D8A44();
  return v1;
}

uint64_t sub_23D95A418@<X0>(_OWORD *a1@<X8>)
{
  v42 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D0, &qword_23D9DEFF0);
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D8, &qword_23D9DEFF8);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v41 - v7;
  swift_getKeyPath();
  v48 = v1;
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager, &protocol conformance descriptor for AXSUINavigationManager);
  sub_23D9D8A14();

  swift_beginAccess();
  v8 = *(v1 + 16);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v45 = v8 + 64;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      v17 = __clz(__rbit64(v12)) | (v16 << 6);
      v18 = *(v8 + 48);
      v19 = sub_23D9D88A4();
      v20 = *(v19 - 8);
      v21 = v18 + *(v20 + 72) * v17;
      v22 = v46;
      (*(v20 + 16))(v46, v21, v19);
      v23 = v8;
      v24 = *(v8 + 56) + 40 * v17;
      v25 = v47;
      sub_23D95EBC0(v24, v22 + *(v47 + 48));
      sub_23D92A2BC(v22, v3, &qword_27E2F58D0, &qword_23D9DEFF0);
      v26 = &v3[*(v25 + 48)];
      v27 = v3;
      v29 = *(v26 + 3);
      v28 = *(v26 + 4);
      __swift_project_boxed_opaque_existential_1(v26, v29);
      if ((*(v28 + 32))(v29, v28))
      {
        break;
      }

      v12 &= v12 - 1;
      result = sub_23D91F344(v27, &qword_27E2F58D0, &qword_23D9DEFF0);
      v15 = v16;
      v3 = v27;
      v8 = v23;
      v9 = v45;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v31 = v43;
    sub_23D92A2BC(v27, v43, &qword_27E2F58D0, &qword_23D9DEFF0);
    v30 = v44;
    v32 = *(v44 + 56);
    v33 = v31;
    v34 = 0;
LABEL_12:
    v35 = v47;
    v32(v33, v34, 1, v47);

    if ((*(v30 + 48))(v31, 1, v35) == 1)
    {
      result = sub_23D91F344(v31, &qword_27E2F58D8, &qword_23D9DEFF8);
      v36 = v42;
      *v42 = 0u;
      v36[1] = 0u;
      *(v36 + 4) = 0;
    }

    else
    {
      v37 = v31 + *(v35 + 48);
      v38 = *(v37 + 16);
      v39 = v42;
      *v42 = *v37;
      v39[1] = v38;
      *(v39 + 4) = *(v37 + 32);
      v40 = sub_23D9D88A4();
      return (*(*(v40 - 8) + 8))(v31, v40);
    }
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

      if (v16 >= v13)
      {

        v31 = v43;
        v30 = v44;
        v32 = *(v44 + 56);
        v33 = v43;
        v34 = 1;
        goto LABEL_12;
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23D95A874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v36 = a5;
  v38 = a4;
  v39 = a2;
  v43 = a6;
  v8 = sub_23D9D88A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for AXSUINavigationManager.SimpleRoute(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D91F2DC(a1, v18, &unk_27E2F6A30, &qword_23D9E0BC0);
  v22 = swift_allocObject();
  v23 = v36;
  *(v22 + 2) = v38;
  *(v22 + 3) = v23;
  *(v22 + 4) = v39;
  *(v22 + 5) = a3;
  v21[*(v19 + 20)] = 0;
  sub_23D91F2DC(v18, v15, &unk_27E2F6A30, &qword_23D9E0BC0);
  v39 = v9;
  v24 = *(v9 + 48);
  v25 = v8;
  LODWORD(v8) = v24(v15, 1, v8);

  if (v8 == 1)
  {
    v26 = v40;
    sub_23D9D8894();
    sub_23D91F344(v18, &unk_27E2F6A30, &qword_23D9E0BC0);
    v27 = v24(v15, 1, v25);
    v28 = v39;
    v29 = v26;
    if (v27 != 1)
    {
      sub_23D91F344(v15, &unk_27E2F6A30, &qword_23D9E0BC0);
    }
  }

  else
  {
    sub_23D91F344(v18, &unk_27E2F6A30, &qword_23D9E0BC0);
    v28 = v39;
    v29 = v40;
    (*(v39 + 32))(v40, v15, v25);
  }

  v37 = v25;
  (*(v28 + 32))(v21, v29, v25);
  v30 = &v21[*(v19 + 24)];
  *v30 = sub_23D95E12C;
  v30[1] = v22;
  v31 = *(v28 + 16);
  v32 = v42;
  v31(v42, v21, v25);
  v45[3] = v19;
  v45[4] = sub_23D95E1CC(&unk_27E2F5640, type metadata accessor for AXSUINavigationManager.SimpleRoute, &unk_23D9DEF40);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  sub_23D95E294(v21, boxed_opaque_existential_1, type metadata accessor for AXSUINavigationManager.SimpleRoute);
  swift_getKeyPath();
  v34 = v41;
  v44 = v41;
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager, &protocol conformance descriptor for AXSUINavigationManager);
  sub_23D9D8A14();

  v44 = v34;
  swift_getKeyPath();
  sub_23D9D8A34();

  swift_beginAccess();
  sub_23D959568(v45, v32);
  swift_endAccess();
  v44 = v34;
  swift_getKeyPath();
  sub_23D9D8A24();

  v31(v43, v21, v37);
  return sub_23D95E214(v21, type metadata accessor for AXSUINavigationManager.SimpleRoute);
}

uint64_t sub_23D95AD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v7);
  v11 = sub_23D964D1C(v9, a3, a4);
  (*(v6 + 8))(v9, a3);
  return v11;
}

uint64_t sub_23D95AE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v37 = a2;
  v35 = a1;
  v42 = a5;
  v7 = sub_23D9D88A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = type metadata accessor for AXSUINavigationManager.PSControllerRoute(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v40 = &v35 - v22;
  sub_23D91F2DC(v35, v17, &unk_27E2F6A30, &qword_23D9E0BC0);
  v20[v18[5]] = 0;
  *&v20[v18[6]] = v37;
  v23 = &v20[v18[7]];
  *v23 = a3;
  *(v23 + 1) = a4;
  sub_23D91F2DC(v17, v14, &unk_27E2F6A30, &qword_23D9E0BC0);
  v24 = v8;
  v25 = *(v8 + 48);
  v26 = v25(v14, 1, v7);

  if (v26 == 1)
  {
    v27 = v39;
    sub_23D9D8894();
    sub_23D91F344(v17, &unk_27E2F6A30, &qword_23D9E0BC0);
    v28 = v24;
    if (v25(v14, 1, v7) != 1)
    {
      sub_23D91F344(v14, &unk_27E2F6A30, &qword_23D9E0BC0);
    }
  }

  else
  {
    sub_23D91F344(v17, &unk_27E2F6A30, &qword_23D9E0BC0);
    v27 = v39;
    (*(v24 + 32))(v39, v14, v7);
    v28 = v24;
  }

  v36 = v7;
  (*(v28 + 32))(v20, v27, v7);
  v29 = v40;
  sub_23D95FE64(v20, v40, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
  v30 = *(v28 + 16);
  v31 = v41;
  v30(v41, v29, v7);
  v44[3] = v18;
  v44[4] = sub_23D95E1CC(&qword_27E2F5650, type metadata accessor for AXSUINavigationManager.PSControllerRoute, &unk_23D9DEF24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  sub_23D95E294(v29, boxed_opaque_existential_1, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
  swift_getKeyPath();
  v33 = v38;
  v43 = v38;
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager, &protocol conformance descriptor for AXSUINavigationManager);
  sub_23D9D8A14();

  v43 = v33;
  swift_getKeyPath();
  sub_23D9D8A34();

  swift_beginAccess();
  sub_23D959568(v44, v31);
  swift_endAccess();
  v43 = v33;
  swift_getKeyPath();
  sub_23D9D8A24();

  v30(v42, v29, v36);
  return sub_23D95E214(v29, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
}

uint64_t sub_23D95B358(uint64_t a1, char a2)
{
  v4 = v2;
  v6 = sub_23D9D88A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v26 = v2;
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager, &protocol conformance descriptor for AXSUINavigationManager);
  sub_23D9D8A14();

  swift_beginAccess();
  v10 = *(v2 + 16);
  if (!*(v10 + 16))
  {
    goto LABEL_8;
  }

  v11 = sub_23D95EAEC(a1);
  if ((v12 & 1) == 0)
  {

LABEL_8:
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    goto LABEL_9;
  }

  sub_23D95EBC0(*(v10 + 56) + 40 * v11, &v26);

  if (!*(&v27 + 1))
  {
LABEL_9:
    sub_23D91F344(&v26, &qword_27E2F5658, &qword_23D9DEB98);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    return sub_23D91F344(&v29, &qword_27E2F5660, &qword_23D9DEBA0);
  }

  sub_23D95EBC0(&v26, v25);
  sub_23D91F344(&v26, &qword_27E2F5658, &qword_23D9DEB98);
  sub_23D95EBF8(v25, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5668, &qword_23D9DEBA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5670, &qword_23D9DEBB0);
  if (swift_dynamicCast())
  {
    if (*(&v30 + 1))
    {
      sub_23D95EBF8(&v29, v32);
      v13 = v33;
      v24 = v34;
      __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      (*(v24 + 16))(a2 & 1, v13);
      (*(v7 + 16))(v9, a1, v6);
      v14 = v33;
      v15 = v34;
      v16 = __swift_project_boxed_opaque_existential_1(v32, v33);
      v17 = *(v14 - 8);
      v18 = MEMORY[0x28223BE20](v16);
      v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = *(v15 + 8);
      *(&v30 + 1) = v14;
      v31 = v21;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
      (*(v17 + 32))(boxed_opaque_existential_1, v20, v14);
      swift_getKeyPath();
      *&v26 = v4;
      sub_23D9D8A14();

      *&v26 = v4;
      swift_getKeyPath();
      sub_23D9D8A34();

      swift_beginAccess();
      sub_23D959568(&v29, v9);
      swift_endAccess();
      *&v26 = v4;
      swift_getKeyPath();
      sub_23D9D8A24();

      return __swift_destroy_boxed_opaque_existential_0(v32);
    }
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
  }

  return sub_23D91F344(&v29, &qword_27E2F5660, &qword_23D9DEBA0);
}

uint64_t AXSUINavigationManager.deinit()
{

  v1 = OBJC_IVAR____TtC23AccessibilitySettingsUI22AXSUINavigationManager_id;
  v2 = sub_23D9D88A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23AccessibilitySettingsUI22AXSUINavigationManager___observationRegistrar;
  v4 = sub_23D9D8A54();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t AXSUINavigationManager.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC23AccessibilitySettingsUI22AXSUINavigationManager_id;
  v2 = sub_23D9D88A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23AccessibilitySettingsUI22AXSUINavigationManager___observationRegistrar;
  v4 = sub_23D9D8A54();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_23D95B94C()
{
  sub_23D964EA0();
  sub_23D9D9964();
  return v1;
}

void *sub_23D95B988@<X0>(void *a1@<X8>)
{
  sub_23D964EA0();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

void *sub_23D95B9D8@<X0>(void *a1@<X8>)
{
  sub_23D964EA0();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

uint64_t sub_23D95BA28(uint64_t *a1)
{
  sub_23D964EA0();

  return sub_23D9D9974();
}

uint64_t sub_23D95BA8C(uint64_t a1, void *a2)
{
  v4 = sub_23D9D88A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 24))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 24))(v13, v14);
  LOBYTE(a1) = sub_23D9D8884();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  return a1 & 1;
}

uint64_t sub_23D95BC10()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_23D95BC6C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2) & 1;
}

uint64_t sub_23D95BCC4@<X0>(uint64_t *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v10 - v5;
  sub_23D9D9F24();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_23D964D1C(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  result = swift_getKeyPath();
  *a1 = v8;
  a1[1] = result;
  a1[2] = 0;
  return result;
}

uint64_t sub_23D95BE30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + *(a1 + 24)))();
  *a2 = result;
  return result;
}

uint64_t sub_23D95BE68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D88A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23D95BED0(uint64_t a1)
{
  v1 = sub_23D9D8F94();
  MEMORY[0x28223BE20](v1 - 8);
  sub_23D9D8F84();
  return sub_23D9D8F64();
}

uint64_t sub_23D95BF6C()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    sub_23D9DACD4();
    v7 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    j__swift_release(v5);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_23D95C0B0()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    sub_23D9DACD4();
    v7 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    j__swift_release(v5);
    (*(v2 + 8))(v4, v1);
    v5 = v11;
  }

  if (!v5)
  {
    v8 = *(v0 + 8);
    v11 = *v0;
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5868, &qword_23D9DEFB0);
    sub_23D9DA3B4();
    return v10[1];
  }

  return v5;
}

uint64_t sub_23D95C22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v66 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57C8, &qword_23D9DEF60);
  MEMORY[0x28223BE20](v67);
  v56 = (v48 - v3);
  v61 = type metadata accessor for AXNavigationSink(0);
  v53 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v54 = v4;
  v55 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57D0, &qword_23D9DEF68);
  MEMORY[0x28223BE20](v63);
  v57 = v48 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57D8, &qword_23D9DEF70);
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v58 = v48 - v6;
  v7 = sub_23D9D8FC4();
  v60 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v48 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57E0, &qword_23D9DEF78);
  MEMORY[0x28223BE20](v65);
  v14 = v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57E8, &qword_23D9DEF80);
  MEMORY[0x28223BE20](v15);
  v17 = v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57F0, &qword_23D9DEF88);
  MEMORY[0x28223BE20](v18);
  v20 = v48 - v19;
  v21 = v2;
  if (sub_23D95BF6C())
  {

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5818, &qword_23D9DEF98);
    (*(*(v22 - 8) + 16))(v17, v64, v22);
    swift_storeEnumTagMultiPayload();
    sub_23D91F01C(&qword_27E2F5810, &qword_27E2F5818, &qword_23D9DEF98, MEMORY[0x277CE04B8]);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5658, &qword_23D9DEB98);
    v24 = sub_23D95FCA0();
    v25 = sub_23D95FD84();
    *&v68 = v63;
    *(&v68 + 1) = v23;
    v69 = v24;
    v70 = v25;
    swift_getOpaqueTypeConformance2();
    sub_23D9D9B14();
    sub_23D95FF4C(v20, v14);
    swift_storeEnumTagMultiPayload();
    sub_23D95FB78();
    sub_23D91F01C(&qword_27E2F5848, &qword_27E2F57C8, &qword_23D9DEF60, MEMORY[0x277CE11B0]);
    sub_23D9D9B14();
    return sub_23D95FFBC(v20);
  }

  else
  {
    v48[1] = v15;
    v49 = v17;
    v50 = v20;
    v52 = v18;
    v51 = v14;
    sub_23D95DE44(&unk_27E2F5630, qword_23D9DD310, MEMORY[0x277D40290], v12);
    v27 = v60;
    (*(v60 + 104))(v9, *MEMORY[0x277D40278], v7);
    sub_23D95E1CC(&qword_27E2F57F8, MEMORY[0x277D40290], MEMORY[0x277D402C8]);
    sub_23D9DA964();
    sub_23D9DA964();
    v28 = *(v27 + 8);
    v28(v9, v7);
    v28(v12, v7);
    if (v68 == v71)
    {
      KeyPath = swift_getKeyPath();
      v30 = sub_23D95C0B0();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5818, &qword_23D9DEF98);
      v31 = v57;
      (*(*(v61 - 8) + 16))(v57, v64, v61);
      v32 = v63;
      v33 = (v31 + *(v63 + 36));
      *v33 = KeyPath;
      v33[1] = v30;
      sub_23D95C0B0();
      sub_23D95A418(&v68);

      v34 = v55;
      sub_23D95E294(v21, v55, type metadata accessor for AXNavigationSink);
      v35 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v36 = swift_allocObject();
      sub_23D95FE64(v34, v36 + v35, type metadata accessor for AXNavigationSink);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5658, &qword_23D9DEB98);
      v38 = sub_23D95FCA0();
      v39 = sub_23D95FD84();
      v40 = v58;
      sub_23D9DA1E4();

      sub_23D91F344(&v68, &qword_27E2F5658, &qword_23D9DEB98);
      sub_23D91F344(v31, &qword_27E2F57D0, &qword_23D9DEF68);
      v41 = v59;
      v42 = v62;
      (*(v59 + 16))(v49, v40, v62);
      swift_storeEnumTagMultiPayload();
      sub_23D91F01C(&qword_27E2F5810, &qword_27E2F5818, &qword_23D9DEF98, MEMORY[0x277CE04B8]);
      *&v68 = v32;
      *(&v68 + 1) = v37;
      v69 = v38;
      v70 = v39;
      swift_getOpaqueTypeConformance2();
      v43 = v50;
      sub_23D9D9B14();
      sub_23D95FF4C(v43, v51);
      swift_storeEnumTagMultiPayload();
      sub_23D95FB78();
      sub_23D91F01C(&qword_27E2F5848, &qword_27E2F57C8, &qword_23D9DEF60, MEMORY[0x277CE11B0]);
      sub_23D9D9B14();
      sub_23D95FFBC(v43);
      return (*(v41 + 8))(v40, v42);
    }

    else
    {
      v44 = sub_23D9DA734();
      v45 = v56;
      *v56 = v44;
      *(v45 + 8) = v46;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5800, &qword_23D9DEF90);
      sub_23D95D234(v2, v64, v45 + *(v47 + 44));
      sub_23D91F2DC(v45, v51, &qword_27E2F57C8, &qword_23D9DEF60);
      swift_storeEnumTagMultiPayload();
      sub_23D95FB78();
      sub_23D91F01C(&qword_27E2F5848, &qword_27E2F57C8, &qword_23D9DEF60, MEMORY[0x277CE11B0]);
      sub_23D9D9B14();
      return sub_23D91F344(v45, &qword_27E2F57C8, &qword_23D9DEF60);
    }
  }
}

uint64_t sub_23D95CC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v4 = sub_23D9D8F94();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D9D8FB4();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D9D8FE4();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5850, &qword_23D9DEFA8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - v14;
  v16 = type metadata accessor for AXSUINavigationManager.PSControllerRoute(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D91F2DC(a2, &v33, &qword_27E2F5658, &qword_23D9DEB98);
  if (!*(&v34 + 1))
  {
    return sub_23D91F344(&v33, &qword_27E2F5658, &qword_23D9DEB98);
  }

  v36[0] = v33;
  v36[1] = v34;
  v37 = v35;
  sub_23D960024(v36, &v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5668, &qword_23D9DEBA8);
  v20 = swift_dynamicCast();
  v21 = *(v17 + 56);
  if (v20)
  {
    v21(v15, 0, 1, v16);
    sub_23D95FE64(v15, v19, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v23 = *&v19[*(v16 + 28) + 8];
    v24 = v22;
    if (v23)
    {
      v23 = sub_23D9DA8A4();
    }

    [v22 setTitle_];

    type metadata accessor for AXNavigationSink(0);
    sub_23D95DE44(&unk_27E2F63A0, &qword_23D9DE920, MEMORY[0x277D402D0], v12);
    v27 = v22;
    sub_23D9D8F74();
    sub_23D95E1CC(&qword_27E2F5860, MEMORY[0x277D40250], MEMORY[0x277D40258]);
    sub_23D9D8FD4();

    (*(v29 + 8))(v6, v4);
    (*(v31 + 8))(v12, v32);
    sub_23D95E214(v19, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
  }

  else
  {
    v21(v15, 1, 1, v16);
    sub_23D91F344(v15, &unk_27E2F5850, &qword_23D9DEFA8);
    type metadata accessor for AXNavigationSink(0);
    v26 = sub_23D95DE44(&unk_27E2F63A0, &qword_23D9DE920, MEMORY[0x277D402D0], v12);
    MEMORY[0x28223BE20](v26);
    *(&v28 - 2) = v36;
    sub_23D95F98C();
    sub_23D9D8FA4();
    sub_23D95E1CC(&qword_27E2F6250, MEMORY[0x277D40260], MEMORY[0x277D40268]);
    sub_23D9D8FD4();
    (*(v28 + 8))(v9, v7);
    (*(v31 + 8))(v12, v32);
  }

  return sub_23D960094(v36);
}

uint64_t sub_23D95D234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57D0, &qword_23D9DEF68) - 8;
  MEMORY[0x28223BE20](v31);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - v6;
  v8 = type metadata accessor for AXNavigationSink(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5870, &qword_23D9DEFB8);
  MEMORY[0x28223BE20](v11 - 8);
  v30 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v29 - v14;
  *v15 = sub_23D9D9AB4();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5878, &qword_23D9DEFC0) + 44);
  v29[0] = a1;
  v29[1] = v16;
  sub_23D95C0B0();
  v17 = sub_23D959E74();

  v35 = v17;
  sub_23D95E294(a1, v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXNavigationSink);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_23D95FE64(v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for AXNavigationSink);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5880, &qword_23D9DEFC8);
  sub_23D9D88A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5888, &qword_23D9DEFD0);
  sub_23D91F01C(&qword_27E2F5890, &qword_27E2F5880, &qword_23D9DEFC8, MEMORY[0x277D83980]);
  sub_23D91F01C(&qword_27E2F5898, &qword_27E2F5888, &qword_23D9DEFD0, MEMORY[0x277CDD940]);
  sub_23D95F938();
  sub_23D9DA624();
  KeyPath = swift_getKeyPath();
  v21 = sub_23D95C0B0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5818, &qword_23D9DEF98);
  (*(*(v22 - 8) + 16))(v7, v33, v22);
  v23 = v30;
  v24 = &v7[*(v31 + 44)];
  *v24 = KeyPath;
  v24[1] = v21;
  sub_23D91F2DC(v15, v23, &qword_27E2F5870, &qword_23D9DEFB8);
  v25 = v32;
  sub_23D91F2DC(v7, v32, &qword_27E2F57D0, &qword_23D9DEF68);
  v26 = v34;
  sub_23D91F2DC(v23, v34, &qword_27E2F5870, &qword_23D9DEFB8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58A0, &qword_23D9DEFD8);
  sub_23D91F2DC(v25, v26 + *(v27 + 48), &qword_27E2F57D0, &qword_23D9DEF68);
  sub_23D91F344(v7, &qword_27E2F57D0, &qword_23D9DEF68);
  sub_23D91F344(v15, &qword_27E2F5870, &qword_23D9DEFB8);
  sub_23D91F344(v25, &qword_27E2F57D0, &qword_23D9DEF68);
  return sub_23D91F344(v23, &qword_27E2F5870, &qword_23D9DEFB8);
}

uint64_t sub_23D95D6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXNavigationSink(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23D95E294(a2, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXNavigationSink);
  sub_23D95EBC0(a1, v17);
  sub_23D9DA9B4();
  v7 = sub_23D9DA9A4();
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v7;
  *(v9 + 24) = v10;
  sub_23D95FE64(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AXNavigationSink);
  v11 = v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = v17[1];
  *v11 = v17[0];
  *(v11 + 16) = v12;
  *(v11 + 32) = v18;
  v13 = sub_23D9DA9A4();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  sub_23D9DA594();
  sub_23D9D9A04();
  sub_23D95EBC0(a1, v17);
  sub_23D95F98C();
  return sub_23D9D95D4();
}

uint64_t sub_23D95D8FC@<X0>(void *a1@<X3>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v37 = sub_23D9D88A4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58A8, &qword_23D9DEFE0);
  MEMORY[0x28223BE20](v34);
  v35 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  sub_23D95C0B0();
  sub_23D95A418(&v38);

  v14 = v39;
  if (v39)
  {
    v15 = v40;
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    (*(v15 + 24))(v14, v15);
    sub_23D960094(&v38);
    v16 = *(v3 + 56);
    v16(v13, 0, 1, v37);
  }

  else
  {
    sub_23D91F344(&v38, &qword_27E2F5658, &qword_23D9DEB98);
    v16 = *(v3 + 56);
    v16(v13, 1, 1, v37);
  }

  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 24))(v17, v18);
  v19 = v37;
  v16(v10, 0, 1, v37);
  v20 = v35;
  v21 = *(v34 + 12);
  sub_23D91F2DC(v13, v35, &unk_27E2F6A30, &qword_23D9E0BC0);
  sub_23D91F2DC(v10, v20 + v21, &unk_27E2F6A30, &qword_23D9E0BC0);
  v22 = *(v3 + 48);
  if (v22(v20, 1, v19) != 1)
  {
    v34 = v13;
    v25 = v20;
    v26 = v20;
    v27 = v33;
    sub_23D91F2DC(v25, v33, &unk_27E2F6A30, &qword_23D9E0BC0);
    if (v22(v26 + v21, 1, v37) != 1)
    {
      v28 = v32;
      v29 = v37;
      (*(v3 + 32))(v32, v26 + v21, v37);
      sub_23D95E1CC(&unk_27E2F58B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v24 = sub_23D9DA894();
      v30 = *(v3 + 8);
      v30(v28, v29);
      sub_23D91F344(v10, &unk_27E2F6A30, &qword_23D9E0BC0);
      sub_23D91F344(v34, &unk_27E2F6A30, &qword_23D9E0BC0);
      v30(v27, v29);
      result = sub_23D91F344(v26, &unk_27E2F6A30, &qword_23D9E0BC0);
      goto LABEL_11;
    }

    sub_23D91F344(v10, &unk_27E2F6A30, &qword_23D9E0BC0);
    sub_23D91F344(v34, &unk_27E2F6A30, &qword_23D9E0BC0);
    (*(v3 + 8))(v27, v37);
    v20 = v26;
    goto LABEL_9;
  }

  sub_23D91F344(v10, &unk_27E2F6A30, &qword_23D9E0BC0);
  sub_23D91F344(v13, &unk_27E2F6A30, &qword_23D9E0BC0);
  if (v22(v20 + v21, 1, v37) != 1)
  {
LABEL_9:
    result = sub_23D91F344(v20, &qword_27E2F58A8, &qword_23D9DEFE0);
    v24 = 0;
    goto LABEL_11;
  }

  result = sub_23D91F344(v20, &unk_27E2F6A30, &qword_23D9E0BC0);
  v24 = 1;
LABEL_11:
  *v36 = v24 & 1;
  return result;
}

uint64_t sub_23D95DE44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_23D9D9954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_23D91F2DC(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_23D9DACD4();
    v19 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_23D95E0F4()
{

  return swift_deallocObject();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23D95E1CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D95E214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23D95E294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_23D95E2FC(uint64_t a1, uint64_t a2)
{
  v69 = sub_23D9D88A4();
  v62 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v63 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = &v55 - v6;
  MEMORY[0x28223BE20](v7);
  v67 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D8, &qword_23D9DEFF8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v68 = &v55 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v61 = a2;
    v15 = 0;
    v58 = a1;
    v16 = *(a1 + 64);
    v56 = a1 + 64;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v57 = v62 + 16;
    v65 = (v62 + 32);
    v59 = v11;
    v60 = (v62 + 8);
    if ((v18 & v16) != 0)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v19));
        v22 = (v19 - 1) & v19;
        v23 = v21 | (v15 << 6);
LABEL_15:
        v28 = v58;
        v29 = v62;
        v30 = v67;
        v31 = v69;
        (*(v62 + 16))(v67, *(v58 + 48) + *(v62 + 72) * v23, v69, v13);
        sub_23D95EBC0(*(v28 + 56) + 40 * v23, &v73);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D0, &qword_23D9DEFF0);
        v33 = &v11[*(v32 + 48)];
        (*(v29 + 32))(v11, v30, v31);
        v34 = v74;
        *v33 = v73;
        *(v33 + 1) = v34;
        *(v33 + 4) = v75;
        (*(*(v32 - 8) + 56))(v11, 0, 1, v32);
        v25 = v15;
LABEL_16:
        v35 = v68;
        sub_23D92A2BC(v11, v68, &qword_27E2F58D8, &qword_23D9DEFF8);
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D0, &qword_23D9DEFF0);
        if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
        {
          break;
        }

        v66 = v22;
        v37 = v69;
        v38 = (v68 + *(v36 + 48));
        v39 = v64;
        (*v65)(v64);
        v40 = v38[1];
        v73 = *v38;
        v74 = v40;
        v75 = *(v38 + 4);
        v41 = v61;
        v42 = sub_23D95EAEC(v39);
        v44 = v43;
        v45 = *v60;
        (*v60)(v39, v37);
        if ((v44 & 1) == 0)
        {
          sub_23D960094(&v73);
          return;
        }

        v46 = v20;
        v47 = v69;
        sub_23D95EBC0(*(v41 + 56) + 40 * v42, v70);
        v49 = v71;
        v48 = v72;
        __swift_project_boxed_opaque_existential_1(v70, v71);
        v50 = v67;
        (*(v48 + 24))(v49, v48);
        v51 = *(&v74 + 1);
        v52 = v75;
        __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
        v53 = v63;
        (*(v52 + 24))(v51, v52);
        LOBYTE(v51) = sub_23D9D8884();
        v45(v53, v47);
        v45(v50, v47);
        sub_23D960094(v70);
        sub_23D960094(&v73);
        if ((v51 & 1) == 0)
        {
          return;
        }

        v15 = v25;
        v11 = v59;
        v20 = v46;
        v19 = v66;
        if (!v66)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if (v20 <= v15 + 1)
      {
        v24 = v15 + 1;
      }

      else
      {
        v24 = v20;
      }

      v25 = v24 - 1;
      while (1)
      {
        v26 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v26 >= v20)
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D0, &qword_23D9DEFF0);
          (*(*(v54 - 8) + 56))(v11, 1, 1, v54);
          v22 = 0;
          goto LABEL_16;
        }

        v27 = *(v56 + 8 * v26);
        ++v15;
        if (v27)
        {
          v22 = (v27 - 1) & v27;
          v23 = __clz(__rbit64(v27)) | (v26 << 6);
          v15 = v26;
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_23D95E898(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_23D960590(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
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
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23D95E9D4(uint64_t a1)
{
  sub_23D9D8954();
  v2 = MEMORY[0x277CC9640];
  sub_23D95E1CC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  v3 = sub_23D9DA874();
  return sub_23D9606D0(a1, v3, MEMORY[0x277CC9640], &qword_27E2F4730, v2, MEMORY[0x277CC9658]);
}

unint64_t sub_23D95EAA8(uint64_t a1)
{
  v2 = sub_23D9DAE04();

  return sub_23D960608(a1, v2);
}

unint64_t sub_23D95EAEC(uint64_t a1)
{
  sub_23D9D88A4();
  v2 = MEMORY[0x277CC95F0];
  sub_23D95E1CC(&qword_27E2F5790, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_23D9DA874();
  return sub_23D9606D0(a1, v3, MEMORY[0x277CC95F0], &unk_27E2F58B0, v2, MEMORY[0x277CC9610]);
}

uint64_t sub_23D95EBF8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23D95ECAC(uint64_t a1)
{
  result = sub_23D9D88A4();
  if (v2 <= 0x3F)
  {
    result = sub_23D9D8A54();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23D95EE44(uint64_t *a1)
{
  type metadata accessor for AXNavigationSink(255);
  sub_23D9D96C4();
  sub_23D95E1CC(&qword_27E2F63D0, type metadata accessor for AXNavigationSink, &unk_23D9DEED4);
  return swift_getWitnessTable();
}

void sub_23D95EF10(uint64_t a1)
{
  sub_23D9D88A4();
  if (v1 <= 0x3F)
  {
    sub_23D95EFB4();
    if (v2 <= 0x3F)
    {
      sub_23D95F008();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23D95EFB4()
{
  result = qword_27E2F56A8;
  if (!qword_27E2F56A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5710, &qword_23D9DEC50);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27E2F56A8);
  }

  return result;
}

void sub_23D95F008()
{
  if (!qword_27E2F5718)
  {
    v0 = sub_23D9DAD74();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F5718);
    }
  }
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

uint64_t sub_23D95F06C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23D95F0B4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D9D88A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23D9D88A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23D95F2A8(uint64_t a1)
{
  result = sub_23D9D88A4();
  if (v2 <= 0x3F)
  {
    result = sub_23D95F334();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23D95F334()
{
  result = qword_27E2F6AD0;
  if (!qword_27E2F6AD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E2F6AD0);
  }

  return result;
}

uint64_t sub_23D95F398(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5740, &qword_23D9DEC90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5748, &qword_23D9DEC98);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23D95F4E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5740, &qword_23D9DEC90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5748, &qword_23D9DEC98);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23D95F624(uint64_t a1)
{
  sub_23D95F7CC(319, &qword_27E2F5768, type metadata accessor for AXSUINavigationManager, MEMORY[0x277CE10B0]);
  if (v1 <= 0x3F)
  {
    sub_23D95F768(319);
    if (v2 <= 0x3F)
    {
      sub_23D95F7CC(319, &qword_27E2F5780, MEMORY[0x277D402D0], MEMORY[0x277CDF470]);
      if (v3 <= 0x3F)
      {
        sub_23D95F7CC(319, &qword_27E2F5788, MEMORY[0x277D40290], MEMORY[0x277CDF470]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23D95F768(uint64_t a1)
{
  if (!qword_27E2F5770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5778, qword_23D9E1970);
    v1 = sub_23D9D9484();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2F5770);
    }
  }
}

void sub_23D95F7CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_23D95F894(uint64_t a1)
{
  result = sub_23D95E1CC(&unk_27E2F5640, type metadata accessor for AXSUINavigationManager.SimpleRoute, &unk_23D9DEF40);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23D95F908(uint64_t a1)
{
  *(a1 + 8) = sub_23D95F938();
  result = sub_23D95F98C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23D95F938()
{
  result = qword_27E2F5798;
  if (!qword_27E2F5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5798);
  }

  return result;
}

unint64_t sub_23D95F98C()
{
  result = qword_27E2F57A0;
  if (!qword_27E2F57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F57A0);
  }

  return result;
}

uint64_t sub_23D95F9FC(uint64_t a1)
{
  result = sub_23D95E1CC(&qword_27E2F5650, type metadata accessor for AXSUINavigationManager.PSControllerRoute, &unk_23D9DEF24);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23D95FA70(uint64_t a1)
{
  *(a1 + 8) = sub_23D95E1CC(&qword_27E2F57A8, type metadata accessor for AXSUINavigationManager.PSControllerRoute, &unk_23D9DEE80);
  result = sub_23D95E1CC(&qword_27E2F57B0, type metadata accessor for AXSUINavigationManager.PSControllerRoute, &unk_23D9DEE30);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23D95FAF4(uint64_t a1)
{
  *(a1 + 8) = sub_23D95E1CC(&qword_27E2F57B8, type metadata accessor for AXSUINavigationManager.SimpleRoute, &unk_23D9DED10);
  result = sub_23D95E1CC(&qword_27E2F57C0, type metadata accessor for AXSUINavigationManager.SimpleRoute, &unk_23D9DECC0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23D95FB78()
{
  result = qword_27E2F5808;
  if (!qword_27E2F5808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F57F0, &qword_23D9DEF88);
    sub_23D91F01C(&qword_27E2F5810, &qword_27E2F5818, &qword_23D9DEF98, MEMORY[0x277CE04B8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F57D0, &qword_23D9DEF68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5658, &qword_23D9DEB98);
    sub_23D95FCA0();
    sub_23D95FD84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5808);
  }

  return result;
}

unint64_t sub_23D95FCA0()
{
  result = qword_27E2F5820;
  if (!qword_27E2F5820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F57D0, &qword_23D9DEF68);
    sub_23D91F01C(&qword_27E2F5810, &qword_27E2F5818, &qword_23D9DEF98, MEMORY[0x277CE04B8]);
    sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5820);
  }

  return result;
}

unint64_t sub_23D95FD84()
{
  result = qword_27E2F5838;
  if (!qword_27E2F5838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5658, &qword_23D9DEB98);
    sub_23D95FE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5838);
  }

  return result;
}

unint64_t sub_23D95FE08()
{
  result = qword_27E2F5840;
  if (!qword_27E2F5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5840);
  }

  return result;
}

uint64_t sub_23D95FE64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D95FECC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXNavigationSink(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D95CC3C(a1, a2, v6);
}

uint64_t sub_23D95FF4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57F0, &qword_23D9DEF88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D95FFBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57F0, &qword_23D9DEF88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D960024(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for AXNavigationSink(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  j__swift_release(*(v2 + 16));
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F63A0, &qword_23D9DE920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23D9D8FE4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5630, qword_23D9DD310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D9D8FC4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23D960270(uint64_t a1)
{
  v3 = *(type metadata accessor for AXNavigationSink(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D95D6BC(a1, v4);
}

uint64_t sub_23D9602F0()
{
  v1 = type metadata accessor for AXNavigationSink(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  j__swift_release(*(v0 + v2 + 16));
  v5 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F63A0, &qword_23D9DE920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D9D8FE4();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5630, qword_23D9DD310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D9D8FC4();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_23D9604B8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for AXNavigationSink(0) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23D95D8FC(v4, a1);
}

uint64_t sub_23D960558()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_23D960590(uint64_t a1, uint64_t a2)
{
  sub_23D9DB034();
  sub_23D9DA914();
  v4 = sub_23D9DB064();

  return sub_23D960870(a1, a2, v4);
}

unint64_t sub_23D960608(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23D964E0C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEF4110](v9, a1);
      sub_23D939DE0(v9);
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

unint64_t sub_23D9606D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_23D95E1CC(v24, v25, v26);
      v20 = sub_23D9DA894();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_23D960870(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23D9DAFC4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23D960928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23D95E9D4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23D963AAC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_23D9D8954();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_23D9D8DA4();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_23D9621C8(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_23D9D8DA4();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_23D960AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23D95E9D4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23D963E00();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_23D9D8954();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_23D96250C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = sub_23D9D8954();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_23D960C60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23D95EAEC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23D9640C8();
      v9 = v15;
    }

    v10 = *(v9 + 48);
    v11 = sub_23D9D88A4();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56) + 40 * v7;
    v13 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = *(v12 + 32);
    sub_23D96280C(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23D960D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_23D960590(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23D9644C4();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_23D9D8DA4();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_23D962CE0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_23D9D8DA4();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_23D960EBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_23D9D8DA4();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D9D8954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5908, &qword_23D9DF018);
  v47 = v4;
  result = sub_23D9DAF64();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_23D95E1CC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
      result = sub_23D9DA874();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_23D961364(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23D9D8954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58C8, &qword_23D9DEFE8);
  v45 = v4;
  result = sub_23D9DAF64();
  v50 = result;
  if (*(v10 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v10 + 64);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = v50 + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = *(v10 + 48);
      v47 = *(v43 + 72);
      v27 = v47 * (v23 | (v12 << 6));
      if (v45)
      {
        v28 = *v46;
        v29 = v44;
        (*v46)(v44, v26 + v27, v5);
      }

      else
      {
        v28 = *v41;
        v29 = v44;
        (*v41)(v44, v26 + v27, v5);
      }

      v28(v49, *(v10 + 56) + v27, v5);
      v30 = v50;
      sub_23D95E1CC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
      result = sub_23D9DA874();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = v50;
      v21 = v47 * v19;
      v22 = *v46;
      (*v46)((*(v50 + 48) + v47 * v19), v29, v5);
      result = (v22)(*(v20 + 56) + v21, v49, v5);
      ++*(v20 + 16);
      v10 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
  return result;
}

uint64_t sub_23D9617B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23D9D88A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5928, &qword_23D9DF038);
  v45 = v4;
  result = sub_23D9DAF64();
  v11 = result;
  if (*(v9 + 16))
  {
    v48 = v8;
    v49 = v5;
    v41 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v42 = (v6 + 16);
    v43 = v6;
    v46 = (v6 + 32);
    v18 = result + 64;
    v44 = v9;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v26 = v23 | (v12 << 6);
      v27 = *(v9 + 48);
      v47 = *(v6 + 72);
      v28 = v27 + v47 * v26;
      if (v45)
      {
        (*v46)(v48, v28, v49);
        v29 = *(v9 + 56) + 40 * v26;
        v30 = *(v29 + 32);
        v31 = *(v29 + 16);
        v50 = *v29;
        v51 = v31;
        v52 = v30;
      }

      else
      {
        (*v42)(v48, v28, v49);
        sub_23D95EBC0(*(v9 + 56) + 40 * v26, &v50);
      }

      sub_23D95E1CC(&qword_27E2F5790, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_23D9DA874();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v6 = v43;
        v9 = v44;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v6 = v43;
      v9 = v44;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v46)(*(v11 + 48) + v47 * v19, v48, v49);
      v20 = *(v11 + 56) + 40 * v19;
      v21 = v50;
      v22 = v51;
      *(v20 + 32) = v52;
      *v20 = v21;
      *(v20 + 16) = v22;
      ++*(v11 + 16);
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v16 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_23D961BA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5920, &qword_23D9DF030);
  v33 = v4;
  result = sub_23D9DAF64();
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
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_23D9DB034();
      sub_23D9DA914();
      result = sub_23D9DB064();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_23D961E48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_23D9D8DA4();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5910, &unk_23D9DF020);
  v42 = v4;
  result = sub_23D9DAF64();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_23D9DB034();
      sub_23D9DA914();
      result = sub_23D9DB064();
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
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
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

void sub_23D9621C8(int64_t a1, uint64_t a2)
{
  v4 = sub_23D9D8954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_23D9DADF4();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_23D95E1CC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
      v21 = sub_23D9DA874();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(sub_23D9D8DA4() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_23D96250C(int64_t a1, uint64_t a2)
{
  v4 = sub_23D9D8954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_23D9DADF4();
    v13 = v11;
    v31 = (v12 + 1) & v11;
    v32 = a2 + 64;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = *(v14 + 56);
    v29 = (v14 - 8);
    v30 = v15;
    do
    {
      v17 = v16 * v10;
      v18 = v13;
      v19 = v14;
      v30(v7, *(a2 + 48) + v16 * v10, v4);
      sub_23D95E1CC(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
      v20 = sub_23D9DA874();
      (*v29)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v31)
      {
        if (v21 >= v31 && a1 >= v21)
        {
LABEL_15:
          v24 = v16 * a1;
          if (v16 * a1 < v17 || *(a2 + 48) + v16 * a1 >= (*(a2 + 48) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v24 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v24 < v17 || *(a2 + 56) + v24 >= (*(a2 + 56) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v14 = v19;
            v13 = v18;
          }

          else
          {
            a1 = v10;
            v25 = v24 == v17;
            v14 = v19;
            v13 = v18;
            if (!v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v31 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v8 = v32;
    }

    while (((*(v32 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_23D96280C(int64_t a1, uint64_t a2)
{
  v40 = sub_23D9D88A4();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v41 = v5;
    v11 = sub_23D9DADF4();
    v12 = v40;
    v5 = v41;
    v13 = v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v37 = (v11 + 1) & v10;
    v38 = v15;
    v16 = *(v14 + 56);
    v35 = (v14 - 8);
    v36 = a2 + 64;
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v39;
      v20 = v13;
      v21 = v14;
      v38(v39, *(v5 + 48) + v16 * v9, v12);
      sub_23D95E1CC(&qword_27E2F5790, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_23D9DA874();
      (*v35)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v37)
      {
        if (v23 >= v37 && a1 >= v23)
        {
LABEL_15:
          v5 = v41;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v41;
            v16 = v17;
            v13 = v20;
            v7 = v36;
          }

          else
          {
            v7 = v36;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v41;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = v26 + 40 * a1;
          v28 = (v26 + 40 * v9);
          if (a1 != v9 || v27 >= v28 + 40)
          {
            v29 = *v28;
            v30 = v28[1];
            *(v27 + 32) = *(v28 + 4);
            *v27 = v29;
            *(v27 + 16) = v30;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v37 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v36;
      v16 = v17;
      v5 = v41;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v5 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v33;
    ++*(v5 + 36);
  }
}

uint64_t sub_23D962B30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23D9DADF4() + 1) & ~v5;
    do
    {
      sub_23D9DB034();

      sub_23D9DA914();
      v9 = sub_23D9DB064();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23D962CE0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23D9DADF4() + 1) & ~v5;
    while (1)
    {
      sub_23D9DB034();

      sub_23D9DA914();
      v9 = sub_23D9DB064();

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
      v15 = *(*(sub_23D9D8DA4() - 8) + 72);
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

uint64_t sub_23D962ECC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23D9D8954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23D95E9D4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23D963AAC();
      goto LABEL_7;
    }

    sub_23D960EBC(v17, a3 & 1);
    v28 = sub_23D95E9D4(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_23D963760(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_23D9DAFF4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_23D9D8DA4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_23D9630D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23D9D8954();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_23D95E9D4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_23D963E00();
      goto LABEL_9;
    }

    sub_23D961364(v16, a3 & 1);
    v19 = sub_23D95E9D4(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_23D9DAFF4();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return sub_23D963854(v13, v10, a1, v21);
  }
}

uint64_t sub_23D9632B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23D9D88A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23D95EAEC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23D9640C8();
      goto LABEL_7;
    }

    sub_23D9617B0(v17, a3 & 1);
    v23 = sub_23D95EAEC(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_23D963930(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_23D9DAFF4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 40 * v14;

  return sub_23D964E68(a1, v21);
}

unint64_t sub_23D963484(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_23D960590(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_23D961BA4(v16, a3 & 1);
      result = sub_23D960590(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_23D9DAFF4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_23D96435C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 4 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_23D9635E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_23D960590(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_23D9644C4();
      goto LABEL_7;
    }

    sub_23D961E48(v15, a4 & 1);
    v26 = sub_23D960590(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23D9DAFF4();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_23D9D8DA4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_23D9639FC(v12, a2, a3, a1, v18);
}

uint64_t sub_23D963760(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23D9D8954();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_23D9D8DA4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_23D963854(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23D9D8954();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_23D963930(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23D9D88A4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 40 * a1;
  *(v11 + 32) = *(a3 + 32);
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_23D9639FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_23D9D8DA4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

char *sub_23D963AAC()
{
  v1 = v0;
  v41 = sub_23D9D8DA4();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_23D9D8954();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5908, &qword_23D9DF018);
  v4 = *v0;
  v5 = sub_23D9DAF54();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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

char *sub_23D963E00()
{
  v1 = v0;
  v34 = sub_23D9D8954();
  v38 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v35 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58C8, &qword_23D9DEFE8);
  v5 = *v0;
  v6 = sub_23D9DAF54();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        result = (v28)(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_23D9640C8()
{
  v1 = v0;
  v32 = sub_23D9D88A4();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5928, &qword_23D9DF038);
  v3 = *v0;
  v4 = sub_23D9DAF54();
  v5 = v4;
  if (*(v3 + 16))
  {
    v28 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v35 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v34;
        v20 = *(v34 + 72) * v18;
        v21 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v3 + 48) + v20, v32);
        v18 *= 40;
        sub_23D95EBC0(*(v3 + 56) + v18, v36);
        v23 = v33;
        result = (*(v19 + 32))(*(v33 + 48) + v20, v21, v22);
        v24 = *(v23 + 56) + v18;
        v25 = v36[0];
        v26 = v36[1];
        *(v24 + 32) = v37;
        *v24 = v25;
        *(v24 + 16) = v26;
        v13 = v35;
      }

      while (v35);
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

        v1 = v28;
        v5 = v33;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_23D96435C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5920, &qword_23D9DF030);
  v2 = *v0;
  v3 = sub_23D9DAF54();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

char *sub_23D9644C4()
{
  v1 = v0;
  v35 = sub_23D9D8DA4();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5910, &unk_23D9DF020);
  v3 = *v0;
  v4 = sub_23D9DAF54();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_23D964744(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23D964810(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23D964764(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23D964930(a1, a2, a3, *v3, &qword_27E2F4D18, &qword_23D9DD420, MEMORY[0x277CE6790]);
  *v3 = result;
  return result;
}

char *sub_23D9647A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23D964B0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23D9647C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23D964C18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23D964810(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F58E0, &unk_23D9DF000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_23D964930(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *sub_23D964B0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F58F0, &qword_23D9DF010);
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

char *sub_23D964C18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D10, &qword_23D9DD418);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_23D964D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_23D9DA4D4();
}

uint64_t sub_23D964DE4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_23D964EA0()
{
  result = qword_27E2F5930;
  if (!qword_27E2F5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5930);
  }

  return result;
}

unint64_t sub_23D964F08()
{
  result = qword_27E2F5938;
  if (!qword_27E2F5938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5940, &qword_23D9DF058);
    sub_23D95FB78();
    sub_23D91F01C(&qword_27E2F5848, &qword_27E2F57C8, &qword_23D9DEF60, MEMORY[0x277CE11B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5938);
  }

  return result;
}

unint64_t sub_23D96500C()
{
  result = qword_27E2F5950;
  if (!qword_27E2F5950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5958, &qword_23D9DF060);
    sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5950);
  }

  return result;
}

uint64_t _s23AccessibilitySettingsUI20CategorySymbolSourceV17accessibilityName3forS2S_tFZ_0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_23D9DAE64();

  MEMORY[0x23EEF3C30](a1, a2);
  v5._countAndFlagsBits = 0xD000000000000015;
  v5._object = 0x800000023D9E4390;
  countAndFlagsBits = AXLSCSUILocString(_:)(v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t getEnumTagSinglePayload for CategorySymbolSource(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CategorySymbolSource(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23D9652D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_23D965410(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_23D965550(uint64_t a1)
{
  sub_23D934258(319);
  if (v1 <= 0x3F)
  {
    sub_23D96568C(319, &qword_27E2F48D8, MEMORY[0x277CDF3E8]);
    if (v2 <= 0x3F)
    {
      sub_23D96568C(319, &qword_27E2F4610, MEMORY[0x277CDD840]);
      if (v3 <= 0x3F)
      {
        sub_23D9490E0(319, &qword_27E2F4CB0, MEMORY[0x277CE1200]);
        if (v4 <= 0x3F)
        {
          sub_23D9490E0(319, &qword_27E2F46A0, MEMORY[0x277CE10B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23D96568C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23D9D9484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23D9656F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23D9657C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23D965894(uint64_t a1)
{
  sub_23D94DF64(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23D96592C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  sub_23D91F2DC(v1 + *(CustomCategoryView + 20), v9, &qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9464();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D965B34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  sub_23D91F2DC(v1 + *(CustomCategoryView + 24), v9, &qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9574();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D965D3C()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    MEMORY[0x28223BE20](v1);
    v5[2] = v0;
    v2 = sub_23D92BA6C(sub_23D970DC8, v5, v6);

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v3 = (v6 ^ 1) & v2;
    if ((v6 ^ 1) & 1) == 0 && (v2)
    {
      v3 = sub_23D966054() ^ 1;
    }

    return v3 & 1;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D965EF0(id *a1, uint64_t *a2)
{
  v3 = [*a1 name];
  v4 = sub_23D9DA8B4();
  v6 = v5;

  if (*a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v4 == v10 && v6 == v11)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_23D9DAFC4();
    }

    return v8 & 1;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D966054()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v1 = [v7 localizedName];

    v2 = sub_23D9DA8B4();
    v4 = v3;

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v2 == v7 && v4 == v8)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_23D9DAFC4();
    }

    return v5 & 1;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D96620C()
{
  v1 = sub_23D9D8814();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    sub_23D9D8804();
    sub_23D91B650();
    v5 = sub_23D9DAD84();
    v7 = v6;
    (*(v2 + 8))(v4, v1);

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    return v8 == 0;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D9663E0@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  v3 = CustomCategoryView - 8;
  v4 = *(CustomCategoryView - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](CustomCategoryView);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5988, &qword_23D9DF1E8);
  MEMORY[0x28223BE20](v35);
  v8 = &v31 - v7;
  v38 = v1;
  sub_23D9D9D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F59B8, &unk_23D9DF208);
  sub_23D91F01C(&qword_27E2F59C0, &qword_27E2F59B8, &unk_23D9DF208, MEMORY[0x277CE11A0]);
  sub_23D9D9424();
  v9 = *(v3 + 40);
  v10 = v1;
  v34 = v1;
  v11 = (v1 + v9);
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v40) = v12;
  v41 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3B4();
  v14 = v39;
  sub_23D972490(v10, v6, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v33 = *(v4 + 80);
  v15 = (v33 + 16) & ~v33;
  v16 = swift_allocObject();
  v17 = v6;
  sub_23D972618(v6, v16 + v15, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F59C8, &qword_23D9DF218) + 36)];
  *v18 = sub_23D96DD78;
  *(v18 + 1) = v16;
  v18[16] = (v14 & 1) == 0;
  v32 = objc_opt_self();
  v19 = [v32 defaultCenter];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F59D0, &qword_23D9DF220);
  sub_23D9DAD54();

  v21 = v34;
  sub_23D972490(v34, v17, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v22 = swift_allocObject();
  sub_23D972618(v17, v22 + v15, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v23 = &v8[*(v20 + 56)];
  *v23 = sub_23D96DF9C;
  v23[1] = v22;
  v24 = [v32 defaultCenter];
  v25 = v35;
  sub_23D9DAD54();

  sub_23D972490(v21, v17, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v26 = swift_allocObject();
  sub_23D972618(v17, v26 + v15, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v27 = &v8[*(v25 + 56)];
  *v27 = sub_23D96DFA4;
  v27[1] = v26;
  v37 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5990, &qword_23D9DF1F0);
  sub_23D91F01C(&qword_27E2F5998, &qword_27E2F5988, &qword_23D9DF1E8, MEMORY[0x277CDDB58]);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F59A0, &qword_23D9DF1F8);
  v29 = sub_23D91F01C(&qword_27E2F59A8, &qword_27E2F59A0, &qword_23D9DF1F8, MEMORY[0x277CDD7A0]);
  v40 = v28;
  v41 = v29;
  swift_getOpaqueTypeConformance2();
  sub_23D9DA1A4();
  return sub_23D91F344(v8, &qword_27E2F5988, &qword_23D9DF1E8);
}

uint64_t sub_23D9668BC@<X0>(uint64_t (**a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23D9D9AB4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B10, &qword_23D9DF548);
  return sub_23D966914(a1, a2 + *(v4 + 44));
}

uint64_t sub_23D966914@<X0>(uint64_t (**a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v183 = a1;
  v169 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B18, &qword_23D9DF550);
  v3 = *(v2 - 8);
  v181 = v2 - 8;
  v168 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v182 = v151 - v4;
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x800000023D9E43D0;
  v185 = AXSUILocString(_:)(v5);
  sub_23D91B650();
  v6 = sub_23D9D9F04();
  v8 = v7;
  v10 = v9;
  sub_23D9D9DB4();
  v11 = sub_23D9D9EE4();
  v13 = v12;
  v15 = v14;

  sub_23D9274BC(v6, v8, v10 & 1);

  LODWORD(v185._countAndFlagsBits) = sub_23D9D9C44();
  v16 = sub_23D9D9EC4();
  v18 = v17;
  v20 = v19;
  sub_23D9274BC(v11, v13, v15 & 1);

  v21 = sub_23D9D9ED4();
  v23 = v22;
  LOBYTE(v11) = v24;
  v26 = v25;
  sub_23D9274BC(v16, v18, v20 & 1);

  v185._countAndFlagsBits = v21;
  v185._object = v23;
  LOBYTE(v18) = v11 & 1;
  v186 = v11 & 1;
  v187 = v26;
  v188 = 256;
  v27 = sub_23D9D9A84();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D9D9A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B20, &qword_23D9DF558);
  sub_23D970E48(&qword_27E2F5B28, &qword_27E2F5B20, &qword_23D9DF558);
  v31 = v182;
  sub_23D9DA104();
  (*(v28 + 8))(v30, v27);
  sub_23D9274BC(v21, v23, v18);

  LOBYTE(v30) = sub_23D9D9D64();
  sub_23D9D93F4();
  v32 = v31 + *(v181 + 44);
  *v32 = v30;
  *(v32 + 8) = v33;
  *(v32 + 16) = v34;
  *(v32 + 24) = v35;
  *(v32 + 32) = v36;
  *(v32 + 40) = 0;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B30, &unk_23D9DF560);
  v178 = *(v181 - 8);
  v37 = *(v178 + 64);
  MEMORY[0x28223BE20](v181);
  v180 = v151 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v177 = v151 - v39;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4278, &qword_23D9DBEB8);
  MEMORY[0x28223BE20](v176);
  v179 = v151 - v40;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5188, &qword_23D9DDC20);
  v41 = *(v175 - 1);
  MEMORY[0x28223BE20](v175);
  v43 = v151 - v42;
  v44 = type metadata accessor for SymbolPlatter(0);
  MEMORY[0x28223BE20](v44);
  v46 = (v151 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = *v183;
  if (*v183)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v167 = v47;

    object = v185._object;
    *v46 = v185._countAndFlagsBits;
    v46[1] = object;
    v185._countAndFlagsBits = 0x404C000000000000;
    v49 = sub_23D94B5F0();
    sub_23D9D94D4();
    v185._countAndFlagsBits = 0x4057000000000000;
    sub_23D9D94D4();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5180, &qword_23D9DDF50);
    v170 = v151;
    v174 = *(*(v50 - 8) + 64);
    MEMORY[0x28223BE20](v50);
    v52 = v151 - v51;
    v53 = *MEMORY[0x277CDF990];
    v54 = sub_23D9D9664();
    v55 = *(v54 - 8);
    v172 = *(v55 + 104);
    v171 = (v55 + 104);
    v172(v52, v53, v54);
    v56 = sub_23D96E134(&qword_27E2F5198, MEMORY[0x277CDFA20], MEMORY[0x277CDFA40]);
    v173 = v54;
    if (sub_23D9DA894())
    {
      v165 = v56;
      v166 = v49;
      v155 = v37;
      sub_23D96E134(&qword_27E2F51A0, type metadata accessor for SymbolPlatter, &unk_23D9DF140);
      v57 = sub_23D91F01C(&qword_27E2F51A8, &qword_27E2F5180, &qword_23D9DDF50, MEMORY[0x277D84470]);
      v154 = v50;
      v153 = v57;
      sub_23D9DA044();
      sub_23D91F344(v52, &qword_27E2F5180, &qword_23D9DDF50);
      sub_23D970EB8(v46, type metadata accessor for SymbolPlatter);
      v58 = sub_23D9D9D54();
      v59 = v179;
      (*(v41 + 32))(v179, v43, v175);
      v60 = v59 + *(v176 + 9);
      *v60 = v58;
      *(v60 + 8) = 0u;
      *(v60 + 24) = 0u;
      *(v60 + 40) = 1;
      CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
      v175 = v151;
      v62 = *(CustomCategoryView - 8);
      v63 = *(v62 + 64);
      MEMORY[0x28223BE20](CustomCategoryView - 8);
      sub_23D972490(v183, v151 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechCreateCustomCategoryView);
      v161 = sub_23D9DA9B4();
      v64 = sub_23D9DA9A4();
      v65 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v162 = *(v62 + 80);
      v66 = swift_allocObject();
      v67 = MEMORY[0x277D85700];
      *(v66 + 16) = v64;
      *(v66 + 24) = v67;
      v163 = v65;
      sub_23D972618(v151 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0), v66 + v65, type metadata accessor for LiveSpeechCreateCustomCategoryView);
      v68 = sub_23D9DA9F4();
      v69 = *(v68 - 8);
      MEMORY[0x28223BE20](v68);
      v176 = v70;
      v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
      v72 = v151 - v71;
      sub_23D9DA9C4();
      isPlatformVersionAtLeast = __isPlatformVersionAtLeast(2, 26, 4, 0);
      v170 = v68;
      v164 = v69;
      if (isPlatformVersionAtLeast)
      {
        v158 = sub_23D9D9614();
        v159 = v151;
        v157 = *(v158 - 1);
        MEMORY[0x28223BE20](v158);
        v152 = v151 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
        v185._countAndFlagsBits = 0;
        v185._object = 0xE000000000000000;
        sub_23D9DAE64();

        v185._countAndFlagsBits = 0xD00000000000004DLL;
        v185._object = 0x800000023D9E4400;
        v184 = 122;
        v74 = sub_23D9DAF94();
        MEMORY[0x23EEF3C30](v74);

        v156 = v63;
        v76 = MEMORY[0x28223BE20](v75);
        (*(v69 + 16))(v151 - v71, v72, v68, v76);
        v77 = v152;
        sub_23D9D9604();
        (*(v69 + 8))(v72, v68);
        v63 = v156;
        v78 = v177;
        sub_23D92A2BC(v179, v177, &qword_27E2F4278, &qword_23D9DBEB8);
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4280, &qword_23D9DBEC0);
        (*(v157 + 4))(v78 + *(v79 + 36), v77, v158);
      }

      else
      {
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4288, &qword_23D9DBEC8);
        v78 = v177;
        v81 = (v177 + *(v80 + 36));
        v82 = sub_23D9D9584();
        (*(v69 + 32))(&v81[*(v82 + 20)], v151 - v71, v68);
        *v81 = &unk_23D9DF578;
        *(v81 + 1) = v66;
        sub_23D92A2BC(v59, v78, &qword_27E2F4278, &qword_23D9DBEB8);
      }

      (*(v178 + 32))(v180, v78, v181);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B38, &unk_23D9DF588);
      v152 = v151;
      v177 = *(v83 - 8);
      MEMORY[0x28223BE20](v83);
      v85 = v151 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
      v156 = v151;
      v151[1] = v84;
      MEMORY[0x28223BE20](v86);
      v88 = v151 - v87;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4290, &qword_23D9DBED0);
      v159 = v151;
      v90 = v89 - 8;
      MEMORY[0x28223BE20](v89);
      v92 = v151 - v91;
      v93 = v183;
      sub_23D9683F8(v151 - v91);
      v94 = sub_23D9D9D44();
      v158 = v151;
      v95 = *(v90 + 44);
      v157 = v92;
      v96 = &v92[v95];
      *v96 = v94;
      *(v96 + 8) = 0u;
      *(v96 + 24) = 0u;
      v96[40] = 1;
      MEMORY[0x28223BE20](v94);
      v97 = v151 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_23D972490(v93, v97, type metadata accessor for LiveSpeechCreateCustomCategoryView);
      v98 = sub_23D9DA9A4();
      v99 = v163;
      v100 = swift_allocObject();
      *(v100 + 16) = v98;
      *(v100 + 24) = MEMORY[0x277D85700];
      v101 = sub_23D972618(v97, v99 + v100, type metadata accessor for LiveSpeechCreateCustomCategoryView);
      v102 = v176;
      MEMORY[0x28223BE20](v101);
      v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
      v104 = v151 - v103;
      sub_23D9DA9C4();
      v179 = v85;
      v175 = v83;
      if (isPlatformVersionAtLeast)
      {
        v162 = sub_23D9D9614();
        v163 = v151;
        v161 = *(v162 - 8);
        MEMORY[0x28223BE20](v162);
        v106 = v151 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
        v185._countAndFlagsBits = 0;
        v185._object = 0xE000000000000000;
        v183 = v151;
        sub_23D9DAE64();

        v185._countAndFlagsBits = 0xD00000000000004DLL;
        v185._object = 0x800000023D9E4400;
        v184 = 132;
        v107 = sub_23D9DAF94();
        MEMORY[0x23EEF3C30](v107);

        v109 = MEMORY[0x28223BE20](v108);
        v110 = v164;
        v111 = v151 - v103;
        v112 = v151 - v103;
        v113 = v170;
        v164[2](v111, v112, v170, v109);
        sub_23D9D9604();
        (*(v110 + 8))(v104, v113);
        v83 = v175;
        sub_23D92A2BC(v157, v88, &qword_27E2F4290, &qword_23D9DBED0);
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4298, &qword_23D9DBED8);
        v85 = v179;
        (*(v161 + 32))(&v88[*(v114 + 36)], v106, v162);
      }

      else
      {
        v115 = &v88[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F42A0, &qword_23D9DBEE0) + 36)];
        v116 = sub_23D9D9584();
        (v164[4])(&v115[*(v116 + 20)], v151 - v103, v170);
        *v115 = &unk_23D9DF5A0;
        *(v115 + 1) = v100;
        sub_23D92A2BC(v157, v88, &qword_27E2F4290, &qword_23D9DBED0);
      }

      (*(v177 + 32))(v85, v88, v83);
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B40, &qword_23D9DF5B0);
      v176 = v151;
      MEMORY[0x28223BE20](v117);
      v170 = v118;
      v119 = (v151 - v118);
      v120 = type metadata accessor for SymbolSelectorGrid(0);
      v183 = v151;
      MEMORY[0x28223BE20](v120);
      v122 = (v151 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0));
      type metadata accessor for LiveSpeechDataViewModel(0);
      sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
      *v122 = sub_23D9D9794();
      v122[1] = v123;
      v185._countAndFlagsBits = 0x404A000000000000;
      sub_23D9D94D4();
      v185._countAndFlagsBits = 0x4030000000000000;
      v124 = sub_23D9D94D4();
      v125 = MEMORY[0x28223BE20](v124);
      v127 = v151 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
      (v172)(v127, *MEMORY[0x277CDF9A0], v173, v125);
      if (sub_23D9DA894())
      {
        sub_23D96E134(&qword_27E2F5B48, type metadata accessor for SymbolSelectorGrid, &unk_23D9DF7E0);
        sub_23D9DA044();
        sub_23D91F344(v127, &qword_27E2F5180, &qword_23D9DDF50);
        sub_23D970EB8(v122, type metadata accessor for SymbolSelectorGrid);
        v128 = v167;

        v129 = sub_23D9D9324();
        v174 = v151;
        v130 = (v119 + *(v117 + 36));
        v164 = v119;
        *v130 = v129;
        v130[1] = v128;
        MEMORY[0x28223BE20](v129);
        v132 = v151 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
        v168 = v132;
        v133 = sub_23D91F2DC(v182, v132, &qword_27E2F5B18, &qword_23D9DF550);
        v173 = v151;
        v134 = MEMORY[0x28223BE20](v133);
        v183 = (v151 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0));
        v136 = v178;
        v167 = *(v178 + 16);
        v137 = v167(v134);
        v172 = v151;
        v138 = MEMORY[0x28223BE20](v137);
        v140 = v151 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
        v141 = v177;
        v166 = *(v177 + 16);
        v142 = v175;
        v143 = v166(v140, v179, v175, v138);
        v171 = v151;
        MEMORY[0x28223BE20](v143);
        v144 = (v151 - v170);
        sub_23D91F2DC(v119, v151 - v170, &qword_27E2F5B40, &qword_23D9DF5B0);
        v145 = v169;
        sub_23D91F2DC(v132, v169, &qword_27E2F5B18, &qword_23D9DF550);
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B50, &qword_23D9DF5B8);
        v147 = v181;
        (v167)(v145 + v146[12], v183, v181);
        (v166)(v145 + v146[16], v140, v142);
        sub_23D91F2DC(v144, v145 + v146[20], &qword_27E2F5B40, &qword_23D9DF5B0);
        sub_23D91F344(v164, &qword_27E2F5B40, &qword_23D9DF5B0);
        v148 = *(v141 + 8);
        v148(v179, v142);
        v149 = *(v136 + 8);
        v149(v180, v147);
        sub_23D91F344(v182, &qword_27E2F5B18, &qword_23D9DF550);
        sub_23D91F344(v144, &qword_27E2F5B40, &qword_23D9DF5B0);
        v148(v140, v142);
        v149(v183, v147);
        return sub_23D91F344(v168, &qword_27E2F5B18, &qword_23D9DF550);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  type metadata accessor for LiveSpeechDataViewModel(0);
  sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
  result = sub_23D9D9784();
  __break(1u);
  return result;
}

uint64_t sub_23D968104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  sub_23D9DA9B4();
  *(v3 + 40) = sub_23D9DA9A4();
  v5 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D96819C, v5, v4);
}

uint64_t sub_23D96819C()
{
  v1 = v0[4];

  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v0[2])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_23D9D9384();

      v2 = v0[2];
      v3 = [v2 symbol];

      v4 = sub_23D9DA8B4();
      v6 = v5;

      swift_getKeyPath();
      swift_getKeyPath();
      v0[2] = v4;
      v0[3] = v6;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v0[2] = 0x69662E6573756F68;
      v0[3] = 0xEA00000000006C6CLL;
    }

    sub_23D9D9394();
    v8 = v0[1];

    return v8();
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);

    return sub_23D9D9784();
  }
}

uint64_t sub_23D9683F8@<X0>(uint64_t a1@<X8>)
{
  v135 = a1;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5180, &qword_23D9DDF50);
  MEMORY[0x28223BE20](v128);
  v156 = v125 - v2;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B58, &qword_23D9DF5C0);
  MEMORY[0x28223BE20](v129);
  v132 = v125 - v3;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B60, &qword_23D9DF5C8);
  MEMORY[0x28223BE20](v131);
  v134 = v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v130 = v125 - v6;
  MEMORY[0x28223BE20](v7);
  v133 = v125 - v8;
  v146 = sub_23D9D9464();
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v143 = v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v142 = v125 - v11;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B68, &qword_23D9DF5D0);
  MEMORY[0x28223BE20](v141);
  v139 = v125 - v12;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B70, &qword_23D9DF5D8) - 8;
  MEMORY[0x28223BE20](v157);
  v140 = v125 - v13;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B78, &qword_23D9DF5E0);
  MEMORY[0x28223BE20](v145);
  v148 = v125 - v14;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B80, &qword_23D9DF5E8);
  MEMORY[0x28223BE20](v147);
  v150 = v125 - v15;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B88, &qword_23D9DF5F0);
  MEMORY[0x28223BE20](v149);
  v152 = v125 - v16;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B90, &qword_23D9DF5F8);
  MEMORY[0x28223BE20](v151);
  v153 = v125 - v17;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B98, &qword_23D9DF600);
  MEMORY[0x28223BE20](v155);
  v154 = v125 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5BA0, &qword_23D9DF608);
  MEMORY[0x28223BE20](v19 - 8);
  v127 = v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v158 = v125 - v22;
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  v23 = *(CustomCategoryView - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](CustomCategoryView);
  sub_23D972490(v1, v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechCreateCustomCategoryView);
  sub_23D9DA9B4();
  v25 = sub_23D9DA9A4();
  v26 = *(v23 + 80);
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v25;
  *(v27 + 24) = v28;
  sub_23D972618(v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + ((v26 + 32) & ~v26), type metadata accessor for LiveSpeechCreateCustomCategoryView);
  sub_23D972490(v1, v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v29 = sub_23D9DA9A4();
  v30 = (v26 + 40) & ~v26;
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v28;
  v31[4] = 75;
  v32 = v1;
  sub_23D972618(v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  sub_23D9DA594();
  countAndFlagsBits = v160._countAndFlagsBits;
  object = v160._object;
  v35 = v162;

  v36._countAndFlagsBits = 0xD000000000000023;
  v36._object = 0x800000023D9E4450;
  v160 = AXSUILocString(_:)(v36);
  sub_23D91B650();
  sub_23D9D9F04();
  v37 = v139;
  v125[3] = countAndFlagsBits;
  v125[2] = object;
  v125[1] = v35;
  sub_23D9DA7A4();
  v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5BA8, &qword_23D9DF610) + 36));
  v138 = sub_23D9D9744();
  v39 = *(v138 + 20);
  v40 = *MEMORY[0x277CE0120];
  v41 = sub_23D9D9A24();
  v42 = *(*(v41 - 8) + 104);
  v137 = v40;
  v136 = v42;
  v42(&v38[v39], v40, v41);
  __asm { FMOV            V0.2D, #12.0 }

  *v38 = _Q0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5BB0, &qword_23D9DF618);
  *&v38[*(v48 + 36)] = 256;
  sub_23D9D9E44();
  sub_23D9D9DF4();
  v49 = sub_23D9D9E54();

  KeyPath = swift_getKeyPath();
  v51 = v141;
  v52 = (v37 + *(v141 + 36));
  *v52 = KeyPath;
  v52[1] = v49;
  v53 = sub_23D971570();
  v54 = v140;
  MEMORY[0x23EEF33F0](1, v51, v53);
  sub_23D91F344(v37, &qword_27E2F5B68, &qword_23D9DF5D0);
  v55 = swift_getKeyPath();
  v56 = v54 + *(v157 + 44);
  *v56 = v55;
  *(v56 + 8) = 1;
  v57 = v142;
  v157 = v32;
  sub_23D96592C(v142);
  v58 = v144;
  v59 = v143;
  v60 = v146;
  (*(v144 + 104))(v143, *MEMORY[0x277CDF3C8], v146);
  LOBYTE(v51) = sub_23D9D9454();
  v61 = *(v58 + 8);
  v61(v59, v60);
  v61(v57, v60);
  if (v51)
  {
    v62 = sub_23D9DA2C4();
  }

  else
  {
    v62 = sub_23D9DA2A4();
  }

  v160._countAndFlagsBits = v62;
  sub_23D94038C();
  v63 = sub_23D9DA324();
  v64 = swift_getKeyPath();
  v65 = v148;
  sub_23D92A2BC(v54, v148, &qword_27E2F5B70, &qword_23D9DF5D8);
  v66 = (v65 + *(v145 + 36));
  *v66 = v64;
  v66[1] = v63;
  LOBYTE(v63) = sub_23D9D9D44();
  sub_23D9D93F4();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v150;
  sub_23D92A2BC(v65, v150, &qword_27E2F5B78, &qword_23D9DF5E0);
  v76 = v75 + *(v147 + 36);
  *v76 = v63;
  *(v76 + 8) = v68;
  *(v76 + 16) = v70;
  *(v76 + 24) = v72;
  *(v76 + 32) = v74;
  *(v76 + 40) = 0;
  LOBYTE(v63) = sub_23D9D9DA4();
  sub_23D9D93F4();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = v152;
  sub_23D92A2BC(v75, v152, &qword_27E2F5B80, &qword_23D9DF5E8);
  v86 = v85 + *(v149 + 36);
  *v86 = v63;
  *(v86 + 8) = v78;
  *(v86 + 16) = v80;
  *(v86 + 24) = v82;
  *(v86 + 32) = v84;
  *(v86 + 40) = 0;
  v87 = [objc_opt_self() quaternaryLabelColor];
  sub_23D9DA244();
  v88 = sub_23D9DA2D4();

  LOBYTE(v63) = sub_23D9D9D54();
  v89 = v153;
  sub_23D92A2BC(v85, v153, &qword_27E2F5B88, &qword_23D9DF5F0);
  v90 = v89 + *(v151 + 36);
  *v90 = v88;
  *(v90 + 8) = v63;
  v91 = v154;
  v92 = &v154[*(v155 + 36)];
  v136(&v92[*(v138 + 20)], v137, v41);
  __asm { FMOV            V0.2D, #10.0 }

  *v92 = _Q0;
  *&v92[*(v48 + 36)] = 256;
  sub_23D92A2BC(v89, v91, &qword_27E2F5B90, &qword_23D9DF5F8);
  sub_23D971768();
  sub_23D9DA114();
  sub_23D91F344(v91, &qword_27E2F5B98, &qword_23D9DF600);
  v94._object = 0x800000023D9E44A0;
  v94._countAndFlagsBits = 0xD000000000000016;
  AXSUILocString(_:)(v94);
  sub_23D9D9E64();
  v95 = sub_23D9D9EE4();
  v97 = v96;
  v99 = v98;
  v101 = v100;

  v160._countAndFlagsBits = v95;
  v160._object = v97;
  LOBYTE(v161) = v99 & 1;
  v162 = v101;
  v102 = *MEMORY[0x277CDF9B0];
  v103 = sub_23D9D9664();
  v104 = v156;
  (*(*(v103 - 8) + 104))(v156, v102, v103);
  sub_23D96E134(&qword_27E2F5198, MEMORY[0x277CDFA20], MEMORY[0x277CDFA40]);
  result = sub_23D9DA894();
  if (result)
  {
    sub_23D91F01C(&qword_27E2F51A8, &qword_27E2F5180, &qword_23D9DDF50, MEMORY[0x277D84470]);
    v106 = v132;
    sub_23D9DA044();
    sub_23D91F344(v104, &qword_27E2F5180, &qword_23D9DDF50);
    sub_23D9274BC(v95, v97, v99 & 1);

    v107 = sub_23D9DA274();
    v108 = swift_getKeyPath();
    v109 = (v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5C40, &qword_23D9DF6A0) + 36));
    *v109 = v108;
    v109[1] = v107;
    *(v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5C48, &qword_23D9DF6A8) + 36)) = 256;
    LOBYTE(v107) = sub_23D9D9D44();
    v110 = v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5C50, &qword_23D9DF6B0) + 36);
    *v110 = v107;
    *(v110 + 8) = 0u;
    *(v110 + 24) = 0u;
    *(v110 + 40) = 1;
    v111 = swift_getKeyPath();
    v112 = v106 + *(v129 + 36);
    *v112 = v111;
    *(v112 + 8) = 2;
    *(v112 + 16) = 0;
    v113 = v157 + *(CustomCategoryView + 28);
    v114 = *v113;
    v115 = *(v113 + 8);
    LOBYTE(v113) = *(v113 + 16);
    v160._countAndFlagsBits = v114;
    v160._object = v115;
    LOBYTE(v161) = v113;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
    MEMORY[0x23EEF3850](&v159, v116);
    if (v159 != 1 || (v117 = 1.0, (sub_23D965D3C() & 1) == 0))
    {
      v117 = 0.0;
    }

    v118 = v130;
    sub_23D92A2BC(v106, v130, &qword_27E2F5B58, &qword_23D9DF5C0);
    *(v118 + *(v131 + 36)) = v117;
    v119 = v133;
    sub_23D92A2BC(v118, v133, &qword_27E2F5B60, &qword_23D9DF5C8);
    v120 = v158;
    v121 = v127;
    sub_23D91F2DC(v158, v127, &qword_27E2F5BA0, &qword_23D9DF608);
    v122 = v134;
    sub_23D91F2DC(v119, v134, &qword_27E2F5B60, &qword_23D9DF5C8);
    v123 = v135;
    sub_23D91F2DC(v121, v135, &qword_27E2F5BA0, &qword_23D9DF608);
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5C58, &qword_23D9DF6E8);
    sub_23D91F2DC(v122, v123 + *(v124 + 48), &qword_27E2F5B60, &qword_23D9DF5C8);

    sub_23D91F344(v119, &qword_27E2F5B60, &qword_23D9DF5C8);
    sub_23D91F344(v120, &qword_27E2F5BA0, &qword_23D9DF608);
    sub_23D91F344(v122, &qword_27E2F5B60, &qword_23D9DF5C8);
    return sub_23D91F344(v121, &qword_27E2F5BA0, &qword_23D9DF608);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D96944C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  sub_23D9DA9B4();
  *(v3 + 40) = sub_23D9DA9A4();
  v5 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D9694E4, v5, v4);
}

uint64_t sub_23D9694E4()
{
  v1 = v0[4];

  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v0[2])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_23D9D9384();

      v2 = v0[2];
      v3 = [v2 localizedName];

      v4 = sub_23D9DA8B4();
      v6 = v5;

      swift_getKeyPath();
      swift_getKeyPath();
      v0[2] = v4;
      v0[3] = v6;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v0[2] = 0;
      v0[3] = 0xE000000000000000;
    }

    sub_23D9D9394();
    v8 = v0[1];

    return v8();
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);

    return sub_23D9D9784();
  }
}

uint64_t sub_23D96972C@<X0>(uint64_t a1@<X8>)
{
  v116 = a1;
  v2 = sub_23D9D9A84();
  v114 = *(v2 - 8);
  v115 = v2;
  MEMORY[0x28223BE20](v2);
  v113 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D9D9CE4();
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x28223BE20](v4);
  v110 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_23D9D9D04();
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  v9 = *(CustomCategoryView - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](CustomCategoryView - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F59F8, &qword_23D9DF240);
  MEMORY[0x28223BE20](v11);
  v13 = &v89 - v12;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A00, &qword_23D9DF248);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v15 = &v89 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A08, &qword_23D9DF250);
  MEMORY[0x28223BE20](v91);
  v93 = &v89 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A10, &qword_23D9DF258);
  MEMORY[0x28223BE20](v99);
  v18 = &v89 - v17;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A18, &qword_23D9DF260);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v89 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A20, &qword_23D9DF268);
  MEMORY[0x28223BE20](v96);
  v97 = &v89 - v20;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A28, &qword_23D9DF270);
  MEMORY[0x28223BE20](v103);
  v92 = &v89 - v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A30, &qword_23D9DF278);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v89 - v22;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A38, &qword_23D9DF280);
  MEMORY[0x28223BE20](v108);
  v106 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v107 = &v89 - v25;
  MEMORY[0x28223BE20](v26);
  v109 = &v89 - v27;
  sub_23D972490(v1, &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v28 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v29 = swift_allocObject();
  sub_23D972618(&v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v117 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A40, &qword_23D9DF288);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5A48, &qword_23D9DF290);
  v31 = sub_23D96E240();
  v118._countAndFlagsBits = v30;
  v118._object = v31;
  swift_getOpaqueTypeConformance2();
  sub_23D9DA404();
  v32 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A78, &qword_23D9DF2B0) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A80, &qword_23D9DF2B8);
  sub_23D9D9774();
  *v32 = swift_getKeyPath();
  v33 = &v13[*(v11 + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A88, &qword_23D9DF2F0) + 28);
  v35 = *MEMORY[0x277CDF428];
  v36 = sub_23D9D9474();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  v37 = v1;
  sub_23D9D9CF4();
  sub_23D9706F8();
  sub_23D96E134(&qword_27E2F5AC0, MEMORY[0x277CDE3F8], MEMORY[0x277CDE3F0]);
  v38 = v89;
  sub_23D9D9FA4();
  (*(v90 + 8))(v7, v38);
  sub_23D91F344(v13, &qword_27E2F59F8, &qword_23D9DF240);
  if (sub_23D965D3C() & 1) != 0 || (sub_23D96620C())
  {
    v39 = &selRef_systemGray5Color;
  }

  else
  {
    v39 = &selRef_systemBlueColor;
  }

  v40 = [objc_opt_self() *v39];
  v41 = sub_23D9DA244();
  KeyPath = swift_getKeyPath();
  v118._countAndFlagsBits = v41;
  v43 = sub_23D9D9554();
  v44 = v93;
  (*(v94 + 32))(v93, v15, v95);
  v45 = (v44 + *(v91 + 36));
  *v45 = KeyPath;
  v45[1] = v43;
  v46 = sub_23D965D3C();
  v47 = v106;
  if (v46 & 1) != 0 || (sub_23D96620C())
  {
    v48 = &selRef_systemGray5Color;
  }

  else
  {
    v48 = &selRef_systemBlueColor;
  }

  v49 = [objc_opt_self() *v48];
  v50 = sub_23D9DA244();
  v51 = swift_getKeyPath();
  v118._countAndFlagsBits = v50;
  v52 = sub_23D9D9554();
  sub_23D92A2BC(v44, v18, &qword_27E2F5A08, &qword_23D9DF250);
  v53 = v99;
  v54 = &v18[*(v99 + 36)];
  *v54 = v51;
  v54[1] = v52;
  v55 = sub_23D9DA724();
  MEMORY[0x28223BE20](v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5AC8, &qword_23D9DF360);
  v56 = sub_23D9708F4();
  v57 = sub_23D9D9744();
  v58 = sub_23D96E134(&qword_27E2F5AF0, MEMORY[0x277CDFC00], MEMORY[0x277CDFBF0]);
  v118._countAndFlagsBits = v53;
  v118._object = v57;
  v119 = v56;
  v120 = v58;
  swift_getOpaqueTypeConformance2();
  v59 = v98;
  sub_23D9DA214();
  sub_23D91F344(v18, &qword_27E2F5A10, &qword_23D9DF258);
  LOBYTE(v52) = sub_23D9D9D44();
  sub_23D9D93F4();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v97;
  (*(v100 + 32))(v97, v59, v101);
  v69 = &v68[*(v96 + 36)];
  *v69 = v52;
  *(v69 + 1) = v61;
  *(v69 + 2) = v63;
  *(v69 + 3) = v65;
  *(v69 + 4) = v67;
  v69[40] = 0;
  LOBYTE(v52) = sub_23D9D9D54();
  v70 = v68;
  v71 = v92;
  sub_23D92A2BC(v70, v92, &qword_27E2F5A20, &qword_23D9DF268);
  v72 = v103;
  v73 = v71 + *(v103 + 36);
  *v73 = v52;
  *(v73 + 8) = 0u;
  *(v73 + 24) = 0u;
  *(v73 + 40) = 1;
  v74 = v110;
  sub_23D9D9CC4();
  v75 = sub_23D970AF0(&qword_27E2F5AF8, &qword_27E2F5A28, &qword_23D9DF270, sub_23D970B74);
  v76 = v102;
  sub_23D9DA0D4();
  (*(v111 + 8))(v74, v112);
  sub_23D91F344(v71, &qword_27E2F5A28, &qword_23D9DF270);
  v77 = v113;
  sub_23D9D9A64();
  v118._countAndFlagsBits = v72;
  v118._object = v75;
  swift_getOpaqueTypeConformance2();
  v78 = v105;
  sub_23D9DA104();
  (*(v114 + 8))(v77, v115);
  (*(v104 + 8))(v76, v78);
  if (*v37)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v79 = v109;
    if (v118._countAndFlagsBits)
    {
      v80 = 0x454E4F445F534CLL;
      v81 = 0xE700000000000000;
    }

    else
    {
      v81 = 0x800000023D9E4120;
      v80 = 0xD000000000000016;
    }

    v118 = AXSUILocString(_:)(*&v80);
    sub_23D91B650();
    v82 = v107;
    sub_23D9D9684();

    sub_23D91F344(v47, &qword_27E2F5A38, &qword_23D9DF280);
    sub_23D9D96A4();
    sub_23D91F344(v82, &qword_27E2F5A38, &qword_23D9DF280);
    if (sub_23D965D3C())
    {
      v83 = 1;
    }

    else
    {
      v83 = sub_23D96620C();
    }

    v84 = swift_getKeyPath();
    v85 = swift_allocObject();
    *(v85 + 16) = v83 & 1;
    v86 = v116;
    sub_23D92A2BC(v79, v116, &qword_27E2F5A38, &qword_23D9DF280);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B08, &qword_23D9DF3E8);
    v88 = (v86 + *(result + 36));
    *v88 = v84;
    v88[1] = sub_23D970D58;
    v88[2] = v85;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D96A680(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D96A6F4(uint64_t a1)
{
  v2 = sub_23D9D9BC4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F59A0, &qword_23D9DF1F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_23D9D9BB4();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F59D8, &qword_23D9DF228);
  sub_23D96E04C();
  sub_23D9D94B4();
  v7 = sub_23D91F01C(&qword_27E2F59A8, &qword_27E2F59A0, &qword_23D9DF1F8, MEMORY[0x277CDD7A0]);
  MEMORY[0x23EEF2F00](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23D96A8AC@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  v2 = *(CustomCategoryView - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](CustomCategoryView - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D9D93E4();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F59F0, &unk_23D9DF230);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F59D8, &qword_23D9DF228);
  MEMORY[0x28223BE20](v12);
  v14 = v19 - v13;
  sub_23D9D93C4();
  sub_23D972490(v19[0], v4, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = swift_allocObject();
  sub_23D972618(v4, v16 + v15, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  MEMORY[0x23EEF3710](v7, sub_23D96E17C, v16);
  v17._countAndFlagsBits = 0x45534F4C435F534CLL;
  v17._object = 0xE800000000000000;
  v20 = AXSUILocString(_:)(v17);
  sub_23D91F01C(&qword_27E2F59E8, &qword_27E2F59F0, &unk_23D9DF230, MEMORY[0x277CDF030]);
  sub_23D91B650();
  sub_23D9DA0A4();

  (*(v9 + 8))(v11, v8);
  sub_23D9D96A4();
  return sub_23D91F344(v14, &qword_27E2F59D8, &qword_23D9DF228);
}

uint64_t sub_23D96ABE0()
{
  v6 = *(v0 + *(type metadata accessor for LiveSpeechCreateCustomCategoryView(0) + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  sub_23D9DA564();
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if ((v6 & 1) == 0)
    {
      sub_23D96BBB4();
      goto LABEL_8;
    }

    sub_23D96B4B4(&selRef_localizedName, &unk_23D9DF3F0, &unk_23D9DF418, &selRef_renameCategoryWithID_name_error_);
    sub_23D96B4B4(&selRef_symbol, &unk_23D9DF4F8, &unk_23D9DF520, &selRef_updateCategorySymbolWithID_symbol_error_);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v1 = [v6 categoryID];

    if (!v1)
    {
      sub_23D9DA8B4();
      v1 = sub_23D9DA8A4();
    }

    v2 = [objc_opt_self() categoryForID_];

    if (v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D9D9394();
LABEL_8:
      v3 = objc_opt_self();

      v4 = [v3 categories];
      sub_23D9DAD44();
      sub_23D9DA974();

      swift_getKeyPath();
      swift_getKeyPath();

      sub_23D9D9394();
      sub_23D9524C0();
    }

    __break(1u);
  }

  type metadata accessor for LiveSpeechDataViewModel(0);
  sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
  result = sub_23D9D9784();
  __break(1u);
  return result;
}

uint64_t sub_23D96AEFC(uint64_t *a1)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v40[0])
    {
      v1 = 0x454E4F445F534CLL;
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0x800000023D9E4120;
      v1 = 0xD000000000000016;
    }

    v40[0] = AXSUILocString(_:)(*&v1);
    sub_23D91B650();
    v3 = sub_23D9D9F04();
    v5 = v4;
    v7 = v6;
    if (sub_23D965D3C() & 1) != 0 || (sub_23D96620C())
    {
      v8 = [objc_opt_self() systemGrayColor];
      sub_23D9DA244();
    }

    else
    {
      *&v40[0] = sub_23D9DA2C4();
      sub_23D94038C();
      sub_23D9DA324();
    }

    v9 = sub_23D9D9EC4();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    sub_23D9274BC(v3, v5, v7 & 1);

    sub_23D9DA734();
    sub_23D9D9764();
    v41 = v13 & 1;
    v16 = sub_23D9D9DA4();
    sub_23D9D93F4();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v42 = 0;
    v25 = sub_23D9D9DD4();
    *&v27 = v9;
    *(&v27 + 1) = v11;
    LOBYTE(v28) = v13 & 1;
    *(&v28 + 1) = v15;
    LOBYTE(v29) = v16;
    *(&v29 + 1) = v18;
    *&v30 = v20;
    *(&v30 + 1) = v22;
    *&v31 = v24;
    BYTE8(v31) = 0;
    *&v32 = swift_getKeyPath();
    *(&v32 + 1) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A48, &qword_23D9DF290);
    sub_23D96E240();
    sub_23D9DA164();
    v40[10] = v30;
    v40[11] = v31;
    v40[12] = v32;
    v40[6] = v37;
    v40[7] = v38;
    v40[8] = v39;
    v40[9] = v29;
    v40[2] = v33;
    v40[3] = v34;
    v40[4] = v35;
    v40[5] = v36;
    v40[0] = v27;
    v40[1] = v28;
    return sub_23D91F344(v40, &qword_27E2F5A48, &qword_23D9DF290);
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D96B27C()
{
  v0 = sub_23D9D9744();
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_23D965D3C() & 1) != 0 || (sub_23D96620C())
  {
    v3 = &selRef_systemGray5Color;
  }

  else
  {
    v3 = &selRef_systemBlueColor;
  }

  v4 = [objc_opt_self() *v3];
  sub_23D9DA244();
  v5 = *(v0 + 20);
  v6 = *MEMORY[0x277CE0120];
  v7 = sub_23D9D9A24();
  (*(*(v7 - 8) + 104))(&v2[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v2 = _Q0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5A10, &qword_23D9DF258);
  sub_23D9708F4();
  sub_23D96E134(&qword_27E2F5AF0, MEMORY[0x277CDFC00], MEMORY[0x277CDFBF0]);
  sub_23D9D9F14();

  return sub_23D970EB8(v2, MEMORY[0x277CDFC00]);
}

uint64_t sub_23D96B444(uint64_t a1)
{
  type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  return sub_23D9DA564();
}

id sub_23D96B4B4(SEL *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v46 = a4;
  v47[2] = *MEMORY[0x277D85DE8];
  v7 = sub_23D9D91F4();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D9D91D4();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D9D9574();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v4)
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D9D9384();

  v15 = v47[0];
  v16 = [v47[0] *a1];

  v17 = sub_23D9DA8B4();
  v19 = v18;

  v45 = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D9D9384();

  if (v17 == v47[0] && v19 == v47[1])
  {

LABEL_6:
    sub_23D965B34(v14);
    sub_23D9D9564();
    return (*(v12 + 8))(v14, v11);
  }

  v20 = sub_23D9DAFC4();

  if (v20)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D9D9384();

  v22 = v47[0];
  v23 = [v47[0] categoryID];

  if (!v23)
  {
    sub_23D9DA8B4();
    v23 = sub_23D9DA8A4();
  }

  v24 = objc_opt_self();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D9D9384();

  v25 = sub_23D9DA8A4();

  v47[0] = 0;
  LODWORD(v24) = [v24 *v46];

  v26 = v47[0];
  if (v24)
  {

    return v26;
  }

  else
  {
    v46 = v47[0];
    v27 = v47[0];
    v28 = sub_23D9D8824();

    swift_willThrow();
    v29 = v42;
    sub_23D9D9214();
    v30 = v28;
    v31 = sub_23D9D91C4();
    v32 = sub_23D9DACC4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v36 = v39;
      v35 = v40;
      v37 = v41;
      (*(v40 + 104))(v39, *MEMORY[0x277D704D8], v41);
      sub_23D9D9204();
      sub_23D96E134(&qword_27E2F4928, MEMORY[0x277D70518], MEMORY[0x277D70520]);
      swift_allocError();
      sub_23D9D91E4();
      (*(v35 + 8))(v36, v37);
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v38;
      *v34 = v38;
      _os_log_impl(&dword_23D918000, v31, v32, "%@", v33, 0xCu);
      sub_23D91F344(v34, &qword_27E2F4930, &unk_23D9DCC50);
      MEMORY[0x23EEF4BC0](v34, -1, -1);
      MEMORY[0x23EEF4BC0](v33, -1, -1);
    }

    else
    {
    }

    return (*(v43 + 8))(v29, v44);
  }
}

void sub_23D96BBB4()
{
  v25[2] = *MEMORY[0x277D85DE8];
  v1 = sub_23D9D91F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23D9D91D4();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v8 = objc_opt_self();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v9 = sub_23D9DA8A4();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v10 = sub_23D9DA8A4();

    v25[0] = 0;
    v11 = [v8 addCategoryWithName:v9 symbol:v10 error:v25];

    if (v11)
    {
      v12 = v25[0];
    }

    else
    {
      v13 = v25[0];
      v14 = sub_23D9D8824();

      swift_willThrow();
      sub_23D9D9214();
      v15 = v14;
      v16 = sub_23D9D91C4();
      v17 = sub_23D9DACC4();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v23 = v5;
        v20 = v19;
        *v18 = 138412290;
        (*(v2 + 104))(v4, *MEMORY[0x277D704D8], v1);
        sub_23D9D9204();
        sub_23D96E134(&qword_27E2F4928, MEMORY[0x277D70518], MEMORY[0x277D70520]);
        swift_allocError();
        sub_23D9D91E4();
        (*(v2 + 8))(v4, v1);
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&dword_23D918000, v16, v17, "%@", v18, 0xCu);
        sub_23D91F344(v20, &qword_27E2F4930, &unk_23D9DCC50);
        v22 = v20;
        v5 = v23;
        MEMORY[0x23EEF4BC0](v22, -1, -1);
        MEMORY[0x23EEF4BC0](v18, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v7, v24);
    }
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    sub_23D9D9784();
    __break(1u);
  }
}

uint64_t sub_23D96C078@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    *a2 = v4;
    a2[1] = v5;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D96C164(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = a1[1];

  v10 = sub_23D971D48(a4, v7, v8, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  MEMORY[0x23EEF3C00](v10, v12, v14, v16);

  if (*a5)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_23D9D9394();
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D96C29C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5980, &qword_23D9DF1E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5988, &qword_23D9DF1E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5990, &qword_23D9DF1F0);
  sub_23D91F01C(&qword_27E2F5998, &qword_27E2F5988, &qword_23D9DF1E8, MEMORY[0x277CDDB58]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F59A0, &qword_23D9DF1F8);
  sub_23D91F01C(&qword_27E2F59A8, &qword_27E2F59A0, &qword_23D9DF1F8, MEMORY[0x277CDD7A0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_23D9D96D4();
  v2 = sub_23D9D96E4();
  v3 = sub_23D9D9D74();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F59B0, &qword_23D9DF200);
  v5 = a1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

double sub_23D96C44C@<D0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v15 = sub_23D9D9BF4();
  MEMORY[0x28223BE20](v15);
  v13[1] = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23D9DA6F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5D40, &qword_23D9DF830);
  v14 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = v13 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5D48, &qword_23D9DF838);
  sub_23D9DA704();
  *(swift_allocObject() + 16) = xmmword_23D9DC3E0;
  type metadata accessor for SymbolSelectorGrid(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
  sub_23D9D94E4();
  *v6 = fmax(v19, 52.0);
  *(v6 + 1) = 0x7FF0000000000000;
  (*(v4 + 104))(v6, *MEMORY[0x277CDF0F8], v3);
  sub_23D9DA714();
  sub_23D9D94E4();
  v18 = v1;
  sub_23D9D9AB4();
  LODWORD(v19) = 0;
  sub_23D96E134(&qword_27E2F5D50, MEMORY[0x277CE0430], MEMORY[0x277CE0450]);
  sub_23D9DB074();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5D58, &qword_23D9DF840);
  sub_23D97234C();
  sub_23D9DA784();
  v9 = sub_23D9D9D54();
  v10 = v17;
  (*(v14 + 32))(v17, v8, v16);
  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5D80, &unk_23D9DF850) + 36);
  *v11 = v9;
  result = 0.0;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 1;
  return result;
}

uint64_t sub_23D96C844(uint64_t a1)
{
  v2 = type metadata accessor for SymbolSelectorGrid(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v12[5] = &unk_284FDD798;
  swift_getKeyPath();
  sub_23D972490(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SymbolSelectorGrid);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23D972618(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SymbolSelectorGrid);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5D88, &qword_23D9DF878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5D90, &qword_23D9DF880);
  sub_23D91F01C(&qword_27E2F5D98, &qword_27E2F5D88, &qword_23D9DF878, MEMORY[0x277D83980]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5D68, &qword_23D9DF848);
  v8 = sub_23D9D9BE4();
  v9 = sub_23D91F01C(&qword_27E2F5D70, &qword_27E2F5D68, &qword_23D9DF848, MEMORY[0x277CDF030]);
  v10 = sub_23D96E134(&qword_27E2F5D78, MEMORY[0x277CDE0B0], MEMORY[0x277CDE0A8]);
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  swift_getOpaqueTypeConformance2();
  return sub_23D9DA614();
}

uint64_t sub_23D96CAD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_23D9D9BE4();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SymbolSelectorGrid(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5D68, &qword_23D9DF848);
  v24 = *(v12 - 8);
  v25 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = *a1;
  v16 = a1[1];
  sub_23D972490(a2, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SymbolSelectorGrid);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_23D972618(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for SymbolSelectorGrid);
  v19 = (v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v15;
  v19[1] = v16;
  v29 = v15;
  v30 = v16;
  v31 = a2;
  type metadata accessor for SymbolImageView(0);
  sub_23D96E134(&qword_27E2F5DA0, type metadata accessor for SymbolImageView, &unk_23D9DF8C8);

  sub_23D9DA404();
  sub_23D9D9BD4();
  sub_23D91F01C(&qword_27E2F5D70, &qword_27E2F5D68, &qword_23D9DF848, MEMORY[0x277CDF030]);
  sub_23D96E134(&qword_27E2F5D78, MEMORY[0x277CDE0B0], MEMORY[0x277CDE0A8]);
  v21 = v25;
  v20 = v26;
  sub_23D9D9FA4();
  (*(v27 + 8))(v8, v20);
  return (*(v24 + 8))(v14, v21);
}

void sub_23D96CE50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9394();
    v5 = [objc_opt_self() sharedApplication];
    [v5 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    sub_23D9D9784();
    __break(1u);
  }
}

uint64_t sub_23D96CF80@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v11 == __PAIR128__(a2, a1))
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_23D9DAFC4();
    }

    *a4 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
    swift_storeEnumTagMultiPayload();
    v8 = type metadata accessor for SymbolImageView(0);
    v9 = (a4 + *(v8 + 20));
    *v9 = a1;
    v9[1] = a2;
    *(a4 + *(v8 + 24)) = v7 & 1;
    sub_23D94B5F0();

    sub_23D9D94D4();
    sub_23D9D94D4();
    sub_23D9D94D4();
    return sub_23D9D94D4();
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D96D1A4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_23D9D9A84();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v32 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23D9D9CE4();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5C60, &qword_23D9DF6F0);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5C68, &qword_23D9DF6F8);
  MEMORY[0x28223BE20](v33);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v29 = &v26 - v13;
  v14 = sub_23D9DA734();
  v16 = v15;
  sub_23D96D740(&v64);
  v58 = v72;
  v59 = v73;
  v60 = v74;
  v54 = v68;
  v55 = v69;
  v56 = v70;
  v57 = v71;
  v50 = v64;
  v51 = v65;
  v52 = v66;
  v53 = v67;
  v62[8] = v72;
  v62[9] = v73;
  v62[10] = v74;
  v62[4] = v68;
  v62[5] = v69;
  v62[6] = v70;
  v62[7] = v71;
  v62[0] = v64;
  v62[1] = v65;
  v61 = v75;
  v63 = v75;
  v62[2] = v66;
  v62[3] = v67;
  sub_23D91F2DC(&v50, &v37, &qword_27E2F5C70, &qword_23D9DF700);
  sub_23D91F344(v62, &qword_27E2F5C70, &qword_23D9DF700);
  v46 = v58;
  v47 = v59;
  v48 = v60;
  v49 = v61;
  v42 = v54;
  v43 = v55;
  v44 = v56;
  v45 = v57;
  v38 = v50;
  v39 = v51;
  v40 = v52;
  v41 = v53;
  *&v37 = v14;
  *(&v37 + 1) = v16;
  sub_23D9D9CC4();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5C78, &qword_23D9DF708);
  v18 = sub_23D91F01C(&qword_27E2F5C80, &qword_27E2F5C78, &qword_23D9DF708, MEMORY[0x277CE11B0]);
  sub_23D9DA0D4();
  (*(v26 + 8))(v5, v27);
  v74 = v47;
  v75 = v48;
  v76 = v49;
  v70 = v43;
  v71 = v44;
  v72 = v45;
  v73 = v46;
  v66 = v39;
  v67 = v40;
  v68 = v41;
  v69 = v42;
  v64 = v37;
  v65 = v38;
  sub_23D91F344(&v64, &qword_27E2F5C78, &qword_23D9DF708);
  v19 = v32;
  sub_23D9D9A54();
  *&v37 = v17;
  *(&v37 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v30;
  sub_23D9DA104();
  (*(v34 + 8))(v19, v35);
  (*(v31 + 8))(v9, v20);
  v21 = *v28;
  v22 = v28[1];
  *&v37 = _s23AccessibilitySettingsUI20CategorySymbolSourceV17accessibilityName3forS2S_tFZ_0(*v28, v22);
  *(&v37 + 1) = v23;
  sub_23D91B650();
  v24 = v29;
  sub_23D9D9684();

  sub_23D91F344(v11, &qword_27E2F5C68, &qword_23D9DF6F8);
  *&v37 = 0;
  *(&v37 + 1) = 0xE000000000000000;
  sub_23D9DAE64();

  *&v37 = 0xD000000000000020;
  *(&v37 + 1) = 0x800000023D9E44C0;
  MEMORY[0x23EEF3C30](v21, v22);
  sub_23D9D96A4();

  return sub_23D91F344(v24, &qword_27E2F5C68, &qword_23D9DF6F8);
}

double sub_23D96D740@<D0>(uint64_t a2@<X8>)
{
  v20 = sub_23D9DA374();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v38 = sub_23D9DA294();
  sub_23D94038C();
  v21 = sub_23D9DA324();
  v19 = type metadata accessor for SymbolPlatter(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
  sub_23D9D94E4();
  sub_23D9DA734();
  sub_23D9D9544();
  *(v48 + 6) = *(&v48[3] + 6);
  *(&v48[1] + 6) = *(&v48[4] + 6);
  *(&v48[2] + 6) = *(&v48[5] + 6);

  sub_23D9DA384();
  v6 = v20;
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE8], v20);
  v18 = sub_23D9DA394();

  (*(v3 + 8))(v5, v6);
  v7 = sub_23D9D9E44();
  KeyPath = swift_getKeyPath();
  sub_23D9D94E4();
  sub_23D9D94E4();
  sub_23D9DA734();
  sub_23D9D9544();
  v47 = 1;
  *&v46[6] = *(&v48[6] + 6);
  *&v46[22] = *(&v48[7] + 6);
  *&v46[38] = *(&v48[8] + 6);
  v9 = sub_23D9DA2C4();
  v10 = swift_getKeyPath();
  v11 = sub_23D9DA734();
  *&v23 = v18;
  *(&v23 + 1) = KeyPath;
  v24 = v7;
  v25 = 0;
  LOWORD(v26[0]) = 1;
  *(v26 + 2) = *v46;
  *&v26[3] = *&v46[46];
  *(&v26[3] + 1) = v10;
  *(&v26[2] + 2) = *&v46[32];
  *(&v26[1] + 2) = *&v46[16];
  *&v27 = v9;
  *(&v27 + 1) = v11;
  v38 = v23;
  v39 = v7;
  v43 = v26[3];
  v44 = v27;
  v41 = v26[1];
  v42 = v26[2];
  v28 = v12;
  v29[0] = v18;
  v45 = v12;
  v40 = v26[0];
  v29[1] = KeyPath;
  v29[2] = v7;
  v29[3] = 0;
  v30 = 1;
  *&v33[14] = *&v46[46];
  v34 = v10;
  *v33 = *&v46[32];
  v32 = *&v46[16];
  v31 = *v46;
  v35 = v9;
  v36 = v11;
  v37 = v12;
  sub_23D91F2DC(&v23, &v22, qword_27E2F5C88, &qword_23D9DF710);
  sub_23D91F344(v29, qword_27E2F5C88, &qword_23D9DF710);
  *a2 = v21;
  *(a2 + 8) = 256;
  *(a2 + 10) = v48[0];
  *(a2 + 26) = v48[1];
  *(a2 + 42) = v48[2];
  *(a2 + 56) = *(&v48[2] + 14);
  v13 = v43;
  *(a2 + 128) = v42;
  *(a2 + 144) = v13;
  *(a2 + 160) = v44;
  *(a2 + 176) = v45;
  v14 = v39;
  *(a2 + 64) = v38;
  *(a2 + 80) = v14;
  result = *&v40;
  v16 = v41;
  *(a2 + 96) = v40;
  *(a2 + 112) = v16;
  return result;
}
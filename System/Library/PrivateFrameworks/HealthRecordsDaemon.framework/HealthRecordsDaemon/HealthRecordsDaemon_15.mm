uint64_t sub_251BFE268(uint64_t a1, uint64_t a2)
{
  result = sub_251C6FB74();
  if (!result || (result = sub_251C6FBA4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_251C6FB94();
      return sub_251C6FEB4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251BFE2FC(uint64_t a1, uint64_t a2)
{
  sub_251C00204(0);
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C002B4(0);
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C0039C(0);
  v32 = v12;
  v34 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C00488(0);
  v33 = v15;
  v35 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v29 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_251C5DDD8(*(a1 + 56));
  sub_251BFB858(0);
  sub_251BFF324(&qword_27F47C330, sub_251BFB858, MEMORY[0x277D83B68]);
  sub_251C710D4();

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  sub_251C70964();
  sub_251BFFCA8(0);
  v18 = MEMORY[0x277CBCD18];
  sub_251BFF324(&qword_27F47C348, sub_251C00204, MEMORY[0x277CBCD18]);
  sub_251BFF324(&qword_27F47C340, sub_251BFFCA8, v18);
  v19 = v27;
  sub_251C70BE4();

  (*(v28 + 8))(v7, v19);
  v36 = sub_251C013B4(a1);
  sub_251BFFD58(0);
  sub_251BFF324(&qword_27F47C358, sub_251C002B4, MEMORY[0x277CBCCE0]);
  sub_251BFF324(&qword_27F47C2E0, sub_251BFFD58, MEMORY[0x277D83970]);
  v20 = v30;
  sub_251C70B34();

  (*(v31 + 8))(v11, v20);
  v36 = sub_251C018DC(a1);
  v21 = MEMORY[0x277CBCB40];
  sub_251BFF324(&qword_27F47C368, sub_251C0039C, MEMORY[0x277CBCB40]);
  v22 = v29;
  v23 = v32;
  sub_251C70B34();

  (*(v34 + 8))(v14, v23);
  sub_251BFF324(&qword_27F47C370, sub_251C00488, v21);
  v24 = v33;
  v25 = sub_251C70A94();
  (*(v35 + 8))(v22, v24);
  return v25;
}

uint64_t sub_251BFE854(uint64_t a1, void *a2, uint64_t a3)
{
  sub_251C01210(a1, a2, a3);
  sub_251BFFD58(0);
  sub_251BFF324(&qword_27F47C2E0, sub_251BFFD58, MEMORY[0x277D83970]);
  sub_251C710D4();
}

uint64_t sub_251BFE8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251BFFCA8(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFFDC0(0);
  v22 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFFF5C(0);
  v23 = *(v15 - 8);
  v24 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_251C097D4(a1, a2);
  sub_251BFFD58(0);
  sub_251BFF324(&qword_27F47C2E0, sub_251BFFD58, MEMORY[0x277D83970]);
  sub_251C710D4();

  sub_251AA10B4(0);
  sub_251C708F4();
  result = (*(v8 + 8))(v10, v7);
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_251BFF324(&qword_27F47C310, sub_251BFFDC0, MEMORY[0x277CBCD18]);
    sub_251BFF324(&qword_2813E21C8, sub_251AA10B4, MEMORY[0x277CBCD90]);
    v19 = v22;
    sub_251C70BD4();
    (*(v12 + 8))(v14, v19);
    sub_251BFF324(&qword_27F47C320, sub_251BFFF5C, MEMORY[0x277CBCCE0]);
    v20 = v24;
    v21 = sub_251C70A94();
    (*(v23 + 8))(v17, v20);
    return v21;
  }

  return result;
}

uint64_t sub_251BFEC98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_251BFECFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  sub_251BFF0F8(0);
  v5 = *(v4 - 8);
  v29 = v4;
  v30 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFF18C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFF238(0);
  v14 = *(v13 - 8);
  v27 = v13;
  v28 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_251C4BE0C(MEMORY[0x277D84F90]);
  v31 = a1;
  sub_251AA10B4(0);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251BFF324(&qword_2813E21C8, sub_251AA10B4, MEMORY[0x277CBCD90]);

  sub_251C70AE4();

  v18 = swift_allocObject();
  v19 = v26;
  v18[2] = v25;
  v18[3] = v19;
  v18[4] = v17;

  sub_251C70A74();
  sub_251BFF324(&qword_27F47C2B8, sub_251BFF18C, MEMORY[0x277CBCC08]);
  sub_251BFF324(&qword_27F47C2C0, sub_251BFF0F8, MEMORY[0x277CBCEB8]);
  v20 = v29;
  sub_251C70B44();
  (*(v30 + 8))(v7, v20);
  (*(v10 + 8))(v12, v9);
  sub_251BFF324(&qword_27F47C2C8, sub_251BFF238, MEMORY[0x277CBCB40]);
  v21 = v27;
  v22 = sub_251C70A94();
  (*(v28 + 8))(v16, v21);

  return v22;
}

void sub_251BFF0F8(uint64_t a1)
{
  if (!qword_27F47C2A0)
  {
    sub_251AA10B4(255);
    sub_251BFF324(&qword_2813E21C8, sub_251AA10B4, MEMORY[0x277CBCD90]);
    v1 = sub_251C70A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C2A0);
    }
  }
}

void sub_251BFF18C(uint64_t a1)
{
  if (!qword_27F47C2A8)
  {
    sub_251AA10B4(255);
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251BFF324(&qword_2813E21C8, sub_251AA10B4, MEMORY[0x277CBCD90]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C2A8);
    }
  }
}

void sub_251BFF238(uint64_t a1)
{
  if (!qword_27F47C2B0)
  {
    sub_251BFF18C(255);
    sub_251BFF0F8(255);
    sub_251BFF324(&qword_27F47C2B8, sub_251BFF18C, MEMORY[0x277CBCC08]);
    sub_251BFF324(&qword_27F47C2C0, sub_251BFF0F8, MEMORY[0x277CBCEB8]);
    v1 = sub_251C70794();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C2B0);
    }
  }
}

uint64_t sub_251BFF324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251BFF36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1 + *(type metadata accessor for ClinicalSharingQueryOutput(0) + 24);
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);
    swift_beginAccess();
    sub_251C00178(v8, v9);
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    v13 = sub_251AC8CD0(v10);
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v3 = v14;
      if (v12[3] < v18)
      {
        sub_251ACC4DC(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_251AC8CD0(v10);
        if ((v3 & 1) == (v19 & 1))
        {
          goto LABEL_7;
        }

        sub_251C001B8();
        v13 = sub_251C71A14();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_7:
        *(a2 + 16) = v12;
        if (v3)
        {
LABEL_9:

          sub_251BFF954(v21, sub_251C39860, MEMORY[0x277CC88A8]);
          swift_endAccess();

          v8 = sub_251BFF54C;
          goto LABEL_10;
        }

LABEL_8:
        sub_251ACDA84(v13, v10, MEMORY[0x277D84F90], v12);
        v20 = v10;
        goto LABEL_9;
      }
    }

    v23 = v13;
    sub_251ACF4E4();
    v13 = v23;
    *(a2 + 16) = v12;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_251C00114(a1, a3);
  return sub_251A7EA4C(v8, 0);
}

uint64_t sub_251BFF55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  swift_beginAccess();

  v8 = sub_251BFE8EC(v7, a1, a2);

  *a4 = v8;
  return result;
}

void *sub_251BFF5D4(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_251C38F4C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_251AA98B0(0, &qword_27F4791E8, &protocol descriptor for ClinicalSharingQuery);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_251BFF6E0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_251C38FD0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_251BFF85C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_251C717F4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_251C717F4();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_251BFFBF4(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_251BFF954(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_251BFFA98(uint64_t result)
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_251C39A68(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(result + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  sub_251BFFE70(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_251BFFBF4(uint64_t a1, char a2)
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

  sub_251C717F4();
LABEL_9:
  result = sub_251C716C4();
  *v2 = result;
  return result;
}

void sub_251BFFCA8(uint64_t a1)
{
  if (!qword_27F47C2D0)
  {
    sub_251BFFD58(255);
    sub_251BFF324(&qword_27F47C2E0, sub_251BFFD58, MEMORY[0x277D83970]);
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C2D0);
    }
  }
}

void sub_251BFFD58(uint64_t a1)
{
  if (!qword_27F47C2D8)
  {
    sub_251AA98B0(255, &qword_27F4791E8, &protocol descriptor for ClinicalSharingQuery);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C2D8);
    }
  }
}

void sub_251BFFDC0(uint64_t a1)
{
  if (!qword_27F47C2E8)
  {
    sub_251BFFE70(255, &qword_27F47C2F0, sub_251AA10B4, MEMORY[0x277D83940]);
    sub_251BFFED4();
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C2E8);
    }
  }
}

void sub_251BFFE70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251BFFED4()
{
  result = qword_27F47C2F8;
  if (!qword_27F47C2F8)
  {
    sub_251BFFE70(255, &qword_27F47C2F0, sub_251AA10B4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C2F8);
  }

  return result;
}

void sub_251BFFF5C(uint64_t a1)
{
  if (!qword_27F47C300)
  {
    sub_251AA10B4(255);
    sub_251C00048(255);
    sub_251BFF324(&qword_2813E21C8, sub_251AA10B4, MEMORY[0x277CBCD90]);
    sub_251BFF324(&qword_27F47C318, sub_251C00048, MEMORY[0x277CBCBA0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C300);
    }
  }
}

void sub_251C00048(uint64_t a1)
{
  if (!qword_27F47C308)
  {
    sub_251BFFDC0(255);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    sub_251BFF324(&qword_27F47C310, sub_251BFFDC0, MEMORY[0x277CBCD18]);
    v1 = sub_251C707E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C308);
    }
  }
}

uint64_t sub_251C00114(uint64_t a1, uint64_t a2)
{
  Output = type metadata accessor for ClinicalSharingQueryOutput(0);
  (*(*(Output - 8) + 16))(a2, a1, Output);
  return a2;
}

void *sub_251C00178(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
  }

  return result;
}

unint64_t sub_251C001B8()
{
  result = qword_27F479680;
  if (!qword_27F479680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479680);
  }

  return result;
}

void sub_251C00204(uint64_t a1)
{
  if (!qword_27F47C328)
  {
    sub_251BFB858(255);
    sub_251BFF324(&qword_27F47C330, sub_251BFB858, MEMORY[0x277D83B68]);
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C328);
    }
  }
}

void sub_251C002B4(uint64_t a1)
{
  if (!qword_27F47C338)
  {
    sub_251BFFCA8(255);
    sub_251C00204(255);
    v1 = MEMORY[0x277CBCD18];
    sub_251BFF324(&qword_27F47C340, sub_251BFFCA8, MEMORY[0x277CBCD18]);
    sub_251BFF324(&qword_27F47C348, sub_251C00204, v1);
    v2 = sub_251C708D4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F47C338);
    }
  }
}

void sub_251C0039C(uint64_t a1)
{
  if (!qword_27F47C350)
  {
    sub_251C002B4(255);
    sub_251BFFCA8(255);
    sub_251BFF324(&qword_27F47C358, sub_251C002B4, MEMORY[0x277CBCCE0]);
    sub_251BFF324(&qword_27F47C340, sub_251BFFCA8, MEMORY[0x277CBCD18]);
    v1 = sub_251C70794();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C350);
    }
  }
}

void sub_251C00488(uint64_t a1)
{
  if (!qword_27F47C360)
  {
    sub_251C0039C(255);
    sub_251BFFCA8(255);
    sub_251BFF324(&qword_27F47C368, sub_251C0039C, MEMORY[0x277CBCB40]);
    sub_251BFF324(&qword_27F47C340, sub_251BFFCA8, MEMORY[0x277CBCD18]);
    v1 = sub_251C70794();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C360);
    }
  }
}

uint64_t sub_251C00584(uint64_t a1, id a2)
{
  v2 = a2;
  if (a1)
  {

    return a1;
  }

  else if (!a2)
  {
    sub_251AC6624();
    v2 = swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
  }

  return v2;
}

void sub_251C005F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = sub_251AD96B8;
  v7[4] = v6;
  v8 = objc_allocWithZone(MEMORY[0x277D11968]);
  v12[4] = sub_251C007CC;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_251BBFA94;
  v12[3] = &block_descriptor_18;
  v9 = _Block_copy(v12);

  v10 = a3;
  v11 = [v8 initWithUpdateHandler_];
  _Block_release(v9);

  [v10 executeQuery_];
}

void sub_251C00740(uint64_t a1, void *a2, void *a3, id a4, void (*a5)(void *, void))
{
  [a4 stopQuery_];
  v8 = a2;
  v9 = a3;
  v10 = sub_251C00584(a2, a3);
  a5(v10, v11 & 1);

  sub_251BBFB4C(v10);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_251C007F0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_251C0A950(0, &qword_27F47C380, type metadata accessor for ClinicalSharingCycleTrackingQuery, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ClinicalSharingCycleTrackingQuery(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_251C70074() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_251C0A3AC(v9, &qword_27F47C380, type metadata accessor for ClinicalSharingCycleTrackingQuery);
    }

    else
    {
      v20 = v28;
      sub_251C0A9B4(v9, v28, type metadata accessor for ClinicalSharingCycleTrackingQuery);
      sub_251C0A9B4(v20, v30, type metadata accessor for ClinicalSharingCycleTrackingQuery);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_251C38F18(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_251C38F18((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_251C0A9B4(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for ClinicalSharingCycleTrackingQuery);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

char *sub_251C00B3C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_251C0A950(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_251C70014();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(type metadata accessor for PBClinicalRecord(0) - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x277D84F90];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_251C0A3AC(v8, &qword_2813E7500, MEMORY[0x277CC9578]);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_251C38F9C(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_251C38F9C((v20 > 1), v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

void *sub_251C00E98(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  sub_251C0A950(0, &qword_27F47C390, type metadata accessor for PBTimeSeries.Value, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for PBTimeSeries.Value(0);
  v25 = *(v30 - 8);
  v8 = MEMORY[0x28223BE20](v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = MEMORY[0x277D84F90];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x25308D460](v12, a3);
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_251C0A3AC(v7, &qword_27F47C390, type metadata accessor for PBTimeSeries.Value);
      }

      else
      {
        v18 = v24;
        sub_251C0A9B4(v7, v24, type metadata accessor for PBTimeSeries.Value);
        sub_251C0A9B4(v18, v29, type metadata accessor for PBTimeSeries.Value);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_251C39114(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_251C39114((v19 > 1), v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_251C0A9B4(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for PBTimeSeries.Value);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_251C01210(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a2[7];
  v16 = a1;
  v11 = MEMORY[0x277D84F90];
  v12 = *(sub_251BF1DA0(MEMORY[0x277D84F90], sub_251BFC46C, v15, v10) + 16);

  if (v12)
  {
    (*(v7 + 16))(v9, a1, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D112F0])
    {
      (*(v7 + 96))(v9, v6);
      v13 = *v9;
      v11 = sub_251C01FD8(*v9, a2, a3);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }
  }

  return v11;
}

uint64_t sub_251C013B4(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_251C0A950(0, &qword_27F4793D8, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  sub_251C0A950(0, &qword_27F4793E0, MEMORY[0x277CC99E8], v2);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_251C6FC94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251C6FAE4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251C701E4();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = sub_251C70244();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  LOBYTE(v33) = 1;
  v32 = 0;
  LOBYTE(v31) = 1;
  v30 = 0;
  sub_251C6FC74();
  sub_251C6FC24();

  sub_251AFB288(v12, 8u, 0, v16);
  result = (*(v10 + 8))(v12, v9);
  v20 = *(a1 + 56);
  v21 = *(v20 + 16);
  if (!v21)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v35 = v14;
  v36 = v13;
  v37 = a1;
  v22 = sub_251C39C90(v21, 0);
  v23 = *(sub_251C70074() - 8);
  v24 = sub_251C0A08C(&v38, &v22[(*(v23 + 80) + 32) & ~*(v23 + 80)], v21, v20);
  v25 = v38;

  result = sub_251AD20D8(v25);
  if (v24 == v21)
  {
    v13 = v36;
    a1 = v37;
    v14 = v35;
LABEL_5:
    MEMORY[0x28223BE20](result);
    v32 = a1;
    v33 = v16;
    v26 = sub_251C007F0(sub_251C0A330, &v30, v22);

    sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_251C74800;
    *(v27 + 56) = &type metadata for ClinicalSharingPatientMetadataQuery;
    *(v27 + 64) = &off_2863F6F18;
    *(v27 + 32) = a1;
    v28 = sub_251C093BC(v26);

    v38 = v27;
    sub_251BFF5D4(v28);
    v29 = v38;
    (*(v14 + 8))(v16, v13);
    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_251C018DC(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_251C0A950(0, &qword_27F4793D8, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  sub_251C0A950(0, &qword_27F4793E0, MEMORY[0x277CC99E8], v2);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_251C6FC94();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251C6FAE4();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ClinicalSharingMedicationDoseEventQuery(0);
  MEMORY[0x28223BE20](v49);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251C702E4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 56);
  (*(v18 + 104))(v20, *MEMORY[0x277D112F8], v17);
  v51 = v20;
  swift_retain_n();
  v22 = *(sub_251BF1DA0(MEMORY[0x277D84F90], sub_251BFC46C, v50, v21) + 16);

  (*(v18 + 8))(v20, v17);
  if (v22)
  {
    v43 = objc_opt_self();
    v44 = [v43 medicationUserDomainConceptTypeIdentifier];
    v23 = sub_251C701E4();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    v24 = sub_251C70244();
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
    sub_251C6FC74();
    sub_251C6FBE4();
    sub_251AFB288(v11, 8u, 0, v14);
    (*(v45 + 8))(v11, v46);
    sub_251A8223C(0, &qword_27F478D50, 0x277CCD8D8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = [ObjCClassFromMetadata medicationDoseEventType];
    *v16 = a1;
    *(v16 + 1) = v26;
    v27 = v48;
    v28 = v49;
    v29 = v47;
    (*(v47 + 16))(&v16[*(v49 + 28)], v14, v48);
    v30 = &v16[*(v28 + 32)];
    *v30 = 2;
    v30[8] = 1;
    v31 = [v26 code];
    (*(v29 + 8))(v14, v27);
    if (v31 == 144)
    {
      v32 = 10;
    }

    else
    {
      v32 = 300;
    }

    *(v16 + 2) = v32;
    v33 = [v43 medicationUserDomainConceptTypeIdentifier];
    v34 = [ObjCClassFromMetadata medicationDoseEventType];
    v35 = [v34 code];

    if (v35 == 144)
    {
      v36 = 10;
    }

    else
    {
      v36 = 300;
    }

    sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_251C763E0;
    *(v37 + 56) = &type metadata for ClinicalSharingMedicationTrackingQuery;
    *(v37 + 64) = &off_2863FDB48;
    v38 = v44;
    *(v37 + 32) = a1;
    *(v37 + 40) = v38;
    *(v37 + 96) = v28;
    *(v37 + 104) = &off_2863FF488;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v37 + 72));
    sub_251C0A854(v16, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingMedicationDoseEventQuery);
    *(v37 + 136) = &type metadata for ClinicalSharingMedicationScheduleQuery;
    *(v37 + 144) = &off_2863F6FE0;
    v40 = swift_allocObject();
    *(v37 + 112) = v40;
    v40[2] = a1;
    v40[3] = v34;
    v40[4] = v36;
    v40[5] = v33;
    *(v37 + 176) = &type metadata for ClinicalSharingActiveMedicationQuery;
    *(v37 + 184) = &off_2863FC168;
    *(v37 + 152) = a1;
    sub_251C0A34C(v16, type metadata accessor for ClinicalSharingMedicationDoseEventQuery);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v37;
}

uint64_t sub_251C01FD8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_251C6FAE4();
  v52 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_251C0A950(0, &qword_27F4793D8, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  sub_251C0A950(0, &qword_27F4793E0, MEMORY[0x277CC99E8], v9);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - v14;
  v16 = sub_251C6FC94();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 code];
  if (v20 == 80)
  {
    sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
    v44 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]);
    v45 = sub_251C02804(v44, a2, a3);

    v46 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC978]);
    v47 = sub_251C02804(v46, a2, a3);

    v53 = v45;
    sub_251BFF5D4(v47);
    return v53;
  }

  else if (v20 == 144)
  {
    sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_251C74800;
    v33 = sub_251C701E4();
    (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
    v34 = sub_251C70244();
    (*(*(v34 - 8) + 56))(v12, 1, 1, v34);

    sub_251C6FC74();
    sub_251C6FC24();
    sub_251AFB288(v19, 8u, 0, v8);
    (*(v17 + 8))(v19, v16);
    v35 = type metadata accessor for ClinicalSharingElectrocardiogramQuery(0);
    *(v32 + 56) = v35;
    *(v32 + 64) = &off_2863FCC40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v32 + 32));
    v37 = v35[8];
    sub_251A8223C(0, &qword_27F47C170, 0x277CCD3A8);
    v38 = [swift_getObjCClassFromMetadata() electrocardiogramType];
    *(boxed_opaque_existential_1 + v37) = v38;
    v39 = v35[9];
    *(boxed_opaque_existential_1 + v39) = [objc_opt_self() voltUnitWithMetricPrefix_];
    *boxed_opaque_existential_1 = a2;
    v40 = v52;
    (*(v52 + 16))(boxed_opaque_existential_1 + v35[5], v8, v6);
    v41 = [v38 code];
    (*(v40 + 8))(v8, v6);
    result = v32;
    v42 = 300;
    if (v41 == 144)
    {
      v42 = 10;
    }

    *(boxed_opaque_existential_1 + v35[6]) = v42;
    v43 = (boxed_opaque_existential_1 + v35[7]);
    *v43 = xmmword_251C86460;
    v43[1] = vdupq_n_s64(5uLL);
  }

  else if (v20 == 100)
  {
    sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_251C74800;
    v22 = sub_251C701E4();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
    v23 = sub_251C70244();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);

    sub_251C6FC74();
    sub_251C6FC24();
    v24 = type metadata accessor for ClinicalSharingActivitySummaryQuery(0);
    *(v21 + 56) = v24;
    *(v21 + 64) = &off_2863FB488;
    v25 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
    sub_251AFB288(v19, 8u, 0, v25 + v24[5]);
    (*(v17 + 8))(v19, v16);
    *v25 = a2;
    v26 = v24[6];
    v27 = objc_opt_self();
    *(v25 + v26) = [v27 countUnit];
    v28 = v24[7];
    *(v25 + v28) = [v27 kilocalorieUnit];
    v29 = v24[8];
    v30 = [v27 minuteUnit];
    result = v21;
    *(v25 + v29) = v30;
  }

  else
  {
    objc_opt_self();
    v48 = swift_dynamicCastObjCClass();
    if (v48)
    {
      v49 = v48;
      v50 = a1;
      v51 = sub_251C02804(v49, a2, a3);

      return v51;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_251C02804(void *a1, void *a2, uint64_t a3)
{
  v538 = a2;
  v535 = sub_251C6FAE4();
  v539 = *(v535 - 8);
  MEMORY[0x28223BE20](v535);
  v532 = &v512 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_251C0A950(0, &qword_27F4793D8, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v512 - v7;
  sub_251C0A950(0, &qword_27F4793E0, MEMORY[0x277CC99E8], v5);
  MEMORY[0x28223BE20](v9 - 8);
  v537 = &v512 - v10;
  v11 = sub_251C6FC94();
  v540 = *(v11 - 1);
  v12 = MEMORY[0x28223BE20](v11);
  v529 = &v512 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v528 = &v512 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v512 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v512 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v512 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v512 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v512 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v512 - v32;
  MEMORY[0x28223BE20](v31);
  v533 = &v512 - v34;
  v531 = a1;
  v35 = [a1 code];
  v36 = MEMORY[0x277D84F90];
  switch(v35)
  {
    case 0uLL:
    case 3uLL:
      v170 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v171 = swift_allocObject();
      v536 = v11;
      v530 = v171;
      *(v171 + 16) = xmmword_251C76AF0;
      v528 = sub_251C701E4();
      v172 = *(v528 - 8);
      *&v527 = *(v172 + 56);
      v529 = v172 + 56;
      (v527)(v537, 1, 1, v528);
      v525 = sub_251C70244();
      v173 = *(v525 - 1);
      v524 = *(v173 + 56);
      v526 = (v173 + 56);
      (v524)(v8, 1, 1, v525);
      v174 = v533;
      sub_251C6FC74();
      v534 = v8;
      v175 = v538;
      sub_251C6FC24();
      swift_retain_n();
      v176 = v532;
      sub_251AFB288(v174, 0, 0, v532);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v170);
      *&v520 = v177;
      v178 = v539;
      v519 = *(v539 + 72);
      v179 = (*(v539 + 80) + 32) & ~*(v539 + 80);
      v180 = swift_allocObject();
      v518 = xmmword_251C74800;
      *(v180 + 16) = xmmword_251C74800;
      v181 = *(v178 + 16);
      *&v522 = v178 + 16;
      v523 = v181;
      v182 = v535;
      v181(v180 + v179, v176, v535);
      v183 = v530;
      *(v530 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v183 + 64) = &off_2863FD290;
      v184 = v183;
      v185 = swift_allocObject();
      *(v184 + 32) = v185;
      *(v185 + 16) = v175;
      *(v185 + 24) = v180;
      v186 = v531;
      *(v185 + 32) = v531;
      *(v185 + 40) = 3;
      *(v185 + 48) = 257;
      *&v521 = *(v178 + 8);
      v187 = v521;
      v188 = v186;
      v187(v176, v182);
      v539 = *(v540 + 8);
      v540 += 8;
      (v539)(v174, v536);
      v189 = v537;
      (v527)(v537, 1, 1, v528);
      (v524)(v534, 1, 1, v525);
      sub_251C6FC74();
      sub_251C6FC24();
      v190 = v538;
      sub_251AFB288(v174, 8u, 0, v176);
      v191 = swift_allocObject();
      *(v191 + 16) = v518;
      v192 = v191 + v179;
      v193 = v535;
      v523(v192, v176, v535);
      v194 = v530;
      *(v530 + 96) = &type metadata for ClinicalSharingStatisticsQuery;
      v194[13] = &off_2863FD290;
      v195 = swift_allocObject();
      v194[9] = v195;
      *(v195 + 16) = v190;
      *(v195 + 24) = v191;
      *(v195 + 32) = v188;
      *(v195 + 40) = 2;
      *(v195 + 48) = 257;
      v196 = v188;
      (v521)(v176, v193);
      (v539)(v174, v536);
      (v527)(v189, 1, 1, v528);
      (v524)(v534, 1, 1, v525);
      sub_251C6FC74();
      sub_251C6FC24();
      sub_251AFB288(v174, 8u, 0, v176);
      v197 = type metadata accessor for ClinicalSharingSampleQuery(0);
      v194[17] = v197;
      v194[18] = &off_2863F6418;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v194 + 14);
      *boxed_opaque_existential_1 = v190;
      v523(boxed_opaque_existential_1 + v197[5], v176, v193);
      *(boxed_opaque_existential_1 + v197[6]) = v196;
      *(boxed_opaque_existential_1 + v197[8]) = 0;
      v199 = [v196 code];
      (v521)(v176, v193);
      v200 = 300;
      if (v199 == 144)
      {
        v200 = 10;
      }

      *(boxed_opaque_existential_1 + v197[7]) = v200;
      v201 = boxed_opaque_existential_1 + v197[9];
      *v201 = 0;
      v201[8] = 1;
      v36 = v194;
      (v539)(v174, v536);
      return v36;
    case 5uLL:
      v333 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v334 = swift_allocObject();
      v536 = v11;
      v335 = v334;
      *(v334 + 16) = xmmword_251C76AF0;
      v529 = sub_251C701E4();
      v336 = *(v529 - 8);
      v528 = *(v336 + 56);
      v530 = v336 + 56;
      v337 = v537;
      (v528)(v537, 1, 1, v529);
      v526 = sub_251C70244();
      v338 = *(v526 - 1);
      v525 = *(v338 + 56);
      *&v527 = v338 + 56;
      (v525)(v8, 1, 1, v526);
      v339 = v538;
      v534 = v8;
      v340 = v533;
      sub_251C6FC74();
      sub_251C6FC24();
      swift_retain_n();
      v341 = v532;
      sub_251AFB288(v340, 9u, 0, v532);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v333);
      v519 = v342;
      v343 = v539;
      v344 = *(v539 + 72);
      v523 = *(v539 + 80);
      v524 = v344;
      v345 = (v523 + 32) & ~v523;
      v346 = swift_allocObject();
      v522 = xmmword_251C74800;
      *(v346 + 16) = xmmword_251C74800;
      v347 = *(v343 + 16);
      *&v520 = v343 + 16;
      *&v521 = v347;
      v348 = v535;
      v347(v346 + v345, v341, v535);
      v335[7] = &type metadata for ClinicalSharingStatisticsQuery;
      v335[8] = &off_2863FD290;
      v349 = swift_allocObject();
      v335[4] = v349;
      *(v349 + 16) = v339;
      *(v349 + 24) = v346;
      v350 = v531;
      *(v349 + 32) = v531;
      *(v349 + 40) = 4;
      *(v349 + 48) = 257;
      v539 = *(v343 + 8);
      v351 = v539;
      *&v518 = v350;
      v351(v341, v348);
      v352 = *(v540 + 8);
      v540 += 8;
      v531 = v352;
      v353 = v536;
      v352(v340, v536);
      (v528)(v337, 1, 1, v529);
      (v525)(v534, 1, 1, v526);
      sub_251C6FC74();
      sub_251C6FC24();
      v354 = v538;
      sub_251AFB288(v340, 0, 0, v341);
      v355 = swift_allocObject();
      *(v355 + 16) = v522;
      v356 = v535;
      (v521)(v355 + v345, v341, v535);
      v335[12] = &type metadata for ClinicalSharingStatisticsQuery;
      v335[13] = &off_2863FD290;
      v357 = swift_allocObject();
      v335[9] = v357;
      *(v357 + 16) = v354;
      *(v357 + 24) = v355;
      v358 = v518;
      *(v357 + 32) = v518;
      *(v357 + 40) = 3;
      *(v357 + 48) = 257;
      *&v518 = v358;
      (v539)(v341, v356);
      (v531)(v340, v353);
      (v528)(v537, 1, 1, v529);
      (v525)(v534, 1, 1, v526);
      v36 = v335;
      sub_251C6FC74();
      sub_251C6FC24();
      sub_251AFB288(v340, 8u, 0, v341);
      v359 = swift_allocObject();
      *(v359 + 16) = v522;
      v360 = v535;
      (v521)(v359 + v345, v341, v535);
      v335[17] = &type metadata for ClinicalSharingStatisticsQuery;
      v335[18] = &off_2863FD290;
      v361 = swift_allocObject();
      v335[14] = v361;
      *(v361 + 16) = v354;
      *(v361 + 24) = v359;
      v362 = v518;
      *(v361 + 32) = v518;
      *(v361 + 40) = 2;
      *(v361 + 48) = 257;
      v363 = v362;
      (v539)(v341, v360);
      (v531)(v340, v536);
      return v36;
    case 7uLL:
    case 0xAuLL:
    case 0x4BuLL:
      v66 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v530 = swift_allocObject();
      *(v530 + 16) = xmmword_251C75800;
      v528 = sub_251C701E4();
      v67 = *(v528 - 8);
      *&v527 = *(v67 + 56);
      v529 = v67 + 56;
      (v527)(v537, 1, 1, v528);
      v525 = sub_251C70244();
      v68 = *(v525 - 1);
      v524 = *(v68 + 56);
      v526 = (v68 + 56);
      (v524)(v8, 1, 1, v525);
      v69 = v533;
      sub_251C6FC74();
      v536 = v11;
      v534 = v8;
      v70 = v538;
      sub_251C6FC24();
      swift_retain_n();
      v71 = v532;
      sub_251AFB288(v69, 0, 0, v532);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v66);
      *&v522 = v72;
      v73 = v539;
      v523 = *(v539 + 72);
      v519 = ((*(v539 + 80) + 32) & ~*(v539 + 80));
      v74 = v519;
      v75 = swift_allocObject();
      v521 = xmmword_251C74800;
      *(v75 + 16) = xmmword_251C74800;
      *&v520 = *(v73 + 16);
      v76 = v535;
      (v520)(&v74[v75], v71, v535);
      v77 = v530;
      *(v530 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v77 + 64) = &off_2863FD290;
      v78 = swift_allocObject();
      *(v77 + 32) = v78;
      *(v78 + 16) = v70;
      *(v78 + 24) = v75;
      v79 = v531;
      *(v78 + 32) = v531;
      *(v78 + 40) = 3;
      *(v78 + 48) = 257;
      v539 = *(v73 + 8);
      v80 = v539;
      v531 = v79;
      v80(v71, v76);
      v540 = *(v540 + 8);
      (v540)(v69, v536);
      (v527)(v537, 1, 1, v528);
      (v524)(v534, 1, 1, v525);
      v36 = v77;
      sub_251C6FC74();
      sub_251C6FC24();
      v81 = v538;
      sub_251AFB288(v69, 8u, 0, v71);
      v82 = v519;
      v83 = swift_allocObject();
      *(v83 + 16) = v521;
      v84 = v535;
      (v520)(&v82[v83], v71, v535);
      *(v36 + 96) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v36 + 104) = &off_2863FD290;
      v85 = swift_allocObject();
      *(v36 + 72) = v85;
      *(v85 + 16) = v81;
      *(v85 + 24) = v83;
      v86 = v531;
      *(v85 + 32) = v531;
      *(v85 + 40) = 2;
      *(v85 + 48) = 257;
      v87 = v86;
      (v539)(v71, v84);
      (v540)(v69, v536);
      return v36;
    case 0xFuLL:
      v534 = v8;
      v364 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v365 = swift_allocObject();
      v536 = v11;
      v530 = v365;
      *(v365 + 16) = xmmword_251C84F80;
      *&v527 = sub_251C701E4();
      v366 = *(v527 - 8);
      v367 = *(v366 + 56);
      v525 = (v366 + 56);
      v526 = v367;
      (v367)(v537, 1, 1, v527);
      v524 = sub_251C70244();
      v368 = *(v524 - 1);
      v523 = *(v368 + 56);
      *&v522 = v368 + 56;
      (v523)(v534, 1, 1, v524);
      v369 = v533;
      sub_251C6FC74();
      sub_251C6FC24();
      v370 = v538;
      swift_retain_n();
      v371 = v532;
      v372 = v370;
      sub_251AFB288(v369, 9u, 0, v532);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v364);
      v515 = v373;
      *&v518 = *(v539 + 72);
      v517 = *(v539 + 80);
      v374 = v539;
      v375 = (v517 + 32) & ~v517;
      v514 = v375;
      v376 = swift_allocObject();
      v516 = xmmword_251C74800;
      *(v376 + 16) = xmmword_251C74800;
      *&v520 = *(v374 + 16);
      *&v521 = v374 + 16;
      v377 = v376 + v375;
      v378 = v535;
      (v520)(v377, v371, v535);
      v379 = v530;
      *(v530 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v379 + 64) = &off_2863FD290;
      v380 = swift_allocObject();
      *(v379 + 32) = v380;
      *(v380 + 16) = v372;
      *(v380 + 24) = v376;
      v381 = v531;
      *(v380 + 32) = v531;
      *(v380 + 40) = 4;
      *(v380 + 48) = 257;
      v519 = *(v374 + 8);
      v382 = v519;
      v539 = v374 + 8;
      v513 = v381;
      (v382)(v371, v378);
      v383 = *(v540 + 8);
      v540 += 8;
      v531 = v383;
      v384 = v533;
      v383(v533, v536);
      (v526)(v537, 1, 1, v527);
      (v523)(v534, 1, 1, v524);
      sub_251C6FC74();
      sub_251C6FC24();
      v385 = v371;
      v386 = v371;
      v387 = v384;
      v388 = v384;
      v389 = v372;
      sub_251AFB288(v387, 0, 0, v386);
      v390 = v514;
      v391 = swift_allocObject();
      *(v391 + 16) = v516;
      v392 = v391 + v390;
      v393 = v385;
      v394 = v385;
      v395 = v535;
      (v520)(v392, v393, v535);
      v396 = v530;
      *(v530 + 96) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v396 + 104) = &off_2863FD290;
      v397 = swift_allocObject();
      *(v396 + 72) = v397;
      *(v397 + 16) = v389;
      *(v397 + 24) = v391;
      v398 = v513;
      *(v397 + 32) = v513;
      *(v397 + 40) = 3;
      *(v397 + 48) = 257;
      v513 = v398;
      (v519)(v394, v395);
      (v531)(v388, v536);
      (v526)(v537, 1, 1, v527);
      (v523)(v534, 1, 1, v524);
      sub_251C6FC74();
      sub_251C6FBE4();
      v399 = v389;
      sub_251AFB288(v388, 8u, 0, v394);
      v400 = v514;
      v401 = swift_allocObject();
      *(v401 + 16) = v516;
      v402 = v394;
      v403 = v394;
      v404 = v535;
      (v520)(v401 + v400, v403, v535);
      v405 = v530;
      *(v530 + 136) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v405 + 144) = &off_2863FD290;
      v406 = swift_allocObject();
      *(v405 + 112) = v406;
      *(v406 + 16) = v399;
      *(v406 + 24) = v401;
      v407 = v513;
      *(v406 + 32) = v513;
      *(v406 + 40) = 1;
      *(v406 + 48) = 257;
      v513 = v407;
      v408 = v404;
      (v519)(v402, v404);
      (v531)(v388, v536);
      (v526)(v537, 1, 1, v527);
      (v523)(v534, 1, 1, v524);
      sub_251C6FC74();
      sub_251C6FC24();
      v409 = v538;
      sub_251AFB288(v388, 8u, 0, v402);
      v410 = v514;
      v411 = swift_allocObject();
      *(v411 + 16) = v516;
      (v520)(v411 + v410, v402, v408);
      v412 = v530;
      *(v530 + 176) = &type metadata for ClinicalSharingStatisticsQuery;
      v412[23] = &off_2863FD290;
      v413 = swift_allocObject();
      v412[19] = v413;
      *(v413 + 16) = v409;
      *(v413 + 24) = v411;
      v414 = v513;
      *(v413 + 32) = v513;
      *(v413 + 40) = 2;
      *(v413 + 48) = 1;
      v513 = v414;
      (v519)(v402, v408);
      (v531)(v388, v536);
      (v526)(v537, 1, 1, v527);
      (v523)(v534, 1, 1, v524);
      sub_251C6FC74();
      sub_251C6FC24();
      v415 = v538;
      sub_251AFB288(v388, 8u, 1, v402);
      v416 = v514;
      v417 = swift_allocObject();
      *(v417 + 16) = v516;
      v418 = v417 + v416;
      v419 = v535;
      (v520)(v418, v402, v535);
      v412[27] = &type metadata for ClinicalSharingStatisticsQuery;
      v412[28] = &off_2863FD290;
      v420 = swift_allocObject();
      v412[24] = v420;
      *(v420 + 16) = v415;
      *(v420 + 24) = v417;
      v421 = v513;
      *(v420 + 32) = v513;
      *(v420 + 40) = 2;
      *(v420 + 48) = 1;
      v513 = v421;
      (v519)(v402, v419);
      (v531)(v388, v536);
      (v526)(v537, 1, 1, v527);
      (v523)(v534, 1, 1, v524);
      sub_251C6FC74();
      sub_251C6FC24();
      v422 = v388;
      v423 = v415;
      sub_251AFB288(v422, 8u, 2, v402);
      v424 = v514;
      v425 = swift_allocObject();
      *(v425 + 16) = v516;
      v426 = v425 + v424;
      v427 = v535;
      (v520)(v426, v402, v535);
      v412[32] = &type metadata for ClinicalSharingStatisticsQuery;
      v412[33] = &off_2863FD290;
      v428 = swift_allocObject();
      v412[29] = v428;
      *(v428 + 16) = v423;
      *(v428 + 24) = v425;
      v429 = v513;
      *(v428 + 32) = v513;
      *(v428 + 40) = 2;
      *(v428 + 48) = 1;
      v11 = v429;
      (v519)(v402, v427);
      (v531)(v533, v536);
      v430 = v534;
      (v526)(v537, 1, 1, v527);
      (v523)(v430, 1, 1, v524);
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v431 = swift_dynamicCastObjCClass();
      if (!v431)
      {
        goto LABEL_63;
      }

      v432 = v431;
      *&v518 = v11;
      v433 = sub_251C2D20C();
      if (!v433)
      {
        goto LABEL_70;
      }

      v434 = v433;
      v435 = type metadata accessor for ClinicalSharingHistogramQuery(0);
      v36 = v530;
      *(v530 + 296) = v435;
      *(v36 + 304) = &off_2863F99F0;
      v436 = __swift_allocate_boxed_opaque_existential_1((v36 + 272));
      v437 = v538;
      sub_251AFB288(v24, 0, 0, v436 + v435[5]);
      *v436 = v437;
      *(v436 + v435[6]) = v432;
      v438 = v436 + v435[7];
      *v438 = 3;
      v438[8] = 1;
      *(v436 + v435[8]) = v434;
      (v531)(v24, v536);
      (v526)(v537, 1, 1, v527);
      (v523)(v430, 1, 1, v524);
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v11 = v518;
      v439 = swift_dynamicCastObjCClass();
      if (!v439)
      {
        goto LABEL_63;
      }

      v440 = v439;
      *&v518 = v11;
      v441 = sub_251C2D20C();
      if (!v441)
      {
LABEL_70:
        v541 = 0;
        v542 = 0xE000000000000000;
        sub_251C716A4();
        v503 = [v518 description];
        goto LABEL_80;
      }

      v442 = v441;
      *(v36 + 336) = v435;
      *(v36 + 344) = &off_2863F99F0;
      v443 = __swift_allocate_boxed_opaque_existential_1((v36 + 312));
      v444 = v538;
      sub_251AFB288(v21, 9u, 0, v443 + v435[5]);
      *v443 = v444;
      *(v443 + v435[6]) = v440;
      v445 = v443 + v435[7];
      *v445 = 4;
      v445[8] = 1;
      *(v443 + v435[8]) = v442;
      v446 = v536;
      (v531)(v21, v536);
      (v526)(v537, 1, 1, v527);
      (v523)(v430, 1, 1, v524);
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v317 = v518;
      v447 = swift_dynamicCastObjCClass();
      if (!v447)
      {
        goto LABEL_75;
      }

      v448 = v447;
      v317 = v317;
      v449 = sub_251C2D20C();
      if (!v449)
      {
        goto LABEL_66;
      }

      v450 = v449;
      *(v36 + 376) = v435;
      *(v36 + 384) = &off_2863F99F0;
      v451 = __swift_allocate_boxed_opaque_existential_1((v36 + 352));
      v452 = v538;
      sub_251AFB288(v18, 8u, 0, v451 + v435[5]);
      *v451 = v452;
      *(v451 + v435[6]) = v448;
      v453 = v451 + v435[7];
      *v453 = 2;
      v453[8] = 1;
      *(v451 + v435[8]) = v450;
      (v531)(v18, v446);
      (v526)(v537, 1, 1, v527);
      (v523)(v430, 1, 1, v524);
      v454 = v528;
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v455 = swift_dynamicCastObjCClass();
      if (!v455)
      {
        goto LABEL_75;
      }

      v456 = v455;
      v457 = v317;
      v458 = sub_251C2D20C();
      if (!v458)
      {
        v541 = 0;
        v542 = 0xE000000000000000;
        sub_251C716A4();
        v503 = [v457 description];
        goto LABEL_80;
      }

      v459 = v458;
      *(v36 + 416) = v435;
      *(v36 + 424) = &off_2863F99F0;
      v460 = __swift_allocate_boxed_opaque_existential_1((v36 + 392));
      v461 = v538;
      sub_251AFB288(v454, 8u, 1, v460 + v435[5]);
      *v460 = v461;
      *(v460 + v435[6]) = v456;
      v462 = v460 + v435[7];
      *v462 = 2;
      v462[8] = 1;
      *(v460 + v435[8]) = v459;
      (v531)(v454, v536);
      (v526)(v537, 1, 1, v527);
      (v523)(v430, 1, 1, v524);
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v463 = swift_dynamicCastObjCClass();
      if (!v463)
      {
        v541 = 0;
        v542 = 0xE000000000000000;
        sub_251C716A4();

        v502 = [v457 description];
        goto LABEL_78;
      }

      v464 = v463;
      v528 = v457;
      v465 = sub_251C2D20C();
      if (!v465)
      {
        v541 = 0;
        v542 = 0xE000000000000000;
        sub_251C716A4();
        v503 = [v528 description];
        goto LABEL_80;
      }

      v466 = v465;
      *(v36 + 456) = v435;
      *(v36 + 464) = &off_2863F99F0;
      v467 = __swift_allocate_boxed_opaque_existential_1((v36 + 432));
      v468 = v529;
      v469 = v538;
      sub_251AFB288(v529, 8u, 2, v467 + v435[5]);
      *v467 = v469;
      *(v467 + v435[6]) = v464;
      v470 = v467 + v435[7];
      *v470 = 2;
      v470[8] = 1;
      *(v467 + v435[8]) = v466;
      (v531)(v468, v536);
      (v526)(v537, 1, 1, v527);
      (v523)(v430, 1, 1, v524);
      v471 = v533;
      sub_251C6FC74();
      sub_251C6FBE4();
      v472 = v532;
      sub_251AFB288(v471, 8u, 0, v532);
      v473 = type metadata accessor for ClinicalSharingSampleQuery(0);
      *(v36 + 496) = v473;
      *(v36 + 504) = &off_2863F6418;
      v474 = __swift_allocate_boxed_opaque_existential_1((v36 + 472));
      *v474 = v469;
      v475 = v535;
      (v520)(v474 + v473[5], v472, v535);
      v476 = v528;
      *(v474 + v473[6]) = v528;
      *(v474 + v473[8]) = 1;
      v477 = [v476 code];
      (v519)(v472, v475);
      v478 = 300;
      if (v477 == 144)
      {
        v478 = 10;
      }

      *(v474 + v473[7]) = v478;
      v479 = v474 + v473[9];
      *v479 = 40;
      v479[8] = 0;
      (v531)(v471, v536);
      return v36;
    case 0x10uLL:
    case 0x11uLL:
      v135 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v136 = swift_allocObject();
      v536 = v11;
      v137 = v136;
      *(v136 + 16) = xmmword_251C76AF0;
      v529 = sub_251C701E4();
      v138 = *(v529 - 8);
      v528 = *(v138 + 56);
      *&v522 = v138 + 56;
      (v528)(v537, 1, 1, v529);
      v526 = sub_251C70244();
      v139 = *(v526 - 1);
      v525 = *(v139 + 56);
      *&v527 = v139 + 56;
      (v525)(v8, 1, 1, v526);
      v140 = v533;
      sub_251C6FC74();
      sub_251C6FC24();
      v141 = v538;
      swift_retain_n();
      v534 = v8;
      v142 = v532;
      sub_251AFB288(v140, 0, 0, v532);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v135);
      *&v520 = v143;
      v144 = v539;
      v519 = *(v539 + 72);
      v145 = *(v539 + 80);
      *&v516 = (v145 + 32) & ~v145;
      v146 = swift_allocObject();
      v518 = xmmword_251C74800;
      *(v146 + 16) = xmmword_251C74800;
      v147 = *(v144 + 16);
      v523 = (v144 + 16);
      v524 = v147;
      v148 = v535;
      (v147)(v146 + ((v145 + 32) & ~v145), v142, v535);
      v149 = v540;
      v137[7] = &type metadata for ClinicalSharingStatisticsQuery;
      v137[8] = &off_2863FD290;
      v530 = v137;
      v150 = swift_allocObject();
      v137[4] = v150;
      *(v150 + 16) = v141;
      *(v150 + 24) = v146;
      v151 = v531;
      *(v150 + 32) = v531;
      *(v150 + 40) = 3;
      *(v150 + 48) = 257;
      *&v521 = *(v144 + 8);
      v152 = v521;
      v517 = v151;
      v152(v142, v148);
      v153 = *(v149 + 8);
      v539 = v144 + 8;
      v540 = v149 + 8;
      v531 = v153;
      v153(v140, v536);
      v154 = v537;
      (v528)(v537, 1, 1, v529);
      (v525)(v534, 1, 1, v526);
      sub_251C6FC74();
      sub_251C6FC24();
      v155 = v142;
      v156 = v142;
      v157 = v538;
      sub_251AFB288(v140, 8u, 0, v156);
      v158 = v516;
      v159 = swift_allocObject();
      *(v159 + 16) = v518;
      v160 = v535;
      (v524)(v159 + v158, v155, v535);
      v161 = v530;
      *(v530 + 96) = &type metadata for ClinicalSharingStatisticsQuery;
      v161[13] = &off_2863FD290;
      v162 = swift_allocObject();
      v161[9] = v162;
      *(v162 + 16) = v157;
      *(v162 + 24) = v159;
      v163 = v517;
      *(v162 + 32) = v517;
      *(v162 + 40) = 2;
      *(v162 + 48) = 257;
      v164 = v163;
      (v521)(v155, v160);
      (v531)(v140, v536);
      (v528)(v154, 1, 1, v529);
      (v525)(v534, 1, 1, v526);
      sub_251C6FC74();
      sub_251C6FC24();
      sub_251AFB288(v140, 8u, 0, v155);
      v165 = type metadata accessor for ClinicalSharingSampleQuery(0);
      v161[17] = v165;
      v161[18] = &off_2863F6418;
      v166 = __swift_allocate_boxed_opaque_existential_1(v161 + 14);
      *v166 = v157;
      (v524)(v166 + v165[5], v155, v160);
      *(v166 + v165[6]) = v164;
      *(v166 + v165[8]) = 0;
      v167 = [v164 code];
      (v521)(v155, v160);
      v168 = 300;
      if (v167 == 144)
      {
        v168 = 10;
      }

      *(v166 + v165[7]) = v168;
      v169 = v166 + v165[9];
      *v169 = 0;
      v169[8] = 1;
      v36 = v161;
      v134 = v140;
      goto LABEL_11;
    case 0x39uLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_251C74800;
      v480 = sub_251C701E4();
      (*(*(v480 - 8) + 56))(v537, 1, 1, v480);
      v481 = sub_251C70244();
      (*(*(v481 - 8) + 56))(v8, 1, 1, v481);
      v482 = v538;
      v91 = v533;
      sub_251C6FC74();
      sub_251C6FC24();

      v92 = v532;
      sub_251AFB288(v91, 8u, 0, v532);
      v93 = type metadata accessor for ClinicalSharingSampleQuery(0);
      *(v36 + 56) = v93;
      *(v36 + 64) = &off_2863F6418;
      v94 = __swift_allocate_boxed_opaque_existential_1((v36 + 32));
      *v94 = v482;
      v95 = v539;
      v96 = v535;
      (*(v539 + 16))(v94 + v93[5], v92, v535);
      v97 = v531;
      *(v94 + v93[6]) = v531;
      *(v94 + v93[8]) = 0;
      goto LABEL_46;
    case 0x3FuLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_251C747F0;
      v216 = v538;
      swift_retain_n();
      v217 = sub_251C6FF94();
      v218 = sub_251C70114();
      v219 = [v217 hk:v218 morningIndexWithCalendar:?];

      v11 = v219 - 28;
      if (!__OFSUB__(v219, 28))
      {

        sub_251A8223C(0, &qword_27F479E00, 0x277CCD0C0);
        v220 = *MEMORY[0x277CCBAB8];
        v221 = MEMORY[0x25308D1B0]();
        *(v36 + 56) = &type metadata for ClinicalSharingSleepDaySummaryQuery;
        *(v36 + 64) = &off_2863FE7D8;
        v222 = swift_allocObject();
        *(v36 + 32) = v222;
        v222[2] = v216;
        v222[3] = v11;
        v222[4] = 28;
        v222[5] = v221;
        v223 = type metadata accessor for ClinicalSharingSleepStatisticsQuery(0);
        *(v36 + 96) = v223;
        *(v36 + 104) = &off_2863F8508;
        v224 = __swift_allocate_boxed_opaque_existential_1((v36 + 72));
        sub_251B0A43C(v216, 364, 0, v224);
        *(v36 + 136) = v223;
        *(v36 + 144) = &off_2863F8508;
        v225 = __swift_allocate_boxed_opaque_existential_1((v36 + 112));
        sub_251B0A43C(v216, 156, 1, v225);
        *(v36 + 176) = v223;
        *(v36 + 184) = &off_2863F8508;
        v226 = __swift_allocate_boxed_opaque_existential_1((v36 + 152));
        sub_251B0A43C(v216, 36, 2, v226);
        v227 = MEMORY[0x25308D1B0](v220);
        *(v36 + 216) = &type metadata for ClinicalSharingSleepSummaryQuery;
        *(v36 + 224) = &off_2863FCAD0;
        *(v36 + 192) = v216;
        *(v36 + 200) = v227;
        return v36;
      }

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
      v541 = 0;
      v542 = 0xE000000000000000;
      sub_251C716A4();

      v502 = [v11 description];
      goto LABEL_78;
    case 0x76uLL:
      v262 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v263 = swift_allocObject();
      v536 = v11;
      v530 = v263;
      *(v263 + 16) = xmmword_251C7C1F0;
      v525 = sub_251C701E4();
      v264 = *(v525 - 1);
      v524 = *(v264 + 56);
      v529 = v264 + 56;
      (v524)(v537, 1, 1, v525);
      v528 = sub_251C70244();
      v265 = *(v528 - 8);
      v266 = *(v265 + 56);
      v526 = (v265 + 56);
      *&v527 = v266;
      v266(v8, 1, 1, v528);
      v267 = v538;
      v534 = v8;
      v268 = v533;
      sub_251C6FC74();
      sub_251C6FC24();
      swift_retain_n();
      v269 = v532;
      v270 = v268;
      v271 = v267;
      sub_251AFB288(v270, 9u, 0, v532);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v262);
      *&v522 = v272;
      v523 = *(v539 + 72);
      *&v521 = *(v539 + 80);
      v273 = v539;
      v274 = (v521 + 32) & ~v521;
      *&v516 = v274;
      v275 = swift_allocObject();
      v520 = xmmword_251C74800;
      *(v275 + 16) = xmmword_251C74800;
      *&v518 = *(v273 + 16);
      v519 = (v273 + 16);
      v276 = v275 + v274;
      v277 = v535;
      (v518)(v276, v269, v535);
      v278 = v530;
      *(v530 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
      v278[8] = &off_2863FD290;
      v279 = swift_allocObject();
      v278[4] = v279;
      *(v279 + 16) = v271;
      *(v279 + 24) = v275;
      v280 = v531;
      *(v279 + 32) = v531;
      *(v279 + 40) = 4;
      *(v279 + 48) = 257;
      v281 = *(v273 + 8);
      v539 = v273 + 8;
      v517 = v281;
      v515 = v280;
      v281(v269, v277);
      v282 = *(v540 + 8);
      v540 += 8;
      v531 = v282;
      v283 = v533;
      v282(v533, v536);
      (v524)(v537, 1, 1, v525);
      (v527)(v534, 1, 1, v528);
      sub_251C6FC74();
      sub_251C6FC24();
      v284 = v269;
      v285 = v538;
      sub_251AFB288(v283, 0, 0, v269);
      v286 = v516;
      v287 = swift_allocObject();
      *(v287 + 16) = v520;
      v288 = v287 + v286;
      v289 = v535;
      (v518)(v288, v284, v535);
      v278[12] = &type metadata for ClinicalSharingStatisticsQuery;
      v278[13] = &off_2863FD290;
      v290 = swift_allocObject();
      v278[9] = v290;
      *(v290 + 16) = v285;
      *(v290 + 24) = v287;
      v291 = v515;
      *(v290 + 32) = v515;
      *(v290 + 40) = 3;
      *(v290 + 48) = 257;
      v515 = v291;
      v292 = v284;
      (v517)(v284, v289);
      (v531)(v283, v536);
      (v524)(v537, 1, 1, v525);
      (v527)(v534, 1, 1, v528);
      sub_251C6FC74();
      sub_251C6FC24();
      v293 = v538;
      sub_251AFB288(v283, 8u, 0, v284);
      v294 = v516;
      v295 = swift_allocObject();
      *(v295 + 16) = v520;
      v296 = v295 + v294;
      v297 = v292;
      (v518)(v296, v292, v289);
      v298 = v530;
      *(v530 + 136) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v298 + 144) = &off_2863FD290;
      v299 = v298;
      v300 = swift_allocObject();
      *(v299 + 112) = v300;
      *(v300 + 16) = v293;
      *(v300 + 24) = v295;
      v301 = v515;
      *(v300 + 32) = v515;
      *(v300 + 40) = 2;
      *(v300 + 48) = 257;
      v11 = v301;
      (v517)(v297, v289);
      v302 = v534;
      (v531)(v283, v536);
      (v524)(v537, 1, 1, v525);
      (v527)(v302, 1, 1, v528);
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v303 = swift_dynamicCastObjCClass();
      if (!v303)
      {
        goto LABEL_63;
      }

      v304 = v303;
      v305 = v11;
      v306 = sub_251C2D20C();
      if (!v306)
      {
        goto LABEL_64;
      }

      v307 = v306;
      v308 = type metadata accessor for ClinicalSharingHistogramQuery(0);
      v309 = v530;
      *(v530 + 176) = v308;
      *(v309 + 184) = &off_2863F99F0;
      v310 = __swift_allocate_boxed_opaque_existential_1((v309 + 152));
      v311 = v538;
      sub_251AFB288(v33, 0, 0, v310 + v308[5]);
      *v310 = v311;
      *(v310 + v308[6]) = v304;
      v312 = v310 + v308[7];
      *v312 = 3;
      v312[8] = 1;
      *(v310 + v308[8]) = v307;
      (v531)(v33, v536);
      v314 = v524;
      v313 = v525;
      (v524)(v537, 1, 1, v525);
      (v527)(v534, 1, 1, v528);
      sub_251C6FC74();
      sub_251C6FC24();
      objc_opt_self();
      v315 = swift_dynamicCastObjCClass();
      if (!v315)
      {
        v541 = 0;
        v542 = 0xE000000000000000;
        sub_251C716A4();

        v502 = [v305 description];
LABEL_78:
        v504 = v502;
        v505 = sub_251C70F14();
        v507 = v506;

        v541 = v505;
        v542 = v507;
        MEMORY[0x25308CDA0](0xD00000000000002BLL, 0x8000000251C90A90);
LABEL_81:
        result = sub_251C717E4();
        __break(1u);
        return result;
      }

      v316 = v315;
      v317 = v305;
      v318 = sub_251C2D20C();
      if (!v318)
      {
LABEL_66:
        v541 = 0;
        v542 = 0xE000000000000000;
        sub_251C716A4();
        v503 = [v317 description];
        goto LABEL_80;
      }

      v319 = v318;
      v320 = v530;
      *(v530 + 216) = v308;
      *(v320 + 224) = &off_2863F99F0;
      v321 = __swift_allocate_boxed_opaque_existential_1((v320 + 192));
      v322 = v538;
      sub_251AFB288(v30, 9u, 0, v321 + v308[5]);
      *v321 = v322;
      *(v321 + v308[6]) = v316;
      v323 = v321 + v308[7];
      *v323 = 4;
      v323[8] = 1;
      *(v321 + v308[8]) = v319;
      (v531)(v30, v536);
      v314(v537, 1, 1, v313);
      (v527)(v534, 1, 1, v528);
      sub_251C6FC74();
      sub_251C6FC34();
      objc_opt_self();
      v324 = swift_dynamicCastObjCClass();
      if (!v324)
      {
LABEL_75:
        v541 = 0;
        v542 = 0xE000000000000000;
        sub_251C716A4();

        v502 = [v317 description];
        goto LABEL_78;
      }

      v325 = v324;
      v305 = v317;
      v326 = sub_251C2D20C();
      if (!v326)
      {
LABEL_64:
        v541 = 0;
        v542 = 0xE000000000000000;
        sub_251C716A4();
        v503 = [v305 description];
LABEL_80:
        v508 = v503;
        v509 = sub_251C70F14();
        v511 = v510;

        MEMORY[0x25308CDA0](v509, v511);

        MEMORY[0x25308CDA0](0xD00000000000003ALL, 0x8000000251C90AC0);
        goto LABEL_81;
      }

      v327 = v326;
      v328 = v530;
      *(v530 + 256) = v308;
      *(v328 + 264) = &off_2863F99F0;
      v329 = __swift_allocate_boxed_opaque_existential_1((v328 + 232));
      v330 = v538;
      sub_251AFB288(v27, 8u, 0, v329 + v308[5]);
      *v329 = v330;
      *(v329 + v308[6]) = v325;
      v331 = v329 + v308[7];
      *v331 = 2;
      v331[8] = 1;
      *(v329 + v308[8]) = v327;
      v36 = v328;
      (v531)(v27, v536);
      return v36;
    case 0x7CuLL:
      v236 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v237 = swift_allocObject();
      v536 = v11;
      v238 = v237;
      *(v237 + 16) = xmmword_251C76AF0;
      v529 = sub_251C701E4();
      v239 = *(v529 - 8);
      v528 = *(v239 + 56);
      v530 = v239 + 56;
      v240 = v537;
      (v528)(v537, 1, 1, v529);
      v526 = sub_251C70244();
      v241 = *(v526 - 1);
      v525 = *(v241 + 56);
      *&v527 = v241 + 56;
      (v525)(v8, 1, 1, v526);
      v242 = v538;
      v534 = v8;
      v42 = v533;
      sub_251C6FC74();
      sub_251C6FC24();
      swift_retain_n();
      v243 = v532;
      sub_251AFB288(v42, 0, 0, v532);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v236);
      v244 = v539;
      v523 = *(v539 + 72);
      v524 = v245;
      *&v522 = *(v539 + 80);
      v246 = (v522 + 32) & ~v522;
      v247 = swift_allocObject();
      v521 = xmmword_251C74800;
      *(v247 + 16) = xmmword_251C74800;
      v519 = *(v244 + 16);
      *&v520 = v244 + 16;
      v248 = v535;
      (v519)(v247 + v246, v243, v535);
      v238[7] = &type metadata for ClinicalSharingStatisticsQuery;
      v238[8] = &off_2863FD290;
      v249 = swift_allocObject();
      v238[4] = v249;
      *(v249 + 16) = v242;
      *(v249 + 24) = v247;
      v250 = v531;
      *(v249 + 32) = v531;
      *(v249 + 40) = 3;
      *(v249 + 48) = 257;
      v539 = *(v244 + 8);
      v251 = v539;
      *&v518 = v250;
      v251(v243, v248);
      v252 = *(v540 + 8);
      v540 += 8;
      v531 = v252;
      v253 = v536;
      v252(v42, v536);
      (v528)(v240, 1, 1, v529);
      (v525)(v534, 1, 1, v526);
      sub_251C6FC74();
      sub_251C6FC24();
      v254 = v538;
      sub_251AFB288(v42, 9u, 0, v243);
      v255 = swift_allocObject();
      *(v255 + 16) = v521;
      (v519)(v255 + v246, v243, v248);
      v238[12] = &type metadata for ClinicalSharingStatisticsQuery;
      v238[13] = &off_2863FD290;
      v256 = swift_allocObject();
      v238[9] = v256;
      *(v256 + 16) = v254;
      *(v256 + 24) = v255;
      v257 = v518;
      *(v256 + 32) = v518;
      *(v256 + 40) = 4;
      *(v256 + 48) = 257;
      *&v518 = v257;
      (v539)(v243, v248);
      (v531)(v42, v253);
      (v528)(v537, 1, 1, v529);
      (v525)(v534, 1, 1, v526);
      v36 = v238;
      sub_251C6FC74();
      sub_251C6FC24();
      sub_251AFB288(v42, 8u, 0, v243);
      v258 = swift_allocObject();
      *(v258 + 16) = v521;
      (v519)(v258 + v246, v243, v248);
      v238[17] = &type metadata for ClinicalSharingStatisticsQuery;
      v238[18] = &off_2863FD290;
      v259 = swift_allocObject();
      v238[14] = v259;
      *(v259 + 16) = v254;
      *(v259 + 24) = v258;
      v260 = v518;
      *(v259 + 32) = v518;
      *(v259 + 40) = 2;
      *(v259 + 48) = 257;
      v261 = v260;
      (v539)(v243, v248);
      goto LABEL_7;
    case 0x8CuLL:
    case 0x93uLL:
    case 0x9CuLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_251C74800;
      v88 = sub_251C701E4();
      (*(*(v88 - 8) + 56))(v537, 1, 1, v88);
      v89 = sub_251C70244();
      (*(*(v89 - 8) + 56))(v8, 1, 1, v89);
      v90 = v538;
      v91 = v533;
      sub_251C6FC74();
      sub_251C6FC24();

      v92 = v532;
      sub_251AFB288(v91, 8u, 0, v532);
      v93 = type metadata accessor for ClinicalSharingSampleQuery(0);
      *(v36 + 56) = v93;
      *(v36 + 64) = &off_2863F6418;
      v94 = __swift_allocate_boxed_opaque_existential_1((v36 + 32));
      *v94 = v90;
      v95 = v539;
      v96 = v535;
      (*(v539 + 16))(v94 + v93[5], v92, v535);
      v97 = v531;
      *(v94 + v93[6]) = v531;
      *(v94 + v93[8]) = 1;
LABEL_46:
      v483 = [v97 code];
      (*(v95 + 8))(v92, v96);
      v484 = 300;
      if (v483 == 144)
      {
        v484 = 10;
      }

      *(v94 + v93[7]) = v484;
      v485 = v94 + v93[9];
      *v485 = 0;
      v485[8] = 1;
      (*(v540 + 8))(v91, v11);
      return v36;
    case 0x97uLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_251C74800;
      sub_251A8223C(0, &qword_27F479AB8, 0x277CCD608);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v494 = *MEMORY[0x277CCCE90];
      v11 = v538;

      v495 = [ObjCClassFromMetadata vaccinationRecordTypeForIdentifier_];
      if (!v495)
      {
        goto LABEL_60;
      }

      v496 = v495;
      v490 = type metadata accessor for ClinicalSharingMedicalRecordsQuery(0);
      *(v36 + 56) = v490;
      *(v36 + 64) = &off_2863F7B00;
      v491 = __swift_allocate_boxed_opaque_existential_1((v36 + 32));
      (*(v539 + 56))(v491 + *(v490 + 28), 1, 1, v535);
      *v491 = v11;
      v491[1] = v496;
      v492 = 6;
      goto LABEL_53;
    case 0x98uLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_251C74800;
      sub_251A8223C(0, &qword_27F479AB8, 0x277CCD608);
      v486 = swift_getObjCClassFromMetadata();
      v487 = *MEMORY[0x277CCBCA8];
      v11 = v538;

      v488 = [v486 diagnosticTestResultTypeForIdentifier_];
      if (!v488)
      {
        goto LABEL_59;
      }

      v489 = v488;
      v490 = type metadata accessor for ClinicalSharingMedicalRecordsQuery(0);
      *(v36 + 56) = v490;
      *(v36 + 64) = &off_2863F7B00;
      v491 = __swift_allocate_boxed_opaque_existential_1((v36 + 32));
      (*(v539 + 56))(v491 + *(v490 + 28), 1, 1, v535);
      *v491 = v11;
      v491[1] = v489;
      v492 = 2;
LABEL_53:
      v491[2] = v492;
      *(v491 + *(v490 + 32)) = 4;
      return v36;
    case 0x99uLL:
      v202 = v538;
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_251C76AF0;
      sub_251A8223C(0, &qword_27F479AB8, 0x277CCD608);
      v203 = swift_getObjCClassFromMetadata();
      v204 = [v203 medicationOrderTypeForIdentifier_];
      if (!v204)
      {
        goto LABEL_58;
      }

      v205 = v204;
      v206 = type metadata accessor for ClinicalSharingMedicalRecordsQuery(0);
      *(v36 + 56) = v206;
      *(v36 + 64) = &off_2863F7B00;
      v207 = __swift_allocate_boxed_opaque_existential_1((v36 + 32));
      v11 = *(v539 + 56);
      v208 = v535;
      (v11)(v207 + *(v206 + 28), 1, 1, v535);
      *v207 = v202;
      v207[1] = v205;
      v207[2] = 1;
      *(v207 + *(v206 + 32)) = 4;
      v209 = *MEMORY[0x277CCC410];
      swift_retain_n();
      v210 = [v203 medicationRecordTypeForIdentifier_];
      if (!v210)
      {
        goto LABEL_61;
      }

      v211 = v210;
      *(v36 + 96) = v206;
      *(v36 + 104) = &off_2863F7B00;
      v212 = __swift_allocate_boxed_opaque_existential_1((v36 + 72));
      (v11)(v212 + *(v206 + 28), 1, 1, v208);
      *v212 = v202;
      v212[1] = v211;
      v212[2] = 1;
      *(v212 + *(v206 + 32)) = 4;
      v213 = [v203 medicationDispenseRecordTypeForIdentifier_];
      if (!v213)
      {
        goto LABEL_62;
      }

      v214 = v213;
      *(v36 + 136) = v206;
      *(v36 + 144) = &off_2863F7B00;
      v215 = __swift_allocate_boxed_opaque_existential_1((v36 + 112));
      (v11)(v215 + *(v206 + 28), 1, 1, v208);
      *v215 = v202;
      v215[1] = v214;
      v215[2] = 1;
      *(v215 + *(v206 + 32)) = 4;
      return v36;
    case 0x9BuLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_251C763E0;
      v332 = v538;
      sub_251C08FF4(0, v538, (v36 + 32));
      sub_251C08FF4(1, v332, (v36 + 72));
      sub_251C08FF4(2, v332, (v36 + 112));
      sub_251C08FF4(3, v332, (v36 + 152));
      return v36;
    case 0xB6uLL:
    case 0xBBuLL:
    case 0xBCuLL:
    case 0xC2uLL:
      v37 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_251C763E0;
      v519 = sub_251C701E4();
      v39 = *(v519 - 1);
      v524 = *(v39 + 56);
      *&v522 = v39 + 56;
      (v524)(v537, 1, 1, v519);
      v517 = sub_251C70244();
      v40 = *(v517 - 8);
      v523 = *(v40 + 56);
      *&v518 = v40 + 56;
      (v523)(v8, 1, 1, v517);
      v41 = v538;
      v534 = v8;
      v42 = v533;
      sub_251C6FC74();
      sub_251C6FC24();
      swift_retain_n();
      v43 = v532;
      sub_251AFB288(v42, 9u, 0, v532);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v37);
      v529 = v44;
      *&v521 = *(v539 + 72);
      v536 = v11;
      v45 = v540;
      v528 = *(v539 + 80);
      v46 = v539;
      v47 = (v528 + 32) & ~v528;
      *&v516 = v47;
      v48 = swift_allocObject();
      v527 = xmmword_251C74800;
      *(v48 + 16) = xmmword_251C74800;
      v49 = *(v46 + 16);
      v525 = (v46 + 16);
      v526 = v49;
      v50 = v48 + v47;
      v51 = v535;
      (v49)(v50, v43, v535);
      *(v38 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v38 + 64) = &off_2863FD290;
      v530 = v38;
      v52 = swift_allocObject();
      *(v38 + 32) = v52;
      *(v52 + 16) = v41;
      *(v52 + 24) = v48;
      v53 = v531;
      *(v52 + 32) = v531;
      *(v52 + 40) = 4;
      *(v52 + 48) = 257;
      *&v520 = *(v46 + 8);
      v54 = v520;
      v539 = v46 + 8;
      v515 = v53;
      v54(v43, v51);
      v55 = *(v45 + 8);
      v540 = v45 + 8;
      v531 = v55;
      v55(v42, v11);
      v56 = v519;
      (v524)(v537, 1, 1, v519);
      v57 = v517;
      (v523)(v534, 1, 1, v517);
      sub_251C6FC74();
      sub_251C6FC24();
      v58 = v538;
      sub_251AFB288(v42, 0, 0, v43);
      v59 = v516;
      v60 = swift_allocObject();
      *(v60 + 16) = v527;
      (v526)(v60 + v59, v43, v51);
      v61 = v530;
      *(v530 + 96) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v61 + 104) = &off_2863FD290;
      v62 = swift_allocObject();
      *(v61 + 72) = v62;
      *(v62 + 16) = v58;
      *(v62 + 24) = v60;
      v63 = v515;
      *(v62 + 32) = v515;
      *(v62 + 40) = 3;
      *(v62 + 48) = 257;
      v64 = v63;
      (v520)(v43, v51);
      (v531)(v42, v536);
      v65 = v537;
      (v524)(v537, 1, 1, v56);
      (v523)(v534, 1, 1, v57);
      sub_251C6FC74();
      sub_251C6FC24();
      goto LABEL_6;
    case 0xB7uLL:
    case 0xC3uLL:
    case 0xC4uLL:
      v98 = MEMORY[0x277D84560];
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_251C763E0;
      v519 = sub_251C701E4();
      v100 = *(v519 - 1);
      v524 = *(v100 + 56);
      *&v522 = v100 + 56;
      (v524)(v537, 1, 1, v519);
      v517 = sub_251C70244();
      v101 = *(v517 - 8);
      v523 = *(v101 + 56);
      *&v518 = v101 + 56;
      (v523)(v8, 1, 1, v517);
      v102 = v538;
      v534 = v8;
      v42 = v533;
      sub_251C6FC74();
      sub_251C6FC24();
      swift_retain_n();
      v43 = v532;
      sub_251AFB288(v42, 9u, 0, v532);
      sub_251C0A950(0, &qword_27F47C388, MEMORY[0x277CC88A8], v98);
      v529 = v103;
      *&v521 = *(v539 + 72);
      v536 = v11;
      v104 = v540;
      v528 = *(v539 + 80);
      v105 = v539;
      v106 = (v528 + 32) & ~v528;
      *&v516 = v106;
      v107 = swift_allocObject();
      v527 = xmmword_251C74800;
      *(v107 + 16) = xmmword_251C74800;
      v108 = *(v105 + 16);
      v525 = (v105 + 16);
      v526 = v108;
      v109 = v107 + v106;
      v51 = v535;
      (v108)(v109, v43, v535);
      *(v99 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v99 + 64) = &off_2863FD290;
      v530 = v99;
      v110 = swift_allocObject();
      *(v99 + 32) = v110;
      *(v110 + 16) = v102;
      *(v110 + 24) = v107;
      v111 = v531;
      *(v110 + 32) = v531;
      *(v110 + 40) = 4;
      *(v110 + 48) = 257;
      *&v520 = *(v105 + 8);
      v112 = v520;
      v539 = v105 + 8;
      v515 = v111;
      v112(v43, v51);
      v113 = *(v104 + 8);
      v540 = v104 + 8;
      v531 = v113;
      v113(v42, v11);
      v114 = v519;
      (v524)(v537, 1, 1, v519);
      v115 = v517;
      (v523)(v534, 1, 1, v517);
      sub_251C6FC74();
      sub_251C6FC24();
      v116 = v538;
      sub_251AFB288(v42, 0, 0, v43);
      v117 = v516;
      v118 = swift_allocObject();
      *(v118 + 16) = v527;
      (v526)(v118 + v117, v43, v51);
      v119 = v530;
      *(v530 + 96) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v119 + 104) = &off_2863FD290;
      v120 = swift_allocObject();
      *(v119 + 72) = v120;
      *(v120 + 16) = v116;
      *(v120 + 24) = v118;
      v121 = v515;
      *(v120 + 32) = v515;
      *(v120 + 40) = 3;
      *(v120 + 48) = 257;
      v64 = v121;
      (v520)(v43, v51);
      (v531)(v42, v536);
      v65 = v537;
      (v524)(v537, 1, 1, v114);
      (v523)(v534, 1, 1, v115);
      sub_251C6FC74();
      sub_251C6FC34();
LABEL_6:
      v122 = v538;
      sub_251AFB288(v42, 8u, 0, v43);
      v123 = v516;
      v124 = swift_allocObject();
      *(v124 + 16) = v527;
      v125 = v51;
      (v526)(v124 + v123, v43, v51);
      v36 = v530;
      *(v530 + 136) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v36 + 144) = &off_2863FD290;
      v126 = swift_allocObject();
      *(v36 + 112) = v126;
      *(v126 + 16) = v122;
      *(v126 + 24) = v124;
      *(v126 + 32) = v64;
      *(v126 + 40) = 2;
      *(v126 + 48) = 257;
      v127 = v64;
      v128 = v125;
      v129 = v520;
      (v520)(v43, v128);
      (v531)(v42, v536);
      (v524)(v65, 1, 1, v519);
      (v523)(v534, 1, 1, v517);
      sub_251C6FC74();
      sub_251C6FC34();
      sub_251AFB288(v42, 8u, 0, v43);
      v130 = swift_allocObject();
      *(v130 + 16) = v527;
      v131 = v535;
      (v526)(v130 + v123, v43, v535);
      *(v36 + 176) = &type metadata for ClinicalSharingStatisticsQuery;
      *(v36 + 184) = &off_2863FD290;
      v132 = swift_allocObject();
      *(v36 + 152) = v132;
      *(v132 + 16) = v122;
      *(v132 + 24) = v130;
      *(v132 + 32) = v127;
      *(v132 + 40) = 1;
      *(v132 + 48) = 257;
      v133 = v127;
      v129(v43, v131);
LABEL_7:
      v134 = v42;
LABEL_11:
      (v531)(v134, v536);
      return v36;
    case 0xF9uLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_251C74800;
      v497 = sub_251C701E4();
      (*(*(v497 - 8) + 56))(v537, 1, 1, v497);
      v498 = sub_251C70244();
      (*(*(v498 - 8) + 56))(v8, 1, 1, v498);
      v230 = v538;

      v499 = v533;
      sub_251C6FC74();
      sub_251C6FC24();
      v500 = type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery(0);
      *(v36 + 56) = v500;
      *(v36 + 64) = &off_2863F5DC8;
      v233 = __swift_allocate_boxed_opaque_existential_1((v36 + 32));
      sub_251AFB288(v499, 8u, 0, v233 + *(v500 + 20));
      (*(v540 + 8))(v499, v11);
      v234 = *(v500 + 24);
      sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
      v235 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC948]);
      goto LABEL_55;
    case 0xFAuLL:
      sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_251C74800;
      v228 = sub_251C701E4();
      (*(*(v228 - 8) + 56))(v537, 1, 1, v228);
      v229 = sub_251C70244();
      (*(*(v229 - 8) + 56))(v8, 1, 1, v229);
      v230 = v538;

      v231 = v533;
      sub_251C6FC74();
      sub_251C6FC24();
      v232 = type metadata accessor for ClinicalSharingWalkingSteadinessEventQuery(0);
      *(v36 + 56) = v232;
      *(v36 + 64) = &off_2863FA228;
      v233 = __swift_allocate_boxed_opaque_existential_1((v36 + 32));
      sub_251AFB288(v231, 8u, 0, v233 + *(v232 + 20));
      (*(v540 + 8))(v231, v11);
      v234 = *(v232 + 24);
      sub_251A8223C(0, &qword_27F479E00, 0x277CCD0C0);
      v235 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB8E8]);
LABEL_55:
      *(v233 + v234) = v235;
      *v233 = v230;
      return v36;
    default:
      return v36;
  }
}

id sub_251C08FF4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_251C0A950(0, &qword_27F4793D8, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  sub_251C0A950(0, &qword_27F4793E0, MEMORY[0x277CC99E8], v5);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_251C6FC94();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A8223C(0, &qword_27F479AB8, 0x277CCD608);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = *MEMORY[0x277CCBCA8];
  v27 = a2;

  result = [ObjCClassFromMetadata diagnosticTestResultTypeForIdentifier_];
  if (result)
  {
    v19 = result;
    v20 = type metadata accessor for ClinicalSharingMedicalRecordsQuery(0);
    a3[3] = v20;
    a3[4] = &off_2863F7B00;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    v22 = *(v20 + 28);
    v23 = sub_251C701E4();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    v24 = sub_251C70244();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    sub_251C6FC74();
    sub_251C6FC24();
    v25 = v27;
    sub_251AFB288(v15, 8u, 0, boxed_opaque_existential_1 + v22);
    (*(v13 + 8))(v15, v12);
    v26 = sub_251C6FAE4();
    result = (*(*(v26 - 8) + 56))(boxed_opaque_existential_1 + v22, 0, 1, v26);
    *boxed_opaque_existential_1 = v25;
    boxed_opaque_existential_1[1] = v19;
    boxed_opaque_existential_1[2] = 3;
    *(boxed_opaque_existential_1 + *(v20 + 32)) = v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251C093BC(uint64_t a1)
{
  v2 = type metadata accessor for ClinicalSharingCycleTrackingQuery(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_251C0B674(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_251C0A854(v8, v5, type metadata accessor for ClinicalSharingCycleTrackingQuery);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_251C0B674((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_2863FCEA0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_251C0A854(v5, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCycleTrackingQuery);
      *(v7 + 16) = v11 + 1;
      sub_251A7E8D8(&v14, v7 + 40 * v11 + 32);
      sub_251C0A34C(v5, type metadata accessor for ClinicalSharingCycleTrackingQuery);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_251C0958C(uint64_t a1)
{
  v16 = type metadata accessor for PBTypedData(0);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C0A950(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_251C0BF34(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_251C0A854(v11, v4, type metadata accessor for PBTypedData);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_251C0BF34((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_251C0A8BC(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_251C097D4(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = sub_251C701E4();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 56);
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v11 = *MEMORY[0x277CCCB90];

  v12 = v11;
  *v9 = MEMORY[0x25308D1E0]();
  (*(v7 + 104))(v9, *MEMORY[0x277D112F0], v6);
  v29 = v9;
  v13 = *(sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v28, v10) + 16);

  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    sub_251A82418();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251C86470;
    *(inited + 32) = [objc_opt_self() electrocardiogramType];
    sub_251A8223C(0, &qword_27F479E00, 0x277CCD0C0);
    *(inited + 40) = MEMORY[0x25308D1B0](*MEMORY[0x277CCB9B8]);
    *(inited + 48) = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA10]);
    *(inited + 56) = MEMORY[0x25308D1B0](*MEMORY[0x277CCB9E0]);
    v15 = v27;
    (*(v3 + 16))(v5, a2 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v27);
    v16 = [objc_allocWithZone(MEMORY[0x277CCD2D8]) init];
    v17 = MEMORY[0x28223BE20](v16);
    *(&v26 - 2) = v26;
    *(&v26 - 1) = v5;
    sub_251BF1F94(v17, sub_251C0A00C, (&v26 - 4), inited);
    v19 = v18;

    v20 = MEMORY[0x25308D1E0](v12);
    sub_251C0A950(0, &qword_27F47C378, sub_251C0A028, MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_251C74800;
    v22 = [v19 mergedIntervals];
    sub_251C6FAE4();
    v23 = sub_251C71154();

    *(v21 + 56) = &type metadata for ClinicalSharingStatisticsQuery;
    *(v21 + 64) = &off_2863FD290;
    v24 = swift_allocObject();
    *(v21 + 32) = v24;
    *(v24 + 16) = a2;
    *(v24 + 24) = v23;
    *(v24 + 32) = v20;
    *(v24 + 40) = 6;
    *(v24 + 48) = 1;

    (*(v3 + 8))(v5, v15);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v21;
}

unint64_t sub_251C09C2C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v52 = a1;
  v53 = a4;
  v7 = sub_251C70014();
  v57 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v55 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v42 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v56 = v42 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v42 - v15;
  v58 = sub_251C6FAE4();
  v17 = *(v58 - 8);
  v18 = MEMORY[0x28223BE20](v58);
  v54 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v18);
  v22 = v42 - v21;
  if (*(a3 + 16))
  {
    result = sub_251AC8CD0(*a2);
    if (v23)
    {
      result = *(*(a3 + 56) + 8 * result);
      v24 = *(result + 16);
      if (v24)
      {
        v42[0] = result;
        v42[1] = v4;
        v25 = *v52;
        v27 = *(v17 + 16);
        v26 = v17 + 16;
        v51 = v27;
        v52 = v25;
        v28 = result + ((*(v26 + 64) + 32) & ~*(v26 + 64));
        v29 = *(v26 + 56);
        v49 = v7;
        v50 = v29;
        v44 = (v57 + 8);
        v47 = (v26 - 8);
        v48 = v12;

        v45 = v16;
        v46 = v26;
        v30 = v58;
        v43 = v22;
        do
        {
          v57 = v24;
          v31 = v43;
          v51(v43, v28, v30);
          sub_251C6FAB4();
          v32 = v56;
          sub_251C6FF84();
          v33 = v55;
          sub_251C700C4();
          sub_251C6FF74();
          sub_251C6FF84();
          v34 = *v44;
          v35 = v33;
          v36 = v49;
          (*v44)(v35, v49);
          v37 = v54;
          sub_251C6FAA4();
          v38 = v32;
          v39 = v57;
          v34(v38, v36);
          v34(v16, v36);
          v40 = sub_251C6FA64();
          v41 = *v47;
          (*v47)(v37, v58);
          [v52 insertInterval_];

          v30 = v58;
          v41(v31, v58);
          v28 += v50;
          v24 = v39 - 1;
        }

        while (v24);
      }
    }
  }

  return result;
}

unint64_t sub_251C0A028()
{
  result = qword_27F4791E8;
  if (!qword_27F4791E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4791E8);
  }

  return result;
}

uint64_t sub_251C0A08C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_251C70074();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_251C0A34C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C0A3AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C0A950(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_251C0A41C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = a4;
      v17 = (*(a4 + 48) + ((v10 << 11) | (32 * v15)));
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      *v9 = *v17;
      v9[1] = v18;
      v9[2] = v19;
      v9[3] = v20;
      if (v12 == v24)
      {

        sub_251A858C4(v19, v20);
        a4 = v16;
        v6 = v23;
        a3 = v24;
        goto LABEL_24;
      }

      v9 += 4;

      sub_251A858C4(v19, v20);
      result = v12;
      v21 = __OFADD__(v12++, 1);
      a4 = v16;
      if (v21)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v22 = v10 + 1;
    }

    else
    {
      v22 = v11;
    }

    v10 = v22 - 1;
    a3 = result;
    v6 = v23;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_251C0A5B0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_251C70074();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_251C0A854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C0A8BC(uint64_t a1, uint64_t a2)
{
  sub_251C0A950(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_251C0A950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251C0A9B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_251C0AA1C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t DecodingError.hdhr_friendlyDescription.getter()
{
  v1 = sub_251C71704();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v47 - v6;
  v8 = sub_251C71714();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v11, v0, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277D84160])
  {
    (*(v9 + 96))(v11, v8);
    sub_251C0CB3C(0, &qword_27F47C398, sub_251C0B2B8, MEMORY[0x277D84190]);
    (*(v2 + 32))(v5, v11 + *(v13 + 48), v1);
    v14 = DecodingError.Context.hdhr_keyPathRepresentation.getter();
    v16 = v15;
    v50[0] = 0x20746F6E5B2ELL;
    v50[1] = 0xE600000000000000;
    v17 = sub_251C71B64();
    MEMORY[0x25308CDA0](v17);

    MEMORY[0x25308CDA0](93, 0xE100000000000000);
    v53 = v14;
    v54 = v16;
    v53 = sub_251C71094();
    v54 = v18;
    sub_251C70FE4();
    (*(v2 + 8))(v5, v1);
    goto LABEL_5;
  }

  if (v12 == *MEMORY[0x277D84170])
  {
    (*(v9 + 96))(v11, v8);
    sub_251C0CB3C(0, &qword_27F47C398, sub_251C0B2B8, MEMORY[0x277D84190]);
    (*(v2 + 32))(v5, v11 + *(v19 + 48), v1);
    v20 = DecodingError.Context.hdhr_keyPathRepresentation.getter();
    v22 = v21;
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    sub_251C716A4();

    strcpy(v50, ".[not found; ");
    HIWORD(v50[1]) = -4864;
    v23 = sub_251C71B64();
    MEMORY[0x25308CDA0](v23);

    MEMORY[0x25308CDA0](93, 0xE100000000000000);
    v53 = v20;
    v54 = v22;
    v53 = sub_251C71094();
    v54 = v24;
    sub_251C70FE4();
    (*(v2 + 8))(v5, v1);
    goto LABEL_5;
  }

  if (v12 == *MEMORY[0x277D84158])
  {
    (*(v9 + 96))(v11, v8);
    sub_251C0B518(0);
    v27 = *(v26 + 48);
    sub_251A7E8D8(v11, v50);
    (*(v2 + 32))(v5, v11 + v27, v1);
    v28 = DecodingError.Context.hdhr_keyPathRepresentation.getter();
    v30 = v29;
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_251C716A4();

    v53 = 46;
    v54 = 0xE100000000000000;
    v31 = v51;
    v32 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v33 = CodingKey.hdhr_keyPathRepresentation.getter(v31, v32);
    MEMORY[0x25308CDA0](v33);

    MEMORY[0x25308CDA0](0x73696D2073695B2ELL, 0xED00005D676E6973);
    v48 = v28;
    v49 = v30;
    v48 = sub_251C71094();
    v49 = v34;
    sub_251C70FE4();
    (*(v2 + 8))(v5, v1);

    v35 = v48;
    __swift_destroy_boxed_opaque_existential_1(v50);
    return v35;
  }

  if (v12 != *MEMORY[0x277D84168])
  {
    v35 = sub_251C71A44();
    (*(v9 + 8))(v11, v8);
    return v35;
  }

  (*(v9 + 96))(v11, v8);
  (*(v2 + 32))(v7, v11, v1);
  v36 = sub_251C716F4();
  v38 = v37;

  if ((v38 & 0x2000000000000000) != 0)
  {
    v39 = HIBYTE(v38) & 0xF;
  }

  else
  {
    v39 = v36 & 0xFFFFFFFFFFFFLL;
  }

  v40 = DecodingError.Context.hdhr_keyPathRepresentation.getter();
  v42 = v40;
  v43 = v41;
  if (!v39)
  {
    v50[0] = 0xD000000000000011;
    v50[1] = 0x8000000251C90B00;
    v53 = v40;
    v54 = v41;
    v53 = sub_251C71094();
    v54 = v46;
    sub_251C70FE4();
    (*(v2 + 8))(v7, v1);
    return v53;
  }

  v50[0] = 23342;
  v50[1] = 0xE200000000000000;
  v44 = sub_251C716F4();
  MEMORY[0x25308CDA0](v44);

  MEMORY[0x25308CDA0](93, 0xE100000000000000);
  v53 = v42;
  v54 = v43;
  v53 = sub_251C71094();
  v54 = v45;
  sub_251C70FE4();
  (*(v2 + 8))(v7, v1);
LABEL_5:

  return v53;
}

unint64_t sub_251C0B2B8()
{
  result = qword_27F47C3A0;
  if (!qword_27F47C3A0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F47C3A0);
  }

  return result;
}

uint64_t CodingKey.hdhr_keyPathRepresentation.getter(uint64_t a1, uint64_t a2)
{
  sub_251C71B34();
  if ((v4 & 1) == 0)
  {
    return sub_251C719A4();
  }

  return MEMORY[0x2821FE6F8](a1, a2);
}

uint64_t DecodingError.Context.hdhr_keyPathRepresentation.getter()
{
  v0 = sub_251C716E4();
  v1 = *(v0 + 16);
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_251C0B6AC(0, v1, 0);
    v2 = v17;
    v3 = v0 + 32;
    do
    {
      sub_251A823B4(v3, v14);
      v4 = v15;
      v5 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v6 = CodingKey.hdhr_keyPathRepresentation.getter(v4, v5);
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_1(v14);
      v17 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_251C0B6AC((v9 > 1), v10 + 1, 1);
        v2 = v17;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v14[0] = v2;
  sub_251C0D400(0, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_251AF3520();
  v12 = sub_251C70EA4();

  return v12;
}

void sub_251C0B518(uint64_t a1)
{
  if (!qword_27F47C3A8)
  {
    sub_251AA98B0(255, &qword_27F47C3B0, MEMORY[0x277D84F00]);
    sub_251C71704();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47C3A8);
    }
  }
}

void *sub_251C0B59C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D334, type metadata accessor for PBCategorySeries.Event);
  *v3 = result;
  return result;
}

void *sub_251C0B5E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CA38, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_251C0B62C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CA04, type metadata accessor for AccountSummary);
  *v3 = result;
  return result;
}

void *sub_251C0B674(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0C7C4(a1, a2, a3, *v3, &qword_27F47C378, &qword_27F4791E8, &protocol descriptor for ClinicalSharingQuery);
  *v3 = result;
  return result;
}

char *sub_251C0B6AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0BFA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_251C0B6CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CE18, type metadata accessor for PBTimeSeries.Value);
  *v3 = result;
  return result;
}

void *sub_251C0B714(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0C0CC, MEMORY[0x277CC88A8]);
  *v3 = result;
  return result;
}

void *sub_251C0B75C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CDB0, sub_251ABCCD4);
  *v3 = result;
  return result;
}

void *sub_251C0B7A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CAA0, MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

char *sub_251C0B7EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0C100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_251C0B80C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0C21C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_251C0B82C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D194, type metadata accessor for PBPatientMeta.CHRMeta);
  *v3 = result;
  return result;
}

void *sub_251C0B874(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D12C, type metadata accessor for PBMedicationTrackingSchedule);
  *v3 = result;
  return result;
}

void *sub_251C0B8BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D160, type metadata accessor for PBHKMedicationScheduleIntervalData);
  *v3 = result;
  return result;
}

void *sub_251C0B904(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CA6C, type metadata accessor for PBDeleteBlob);
  *v3 = result;
  return result;
}

void *sub_251C0B94C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D1FC, type metadata accessor for PBClinicalRecord);
  *v3 = result;
  return result;
}

void *sub_251C0B994(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D264, type metadata accessor for PBHKCodedValue);
  *v3 = result;
  return result;
}

void *sub_251C0B9DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D298, type metadata accessor for PBHKInspectableValue);
  *v3 = result;
  return result;
}

void *sub_251C0BA24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D2CC, type metadata accessor for PBHKReferenceRange);
  *v3 = result;
  return result;
}

char *sub_251C0BA6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0C340(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_251C0BA8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CDE4, type metadata accessor for ClinicalSharingDataNodeInfo);
  *v3 = result;
  return result;
}

void *sub_251C0BAD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CB08, type metadata accessor for PBNode);
  *v3 = result;
  return result;
}

void *sub_251C0BB1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CD7C, type metadata accessor for ClinicalSharingCategoryNodeInfo);
  *v3 = result;
  return result;
}

void *sub_251C0BB64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0C480(a1, a2, a3, *v3, &qword_27F47C3F8, &qword_27F479C98, type metadata accessor for PBNode);
  *v3 = result;
  return result;
}

void *sub_251C0BBA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0C480(a1, a2, a3, *v3, &qword_27F47C400, &qword_27F479928, sub_251AE65AC);
  *v3 = result;
  return result;
}

void *sub_251C0BBEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CAD4, type metadata accessor for PBBlob);
  *v3 = result;
  return result;
}

char *sub_251C0BC34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0C6A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_251C0BC54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D230, type metadata accessor for PBHKConcept);
  *v3 = result;
  return result;
}

void *sub_251C0BC9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D0C4, type metadata accessor for PBHistogramSeries.Value);
  *v3 = result;
  return result;
}

void *sub_251C0BCE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D368, type metadata accessor for PBBucket);
  *v3 = result;
  return result;
}

void *sub_251C0BD2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D300, type metadata accessor for PBMedicationDosage);
  *v3 = result;
  return result;
}

void *sub_251C0BD74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0C7C4(a1, a2, a3, *v3, &qword_27F47C420, &qword_27F4798E0, &protocol descriptor for WebRequest);
  *v3 = result;
  return result;
}

void *sub_251C0BDAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D1C8, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
  *v3 = result;
  return result;
}

void *sub_251C0BDF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0C918, type metadata accessor for PBECGMeasurement);
  *v3 = result;
  return result;
}

char *sub_251C0BE3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CC24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_251C0BE5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CE4C, type metadata accessor for PBMedicationTracking);
  *v3 = result;
  return result;
}

void *sub_251C0BEA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CD48, type metadata accessor for PBReference);
  *v3 = result;
  return result;
}

void *sub_251C0BEEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D0F8, type metadata accessor for PBMedicationTrackingDoseEvent);
  *v3 = result;
  return result;
}

void *sub_251C0BF34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D05C, sub_251C0D090);
  *v3 = result;
  return result;
}

char *sub_251C0BFA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C0D400(0, &qword_27F4793D0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

char *sub_251C0C100(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C0D400(0, &qword_27F47C4B0, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_251C0C21C(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C0D400(0, &qword_27F479720, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_251C0C340(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C0D400(0, &qword_27F47C3E0, &type metadata for ClinicalSharingFHIRSearchEntry, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_251C0C480(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_251C0CBB8(0, a5, a6, a7);
  sub_251C0CB3C(0, a6, a7, type metadata accessor for ClinicalSharingSyncContext);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v17) == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_29;
  }

  v18[2] = v13;
  v18[3] = 2 * ((result - v17) / v16);
LABEL_19:
  sub_251C0CB3C(0, a6, a7, type metadata accessor for ClinicalSharingSyncContext);
  v21 = *(v20 - 8);
  if (v10)
  {
    if (v18 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v18 + v22 >= a4 + v22 + *(v21 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

char *sub_251C0C6A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C0D400(0, &qword_27F47C3D0, MEMORY[0x277CC9318], MEMORY[0x277D84560]);
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

void *sub_251C0C7C4(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_251C0C9AC(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_251AA98B0(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void sub_251C0C9AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_251AA98B0(255, a3, a4);
    v5 = sub_251C719B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251C0CB3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_251C0CBB8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251C0CB3C(255, a3, a4, type metadata accessor for ClinicalSharingSyncContext);
    v5 = sub_251C719B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

char *sub_251C0CC24(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C0D400(0, &qword_27F47A080, &type metadata for HTTPHeader, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_251C0CE80(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (!v12)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  a5(0);
  v13 = *(a6(0) - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (!v14)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v15) == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_29;
  }

  v16[2] = v11;
  v16[3] = 2 * ((result - v15) / v14);
LABEL_19:
  v18 = *(a6(0) - 8);
  if (v8)
  {
    if (v16 < a4 || (v19 = (*(v18 + 80) + 32) & ~*(v18 + 80), v16 + v19 >= a4 + v19 + *(v18 + 72) * v11))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_251C0D39C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251C0D400(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251C0D450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  sub_251ABCCD4(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = sub_251C70014();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v35 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  type metadata accessor for PBDateRange(0);
  sub_251C703A4();
  sub_251C15994(a1, v10, sub_251ABCCD4);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v36 = v3;
  if (v18 == 1)
  {
    sub_251C159FC(v10, sub_251ABCCD4);
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    v19 = *(*v3 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v20 = sub_251C6FF94();
    v21 = v12;
    v22 = [v19 stringFromDate_];

    v23 = sub_251C70F14();
    v25 = v24;

    v12 = v21;
    (*(v21 + 8))(v16, v11);
    *a3 = v23;
    *(a3 + 8) = v25;
  }

  v26 = v37;
  sub_251C15994(v38, v37, sub_251ABCCD4);
  if (v17(v26, 1, v11) == 1)
  {
    return sub_251C159FC(v26, sub_251ABCCD4);
  }

  v28 = v35;
  (*(v12 + 32))(v35, v26, v11);
  v29 = *(*v36 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v30 = sub_251C6FF94();
  v31 = [v29 stringFromDate_];

  v32 = sub_251C70F14();
  v34 = v33;

  result = (*(v12 + 8))(v28, v11);
  *(a3 + 16) = v32;
  *(a3 + 24) = v34;
  return result;
}

uint64_t sub_251C0D7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  sub_251ABCCD4(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = sub_251C70014();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  type metadata accessor for PBDateRange(0);
  sub_251C703A4();
  sub_251C15994(a1, v11, sub_251ABCCD4);
  v18 = *(v13 + 48);
  v19 = v18(v11, 1, v12);
  v37 = v3;
  if (v19 == 1)
  {
    sub_251C159FC(v11, sub_251ABCCD4);
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    v20 = *(*(v3 + *(type metadata accessor for ClinicalSharingCycleTrackingQuery(0) + 20)) + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v21 = sub_251C6FF94();
    v22 = v13;
    v23 = [v20 stringFromDate_];

    v24 = sub_251C70F14();
    v26 = v25;

    v13 = v22;
    (*(v22 + 8))(v17, v12);
    *a3 = v24;
    *(a3 + 8) = v26;
  }

  sub_251C15994(v38, v9, sub_251ABCCD4);
  if (v18(v9, 1, v12) == 1)
  {
    return sub_251C159FC(v9, sub_251ABCCD4);
  }

  v28 = v36;
  (*(v13 + 32))(v36, v9, v12);
  v29 = *(*(v37 + *(type metadata accessor for ClinicalSharingCycleTrackingQuery(0) + 20)) + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v30 = sub_251C6FF94();
  v31 = [v29 stringFromDate_];

  v32 = sub_251C70F14();
  v34 = v33;

  result = (*(v13 + 8))(v28, v12);
  *(a3 + 16) = v32;
  *(a3 + 24) = v34;
  return result;
}

uint64_t sub_251C0DBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a3;
  sub_251ABCCD4(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = sub_251C70014();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  type metadata accessor for PBDateRange(0);
  sub_251C703A4();
  sub_251C15994(a1, v11, sub_251ABCCD4);
  v18 = *(v13 + 48);
  if (v18(v11, 1, v12) == 1)
  {
    sub_251C159FC(v11, sub_251ABCCD4);
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    v19 = *(v36 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v20 = sub_251C6FF94();
    v21 = [v19 stringFromDate_];

    v22 = sub_251C70F14();
    v24 = v23;

    (*(v13 + 8))(v17, v12);
    *a4 = v22;
    *(a4 + 8) = v24;
  }

  sub_251C15994(v35, v9, sub_251ABCCD4);
  if (v18(v9, 1, v12) == 1)
  {
    return sub_251C159FC(v9, sub_251ABCCD4);
  }

  v26 = v34;
  (*(v13 + 32))(v34, v9, v12);
  v27 = *(v36 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v28 = sub_251C6FF94();
  v29 = [v27 stringFromDate_];

  v30 = sub_251C70F14();
  v32 = v31;

  result = (*(v13 + 8))(v26, v12);
  *(a4 + 16) = v30;
  *(a4 + 24) = v32;
  return result;
}

int64_t sub_251C0DF14(uint64_t a1)
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

uint64_t sub_251C0DFC8@<X0>(unint64_t a1@<X8>)
{
  v71 = a1;
  sub_251C15A90(0, &qword_27F4795A8, sub_251ABCCD4, MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v95 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v93 = &v69 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v89 = &v69 - v8;
  MEMORY[0x28223BE20](v7);
  v84 = (&v69 - v9);
  sub_251ABCCD4(0);
  v11 = *(v10 - 8);
  v91 = v10;
  v92 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v69 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v69 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v74 = &v69 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v88 = &v69 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v69 - v26;
  MEMORY[0x28223BE20](v25);
  v72 = &v69 - v28;
  v29 = sub_251C70014();
  v76 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v69 - v33;
  v36 = *v1;
  v35 = *(v1 + 8);
  v37 = *(v1 + 16);
  v96 = *(v1 + 24);
  v97 = v35;
  v98 = *(v1 + 32);
  v99 = v37;
  v101 = v36;
  v70 = v36 >> 62;
  if (v36 >> 62)
  {
    goto LABEL_52;
  }

  v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v39 = *(v1 + 40);
  v1 = *(v1 + 48);
  v73 = v39;
  sub_251C15AF4(&v101, &v100);

  v75 = v1;

  v87 = v29;
  v94 = v20;
  v90 = v34;
  v81 = v32;
  if (v38)
  {
    v29 = 0;
    v85 = v36 & 0xFFFFFFFFFFFFFF8;
    v86 = v36 & 0xC000000000000001;
    while (1)
    {
      if (v86)
      {
        v40 = MEMORY[0x25308D460](v29, v36);
      }

      else
      {
        if (v29 >= *(v85 + 16))
        {
          goto LABEL_51;
        }

        v40 = *(v36 + 8 * v29 + 32);
      }

      v20 = v40;
      v32 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        goto LABEL_50;
      }

      v100 = v40;
      v34 = v27;
      v41 = v88;
      v97(&v100);

      v42 = v41;
      v27 = v34;
      sub_251C149B4(v42, v34, sub_251ABCCD4);
      v1 = v98;
      if (v96(v34))
      {
        break;
      }

      sub_251C159FC(v34, sub_251ABCCD4);
      ++v29;
      v43 = v32 == v38;
      v32 = v89;
      if (v43)
      {
        v44 = 1;
        v29 = v87;
        goto LABEL_17;
      }
    }

    sub_251C149B4(v34, v84, sub_251ABCCD4);
    v44 = 0;
    v38 = v29 + 1;
    v29 = v87;
  }

  else
  {
    v44 = 1;
  }

  v32 = v89;
LABEL_17:
  v45 = v91;
  v46 = v92;
  v1 = 1;
  v47 = v84;
  v85 = *(v92 + 56);
  v86 = v92 + 56;
  (v85)(v84, v44, 1, v91);
  sub_251AC1050(v47, v32);
  v48 = *(v46 + 48);
  v92 = v46 + 48;
  v84 = v48;
  v43 = (v48)(v32, 1, v45) == 1;
  v49 = v32;
  v50 = v72;
  if (!v43)
  {
    v51 = v74;
    sub_251C149B4(v49, v74, sub_251ABCCD4);
    v73(v51);
    sub_251C159FC(v51, sub_251ABCCD4);
    v1 = 0;
  }

  v20 = v76;
  v88 = *(v76 + 7);
  v89 = v76 + 56;
  (v88)(v50, v1, 1, v29);
  v82 = *(v20 + 6);
  v83 = v20 + 48;
  if (v82(v50, 1, v29) == 1)
  {
    sub_251C15B70(&v101);

    sub_251C159FC(v50, sub_251ABCCD4);
    v52 = 1;
    v53 = v71;
  }

  else
  {
    v54 = *(v20 + 4);
    v80 = v20 + 32;
    v79 = v54;
    v54(v90, v50, v29);
    v34 = (v36 & 0xFFFFFFFFFFFFFF8);
    if (v70)
    {
      v27 = sub_251C717F4();
    }

    else
    {
      v27 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = (v36 & 0xC000000000000001);
    v76 = v20 + 8;
    v78 = v14;
    v77 = v36;
    while (1)
    {
      if (v38 != v27)
      {
        do
        {
          if (v32)
          {
            v56 = MEMORY[0x25308D460](v38, v36);
          }

          else
          {
            if ((v38 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              v38 = sub_251C717F4();
              goto LABEL_3;
            }

            if (v38 >= *(v34 + 2))
            {
              goto LABEL_49;
            }

            v56 = *(v36 + 8 * v38 + 32);
          }

          v20 = v56;
          v29 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_48;
          }

          v100 = v56;
          v97(&v100);

          sub_251C149B4(v14, v17, sub_251ABCCD4);
          v1 = v98;
          if (v96(v17))
          {
            sub_251C149B4(v17, v93, sub_251ABCCD4);
            v55 = 0;
            ++v38;
            goto LABEL_40;
          }

          sub_251C159FC(v17, sub_251ABCCD4);
          ++v38;
        }

        while (v29 != v27);
      }

      v55 = 1;
      v38 = v27;
LABEL_40:
      v57 = 1;
      v58 = v93;
      v59 = v91;
      (v85)(v93, v55, 1, v91);
      v60 = v58;
      v61 = v95;
      sub_251AC1050(v60, v95);
      if ((v84)(v61, 1, v59) != 1)
      {
        v62 = v74;
        sub_251C149B4(v95, v74, sub_251ABCCD4);
        v73(v62);
        sub_251C159FC(v62, sub_251ABCCD4);
        v57 = 0;
      }

      v63 = v94;
      v64 = v57;
      v1 = v87;
      (v88)(v94, v64, 1, v87);
      if (v82(v63, 1, v1) == 1)
      {
        break;
      }

      v20 = v81;
      v65 = v79;
      v79(v81, v63, v1);
      sub_251C15454(&qword_27F4795A0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v29 = v90;
      v66 = sub_251C70EB4();
      v67 = *v76;
      if (v66)
      {
        v67(v29, v1);
        v65(v29, v20, v1);
      }

      else
      {
        v67(v20, v1);
      }

      v36 = v77;
      v14 = v78;
    }

    sub_251C15B70(&v101);

    sub_251C159FC(v63, sub_251ABCCD4);
    v53 = v71;
    v79(v71, v90, v1);
    v52 = 0;
    v29 = v1;
  }

  return (v88)(v53, v52, 1, v29);
}

uint64_t sub_251C0EA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_251C70014();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_251C15454(&qword_27F4795A0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v20 = sub_251C70EB4();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

void *sub_251C0ECE0(void (*a1)(void **), uint64_t a2, unint64_t a3)
{
  v29 = a1;
  sub_251C14A1C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PBCategorySeries.Event(0);
  v24 = *(v28 - 8);
  v7 = MEMORY[0x28223BE20](v28);
  v27 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v23 = &v23 - v9;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v11 = 0;
    v25 = a3 & 0xFFFFFFFFFFFFFF8;
    v26 = a3 & 0xC000000000000001;
    v12 = (v24 + 48);
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v26)
      {
        v14 = MEMORY[0x25308D460](v11, a3);
      }

      else
      {
        if (v11 >= *(v25 + 16))
        {
          goto LABEL_18;
        }

        v14 = *(a3 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v17 = a3;
      v18 = MEMORY[0x25308DB30]();
      v30 = v15;
      v29(&v30);
      objc_autoreleasePoolPop(v18);

      if ((*v12)(v6, 1, v28) == 1)
      {
        sub_251C159FC(v6, sub_251C14A1C);
      }

      else
      {
        v19 = v23;
        sub_251C149B4(v6, v23, type metadata accessor for PBCategorySeries.Event);
        sub_251C149B4(v19, v27, type metadata accessor for PBCategorySeries.Event);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_251C39894(0, v13[2] + 1, 1, v13);
        }

        v21 = v13[2];
        v20 = v13[3];
        if (v21 >= v20 >> 1)
        {
          v13 = sub_251C39894((v20 > 1), v21 + 1, 1, v13);
        }

        v13[2] = v21 + 1;
        sub_251C149B4(v27, v13 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, type metadata accessor for PBCategorySeries.Event);
      }

      a3 = v17;
      ++v11;
      if (v16 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_251C0F00C(void (*a1)(void **), uint64_t a2, unint64_t a3)
{
  v29 = a1;
  sub_251C15960(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PBCycleTracking.Event(0);
  v24 = *(v28 - 8);
  v7 = MEMORY[0x28223BE20](v28);
  v27 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v23 = &v23 - v9;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v11 = 0;
    v25 = a3 & 0xFFFFFFFFFFFFFF8;
    v26 = a3 & 0xC000000000000001;
    v12 = (v24 + 48);
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v26)
      {
        v14 = MEMORY[0x25308D460](v11, a3);
      }

      else
      {
        if (v11 >= *(v25 + 16))
        {
          goto LABEL_18;
        }

        v14 = *(a3 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v17 = a3;
      v18 = MEMORY[0x25308DB30]();
      v30 = v15;
      v29(&v30);
      objc_autoreleasePoolPop(v18);

      if ((*v12)(v6, 1, v28) == 1)
      {
        sub_251C159FC(v6, sub_251C15960);
      }

      else
      {
        v19 = v23;
        sub_251C149B4(v6, v23, type metadata accessor for PBCycleTracking.Event);
        sub_251C149B4(v19, v27, type metadata accessor for PBCycleTracking.Event);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_251C398C8(0, v13[2] + 1, 1, v13);
        }

        v21 = v13[2];
        v20 = v13[3];
        if (v21 >= v20 >> 1)
        {
          v13 = sub_251C398C8((v20 > 1), v21 + 1, 1, v13);
        }

        v13[2] = v21 + 1;
        sub_251C149B4(v27, v13 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, type metadata accessor for PBCycleTracking.Event);
      }

      a3 = v17;
      ++v11;
      if (v16 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_251C0F338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v44 = a2;
  v39 = a4;
  v6 = sub_251C701E4();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251C6FAE4();
  v36 = v8;
  v41 = *(v8 - 8);
  v9 = v41;
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v37 = &v35 - v12;
  v14 = sub_251C70074();
  v42 = *(v14 - 8);
  v15 = v42;
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v15 + 16);
  v38 = v14;
  v35(v17, a1, v14);
  v18 = *(v9 + 16);
  v18(v13, a3, v8);
  v19 = type metadata accessor for ClinicalSharingCycleTrackingQuery(0);
  v20 = [objc_opt_self() hk_gregorianCalendarWithUTCTimeZone];
  v21 = v39;
  sub_251C70124();

  v35(v21, v17, v14);
  v22 = v44;
  *&v21[v19[5]] = v44;
  v23 = &v21[v19[6]];
  v24 = v21;
  v25 = v36;
  v26 = v37;
  v18(v23, v37, v36);
  v27 = v40;
  v18(v40, v26, v25);
  v28 = v43;
  (*(v45 + 16))(v43, v22 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v46);

  v29 = sub_251C560A4(v27, v28);
  v30 = &v24[v19[7]];
  *v30 = v29;
  v30[1] = v31;
  v32 = *(v22 + 56);
  *&v24[v19[8]] = sub_251C13D5C(v32, v17);
  v33 = sub_251C24D54(v32, v17);
  (*(v41 + 8))(v26, v25);
  (*(v42 + 8))(v17, v38);
  *&v24[v19[9]] = v33;
  return (*(*(v19 - 1) + 56))(v24, 0, 1, v19);
}

uint64_t type metadata accessor for ClinicalSharingCycleTrackingQuery(uint64_t a1)
{
  result = qword_27F47C4B8;
  if (!qword_27F47C4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251C0F754()
{
  v1 = v0;
  sub_251C15134(0, &qword_27F479AD0, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277CBCE88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v48 - v5;
  sub_251C1435C(0);
  v60 = v7;
  v68 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v64 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C1474C(0);
  v10 = v9;
  v63 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v66 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C1463C(0);
  v67 = v12;
  v65 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = v48 - v16;
  v17 = type metadata accessor for ClinicalSharingCycleTrackingQuery(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v19;
  v21 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C14448(0);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  if ((*(v1 + *(v17 + 32)) & 2) != 0)
  {
    v29 = *(v1 + *(v17 + 20));
    v54 = v1;
    v52 = v24;
    v55 = v48 - v25;
    v61 = v26;
    v51 = v27;
    sub_251A823B4(v29 + 16, v70);
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v49 = off_2863FD730(&type metadata for ClinicalSharingQueryDefaultDataProvider);
    v69 = v49;
    v59 = type metadata accessor for ClinicalSharingCycleTrackingQuery;
    sub_251C15994(v1, v21, type metadata accessor for ClinicalSharingCycleTrackingQuery);
    v30 = *(v18 + 80);
    v57 = v20;
    v58 = v30;
    v31 = (v30 + 16) & ~v30;
    v32 = swift_allocObject();
    v56 = type metadata accessor for ClinicalSharingCycleTrackingQuery;
    sub_251C149B4(v21, v32 + v31, type metadata accessor for ClinicalSharingCycleTrackingQuery);
    v48[1] = sub_251C70964();
    sub_251C14534(0);
    v53 = v10;
    v48[2] = type metadata accessor for PBTypedData(0);
    sub_251C15134(0, &qword_27F47C4F8, type metadata accessor for PBTypedData, MEMORY[0x277CBCD88]);
    v33 = MEMORY[0x277CBCD90];
    sub_251C15454(&qword_27F47C518, sub_251C14534, MEMORY[0x277CBCD90]);
    sub_251C145B4();
    v50 = v15;
    v34 = v55;
    sub_251C70B94();

    __swift_destroy_boxed_opaque_existential_1(v70);
    v35 = v54;
    v70[0] = sub_251C106F0();
    sub_251C15994(v35, v21, v59);
    v36 = swift_allocObject();
    sub_251C149B4(v21, v36 + v31, v56);
    v37 = MEMORY[0x277CBCD88];
    sub_251C14A84(0, &qword_27F478D60, MEMORY[0x277CBCD88]);
    sub_251C14708(&qword_27F478D78, &qword_27F478D60, v37, v33);
    v38 = v62;
    sub_251C70AA4();

    v39 = v52;
    (*(v61 + 16))(v51, v34, v52);
    v40 = v65;
    v41 = v67;
    (*(v65 + 16))(v50, v38, v67);
    sub_251C15454(&qword_27F47C520, sub_251C14448, MEMORY[0x277CBCCE0]);
    sub_251C15454(&qword_27F47C528, sub_251C1463C, MEMORY[0x277CBCB10]);
    v42 = v64;
    sub_251C70884();
    sub_251C15994(v54, v21, v59);
    v43 = swift_allocObject();
    sub_251C149B4(v21, v43 + v31, v56);
    type metadata accessor for ClinicalSharingQueryOutput(0);
    sub_251C15454(&qword_27F47C538, sub_251C1435C, MEMORY[0x277CBCC60]);
    v44 = v66;
    v45 = v60;
    sub_251C70AE4();

    (*(v68 + 8))(v42, v45);
    sub_251C15454(&qword_27F47C540, sub_251C1474C, MEMORY[0x277CBCC08]);
    v46 = v53;
    v28 = sub_251C70A94();
    (*(v63 + 8))(v44, v46);
    (*(v40 + 8))(v38, v41);
    (*(v61 + 8))(v55, v39);
  }

  else
  {
    type metadata accessor for ClinicalSharingQueryOutput(0);
    sub_251A82284();
    sub_251C70A34();
    sub_251C147F8();
    v28 = sub_251C70A94();
    (*(v4 + 8))(v6, v3);
  }

  return v28;
}

uint64_t sub_251C10098(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ClinicalSharingCycleTrackingQuery(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C14B14(0);
  v9 = *(v8 - 8);
  v40 = v8;
  v41 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C14C1C(0);
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C14E4C(0);
  v48 = v14;
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v44 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C14EE0(0);
  v49 = v16;
  v47 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v45 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v18 = [a1 cycles];
  if (v18)
  {
    v19 = v18;
    sub_251A8223C(0, &qword_27F47C570, 0x277D11978);
    v20 = sub_251C71154();
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v51 = v20;
  sub_251AA8E98(0, &qword_27F47C568, &qword_27F47C570, 0x277D11978);
  sub_251C14BAC();
  sub_251C710D4();

  v38 = type metadata accessor for ClinicalSharingCycleTrackingQuery;
  sub_251C15994(v2, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClinicalSharingCycleTrackingQuery);
  v37 = v2;
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = v21 + v6;
  v23 = swift_allocObject();
  v36 = type metadata accessor for ClinicalSharingCycleTrackingQuery;
  sub_251C149B4(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21, type metadata accessor for ClinicalSharingCycleTrackingQuery);
  sub_251C70964();
  sub_251C15134(0, &qword_27F47C588, type metadata accessor for PBCycleTracking.Cycle, MEMORY[0x277CBCD88]);
  sub_251C15454(&qword_27F47C598, sub_251C14B14, MEMORY[0x277CBCD18]);
  sub_251C14DC4();
  v24 = v39;
  v25 = v40;
  sub_251C70BD4();

  (*(v41 + 8))(v11, v25);
  sub_251C15454(&qword_27F47C5B8, sub_251C14C1C, MEMORY[0x277CBCCE0]);
  v27 = v43;
  v26 = v44;
  sub_251C70B64();
  (*(v42 + 8))(v24, v27);
  sub_251C15994(v37, v7, v38);
  v28 = swift_allocObject();
  sub_251C149B4(v7, v28 + v21, v36);
  v29 = v50;
  *(v28 + ((v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;
  type metadata accessor for PBTypedData(0);
  sub_251C15454(&qword_27F47C5C8, sub_251C14E4C, MEMORY[0x277CBCCD0]);
  v30 = v29;
  v31 = v45;
  v32 = v48;
  sub_251C70AA4();

  (*(v46 + 8))(v26, v32);
  sub_251C15454(&qword_27F47C5D0, sub_251C14EE0, MEMORY[0x277CBCB10]);
  v33 = v49;
  v34 = sub_251C70A94();
  (*(v47 + 8))(v31, v33);
  return v34;
}

uint64_t sub_251C106F0()
{
  sub_251C14A84(0, &qword_27F47C550, MEMORY[0x277CBCE88]);
  v36 = v1;
  v35 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v34 = &v33 - v2;
  v3 = sub_251C702E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251A82418();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C86490;
  sub_251A8223C(0, &qword_27F479E00, 0x277CCD0C0);
  *(inited + 32) = MEMORY[0x25308D1B0](*MEMORY[0x277CCB938]);
  v38 = inited + 32;
  *(inited + 40) = MEMORY[0x25308D1B0](*MEMORY[0x277CCB9F0]);
  *(inited + 48) = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA68]);
  v37 = *(v0 + *(type metadata accessor for ClinicalSharingCycleTrackingQuery(0) + 20));
  v8 = *(v37 + 56);
  v44[0] = MEMORY[0x277D84F90];
  v41 = inited & 0xC000000000000001;
  v42 = inited;
  v39 = inited & 0xFFFFFFFFFFFFFF8;
  v40 = *MEMORY[0x277D112F0];
  v9 = (v4 + 104);
  v10 = (v4 + 8);
  v43 = v8;

  v11 = 0;
  v12 = 0;
  do
  {
    if (v41)
    {
      v13 = MEMORY[0x25308D460](v11, v42);
    }

    else
    {
      if (v11 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v13 = *(v42 + 8 * v11 + 32);
    }

    v14 = v13;
    *v6 = v13;
    v15 = (*v9)(v6, v40, v3);
    MEMORY[0x28223BE20](v15);
    *(&v33 - 2) = v6;
    v16 = v14;
    v17 = *(sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, (&v33 - 4), v43) + 16);

    (*v10)(v6, v3);
    if (v17)
    {
      sub_251C71734();
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
    }

    else
    {
    }

    ++v11;
  }

  while (v11 != 3);

  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = v44[0];
  if ((v44[0] & 0x8000000000000000) == 0 && (v44[0] & 0x4000000000000000) == 0)
  {
    v18 = *(v44[0] + 16);
    if (v18)
    {
      v44[0] = MEMORY[0x277D84F90];
      sub_251C71764();
LABEL_14:
      v19 = objc_opt_self();
      v20 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x25308D460](v20, v12);
        }

        else
        {
          v21 = *(v12 + 8 * v20 + 32);
        }

        v22 = v21;
        ++v20;
        v23 = [v19 queryDescriptorWithSampleType_];

        sub_251C71734();
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
      }

      while (v18 != v20);

      v24 = v44[0];
LABEL_20:
      v25 = sub_251BFC460();
      v27 = v26;
      sub_251A823B4(v37 + 16, v44);
      __swift_project_boxed_opaque_existential_1(v44, v44[3]);
      v28 = off_2863FD750(v24, v25, v27, MEMORY[0x277D84F90], 0, &type metadata for ClinicalSharingQueryDefaultDataProvider, &off_2863FD718);

      __swift_destroy_boxed_opaque_existential_1(v44);
      return v28;
    }

    goto LABEL_26;
  }

LABEL_22:
  if (sub_251C717F4())
  {
    v29 = sub_251C717F4();
    if (!v29)
    {

      v24 = MEMORY[0x277D84F90];
      goto LABEL_20;
    }

    v18 = v29;
    v44[0] = MEMORY[0x277D84F90];
    sub_251C71764();
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

LABEL_26:

  sub_251AA8E98(0, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
  sub_251A82284();
  v30 = v34;
  sub_251C70A34();
  sub_251C14708(&qword_27F47C558, &qword_27F47C550, MEMORY[0x277CBCE88], MEMORY[0x277CBCE90]);
  v31 = v36;
  v28 = sub_251C70A94();
  (*(v35 + 8))(v30, v31);
  return v28;
}

void *sub_251C10D2C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v90 = a2;
  v91 = a1;
  sub_251AD5C6C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PBDateRange(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v84 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PBTypedData(0);
  v89 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251C6FAE4();
  v81 = *(v12 - 8);
  v82 = v12;
  MEMORY[0x28223BE20](v12);
  v80 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  MEMORY[0x28223BE20](v14 - 8);
  v88 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = sub_251C70014();
  v16 = *(v95 - 8);
  v17 = MEMORY[0x28223BE20](v95);
  v77 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v78 = &v74 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v76 = &v74 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v92 = &v74 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v74 - v26;
  MEMORY[0x28223BE20](v25);
  v94 = &v74 - v28;
  v29 = type metadata accessor for PBCategorySeries(0);
  v30 = v29 - 8;
  v31 = MEMORY[0x28223BE20](v29);
  v79 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = (&v74 - v33);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  sub_251C703A4();
  v36 = *(v7 + 56);
  v35 = v7 + 56;
  v37 = v34 + *(v30 + 36);
  v93 = v36;
  v36(v37, 1, 1, v6);
  v38 = v3;
  v97 = v3;
  v39 = v91;
  v40 = sub_251C0ECE0(sub_251C1498C, v96, v91);
  v34[2] = v40;
  if (!v40[2])
  {
    sub_251C159FC(v34, type metadata accessor for PBCategorySeries);
    return (*(v89 + 56))(v90, 1, 1, v9);
  }

  v85 = v35;
  v86 = v6;
  v75 = v11;
  v87 = v9;
  v74 = v34;
  v41 = v39;
  if (v39 >> 62)
  {
    v42 = sub_251C717F4();
  }

  else
  {
    v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v94;
  v43 = v95;
  v45 = MEMORY[0x277D84F90];
  v91 = v38;
  if (v42)
  {
    v98 = MEMORY[0x277D84F90];
    result = sub_251C0B7A4(0, v42 & ~(v42 >> 63), 0);
    if (v42 < 0)
    {
      __break(1u);
      return result;
    }

    v47 = 0;
    v45 = v98;
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x25308D460](v47, v41);
      }

      else
      {
        v48 = *(v41 + 8 * v47 + 32);
      }

      v49 = v48;
      v50 = [v49 startDate];
      sub_251C6FFE4();

      v98 = v45;
      v52 = *(v45 + 16);
      v51 = *(v45 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_251C0B7A4((v51 > 1), v52 + 1, 1);
        v45 = v98;
      }

      ++v47;
      *(v45 + 16) = v52 + 1;
      v53 = v45 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v52;
      v43 = v95;
      (*(v16 + 32))(v53, v27, v95);
    }

    while (v42 != v47);
    v44 = v94;
  }

  v54 = v88;
  sub_251C0EA30(v45, v88);

  v55 = *(v16 + 48);
  v56 = v55(v54, 1, v43);
  v57 = v75;
  v58 = v76;
  if (v56 == 1)
  {
    type metadata accessor for ClinicalSharingCycleTrackingQuery(0);
    sub_251C6FAB4();
    v59 = v88;
    if (v55(v88, 1, v43) != 1)
    {
      sub_251C159FC(v59, sub_251ABCCD4);
    }
  }

  else
  {
    (*(v16 + 32))(v44, v54, v43);
  }

  type metadata accessor for ClinicalSharingCycleTrackingQuery(0);
  sub_251C6FA84();
  sub_251C15454(&qword_27F4795A0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_251C70EB4())
  {
    (*(v16 + 32))(v92, v58, v43);
  }

  else
  {
    (*(v16 + 8))(v58, v43);
    (*(v16 + 16))(v92, v44, v43);
  }

  v60 = v77;
  sub_251C6FA84();
  if (sub_251C70EC4())
  {
    (*(v16 + 32))(v78, v60, v43);
  }

  else
  {
    (*(v16 + 8))(v60, v43);
    (*(v16 + 16))(v78, v44, v43);
  }

  v61 = v87;
  v62 = v80;
  sub_251C6FA94();
  v63 = *(v61 + 20);
  v78 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v64 = *(v78 - 1);
  v88 = *(v64 + 56);
  v92 = (v64 + 56);
  (v88)(v57 + v63, 1, 1, v78);
  sub_251C703A4();
  v65 = *(v61 + 28);
  v93(v57 + v65, 1, 1, v86);
  *v57 = 116;
  *(v57 + 8) = 1;
  v67 = v81;
  v66 = v82;
  v68 = v83;
  (*(v81 + 16))(v83, v62, v82);
  (*(v67 + 56))(v68, 0, 1, v66);
  v69 = v84;
  sub_251BF0A40(5, 1, v68, v84);
  sub_251C159FC(v68, sub_251AD5C6C);
  (*(v67 + 8))(v62, v66);
  (*(v16 + 8))(v94, v95);
  sub_251C159FC(v57 + v65, sub_251AC0EAC);
  sub_251C149B4(v69, v57 + v65, type metadata accessor for PBDateRange);
  v93(v57 + v65, 0, 1, v86);
  v70 = v74;
  v71 = v79;
  sub_251C15994(v74, v79, type metadata accessor for PBCategorySeries);
  sub_251C159FC(v57 + v63, sub_251ABCD08);
  sub_251C149B4(v71, v57 + v63, type metadata accessor for PBCategorySeries);
  v72 = v78;
  swift_storeEnumTagMultiPayload();
  (v88)(v57 + v63, 0, 1, v72);
  sub_251C159FC(v70, type metadata accessor for PBCategorySeries);
  v73 = v90;
  sub_251C149B4(v57, v90, type metadata accessor for PBTypedData);
  return (*(v89 + 56))(v73, 0, 1, v87);
}

uint64_t sub_251C1182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_251C15994(a1, a3, type metadata accessor for PBTypedData);
  sub_251C15A90(0, &qword_27F479238, MEMORY[0x277CC95F0], MEMORY[0x277D84560]);
  v5 = sub_251C70074();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_251C74800;
  (*(v6 + 16))(v8 + v7, a2, v5);
  v9 = sub_251BFAE40(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  result = type metadata accessor for ClinicalSharingQueryOutput(0);
  *(a3 + *(result + 20)) = v9;
  v11 = (a3 + *(result + 24));
  *v11 = 0;
  v11[1] = 0;
  return result;
}

void sub_251C119B0(void *a1)
{
  v2 = v1;
  sub_251C15134(0, &qword_27F47C5D8, type metadata accessor for PBCycleTracking.Cycle, MEMORY[0x277CBCE88]);
  v5 = v4;
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v8 = type metadata accessor for ClinicalSharingCycleTrackingQuery(0);
  v47 = *(v8 - 8);
  v9 = *(v47 + 8);
  MEMORY[0x28223BE20](v8);
  sub_251C151B0(0);
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C15314(0);
  v55 = v12;
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v51 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C153A8(0);
  v56 = v14;
  v54 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v52 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 menstruationSegment];
  v17 = [v16 days];

  v18 = [a1 lastDayIndex];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 integerValue];

    v21 = (v2 + *(v8 + 28));
    v22 = *v21;
    v23 = v21[1];
    v28 = __OFADD__(v22, v23);
    v24 = v22 + v23;
    v25 = v28;
    goto LABEL_10;
  }

  v26 = (v2 + *(v8 + 28));
  v22 = *v26;
  v27 = v26[1];
  v28 = __OFADD__(v22, v27);
  v24 = v22 + v27;
  v25 = v28;
  if (v28)
  {
    goto LABEL_24;
  }

  v20 = (v24 - 1);
  if (!__OFSUB__(v24, 1))
  {
LABEL_10:
    if (v25)
    {
      __break(1u);
    }

    else
    {
      v28 = __OFSUB__(v24, 1);
      v29 = v24 - 1;
      if (!v28)
      {
        if (v17 >= v29 || v20 < v22)
        {
          type metadata accessor for PBCycleTracking.Cycle(0);
          sub_251A82284();
          sub_251C70A34();
          sub_251C1549C();
          sub_251C70A94();
          v57[1](v7, v5);
          return;
        }

        v30 = v20 - v17;
        if (v20 >= v17)
        {
          if (!__OFSUB__(v20, v17))
          {
            v31 = v30 + 1;
            if (!__OFADD__(v30, 1))
            {
              sub_251A823B4(*(v2 + *(v8 + 20)) + 16, v59);
              __swift_project_boxed_opaque_existential_1(v59, v59[3]);
              v46 = v2;
              v58 = (off_2863FD738)(v17, v31);
              v45 = type metadata accessor for ClinicalSharingCycleTrackingQuery;
              v32 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_251C15994(v2, v32, type metadata accessor for ClinicalSharingCycleTrackingQuery);
              v57 = a1;
              v33 = (*(v47 + 80) + 16) & ~*(v47 + 80);
              v34 = swift_allocObject();
              v47 = type metadata accessor for ClinicalSharingCycleTrackingQuery;
              sub_251C149B4(v32, v34 + v33, type metadata accessor for ClinicalSharingCycleTrackingQuery);
              sub_251C1528C(0);
              sub_251C15A90(0, &qword_2813E1F10, type metadata accessor for PBCycleTracking.Event, MEMORY[0x277D83940]);
              sub_251C15454(&qword_27F47C5F8, sub_251C1528C, MEMORY[0x277CBCD90]);
              v35 = v48;
              sub_251C70AE4();

              __swift_destroy_boxed_opaque_existential_1(v59);
              v59[0] = MEMORY[0x277D84F90];
              sub_251C15454(&qword_27F47C608, sub_251C151B0, MEMORY[0x277CBCC08]);
              v36 = v50;
              v37 = v51;
              sub_251C70AD4();
              (*(v49 + 8))(v35, v36);
              sub_251C15994(v46, v32, v45);
              v38 = (v33 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
              v39 = swift_allocObject();
              sub_251C149B4(v32, v39 + v33, v47);
              v40 = v57;
              *(v39 + v38) = v57;
              type metadata accessor for PBCycleTracking.Cycle(0);
              sub_251C15454(&qword_27F47C618, sub_251C15314, MEMORY[0x277CBCB70]);
              v41 = v40;
              v42 = v52;
              v43 = v55;
              sub_251C70AA4();

              (*(v53 + 8))(v37, v43);
              sub_251C15454(&qword_27F47C628, sub_251C153A8, MEMORY[0x277CBCB10]);
              v44 = v56;
              sub_251C70A94();
              (*(v54 + 8))(v42, v44);
              return;
            }

            goto LABEL_23;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_251C1213C@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>, uint64_t *a4@<X0>)
{
  v49 = a3;
  sub_251AD5C6C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PBDateRange(0);
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for PBTypedData(0);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C150CC(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PBCycleTracking(0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v45 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v39 - v22;
  v24 = *a4;
  v25 = [a2 statistics];
  sub_251C12698(v25, v24, v17);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_251C159FC(v17, sub_251C150CC);
    v26 = 1;
  }

  else
  {
    v40 = v23;
    v41 = type metadata accessor for PBCycleTracking;
    sub_251C149B4(v17, v23, type metadata accessor for PBCycleTracking);
    v27 = v50;
    v28 = *(v50 + 20);
    v42 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v29 = *(v42 - 8);
    v43 = *(v29 + 56);
    v44 = v29 + 56;
    v43(&v14[v28], 1, 1, v42);
    sub_251C703A4();
    v30 = *(v27 + 28);
    v46 = *(v46 + 56);
    (v46)(&v14[v30], 1, 1, v47);
    *v14 = 109;
    v14[8] = 1;
    v31 = *(type metadata accessor for ClinicalSharingCycleTrackingQuery(0) + 24);
    v32 = sub_251C6FAE4();
    v33 = *(v32 - 8);
    (*(v33 + 16))(v9, a1 + v31, v32);
    (*(v33 + 56))(v9, 0, 1, v32);
    v34 = v49;
    sub_251BF0A40(5, 1, v9, v12);
    sub_251C159FC(v9, sub_251AD5C6C);
    sub_251C159FC(&v14[v30], sub_251AC0EAC);
    sub_251C149B4(v12, &v14[v30], type metadata accessor for PBDateRange);
    (v46)(&v14[v30], 0, 1, v47);
    v35 = v41;
    v36 = v45;
    sub_251C149B4(v40, v45, v41);
    sub_251C159FC(&v14[v28], sub_251ABCD08);
    sub_251C149B4(v36, &v14[v28], v35);
    v37 = v42;
    swift_storeEnumTagMultiPayload();
    v43(&v14[v28], 0, 1, v37);
    sub_251C149B4(v14, v34, type metadata accessor for PBTypedData);
    v26 = 0;
  }

  return (*(v48 + 56))(v49, v26, 1, v50);
}

uint64_t sub_251C12698@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v69 = a3;
  sub_251C15100(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - v7;
  v9 = type metadata accessor for PBCycleTracking.Range(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v58 = &v57 - v15;
  v16 = type metadata accessor for PBCycleTracking(0);
  v66 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  *v21 = MEMORY[0x277D84F90];
  *(&v57 - v20 + 8) = 0;
  v61 = (&v57 - v20 + 8);
  *(v21 + 2) = 0;
  *(v21 + 3) = 0xE000000000000000;
  sub_251C703A4();
  v22 = *(v16 + 36);
  v23 = *(v10 + 56);
  v23(&v21[v22], 1, 1, v9);
  v68 = v16;
  v59 = *(v16 + 40);
  v23(&v21[v59], 1, 1, v9);
  v24 = [a1 cycleLengthLowerPercentile];
  v71 = a1;
  sub_251C133F4(v24, [a1 cycleLengthUpperPercentile], v8);
  v62 = *(v10 + 48);
  v63 = v10 + 48;
  v25 = v62(v8, 1, v9);
  v65 = v23;
  if (v25 == 1)
  {
    v26 = v9;
    sub_251C159FC(v8, sub_251C15100);
  }

  else
  {
    v27 = v8;
    v28 = v58;
    sub_251C149B4(v27, v58, type metadata accessor for PBCycleTracking.Range);
    v29 = v28;
    v30 = v70;
    sub_251C149B4(v29, v70, type metadata accessor for PBCycleTracking.Range);
    sub_251C159FC(&v21[v22], sub_251C15100);
    sub_251C149B4(v30, &v21[v22], type metadata accessor for PBCycleTracking.Range);
    v26 = v9;
    v23(&v21[v22], 0, 1, v9);
  }

  v31 = [v71 cycleLengthMedian];
  v32 = v69;
  if (v31)
  {
    v33 = v31;
    v34 = [v31 intValue];

    *v61 = v34;
  }

  v35 = v71;
  v36 = [v71 menstruationLengthLowerPercentile];
  v37 = [v35 menstruationLengthUpperPercentile];
  v38 = v64;
  sub_251C133F4(v36, v37, v64);
  v39 = v62(v38, 1, v26);
  v40 = v70;
  if (v39 == 1)
  {
    sub_251C159FC(v38, sub_251C15100);
    v41 = v65;
  }

  else
  {
    v42 = v38;
    v43 = v60;
    sub_251C149B4(v42, v60, type metadata accessor for PBCycleTracking.Range);
    sub_251C149B4(v43, v40, type metadata accessor for PBCycleTracking.Range);
    v44 = v59;
    sub_251C159FC(&v21[v59], sub_251C15100);
    sub_251C149B4(v40, &v21[v44], type metadata accessor for PBCycleTracking.Range);
    v41 = v65;
    v65(&v21[v44], 0, 1, v26);
  }

  v45 = [v35 menstruationLengthMedian];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 intValue];

    *(v21 + 3) = v47;
  }

  v48 = [v35 lastMenstruationStartDayIndex];
  if (v48)
  {
    v49 = v48;
    v50 = sub_251C13568([v48 integerValue]);
    v52 = v51;

    *(v21 + 2) = v50;
    *(v21 + 3) = v52;
  }

  if (*(v67 + 16))
  {
    *v21 = v67;
  }

  *v19 = MEMORY[0x277D84F90];
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0xE000000000000000;
  v53 = v68;
  sub_251C703A4();
  v54 = 1;
  v41(&v19[*(v53 + 36)], 1, 1, v26);
  v41(&v19[*(v53 + 40)], 1, 1, v26);
  v55 = sub_251BAF44C(v21, v19);
  sub_251C159FC(v19, type metadata accessor for PBCycleTracking);
  if ((v55 & 1) == 0)
  {
    sub_251C15994(v21, v32, type metadata accessor for PBCycleTracking);
    v54 = 0;
  }

  (*(v66 + 56))(v32, v54, 1, v53);
  return sub_251C159FC(v21, type metadata accessor for PBCycleTracking);
}

uint64_t sub_251C12D34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v45 = a2;
  v3 = type metadata accessor for PBCycleTracking.SexualActivity(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  MEMORY[0x28223BE20](v7);
  v40 = &v39 - v10;
  v11 = type metadata accessor for PBCycleTracking.Event(0);
  v43 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  *(v16 + 2) = 0;
  v16[24] = 1;
  *(v16 + 4) = 0;
  v16[40] = 1;
  *(v16 + 11) = 0;
  v16[48] = 0;
  v17 = MEMORY[0x277D84F90];
  *(v16 + 7) = MEMORY[0x277D84F90];
  *(v16 + 8) = v17;
  sub_251C703A4();
  v18 = *(v11 + 48);
  v46 = *(v4 + 56);
  v46(&v16[v18], 1, 1, v3);
  v19 = type metadata accessor for ClinicalSharingCycleTrackingQuery(0);
  v20 = *(v19 + 32);
  v44 = v2;
  v21 = *(v2 + v20);
  v22 = v42;
  if ((v21 & 2) != 0)
  {
    v23 = sub_251C23FB4([v42 menstrualFlow]);
    if ((v24 & 0x100) == 0)
    {
      *(v16 + 2) = v23;
      v16[24] = v24 & 1;
    }
  }

  if ((v21 & 1) != 0 && [v22 intermenstrualBleeding])
  {
    v16[48] = 1;
  }

  if ((v21 & 4) != 0)
  {
    v25 = [v22 sexualActivity];
    if (v25)
    {
      v26 = v25;
      sub_251C703A4();
      *v9 = 1;
      v9[1] = v26 == 1;
      v27 = v9;
      v28 = v40;
      sub_251C149B4(v27, v40, type metadata accessor for PBCycleTracking.SexualActivity);
      v29 = v28;
      v30 = v41;
      sub_251C149B4(v29, v41, type metadata accessor for PBCycleTracking.SexualActivity);
      sub_251C159FC(&v16[v18], sub_251C15A5C);
      sub_251C149B4(v30, &v16[v18], type metadata accessor for PBCycleTracking.SexualActivity);
      v46(&v16[v18], 0, 1, v3);
    }
  }

  v31 = [v22 symptoms];
  v32 = *(v44 + *(v19 + 36)) & v31;
  if (v32)
  {
    *(v16 + 8) = sub_251C23FD8(v32);
  }

  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  *(v14 + 2) = 0;
  v33 = 1;
  v14[24] = 1;
  *(v14 + 4) = 0;
  v14[40] = 1;
  *(v14 + 11) = 0;
  v14[48] = 0;
  v34 = MEMORY[0x277D84F90];
  *(v14 + 7) = MEMORY[0x277D84F90];
  *(v14 + 8) = v34;
  sub_251C703A4();
  v46(&v14[*(v11 + 48)], 1, 1, v3);
  v35 = sub_251BAFC4C(v16, v14);
  sub_251C159FC(v14, type metadata accessor for PBCycleTracking.Event);
  v36 = v45;
  if ((v35 & 1) == 0)
  {
    *v16 = sub_251C13568([v22 dayIndex]);
    *(v16 + 1) = v37;
    sub_251C15994(v16, v36, type metadata accessor for PBCycleTracking.Event);
    v33 = 0;
  }

  (*(v43 + 56))(v36, v33, 1, v11);
  return sub_251C159FC(v16, type metadata accessor for PBCycleTracking.Event);
}

void sub_251C131A4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PBCycleTracking.Cycle(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 2) = 0;
  *(v9 + 3) = 0xE000000000000000;
  *(v9 + 10) = 0;
  sub_251C703A4();
  v10 = [a1 menstruationSegment];
  v11 = [v10 days];

  *v9 = sub_251C13568(v11);
  *(v9 + 1) = v12;
  v13 = [a1 lastDayIndex];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v15 = [v13 integerValue];

  *(v9 + 2) = sub_251C13568(v15);
  *(v9 + 3) = v16;
  v17 = v15 - v11;
  if (__OFSUB__(v15, v11))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v19 < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    *(v9 + 10) = v19;
LABEL_7:
    v20 = [a1 menstruationSegment];
    [v20 days];
    v22 = v21;

    if (v22 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v22 <= 0x7FFFFFFF)
    {
      *(v9 + 11) = v22;
      *(v9 + 4) = a2;
      sub_251C15994(v9, a3, type metadata accessor for PBCycleTracking.Cycle);
      (*(v7 + 56))(a3, 0, 1, v6);

      sub_251C159FC(v9, type metadata accessor for PBCycleTracking.Cycle);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_251C133F4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PBCycleTracking.Range(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = 0;
  sub_251C703A4();
  if (!a1)
  {
    if (!a2)
    {
      sub_251C159FC(v9, type metadata accessor for PBCycleTracking.Range);
      v11 = 1;
      return (*(v7 + 56))(a3, v11, 1, v6);
    }

    goto LABEL_5;
  }

  *v9 = [a1 intValue];
  if (a2)
  {
LABEL_5:
    v10 = [a2 intValue];

    *(v9 + 1) = v10;
    goto LABEL_6;
  }

LABEL_6:
  sub_251C149B4(v9, a3, type metadata accessor for PBCycleTracking.Range);
  v11 = 0;
  return (*(v7 + 56))(a3, v11, 1, v6);
}

uint64_t sub_251C13568(uint64_t a1)
{
  v2 = v1;
  v4 = sub_251C70014();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = type metadata accessor for ClinicalSharingCycleTrackingQuery(0);
  v10 = sub_251C70114();
  v11 = [v8 hk:a1 dateOnDayIndex:0 atHour:v10 calendar:?];

  sub_251C6FFE4();
  v12 = *(*(v2 + *(v9 + 20)) + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v13 = sub_251C6FF94();
  v14 = [v12 stringFromDate_];

  v15 = sub_251C70F14();
  (*(v5 + 8))(v7, v4);
  return v15;
}

uint64_t sub_251C13710@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_251ABCCD4(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for PBDateRange(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251C13B70(a1);
  if ((v16 & 0x100) != 0)
  {
    v31 = type metadata accessor for PBCategorySeries.Event(0);
    v32 = *(*(v31 - 8) + 56);

    return v32(a2, 1, 1, v31);
  }

  else
  {
    v38 = v14;
    v39 = v16;
    v40 = v15;
    v42 = v2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0xE000000000000000;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0xE000000000000000;
    v17 = type metadata accessor for PBCategorySeries.Event(0);
    v18 = a2 + *(v17 + 28);
    v19 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
    v20 = *(v19 - 8);
    v21 = 1;
    v36 = *(v20 + 56);
    v37 = v19;
    v35 = v20 + 56;
    v36(v18, 1, 1);
    sub_251C703A4();
    v41 = v17;
    v22 = *(v17 + 36);
    v23 = *(v12 + 56);
    v43 = v12 + 56;
    v44 = v11;
    v34 = v23;
    v23(a2 + v22, 1, 1, v11);
    v24 = [a1 startDate];
    sub_251C6FFE4();

    v25 = sub_251C70014();
    v26 = *(*(v25 - 8) + 56);
    v26(v10, 0, 1, v25);
    if (([a1 hasUndeterminedDuration] & 1) == 0)
    {
      v27 = [a1 endDate];
      sub_251C6FFE4();

      v21 = 0;
    }

    v26(v8, v21, 1, v25);
    v28 = v38;
    sub_251C0D7F0(v10, v8, v38);
    sub_251C159FC(v8, sub_251ABCCD4);
    sub_251C159FC(v10, sub_251ABCCD4);
    sub_251C159FC(a2 + v22, sub_251AC0EAC);
    sub_251C149B4(v28, a2 + v22, type metadata accessor for PBDateRange);
    v34(a2 + v22, 0, 1, v44);
    sub_251C159FC(v18, sub_251C14A50);
    *v18 = v40;
    *(v18 + 8) = v39 & 1;
    v29 = v37;
    swift_storeEnumTagMultiPayload();
    (v36)(v18, 0, 1, v29);
    return (*(*(v41 - 8) + 56))(a2, 0, 1);
  }
}

uint64_t sub_251C13B70(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = a1;
    v5 = [v3 categoryType];
    v6 = [v5 code];

    if (v6 != 193)
    {
      if (v6 == 192)
      {

        return 1;
      }

      else if (v6 == 191)
      {

        return 2;
      }

      else
      {

        return 0;
      }
    }

    v7 = [v3 value];

    if (v7 <= 3)
    {
      if (v7 != 1)
      {
        if (v7 == 2)
        {
          return 4;
        }

        if (v7 == 3)
        {
          return 5;
        }
      }
    }

    else
    {
      if (v7 <= 5)
      {
        if (v7 == 4)
        {
          return 6;
        }

        else
        {
          return 7;
        }
      }

      if (v7 == 6)
      {
        return 8;
      }

      if (v7 == 7)
      {
        return 9;
      }
    }

    return 3;
  }

  return result;
}

uint64_t sub_251C13D1C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_251A7FE20();

  *a2 = v3;
  return result;
}

uint64_t sub_251C13D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C702E4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v35 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v34 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = (&v34 - v11);
  v13 = sub_251A8223C(0, &qword_27F479E00, 0x277CCD0C0);
  v14 = *MEMORY[0x277CCB9D8];
  v34 = v13;
  *v12 = MEMORY[0x25308D1B0](v14);
  v15 = *MEMORY[0x277D112F0];
  v16 = *(v5 + 104);
  v16(v12, v15, v4);
  v17 = *(a1 + 16);
  v36 = a2;
  v37 = v5;
  if (v17 && (v18 = sub_251AC8AFC(a2), (v19 & 1) != 0))
  {
    v20 = *(*(a1 + 56) + 8 * v18);

    v21 = sub_251C5DBC0(v12, v20);

    v22 = *(v5 + 8);
    v22(v12, v4);
    v23 = v21 & 1;
  }

  else
  {
    v22 = *(v5 + 8);
    v22(v12, v4);
    v23 = 0;
  }

  *v10 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA28]);
  v16(v10, v15, v4);
  if (*(a1 + 16) && (v24 = sub_251AC8AFC(v36), (v25 & 1) != 0))
  {
    v26 = *(*(a1 + 56) + 8 * v24);

    LODWORD(v34) = sub_251C5DBC0(v10, v26);

    v22(v10, v4);
    if (v34)
    {
      v23 |= 2uLL;
    }
  }

  else
  {
    v22(v10, v4);
  }

  v27 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA98]);
  v28 = v35;
  *v35 = v27;
  v16(v28, v15, v4);
  if (*(a1 + 16) && (v29 = sub_251AC8AFC(v36), (v30 & 1) != 0))
  {
    v31 = *(*(a1 + 56) + 8 * v29);

    v32 = sub_251C5DBC0(v28, v31);

    v22(v28, v4);
    if (v32)
    {
      return v23 | 4;
    }
  }

  else
  {
    v22(v28, v4);
  }

  return v23;
}

void sub_251C14100(uint64_t a1)
{
  sub_251C70074();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClinicalSharingQueryContext(319);
    if (v2 <= 0x3F)
    {
      sub_251C6FAE4();
      if (v3 <= 0x3F)
      {
        type metadata accessor for HKDayIndexRange(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for HKMCDaySummarySymptoms(319);
          if (v5 <= 0x3F)
          {
            sub_251C701E4();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_251C14200()
{
  result = qword_27F47C4C8;
  if (!qword_27F47C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C4C8);
  }

  return result;
}

unint64_t sub_251C14258()
{
  result = qword_27F47C4D0;
  if (!qword_27F47C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C4D0);
  }

  return result;
}

unint64_t sub_251C142B0()
{
  result = qword_27F47C4D8;
  if (!qword_27F47C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C4D8);
  }

  return result;
}

unint64_t sub_251C14308()
{
  result = qword_27F47C4E0;
  if (!qword_27F47C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C4E0);
  }

  return result;
}

void sub_251C1435C(uint64_t a1)
{
  if (!qword_27F47C4E8)
  {
    sub_251C14448(255);
    sub_251C1463C(255);
    sub_251C15454(&qword_27F47C520, sub_251C14448, MEMORY[0x277CBCCE0]);
    sub_251C15454(&qword_27F47C528, sub_251C1463C, MEMORY[0x277CBCB10]);
    v1 = sub_251C70874();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C4E8);
    }
  }
}

void sub_251C14448(uint64_t a1)
{
  if (!qword_27F47C4F0)
  {
    sub_251C15134(255, &qword_27F47C4F8, type metadata accessor for PBTypedData, MEMORY[0x277CBCD88]);
    sub_251C14534(255);
    sub_251C145B4();
    sub_251C15454(&qword_27F47C518, sub_251C14534, MEMORY[0x277CBCD90]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C4F0);
    }
  }
}

void sub_251C14534(uint64_t a1)
{
  if (!qword_27F47C500)
  {
    sub_251A8223C(255, &qword_27F47C508, 0x277D11960);
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C500);
    }
  }
}

unint64_t sub_251C145B4()
{
  result = qword_27F47C510;
  if (!qword_27F47C510)
  {
    sub_251C15134(255, &qword_27F47C4F8, type metadata accessor for PBTypedData, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C510);
  }

  return result;
}

void sub_251C1463C(uint64_t a1)
{
  if (!qword_27F478D58)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_251C14A84(255, &qword_27F478D60, MEMORY[0x277CBCD88]);
    type metadata accessor for PBTypedData(255);
    sub_251C14708(&qword_27F478D78, &qword_27F478D60, v1, MEMORY[0x277CBCD90]);
    v2 = sub_251C70784();
    if (!v3)
    {
      atomic_store(v2, &qword_27F478D58);
    }
  }
}

uint64_t sub_251C14708(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251C14A84(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251C1474C(uint64_t a1)
{
  if (!qword_27F47C530)
  {
    sub_251C1435C(255);
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251C15454(&qword_27F47C538, sub_251C1435C, MEMORY[0x277CBCC60]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C530);
    }
  }
}

unint64_t sub_251C147F8()
{
  result = qword_27F479B00;
  if (!qword_27F479B00)
  {
    sub_251C15134(255, &qword_27F479AD0, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B00);
  }

  return result;
}

uint64_t sub_251C1490C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingCycleTrackingQuery(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251C1182C(a1, v6, a2);
}

uint64_t sub_251C149B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251C14A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_251AA8E98(255, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
    v7 = v6;
    v8 = sub_251A82284();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251C14B14(uint64_t a1)
{
  if (!qword_27F47C560)
  {
    sub_251AA8E98(255, &qword_27F47C568, &qword_27F47C570, 0x277D11978);
    sub_251C14BAC();
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C560);
    }
  }
}

unint64_t sub_251C14BAC()
{
  result = qword_27F47C578;
  if (!qword_27F47C578)
  {
    sub_251AA8E98(255, &qword_27F47C568, &qword_27F47C570, 0x277D11978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C578);
  }

  return result;
}

void sub_251C14C1C(uint64_t a1)
{
  if (!qword_27F47C580)
  {
    sub_251C15134(255, &qword_27F47C588, type metadata accessor for PBCycleTracking.Cycle, MEMORY[0x277CBCD88]);
    sub_251C14D08(255);
    sub_251C14DC4();
    sub_251C15454(&qword_27F47C5A8, sub_251C14D08, MEMORY[0x277CBCBA0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C580);
    }
  }
}

void sub_251C14D08(uint64_t a1)
{
  if (!qword_27F47C590)
  {
    sub_251C14B14(255);
    sub_251A82284();
    sub_251C15454(&qword_27F47C598, sub_251C14B14, MEMORY[0x277CBCD18]);
    v1 = sub_251C707E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C590);
    }
  }
}

unint64_t sub_251C14DC4()
{
  result = qword_27F47C5A0;
  if (!qword_27F47C5A0)
  {
    sub_251C15134(255, &qword_27F47C588, type metadata accessor for PBCycleTracking.Cycle, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C5A0);
  }

  return result;
}

void sub_251C14E4C(uint64_t a1)
{
  if (!qword_27F47C5B0)
  {
    sub_251C14C1C(255);
    sub_251C15454(&qword_27F47C5B8, sub_251C14C1C, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C5B0);
    }
  }
}

void sub_251C14EE0(uint64_t a1)
{
  if (!qword_27F47C5C0)
  {
    sub_251C14E4C(255);
    type metadata accessor for PBTypedData(255);
    sub_251C15454(&qword_27F47C5C8, sub_251C14E4C, MEMORY[0x277CBCCD0]);
    v1 = sub_251C70784();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C5C0);
    }
  }
}

uint64_t sub_251C14FA4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ClinicalSharingCycleTrackingQuery(0);
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_251C15020@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X0>)
{
  v5 = *(type metadata accessor for ClinicalSharingCycleTrackingQuery(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_251C1213C(v2 + v6, v7, a1, a2);
}

void sub_251C15134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_251A82284();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251C151B0(uint64_t a1)
{
  if (!qword_27F47C5E0)
  {
    sub_251C1528C(255);
    sub_251C15A90(255, &qword_2813E1F10, type metadata accessor for PBCycleTracking.Event, MEMORY[0x277D83940]);
    sub_251C15454(&qword_27F47C5F8, sub_251C1528C, MEMORY[0x277CBCD90]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C5E0);
    }
  }
}

void sub_251C1528C(uint64_t a1)
{
  if (!qword_27F47C5E8)
  {
    sub_251AA8E98(255, &qword_27F47C5F0, &qword_27F479FB8, 0x277D11988);
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C5E8);
    }
  }
}

void sub_251C15314(uint64_t a1)
{
  if (!qword_27F47C600)
  {
    sub_251C151B0(255);
    sub_251C15454(&qword_27F47C608, sub_251C151B0, MEMORY[0x277CBCC08]);
    v1 = sub_251C707C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C600);
    }
  }
}

void sub_251C153A8(uint64_t a1)
{
  if (!qword_27F47C610)
  {
    sub_251C15314(255);
    type metadata accessor for PBCycleTracking.Cycle(255);
    sub_251C15454(&qword_27F47C618, sub_251C15314, MEMORY[0x277CBCB70]);
    v1 = sub_251C70784();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C610);
    }
  }
}

uint64_t sub_251C15454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251C1549C()
{
  result = qword_27F47C620;
  if (!qword_27F47C620)
  {
    sub_251C15134(255, &qword_27F47C5D8, type metadata accessor for PBCycleTracking.Cycle, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C620);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for ClinicalSharingCycleTrackingQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_251C70074();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[8];
  v7 = sub_251C6FAE4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[12];
  v9 = sub_251C701E4();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void *sub_251C1568C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingCycleTrackingQuery(0) - 8);
  v6 = *a1;
  v8[2] = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  result = sub_251C0F00C(sub_251C15938, v8, v6);
  *a2 = result;
  return result;
}

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for ClinicalSharingCycleTrackingQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_251C70074();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[8];
  v8 = sub_251C6FAE4();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[12];
  v10 = sub_251C701E4();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_251C15994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C159FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251C15A90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251C15AF4(uint64_t a1, uint64_t a2)
{
  sub_251AA8E98(0, &qword_27F4795B0, &qword_27F4795B8, 0x277CCD5F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C15B70(uint64_t a1)
{
  sub_251AA8E98(0, &qword_27F4795B0, &qword_27F4795B8, 0x277CCD5F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C15BE8@<X0>(char *a3@<X8>)
{
  sub_251AF3A84(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251C6FE64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C6FE54();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_251AF3ADC(v6);
LABEL_7:
    v14 = 1;
    return (*(v8 + 56))(a3, v14, 1, v7);
  }

  v11 = *(v8 + 32);
  v11(v10, v6, v7);
  sub_251C6FE44();
  if (!v12 || (, sub_251C6FE24(), !v13))
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_7;
  }

  v11(a3, v10, v7);
  v14 = 0;
  return (*(v8 + 56))(a3, v14, 1, v7);
}

uint64_t sub_251C15DC8()
{
  v1 = *(sub_251C6FDB4() + 16);

  if (v1 < 3 || (v2 = sub_251C6FDB4(), v10[0] = 0xD000000000000011, v10[1] = 0x8000000251C8B590, MEMORY[0x28223BE20](v2), v9[2] = v10, v3 = sub_251C15F40(sub_251C15FE4, v9, v2), v5 = v4, , (v5 & 1) != 0) || (v6 = *(sub_251C6FDB4() + 16), , v6 < v3))
  {
    sub_251B26550();
    swift_allocError();
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = 2;
    *(v7 + 24) = 3;
    swift_willThrow();
    return v0;
  }

  result = sub_251C6FDB4();
  if (v3 < -1)
  {
    __break(1u);
  }

  else if ((v3 + 1) < *(result + 16))
  {
    v0 = *(result + 16 * (v3 + 1) + 32);

    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_251C15F40(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

uint64_t sub_251C15FE4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_251C719D4() & 1;
  }
}

uint64_t sub_251C1603C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = v5;
  v6[22] = a5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  sub_251C17CFC(0, &qword_27F4798C8, type metadata accessor for WebRequestResponseError.ErrorType);
  v6[23] = swift_task_alloc();
  sub_251C17CFC(0, &qword_27F47C638, type metadata accessor for WebRequestResponseError);
  v6[24] = swift_task_alloc();
  v7 = sub_251C70074();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = type metadata accessor for HTTPError(0);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v8 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v9 = type metadata accessor for WebRequestResponseError(0);
  v6[40] = v9;
  v6[41] = *(v9 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C16300, 0, 0);
}

void sub_251C16300()
{

  v1 = swift_task_alloc();
  *(v0 + 376) = v1;
  *v1 = v0;
  v1[1] = sub_251C163DC;

  JUMPOUT(0x251C695F4);
}

uint64_t sub_251C163DC(uint64_t a1)
{
  *(*v2 + 384) = a1;

  if (v1)
  {
    v3 = sub_251C16694;
  }

  else
  {
    v3 = sub_251C164F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251C164F0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v3)
    {
      if ((v1 & 0xFF000000000000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v4 = v2;
    v5 = v2 >> 32;
LABEL_8:
    if (v4 != v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v3 == 2)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    goto LABEL_8;
  }

LABEL_9:
  sub_251A83028(v0[10], v0[11]);
  v2 = 0;
  v1 = 0xF000000000000000;
LABEL_10:
  v6 = v0[48];
  v7 = v0[17];
  sub_251A823B4(v0[18], v7);
  v7[5] = v2;
  v7[6] = v1;
  v7[7] = v6;

  v8 = v0[1];

  return v8();
}

uint64_t sub_251C16694()
{
  v50 = v0;
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[37];
  v7 = v0[36];
  v8 = v0[18];
  sub_251C17EA8(v0[38], v4, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C17EA8(v4, v6, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4(v8, v2);
  sub_251C17F10(v6, v2 + *(v5 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  v0[49] = sub_251C17FF0(&qword_27F478E50, type metadata accessor for WebRequestResponseError, &protocol conformance descriptor for WebRequestResponseError);
  swift_willThrowTypedImpl();
  sub_251C17E48(v6, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C17EA8(v2, v1, type metadata accessor for WebRequestResponseError);
  sub_251C17EA8(v1, v3, type metadata accessor for WebRequestResponseError);
  sub_251C17F10(v3 + *(v5 + 20), v7, type metadata accessor for WebRequestResponseError.ErrorType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = v0[36];
  if (EnumCaseMultiPayload == 1)
  {
    v12 = v0[29];
    v11 = v0[30];
    sub_251C17EA8(v10, v11, type metadata accessor for HTTPError);
    sub_251C17F10(v11, v12, type metadata accessor for HTTPError);
    v13 = swift_getEnumCaseMultiPayload();
    v14 = v0[29];
    if (v13 == 2)
    {
      v15 = v14[1];
      if (v15)
      {
        v16 = sub_251C4EEAC(0x20726572616542, 0xE700000000000000, *v14, v15);

        if (v16)
        {
          if (qword_2813E26F8 != -1)
          {
            swift_once();
          }

          v18 = v0[26];
          v17 = v0[27];
          v19 = v0[25];
          v20 = v0[19];
          v21 = sub_251C70764();
          v0[50] = __swift_project_value_buffer(v21, qword_2813E8130);
          (*(v18 + 16))(v17, v20, v19);
          v22 = sub_251C70744();
          v23 = sub_251C713F4();
          v24 = os_log_type_enabled(v22, v23);
          v26 = v0[26];
          v25 = v0[27];
          v27 = v0[25];
          if (v24)
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v49 = v29;
            *v28 = 136315138;
            sub_251C17FF0(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v30 = sub_251C719A4();
            v32 = v31;
            (*(v26 + 8))(v25, v27);
            v33 = sub_251B10780(v30, v32, &v49);

            *(v28 + 4) = v33;
            _os_log_impl(&dword_251A6C000, v22, v23, "WebRequestResponseError.catchAndRefreshToken: tryCatch: 401 response, requesting new accessToken for account: %s", v28, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v29);
            MEMORY[0x25308E2B0](v29, -1, -1);
            MEMORY[0x25308E2B0](v28, -1, -1);
          }

          else
          {

            (*(v26 + 8))(v25, v27);
          }

          v43 = v0[20];
          v44 = v43[3];
          v45 = v43[4];
          __swift_project_boxed_opaque_existential_1(v43, v44);
          v48 = (*(v45 + 8) + **(v45 + 8));
          v46 = swift_task_alloc();
          v0[51] = v46;
          *v46 = v0;
          v46[1] = sub_251C16DB8;
          v47 = v0[19];

          return v48(v47, v44, v45);
        }
      }
    }

    else
    {
      sub_251C17E48(v14, type metadata accessor for HTTPError);
    }

    v10 = v0[30];
    v34 = type metadata accessor for HTTPError;
  }

  else
  {
    v34 = type metadata accessor for WebRequestResponseError.ErrorType;
  }

  sub_251C17E48(v10, v34);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v35 = sub_251C70764();
  __swift_project_value_buffer(v35, qword_2813E8130);
  v36 = sub_251C70744();
  v37 = sub_251C713C4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_251A6C000, v36, v37, "WebRequestPerformer.catchAndRefreshToken: re-throwing error", v38, 2u);
    MEMORY[0x25308E2B0](v38, -1, -1);
  }

  v39 = v0[44];
  v40 = v0[22];

  sub_251C17F10(v39, v40, type metadata accessor for WebRequestResponseError);
  swift_willThrowTypedImpl();
  sub_251C17E48(v0[44], type metadata accessor for WebRequestResponseError);

  v41 = v0[1];

  return v41();
}

uint64_t sub_251C16DB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {
    v4 = sub_251C17868;
  }

  else
  {
    v4 = sub_251C16ECC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_251C16ECC()
{
  v1 = v0[18];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v0[5] = v2;
  v0[6] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_251C17D50(v2, v3, boxed_opaque_existential_1);

  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = sub_251C16FF8;

  JUMPOUT(0x251C695F4);
}

uint64_t sub_251C16FF8(uint64_t a1)
{
  *(*v2 + 440) = a1;

  if (v1)
  {
    v3 = sub_251C17304;
  }

  else
  {
    v3 = sub_251C1710C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251C1710C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v3)
    {
      if ((v1 & 0xFF000000000000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v4 = v2;
    v5 = v2 >> 32;
LABEL_8:
    if (v4 != v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v3 == 2)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    goto LABEL_8;
  }

LABEL_9:
  sub_251A83028(v0[12], v0[13]);
  v2 = 0;
  v1 = 0xF000000000000000;
LABEL_10:
  v6 = v0[55];
  v7 = v0[52];
  v8 = v0[44];
  v9 = v0[30];
  v10 = v0[17];
  sub_251A823B4((v0 + 2), v10);
  v10[5] = v2;
  v10[6] = v1;
  v10[7] = v6;

  sub_251C17E48(v9, type metadata accessor for HTTPError);
  sub_251C17E48(v8, type metadata accessor for WebRequestResponseError);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_251C17304()
{
  v40 = v0;
  v1 = v0[52];
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[37];
  v5 = v0[35];
  sub_251C17EA8(v0[34], v5, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C17EA8(v5, v4, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4((v0 + 2), v2);
  sub_251C17F10(v4, v2 + *(v3 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  swift_willThrowTypedImpl();
  sub_251C17E48(v4, type metadata accessor for WebRequestResponseError.ErrorType);
  v6 = swift_allocError();
  sub_251C17EA8(v2, v7, type metadata accessor for WebRequestResponseError);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v8 = v6;
  v9 = sub_251C70744();
  v10 = sub_251C713D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_251BBFFA4(v0[8], v0[9]);
    v15 = sub_251B10780(v13, v14, &v39);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_251A6C000, v9, v10, "WebRequestResponseError.catchAndRefreshToken: final error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  v16 = v0[41];
  v0[14] = v6;
  v17 = v6;
  sub_251A82284();
  v18 = swift_dynamicCast();
  v19 = *(v16 + 56);
  if (v18)
  {
    v20 = v0[42];
    v21 = v0[30];
    v22 = v0[24];
    v23 = v0[22];
    v19(v22, 0, 1, v0[40]);
    sub_251C17EA8(v22, v20, type metadata accessor for WebRequestResponseError);
    sub_251C17F10(v20, v23, type metadata accessor for WebRequestResponseError);
    swift_willThrowTypedImpl();

    v24 = type metadata accessor for WebRequestResponseError;
    v25 = v20;
  }

  else
  {
    v26 = v0[32];
    v27 = v0[24];
    v19(v27, 1, 1, v0[40]);
    sub_251C17F78(v27);
    v0[15] = v6;
    v28 = v6;
    v29 = swift_dynamicCast();
    v30 = *(v26 + 56);
    v31 = v0[33];
    v32 = v0[23];
    if (v29)
    {
      v30(v0[23], 0, 1, v0[31]);
      sub_251C17EA8(v32, v31, type metadata accessor for WebRequestResponseError.ErrorType);
    }

    else
    {
      v30(v0[23], 1, 1, v0[31]);
      *v31 = v6;
      swift_storeEnumTagMultiPayload();
      v33 = v6;
    }

    v34 = v0[40];
    v35 = v0[33];
    v21 = v0[30];
    v36 = v0[22];
    sub_251A823B4(v0[18], v36);
    sub_251C17F10(v35, v36 + *(v34 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
    swift_willThrowTypedImpl();

    v24 = type metadata accessor for WebRequestResponseError.ErrorType;
    v25 = v35;
  }

  sub_251C17E48(v25, v24);
  sub_251C17E48(v21, type metadata accessor for HTTPError);
  sub_251C17E48(v0[44], type metadata accessor for WebRequestResponseError);

  v37 = v0[1];

  return v37();
}

uint64_t sub_251C17868()
{
  v34 = v0;
  v1 = v0[53];
  v2 = v1;
  v3 = sub_251C70744();
  v4 = sub_251C713D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_251BBFFA4(v0[8], v0[9]);
    v9 = sub_251B10780(v7, v8, &v33);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_251A6C000, v3, v4, "WebRequestResponseError.catchAndRefreshToken: final error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25308E2B0](v6, -1, -1);
    MEMORY[0x25308E2B0](v5, -1, -1);
  }

  v10 = v0[41];
  v0[14] = v1;
  v11 = v1;
  sub_251A82284();
  v12 = swift_dynamicCast();
  v13 = *(v10 + 56);
  if (v12)
  {
    v14 = v0[42];
    v15 = v0[30];
    v16 = v0[24];
    v17 = v0[22];
    v13(v16, 0, 1, v0[40]);
    sub_251C17EA8(v16, v14, type metadata accessor for WebRequestResponseError);
    sub_251C17F10(v14, v17, type metadata accessor for WebRequestResponseError);
    swift_willThrowTypedImpl();

    v18 = type metadata accessor for WebRequestResponseError;
    v19 = v14;
  }

  else
  {
    v20 = v0[32];
    v21 = v0[24];
    v13(v21, 1, 1, v0[40]);
    sub_251C17F78(v21);
    v0[15] = v1;
    v22 = v1;
    v23 = swift_dynamicCast();
    v24 = *(v20 + 56);
    v25 = v0[33];
    v26 = v0[23];
    if (v23)
    {
      v24(v0[23], 0, 1, v0[31]);
      sub_251C17EA8(v26, v25, type metadata accessor for WebRequestResponseError.ErrorType);
    }

    else
    {
      v24(v0[23], 1, 1, v0[31]);
      *v25 = v1;
      swift_storeEnumTagMultiPayload();
      v27 = v1;
    }

    v28 = v0[40];
    v29 = v0[33];
    v15 = v0[30];
    v30 = v0[22];
    sub_251A823B4(v0[18], v30);
    sub_251C17F10(v29, v30 + *(v28 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
    swift_willThrowTypedImpl();

    v18 = type metadata accessor for WebRequestResponseError.ErrorType;
    v19 = v29;
  }

  sub_251C17E48(v19, v18);
  sub_251C17E48(v15, type metadata accessor for HTTPError);
  sub_251C17E48(v0[44], type metadata accessor for WebRequestResponseError);

  v31 = v0[1];

  return v31();
}

void sub_251C17CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251C17D50(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a1 - 1) + 16))(a3, v3, a1);
  HKFHIRCredential.asAuthorizationHeader()(&v11);
  object = v11.value.name._object;
  if (v11.value.name._object)
  {
    countAndFlagsBits = v11.value.value._countAndFlagsBits;
    v7 = v11.value.value._object;
    v9 = v11.value.name._countAndFlagsBits;
    v10._countAndFlagsBits = 0x7A69726F68747541;
    v10._object = 0xED00006E6F697461;
    WebRequest.removeHeader(name:)(v10);
    v11.value.name._countAndFlagsBits = v9;
    v11.value.name._object = object;
    v11.value.value._countAndFlagsBits = countAndFlagsBits;
    v11.value.value._object = v7;
    v12.name._countAndFlagsBits = &v11;
    v12.name._object = a1;
    v12.value._countAndFlagsBits = a2;
    WebRequest.add(header:)(v12);
    sub_251B220A8(v9, object, countAndFlagsBits, v7);
  }
}

uint64_t sub_251C17E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C17EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C17F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C17F78(uint64_t a1)
{
  sub_251C17CFC(0, &qword_27F47C638, type metadata accessor for WebRequestResponseError);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C17FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *HKClinicalGatewayFeature.webRequestsForInteraction(_:substitutions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [v3 interactions];
  sub_251A82AA4();
  v6 = sub_251C71154();

  *&v33[0] = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25308D460](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 name];
      v13 = sub_251C70F14();
      v15 = v14;

      if (v13 == a1 && v15 == a2)
      {
      }

      else
      {
        v17 = sub_251C719D4();

        if ((v17 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      sub_251C71734();
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
LABEL_6:
      ++v8;
      if (v11 == i)
      {
        v18 = *&v33[0];
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_23:

  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    goto LABEL_44;
  }

  for (j = *(v18 + 16); j; j = sub_251C717F4())
  {
    v20 = 0;
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x25308D460](v20, v18);
      }

      else
      {
        if (v20 >= *(v18 + 16))
        {
          goto LABEL_43;
        }

        v22 = *(v18 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v25 = v34;
      HKClinicalGatewayEndpointSchema.asWebRequest(substitutions:)(a3, &v31);
      v34 = v25;
      if (v25)
      {

        goto LABEL_46;
      }

      if (v32)
      {
        sub_251A7E8D8(&v31, v33);
        sub_251A7E8D8(v33, &v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_251C395B4(0, v21[2] + 1, 1, v21);
        }

        v27 = v21[2];
        v26 = v21[3];
        if (v27 >= v26 >> 1)
        {
          v21 = sub_251C395B4((v26 > 1), v27 + 1, 1, v21);
        }

        v21[2] = v27 + 1;
        sub_251A7E8D8(&v31, &v21[5 * v27 + 4]);
      }

      else
      {
        sub_251C18384(&v31);
      }

      ++v20;
      if (v24 == j)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_46:

  return v21;
}

uint64_t sub_251C18384(uint64_t a1)
{
  sub_251C183E0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251C183E0(uint64_t a1)
{
  if (!qword_27F47C640)
  {
    sub_251C18438();
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C640);
    }
  }
}

unint64_t sub_251C18438()
{
  result = qword_27F4798E0;
  if (!qword_27F4798E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4798E0);
  }

  return result;
}

unint64_t sub_251C1849C()
{
  v1 = v0;
  v2 = sub_251C4C024(MEMORY[0x277D84F90]);
  v3 = *v1;
  if (*v1)
  {
    sub_251C70F14();
    *(&v29 + 1) = v4;
    v5 = v3;
    sub_251C71644();
    v30 = sub_251AB6108();
    *&v29 = v5;
    sub_251ACFB54(&v29, v28);
    v6 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_251ACD354(v28, v31, isUniquelyReferenced_nonNull_native);

    sub_251ACFB64(v31);
  }

  v8 = *(v1 + 8);
  if (v8)
  {
    *&v29 = sub_251C70F14();
    *(&v29 + 1) = v9;
    v10 = v8;
    sub_251C71644();
    v30 = sub_251AB6108();
    *&v29 = v10;
    sub_251ACFB54(&v29, v28);
    v11 = v10;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_251ACD354(v28, v31, v12);

    sub_251ACFB64(v31);
  }

  v13 = *(v1 + 16);
  if (v13)
  {
    *&v29 = sub_251C70F14();
    *(&v29 + 1) = v14;
    v15 = v13;
    sub_251C71644();
    v30 = sub_251AB6108();
    *&v29 = v15;
    sub_251ACFB54(&v29, v28);
    v16 = v15;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_251ACD354(v28, v31, v17);

    sub_251ACFB64(v31);
  }

  v18 = MEMORY[0x277D837D0];
  v19 = *(v1 + 32);
  if (v19)
  {
    v20 = *(v1 + 24);
    *&v29 = sub_251C70F14();
    *(&v29 + 1) = v21;

    sub_251C71644();
    v30 = v18;
    *&v29 = v20;
    *(&v29 + 1) = v19;
    sub_251ACFB54(&v29, v28);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_251ACD354(v28, v31, v22);
    sub_251ACFB64(v31);
  }

  v23 = *(v1 + 48);
  if (v23)
  {
    v24 = *(v1 + 40);
    *&v29 = sub_251C70F14();
    *(&v29 + 1) = v25;

    sub_251C71644();
    v30 = v18;
    *&v29 = v24;
    *(&v29 + 1) = v23;
    sub_251ACFB54(&v29, v28);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_251ACD354(v28, v31, v26);
    sub_251ACFB64(v31);
  }

  return v2;
}

uint64_t sub_251C187AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_251C70404();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *(v1 + 32);
  if (v5)
  {
    v6 = (v5 + 56);
    v7 = *(v5 + 16) + 1;
    while (--v7)
    {
      v8 = *v6;
      if (*(v6 - 3) != 0xD000000000000016 || 0x8000000251C90B20 != *(v6 - 2))
      {
        v6 += 4;
        if ((sub_251C719D4() & 1) == 0)
        {
          continue;
        }
      }

      if (v8)
      {

        v10 = sub_251C6FE84();
        v12 = v11;

        if (v12 >> 60 != 15)
        {
          v35 = type metadata accessor for PBLookupInfo(0);
          v36[0] = v10;
          v36[1] = v12;
          v38 = 0;
          memset(v37, 0, sizeof(v37));
          sub_251A858C4(v10, v12);
          sub_251C703F4();
          sub_251C18F40();
          sub_251C705A4();
          sub_251A8596C(v10, v12);
          v31 = *(*(v35 - 8) + 56);
          v32 = a1;
          v33 = 0;
          v30 = v35;
          return v31(v32, v33, 1, v30);
        }
      }

      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v13 = sub_251C70764();
      __swift_project_value_buffer(v13, qword_2813E8130);
      sub_251C18E90(v1, v37);
      v14 = sub_251C70744();
      v15 = sub_251C713D4();
      sub_251C18EEC(v2);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v36[0] = v17;
        *v16 = 136315138;
        v18 = v2[1];
        *&v37[0] = *v2;
        *(&v37[0] + 1) = v18;

        sub_251C719F4();
        v19 = HKSensitiveLogItem();
        swift_unknownObjectRelease();
        sub_251C715C4();
        swift_unknownObjectRelease();
        v20 = sub_251C70F74();
        v22 = sub_251B10780(v20, v21, v36);

        *(v16 + 4) = v22;
        v23 = "Could not get data bytes of PBLookupInfo from docRef. ID: %s.";
        goto LABEL_19;
      }

      goto LABEL_20;
    }
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v24 = sub_251C70764();
  __swift_project_value_buffer(v24, qword_2813E8130);
  sub_251C18E90(v1, v37);
  v14 = sub_251C70744();
  v15 = sub_251C713C4();
  sub_251C18EEC(v2);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36[0] = v17;
    *v16 = 136315138;
    v25 = v2[1];
    *&v37[0] = *v2;
    *(&v37[0] + 1) = v25;

    sub_251C719F4();
    v26 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v27 = sub_251C70F74();
    v29 = sub_251B10780(v27, v28, v36);

    *(v16 + 4) = v29;
    v23 = "No attachment with contentType of application/x-protobuf found for docRef. ID: %s";
LABEL_19:
    _os_log_impl(&dword_251A6C000, v14, v15, v23, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x25308E2B0](v17, -1, -1);
    MEMORY[0x25308E2B0](v16, -1, -1);
  }

LABEL_20:

  v30 = type metadata accessor for PBLookupInfo(0);
  v31 = *(*(v30 - 8) + 56);
  v32 = a1;
  v33 = 1;
  return v31(v32, v33, 1, v30);
}

unint64_t sub_251C18F40()
{
  result = qword_27F4795D0;
  if (!qword_27F4795D0)
  {
    type metadata accessor for PBLookupInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4795D0);
  }

  return result;
}

uint64_t sub_251C18F98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = type metadata accessor for PBNode(0);
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for PBBlob(0);
  v49 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for PBBlobs(0);
  sub_251C703A4();
  v10 = *(a1 + 16);
  if (v10)
  {
    v45 = a2;
    v46 = v10;
    v58 = v9;
    sub_251C0BBEC(0, v10, 0);
    v11 = 0;
    v12 = v58;
    v51 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v50 = xmmword_251C745D0;
    v47 = v4;
    v48 = a1;
    v52 = v6;
    while (1)
    {
      if (v11 >= *(a1 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v54 = v12;
      sub_251C19500(v51 + *(v4 + 72) * v11, v6);
      *v8 = 0;
      v8[1] = 0xE000000000000000;
      *(v8 + 1) = v50;
      v8[4] = v9;
      v13 = v53;
      sub_251C703A4();
      v14 = *(v13 + 32);
      v15 = sub_251C70384();
      (*(*(v15 - 8) + 56))(v8 + v14, 1, 1, v15);
      sub_251C19564();
      v16 = v56;
      v17 = sub_251C70594();
      if (v16)
      {
        v56 = v16;
        v32 = v45;
        v6 = v52;
        goto LABEL_16;
      }

      v19 = v17;
      v20 = v18;
      v21 = sub_251B1C34C(v17, v18);
      v56 = 0;
      v22 = v21;
      v24 = v23;
      sub_251A83028(v19, v20);
      *v8 = v22;
      v8[1] = v24;
      v25 = v56;
      v6 = v52;
      v26 = sub_251C70594();
      v56 = v25;
      if (v25)
      {
        break;
      }

      v28 = v26;
      v29 = v27;
      sub_251A83028(v8[2], v8[3]);
      v8[2] = v28;
      v8[3] = v29;
      sub_251C195BC(v6, type metadata accessor for PBNode);
      v12 = v54;
      v58 = v54;
      v31 = *(v54 + 16);
      v30 = *(v54 + 24);
      a1 = v48;
      if (v31 >= v30 >> 1)
      {
        sub_251C0BBEC((v30 > 1), v31 + 1, 1);
        v12 = v58;
      }

      ++v11;
      *(v12 + 16) = v31 + 1;
      sub_251C1961C(v8, v12 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v31);
      v4 = v47;
      if (v46 == v11)
      {

        *v45 = v12;
        return result;
      }
    }

    if (qword_2813E26F8 == -1)
    {
      goto LABEL_13;
    }

LABEL_18:
    swift_once();
LABEL_13:
    v33 = sub_251C70764();
    __swift_project_value_buffer(v33, qword_2813E8130);
    v34 = v56;
    v35 = v56;
    v36 = sub_251C70744();
    v37 = sub_251C713D4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v57 = v39;
      *v38 = 136315138;
      swift_getErrorValue();
      v40 = sub_251C71A44();
      v42 = sub_251B10780(v40, v41, &v57);

      *(v38 + 4) = v42;
      v6 = v52;
      _os_log_impl(&dword_251A6C000, v36, v37, "Could not get serialized data from PBPushBlobsRequest. Error: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x25308E2B0](v39, -1, -1);
      MEMORY[0x25308E2B0](v38, -1, -1);
    }

    v32 = v45;
    swift_willThrow();
LABEL_16:
    sub_251C195BC(v8, type metadata accessor for PBBlob);

    sub_251C195BC(v6, type metadata accessor for PBNode);

    return sub_251C195BC(v32, type metadata accessor for PBBlobs);
  }

  else
  {

    *a2 = MEMORY[0x277D84F90];
  }

  return result;
}
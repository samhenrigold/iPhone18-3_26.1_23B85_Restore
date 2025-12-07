uint64_t sub_251B00744(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
      goto LABEL_52;
    }

    v53 = v4;
    v47 = v7;
LABEL_31:
    v27 = v5 - 56;
    v55 = v6;
    while (1)
    {
      v28 = *(v12 - 2);
      v29 = *(v12 - 1);
      v49 = v12;
      v30 = *(v6 - 2);
      v31 = *(v6 - 1);

      sub_251AFF694(v28, v29);

      sub_251AFF694(v30, v31);
      if (v29 >= 2)
      {
        sub_251AFF694(v28, v29);
        v32 = v28;
        v33 = v29;
      }

      else
      {
        sub_251AFF7F4(v28, v29);
        v32 = 0;
        v33 = 0xE000000000000000;
      }

      v51 = v27;
      if (v31 >= 2)
      {

        v34 = v31;
        if (v30 != v32)
        {
          goto LABEL_42;
        }
      }

      else
      {
        sub_251AFF7F4(v30, v31);
        v34 = 0xE000000000000000;
        if (v32)
        {
          goto LABEL_42;
        }
      }

      if (v34 != v33)
      {
LABEL_42:
        v35 = sub_251C719D4();
        goto LABEL_43;
      }

      v35 = 0;
LABEL_43:

      sub_251AFF7F4(v30, v31);

      sub_251AFF7F4(v28, v29);
      if (v35)
      {
        v40 = v55 - 56;
        v5 = v51;
        v4 = v53;
        v12 = v49;
        if ((v51 + 56) != v55)
        {
          v41 = *v40;
          v42 = *(v55 - 40);
          v43 = *(v55 - 24);
          *(v51 + 48) = *(v55 - 1);
          *(v51 + 16) = v42;
          *(v51 + 32) = v43;
          *v51 = v41;
        }

        if (v49 <= v53 || (v6 = v55 - 56, v40 <= v47))
        {
          v6 = v55 - 56;
          goto LABEL_52;
        }

        goto LABEL_31;
      }

      v36 = v49 - 56;
      v4 = v53;
      v6 = v55;
      if ((v51 + 56) != v49)
      {
        v37 = *v36;
        v38 = *(v49 - 40);
        v39 = *(v49 - 24);
        *(v51 + 48) = *(v49 - 1);
        *(v51 + 16) = v38;
        *(v51 + 32) = v39;
        *v51 = v37;
      }

      v27 = v51 - 56;
      v12 = v49 - 56;
      if (v36 <= v53)
      {
        v12 = v49 - 56;
        goto LABEL_52;
      }
    }
  }

  if (a4 != __dst || &__dst[56 * v9] <= a4)
  {
    memmove(a4, __dst, 56 * v9);
  }

  v12 = &v4[56 * v9];
  if (v8 >= 56 && v6 < v5)
  {
    v48 = &v4[56 * v9];
    v50 = v5;
    do
    {
      v46 = v7;
      v13 = *(v6 + 5);
      v14 = *(v6 + 6);
      v54 = v6;
      v15 = *(v4 + 5);
      v16 = *(v4 + 6);
      v52 = v4;

      sub_251AFF694(v13, v14);

      sub_251AFF694(v15, v16);
      if (v14 >= 2)
      {
        sub_251AFF694(v13, v14);
        v17 = v13;
        v18 = v14;
      }

      else
      {
        sub_251AFF7F4(v13, v14);
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      if (v16 >= 2)
      {

        v19 = v16;
        if (v15 != v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_251AFF7F4(v15, v16);
        v19 = 0xE000000000000000;
        if (v17)
        {
          goto LABEL_17;
        }
      }

      if (v19 == v18)
      {

        sub_251AFF7F4(v15, v16);

        sub_251AFF7F4(v13, v14);
LABEL_20:
        v21 = v52;
        v4 = v52 + 56;
        v22 = v46;
        v23 = v50;
        if (v46 == v52)
        {
          goto LABEL_22;
        }

LABEL_21:
        v24 = *v21;
        v25 = *(v21 + 1);
        v26 = *(v21 + 2);
        *(v22 + 6) = *(v21 + 6);
        *(v22 + 1) = v25;
        *(v22 + 2) = v26;
        *v22 = v24;
        goto LABEL_22;
      }

LABEL_17:
      v20 = sub_251C719D4();

      sub_251AFF7F4(v15, v16);

      sub_251AFF7F4(v13, v14);
      if ((v20 & 1) == 0)
      {
        goto LABEL_20;
      }

      v21 = v6;
      v22 = v46;
      v6 += 56;
      v4 = v52;
      v23 = v50;
      if (v46 != v54)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 = v22 + 56;
      v12 = v48;
    }

    while (v4 < v48 && v6 < v23);
  }

  v6 = v7;
LABEL_52:
  v44 = (v12 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[56 * v44])
  {
    memmove(v6, v4, 56 * v44);
  }

  return 1;
}

void *sub_251B00DAC(void *a1)
{
  sub_251B00F34(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B00F90();
  sub_251C71B04();
  if (!v1)
  {
    sub_251B00FE4();
    sub_251B01034();
    sub_251C718A4();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void sub_251B00F34(uint64_t a1)
{
  if (!qword_27F479C58)
  {
    sub_251B00F90();
    v1 = sub_251C718E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479C58);
    }
  }
}

unint64_t sub_251B00F90()
{
  result = qword_27F479C60;
  if (!qword_27F479C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C60);
  }

  return result;
}

void sub_251B00FE4()
{
  if (!qword_27F479C68)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479C68);
    }
  }
}

unint64_t sub_251B01034()
{
  result = qword_27F479C70;
  if (!qword_27F479C70)
  {
    sub_251B00FE4();
    sub_251B010AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C70);
  }

  return result;
}

unint64_t sub_251B010AC()
{
  result = qword_27F479C78;
  if (!qword_27F479C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C78);
  }

  return result;
}

unint64_t sub_251B01114()
{
  result = qword_27F479C80;
  if (!qword_27F479C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C80);
  }

  return result;
}

unint64_t sub_251B0116C()
{
  result = qword_27F479C88;
  if (!qword_27F479C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C88);
  }

  return result;
}

unint64_t sub_251B011C4()
{
  result = qword_27F479C90;
  if (!qword_27F479C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C90);
  }

  return result;
}

uint64_t sub_251B01218(void *a1)
{
  sub_251B0152C(0);
  v15[0] = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v6 = sub_251C70764();
  __swift_project_value_buffer(v6, qword_2813E8130);
  v7 = sub_251C70744();
  v8 = sub_251C713C4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_251A6C000, v7, v8, "Retrieving multi device ID.", v9, 2u);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  v15[1] = sub_251C71454();
  *(swift_allocObject() + 16) = a1;
  v10 = a1;
  sub_251C70964();
  sub_251B01638(0);
  v11 = MEMORY[0x277CBCD88];
  sub_251B01F58(0, &qword_2813E2160, MEMORY[0x277CBCD88]);
  sub_251B016C4(&qword_2813E2038, sub_251B01638, MEMORY[0x277CBCEB0]);
  sub_251B01F08(&qword_2813E2168, &qword_2813E2160, v11, MEMORY[0x277CBCD90]);
  sub_251C70B94();

  sub_251B016C4(&qword_2813E2310, sub_251B0152C, MEMORY[0x277CBCCE0]);
  v12 = v15[0];
  v13 = sub_251C70A94();
  (*(v3 + 8))(v5, v12);
  return v13;
}

void sub_251B0152C(uint64_t a1)
{
  if (!qword_2813E2308)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_251B01F58(255, &qword_2813E2160, MEMORY[0x277CBCD88]);
    sub_251B01638(255);
    sub_251B01F08(&qword_2813E2168, &qword_2813E2160, v1, MEMORY[0x277CBCD90]);
    sub_251B016C4(&qword_2813E2038, sub_251B01638, MEMORY[0x277CBCEB0]);
    v2 = sub_251C708D4();
    if (!v3)
    {
      atomic_store(v2, &qword_2813E2308);
    }
  }
}

void sub_251B01638(uint64_t a1)
{
  if (!qword_2813E2030)
  {
    sub_251B01BF0(255, &qword_2813E1FA0, MEMORY[0x277D83D88]);
    sub_251A82284();
    v1 = sub_251C70A54();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2030);
    }
  }
}

uint64_t sub_251B016C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251B0170C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_251B01BF0(0, &qword_2813E2090, MEMORY[0x277CBCE78]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  sub_251B01F58(0, &qword_2813E1C00, MEMORY[0x277CBCF38]);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = a1[1];
  if (v16)
  {
    v31 = v8;
    v32 = v13;
    v17 = *a1;
    v18 = qword_2813E26F8;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_251C70764();
    __swift_project_value_buffer(v19, qword_2813E8130);

    v20 = sub_251C70744();
    v21 = sub_251C713C4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = a3;
      v23 = v22;
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_251B10780(v17, v16, v33);
      _os_log_impl(&dword_251A6C000, v20, v21, "Multi device ID found. Device ID: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x25308E2B0](v24, -1, -1);
      v25 = v23;
      a3 = v30;
      MEMORY[0x25308E2B0](v25, -1, -1);
    }

    v26 = v31;
    v33[0] = v17;
    v33[1] = v16;
    sub_251C70A24();
    sub_251A82284();
    sub_251C709F4();
    (*(v26 + 8))(v10, v7);
    sub_251B01F08(&qword_2813E1C08, &qword_2813E1C00, MEMORY[0x277CBCF38], MEMORY[0x277CBCF40]);
    v27 = sub_251C70A94();
    result = (*(v32 + 8))(v15, v12);
  }

  else
  {
    result = sub_251B01C44(a2);
    v27 = result;
  }

  *a3 = v27;
  return result;
}

void sub_251B01A80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_251C70EE4();
  v12 = sub_251C70EE4();
  v13 = swift_allocObject();
  v13[2] = sub_251B01FC8;
  v13[3] = v10;
  v13[4] = a4;
  v13[5] = a5;
  v15[4] = sub_251AC6600;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_251BCB170;
  v15[3] = &block_descriptor_5;
  v14 = _Block_copy(v15);

  [a3 setString:v11 forKey:v12 completion:v14];
  _Block_release(v14);
}

void sub_251B01BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251B01C44(void *a1)
{
  v2 = sub_251C70074();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C70064();
  v6 = sub_251C70024();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v9 = sub_251C70764();
  __swift_project_value_buffer(v9, qword_2813E8130);

  v10 = sub_251C70744();
  v11 = sub_251C713C4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_251B10780(v6, v8, &v20);
    _os_log_impl(&dword_251A6C000, v10, v11, "Creating and storing a new multi device ID. Device ID: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25308E2B0](v13, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v6;
  v14[4] = v8;
  v15 = MEMORY[0x277CBCEA8];
  sub_251B01F58(0, &qword_2813E2020, MEMORY[0x277CBCEA8]);
  swift_allocObject();
  v16 = a1;
  v20 = sub_251C70A64();
  sub_251B01F08(&qword_2813E2028, &qword_2813E2020, v15, MEMORY[0x277CBCEB0]);
  v17 = sub_251C70A94();

  return v17;
}

uint64_t sub_251B01F08(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251B01F58(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251B01F58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_251A82284();
    v7 = a3(a1, MEMORY[0x277D837D0], v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251B01FEC(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v23 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *(v23 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_251C717F4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v22 = sub_251C717F4();
      v9 = v22 + v6;
      if (__OFADD__(v22, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_251C717F4();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_251C716C4();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v6)
    {
      goto LABEL_36;
    }

    v26 = v2;
    v14 = v10 + 8 * v11 + 32;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_251AE406C(0);
      sub_251B04D4C(&qword_27F479260, sub_251AE406C, MEMORY[0x277D83988]);
      for (i = 0; i != v13; ++i)
      {
        v16 = sub_251AA7634(v25, i, v4);
        v18 = *v17;

        (v16)(v25, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for ClinicalSharingSyncContext(0);
      swift_arrayInitWithCopy();
    }

    v2 = v26;
    if (v6 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v6);
      v21 = v19 + v6;
      if (v20)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = sub_251C717F4();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_251B022AC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ClinicalSharingDataNodeInfo(0);
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B05194(0, &qword_27F479D08, sub_251B07EA0, MEMORY[0x277CBCE78]);
  v58 = v10;
  v56 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v54 = &v49 - v11;
  sub_251B07ED4(0);
  v57 = v12;
  v55 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B09638(0);
  v60 = *(v14 - 8);
  v61 = v14;
  MEMORY[0x28223BE20](v14);
  v59 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B05118(0, &qword_27F4799E8, type metadata accessor for PBNode, type metadata accessor for ClinicalSharingDataNodeInfo);
  v66 = v16;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v65 = &v49 - v21;
  v22 = type metadata accessor for PBNode(0);
  v62 = *(v22 - 8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = *(*a1 + 16);
  if (v26)
  {
    v49 = a2;
    v50 = a3;
    v51 = a4;
    v67 = MEMORY[0x277D84F90];
    sub_251C0BAD4(0, v26, 0);
    v27 = v67;
    v28 = v25 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v64 = *(v17 + 72);
    v29 = v28;
    v30 = v26;
    do
    {
      v31 = v65;
      sub_251B09658(v29, v65, &qword_27F4799E8, type metadata accessor for ClinicalSharingDataNodeInfo);
      sub_251B096D4(v31, v20, &qword_27F4799E8, type metadata accessor for ClinicalSharingDataNodeInfo);
      v32 = *(v66 + 48);
      sub_251B095CC(v20, v24, type metadata accessor for PBNode);
      sub_251B06650(&v20[v32], type metadata accessor for ClinicalSharingDataNodeInfo);
      v67 = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_251C0BAD4((v33 > 1), v34 + 1, 1);
        v27 = v67;
      }

      *(v27 + 16) = v34 + 1;
      sub_251B095CC(v24, v27 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v34, type metadata accessor for PBNode);
      v29 += v64;
      --v30;
    }

    while (v30);
    v67 = MEMORY[0x277D84F90];
    sub_251C0BA8C(0, v26, 0);
    v35 = v67;
    v36 = v52;
    do
    {
      v37 = v65;
      sub_251B09658(v28, v65, &qword_27F4799E8, type metadata accessor for ClinicalSharingDataNodeInfo);
      sub_251B096D4(v37, v20, &qword_27F4799E8, type metadata accessor for ClinicalSharingDataNodeInfo);
      sub_251B095CC(&v20[*(v66 + 48)], v36, type metadata accessor for ClinicalSharingDataNodeInfo);
      sub_251B06650(v20, type metadata accessor for PBNode);
      v67 = v35;
      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_251C0BA8C((v38 > 1), v39 + 1, 1);
        v36 = v52;
        v35 = v67;
      }

      *(v35 + 16) = v39 + 1;
      sub_251B095CC(v36, v35 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v39, type metadata accessor for ClinicalSharingDataNodeInfo);
      v28 += v64;
      --v26;
    }

    while (v26);
    a2 = v49;
    a3 = v50;
    a4 = v51;
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
    v35 = MEMORY[0x277D84F90];
  }

  v67 = v27;
  sub_251B07EA0(0);
  v40 = v54;
  sub_251C70A24();
  sub_251A82284();
  v41 = v53;
  v42 = v58;
  sub_251C709F4();
  (*(v56 + 8))(v40, v42);
  v43 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v44 = sub_251B08048(v43, a3);
  (*(v55 + 8))(v41, v57);
  v67 = v44;
  *(swift_allocObject() + 16) = v35;
  sub_251B07F28(0);
  sub_251ABA5A0(0);
  sub_251B04D4C(&qword_27F479C20, sub_251B07F28, MEMORY[0x277CBCD90]);
  v45 = v59;
  sub_251C70AE4();

  sub_251B04D4C(&qword_27F479DF0, sub_251B09638, MEMORY[0x277CBCC08]);
  v46 = v61;
  v47 = sub_251C70A94();
  result = (*(v60 + 8))(v45, v46);
  *a4 = v47;
  return result;
}

uint64_t sub_251B02AC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  sub_251B08E1C(0);
  v36 = v4;
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B08F34(0);
  v37 = v7;
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (!v10)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_20:
    v2 = sub_251B08FF0(v12);

    if (qword_2813E26F8 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v11 < *(v9 + 16))
  {
    v13 = *(v9 + 32 + 8 * v11);
    v2 = *(v13 + 16);
    v14 = v12[2];
    v15 = v2 + v14;
    if (__OFADD__(v14, v2))
    {
      goto LABEL_26;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v15 <= v12[3] >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v17 = v2 + v14;
      }

      else
      {
        v17 = v14;
      }

      v12 = sub_251C3926C(isUniquelyReferenced_nonNull_native, v17, 1, v12);
      if (*(v13 + 16))
      {
LABEL_15:
        v18 = (v12[3] >> 1) - v12[2];
        type metadata accessor for ClinicalSharingDataNodeInfo(0);
        if (v18 < v2)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v2)
        {
          v19 = v12[2];
          v20 = __OFADD__(v19, v2);
          v21 = v2 + v19;
          if (v20)
          {
            goto LABEL_29;
          }

          v12[2] = v21;
        }

        goto LABEL_4;
      }
    }

    if (v2)
    {
      goto LABEL_27;
    }

LABEL_4:
    if (v10 == ++v11)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_21:
  v22 = sub_251C70764();
  __swift_project_value_buffer(v22, qword_2813E8130);

  v23 = sub_251C70744();
  v24 = sub_251C713C4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v2[2];

    _os_log_impl(&dword_251A6C000, v23, v24, "Data nodes uploaded. Category Count: %ld", v25, 0xCu);
    MEMORY[0x25308E2B0](v25, -1, -1);
  }

  else
  {
  }

  v27 = v37;
  v26 = v38;
  v29 = v35;
  v28 = v36;
  v30 = v34;
  v40 = v2;
  sub_251B08ECC(0);
  sub_251B04D4C(&qword_27F479DC8, sub_251B08ECC, MEMORY[0x277D834C0]);
  sub_251C710D4();

  sub_251A82284();
  v31 = v39;
  sub_251C708E4();
  (*(v30 + 8))(v6, v28);
  sub_251B04D4C(&qword_27F479DD8, sub_251B08F34, MEMORY[0x277CBCD18]);
  v32 = sub_251C70A94();
  result = (*(v29 + 8))(v31, v27);
  *v26 = v32;
  return result;
}

uint64_t sub_251B02F54@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ClinicalSharingCategoryNodeInfo(0);
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B05194(0, &qword_27F479D08, sub_251B07EA0, MEMORY[0x277CBCE78]);
  v58 = v10;
  v56 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v54 = &v49 - v11;
  sub_251B07ED4(0);
  v57 = v12;
  v55 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B08D50(0);
  v60 = *(v14 - 8);
  v61 = v14;
  MEMORY[0x28223BE20](v14);
  v59 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B05118(0, &qword_27F479978, type metadata accessor for PBNode, type metadata accessor for ClinicalSharingCategoryNodeInfo);
  v66 = v16;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v65 = &v49 - v21;
  v22 = type metadata accessor for PBNode(0);
  v62 = *(v22 - 8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = *(*a1 + 16);
  if (v26)
  {
    v49 = a2;
    v50 = a3;
    v51 = a4;
    v67 = MEMORY[0x277D84F90];
    sub_251C0BAD4(0, v26, 0);
    v27 = v67;
    v28 = v25 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v64 = *(v17 + 72);
    v29 = v28;
    v30 = v26;
    do
    {
      v31 = v65;
      sub_251B09658(v29, v65, &qword_27F479978, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      sub_251B096D4(v31, v20, &qword_27F479978, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v32 = *(v66 + 48);
      sub_251B095CC(v20, v24, type metadata accessor for PBNode);
      sub_251B06650(&v20[v32], type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v67 = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_251C0BAD4((v33 > 1), v34 + 1, 1);
        v27 = v67;
      }

      *(v27 + 16) = v34 + 1;
      sub_251B095CC(v24, v27 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v34, type metadata accessor for PBNode);
      v29 += v64;
      --v30;
    }

    while (v30);
    v67 = MEMORY[0x277D84F90];
    sub_251C0BB1C(0, v26, 0);
    v35 = v67;
    v36 = v52;
    do
    {
      v37 = v65;
      sub_251B09658(v28, v65, &qword_27F479978, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      sub_251B096D4(v37, v20, &qword_27F479978, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      sub_251B095CC(&v20[*(v66 + 48)], v36, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      sub_251B06650(v20, type metadata accessor for PBNode);
      v67 = v35;
      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_251C0BB1C((v38 > 1), v39 + 1, 1);
        v36 = v52;
        v35 = v67;
      }

      *(v35 + 16) = v39 + 1;
      sub_251B095CC(v36, v35 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v39, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v28 += v64;
      --v26;
    }

    while (v26);
    a2 = v49;
    a3 = v50;
    a4 = v51;
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
    v35 = MEMORY[0x277D84F90];
  }

  v67 = v27;
  sub_251B07EA0(0);
  v40 = v54;
  sub_251C70A24();
  sub_251A82284();
  v41 = v53;
  v42 = v58;
  sub_251C709F4();
  (*(v56 + 8))(v40, v42);
  v43 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v44 = sub_251B08048(v43, a3);
  (*(v55 + 8))(v41, v57);
  v67 = v44;
  *(swift_allocObject() + 16) = v35;
  sub_251B07F28(0);
  sub_251AE64F0(0);
  sub_251B04D4C(&qword_27F479C20, sub_251B07F28, MEMORY[0x277CBCD90]);
  v45 = v59;
  sub_251C70AE4();

  sub_251B04D4C(&qword_27F479DB0, sub_251B08D50, MEMORY[0x277CBCC08]);
  v46 = v61;
  v47 = sub_251C70A94();
  result = (*(v60 + 8))(v45, v46);
  *a4 = v47;
  return result;
}

void sub_251B03768(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_20:
    if (qword_2813E26F8 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v5 < *(v3 + 16))
  {
    v7 = *(v3 + 32 + 8 * v5);
    v8 = *(v7 + 16);
    v9 = v6[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_26;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= v6[3] >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      v6 = sub_251C392A0(isUniquelyReferenced_nonNull_native, v12, 1, v6);
      if (*(v7 + 16))
      {
LABEL_15:
        v13 = (v6[3] >> 1) - v6[2];
        type metadata accessor for ClinicalSharingCategoryNodeInfo(0);
        if (v13 < v8)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v14 = v6[2];
          v15 = __OFADD__(v14, v8);
          v16 = v14 + v8;
          if (v15)
          {
            goto LABEL_29;
          }

          v6[2] = v16;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_27;
    }

LABEL_4:
    if (v4 == ++v5)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_21:
  v17 = sub_251C70764();
  __swift_project_value_buffer(v17, qword_2813E8130);

  v18 = sub_251C70744();
  v19 = sub_251C713C4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v6[2];

    _os_log_impl(&dword_251A6C000, v18, v19, "Category nodes uploaded. Count: %ld", v20, 0xCu);
    MEMORY[0x25308E2B0](v20, -1, -1);
  }

  else
  {
  }

  *a2 = v6;
}

uint64_t sub_251B039D8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v110 = a3;
  v108 = a2;
  v121 = a4;
  sub_251B05118(0, &qword_27F479C98, type metadata accessor for PBNode, type metadata accessor for ClinicalSharingSyncContext);
  v125 = v5;
  v124 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v101 - v6;
  sub_251B04AC4(0);
  v103 = v8;
  v102 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v101 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B04BFC(0);
  v106 = v10;
  v105 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v104 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B04CB8(0);
  v113 = v12;
  v111 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v107 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B04D94(0);
  v114 = v14;
  v112 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v109 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B04EB4(0);
  v119 = v16;
  v117 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v115 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B04F48(0);
  v120 = v18;
  v118 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v116 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B050E4(0);
  v129 = v20;
  v133 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v127 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v126 = &v101 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v101 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v123 = &v101 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v101 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v128 = &v101 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v122 = &v101 - v36;
  result = MEMORY[0x28223BE20](v35);
  v39 = &v101 - v38;
  v40 = *a1;
  v41 = *(*a1 + 16);
  v42 = MEMORY[0x277D84F90];
  v130 = v7;
  v131 = v41;
  v132 = v40;
  if (v41)
  {
    v43 = 0;
    v44 = v122;
    while (v43 < *(v40 + 16))
    {
      v45 = (*(v133 + 80) + 32) & ~*(v133 + 80);
      v46 = *(v133 + 72);
      sub_251B09564(v40 + v45 + v46 * v43, v39, sub_251B050E4);
      v47 = type metadata accessor for PBNode(0);
      if ((*(*(v47 - 8) + 48))(v39, 1, v47) == 1)
      {
        sub_251B095CC(v39, v44, sub_251B050E4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v134[0] = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_251C0BBA8(0, *(v42 + 16) + 1, 1);
          v44 = v122;
          v42 = *&v134[0];
        }

        v50 = *(v42 + 16);
        v49 = *(v42 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_251C0BBA8((v49 > 1), v50 + 1, 1);
          v44 = v122;
          v42 = *&v134[0];
        }

        *(v42 + 16) = v50 + 1;
        result = sub_251B095CC(v44, v42 + v45 + v50 * v46, sub_251B050E4);
        v7 = v130;
      }

      else
      {
        result = sub_251B06650(v39, sub_251B050E4);
      }

      ++v43;
      v40 = v132;
      if (v131 == v43)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_12:
  v51 = *(v42 + 16);
  if (v51)
  {
    v122 = v27;
    *&v134[0] = MEMORY[0x277D84F90];
    sub_251C71764();
    v52 = v42 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
    v53 = *(v133 + 72);
    v54 = v128;
    do
    {
      sub_251B09564(v52, v54, sub_251B050E4);
      sub_251B095CC(v54, v32, sub_251B050E4);
      sub_251B06650(v32, sub_251AE65AC);
      sub_251C71734();
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      v52 += v53;
      --v51;
    }

    while (v51);

    v55 = *&v134[0];
    v7 = v130;
    v27 = v122;
  }

  else
  {

    v55 = MEMORY[0x277D84F90];
  }

  v56 = MEMORY[0x277D84F90];
  v57 = v123;
  v58 = v132;
  if (v131)
  {
    v59 = 0;
    v60 = MEMORY[0x277D84F90];
    while (v59 < *(v58 + 16))
    {
      v61 = (*(v133 + 80) + 32) & ~*(v133 + 80);
      v62 = *(v133 + 72);
      sub_251B09564(v58 + v61 + v62 * v59, v57, sub_251B050E4);
      v63 = type metadata accessor for PBNode(0);
      if ((*(*(v63 - 8) + 48))(v57, 1, v63) == 1)
      {
        result = sub_251B06650(v57, sub_251B050E4);
      }

      else
      {
        sub_251B095CC(v57, v27, sub_251B050E4);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        *&v134[0] = v60;
        if ((v64 & 1) == 0)
        {
          sub_251C0BBA8(0, *(v60 + 16) + 1, 1);
          v60 = *&v134[0];
        }

        v66 = *(v60 + 16);
        v65 = *(v60 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_251C0BBA8((v65 > 1), v66 + 1, 1);
          v60 = *&v134[0];
        }

        *(v60 + 16) = v66 + 1;
        result = sub_251B095CC(v27, v60 + v61 + v66 * v62, sub_251B050E4);
        v7 = v130;
        v57 = v123;
      }

      ++v59;
      v58 = v132;
      if (v131 == v59)
      {
        goto LABEL_29;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_29:
  v67 = *(v60 + 16);
  if (v67)
  {
    v132 = v55;
    *&v134[0] = v56;
    result = sub_251C0BB64(0, v67, 0);
    v68 = 0;
    v69 = *&v134[0];
    v70 = v60 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
    while (v68 < *(v60 + 16))
    {
      v71 = v7;
      v72 = v126;
      sub_251B09564(v70 + *(v133 + 72) * v68, v126, sub_251B050E4);
      v73 = v127;
      sub_251B09564(v72, v127, sub_251B050E4);
      v74 = v129;

      v75 = type metadata accessor for PBNode(0);
      result = (*(*(v75 - 8) + 48))(v73, 1, v75);
      if (result == 1)
      {
        goto LABEL_42;
      }

      v76 = *(v125 + 48);
      sub_251B095CC(v73, v71, type metadata accessor for PBNode);
      v77 = v72;
      v78 = v128;
      sub_251B095CC(v77, v128, sub_251B050E4);
      v79 = *(v74 + 48);
      v7 = v71;
      *(v71 + v76) = *(v78 + v79);
      sub_251B06650(v78, sub_251AE65AC);
      *&v134[0] = v69;
      v81 = *(v69 + 16);
      v80 = *(v69 + 24);
      if (v81 >= v80 >> 1)
      {
        sub_251C0BB64((v80 > 1), v81 + 1, 1);
        v69 = *&v134[0];
      }

      ++v68;
      *(v69 + 16) = v81 + 1;
      result = sub_251B096D4(v7, v69 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v81, &qword_27F479C98, type metadata accessor for ClinicalSharingSyncContext);
      if (v67 == v68)
      {

        v55 = v132;
        goto LABEL_38;
      }
    }

    goto LABEL_41;
  }

  v69 = MEMORY[0x277D84F90];
LABEL_38:
  *&v134[0] = v69;
  sub_251B04B74(0);
  sub_251B04D4C(&qword_27F479CB0, sub_251B04B74, MEMORY[0x277D83970]);
  v82 = v101;
  sub_251C710D4();

  sub_251A82284();
  v83 = v104;
  v84 = v103;
  sub_251C708E4();
  (*(v102 + 8))(v82, v84);
  v85 = v108;
  __swift_project_boxed_opaque_existential_1(v108, v108[3]);
  type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  sub_251B04D4C(&qword_27F479CC8, sub_251B04BFC, MEMORY[0x277CBCD18]);
  v86 = v107;
  v87 = v106;
  sub_251C70B74();
  (*(v105 + 8))(v83, v87);
  sub_251A823B4(v85, &v136);
  sub_251AE5810(v110, v134);
  v88 = swift_allocObject();
  sub_251A7E8D8(&v136, v88 + 16);
  v89 = v134[3];
  *(v88 + 88) = v134[2];
  *(v88 + 104) = v89;
  *(v88 + 120) = v134[4];
  *(v88 + 136) = v135;
  v90 = v134[1];
  *(v88 + 56) = v134[0];
  *(v88 + 72) = v90;
  sub_251C70964();
  sub_251AE406C(0);
  sub_251B04E80(0);
  sub_251B04D4C(&qword_27F479CD8, sub_251B04CB8, MEMORY[0x277CBCB90]);
  v91 = MEMORY[0x277CBCD90];
  sub_251B04D4C(&qword_2813E2138, sub_251B04E80, MEMORY[0x277CBCD90]);
  v92 = v109;
  v93 = v113;
  sub_251C70B94();

  (*(v111 + 8))(v86, v93);
  v94 = MEMORY[0x277CBCCE0];
  sub_251B04D4C(&qword_27F479CE8, sub_251B04D94, MEMORY[0x277CBCCE0]);
  v95 = v115;
  v96 = v114;
  sub_251C70B64();
  (*(v112 + 8))(v92, v96);
  *(swift_allocObject() + 16) = v55;
  sub_251C70964();
  type metadata accessor for ClinicalSharingSyncContext(0);
  sub_251B05034(0);
  sub_251B04D4C(&qword_27F479CF8, sub_251B04EB4, MEMORY[0x277CBCCD0]);
  sub_251B04D4C(&qword_2813E21B8, sub_251B05034, v91);
  v97 = v116;
  v98 = v119;
  sub_251C70B94();

  (*(v117 + 8))(v95, v98);
  sub_251B04D4C(&qword_27F479D00, sub_251B04F48, v94);
  v99 = v120;
  v100 = sub_251C70A94();
  result = (*(v118 + 8))(v97, v99);
  *v121 = v100;
  return result;
}

void sub_251B04AC4(uint64_t a1)
{
  if (!qword_27F479CA0)
  {
    sub_251B04B74(255);
    sub_251B04D4C(&qword_27F479CB0, sub_251B04B74, MEMORY[0x277D83970]);
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479CA0);
    }
  }
}

void sub_251B04B74(uint64_t a1)
{
  if (!qword_27F479CA8)
  {
    sub_251B05118(255, &qword_27F479C98, type metadata accessor for PBNode, type metadata accessor for ClinicalSharingSyncContext);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479CA8);
    }
  }
}

void sub_251B04BFC(uint64_t a1)
{
  if (!qword_27F479CB8)
  {
    sub_251B04B74(255);
    sub_251A82284();
    sub_251B04D4C(&qword_27F479CB0, sub_251B04B74, MEMORY[0x277D83970]);
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479CB8);
    }
  }
}

void sub_251B04CB8(uint64_t a1)
{
  if (!qword_27F479CC0)
  {
    sub_251B04BFC(255);
    sub_251B04D4C(&qword_27F479CC8, sub_251B04BFC, MEMORY[0x277CBCD18]);
    v1 = sub_251C707D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479CC0);
    }
  }
}

uint64_t sub_251B04D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251B04D94(uint64_t a1)
{
  if (!qword_27F479CD0)
  {
    sub_251B04E80(255);
    sub_251B04CB8(255);
    sub_251B04D4C(&qword_2813E2138, sub_251B04E80, MEMORY[0x277CBCD90]);
    sub_251B04D4C(&qword_27F479CD8, sub_251B04CB8, MEMORY[0x277CBCB90]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479CD0);
    }
  }
}

void sub_251B04EB4(uint64_t a1)
{
  if (!qword_27F479CE0)
  {
    sub_251B04D94(255);
    sub_251B04D4C(&qword_27F479CE8, sub_251B04D94, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479CE0);
    }
  }
}

void sub_251B04F48(uint64_t a1)
{
  if (!qword_27F479CF0)
  {
    sub_251B05034(255);
    sub_251B04EB4(255);
    sub_251B04D4C(&qword_2813E21B8, sub_251B05034, MEMORY[0x277CBCD90]);
    sub_251B04D4C(&qword_27F479CF8, sub_251B04EB4, MEMORY[0x277CBCCD0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479CF0);
    }
  }
}

void sub_251B05068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
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

void sub_251B05118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_251B05194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B051F8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v58 = a2;
  sub_251B05194(0, &qword_27F479D08, sub_251B07EA0, MEMORY[0x277CBCE78]);
  v57 = v7;
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v49 - v8;
  sub_251B07ED4(0);
  v56 = v9;
  v54 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B07F08(0);
  v12 = v11;
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v59 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B07F5C(0);
  v62 = *(v14 - 8);
  v63 = v14;
  MEMORY[0x28223BE20](v14);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B05118(0, &qword_27F479C98, type metadata accessor for PBNode, type metadata accessor for ClinicalSharingSyncContext);
  v67 = v16;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  v23 = type metadata accessor for PBNode(0);
  v65 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v51 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = *(*a1 + 16);
  v27 = MEMORY[0x277D84F90];
  v64 = a4;
  if (v26)
  {
    v66 = v22;
    v49 = a3;
    v50 = v12;
    v69 = MEMORY[0x277D84F90];
    sub_251C0BAD4(0, v26, 0);
    v28 = v69;
    v29 = v25 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v30 = *(v17 + 72);
    v31 = v29;
    v32 = v26;
    v33 = v51;
    v68 = v30;
    do
    {
      v34 = v66;
      sub_251B09658(v31, v66, &qword_27F479C98, type metadata accessor for ClinicalSharingSyncContext);
      sub_251B096D4(v34, v20, &qword_27F479C98, type metadata accessor for ClinicalSharingSyncContext);

      sub_251B095CC(v20, v33, type metadata accessor for PBNode);
      v69 = v28;
      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_251C0BAD4((v35 > 1), v36 + 1, 1);
        v33 = v51;
        v28 = v69;
      }

      *(v28 + 16) = v36 + 1;
      sub_251B095CC(v33, v28 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v36, type metadata accessor for PBNode);
      v31 += v68;
      --v32;
    }

    while (v32);
    v69 = MEMORY[0x277D84F90];
    sub_251C71764();
    v37 = v66;
    do
    {
      sub_251B09658(v29, v37, &qword_27F479C98, type metadata accessor for ClinicalSharingSyncContext);
      sub_251B096D4(v37, v20, &qword_27F479C98, type metadata accessor for ClinicalSharingSyncContext);
      sub_251B06650(v20, type metadata accessor for PBNode);
      sub_251C71734();
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      v29 += v68;
      --v26;
    }

    while (v26);
    v27 = v69;
    a3 = v49;
    v12 = v50;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v69 = v28;
  sub_251B07EA0(0);
  v38 = v53;
  sub_251C70A24();
  sub_251A82284();
  v39 = v52;
  v40 = v57;
  sub_251C709F4();
  (*(v55 + 8))(v38, v40);
  v41 = __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  v42 = sub_251B08048(v41, a3);
  (*(v54 + 8))(v39, v56);
  v69 = v42;
  *(swift_allocObject() + 16) = v27;
  sub_251B07F28(0);
  sub_251AE406C(0);
  v43 = MEMORY[0x277CBCD90];
  sub_251B04D4C(&qword_27F479C20, sub_251B07F28, MEMORY[0x277CBCD90]);

  v44 = v59;
  sub_251C70AE4();

  *(swift_allocObject() + 16) = v27;
  sub_251B04E80(0);
  sub_251B04D4C(&qword_27F479D30, sub_251B07F08, MEMORY[0x277CBCC08]);
  sub_251B04D4C(&qword_2813E2138, sub_251B04E80, v43);
  v45 = v60;
  sub_251C70B04();

  (*(v61 + 8))(v44, v12);
  sub_251B04D4C(&qword_27F479D38, sub_251B07F5C, MEMORY[0x277CBCC40]);
  v46 = v63;
  v47 = sub_251C70A94();
  result = (*(v62 + 8))(v45, v46);
  *v64 = v47;
  return result;
}

uint64_t sub_251B05A78@<X0>(void **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a3;
  sub_251B05194(0, &qword_2813E2088, sub_251AE406C, MEMORY[0x277CBCE78]);
  v38 = v5;
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - v6;
  sub_251B08728(0);
  v39 = v7;
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v12 = 0;
    v44 = a2 & 0xFFFFFFFFFFFFFF8;
    v45 = a2 & 0xC000000000000001;
    *&v8 = 136315138;
    v41 = v8;
    v42 = i;
    v43 = v10;
    while (v45)
    {
      v15 = MEMORY[0x25308D460](v12, a2);
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_14;
      }

LABEL_8:
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v17 = sub_251C70764();
      __swift_project_value_buffer(v17, qword_2813E8130);

      v18 = sub_251C70744();
      v19 = sub_251C713C4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v46 = v21;
        *v20 = v41;
        sub_251C70074();
        v22 = a2;
        sub_251B04D4C(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v23 = sub_251C719A4();
        v25 = sub_251B10780(v23, v24, &v46);

        *(v20 + 4) = v25;
        a2 = v22;
        i = v42;
        _os_log_impl(&dword_251A6C000, v18, v19, "Updating error info. Account: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x25308E2B0](v21, -1, -1);
        v26 = v20;
        v10 = v43;
        MEMORY[0x25308E2B0](v26, -1, -1);
      }

      v13 = *(v15 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
      *(v15 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error) = v10;
      v14 = v10;

      ++v12;
      if (v16 == i)
      {
        goto LABEL_17;
      }
    }

    if (v12 >= *(v44 + 16))
    {
      goto LABEL_15;
    }

    v15 = *(a2 + 8 * v12 + 32);

    v16 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v46 = a2;
  sub_251AE406C(0);

  v27 = v34;
  sub_251C70A24();
  sub_251A82284();
  v28 = v35;
  v29 = v38;
  sub_251C709F4();
  (*(v36 + 8))(v27, v29);
  sub_251B04D4C(&qword_2813E1BE8, sub_251B08728, MEMORY[0x277CBCF40]);
  v30 = v39;
  v31 = sub_251C70A94();
  result = (*(v37 + 8))(v28, v30);
  *v40 = v31;
  return result;
}

uint64_t sub_251B05F2C@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  sub_251AE52B8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B066C4(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = sub_251B01FEC(*a1);

  sub_251BFF7D4(v15);
  sub_251AE406C(0);
  sub_251B04D4C(&qword_2813E1E98, sub_251AE406C, MEMORY[0x277D83970]);
  sub_251C710D4();

  sub_251A82284();
  sub_251C708E4();
  (*(v7 + 8))(v9, v6);
  sub_251B04D4C(&qword_2813E2250, sub_251B066C4, MEMORY[0x277CBCD18]);
  v16 = sub_251C70A94();
  result = (*(v12 + 8))(v14, v11);
  *a3 = v16;
  return result;
}

uint64_t sub_251B0618C@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PBBlobs(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  result = sub_251C18F98(v7, v6);
  if (!v2)
  {
    sub_251B04D4C(&qword_27F479DA0, type metadata accessor for PBBlobs, &unk_251C7B5A8);
    v9 = sub_251C70594();
    v11 = v10;
    sub_251B08A6C(0);
    v13 = (a2 + *(v12 + 48));
    result = sub_251B095CC(v6, a2, type metadata accessor for PBBlobs);
    *v13 = v9;
    v13[1] = v11;
  }

  return result;
}

uint64_t sub_251B062E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v9 = type metadata accessor for PBBlobs(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = *(a4 + 32);
  sub_251A823B4(a4 + 48, v19);
  v13 = swift_allocObject();
  sub_251A7E8D8(v19, (v13 + 2));
  v13[7] = a2;
  v13[8] = a3;
  v13[9] = 3;
  v13[10] = v12;
  sub_251B08C40(0);
  swift_allocObject();

  sub_251A858C4(a2, a3);
  *&v19[0] = sub_251C70A64();
  sub_251B04D4C(&qword_27F479A80, sub_251B08C40, MEMORY[0x277CBCEB0]);
  v14 = sub_251C70A94();

  *&v19[0] = v14;
  sub_251B09564(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PBBlobs);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  sub_251B095CC(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PBBlobs);
  sub_251B089A0(0);
  type metadata accessor for PBPushBlobsRequest(0);
  sub_251B04D4C(&qword_27F479A70, sub_251B089A0, MEMORY[0x277CBCD90]);
  sub_251C70AE4();
}

uint64_t sub_251B0657C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PBBlobs(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  sub_251B09564(a2, v8, type metadata accessor for PBBlobs);

  sub_251A858C4(v10, v11);
  return sub_251C3A1C0(v8, v9, v10, v11, a3);
}

uint64_t sub_251B06650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251B066C4(uint64_t a1)
{
  if (!qword_2813E2248)
  {
    sub_251AE406C(255);
    sub_251A82284();
    sub_251B04D4C(&qword_2813E1E98, sub_251AE406C, MEMORY[0x277D83970]);
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2248);
    }
  }
}

uint64_t sub_251B06780(uint64_t *a1)
{
  v2 = *(sub_251C70074() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_251BFAE18(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_251B06828(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_251B06828(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_251C71994();
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
        sub_251C70074();
        v6 = sub_251C71184();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_251C70074() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_251B06C5C(v8, v9, a1, v4);
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
    return sub_251B06954(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251B06954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_251C70074();
  v9 = MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v34 - v12;
  result = MEMORY[0x28223BE20](v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = sub_251C70024();
      v27 = v26;
      if (sub_251C70024() == v25 && v28 == v27)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_251C719D4();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_251B06C5C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_251C70074();
  v10 = MEMORY[0x28223BE20](v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v149 = &v128 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v128 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v153 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v146 = &v128 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v128 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v133 = &v128 - v23;
  result = MEMORY[0x28223BE20](v22);
  v132 = &v128 - v26;
  v27 = a3[1];
  v143 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_251B0780C(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_251BFABE4(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v127 = &a3[2 * v122];
          *v127 = v125;
          v127[1] = v29;
          v155 = a3;
          result = sub_251BFAB58(v122 - 1);
          v29 = v155;
          v122 = v155[2];
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_251BFABE4(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = MEMORY[0x277D84F90];
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = sub_251C70024();
      v37 = v36;
      v38 = sub_251C70024();
      v131 = v6;
      if (v38 == v31 && v39 == v37)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_251C719D4();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = sub_251C70024();
        v52 = v51;
        if (sub_251C70024() == v50 && v53 == v52)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_251C719D4();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = (a3 + 1);
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              v148(v138, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251C38DF0(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_251C38DF0((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_251B0780C(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_251BFABE4(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v155 = a3;
        result = sub_251BFAB58(v31);
        v29 = v155;
        v77 = v155[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = v60 + v31 * v61;
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = sub_251C70024();
    v69 = v68;
    if (sub_251C70024() == v5 && v70 == v69)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_251C719D4();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_251B0780C(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = sub_251C70074();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v59 - v14;
  result = MEMORY[0x28223BE20](v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_251C70024();
            v52 = v51;
            if (sub_251C70024() == v50 && v53 == v52)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_251C719D4();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_251C70024();
        v32 = v31;
        if (sub_251C70024() == v30 && v33 == v32)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_251C719D4();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_251BFABF8(&v74, &v73, &v72);
  return 1;
}

void sub_251B07F5C(uint64_t a1)
{
  if (!qword_27F479D28)
  {
    sub_251B07F08(255);
    sub_251B04E80(255);
    sub_251B04D4C(&qword_27F479D30, sub_251B07F08, MEMORY[0x277CBCC08]);
    sub_251B04D4C(&qword_2813E2138, sub_251B04E80, MEMORY[0x277CBCD90]);
    v1 = sub_251C70854();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479D28);
    }
  }
}

uint64_t sub_251B08048(uint64_t a1, uint64_t a2)
{
  sub_251B0875C(0);
  v35 = v4;
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B08AD4(0);
  v36 = v6;
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B089C0(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B08808(0);
  v39 = v13;
  v34 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  v42[4] = &off_2863F7EA0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  sub_251B09564(a1, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCloudStandardAPI);
  sub_251B07ED4(0);
  sub_251B08A6C(0);
  sub_251B04D4C(&qword_27F479D68, sub_251B07ED4, MEMORY[0x277CBCF40]);
  sub_251C70B54();
  sub_251AE5810(a2, v40);
  v17 = swift_allocObject();
  v18 = v40[3];
  *(v17 + 48) = v40[2];
  *(v17 + 64) = v18;
  *(v17 + 80) = v40[4];
  *(v17 + 96) = v41;
  v19 = v40[1];
  *(v17 + 16) = v40[0];
  *(v17 + 32) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_251B08BC0;
  *(v20 + 24) = v17;
  sub_251C70964();
  type metadata accessor for PBPushBlobsRequest(0);
  sub_251B088F4(0);
  v21 = MEMORY[0x277CBCCC0];
  sub_251B04D4C(&qword_27F479D78, sub_251B089C0, MEMORY[0x277CBCCC0]);
  sub_251B04D4C(&qword_27F479D70, sub_251B088F4, MEMORY[0x277CBCC08]);
  sub_251C70B94();

  (*(v10 + 8))(v12, v9);
  sub_251A823B4(v42, v40);
  v22 = swift_allocObject();
  sub_251A7E8D8(v40, v22 + 16);
  sub_251C6F9A4();
  v31 = MEMORY[0x277CBCCE0];
  sub_251B04D4C(&qword_27F479D80, sub_251B08808, MEMORY[0x277CBCCE0]);
  v23 = v32;
  sub_251C70B54();

  sub_251A823B4(v42, v40);
  v24 = swift_allocObject();
  sub_251A7E8D8(v40, v24 + 16);
  sub_251C70964();
  type metadata accessor for PBPushBlobsResponse(0);
  sub_251B07F28(0);
  sub_251B04D4C(&qword_27F479D90, sub_251B0875C, v21);
  sub_251B04D4C(&qword_27F479C20, sub_251B07F28, MEMORY[0x277CBCD90]);
  v25 = v33;
  v26 = v35;
  sub_251C70B94();

  (*(v37 + 8))(v23, v26);
  sub_251B04D4C(&qword_27F479D98, sub_251B08AD4, v31);
  v27 = v36;
  v28 = sub_251C70A94();
  (*(v38 + 8))(v25, v27);
  (*(v34 + 8))(v15, v39);
  *&v40[0] = v28;
  v29 = sub_251C70A94();

  __swift_destroy_boxed_opaque_existential_1(v42);
  return v29;
}

void sub_251B0875C(uint64_t a1)
{
  if (!qword_27F479D40)
  {
    sub_251B08808(255);
    sub_251C6F9A4();
    sub_251B04D4C(&qword_27F479D80, sub_251B08808, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479D40);
    }
  }
}

void sub_251B08808(uint64_t a1)
{
  if (!qword_27F479D48)
  {
    sub_251B088F4(255);
    sub_251B089C0(255);
    sub_251B04D4C(&qword_27F479D70, sub_251B088F4, MEMORY[0x277CBCC08]);
    sub_251B04D4C(&qword_27F479D78, sub_251B089C0, MEMORY[0x277CBCCC0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479D48);
    }
  }
}

void sub_251B088F4(uint64_t a1)
{
  if (!qword_27F479D50)
  {
    sub_251B089A0(255);
    type metadata accessor for PBPushBlobsRequest(255);
    sub_251B04D4C(&qword_27F479A70, sub_251B089A0, MEMORY[0x277CBCD90]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479D50);
    }
  }
}

void sub_251B089C0(uint64_t a1)
{
  if (!qword_27F479D58)
  {
    sub_251B07ED4(255);
    sub_251B08A6C(255);
    sub_251B04D4C(&qword_27F479D68, sub_251B07ED4, MEMORY[0x277CBCF40]);
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479D58);
    }
  }
}

void sub_251B08A6C(uint64_t a1)
{
  if (!qword_27F479D60)
  {
    type metadata accessor for PBBlobs(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479D60);
    }
  }
}

void sub_251B08AD4(uint64_t a1)
{
  if (!qword_27F479D88)
  {
    sub_251B07F28(255);
    sub_251B0875C(255);
    sub_251B04D4C(&qword_27F479C20, sub_251B07F28, MEMORY[0x277CBCD90]);
    sub_251B04D4C(&qword_27F479D90, sub_251B0875C, MEMORY[0x277CBCCC0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479D88);
    }
  }
}

uint64_t sub_251B08BC8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_251B08A6C(0);
  return v3(a1, *(a1 + *(v4 + 48)), *(a1 + *(v4 + 48) + 8));
}

void sub_251B08C60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_251A82284();
    v7 = a3(a1, &type metadata for ClinicalSharingEncryption.BAACertSignature, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251B08CD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PBBlobs(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251B0657C(a1, v6, a2);
}

void sub_251B08D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251B07F28(255);
    a3(255);
    sub_251B04D4C(&qword_27F479C20, sub_251B07F28, MEMORY[0x277CBCD90]);
    v5 = sub_251C70804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251B08E1C(uint64_t a1)
{
  if (!qword_27F479DB8)
  {
    sub_251B08ECC(255);
    sub_251B04D4C(&qword_27F479DC8, sub_251B08ECC, MEMORY[0x277D834C0]);
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479DB8);
    }
  }
}

void sub_251B08ECC(uint64_t a1)
{
  if (!qword_27F479DC0)
  {
    sub_251ABA5A0(255);
    v1 = sub_251C70E64();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479DC0);
    }
  }
}

void sub_251B08F34(uint64_t a1)
{
  if (!qword_27F479DD0)
  {
    sub_251B08ECC(255);
    sub_251A82284();
    sub_251B04D4C(&qword_27F479DC8, sub_251B08ECC, MEMORY[0x277D834C0]);
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479DD0);
    }
  }
}

void *sub_251B08FF0(uint64_t a1)
{
  v2 = v1;
  v56 = type metadata accessor for ClinicalSharingDataNodeInfo(0);
  v4 = MEMORY[0x28223BE20](v56);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v52 - v7;
  v8 = MEMORY[0x277D84F98];
  v66 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v10 = *(v6 + 80);
  v58 = *(v6 + 72);
  v53 = v10;
  v54 = (v10 + 32) & ~v10;
  v11 = a1 + v54;
  v52 = xmmword_251C74800;
  while (1)
  {
    v60 = v8;
    v13 = v61;
    sub_251B09564(v11, v61, type metadata accessor for ClinicalSharingDataNodeInfo);
    v64 = 0;
    v65 = 0xE000000000000000;
    v14 = v13 + *(v56 + 20);
    v15 = *(v14 + 32);
    LOBYTE(v14) = *(v14 + 40);
    v62 = v15;
    LOBYTE(v63) = v14;
    sub_251C717C4();
    v16 = *v13;
    v17 = *(*v13 + 16);
    v59 = v11;
    if (v17)
    {
      sub_251B05194(0, &qword_27F479238, MEMORY[0x277CC95F0], MEMORY[0x277D84560]);
      v18 = *(sub_251C70074() - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v21 = swift_allocObject();
      v22 = _swift_stdlib_malloc_size(v21);
      if (!v19)
      {
        goto LABEL_28;
      }

      if (v22 - v20 == 0x8000000000000000 && v19 == -1)
      {
        goto LABEL_31;
      }

      v21[2] = v17;
      v21[3] = 2 * ((v22 - v20) / v19);
      v57 = sub_251C0A5B0(&v62, v21 + v20, v17, v16);
      v24 = v62;

      sub_251AD20D8(v24);
      if (v57 != v17)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v62 = v21;
    sub_251B06780(&v62);
    if (v2)
    {
      goto LABEL_32;
    }

    v25 = v62;
    v26 = sub_251C70074();
    v27 = MEMORY[0x25308CF10](v25, v26);
    v29 = v28;

    MEMORY[0x25308CDA0](v27, v29);

    v30 = v64;
    v31 = v65;
    v8 = v60;
    v33 = sub_251AC8C58(v64, v65);
    v34 = v8[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v8[3] < v36)
    {
      sub_251ACB060(v36, 1);
      v8 = v66;
      v38 = sub_251AC8C58(v30, v31);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_33;
      }

      v33 = v38;
    }

    if (v37)
    {

      v40 = v8[7];
      sub_251B095CC(v61, v55, type metadata accessor for ClinicalSharingDataNodeInfo);
      v41 = *(v40 + 8 * v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v40 + 8 * v33) = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = sub_251C3926C(0, v41[2] + 1, 1, v41);
        *(v40 + 8 * v33) = v41;
      }

      v44 = v41[2];
      v43 = v41[3];
      if (v44 >= v43 >> 1)
      {
        v41 = sub_251C3926C((v43 > 1), v44 + 1, 1, v41);
        *(v40 + 8 * v33) = v41;
      }

      v41[2] = v44 + 1;
      v12 = v58;
      sub_251B095CC(v55, v41 + v54 + v44 * v58, type metadata accessor for ClinicalSharingDataNodeInfo);
    }

    else
    {
      sub_251B05194(0, &qword_27F479DE0, type metadata accessor for ClinicalSharingDataNodeInfo, MEMORY[0x277D84560]);
      v45 = v54;
      v46 = swift_allocObject();
      *(v46 + 16) = v52;
      sub_251B095CC(v61, v46 + v45, type metadata accessor for ClinicalSharingDataNodeInfo);
      v8[(v33 >> 6) + 8] |= 1 << v33;
      v47 = (v8[6] + 16 * v33);
      *v47 = v30;
      v47[1] = v31;
      *(v8[7] + 8 * v33) = v46;
      v48 = v8[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_30;
      }

      v8[2] = v50;
      v12 = v58;
    }

    v11 = v59 + v12;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:

  __break(1u);
LABEL_33:
  result = sub_251C71A14();
  __break(1u);
  return result;
}

uint64_t sub_251B09564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B095CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B09658(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B05118(0, a3, type metadata accessor for PBNode, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251B096D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B05118(0, a3, type metadata accessor for PBNode, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_251B09754(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_251C70014();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_251C0B7A4(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_251C0B7A4((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_251B09A24(uint64_t a1)
{
  v2 = sub_251C70014();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v3 + 16);
  v10 = v3 + 16;
  v11 = v12;
  v26 = (*(v10 + 64) + 32) & ~*(v10 + 64);
  v13 = a1 + v26;
  v14 = *(v10 + 56);
  v24 = (v10 - 8);
  v29 = (v10 + 16);
  v15 = MEMORY[0x277D84F90];
  v27 = v6;
  v28 = v10;
  v25 = v14;
  v12(v8, a1 + v26, v2);
  while (1)
  {
    sub_251C6FFC4();
    if (v16 <= -86400.0)
    {
      (*v24)(v8, v2);
    }

    else
    {
      v17 = *v29;
      (*v29)(v6, v8, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_251C0B7A4(0, *(v15 + 16) + 1, 1);
        v15 = v30;
      }

      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_251C0B7A4((v19 > 1), v20 + 1, 1);
        v15 = v30;
      }

      *(v15 + 16) = v20 + 1;
      v21 = v25;
      v6 = v27;
      v17((v15 + v26 + v20 * v25), v27, v2);
      v14 = v21;
    }

    v13 += v14;
    if (!--v9)
    {
      break;
    }

    v11(v8, v13, v2);
  }

  return v15;
}

uint64_t sub_251B09C70(void *a1, uint64_t a2)
{
  sub_251B0A200(0, &qword_2813E1C90, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B09F7C();
  sub_251C71B14();
  v10[1] = a2;
  sub_251B09FD0(0);
  sub_251B0A264(&qword_2813E1F78, &qword_2813E7510, MEMORY[0x277CC9580], MEMORY[0x277D83948]);
  sub_251C71964();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_251B09E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73636E7973 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251C719D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251B09EA0(uint64_t a1)
{
  v2 = sub_251B09F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251B09EDC(uint64_t a1)
{
  v2 = sub_251B09F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_251B09F18@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_251B0A028(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_251B09F7C()
{
  result = qword_2813E37F8[0];
  if (!qword_2813E37F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813E37F8);
  }

  return result;
}

void sub_251B09FD0(uint64_t a1)
{
  if (!qword_2813E1F80)
  {
    sub_251C70014();
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1F80);
    }
  }
}

void *sub_251B0A028(void *a1)
{
  sub_251B0A200(0, &qword_2813E1CA8, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B09F7C();
  sub_251C71B04();
  if (!v1)
  {
    sub_251B09FD0(0);
    sub_251B0A264(&qword_2813E1F70, &qword_2813E7508, MEMORY[0x277CC95A0], MEMORY[0x277D83978]);
    sub_251C718D4();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void sub_251B0A200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251B09F7C();
    v7 = a3(a1, &type metadata for ClinicalSharingSyncHistory.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251B0A264(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251B09FD0(255);
    sub_251B0A2E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251B0A2E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_251C70014();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251B0A338()
{
  result = qword_27F479DF8;
  if (!qword_27F479DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479DF8);
  }

  return result;
}

unint64_t sub_251B0A390()
{
  result = qword_2813E37E8;
  if (!qword_2813E37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37E8);
  }

  return result;
}

unint64_t sub_251B0A3E8()
{
  result = qword_2813E37F0;
  if (!qword_2813E37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37F0);
  }

  return result;
}

uint64_t sub_251B0A43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_251C701E4();
  v21 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ClinicalSharingSleepStatisticsQuery(0) + 32);
  sub_251A8223C(0, &qword_27F479E00, 0x277CCD0C0);
  *(a4 + v12) = MEMORY[0x25308D1B0](*MEMORY[0x277CCBAB8]);
  (*(v9 + 16))(v11, a1 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v8);
  v13 = sub_251B0A650(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, a2, a3);
  v15 = v14;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;
  v16 = objc_opt_self();

  v17 = sub_251C70114();
  v18 = [v16 hk:v13 sleepDayIntervalForMorningIndexRange:v15 calendar:v17];

  sub_251C6FA74();

  return (*(v9 + 8))(v11, v21);
}

_BYTE *sub_251B0A650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a1;
  v3 = a3;
  v5 = sub_251C701C4();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B0E460(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v72 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v12 = sub_251C70014();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v64 = &v54 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v58 = &v54 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v65 = &v54 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = sub_251C6FC94();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v54 - v29;
  v31 = sub_251C6FAE4();
  v54 = *(v31 - 8);
  v55 = v31;
  MEMORY[0x28223BE20](v31);
  v70 = &v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v3;
  sub_251B0D8EC(a2, a2, v3);
  v61 = v30;
  v57 = sub_251C6FBC4();
  v33 = [v57 hk_negativeComponents];
  sub_251C6FBD4();

  sub_251C70144();
  v34 = *(v25 + 8);
  v62 = v25 + 8;
  v63 = v24;
  v60 = v34;
  v34(v28, v24);
  v35 = *(v13 + 48);
  result = v35(v11, 1, v12);
  if (result == 1)
  {
    goto LABEL_15;
  }

  v56 = v13;
  v37 = *(v13 + 32);
  v71 = v23;
  v37(v23, v11, v12);
  v39 = v67;
  v38 = v68;
  v40 = v69;
  (*(v68 + 104))(v67, *MEMORY[0x277CC9968], v69);
  v41 = v72;
  sub_251C70154();
  (*(v38 + 8))(v39, v40);
  result = v35(v41, 1, v12);
  if (result != 1)
  {
    v42 = v65;
    v37(v65, v72, v12);
    if (v66)
    {
      v43 = v58;
      v44 = v57;
      if (v66 == 1)
      {
        sub_251B1C960(0, v71, v58);
      }

      else
      {
        sub_251B1D048(v71, v58);
      }
    }

    else
    {
      v43 = v58;
      sub_251C700C4();
      v44 = v57;
    }

    v45 = v56;
    v46 = v64;
    (*(v56 + 16))(v64, v43, v12);
    sub_251C700C4();
    sub_251C6FA94();

    v47 = *(v45 + 8);
    v47(v43, v12);
    v47(v42, v12);
    v47(v71, v12);
    v60(v61, v63);
    sub_251C6FAB4();
    v48 = sub_251C6FF94();
    v49 = sub_251C70114();
    v50 = [v48 hk:v49 morningIndexWithCalendar:?];

    v47(v46, v12);
    sub_251C6FA84();
    v51 = sub_251C6FF94();
    v52 = sub_251C70114();
    v53 = [v51 hk:v52 morningIndexWithCalendar:?];

    result = (v47)(v46, v12);
    if (v53 < v50)
    {
      __break(1u);
    }

    else if (!__OFSUB__(v53, v50))
    {
      if (!__OFADD__(v53 - v50, 1))
      {
        (*(v54 + 8))(v70, v55);
        return v50;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251B0AD14()
{
  v1 = type metadata accessor for ClinicalSharingSleepStatisticsQuery(0);
  v33 = *(v1 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v34 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B0DCD4(0);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B0DE14(0, &qword_27F479E38, type metadata accessor for PBTypedData);
  v7 = v6;
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  sub_251B0DDF4(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v37 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251C714E4();
  v15 = *(v14 + 16);
  v40 = v12;
  v41 = v11;
  v39 = v7;
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = sub_251C39EC8(v15, 0);
  v17 = sub_251C0AA1C(&v43, v16 + 4, v15, v14);
  sub_251AD20D8(v43);
  if (v17 != v15)
  {
    __break(1u);
LABEL_4:

    v16 = MEMORY[0x277D84F90];
  }

  v18 = sub_251B0B274(v16);
  v32 = v18;

  v19 = sub_251B0B274(&unk_2863F3100);
  v42 = v18;
  v43 = v19;
  sub_251B0DD74(0);
  sub_251B0E28C(&qword_27F479E30, sub_251B0DD74, MEMORY[0x277CBCD90]);
  sub_251C70824();
  v20 = v34;
  sub_251B0E3F8(v0, v34, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  v21 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v22 = swift_allocObject();
  v33 = v2;
  v31 = v0;
  sub_251B0E2D4(v20, v22 + v21, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  type metadata accessor for PBTypedData(0);
  sub_251B0E28C(&qword_27F479E40, sub_251B0DCD4, MEMORY[0x277CBCC10]);
  v23 = v36;
  sub_251C70AA4();

  (*(v35 + 8))(v5, v23);
  sub_251B0E3F8(v31, v20, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  v24 = swift_allocObject();
  sub_251B0E2D4(v20, v24 + v21, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v25 = v37;
  v26 = v39;
  sub_251C70774();

  (*(v38 + 8))(v9, v26);
  sub_251B0E28C(&qword_27F479E50, sub_251B0DDF4, MEMORY[0x277CBCB10]);
  v27 = v41;
  v28 = sub_251C70A94();

  (*(v40 + 8))(v25, v27);
  return v28;
}

uint64_t sub_251B0B274(uint64_t a1)
{
  v76 = a1;
  sub_251B0E460(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v2 - 8);
  v75 = v63 - v3;
  sub_251B0E460(0, &qword_27F4793D8, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = v63 - v5;
  sub_251B0E460(0, &qword_27F4793E0, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = v63 - v7;
  v8 = sub_251C6FC94();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C70014();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B0E638(0, &qword_27F47BD20, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_251C76B00;
  v65 = type metadata accessor for ClinicalSharingSleepStatisticsQuery(0);
  v15 = *(v65 + 28);
  v16 = objc_opt_self();
  sub_251C6FAB4();
  v17 = sub_251C6FF94();
  v18 = *(v11 + 8);
  v18(v13, v10);
  v77 = v1;
  v66 = v15;
  sub_251C6FA84();
  v19 = sub_251C6FF94();
  v64 = v13;
  v70 = v11 + 8;
  v71 = v10;
  v67 = v18;
  v18(v13, v10);
  v20 = [v16 predicateForSamplesWithStartDate:v17 endDate:v19 options:0];

  *(v14 + 32) = v20;
  v21 = v76;
  v22 = *(v76 + 16);
  if (v22)
  {
    v78[0] = MEMORY[0x277D84F90];
    sub_251C71764();
    v23 = (v21 + 32);
    v24 = v22;
    do
    {
      v25 = *v23++;
      v26 = [v16 predicateForCategorySamplesWithOperatorType:4 value:v25];
      sub_251C71734();
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      --v24;
    }

    while (v24);
  }

  sub_251A8223C(0, &qword_27F479AF8, 0x277CCAC30);
  v27 = sub_251C71144();

  v28 = objc_opt_self();
  v29 = [v28 orPredicateWithSubpredicates_];

  *(v14 + 40) = v29;
  v30 = sub_251C71144();

  v31 = [v28 andPredicateWithSubpredicates_];

  v78[0] = 0;
  v78[1] = 0xE000000000000000;
  if (*(v77 + 16))
  {
    if (*(v77 + 16) == 1)
    {
      v32 = 0xE600000000000000;
      v33 = 0x796C6B656577;
    }

    else
    {
      v32 = 0xE700000000000000;
      v33 = 0x796C68746E6F6DLL;
    }
  }

  else
  {
    v32 = 0xE500000000000000;
    v33 = 0x796C696164;
  }

  MEMORY[0x25308CDA0](v33, v32);

  MEMORY[0x25308CDA0](0x2D656D69742DLL, 0xE600000000000000);
  v34 = MEMORY[0x277D84F90];
  if (!v22)
  {
LABEL_27:
    v79 = v34;
    sub_251B0E638(0, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_251AF3520();
    v45 = sub_251C70EA4();
    v47 = v46;

    MEMORY[0x25308CDA0](v45, v47);

    v48 = v77;
    v49 = *(v77 + *(v65 + 32));
    v76 = sub_251BFC460();
    v65 = v50;

    sub_251A823B4(*v48 + 16, v78);
    v63[1] = __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v51 = v31;
    v52 = v66;
    v53 = v64;
    sub_251C6FAB4();
    v54 = sub_251C701E4();
    (*(*(v54 - 8) + 56))(v68, 1, 1, v54);
    v55 = sub_251C70244();
    (*(*(v55 - 8) + 56))(v69, 1, 1, v55);
    v56 = v72;
    sub_251C6FC74();
    sub_251C6FBE4();
    v57 = sub_251C6FAE4();
    v58 = *(v57 - 8);
    v59 = v48 + v52;
    v60 = v75;
    (*(v58 + 16))(v75, v59, v57);
    (*(v58 + 56))(v60, 0, 1, v57);
    v61 = off_2863FD778(v49, v31, 64, v53, v56, v60, 0, v76, v65, &type metadata for ClinicalSharingQueryDefaultDataProvider, &off_2863FD718);

    sub_251B0E39C(v60, &qword_27F478D90, MEMORY[0x277CC88A8]);
    (*(v73 + 8))(v56, v74);
    v67(v53, v71);
    __swift_destroy_boxed_opaque_existential_1(v78);
    return v61;
  }

  v79 = MEMORY[0x277D84F90];
  sub_251C0B6AC(0, v22, 0);
  v35 = (v76 + 32);
  v34 = v79;
  v36 = 0x7065656C7361;
  while (1)
  {
    v38 = *v35++;
    v37 = v38;
    if (v38 > 2)
    {
      break;
    }

    if (v37)
    {
      if (v37 == 1)
      {
        v39 = 0xE600000000000000;
        v40 = v36;
      }

      else
      {
        if (v37 != 2)
        {
          goto LABEL_28;
        }

        v39 = 0xE500000000000000;
        v40 = 0x656B617761;
      }
    }

    else
    {
      v39 = 0xE600000000000000;
      v40 = 0x6465622D6E69;
    }

LABEL_24:
    v79 = v34;
    v42 = *(v34 + 16);
    v41 = *(v34 + 24);
    if (v42 >= v41 >> 1)
    {
      v44 = v36;
      sub_251C0B6AC((v41 > 1), v42 + 1, 1);
      v36 = v44;
      v34 = v79;
    }

    *(v34 + 16) = v42 + 1;
    v43 = v34 + 16 * v42;
    *(v43 + 32) = v40;
    *(v43 + 40) = v39;
    if (!--v22)
    {
      goto LABEL_27;
    }
  }

  switch(v37)
  {
    case 3:
      v40 = 0x6C2D7065656C7361;
      v39 = 0xEC00000074686769;
      goto LABEL_24;
    case 4:
      v40 = 0x642D7065656C7361;
      v39 = 0xEB00000000706565;
      goto LABEL_24;
    case 5:
      v39 = 0xEA00000000006D65;
      v40 = 0x722D7065656C7361;
      goto LABEL_24;
  }

LABEL_28:
  result = sub_251C717E4();
  __break(1u);
  return result;
}

uint64_t sub_251B0BCF0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v72 = a3;
  sub_251B0E460(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = &v60 - v6;
  v73 = type metadata accessor for PBDateRange(0);
  v66 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for PBTypedData(0);
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v67 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for PBSleepSeries.Value(0);
  v75 = *(v69 - 1);
  MEMORY[0x28223BE20](v69);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B0E460(0, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v60 - v12;
  v14 = type metadata accessor for SleepSeriesValueIterator(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ClinicalSharingSleepStatisticsQuery(0);
  v68 = *(v61 - 8);
  v17 = *(v68 + 64);
  v18 = MEMORY[0x28223BE20](v61);
  v19 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = &v60 - v20;
  v22 = type metadata accessor for PBSleepSeries(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v62 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = MEMORY[0x277D84F90];
  *(&v60 - v25) = MEMORY[0x277D84F90];
  v76 = (&v60 - v25);
  sub_251C703A4();
  v65 = v3;
  sub_251B0E3F8(v3, v21, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  sub_251B0E3F8(v21, v19, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  v27 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v28 = swift_allocObject();
  v29 = a1;
  *(v28 + 16) = a1;
  v30 = v70;
  *(v28 + 24) = v70;
  v31 = v28 + v27;
  v32 = v10;
  sub_251B0E2D4(v21, v31, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  sub_251B0E13C(0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_251B0E0C8;
  *(inited + 24) = v28;
  v34 = v29;
  v35 = v30;

  sub_251B0C7A8(v34, v35, v19, v16);

  sub_251B0E33C(v19, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  sub_251B0E1F0(0, &qword_27F479E80, MEMORY[0x277D84148]);
  v36 = swift_allocObject();
  sub_251B0E2D4(v16, v36 + *(*v36 + *MEMORY[0x277D84150] + 16), type metadata accessor for SleepSeriesValueIterator);
  v70 = inited;

  sub_251B0CAFC(v13);
  v37 = *(v75 + 48);
  v38 = v69;
  if (v37(v13, 1) != 1)
  {
    v56 = v32;
    do
    {
      sub_251B0E2D4(v13, v32, type metadata accessor for PBSleepSeries.Value);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_251C392D4(0, v26[2] + 1, 1, v26);
      }

      v58 = v26[2];
      v57 = v26[3];
      if (v58 >= v57 >> 1)
      {
        v26 = sub_251C392D4((v57 > 1), v58 + 1, 1, v26);
      }

      v26[2] = v58 + 1;
      v59 = v26 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v58;
      v32 = v56;
      sub_251B0E2D4(v56, v59, type metadata accessor for PBSleepSeries.Value);
      *v76 = v26;
      sub_251B0CAFC(v13);
    }

    while ((v37)(v13, 1, v38) != 1);
  }

  swift_setDeallocating();
  sub_251B0E33C(v36 + *(*v36 + *MEMORY[0x277D84150] + 16), type metadata accessor for SleepSeriesValueIterator);
  swift_deallocClassInstance();
  if (v26[2])
  {
    v39 = v67;
    *v67 = 0;
    *(v39 + 8) = 1;
    v40 = *(v74 + 20);
    v41 = v74;
    v42 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v43 = *(v42 - 8);
    v69 = *(v43 + 56);
    v75 = v43 + 56;
    (v69)(v39 + v40, 1, 1, v42);
    sub_251C703A4();
    v44 = *(v41 + 28);
    v68 = *(v66 + 56);
    (v68)(v39 + v44, 1, 1, v73);
    v45 = v65;
    v46 = *(v61 + 28);
    v47 = sub_251C6FAE4();
    v48 = *(v47 - 8);
    v49 = v45 + v46;
    v50 = v64;
    (*(v48 + 16))(v64, v49, v47);
    (*(v48 + 56))(v50, 0, 1, v47);
    v51 = v63;
    sub_251BFC464();
    swift_setDeallocating();

    sub_251B0E39C(v50, &qword_27F478D90, MEMORY[0x277CC88A8]);
    sub_251B0E39C(v39 + v44, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251B0E2D4(v51, v39 + v44, type metadata accessor for PBDateRange);
    (v68)(v39 + v44, 0, 1, v73);
    *v39 = 114;
    *(v39 + 8) = 1;
    v52 = v76;
    v53 = v62;
    sub_251B0E3F8(v76, v62, type metadata accessor for PBSleepSeries);
    sub_251B0E39C(v39 + v40, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251B0E2D4(v53, v39 + v40, type metadata accessor for PBSleepSeries);
    swift_storeEnumTagMultiPayload();
    (v69)(v39 + v40, 0, 1, v42);
    sub_251B0E33C(v52, type metadata accessor for PBSleepSeries);
    v54 = v72;
    sub_251B0E2D4(v39, v72, type metadata accessor for PBTypedData);
    return (*(v71 + 56))(v54, 0, 1, v74);
  }

  else
  {
    swift_setDeallocating();

    sub_251B0E33C(v76, type metadata accessor for PBSleepSeries);
    return (*(v71 + 56))(v72, 1, 1, v74);
  }
}

id sub_251B0C7A8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v36 = a1;
  v37 = a2;
  sub_251B0E460(0, &qword_27F4793D8, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  sub_251B0E460(0, &qword_27F4793E0, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = a3[4];
  v34 = a3[3];
  v35 = v12;
  v13 = a3[1];
  v14 = *(a3 + 16);
  v15 = type metadata accessor for SleepSeriesValueIterator(0);
  sub_251B0D8EC(1, v13, v14);
  v16 = *a3;
  v33 = *(*a3 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v17 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v18 = v15[9];
  v19 = sub_251C701E4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&a4[v18], v16 + v17, v19);
  (*(v20 + 56))(v11, 1, 1, v19);
  v21 = sub_251C70244();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v22 = v33;
  sub_251C6FC74();
  sub_251C6FBE4();
  v23 = v15[12];
  *&a4[v23] = [objc_opt_self() secondUnit];
  v24 = &a4[v15[13]];
  *v24 = 0;
  *(v24 + 1) = 0xE000000000000000;
  *(v24 + 2) = 0;
  *(v24 + 6) = 0;
  type metadata accessor for PBSleepSeries.Value(0);
  sub_251C703A4();
  v26 = v36;
  v25 = v37;
  *a4 = v36;
  *(a4 + 1) = v25;
  v28 = v34;
  v27 = v35;
  *(a4 + 2) = v34;
  *(a4 + 3) = v27;
  *&a4[v15[8]] = v22;
  *&a4[v15[10]] = v28;
  v29 = v26;
  v30 = v37;

  return v30;
}

uint64_t sub_251B0CAFC@<X0>(char *a1@<X8>)
{
  v23 = a1;
  sub_251B0E4B4(0);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B0E460(0, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = type metadata accessor for PBSleepSeries.Value(0);
  v11 = (*(v10 - 8) + 56);
  v22 = *v11;
  v12 = v22(v9, 1, 1, v10);
  v21 = v11;
  v13 = (v11 - 1);
  while (1)
  {
    v14 = MEMORY[0x25308DB30](v12);
    v15 = *(v24 + 48);
    sub_251B0CDA0(&v3[v15]);
    v17 = v16;
    objc_autoreleasePoolPop(v14);
    sub_251B0E39C(v9, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
    sub_251B0E538(&v3[v15], v9);
    sub_251B0E5B8(v9, v7);
    if ((*v13)(v7, 1, v10) != 1)
    {
      break;
    }

    v12 = sub_251B0E39C(v7, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
    if (v17)
    {
      sub_251B0E39C(v9, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
      v18 = 1;
      v19 = v23;
      return v22(v19, v18, 1, v10);
    }
  }

  sub_251B0E39C(v9, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
  v19 = v23;
  sub_251B0E2D4(v7, v23, type metadata accessor for PBSleepSeries.Value);
  v18 = 0;
  return v22(v19, v18, 1, v10);
}

void sub_251B0CDA0(uint64_t a1)
{
  v84 = a1;
  v2 = type metadata accessor for PBSleepSeries.Value(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v82 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v74 - v6;
  sub_251B0E460(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v74 - v9;
  v11 = sub_251C70014();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v74 - v16;
  sub_251B0D570();
  v83 = v20;
  if (v20)
  {
    (*(v3 + 56))(v84, 1, 1, v2);
    return;
  }

  v21 = v18;
  v77 = v2;
  v79 = v7;
  v80 = v19;
  v81 = type metadata accessor for SleepSeriesValueIterator(0);
  v22 = v81[9];
  v23 = objc_opt_self();
  v90 = v22;
  v91 = v1;
  v24 = sub_251C70114();
  v25 = [v23 hk:v21 sleepDayStartForMorningIndex:v24 calendar:?];

  sub_251C6FFE4();
  v26 = *(v12 + 16);
  v78 = v17;
  v26(v15, v17, v11);
  v27 = v21 + v80;
  v28 = __OFADD__(v21, v80);
  v29 = v27 - 1;
  v30 = __OFSUB__(v27, 1);
  if (v28)
  {
    goto LABEL_42;
  }

  if (v30)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v31 = v11;
  v76 = v3;
  v75 = v12;
  if (v21 < v29)
  {
    v74 = v29;
    v32 = 0;
    v33 = 0;
    v34 = v81[11];
    v92 = *(v91 + v81[12]);
    v89 = *v91;
    v35 = *(v91 + 8);
    v87 = v34;
    v88 = v35;
    v36 = (v12 + 48);
    v85 = (v12 + 32);
    v86 = (v12 + 8);
    v37 = v80 - 1;
    v38 = 0.0;
    v39 = 0.0;
    while (1)
    {
      v40 = v31;
      v41 = sub_251C6FF94();
      v42 = [v89 statisticsForDate_];

      v43 = [v42 duration];
      if (v43)
      {
        [v43 doubleValueForUnit_];
        v45 = v44;

        v46 = __OFADD__(v33++, 1);
        if (v46)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v39 = v39 + v45;
      }

      v47 = sub_251C6FF94();
      v48 = [v88 statisticsForDate_];

      v49 = [v48 duration];
      if (v49)
      {
        [v49 doubleValueForUnit_];
        v51 = v50;

        v46 = __OFADD__(v32++, 1);
        v52 = v91;
        if (v46)
        {
          goto LABEL_41;
        }

        v38 = v38 + v51;
      }

      else
      {
        v52 = v91;
      }

      sub_251C70144();
      v31 = v40;
      if ((*v36)(v10, 1, v40) == 1)
      {
        sub_251B0E39C(v10, &qword_2813E7500, MEMORY[0x277CC9578]);
        goto LABEL_25;
      }

      (*v86)(v15, v40);
      (*v85)(v15, v10, v40);
      ++v21;
      if (!--v37)
      {
        v21 = v74;
        v53 = v77;
        v52 = v91;
        goto LABEL_26;
      }
    }
  }

  v32 = 0;
  v33 = 0;
  v38 = 0.0;
  v39 = 0.0;
  v52 = v91;
LABEL_25:
  v53 = v77;
LABEL_26:
  v54 = v81;
  *(v52 + v81[10]) = v21;
  v55 = v79;
  *v79 = 0;
  v55[1] = 0xE000000000000000;
  v55[2] = 0;
  *(v55 + 6) = 0;
  sub_251C703A4();
  v56 = v78;
  if (v33 < 1)
  {
    goto LABEL_31;
  }

  v57 = v39 / v33;
  if (COERCE__INT64(fabs(v57)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_44;
  }

  if (v57 <= -1.0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v57 >= 4294967300.0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v55 + 5) = v57;
LABEL_31:
  v58 = v84;
  if (v32 >= 1)
  {
    v59 = v38 / v32;
    if (COERCE__INT64(fabs(v59)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v59 > -1.0)
      {
        if (v59 < 4294967300.0)
        {
          *(v55 + 4) = v59;
          goto LABEL_36;
        }

LABEL_49:
        __break(1u);
        return;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    goto LABEL_46;
  }

LABEL_36:
  v60 = v53;
  v61 = v82;
  sub_251B0E3F8(v52 + v54[13], v82, type metadata accessor for PBSleepSeries.Value);
  v62 = sub_251BB0D30(v55, v61);
  sub_251B0E33C(v61, type metadata accessor for PBSleepSeries.Value);
  if (v62)
  {
    v63 = *(v75 + 8);
    v63(v15, v31);
    v63(v56, v31);
    (*(v76 + 56))(v58, 1, 1, v60);
    v64 = v55;
  }

  else
  {
    v65 = *(v52 + v54[8]);
    v66 = v31;
    v67 = sub_251C6FF94();
    v68 = [v65 stringFromDate_];

    v69 = sub_251C70F14();
    v70 = v55;
    v72 = v71;

    v73 = *(v75 + 8);
    v73(v15, v66);
    v73(v56, v66);
    *v70 = v69;
    v70[1] = v72;
    sub_251B0E3F8(v70, v58, type metadata accessor for PBSleepSeries.Value);
    (*(v76 + 56))(v58, 0, 1, v60);
    v64 = v70;
  }

  sub_251B0E33C(v64, type metadata accessor for PBSleepSeries.Value);
}

void sub_251B0D570()
{
  v1 = v0;
  sub_251B0E460(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_251C70E34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C70014();
  v32 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = type metadata accessor for SleepSeriesValueIterator(0);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v25 = __OFADD__(v16, v17);
  v18 = v16 + v17;
  if (v25)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(v18, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = *(v1 + *(v15 + 40));
  if (v19 >= v18 - 1)
  {
    return;
  }

  v30 = v18 - 1;
  v31 = v12;
  sub_251C70E04();
  sub_251C70E24();
  (*(v6 + 8))(v8, v5);
  sub_251C70144();
  v20 = v32;
  if ((*(v32 + 48))(v4, 1, v9) != 1)
  {
    (*(v20 + 32))(v31, v4, v9);
    v21 = sub_251C6FF94();
    v22 = sub_251C70114();
    v23 = [v21 hk:v22 morningIndexWithCalendar:?];

    v24 = v30;
    if (v30 >= v23)
    {
      v24 = v23;
    }

    v25 = __OFSUB__(v24, v19);
    v26 = v24 < v19;
    v27 = &v24[-v19];
    if (!v26)
    {
      if (!v25)
      {
        if (!__OFADD__(v27, 1))
        {
          v28 = *(v20 + 8);
          v28(v31, v9);
          v28(v14, v9);
          return;
        }

        goto LABEL_17;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  (*(v20 + 8))(v14, v9);
  sub_251B0E39C(v4, &qword_2813E7500, MEMORY[0x277CC9578]);
}

uint64_t sub_251B0D8EC(uint64_t a1, uint64_t a2, char a3)
{
  sub_251B0E460(0, &qword_27F4793D8, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  sub_251B0E460(0, &qword_27F4793E0, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_251C701E4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = sub_251C70244();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  sub_251C6FC74();
  if (!a3)
  {
    return sub_251C6FBE4();
  }

  if (a3 == 1)
  {
    if ((a1 * 7) >> 64 != (7 * a1) >> 63)
    {
      __break(1u);
    }

    return sub_251C6FBE4();
  }

  return sub_251C6FC34();
}

void sub_251B0DB5C(uint64_t a1)
{
  type metadata accessor for ClinicalSharingQueryContext(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKDayIndexRange(319);
    if (v2 <= 0x3F)
    {
      sub_251C6FAE4();
      if (v3 <= 0x3F)
      {
        sub_251A8223C(319, &qword_27F479E00, 0x277CCD0C0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ClinicalSharingSleepStatisticsQuery.Duration(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClinicalSharingSleepStatisticsQuery.Duration(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_251B0DCD4(uint64_t a1)
{
  if (!qword_27F479E18)
  {
    sub_251B0DD74(255);
    sub_251B0E28C(&qword_27F479E30, sub_251B0DD74, MEMORY[0x277CBCD90]);
    v1 = sub_251C70814();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479E18);
    }
  }
}

void sub_251B0DD74(uint64_t a1)
{
  if (!qword_27F479E20)
  {
    sub_251A8223C(255, &qword_27F479E28, 0x277CCDA58);
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479E20);
    }
  }
}

void sub_251B0DE14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251B0DCD4(255);
    a3(255);
    sub_251B0E28C(&qword_27F479E40, sub_251B0DCD4, MEMORY[0x277CBCC10]);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for ClinicalSharingSleepStatisticsQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_251C6FAE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_251B0E0C8@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ClinicalSharingSleepStatisticsQuery(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_251B0C7A8(v4, v5, v6, a1);
}

void sub_251B0E13C(uint64_t a1)
{
  if (!qword_27F479E60)
  {
    sub_251B0E1D0(255);
    sub_251B0E28C(&qword_27F479E78, sub_251B0E1D0, MEMORY[0x277D844C0]);
    v1 = sub_251C716D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479E60);
    }
  }
}

void sub_251B0E1F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SleepSeriesValueIterator(255);
    v7 = sub_251B0E28C(&qword_27F479E70, type metadata accessor for SleepSeriesValueIterator, &unk_251C774C4);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251B0E28C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251B0E2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B0E33C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B0E39C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B0E460(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251B0E3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_251B0E460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_251B0E4B4(uint64_t a1)
{
  if (!qword_27F479E88)
  {
    sub_251B0E460(255, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479E88);
    }
  }
}

uint64_t sub_251B0E538(uint64_t a1, uint64_t a2)
{
  sub_251B0E460(0, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B0E5B8(uint64_t a1, uint64_t a2)
{
  sub_251B0E460(0, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251B0E638(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_251B0E6C0(uint64_t a1)
{
  sub_251A8223C(319, &qword_27F479E28, 0x277CCDA58);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKDayIndexRange(319);
    if (v2 <= 0x3F)
    {
      sub_251C6FC94();
      if (v3 <= 0x3F)
      {
        sub_251A8223C(319, &qword_27F479EA0, 0x277CCAA68);
        if (v4 <= 0x3F)
        {
          sub_251C701E4();
          if (v5 <= 0x3F)
          {
            sub_251A8223C(319, &qword_27F479EA8, 0x277CCDAB0);
            if (v6 <= 0x3F)
            {
              type metadata accessor for PBSleepSeries.Value(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_251B0E804()
{
  result = qword_27F479EB0;
  if (!qword_27F479EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479EB0);
  }

  return result;
}

uint64_t sub_251B0E858(uint64_t a1, uint64_t *a2)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(*(a1 + 48) + v14);
    sub_251A83384(*(a1 + 56) + 32 * v14, &v17);
    v16[0] = v15;
    sub_251B0FCF4(v16, a2);
    result = sub_251B10F6C(v16);
    if (v2)
    {
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void HKClinicalGatewayEndpointSchema.asWebRequest(substitutions:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = *MEMORY[0x277D85DE8];
  sub_251B10EAC(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v92[-v7];
  v9 = sub_251C6FE64();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v92[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v92[-v14];
  if ([v2 enabled])
  {
    v95 = v13;
    v96 = v15;
    v97 = v10;
    v98 = v9;
    v16 = [v2 method];
    v17 = sub_251C70F14();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    HTTPMethod.init(rawValue:)(v20);
    if (v100 == 8)
    {
      type metadata accessor for WebRequestError(0);
      sub_251B10CA8(&qword_27F479B48, type metadata accessor for WebRequestError, &protocol conformance descriptor for WebRequestError);
      swift_allocError();
      v22 = v21;
      v23 = [v2 method];
      v24 = sub_251C70F14();
      v26 = v25;

      *v22 = v24;
      v22[1] = v26;
LABEL_11:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }

    v93 = v100;
    v100 = MEMORY[0x277D84F98];
    sub_251B0E858(a1, &v100);
    v94 = v3;
    v38 = v100;
    v39 = [v2 URL];
    v40 = sub_251C70F14();
    v42 = v41;

    v43 = sub_251C280A8(v38, v40, v42);
    v45 = v44;

    sub_251C15BE8(v8);
    v47 = v97;
    v46 = v98;
    if ((*(v97 + 48))(v8, 1, v98) == 1)
    {

      sub_251B10E3C(v8, &qword_2813E7520, MEMORY[0x277CC9260]);
      type metadata accessor for WebRequestError(0);
      sub_251B10CA8(&qword_27F479B48, type metadata accessor for WebRequestError, &protocol conformance descriptor for WebRequestError);
      swift_allocError();
      *v48 = v43;
      v48[1] = v45;
      goto LABEL_11;
    }

    (*(v47 + 32))(v96, v8, v46);
    if (!sub_251B0F3F8(a1))
    {
      v54 = 0;
      v56 = 0xF000000000000000;
      v53 = v94;
      goto LABEL_16;
    }

    v49 = objc_opt_self();
    v50 = sub_251C70E44();

    v100 = 0;
    v51 = [v49 dataWithJSONObject:v50 options:0 error:&v100];

    v52 = v100;
    v53 = v94;
    if (v51)
    {
      v54 = sub_251C6FEE4();
      v56 = v55;

      v47 = v97;
      v46 = v98;
LABEL_16:
      v57 = *(v47 + 16);
      v57(v95, v96, v46);
      v100 = MEMORY[0x277D84F90];
      v58 = [v2 headers];
      if (v58)
      {
        v59 = v58;
        sub_251B10CF0();
        v60 = sub_251C71154();

        sub_251B10D3C(v60, v38, &v100);
        v94 = v53;

        swift_bridgeObjectRelease_n();
        v61 = v100;
      }

      else
      {

        v61 = MEMORY[0x277D84F90];
      }

      v62 = type metadata accessor for FHIRServerWebRequest(0);
      *(a2 + 24) = v62;
      *(a2 + 32) = &off_2863FC030;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v64 = v93;
      *boxed_opaque_existential_1 = v93;
      v57(boxed_opaque_existential_1 + v62[6], v95, v98);
      v65 = (boxed_opaque_existential_1 + v62[7]);
      *v65 = v54;
      v65[1] = v56;
      boxed_opaque_existential_1[1] = v61;
      v100 = 0;
      v101 = 0xE000000000000000;
      sub_251A85E50(v54, v56);
      sub_251C716A4();

      v100 = 0xD000000000000015;
      v101 = 0x8000000251C8AB60;
      if (v64 > 3)
      {
        v66 = v97;
        if (v64 > 5)
        {
          v67 = v98;
          if (v64 == 6)
          {
            v68 = 0xE300000000000000;
            v69 = 5526864;
          }

          else
          {
            v68 = 0xE500000000000000;
            v69 = 0x4543415254;
          }
        }

        else
        {
          v67 = v98;
          if (v64 == 4)
          {
            v68 = 0xE700000000000000;
            v69 = 0x534E4F4954504FLL;
          }

          else
          {
            v68 = 0xE400000000000000;
            v69 = 1414745936;
          }
        }
      }

      else
      {
        v66 = v97;
        if (v64 > 1)
        {
          v67 = v98;
          if (v64 == 2)
          {
            v68 = 0xE300000000000000;
            v69 = 5522759;
          }

          else
          {
            v68 = 0xE400000000000000;
            v69 = 1145128264;
          }
        }

        else
        {
          v67 = v98;
          if (v64)
          {
            v68 = 0xE600000000000000;
            v69 = 0x4554454C4544;
          }

          else
          {
            v68 = 0xE700000000000000;
            v69 = 0x5443454E4E4F43;
          }
        }
      }

      MEMORY[0x25308CDA0](v69, v68);

      MEMORY[0x25308CDA0](32, 0xE100000000000000);
      sub_251B10CA8(&qword_27F478E68, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v85 = v95;
      v86 = sub_251C719A4();
      v87 = v67;
      MEMORY[0x25308CDA0](v86);

      sub_251A8596C(v54, v56);
      v88 = v100;
      v89 = v101;
      v90 = *(v66 + 8);
      v90(v85, v87);
      v91 = (boxed_opaque_existential_1 + v62[8]);
      *v91 = v88;
      v91[1] = v89;
      v90(v96, v87);
      return;
    }

    v70 = v52;

    v71 = sub_251C6FD84();

    swift_willThrow();
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v72 = sub_251C70764();
    __swift_project_value_buffer(v72, qword_2813E8130);
    v73 = v71;
    v74 = sub_251C70744();
    v75 = sub_251C713D4();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v99 = v71;
      v100 = v77;
      *v76 = 136315138;
      v78 = v71;
      sub_251A82284();
      v79 = sub_251C70F74();
      v81 = sub_251B10780(v79, v80, &v100);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_251A6C000, v74, v75, "Failed to serialize JSON data: %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x25308E2B0](v77, -1, -1);
      MEMORY[0x25308E2B0](v76, -1, -1);
    }

    v83 = v97;
    v82 = v98;
    v84 = v96;
    swift_willThrow();
    (*(v83 + 8))(v84, v82);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v27 = sub_251C70764();
    __swift_project_value_buffer(v27, qword_2813E8130);
    v28 = v2;
    v29 = sub_251C70744();
    v30 = sub_251C713C4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v100 = v32;
      *v31 = 136315138;
      v33 = [v28 name];
      v34 = sub_251C70F14();
      v36 = v35;

      v37 = sub_251B10780(v34, v36, &v100);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_251A6C000, v29, v30, "HKClinicalGatewayEndpointSchema: %s is not enabled.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x25308E2B0](v32, -1, -1);
      MEMORY[0x25308E2B0](v31, -1, -1);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t sub_251B0F3F8(uint64_t a1)
{
  v2 = v1;
  sub_251B10EAC(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = sub_251C70014();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v54 - v14;
  v15 = [v2 name];
  v16 = sub_251C70F14();
  v18 = v17;

  if (v16 == 0xD000000000000013 && 0x8000000251C8AB80 == v18)
  {

    if (!*(a1 + 16))
    {
LABEL_20:
      (*(v11 + 56))(v9, 1, 1, v10);
      goto LABEL_21;
    }
  }

  else
  {
    v20 = sub_251C719D4();

    if ((v20 & 1) == 0)
    {
      goto LABEL_22;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_20;
    }
  }

  v21 = sub_251AC8DE8(5);
  if ((v22 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_251A83384(*(a1 + 56) + 32 * v21, &v59);
  v23 = swift_dynamicCast();
  v24 = *(v11 + 56);
  v24(v9, v23 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_21:
    sub_251B10E3C(v9, &qword_2813E7500, MEMORY[0x277CC9578]);
    goto LABEL_22;
  }

  v25 = v56;
  (*(v11 + 32))(v56, v9, v10);
  v26 = [v2 body];
  if (!v26)
  {
    (*(v11 + 8))(v25, v10);
LABEL_22:
    v51 = [v2 body];
    if (!v51)
    {
      return 0;
    }

    v52 = v51;
    v50 = sub_251C70E54();

    return v50;
  }

  v27 = v26;
  v28 = sub_251C70E54();

  if (!*(v28 + 16) || (v29 = sub_251AC8C58(0x6574656D61726170, 0xE900000000000072), (v30 & 1) == 0) || (sub_251A83384(*(v28 + 56) + 32 * v29, &v59), sub_251B10EAC(0, &qword_27F479EC0, sub_251B10F10, MEMORY[0x277D83940]), v32 = v31, (swift_dynamicCast() & 1) == 0))
  {
    (*(v11 + 8))(v25, v10);

    goto LABEL_22;
  }

  v54 = v32;
  v33 = *&v58[0];
  v34 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v59 = v34;
  sub_251ACCFD8(0x65636E69735FLL, 0xE600000000000000, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v36 = v59;
  (*(v11 + 16))(v7, v25, v10);
  v24(v7, 0, 1, v10);
  v37 = v55;
  static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v7, v55);
  sub_251B10E3C(v7, &qword_2813E7500, MEMORY[0x277CC9578]);
  v38 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v38 setFormatOptions_];
  v39 = sub_251C6FF94();
  v40 = [v38 stringFromDate_];

  v41 = sub_251C70F14();
  v43 = v42;

  v44 = *(v11 + 8);
  v44(v37, v10);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  *&v59 = v36;
  sub_251ACCFD8(v41, v43, 0x74614465756C6176, 0xED0000656D695465, v45);
  v46 = v59;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_251C39308(0, v33[2] + 1, 1, v33);
  }

  v48 = v33[2];
  v47 = v33[3];
  if (v48 >= v47 >> 1)
  {
    v33 = sub_251C39308((v47 > 1), v48 + 1, 1, v33);
  }

  v33[2] = v48 + 1;
  v33[v48 + 4] = v46;
  v60 = v54;
  *&v59 = v33;
  sub_251ACFB54(&v59, v58);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v28;
  sub_251ACD4A0(v58, 0x6574656D61726170, 0xE900000000000072, v49);
  v44(v56, v10);
  return v57;
}

void sub_251B0FAC0(void **a1, __int128 using)
{
  v3 = v2;
  v4 = *a1;
  v6 = v5;
  HKClinicalGatewayEndpointSchemaParameter.asHTTPHeader(using:)(&v27, *(&v5 - 1));
  object = v27.value.name._object;
  if (v27.value.name._object)
  {
    countAndFlagsBits = v27.value.name._countAndFlagsBits;
    v9 = v27.value.value._countAndFlagsBits;
    v10 = v27.value.value._object;
    v11 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_251C39148(0, *(v11 + 2) + 1, 1, v11);
      *v3 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_251C39148((v13 > 1), v14 + 1, 1, v11);
      *v3 = v11;
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[32 * v14];
    *(v15 + 4) = countAndFlagsBits;
    *(v15 + 5) = object;
    *(v15 + 6) = v9;
    *(v15 + 7) = v10;
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v16 = sub_251C70764();
    __swift_project_value_buffer(v16, qword_2813E8130);
    v17 = v4;
    v18 = sub_251C70744();
    v19 = sub_251C713C4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27.value.name._countAndFlagsBits = v21;
      *v20 = 136315138;
      v22 = [v17 param];
      v23 = sub_251C70F14();
      v25 = v24;

      v26 = sub_251B10780(v23, v25, &v27.value.name._countAndFlagsBits);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_251A6C000, v18, v19, "Unable to create HTTPHeader: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x25308E2B0](v21, -1, -1);
      MEMORY[0x25308E2B0](v20, -1, -1);
    }
  }
}

void sub_251B0FCF4(_BYTE *a1, uint64_t *a2)
{
  sub_251B10EAC(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v84 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v84 - v12;
  v14 = sub_251C70014();
  v90 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v87 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v88 = &v84 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v84 - v20;
  MEMORY[0x28223BE20](v19);
  v89 = &v84 - v22;
  sub_251B11030(a1, &v95);
  if (swift_dynamicCast())
  {
    v23 = v94[0];
    v24 = v94[1];
    v25 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *a2;
    *a2 = 0x8000000000000000;
    sub_251ACD5F0(v23, v24, v25, isUniquelyReferenced_nonNull_native);
    *a2 = v95;
    return;
  }

  v84 = a2;
  v86 = v2;
  LOBYTE(v95) = *a1;
  v27 = ContentVariables.rawValue.getter();
  v85 = v21;
  if (v27 == 0xD000000000000011 && 0x8000000251C89BB0 == v28)
  {
  }

  else
  {
    v29 = sub_251C719D4();

    if ((v29 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_251B11030(a1, &v95);
  v30 = swift_dynamicCast();
  v31 = v90;
  v32 = *(v90 + 56);
  if (v30)
  {
    v32(v13, 0, 1, v14);
    v33 = v89;
    (*(v31 + 32))(v89, v13, v14);
    v34 = *(v31 + 16);
    LODWORD(v87) = *a1;
    v34(v11, v33, v14);
    v32(v11, 0, 1, v14);
    v35 = v85;
    static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v11, v85);
    v36 = MEMORY[0x277CC9578];
    sub_251B10E3C(v11, &qword_2813E7500, MEMORY[0x277CC9578]);
    v95 = 25959;
    v96 = 0xE200000000000000;
    v34(v11, v35, v14);
    v32(v11, 0, 1, v14);
    v37 = v88;
    static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v11, v88);
    sub_251B10E3C(v11, &qword_2813E7500, v36);
    v38 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v38 setFormatOptions_];
    v39 = sub_251C6FF94();
    v40 = [v38 stringFromDate_];

    v41 = sub_251C70F14();
    v43 = v42;

    v44 = *(v31 + 8);
    v44(v37, v14);
    MEMORY[0x25308CDA0](v41, v43);

    v45 = v95;
    v46 = v96;
    v44(v35, v14);
    v47 = v84;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *v47;
    *v47 = 0x8000000000000000;
    sub_251ACD5F0(v45, v46, v87, v48);
    *v47 = v95;
    v44(v89, v14);
    return;
  }

  v32(v13, 1, 1, v14);
  sub_251B10E3C(v13, &qword_2813E7500, MEMORY[0x277CC9578]);
LABEL_10:
  LOBYTE(v95) = *a1;
  if (ContentVariables.rawValue.getter() == 0xD000000000000015 && 0x8000000251C89BD0 == v49)
  {
  }

  else
  {
    v50 = sub_251C719D4();

    if ((v50 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  sub_251B11030(a1, &v95);
  v51 = swift_dynamicCast();
  v52 = v90;
  v53 = *(v90 + 56);
  if (v51)
  {
    v53(v8, 0, 1, v14);
    v54 = v87;
    (*(v52 + 32))(v87, v8, v14);
    v55 = *(v52 + 16);
    LODWORD(v89) = *a1;
    v55(v11, v54, v14);
    v56 = v55;
    v53(v11, 0, 1, v14);
    v57 = v85;
    static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v11, v85);
    v58 = MEMORY[0x277CC9578];
    sub_251B10E3C(v11, &qword_2813E7500, MEMORY[0x277CC9578]);
    v95 = 25959;
    v96 = 0xE200000000000000;
    v56(v11, v57, v14);
    v53(v11, 0, 1, v14);
    v59 = v88;
    static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v11, v88);
    sub_251B10E3C(v11, &qword_2813E7500, v58);
    v60 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v60 setFormatOptions_];
    v61 = sub_251C6FF94();
    v62 = [v60 stringFromDate_];

    v63 = sub_251C70F14();
    v65 = v64;

    v66 = *(v90 + 8);
    v66(v59, v14);
    MEMORY[0x25308CDA0](v63, v65);

    v67 = v95;
    v68 = v96;
    v66(v85, v14);
    v69 = v84;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *v69;
    *v69 = 0x8000000000000000;
    sub_251ACD5F0(v67, v68, v89, v70);
    *v69 = v95;
    v66(v87, v14);
    return;
  }

  v53(v8, 1, 1, v14);
  sub_251B10E3C(v8, &qword_2813E7500, MEMORY[0x277CC9578]);
LABEL_17:
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v71 = sub_251C70764();
  __swift_project_value_buffer(v71, qword_2813E8130);
  sub_251B11030(a1, &v95);
  sub_251B11030(a1, v94);
  v72 = sub_251C70744();
  v73 = sub_251C713C4();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v97 = v75;
    *v74 = 136315394;
    sub_251B11030(&v95, v92);
    v91 = v92[0];
    v76 = ContentVariables.rawValue.getter();
    v78 = v77;
    sub_251B10F6C(&v95);
    __swift_destroy_boxed_opaque_existential_1(v93);
    v79 = sub_251B10780(v76, v78, &v97);

    *(v74 + 4) = v79;
    *(v74 + 12) = 2080;
    sub_251B11030(v94, v92);
    v80 = sub_251C70F74();
    v82 = v81;
    sub_251B10F6C(v94);
    v83 = sub_251B10780(v80, v82, &v97);

    *(v74 + 14) = v83;
    _os_log_impl(&dword_251A6C000, v72, v73, "Unexpected type for key: %s -- %s", v74, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v75, -1, -1);
    MEMORY[0x25308E2B0](v74, -1, -1);
  }

  else
  {

    sub_251B10F6C(v94);
    sub_251B10F6C(&v95);
  }
}

unint64_t sub_251B10780(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251B1084C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_251A83384(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_251B1084C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_251B10958(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_251C71724();
    a6 = v11;
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

void *sub_251B10958(uint64_t a1, unint64_t a2)
{
  v3 = sub_251B109A4(a1, a2);
  sub_251B10AD4(&unk_2863F2D48);
  return v3;
}

void *sub_251B109A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_251C6CBEC(v5, 0);
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

  result = sub_251C71724();
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
        v10 = sub_251C71014();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251C6CBEC(v10, 0);
        result = sub_251C71694();
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

uint64_t sub_251B10AD4(uint64_t result)
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

  result = sub_251B10BC0(result, v11, 1, v3);
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

char *sub_251B10BC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_251B11094();
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

uint64_t sub_251B10CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251B10CF0()
{
  result = qword_27F479EB8;
  if (!qword_27F479EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479EB8);
  }

  return result;
}

void sub_251B10D3C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25308D460](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      *&v13 = a2;
      *(&v13 + 1) = a3;
      sub_251B0FAC0(&v12, v13);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
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

uint64_t sub_251B10E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B10EAC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251B10EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251B10F10()
{
  if (!qword_27F479EC8)
  {
    v0 = sub_251C70E74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479EC8);
    }
  }
}

uint64_t sub_251B10F6C(uint64_t a1)
{
  sub_251B10FC8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251B10FC8()
{
  if (!qword_27F479ED0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479ED0);
    }
  }
}

uint64_t sub_251B11030(uint64_t a1, uint64_t a2)
{
  sub_251B10FC8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251B11094()
{
  if (!qword_2813E1C40)
  {
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1C40);
    }
  }
}

uint64_t sub_251B110E4(uint64_t a1)
{
  v3 = a1;
  v2[8] = a1;
  v2[9] = v1;
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_251B11184;

  return sub_251B12CE8((v2 + 2), v3 & 1);
}

uint64_t sub_251B11184()
{
  v2 = *(*v1 + 72);
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_251B11584;
  }

  else
  {
    v3 = sub_251B112AC;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_251B112AC()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[12] = v2;
  v0[13] = v1;
  v0[14] = v0[5];
  if (*(v1 + 16))
  {
    v3 = (v0[8] >> 1) & 1;
    v0[6] = v2;
    v0[7] = v1;

    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_251B113D0;

    return sub_251B13240(v0 + 6, v3);
  }

  else
  {

    v6 = v0[1];
    v7 = v0[12];
    v8 = MEMORY[0x277D84F90];

    return v6(v8, v7);
  }
}

uint64_t sub_251B113D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = *(v4 + 72);

    v6 = sub_251B1159C;
  }

  else
  {
    v5 = *(v4 + 72);
    *(v4 + 136) = a1;

    v6 = sub_251B11510;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_251B11510()
{

  v1 = v0[17];
  v2 = v0[1];
  v3 = v0[12];

  return v2(v1, v3);
}

uint64_t sub_251B1159C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251B11608(uint64_t a1)
{
  v3 = a1;
  v2[8] = a1;
  v2[9] = v1;
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_251B116A8;

  return sub_251B12CE8((v2 + 2), v3 & 1);
}

uint64_t sub_251B116A8()
{
  v2 = *(*v1 + 72);
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_251B14FEC;
  }

  else
  {
    v3 = sub_251B117D0;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_251B117D0()
{
  v1 = v0[4];
  v0[12] = v0[3];
  v0[13] = v1;
  v2 = v0[5];
  v0[14] = v2;
  if (*(v2 + 16))
  {
    v3 = (v0[8] >> 1) & 1;
    v0[6] = v1;
    v0[7] = v2;

    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_251B118F8;

    return sub_251B13EB4(v0 + 6, v3);
  }

  else
  {

    v6 = v0[1];
    v7 = v0[13];
    v8 = MEMORY[0x277D84F90];

    return v6(v8, v7);
  }
}

uint64_t sub_251B118F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = *(v4 + 72);

    v6 = sub_251B11AB0;
  }

  else
  {
    v5 = *(v4 + 72);
    *(v4 + 136) = a1;

    v6 = sub_251B11A38;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_251B11A38()
{

  v1 = v0[17];
  v2 = v0[1];
  v3 = v0[13];

  return v2(v1, v3);
}

uint64_t sub_251B11AB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251B11B20(uint64_t a1)
{
  v3 = a1;
  v2[10] = a1;
  v2[11] = v1;
  v4 = swift_task_alloc();
  v2[12] = v4;
  *v4 = v2;
  v4[1] = sub_251B11BC0;

  return sub_251B12CE8((v2 + 2), v3 & 1);
}

uint64_t sub_251B11BC0()
{
  v2 = *(*v1 + 88);
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_251B1296C;
  }

  else
  {
    v3 = sub_251B11CE8;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_251B11CE8()
{
  v30 = v0;
  v1 = v0[10];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v0[14] = v2;
  v0[15] = v4;
  v0[16] = v5;
  if (*(v2 + 16))
  {
    v6 = (v1 >> 1) & 1;
    v0[6] = v3;
    v0[7] = v2;

    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_251B121F4;

    return sub_251B13240(v0 + 6, v6);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v9 = sub_251C70764();
    __swift_project_value_buffer(v9, qword_2813E8130);

    v10 = sub_251C70744();
    v11 = sub_251C713B4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[11];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_251B10780(*(v12 + 112), *(v12 + 120), &v29);
      _os_log_impl(&dword_251A6C000, v10, v11, "%s: no new issuers", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x25308E2B0](v14, -1, -1);
      MEMORY[0x25308E2B0](v13, -1, -1);
    }

    v15 = v0[16];
    if (*(v15 + 16))
    {
      v16 = v0[10];
      v0[8] = v0[15];
      v0[9] = v15;

      v17 = swift_task_alloc();
      v0[19] = v17;
      *v17 = v0;
      v17[1] = sub_251B12688;

      return sub_251B13EB4(v0 + 8, (v16 & 2) != 0);
    }

    else
    {

      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, qword_2813E8130);

      v18 = sub_251C70744();
      v19 = sub_251C713B4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = v0[11];
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v29 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_251B10780(*(v20 + 112), *(v20 + 120), &v29);
        _os_log_impl(&dword_251A6C000, v18, v19, "%s: no new public keys", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x25308E2B0](v22, -1, -1);
        MEMORY[0x25308E2B0](v21, -1, -1);
      }

      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, qword_2813E8130);

      v23 = sub_251C70744();
      v24 = sub_251C713F4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v0[11];
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v29 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_251B10780(*(v25 + 112), *(v25 + 120), &v29);
        _os_log_impl(&dword_251A6C000, v23, v24, "%s: done", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x25308E2B0](v27, -1, -1);
        MEMORY[0x25308E2B0](v26, -1, -1);
      }

      v28 = v0[1];

      return v28();
    }
  }
}

uint64_t sub_251B121F4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v4 = *(v3 + 88);

    v5 = sub_251B12984;
  }

  else
  {
    v4 = *(v3 + 88);

    v5 = sub_251B12338;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_251B12338()
{
  v18 = v0;
  v1 = v0[16];
  if (*(v1 + 16))
  {
    v2 = v0[10];
    v0[8] = v0[15];
    v0[9] = v1;

    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_251B12688;

    return sub_251B13EB4(v0 + 8, (v2 & 2) != 0);
  }

  else
  {

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v5 = sub_251C70764();
    __swift_project_value_buffer(v5, qword_2813E8130);

    v6 = sub_251C70744();
    v7 = sub_251C713B4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[11];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_251B10780(*(v8 + 112), *(v8 + 120), &v17);
      _os_log_impl(&dword_251A6C000, v6, v7, "%s: no new public keys", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x25308E2B0](v10, -1, -1);
      MEMORY[0x25308E2B0](v9, -1, -1);
    }

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v5, qword_2813E8130);

    v11 = sub_251C70744();
    v12 = sub_251C713F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[11];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_251B10780(*(v13 + 112), *(v13 + 120), &v17);
      _os_log_impl(&dword_251A6C000, v11, v12, "%s: done", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x25308E2B0](v15, -1, -1);
      MEMORY[0x25308E2B0](v14, -1, -1);
    }

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_251B12688(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v4 = *(v3 + 88);

    v5 = sub_251B129F4;
    v6 = v4;
  }

  else
  {
    v7 = *(v3 + 88);

    v5 = sub_251B127F0;
    v6 = v7;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_251B127F0()
{
  v10 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = sub_251C70764();
  __swift_project_value_buffer(v1, qword_2813E8130);

  v2 = sub_251C70744();
  v3 = sub_251C713F4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_251B10780(*(v4 + 112), *(v4 + 120), &v9);
    _os_log_impl(&dword_251A6C000, v2, v3, "%s: done", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25308E2B0](v6, -1, -1);
    MEMORY[0x25308E2B0](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_251B12984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251B129F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251B12BEC(int a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 1, 0);
  _Block_release(v4);
  v5 = *(v3 + 8);

  return v5();
}

id sub_251B12CB0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IssuerDirectoryDownloadTaskManager.URLSessionNoCustomCertVerificationDelegate();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_251B12CE8(uint64_t a1, char a2)
{
  *(v3 + 216) = a2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v2;
  return MEMORY[0x2822009F8](sub_251B12D0C, v2, 0);
}

uint64_t sub_251B12D0C()
{
  v24 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = sub_251C70764();
  __swift_project_value_buffer(v1, qword_2813E8130);

  v2 = sub_251C70744();
  v3 = sub_251C713F4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 192);
    v5 = *(v0 + 216);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_251B10780(*(v4 + 112), *(v4 + 120), &v23);
    *(v6 + 12) = 2080;
    if (v5)
    {
      v8 = 0x7972726163;
    }

    else
    {
      v8 = 1685025392;
    }

    if (v5)
    {
      v9 = 0xE500000000000000;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    v10 = sub_251B10780(v8, v9, &v23);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_251A6C000, v2, v3, "%s: starting issuer directory and public key download from %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  if (*(v0 + 216))
  {

LABEL_14:
    v12 = *(v0 + 192);
    v13 = v12[19];
    v14 = v12[20];
    __swift_project_boxed_opaque_existential_1(v12 + 16, v13);
    v15 = [objc_allocWithZone(type metadata accessor for IssuerDirectoryDownloadTaskManager.URLSessionNoCustomCertVerificationDelegate()) init];
    v16 = *(v14 + 24);
    *(v0 + 136) = v13;
    *(v0 + 144) = v14;
    __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    v16(v15, v13, v14);

    goto LABEL_16;
  }

  v11 = sub_251C719D4();

  if (v11)
  {
    goto LABEL_14;
  }

  sub_251A823B4(*(v0 + 192) + 128, v0 + 112);
LABEL_16:
  v17 = *(v0 + 192);
  v18 = *(v0 + 216);
  sub_251A7E8D8((v0 + 112), v0 + 72);
  sub_251A823B4(v0 + 72, v0 + 24);
  v19 = *(v17 + 168);
  *(v0 + 16) = v18 & 1;
  *(v0 + 64) = v19;
  v20 = v19;
  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  v21[1] = sub_251B13028;

  return sub_251AB37D8(v0 + 152);
}

uint64_t sub_251B13028()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_251B131D4;
  }

  else
  {
    v4 = sub_251B13154;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_251B13154()
{
  v1 = *(v0 + 184);
  sub_251B14F7C(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  *v1 = *(v0 + 152);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_251B131D4()
{
  sub_251B14F7C(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251B13240(uint64_t *a1, char a2)
{
  *(v3 + 280) = v2;
  *(v3 + 408) = a2;
  v5 = type metadata accessor for VHRDirectoryIssuer(0);
  *(v3 + 288) = v5;
  *(v3 + 296) = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a1;
  v8 = a1[1];
  *(v3 + 304) = v6;
  *(v3 + 312) = v7;
  *(v3 + 320) = v8;

  return MEMORY[0x2822009F8](sub_251B13310, v2, 0);
}

uint64_t sub_251B13310()
{
  v29 = v0;
  v1 = *(v0 + 320);
  *(v0 + 272) = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 296);
    v27 = (*(v0 + 304) + *(*(v0 + 288) + 20));
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v26 = *(v4 + 72);
    do
    {
      sub_251B14EB4(v5, *(v0 + 304), type metadata accessor for VHRDirectoryIssuer);
      sub_251C6FDA4();
      v6 = *v27;
      v7 = v27[1];
      v8 = objc_allocWithZone(MEMORY[0x277D12498]);
      v9 = sub_251C70EE4();

      v10 = sub_251C70EE4();
      [v8 initWithIdentifier:v9 title:v10];

      MEMORY[0x25308CEE0]();
      if (*((*(v0 + 272) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 272) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_251C71174();
      }

      sub_251C71194();
      v11 = *(v0 + 272);
      v12 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v12 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 && __OFADD__(v3++, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      sub_251B14F1C(*(v0 + 304), type metadata accessor for VHRDirectoryIssuer);
      v5 += v26;
      --v2;
    }

    while (v2);
    if ((*(v0 + 408) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    if ((*(v0 + 408) & 1) == 0)
    {
LABEL_22:

      v24 = *(v0 + 8);

      return v24(v11);
    }

    v3 = 0;
  }

  *(v0 + 336) = v3;
  *(v0 + 344) = v11;
  *(v0 + 328) = v3;
  if (qword_2813E26F8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v14 = sub_251C70764();
  *(v0 + 352) = __swift_project_value_buffer(v14, qword_2813E8130);

  v15 = sub_251C70744();
  v16 = sub_251C713B4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 280);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_251B10780(*(v17 + 112), *(v17 + 120), &v28);
    _os_log_impl(&dword_251A6C000, v15, v16, "%s: saving issuers", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x25308E2B0](v19, -1, -1);
    MEMORY[0x25308E2B0](v18, -1, -1);
  }

  v20 = *(*(v0 + 280) + 168);
  *(v0 + 360) = v20;
  sub_251A8223C(0, &unk_27F479F50, 0x277D12498);

  v21 = sub_251C71144();
  *(v0 + 368) = v21;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_251B13788;
  v22 = swift_continuation_init();
  sub_251AF7F78(0);
  *(v0 + 376) = v23;
  *(v0 + 200) = v23;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_251BB5ED4;
  *(v0 + 168) = &block_descriptor_19;
  *(v0 + 176) = v22;
  [v20 insertOrReplaceIssuerRegistryEntries:v21 completion:v0 + 144];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_251B13788()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 384) = v2;
  v3 = *(v1 + 280);
  if (v2)
  {
    v4 = sub_251B13DA0;
  }

  else
  {
    v4 = sub_251B138A8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_251B138A8()
{
  v24 = v0;

  v1 = sub_251C70744();
  v2 = sub_251C713C4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 280);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_251B10780(*(v4 + 112), *(v4 + 120), &v23);
    *(v5 + 12) = 2048;
    if (v3 >> 62)
    {
      v7 = sub_251C717F4();
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = *(v0 + 336);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (v9)
    {
      __break(1u);
      return MEMORY[0x282200938](v7);
    }

    v11 = *(v0 + 328);
    *(v5 + 14) = v10;
    *(v5 + 22) = 2048;
    *(v5 + 24) = v11;
    _os_log_impl(&dword_251A6C000, v1, v2, "%s: inserted %ld issuers. Deleted %ld issuers.", v5, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25308E2B0](v6, -1, -1);
    MEMORY[0x25308E2B0](v5, -1, -1);
  }

  v12 = sub_251C70744();
  v13 = sub_251C713B4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 312);
    v15 = *(v0 + 280);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_251B10780(*(v15 + 112), *(v15 + 120), &v23);
    *(v16 + 12) = 2048;
    *(v16 + 14) = v14;

    _os_log_impl(&dword_251A6C000, v12, v13, "%s: updating RegistryIssuerContentVersion to %ld", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x25308E2B0](v17, -1, -1);
    MEMORY[0x25308E2B0](v16, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 376);
  v19 = *(v0 + 360);
  v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 392) = v20;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_251B13C0C;
  v21 = swift_continuation_init();
  *(v0 + 264) = v18;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_251BB5ED4;
  *(v0 + 232) = &block_descriptor_23;
  *(v0 + 240) = v21;
  [v19 setRegistryIssuerContentVersion:v20 completion:v0 + 208];
  v7 = v0 + 80;

  return MEMORY[0x282200938](v7);
}

uint64_t sub_251B13C0C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 400) = v2;
  v3 = *(v1 + 280);
  if (v2)
  {
    v4 = sub_251B13E2C;
  }

  else
  {
    v4 = sub_251B13D2C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_251B13D2C()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_251B13DA0(uint64_t a1, uint64_t a2)
{
  swift_willThrow();

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_251B13E2C(uint64_t a1, uint64_t a2)
{
  swift_willThrow();

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_251B13EB4(uint64_t *a1, char a2)
{
  *(v3 + 272) = v2;
  *(v3 + 376) = a2;
  *(v3 + 280) = *(type metadata accessor for EUDCCPublicKey(0) - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v7 = a1[1];
  *(v3 + 288) = v5;
  *(v3 + 296) = v6;
  *(v3 + 304) = v7;

  return MEMORY[0x2822009F8](sub_251B13F80, v2, 0);
}

uint64_t sub_251B13F80()
{
  v24 = v0;
  v1 = *(v0 + 304);
  v2 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 280);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = *(v0 + 288);
      sub_251B14EB4(v5, v7, type metadata accessor for EUDCCPublicKey);
      v8 = sub_251C283DC();
      v9 = sub_251B14F1C(v7, type metadata accessor for EUDCCPublicKey);
      if (v8)
      {
        MEMORY[0x25308CEE0](v9);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_251C71174();
        }

        sub_251C71194();
        v2 = v23;
      }

      v5 += v6;
      --v3;
    }

    while (v3);
  }

  *(v0 + 312) = v2;
  if (*(v0 + 376))
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v10 = sub_251C70764();
    *(v0 + 320) = __swift_project_value_buffer(v10, qword_2813E8130);

    v11 = sub_251C70744();
    v12 = sub_251C713B4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 272);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_251B10780(*(v13 + 112), *(v13 + 120), &v23);
      _os_log_impl(&dword_251A6C000, v11, v12, "%s: saving public keys", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x25308E2B0](v15, -1, -1);
      MEMORY[0x25308E2B0](v14, -1, -1);
    }

    v16 = *(*(v0 + 272) + 168);
    *(v0 + 328) = v16;
    sub_251A8223C(0, &unk_27F47BCF0, 0x277D124A0);
    v17 = sub_251C71144();
    *(v0 + 336) = v17;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_251B14310;
    v18 = swift_continuation_init();
    sub_251AF7F78(0);
    *(v0 + 344) = v19;
    *(v0 + 200) = v19;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_251BB5ED4;
    *(v0 + 168) = &block_descriptor_6;
    *(v0 + 176) = v18;
    [v16 insertOrReplacePublicKeyEntries:v17 completion:v0 + 144];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    v20 = *(v0 + 8);
    v21 = *(v0 + 312);

    return v20(v21);
  }
}

uint64_t sub_251B14310()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = *(v1 + 272);

    v4 = sub_251B14938;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 272);
    v4 = sub_251B14438;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_251B14438()
{
  v21 = v0;

  v1 = sub_251C70744();
  v2 = sub_251C713C4();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 312);
  if (v3)
  {
    v5 = *(v0 + 272);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_251B10780(*(v5 + 112), *(v5 + 120), &v20);
    *(v6 + 12) = 2048;
    if (v4 >> 62)
    {
      v8 = sub_251C717F4();
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 14) = v8;

    _os_log_impl(&dword_251A6C000, v1, v2, "%s: inserted %ld public keys", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  else
  {
  }

  v9 = sub_251C70744();
  v10 = sub_251C713B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 296);
    v12 = *(v0 + 272);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_251B10780(*(v12 + 112), *(v12 + 120), &v20);
    *(v13 + 12) = 2048;
    *(v13 + 14) = v11;

    _os_log_impl(&dword_251A6C000, v9, v10, "%s: updating RegistryPublicKeyContentVersion to %ld", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x25308E2B0](v14, -1, -1);
    MEMORY[0x25308E2B0](v13, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 344);
  v16 = *(v0 + 328);
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 360) = v17;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_251B147A0;
  v18 = swift_continuation_init();
  *(v0 + 264) = v15;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_251BB5ED4;
  *(v0 + 232) = &block_descriptor_16_0;
  *(v0 + 240) = v18;
  [v16 setRegistryPublicKeyContentVersion:v17 completion:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_251B147A0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = *(v1 + 272);

    v4 = sub_251B149B8;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 272);
    v4 = sub_251B148C8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_251B148C8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 312);

  return v1(v2);
}

uint64_t sub_251B14938(uint64_t a1, uint64_t a2)
{
  swift_willThrow();

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_251B149B8(uint64_t a1, uint64_t a2)
{
  swift_willThrow();

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_251B14A34()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t *sub_251B14AC4(uint64_t a1, id a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3 + 16;
  v16[3] = a4;
  v16[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  swift_defaultActor_initialize();
  sub_251A823B4(v16, v9);
  if (!a2)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    a2 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
  }

  a3[21] = a2;
  swift_getMetatypeMetadata();
  v12 = sub_251C70F74();
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(v16);
  a3[14] = v12;
  a3[15] = v14;
  return a3;
}

uint64_t sub_251B14BFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_251AF4F78;

  return sub_251B12BEC(v2, v3, v4);
}

uint64_t sub_251B14CBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_251B14FE8;

  return sub_251B33EA8(v2, v3, v4);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251B14DBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_251B14FE8;

  return sub_251B33F90(a1, v4, v5, v6);
}

uint64_t sub_251B14EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B14F1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B15050(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_251C71764();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_251A83384(i, v5);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_251C71734();
    sub_251C71774();
    sub_251C71784();
    sub_251C71744();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_251B15160(unint64_t a1, void *a2)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_251C71764();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25308D460](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_251C71734();
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_251C717F4();
    sub_251C71764();
  }

  return v9;
}

void sub_251B152C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_251B15550;
  *(v15 + 24) = v14;
  if (a6 < 1)
  {

    sub_251C716A4();

    v20 = sub_251C719A4();
    MEMORY[0x25308CDA0](v20);

    MEMORY[0x25308CDA0](0x7365697274657220, 0xE800000000000000);
    sub_251C717E4();
    __break(1u);
  }

  else
  {
    v16 = v15;

    v17 = sub_251C70E44();
    v18 = swift_allocObject();
    v18[2] = a6;
    v18[3] = a4;
    v18[4] = a5;
    v18[5] = a7;
    v18[6] = sub_251B157FC;
    v18[7] = v16;
    aBlock[4] = sub_251B166D8;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251B166DC;
    aBlock[3] = &block_descriptor_7;
    v19 = _Block_copy(aBlock);
    sub_251A858C4(a4, a5);

    DeviceIdentityIssueClientCertificateWithCompletion();
    _Block_release(v19);
  }
}

uint64_t sub_251B15550(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = a4 & 1;
  return v5(v7);
}

void sub_251B15594(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = a6;
  if (a1)
  {

    sub_251A858C4(a2, a3);
    a7(a1, a2, a3, 0);
    sub_251B1694C(a1, a2, a3);
  }

  if (v8 != 0xFF)
  {
    sub_251B16908(a4, a5, v8);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v14 = sub_251C70764();
    __swift_project_value_buffer(v14, qword_2813E8130);
    sub_251B16908(a4, a5, v8);
    v15 = sub_251C70744();
    v16 = sub_251C713D4();
    sub_251B16920(a4, a5, v8);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v17 = 136315138;
      sub_251B16908(a4, a5, v8);
      v18 = sub_251C70F74();
      v20 = sub_251B10780(v18, v19, &v24);

      *(v17 + 4) = v20;
      _os_log_impl(&dword_251A6C000, v15, v16, "Could not generate BAA Cert Signature. Error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x25308E2B0](v23, -1, -1);
      MEMORY[0x25308E2B0](v17, -1, -1);
    }

    sub_251AFEBE4();
    v21 = swift_allocError();
    *v22 = a4;
    *(v22 + 8) = a5;
    *(v22 + 16) = v8;
    a7(v21, 0, 0, 1);
  }
}

void sub_251B15804(__SecKey *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void (*a8)(void, void, void, void, void, void), uint64_t a9)
{
  v10 = a8;
  v14 = a9;
  v130 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v16 = a3;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v17 = sub_251C70764();
    __swift_project_value_buffer(v17, qword_2813E8130);
    v18 = a3;
    v19 = sub_251C70744();
    v20 = sub_251C713D4();

    v116 = a6;
    if (os_log_type_enabled(v19, v20))
    {
      v118 = v10;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v21 = 136315138;
      v122[0] = a3;
      v23 = a3;
      sub_251A82284();
      v24 = sub_251C70F74();
      v26 = sub_251B10780(v24, v25, &aBlock);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_251A6C000, v19, v20, "Could not retrieve BAA private key caused. Error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v27 = v22;
      v14 = a9;
      MEMORY[0x25308E2B0](v27, -1, -1);
      v28 = v21;
      v10 = v118;
      MEMORY[0x25308E2B0](v28, -1, -1);
    }

    aBlock = a3;
    v29 = a3;
    sub_251A82284();
    v30 = sub_251C70F74();
    if (a4 < 2)
    {
      v10(0, 0, 0, v30, v31, 0);

LABEL_41:
      HKReleaseSecKey();
      return;
    }

    v32 = sub_251C70744();
    v33 = sub_251C713C4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      v35 = a4 - 1;
      *(v34 + 4) = a4 - 1;
      _os_log_impl(&dword_251A6C000, v32, v33, "Retrying generating the BAA signature. Retries left: %ld", v34, 0xCu);
      MEMORY[0x25308E2B0](v34, -1, -1);
    }

    else
    {

      v35 = a4 - 1;
    }

    v50 = sub_251C70E44();
    v51 = swift_allocObject();
    v51[2] = v35;
    v51[3] = a5;
    v51[4] = v116;
    v51[5] = a7;
    v51[6] = v10;
    v51[7] = v14;
    v128 = sub_251B169B0;
    v129 = v51;
    aBlock = MEMORY[0x277D85DD0];
    v125 = 1107296256;
    v126 = sub_251B166DC;
    v127 = &block_descriptor_27;
    v52 = _Block_copy(&aBlock);
    sub_251A858C4(a5, v116);

    DeviceIdentityIssueClientCertificateWithCompletion();

LABEL_25:
    _Block_release(v52);

    goto LABEL_41;
  }

  if (!a2 || (v37 = sub_251B15050(a2)) == 0)
  {
LABEL_27:
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v53 = sub_251C70764();
    __swift_project_value_buffer(v53, qword_2813E8130);

    v54 = sub_251C70744();
    v55 = sub_251C713D4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v122[0] = v57;
      *v56 = 136315138;
      if (a2)
      {
        v58 = *(a2 + 16);
      }

      else
      {
        v58 = 0;
      }

      aBlock = v58;
      LOBYTE(v125) = a2 == 0;
      sub_251B167A8();
      v59 = sub_251C70F74();
      v61 = sub_251B10780(v59, v60, v122);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_251A6C000, v54, v55, "Could not retrieve BAA private key caused by incorrect certs. Count: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x25308E2B0](v57, -1, -1);
      MEMORY[0x25308E2B0](v56, -1, -1);

      v14 = a9;
    }

    else
    {
    }

    if (a4 < 2)
    {
      a8(0, 0, 0, 0xD000000000000011, 0x8000000251C8ADF0, 0);
    }

    else
    {
      v62 = sub_251C70744();
      v63 = sub_251C713C4();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 134217984;
        v65 = a4 - 1;
        *(v64 + 4) = a4 - 1;
        _os_log_impl(&dword_251A6C000, v62, v63, "Retrying generating the BAA signature. Retries left: %ld", v64, 0xCu);
        MEMORY[0x25308E2B0](v64, -1, -1);
      }

      else
      {

        v65 = a4 - 1;
      }

      v66 = sub_251C70E44();
      v67 = swift_allocObject();
      v67[2] = v65;
      v67[3] = a5;
      v67[4] = a6;
      v67[5] = a7;
      v67[6] = a8;
      v67[7] = v14;
      v128 = sub_251B169B0;
      v129 = v67;
      aBlock = MEMORY[0x277D85DD0];
      v125 = 1107296256;
      v126 = sub_251B166DC;
      v127 = &block_descriptor_13;
      v68 = _Block_copy(&aBlock);
      sub_251A858C4(a5, a6);

      DeviceIdentityIssueClientCertificateWithCompletion();
      _Block_release(v68);
    }

    goto LABEL_41;
  }

  v38 = v37;
  if (*(a2 + 16) != 2)
  {

    goto LABEL_27;
  }

  if (v37 >> 62)
  {
    v39 = sub_251C717F4();
  }

  else
  {
    v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_251C0BC34(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      goto LABEL_74;
    }

    v113 = a5;
    v117 = a6;
    v40 = aBlock;
    if ((v38 & 0xC000000000000001) != 0)
    {
      v41 = 0;
      do
      {
        v42 = MEMORY[0x25308D460](v41, v38);
        v43 = SecCertificateCopyData(v42);
        v44 = sub_251C6FEE4();
        v46 = v45;
        swift_unknownObjectRelease();

        aBlock = v40;
        v48 = *(v40 + 16);
        v47 = *(v40 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_251C0BC34((v47 > 1), v48 + 1, 1);
          v40 = aBlock;
        }

        ++v41;
        *(v40 + 16) = v48 + 1;
        v49 = v40 + 16 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v46;
      }

      while (v39 != v41);
    }

    else
    {
      v69 = (v38 + 32);
      do
      {
        v70 = *v69;
        v71 = SecCertificateCopyData(v70);
        v72 = sub_251C6FEE4();
        v74 = v73;

        aBlock = v40;
        v76 = *(v40 + 16);
        v75 = *(v40 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_251C0BC34((v75 > 1), v76 + 1, 1);
          v40 = aBlock;
        }

        *(v40 + 16) = v76 + 1;
        v77 = v40 + 16 * v76;
        *(v77 + 32) = v72;
        *(v77 + 40) = v74;
        ++v69;
        --v39;
      }

      while (v39);
    }

    v14 = a9;
    a6 = v117;
    a5 = v113;
  }

  error = 0;
  if (a1)
  {
    v78 = *MEMORY[0x277CDC300];
    v79 = sub_251C6FEC4();
    v80 = SecKeyCreateSignature(a1, v78, v79, &error);

    if (v80)
    {
      v81 = sub_251C6FEE4();
      v9 = v82;

      v83 = error;

      if (!v83)
      {
        a8(v40, v81, v9, 0, 0, 255);

        sub_251A83028(v81, v9);
        goto LABEL_41;
      }
    }

    else
    {

      v81 = 0;
      v9 = 0xF000000000000000;
    }

    v115 = v81;
    if (!*(v40 + 16))
    {

      v87 = a8;
LABEL_58:
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v92 = sub_251C70764();
      __swift_project_value_buffer(v92, qword_2813E8130);
      v93 = sub_251C70744();
      v94 = sub_251C713D4();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_251A6C000, v93, v94, "BAA Signature failed with nil, but referenceKey populated", v95, 2u);
        MEMORY[0x25308E2B0](v95, -1, -1);
      }

      if (error)
      {
        v96 = sub_251C70744();
        v97 = sub_251C713D4();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          aBlock = v112;
          *v98 = 136315138;
          swift_beginAccess();
          v122[0] = error;
          sub_251B1682C(0, &qword_27F479F60, sub_251B167F8, MEMORY[0x277D83D88]);
          v99 = sub_251C71564();
          v101 = sub_251B10780(v99, v100, &aBlock);

          *(v98 + 4) = v101;
          _os_log_impl(&dword_251A6C000, v96, v97, "Failed to sign the payload. Error: %s", v98, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v112);
          MEMORY[0x25308E2B0](v112, -1, -1);
          v102 = v98;
          v87 = a8;
          MEMORY[0x25308E2B0](v102, -1, -1);
        }
      }

      swift_beginAccess();
      sub_251B1682C(0, &qword_27F479F60, sub_251B167F8, MEMORY[0x277D83D88]);
      v103 = sub_251C71564();
      if (a4 < 2)
      {
        v87(0, 0, 0, v103, v104, 0);

        sub_251A8596C(v115, v9);
        goto LABEL_41;
      }

      v114 = v9;
      v105 = a5;
      v106 = a6;
      v107 = sub_251C70744();
      v108 = sub_251C713C4();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 134217984;
        v110 = a4 - 1;
        *(v109 + 4) = a4 - 1;
        _os_log_impl(&dword_251A6C000, v107, v108, "Retrying generating the BAA signature. Retries left: %ld", v109, 0xCu);
        MEMORY[0x25308E2B0](v109, -1, -1);
      }

      else
      {

        v110 = a4 - 1;
      }

      v50 = sub_251C70E44();
      v111 = swift_allocObject();
      v111[2] = v110;
      v111[3] = v105;
      v111[4] = v106;
      v111[5] = a7;
      v111[6] = v87;
      v111[7] = v14;
      v128 = sub_251B169B0;
      v129 = v111;
      aBlock = MEMORY[0x277D85DD0];
      v125 = 1107296256;
      v126 = sub_251B166DC;
      v127 = &block_descriptor_20_0;
      v52 = _Block_copy(&aBlock);
      sub_251A858C4(v105, v106);

      DeviceIdentityIssueClientCertificateWithCompletion();

      sub_251A8596C(v115, v114);
      goto LABEL_25;
    }

    if (qword_2813E26F8 == -1)
    {
LABEL_54:
      v84 = sub_251C70764();
      __swift_project_value_buffer(v84, qword_2813E8130);

      v85 = sub_251C70744();
      v86 = sub_251C713D4();
      v87 = a8;
      if (os_log_type_enabled(v85, v86))
      {
        v88 = swift_slowAlloc();
        *v88 = 134217984;
        v89 = v9;
        v90 = a5;
        v91 = *(v40 + 16);

        *(v88 + 4) = v91;
        a5 = v90;
        v9 = v89;
        v87 = a8;

        _os_log_impl(&dword_251A6C000, v85, v86, "BAA Signature failed with nil, but certs populated. Count: %ld", v88, 0xCu);
        MEMORY[0x25308E2B0](v88, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      goto LABEL_58;
    }

LABEL_74:
    swift_once();
    goto LABEL_54;
  }

  __break(1u);
}

uint64_t sub_251B166DC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_251C71154();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_251B167A8()
{
  if (!qword_2813E1DD0)
  {
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1DD0);
    }
  }
}

void sub_251B1682C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_5Tm()
{
  sub_251A83028(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251B16908(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

uint64_t sub_251B16920(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_251B16934(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_251B16934(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

uint64_t sub_251B1694C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_251A83028(a2, a3);
  }

  return result;
}

uint64_t sub_251B169C0@<X0>(void **a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v175 = a3;
  v177 = a4;
  sub_251B17E18(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  MEMORY[0x28223BE20](v6 - 8);
  v176 = &v168 - v7;
  sub_251B17E18(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  MEMORY[0x28223BE20](v8 - 8);
  v172 = &v168 - v9;
  v171 = type metadata accessor for PBHKInspectableValueCollection(0);
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v173 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_251C70014();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v178 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_251C701E4();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v13 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B17E18(0, qword_2813E6D28, type metadata accessor for PBHKConcept);
  MEMORY[0x28223BE20](v14 - 8);
  v185 = &v168 - v15;
  v184 = type metadata accessor for PBHKConcept(0);
  v186 = *(v184 - 8);
  v16 = MEMORY[0x28223BE20](v184);
  v169 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v168 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v168 - v21;
  v23 = type metadata accessor for PBHKDiagnosticTestResult(0);
  v24 = v23 - 8;
  v25 = MEMORY[0x28223BE20](v23);
  v174 = &v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v168 - v27;
  v29 = *a1;
  sub_251C703A4();
  v30 = *(v24 + 28);
  if (qword_27F4786E8 != -1)
  {
    swift_once();
  }

  *&v28[v30] = qword_27F47AC00;

  v31 = [v29 bodySite];
  v183 = a2;
  if (v31)
  {
    v32 = v31;
    sub_251AF0ACC(v31, 1, v22);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v33 = *&v28[v30];
    }

    else
    {
      type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      swift_allocObject();

      v33 = sub_251B7A05C(v34);
      a2 = v183;

      *&v28[v30] = v33;
    }

    v35 = v185;
    sub_251B17F98(v22, v185, type metadata accessor for PBHKConcept);
    (*(v186 + 56))(v35, 0, 1, v184);
    v36 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
    swift_beginAccess();
    sub_251B17ED0(v35, v33 + v36, qword_2813E6D28, type metadata accessor for PBHKConcept);
    swift_endAccess();
  }

  v37 = [v29 category];
  v38 = sub_251C70F14();
  v40 = v39;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *&v28[v30];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
    swift_allocObject();
    v42 = sub_251B7A05C(v42);
    *&v28[v30] = v42;
  }

  v43 = (v42 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
  swift_beginAccess();
  *v43 = v38;
  v43[1] = v40;

  v44 = [v29 comments];
  if (v44)
  {
    v45 = v44;
    v46 = sub_251C70F14();
    v48 = v47;

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *&v28[v30];
    if ((v49 & 1) == 0)
    {
      type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      swift_allocObject();
      v50 = sub_251B7A05C(v50);
      *&v28[v30] = v50;
    }

    v51 = (v50 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
    swift_beginAccess();
    *v51 = v46;
    v51[1] = v48;
  }

  v52 = [v29 diagnosticTest];
  sub_251AF0ACC(v52, 1, v20);

  v53 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *&v28[v30];
  if ((v53 & 1) == 0)
  {
    type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
    swift_allocObject();
    v54 = sub_251B7A05C(v54);
    *&v28[v30] = v54;
  }

  v55 = v20;
  v56 = v185;
  sub_251B17F98(v55, v185, type metadata accessor for PBHKConcept);
  v57 = *(v186 + 56);
  v186 += 56;
  v168 = v57;
  v57(v56, 0, 1, v184);
  v58 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest;
  swift_beginAccess();
  sub_251B17ED0(v56, v54 + v58, qword_2813E6D28, type metadata accessor for PBHKConcept);
  swift_endAccess();
  v59 = [v29 effectiveEndDate];
  if (v59)
  {
    v60 = v59;
    v61 = *a2;
    v62 = v179;
    v63 = *a2 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
    v64 = v180;
    (*(v179 + 16))(v13, v63, v180);
    v65 = sub_251C70114();
    (*(v62 + 8))(v13, v64);
    v66 = [v60 adjustedDateForCalendar_];

    v67 = v178;
    sub_251C6FFE4();

    v68 = *(v61 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v69 = sub_251C6FF94();
    v70 = [v68 stringFromDate_];

    v71 = sub_251C70F14();
    v73 = v72;

    (*(v181 + 8))(v67, v182);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v74 = *&v28[v30];
    }

    else
    {
      type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      swift_allocObject();

      v74 = sub_251B7A05C(v75);

      *&v28[v30] = v74;
    }

    v76 = (v74 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
    swift_beginAccess();
    *v76 = v71;
    v76[1] = v73;

    a2 = v183;
  }

  v77 = [v29 effectiveStartDate];
  if (v77)
  {
    v78 = v77;
    v79 = *a2;
    v80 = v179;
    v81 = *a2 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
    v82 = v180;
    (*(v179 + 16))(v13, v81, v180);
    v83 = sub_251C70114();
    (*(v80 + 8))(v13, v82);
    v84 = [v78 adjustedDateForCalendar_];

    v85 = v178;
    sub_251C6FFE4();

    v86 = *(v79 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v87 = sub_251C6FF94();
    v88 = [v86 stringFromDate_];

    v89 = sub_251C70F14();
    v91 = v90;

    (*(v181 + 8))(v85, v182);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v92 = *&v28[v30];
    }

    else
    {
      type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      swift_allocObject();

      v92 = sub_251B7A05C(v93);

      *&v28[v30] = v92;
    }

    v94 = (v92 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
    swift_beginAccess();
    *v94 = v89;
    v94[1] = v91;

    a2 = v183;
  }

  v95 = [v29 interpretation];
  if (v95)
  {
    v96 = v95;
    sub_251A8223C(0, &qword_27F479F70, 0x277CCD1B0);
    v97 = sub_251C71154();

    MEMORY[0x28223BE20](v98);
    *(&v168 - 2) = a2;
    sub_251C4FA0C(sub_251B18000, (&v168 - 4), v97);
    v100 = v99;

    v101 = swift_isUniquelyReferenced_nonNull_native();
    v102 = *&v28[v30];
    if ((v101 & 1) == 0)
    {
      type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      swift_allocObject();
      v102 = sub_251B7A05C(v102);
      *&v28[v30] = v102;
    }

    v103 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation;
    swift_beginAccess();
    *(v102 + v103) = v100;
  }

  v104 = [v29 issueDate];
  if (v104)
  {
    v105 = v104;
    v106 = *a2;
    v107 = v179;
    v108 = v180;
    (*(v179 + 16))(v13, v106 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v180);
    v109 = sub_251C70114();
    (*(v107 + 8))(v13, v108);
    v110 = [v105 adjustedDateForCalendar_];

    v111 = v178;
    sub_251C6FFE4();

    v112 = *(v106 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v113 = sub_251C6FF94();
    v114 = [v112 stringFromDate_];

    v115 = sub_251C70F14();
    v117 = v116;

    (*(v181 + 8))(v111, v182);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v118 = *&v28[v30];
    }

    else
    {
      type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      swift_allocObject();

      v118 = sub_251B7A05C(v119);

      *&v28[v30] = v118;
    }

    v120 = (v118 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
    swift_beginAccess();
    *v120 = v115;
    v120[1] = v117;

    a2 = v183;
  }

  v121 = [v29 method];
  v122 = v173;
  if (v121)
  {
    v123 = v121;
    v124 = v169;
    sub_251AF0ACC(v121, 1, v169);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v125 = *&v28[v30];
    }

    else
    {
      type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      swift_allocObject();

      v125 = sub_251B7A05C(v126);

      *&v28[v30] = v125;
    }

    v127 = v185;
    sub_251B17F98(v124, v185, type metadata accessor for PBHKConcept);
    v168(v127, 0, 1, v184);
    v128 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method;
    swift_beginAccess();
    sub_251B17ED0(v127, v125 + v128, qword_2813E6D28, type metadata accessor for PBHKConcept);
    swift_endAccess();
  }

  v129 = [v29 performers];
  if (v129)
  {
    v130 = v129;
    v131 = sub_251C71154();

    v132 = swift_isUniquelyReferenced_nonNull_native();
    v133 = *&v28[v30];
    if ((v132 & 1) == 0)
    {
      type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      swift_allocObject();
      v133 = sub_251B7A05C(v133);
      *&v28[v30] = v133;
    }

    v134 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers;
    swift_beginAccess();
    *(v133 + v134) = v131;
  }

  v135 = [v29 value];
  if (v135)
  {
    v136 = v135;
    sub_251AEE494(v135, v122);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v137 = *&v28[v30];
    }

    else
    {
      type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      swift_allocObject();

      v137 = sub_251B7A05C(v138);

      *&v28[v30] = v137;
    }

    v139 = v172;
    sub_251B17F98(v122, v172, type metadata accessor for PBHKInspectableValueCollection);
    (*(v170 + 56))(v139, 0, 1, v171);
    v140 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
    swift_beginAccess();
    sub_251B17ED0(v139, v137 + v140, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
    swift_endAccess();
  }

  v141 = [v29 referenceRanges];
  if (v141)
  {
    v142 = v141;
    sub_251A8223C(0, &qword_27F479B28, 0x277CCD890);
    v143 = sub_251C71154();

    MEMORY[0x28223BE20](v144);
    *(&v168 - 2) = a2;
    sub_251C4F9B8(sub_251AF2E8C, (&v168 - 4), v143);
    v146 = v145;

    v147 = swift_isUniquelyReferenced_nonNull_native();
    v148 = *&v28[v30];
    if ((v147 & 1) == 0)
    {
      type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      swift_allocObject();
      v148 = sub_251B7A05C(v148);
      *&v28[v30] = v148;
    }

    v149 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges;
    swift_beginAccess();
    *(v148 + v149) = v146;
  }

  v150 = v177;
  sub_251AF11B4(v29, v175, v177);
  v151 = v174;
  sub_251B17E6C(v28, v174);
  v152 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  v153 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *(v150 + v152);
  if ((v153 & 1) == 0)
  {
    type metadata accessor for PBClinicalRecord._StorageClass(0);
    swift_allocObject();
    v155 = sub_251BB2A8C(v154);

    *(v150 + v152) = v155;
    v154 = v155;
  }

  v156 = v151;
  v157 = v176;
  sub_251B17F98(v156, v176, type metadata accessor for PBHKDiagnosticTestResult);
  v158 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v158 - 8) + 56))(v157, 0, 1, v158);
  v159 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251B17ED0(v157, &v154[v159], qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  swift_endAccess();
  v160 = sub_251C6CC54();
  v162 = v161;
  v163 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *(v150 + v152);
  if ((v163 & 1) == 0)
  {
    type metadata accessor for PBClinicalRecord._StorageClass(0);
    swift_allocObject();
    v165 = sub_251BB2A8C(v164);

    *(v150 + v152) = v165;
    v164 = v165;
  }

  v166 = (v164 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  *v166 = v160;
  v166[1] = v162;

  return sub_251B17F3C(v28);
}

void sub_251B17E18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_251B17E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBHKDiagnosticTestResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B17ED0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B17E18(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_251B17F3C(uint64_t a1)
{
  v2 = type metadata accessor for PBHKDiagnosticTestResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251B17F98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B18034()
{
  v1 = type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_251B18434(0);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A823B4(v0, v21);
  v8 = swift_allocObject();
  sub_251AE7B64(v21, v8 + 16);
  v9 = MEMORY[0x277CBCEA8];
  sub_251B18A7C(0, &qword_2813E1FF0, MEMORY[0x277CBCEA8]);
  swift_allocObject();
  *&v21[0] = sub_251C70A64();
  sub_251B18AFC(&qword_2813E1FF8, &qword_2813E1FF0, v9, MEMORY[0x277CBCEB0]);
  v10 = sub_251C70A94();

  *&v21[0] = v10;
  sub_251B18B40(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  sub_251B18BA4(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_251C70964();
  v13 = MEMORY[0x277CBCD88];
  sub_251B18A7C(0, &qword_2813E20D0, MEMORY[0x277CBCD88]);
  sub_251AA98B0(0, qword_2813E46A0, &protocol descriptor for ClinicalSharingMetric);
  sub_251B1853C(0);
  v14 = MEMORY[0x277CBCD90];
  sub_251B18AFC(&qword_2813E20D8, &qword_2813E20D0, v13, MEMORY[0x277CBCD90]);
  sub_251B18DC8(&qword_2813E2200, sub_251B1853C, v14);
  sub_251C70B94();

  sub_251B18DC8(&qword_2813E2420, sub_251B18434, MEMORY[0x277CBCCE0]);
  v15 = v19;
  v16 = sub_251C70A94();
  (*(v20 + 8))(v7, v15);
  return v16;
}

uint64_t type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask(uint64_t a1)
{
  result = qword_2813E2A10;
  if (!qword_2813E2A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251B18434(uint64_t a1)
{
  if (!qword_2813E2418)
  {
    sub_251B1853C(255);
    v1 = MEMORY[0x277CBCD88];
    sub_251B18A7C(255, &qword_2813E20D0, MEMORY[0x277CBCD88]);
    v2 = MEMORY[0x277CBCD90];
    sub_251B18DC8(&qword_2813E2200, sub_251B1853C, MEMORY[0x277CBCD90]);
    sub_251B18AFC(&qword_2813E20D8, &qword_2813E20D0, v1, v2);
    v3 = sub_251C708D4();
    if (!v4)
    {
      atomic_store(v3, &qword_2813E2418);
    }
  }
}

void sub_251B1853C(uint64_t a1)
{
  if (!qword_2813E21F0)
  {
    sub_251AA98B0(255, qword_2813E46A0, &protocol descriptor for ClinicalSharingMetric);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E21F0);
    }
  }
}

uint64_t sub_251B185CC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = a3;
  sub_251AE52B8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251B066C4(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251B18C88(0);
  v16 = *(v15 - 8);
  v24 = v15;
  v25 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v22[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *a1;
  v29 = *(a2 + *(type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask(0) + 28));
  sub_251B18E10(0, &qword_2813E1EA0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277D83940]);
  sub_251AE5338();
  sub_251C710D4();
  sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
  sub_251C708E4();
  (*(v7 + 8))(v9, v6);
  v27 = a2;
  v28 = v23;
  sub_251AA98B0(0, qword_2813E46A0, &protocol descriptor for ClinicalSharingMetric);
  sub_251C708F4();
  (*(v12 + 8))(v14, v11);
  sub_251B18DC8(&qword_2813E2260, sub_251B18C88, MEMORY[0x277CBCD18]);
  v19 = v24;
  v20 = sub_251C70A94();
  result = (*(v25 + 8))(v18, v19);
  *v26 = v20;
  return result;
}

uint64_t sub_251B18914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask(0);
  v16 = *(a2 + v7[8]);
  v8 = v7[5];
  v9 = type metadata accessor for ClinicalSharingOperationalMetric(0);
  a4[3] = v9;
  a4[4] = &off_2863FBE70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v11 = v9[6];
  v12 = sub_251C70014();
  v13 = *(*(v12 - 8) + 16);
  v13(boxed_opaque_existential_1 + v11, a2 + v8, v12);
  sub_251AC553C(a2 + v7[9], boxed_opaque_existential_1 + v9[7]);
  v13(boxed_opaque_existential_1 + v9[8], a2 + v7[10], v12);
  *boxed_opaque_existential_1 = v6;
  boxed_opaque_existential_1[1] = v16;
  *(boxed_opaque_existential_1 + v9[9]) = a3;
  *(boxed_opaque_existential_1 + v9[10]) = 0;
  v14 = (boxed_opaque_existential_1 + v9[11]);
  *v14 = 0xD000000000000032;
  v14[1] = 0x8000000251C8AE10;
}

void sub_251B18A7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v7 = a3(a1, MEMORY[0x277D839B0], v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251B18AFC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251B18A7C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251B18B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}
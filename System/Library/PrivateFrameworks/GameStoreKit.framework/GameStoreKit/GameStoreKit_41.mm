unint64_t sub_24EA1E870()
{
  result = qword_27F225290;
  if (!qword_27F225290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225290);
  }

  return result;
}

unint64_t sub_24EA1E8C8()
{
  result = qword_27F225298;
  if (!qword_27F225298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225298);
  }

  return result;
}

unint64_t sub_24EA1E920()
{
  result = qword_27F2252A0;
  if (!qword_27F2252A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2252A0);
  }

  return result;
}

unint64_t sub_24EA1E978()
{
  result = qword_27F2252A8;
  if (!qword_27F2252A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2252A8);
  }

  return result;
}

unint64_t sub_24EA1E9D0()
{
  result = qword_27F2252B0;
  if (!qword_27F2252B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2252B0);
  }

  return result;
}

unint64_t sub_24EA1EA28()
{
  result = qword_27F2252B8;
  if (!qword_27F2252B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2252B8);
  }

  return result;
}

unint64_t sub_24EA1EA80()
{
  result = qword_27F2252C0;
  if (!qword_27F2252C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2252C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit5ShelfC16ContentsMetadataO(_DWORD *a1)
{
  v1 = a1[12];
  if (v1 >> 30 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 29;
  }
}

uint64_t sub_24EA1EAF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x3FFFFFF9 && *(a1 + 72))
  {
    return (*a1 + 1073741818);
  }

  HIDWORD(v3) = (*(a1 + 48) >> 2) & 0x7FFFF80 | (*(a1 + 48) >> 1);
  LODWORD(v3) = *(a1 + 48);
  v4 = (v3 >> 29) ^ 0x3FFFFFFF;
  if (v4 >= 0x3FFFFFF9)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_24EA1EB54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x3FFFFFFA)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 1073741818;
    if (a3 > 0x3FFFFFF9)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x3FFFFFF9)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = 0;
      *(result + 64) = 0;
      *(result + 48) = (4 * (((-a2 >> 3) & 0x7FFFFFF) - (a2 << 27))) & 0xFFFFFE00 | (2 * ((((-a2 >> 3) & 0x7FFFFFF) - (a2 << 27)) & 0x7FLL));
    }
  }

  return result;
}

uint64_t sub_24EA1EBF0(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 48) = *(result + 48) & 0xFFFFFFFF00000101 | (a2 << 29);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 3221225472;
    *(result + 56) = 0;
    *(result + 64) = 0;
  }

  return result;
}

uint64_t sub_24EA1EC48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24EA1EC90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EA1ECF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24EA1ED38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EA1EDB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24EA1EE14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24EA1EE9C()
{
  result = qword_27F2252C8;
  if (!qword_27F2252C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2252C8);
  }

  return result;
}

unint64_t sub_24EA1EEF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24EA1EF3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EA1EFA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EA1F004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static AccountPage.createAccountPage()@<X0>(uint64_t *a1@<X8>)
{
  v70 = a1;
  v1 = sub_24F9294C8();
  MEMORY[0x28223BE20](v1 - 8);
  v65 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24F928818();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = v55 - v5;
  v78 = sub_24F928698();
  v75 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v60 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = v55 - v8;
  MEMORY[0x28223BE20](v9);
  v74 = v55 - v10;
  v64 = sub_24F92A1F8();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v73 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F928628();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v72 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225308, &qword_24F9758A8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213598, &qword_24F93AD80);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v56 = *(*(v13 - 8) + 72);
  v15 = swift_allocObject();
  v76 = xmmword_24F93A400;
  *(v15 + 16) = xmmword_24F93A400;
  v59 = v15;
  v16 = v15 + v14;
  v71 = v13;
  v58 = *(v13 + 48);
  sub_24F9293E8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v18 = sub_24F92A2C8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v57 = 2 * v20;
  v55[1] = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v76;
  sub_24F92A288();
  if (qword_27F2102B0 != -1)
  {
    swift_once();
  }

  v55[0] = __swift_project_value_buffer(v18, qword_27F229C68);
  v23 = *(v19 + 16);
  v23(v22 + v21 + v20, v55[0], v18);
  v24 = sub_24E805DFC(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v16 + v58) = v24;
  v58 = v16;
  v25 = (v16 + v56);
  v26 = *(v71 + 48);
  sub_24F9293C8();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_24F93FC20;
  v28 = v27 + v21;
  sub_24F92A288();
  v23(v27 + v21 + v20, v55[0], v18);
  if (qword_27F210290 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v18, qword_27F229C08);
  v23(v28 + v57, v29, v18);
  if (qword_27F2102F8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v18, qword_27F229D40);
  v23(v28 + 3 * v20, v30, v18);
  v31 = sub_24E805DFC(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v25[v26] = v31;
  sub_24E60C8A0(v59);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = MEMORY[0x277D84F90];
  sub_24E60C8C4(MEMORY[0x277D84F90]);
  sub_24F928618();
  sub_24F92A1C8();
  sub_24E608448(v32);
  v33 = v74;
  sub_24F9285F8();

  sub_24E608448(v32);
  sub_24F9285E8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138D8, &qword_24F9C9260);
  v34 = *(sub_24F928738() - 8);
  v59 = *(v34 + 72);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  v71 = v36;
  *(v36 + 16) = v76;
  v57 = v36 + v35;
  v58 = *(v75 + 16);
  v37 = v60;
  (v58)(v60, v33, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225310, &qword_24F9758B0);
  v38 = sub_24F9287F8();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_24F93DE60;
  sub_24F9287E8();
  sub_24E802380(v41);
  swift_setDeallocating();
  (*(v39 + 8))(v41 + v40, v38);
  swift_deallocClassInstance();
  sub_24F9286F8();
  (v58)(v37, v77, v78);
  v42 = swift_allocObject();
  *(v42 + 16) = v76;
  sub_24F9287C8();
  sub_24F9287A8();
  sub_24E802380(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_24F9286F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 1701273968;
  v44 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x800000024FA4DDD0;
  *(inited + 72) = v44;
  *(inited + 80) = 0x644965676170;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0x676E69646E616CLL;
  *(inited + 104) = 0xE700000000000000;
  *(inited + 120) = v44;
  *(inited + 128) = 0x6570795465676170;
  *(inited + 168) = v44;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = 0x53746E756F636361;
  *(inited + 152) = 0xEF73676E69747465;
  sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
  swift_arrayDestroy();
  sub_24F9294B8();
  sub_24EA200BC(MEMORY[0x277D84F90]);
  v45 = v67;
  sub_24F928748();
  v46 = v68;
  v47 = v66;
  v48 = v69;
  (*(v68 + 16))(v66, v45, v69);
  v49 = type metadata accessor for AccountPage(0);
  v50 = swift_allocObject();
  (*(v46 + 32))(v50 + OBJC_IVAR____TtC12GameStoreKit11AccountPage_pageMetrics, v47, v48);
  *(v50 + OBJC_IVAR____TtC12GameStoreKit11AccountPage_pageRenderEvent) = 0;
  v51 = v70;
  v70[3] = v49;
  v51[4] = &protocol witness table for AccountPage;
  v51[5] = sub_24EA20218();
  *v51 = v50;
  (*(v46 + 8))(v45, v48);
  v52 = *(v75 + 8);
  v53 = v78;
  v52(v77, v78);
  v52(v74, v53);
  (*(v63 + 8))(v73, v64);
  return (*(v61 + 8))(v72, v62);
}

uint64_t AccountPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11AccountPage_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountPage.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11AccountPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AccountPage.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11AccountPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EA20040@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11AccountPage_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_24EA200BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8, &unk_24F93ADA0);
    v3 = sub_24F92CB58();
    v4 = a1 + 32;

    while (1)
    {
      sub_24EA20328(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_24E76D644(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24E612B0C(&v15, (v3[7] + 32 * result));
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

uint64_t type metadata accessor for AccountPage(uint64_t a1)
{
  result = qword_27F225320;
  if (!qword_27F225320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EA20218()
{
  result = qword_27F225318;
  if (!qword_27F225318)
  {
    type metadata accessor for AccountPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225318);
  }

  return result;
}

uint64_t sub_24EA20278(uint64_t a1)
{
  result = sub_24F928818();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EA20328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA203AC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24EA2046C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ProgressPerformAction(uint64_t a1)
{
  result = qword_27F225330;
  if (!qword_27F225330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA2055C(uint64_t a1)
{
  sub_24EA206B8(319, &qword_27F225340, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24EA20668();
    if (v2 <= 0x3F)
    {
      sub_24EA206B8(319, &qword_27F225348, &qword_27F220F78, &qword_24F975950, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24F928AD8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EA20668()
{
  if (!qword_27F2362E0)
  {
    v0 = sub_24F9271C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2362E0);
    }
  }
}

void sub_24EA206B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24EA2071C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AppPromotionDetailPage.__allocating_init(promotionType:pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v39 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = sub_24F928818();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = *a1;
  v20 = *(v16 + 16);
  v21 = a3;
  v20(v18, a3, v15);
  v22 = v41;
  sub_24E90A7EC(v41, v14);
  *(v19 + 16) = 0;
  v20((v19 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v18, v15);
  v38 = v19;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v40;
  sub_24E90A7EC(v14, v11);
  v23 = sub_24F9285B8();
  v37 = *(v23 - 8);
  v35 = *(v37 + 48);
  if (v35(v11, 1, v23) == 1)
  {

    sub_24E90A85C(v22);
    v24 = *(v16 + 8);
    v24(v21, v15);
    sub_24E90A85C(v14);
    v25 = v18;
  }

  else
  {
    v33 = v18;
    v34 = v21;
    v26 = qword_27F2105F0;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v27, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v28 = v42;
    v29 = v37;
    if (v42)
    {
    }

    v37 = *(v29 + 8);
    (v37)(v11, v23);
    if (!v28)
    {

      sub_24E90A85C(v41);
      v30 = *(v16 + 8);
      v30(v34, v15);
      sub_24E90A85C(v14);
      v30(v33, v15);
      return v38;
    }

    v11 = v36;
    sub_24E90A7EC(v14, v36);
    if (v35(v11, 1, v23) != 1)
    {
      sub_24ECDF110();

      sub_24E90A85C(v41);
      v31 = *(v16 + 8);
      v31(v34, v15);
      sub_24E90A85C(v14);
      v31(v33, v15);
      (v37)(v11, v23);
      return v38;
    }

    sub_24E90A85C(v41);
    v24 = *(v16 + 8);
    v24(v34, v15);
    sub_24E90A85C(v14);
    v25 = v33;
  }

  v24(v25, v15);
  sub_24E90A85C(v11);
  return v38;
}

uint64_t AppPromotionDetailPage.init(promotionType:pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v55 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = sub_24F928818();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = *a1;
  v22 = *(v18 + 16);
  v54 = a3;
  v22(v21, a3, v17, v19);
  v23 = a5;
  sub_24E90A7EC(a5, v16);
  *(v5 + 16) = 0;
  v53 = v17;
  (v22)(v5 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v21, v17);
  v56 = v5;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v57;
  sub_24E90A7EC(v16, v13);
  v24 = sub_24F9285B8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v13, 1, v24) == 1)
  {

    sub_24E90A85C(v23);
    v27 = *(v18 + 8);
    v28 = v53;
    v27(v54, v53);
    sub_24E90A85C(v16);
    v27(v21, v28);
    v29 = v13;
  }

  else
  {
    v49 = v21;
    v50 = v23;
    v51 = v16;
    v30 = v54;
    v31 = qword_27F2105F0;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v32, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v33 = v58;
    if (v58)
    {
    }

    v34 = *(v25 + 8);
    v34(v13, v24);
    if (!v33)
    {

      sub_24E90A85C(v50);
      v42 = *(v18 + 8);
      v43 = v53;
      v42(v30, v53);
      sub_24E90A85C(v51);
      v42(v49, v43);
      return v56;
    }

    v36 = v51;
    v35 = v52;
    sub_24E90A7EC(v51, v52);
    v37 = v26(v35, 1, v24);
    v39 = v49;
    v38 = v50;
    if (v37 != 1)
    {
      sub_24ECDF110();

      sub_24E90A85C(v38);
      v44 = *(v18 + 8);
      v45 = v30;
      v46 = v34;
      v47 = v53;
      v44(v45, v53);
      sub_24E90A85C(v36);
      v44(v39, v47);
      v46(v35, v24);
      return v56;
    }

    sub_24E90A85C(v38);
    v40 = *(v18 + 8);
    v41 = v53;
    v40(v30, v53);
    sub_24E90A85C(v36);
    v40(v39, v41);
    v29 = v35;
  }

  sub_24E90A85C(v29);
  return v56;
}

void *AppPromotionDetailPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v22 = a2;
  v24 = sub_24F9285B8();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  sub_24F928398();
  sub_24EA21600();
  v14 = v13;
  sub_24F928218();
  if (v2)
  {
    (*(v4 + 8))(v22, v24);
    v15 = *(v8 + 8);
    v15(a1, v7);
    v15(v13, v7);
    type metadata accessor for AppPromotionDetailPage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = *(v8 + 8);
    v20(v13, v7);
    *(v23 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = v25;
    v16 = *(v8 + 16);
    v21 = a1;
    v16(v10, a1, v7);
    v17 = v22;
    (*(v4 + 16))(v6, v22, v24);
    v14 = BasePage.init(deserializing:using:)(v10, v6);
    (*(v4 + 8))(v17, v24);
    v20(v21, v7);
  }

  return v14;
}

uint64_t AppPromotionDetailPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AppPromotionDetailPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_24EA21600()
{
  result = qword_27F225350;
  if (!qword_27F225350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225350);
  }

  return result;
}

uint64_t type metadata accessor for AppPromotionDetailPage(uint64_t a1)
{
  result = qword_27F225358;
  if (!qword_27F225358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA21728()
{
  result = sub_24F92B098();
  qword_27F225368 = result;
  return result;
}

uint64_t sub_24EA21760()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39B4D8);
  __swift_project_value_buffer(v4, qword_27F39B4D8);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t NWPathNetworkInquiry.__allocating_init(evaluator:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-v4];
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  v7 = OBJC_IVAR____TtC12GameStoreKit20NWPathNetworkInquiry__isInternetOffline;
  v16 = 0;
  sub_24F923058();
  (*(v3 + 32))(v6 + v7, v5, v2);
  *(v6 + 16) = a1;
  v15 = a1;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v8 = a1;
  v9 = sub_24F91F318();

  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  v11 = [*(v6 + 16) path];
  v12 = [v11 status];

  swift_getKeyPath();
  swift_getKeyPath();
  v14[15] = (v12 & 0xFFFFFFFFFFFFFFFDLL) != 1;

  sub_24F9230A8();

  return v6;
}

uint64_t NWPathNetworkInquiry.init(evaluator:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-v6];
  *(v2 + 24) = 0;
  v8 = OBJC_IVAR____TtC12GameStoreKit20NWPathNetworkInquiry__isInternetOffline;
  v17 = 0;
  sub_24F923058();
  (*(v5 + 32))(v2 + v8, v7, v4);
  *(v2 + 16) = a1;
  v16 = a1;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v9 = a1;
  v10 = sub_24F91F318();

  v11 = *(v2 + 24);
  *(v2 + 24) = v10;

  v12 = [*(v2 + 16) path];
  v13 = [v12 status];

  swift_getKeyPath();
  swift_getKeyPath();
  v15[15] = (v13 & 0xFFFFFFFFFFFFFFFDLL) != 1;

  sub_24F9230A8();

  return v2;
}

double sub_24EA21CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    NWPathNetworkInquiry.notify()();
  }

  return result;
}

Swift::Void __swiftcall NWPathNetworkInquiry.notify()()
{
  v1 = v0;
  if (qword_27F2100D0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39B4D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A070;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F9283A8();
  v3 = *(v0 + 16);
  v4 = [v3 path];
  v5 = [v4 status];

  v10 = MEMORY[0x277D839B0];
  LOBYTE(v9[0]) = (v5 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  sub_24F928438();
  sub_24E857CC8(v9);
  sub_24F9283A8();
  v10 = &type metadata for NetworkInterface;
  NWPathNetworkInquiry.interface.getter(v9);
  sub_24F928438();
  sub_24E857CC8(v9);
  sub_24F92A598();

  v6 = [v3 path];
  v7 = [v6 status];

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v9[0]) = (v7 & 0xFFFFFFFFFFFFFFFDLL) != 1;

  sub_24F9230A8();
  v8 = [objc_opt_self() defaultCenter];
  if (qword_27F2100C8 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_27F225368 object:v1];
}

BOOL NWPathNetworkInquiry.isLikelyReachable.getter()
{
  v1 = [*(v0 + 16) path];
  v2 = [v1 status];

  return (v2 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

id sub_24EA220F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 path];
  *a2 = result;
  return result;
}

uint64_t sub_24EA22130()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t NWPathNetworkInquiry.deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    sub_24F91F1B8();
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit20NWPathNetworkInquiry__isInternetOffline;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t NWPathNetworkInquiry.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    sub_24F91F1B8();
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit20NWPathNetworkInquiry__isInternetOffline;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t NWPathNetworkInquiry.isInternetOffline.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

void sub_24EA22354(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24EA223D4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t NWPathNetworkInquiry.$isInternetOffline.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24EA224BC(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24EA22534(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F458, &unk_24F962050);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  sub_24F923078();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

void NWPathNetworkInquiry.interface.getter(char *a1@<X8>)
{
  v3 = [*(v1 + 16) path];
  v4 = [v3 interface];

  if (v4)
  {
    v5 = [v4 type];

    if (v5 > 4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 + 1;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

id sub_24EA2276C(SEL *a1)
{
  v3 = [*(v1 + 16) path];
  v4 = [v3 *a1];

  return v4;
}

uint64_t NWPathNetworkInquiry.observe(on:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (qword_27F2100C8 != -1)
  {
    v14 = a1;
    swift_once();
    a1 = v14;
  }

  v8 = qword_27F225368;
  sub_24E615E00(a1, v15);
  v9 = type metadata accessor for CommonNetworkObservation();
  v10 = swift_allocObject();
  sub_24E615E00(v15, v10 + 16);
  *(v10 + 56) = a2;
  *(v10 + 64) = a3;
  v11 = objc_opt_self();

  v12 = [v11 defaultCenter];
  [v12 addObserver:v10 selector:sel_networkStateDidChange_ name:v8 object:v4];

  result = __swift_destroy_boxed_opaque_existential_1(v15);
  a4[3] = v9;
  a4[4] = &off_2861EBF80;
  *a4 = v10;
  return result;
}

BOOL sub_24EA228EC()
{
  v1 = [*(*v0 + 16) path];
  v2 = [v1 status];

  return (v2 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

id sub_24EA22984(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*(*v3 + 16) path];
  v6 = [v5 *a3];

  return v6;
}

id _s12GameStoreKit20NWPathNetworkInquiryCACycfC_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13[-v2];
  result = [objc_opt_self() sharedDefaultEvaluator];
  if (result)
  {
    v5 = result;
    type metadata accessor for NWPathNetworkInquiry(0);
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    v7 = OBJC_IVAR____TtC12GameStoreKit20NWPathNetworkInquiry__isInternetOffline;
    v15 = 0;
    sub_24F923058();
    (*(v1 + 32))(v6 + v7, v3, v0);
    *(v6 + 16) = v5;
    v14 = v5;
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v8 = v5;
    v9 = sub_24F91F318();

    v10 = *(v6 + 24);
    *(v6 + 24) = v9;

    v11 = [*(v6 + 16) path];
    v12 = [v11 status];

    swift_getKeyPath();
    swift_getKeyPath();
    v13[15] = (v12 & 0xFFFFFFFFFFFFFFFDLL) != 1;

    sub_24F9230A8();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for NWPathNetworkInquiry(uint64_t a1)
{
  result = qword_27F225378;
  if (!qword_27F225378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA22CB0(uint64_t a1)
{
  sub_24EA22D84();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EA22D84()
{
  if (!qword_27F21F448)
  {
    v0 = sub_24F9230B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21F448);
    }
  }
}

uint64_t sub_24EA22DDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_allocate_value_buffer(v0, qword_27F225388);
  __swift_project_value_buffer(v0, qword_27F225388);
  return sub_24F928C68();
}

uint64_t static LocalPreferences.placeholderDisableShelfHydration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  v3 = __swift_project_value_buffer(v2, qword_27F225388);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24EA22F08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D8, &qword_24F9730F8);
  __swift_allocate_value_buffer(v0, qword_27F2253A0);
  __swift_project_value_buffer(v0, qword_27F2253A0);
  return sub_24F928C68();
}

uint64_t sub_24EA22FA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D8, &qword_24F9730F8);
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_24EA23048()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249D8, &qword_24F9730F8);
  __swift_allocate_value_buffer(v0, qword_27F2253B8);
  __swift_project_value_buffer(v0, qword_27F2253B8);
  return sub_24F928C68();
}

uint64_t sub_24EA230E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  __swift_allocate_value_buffer(v0, qword_27F2253D0);
  __swift_project_value_buffer(v0, qword_27F2253D0);
  return sub_24F928C68();
}

uint64_t static LocalPreferences.currentJSVersion.getter()
{
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100F0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  __swift_project_value_buffer(v0, qword_27F2253D0);
  sub_24F928868();

  return v2;
}

double sub_24EA23204@<D0>(_OWORD *a1@<X8>)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  __swift_project_value_buffer(v2, qword_27F2253D0);
  sub_24F928868();

  result = *&v4;
  *a1 = v4;
  return result;
}

void sub_24EA232CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_24EA2330C(v1, v2);
}

void sub_24EA2330C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-1] - v6;
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (a2)
  {
    if (qword_27F2100F0 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v4, qword_27F2253D0);
    (*(v5 + 16))(v7, v8, v4);
    v12[0] = a1;
    v12[1] = a2;
    sub_24F928878();
  }

  else
  {
    if (qword_27F2100F0 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v4, qword_27F2253D0);
    v12[3] = v4;
    v12[4] = sub_24E979394();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(v5 + 16))(boxed_opaque_existential_1, v9, v4);
    sub_24F929358();

    __swift_destroy_boxed_opaque_existential_1(v12);
  }
}

uint64_t sub_24EA23510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EA235D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LaunchChallengeDefinitionAction(uint64_t a1)
{
  result = qword_27F2253E8;
  if (!qword_27F2253E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA236C0(uint64_t a1)
{
  sub_24E6BCB04();
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EA23750@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_24F928AD8();
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2253F8, &qword_24F975B70);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v9 = type metadata accessor for LaunchChallengeDefinitionAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EA23CE0();
  v12 = v29;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v9;
  v13 = a1;
  v14 = v27;
  v15 = v28;
  v29 = v3;
  v34 = 0;
  v16 = v11;
  *v11 = sub_24F92CBC8();
  v11[1] = v17;
  v23[1] = v17;
  v33 = 1;
  v11[2] = sub_24F92CC28();
  v11[3] = v18;
  v32 = 2;
  v23[0] = 0;
  v11[4] = sub_24F92CC28();
  v11[5] = v19;
  v31 = 3;
  v11[6] = sub_24F92CBC8();
  v11[7] = v20;
  v30 = 4;
  sub_24E862F10();
  v21 = v29;
  sub_24F92CC68();
  (*(v14 + 8))(v8, v15);
  (*(v25 + 32))(v16 + *(v24 + 32), v5, v21);
  sub_24EA23D34(v16, v26);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24EA23D98(v16);
}

uint64_t sub_24EA23B78()
{
  v1 = *v0;
  v2 = 0x44496D616461;
  v3 = 0x676E656C6C616863;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x654D6E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449656C646E7562;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EA23C28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EA23F0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EA23C50(uint64_t a1)
{
  v2 = sub_24EA23CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA23C8C(uint64_t a1)
{
  v2 = sub_24EA23CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EA23CE0()
{
  result = qword_27F225400;
  if (!qword_27F225400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225400);
  }

  return result;
}

uint64_t sub_24EA23D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchChallengeDefinitionAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA23D98(uint64_t a1)
{
  v2 = type metadata accessor for LaunchChallengeDefinitionAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EA23E08()
{
  result = qword_27F225408;
  if (!qword_27F225408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225408);
  }

  return result;
}

unint64_t sub_24EA23E60()
{
  result = qword_27F225410;
  if (!qword_27F225410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225410);
  }

  return result;
}

unint64_t sub_24EA23EB8()
{
  result = qword_27F225418[0];
  if (!qword_27F225418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F225418);
  }

  return result;
}

uint64_t sub_24EA23F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA4E090 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24EA240CC(uint64_t a1)
{
  *(v1 + 24) = a1;
  refreshed = type metadata accessor for FeedRefreshNotifier(0);
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_24EA24180;

  return MEMORY[0x28217F228](v1 + 16, refreshed, refreshed);
}

uint64_t sub_24EA24180()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_24E80CB20;
  }

  else
  {
    v2 = sub_24E769754;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_24EA242B0()
{
  result = qword_27F216328;
  if (!qword_27F216328)
  {
    type metadata accessor for RefreshFeedsAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216328);
  }

  return result;
}

uint64_t sub_24EA24310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v9 = sub_24F92A9E8();
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24F975D18;
  v11[5] = v8;
  v11[6] = v9;

  sub_24E6959D8(0, 0, v7, &unk_24F94D7B0, v11);

  return v9;
}

uint64_t sub_24EA24494()
{

  return swift_deallocObject();
}

uint64_t sub_24EA244CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return sub_24EA240CC(a1);
}

uint64_t sub_24EA24578()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t AppStateFieldsProvider.init(appStateController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for AppStateFieldsProvider(0) + 20);
  v7 = *MEMORY[0x277D22340];
  v8 = sub_24F92A2D8();
  result = (*(*(v8 - 8) + 104))(&a3[v6], v7, v8);
  *a3 = a1;
  *(a3 + 1) = a2;
  return result;
}

uint64_t type metadata accessor for AppStateFieldsProvider(uint64_t a1)
{
  result = qword_27F2254A0;
  if (!qword_27F2254A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppStateFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppStateFieldsProvider(0) + 20);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppStateFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = v1;
  v5 = MetricsFieldsContext.adamIdString.getter();
  if (!v6)
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v17 = sub_24F92AAE8();
    __swift_project_value_buffer(v17, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  v7 = v5;
  v8 = v6;
  v9 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v25 = v7;
  v26 = v8;
  (*(v9 + 56))(&v25, ObjectType, v9);
  v12 = v11;

  v13 = swift_getObjectType();
  (*(v12 + 16))(&v28, v13, v12);
  v15 = v28;
  v14 = v29;
  v16 = v34 >> 60;
  if ((v34 >> 60) <= 3)
  {
    if (!v16)
    {
      goto LABEL_22;
    }

    if (v16 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      *(inited + 32) = 0x6D61726150797562;
      v24 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = 0xE900000000000073;
      *(inited + 48) = v15;
      *(inited + 56) = v14;
      v16 = sub_24E608448(inited);
      swift_setDeallocating();
      sub_24EA24CCC(v24);
      v21 = 0xE600000000000000;
      v22 = 0x657461647075;
      goto LABEL_28;
    }

    if (v16 != 3)
    {
LABEL_23:
      swift_unknownObjectRelease();
      return sub_24E88D2AC(&v28);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_24F93DE60;
    *(v19 + 32) = 0x6D61726150797562;
    v20 = v19 + 32;
    *(v19 + 72) = MEMORY[0x277D837D0];
    *(v19 + 40) = 0xE900000000000073;
    *(v19 + 48) = v15;
    *(v19 + 56) = v14;
    v16 = sub_24E608448(v19);
    swift_setDeallocating();
    sub_24EA24CCC(v20);
LABEL_25:
    v21 = 0xE800000000000000;
    v22 = 0x64616F6C6E776F64;
    goto LABEL_28;
  }

  if (v16 <= 6)
  {
    if (v16 != 4)
    {
      if (v16 == 5)
      {
        sub_24E88D2AC(&v28);
        v16 = 0;
LABEL_22:
        v21 = 0xE600000000000000;
        v22 = 0x6C65636E6163;
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    sub_24E88D2AC(&v28);
    v16 = 0;
    goto LABEL_25;
  }

  if (v16 == 7)
  {
    sub_24E88D2AC(&v28);
    v16 = 0;
    v21 = 0xE400000000000000;
    v22 = 1852141679;
    goto LABEL_28;
  }

  if (v16 != 8 || (v34 != 0x8000000000000000 || v29 | v28 | v35 | v33 | v32 | v31 | v30) && (v34 != 0x8000000000000000 || v28 != 4 || v35 | v29 | v33 | v32 | v31 | v30))
  {
    goto LABEL_23;
  }

  v16 = 0;
  v21 = 0xE300000000000000;
  v22 = 7959906;
LABEL_28:
  v27 = MEMORY[0x277D837D0];
  v25 = v22;
  v26 = v21;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24F929A28();
  if (v2)
  {
    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  __swift_destroy_boxed_opaque_existential_1(&v25);
  if (v16)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    v25 = v16;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_24EA24C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24F92A2D8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24EA24CCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA24D48(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F92A2D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24EA24E08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EA24EAC(uint64_t a1)
{
  result = sub_24EA24F30();
  if (v2 <= 0x3F)
  {
    result = sub_24F92A2D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24EA24F30()
{
  result = qword_27F2254B0;
  if (!qword_27F2254B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F2254B0);
  }

  return result;
}

id NSAttributedString.baseWritingDirection(forCharacterAt:)(uint64_t a1)
{
  if ([v1 length] <= a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24F9479A0;
    *(v6 + 56) = MEMORY[0x277D837D0];
    v7 = sub_24E90A06C();
    v8 = MEMORY[0x277D83B88];
    v9 = MEMORY[0x277D83C10];
    *(v6 + 32) = 0xD000000000000025;
    *(v6 + 40) = 0x800000024FA4E120;
    *(v6 + 96) = v8;
    *(v6 + 104) = v9;
    *(v6 + 64) = v7;
    *(v6 + 72) = a1;
    v10 = [v1 length];
    *(v6 + 136) = v8;
    *(v6 + 144) = v9;
    *(v6 + 112) = v10;
    sub_24F92B118();
    v11 = *MEMORY[0x277CBE730];
    v12 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v13 = sub_24F92B098();

    v4 = [v12 initWithName:v11 reason:v13 userInfo:0];

    [v4 raise];
    v5 = 0;
  }

  else
  {
    v3 = [v1 paragraphStyleAtIndex:a1 effectiveRange:0];
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = [v3 baseWritingDirection];
  }

  return v5;
}

uint64_t NSAttributedString.baseWritingDirectionForCharacterAtIndex(_:unknownStyle:)(uint64_t a1, _BYTE *a2)
{
  result = NSAttributedString.baseWritingDirection(forCharacterAt:)(a1);
  if (a2)
  {
    *a2 = v4 & 1;
  }

  if (v4)
  {
    return -1;
  }

  return result;
}

uint64_t sub_24EA25194(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1;
  v7 = NSAttributedString.baseWritingDirection(forCharacterAt:)(a3);
  if (a4)
  {
    *a4 = v8 & 1;
  }

  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

Swift::String __swiftcall NSAttributedString.convertedWritingDirectionToBidiControlCharacters()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  if (qword_27F210100 != -1)
  {
    swift_once();
  }

  [v1 performSelector_];
  v2 = [v1 string];
  v3 = sub_24F92B0D8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()()
{
  if (qword_27F210100 != -1)
  {
    swift_once();
  }

  v1 = qword_27F2254C0;
  v2 = v0;

  [v2 performSelector_];
}

void sub_24EA25330()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v1 = sub_24F92B098();
  v2 = [v0 initWithString_];

  qword_27F2254B8 = v2;
}

id static NSAttributedString.empty.getter()
{
  if (qword_27F2100F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F2254B8;

  return v1;
}

id sub_24EA253EC()
{
  if (qword_27F2100F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F2254B8;

  return v1;
}

uint64_t NSAttributedString.paragraphStyle(at:effectiveRange:)(uint64_t a1, uint64_t a2)
{
  if ([v2 attribute:*MEMORY[0x277D74118] atIndex:a1 effectiveRange:a2])
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_24E69A5C4(0, &qword_27F221898, 0x277D74248);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_24E857CC8(v7);
    return 0;
  }
}

id sub_24EA25574(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = NSAttributedString.paragraphStyle(at:effectiveRange:)(a3, a4);

  return v7;
}

void NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(uint64_t a1)
{
  if ([v1 length] <= a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24F9479A0;
    *(v8 + 56) = MEMORY[0x277D837D0];
    v9 = sub_24E90A06C();
    v10 = MEMORY[0x277D83B88];
    v11 = MEMORY[0x277D83C10];
    *(v8 + 32) = 0xD000000000000032;
    *(v8 + 40) = 0x800000024FA4E150;
    *(v8 + 96) = v10;
    *(v8 + 104) = v11;
    *(v8 + 64) = v9;
    *(v8 + 72) = a1;
    v12 = [v1 length];
    *(v8 + 136) = v10;
    *(v8 + 144) = v11;
    *(v8 + 112) = v12;
    sub_24F92B118();
    v13 = *MEMORY[0x277CBE730];
    v14 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v15 = sub_24F92B098();

    v16 = [v14 initWithName:v13 reason:v15 userInfo:0];

    [v16 raise];
  }

  else
  {
    v18 = 0;
    v19 = 1;
    v3 = *MEMORY[0x277D74118];
    v4 = swift_allocObject();
    *(v4 + 16) = &v18;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_24EA25B14;
    *(v5 + 24) = v4;
    v17[4] = sub_24EA25B2C;
    v17[5] = v5;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24EA259AC;
    v17[3] = &block_descriptor_39;
    v6 = _Block_copy(v17);

    [v1 enumerateAttribute:v3 inRange:0 options:a1 usingBlock:{2, v6}];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
    }
  }
}

void sub_24EA258AC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  sub_24E94E17C(a1, v8);
  if (v9)
  {
    sub_24E69A5C4(0, &qword_27F221898, 0x277D74248);
    if (swift_dynamicCast())
    {
      if ([v7 baseWritingDirection] == 1 || !objc_msgSend(v7, sel_baseWritingDirection))
      {
        *a5 = [v7 baseWritingDirection];
        *(a5 + 8) = 0;
        *a4 = 1;
      }
    }
  }

  else
  {
    sub_24E857CC8(v8);
  }
}

uint64_t sub_24EA259AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_24E612B0C(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_24E857CC8(v13);
}

uint64_t sub_24EA25A68(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(a3);
  v6 = v5;
  v8 = v7;

  if (v8)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

void sub_24EA25AB4()
{
  v0 = sub_24F92B098();
  v1 = NSSelectorFromString(v0);

  qword_27F2254C0 = v1;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(Swift::OpaquePointer at, Swift::OpaquePointer paragraphRanges)
{
  v3 = *(at._rawValue + 2);
  if (v3)
  {
    v5 = (at._rawValue + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_24EA25BD4(&v7, v2, paragraphRanges._rawValue);
      --v3;
    }

    while (v3);
  }
}

void sub_24EA25BD4(uint64_t *a1, void *a2, unint64_t a3)
{
  v5 = *a1;
  v6 = sub_24F92B098();
  [a2 replaceCharactersInRange:v5 withString:{1, v6}];

  if (a3 >> 62)
  {
LABEL_25:
    v7 = sub_24F92C738();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x253052270](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    v10 = v9;
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    [v9 directionalRangeValue];
    if (v5 >= v17)
    {
      if (__OFSUB__(v5, v17))
      {
        goto LABEL_24;
      }

      if (v5 - v17 < v18)
      {
        break;
      }
    }

    if (v11 == v7)
    {
      return;
    }
  }

  [v10 directionalRangeValue];
  v12 = [a2 paragraphStyleAtIndex:v17 effectiveRange:0];
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  [v12 paragraphSpacing];
  if (v14 == 0.0)
  {

LABEL_19:
    return;
  }

  [v13 mutableCopy];
  sub_24F92C648();
  swift_unknownObjectRelease();
  sub_24E69A5C4(0, &qword_27F2254C8, 0x277D74240);
  if (swift_dynamicCast())
  {
    [v19 setParagraphSpacing_];
    v15 = *MEMORY[0x277D74118];
    v16 = v19;
    [a2 addAttribute:v15 value:v16 range:{v17, v18}];

    goto LABEL_19;
  }
}

Swift::Void __swiftcall NSMutableString.convertLineSeparatorsIntoLineFeeds(at:)(Swift::OpaquePointer at)
{
  v2 = *(at._rawValue + 2);
  if (v2)
  {
    v3 = (at._rawValue + 32);
    do
    {
      v4 = *v3++;
      v5 = sub_24F92B098();
      [v1 replaceCharactersInRange:v4 withString:{1, v5}];

      --v2;
    }

    while (v2);
  }
}

id NSParagraphStyle.withBaseWritingDirection(_:)(uint64_t a1)
{
  [v1 mutableCopy];
  sub_24F92C648();
  swift_unknownObjectRelease();
  sub_24E69A5C4(0, &qword_27F2254C8, 0x277D74240);
  swift_dynamicCast();
  [v4 setBaseWritingDirection_];
  [v4 copy];
  sub_24F92C648();

  swift_unknownObjectRelease();
  sub_24E69A5C4(0, &qword_27F221898, 0x277D74248);
  swift_dynamicCast();
  return v4;
}

id sub_24EA25FC4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = NSParagraphStyle.withBaseWritingDirection(_:)(a3);

  return v5;
}

uint64_t UIUserInterfaceLayoutDirection.textAlignment(whenLeftToRight:rightToLeft:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    return a2;
  }

  return result;
}

uint64_t ArcadeLaunchAttributionAction.__allocating_init(bundleIdentifier:additionalMetrics:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  ArcadeLaunchAttributionAction.init(bundleIdentifier:additionalMetrics:actionMetrics:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ArcadeLaunchAttributionAction.init(bundleIdentifier:additionalMetrics:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a4;
  v9 = sub_24F91F6B8();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v5 + OBJC_IVAR____TtC12GameStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier);
  *v18 = a1;
  v18[1] = a2;
  v19 = [objc_opt_self() mainBundle];
  v20 = [v19 bundleIdentifier];

  v21 = MEMORY[0x277D837D0];
  if (v20)
  {
    v22 = sub_24F92B0D8();
    v24 = v23;

    *(&v53 + 1) = v21;
    *&v52 = v22;
    *(&v52 + 1) = v24;
    sub_24E612B0C(&v52, &v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = a3;
    sub_24E81C1D4(&v49, 0x707041666572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    a3 = v46;
  }

  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v26 = *(off_27F229AB8 + 4);
  if (v26)
  {
    v27 = *(off_27F229AB8 + 3);
    *(&v53 + 1) = v21;
    *&v52 = v27;
    *(&v52 + 1) = v26;
    sub_24E612B0C(&v52, &v49);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = a3;
    sub_24E81C1D4(&v49, 0x4365676150666572, 0xEE00747865746E6FLL, v28);
    a3 = v46;
  }

  *(v5 + OBJC_IVAR____TtC12GameStoreKit29ArcadeLaunchAttributionAction_additionalMetrics) = a3;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v29 = v43;
  (*(v15 + 16))(v17, v43, v14);
  v30 = sub_24F929608();
  (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
  v31 = (v5 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v31 = 0u;
  v31[1] = 0u;
  sub_24E65E064(&v52, &v46);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    v32 = v40;
    sub_24F91F6A8();
    v33 = sub_24F91F668();
    v35 = v34;
    (*(v41 + 8))(v32, v42);
    v44 = v33;
    v45 = v35;
    sub_24F92C7F8();
    sub_24E601704(&v46, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v15 + 8))(v29, v14);
  sub_24E601704(&v52, &qword_27F235830, &qword_24F93B8C0);
  v36 = v5 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v36 + 32) = v51;
  v37 = v50;
  *v36 = v49;
  *(v36 + 16) = v37;
  sub_24E65E0D4(v13, v5 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  (*(v15 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v17, v14);
  return v5;
}

uint64_t ArcadeLaunchAttributionAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v51 = a2;
  v43 = *v3;
  v5 = sub_24F9285B8();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v48 = a1;
  sub_24F928398();
  v19 = sub_24F928348();
  v21 = v20;
  v44 = v11;
  v22 = v18;
  v23 = *(v11 + 8);
  v23(v22, v10);
  if (!v21)
  {
    v32 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v33 = 0xD000000000000010;
    v33[1] = 0x800000024FA4C770;
    v33[2] = v43;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    (*(v49 + 8))(v51, v50);
    v23(v48, v10);
    swift_deallocPartialClassInstance();
    return v10;
  }

  v43 = v3;
  v24 = (v3 + OBJC_IVAR____TtC12GameStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier);
  *v24 = v19;
  v24[1] = v21;
  v25 = v48;
  sub_24F928398();
  sub_24F9281F8();
  v42 = v23;
  v23(v15, v10);
  v26 = sub_24F928E68();
  v27 = *(v26 - 8);
  v28 = v25;
  v29 = v10;
  if ((*(v27 + 48))(v9, 1, v26) == 1)
  {
    sub_24E601704(v9, qword_27F221C40, &unk_24F967D80);
    v30 = v51;
    v31 = v49;
LABEL_6:
    v34 = sub_24E608448(MEMORY[0x277D84F90]);

    goto LABEL_7;
  }

  v34 = sub_24F928E48();
  (*(v27 + 8))(v9, v26);
  v30 = v51;
  v31 = v49;
  if (!v34)
  {
    goto LABEL_6;
  }

LABEL_7:
  v35 = v44;
  v36 = v50;
  *(v43 + OBJC_IVAR____TtC12GameStoreKit29ArcadeLaunchAttributionAction_additionalMetrics) = v34;
  v37 = v45;
  (*(v35 + 16))(v45, v28, v10);
  v10 = v46;
  (*(v31 + 16))(v46, v30, v36);
  v38 = v47;
  v39 = Action.init(deserializing:using:)(v37, v10);
  if (!v38)
  {
    v10 = v39;
  }

  (*(v31 + 8))(v30, v36);
  v42(v28, v29);
  return v10;
}

uint64_t ArcadeLaunchAttributionAction.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier);

  return v1;
}

uint64_t sub_24EA26B80()
{
}

uint64_t ArcadeLaunchAttributionAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t ArcadeLaunchAttributionAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeLaunchAttributionAction(uint64_t a1)
{
  result = qword_27F2254D0;
  if (!qword_27F2254D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24EA26EE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, objc_class *a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, objc_class *a19, void *a20, void *a21, void *a22)
{
  v136 = a8;
  v137 = a6;
  v119 = a3;
  v120 = a7;
  v135 = a5;
  v134 = a22;
  v133 = a21;
  v132 = a20;
  v131 = a19;
  v138 = a18;
  v130 = a17;
  v129 = a16;
  v128 = a15;
  v123 = a13;
  v122 = a11;
  v121 = a10;
  v127 = a9;
  v25 = sub_24F92A498();
  v125 = *(v25 - 8);
  v126 = v25;
  MEMORY[0x28223BE20](v25);
  v124 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24F91F7C8();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    v31 = sub_24E615CF4(0, 1, 1, MEMORY[0x277D84F90]);
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_24E615CF4((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[16 * v33];
    *(v34 + 4) = a1;
    *(v34 + 5) = a2;
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  if (a4)
  {
  }

  else
  {
    if (*(v31 + 2))
    {
      goto LABEL_14;
    }

    sub_24F91F778();
    v119 = sub_24F91F708();
    a4 = v116;
    (*(v28 + 8))(v30, v27);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_24E615CF4(0, *(v31 + 2) + 1, 1, v31);
  }

  v36 = *(v31 + 2);
  v35 = *(v31 + 3);
  if (v36 >= v35 >> 1)
  {
    v31 = sub_24E615CF4((v35 > 1), v36 + 1, 1, v31);
  }

  *(v31 + 2) = v36 + 1;
  v37 = &v31[16 * v36];
  *(v37 + 4) = v119;
  *(v37 + 5) = a4;
LABEL_14:
  v38 = objc_allocWithZone(type metadata accessor for LegacyLocalizer(0));
  v39 = sub_24ED01034(v31);
  sub_24E615E00(v135, v152);
  v40 = type metadata accessor for ModernLocalizer();
  v41 = objc_allocWithZone(v40);
  sub_24E615E00(v152, &v41[OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer]);
  *&v41[OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_legacyLocalizer] = v39;
  v151.receiver = v41;
  v151.super_class = v40;
  v42 = v39;
  v135 = v42;
  v43 = objc_msgSendSuper2(&v151, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v152);
  v44 = v137;
  sub_24E615E00(v137, v152);
  v45 = OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_locale;
  v46 = v43;
  sub_24EA28038(v46, v152, v120, v136, v42 + v45);

  sub_24EA28200(v152);
  sub_24F92AB98();
  v47 = sub_24F92AB88();
  v136 = v47;
  sub_24E615E00(v44, v152);
  sub_24E615E00(v121, v150);
  v48 = objc_allocWithZone(type metadata accessor for JSUserObject());
  v137 = v46;

  v49 = v122;
  v50 = v122;
  v51 = sub_24F2FE734(v47, v49);
  v52 = type metadata accessor for JSPlayerBridgeObject();
  v53 = objc_allocWithZone(v52);
  v54 = &v53[OBJC_IVAR____TtC12GameStoreKit20JSPlayerBridgeObject_playerID];
  *v54 = 0;
  v54[1] = 0;
  v53[OBJC_IVAR____TtC12GameStoreKit20JSPlayerBridgeObject_isUnderThirteen] = 0;
  v149.receiver = v53;
  v149.super_class = v52;
  v122 = objc_msgSendSuper2(&v149, &selRef_writeDataForAssetResource_toFile_options_completionHandler_);
  v56 = v124;
  v55 = v125;
  v57 = v126;
  v125[2](v124, v123, v126);
  type metadata accessor for ASKBagContract(0);
  v58 = swift_allocObject();
  v55[4]((v58 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag), v56, v57);
  *(v58 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = 0;
  v59 = v58 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v59 = 0;
  *(v59 + 8) = 0;
  *(v59 + 16) = 1;
  v60 = type metadata accessor for JSMetricsIdentifiersObject();
  v61 = objc_allocWithZone(v60);
  *&v61[OBJC_IVAR____TtC12GameStoreKit26JSMetricsIdentifiersObject_metricsIdStore] = a12;
  *&v61[OBJC_IVAR____TtC12GameStoreKit26JSMetricsIdentifiersObject_metricsTopicProvider] = v58;
  v148.receiver = v61;
  v148.super_class = v60;

  v118 = objc_msgSendSuper2(&v148, &selRef_writeDataForAssetResource_toFile_options_completionHandler_);
  v62 = objc_opt_self();

  v63 = [v62 standardUserDefaults];
  v64 = type metadata accessor for JSUserDefaults();
  v65 = objc_allocWithZone(v64);
  *&v65[OBJC_IVAR____TtC12GameStoreKit14JSUserDefaults_userDefaults] = v63;
  v147.receiver = v65;
  v147.super_class = v64;
  v126 = objc_msgSendSuper2(&v147, &selRef_writeDataForAssetResource_toFile_options_completionHandler_);
  v66 = objc_allocWithZone(ASKClient);
  v67 = v127;
  v128 = v128;
  v129 = v129;
  v130 = v130;
  v68 = v138;

  v125 = v131;
  v132 = v132;
  v133 = v133;
  v134 = v134;
  v69 = [v66 initWithRestrictions_];
  v123 = v69;
  __swift_project_boxed_opaque_existential_1(v152, v152[3]);
  v70 = sub_24F92AD08();
  sub_24E615E00(v150, v144);
  v71 = type metadata accessor for JSStoreMetricsObject();
  v72 = objc_allocWithZone(v71);
  sub_24E615E00(v144, v72 + OBJC_IVAR____TtC12GameStoreKit20JSStoreMetricsObject_metricsRecorder);
  v143.receiver = v72;
  v143.super_class = v71;
  v73 = objc_msgSendSuper2(&v143, &selRef_writeDataForAssetResource_toFile_options_completionHandler_);
  v121 = v73;
  __swift_destroy_boxed_opaque_existential_1(v144);
  v74 = type metadata accessor for JSAMSEngagement();
  v75 = objc_allocWithZone(v74);
  *&v75[OBJC_IVAR____TtC12GameStoreKit15JSAMSEngagement_engagement] = v67;
  v142.receiver = v75;
  v142.super_class = v74;
  v131 = v67;
  v76 = objc_msgSendSuper2(&v142, &selRef_writeDataForAssetResource_toFile_options_completionHandler_);
  v120 = v76;
  v127 = type metadata accessor for ASKGlobal();
  v77 = objc_allocWithZone(v127);
  v78 = OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_treatmentStore;
  *&v77[v78] = [objc_allocWithZone(type metadata accessor for JSTreatmentStore()) &selRef_writeDataForAssetResource_toFile_options_completionHandler_];
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_client] = v69;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_loc] = v137;
  v124 = v70;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_adsLoc] = v70;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_storeMetrics] = v73;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_amsEngagement] = v76;
  v79 = v51;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_user] = v51;
  v80 = v122;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_player] = v122;
  v81 = v118;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_metricsIdentifiers] = v118;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_props] = a14;
  v82 = type metadata accessor for StoreKitInAppPurchaseOrderingProvider();
  v83 = swift_allocObject();
  v145 = v82;
  v146 = &off_2861ECA58;
  v144[0] = v83;
  v84 = objc_allocWithZone(type metadata accessor for ClientOrderingWrapper());
  v85 = __swift_mutable_project_boxed_opaque_existential_1(v144, v145);
  v86 = MEMORY[0x28223BE20](v85);
  v88 = (&v117 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v89 + 16))(v88, v86);
  v90 = *v88;
  v123 = v123;
  swift_unknownObjectRetain();
  v121 = v121;
  v120 = v120;
  v119 = v79;
  v122 = v80;
  v118 = v81;
  v91 = sub_24EA27E2C(v90, v84);
  __swift_destroy_boxed_opaque_existential_1(v144);
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_clientOrdering] = v91;
  v92 = v125;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_resilientDeepLinks] = v125;
  v93 = type metadata accessor for JSArcadeObject();
  v94 = objc_allocWithZone(v93);
  *&v94[OBJC_IVAR____TtC12GameStoreKit14JSArcadeObject_accounts] = v136;
  v95 = objc_allocWithZone(MEMORY[0x277CEC3F8]);

  v96 = v92;
  v97 = [v95 init];
  *&v94[OBJC_IVAR____TtC12GameStoreKit14JSArcadeObject_arcadeStore] = v97;
  v141.receiver = v94;
  v141.super_class = v93;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_arcade] = objc_msgSendSuper2(&v141, sel_init);
  v98 = type metadata accessor for JSGameCenter();
  v99 = objc_allocWithZone(v98);
  v100 = v128;
  *&v99[OBJC_IVAR____TtC12GameStoreKit12JSGameCenter_dataProvider] = v128;
  v140.receiver = v99;
  v140.super_class = v98;
  v101 = v100;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_gameCenter] = objc_msgSendSuper2(&v140, sel_init);
  v102 = v129;
  v103 = v130;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_appleSilicon] = v129;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_ads] = v103;
  v104 = objc_allocWithZone(type metadata accessor for JSStorageObject(0));
  v105 = v102;
  v106 = v103;
  v107 = [v104 init];
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_storage] = v107;
  v108 = v132;
  v109 = v133;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_onDeviceRecommendationsManager] = v132;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_onDeviceSearchHistoryManager] = v109;
  v110 = objc_allocWithZone(type metadata accessor for JSFeatureFlags());
  v111 = v108;
  v112 = v109;
  v113 = [v110 init];
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_featureFlags] = v113;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_clientCapabilities] = [objc_allocWithZone(type metadata accessor for JSClientCapabilities()) init];
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_timeoutManager] = v134;
  *&v77[OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_userDefaults] = v126;
  v139.receiver = v77;
  v139.super_class = v127;
  v114 = objc_msgSendSuper2(&v139, sel_init);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v150);
  __swift_destroy_boxed_opaque_existential_1(v152);

  return v114;
}

id sub_24EA27E2C(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for StoreKitInAppPurchaseOrderingProvider();
  v25[3] = v4;
  v25[4] = &off_2861ECA58;
  v25[0] = a1;
  sub_24E615E00(v25, v24);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v24, v24[3]);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = *v8;
  v23[3] = v4;
  v23[4] = &off_2861ECA58;
  v23[0] = v10;
  type metadata accessor for ClientOrdering();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v4);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v11[5] = v4;
  v11[6] = &off_2861ECA58;
  v11[2] = v17;
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  *&a2[OBJC_IVAR____TtC12GameStoreKit21ClientOrderingWrapper_clientOrdering] = v11;
  v18 = type metadata accessor for ClientOrderingWrapper();
  v22.receiver = a2;
  v22.super_class = v18;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v19;
}

double sub_24EA28038(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F7C8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F748();
  sub_24EA28268(a2, v21);
  (*(v11 + 16))(v13, a5, v10);
  type metadata accessor for PrimaryLocalization(0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v15 = v21[1];
  *(v14 + 24) = v21[0];
  *(v14 + 40) = v15;
  *(v14 + 56) = v22;
  *(v14 + 64) = a3;
  *(v14 + 72) = a4;
  (*(v11 + 32))(v14 + OBJC_IVAR____TtC12GameStoreKit19PrimaryLocalization_legacyLocale, v13, v10);
  v16 = qword_27F210608;
  v17 = a1;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  sub_24EA282D8(v18 + 2);
  os_unfair_lock_unlock(v18 + 6);

  return result;
}

uint64_t sub_24EA28200(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223248, &unk_24F96E1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA28268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223248, &unk_24F96E1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_24EA2830C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v165 = a3;
  v5 = sub_24F928AD8();
  v168 = *(v5 - 8);
  v169 = v5;
  MEMORY[0x28223BE20](v5);
  v167 = v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v7 = sub_24F92A9E8();
  v8 = MEMORY[0x277D84F90];
  v176 = sub_24E6086DC(MEMORY[0x277D84F90]);
  v9 = sub_24E6086DC(v8);
  v173 = sub_24EA200BC(v8);
  v172 = sub_24E6086DC(v8);
  sub_24E6086DC(v8);
  sub_24E6086DC(v8);
  sub_24E608448(v8);
  sub_24E6086DC(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24F928FD8();
  v166 = a2;
  sub_24F92A758();
  v10 = v191;
  ObjectType = swift_getObjectType();
  v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10RateAction_adamId + 8);
  *&v182 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10RateAction_adamId);
  *(&v182 + 1) = v12;
  v13 = v10[7];

  v14 = v13(&v182, ObjectType, v10);
  v16 = v15;
  swift_unknownObjectRelease();

  v17 = swift_getObjectType();
  v18 = *(v16 + 16);
  v170 = v14;
  v18(&v190, v17, v16);
  v19 = *(a1 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_parameters);
  v20 = v19[2];
  if (!v20)
  {
LABEL_109:
    *&v182 = v176;
    *(&v182 + 1) = v9;
    v183 = v173;
    v184 = v172;
    v152 = v167;
    sub_24F928A98();
    v157 = sub_24EC24DF8(&v182, 0, 0, v152);
    (*(v168 + 8))(v152, v169);

    v184 = type metadata accessor for HttpAction(0);
    v185 = sub_24EA29558(&qword_27F225620, type metadata accessor for HttpAction);
    *&v182 = v157;
    type metadata accessor for RateActionImplementation(0, v165, v158, v159);

    swift_getWitnessTable();
    sub_24F1489C4(&v182, v166);
    __swift_destroy_boxed_opaque_existential_1(&v182);
    v160 = sub_24E74EC40();
    swift_retain_n();
    v161 = sub_24F92BEF8();
    v184 = v160;
    v185 = MEMORY[0x277D225C0];
    *&v182 = v161;
    sub_24F92A958();
    swift_unknownObjectRelease();

    sub_24E88D2AC(&v190);

    __swift_destroy_boxed_opaque_existential_1(&v182);
    return v7;
  }

  v164 = v7;
  v163[1] = a1;
  v21 = (a1 + OBJC_IVAR____TtC12GameStoreKit10RateAction_rating);
  swift_beginAccess();
  if (!v19[2])
  {
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
    swift_once();
    v153 = sub_24F92AAE8();
    __swift_project_value_buffer(v153, qword_27F22D7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    swift_getErrorValue();
    v154 = v186;
    v155 = v187;
    v184 = v187;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v182);
    (*(*(v155 - 8) + 16))(boxed_opaque_existential_1, v154, v155);
    sub_24F928458();
    sub_24E857CC8(&v182);
    sub_24F92A5A8();

    sub_24F92A9A8();
    sub_24E88D2AC(&v190);
    swift_unknownObjectRelease();

    return v7;
  }

  v22 = 0;
  v7 = v19 + 4;
  v174 = 0x800000024FA3FAB0;
  v175 = v19;
  v179 = v20 - 1;
  v177 = v21;
  while (1)
  {
    v24 = v7[1];
    v23 = v7[2];
    v25 = *(v7 + 41);
    v188[0] = *v7;
    v188[1] = v24;
    *&v189[9] = v25;
    *v189 = v23;
    v26 = v24;
    v27 = v188[0];
    if (v21[1])
    {
      break;
    }

    v42 = *v21;
    if (v188[0] != __PAIR128__(0xE600000000000000, 0x676E69746172) && (sub_24F92CE08() & 1) == 0)
    {
      break;
    }

    *&v181[0] = v42;
    sub_24EA295BC(v188, &v182);
    v43 = sub_24F92CD88();
    if (v26 <= 1)
    {
      v178 = v43;
      if (!v26)
      {
        v19 = v9;
        v171 = v44;

        v45 = v176;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v182 = v45;
        v48 = sub_24E76D644(v27, *(&v27 + 1));
        v49 = *(v45 + 16);
        v50 = (v47 & 1) == 0;
        v51 = v49 + v50;
        if (__OFADD__(v49, v50))
        {
          goto LABEL_115;
        }

        v52 = v47;
        if (*(v45 + 24) >= v51)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24E8AF124();
          }
        }

        else
        {
          sub_24E89B77C(v51, isUniquelyReferenced_nonNull_native);
          v53 = sub_24E76D644(v27, *(&v27 + 1));
          if ((v52 & 1) != (v54 & 1))
          {
            goto LABEL_128;
          }

          v48 = v53;
        }

        v9 = v19;
        v110 = v182;
        v19 = v175;
        v176 = v182;
        if (v52)
        {
          v111 = (*(v182 + 56) + 16 * v48);
          v112 = v171;
          *v111 = v178;
          v111[1] = v112;
        }

        else
        {
          *(v182 + 8 * (v48 >> 6) + 64) |= 1 << v48;
          *(*(v110 + 48) + 16 * v48) = v27;
          v119 = (*(v110 + 56) + 16 * v48);
          v120 = v171;
          *v119 = v178;
          v119[1] = v120;

          v121 = *(v176 + 16);
          v38 = __OFADD__(v121, 1);
          v122 = v121 + 1;
          if (v38)
          {
            goto LABEL_120;
          }

          *(v176 + 16) = v122;
        }

        goto LABEL_97;
      }

      v73 = v9;
      v74 = v44;

      v75 = swift_isUniquelyReferenced_nonNull_native();
      *&v182 = v73;
      v76 = sub_24E76D644(v27, *(&v27 + 1));
      v78 = *(v73 + 16);
      v79 = (v77 & 1) == 0;
      v38 = __OFADD__(v78, v79);
      v80 = v78 + v79;
      if (v38)
      {
        goto LABEL_112;
      }

      v81 = v77;
      if (*(v73 + 24) >= v80)
      {
        if ((v75 & 1) == 0)
        {
          v141 = v76;
          sub_24E8AF124();
          v76 = v141;
          v115 = v182;
          if (v81)
          {
            goto LABEL_58;
          }

          goto LABEL_95;
        }
      }

      else
      {
        sub_24E89B77C(v80, v75);
        v76 = sub_24E76D644(v27, *(&v27 + 1));
        if ((v81 & 1) != (v82 & 1))
        {
          goto LABEL_128;
        }
      }

      v115 = v182;
      if (v81)
      {
LABEL_58:
        v116 = (v115[7] + 16 * v76);
        *v116 = v178;
        v116[1] = v74;

        v9 = v115;
LABEL_97:
        sub_24EA29618(v188);
        goto LABEL_104;
      }

LABEL_95:
      v115[(v76 >> 6) + 8] |= 1 << v76;
      *(v115[6] + 16 * v76) = v27;
      v142 = (v115[7] + 16 * v76);
      *v142 = v178;
      v142[1] = v74;

      v143 = v115[2];
      v38 = __OFADD__(v143, 1);
      v144 = v143 + 1;
      if (v38)
      {
        goto LABEL_121;
      }

      v9 = v115;
      v115[2] = v144;
      goto LABEL_97;
    }

    v178 = v9;
    if (v26 == 2)
    {
      v184 = MEMORY[0x277D837D0];
      *&v182 = v43;
      *(&v182 + 1) = v44;
      sub_24E612B0C(&v182, v181);

      v55 = v173;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v180 = v55;
      v57 = sub_24E76D644(v27, *(&v27 + 1));
      v59 = *(v55 + 16);
      v60 = (v58 & 1) == 0;
      v38 = __OFADD__(v59, v60);
      v61 = v59 + v60;
      if (v38)
      {
        goto LABEL_113;
      }

      v62 = v58;
      if (*(v55 + 24) >= v61)
      {
        if ((v56 & 1) == 0)
        {
          v140 = v57;
          sub_24E8AD8E4();
          v57 = v140;
        }
      }

      else
      {
        sub_24E89873C(v61, v56);
        v57 = sub_24E76D644(v27, *(&v27 + 1));
        if ((v62 & 1) != (v63 & 1))
        {
          goto LABEL_128;
        }
      }

      v113 = v180;
      v173 = v180;
      if (v62)
      {
        v114 = (v180[7] + 32 * v57);
        __swift_destroy_boxed_opaque_existential_1(v114);
        sub_24E612B0C(v181, v114);
      }

      else
      {
        v180[(v57 >> 6) + 8] |= 1 << v57;
        *(v113[6] + 16 * v57) = v27;
        sub_24E612B0C(v181, (v113[7] + 32 * v57));

        v123 = v113[2];
        v38 = __OFADD__(v123, 1);
        v124 = v123 + 1;
        if (v38)
        {
          goto LABEL_122;
        }

        v113[2] = v124;
      }

      sub_24EA29618(v188);
      v21 = v177;
      v9 = v178;
    }

    else
    {
      v19 = v43;
      v83 = v44;

      v84 = v172;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *&v182 = v84;
      v86 = sub_24E76D644(v27, *(&v27 + 1));
      v88 = *(v84 + 16);
      v89 = (v87 & 1) == 0;
      v38 = __OFADD__(v88, v89);
      v90 = v88 + v89;
      if (v38)
      {
        goto LABEL_114;
      }

      v91 = v87;
      if (*(v84 + 24) >= v90)
      {
        if ((v85 & 1) == 0)
        {
          v145 = v86;
          sub_24E8AF124();
          v86 = v145;
        }
      }

      else
      {
        sub_24E89B77C(v90, v85);
        v86 = sub_24E76D644(v27, *(&v27 + 1));
        if ((v91 & 1) != (v92 & 1))
        {
          goto LABEL_128;
        }
      }

      v117 = v182;
      v172 = v182;
      if (v91)
      {
        v118 = (*(v182 + 56) + 16 * v86);
        *v118 = v19;
        v118[1] = v83;
      }

      else
      {
        *(v182 + 8 * (v86 >> 6) + 64) |= 1 << v86;
        *(v117[6] + 16 * v86) = v27;
        v125 = (v117[7] + 16 * v86);
        *v125 = v19;
        v125[1] = v83;

        v126 = v117[2];
        v38 = __OFADD__(v126, 1);
        v127 = v126 + 1;
        if (v38)
        {
          goto LABEL_123;
        }

        v117[2] = v127;
      }

      sub_24EA29618(v188);
      v21 = v177;
      v9 = v178;
      v19 = v175;
    }

LABEL_105:
    if (v179 == v22)
    {
      v7 = v164;
      goto LABEL_109;
    }

    ++v22;
    v7 += 4;
    if (v22 >= v19[2])
    {
      goto LABEL_111;
    }
  }

  if (v192 >> 60 != 7)
  {
    goto LABEL_105;
  }

  v28 = v191;
  if (__PAIR128__(v174, 0xD000000000000011) != v27 && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_105;
  }

  v178 = v9;
  sub_24EA295BC(v188, &v182);
  sub_24E8B9478(&v190, &v182);
  v29 = [v28 stringValue];
  v30 = sub_24F92B0D8();
  v19 = v31;

  if (v26 <= 1)
  {
    if (!v26)
    {

      v32 = v176;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      *&v182 = v32;
      v34 = sub_24E76D644(v27, *(&v27 + 1));
      v36 = *(v32 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_118;
      }

      v40 = v35;
      if (*(v32 + 24) >= v39)
      {
        if ((v33 & 1) == 0)
        {
          v146 = v34;
          sub_24E8AF124();
          v34 = v146;
        }
      }

      else
      {
        sub_24E89B77C(v39, v33);
        v34 = sub_24E76D644(v27, *(&v27 + 1));
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_128;
        }
      }

      v128 = v182;
      v176 = v182;
      if ((v40 & 1) == 0)
      {
        *(v182 + 8 * (v34 >> 6) + 64) |= 1 << v34;
        *(v128[6] + 16 * v34) = v27;
        v129 = (v128[7] + 16 * v34);
        *v129 = v30;
        v129[1] = v19;

        sub_24E88D2AC(&v190);

        v130 = v128[2];
        v38 = __OFADD__(v130, 1);
        v131 = v130 + 1;
        if (v38)
        {
          goto LABEL_126;
        }

LABEL_92:
        v128[2] = v131;
LABEL_93:
        sub_24EA29618(v188);
        v9 = v178;
LABEL_103:
        v19 = v175;
LABEL_104:
        v21 = v177;
        goto LABEL_105;
      }

LABEL_87:
      v135 = (v128[7] + 16 * v34);
      *v135 = v30;
      v135[1] = v19;

      sub_24E88D2AC(&v190);

      goto LABEL_93;
    }

    v93 = v178;
    v94 = swift_isUniquelyReferenced_nonNull_native();
    *&v182 = v93;
    v95 = sub_24E76D644(v27, *(&v27 + 1));
    v97 = *(v93 + 16);
    v98 = (v96 & 1) == 0;
    v38 = __OFADD__(v97, v98);
    v99 = v97 + v98;
    if (v38)
    {
      goto LABEL_116;
    }

    v100 = v96;
    if (*(v93 + 24) >= v99)
    {
      if (v94)
      {
        goto LABEL_82;
      }

      v148 = v95;
      sub_24E8AF124();
      v95 = v148;
      v132 = v182;
      if ((v100 & 1) == 0)
      {
        goto LABEL_99;
      }

LABEL_83:
      v134 = (v132[7] + 16 * v95);
      *v134 = v30;
      v134[1] = v19;

      sub_24E88D2AC(&v190);

      v9 = v132;
    }

    else
    {
      sub_24E89B77C(v99, v94);
      v95 = sub_24E76D644(v27, *(&v27 + 1));
      if ((v100 & 1) != (v101 & 1))
      {
        goto LABEL_128;
      }

LABEL_82:
      v132 = v182;
      if (v100)
      {
        goto LABEL_83;
      }

LABEL_99:
      v132[(v95 >> 6) + 8] |= 1 << v95;
      *(v132[6] + 16 * v95) = v27;
      v149 = (v132[7] + 16 * v95);
      *v149 = v30;
      v149[1] = v19;

      sub_24E88D2AC(&v190);

      v150 = v132[2];
      v38 = __OFADD__(v150, 1);
      v137 = v150 + 1;
      if (v38)
      {
        goto LABEL_125;
      }

      v9 = v132;
LABEL_101:
      v132[2] = v137;
    }

    goto LABEL_102;
  }

  if (v26 == 2)
  {
    v184 = MEMORY[0x277D837D0];
    *&v182 = v30;
    *(&v182 + 1) = v19;
    sub_24E612B0C(&v182, v181);

    v64 = v173;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v180 = v64;
    v66 = sub_24E76D644(v27, *(&v27 + 1));
    v68 = *(v64 + 16);
    v69 = (v67 & 1) == 0;
    v38 = __OFADD__(v68, v69);
    v70 = v68 + v69;
    if (v38)
    {
      goto LABEL_117;
    }

    v71 = v67;
    if (*(v64 + 24) >= v70)
    {
      v9 = v178;
      if ((v65 & 1) == 0)
      {
        v147 = v66;
        sub_24E8AD8E4();
        v66 = v147;
      }
    }

    else
    {
      sub_24E89873C(v70, v65);
      v66 = sub_24E76D644(v27, *(&v27 + 1));
      v9 = v178;
      if ((v71 & 1) != (v72 & 1))
      {
        goto LABEL_128;
      }
    }

    v132 = v180;
    v173 = v180;
    if ((v71 & 1) == 0)
    {
      v180[(v66 >> 6) + 8] |= 1 << v66;
      *(v132[6] + 16 * v66) = v27;
      sub_24E612B0C(v181, (v132[7] + 32 * v66));

      sub_24E88D2AC(&v190);

      v136 = v132[2];
      v38 = __OFADD__(v136, 1);
      v137 = v136 + 1;
      if (v38)
      {
        goto LABEL_127;
      }

      goto LABEL_101;
    }

    v133 = (v180[7] + 32 * v66);
    __swift_destroy_boxed_opaque_existential_1(v133);
    sub_24E612B0C(v181, v133);
    sub_24E88D2AC(&v190);

LABEL_102:
    sub_24EA29618(v188);
    goto LABEL_103;
  }

  v102 = v172;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  *&v182 = v102;
  v34 = sub_24E76D644(v27, *(&v27 + 1));
  v105 = *(v102 + 16);
  v106 = (v104 & 1) == 0;
  v38 = __OFADD__(v105, v106);
  v107 = v105 + v106;
  if (v38)
  {
    goto LABEL_119;
  }

  v108 = v104;
  if (*(v102 + 24) >= v107)
  {
    if ((v103 & 1) == 0)
    {
      v151 = v34;
      sub_24E8AF124();
      v34 = v151;
    }
  }

  else
  {
    sub_24E89B77C(v107, v103);
    v34 = sub_24E76D644(v27, *(&v27 + 1));
    if ((v108 & 1) != (v109 & 1))
    {
      goto LABEL_128;
    }
  }

  v128 = v182;
  v172 = v182;
  if (v108)
  {
    goto LABEL_87;
  }

  *(v182 + 8 * (v34 >> 6) + 64) |= 1 << v34;
  *(v128[6] + 16 * v34) = v27;
  v138 = (v128[7] + 16 * v34);
  *v138 = v30;
  v138[1] = v19;

  sub_24E88D2AC(&v190);

  v139 = v128[2];
  v38 = __OFADD__(v139, 1);
  v131 = v139 + 1;
  if (!v38)
  {
    goto LABEL_92;
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24EA29558(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t ShelfBasedPageScrollAction.shelfId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_shelfId);

  return v1;
}

uint64_t ShelfBasedPageScrollAction.purchasedShelfId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);

  return v1;
}

uint64_t ShelfBasedPageScrollAction.notPurchasedShelfId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);

  return v1;
}

double ShelfBasedPageScrollAction.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_adamId);
  a1[1] = v2;

  return result;
}

void *ShelfBasedPageScrollAction.__allocating_init(title:shelfId:purchasedShelfId:notPurchasedShelfId:adamId:index:clicksOnScroll:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9, uint64_t a10, char a11, unsigned __int8 a12, uint64_t a13)
{
  v43 = a8;
  v45 = a1;
  v46 = a2;
  v44 = a12;
  v18 = sub_24F91F6B8();
  v41 = *(v18 - 8);
  v42 = v18;
  MEMORY[0x28223BE20](v18);
  v40 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_shelfId);
  *v21 = a3;
  v21[1] = a4;
  v22 = (v20 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);
  *v22 = a5;
  v22[1] = a6;
  v23 = (v20 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);
  v24 = v43;
  *v23 = a7;
  v23[1] = v24;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_adamId) = *a9;
  v25 = v20 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_index;
  *v25 = a10;
  v25[8] = a11 & 1;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_clicksOnScroll) = v44;
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v26 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v27 = sub_24F928AD8();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v20 + v26, a13, v27);
  v29 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v30 = sub_24F929608();
  (*(*(v30 - 8) + 56))(v20 + v29, 1, 1, v30);
  v31 = (v20 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v31 = 0u;
  v31[1] = 0u;
  v32 = v20 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v52, &v49);
  if (*(&v50 + 1))
  {
    v33 = v50;
    *v32 = v49;
    *(v32 + 1) = v33;
    *(v32 + 4) = v51;
  }

  else
  {
    v34 = v40;
    sub_24F91F6A8();
    v35 = sub_24F91F668();
    v37 = v36;
    (*(v41 + 8))(v34, v42);
    v47 = v35;
    v48 = v37;
    sub_24F92C7F8();
    sub_24E601704(&v49, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v28 + 8))(a13, v27);
  sub_24E601704(v52, &qword_27F235830, &qword_24F93B8C0);
  v38 = v46;
  v20[2] = v45;
  v20[3] = v38;
  v20[4] = 0;
  v20[5] = 0;
  return v20;
}

void *ShelfBasedPageScrollAction.init(title:shelfId:purchasedShelfId:notPurchasedShelfId:adamId:index:clicksOnScroll:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13)
{
  v14 = v13;
  v49 = a8;
  v48 = a7;
  v45 = a6;
  v51 = a1;
  v52 = a2;
  v50 = a12;
  v47 = a11;
  v46 = a10;
  v44 = a9;
  v43 = sub_24F91F6B8();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v42 - v21;
  v23 = sub_24F928AD8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (v14 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_shelfId);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v14 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);
  v29 = v45;
  *v28 = a5;
  v28[1] = v29;
  v30 = (v14 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);
  v31 = v49;
  *v30 = v48;
  v30[1] = v31;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_adamId) = *v44;
  v32 = v14 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_index;
  *v32 = v46;
  v32[8] = v47 & 1;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_clicksOnScroll) = v50;
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  (*(v24 + 16))(v26, a13, v23);
  v33 = sub_24F929608();
  (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
  v34 = (v14 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_24E65E064(v61, &v55);
  if (*(&v56 + 1))
  {
    v58 = v55;
    v59 = v56;
    v60 = v57;
  }

  else
  {
    sub_24F91F6A8();
    v35 = sub_24F91F668();
    v37 = v36;
    (*(v42 + 8))(v19, v43);
    v53 = v35;
    v54 = v37;
    sub_24F92C7F8();
    sub_24E601704(&v55, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v24 + 8))(a13, v23);
  sub_24E601704(v61, &qword_27F235830, &qword_24F93B8C0);
  v38 = v14 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v38 + 4) = v60;
  v39 = v59;
  *v38 = v58;
  *(v38 + 1) = v39;
  sub_24E65E0D4(v22, v14 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v40 = v52;
  v14[2] = v51;
  v14[3] = v40;
  v14[4] = 0;
  v14[5] = 0;
  (*(v24 + 32))(v14 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v26, v23);
  return v14;
}

void *ShelfBasedPageScrollAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v57 = *v3;
  v5 = sub_24F9285B8();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v56 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  v66 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  v23 = v22;
  v65 = *(v8 + 8);
  v65(v20, v7);
  if (v23)
  {
    v24 = (v3 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_shelfId);
    *v24 = v21;
    v24[1] = v23;
    v25 = v66;
    sub_24F928398();
    v26 = sub_24F928348();
    v28 = v27;
    v57 = v8;
    v29 = v65;
    v65(v17, v7);
    v30 = (v3 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);
    *v30 = v26;
    v30[1] = v28;
    sub_24F928398();
    v31 = sub_24F928348();
    v33 = v32;
    v29(v17, v7);
    v34 = (v3 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);
    *v34 = v31;
    v34[1] = v33;
    sub_24F928398();
    v35 = sub_24F928348();
    v37 = v36;
    v29(v14, v7);
    if (v37)
    {
      v38 = v35;
    }

    else
    {
      v38 = 0;
    }

    v39 = (v3 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_adamId);
    *v39 = v38;
    v39[1] = v37;
    sub_24F928398();
    v40 = sub_24F928258();
    v42 = v41;
    v29(v17, v7);
    v43 = v3 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_index;
    *v43 = v40;
    v43[8] = v42 & 1;
    v44 = v58;
    sub_24F928398();
    LOBYTE(v40) = sub_24F928278();
    v29(v44, v7);
    *(v3 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_clicksOnScroll) = (v40 == 2) | v40 & 1;
    v45 = v59;
    (*(v57 + 16))(v59, v25, v7);
    v47 = v62;
    v46 = v63;
    v48 = v60;
    v49 = v64;
    (*(v62 + 16))(v60, v64, v63);
    v50 = v61;
    v51 = Action.init(deserializing:using:)(v45, v48);
    if (!v50)
    {
      v3 = v51;
    }

    (*(v47 + 8))(v49, v46);
    v65(v66, v7);
  }

  else
  {
    v52 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v53 = 0x6449666C656873;
    v54 = v57;
    v53[1] = 0xE700000000000000;
    v53[2] = v54;
    (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277D22530], v52);
    swift_willThrow();
    (*(v62 + 8))(v64, v63);
    v65(v66, v7);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t sub_24EA2A55C()
{
}

uint64_t ShelfBasedPageScrollAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t ShelfBasedPageScrollAction.__deallocating_deinit()
{
  ShelfBasedPageScrollAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShelfBasedPageScrollAction(uint64_t a1)
{
  result = qword_27F225628;
  if (!qword_27F225628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double View.metricsActivityAware(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v6 = off_27F229AB8;
  swift_beginAccess();
  v13 = v6[12];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225638, &qword_24F975EF0);
  sub_24F926F28();
  v7 = v10;
  v8 = v11;
  v10 = a1;
  v11 = v7;
  v12 = v8;
  MEMORY[0x25304C420](&v10, a2, &type metadata for MetricsActivityAwareViewModifier, a3);

  return result;
}

double sub_24EA2A95C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a1;
  v70 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030, &unk_24F98A430);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v57 = &v52 - v9;
  v10 = sub_24F929AB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  MEMORY[0x28223BE20](v17);
  v63 = &v52 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225648, &qword_24F975FB0);
  v68 = *(v19 - 8);
  v69 = v19;
  MEMORY[0x28223BE20](v19);
  v66 = &v52 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225650, &qword_24F975FB8);
  MEMORY[0x28223BE20](v65);
  v64 = &v52 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
  sub_24F928EF8();
  v73 = a3;
  v74 = v84;
  v71 = a4;
  v72 = v85;
  v83[0] = a3;
  v83[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225658, &qword_24F975FC8);
  sub_24F926F38();
  v75 = v82[0];
  if (!v82[0])
  {
    v75 = sub_24E608448(MEMORY[0x277D84F90]);
  }

  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v22 = off_27F229AB8;
  swift_beginAccess();
  v56 = *(v22 + 88);
  swift_beginAccess();
  sub_24E60169C((v22 + 13), v83, &qword_27F224FA0, &qword_24F975FD0);
  v23 = type metadata accessor for SearchGhostHintMetricsTracker();
  sub_24F928EF8();
  if (v82[0])
  {
    v24 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v82[1] = 0;
    v82[2] = 0;
  }

  v82[3] = v23;
  v82[4] = v24;
  swift_beginAccess();
  v25 = v22[18];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90, &qword_24F989D00);
  v61 = v25;

  v55 = v26;
  sub_24F928EF8();
  v60 = v80;
  v54 = v81;
  sub_24F929AA8();
  v27 = v74;
  if (v74)
  {
    v28 = qword_27F210660;
    swift_unknownObjectRetain();
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
    __swift_project_value_buffer(v29, qword_27F22E3D0);
    v78 = v27;
    v79 = v72;
    sub_24F929A48();
    (*(v11 + 8))(v16, v10);
    swift_unknownObjectRelease();
    (*(v11 + 32))(v16, v13, v10);
  }

  v62 = v22;
  v72 = a2;
  LOBYTE(v78) = 0;
  if (qword_27F210680 != -1)
  {
    swift_once();
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
  __swift_project_value_buffer(v53, qword_27F22E430);
  sub_24F929A48();
  v30 = *(v11 + 8);
  v30(v16, v10);
  v31 = *(v11 + 32);
  v31(v16, v13, v10);
  v78 = v75;
  v32 = v57;
  sub_24F929A78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  sub_24F929A48();
  v33 = v30;
  (*(v58 + 8))(v32, v59);
  v30(v16, v10);
  v31(v16, v13, v10);
  if (v56 != 2)
  {
    LOBYTE(v78) = v56 & 1;
    if (qword_27F210688 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v53, qword_27F22E448);
    sub_24F929A48();
    v30(v16, v10);
    v31(v16, v13, v10);
  }

  sub_24E60169C(v83, &v76, &qword_27F224FA0, &qword_24F975FD0);
  if (v77)
  {
    sub_24E612C80(&v76, &v78);
    v34 = v61;
    if (qword_27F210690 != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078, &unk_24F976000);
    __swift_project_value_buffer(v35, qword_27F22E460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080, &unk_24F974C50);
    sub_24F929A48();
    __swift_destroy_boxed_opaque_existential_1(&v78);
    v33(v16, v10);
    v31(v16, v13, v10);
  }

  else
  {
    sub_24E601704(&v76, &qword_27F224FA0, &qword_24F975FD0);
    v34 = v61;
  }

  sub_24E60169C(v82, &v76, qword_27F224FA8, &qword_24F974A80);
  if (!v77)
  {
    sub_24E601704(&v76, qword_27F224FA8, &qword_24F974A80);
    if (!v34)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_24E612C80(&v76, &v78);
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068, &unk_24F975FF0);
  __swift_project_value_buffer(v36, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070, &unk_24F974C40);
  sub_24F929A48();
  __swift_destroy_boxed_opaque_existential_1(&v78);
  v33(v16, v10);
  v31(v16, v13, v10);
  if (v34)
  {
LABEL_29:
    v78 = v34;
    v37 = qword_27F2106B0;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460, &unk_24F971A10);
    __swift_project_value_buffer(v38, qword_27F22E4C0);
    type metadata accessor for Action(0);
    sub_24F929A48();
    v33(v16, v10);

    v31(v16, v13, v10);
  }

LABEL_32:
  v61 = v31;
  if (v60)
  {
    v78 = v60;
    v79 = v54;
    v39 = qword_27F2106A0;
    swift_unknownObjectRetain();
    if (v39 != -1)
    {
      swift_once();
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050, &unk_24F975FE0);
    __swift_project_value_buffer(v40, qword_27F22E490);
    sub_24F929A48();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v41 = v33;
    v33(v16, v10);
    sub_24E601704(v83, &qword_27F224FA0, &qword_24F975FD0);
    swift_unknownObjectRelease();
    v42 = v61;
    v61(v16, v13, v10);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_24E601704(v83, &qword_27F224FA0, &qword_24F975FD0);
    v41 = v33;
    v42 = v61;
  }

  v43 = v63;
  v42(v63, v16, v10);
  sub_24E601704(v82, qword_27F224FA8, &qword_24F974A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225660, &qword_24F975FD8);
  sub_24E602068(&qword_27F225668, &qword_27F225660, &qword_24F975FD8, MEMORY[0x277CE04B0]);
  v44 = v66;
  sub_24F925E98();
  v41(v43, v10);
  v45 = [objc_opt_self() defaultCenter];
  if (qword_27F210288 != -1)
  {
    swift_once();
  }

  v47 = v64;
  v46 = v65;
  sub_24F92C0F8();

  v48 = swift_allocObject();
  v49 = v73;
  *(v48 + 2) = v72;
  *(v48 + 3) = v49;
  *(v48 + 4) = v71;
  (*(v68 + 32))(v47, v44, v69);
  v50 = (v47 + *(v46 + 56));
  *v50 = sub_24EA2B7A8;
  v50[1] = v48;
  sub_24EA2B7B4(v47, v70);

  return result;
}

uint64_t sub_24EA2B5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225658, &qword_24F975FC8);
  return sub_24F926F48();
}

uint64_t sub_24EA2B67C(void *a1)
{
  sub_24F924038();
  sub_24EA2B6E0();
  return swift_getWitnessTable();
}

unint64_t sub_24EA2B6E0()
{
  result = qword_27F225640;
  if (!qword_27F225640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225640);
  }

  return result;
}

uint64_t sub_24EA2B760()
{

  return swift_deallocObject();
}

uint64_t sub_24EA2B7B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225650, &qword_24F975FB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_24EA2B868@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if (v3 <= 3)
  {
    v5 = 4.0;
    if (*a1 > 1u)
    {
      if (v3 == 2)
      {
        v4 = xmmword_24F976010;
      }

      else
      {
        v4 = xmmword_24F976080;
        v5 = 5.0;
      }

      v6 = 12.0;
    }

    else
    {
      v6 = 10.0;
      if (*a1)
      {
        v4 = xmmword_24F976090;
      }

      else
      {
        v4 = xmmword_24F976020;
      }
    }
  }

  else
  {
    if (*a1 <= 5u)
    {
      if (v3 == 4)
      {
        v4 = xmmword_24F976070;
        v5 = 6.0;
      }

      else
      {
        v4 = xmmword_24F976060;
        v5 = 7.0;
      }
    }

    else if (v3 == 6)
    {
      v4 = xmmword_24F976050;
      v5 = 8.0;
    }

    else if (v3 == 7)
    {
      v4 = xmmword_24F976040;
      v5 = 9.0;
    }

    else
    {
      v4 = xmmword_24F976030;
      v5 = 10.0;
    }

    v6 = 20.0;
  }

  v7 = *(a2 + 16);
  *a3 = v4;
  *(a3 + 16) = vdupq_n_s64(0xC0C81C8000000000);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = v5;
  *(a3 + 64) = v5;
  *(a3 + 72) = v6;
  *(a3 + 80) = v6;
  *(a3 + 88) = v6;
  *(a3 + 96) = v6;
  *(a3 + 104) = v7;
  *(a3 + 112) = v7;
  v8 = MEMORY[0x277D768C8];
  *(a3 + 120) = 1;
  result = *v8;
  v10 = *(v8 + 16);
  *(a3 + 128) = *v8;
  *(a3 + 144) = v10;
  return result;
}

void *SearchFocusPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = sub_24F9285B8();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v38 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24F928388();
  v35 = *(v7 - 8);
  v8 = v35;
  MEMORY[0x28223BE20](v7);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  sub_24F928398();
  v16 = sub_24F928258();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v15, v7);
  v20 = v3 + OBJC_IVAR____TtC12GameStoreKit15SearchFocusPage_maxShelfRowCount;
  *v20 = v16;
  v21 = v18 & 1;
  v22 = v36;
  *(v20 + 8) = v21;
  sub_24F928398();
  LOBYTE(v16) = sub_24F928278();
  v37 = v19;
  v19(v12, v7);
  v23 = v16 & 1;
  v24 = v3;
  v25 = v7;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit15SearchFocusPage_prefersSmallShelfTitles) = v23;
  v26 = v34;
  v27 = *(v35 + 16);
  v35 = a1;
  v27(v34, a1, v7);
  v28 = v40;
  v29 = v39;
  v30 = v38;
  (*(v39 + 16))(v38, v22, v40);
  v31 = GenericPage.init(deserializing:using:)(v26, v30);
  (*(v29 + 8))(v22, v28);
  v37(v35, v25);
  return v31;
}

uint64_t SearchFocusPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v84 = a8;
  LODWORD(v77) = a7;
  v72 = a5;
  v82 = a4;
  v71 = a3;
  v70 = a2;
  v69 = a1;
  v79 = a12;
  v83 = a10;
  v74 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v14 - 8);
  v68 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = &v67 - v17;
  MEMORY[0x28223BE20](v18);
  v80 = &v67 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - v21;
  v85 = &v67 - v21;
  v23 = sub_24F928818();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v67 - v28;
  v30 = swift_allocObject();
  v31 = v30 + OBJC_IVAR____TtC12GameStoreKit15SearchFocusPage_maxShelfRowCount;
  *v31 = 0;
  *(v31 + 8) = 1;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit15SearchFocusPage_prefersSmallShelfTitles) = 0;
  v78 = a6;
  sub_24E60169C(a6, v87, &qword_27F2129B0, &unk_24F945320);
  v73 = v24;
  v32 = *(v24 + 16);
  v76 = a11;
  v32(v29, a11, v23);
  v75 = a13;
  sub_24E60169C(a13, v22, &qword_27F2218B0, &unk_24F975980);
  v33 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v34 = sub_24EEF0A68(v69);
  v36 = v35;

  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v34;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v36;
  v37 = (v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v38 = v71;
  *v37 = v70;
  v37[1] = v38;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v82;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v72;
  sub_24E60169C(v87, v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v77;
  swift_beginAccess();
  *(v30 + v33) = v84;
  v39 = v79;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v32(v26, v29, v23);
  v40 = v80;
  sub_24E60169C(v85, v80, &qword_27F2218B0, &unk_24F975980);
  *(v30 + 16) = v83;
  v77 = v26;
  v32((v30 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v26, v23);
  *(v30 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v39;
  v41 = v81;
  sub_24E60169C(v40, v81, &qword_27F2218B0, &unk_24F975980);
  v42 = sub_24F9285B8();
  v43 = *(v42 - 8);
  v72 = *(v43 + 48);
  if (v72(v41, 1, v42) == 1)
  {

    sub_24E601704(v75, &qword_27F2218B0, &unk_24F975980);
    v44 = *(v73 + 8);
    v44(v76, v23);
    sub_24E601704(v78, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v40, &qword_27F2218B0, &unk_24F975980);
    v44(v77, v23);
    sub_24E601704(v85, &qword_27F2218B0, &unk_24F975980);
    v44(v29, v23);
    sub_24E601704(v87, &qword_27F2129B0, &unk_24F945320);
    v45 = v41;
    v46 = &qword_27F2218B0;
    v47 = &unk_24F975980;
  }

  else
  {
    v70 = v29;
    v48 = v73;
    v49 = qword_27F2105F0;

    if (v49 != -1)
    {
      swift_once();
    }

    v71 = v23;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v50, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v51 = v86;
    v52 = v48;
    if (v86)
    {
    }

    v53 = *(v43 + 8);
    v53(v81, v42);
    v54 = v85;
    v55 = v80;
    v56 = v76;
    if (v51)
    {
      v57 = v68;
      sub_24E60169C(v80, v68, &qword_27F2218B0, &unk_24F975980);
      if (v72(v57, 1, v42) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v75, &qword_27F2218B0, &unk_24F975980);
        v65 = *(v52 + 8);
        v66 = v71;
        v65(v56, v71);
        sub_24E601704(v78, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v80, &qword_27F2218B0, &unk_24F975980);
        v65(v77, v66);
        sub_24E601704(v54, &qword_27F2218B0, &unk_24F975980);
        v65(v70, v66);
        sub_24E601704(v87, &qword_27F2129B0, &unk_24F945320);
        v53(v68, v42);
        return v30;
      }

      sub_24E601704(v75, &qword_27F2218B0, &unk_24F975980);
      v58 = *(v52 + 8);
      v59 = v56;
      v60 = v71;
      v58(v59, v71);
      sub_24E601704(v78, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v80, &qword_27F2218B0, &unk_24F975980);
      v58(v77, v60);
      sub_24E601704(v54, &qword_27F2218B0, &unk_24F975980);
      v58(v70, v60);
      sub_24E601704(v87, &qword_27F2129B0, &unk_24F945320);
      v45 = v57;
      v46 = &qword_27F2218B0;
      v47 = &unk_24F975980;
    }

    else
    {

      sub_24E601704(v75, &qword_27F2218B0, &unk_24F975980);
      v61 = *(v52 + 8);
      v62 = v56;
      v63 = v71;
      v61(v62, v71);
      sub_24E601704(v78, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v55, &qword_27F2218B0, &unk_24F975980);
      v61(v77, v63);
      sub_24E601704(v54, &qword_27F2218B0, &unk_24F975980);
      v61(v70, v63);
      v45 = v87;
      v46 = &qword_27F2129B0;
      v47 = &unk_24F945320;
    }
  }

  sub_24E601704(v45, v46, v47);
  return v30;
}

uint64_t SearchFocusPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v77 = a4;
  v78 = a8;
  LODWORD(v76) = a7;
  v75 = a5;
  v73 = a3;
  v68 = a2;
  v79 = a12;
  v82 = a10;
  v70 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v16 - 8);
  v66 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v81 = &v66 - v19;
  MEMORY[0x28223BE20](v20);
  v80 = &v66 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v66 - v23;
  v25 = sub_24F928818();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v66 - v30;
  v32 = v13 + OBJC_IVAR____TtC12GameStoreKit15SearchFocusPage_maxShelfRowCount;
  *v32 = 0;
  *(v32 + 8) = 1;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit15SearchFocusPage_prefersSmallShelfTitles) = 0;
  v74 = a6;
  sub_24E60169C(a6, v84, &qword_27F2129B0, &unk_24F945320);
  v69 = v26;
  v67 = *(v26 + 16);
  v72 = a11;
  (v67)(v31, a11, v25);
  v71 = a13;
  sub_24E60169C(a13, v24, &qword_27F2218B0, &unk_24F975980);
  v33 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v34 = sub_24EEF0A68(a1);
  v36 = v35;

  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v34;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v36;
  v37 = (v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v38 = v73;
  *v37 = v68;
  v37[1] = v38;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v77;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v75;
  sub_24E60169C(v84, v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v76;
  swift_beginAccess();
  *(v13 + v33) = v78;

  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v75 = v31;
  v39 = v67;
  (v67)(v28, v31, v25);
  v76 = v24;
  v40 = v24;
  v41 = v80;
  sub_24E60169C(v40, v80, &qword_27F2218B0, &unk_24F975980);
  *(v13 + 16) = v82;
  v73 = v28;
  v39(v13 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v28, v25);
  v68 = v13;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v79;
  v42 = v81;
  sub_24E60169C(v41, v81, &qword_27F2218B0, &unk_24F975980);
  v43 = sub_24F9285B8();
  v67 = *(v43 - 8);
  v44 = *(v67 + 48);
  v45 = v43;
  if ((v44)(v42, 1) == 1)
  {

    sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
    v46 = *(v69 + 8);
    v46(v72, v25);
    sub_24E601704(v74, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v41, &qword_27F2218B0, &unk_24F975980);
    v46(v73, v25);
    sub_24E601704(v76, &qword_27F2218B0, &unk_24F975980);
    v46(v75, v25);
    sub_24E601704(v84, &qword_27F2129B0, &unk_24F945320);
    v47 = v42;
    v48 = &qword_27F2218B0;
    v49 = &unk_24F975980;
  }

  else
  {
    v50 = v44;
    v51 = v69;
    v52 = qword_27F2105F0;

    if (v52 != -1)
    {
      swift_once();
    }

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v53, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v54 = v83;
    v55 = v25;
    v56 = v51;
    v57 = v45;
    v58 = v67;
    if (v83)
    {
    }

    v59 = *(v58 + 8);
    v59(v81, v45);
    v60 = v80;
    if (v54)
    {
      v61 = v66;
      sub_24E60169C(v80, v66, &qword_27F2218B0, &unk_24F975980);
      if (v50(v61, 1, v57) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
        v65 = *(v56 + 8);
        v65(v72, v55);
        sub_24E601704(v74, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v60, &qword_27F2218B0, &unk_24F975980);
        v65(v73, v55);
        sub_24E601704(v76, &qword_27F2218B0, &unk_24F975980);
        v65(v75, v55);
        sub_24E601704(v84, &qword_27F2129B0, &unk_24F945320);
        v59(v61, v57);
        return v68;
      }

      sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
      v62 = *(v56 + 8);
      v62(v72, v55);
      sub_24E601704(v74, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v60, &qword_27F2218B0, &unk_24F975980);
      v62(v73, v55);
      sub_24E601704(v76, &qword_27F2218B0, &unk_24F975980);
      v62(v75, v55);
      sub_24E601704(v84, &qword_27F2129B0, &unk_24F945320);
      v47 = v61;
      v48 = &qword_27F2218B0;
      v49 = &unk_24F975980;
    }

    else
    {

      sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
      v63 = *(v56 + 8);
      v63(v72, v55);
      sub_24E601704(v74, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v60, &qword_27F2218B0, &unk_24F975980);
      v63(v73, v55);
      sub_24E601704(v76, &qword_27F2218B0, &unk_24F975980);
      v63(v75, v55);
      v47 = v84;
      v48 = &qword_27F2129B0;
      v49 = &unk_24F945320;
    }
  }

  sub_24E601704(v47, v48, v49);
  return v68;
}

uint64_t SearchFocusPage.__deallocating_deinit()
{
  GenericPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchFocusPage(uint64_t a1)
{
  result = qword_27F225678;
  if (!qword_27F225678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Interpolator.init(fromValue:toValue:curve:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v9 = type metadata accessor for Interpolator(0, a3, a4, a3);
  v10 = *(a3 - 8);
  v11 = *(v10 + 16);
  v11(&a5[*(v9 + 36)], a1, a3);
  v11(&a5[*(v9 + 40)], a2, a3);
  v12 = TimingCurve.caMediaTimingFunction.getter();
  v13 = *(v10 + 8);
  v13(a2, a3);
  result = (v13)(a1, a3);
  *a5 = v12;
  return result;
}

uint64_t Interpolator.value(forInput:)(uint64_t a1, double a2)
{
  *&a2 = a2;
  [*v2 _solveForInput_];
  return (*(*(a1 + 24) + 8))(v2 + *(a1 + 36), v2 + *(a1 + 40), v4);
}

{
  *&a2 = a2;
  [*v2 _solveForInput_];
  return (*(*(a1 + 24) + 8))(v2 + *(a1 + 36), v2 + *(a1 + 40), v4);
}

uint64_t sub_24EA2D350(uint64_t a1)
{
  result = sub_24EA2D7C4();
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

uint64_t sub_24EA2D3D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6 + ((v6 + 8) & ~v6)) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_24EA2D568(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9 + ((v9 + 8) & ~v9)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

unint64_t sub_24EA2D7C4()
{
  result = qword_27F225708;
  if (!qword_27F225708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F225708);
  }

  return result;
}

id sub_24EA2D820(uint64_t a1)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v6 = v5;
    v7 = [v3 valueWithObject:sub_24F92CDE8() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EA2D910()
{
  result = qword_27F225710;
  if (!qword_27F225710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225710);
  }

  return result;
}

unint64_t sub_24EA2D968()
{
  result = qword_27F225718;
  if (!qword_27F225718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225718);
  }

  return result;
}

unint64_t sub_24EA2D9C0()
{
  result = qword_27F225720;
  if (!qword_27F225720)
  {
    type metadata accessor for PersonalizedOfferContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225720);
  }

  return result;
}

uint64_t sub_24EA2DA2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_24EA2DAEC;

  return sub_24EA2DBFC(v5, v6, a3, v8);
}

uint64_t sub_24EA2DAEC(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_24EA2DBFC(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4[8] = a2;
  v4[9] = a3;
  v4[7] = a1;
  v5 = sub_24F920788();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = sub_24F9207B8();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048, &qword_24F9762B0);
  v4[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6D0, &unk_24F95CD70);
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v4[25] = v9;
  v10 = *(v9 - 8);
  v4[26] = v10;
  v4[27] = *(v10 + 64);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EA2DEE4, 0, 0);
}

uint64_t sub_24EA2DEE4()
{
  *(v0 + 240) = sub_24F92B7F8();
  *(v0 + 248) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EA2DF7C, v2, v1);
}

uint64_t sub_24EA2DF7C()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 256) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24EA2E004, 0, 0);
}

uint64_t sub_24EA2E004(uint64_t a1)
{
  *(v1 + 264) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EA2E090, v3, v2);
}

uint64_t sub_24EA2E090()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[26];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E80BDF0(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v5 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef;
  swift_beginAccess();
  v6 = *(v4 + 16);
  v0[34] = v6;
  v0[35] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1 + v5, v3);

  return MEMORY[0x2822009F8](sub_24EA2E1D4, 0, 0);
}

uint64_t sub_24EA2E1D4()
{
  v1 = v0[34];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[9];
  v8 = sub_24F921038();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v1(v3, v2, v5);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  (*(v4 + 32))(v10 + v9, v3, v5);
  v11 = MEMORY[0x277D0CE08];
  sub_24E80BDF0(&qword_27F21E6D8, MEMORY[0x277D0CE08], MEMORY[0x277D0CE20]);
  sub_24E80BDF0(&qword_27F21E6E0, v11, MEMORY[0x277D0CE10]);

  sub_24F920A28();
  v12 = swift_task_alloc();
  v0[36] = v12;
  *v12 = v0;
  v12[1] = sub_24EA2E3DC;
  v13 = v0[22];

  return MEMORY[0x282164EA8](v13);
}

uint64_t sub_24EA2E3DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[37] = a1;
  v4[38] = v1;

  (*(v3[23] + 8))(v3[24], v3[22]);
  if (v1)
  {
    v5 = sub_24EA2EAB4;
  }

  else
  {
    v5 = sub_24EA2E54C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EA2E54C()
{
  v1 = v0[37];
  if (!*(v1 + 16))
  {
    goto LABEL_13;
  }

  v58 = *(v1 + 16);
  v2 = (v0[14] + 8);
  v3 = v0[17];
  v6 = *(v3 + 16);
  v4 = v3 + 16;
  v5 = v6;
  v7 = (v4 - 8);
  v8 = v0[38];
  v9 = (*(v4 + 64) + 32) & ~*(v4 + 64);
  v59 = *(v4 + 56);
  v6(v0[18], v1 + v9, v0[16]);
  sub_24F9207A8();
  v10 = sub_24F920F08();
  v60 = v2;
  if (v8)
  {
    v12 = (v4 - 8);
    v13 = v0[29];
    v14 = v0[25];
    v15 = v0[26];
    v16 = v0[18];
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[13];

    (*v60)(v18, v19);
    (*v12)(v16, v17);
    (*(v15 + 8))(v13, v14);

    v20 = v0[1];

    return v20();
  }

  v22 = v11;
  v55 = v5;
  v56 = v1;
  v24 = v0[7];
  v23 = v0[8];
  v25 = v10;
  v54 = *v2;
  (*v2)(v0[15], v0[13]);
  v57 = (v4 - 8);
  if (v25 == v24 && v22 == v23)
  {
LABEL_8:

    goto LABEL_10;
  }

  v26 = sub_24F92CE08();

  if (v26)
  {
LABEL_10:

    v27 = v0[29];
    v28 = v0[25];
    v29 = v0[26];
    v31 = v0[19];
    v30 = v0[20];
    v32 = v0[16];
    v34 = v0[11];
    v33 = v0[12];
    v35 = v0[10];
    (*(v0[17] + 32))(v31, v0[18], v32);
    sub_24F920798();
    (*v57)(v31, v32);
    sub_24F920778();
    (*(v34 + 8))(v33, v35);
    (*(v29 + 8))(v27, v28);
    v36 = sub_24F91F648();
    v37 = 1;
    if ((*(*(v36 - 8) + 48))(v30, 1, v36) != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v53 = *v7;
  result = (*v7)(v0[18], v0[16]);
  if (v58 == 1)
  {
LABEL_13:
    v38 = v0[29];
    v39 = v0[25];
    v40 = v0[26];
    v41 = v0[20];

    (*(v40 + 8))(v38, v39);
    v42 = sub_24F91F648();
    (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
LABEL_14:
    v37 = 0;
LABEL_15:
    sub_24E601704(v0[20], &unk_27F22EC30, &qword_24F939880);

    v43 = v0[1];

    return v43(v37);
  }

  v44 = v59 + v9;
  v45 = 1;
  while (v45 < *(v56 + 16))
  {
    v55(v0[18], v0[37] + v44, v0[16]);
    sub_24F9207A8();
    v46 = sub_24F920F08();
    v48 = v47;
    v50 = v0[7];
    v49 = v0[8];
    v54(v0[15], v0[13]);
    if (v46 == v50 && v48 == v49)
    {
      goto LABEL_8;
    }

    v52 = sub_24F92CE08();

    if (v52)
    {
      goto LABEL_10;
    }

    ++v45;
    result = v53(v0[18], v0[16]);
    v44 += v59;
    if (v58 == v45)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA2EAB4()
{
  (*(v0[26] + 8))(v0[29], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EA2EBAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EA2EC7C(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24E614970;

  return sub_24E80A2C0(a1, a2, v8, v2 + v7);
}

uint64_t AppEventDetailPage.__allocating_init(appEvent:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v56 = a8;
  LODWORD(v55) = a6;
  v54 = a5;
  v61 = a9;
  v62 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v13 - 8);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v21 = sub_24F928818();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  v57 = a1;
  v58 = a2;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_appEvent) = a1;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_artwork) = a2;
  v59 = a3;
  v60 = a4;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_video) = a3;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_shareAction) = a4;
  v26 = v62;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_mediaOverlayStyle) = *v54;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_includeBorderInDarkMode) = v55;
  v27 = *(v22 + 16);
  v27(v24, v26, v21);
  v28 = v61;
  sub_24E90A7EC(v61, v20);
  *(v25 + 16) = 0;
  v27((v25 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v24, v21);
  *(v25 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v56;
  sub_24E90A7EC(v20, v17);
  v29 = sub_24F9285B8();
  v55 = *(v29 - 8);
  v30 = *(v55 + 48);
  v53 = v29;
  v51 = v30;
  if ((v30)(v17, 1) == 1)
  {
    sub_24E90A85C(v28);
    v31 = *(v22 + 8);
    v31(v26, v21);
    sub_24E90A85C(v20);
    v31(v24, v21);
    v32 = v17;
  }

  else
  {
    v54 = v17;
    v49 = v24;
    v50 = v22;
    v33 = qword_27F2105F0;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v34, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v35 = v63;
    v36 = v20;
    v37 = v55;
    v38 = v53;
    if (v63)
    {
    }

    v39 = *(v37 + 8);
    v39(v54, v38);
    v40 = v21;
    if (!v35)
    {

      sub_24E90A85C(v61);
      v45 = *(v50 + 8);
      v45(v62, v21);
      sub_24E90A85C(v36);
      v45(v49, v21);
      return v25;
    }

    v41 = v52;
    sub_24E90A7EC(v36, v52);
    v42 = v51(v41, 1, v38);
    v43 = v50;
    if (v42 != 1)
    {
      sub_24ECDF110();

      sub_24E90A85C(v61);
      v46 = *(v43 + 8);
      v46(v62, v40);
      sub_24E90A85C(v36);
      v46(v49, v40);
      v39(v41, v38);
      return v25;
    }

    sub_24E90A85C(v61);
    v44 = *(v43 + 8);
    v44(v62, v40);
    sub_24E90A85C(v36);
    v44(v49, v40);
    v32 = v41;
  }

  sub_24E90A85C(v32);
  return v25;
}

uint64_t AppEventDetailPage.init(appEvent:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v55 = a5;
  v56 = a8;
  LODWORD(v57) = a6;
  v62 = a9;
  v63 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v14 - 8);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  v22 = sub_24F928818();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v59 = a2;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_appEvent) = a1;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_artwork) = a2;
  v60 = a3;
  v61 = a4;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_video) = a3;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_shareAction) = a4;
  v27 = v63;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_mediaOverlayStyle) = *v55;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_includeBorderInDarkMode) = v57;
  v28 = *(v23 + 16);
  v28(v26, v27, v22, v24);
  v29 = v62;
  sub_24E90A7EC(v62, v21);
  *(v9 + 16) = 0;
  (v28)(v9 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v26, v22);
  v57 = v9;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v56;
  v30 = v18;
  sub_24E90A7EC(v21, v18);
  v31 = sub_24F9285B8();
  v55 = *(v31 - 8);
  v53 = *(v55 + 48);
  if (v53(v30, 1, v31) == 1)
  {
    sub_24E90A85C(v29);
    v32 = *(v23 + 8);
    v32(v27, v22);
    sub_24E90A85C(v21);
    v32(v26, v22);
    v33 = v30;
  }

  else
  {
    v50 = v31;
    v51 = v26;
    v52 = v23;
    v34 = qword_27F2105F0;

    if (v34 != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v35, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v36 = v64;
    v37 = v21;
    v38 = v55;
    if (v64)
    {
    }

    v39 = *(v38 + 8);
    v40 = v50;
    v39(v30, v50);
    v41 = v22;
    if (!v36)
    {

      sub_24E90A85C(v62);
      v46 = *(v52 + 8);
      v46(v63, v22);
      sub_24E90A85C(v37);
      v46(v51, v22);
      return v57;
    }

    v42 = v54;
    sub_24E90A7EC(v37, v54);
    v43 = v53(v42, 1, v40);
    v44 = v52;
    if (v43 != 1)
    {
      sub_24ECDF110();

      sub_24E90A85C(v62);
      v47 = *(v44 + 8);
      v47(v63, v41);
      sub_24E90A85C(v37);
      v47(v51, v41);
      v39(v42, v40);
      return v57;
    }

    sub_24E90A85C(v62);
    v45 = *(v44 + 8);
    v45(v63, v41);
    sub_24E90A85C(v37);
    v45(v51, v41);
    v33 = v42;
  }

  sub_24E90A85C(v33);
  return v57;
}

char *AppEventDetailPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v47 = v3;
  v41 = *v3;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  v12 = sub_24F928388();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12);
  v43 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v42 = v40 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v40 - v17;
  type metadata accessor for AppEvent(0);
  v50 = a1;
  sub_24F928398();
  v19 = *(v7 + 16);
  v51 = v6;
  v52 = a2;
  v20 = v19;
  (v19)(v11, a2, v6);
  sub_24EA30380(&qword_27F225728, type metadata accessor for AppEvent, &protocol conformance descriptor for AppPromotion);
  sub_24F929548();
  v21 = v53;
  if (v53)
  {
    v41 = v7;
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v46 = v7 + 16;
    v22 = v51;
    (v20)(v11, v52);
    v40[0] = v20;
    sub_24EA30380(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    v23 = v53;
    type metadata accessor for Video(0);
    sub_24F928398();
    v24 = v52;
    (v20)(v11, v52, v22);
    sub_24EA30380(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
    sub_24F929548();
    v25 = v53;
    v20 = v47;
    *&v47[OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_appEvent] = v21;
    *&v20[OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_artwork] = v23;
    *&v20[OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_video] = v25;
    type metadata accessor for Action(0);
    v40[1] = v25;

    v40[3] = v21;

    v40[2] = v23;

    v26 = v50;
    sub_24F928398();
    v27 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v24);
    v29 = v48;
    v28 = v49;
    v30 = *(v48 + 8);
    v30(v18, v49);
    *&v20[OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_shareAction] = v27;
    sub_24F928398();
    sub_24EA303C8();
    sub_24F928208();
    v30(v18, v28);
    v20[OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_mediaOverlayStyle] = v53;
    v31 = v42;
    sub_24F928398();
    LOBYTE(v27) = sub_24F928278();
    v30(v31, v28);
    v20[OBJC_IVAR____TtC12GameStoreKit18AppEventDetailPage_includeBorderInDarkMode] = v27 & 1;
    v32 = v43;
    (*(v29 + 16))(v43, v26, v28);
    v33 = v44;
    (v40[0])(v44, v24, v51);
    v34 = v45;
    v35 = BasePage.init(deserializing:using:)(v32, v33);
    if (!v34)
    {
      v20 = v35;
    }

    (*(v41 + 8))(v52, v51);
    v30(v50, v49);
  }

  else
  {
    v36 = sub_24F92AC38();
    sub_24EA30380(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v37 = 0x746E657645707061;
    v38 = v41;
    v37[1] = 0xE800000000000000;
    v37[2] = v38;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    (*(v7 + 8))(v52, v51);
    (*(v48 + 8))(v50, v49);
    type metadata accessor for AppEventDetailPage(0);
    swift_deallocPartialClassInstance();
  }

  return v20;
}

double sub_24EA30100()
{

  return result;
}

uint64_t AppEventDetailPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AppEventDetailPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppEventDetailPage(uint64_t a1)
{
  result = qword_27F225738;
  if (!qword_27F225738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA30380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EA303C8()
{
  result = qword_27F225730;
  if (!qword_27F225730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225730);
  }

  return result;
}

uint64_t sub_24EA304D0()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F225748);
  __swift_project_value_buffer(v4, qword_27F225748);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

id sub_24EA30688(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v58 = a2;
  v60 = a1;
  v61 = a5;
  v56 = a4;
  v5 = sub_24F928418();
  MEMORY[0x28223BE20](v5 - 8);
  v57 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92AC68();
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v52 - v11;
  v13 = sub_24F9285B8();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v52 - v21;
  v23 = v59;
  sub_24F92C2D8();
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v59 = v12;
    v53 = v7;
    v54 = v9;
    (*(v17 + 16))(v19, v22, v16);
    sub_24F9285A8();
    v25 = sub_24EF783E4(v19, v15);
    v27 = v26;
    v29 = v28;
    v30 = swift_allocObject();
    v31 = v56;
    v30[2] = v56;
    v30[3] = v25;
    v30[4] = v27;
    v30[5] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225788, &qword_24F9763D0);
    v32 = v31;
    v56 = v25;

    v33 = sub_24F92A9E8();
    v34 = sub_24F92B858();
    v35 = v59;
    (*(*(v34 - 8) + 56))(v59, 1, 1, v34);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = &unk_24F9763C8;
    v36[5] = v30;
    v36[6] = v33;

    sub_24E6959D8(0, 0, v35, &unk_24F9763D8, v36);

    v37 = swift_allocObject();
    v38 = v61;
    *(v37 + 16) = v33;
    *(v37 + 24) = v38;
    sub_24F9298F8();

    v40 = MEMORY[0x25304F260](v39);
    if (v40)
    {
      v41 = v40;
      v52[1] = v33;
      v59 = v29;
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + 24) = 1;
      *(v42 + 32) = v41;
      *(v42 + 40) = sub_24EA33314;
      *(v42 + 48) = v37;
      v43 = v60;

      v44 = v54;
      sub_24F92AC48();

      v51 = sub_24F92AC58();

      (*(v55 + 8))(v44, v53);
      (*(v17 + 8))(v22, v16);
LABEL_10:
      sub_24EA320AC(v58, "MetricIdentifierPromise");
      return v51;
    }

    sub_24EA32FE4();
    v24 = swift_allocError();
    *v45 = 0;
    swift_willThrow();

    (*(v17 + 8))(v22, v16);
  }

  if (qword_27F210108 != -1)
  {
    swift_once();
  }

  v46 = sub_24F92AAE8();
  __swift_project_value_buffer(v46, qword_27F225748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  swift_getErrorValue();
  v47 = v62;
  v48 = v63;
  v64[3] = v63;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  (*(*(v48 - 8) + 16))(boxed_opaque_existential_1, v47, v48);
  sub_24F9283C8();
  sub_24E857CC8(v64);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v51 = result;
    sub_24EA329B0(v61, "MetricIdentifier");

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA30E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24EA30E78, 0, 0);
}

uint64_t sub_24EA30E78()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_24EA30F30;
  v4 = v0[5];

  return sub_24EF73034(v2, 0, v4, v1);
}

uint64_t sub_24EA30F30(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;

    return MEMORY[0x2822009F8](sub_24EA3108C, 0, 0);
  }
}

uint64_t sub_24EA3108C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 72);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_24EA310B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *a1;
  v11 = a1[1];

  v7 = sub_24F92CF68();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:{a3, v10, v11}];
  result = swift_unknownObjectRelease();
  if (v8)
  {
    *a4 = v8;
    return sub_24EA32720(a2, "MetricIdentifier");
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24EA311EC(id a1)
{
  v3 = sub_24F9285B8();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  sub_24F92C2D8();
  if (v1)
  {
    return a1;
  }

  (*(v7 + 16))(v9, v12, v6);
  sub_24F9285A8();
  v13 = sub_24EF783E4(v9, v5);
  v15 = v14;
  v17 = v16;
  v18 = v13;
  v26 = v13;

  v20 = sub_24EF73DFC(v18, 0, v15, v17);
  v22 = v21;
  v23 = v26;

  v25[0] = v20;
  v25[1] = v22;

  v24 = sub_24F92CF68();
  a1 = [objc_opt_self() valueWithObject:v24 inContext:a1];
  result = swift_unknownObjectRelease();
  if (a1)
  {
    (*(v7 + 8))(v12, v6);

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA31548(const char *a1, const char *a2, const char *a3, uint64_t a4)
{
  v43 = a4;
  v37 = a3;
  v41 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_24F922028();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v14 = sub_24F922058();
  __swift_project_value_buffer(v14, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v15 = sub_24F922038();
  v16 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v17 = v5;
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v15, v16, v19, a2, "", v18, 2u);
    v20 = v18;
    v5 = v17;
    MEMORY[0x2530542D0](v20, -1, -1);
  }

  v21 = *(v6 + 16);
  v21(v10, v13, v5);
  sub_24F922098();
  swift_allocObject();
  v38 = sub_24F922088();
  v22 = v6 + 8;
  v23 = *(v6 + 8);
  v39 = v22;
  v23(v13, v5);
  sub_24F922038();
  v24 = v44;
  sub_24F921FF8();
  v25 = sub_24F922038();
  v26 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v27 = v5;
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v25, v26, v29, v37, "", v28, 2u);
    v30 = v28;
    v5 = v27;
    v24 = v44;
    MEMORY[0x2530542D0](v30, -1, -1);
  }

  v21(v10, v24, v5);
  swift_allocObject();
  v31 = sub_24F922088();
  v23(v24, v5);
  sub_24E69A5C4(0, &qword_27F21C8C8, 0x277CD4640);
  v32 = sub_24F92C448();
  MEMORY[0x28223BE20](v32);
  v34 = v41;
  v33 = v42;
  *(&v37 - 6) = v38;
  *(&v37 - 5) = v34;
  *(&v37 - 4) = v33;
  *(&v37 - 3) = v31;
  *(&v37 - 2) = ObjectType;
  v35 = sub_24F92C458();

  return v35;
}

id sub_24EA31920(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v52 = a2;
  v54 = a1;
  v55 = a5;
  v50 = a4;
  v5 = sub_24F928418();
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92AC68();
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_24F9285B8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = v53;
  sub_24F92C2D8();
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v53 = v12;
    v47 = v7;
    v48 = v9;
    (*(v15 + 16))(v17, v20, v14);
    sub_24F9285A8();
    sub_24EA32D90();
    v23 = sub_24F92B678();
    v24 = swift_allocObject();
    v25 = v50;
    *(v24 + 16) = v50;
    *(v24 + 24) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225778, &qword_24F9763A8);
    v26 = v25;
    v27 = sub_24F92A9E8();
    v28 = sub_24F92B858();
    v29 = v53;
    (*(*(v28 - 8) + 56))(v53, 1, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = &unk_24F9763A0;
    v30[5] = v24;
    v30[6] = v27;

    sub_24E6959D8(0, 0, v29, &unk_24F9763B0, v30);

    v31 = swift_allocObject();
    v32 = v55;
    *(v31 + 16) = v27;
    *(v31 + 24) = v32;
    sub_24F9298F8();

    v34 = MEMORY[0x25304F260](v33);
    if (v34)
    {
      v35 = v34;
      v36 = v20;
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 1;
      *(v37 + 32) = v35;
      *(v37 + 40) = sub_24EA32FAC;
      *(v37 + 48) = v31;
      v38 = v54;

      v39 = v48;
      sub_24F92AC48();

      v46 = sub_24F92AC58();

      (*(v49 + 8))(v39, v47);
      (*(v15 + 8))(v36, v14);
LABEL_10:
      sub_24EA320AC(v52, "MetricFieldsPromise");
      return v46;
    }

    sub_24EA32FE4();
    v22 = swift_allocError();
    *v40 = 0;
    swift_willThrow();

    (*(v15 + 8))(v20, v14);
  }

  if (qword_27F210108 != -1)
  {
    swift_once();
  }

  v41 = sub_24F92AAE8();
  __swift_project_value_buffer(v41, qword_27F225748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  swift_getErrorValue();
  v42 = v56;
  v43 = v57;
  v58[3] = v57;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  (*(*(v43 - 8) + 16))(boxed_opaque_existential_1, v42, v43);
  sub_24F9283C8();
  sub_24E857CC8(v58);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v46 = result;
    sub_24EA329B0(v55, "MetricFields");

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA320AC(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_24F922068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F922028();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v10 = sub_24F922058();
  __swift_project_value_buffer(v10, qword_27F23DAC0);
  v11 = sub_24F922038();
  sub_24F922078();
  v12 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24EA3233C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24EA32360, 0, 0);
}

uint64_t sub_24EA32360()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_24EA32408;
  v2 = *(v0 + 32);

  return sub_24EF74798(v2, 0);
}

uint64_t sub_24EA32408(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_24EA32554, 0, 0);
  }
}

uint64_t sub_24EA32578(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a1;
  v11[3] = sub_24F929638();
  v11[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v11);

  v8 = a1;
  sub_24F929628();
  sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  v9 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_24EA32660@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  v7 = sub_24F92CF68();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:a3];
  result = swift_unknownObjectRelease();
  if (v8)
  {
    *a4 = v8;
    return sub_24EA32720(a2, "MetricFields");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EA32720(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_24F922068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F922028();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v10 = sub_24F922058();
  __swift_project_value_buffer(v10, qword_27F23DAC0);
  v11 = sub_24F922038();
  sub_24F922078();
  v12 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "success=true";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24EA329B0(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_24F922068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F922028();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v10 = sub_24F922058();
  __swift_project_value_buffer(v10, qword_27F23DAC0);
  v11 = sub_24F922038();
  sub_24F922078();
  v12 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "success=false";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_24EA32D90()
{
  result = qword_27F225770;
  if (!qword_27F225770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225770);
  }

  return result;
}

uint64_t sub_24EA32DE4()
{

  return swift_deallocObject();
}

uint64_t sub_24EA32E24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24EA3233C(a1, v5, v4);
}

uint64_t sub_24EA32ED0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24E695134(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_24EA32FE4()
{
  result = qword_27F225780;
  if (!qword_27F225780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225780);
  }

  return result;
}

uint64_t sub_24EA330E8()
{

  return swift_deallocObject();
}

uint64_t sub_24EA33130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EA30E50(a1, v4, v5, v7, v6);
}

uint64_t sub_24EA331F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24E694E50(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_9Tm_1()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm_1()
{

  return swift_deallocObject();
}

double UnboundedCache.init(removeConditions:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = sub_24F92AEA8();
  type metadata accessor for Box(0, v10, v11, v12);
  swift_getTupleTypeMetadata2();
  v13 = sub_24F92B608();
  v14 = sub_24E9065F8(v13, a2, a3, a4);

  *&v20 = v14;
  *a5 = Box.__allocating_init(value:)(&v20);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = v15;
  if (v9)
  {

    sub_24EC61F04(sub_24EA34034, v16, &v20);
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v17 = v21;
  *(a5 + 8) = v20;
  *(a5 + 24) = v17;
  if ((v9 & 2) != 0)
  {
    sub_24EC61F2C(sub_24EA34034, v16, &v20);
  }

  else
  {

    v20 = 0u;
    v21 = 0u;
  }

  v18 = v21;
  *(a5 + 40) = v20;
  *(a5 + 56) = v18;

  return result;
}

double sub_24EA335D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    v9[2] = a2;
    v9[3] = a3;
    v9[4] = a4;
    Box.write(with:)(sub_24EA343CC, v9);
  }

  return result;
}

uint64_t UnboundedCache.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4[2] = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = a1;
  v2 = sub_24F92C4A8();
  return Box.read<A>(with:)(sub_24EA34040, v4, v2);
}

uint64_t UnboundedCache.subscript.setter(uint64_t a1, uint64_t a2, __n128 *a3)
{
  sub_24EA34054(a1, a2, a3);
  (*(*(a3[1].n128_u64[0] - 8) + 8))(a2);
  v6 = sub_24F92C4A8();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t sub_24EA337AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_24F92C4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  (*(v16 + 16))(&v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a4, v14);
  (*(v10 + 16))(v12, a3, v9);
  sub_24F92AEA8();
  return sub_24F92AED8();
}

uint64_t (*UnboundedCache.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xC0uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[15] = v3;
  v8[7] = a3;
  v8[16] = *(a3 + 24);
  v10 = sub_24F92C4A8();
  v9[17] = v10;
  v11 = *(v10 - 8);
  v9[18] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[19] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[19] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[20] = v13;
  v14 = *(a3 + 16);
  v9[21] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v9[22] = v15;
  if (v7)
  {
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v17 = malloc(*(v15 + 64));
  }

  v9[23] = v17;
  (*(v16 + 16))();
  UnboundedCache.subscript.getter(a2, a3);
  return sub_24EA33AF8;
}

void sub_24EA33AF8(void **a1, char a2, __n128 a3)
{
  v3 = *a1;
  if (a2)
  {
    v5 = v3[22];
    v4 = v3[23];
    v6 = v3[20];
    v7 = v3[21];
    v9 = v3[18];
    v8 = v3[19];
    v10 = v3[17];
    v19 = v3[16];
    v11 = v3[7];
    (*(v9 + 16))(v8, v6, v10, a3);
    v3[2] = v7;
    v3[3] = v19;
    v3[4] = *(v11 + 32);
    v3[5] = v4;
    v3[6] = v8;
    Box.write(with:)(sub_24EA343BC, v3);
    (*(v5 + 8))(v4, v7);
    v12 = *(v9 + 8);
    v12(v8, v10);
    v12(v6, v10);
  }

  else
  {
    v13 = v3[22];
    v4 = v3[23];
    v6 = v3[20];
    v14 = v3[21];
    v15 = v3[18];
    v8 = v3[19];
    v16 = v3[16];
    v17 = v3[17];
    v18 = v3[7];
    v3[10] = v14;
    v3[11] = v16;
    v3[12] = *(v18 + 32);
    v3[13] = v4;
    v3[14] = v6;
    Box.write(with:)(sub_24EA343BC, (v3 + 8));
    (*(v13 + 8))(v4, v14);
    (*(v15 + 8))(v6, v17);
  }

  free(v4);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t UnboundedCache.removeValue(forKey:)(uint64_t a1, __n128 *a2)
{
  v3[1] = a2[1];
  v4 = a2[2].n128_u64[0];
  v5 = a1;
  return Box.write(with:)(sub_24EA340AC, v3);
}

uint64_t sub_24EA33CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_24F92C4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24F92AEA8();
  sub_24F92AE58();
  return (*(v6 + 8))(v8, v5);
}

Swift::Void __swiftcall UnboundedCache.removeAll()()
{
  v1[1] = *(v0 + 16);
  v2 = *(v0 + 32);
  Box.write(with:)(sub_24EA34410, v1);
}

uint64_t sub_24EA33E60(uint64_t a1, uint64_t a2, __n128 *a3)
{
  sub_24EA34054(a1, a2, a3);
  (*(*(a3[1].n128_u64[0] - 8) + 8))(a2);
  v6 = sub_24F92C4A8();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*sub_24EA33F0C(void *a1, uint64_t a2, uint64_t a3))(void *a1)
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
  v6[4] = UnboundedCache.subscript.modify(v6, a2, a3);
  return sub_24E622878;
}

uint64_t sub_24EA33FC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EA33FFC()
{

  return swift_deallocObject();
}

uint64_t sub_24EA34054(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v4[1] = a3[1];
  v5 = a3[2].n128_u64[0];
  v6 = a2;
  v7 = a1;
  return Box.write(with:)(sub_24EA343BC, v4);
}

unint64_t sub_24EA340BC()
{
  result = qword_27F225790;
  if (!qword_27F225790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225790);
  }

  return result;
}

unint64_t sub_24EA34114()
{
  result = qword_27F225798;
  if (!qword_27F225798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225798);
  }

  return result;
}

unint64_t sub_24EA3416C()
{
  result = qword_27F2257A0;
  if (!qword_27F2257A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2257A0);
  }

  return result;
}

unint64_t sub_24EA341C4()
{
  result = qword_27F2257A8[0];
  if (!qword_27F2257A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F2257A8);
  }

  return result;
}

__n128 sub_24EA342CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_24EA34358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_24EA34448(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F92C918();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_24F9285B8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10, v12);
  MEMORY[0x253050800](v14);
  sub_24E785278();
  sub_24F9282E8();
  if (v2)
  {
    v26 = a2;
    v27 = a1;

    v30 = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    if (swift_dynamicCast())
    {

      v16 = v28;
      (*(v28 + 32))(v29, v9, v5);
      v17 = sub_24F92AC38();
      sub_24EA384E4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_24F93DE60;
      *(v20 + 32) = swift_allocError();
      v21 = v29;
      (*(v16 + 16))(v22, v29, v5);
      *v19 = &type metadata for SocialMenu;
      v19[1] = v20;
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D22538], v17);
      swift_willThrow();
      (*(v11 + 8))(v26, v10);
      v23 = sub_24F928388();
      (*(*(v23 - 8) + 8))(v27, v23);
      (*(v16 + 8))(v21, v5);
    }

    else
    {
      (*(v11 + 8))(v26, v10);
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v27, v25);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v24 = sub_24F928388();
    (*(*(v24 - 8) + 8))(a1, v24);
  }
}

void sub_24EA348EC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v35 = a5;
  v36 = sub_24F92C918();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = sub_24F9285B8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a2, v14, v16);
  MEMORY[0x253050800](v18);
  a3();
  v32 = a4;
  sub_24F9282E8();
  if (v5)
  {
    v31 = a2;
    v35 = a1;

    v37 = v5;
    v19 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    v20 = v36;
    if (swift_dynamicCast())
    {

      v21 = v33;
      v22 = v34;
      (*(v34 + 32))(v33, v13, v20);
      v23 = sub_24F92AC38();
      sub_24EA384E4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_24F93DE60;
      *(v26 + 32) = swift_allocError();
      (*(v22 + 16))(v27, v21, v20);
      *v25 = v32;
      v25[1] = v26;
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D22538], v23);
      swift_willThrow();
      (*(v15 + 8))(v31, v14);
      v28 = sub_24F928388();
      (*(*(v28 - 8) + 8))(v35, v28);
      (*(v22 + 8))(v21, v20);
    }

    else
    {
      (*(v15 + 8))(v31, v14);
      v30 = sub_24F928388();
      (*(*(v30 - 8) + 8))(v35, v30);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v29 = sub_24F928388();
    (*(*(v29 - 8) + 8))(a1, v29);
    *v35 = v37;
  }
}

void sub_24EA34D78(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F92C918();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_24F9285B8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10, v12);
  MEMORY[0x253050800](v14);
  sub_24E86A740();
  sub_24F9282E8();
  if (v2)
  {
    v27 = a2;
    v28 = a1;

    v30 = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    if (swift_dynamicCast())
    {

      v16 = v29;
      (*(v29 + 32))(v31, v9, v5);
      v17 = sub_24F92AC38();
      sub_24EA384E4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_24F93DE60;
      *(v20 + 32) = swift_allocError();
      v21 = v31;
      (*(v16 + 16))(v22, v31, v5);
      *v19 = &type metadata for MixedMediaItem;
      v19[1] = v20;
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D22538], v17);
      swift_willThrow();
      (*(v11 + 8))(v27, v10);
      v23 = sub_24F928388();
      (*(*(v23 - 8) + 8))(v28, v23);
      (*(v16 + 8))(v21, v5);
    }

    else
    {
      (*(v11 + 8))(v27, v10);
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v28, v25);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v24 = sub_24F928388();
    (*(*(v24 - 8) + 8))(a1, v24);
  }
}

void sub_24EA352A4(uint64_t a1, void *a2, uint64_t (*a3)(void, __n128), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v39 = a6;
  v37 = a5;
  v36 = sub_24F92C918();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = sub_24F9285B8();
  v16 = *(v15 - 1);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3(0, v17);
  (*(v16 + 16))(v19, a2, v15);
  MEMORY[0x253050800](v19);
  sub_24EA384E4(a4, v37, v39);
  v39 = a1;
  v21 = v38;
  sub_24F9282E8();
  if (v21)
  {
    v37 = v15;
    v38 = a2;

    v40 = v21;
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    v23 = v36;
    if (swift_dynamicCast())
    {

      v24 = v34;
      (*(v34 + 32))(v35, v14, v23);
      v25 = sub_24F92AC38();
      sub_24EA384E4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_24F93DE60;
      *(v28 + 32) = swift_allocError();
      v29 = v35;
      (*(v24 + 16))(v30, v35, v23);
      *v27 = v20;
      v27[1] = v28;
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D22538], v25);
      swift_willThrow();
      (*(v16 + 8))(v38, v37);
      v31 = sub_24F928388();
      (*(*(v31 - 8) + 8))(v39, v31);
      (*(v24 + 8))(v29, v23);
    }

    else
    {
      (*(v16 + 8))(v38, v37);
      v33 = sub_24F928388();
      (*(*(v33 - 8) + 8))(v39, v33);
    }
  }

  else
  {

    (*(v16 + 8))(a2, v15);
    v32 = sub_24F928388();
    (*(*(v32 - 8) + 8))(v39, v32);
  }
}

void sub_24EA357EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_24F92C918();
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = sub_24F9285B8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12, v14);
  MEMORY[0x253050800](v16);
  sub_24EA38490();
  sub_24F9282E8();
  if (v3)
  {
    v30 = a1;
    v31 = a2;

    *&v33 = v3;
    v17 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    if (swift_dynamicCast())
    {

      v18 = v35;
      v19 = v32;
      (*(v35 + 32))(v32, v11, v7);
      v20 = sub_24F92AC38();
      sub_24EA384E4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_24F93DE60;
      *(v23 + 32) = swift_allocError();
      (*(v18 + 16))(v24, v19, v7);
      *v22 = &type metadata for GamesUIDeepLinkTarget;
      v22[1] = v23;
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D22538], v20);
      swift_willThrow();
      (*(v13 + 8))(v31, v12);
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v30, v25);
      (*(v18 + 8))(v19, v7);
    }

    else
    {
      (*(v13 + 8))(v31, v12);
      v28 = sub_24F928388();
      (*(*(v28 - 8) + 8))(v30, v28);
    }
  }

  else
  {

    (*(v13 + 8))(a2, v12);
    v26 = sub_24F928388();
    (*(*(v26 - 8) + 8))(a1, v26);
    v27 = v34;
    *a3 = v33;
    *(a3 + 16) = v27;
  }
}

uint64_t Video.__allocating_init(id:videoUrl:preview:allowsAutoPlay:looping:canPlayFullScreen:playbackControls:autoPlayPlaybackControls:templateMediaEvent:templateClickEvent:segue:impressionMetrics:editorialMediaFlavor:editorialMediaPlacement:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13, unsigned __int8 *a14)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v54 = a12;
  v55 = a2;
  v50 = a10;
  v48 = a3;
  v49 = a9;
  v17 = sub_24F91F6B8();
  v52 = *(v17 - 8);
  v53 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v21 = *a7;
  v22 = *a8;
  v42 = *(a8 + 8);
  v23 = *a14;
  v46 = *a13;
  v47 = v23;
  v24 = v20 + OBJC_IVAR____TtC12GameStoreKit5Video_id;
  v51 = a1;
  sub_24E60169C(a1, &v58, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v59 + 1))
  {
    v25 = v59;
    *v24 = v58;
    *(v24 + 16) = v25;
    *(v24 + 32) = v60;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v22;
    v29 = v28;
    (*(v52 + 8))(v19, v53);
    v56 = v26;
    v57 = v29;
    v22 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v58, &qword_27F235830, &qword_24F93B8C0);
  }

  v41 = a11;
  sub_24E60169C(a11, v20 + OBJC_IVAR____TtC12GameStoreKit5Video_segue, qword_27F21B590, &unk_24F93BE30);
  sub_24E60169C(v54, v20 + OBJC_IVAR____TtC12GameStoreKit5Video_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v30 = OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl;
  v31 = sub_24F91F4A8();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v20 + v30, v55, v31);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit5Video_preview) = v48;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit5Video_allowsAutoPlay) = v43 & 1;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit5Video_looping) = v44 & 1;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit5Video_canPlayFullScreen) = v45 & 1;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit5Video_playbackControls) = v21;
  if (v42)
  {
    v33 = v21;
  }

  else
  {
    v33 = v22;
  }

  *(v20 + OBJC_IVAR____TtC12GameStoreKit5Video_autoPlayPlaybackControls) = v33;
  v34 = v49;
  sub_24E60169C(v49, v20 + OBJC_IVAR____TtC12GameStoreKit5Video_templateMediaEvent, &qword_27F21EB88, &unk_24F95FAF0);
  v35 = v50;
  sub_24E60169C(v50, v20 + OBJC_IVAR____TtC12GameStoreKit5Video_templateClickEvent, &qword_27F21EB88, &unk_24F95FAF0);

  sub_24F91F6A8();
  v36 = sub_24F91F668();
  v38 = v37;
  (*(v52 + 8))(v19, v53);
  *&v58 = v36;
  *(&v58 + 1) = v38;
  sub_24F92C7F8();

  sub_24E601704(v54, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v41, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v35, &qword_27F21EB88, &unk_24F95FAF0);
  sub_24E601704(v34, &qword_27F21EB88, &unk_24F95FAF0);
  (*(v32 + 8))(v55, v31);
  sub_24E601704(v51, &qword_27F235830, &qword_24F93B8C0);
  v39 = v47;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit5Video_editorialMediaFlavor) = v46;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit5Video_editorialMediaPlacement) = v39;
  return v20;
}

uint64_t Video.init(id:videoUrl:preview:allowsAutoPlay:looping:canPlayFullScreen:playbackControls:autoPlayPlaybackControls:templateMediaEvent:templateClickEvent:segue:impressionMetrics:editorialMediaFlavor:editorialMediaPlacement:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13, unsigned __int8 *a14)
{
  v15 = v14;
  v47 = a5;
  v48 = a6;
  v46 = a4;
  v57 = a2;
  v51 = a10;
  v49 = a3;
  v50 = a9;
  v19 = sub_24F91F6B8();
  v55 = *(v19 - 8);
  v56 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a7;
  v45 = *a8;
  v44 = *(a8 + 8);
  LODWORD(v20) = *a14;
  v52 = *a13;
  v53 = v20;
  v54 = a1;
  sub_24E60169C(a1, &v60, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v61 + 1))
  {
    v63 = v60;
    v64 = v61;
    v65 = v62;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v55 + 8))(v21, v56);
    v58 = v23;
    v59 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v60, &qword_27F235830, &qword_24F93B8C0);
  }

  v26 = v15 + OBJC_IVAR____TtC12GameStoreKit5Video_id;
  v27 = v64;
  *v26 = v63;
  *(v26 + 16) = v27;
  *(v26 + 32) = v65;
  v43 = a11;
  sub_24E60169C(a11, v15 + OBJC_IVAR____TtC12GameStoreKit5Video_segue, qword_27F21B590, &unk_24F93BE30);
  v42 = a12;
  sub_24E60169C(a12, v15 + OBJC_IVAR____TtC12GameStoreKit5Video_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v28 = OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl;
  v29 = sub_24F91F4A8();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v15 + v28, v57, v29);
  *(v15 + OBJC_IVAR____TtC12GameStoreKit5Video_preview) = v49;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit5Video_allowsAutoPlay) = v46 & 1;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit5Video_looping) = v47 & 1;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit5Video_canPlayFullScreen) = v48 & 1;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit5Video_playbackControls) = v22;
  v31 = v45;
  if (v44)
  {
    v31 = v22;
  }

  *(v15 + OBJC_IVAR____TtC12GameStoreKit5Video_autoPlayPlaybackControls) = v31;
  v32 = v50;
  sub_24E60169C(v50, v15 + OBJC_IVAR____TtC12GameStoreKit5Video_templateMediaEvent, &qword_27F21EB88, &unk_24F95FAF0);
  v33 = v51;
  sub_24E60169C(v51, v15 + OBJC_IVAR____TtC12GameStoreKit5Video_templateClickEvent, &qword_27F21EB88, &unk_24F95FAF0);

  sub_24F91F6A8();
  v34 = sub_24F91F668();
  v36 = v35;
  (*(v55 + 8))(v21, v56);
  *&v60 = v34;
  *(&v60 + 1) = v36;
  sub_24F92C7F8();

  sub_24E601704(v42, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v43, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v33, &qword_27F21EB88, &unk_24F95FAF0);
  sub_24E601704(v32, &qword_27F21EB88, &unk_24F95FAF0);
  (*(v30 + 8))(v57, v29);
  sub_24E601704(v54, &qword_27F235830, &qword_24F93B8C0);
  v37 = v15 + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId;
  v38 = v64;
  *v37 = v63;
  *(v37 + 16) = v38;
  *(v37 + 32) = v65;
  v39 = v53;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit5Video_editorialMediaFlavor) = v52;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit5Video_editorialMediaPlacement) = v39;
  return v15;
}

uint64_t Video.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Video.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Video.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v177 = a2;
  v169 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v4 - 8);
  v156 = &v149 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v172 = (&v149 - v7);
  v8 = sub_24F91F4A8();
  v174 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v165 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F9285B8();
  v178 = *(v10 - 8);
  v179 = v10;
  MEMORY[0x28223BE20](v10);
  v154 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v158 = &v149 - v13;
  MEMORY[0x28223BE20](v14);
  v163 = &v149 - v15;
  MEMORY[0x28223BE20](v16);
  v180 = &v149 - v17;
  MEMORY[0x28223BE20](v18);
  v173 = &v149 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v149 - v21;
  v23 = sub_24F91F6B8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_24F928388();
  v27 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v155 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v153 = &v149 - v30;
  MEMORY[0x28223BE20](v31);
  v157 = &v149 - v32;
  MEMORY[0x28223BE20](v33);
  v161 = &v149 - v34;
  MEMORY[0x28223BE20](v35);
  v160 = &v149 - v36;
  MEMORY[0x28223BE20](v37);
  v159 = &v149 - v38;
  MEMORY[0x28223BE20](v39);
  v162 = &v149 - v40;
  MEMORY[0x28223BE20](v41);
  v171 = &v149 - v42;
  MEMORY[0x28223BE20](v43);
  v176 = &v149 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = &v149 - v46;
  sub_24F928398();
  v48 = sub_24F928348();
  v182 = a1;
  v175 = v8;
  v152 = v23;
  v151 = v24;
  v150 = v26;
  if (v49)
  {
    v185 = v48;
    v186 = v49;
  }

  else
  {
    sub_24F91F6A8();
    v51 = sub_24F91F668();
    v53 = v52;
    (*(v24 + 8))(v26, v23);
    v185 = v51;
    v186 = v53;
  }

  sub_24F92C7F8();
  v50 = *(v27 + 8);
  v50(v47, v184);
  v183 = v50;
  v181 = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v54 = v190;
  v55 = v190 + OBJC_IVAR____TtC12GameStoreKit5Video_id;
  v56 = v188;
  *v55 = v187;
  *(v55 + 16) = v56;
  v168 = v55;
  *(v55 + 32) = v189;
  sub_24F929608();
  v57 = v176;
  sub_24F928398();
  v58 = v177;
  v59 = v178 + 16;
  v60 = *(v178 + 16);
  v61 = v179;
  v60(v173, v177, v179);
  sub_24F929548();
  v167 = OBJC_IVAR____TtC12GameStoreKit5Video_impressionMetrics;
  sub_24E6009C8(v22, v54 + OBJC_IVAR____TtC12GameStoreKit5Video_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v62 = v180;
  v170 = v59;
  v166 = v60;
  v60(v180, v58, v61);
  v63 = type metadata accessor for Action(0);
  sub_24F928398();
  v64 = static Action.tryToMakeInstance(byDeserializing:using:)(v57, v62);
  v183(v57, v184);
  if (v64)
  {
    v65 = sub_24EA384E4(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  v66 = v175;
  v67 = v171;
  v68 = v172;
  v69 = (v190 + OBJC_IVAR____TtC12GameStoreKit5Video_segue);
  *v69 = v64;
  v69[1] = 0;
  v69[2] = 0;
  v69[3] = v63;
  v172 = v69;
  v69[4] = v65;
  v70 = v182;
  sub_24F928398();
  sub_24F928268();
  v71 = v67;
  v72 = v183;
  v73 = v184;
  v183(v71, v184);
  v74 = v174;
  if ((*(v174 + 48))(v68, 1, v66) == 1)
  {
    sub_24E601704(v68, &qword_27F228530, &unk_24F93C6E0);
    v75 = sub_24F92AC38();
    sub_24EA384E4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v76 = 0x6C72556F65646976;
    v76[1] = 0xE800000000000000;
    v76[2] = v169;
    (*(*(v75 - 8) + 104))(v76, *MEMORY[0x277D22530], v75);
    swift_willThrow();
    v77 = *(v178 + 8);
    v78 = v179;
    v77(v177, v179);
    v72(v70, v73);
    v77(v180, v78);
LABEL_21:
    sub_24E6585F8(v168);
    sub_24E601704(v172, qword_27F21B590, &unk_24F93BE30);
    sub_24E601704(v190 + v167, &qword_27F213E68, &unk_24F93BC80);
    swift_deallocPartialClassInstance();
    return v190;
  }

  v79 = v165;
  (*(v74 + 32))(v165, v68, v66);
  v80 = *(v74 + 16);
  v149 = OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl;
  v80(v190 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v79, v66);
  type metadata accessor for Artwork(0);
  v81 = v162;
  v82 = v74;
  sub_24F928398();
  v83 = v163;
  v85 = v179;
  v84 = v180;
  v166(v163, v180, v179);
  v86 = v164;
  v87 = Artwork.__allocating_init(deserializing:using:)(v81, v83);
  v171 = v86;
  if (v86)
  {
    v88 = *(v178 + 8);
    v88(v177, v85);
    v183(v70, v184);
    v89 = *(v82 + 8);
    v89(v79, v66);
    v88(v84, v85);
    v89((v190 + v149), v66);
    goto LABEL_21;
  }

  v90 = v85;
  v91 = v190;
  *(v190 + OBJC_IVAR____TtC12GameStoreKit5Video_preview) = v87;
  v92 = v159;
  sub_24F928398();
  v93 = sub_24F928278();
  v94 = v92;
  v95 = v183;
  v96 = v184;
  v183(v94, v184);
  *(v91 + OBJC_IVAR____TtC12GameStoreKit5Video_allowsAutoPlay) = (v93 == 2) | v93 & 1;
  v97 = v160;
  sub_24F928398();
  v98 = sub_24F928278();
  v95(v97, v96);
  *(v91 + OBJC_IVAR____TtC12GameStoreKit5Video_looping) = (v98 == 2) | v98 & 1;
  v99 = v161;
  sub_24F928398();
  v100 = sub_24F928278();
  v95(v99, v96);
  *(v91 + OBJC_IVAR____TtC12GameStoreKit5Video_canPlayFullScreen) = (v100 == 2) | v100 & 1;
  v101 = v176;
  sub_24F928398();
  v102 = sub_24F928328();
  v95(v101, v96);
  if (v102)
  {
    v103 = 15;
    v104 = v180;
  }

  else
  {
    v105 = v157;
    sub_24F928398();
    v106 = v158;
    v104 = v180;
    v107 = v90;
    v166(v158, v180, v90);
    v108 = v171;
    sub_24EA348EC(v105, v106, sub_24E81BB84, &type metadata for VideoControls, &v187);
    v171 = v108;
    if (v108)
    {
      v109 = v96;
      v110 = v104;
      v111 = *(v178 + 8);
      v111(v177, v107);
      v112 = v70;
      goto LABEL_20;
    }

    v103 = v187;
  }

  v113 = OBJC_IVAR____TtC12GameStoreKit5Video_playbackControls;
  *(v190 + OBJC_IVAR____TtC12GameStoreKit5Video_playbackControls) = v103;
  v114 = v176;
  v115 = v182;
  sub_24F928398();
  v116 = sub_24F928328();
  v183(v114, v96);
  if ((v116 & 1) == 0)
  {
    v120 = v153;
    sub_24F928398();
    v121 = v154;
    v107 = v179;
    v166(v154, v104, v179);
    v122 = v171;
    sub_24EA348EC(v120, v121, sub_24E81BB84, &type metadata for VideoControls, &v187);
    v171 = v122;
    if (!v122)
    {
      v118 = v187;
      v119 = OBJC_IVAR____TtC12GameStoreKit5Video_autoPlayPlaybackControls;
      v117 = v190;
      goto LABEL_24;
    }

    v109 = v96;
    v110 = v104;
    v111 = *(v178 + 8);
    v111(v177, v107);
    v112 = v115;
LABEL_20:
    v183(v112, v109);
    v123 = v175;
    v124 = *(v174 + 8);
    v124(v165, v175);
    v111(v110, v107);
    v124((v190 + v149), v123);

    goto LABEL_21;
  }

  v117 = v190;
  v118 = *(v190 + v113);
  v119 = OBJC_IVAR____TtC12GameStoreKit5Video_autoPlayPlaybackControls;
LABEL_24:
  *(v117 + v119) = v118;
  sub_24F928698();
  sub_24F928398();
  v126 = v173;
  v127 = v179;
  v128 = v180;
  v129 = v166;
  v166(v173, v180, v179);
  v130 = v156;
  sub_24F929548();
  v131 = v190;
  sub_24E6009C8(v130, v190 + OBJC_IVAR____TtC12GameStoreKit5Video_templateMediaEvent, &qword_27F21EB88, &unk_24F95FAF0);
  sub_24F928398();
  v132 = v128;
  v133 = v127;
  v129(v126, v132, v127);
  v134 = v182;
  sub_24F929548();
  sub_24E6009C8(v130, v131 + OBJC_IVAR____TtC12GameStoreKit5Video_templateClickEvent, &qword_27F21EB88, &unk_24F95FAF0);
  v135 = v155;
  sub_24F928398();
  v136 = sub_24F928348();
  if (v137)
  {
    v185 = v136;
    v186 = v137;
  }

  else
  {
    v138 = v150;
    sub_24F91F6A8();
    v139 = sub_24F91F668();
    v141 = v140;
    (*(v151 + 8))(v138, v152);
    v185 = v139;
    v186 = v141;
  }

  sub_24F92C7F8();
  v183(v135, v184);
  v142 = v190;
  v143 = v190 + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId;
  v144 = v188;
  *v143 = v187;
  *(v143 + 16) = v144;
  *(v143 + 32) = v189;
  sub_24F928398();
  v145 = v173;
  v146 = v177;
  v147 = v166;
  v166(v173, v177, v133);
  sub_24EA37924();
  sub_24F929548();
  *(v142 + OBJC_IVAR____TtC12GameStoreKit5Video_editorialMediaFlavor) = v187;
  sub_24F928398();
  v147(v145, v146, v133);
  sub_24EA37978();
  sub_24F929548();
  v148 = *(v178 + 8);
  v148(v146, v133);
  v183(v134, v184);
  (*(v174 + 8))(v165, v175);
  v148(v180, v133);
  *(v142 + OBJC_IVAR____TtC12GameStoreKit5Video_editorialMediaPlacement) = v187;
  return v190;
}

unint64_t sub_24EA37924()
{
  result = qword_27F225830;
  if (!qword_27F225830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225830);
  }

  return result;
}

unint64_t sub_24EA37978()
{
  result = qword_27F225838;
  if (!qword_27F225838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225838);
  }

  return result;
}

uint64_t Video.videoUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static Video.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_24F91F418() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);
  v5 = *(a2 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);

  return _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v4, v5);
}

uint64_t Video.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Video_templateMediaEvent, &qword_27F21EB88, &unk_24F95FAF0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Video_templateClickEvent, &qword_27F21EB88, &unk_24F95FAF0);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit5Video_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Video_segue, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Video_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t Video.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Video_templateMediaEvent, &qword_27F21EB88, &unk_24F95FAF0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Video_templateClickEvent, &qword_27F21EB88, &unk_24F95FAF0);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit5Video_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Video_segue, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Video_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t Video.hashValue.getter()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EA37F80@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = Video.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EA37FE8()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EA38068()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EA380F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_24F91F418() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);
  v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);

  return _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v4, v5);
}

uint64_t type metadata accessor for Video(uint64_t a1)
{
  result = qword_27F225850;
  if (!qword_27F225850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA38240(uint64_t a1)
{
  sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    sub_24EA3843C(319, &qword_27F21EC20, MEMORY[0x277D21BB8]);
    if (v2 <= 0x3F)
    {
      sub_24EA3843C(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24EA3843C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24EA38490()
{
  result = qword_27F225868;
  if (!qword_27F225868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225868);
  }

  return result;
}

uint64_t sub_24EA384E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PreloadingFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *PreloadingFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F210688 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
  __swift_project_value_buffer(v2, qword_27F22E448);
  v3 = MEMORY[0x277D839B0];
  result = sub_24F929AD8();
  if (LOBYTE(v5[0]) != 2)
  {
    v5[3] = v3;
    LOBYTE(v5[0]) &= 1u;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

void *sub_24EA386A0(uint64_t a1)
{
  if (qword_27F210688 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
  __swift_project_value_buffer(v2, qword_27F22E448);
  v3 = MEMORY[0x277D839B0];
  result = sub_24F929AD8();
  if (LOBYTE(v5[0]) != 2)
  {
    v5[3] = v3;
    LOBYTE(v5[0]) &= 1u;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_24EA387C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EA38840(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PreloadingFieldsProvider(uint64_t a1)
{
  result = qword_27F225888;
  if (!qword_27F225888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Achievement.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v94 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225898, &qword_24F976890);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = v74 - v5;
  v95 = sub_24F9285B8();
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v87 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2258A0, &qword_24F976898);
  MEMORY[0x28223BE20](v7 - 8);
  v88 = v74 - v8;
  v9 = sub_24F91FEC8();
  v89 = *(v9 - 8);
  v90 = v9;
  MEMORY[0x28223BE20](v9);
  v81 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = v74 - v12;
  v13 = sub_24F9288E8();
  v85 = *(v13 - 8);
  v86 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v16 - 8);
  v80 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v91 = v74 - v19;
  v20 = sub_24F928388();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v74 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v74 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v74 - v31;
  v98 = a1;
  sub_24F928398();
  v79 = sub_24F928348();
  v34 = v33;
  v37 = *(v21 + 8);
  v36 = v21 + 8;
  v35 = v37;
  v37(v32, v20);
  if (!v34)
  {
    v51 = sub_24F92AC38();
    sub_24EA3A4F4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v53 = v52;
    v54 = sub_24F91FEF8();
    *v53 = 25705;
    v55 = 0xE200000000000000;
LABEL_8:
    v53[1] = v55;
    v53[2] = v54;
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D22530], v51);
    swift_willThrow();
    (*(v93 + 8))(v94, v95);
    return v35(v98, v20);
  }

  v92 = v34;
  sub_24F928398();
  v77 = sub_24F928348();
  v39 = v38;
  v35(v29, v20);
  if (!v39)
  {

    v51 = sub_24F92AC38();
    sub_24EA3A4F4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v53 = v56;
    v54 = sub_24F91FEF8();
    *v53 = 0x656C746974;
    v55 = 0xE500000000000000;
    goto LABEL_8;
  }

  v78 = v39;
  v40 = v35;
  sub_24F928398();
  v76 = sub_24F928348();
  v42 = v41;
  v35(v26, v20);
  if (v42)
  {
    v74[1] = v42;
    sub_24F928398();
    v44 = v85;
    v43 = v86;
    (*(v85 + 13))(v15, *MEMORY[0x277D21C40], v86);
    sub_24F928228();
    v46 = v45;
    (*(v44 + 1))(v15, v43);
    v75 = v20;
    v85 = v40;
    v86 = v36;
    v40(v23, v20);
    if (v46)
    {
      v47 = 1;
      v48 = v95;
      v49 = v93;
      v50 = v91;
    }

    else
    {
      v50 = v91;
      sub_24F91F5D8();
      v47 = 0;
      v48 = v95;
      v49 = v93;
    }

    v62 = v90;
    v63 = v88;
    v64 = sub_24F91F648();
    (*(*(v64 - 8) + 56))(v50, v47, 1, v64);
    sub_24F928398();
    v65 = v94;
    (*(v49 + 16))(v87, v94, v48);
    sub_24EA3A4F4(&qword_27F2258A8, MEMORY[0x277D0C7B8], &protocol conformance descriptor for Achievement.Status);
    sub_24F929548();
    v66 = v89;
    if ((*(v89 + 48))(v63, 1, v62) == 1)
    {

      sub_24E601704(v63, &qword_27F2258A0, &qword_24F976898);
      v67 = sub_24F92AC38();
      sub_24EA3A4F4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v68 = v50;
      v70 = v69;
      v71 = type metadata accessor for Achievement(0);
      *v70 = 0x737574617473;
      v70[1] = 0xE600000000000000;
      v70[2] = v71;
      (*(*(v67 - 8) + 104))(v70, *MEMORY[0x277D22530], v67);
      swift_willThrow();
      (*(v49 + 8))(v65, v48);
      v85(v98, v75);
      return sub_24E601704(v68, &unk_27F22EC30, &qword_24F939880);
    }

    else
    {
      v72 = v82;
      (*(v66 + 32))(v82, v63, v62);
      v96 = v79;
      v97 = v92;
      sub_24F92C7F8();
      (*(v66 + 16))(v81, v72, v62);
      sub_24E728A00(v50, v80);
      v73 = sub_24F91FF08();
      (*(*(v73 - 8) + 56))(v83, 1, 1, v73);
      sub_24F91FE98();
      (*(v49 + 8))(v65, v95);
      v85(v98, v75);
      (*(v66 + 8))(v72, v62);
      return sub_24E601704(v50, &unk_27F22EC30, &qword_24F939880);
    }
  }

  else
  {

    v58 = sub_24F92AC38();
    sub_24EA3A4F4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v60 = v59;
    v61 = sub_24F91FEF8();
    *v60 = 0x656C746974627573;
    v60[1] = 0xE800000000000000;
    v60[2] = v61;
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D22530], v58);
    swift_willThrow();
    (*(v93 + 8))(v94, v95);
    return v35(v98, v20);
  }
}

JSValue __swiftcall Achievement.makeValue(in:)(JSContext in)
{
  v2 = sub_24F91FEC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_11;
  }

  isa = result.super.isa;
  sub_24F91FEA8();
  sub_24E65864C(&v27, v26);
  v11 = sub_24F92CF68();
  sub_24E6585F8(&v27);
  v12 = [v8 valueWithObject:v11 inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = v3;
  sub_24F92C328();
  v27 = sub_24F91FEB8();
  v28 = v13;
  v14 = [v8 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v2;
  sub_24F92C328();
  v27 = sub_24F91FEE8();
  v28 = v16;
  v17 = [v8 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_24F92C328();
  sub_24F91FE88();
  v18 = sub_24F91F648();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    sub_24E601704(v7, &unk_27F22EC30, &qword_24F939880);
LABEL_9:
    v23 = v25;
    sub_24F91FED8();
    Achievement.Status.makeValue(in:)(in);
    (*(v24 + 8))(v23, v15);
    sub_24F92C328();
    return isa;
  }

  sub_24F91F5E8();
  v21 = v20;
  (*(v19 + 8))(v7, v18);
  v27 = v21;
  v22 = [v8 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v22)
  {
    sub_24F92C328();
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
  return result;
}

JSValue __swiftcall Achievement.Status.makeValue(in:)(JSContext in)
{
  v3 = sub_24F91FEC8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_opt_self();
  result.super.isa = [v7 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_19;
  }

  isa = result.super.isa;
  (*(v4 + 16))(v6, v1, v3);
  v10 = (*(v4 + 88))(v6, v3);
  if (v10 == *MEMORY[0x277D0C798])
  {
    (*(v4 + 96))(v6, v3);
    v11 = *v6;
    v20 = 0x6572676F72706E69;
    v21 = 0xEA00000000007373;
    v12 = [v7 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v12)
    {
      sub_24F92C328();
      result.super.isa = [v7 valueWithDouble:in.super.isa inContext:v11];
      if (result.super.isa)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v10 == *MEMORY[0x277D0C7B0])
  {
    (*(v4 + 96))(v6, v3);
    v14 = *v6;
    v13 = *(v6 + 1);
    v20 = 0x6574656C706D6F63;
    v21 = 0xE900000000000064;
    v15 = [v7 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v15)
    {
      sub_24F92C328();
      v20 = *&v14;
      v21 = v13;

      v16 = [v7 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
      result.super.isa = swift_unknownObjectRelease();
      if (v16)
      {

        sub_24F92C328();

        sub_24EE6ABC8(v17, v18);
        sub_24E9F7F40(in.super.isa);

        sub_24F92C328();

        return isa;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x277D0C7A8])
  {
    v20 = 0x64656B636F6CLL;
    v21 = 0xE600000000000000;
    in.super.isa = [v7 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    v10 = swift_unknownObjectRelease();
    if (in.super.isa)
    {
LABEL_15:
      sub_24F92C328();
      return isa;
    }

    __break(1u);
  }

  if (v10 != *MEMORY[0x277D0C7A0])
  {
    (*(v4 + 8))(v6, v3);
    return isa;
  }

  v20 = 0x6E6564646968;
  v21 = 0xE600000000000000;
  v19 = [v7 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v19)
  {
    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t Achievement.Status.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v56 = a2;
  v55 = a3;
  v57 = sub_24F9285B8();
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  v17 = 0xE400000000000000;
  v18 = a1;
  sub_24F928398();
  v19 = sub_24F928348();
  v21 = v20;
  v58 = *(v6 + 8);
  v58(v16, v5);
  if (!v21)
  {
    v27 = 1701869940;
LABEL_10:
    v54 = v27;
LABEL_11:
    v28 = MEMORY[0x277D22530];
    goto LABEL_12;
  }

  v22 = v19 == 0x64656B636F6CLL && v21 == 0xE600000000000000;
  if (v22 || (sub_24F92CE08() & 1) != 0)
  {

    (*(v59 + 8))(v56, v57);
    v58(v18, v5);
    v23 = MEMORY[0x277D0C7A8];
LABEL_8:
    v24 = *v23;
    v25 = sub_24F91FEC8();
    return (*(*(v25 - 8) + 104))(v55, v24, v25);
  }

  v34 = v19 == 0x6E6564646968 && v21 == 0xE600000000000000;
  if (v34 || (sub_24F92CE08() & 1) != 0)
  {

    (*(v59 + 8))(v56, v57);
    v58(v18, v5);
    v23 = MEMORY[0x277D0C7A0];
    goto LABEL_8;
  }

  v35 = v19 == 0x6572676F72706E69 && v21 == 0xEA00000000007373;
  v36 = v59;
  if (!v35 && (sub_24F92CE08() & 1) == 0)
  {
    if ((v19 != 0x6574656C706D6F63 || v21 != 0xE900000000000064) && (sub_24F92CE08() & 1) == 0)
    {
      v28 = MEMORY[0x277D22520];
      v54 = v19;
      v17 = v21;
      goto LABEL_12;
    }

    sub_24F928398();
    v45 = sub_24F928348();
    v47 = v46;
    v58(v10, v5);
    if (v47)
    {
      v52 = v45;
      type metadata accessor for Artwork(0);
      sub_24F928398();
      v48 = v59;
      v49 = v56;
      (*(v59 + 16))(v54, v56, v57);
      sub_24EA3A4F4(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      sub_24F929548();
      if (v60)
      {

        v50 = Artwork.toGameCenterArtwork()();

        (*(v48 + 8))(v49, v57);
        v58(v18, v5);
        v41 = v55;
        *v55 = v52;
        v41[1] = v47;
        v41[2] = v50;
        v42 = MEMORY[0x277D0C7B0];
        goto LABEL_26;
      }

      v54 = 0x6B726F77747261;

      v28 = MEMORY[0x277D22530];
      v17 = 0xE700000000000000;
LABEL_12:
      v29 = v57;
      v30 = sub_24F92AC38();
      sub_24EA3A4F4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v32 = v31;
      v33 = sub_24F91FEC8();
      *v32 = v54;
      v32[1] = v17;
      v32[2] = v33;
      (*(*(v30 - 8) + 104))(v32, *v28, v30);
      swift_willThrow();
      (*(v59 + 8))(v56, v29);
      return (v58)(v18, v5);
    }

    v27 = 1702125924;
    goto LABEL_10;
  }

  v17 = 0xE700000000000000;
  v54 = 0x746E6563726570;
  sub_24F928398();
  v37 = sub_24F928308();
  v39 = v38;
  v40 = v58;
  v58(v13, v5);
  if (v39)
  {
    goto LABEL_11;
  }

  (*(v36 + 8))(v56, v57);
  v40(v18, v5);
  v41 = v55;
  *v55 = v37;
  v42 = MEMORY[0x277D0C798];
LABEL_26:
  v43 = *v42;
  v44 = sub_24F91FEC8();
  return (*(*(v44 - 8) + 104))(v41, v43, v44);
}

uint64_t sub_24EA3A4F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AppLaunchTrampolineAction.bundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25AppLaunchTrampolineAction_bundleId);

  return v1;
}

char *AppLaunchTrampolineAction.__allocating_init(title:bundleId:payloadUrl:fallbackAction:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a1;
  v32 = a2;
  v12 = sub_24F91F6B8();
  v30 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = &v15[OBJC_IVAR____TtC12GameStoreKit25AppLaunchTrampolineAction_bundleId];
  *v16 = a3;
  *(v16 + 1) = a4;
  sub_24E60169C(a5, &v15[OBJC_IVAR____TtC12GameStoreKit25AppLaunchTrampolineAction_payloadUrl], &qword_27F228530, &unk_24F93C6E0);
  *&v15[OBJC_IVAR____TtC12GameStoreKit25AppLaunchTrampolineAction_fallbackAction] = a6;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v17 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v15[v17], a7, v18);
  v20 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(&v15[v20], 1, 1, v21);
  v22 = &v15[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = &v15[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E60169C(v38, &v35, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v36 + 1))
  {
    v24 = v36;
    *v23 = v35;
    *(v23 + 1) = v24;
    *(v23 + 4) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v30 + 8))(v14, v12);
    v33 = v25;
    v34 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v19 + 8))(a7, v18);
  sub_24E601704(a5, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v38, &qword_27F235830, &qword_24F93B8C0);
  v28 = v32;
  *(v15 + 2) = v31;
  *(v15 + 3) = v28;
  *(v15 + 4) = 0;
  *(v15 + 5) = 0;
  return v15;
}

void *AppLaunchTrampolineAction.init(title:bundleId:payloadUrl:fallbackAction:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v36 = a6;
  v37 = a1;
  v38 = a2;
  v35 = sub_24F91F6B8();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - v16;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v8 + OBJC_IVAR____TtC12GameStoreKit25AppLaunchTrampolineAction_bundleId);
  *v22 = a3;
  v22[1] = a4;
  v23 = a5;
  v24 = a7;
  sub_24E60169C(v23, v8 + OBJC_IVAR____TtC12GameStoreKit25AppLaunchTrampolineAction_payloadUrl, &qword_27F228530, &unk_24F93C6E0);
  *(v8 + OBJC_IVAR____TtC12GameStoreKit25AppLaunchTrampolineAction_fallbackAction) = v36;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  (*(v19 + 16))(v21, a7, v18);
  v25 = sub_24F929608();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v26 = 0u;
  v26[1] = 0u;
  sub_24E60169C(v47, &v41, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v42 + 1))
  {
    v44 = v41;
    v45 = v42;
    v46 = v43;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v29 = v28;
    (*(v34 + 8))(v14, v35);
    v39 = v27;
    v40 = v29;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v19 + 8))(v24, v18);
  sub_24E601704(v23, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v47, &qword_27F235830, &qword_24F93B8C0);
  v30 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v30 + 4) = v46;
  v31 = v45;
  *v30 = v44;
  *(v30 + 1) = v31;
  sub_24E6009C8(v17, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v32 = v38;
  v8[2] = v37;
  v8[3] = v32;
  v8[4] = 0;
  v8[5] = 0;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v21, v18);
  return v8;
}

uint64_t AppLaunchTrampolineAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v60 = a2;
  v58 = v4;
  v6 = *v4;
  v56 = v3;
  v57 = v6;
  v59 = sub_24F9285B8();
  v7 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v50 - v12;
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - v23;
  v61 = a1;
  sub_24F928398();
  v25 = sub_24F928348();
  v27 = v26;
  v28 = v24;
  v29 = *(v14 + 8);
  v29(v28, v13);
  if (v27)
  {
    v51 = v25;
    v52 = v7;
    v30 = sub_24F91F4A8();
    (*(*(v30 - 8) + 56))(v62, 1, 1, v30);
    sub_24F928398();
    sub_24F928348();
    v32 = v31;
    v33 = v13;
    v57 = v29;
    v29(v21, v13);
    if (v32)
    {
      v34 = v53;
      sub_24F91F488();

      v35 = v62;
      sub_24E601704(v62, &qword_27F228530, &unk_24F93C6E0);
      sub_24E6009C8(v34, v35, &qword_27F228530, &unk_24F93C6E0);
    }

    v36 = v58;
    v37 = (v58 + OBJC_IVAR____TtC12GameStoreKit25AppLaunchTrampolineAction_bundleId);
    *v37 = v51;
    v37[1] = v27;
    sub_24E60169C(v62, v36 + OBJC_IVAR____TtC12GameStoreKit25AppLaunchTrampolineAction_payloadUrl, &qword_27F228530, &unk_24F93C6E0);
    type metadata accessor for Action(0);
    v38 = v61;
    sub_24F928398();
    v39 = v60;
    v40 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v60);
    v57(v18, v33);
    *(v36 + OBJC_IVAR____TtC12GameStoreKit25AppLaunchTrampolineAction_fallbackAction) = v40;
    v41 = v54;
    (*(v14 + 16))(v54, v38, v33);
    v42 = v52;
    v43 = v55;
    v44 = v59;
    (*(v52 + 16))(v55, v39, v59);
    v45 = v56;
    v46 = Action.init(deserializing:using:)(v41, v43);
    if (!v45)
    {
      v43 = v46;
    }

    (*(v42 + 8))(v39, v44);
    v57(v38, v33);
    sub_24E601704(v62, &qword_27F228530, &unk_24F93C6E0);
  }

  else
  {
    v43 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v47 = 0x6449656C646E7562;
    v48 = v57;
    v47[1] = 0xE800000000000000;
    v47[2] = v48;
    (*(*(v43 - 8) + 104))(v47, *MEMORY[0x277D22530], v43);
    swift_willThrow();
    (*(v7 + 8))(v60, v59);
    v29(v61, v13);
    swift_deallocPartialClassInstance();
  }

  return v43;
}

double sub_24EA3B38C()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25AppLaunchTrampolineAction_payloadUrl, &qword_27F228530, &unk_24F93C6E0);

  return result;
}

uint64_t AppLaunchTrampolineAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25AppLaunchTrampolineAction_payloadUrl, &qword_27F228530, &unk_24F93C6E0);

  return v0;
}

uint64_t AppLaunchTrampolineAction.__deallocating_deinit()
{
  AppLaunchTrampolineAction.deinit();

  return swift_deallocClassInstance();
}
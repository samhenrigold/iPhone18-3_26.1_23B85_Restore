void sub_29D4C8544(uint64_t a1)
{
  if (!qword_2A17A3E58)
  {
    sub_29D5B0EDC();
    sub_29D48E500(255, &qword_2A1A164A0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A3E58);
    }
  }
}

void sub_29D4C85DC(uint64_t a1)
{
  if (!qword_2A17A3E68)
  {
    sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    sub_29D4C9038(255, &qword_2A1A193A8, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A3E68);
    }
  }
}

void sub_29D4C8690(uint64_t a1)
{
  if (!qword_2A17A3E70)
  {
    sub_29D5B0EDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A3E70);
    }
  }
}

uint64_t sub_29D4C86FC(void *a1, void *a2)
{
  v3 = [a1 activityType];
  v4 = sub_29D5B3E5C();
  v6 = v5;

  if (sub_29D5B3E5C() == v4 && v7 == v6)
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_29D5B4C7C();

  if ((v9 & 1) == 0)
  {
    if (sub_29D5B3E5C() != v4 || v10 != v6)
    {
      v12 = sub_29D5B4C7C();

      if ((v12 & 1) == 0)
      {
        sub_29D499EC0(a2, a2[3]);
        return sub_29D5B2D8C();
      }

      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
}

uint64_t sub_29D4C8844(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D4C888C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29D5B1CBC();
  v6 = sub_29D5B1C8C();
  v7 = sub_29D5B1C4C();

  v8 = [v7 clinicalAccountStore];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v12[4] = sub_29D4C99D8;
  v12[5] = v9;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D4C2E58;
  v12[3] = &unk_2A2428250;
  v10 = _Block_copy(v12);
  v11 = a1;

  [v8 shouldShowHealthRecordsSectionWithCompletion_];
  _Block_release(v10);
}

void sub_29D4C89C4(void *a1)
{
  v3 = sub_29D5B371C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B21EC();
  v8 = sub_29D5B21DC();
  if (*(v1 + *(type metadata accessor for HealthRecordsPluginAppDelegate.CHRAccountsListItem(0) + 40)))
  {
    sub_29D5B1CBC();
    v9 = sub_29D5B1C8C();
    v10 = sub_29D5B1CAC();
  }

  else
  {
    sub_29D5B1CBC();
    v9 = sub_29D5B1C8C();
    v10 = sub_29D5B1C5C();
  }

  v11 = v10;

  v19 = sub_29D5B214C();
  v12 = [a1 navigationController];
  if (v12)
  {
    v13 = v12;
    [v12 pushViewController:v19 animated:1];

    v14 = v19;
  }

  else
  {
    sub_29D5B36CC();
    v15 = sub_29D5B370C();
    v16 = sub_29D5B428C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_29D48C000, v15, v16, "CHRAccountsListItem was given a view controller without a navigation controller, unable to present settings view controller", v17, 2u);
      MEMORY[0x29ED5FB80](v17, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

unint64_t sub_29D4C8C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v53 = a4;
  v47 = a3;
  v48 = a5;
  v8 = sub_29D5B353C();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v49 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x29EDB9C70];
  sub_29D4C9038(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v47 - v14;
  v57 = a1;
  v58 = a2;
  v55 = 0x676E69726168535BLL;
  v56 = 0xEB000000003A4449;
  v16 = sub_29D5B0EFC();
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  sub_29D4B343C();
  sub_29D5B479C();
  v54 = v18;
  v20 = v19;
  sub_29D4C909C(v15, &qword_2A1A19588, v11);
  if ((v20 & 1) == 0)
  {
    v57 = a1;
    v58 = a2;
    v55 = 0xD000000000000010;
    v56 = 0x800000029D5BC860;
    v17(v15, 1, 1, v16);
    sub_29D5B479C();
    v22 = v21;
    sub_29D4C909C(v15, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    if ((v22 & 1) == 0)
    {
      v23 = sub_29D5B3F2C() >> 14;
      result = v54;
      if (v23 < v54 >> 14)
      {
        __break(1u);
        return result;
      }

      v25 = sub_29D5B3FDC();
      v26 = MEMORY[0x29ED5E490](v25);
      v28 = v27;

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        v30 = sub_29D5166E4(v26, v28);
        if (v30)
        {
          v33 = v30;
          v34 = v31;
          v35 = v32;
          v36 = sub_29D514404(v30, v31, v32);
          v38 = v37;
          sub_29D4B37AC(v33, v34, v35);
          v39 = v49;
          *v49 = v36;
          v39[1] = v38;
          v40 = v48;
          v42 = v52;
          v41 = v53;
          v39[2] = v47;
          v39[3] = v41;
          v39[4] = v40;
          v39[5] = v42;
          v44 = v50;
          v43 = v51;
          (*(v50 + 104))(v39, *MEMORY[0x29EDC2E28], v51);
          sub_29D4C9038(0, &qword_2A17A3E88, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9E90]);
          v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_29D5B62A0;
          (*(v44 + 32))(v46 + v45, v39, v43);

          return v46;
        }
      }

      else
      {
      }
    }
  }

  return MEMORY[0x29EDCA190];
}

uint64_t sub_29D4C902C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_29D4C9038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D4C909C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4C9038(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_29D4C910C(uint64_t a1)
{
  v2 = sub_29D5B1AAC();
  v32 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B1D6C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v31 - v13;
  v15 = sub_29D5B353C();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v19, a1, v15);
  if ((*(v16 + 88))(v19, v15) == *MEMORY[0x29EDC2E28])
  {
    (*(v16 + 96))(v19, v15);
    v20 = *v19;
    v21 = v19[1];

    result = sub_29D5166E4(v20, v21);
    if (!result)
    {
      return result;
    }

    v25 = result;
    v26 = v23;
    v27 = v24;
    if (*( + 16))
    {
      (*(v7 + 16))(v11, v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      (*(v7 + 32))(v14, v11, v6);
      sub_29D514404(v25, v26, v27);
      sub_29D4B37AC(v25, v26, v27);
      v28 = v32;
      (*(v32 + 104))(v5, *MEMORY[0x29EDC3F10], v2);
      v29 = sub_29D5B10DC();
      v30 = sub_29D5B26FC();

      (*(v28 + 8))(v5, v2);
      (*(v7 + 8))(v14, v6);
      return v30;
    }

    sub_29D4B37AC(v25, v26, v27);
  }

  else
  {
    (*(v16 + 8))(v19, v15);
  }

  return 0;
}

void sub_29D4C94F0(uint64_t a1)
{
  if (!qword_2A17A3E98)
  {
    sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v1 = sub_29D5B472C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A3E98);
    }
  }
}

void sub_29D4C9558(uint64_t a1)
{
  if (!qword_2A17A3EB0)
  {
    sub_29D4A02FC(255, &qword_2A17A3EB8, MEMORY[0x29EDC1910]);
    v1 = sub_29D5B4C5C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A3EB0);
    }
  }
}

void sub_29D4C95C4(uint64_t a1)
{
  if (!qword_2A17A3EC0)
  {
    sub_29D48F51C(255, &qword_2A17A3E90, 0x29EDC3E18);
    v1 = sub_29D5B40BC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A3EC0);
    }
  }
}

void sub_29D4C962C()
{
  if (!qword_2A17A3EE0)
  {
    v0 = sub_29D5B41EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3EE0);
    }
  }
}

uint64_t sub_29D4C9684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedConceptCodedValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4C96E8(uint64_t a1)
{
  v2 = type metadata accessor for SharedConceptCodedValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D4C9744(uint64_t a1)
{
  if (!qword_2A17A3EF0)
  {
    sub_29D4A02FC(255, &qword_2A17A3EF8, MEMORY[0x29EDC41F0]);
    v1 = sub_29D5B4C5C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A3EF0);
    }
  }
}

_OWORD *sub_29D4C97AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_29D4C97BC(uint64_t a1)
{
  if (!qword_2A1A163F8)
  {
    sub_29D48F51C(255, &qword_2A1A16320, 0x29EDBAE68);
    v1 = sub_29D5B40BC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A163F8);
    }
  }
}

unint64_t sub_29D4C9824()
{
  result = qword_2A17A3F20;
  if (!qword_2A17A3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A3F20);
  }

  return result;
}

void sub_29D4C9878(uint64_t a1)
{
  if (!qword_2A17A3F28)
  {
    sub_29D4A02FC(255, &qword_2A17A3F30, MEMORY[0x29EDC41A8]);
    v1 = sub_29D5B4C5C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A3F28);
    }
  }
}

unint64_t sub_29D4C98E0()
{
  result = qword_2A17A3F38;
  if (!qword_2A17A3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A3F38);
  }

  return result;
}

void sub_29D4C9934(uint64_t a1)
{
  if (!qword_2A17A3F40)
  {
    sub_29D4A02FC(255, &unk_2A17A3F48, MEMORY[0x29EDC4258]);
    v1 = sub_29D5B4C5C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A3F40);
    }
  }
}

uint64_t type metadata accessor for HealthRecordsPluginAppDelegate.CHRAccountsListItem(uint64_t a1)
{
  result = qword_2A17A3FA0;
  if (!qword_2A17A3FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4C9A30(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_29D4C9A80(uint64_t a1)
{
  if (!qword_2A17A3F88)
  {
    sub_29D48F51C(255, &qword_2A17A3F80, 0x29EDBA008);
    v1 = sub_29D5B40BC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A3F88);
    }
  }
}

void sub_29D4C9B10(uint64_t a1)
{
  sub_29D48E500(319, &qword_2A1A164A0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    sub_29D5B0EDC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_29D4C9C98(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_29D5B136C();
  v5 = [v4 profileIdentifier];

  sub_29D5B1CBC();
  v6 = sub_29D5B1C8C();
  v7 = sub_29D5B1CAC();

  v8 = [v7 *a3];
  return v8;
}

uint64_t sub_29D4C9D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v92 = a1;
  v5 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v70 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v91 = v7;
  v73 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF27C(0);
  v77 = v8;
  v75 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF728(0);
  v76 = v11;
  v74 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v72 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF928(0);
  v79 = *(v14 - 8);
  v80 = v14;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v78 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF9BC(0);
  v82 = *(v17 - 8);
  v83 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v81 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CFA98(0);
  v88 = v20;
  v86 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v84 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CFB68(0);
  v89 = v23;
  v87 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v24);
  v85 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D5B371C();
  v27 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36EC();
  v31 = sub_29D5B370C();
  v32 = sub_29D5B429C();
  v33 = os_log_type_enabled(v31, v32);
  v90 = v3;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v69 = a2;
    v35 = v34;
    v36 = swift_slowAlloc();
    v93 = v36;
    *v35 = 136315138;
    v37 = sub_29D5B4DFC();
    v39 = sub_29D501890(v37, v38, &v93);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_29D48C000, v31, v32, "%s Account status generator - make publisher ", v35, 0xCu);
    sub_29D48F668(v36);
    MEMORY[0x29ED5FB80](v36, -1, -1);
    v40 = v35;
    a2 = v69;
    MEMORY[0x29ED5FB80](v40, -1, -1);
  }

  (*(v27 + 8))(v30, v26);
  v41 = v92;
  v93 = sub_29D4FCAB0();
  sub_29D5B396C();
  sub_29D4CF640(0);
  sub_29D4CF424(0);
  v69 = MEMORY[0x29EDB8A00];
  sub_29D4CF6E0(&qword_2A1A16720, sub_29D4CF640, MEMORY[0x29EDB8A00]);
  sub_29D4CF6E0(&qword_2A1A168D8, sub_29D4CF424, MEMORY[0x29EDB89C0]);
  v42 = v71;
  sub_29D5B3BEC();

  v43 = v41;
  v44 = v73;
  sub_29D499E5C(v43, v73);
  v45 = *(v70 + 80);
  v70 = ((v45 + 24) & ~v45) + v91;
  v68 = (v45 + 24) & ~v45;
  v46 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  sub_29D499F90(v44, v47 + ((v45 + 24) & ~v45));
  *(v47 + v46) = v90;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_29D4CFC54;
  *(v48 + 24) = v47;

  sub_29D5B396C();
  sub_29D5B134C();
  sub_29D4CF814(0);
  v49 = MEMORY[0x29EDB89A8];
  sub_29D4CF6E0(&qword_2A1A16A00, sub_29D4CF27C, MEMORY[0x29EDB89A8]);
  sub_29D4CF6E0(&qword_2A1A171E8, sub_29D4CF814, MEMORY[0x29EDB88A0]);
  v50 = v72;
  v51 = v77;
  sub_29D5B3BFC();

  (*(v75 + 8))(v42, v51);
  sub_29D4CF6E0(&qword_2A1A16A40, sub_29D4CF728, v49);
  v52 = v78;
  v53 = v76;
  sub_29D5B3BDC();
  (*(v74 + 8))(v50, v53);
  v54 = v92;
  sub_29D499E5C(v92, v44);
  v55 = swift_allocObject();
  v56 = v90;
  *(v55 + 16) = v90;
  sub_29D499F90(v44, v55 + v68);
  sub_29D4CF4D4(0, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
  sub_29D4CF6E0(&qword_2A1A16AE0, sub_29D4CF928, MEMORY[0x29EDB89A0]);
  v57 = v80;
  v58 = v81;
  sub_29D5B3B7C();

  (*(v79 + 8))(v52, v57);
  sub_29D499E5C(v54, v44);
  v59 = swift_allocObject();
  sub_29D499F90(v44, v59 + ((v45 + 16) & ~v45));
  sub_29D4CFFEC(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  v60 = v83;
  v61 = v84;
  sub_29D5B383C();

  (*(v82 + 8))(v58, v60);
  *(swift_allocObject() + 16) = v56;
  sub_29D4B2D8C(0);
  sub_29D4CF6E0(&qword_2A1A16B68, sub_29D4CFA98, MEMORY[0x29EDB8990]);
  sub_29D4CF6E0(&qword_2A1A16780, sub_29D4B2D8C, v69);
  v62 = v85;
  v63 = v88;
  sub_29D5B3B8C();

  (*(v86 + 8))(v61, v63);
  sub_29D4CF6E0(&qword_2A1A16D48, sub_29D4CFB68, MEMORY[0x29EDB8928]);
  v64 = v89;
  v65 = sub_29D5B3B1C();
  (*(v87 + 8))(v62, v64);
  return v65;
}

uint64_t sub_29D4CA874()
{
  sub_29D4CF4D4(0, &qword_2A1A16408, sub_29D4CF538, MEMORY[0x29EDC9A40]);
  sub_29D4CF5B8();
  return sub_29D5B3FEC();
}

uint64_t sub_29D4CA900@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a4;
  v24 = a5;
  v22[1] = a3;
  v25 = a6;
  v7 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v10);
  v11 = sub_29D5B0EDC();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 identifier];
  sub_29D5B0EBC();

  sub_29D5B0E8C();
  (*(v12 + 8))(v15, v11);
  v17 = sub_29D5B288C();

  v26 = v17;
  sub_29D499E5C(v23, v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  sub_29D499F90(v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  sub_29D4CF8C0(0);
  sub_29D5B134C();
  sub_29D4CF6E0(&qword_2A1A166B0, sub_29D4CF8C0, MEMORY[0x29EDB8A00]);
  v20 = a1;
  sub_29D5B3B2C();
}

void sub_29D4CAB98(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a3;
  v61 = a4;
  v8 = sub_29D5B0EDC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B371C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = MEMORY[0x2A1C7C4A8](v16, v17);
  v20 = &v57 - v19;
  v22 = MEMORY[0x2A1C7C4A8](v18, v21);
  v25 = &v57 - v24;
  v26 = *a1;
  v62 = v22;
  v63 = a5;
  v64 = v14;
  if (v26 == 1)
  {
    v58 = v9;
    v59 = v23;
    sub_29D5B36CC();
    v27 = a2;
    v28 = sub_29D5B370C();
    v29 = sub_29D5B425C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v66 = v31;
      *v30 = 136315394;
      v65 = v61;
      swift_getMetatypeMetadata();
      v32 = sub_29D5B3E7C();
      v34 = sub_29D501890(v32, v33, &v66);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = [v27 identifier];
      sub_29D5B0EBC();

      sub_29D4CF6E0(&unk_2A17A3A20, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
      v36 = sub_29D5B4C4C();
      v38 = v37;
      (*(v58 + 8))(v12, v8);
      v39 = sub_29D501890(v36, v38, &v66);
      a5 = v63;

      *(v30 + 14) = v39;
      _os_log_impl(&dword_29D48C000, v28, v29, "%s: generating feed item for account %s", v30, 0x16u);
      swift_arrayDestroy();
      v40 = v31;
      v13 = v62;
      MEMORY[0x29ED5FB80](v40, -1, -1);
      v41 = v30;
      v14 = v64;
      MEMORY[0x29ED5FB80](v41, -1, -1);
    }

    (*(v14 + 8))(v25, v13);
    v42 = sub_29D5B143C();
    sub_29D4CB348(v27, v42, a5);
  }

  else
  {
    sub_29D5B36CC();
    v43 = a2;
    v44 = sub_29D5B370C();
    v45 = sub_29D5B426C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v66 = v60;
      *v46 = 136315394;
      v65 = v61;
      swift_getMetatypeMetadata();
      v47 = sub_29D5B3E7C();
      v49 = sub_29D501890(v47, v48, &v66);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      v50 = [v43 identifier];
      sub_29D5B0EBC();

      sub_29D4CF6E0(&unk_2A17A3A20, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
      v51 = sub_29D5B4C4C();
      v53 = v52;
      (*(v9 + 8))(v12, v8);
      v54 = sub_29D501890(v51, v53, &v66);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_29D48C000, v44, v45, "%s: should not generate feed item for account %s", v46, 0x16u);
      v55 = v60;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v55, -1, -1);
      MEMORY[0x29ED5FB80](v46, -1, -1);
    }

    (*(v64 + 8))(v20, v62);
    v56 = sub_29D5B134C();
    (*(*(v56 - 8) + 56))(v63, 1, 1, v56);
  }
}

uint64_t sub_29D4CB348@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v162 = a2;
  v172 = a3;
  v4 = sub_29D5B0EDC();
  v164 = *(v4 - 8);
  v165 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v163 = v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B371C();
  v168 = *(v7 - 8);
  v169 = v7;
  v9 = MEMORY[0x2A1C7C4A8](v7, v8);
  v173 = v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v166 = v140 - v12;
  v13 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v151 = v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x29EDC9C68];
  sub_29D4CF4D4(0, &qword_2A1A17388, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v149 = v140 - v19;
  v150 = sub_29D5B0E6C();
  v148 = *(v150 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v150, v20);
  v147 = v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v157 = v140 - v24;
  v153 = sub_29D5B104C();
  v152 = *(v153 - 8);
  MEMORY[0x2A1C7C4A8](v153, v25);
  v154 = v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D5B134C();
  v170 = *(v27 - 8);
  v171 = v27;
  MEMORY[0x2A1C7C4A8](v27, v28);
  v161 = v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF4D4(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], v16);
  MEMORY[0x2A1C7C4A8](v30 - 8, v31);
  v33 = v140 - v32;
  v34 = sub_29D5B359C();
  v35 = *(v34 - 8);
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v155 = v140 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v156 = v140 - v41;
  v43 = MEMORY[0x2A1C7C4A8](v40, v42);
  v158 = v140 - v44;
  v46 = MEMORY[0x2A1C7C4A8](v43, v45);
  v160 = v140 - v47;
  v49 = MEMORY[0x2A1C7C4A8](v46, v48);
  v51 = v140 - v50;
  MEMORY[0x2A1C7C4A8](v49, v52);
  v167 = v140 - v53;
  sub_29D4CF4D4(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v16);
  MEMORY[0x2A1C7C4A8](v54 - 8, v55);
  v57 = v140 - v56;
  v58 = sub_29D5B282C();
  v59 = *(v58 - 8);
  MEMORY[0x2A1C7C4A8](v58, v60);
  v62 = v140 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  sub_29D5B283C();
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
    sub_29D4CFF7C(v57, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    sub_29D5B36CC();
    v64 = v63;
    v65 = sub_29D5B370C();
    v66 = sub_29D5B429C();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v178 = v68;
      *v67 = 136315138;
      v69 = [v64 identifier];
      v70 = v163;
      sub_29D5B0EBC();

      sub_29D4CF6E0(&unk_2A17A3A20, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
      v71 = v165;
      v72 = sub_29D5B4C4C();
      v74 = v73;
      (*(v164 + 8))(v70, v71);
      v75 = sub_29D501890(v72, v74, &v178);

      *(v67 + 4) = v75;
      _os_log_impl(&dword_29D48C000, v65, v66, "AccountStatusSummaryTileGenerator not generating feed item data for account %s", v67, 0xCu);
      sub_29D48F668(v68);
      MEMORY[0x29ED5FB80](v68, -1, -1);
      MEMORY[0x29ED5FB80](v67, -1, -1);
    }

    (*(v168 + 8))(v173, v169);
    goto LABEL_13;
  }

  v173 = v63;
  (*(v59 + 32))(v62, v57, v58);
  v159 = v62;
  sub_29D5B27EC();
  v76 = v59;
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_29D4CFF7C(v33, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    goto LABEL_7;
  }

  v94 = v34;
  v146 = v58;
  v95 = v167;
  (*(v35 + 32))(v167, v33, v94);
  v96 = *MEMORY[0x29EDC3D98];
  v97 = *(v35 + 104);
  v145 = v35 + 104;
  v144 = v97;
  v97(v51, v96, v94);
  v98 = sub_29D4CF6E0(&qword_2A17A3FD8, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC3DC0]);
  sub_29D5B3FFC();
  v143 = v98;
  sub_29D5B3FFC();
  v141 = v76;
  if (v178 == v176 && v179 == v177)
  {
    v99 = 1;
  }

  else
  {
    v99 = sub_29D5B4C7C();
  }

  v107 = *(v35 + 8);
  v105 = v35 + 8;
  v106 = v107;
  v107(v51, v94);

  v108 = *MEMORY[0x29EDC3DA0];
  if ((v99 & 1) == 0)
  {
    v144(v160, *MEMORY[0x29EDC3DA0], v94);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v178 == v176 && v179 == v177)
    {
      v106(v160, v94);
    }

    else
    {
      v109 = sub_29D5B4C7C();
      v106(v160, v94);

      if ((v109 & 1) == 0)
      {
        v106(v95, v94);
        v58 = v146;
        v76 = v141;
LABEL_7:
        v77 = v166;
        sub_29D5B36CC();
        v78 = v173;
        v79 = sub_29D5B370C();
        v80 = sub_29D5B429C();

        v81 = os_log_type_enabled(v79, v80);
        v82 = v159;
        if (v81)
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v85 = v76;
          v146 = v58;
          v86 = v84;
          v178 = v84;
          *v83 = 136315138;
          v87 = [v78 identifier];
          v88 = v163;
          sub_29D5B0EBC();

          sub_29D4CF6E0(&unk_2A17A3A20, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
          v89 = v165;
          v90 = sub_29D5B4C4C();
          v92 = v91;
          (*(v164 + 8))(v88, v89);
          v93 = sub_29D501890(v90, v92, &v178);

          *(v83 + 4) = v93;
          _os_log_impl(&dword_29D48C000, v79, v80, "AccountStatusSummaryTileGenerator generating unsupported type for account %s", v83, 0xCu);
          sub_29D48F668(v86);
          MEMORY[0x29ED5FB80](v86, -1, -1);
          MEMORY[0x29ED5FB80](v83, -1, -1);

          (*(v168 + 8))(v166, v169);
          (*(v85 + 8))(v159, v146);
        }

        else
        {

          (*(v168 + 8))(v77, v169);
          (*(v76 + 8))(v82, v58);
        }

LABEL_13:
        v100 = 1;
        v102 = v171;
        v101 = v172;
        v103 = v170;
        return (*(v103 + 56))(v101, v100, 1, v102);
      }
    }
  }

  v168 = sub_29D5B296C();
  v110 = v158;
  LODWORD(v169) = v108;
  v144(v158, v108, v94);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  v140[1] = v105;
  v142 = v106;
  if (v178 == v176 && v179 == v177)
  {
    v106(v110, v94);

LABEL_25:
    type metadata accessor for AccountStatusUpgradeSummaryTileFeedItemViewController(0);
    goto LABEL_27;
  }

  v111 = sub_29D5B4C7C();
  v106(v110, v94);

  if (v111)
  {
    goto LABEL_25;
  }

  type metadata accessor for AccountStatusReloginSummaryTileFeedItemViewController(0);
LABEL_27:
  sub_29D5B0C0C();
  swift_allocObject();
  sub_29D5B0BFC();
  sub_29D4CF6E0(&qword_2A17A3FD0, MEMORY[0x29EDC4240], MEMORY[0x29EDC4248]);
  v112 = v159;
  v113 = v146;
  v114 = v180;
  sub_29D5B0BEC();
  if (!v114)
  {
    v180 = 0;

    (*(v152 + 104))(v154, *MEMORY[0x29EDC3758], v153);
    sub_29D48F51C(0, &qword_2A17A3FE8, 0x29EDC7DA8);
    v115 = v162;
    sub_29D5B110C();
    v116 = v173;
    v117 = [v173 lastFailedFetchDate];
    v118 = v141;
    v119 = v167;
    if (v117)
    {
      v120 = v157;
      v121 = v117;
      sub_29D5B0E4C();

      v122 = v148;
      v123 = v150;
      (*(v148 + 16))(v147, v120, v150);
      sub_29D5B0C6C();
      v144(v156, v169, v94);
      sub_29D5B3FFC();
      sub_29D5B3FFC();
      if (v178 == v176 && v179 == v177)
      {
        v142(v156, v94);
      }

      else
      {
        sub_29D5B4C7C();
        v142(v156, v94);

        v119 = v167;
      }

      sub_29D5B413C();
      v124 = v149;
      sub_29D5B16EC();
      v125 = sub_29D5B170C();
      (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
      sub_29D5B12BC();
      (*(v122 + 8))(v157, v123);
      v116 = v173;
    }

    v126 = v155;
    v144(v155, v169, v94);
    sub_29D4CF6E0(&qword_2A17A3FF0, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC3DB8]);
    v127 = sub_29D5B3E0C();
    v142(v126, v94);
    if ((v127 & 1) == 0)
    {
      sub_29D4CFFEC(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
      v128 = swift_allocObject();
      *(v128 + 16) = xmmword_29D5B5E20;
      *(v128 + 32) = 0xD000000000000012;
      *(v128 + 40) = 0x800000029D5BCA50;
      v129 = [v116 title];
      v130 = sub_29D5B3E5C();
      v132 = v131;

      v178 = v130;
      v179 = v132;
      v176 = 32;
      v177 = 0xE100000000000000;
      v174 = 0;
      v175 = 0xE000000000000000;
      sub_29D4B343C();
      v133 = sub_29D5B478C();
      v135 = v134;

      *(v128 + 48) = v133;
      *(v128 + 56) = v135;
      v136 = sub_29D5B401C();

      v137 = HKUIJoinStringsForAutomationIdentifier();

      if (v137)
      {
        sub_29D5B3E5C();
      }

      sub_29D5B12EC();
      v119 = v167;
    }

    v142(v119, v94);
    (*(v118 + 8))(v159, v146);
    v103 = v170;
    v138 = v171;
    v139 = v172;
    (*(v170 + 32))(v172, v161, v171);
    v102 = v138;
    v101 = v139;
    v100 = 0;
    return (*(v103 + 56))(v101, v100, 1, v102);
  }

  v142(v167, v94);
  return (*(v141 + 8))(v112, v113);
}

char *sub_29D4CC7B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_29D5B371C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v139 = &v118 - v12;
  v131 = sub_29D5B359C();
  v130 = *(v131 - 8);
  MEMORY[0x2A1C7C4A8](v131, v13);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF4D4(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v129 = &v118 - v18;
  v135 = sub_29D5B0EDC();
  v136 = *(v135 - 8);
  MEMORY[0x2A1C7C4A8](v135, v19);
  v140 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_29D5B282C();
  v21 = *(v143 - 8);
  MEMORY[0x2A1C7C4A8](v143, v22);
  v142 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_29D5B134C();
  v25 = MEMORY[0x2A1C7C4A8](v146, v24);
  v138 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v30 = MEMORY[0x2A1C7C4A8](v28, v29);
  MEMORY[0x2A1C7C4A8](v30, v31);
  v34 = MEMORY[0x2A1C7C4A8](&v118 - v32, v33);
  v145 = &v118 - v35;
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v144 = &v118 - v38;
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v149 = &v118 - v41;
  v43 = MEMORY[0x2A1C7C4A8](v40, v42);
  v48 = &v118 - v47;
  v49 = *(a1 + 16);
  if (!v49)
  {
    goto LABEL_26;
  }

  v134 = v21;
  v141 = v43;
  v119 = v45;
  v120 = v44;
  v122 = v15;
  v123 = a2;
  v124 = v2;
  v125 = v10;
  v126 = v6;
  v137 = v5;
  v121 = v46;
  v51 = *(v46 + 16);
  v50 = v46 + 16;
  v154 = v51;
  v52 = (*(v50 + 64) + 32) & ~*(v50 + 64);
  v127 = a1;
  v147 = v52;
  v53 = a1 + v52;
  v54 = *(v50 + 56);
  v148 = "usSummaryTileGenerator";
  v155 = v50;
  v151 = (v50 - 8);
  v152 = (v50 + 16);
  v150 = MEMORY[0x29EDCA190];
  v55 = a1 + v52;
  v56 = v49;
  v57 = v146;
  v153 = v54;
  v51(v48, a1 + v52, v146);
  while (1)
  {
    v59 = v57;
    v60 = sub_29D5B121C();
    v62 = v61;
    v64 = v63;
    v65 = MEMORY[0x29ED5B6D0]();
    sub_29D4CFEB4(v60, v62, v64);
    if (v65)
    {
      v66 = *v152;
      (*v152)(v149, v48, v59);
      v67 = v150;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v67;
      v156 = v67;
      if (isUniquelyReferenced_nonNull_native)
      {
        v57 = v59;
      }

      else
      {
        sub_29D4C6C60(0, v67[2] + 1, 1);
        v57 = v146;
        v69 = v156;
      }

      v71 = v69[2];
      v70 = v69[3];
      if (v71 >= v70 >> 1)
      {
        sub_29D4C6C60((v70 > 1), v71 + 1, 1);
        v57 = v146;
        v69 = v156;
      }

      v69[2] = v71 + 1;
      v150 = v69;
      v72 = v69 + v147 + v71 * v153;
      v58 = v153;
      v66(v72, v149, v57);
    }

    else
    {
      (*v151)(v48, v59);
      v57 = v59;
      v58 = v153;
    }

    v55 += v58;
    if (!--v56)
    {
      break;
    }

    v154(v48, v55, v57);
  }

  v73 = v144;
  if (v49 - v150[2] <= 1)
  {
    a1 = v127;
LABEL_26:

    return a1;
  }

  v149 = MEMORY[0x29EDCA190];
  v74 = v141;
  do
  {
    v154(v73, v53, v57);
    v77 = v57;
    v78 = sub_29D5B121C();
    v80 = v79;
    v82 = v81;
    v83 = MEMORY[0x29ED5B6D0]();
    sub_29D4CFEB4(v78, v80, v82);
    if (v83)
    {
      v84 = *v152;
      (*v152)(v145, v73, v77);
      v85 = v149;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v87 = v85;
      v156 = v85;
      if (v86)
      {
        v57 = v77;
      }

      else
      {
        sub_29D4C6C60(0, *(v85 + 2) + 1, 1);
        v57 = v146;
        v87 = v156;
      }

      v89 = *(v87 + 2);
      v88 = *(v87 + 3);
      if (v89 >= v88 >> 1)
      {
        sub_29D4C6C60((v88 > 1), v89 + 1, 1);
        v57 = v146;
        v87 = v156;
      }

      *(v87 + 2) = v89 + 1;
      v149 = v87;
      v90 = &v87[v147 + v89 * v153];
      v76 = v153;
      v84(v90, v145, v57);
      v73 = v144;
    }

    else
    {
      (*v151)(v73, v77);
      v57 = v77;
      v76 = v153;
    }

    v53 += v76;
    --v49;
  }

  while (v49);
  v91 = *(v149 + 2);
  if (v91)
  {
    v92 = &v149[v147];
    v144 = (v126 + 8);
    v133 = (v134 + 8);
    v148 = MEMORY[0x29EDCA190];
    v132 = v136 + 32;
    *&v75 = 136315394;
    v128 = v75;
    do
    {
      v154(v74, v92, v57);
      v93 = sub_29D5B133C();
      if (v94 >> 60 == 15)
      {
        (*v151)(v74, v57);
      }

      else
      {
        v95 = v93;
        v96 = v94;
        sub_29D5B0BDC();
        swift_allocObject();
        sub_29D5B0BCC();
        sub_29D4CF6E0(&qword_2A17A3FC8, MEMORY[0x29EDC4240], MEMORY[0x29EDC4250]);
        sub_29D5B0BBC();

        sub_29D5B280C();
        v97 = v148;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_29D5153E8(0, *(v97 + 2) + 1, 1, v97);
        }

        v99 = *(v97 + 2);
        v98 = *(v97 + 3);
        if (v99 >= v98 >> 1)
        {
          v148 = sub_29D5153E8((v98 > 1), v99 + 1, 1, v97);
        }

        else
        {
          v148 = v97;
        }

        sub_29D4A96BC(v95, v96);
        (*v133)(v142, v143);
        v74 = v141;
        v100 = v146;
        (*v151)(v141, v146);
        v101 = v148;
        *(v148 + 2) = v99 + 1;
        v57 = v100;
        (*(v136 + 32))(&v101[((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v99], v140, v135);
      }

      v92 += v153;
      --v91;
    }

    while (v91);

    v102 = v148;
  }

  else
  {

    v102 = MEMORY[0x29EDCA190];
  }

  v103 = v130;
  v104 = v122;
  v105 = v131;
  (*(v130 + 104))(v122, *MEMORY[0x29EDC3DA8], v131);
  v106 = sub_29D5B143C();
  v107 = v129;
  sub_29D4CE024(v102, v104, v106, v129);
  (*(v103 + 8))(v104, v105);

  v108 = v146;
  if ((*(v121 + 48))(v107, 1, v146) == 1)
  {
    sub_29D4CFF7C(v107, qword_2A1A19830, MEMORY[0x29EDC3840]);
    return v150;
  }

  else
  {
    v109 = *v152;
    v110 = v119;
    (*v152)(v119, v107, v108);
    v111 = v120;
    v154(v120, v110, v108);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v150 = sub_29D515230(0, v150[2] + 1, 1, v150);
    }

    v113 = v150[2];
    v112 = v150[3];
    if (v113 >= v112 >> 1)
    {
      v150 = sub_29D515230((v112 > 1), v113 + 1, 1, v150);
    }

    v114 = v110;
    v115 = v146;
    (*v151)(v114, v146);
    v116 = v150;
    v150[2] = v113 + 1;
    v109(&v116[v147 + v153 * v113], v111, v115);
    return v116;
  }
}

uint64_t sub_29D4CD93C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_29D5B295C();
  v6 = v5;
  v7 = sub_29D5B143C();
  sub_29D4CFFEC(0, &qword_2A1A16208, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D5B62A0;
  *(v8 + 32) = v3;
  *(v8 + 40) = v4;
  *(v8 + 48) = v6;
  *(v8 + 56) = v7;
  *(v8 + 64) = -127;
  *a2 = v8;
}

uint64_t sub_29D4CD9F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B37EC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v6;
    v22 = v21;
    v42 = v21;
    *v20 = 136446466;
    v41 = sub_29D4BBD3C();
    sub_29D4CFE68(0, &qword_2A17A3FC0, sub_29D4BBD3C);
    v23 = sub_29D5B3E7C();
    v37 = v10;
    v25 = sub_29D501890(v23, v24, &v42);
    v40 = a2;
    v26 = v25;

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    v41 = v15;
    v27 = v15;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v28 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v29 = sub_29D5B3E7C();
    v31 = sub_29D501890(v29, v30, &v42);

    *(v20 + 14) = v31;
    a2 = v40;
    _os_log_impl(&dword_29D48C000, v17, v18, "[%{public}s] Unable to compute desired difference for commit: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v32 = v22;
    v6 = v38;
    MEMORY[0x29ED5FB80](v32, -1, -1);
    v33 = v20;
    v5 = v39;
    MEMORY[0x29ED5FB80](v33, -1, -1);

    (*(v11 + 8))(v14, v37);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v41 = MEMORY[0x29EDCA190];
  sub_29D4CFFEC(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D4CF6E0(&qword_2A1A165D8, sub_29D4B37EC, MEMORY[0x29EDB8AB8]);
  v34 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v9, v5);
  *a2 = v34;
  return result;
}

uint64_t sub_29D4CDDC4()
{

  v1 = OBJC_IVAR____TtC13HealthRecords33AccountStatusSummaryTileGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords33AccountStatusSummaryTileGenerator_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountStatusSummaryTileGenerator(uint64_t a1)
{
  result = qword_2A1A17AA0;
  if (!qword_2A1A17AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4CDECC(uint64_t a1)
{
  result = sub_29D5B13EC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext(319);
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

uint64_t sub_29D4CDFA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords33AccountStatusSummaryTileGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D4CE024@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a3;
  v104 = a1;
  v110 = a4;
  v5 = sub_29D5B371C();
  v105 = *(v5 - 8);
  v106 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v113 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B0E6C();
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v98 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v99 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x29EDC9C68];
  sub_29D4CF4D4(0, &qword_2A1A17388, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v100 = &v91 - v17;
  v96 = sub_29D5B104C();
  v94 = *(v96 - 8);
  MEMORY[0x2A1C7C4A8](v96, v18);
  v95 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_29D5B134C();
  v109 = *(v111 - 8);
  MEMORY[0x2A1C7C4A8](v111, v20);
  v101 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_29D5B359C();
  v114 = *(v112 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v112, v22);
  v103 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v97 = &v91 - v27;
  MEMORY[0x2A1C7C4A8](v26, v28);
  v102 = &v91 - v29;
  v30 = sub_29D5B282C();
  v107 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30, v31);
  v33 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF4D4(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], v14);
  MEMORY[0x2A1C7C4A8](v34 - 8, v35);
  v37 = &v91 - v36;
  v38 = sub_29D5B0EDC();
  v39 = *(v38 - 8);
  v41 = MEMORY[0x2A1C7C4A8](v38, v40);
  v43 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v41, v44);
  v46 = &v91 - v45;
  v47 = a2;
  v48 = v119;
  result = sub_29D4CEB90(a2, v37);
  if (!v48)
  {
    v93 = v46;
    v50 = v113;
    v92 = v33;
    v115 = v30;
    v51 = v38;
    v52 = v114;
    v53 = v112;
    v119 = 0;
    if ((v39[6])(v37, 1, v51) == 1)
    {
      sub_29D4CFF7C(v37, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
      sub_29D5B36CC();
      v54 = v52;
      v55 = v103;
      v56 = v47;
      v57 = v53;
      (*(v52 + 16))(v103, v56, v53);
      v58 = sub_29D5B370C();
      v59 = sub_29D5B429C();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = v50;
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v118[0] = v62;
        *v61 = 136315138;
        v63 = sub_29D5B358C();
        v64 = v55;
        v66 = v65;
        (*(v54 + 8))(v64, v57);
        v67 = sub_29D501890(v63, v66, v118);

        *(v61 + 4) = v67;
        _os_log_impl(&dword_29D48C000, v58, v59, "AccountStatusSummaryTileGenerator could not create valid id for type %s", v61, 0xCu);
        sub_29D48F668(v62);
        MEMORY[0x29ED5FB80](v62, -1, -1);
        MEMORY[0x29ED5FB80](v61, -1, -1);

        (*(v105 + 8))(v60, v106);
      }

      else
      {

        (*(v54 + 8))(v55, v53);
        (*(v105 + 8))(v50, v106);
      }

      v74 = 1;
      v75 = v110;
      v76 = v111;
      v77 = v109;
    }

    else
    {
      v68 = v93;
      v39[4](v93, v37, v51);
      v39[2](v43, v68, v51);
      (*(v52 + 16))(v102, v47, v53);

      v69 = v92;
      sub_29D5B281C();
      v106 = v47;
      v70 = v108;
      v105 = MEMORY[0x29ED5CF50](v68, v47, v108);
      v113 = v71;
      sub_29D5B0C0C();
      swift_allocObject();
      sub_29D5B0BFC();
      sub_29D4CF6E0(&qword_2A17A3FD0, MEMORY[0x29EDC4240], MEMORY[0x29EDC4248]);
      v72 = v115;
      v73 = v119;
      sub_29D5B0BEC();
      v119 = v73;
      if (v73)
      {

        (*(v107 + 8))(v69, v72);
        return (v39[1])(v93, v51);
      }

      v103 = v39;
      v104 = v51;

      type metadata accessor for AccountStatusUpgradeSummaryTileFeedItemViewController(0);
      (*(v94 + 104))(v95, *MEMORY[0x29EDC3758], v96);
      v78 = v70;
      sub_29D5B110C();
      sub_29D5B0E5C();
      sub_29D5B0C6C();
      v79 = v114;
      v80 = v97;
      (*(v114 + 104))(v97, *MEMORY[0x29EDC3DA0], v53);
      sub_29D4CF6E0(&qword_2A17A3FD8, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC3DC0]);
      sub_29D5B3FFC();
      sub_29D5B3FFC();
      if (v118[0] == v116 && v118[1] == v117)
      {
        (*(v79 + 8))(v80, v53);
      }

      else
      {
        sub_29D5B4C7C();
        (*(v79 + 8))(v80, v53);
      }

      v81 = v100;
      v82 = v115;
      v83 = v107;
      v84 = v92;
      v85 = v93;
      sub_29D5B413C();
      sub_29D5B16EC();
      v86 = sub_29D5B170C();
      (*(*(v86 - 8) + 56))(v81, 0, 1, v86);
      v87 = v101;
      sub_29D5B12BC();
      (*(v83 + 8))(v84, v82);
      (*(v103 + 1))(v85, v104);
      v88 = v87;
      v77 = v109;
      v89 = v110;
      v90 = v111;
      (*(v109 + 32))(v110, v88, v111);
      v76 = v90;
      v75 = v89;
      v74 = 0;
    }

    return (*(v77 + 56))(v75, v74, 1, v76);
  }

  return result;
}

uint64_t sub_29D4CEB90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_29D5B371C();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B359C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v28 - v13;
  (*(v7 + 104))(&v28 - v13, *MEMORY[0x29EDC3DA8], v6);
  sub_29D4CF6E0(&qword_2A17A3FD8, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC3DC0]);
  v29 = a1;
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (v35 == v34)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_29D5B4C7C();
  }

  v16 = *(v7 + 8);
  v16(v14, v6);

  if (v15)
  {
    return sub_29D5B0E7C();
  }

  v18 = v32;
  sub_29D5B36CC();
  (*(v7 + 16))(v11, v29, v6);
  v19 = sub_29D5B370C();
  v20 = sub_29D5B427C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v35 = v29;
    *v21 = 136315138;
    v22 = sub_29D5B358C();
    v24 = v23;
    v16(v11, v6);
    v25 = sub_29D501890(v22, v24, &v35);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_29D48C000, v19, v20, "MultiTileAccountId not currently supported for type %s", v21, 0xCu);
    v26 = v29;
    sub_29D48F668(v29);
    MEMORY[0x29ED5FB80](v26, -1, -1);
    MEMORY[0x29ED5FB80](v21, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {

    v16(v11, v6);
    (*(v30 + 8))(v18, v31);
  }

  v27 = sub_29D5B0EDC();
  return (*(*(v27 - 8) + 56))(v33, 1, 1, v27);
}

void *sub_29D4CEF98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = *v2;
  v23 = a2;
  v21 = sub_29D5B13CC();
  v5 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D5B13EC();
  v9 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499E5C(a1, v2 + OBJC_IVAR____TtC13HealthRecords33AccountStatusSummaryTileGenerator_context);
  v19[1] = sub_29D5B143C();
  sub_29D4CF4D4(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v13 = sub_29D5B104C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D5B62A0;
  (*(v14 + 104))(v16 + v15, *MEMORY[0x29EDC3758], v13);
  (*(v5 + 104))(v8, *MEMORY[0x29EDC3898], v21);
  sub_29D5B13DC();
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC13HealthRecords33AccountStatusSummaryTileGenerator_domain, v12, v20);
  v17 = sub_29D4C9D2C(a1, v23);
  sub_29D49A104(a1);
  v3[2] = v17;
  return v3;
}

void sub_29D4CF27C(uint64_t a1)
{
  if (!qword_2A1A169F8)
  {
    sub_29D4CF368(255);
    sub_29D4CF640(255);
    sub_29D4CF6E0(&qword_2A1A16F68, sub_29D4CF368, MEMORY[0x29EDB88D8]);
    sub_29D4CF6E0(&qword_2A1A16720, sub_29D4CF640, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A169F8);
    }
  }
}

void sub_29D4CF368(uint64_t a1)
{
  if (!qword_2A1A16F60)
  {
    sub_29D4CF424(255);
    sub_29D4B3AF4();
    sub_29D4CF6E0(&qword_2A1A168D8, sub_29D4CF424, MEMORY[0x29EDB89C0]);
    v1 = sub_29D5B382C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16F60);
    }
  }
}

void sub_29D4CF424(uint64_t a1)
{
  if (!qword_2A1A168D0)
  {
    sub_29D4CF4D4(255, &qword_2A1A16408, sub_29D4CF538, MEMORY[0x29EDC9A40]);
    sub_29D4CF5B8();
    v1 = sub_29D5B392C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A168D0);
    }
  }
}

void sub_29D4CF4D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D4CF538(uint64_t a1)
{
  if (!qword_2A1A16338)
  {
    sub_29D48F51C(255, &qword_2A1A19640, 0x29EDC3E08);
    sub_29D5B359C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A16338);
    }
  }
}

unint64_t sub_29D4CF5B8()
{
  result = qword_2A1A16400;
  if (!qword_2A1A16400)
  {
    sub_29D4CF4D4(255, &qword_2A1A16408, sub_29D4CF538, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16400);
  }

  return result;
}

void sub_29D4CF640(uint64_t a1)
{
  if (!qword_2A1A16718)
  {
    sub_29D4CF4D4(255, &qword_2A1A16408, sub_29D4CF538, MEMORY[0x29EDC9A40]);
    sub_29D4B3AF4();
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16718);
    }
  }
}

uint64_t sub_29D4CF6E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D4CF728(uint64_t a1)
{
  if (!qword_2A1A16A38)
  {
    sub_29D4CF814(255);
    sub_29D4CF27C(255);
    sub_29D4CF6E0(&qword_2A1A171E8, sub_29D4CF814, MEMORY[0x29EDB88A0]);
    sub_29D4CF6E0(&qword_2A1A16A00, sub_29D4CF27C, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16A38);
    }
  }
}

void sub_29D4CF814(uint64_t a1)
{
  if (!qword_2A1A171E0)
  {
    sub_29D4CF8C0(255);
    sub_29D5B134C();
    sub_29D4CF6E0(&qword_2A1A166B0, sub_29D4CF8C0, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B37CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A171E0);
    }
  }
}

void sub_29D4CF8C0(uint64_t a1)
{
  if (!qword_2A1A166A8)
  {
    sub_29D4B3AF4();
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A166A8);
    }
  }
}

void sub_29D4CF928(uint64_t a1)
{
  if (!qword_2A1A16AD8)
  {
    sub_29D4CF728(255);
    sub_29D4CF6E0(&qword_2A1A16A40, sub_29D4CF728, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16AD8);
    }
  }
}

void sub_29D4CF9BC(uint64_t a1)
{
  if (!qword_2A1A16E58)
  {
    sub_29D4CF928(255);
    sub_29D4CF4D4(255, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
    sub_29D4CF6E0(&qword_2A1A16AE0, sub_29D4CF928, MEMORY[0x29EDB89A0]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16E58);
    }
  }
}

void sub_29D4CFA98(uint64_t a1)
{
  if (!qword_2A1A16B60)
  {
    sub_29D4CF928(255);
    sub_29D4CFFEC(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D4CF6E0(&qword_2A1A16AE0, sub_29D4CF928, MEMORY[0x29EDB89A0]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16B60);
    }
  }
}

void sub_29D4CFB68(uint64_t a1)
{
  if (!qword_2A1A16D40)
  {
    sub_29D4CFA98(255);
    sub_29D4B2D8C(255);
    sub_29D4CF6E0(&qword_2A1A16B68, sub_29D4CFA98, MEMORY[0x29EDB8990]);
    sub_29D4CF6E0(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16D40);
    }
  }
}

uint64_t sub_29D4CFC54@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v3 + 16);
  v9 = *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4CA900(a1, v8, v3 + v7, v9, a3);
}

uint64_t sub_29D4CFD0C(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_29D4CF538(0);
  return v3(v4, &a1[*(v5 + 48)]);
}

char *sub_29D4CFD68@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  result = sub_29D4CC7B4(*a1, v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));
  *a2 = result;
  return result;
}

uint64_t sub_29D4CFE68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D4CFEB4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

void sub_29D4CFECC(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_29D4CAB98(a1, v8, v2 + v6, v7, a2);
}

uint64_t sub_29D4CFF7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4CF4D4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D4CFFEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D4D0084(uint64_t a1)
{
  sub_29D5B0EDC();
  if (v1 <= 0x3F)
  {
    sub_29D48E550(319, &qword_2A1A164A0, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      sub_29D4D01BC(319, &qword_2A17A4008, MEMORY[0x29EDC3F48], MEMORY[0x29EDC9A40]);
      if (v3 <= 0x3F)
      {
        sub_29D4D01BC(319, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_29D4D01BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D4D0268(uint64_t a1)
{
  sub_29D4D01BC(319, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    sub_29D48E550(319, &qword_2A1A19698, MEMORY[0x29EDC9A40]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D4D0348()
{
  v1 = *v0;
  v2 = 0x49746E756F636361;
  v3 = 0x53746E756F636361;
  v4 = 0x79726F6765746163;
  if (v1 != 3)
  {
    v4 = 0x65676E497473616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x54746E756F636361;
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

uint64_t sub_29D4D040C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D4D3004(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D4D044C(uint64_t a1)
{
  v2 = sub_29D4D1F10();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D0488(uint64_t a1)
{
  v2 = sub_29D4D1F10();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4D04C4(void *a1)
{
  v3 = v1;
  sub_29D4D2A64(0, &qword_2A17A4048, sub_29D4D1F10, &type metadata for NewRecordsFeedItemData.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v13 - v9;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4D1F10();
  sub_29D5B4DCC();
  v18 = 0;
  sub_29D5B0EDC();
  sub_29D4D1EC8(&qword_2A1A193B8, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C10]);
  sub_29D5B4C0C();
  if (!v2)
  {
    v11 = type metadata accessor for NewRecordsFeedItemData(0);
    v17 = 1;
    sub_29D5B4BCC();
    v16 = 2;
    sub_29D5B4B8C();
    v13[1] = *(v3 + *(v11 + 28));
    v15 = 3;
    sub_29D4D01BC(0, &qword_2A17A4008, MEMORY[0x29EDC3F48], MEMORY[0x29EDC9A40]);
    sub_29D4D1FF8(&qword_2A17A4050, &qword_2A17A4058, MEMORY[0x29EDC3F50], MEMORY[0x29EDC9A48]);
    sub_29D5B4C0C();
    v14 = 4;
    sub_29D5B0E6C();
    sub_29D4D1EC8(&qword_2A1A193D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    sub_29D5B4BBC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D4D0810(uint64_t a1)
{
  v2 = v1;
  v3 = sub_29D5B0E6C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v30 = &v29 - v9;
  v10 = sub_29D5B1AEC();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B0EDC();
  sub_29D4D1EC8(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  sub_29D5B3D9C();
  v15 = type metadata accessor for NewRecordsFeedItemData(0);
  sub_29D5B3EFC();
  v33 = v3;
  v34 = v15;
  v16 = *(v2 + *(v15 + 24) + 8);
  v32 = v4;
  sub_29D5B4D6C();
  if (v16)
  {
    sub_29D5B3EFC();
  }

  v17 = *(v34 + 28);
  v31 = v2;
  v18 = *(v2 + v17);
  MEMORY[0x29ED5F330](*(v18 + 16));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v11 + 16;
    v21 = *(v11 + 16);
    v22 = v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v23 = *(v11 + 72);
    do
    {
      v21(v14, v22, v10);
      sub_29D4D1EC8(&qword_2A17A4060, MEMORY[0x29EDC3F48], MEMORY[0x29EDC3F58]);
      sub_29D5B3D9C();
      (*(v20 - 8))(v14, v10);
      v22 += v23;
      --v19;
    }

    while (v19);
  }

  v24 = v30;
  sub_29D4D20BC(v31 + *(v34 + 32), v30);
  v26 = v32;
  v25 = v33;
  if ((*(v32 + 48))(v24, 1, v33) == 1)
  {
    return sub_29D5B4D6C();
  }

  v28 = v29;
  (*(v26 + 32))(v29, v24, v25);
  sub_29D5B4D6C();
  sub_29D4D1EC8(&qword_2A17A4068, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D5B3D9C();
  return (*(v26 + 8))(v28, v25);
}

uint64_t sub_29D4D0C28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v32 = &v30 - v5;
  v6 = sub_29D5B0EDC();
  v34 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D2A64(0, &qword_2A17A4020, sub_29D4D1F10, &type metadata for NewRecordsFeedItemData.CodingKeys, MEMORY[0x29EDC9E80]);
  v35 = v9;
  v33 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for NewRecordsFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D4D1F10();
  v37 = v12;
  v17 = v38;
  sub_29D5B4DBC();
  if (v17)
  {
    return sub_29D48F668(a1);
  }

  v18 = v33;
  v19 = v34;
  v44 = 0;
  sub_29D4D1EC8(&qword_2A17A4030, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C28]);
  sub_29D5B4B6C();
  (*(v19 + 32))(v16, v36, v6);
  v43 = 1;
  v20 = sub_29D5B4B2C();
  v30 = v13;
  v21 = &v16[*(v13 + 20)];
  *v21 = v20;
  v21[1] = v22;
  v42 = 2;
  v23 = sub_29D5B4AEC();
  v24 = v16;
  v25 = v30;
  v26 = (v24 + *(v30 + 24));
  *v26 = v23;
  v26[1] = v27;
  sub_29D4D01BC(0, &qword_2A17A4008, MEMORY[0x29EDC3F48], MEMORY[0x29EDC9A40]);
  v41 = 3;
  sub_29D4D1FF8(&qword_2A17A4038, &qword_2A17A4040, MEMORY[0x29EDC3F68], MEMORY[0x29EDC9A78]);
  sub_29D5B4B6C();
  *(v24 + *(v25 + 28)) = v39;
  sub_29D5B0E6C();
  v40 = 4;
  sub_29D4D1EC8(&qword_2A1A193D0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  v28 = v32;
  sub_29D5B4B1C();
  (*(v18 + 8))(v37, v35);
  sub_29D4D1F64(v28, v24 + *(v30 + 32));
  sub_29D4D29FC(v24, v31, type metadata accessor for NewRecordsFeedItemData);
  sub_29D48F668(a1);
  return sub_29D4D28BC(v24, type metadata accessor for NewRecordsFeedItemData);
}

uint64_t sub_29D4D12D8(void *a1)
{
  v3 = v1;
  sub_29D4D2A64(0, &qword_2A17A4090, sub_29D4D29A8, &type metadata for NewLabsFeedItemData.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v13 - v9;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4D29A8();
  sub_29D5B4DCC();
  v16 = 0;
  sub_29D5B4BFC();
  if (!v2)
  {
    v11 = type metadata accessor for NewLabsFeedItemData(0);
    v15 = 1;
    sub_29D5B0E6C();
    sub_29D4D1EC8(&qword_2A1A193D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    sub_29D5B4BBC();
    v13[1] = *(v3 + *(v11 + 24));
    v14 = 2;
    sub_29D48E550(0, &qword_2A1A19698, MEMORY[0x29EDC9A40]);
    sub_29D4D2ACC(&qword_2A17A4098, MEMORY[0x29EDC99B8], MEMORY[0x29EDC9A48]);
    sub_29D5B4C0C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D4D1554(uint64_t a1)
{
  v2 = sub_29D5B0E6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v16 - v9;
  MEMORY[0x29ED5F330](*v1);
  v11 = type metadata accessor for NewLabsFeedItemData(0);
  sub_29D4D20BC(v1 + *(v11 + 20), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_29D5B4D6C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_29D5B4D6C();
    sub_29D4D1EC8(&qword_2A17A4068, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
    sub_29D5B3D9C();
    (*(v3 + 8))(v6, v2);
  }

  v12 = *(v1 + *(v11 + 24));
  result = MEMORY[0x29ED5F330](*(v12 + 16));
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = v12 + 40;
    do
    {

      sub_29D5B3EFC();

      v15 += 16;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_29D4D17B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v18 - v5;
  sub_29D4D2A64(0, &qword_2A17A4078, sub_29D4D29A8, &type metadata for NewLabsFeedItemData.CodingKeys, MEMORY[0x29EDC9E80]);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for NewLabsFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D499EC0(a1, a1[3]);
  sub_29D4D29A8();
  v21 = v10;
  v15 = v22;
  sub_29D5B4DBC();
  if (v15)
  {
    return sub_29D48F668(a1);
  }

  v16 = v19;
  v26 = 0;
  *v14 = sub_29D5B4B5C();
  sub_29D5B0E6C();
  v25 = 1;
  sub_29D4D1EC8(&qword_2A1A193D0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  sub_29D5B4B1C();
  sub_29D4D1F64(v6, v14 + *(v11 + 20));
  sub_29D48E550(0, &qword_2A1A19698, MEMORY[0x29EDC9A40]);
  v24 = 2;
  sub_29D4D2ACC(&qword_2A17A4088, MEMORY[0x29EDC99E8], MEMORY[0x29EDC9A78]);
  sub_29D5B4B6C();
  (*(v16 + 8))(v21, v20);
  *(v14 + *(v11 + 24)) = v23;
  sub_29D4D29FC(v14, v18, type metadata accessor for NewLabsFeedItemData);
  sub_29D48F668(a1);
  return sub_29D4D28BC(v14, type metadata accessor for NewLabsFeedItemData);
}

uint64_t sub_29D4D1BA8()
{
  v1 = *v0;
  sub_29D5B4D4C();
  MEMORY[0x29ED5F330](v1);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4D1BF0(uint64_t a1)
{
  v2 = *v1;
  sub_29D5B4D4C();
  MEMORY[0x29ED5F330](v2);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4D1C34()
{
  v1 = 0x65676E497473616CLL;
  if (*v0 != 1)
  {
    v1 = 0x73656D614E62616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_29D4D1C98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D4D31D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D4D1CCC(uint64_t a1)
{
  v2 = sub_29D4D29A8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D1D08(uint64_t a1)
{
  v2 = sub_29D4D29A8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4D1D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_29D5B4D4C();
  a3(v5);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4D1DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_29D5B4D4C();
  a4(v6);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4D1EC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D4D1F10()
{
  result = qword_2A17A4028;
  if (!qword_2A17A4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4028);
  }

  return result;
}

uint64_t sub_29D4D1F64(uint64_t a1, uint64_t a2)
{
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4D1FF8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D4D01BC(255, &qword_2A17A4008, MEMORY[0x29EDC3F48], MEMORY[0x29EDC9A40]);
    sub_29D4D1EC8(a2, MEMORY[0x29EDC3F48], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4D20BC(uint64_t a1, uint64_t a2)
{
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4D2150(void *a1, void *a2)
{
  v4 = sub_29D5B0E6C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v25 - v11;
  sub_29D4D2828(0);
  v14 = v13;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v26 = type metadata accessor for NewLabsFeedItemData(0);
  v18 = *(v26 + 20);
  v19 = *(v14 + 48);
  sub_29D4D20BC(a1 + v18, v17);
  sub_29D4D20BC(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_29D4D291C(v17);
LABEL_11:
      v21 = sub_29D4D9D64(*(a1 + *(v26 + 24)), *(a2 + *(v26 + 24)));
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_29D4D20BC(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_29D4D28BC(v17, sub_29D4D2828);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_29D4D1EC8(&qword_2A17A4070, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  v23 = sub_29D5B3E0C();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_29D4D291C(v17);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_29D4D2484(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B0E6C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v35 - v11;
  sub_29D4D2828(0);
  v14 = v13;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_29D5B0EAC() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for NewRecordsFeedItemData(0);
  v19 = v18[5];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v20 == *v22 && v21 == v22[1];
  if (!v23 && (sub_29D5B4C7C() & 1) == 0)
  {
    return 0;
  }

  v24 = v18[6];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_29D5B4C7C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  if (sub_29D4DB40C(*(a1 + v18[7]), *(a2 + v18[7])))
  {
    v29 = v18[8];
    v30 = *(v14 + 48);
    sub_29D4D20BC(a1 + v29, v17);
    sub_29D4D20BC(a2 + v29, &v17[v30]);
    v31 = *(v5 + 48);
    if (v31(v17, 1, v4) == 1)
    {
      if (v31(&v17[v30], 1, v4) == 1)
      {
        sub_29D4D291C(v17);
        return 1;
      }

      goto LABEL_20;
    }

    sub_29D4D20BC(v17, v12);
    if (v31(&v17[v30], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
LABEL_20:
      sub_29D4D28BC(v17, sub_29D4D2828);
      return 0;
    }

    (*(v5 + 32))(v8, &v17[v30], v4);
    sub_29D4D1EC8(&qword_2A17A4070, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
    v33 = sub_29D5B3E0C();
    v34 = *(v5 + 8);
    v34(v8, v4);
    v34(v12, v4);
    sub_29D4D291C(v17);
    if (v33)
    {
      return 1;
    }
  }

  return 0;
}

void sub_29D4D2828(uint64_t a1)
{
  if (!qword_2A1A193C8)
  {
    sub_29D4D01BC(255, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A193C8);
    }
  }
}

uint64_t sub_29D4D28BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4D291C(uint64_t a1)
{
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D4D29A8()
{
  result = qword_2A17A4080;
  if (!qword_2A17A4080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4080);
  }

  return result;
}

uint64_t sub_29D4D29FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D4D2A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D4D2ACC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D48E550(255, &qword_2A1A19698, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NewLabsFeedItemData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NewLabsFeedItemData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NewRecordsFeedItemData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewRecordsFeedItemData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D4D2DF8()
{
  result = qword_2A17A40A0;
  if (!qword_2A17A40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40A0);
  }

  return result;
}

unint64_t sub_29D4D2E50()
{
  result = qword_2A17A40A8;
  if (!qword_2A17A40A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40A8);
  }

  return result;
}

unint64_t sub_29D4D2EA8()
{
  result = qword_2A17A40B0;
  if (!qword_2A17A40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40B0);
  }

  return result;
}

unint64_t sub_29D4D2F00()
{
  result = qword_2A17A40B8;
  if (!qword_2A17A40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40B8);
  }

  return result;
}

unint64_t sub_29D4D2F58()
{
  result = qword_2A17A40C0;
  if (!qword_2A17A40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40C0);
  }

  return result;
}

unint64_t sub_29D4D2FB0()
{
  result = qword_2A17A40C8;
  if (!qword_2A17A40C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40C8);
  }

  return result;
}

uint64_t sub_29D4D3004(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000064;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54746E756F636361 && a2 == 0xEC000000656C7469 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53746E756F636361 && a2 == 0xEF656C7469746275 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEE0073746E756F43 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65676E497473616CLL && a2 == 0xEA00000000007473)
  {

    return 4;
  }

  else
  {
    v6 = sub_29D5B4C7C();

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

uint64_t sub_29D4D31D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000029D5BCA70 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676E497473616CLL && a2 == 0xEA00000000007473 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656D614E62616CLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_29D5B4C7C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_29D4D331C(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_29D4D3770, v8);
}

id sub_29D4D33F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B200C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D3710(0);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B0EFC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v5 + 8))(v8, v4);
  sub_29D4A24B4(v12);
  v14 = sub_29D5B3E1C();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D4D331C;
  aBlock[3] = &unk_2A2428488;
  v15 = _Block_copy(aBlock);
  v16 = objc_opt_self();

  v17 = [v16 contextualActionWithStyle:0 title:v14 handler:v15];

  _Block_release(v15);

  v18 = sub_29D5B3E1C();
  v19 = [objc_opt_self() systemImageNamed_];

  [v17 setImage_];
  v20 = [objc_opt_self() systemYellowColor];
  [v17 setBackgroundColor_];

  return v17;
}

void sub_29D4D3710(uint64_t a1)
{
  if (!qword_2A1A19588)
  {
    sub_29D5B0EFC();
    v1 = sub_29D5B472C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A19588);
    }
  }
}

id sub_29D4D3788(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B200C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D3710(0);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B0EFC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v5 + 8))(v8, v4);
  sub_29D4A24B4(v12);
  v14 = sub_29D5B3E1C();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D4D331C;
  aBlock[3] = &unk_2A24284D8;
  v15 = _Block_copy(aBlock);
  v16 = objc_opt_self();

  v17 = [v16 contextualActionWithStyle:0 title:v14 handler:v15];

  _Block_release(v15);

  v18 = sub_29D5B3E1C();
  v19 = [objc_opt_self() systemImageNamed_];

  [v17 setImage_];
  v20 = [objc_opt_self() systemYellowColor];
  [v17 setBackgroundColor_];

  return v17;
}

id sub_29D4D3AA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v87 - v12;
  v14 = sub_29D5B1D6C();
  v102 = *(v14 - 8);
  v103 = v14;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v101 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_29D5B0D3C();
  v100 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105, v17);
  v104 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(MEMORY[0x29EDC63A8]);
  v20 = sub_29D5B0D6C();
  v21 = [v19 initWithData_];

  v22 = [objc_allocWithZone(MEMORY[0x29EDC44D8]) init];
  if (v22)
  {
    v23 = v22;
    [v22 readFrom_];
    if (([v23 hasConceptIdentifier] & 1) != 0 && objc_msgSend(v23, sel_hasPreferredName) && objc_msgSend(v23, sel_hasLatestRecord) && objc_msgSend(v23, sel_hasIsPinned))
    {
      v93 = v21;
      v109 = MEMORY[0x29EDCA190];
      v24 = [v23 allRecordsCount];
      v96 = a1;
      v97 = a2;
      v94 = a3;
      v95 = v13;
      if (v24 >= 1)
      {
        result = [v23 allRecords];
        if (!result)
        {
LABEL_40:
          __break(1u);
          return result;
        }

        v26 = v104;
        v92 = result;
        sub_29D5B45EC();
        v27 = sub_29D4DEED8(&qword_2A17A4280, MEMORY[0x29EDB9AE8], MEMORY[0x29EDB9AF0]);
        v28 = v105;
        sub_29D5B474C();
        if (*(&v113 + 1))
        {
          v98 = v27;
          v99 = MEMORY[0x29EDCA190];
          while (1)
          {
            sub_29D4C97AC(&v112, v108);
            sub_29D4A7420(v108, &v107);
            sub_29D48F51C(0, &unk_2A17A3F00, 0x29EDC44D0);
            if (swift_dynamicCast())
            {
              v31 = a4;
              v32 = v106;
              result = [v23 conceptIdentifier];
              if (!result)
              {
                __break(1u);
LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

              v33 = result;
              v34 = a5;
              v35 = sub_29D5B3E5C();
              v37 = v36;

              result = [v23 preferredName];
              if (!result)
              {
                goto LABEL_34;
              }

              v38 = result;
              v39 = sub_29D5B3E5C();
              v41 = v40;

              sub_29D4D8D44(v35, v37, v39, v41, v110);

              sub_29D48F668(v108);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v99 = sub_29D5150F0(0, *(v99 + 2) + 1, 1, v99);
              }

              a4 = v31;
              v26 = v104;
              v28 = v105;
              v43 = *(v99 + 2);
              v42 = *(v99 + 3);
              a5 = v34;
              if (v43 >= v42 >> 1)
              {
                v99 = sub_29D5150F0((v42 > 1), v43 + 1, 1, v99);
              }

              v44 = v99;
              *(v99 + 2) = v43 + 1;
              v45 = &v44[88 * v43];
              v46 = v110[1];
              *(v45 + 2) = v110[0];
              *(v45 + 3) = v46;
              v47 = v110[2];
              v48 = v110[3];
              v49 = v110[4];
              *(v45 + 14) = v111;
              *(v45 + 5) = v48;
              *(v45 + 6) = v49;
              *(v45 + 4) = v47;
            }

            else
            {
              sub_29D48F668(v108);
            }

            sub_29D5B474C();
            if (!*(&v113 + 1))
            {
              goto LABEL_26;
            }
          }
        }

        v99 = MEMORY[0x29EDCA190];
LABEL_26:

        (*(v100 + 8))(v26, v28);
        sub_29D54F6D8(v99);
      }

      result = [v23 conceptIdentifier];
      if (!result)
      {
        goto LABEL_35;
      }

      v50 = result;
      v51 = sub_29D5B3E5C();
      v53 = v52;

      (*(v102 + 104))(v101, *MEMORY[0x29EDC4068], v103);
      result = [v23 preferredName];
      if (result)
      {
        v54 = result;
        v55 = sub_29D5B3E5C();
        v57 = v56;

        v58 = sub_29D5B455C();
        v104 = v59;
        v105 = v58;
        v60 = sub_29D5B456C();
        v99 = v61;
        v100 = v60;
        LODWORD(v98) = [v23 isPinned];
        result = [v23 latestRecord];
        if (result)
        {
          v62 = result;
          v90 = v57;
          v91 = v55;
          v92 = v53;
          result = [v23 conceptIdentifier];
          if (result)
          {
            v63 = result;
            v88 = v51;
            v89 = a4;
            v64 = a5;
            v65 = sub_29D5B3E5C();
            v67 = v66;

            result = [v23 preferredName];
            if (result)
            {
              v68 = result;
              v69 = sub_29D5B3E5C();
              v71 = v70;

              sub_29D4D8D44(v65, v67, v69, v71, &v112);

              v72 = v109;
              sub_29D48F51C(0, &qword_2A1A162A0, 0x29EDC44D8);
              sub_29D4DC4A0(&qword_2A17A4278, &qword_2A1A162A0, 0x29EDC44D8, &protocol conformance descriptor for HKCodableHealthRecordsSharableViewModel);
              v73 = v95;
              sub_29D5B301C();

              sub_29D4A96D0(v96, v97);
              v75 = v88;
              v74 = v89;
              *v64 = v94;
              v64[1] = v74;
              v76 = v92;
              v64[2] = v75;
              v64[3] = v76;
              v77 = type metadata accessor for SharedConceptFeedItemData(0);
              (*(v102 + 32))(v64 + v77[6], v101, v103);
              v78 = (v64 + v77[7]);
              v79 = v90;
              *v78 = v91;
              v78[1] = v79;
              v80 = (v64 + v77[8]);
              v81 = v104;
              *v80 = v105;
              v80[1] = v81;
              v82 = (v64 + v77[9]);
              v83 = v99;
              *v82 = v100;
              v82[1] = v83;
              *(v64 + v77[10]) = v98;
              v84 = v64 + v77[11];
              v85 = v115;
              *(v84 + 2) = v114;
              *(v84 + 3) = v85;
              *(v84 + 4) = v116;
              *(v84 + 10) = v117;
              v86 = v113;
              *v84 = v112;
              *(v84 + 1) = v86;
              *(v64 + v77[12]) = v72;
              sub_29D4DC294(v73, v64 + v77[13]);
              return (*(*(v77 - 1) + 56))(v64, 0, 1, v77);
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      else
      {
LABEL_36:
        __break(1u);
      }

      __break(1u);
      goto LABEL_38;
    }

    v21 = v23;
  }

  else
  {
  }

  sub_29D4A96D0(a1, a2);

  v29 = type metadata accessor for SharedConceptFeedItemData(0);
  v30 = *(*(v29 - 8) + 56);

  return v30(a5, 1, 1, v29);
}

uint64_t sub_29D4D4390(void *a1)
{
  v3 = v1;
  sub_29D4DF734(0, &qword_2A17A4118, sub_29D4D8C6C, &type metadata for SharedConceptComboFeedItemData.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v12 - v9;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4D8C6C();
  sub_29D5B4DCC();
  v15 = 0;
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4120, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A0]);
  sub_29D5B4C0C();
  if (!v2)
  {
    v12[1] = *(v3 + *(type metadata accessor for SharedConceptComboFeedItemData(0) + 20));
    v14 = 1;
    sub_29D4D8A1C(0, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    sub_29D4D8CC0(&qword_2A17A4098, MEMORY[0x29EDC99B8], MEMORY[0x29EDC9A48]);
    sub_29D5B4C0C();
    v13 = 2;
    sub_29D5B0E6C();
    sub_29D4DEED8(&qword_2A1A193D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    sub_29D5B4C0C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D4D465C(uint64_t a1)
{
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4128, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A8]);
  sub_29D5B3D9C();
  v2 = *(v1 + *(type metadata accessor for SharedConceptComboFeedItemData(0) + 20));
  MEMORY[0x29ED5F330](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_29D5B3EFC();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  sub_29D5B0E6C();
  sub_29D4DEED8(&qword_2A17A4068, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  return sub_29D5B3D9C();
}

uint64_t sub_29D4D479C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = sub_29D5B0E6C();
  v25 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v3);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B1D6C();
  v30 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v31 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DF734(0, &qword_2A17A4100, sub_29D4D8C6C, &type metadata for SharedConceptComboFeedItemData.CodingKeys, MEMORY[0x29EDC9E80]);
  v32 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for SharedConceptComboFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D4D8C6C();
  v33 = v11;
  v16 = v34;
  sub_29D5B4DBC();
  if (v16)
  {
    return sub_29D48F668(a1);
  }

  v18 = v29;
  v17 = v30;
  v34 = v12;
  v38 = 0;
  sub_29D4DEED8(&qword_2A17A4110, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B8]);
  sub_29D5B4B6C();
  v19 = *(v17 + 32);
  v24 = v15;
  v19(v15, v31, v5);
  sub_29D4D8A1C(0, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  v37 = 1;
  sub_29D4D8CC0(&qword_2A17A4088, MEMORY[0x29EDC99E8], MEMORY[0x29EDC9A78]);
  sub_29D5B4B6C();
  v31 = v5;
  *&v24[*(v34 + 20)] = v35;
  v36 = 2;
  sub_29D4DEED8(&qword_2A1A193D0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  v21 = v27;
  v20 = v28;
  sub_29D5B4B6C();
  (*(v18 + 8))(v33, v32);
  v22 = v24;
  (*(v25 + 32))(&v24[*(v34 + 24)], v20, v21);
  sub_29D4DC124(v22, v26, type metadata accessor for SharedConceptComboFeedItemData);
  sub_29D48F668(a1);
  return sub_29D4DC18C(v22, type metadata accessor for SharedConceptComboFeedItemData);
}

unint64_t sub_29D4D4CE0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x655274736574616CLL;
    v6 = 0x6465646465626D65;
    if (a1 != 8)
    {
      v6 = 0x6E6F6973726576;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7470697263736564;
    if (a1 != 5)
    {
      v7 = 0x64656E6E69507369;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656C626172616873;
    v2 = 0xD000000000000013;
    v3 = 0x656C746974;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_29D4D4E4C(void *a1)
{
  v2 = v1;
  sub_29D4DF734(0, &qword_2A17A4178, sub_29D4DC1EC, &type metadata for SharedConceptFeedItemData.CodingKeys, MEMORY[0x29EDC9E88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v18[-v8];
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DC1EC();
  sub_29D5B4DCC();
  LOBYTE(v29[0]) = 0;
  v10 = v35;
  sub_29D5B4BCC();
  if (!v10)
  {
    LOBYTE(v29[0]) = 1;
    sub_29D5B4BCC();
    v11 = type metadata accessor for SharedConceptFeedItemData(0);
    LOBYTE(v29[0]) = 2;
    sub_29D5B1D6C();
    sub_29D4DEED8(&qword_2A17A4120, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A0]);
    sub_29D5B4C0C();
    LOBYTE(v29[0]) = 3;
    sub_29D5B4BCC();
    LOBYTE(v29[0]) = 4;
    sub_29D5B4B8C();
    LOBYTE(v29[0]) = 5;
    sub_29D5B4B8C();
    v34[0] = 6;
    sub_29D5B4BDC();
    v12 = v2 + *(v11 + 44);
    v13 = *(v12 + 48);
    v14 = *(v12 + 16);
    v30 = *(v12 + 32);
    v31 = v13;
    v15 = *(v12 + 48);
    v32 = *(v12 + 64);
    v16 = *(v12 + 16);
    v29[0] = *v12;
    v29[1] = v16;
    v25 = v30;
    v26 = v15;
    v27 = *(v12 + 64);
    v33 = *(v12 + 80);
    v28 = *(v12 + 80);
    v23 = v29[0];
    v24 = v14;
    v22 = 7;
    sub_29D4B4604(v29, v20);
    sub_29D4DC328();
    sub_29D5B4C0C();
    v20[2] = v25;
    v20[3] = v26;
    v20[4] = v27;
    v21 = v28;
    v20[0] = v23;
    v20[1] = v24;
    sub_29D4B4660(v20);
    v19 = *(v2 + *(v11 + 48));
    v18[7] = 8;
    sub_29D4D8A1C(0, &qword_2A1A16478, &type metadata for SharedConceptFormattedRecord, MEMORY[0x29EDC9A40]);
    sub_29D4DC37C(&qword_2A17A4188, sub_29D4DC328, MEMORY[0x29EDC9A48]);
    sub_29D5B4C0C();
    LOBYTE(v19) = 9;
    sub_29D5B175C();
    sub_29D4DEED8(&qword_2A17A4190, MEMORY[0x29EDC3990], MEMORY[0x29EDC3998]);
    sub_29D5B4BBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_29D4D533C(uint64_t a1)
{
  v3 = sub_29D5B175C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = v17 - v10;
  sub_29D5B3EFC();
  sub_29D5B3EFC();
  v12 = type metadata accessor for SharedConceptFeedItemData(0);
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4128, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A8]);
  sub_29D5B3D9C();
  sub_29D5B3EFC();
  if (*(v1 + v12[8] + 8))
  {
    sub_29D5B4D6C();
    sub_29D5B3EFC();
  }

  else
  {
    sub_29D5B4D6C();
  }

  if (*(v1 + v12[9] + 8))
  {
    sub_29D5B4D6C();
    sub_29D5B3EFC();
  }

  else
  {
    sub_29D5B4D6C();
  }

  sub_29D5B4D6C();
  v13 = v1 + v12[11];
  v14 = *(v13 + 48);
  v17[2] = *(v13 + 32);
  v17[3] = v14;
  v17[4] = *(v13 + 64);
  v18 = *(v13 + 80);
  v15 = *(v13 + 16);
  v17[0] = *v13;
  v17[1] = v15;
  sub_29D4D62E4(a1);
  sub_29D4DBB6C(a1, *(v1 + v12[12]));
  sub_29D4DC40C(v1 + v12[13], v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return sub_29D5B4D6C();
  }

  (*(v4 + 32))(v7, v11, v3);
  sub_29D5B4D6C();
  sub_29D4DEED8(&qword_2A17A4198, MEMORY[0x29EDC3990], MEMORY[0x29EDC39A0]);
  sub_29D5B3D9C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D4D56A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v38 = &v36 - v5;
  v6 = sub_29D5B1D6C();
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DF734(0, &qword_2A17A4150, sub_29D4DC1EC, &type metadata for SharedConceptFeedItemData.CodingKeys, MEMORY[0x29EDC9E80]);
  v43 = v11;
  v41 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for SharedConceptFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DC1EC();
  v42 = v14;
  v19 = v44;
  sub_29D5B4DBC();
  if (v19)
  {
    return sub_29D48F668(a1);
  }

  v44 = a1;
  LOBYTE(v46) = 0;
  *v18 = sub_29D5B4B2C();
  v18[1] = v20;
  LOBYTE(v46) = 1;
  v18[2] = sub_29D5B4B2C();
  v18[3] = v21;
  LOBYTE(v46) = 2;
  sub_29D4DEED8(&qword_2A17A4110, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B8]);
  v22 = v39;
  v36 = 0;
  sub_29D5B4B6C();
  (*(v40 + 32))(v18 + v15[6], v10, v22);
  LOBYTE(v46) = 3;
  v23 = sub_29D5B4B2C();
  v24 = (v18 + v15[7]);
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v46) = 4;
  v26 = sub_29D5B4AEC();
  v27 = (v18 + v15[8]);
  *v27 = v26;
  v27[1] = v28;
  LOBYTE(v46) = 5;
  v29 = sub_29D5B4AEC();
  v30 = (v18 + v15[9]);
  *v30 = v29;
  v30[1] = v31;
  LOBYTE(v46) = 6;
  *(v18 + v15[10]) = sub_29D5B4B3C() & 1;
  v53 = 7;
  sub_29D4DC240();
  sub_29D5B4B6C();
  v32 = v18 + v15[11];
  v33 = v49;
  *(v32 + 2) = v48;
  *(v32 + 3) = v33;
  *(v32 + 4) = v50;
  *(v32 + 10) = v51;
  v34 = v47;
  *v32 = v46;
  *(v32 + 1) = v34;
  sub_29D4D8A1C(0, &qword_2A1A16478, &type metadata for SharedConceptFormattedRecord, MEMORY[0x29EDC9A40]);
  v52 = 8;
  sub_29D4DC37C(&qword_2A17A4168, sub_29D4DC240, MEMORY[0x29EDC9A78]);
  sub_29D5B4B6C();
  *(v18 + v15[12]) = v45;
  sub_29D5B175C();
  LOBYTE(v45) = 9;
  sub_29D4DEED8(&qword_2A17A4170, MEMORY[0x29EDC3990], MEMORY[0x29EDC39B0]);
  sub_29D5B4B1C();
  (*(v41 + 8))(v42, v43);
  sub_29D4DC294(v38, v18 + v15[13]);
  sub_29D4DC124(v18, v37, type metadata accessor for SharedConceptFeedItemData);
  sub_29D48F668(v44);
  return sub_29D4DC18C(v18, type metadata accessor for SharedConceptFeedItemData);
}

uint64_t sub_29D4D5FAC(void *a1)
{
  v3 = v1;
  sub_29D4DF734(0, &qword_2A17A4248, sub_29D4DE704, &type metadata for SharedConceptFormattedRecord.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v12 - v9;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DE704();
  sub_29D5B4DCC();
  v14 = *v3;
  v13 = 0;
  sub_29D4DE758(0, &qword_2A17A4218, MEMORY[0x29EDC9A40]);
  sub_29D4DE7D0(&qword_2A17A4250, &qword_2A17A4258, MEMORY[0x29EDBA1D8], MEMORY[0x29EDC9A48]);
  sub_29D5B4C0C();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_29D5B4BCC();
    LOBYTE(v14) = 2;
    sub_29D5B4BCC();
    v14 = v3[5];
    v13 = 3;
    sub_29D4DE988(0, &qword_2A17A4230, type metadata accessor for SharedConceptCodedValue, MEMORY[0x29EDC9A40]);
    sub_29D4DE868(&qword_2A17A4260, &qword_2A17A4268, &unk_29D5B7B60, MEMORY[0x29EDC9A48]);
    sub_29D5B4C0C();
    LOBYTE(v14) = 4;
    sub_29D5B4BCC();
    LOBYTE(v14) = 5;
    sub_29D5B4BEC();
    LOBYTE(v14) = 6;
    sub_29D5B4BCC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D4D62E4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  MEMORY[0x29ED5F330](v5);
  if (v5)
  {
    sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
    v7 = *&v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
    v8 = *(*(v6 - 8) + 72);
    sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
    do
    {
      sub_29D5B3D9C();
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  sub_29D5B3EFC();
  sub_29D5B3EFC();
  sub_29D4DB620(a1, *(v2 + 5));
  sub_29D5B3EFC();
  v9 = v2[8];
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x29ED5F360](*&v9);

  return sub_29D5B3EFC();
}

uint64_t sub_29D4D6470(void *a1)
{
  v3 = v1;
  sub_29D4DF734(0, &qword_2A17A4338, sub_29D4DF684, &type metadata for SharedConceptCodedValue.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v12[-v9];
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DF684();
  sub_29D5B4DCC();
  v13 = *v3;
  v12[15] = 0;
  sub_29D4DE758(0, &qword_2A17A4218, MEMORY[0x29EDC9A40]);
  sub_29D4DE7D0(&qword_2A17A4250, &qword_2A17A4258, MEMORY[0x29EDBA1D8], MEMORY[0x29EDC9A48]);
  sub_29D5B4C0C();
  if (!v2)
  {
    type metadata accessor for SharedConceptCodedValue(0);
    v12[14] = 1;
    sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
    sub_29D4DF6D8(&qword_2A17A4340, MEMORY[0x29EDBA1D8]);
    sub_29D5B4BBC();
    v12[13] = 2;
    sub_29D5B4B8C();
    v12[12] = 3;
    sub_29D5B4B8C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D4D6738(uint64_t a1)
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v29 = &v28 - v4;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v28 - v12;
  v33 = v1;
  v14 = *v1;
  MEMORY[0x29ED5F330](*(*v1 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v18 = *(v10 + 16);
    v16 = v10 + 16;
    v17 = v18;
    v19 = v14 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v20 = *(v16 + 56);
    do
    {
      v17(v13, v19, v9);
      sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
      sub_29D5B3D9C();
      (*(v16 - 8))(v13, v9);
      v19 += v20;
      --v15;
    }

    while (v15);
  }

  v21 = type metadata accessor for SharedConceptCodedValue(0);
  v22 = v33;
  v23 = v30;
  sub_29D4DC124(v33 + v21[5], v30, sub_29D4A05F4);
  v25 = v31;
  v24 = v32;
  if ((*(v31 + 48))(v23, 1, v32) == 1)
  {
    sub_29D5B4D6C();
  }

  else
  {
    v26 = v29;
    (*(v25 + 32))(v29, v23, v24);
    sub_29D5B4D6C();
    sub_29D4DC504(&qword_2A17A41C0, &qword_2A17A41C8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
    sub_29D5B3D9C();
    (*(v25 + 8))(v26, v24);
  }

  if (*(v22 + v21[6] + 8))
  {
    sub_29D5B4D6C();
    sub_29D5B3EFC();
  }

  else
  {
    sub_29D5B4D6C();
  }

  if (!*(v22 + v21[7] + 8))
  {
    return sub_29D5B4D6C();
  }

  sub_29D5B4D6C();
  return sub_29D5B3EFC();
}

uint64_t sub_29D4D6B38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DF734(0, &qword_2A17A4320, sub_29D4DF684, &type metadata for SharedConceptCodedValue.CodingKeys, MEMORY[0x29EDC9E80]);
  v30 = v7;
  v28 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = v26 - v9;
  v11 = type metadata accessor for SharedConceptCodedValue(0);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = (v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DF684();
  v29 = v10;
  v15 = v31;
  sub_29D5B4DBC();
  if (v15)
  {
    return sub_29D48F668(a1);
  }

  v16 = v28;
  v31 = v11;
  sub_29D4DE758(0, &qword_2A17A4218, MEMORY[0x29EDC9A40]);
  v35 = 0;
  sub_29D4DE7D0(&qword_2A17A4220, &qword_2A17A4228, MEMORY[0x29EDBA1F0], MEMORY[0x29EDC9A78]);
  sub_29D5B4B6C();
  v26[1] = v36;
  *v14 = v36;
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
  v34 = 1;
  sub_29D4DF6D8(&qword_2A17A4330, MEMORY[0x29EDBA1F0]);
  sub_29D5B4B1C();
  v17 = v31;
  sub_29D4DE9EC(v6, v14 + *(v31 + 20), sub_29D4A05F4);
  v33 = 2;
  v18 = sub_29D5B4AEC();
  v19 = (v14 + *(v17 + 24));
  *v19 = v18;
  v19[1] = v20;
  v32 = 3;
  v21 = sub_29D5B4AEC();
  v23 = v22;
  (*(v16 + 8))(v29, v30);
  v24 = (v14 + *(v17 + 28));
  *v24 = v21;
  v24[1] = v23;
  sub_29D4DC124(v14, v27, type metadata accessor for SharedConceptCodedValue);
  sub_29D48F668(a1);
  return sub_29D4DC18C(v14, type metadata accessor for SharedConceptCodedValue);
}

uint64_t sub_29D4D6FF0(void *a1)
{
  v3 = v1;
  sub_29D4DF734(0, &qword_2A17A4148, sub_29D4DC0D0, &type metadata for SharedNewRecordsAlertData.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v13 - v9;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DC0D0();
  sub_29D5B4DCC();
  v18 = 0;
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4120, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A0]);
  sub_29D5B4C0C();
  if (!v2)
  {
    v11 = type metadata accessor for SharedNewRecordsAlertData(0);
    v17 = 1;
    sub_29D5B4BFC();
    v13[1] = *(v3 + *(v11 + 24));
    v16 = 2;
    sub_29D4D8A1C(0, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    sub_29D4D8CC0(&qword_2A17A4098, MEMORY[0x29EDC99B8], MEMORY[0x29EDC9A48]);
    sub_29D5B4C0C();
    v15 = 3;
    sub_29D5B4BCC();
    v14 = 4;
    sub_29D5B0E6C();
    sub_29D4DEED8(&qword_2A1A193D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    sub_29D5B4C0C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D4D7318(uint64_t a1)
{
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4128, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A8]);
  sub_29D5B3D9C();
  v2 = type metadata accessor for SharedNewRecordsAlertData(0);
  MEMORY[0x29ED5F330](*(v1 + *(v2 + 20)));
  v3 = *(v1 + *(v2 + 24));
  MEMORY[0x29ED5F330](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 40;
    do
    {

      sub_29D5B3EFC();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  sub_29D5B3EFC();
  sub_29D5B0E6C();
  sub_29D4DEED8(&qword_2A17A4068, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  return sub_29D5B3D9C();
}

uint64_t sub_29D4D7478@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v33 = sub_29D5B0E6C();
  v30 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v3);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B1D6C();
  v35 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v37 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DF734(0, &qword_2A17A4138, sub_29D4DC0D0, &type metadata for SharedNewRecordsAlertData.CodingKeys, MEMORY[0x29EDC9E80]);
  v36 = v8;
  v34 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for SharedNewRecordsAlertData(0);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DC0D0();
  v38 = v11;
  v16 = v39;
  sub_29D5B4DBC();
  if (v16)
  {
    return sub_29D48F668(a1);
  }

  v18 = v34;
  v17 = v35;
  v45 = 0;
  sub_29D4DEED8(&qword_2A17A4110, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B8]);
  sub_29D5B4B6C();
  v19 = *(v17 + 32);
  v39 = v5;
  v19(v15, v37, v5);
  v44 = 1;
  *&v15[v12[5]] = sub_29D5B4B5C();
  sub_29D4D8A1C(0, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  v43 = 2;
  sub_29D4D8CC0(&qword_2A17A4088, MEMORY[0x29EDC99E8], MEMORY[0x29EDC9A78]);
  sub_29D5B4B6C();
  v20 = a1;
  v21 = v15;
  *&v15[v12[6]] = v40;
  v42 = 3;
  v22 = sub_29D5B4B2C();
  v23 = v12;
  v24 = &v15[v12[7]];
  *v24 = v22;
  v24[1] = v25;
  v41 = 4;
  sub_29D4DEED8(&qword_2A1A193D0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  v27 = v32;
  v26 = v33;
  sub_29D5B4B6C();
  (*(v18 + 8))(v38, v36);
  (*(v30 + 32))(v21 + v23[8], v27, v26);
  sub_29D4DC124(v21, v31, type metadata accessor for SharedNewRecordsAlertData);
  sub_29D48F668(v20);
  return sub_29D4DC18C(v21, type metadata accessor for SharedNewRecordsAlertData);
}

uint64_t sub_29D4D7A90()
{
  v1 = 0x736D657469;
  if (*v0 != 1)
  {
    v1 = 1702125924;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_29D4D7AE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D4DDA1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D4D7B0C(uint64_t a1)
{
  v2 = sub_29D4D8C6C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D7B48(uint64_t a1)
{
  v2 = sub_29D4D8C6C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4D7BF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D4DDB3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D4D7C28(uint64_t a1)
{
  v2 = sub_29D4DC1EC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D7C64(uint64_t a1)
{
  v2 = sub_29D4DC1EC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4D7D08()
{
  v1 = *v0;
  v2 = 0x73676E69646F63;
  v3 = 0x6174614465746164;
  if (v1 != 5)
  {
    v3 = 0x555564726F636572;
  }

  v4 = 0x6C61566465646F63;
  if (v1 != 3)
  {
    v4 = 0x74696E556D756375;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_29D4D7DFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D4DDE88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D4D7E30(uint64_t a1)
{
  v2 = sub_29D4DE704();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D7E6C(uint64_t a1)
{
  v2 = sub_29D4DE704();

  return MEMORY[0x2A1C73280](a1, v2);
}

double sub_29D4D7EA8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_29D4DE0F0(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_29D4D7F1C()
{
  sub_29D5B4D4C();
  sub_29D4D62E4(v1);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4D7F60(uint64_t a1)
{
  sub_29D5B4D4C();
  sub_29D4D62E4(v2);
  return sub_29D5B4D9C();
}

unint64_t sub_29D4D8008()
{
  v1 = 0x646F436465786F62;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0x566C617574786574;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D4D80A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D4DF340(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D4D80D4(uint64_t a1)
{
  v2 = sub_29D4DF684();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D8110(uint64_t a1)
{
  v2 = sub_29D4DF684();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4D81B4()
{
  v1 = *v0;
  v2 = 0x4379616C70736964;
  v3 = 0x614E64726F636572;
  v4 = 0x4E7463656A627573;
  if (v1 != 3)
  {
    v4 = 0x6164705565746164;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x664F7265626D756ELL;
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

uint64_t sub_29D4D8280@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D4DF4B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D4D82A8(uint64_t a1)
{
  v2 = sub_29D4DC0D0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D82E4(uint64_t a1)
{
  v2 = sub_29D4DC0D0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4D8368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_29D5B4D4C();
  a3(v5);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4D83CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_29D5B4D4C();
  a4(v6);
  return sub_29D5B4D9C();
}

id (*sub_29D4D844C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasLatestSupportedVersion];
  return sub_29D4D84A0;
}

id (*sub_29D4D84DC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 latestSupportedVersion];
  return sub_29D4D8530;
}

id (*sub_29D4D857C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasMinimumSupportedVersion];
  return sub_29D4D85D0;
}

id (*sub_29D4D860C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 minimumSupportedVersion];
  return sub_29D4D8660;
}

void sub_29D4D86BC(uint64_t a1)
{
  sub_29D5B1D6C();
  if (v1 <= 0x3F)
  {
    sub_29D4D8A1C(319, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    if (v2 <= 0x3F)
    {
      sub_29D5B0E6C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29D4D87C4(uint64_t a1)
{
  sub_29D5B1D6C();
  if (v1 <= 0x3F)
  {
    sub_29D4D8A1C(319, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    if (v2 <= 0x3F)
    {
      sub_29D5B0E6C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29D4D88D8(uint64_t a1)
{
  v1 = MEMORY[0x29EDC99B0];
  sub_29D5B1D6C();
  if (v2 <= 0x3F)
  {
    sub_29D4D8A1C(319, &qword_2A1A164A0, v1, MEMORY[0x29EDC9C68]);
    if (v3 <= 0x3F)
    {
      sub_29D4D8A1C(319, &qword_2A1A16478, &type metadata for SharedConceptFormattedRecord, MEMORY[0x29EDC9A40]);
      if (v4 <= 0x3F)
      {
        sub_29D4DE988(319, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_29D4D8A1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_29D4D8A6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_29D4D8A90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_29D4D8AD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D4D8B40()
{
  result = qword_2A17A40E0;
  if (!qword_2A17A40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40E0);
  }

  return result;
}

unint64_t sub_29D4D8C6C()
{
  result = qword_2A17A4108;
  if (!qword_2A17A4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4108);
  }

  return result;
}

uint64_t sub_29D4D8CC0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D4D8A1C(255, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_29D4D8D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v38 = a3;
  v39 = a4;
  v37 = a1;
  v9 = sub_29D5B0EDC();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x29EDCA190];
  v41 = MEMORY[0x29EDCA190];
  if ([v5 valueWithRangesCount] >= 1)
  {
    result = [v5 valueWithRanges];
    if (!result)
    {
      __break(1u);
      goto LABEL_16;
    }

    v16 = result;
    v17 = v6;
    v18 = sub_29D4DD648(v16, v17);

    sub_29D54F6AC(v18);
  }

  v40 = v14;
  if ([v6 codesCount] < 1)
  {
    goto LABEL_7;
  }

  result = [v6 codes];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = result;
  v20 = sub_29D4DD254();

  sub_29D54F554(v20);
LABEL_7:
  if (![v6 hasUcumUnitString])
  {
    v22 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_11;
  }

  result = [v6 ucumUnitString];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = result;
  v22 = sub_29D5B3E5C();
  v24 = v23;

LABEL_11:
  sub_29D5B0ECC();
  v25 = sub_29D5B0E8C();
  v27 = v26;
  (*(v10 + 8))(v13, v9);
  if (![v6 hasRecordUUID])
  {
LABEL_14:
    v30 = v40;
    v31 = v41;

    v32 = v39;

    result = [v6 dateData];
    v34 = v37;
    v33 = v38;
    *a5 = v30;
    a5[1] = v34;
    a5[2] = a2;
    a5[3] = v33;
    a5[4] = v32;
    a5[5] = v31;
    a5[6] = v22;
    a5[7] = v24;
    a5[8] = v35;
    a5[9] = v25;
    a5[10] = v27;
    return result;
  }

  result = [v6 recordUUID];
  if (result)
  {
    v28 = result;

    v25 = sub_29D5B3E5C();
    v27 = v29;

    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_29D4D8FFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29D4A05F4(0);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v38 - v11;
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v38 - v14;
  sub_29D4A7420(a1, v40);
  sub_29D48F51C(0, &qword_2A17A4290, 0x29EDC4520);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = type metadata accessor for SharedConceptCodedValue(0);
    return (*(*(v28 - 8) + 56))(a2, 1, 1, v28);
  }

  v16 = v39;
  v40[0] = MEMORY[0x29EDCA190];
  if ([v39 codesCount] >= 1)
  {
    result = [v16 codes];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    v19 = sub_29D4DD254();

    sub_29D54F554(v19);
  }

  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v22(v15, 1, 1, v20);
  if (sub_29D4D9410())
  {
    sub_29D48F51C(0, &qword_2A1A162F0, 0x29EDBAC10);
    sub_29D5B3D1C();
    sub_29D4DC18C(v15, sub_29D4A05F4);
    v22(v12, 0, 1, v21);
    sub_29D4DE9EC(v12, v15, sub_29D4A05F4);
  }

  if ([v16 hasValueTitle] && (v23 = objc_msgSend(v16, sel_valueTitle)) != 0)
  {
    v24 = v23;
    v25 = sub_29D5B3E5C();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v29 = v40[0];
  sub_29D4DC124(v15, v8, sub_29D4A05F4);
  v30 = [v16 textualValue];
  if (v30)
  {
    v31 = v30;
    v32 = sub_29D5B3E5C();
    v34 = v33;

    sub_29D4DC18C(v15, sub_29D4A05F4);
  }

  else
  {
    sub_29D4DC18C(v15, sub_29D4A05F4);

    v32 = 0;
    v34 = 0;
  }

  *a2 = v29;
  v35 = type metadata accessor for SharedConceptCodedValue(0);
  sub_29D4DE9EC(v8, a2 + v35[5], sub_29D4A05F4);
  v36 = (a2 + v35[6]);
  *v36 = v25;
  v36[1] = v27;
  v37 = (a2 + v35[7]);
  *v37 = v32;
  v37[1] = v34;
  return (*(*(v35 - 1) + 56))(a2, 0, 1, v35);
}

id sub_29D4D9410()
{
  if (![v0 hasQuantityValue])
  {
    return 0;
  }

  v1 = [objc_opt_self() UCUMSystem];
  v2 = &off_29F351000;
  result = [v0 quantityValue];
  if (!result)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = result;
  v5 = &off_29F351000;
  v6 = [result unitString];

  if (v6)
  {
    sub_29D5B3E5C();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  result = [v0 quantityValue];
  if (!result)
  {
    goto LABEL_31;
  }

  v9 = result;
  v10 = [result unitString];

  if (v10)
  {
    sub_29D5B3E5C();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_29D5B3E1C();
  if (v8)
  {
    v14 = sub_29D5B3E1C();

    if (v12)
    {
LABEL_13:
      v15 = sub_29D5B3E1C();

      goto LABEL_16;
    }
  }

  else
  {
    v14 = 0;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  v15 = 0;
LABEL_16:
  v16 = [objc_allocWithZone(MEMORY[0x29EDBAC38]) initWithCodingSystem:v1 codingVersion:v13 code:v14 displayString:v15];

  result = [v0 quantityValue];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v17 = result;
  [result value];

  sub_29D5B414C();
  v18 = v16;
  v19 = sub_29D5B3E1C();

  v20 = objc_opt_self();
  v21 = [v20 codedQuantityWithValue:v19 unitCoding:v18];

  v22 = objc_opt_self();
  v23 = [v22 inspectableValueWithCodedQuantity_];

  v24 = [objc_opt_self() inspectableValueCollectionSingleWithValue_];
  if ([v0 hasReferenceRangeMin])
  {
    result = [v0 referenceRangeMin];
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v25 = result;
    [result value];

    sub_29D5B414C();
    v26 = v18;
    v27 = sub_29D5B3E1C();

    v28 = [v20 codedQuantityWithValue:v27 unitCoding:v26];

    v29 = [v22 inspectableValueWithCodedQuantity_];
    v5 = &off_29F351000;
  }

  else
  {
    v29 = 0;
  }

  if ([v0 hasReferenceRangeMax])
  {
    v30 = v5;
    result = [v0 referenceRangeMax];
    if (!result)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    v31 = result;
    [result &off_29F351178];

    sub_29D5B414C();
    v32 = sub_29D5B3E1C();

    v33 = [v20 codedQuantityWithValue:v32 unitCoding:v18];

    v34 = [v22 inspectableValueWithCodedQuantity_];
    v5 = v30;
    v2 = &off_29F351000;
  }

  else
  {
    v34 = 0;
    v33 = v18;
  }

  result = [v0 v2[395]];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v35 = result;
  v36 = [result v5[396]];

  if (v36)
  {
    sub_29D5B3E5C();

    v37 = sub_29D5B3E1C();
  }

  else
  {
    v37 = 0;
  }

  v38 = [objc_opt_self() valueInRangeWithLow:v29 high:v34 currentValue:v24 unit:v37];

  return v38;
}

id sub_29D4D99AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D4A7420(a1, v31);
  sub_29D48F51C(0, &qword_2A17A42A0, 0x29EDC44C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 1;
LABEL_33:
    sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
    return (*(*(v30 - 8) + 56))(a2, v12, 1, v30);
  }

  v3 = v32;
  if (![v32 hasSystem])
  {
    goto LABEL_10;
  }

  result = [v3 system];
  if (!result)
  {
    __break(1u);
    goto LABEL_35;
  }

  v5 = result;
  v6 = sub_29D5B3E5C();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  result = [v3 system];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() codeSystemWithIdentifier_];

LABEL_11:
    if ([v3 hasVersion] && (v13 = objc_msgSend(v3, sel_version)) != 0)
    {
      v14 = v13;
      sub_29D5B3E5C();
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if ([v3 hasCode] && (v17 = objc_msgSend(v3, sel_code)) != 0)
    {
      v18 = v17;
      sub_29D5B3E5C();
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if ([v3 hasDisplayName])
    {
      v21 = [v3 displayName];
      if (v21)
      {
        v22 = v21;
        sub_29D5B3E5C();
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      if (!v16)
      {
LABEL_27:
        v28 = v11;
        v26 = 0;
        if (!v20)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v24 = 0;
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    v25 = v11;
    v26 = sub_29D5B3E1C();

    if (!v20)
    {
LABEL_28:
      v27 = 0;
      goto LABEL_29;
    }

LABEL_24:
    v27 = sub_29D5B3E1C();

LABEL_29:
    if (v24)
    {
      v29 = sub_29D5B3E1C();
    }

    else
    {
      v29 = 0;
    }

    [objc_allocWithZone(MEMORY[0x29EDBAC38]) initWithCodingSystem:v11 codingVersion:v26 code:v27 displayString:v29];

    sub_29D48F51C(0, &qword_2A17A41A8, 0x29EDBAC38);
    sub_29D5B3D1C();

    v12 = 0;
    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_29D4D9D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_29D5B4C7C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_29D4D9DF4(uint64_t a1, uint64_t a2)
{
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    v24 = 0;
    return v24 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v19 = *(v6 + 16);
  v18 = v6 + 16;
  v20 = (v18 - 8);
  v27 = *(v18 + 56);
  v28 = v19;
  while (1)
  {
    v21 = v28;
    result = (v28)(v13, v16, v5);
    if (!v14)
    {
      break;
    }

    v23 = v18;
    v21(v10, v17, v5);
    sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
    v24 = sub_29D5B3E0C();
    v25 = *v20;
    (*v20)(v10, v5);
    v25(v13, v5);
    if (v24)
    {
      v17 += v27;
      v16 += v27;
      v26 = v14-- == 1;
      v18 = v23;
      if (!v26)
      {
        continue;
      }
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4DA028(uint64_t a1, uint64_t a2)
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v73 - v8;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48(0);
  v86 = v14;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
  v19 = v18;
  v95 = *(v18 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v94 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v73 - v24;
  v88 = type metadata accessor for SharedConceptCodedValue(0);
  v27 = MEMORY[0x2A1C7C4A8](v88, v26);
  v89 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v32 = (&v73 - v31);
  v33 = *(a1 + 16);
  if (v33 == *(a2 + 16))
  {
    if (!v33 || a1 == a2)
    {
      return 1;
    }

    v79 = v17;
    v80 = v5;
    v75 = v9;
    v34 = 0;
    v35 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v83 = a1 + v35;
    v81 = a2 + v35;
    v90 = (v95 + 8);
    v77 = v13;
    v78 = (v6 + 48);
    v74 = (v6 + 32);
    v76 = (v6 + 8);
    v82 = *(v30 + 72);
    v87 = (&v73 - v31);
    v85 = v33;
    v91 = v95 + 16;
    while (1)
    {
      v36 = v82 * v34;
      result = sub_29D4DC124(v83 + v82 * v34, v32, type metadata accessor for SharedConceptCodedValue);
      if (v34 == v85)
      {
LABEL_43:
        __break(1u);
        return result;
      }

      v84 = v34;
      v38 = v81 + v36;
      v39 = v89;
      result = sub_29D4DC124(v38, v89, type metadata accessor for SharedConceptCodedValue);
      v40 = *v32;
      v41 = *v39;
      v42 = *(v40 + 16);
      if (v42 != *(*v39 + 16))
      {
        goto LABEL_38;
      }

      if (v42 && v40 != v41)
      {
        v43 = 0;
        v44 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        v92 = v41 + v44;
        v93 = v40 + v44;
        while (v43 < *(v40 + 16))
        {
          v45 = *(v95 + 72) * v43;
          v46 = *(v95 + 16);
          result = v46(v25, v93 + v45, v19);
          if (v43 >= *(v41 + 16))
          {
            goto LABEL_42;
          }

          v47 = v25;
          v48 = v94;
          v46(v94, v92 + v45, v19);
          sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
          v49 = sub_29D5B3E0C();
          v50 = *v90;
          v51 = v48;
          v25 = v47;
          (*v90)(v51, v19);
          result = v50(v47, v19);
          if ((v49 & 1) == 0)
          {
            goto LABEL_38;
          }

          if (v42 == ++v43)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_14:
      v52 = v88[5];
      v53 = *(v86 + 48);
      v54 = v79;
      sub_29D4DC124(v87 + v52, v79, sub_29D4A05F4);
      sub_29D4DC124(v89 + v52, v54 + v53, sub_29D4A05F4);
      v55 = *v78;
      v56 = v80;
      if ((*v78)(v54, 1, v80) == 1)
      {
        if (v55(v54 + v53, 1, v56) != 1)
        {
          goto LABEL_37;
        }

        sub_29D4DC18C(v54, sub_29D4A05F4);
      }

      else
      {
        v57 = v77;
        sub_29D4DC124(v54, v77, sub_29D4A05F4);
        if (v55(v54 + v53, 1, v56) == 1)
        {
          (*v76)(v57, v56);
LABEL_37:
          sub_29D4DC18C(v54, sub_29D4DCD48);
LABEL_38:
          sub_29D4DC18C(v89, type metadata accessor for SharedConceptCodedValue);
          sub_29D4DC18C(v87, type metadata accessor for SharedConceptCodedValue);
          return 0;
        }

        v58 = v75;
        (*v74)(v75, v54 + v53, v56);
        sub_29D4DC504(&qword_2A17A41F8, &qword_2A17A4200, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
        v59 = sub_29D5B3E0C();
        v60 = *v76;
        (*v76)(v58, v56);
        v60(v57, v56);
        sub_29D4DC18C(v54, sub_29D4A05F4);
        if ((v59 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v61 = v88[6];
      v62 = (v87 + v61);
      v63 = *(v87 + v61 + 8);
      v64 = (v89 + v61);
      v65 = v64[1];
      if (v63)
      {
        if (!v65 || (*v62 != *v64 || v63 != v65) && (sub_29D5B4C7C() & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (v65)
      {
        goto LABEL_38;
      }

      v32 = v87;
      v66 = v88[7];
      v67 = (v87 + v66);
      v68 = *(v87 + v66 + 8);
      v69 = (v89 + v66);
      v70 = v69[1];
      v71 = v70 == 0;
      if (!v68)
      {
        goto LABEL_32;
      }

      if (!v70)
      {
        goto LABEL_38;
      }

      if (*v67 != *v69 || v68 != v70)
      {
        break;
      }

      sub_29D4DC18C(v89, type metadata accessor for SharedConceptCodedValue);
      v32 = v87;
      sub_29D4DC18C(v87, type metadata accessor for SharedConceptCodedValue);
      v72 = v84;
LABEL_33:
      v34 = v72 + 1;
      result = 1;
      if (v34 == v85)
      {
        return result;
      }
    }

    v71 = sub_29D5B4C7C();
    v32 = v87;
LABEL_32:
    v72 = v84;
    sub_29D4DC18C(v89, type metadata accessor for SharedConceptCodedValue);
    sub_29D4DC18C(v32, type metadata accessor for SharedConceptCodedValue);
    if ((v71 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_33;
  }

  return 0;
}

uint64_t sub_29D4DA880(uint64_t a1, uint64_t a2)
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v98 - v8;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48(0);
  v115 = v14;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v116 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SharedConceptCodedValue(0);
  v118 = *(v17 - 8);
  v119 = v17;
  v19 = MEMORY[0x2A1C7C4A8](v17, v18);
  v122 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v98 - v22;
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
  v25 = v24;
  v127 = *(v24 - 8);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v126 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v128 = &v98 - v30;
  v31 = *(a1 + 16);
  if (v31 != *(a2 + 16))
  {
    return 0;
  }

  if (!v31 || a1 == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = a1 + 32;
  v34 = a2 + 32;
  v124 = (v127 + 8);
  v125 = v127 + 16;
  v111 = (v6 + 48);
  v112 = v5;
  v102 = (v6 + 32);
  v103 = v9;
  v104 = (v6 + 8);
  v105 = v13;
  v117 = v23;
  v35 = v128;
  v107 = a1 + 32;
  v108 = v31;
  v106 = a2 + 32;
  while (1)
  {
    v36 = *(v33 + 88 * v32 + 32);
    v37 = *(v33 + 88 * v32 + 64);
    v133 = *(v33 + 88 * v32 + 48);
    *v134 = v37;
    v134[2] = *(v33 + 88 * v32 + 80);
    v38 = *(v33 + 88 * v32 + 16);
    v130 = *(v33 + 88 * v32);
    v131 = v38;
    v132 = v36;
    v39 = v130;
    v40 = v34 + 88 * v32;
    v41 = *(v40 + 16);
    *v135 = *v40;
    *&v135[16] = v41;
    v42 = *(v40 + 32);
    v43 = *(v40 + 48);
    v44 = *(v40 + 64);
    *&v137[16] = *(v40 + 80);
    v136 = v43;
    *v137 = v44;
    *&v135[32] = v42;
    v45 = *v135;
    v46 = *(v130 + 16);
    if (v46 != *(*v135 + 16))
    {
      return 0;
    }

    v114 = v32;
    if (v46)
    {
      if (v130 != *v135)
      {
        break;
      }
    }

    sub_29D4B4604(&v130, v129);
    sub_29D4B4604(v135, v129);
LABEL_15:
    if (__PAIR128__(v131, *(&v130 + 1)) != *&v135[8] && (sub_29D5B4C7C() & 1) == 0 || (result = *(&v131 + 1), __PAIR128__(v132, *(&v131 + 1)) != *&v135[24]) && (result = sub_29D5B4C7C(), (result & 1) == 0) || (v56 = *(&v132 + 1), v57 = *&v135[40], v58 = *(*(&v132 + 1) + 16), v58 != *(*&v135[40] + 16)))
    {
LABEL_65:
      sub_29D4B4660(v135);
      sub_29D4B4660(&v130);
      return 0;
    }

    v59 = v117;
    if (v58 && *(&v132 + 1) != *&v135[40])
    {
      v60 = 0;
      v61 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v109 = *&v135[40] + v61;
      v110 = *(&v132 + 1) + v61;
      v100 = *(&v132 + 1);
      v101 = *&v135[40];
      v99 = v58;
      while (1)
      {
        if (v60 >= *(v56 + 16))
        {
          goto LABEL_71;
        }

        v62 = *(v118 + 72) * v60;
        result = sub_29D4DC124(v110 + v62, v59, type metadata accessor for SharedConceptCodedValue);
        if (v60 >= *(v57 + 16))
        {
          goto LABEL_72;
        }

        v113 = v60;
        v63 = v109 + v62;
        v64 = v122;
        result = sub_29D4DC124(v63, v122, type metadata accessor for SharedConceptCodedValue);
        v65 = *v59;
        v66 = *v64;
        v67 = *(*v64 + 16);
        v123 = *(*v59 + 16);
        if (v123 != v67)
        {
          goto LABEL_64;
        }

        if (v123 && v65 != v66)
        {
          v68 = 0;
          v69 = (*(v127 + 80) + 32) & ~*(v127 + 80);
          v120 = v66 + v69;
          v121 = v65 + v69;
          while (v68 < *(v65 + 16))
          {
            v70 = v128;
            v71 = *(v127 + 72) * v68;
            v72 = *(v127 + 16);
            result = v72(v128, v121 + v71, v25);
            if (v68 >= *(v66 + 16))
            {
              goto LABEL_70;
            }

            v73 = v126;
            v72(v126, v120 + v71, v25);
            sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
            v74 = sub_29D5B3E0C();
            v75 = *v124;
            (*v124)(v73, v25);
            result = (v75)(v70, v25);
            if ((v74 & 1) == 0)
            {
              goto LABEL_64;
            }

            if (v123 == ++v68)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_69;
        }

LABEL_33:
        v76 = v119[5];
        v77 = v116;
        v78 = *(v115 + 48);
        sub_29D4DC124(&v117[v76], v116, sub_29D4A05F4);
        sub_29D4DC124(v122 + v76, v77 + v78, sub_29D4A05F4);
        v79 = v112;
        v80 = *v111;
        if ((*v111)(v77, 1, v112) == 1)
        {
          if (v80(v77 + v78, 1, v79) != 1)
          {
            goto LABEL_63;
          }

          sub_29D4DC18C(v77, sub_29D4A05F4);
        }

        else
        {
          v81 = v105;
          sub_29D4DC124(v77, v105, sub_29D4A05F4);
          if (v80(v77 + v78, 1, v79) == 1)
          {
            (*v104)(v81, v79);
LABEL_63:
            sub_29D4DC18C(v77, sub_29D4DCD48);
LABEL_64:
            sub_29D4DC18C(v122, type metadata accessor for SharedConceptCodedValue);
            sub_29D4DC18C(v117, type metadata accessor for SharedConceptCodedValue);
            goto LABEL_65;
          }

          v82 = v103;
          (*v102)(v103, v77 + v78, v79);
          sub_29D4DC504(&qword_2A17A41F8, &qword_2A17A4200, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
          v83 = sub_29D5B3E0C();
          v84 = *v104;
          (*v104)(v82, v79);
          v84(v81, v79);
          sub_29D4DC18C(v77, sub_29D4A05F4);
          if ((v83 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        v85 = v119[6];
        v86 = &v117[v85];
        v87 = *&v117[v85 + 8];
        v88 = (v122 + v85);
        v89 = v88[1];
        if (v87)
        {
          if (!v89 || (*v86 != *v88 || v87 != v89) && (sub_29D5B4C7C() & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        else if (v89)
        {
          goto LABEL_64;
        }

        v90 = v119[7];
        v59 = v117;
        v91 = &v117[v90];
        v92 = *&v117[v90 + 8];
        v93 = (v122 + v90);
        v94 = v93[1];
        v95 = v94 == 0;
        if (!v92)
        {
          goto LABEL_51;
        }

        if (!v94)
        {
          goto LABEL_64;
        }

        if (*v91 != *v93 || v92 != v94)
        {
          break;
        }

        sub_29D4DC18C(v122, type metadata accessor for SharedConceptCodedValue);
        v59 = v117;
        result = sub_29D4DC18C(v117, type metadata accessor for SharedConceptCodedValue);
        v57 = v101;
        v96 = v113;
LABEL_52:
        v60 = v96 + 1;
        v56 = v100;
        if (v60 == v99)
        {
          goto LABEL_53;
        }
      }

      v95 = sub_29D5B4C7C();
      v59 = v117;
LABEL_51:
      v57 = v101;
      v96 = v113;
      sub_29D4DC18C(v122, type metadata accessor for SharedConceptCodedValue);
      result = sub_29D4DC18C(v59, type metadata accessor for SharedConceptCodedValue);
      if ((v95 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_52;
    }

LABEL_53:
    if (v133 != v136 && (sub_29D5B4C7C() & 1) == 0 || v134[0] != *v137)
    {
      goto LABEL_65;
    }

    if (*&v134[1] == *&v137[8])
    {
      sub_29D4B4660(v135);
      sub_29D4B4660(&v130);
      v35 = v128;
    }

    else
    {
      v97 = sub_29D5B4C7C();
      sub_29D4B4660(v135);
      sub_29D4B4660(&v130);
      v35 = v128;
      if ((v97 & 1) == 0)
      {
        return 0;
      }
    }

    v32 = v114 + 1;
    if (v114 + 1 == v108)
    {
      return 1;
    }

    v34 = v106;
    v33 = v107;
  }

  v47 = (*(v127 + 80) + 32) & ~*(v127 + 80);
  v123 = v130 + v47;
  v121 = *v135 + v47;
  sub_29D4B4604(&v130, v129);
  result = sub_29D4B4604(v135, v129);
  v49 = 0;
  while (v49 < *(v39 + 16))
  {
    v50 = *(v127 + 72) * v49;
    v51 = *(v127 + 16);
    result = v51(v35, v123 + v50, v25);
    if (v49 >= *(v45 + 16))
    {
      goto LABEL_68;
    }

    v52 = v126;
    v51(v126, v121 + v50, v25);
    sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
    v53 = sub_29D5B3E0C();
    v54 = *v124;
    v55 = v52;
    v35 = v128;
    (*v124)(v55, v25);
    result = (v54)(v35, v25);
    if ((v53 & 1) == 0)
    {
      goto LABEL_65;
    }

    if (v46 == ++v49)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_29D4DB40C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B1AEC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v9, v16, v4);
    sub_29D4DEED8(&qword_2A17A4270, MEMORY[0x29EDC3F48], MEMORY[0x29EDC3F60]);
    v23 = sub_29D5B3E0C();
    v24 = *v19;
    (*v19)(v9, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4DB620(uint64_t a1, uint64_t a2)
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
  v48 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v38 = &v35 - v7;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
  v12 = v11;
  v39 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v35 - v14;
  v16 = type metadata accessor for SharedConceptCodedValue(0);
  v17 = *(v16 - 1);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 16);
  v51 = a1;
  result = MEMORY[0x29ED5F330](v21);
  v46 = v21;
  if (v21)
  {
    v23 = 0;
    v24 = v16[5];
    v44 = &v20[v16[6]];
    v45 = v24;
    v43 = &v20[v16[7]];
    v42 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v25 = (v39 + 8);
    v40 = *(v17 + 72);
    v41 = (v5 + 48);
    v36 = (v5 + 8);
    v37 = (v5 + 32);
    v50 = v20;
    v52 = v39 + 16;
    do
    {
      v49 = v23;
      sub_29D4DC124(v42 + v40 * v23, v20, type metadata accessor for SharedConceptCodedValue);
      v26 = *v20;
      MEMORY[0x29ED5F330](*(*v20 + 16));
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = v26 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
        v29 = *(v39 + 72);
        v30 = *(v39 + 16);
        do
        {
          v30(v15, v28, v12);
          sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
          sub_29D5B3D9C();
          (*v25)(v15, v12);
          v28 += v29;
          --v27;
        }

        while (v27);
      }

      v31 = v47;
      sub_29D4DC124(&v50[v45], v47, sub_29D4A05F4);
      v32 = v48;
      if ((*v41)(v31, 1, v48) == 1)
      {
        sub_29D5B4D6C();
      }

      else
      {
        v33 = v38;
        (*v37)(v38, v31, v32);
        sub_29D5B4D6C();
        sub_29D4DC504(&qword_2A17A41C0, &qword_2A17A41C8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
        sub_29D5B3D9C();
        (*v36)(v33, v32);
      }

      v34 = v43;
      if (*(v44 + 1))
      {
        sub_29D5B4D6C();
        sub_29D5B3EFC();
        if (!*(v34 + 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_29D5B4D6C();
        if (!*(v34 + 1))
        {
LABEL_15:
          sub_29D5B4D6C();
          goto LABEL_4;
        }
      }

      sub_29D5B4D6C();
      sub_29D5B3EFC();
LABEL_4:
      v20 = v50;
      v23 = v49 + 1;
      result = sub_29D4DC18C(v50, type metadata accessor for SharedConceptCodedValue);
    }

    while (v23 != v46);
  }

  return result;
}

uint64_t sub_29D4DBB6C(uint64_t a1, uint64_t a2)
{
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
  v5 = v4;
  v30 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v29 - v7;
  v9 = *(a2 + 16);
  result = MEMORY[0x29ED5F330](v9);
  v33 = v9;
  if (v9)
  {
    v11 = 0;
    v31 = a1;
    v32 = a2 + 32;
    v29 = v30 + 16;
    v12 = (v30 + 8);
    do
    {
      v41 = v11;
      v15 = (v32 + 88 * v11);
      v17 = *v15;
      v16 = *(v15 + 1);
      v18 = *(v15 + 3);
      v44 = *(v15 + 2);
      v34 = v16;
      v35 = v18;
      v19 = *(v15 + 4);
      v20 = *(v15 + 5);
      v21 = *(v15 + 7);
      v22 = v15[8];
      v23 = *(v15 + 9);
      v24 = *(v15 + 10);
      v36 = *(v15 + 6);
      v37 = v23;
      MEMORY[0x29ED5F330](*(*&v17 + 16));
      v25 = *(*&v17 + 16);
      v39 = v19;
      v40 = v17;
      v38 = v20;
      v42 = v24;
      v43 = v21;
      if (v25)
      {
        v26 = *&v17 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
        v27 = *(v30 + 72);
        v28 = *(v30 + 16);

        v13 = v31;
        do
        {
          v28(v8, v26, v5);
          sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
          sub_29D5B3D9C();
          (*v12)(v8, v5);
          v26 += v27;
          --v25;
        }

        while (v25);
      }

      else
      {

        v13 = v31;
      }

      sub_29D5B3EFC();
      sub_29D5B3EFC();
      sub_29D4DB620(v13, v38);
      sub_29D5B3EFC();
      if (v22 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v22;
      }

      v11 = v41 + 1;
      MEMORY[0x29ED5F360](*&v14);
      sub_29D5B3EFC();
    }

    while (v11 != v33);
  }

  return result;
}

uint64_t sub_29D4DBEB0(uint64_t a1, uint64_t a2)
{
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4130, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B0]);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (v14 == v13 && (v4 = type metadata accessor for SharedNewRecordsAlertData(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && (v5 = v4, (sub_29D4D9D64(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) != 0) && ((v6 = *(v5 + 28), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (sub_29D5B4C7C() & 1) != 0))
  {
    v11 = sub_29D5B0E3C();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_29D4DBFE0(uint64_t a1, uint64_t a2)
{
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4130, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B0]);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (v8 == v7 && (v4 = type metadata accessor for SharedConceptComboFeedItemData(0), (sub_29D4D9D64(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) != 0))
  {
    v5 = sub_29D5B0E3C();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_29D4DC0D0()
{
  result = qword_2A17A4140;
  if (!qword_2A17A4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4140);
  }

  return result;
}

uint64_t sub_29D4DC124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4DC18C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D4DC1EC()
{
  result = qword_2A17A4158;
  if (!qword_2A17A4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4158);
  }

  return result;
}

unint64_t sub_29D4DC240()
{
  result = qword_2A17A4160;
  if (!qword_2A17A4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4160);
  }

  return result;
}

uint64_t sub_29D4DC294(uint64_t a1, uint64_t a2)
{
  sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D4DC328()
{
  result = qword_2A17A4180;
  if (!qword_2A17A4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4180);
  }

  return result;
}

uint64_t sub_29D4DC37C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D4D8A1C(255, &qword_2A1A16478, &type metadata for SharedConceptFormattedRecord, MEMORY[0x29EDC9A40]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4DC40C(uint64_t a1, uint64_t a2)
{
  sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4DC4A0(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D48F51C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4DC504(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D4A0664(255, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
    sub_29D4DC4A0(a2, &qword_2A1A162F0, 0x29EDBAC10, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4DC5B0(uint64_t a1, uint64_t a2)
{
  if ((sub_29D4D9DF4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_29D5B4C7C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_29D5B4C7C() & 1) == 0 || (sub_29D4DA028(*(a1 + 40), *(a2 + 40)) & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_29D5B4C7C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    return 1;
  }

  return sub_29D5B4C7C();
}

BOOL sub_29D4DC6AC(void *a1, void *a2)
{
  v4 = sub_29D5B175C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v48 - v11;
  sub_29D4DCC44(0);
  v14 = v13;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_29D5B4C7C() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_29D5B4C7C() & 1) == 0)
  {
    return 0;
  }

  v49 = v8;
  v50 = v5;
  v51 = v4;
  v18 = type metadata accessor for SharedConceptFeedItemData(0);
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4130, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B0]);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (*&v54[0] != *&v52[0])
  {
    return 0;
  }

  v19 = v18[7];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  if ((v20 != *v22 || v21 != v22[1]) && (sub_29D5B4C7C() & 1) == 0)
  {
    return 0;
  }

  v23 = v18[8];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27 || (*v24 != *v26 || v25 != v27) && (sub_29D5B4C7C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v28 = v18[9];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32 || (*v29 != *v31 || v30 != v32) && (sub_29D5B4C7C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  if (*(a1 + v18[10]) != *(a2 + v18[10]))
  {
    return 0;
  }

  v33 = a1 + v18[11];
  v34 = *(v33 + 3);
  v52[2] = *(v33 + 2);
  v52[3] = v34;
  v52[4] = *(v33 + 4);
  v53 = *(v33 + 10);
  v35 = *(v33 + 1);
  v52[0] = *v33;
  v52[1] = v35;
  v36 = a2 + v18[11];
  v37 = *(v36 + 1);
  v54[0] = *v36;
  v54[1] = v37;
  v55 = *(v36 + 10);
  v38 = *(v36 + 4);
  v54[3] = *(v36 + 3);
  v54[4] = v38;
  v54[2] = *(v36 + 2);
  if ((sub_29D4DC5B0(v52, v54) & 1) == 0 || (sub_29D4DA880(*(a1 + v18[12]), *(a2 + v18[12])) & 1) == 0)
  {
    return 0;
  }

  v39 = v18[13];
  v40 = *(v14 + 48);
  sub_29D4DC40C(a1 + v39, v17);
  sub_29D4DC40C(a2 + v39, &v17[v40]);
  v41 = v50;
  v42 = *(v50 + 48);
  v43 = v51;
  if (v42(v17, 1, v51) != 1)
  {
    sub_29D4DC40C(v17, v12);
    if (v42(&v17[v40], 1, v43) == 1)
    {
      (*(v41 + 8))(v12, v43);
      goto LABEL_32;
    }

    v45 = v49;
    (*(v41 + 32))(v49, &v17[v40], v43);
    sub_29D4DEED8(&qword_2A17A41D8, MEMORY[0x29EDC3990], MEMORY[0x29EDC39A8]);
    v46 = sub_29D5B3E0C();
    v47 = *(v41 + 8);
    v47(v45, v43);
    v47(v12, v43);
    sub_29D4DCCD8(v17, &qword_2A1A17380, MEMORY[0x29EDC3990]);
    return (v46 & 1) != 0;
  }

  if (v42(&v17[v40], 1, v43) != 1)
  {
LABEL_32:
    sub_29D4DC18C(v17, sub_29D4DCC44);
    return 0;
  }

  sub_29D4DCCD8(v17, &qword_2A1A17380, MEMORY[0x29EDC3990]);
  return 1;
}

void sub_29D4DCC44(uint64_t a1)
{
  if (!qword_2A17A41D0)
  {
    sub_29D4DE988(255, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A41D0);
    }
  }
}

uint64_t sub_29D4DCCD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4DE988(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D4DCD48(uint64_t a1)
{
  if (!qword_2A17A41E0)
  {
    sub_29D4A05F4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A41E0);
    }
  }
}

uint64_t sub_29D4DCDAC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D4A0664(255, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
    sub_29D4DC4A0(a2, &qword_2A17A41A8, 0x29EDBAC38, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4DCE58(uint64_t *a1, uint64_t *a2)
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v36 - v8;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48(0);
  v15 = v14;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_29D4D9DF4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v37 = type metadata accessor for SharedConceptCodedValue(0);
  v19 = *(v37 + 20);
  v20 = *(v15 + 48);
  sub_29D4DC124(a1 + v19, v18, sub_29D4A05F4);
  sub_29D4DC124(a2 + v19, &v18[v20], sub_29D4A05F4);
  v21 = *(v6 + 48);
  if (v21(v18, 1, v5) != 1)
  {
    sub_29D4DC124(v18, v13, sub_29D4A05F4);
    if (v21(&v18[v20], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v18[v20], v5);
      sub_29D4DC504(&qword_2A17A41F8, &qword_2A17A4200, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
      v23 = sub_29D5B3E0C();
      v24 = *(v6 + 8);
      v24(v9, v5);
      v24(v13, v5);
      sub_29D4DC18C(v18, sub_29D4A05F4);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v6 + 8))(v13, v5);
LABEL_7:
    sub_29D4DC18C(v18, sub_29D4DCD48);
    return 0;
  }

  if (v21(&v18[v20], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_29D4DC18C(v18, sub_29D4A05F4);
LABEL_11:
  v25 = v37;
  v26 = *(v37 + 24);
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_29D5B4C7C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v31 = *(v25 + 28);
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (v35 && (*v32 == *v34 && v33 == v35 || (sub_29D5B4C7C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v35)
  {
    return 1;
  }

  return 0;
}

void *sub_29D4DD254()
{
  sub_29D4DE758(0, &qword_2A17A4298, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v26 - v2;
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v31 = &v26 - v12;
  v13 = sub_29D5B0D3C();
  v27 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B45EC();
  sub_29D4DEED8(&qword_2A17A4280, MEMORY[0x29EDB9AE8], MEMORY[0x29EDB9AF0]);
  v32 = v16;
  sub_29D5B474C();
  if (v35)
  {
    v17 = (v6 + 48);
    v29 = v6;
    v18 = (v6 + 32);
    v19 = MEMORY[0x29EDCA190];
    v30 = v13;
    v28 = v10;
    do
    {
      sub_29D4C97AC(&v34, v33);
      sub_29D4D99AC(v33, v3);
      sub_29D48F668(v33);
      if ((*v17)(v3, 1, v5) == 1)
      {
        sub_29D4DEA54(v3);
      }

      else
      {
        v20 = *v18;
        v21 = v31;
        (*v18)(v31, v3, v5);
        v20(v10, v21, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_29D515088(0, v19[2] + 1, 1, v19);
        }

        v23 = v19[2];
        v22 = v19[3];
        if (v23 >= v22 >> 1)
        {
          v19 = sub_29D515088((v22 > 1), v23 + 1, 1, v19);
        }

        v19[2] = v23 + 1;
        v24 = v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23;
        v10 = v28;
        v20(v24, v28, v5);
        v13 = v30;
      }

      sub_29D5B474C();
    }

    while (v35);
  }

  else
  {
    v19 = MEMORY[0x29EDCA190];
  }

  (*(v27 + 8))(v32, v13);
  return v19;
}

void *sub_29D4DD648(uint64_t a1, uint64_t a2)
{
  sub_29D4DE988(0, &qword_2A17A4288, type metadata accessor for SharedConceptCodedValue, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = (&v26 - v5);
  v29 = type metadata accessor for SharedConceptCodedValue(0);
  v7 = *(v29 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v29, v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v26 - v13;
  v15 = sub_29D5B0D3C();
  v26 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B45EC();
  sub_29D4DEED8(&qword_2A17A4280, MEMORY[0x29EDB9AE8], MEMORY[0x29EDB9AF0]);
  sub_29D5B474C();
  if (v32)
  {
    v27 = v7;
    v19 = (v7 + 48);
    v20 = MEMORY[0x29EDCA190];
    v28 = a2;
    do
    {
      v21 = sub_29D4C97AC(&v31, v30);
      v22 = MEMORY[0x29ED5F4B0](v21);
      sub_29D4D8FFC(v30, v6);
      objc_autoreleasePoolPop(v22);
      sub_29D48F668(v30);
      if ((*v19)(v6, 1, v29) == 1)
      {
        sub_29D4DCCD8(v6, &qword_2A17A4288, type metadata accessor for SharedConceptCodedValue);
      }

      else
      {
        sub_29D4DE9EC(v6, v14, type metadata accessor for SharedConceptCodedValue);
        sub_29D4DE9EC(v14, v11, type metadata accessor for SharedConceptCodedValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_29D5150BC(0, v20[2] + 1, 1, v20);
        }

        v24 = v20[2];
        v23 = v20[3];
        if (v24 >= v23 >> 1)
        {
          v20 = sub_29D5150BC((v23 > 1), v24 + 1, 1, v20);
        }

        v20[2] = v24 + 1;
        sub_29D4DE9EC(v11, v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for SharedConceptCodedValue);
      }

      sub_29D5B474C();
    }

    while (v32);
  }

  else
  {
    v20 = MEMORY[0x29EDCA190];
  }

  (*(v26 + 8))(v18, v15);
  return v20;
}

uint64_t sub_29D4DDA1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000029D5BCB10 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_29D5B4C7C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29D4DDB3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C626172616873 && a2 == 0xEF64496C65646F4DLL;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029D5BCB30 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000029D5BCB10 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000029D5BCB50 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656E6E69507369 && a2 == 0xE800000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x655274736574616CLL && a2 == 0xEC00000064726F63 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6465646465626D65 && a2 == 0xEF7364726F636552 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_29D5B4C7C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_29D4DDE88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73676E69646F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029D5BCB30 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000029D5BCB70 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61566465646F63 && a2 == 0xEB00000000736575 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696E556D756375 && a2 == 0xEE00676E69727453 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614465746164 && a2 == 0xE800000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x555564726F636572 && a2 == 0xEA00000000004449)
  {

    return 6;
  }

  else
  {
    v6 = sub_29D5B4C7C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_29D4DE0F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D4DF734(0, &qword_2A17A4208, sub_29D4DE704, &type metadata for SharedConceptFormattedRecord.CodingKeys, MEMORY[0x29EDC9E80]);
  v35 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v27 - v8;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DE704();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v10 = v6;
  sub_29D4DE758(0, &qword_2A17A4218, MEMORY[0x29EDC9A40]);
  LOBYTE(v36) = 0;
  sub_29D4DE7D0(&qword_2A17A4220, &qword_2A17A4228, MEMORY[0x29EDBA1F0], MEMORY[0x29EDC9A78]);
  sub_29D5B4B6C();
  v11 = v42[0];
  LOBYTE(v42[0]) = 1;
  v33 = sub_29D5B4B2C();
  v34 = v12;
  LOBYTE(v42[0]) = 2;
  v32 = sub_29D5B4B2C();
  v14 = v13;
  sub_29D4DE988(0, &qword_2A17A4230, type metadata accessor for SharedConceptCodedValue, MEMORY[0x29EDC9A40]);
  LOBYTE(v36) = 3;
  sub_29D4DE868(&qword_2A17A4238, &qword_2A17A4240, &unk_29D5B7B88, MEMORY[0x29EDC9A78]);
  sub_29D5B4B6C();
  v31 = v42[0];
  LOBYTE(v42[0]) = 4;
  v30 = 0;
  *&v29 = sub_29D5B4B2C();
  *(&v29 + 1) = v15;
  LOBYTE(v42[0]) = 5;
  sub_29D5B4B4C();
  v17 = v16;
  v47 = 6;
  v18 = v35;
  v28 = sub_29D5B4B2C();
  v20 = v19;
  (*(v10 + 8))(v9, v18);
  *&v36 = v11;
  v21 = v33;
  *(&v36 + 1) = v33;
  v22 = v34;
  *&v37 = v34;
  *(&v37 + 1) = v32;
  *&v38 = v14;
  *(&v38 + 1) = v31;
  v39 = v29;
  *&v40 = v17;
  v23 = v28;
  *(&v40 + 1) = v28;
  v41 = v20;
  sub_29D4B4604(&v36, v42);
  sub_29D48F668(a1);
  v42[0] = v11;
  v42[1] = v21;
  v42[2] = v22;
  v42[3] = v32;
  v42[4] = v14;
  v42[5] = v31;
  v43 = v29;
  v44 = v17;
  v45 = v23;
  v46 = v20;
  result = sub_29D4B4660(v42);
  v25 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v25;
  *(a2 + 64) = v40;
  *(a2 + 80) = v41;
  v26 = v37;
  *a2 = v36;
  *(a2 + 16) = v26;
  return result;
}

unint64_t sub_29D4DE704()
{
  result = qword_2A17A4210;
  if (!qword_2A17A4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4210);
  }

  return result;
}

void sub_29D4DE758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D4A0664(255, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D4DE7D0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D4DE758(255, &qword_2A17A4218, MEMORY[0x29EDC9A40]);
    sub_29D4DE92C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4DE868(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D4DE988(255, &qword_2A17A4230, type metadata accessor for SharedConceptCodedValue, MEMORY[0x29EDC9A40]);
    sub_29D4DEED8(a2, type metadata accessor for SharedConceptCodedValue, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4DE92C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D4A0664(255, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D4DE988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D4DE9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4DEA54(uint64_t a1)
{
  sub_29D4DE758(0, &qword_2A17A4298, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SharedConceptFormattedRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharedConceptFormattedRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SharedConceptFeedItemData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharedConceptFeedItemData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_29D4DEDB4(uint64_t a1)
{
  sub_29D4DE758(319, &qword_2A17A4218, MEMORY[0x29EDC9A40]);
  if (v1 <= 0x3F)
  {
    sub_29D4A05F4(319);
    if (v2 <= 0x3F)
    {
      sub_29D4D8A1C(319, &qword_2A1A164A0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29D4DEED8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D4DEF24()
{
  result = qword_2A17A42C0;
  if (!qword_2A17A42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42C0);
  }

  return result;
}

unint64_t sub_29D4DEF7C()
{
  result = qword_2A17A42C8;
  if (!qword_2A17A42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42C8);
  }

  return result;
}

unint64_t sub_29D4DEFD4()
{
  result = qword_2A17A42D0;
  if (!qword_2A17A42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42D0);
  }

  return result;
}

unint64_t sub_29D4DF02C()
{
  result = qword_2A17A42D8;
  if (!qword_2A17A42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42D8);
  }

  return result;
}

unint64_t sub_29D4DF084()
{
  result = qword_2A17A42E0;
  if (!qword_2A17A42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42E0);
  }

  return result;
}

unint64_t sub_29D4DF0DC()
{
  result = qword_2A17A42E8;
  if (!qword_2A17A42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42E8);
  }

  return result;
}

unint64_t sub_29D4DF134()
{
  result = qword_2A17A42F0;
  if (!qword_2A17A42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42F0);
  }

  return result;
}

unint64_t sub_29D4DF18C()
{
  result = qword_2A17A42F8;
  if (!qword_2A17A42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42F8);
  }

  return result;
}

unint64_t sub_29D4DF1E4()
{
  result = qword_2A17A4300;
  if (!qword_2A17A4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4300);
  }

  return result;
}

unint64_t sub_29D4DF23C()
{
  result = qword_2A17A4308;
  if (!qword_2A17A4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4308);
  }

  return result;
}

unint64_t sub_29D4DF294()
{
  result = qword_2A17A4310;
  if (!qword_2A17A4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4310);
  }

  return result;
}

unint64_t sub_29D4DF2EC()
{
  result = qword_2A17A4318;
  if (!qword_2A17A4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4318);
  }

  return result;
}

uint64_t sub_29D4DF340(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F436465786F62 && a2 == 0xEC00000073676E69;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029D5BCB90 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000029D5BCBB0 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x566C617574786574 && a2 == 0xEC00000065756C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_29D5B4C7C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_29D4DF4B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4379616C70736964 && a2 == 0xEF79726F67657461;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF7364726F636552 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E64726F636572 && a2 == 0xEB0000000073656DLL || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E7463656A627573 && a2 == 0xEB00000000656D61 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6164705565746164 && a2 == 0xEB00000000646574)
  {

    return 4;
  }

  else
  {
    v6 = sub_29D5B4C7C();

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

unint64_t sub_29D4DF684()
{
  result = qword_2A17A4328;
  if (!qword_2A17A4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4328);
  }

  return result;
}

uint64_t sub_29D4DF6D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D4A0664(255, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D4DF734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SharedConceptCodedValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharedConceptCodedValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D4DF8F0()
{
  result = qword_2A17A4348;
  if (!qword_2A17A4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4348);
  }

  return result;
}

unint64_t sub_29D4DF948()
{
  result = qword_2A17A4350;
  if (!qword_2A17A4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4350);
  }

  return result;
}

unint64_t sub_29D4DF9A0()
{
  result = qword_2A17A4358;
  if (!qword_2A17A4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4358);
  }

  return result;
}

uint64_t sub_29D4DF9F4()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v0, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x29EDC3F80])
  {
    (*(v7 + 96))(v10, v6);
    v23 = sub_29D5B1BBC();
    v24 = v12;
    v13 = sub_29D5B3FCC();
    v14 = sub_29D5B1D6C();
    (*(*(v14 - 8) + 8))(v10, v14);
  }

  else if (v11 == *MEMORY[0x29EDC3FB0])
  {
    (*(v7 + 96))(v10, v6);
    sub_29D4E019C(0);

    (*(v2 + 32))(v5, v10, v1);
    v23 = 0x2D746E756F636361;
    v24 = 0xE800000000000000;
    v15 = sub_29D5B0E8C();
    MEMORY[0x29ED5E510](v15);

    MEMORY[0x29ED5E510](23849, 0xE200000000000000);
    v13 = v23;
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v16 = v11 == *MEMORY[0x29EDC3FA8] || v11 == *MEMORY[0x29EDC3FA0];
    if (v16 || v11 == *MEMORY[0x29EDC3F70] || v11 == *MEMORY[0x29EDC3F88] || (v11 != *MEMORY[0x29EDC3F78] ? (v17 = v11 == *MEMORY[0x29EDC3F90]) : (v17 = 1), v17))
    {
      v21 = sub_29D5B1BBC();
    }

    else
    {
      v19 = *MEMORY[0x29EDC3F98];
      v20 = v11;
      v21 = sub_29D5B1BBC();
      if (v20 != v19)
      {
        v23 = v21;
        v24 = v22;
        v13 = sub_29D5B3FCC();
        (*(v7 + 8))(v10, v6);
        return v13;
      }
    }

    v23 = v21;
    v24 = v22;
    return sub_29D5B3FCC();
  }

  return v13;
}

uint64_t sub_29D4DFDC4(uint64_t a1, uint64_t a2)
{
  v28[1] = a1;
  v2 = sub_29D5B0EDC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B1AAC();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4E0148(0, &qword_2A1A1A398, MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D5B5E20;
  v13 = sub_29D5B10AC();
  (*(v8 + 104))(v11, *MEMORY[0x29EDC3F38], v7);
  v28[0] = sub_29D5B1A8C();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  if (v13)
  {
    v29 = 0x656C69666F72505BLL;
    v30 = 0xE90000000000003ALL;
    v16 = v13;
    v17 = [v16 identifier];
    sub_29D5B0EBC();

    v18 = sub_29D5B0E8C();
    v20 = v19;
    (*(v3 + 8))(v6, v2);
    MEMORY[0x29ED5E510](v18, v20);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v22 = v29;
    v21 = v30;
  }

  else
  {
    v16 = 0;
    v21 = 0x800000029D5BBCB0;
    v22 = 0xD000000000000013;
  }

  v29 = v22;
  v30 = v21;
  MEMORY[0x29ED5E510](v28[0], v15);

  v23 = v30;
  *(v12 + 32) = v29;
  *(v12 + 40) = v23;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_29D5B494C();

  v29 = 0xD000000000000010;
  v30 = 0x800000029D5BCBD0;
  v24 = sub_29D4DF9F4();
  MEMORY[0x29ED5E510](v24);

  MEMORY[0x29ED5E510](93, 0xE100000000000000);
  v25 = v30;
  *(v12 + 48) = v29;
  *(v12 + 56) = v25;
  v29 = v12;
  sub_29D4E0148(0, &qword_2A1A19698, MEMORY[0x29EDC9A40]);
  sub_29D49823C();
  v26 = sub_29D5B3DBC();

  return v26;
}

void sub_29D4E0148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC99B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D4E019C(uint64_t a1)
{
  if (!qword_2A17A4360)
  {
    sub_29D5B0EDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A4360);
    }
  }
}

uint64_t sub_29D4E0208()
{
  sub_29D48F668((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_29D4E026C()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NewRecordsFeedItemViewData(uint64_t a1)
{
  result = qword_2A17A4368;
  if (!qword_2A17A4368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D4E033C(uint64_t a1)
{
  sub_29D4E03E8();
  if (v1 <= 0x3F)
  {
    sub_29D5B0EDC();
    if (v2 <= 0x3F)
    {
      sub_29D4E0438(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29D4E03E8()
{
  if (!qword_2A1A164A0)
  {
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A164A0);
    }
  }
}

void sub_29D4E0438(uint64_t a1)
{
  if (!qword_2A17A4008)
  {
    sub_29D5B1AEC();
    v1 = sub_29D5B40BC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4008);
    }
  }
}

uint64_t sub_29D4E0490(void *a1)
{
  sub_29D4E45F8(0, &qword_2A17A4390, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10[-v7];
  sub_29D499EC0(a1, a1[3]);
  sub_29D4E4530();
  sub_29D5B4DCC();
  v10[15] = 0;
  sub_29D4E4404(0, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
  sub_29D4E4584(&qword_2A1A16500, MEMORY[0x29EDBA1D8]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for RecordKindGeneratorData(0);
    v10[14] = 1;
    sub_29D5B0E6C();
    sub_29D4E3D3C(&qword_2A1A193D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    sub_29D5B4C0C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29D4E06BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v31 = sub_29D5B0E6C();
  v27 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4E4404(0, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
  v33 = v7;
  v29 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v30 = &v25 - v9;
  sub_29D4E45F8(0, &qword_2A17A43A0, MEMORY[0x29EDC9E80]);
  v34 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for RecordKindGeneratorData(0);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D4E4530();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v26 = v14;
  v18 = v17;
  v19 = v29;
  v20 = v31;
  v36 = 0;
  sub_29D4E4584(&qword_2A1A164F8, MEMORY[0x29EDBA1F0]);
  v21 = v30;
  sub_29D5B4B6C();
  v22 = *(v19 + 32);
  v25 = v18;
  v22(v18, v21, v33);
  v35 = 1;
  sub_29D4E3D3C(&qword_2A1A193D0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  sub_29D5B4B6C();
  (*(v32 + 8))(v13, v34);
  v23 = v25;
  (*(v27 + 32))(v25 + *(v26 + 20), v6, v20);
  sub_29D4E4160(v23, v28, type metadata accessor for RecordKindGeneratorData);
  sub_29D48F668(a1);
  return sub_29D4E4304(v23, type metadata accessor for RecordKindGeneratorData);
}

uint64_t sub_29D4E0B48()
{
  if (*v0)
  {
    return 0x446E75527473616CLL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_29D4E0B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000029D5BCD00 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x446E75527473616CLL && a2 == 0xEB00000000617461)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_29D5B4C7C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_29D4E0C88(uint64_t a1)
{
  v2 = sub_29D4E4530();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4E0CC4(uint64_t a1)
{
  v2 = sub_29D4E4530();

  return MEMORY[0x2A1C73280](a1, v2);
}

void *sub_29D4E0D30(uint64_t a1)
{
  v2 = v1;
  v21 = *v1;
  v20 = sub_29D5B13CC();
  v4 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B13EC();
  v8 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4E4160(a1, v1 + OBJC_IVAR____TtC13HealthRecords19RecordKindGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v18 = sub_29D5B143C();
  sub_29D4E4404(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v12 = sub_29D5B104C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D5B62A0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x29EDC3730], v12);
  (*(v4 + 104))(v7, *MEMORY[0x29EDC3898], v20);
  sub_29D5B13DC();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords19RecordKindGenerator_domain, v11, v19);
  v16 = sub_29D4E103C(a1);
  sub_29D4E4304(a1, type metadata accessor for HealthRecordsGeneratorContext);
  v2[2] = v16;
  return v2;
}

uint64_t sub_29D4E103C(uint64_t a1)
{
  v2 = sub_29D5B148C();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v58 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4E3B38(0);
  v57 = v5;
  v61 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v60 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B0EDC();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B1AAC();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B140C();
  sub_29D499EC0(&v65, v66);
  sub_29D5B136C();
  sub_29D5B22AC();
  swift_allocObject();
  v53 = sub_29D5B229C();
  sub_29D48F668(&v65);
  sub_29D5B0C0C();
  swift_allocObject();
  v62 = sub_29D5B0BFC();
  sub_29D5B140C();
  (*(v12 + 104))(v15, *MEMORY[0x29EDC3EF0], v11);
  v52 = a1;
  v16 = sub_29D5B143C();
  v17 = sub_29D5B10AC();
  v56 = v15;
  v18 = sub_29D5B1A8C();
  v20 = v19;
  if (v17)
  {
    v63 = 0x656C69666F72505BLL;
    v64 = 0xE90000000000003ALL;
    v48 = v18;
    v21 = v17;
    v22 = v16;
    v23 = [v21 identifier];
    v24 = v49;
    sub_29D5B0EBC();

    v25 = sub_29D5B0E8C();
    v26 = v3;
    v28 = v27;
    (*(v50 + 8))(v24, v51);
    v16 = v22;
    MEMORY[0x29ED5E510](v25, v28);
    v3 = v26;

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v18 = v48;
    v29 = v63;
    v30 = v64;
  }

  else
  {
    v21 = 0;
    v30 = 0x800000029D5BBCB0;
    v29 = 0xD000000000000013;
  }

  v63 = v29;
  v64 = v30;
  MEMORY[0x29ED5E510](v18, v20);

  v31 = v63;
  v32 = v64;
  (*(v12 + 8))(v56, v11);
  type metadata accessor for FeedItemContextChangeGenerator();
  v33 = swift_allocObject();
  sub_29D497868(&v65, v33 + 16);
  *(v33 + 56) = v31;
  *(v33 + 64) = v32;
  v34 = v54;
  v35 = v55;
  v36 = v58;
  (*(v54 + 16))(v58, v52, v55);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = (v3 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v62;
  *(v40 + 16) = v53;
  *(v40 + 24) = v41;
  (*(v34 + 32))(v40 + v37, v36, v35);
  *(v40 + v38) = v33;
  v42 = v59;
  *(v40 + v39) = v59;
  *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
  sub_29D4E3BCC(0);
  sub_29D4E3D3C(&qword_2A1A19758, sub_29D4E3BCC, MEMORY[0x29EDB8AD8]);

  v43 = v60;
  sub_29D5B3A9C();
  sub_29D4E3D3C(&qword_2A1A19748, sub_29D4E3B38, MEMORY[0x29EDB8AE8]);
  v44 = v57;
  v45 = sub_29D5B3B1C();

  (*(v61 + 8))(v43, v44);
  return v45;
}

uint64_t sub_29D4E1638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v22 = a5;
  v23 = a6;
  v21 = a4;
  v24 = a7;
  v10 = sub_29D5B148C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v14 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a3, v10);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  (*(v11 + 32))(v18 + v15, v14, v10);
  v19 = v22;
  *(v18 + v16) = v21;
  *(v18 + v17) = v19;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  sub_29D4E3BCC(0);
  swift_allocObject();

  result = sub_29D5B3A6C();
  *v24 = result;
  return result;
}

uint64_t sub_29D4E17F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v26[1] = a2;
  v27 = a6;
  v30 = a3;
  v12 = sub_29D5B148C();
  v26[0] = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v16 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  (*(v13 + 16))(v16, a5, v12);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  (*(v13 + 32))(v22 + v18, v16, v26[0]);
  v23 = v28;
  *(v22 + v19) = v27;
  *(v22 + v20) = v23;
  v24 = (v22 + v21);
  *v24 = sub_29D4E3F44;
  v24[1] = v17;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v29;

  sub_29D5B228C();
}

void sub_29D4E19E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void), uint64_t a7, uint64_t a8)
{
  v140 = a8;
  v145 = a7;
  v144 = a6;
  v143 = a4;
  v141 = a3;
  v139 = a2;
  sub_29D4E4404(0, &qword_2A1A17398, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v138 = &v131 - v11;
  v137 = sub_29D5B109C();
  v136 = *(v137 - 8);
  MEMORY[0x2A1C7C4A8](v137, v12);
  v135 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_29D5B371C();
  v146 = *(v147 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v147, v14);
  v142 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v131 - v18;
  v168 = sub_29D5B1F5C();
  v151 = *(v168 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v168, v20);
  v167 = (&v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v21, v23);
  v166 = (&v131 - v24);
  v25 = type metadata accessor for RecordKindFeedItemData(0);
  v171 = *(v25 - 8);
  v172 = v25;
  MEMORY[0x2A1C7C4A8](v25, v26);
  v28 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4E404C(0);
  v156 = v29;
  v31 = MEMORY[0x2A1C7C4A8](v29, v30);
  v155 = &v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v36 = &v131 - v35;
  MEMORY[0x2A1C7C4A8](v34, v37);
  v154 = &v131 - v38;
  v39 = sub_29D5B23FC();
  v40 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39, v41);
  v43 = (&v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D4E40F0(0);
  MEMORY[0x2A1C7C4A8](v44, v45);
  v47 = (&v131 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D4E4160(a1, v47, sub_29D4E40F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v47;
    sub_29D5B36AC();
    v49 = v48;
    v50 = sub_29D5B370C();
    v51 = sub_29D5B427C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v177 = v53;
      *v52 = 136446210;
      v176 = v48;
      v54 = v48;
      sub_29D4B3AF4();
      sub_29D5B4CAC();
      v55 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v56 = sub_29D5B3E9C();
      v58 = sub_29D501890(v56, v57, &v177);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_29D48C000, v50, v51, "Error fetching record kinds: %{public}s", v52, 0xCu);
      sub_29D48F668(v53);
      MEMORY[0x29ED5FB80](v53, -1, -1);
      MEMORY[0x29ED5FB80](v52, -1, -1);
    }

    else
    {
    }

    (*(v146 + 8))(v19, v147);
    v175 = 0;
    goto LABEL_54;
  }

  v59 = *(v40 + 32);
  v134 = v39;
  v59(v43, v47, v39);
  v60 = v43;
  v61 = sub_29D5B23DC();
  v62 = *(v61 + 16);
  v133 = v40;
  v132 = v43;
  if (v62)
  {
    v176 = MEMORY[0x29EDCA190];
    v60 = &v176;
    sub_29D4C6CF4(0, v62, 0);
    v63 = v176;
    v64 = v61 + 64;
    v65 = sub_29D5B47DC();
    v66 = 0;
    v163 = *(v61 + 36);
    v164 = (v151 + 8);
    v165 = v151 + 16;
    v148 = v61 + 72;
    v67 = v61;
    v150 = v36;
    v149 = v61;
    v153 = v62;
    v152 = v61 + 64;
    do
    {
      if ((v65 & 0x8000000000000000) != 0 || v65 >= 1 << v67[32])
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      if ((*(v64 + 8 * (v65 >> 6)) & (1 << v65)) == 0)
      {
        goto LABEL_67;
      }

      if (v163 != *(v67 + 9))
      {
        goto LABEL_68;
      }

      v160 = 1 << v65;
      v161 = v65 >> 6;
      v159 = v66;
      v70 = *(v67 + 6);
      v71 = v65;
      v72 = sub_29D5B1D6C();
      v73 = *(v72 - 8);
      v74 = v154;
      (*(v73 + 16))(v154, v70 + *(v73 + 72) * v71, v72);
      v75 = *(v67 + 7);
      v162 = v71;
      v60 = *(v75 + 8 * v71);
      (*(v73 + 32))(v36, v74, v72);
      v76 = v156;
      *&v36[*(v156 + 48)] = v60;
      v77 = v155;
      sub_29D4E4160(v36, v155, sub_29D4E404C);
      v78 = *(v77 + *(v76 + 48));
      v79 = *(v73 + 8);

      v80 = v72;
      v81 = v78;
      v79(v77, v80);
      v82 = *(v78 + 16);
      if (v82)
      {
        v158 = v63;
        v177 = MEMORY[0x29EDCA190];
        sub_29D4C6D14(0, v82, 0);
        v83 = v177;
        v84 = (*(v151 + 80) + 32) & ~*(v151 + 80);
        v157 = v81;
        v85 = v81 + v84;
        v86 = *(v151 + 72);
        v169 = *(v151 + 16);
        v170 = v86;
        do
        {
          v174 = v82;
          v175 = v83;
          v87 = v166;
          v89 = v168;
          v88 = v169;
          v169(v166, v85, v168);
          v60 = v167;
          v88(v167, v87, v89);
          sub_29D5B1F1C();
          v173 = sub_29D5B1F4C();
          v90 = sub_29D5B1F3C();
          v92 = v91;
          v93 = v28;
          v94 = v172;
          sub_29D5B1F2C();
          v95 = *v164;
          (*v164)(v60, v89);
          v95(v87, v89);
          *(v93 + *(v94 + 20)) = v173;
          v96 = *(v94 + 24);
          v28 = v93;
          v97 = (v93 + v96);
          *v97 = v90;
          v97[1] = v92;
          v83 = v175;
          v177 = v175;
          v99 = v175[2];
          v98 = v175[3];
          if (v99 >= v98 >> 1)
          {
            v60 = &v177;
            sub_29D4C6D14((v98 > 1), v99 + 1, 1);
            v83 = v177;
          }

          v83[2] = v99 + 1;
          sub_29D4E42A0(v93, v83 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v99);
          v85 += v170;
          v82 = v174 - 1;
        }

        while (v174 != 1);
        v36 = v150;
        sub_29D4E4304(v150, sub_29D4E404C);

        v63 = v158;
        v67 = v149;
      }

      else
      {

        sub_29D4E4304(v36, sub_29D4E404C);
        v83 = MEMORY[0x29EDCA190];
      }

      v176 = v63;
      v101 = *(v63 + 16);
      v100 = *(v63 + 24);
      v102 = v153;
      v64 = v152;
      v104 = v161;
      v103 = v162;
      if (v101 >= v100 >> 1)
      {
        v60 = &v176;
        sub_29D4C6CF4((v100 > 1), v101 + 1, 1);
        v104 = v161;
        v103 = v162;
        v63 = v176;
      }

      *(v63 + 16) = v101 + 1;
      *(v63 + 8 * v101 + 32) = v83;
      v61 = 1 << v67[32];
      if (v103 >= v61)
      {
        goto LABEL_69;
      }

      v105 = *(v64 + 8 * v104);
      if ((v105 & v160) == 0)
      {
        goto LABEL_70;
      }

      if (v163 != *(v67 + 9))
      {
        goto LABEL_71;
      }

      v60 = (v105 & (-2 << (v103 & 0x3F)));
      if (v60)
      {
        v68 = v103;
        sub_29D4C902C(v103, v163, 0);
        v61 = __clz(__rbit64(v60)) | v68 & 0x7FFFFFFFFFFFFFC0;
        v69 = v159;
      }

      else
      {
        v60 = (v104 << 6);
        v106 = v104 + 1;
        v107 = (v148 + 8 * v104);
        while (v106 < (v61 + 63) >> 6)
        {
          v109 = *v107++;
          v108 = v109;
          v60 += 8;
          ++v106;
          if (v109)
          {
            sub_29D4C902C(v103, v163, 0);
            v61 = v60 + __clz(__rbit64(v108));
            goto LABEL_30;
          }
        }

        sub_29D4C902C(v103, v163, 0);
LABEL_30:
        v69 = v159;
      }

      v66 = v69 + 1;
      v65 = v61;
    }

    while (v66 != v102);

    v110 = *(v63 + 16);
    if (v110)
    {
      goto LABEL_32;
    }

    goto LABEL_52;
  }

  v63 = MEMORY[0x29EDCA190];
  v110 = *(MEMORY[0x29EDCA190] + 16);
  if (v110)
  {
LABEL_32:
    v64 = 0;
    v67 = (v63 + 32);
    v61 = MEMORY[0x29EDCA190];
    while (1)
    {
      if (v64 >= *(v63 + 16))
      {
        goto LABEL_72;
      }

      v111 = *&v67[8 * v64];
      v60 = *(v111 + 16);
      v36 = *(v61 + 16);
      v112 = v60 + v36;
      if (__OFADD__(v36, v60))
      {
        goto LABEL_73;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v112 <= *(v61 + 24) >> 1)
      {
        if (!*(v111 + 16))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v36 <= v112)
        {
          v114 = v60 + v36;
        }

        else
        {
          v114 = v36;
        }

        v61 = sub_29D515550(isUniquelyReferenced_nonNull_native, v114, 1, v61);
        if (!*(v111 + 16))
        {
LABEL_33:

          if (v60)
          {
            goto LABEL_74;
          }

          goto LABEL_34;
        }
      }

      if ((*(v61 + 24) >> 1) - *(v61 + 16) < v60)
      {
        goto LABEL_75;
      }

      swift_arrayInitWithCopy();

      if (v60)
      {
        v115 = *(v61 + 16);
        v116 = __OFADD__(v115, v60);
        v117 = v60 + v115;
        if (v116)
        {
          goto LABEL_76;
        }

        *(v61 + 16) = v117;
      }

LABEL_34:
      if (v110 == ++v64)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_52:
  v61 = MEMORY[0x29EDCA190];
LABEL_53:

  MEMORY[0x2A1C7C4A8](v118, v119);
  v120 = v141;
  *(&v131 - 4) = v139;
  *(&v131 - 3) = v120;
  *(&v131 - 2) = v140;
  sub_29D58B9EC(sub_29D4E4364, (&v131 - 6), v61);

  v121 = v132;
  v175 = sub_29D5B23EC();
  (*(v133 + 8))(v121, v134);
LABEL_54:
  v122 = v143;
  sub_29D499EC0(v143 + 2, v143[5]);
  sub_29D499EC0(v122 + 2, v122[5]);
  v123 = sub_29D5B13BC();
  sub_29D5B13AC();

  v63 = sub_29D5B404C();

  v124 = v175;
  if (v175)
  {
    v67 = v175;
    v125 = sub_29D5B143C();
    v126 = v138;
    sub_29D4E3594(v124, v125, v138);

    v64 = v136;
    v61 = v137;
    if ((*(v136 + 48))(v126, 1, v137) == 1)
    {

      sub_29D4E4214(v126);
    }

    else
    {
      v36 = v135;
      (*(v64 + 32))(v135, v126, v61);
      sub_29D4E4404(0, &qword_2A1A16218, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9E90]);
      v127 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v60 = swift_allocObject();
      *(v60 + 1) = xmmword_29D5B62A0;
      (*(v64 + 16))(v60 + v127, v36, v61);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_77:
        v63 = sub_29D51541C(0, *(v63 + 16) + 1, 1, v63);
      }

      v129 = *(v63 + 16);
      v128 = *(v63 + 24);
      if (v129 >= v128 >> 1)
      {
        v63 = sub_29D51541C((v128 > 1), v129 + 1, 1, v63);
      }

      (*(v64 + 8))(v36, v61);
      *(v63 + 16) = v129 + 1;
      v130 = v63 + 40 * v129;
      *(v130 + 32) = v60;
      *(v130 + 40) = 0;
      *(v130 + 48) = 0;
      *(v130 + 56) = 0;
      *(v130 + 64) = 64;
    }

    v124 = v175;
  }

  v144(v63, 0);
}

uint64_t sub_29D4E2CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v85 = a3;
  v4 = sub_29D5B1D6C();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v77 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v70 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B0E6C();
  v74 = *(v10 - 8);
  v75 = v10;
  v12 = MEMORY[0x2A1C7C4A8](v10, v11);
  v68 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v69 = &v67 - v15;
  v16 = sub_29D5B371C();
  v81 = *(v16 - 8);
  v82 = v16;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v80 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x29EDC9C68];
  sub_29D4E4404(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v73 = &v67 - v22;
  sub_29D4E4404(0, &qword_2A1A17388, MEMORY[0x29EDC3980], v19);
  MEMORY[0x2A1C7C4A8](v23 - 8, v24);
  v26 = &v67 - v25;
  v27 = sub_29D5B104C();
  v72 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D5B143C();
  v32 = type metadata accessor for RecordKindFeedItemData(0);
  v71 = sub_29D5B27DC();
  sub_29D4E3D3C(&qword_2A17A4380, type metadata accessor for RecordKindFeedItemData, &unk_29D5BAFF0);
  v76 = a1;
  v33 = v84;
  sub_29D5B0BEC();
  if (v33)
  {
    v34 = v85;

    v35 = v80;
    sub_29D5B36AC();
    v36 = v33;
    v37 = sub_29D5B370C();
    v38 = sub_29D5B427C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v87 = v40;
      *v39 = 136446210;
      v86 = v33;
      v41 = v33;
      sub_29D4B3AF4();
      sub_29D5B4CAC();
      v42 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v43 = sub_29D5B3E9C();
      v45 = sub_29D501890(v43, v44, &v87);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_29D48C000, v37, v38, "Error making feed item for record, hiding from UI: %{public}s", v39, 0xCu);
      sub_29D48F668(v40);
      MEMORY[0x29ED5FB80](v40, -1, -1);
      MEMORY[0x29ED5FB80](v39, -1, -1);
    }

    else
    {
    }

    (*(v81 + 8))(v35, v82);
    v64 = 1;
    v60 = v34;
  }

  else
  {
    v83 = 0;
    v84 = v26;
    type metadata accessor for RecordKindFeedItemViewController(0);
    (*(v72 + 104))(v30, *MEMORY[0x29EDC3730], v27);
    v46 = v31;
    v47 = v85;
    sub_29D5B110C();
    v48 = v73;
    sub_29D4D20BC(v76 + *(v32 + 28), v73);
    v50 = v74;
    v49 = v75;
    v51 = 1;
    if ((*(v74 + 48))(v48, 1, v75) != 1)
    {
      v52 = v69;
      (*(v50 + 32))(v69, v48, v49);
      (*(v50 + 16))(v68, v52, v49);
      sub_29D5B0C6C();
      sub_29D5B16EC();
      (*(v50 + 8))(v52, v49);
      v51 = 0;
    }

    v53 = sub_29D5B170C();
    (*(*(v53 - 8) + 56))(v84, v51, 1, v53);
    sub_29D5B12BC();

    sub_29D5B124C();
    sub_29D5B12AC();
    v87 = MEMORY[0x29EDCA1A0];
    v54 = sub_29D563D48();
    sub_29D4E80E8(v54);
    v55 = sub_29D5B158C();
    sub_29D59AD10(&v86, v55, v56);

    v57 = v87;
    v58 = v47;
    v59 = sub_29D5B130C();
    sub_29D4E80E8(v57);
    v59(&v86, 0);
    v60 = v58;
    v62 = v77;
    v61 = v78;
    v63 = v79;
    (*(v78 + 104))(v77, *MEMORY[0x29EDC4068], v79);
    sub_29D4E3D3C(&qword_2A17A4130, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B0]);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    (*(v61 + 8))(v62, v63);
    if (v86 == v87)
    {
      sub_29D5B123C();
    }

    v64 = 0;
  }

  v65 = sub_29D5B134C();
  return (*(*(v65 - 8) + 56))(v60, v64, 1, v65);
}

void sub_29D4E3594(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = type metadata accessor for RecordKindGeneratorData(0);
  MEMORY[0x2A1C7C4A8](v37, v6);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B1AAC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B0EDC();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v36 = a3;
  v18 = a1;
  v35 = a2;
  v19 = sub_29D5B10AC();
  if (!v19)
  {

    a3 = v36;
LABEL_6:
    v31 = sub_29D5B109C();
    (*(*(v31 - 8) + 56))(a3, 1, 1, v31);
    return;
  }

  v20 = v19;
  v21 = [v19 identifier];

  sub_29D5B0EBC();
  v22 = sub_29D5B0E8C();
  v24 = v23;
  (*(v14 + 8))(v17, v13);
  v39 = v22;
  v40 = v24;
  MEMORY[0x29ED5E510](58, 0xE100000000000000);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC3EF0], v8);
  v25 = sub_29D5B1A9C();
  v27 = v26;
  (*(v9 + 8))(v12, v8);
  MEMORY[0x29ED5E510](v25, v27);

  sub_29D4E43A4();
  v28 = v18;
  v29 = v38;
  sub_29D5B3D1C();
  sub_29D5B0E5C();
  sub_29D5B0C0C();
  swift_allocObject();
  sub_29D5B0BFC();
  sub_29D4E3D3C(&qword_2A17A4388, type metadata accessor for RecordKindGeneratorData, &unk_29D5B7F20);
  v30 = v41;
  sub_29D5B0BEC();
  v41 = v30;
  if (v30)
  {
    sub_29D4E4304(v29, type metadata accessor for RecordKindGeneratorData);
  }

  else
  {

    v32 = v35;
    v33 = v36;
    sub_29D5B107C();

    sub_29D4E4304(v29, type metadata accessor for RecordKindGeneratorData);
    v34 = sub_29D5B109C();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  }
}

uint64_t sub_29D4E39CC()
{

  v1 = OBJC_IVAR____TtC13HealthRecords19RecordKindGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D4E4304(v0 + OBJC_IVAR____TtC13HealthRecords19RecordKindGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t sub_29D4E3ABC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords19RecordKindGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}
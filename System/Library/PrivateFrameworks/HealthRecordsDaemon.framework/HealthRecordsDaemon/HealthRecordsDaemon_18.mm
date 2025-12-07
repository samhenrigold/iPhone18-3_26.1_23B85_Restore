uint64_t sub_251C48144(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251C47210(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251C481C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C47210(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_251C48234()
{
  v0 = sub_251C4833C(0x31EuLL);
  if (v0)
  {
    v1 = v0;
    v2 = v0 & 0xFFFFFFFFFFFFFF8;
    if (v0 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
    {
      v4 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x25308D460](v4, v1);
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_15;
          }

          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = [v5 RxNormCoding];
        if (v8)
        {
          v9 = v8;

          return v6;
        }

        ++v4;
        if (v7 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

uint64_t *sub_251C4833C(unint64_t a1)
{
  v3 = [v1 relationships];
  if (v3)
  {
    sub_251C485F4();
    v4 = sub_251C71154();

    v17 = MEMORY[0x277D84F90];
    if (v4 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251C717F4())
    {
      v3 = MEMORY[0x277D84F90];
      if (!i)
      {
        break;
      }

      v6 = 0;
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x25308D460](v6, v4);
        }

        else
        {
          if (v6 >= *(v7 + 16))
          {
            goto LABEL_36;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ([v8 type] == a1)
        {
          sub_251C71734();
          sub_251C71774();
          sub_251C71784();
          sub_251C71744();
          v7 = v4 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
        }

        ++v6;
        if (v10 == i)
        {
          a1 = v17;
          v3 = MEMORY[0x277D84F90];
          goto LABEL_17;
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

    a1 = MEMORY[0x277D84F90];
LABEL_17:

    v17 = v3;
    if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
    {
      v4 = sub_251C717F4();
    }

    else
    {
      v4 = *(a1 + 16);
    }

    v11 = 0;
    while (v4 != v11)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x25308D460](v11, a1);
      }

      else
      {
        if (v11 >= *(a1 + 16))
        {
          goto LABEL_34;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v15 = [v12 destination];

      ++v11;
      if (v15)
      {
        MEMORY[0x25308CEE0]();
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_251C71174();
        }

        sub_251C71194();
        v3 = v17;
        v11 = v14;
      }
    }
  }

  return v3;
}

unint64_t sub_251C485F4()
{
  result = qword_27F47CD50;
  if (!qword_27F47CD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F47CD50);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon23ClinicalSharingFHIRMetaVSg(uint64_t a1)
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

uint64_t sub_251C48664(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_251C486AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251C48720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F736572 && a2 == 0xE800000000000000)
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

uint64_t sub_251C487A8(uint64_t a1)
{
  v2 = sub_251C48A7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C487E4(uint64_t a1)
{
  v2 = sub_251C48A7C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_251C48820@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_251C48870(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_251C48870@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_251C48A20(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C48A7C();
  sub_251C71B04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_251C48AD0();
  sub_251C718D4();
  (*(v7 + 8))(v9, v6);
  v14 = v17;
  v15 = v16;
  v13 = v18;
  v10 = v19;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = v14;
  *a2 = v15;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  *(a2 + 48) = v10;
  return result;
}

void sub_251C48A20(uint64_t a1)
{
  if (!qword_27F47CD58)
  {
    sub_251C48A7C();
    v1 = sub_251C718E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CD58);
    }
  }
}

unint64_t sub_251C48A7C()
{
  result = qword_27F47CD60;
  if (!qword_27F47CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CD60);
  }

  return result;
}

unint64_t sub_251C48AD0()
{
  result = qword_27F47CD68;
  if (!qword_27F47CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CD68);
  }

  return result;
}

unint64_t sub_251C48B38()
{
  result = qword_27F47CD70;
  if (!qword_27F47CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CD70);
  }

  return result;
}

unint64_t sub_251C48B90()
{
  result = qword_27F47CD78;
  if (!qword_27F47CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CD78);
  }

  return result;
}

unint64_t sub_251C48BE8()
{
  result = qword_27F47CD80;
  if (!qword_27F47CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CD80);
  }

  return result;
}

uint64_t type metadata accessor for PublisherOutputWriter(uint64_t a1)
{
  result = qword_27F47CD88;
  if (!qword_27F47CD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251C48CB0(uint64_t a1)
{
  result = sub_251C6FE64();
  if (v2 <= 0x3F)
  {
    result = sub_251C48D34();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_251C48D34()
{
  result = qword_27F4792B0;
  if (!qword_27F4792B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4792B0);
  }

  return result;
}

id sub_251C48D80()
{
  v1 = [v0 sampleType];
  v2 = [v1 code];

  if (v2 == 15)
  {
    result = [v0 metadata];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = sub_251C70E54();

    v6 = sub_251C70F14();
    if (*(v5 + 16))
    {
      v8 = sub_251AC8C58(v6, v7);
      v10 = v9;

      if (v10)
      {
        sub_251A83384(*(v5 + 56) + 32 * v8, v13);

        sub_251ACFB54(v13, v14);
        sub_251A83384(v14, v13);
        sub_251AB6108();
        if (swift_dynamicCast())
        {
          v11 = [v12 integerValue];

          __swift_destroy_boxed_opaque_existential_1(v14);
          return v11;
        }

        __swift_destroy_boxed_opaque_existential_1(v14);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_251C48F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL)
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

uint64_t sub_251C48FDC(uint64_t a1)
{
  v2 = sub_251C49270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C49018(uint64_t a1)
{
  v2 = sub_251C49270();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_251C49054@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_251C49084(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void *sub_251C49084(void *a1)
{
  sub_251C49214(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C49270();
  sub_251C71B04();
  if (!v1)
  {
    sub_251C492C4();
    sub_251C718D4();
    (*(v5 + 8))(v7, v4);
    v8 = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void sub_251C49214(uint64_t a1)
{
  if (!qword_27F47CD98)
  {
    sub_251C49270();
    v1 = sub_251C718E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CD98);
    }
  }
}

unint64_t sub_251C49270()
{
  result = qword_27F47CDA0;
  if (!qword_27F47CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDA0);
  }

  return result;
}

unint64_t sub_251C492C4()
{
  result = qword_27F47CDA8;
  if (!qword_27F47CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDA8);
  }

  return result;
}

unint64_t sub_251C4932C()
{
  result = qword_27F47CDB0;
  if (!qword_27F47CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDB0);
  }

  return result;
}

unint64_t sub_251C49384()
{
  result = qword_27F47CDB8;
  if (!qword_27F47CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDB8);
  }

  return result;
}

unint64_t sub_251C493DC()
{
  result = qword_27F47CDC0;
  if (!qword_27F47CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDC0);
  }

  return result;
}

uint64_t sub_251C4943C()
{
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251C494F4(uint64_t a1)
{
  sub_251C70FB4();
}

uint64_t sub_251C49598(uint64_t a1)
{
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

unint64_t sub_251C4964C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_251C4A430(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_251C4967C(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7566185;
  v4 = 0xE800000000000000;
  v5 = 0x6972755F6F676F6CLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000251C89CB0;
  }

  if (*v1)
  {
    v3 = 1701667182;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_251C496F0()
{
  v1 = 7566185;
  v2 = 0x6972755F6F676F6CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

unint64_t sub_251C49760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251C4A430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251C49788(uint64_t a1)
{
  v2 = sub_251C49BB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C497C4(uint64_t a1)
{
  v2 = sub_251C49BB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VHRDirectoryIssuer.iss.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_251C6FE64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VHRDirectoryIssuer.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for VHRDirectoryIssuer(0) + 20));

  return v1;
}

uint64_t type metadata accessor for VHRDirectoryIssuer(uint64_t a1)
{
  result = qword_27F47CDE0;
  if (!qword_27F47CDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VHRDirectoryIssuer.encode(to:)(void *a1)
{
  sub_251C4A108(0, &qword_27F47CDC8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C49BB8();
  sub_251C71B14();
  v13 = 0;
  sub_251C6FE64();
  sub_251B37B54(&qword_27F47A390, MEMORY[0x277CC9268]);
  sub_251C71964();
  if (!v1)
  {
    type metadata accessor for VHRDirectoryIssuer(0);
    v12 = 1;
    sub_251C71934();
    v11 = 2;
    sub_251C71924();
    v10 = 3;
    sub_251C71924();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_251C49BB8()
{
  result = qword_27F47CDD0;
  if (!qword_27F47CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDD0);
  }

  return result;
}

uint64_t VHRDirectoryIssuer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_251AF3A84(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v33 = sub_251C6FE64();
  v29 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C4A108(0, &qword_27F47CDD8, MEMORY[0x277D844C8]);
  v32 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for VHRDirectoryIssuer(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C49BB8();
  sub_251C71B04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v8;
  v26 = v13;
  v16 = v29;
  v37 = 0;
  sub_251B37B54(&qword_27F47A3A0, MEMORY[0x277CC9280]);
  v17 = v31;
  sub_251C718D4();
  v18 = *(v16 + 32);
  v24 = v15;
  v18(v15, v17, v33);
  v36 = 1;
  v19 = sub_251C718B4();
  v20 = &v24[v26[5]];
  *v20 = v19;
  v20[1] = v21;
  v35 = 2;
  sub_251C718A4();
  sub_251AF80B8(v25, &v24[v26[6]]);
  v34 = 3;
  sub_251C718A4();
  (*(v30 + 8))(v12, v32);
  v23 = v24;
  sub_251AF80B8(v28, &v24[v26[7]]);
  sub_251C4A16C(v23, v27, type metadata accessor for VHRDirectoryIssuer);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_251C4A1D4(v23, type metadata accessor for VHRDirectoryIssuer);
}

void sub_251C4A108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251C49BB8();
    v7 = a3(a1, &type metadata for VHRDirectoryIssuer.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251C4A16C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C4A1D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251C4A28C(uint64_t a1)
{
  sub_251C6FE64();
  if (v1 <= 0x3F)
  {
    sub_251AF3A84(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_251C4A32C()
{
  result = qword_27F47CDF0;
  if (!qword_27F47CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDF0);
  }

  return result;
}

unint64_t sub_251C4A384()
{
  result = qword_27F47CDF8;
  if (!qword_27F47CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDF8);
  }

  return result;
}

unint64_t sub_251C4A3DC()
{
  result = qword_27F47CE00;
  if (!qword_27F47CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE00);
  }

  return result;
}

unint64_t sub_251C4A430(uint64_t a1, uint64_t a2)
{
  v2 = sub_251C71854();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_251C4A47C(void *a1)
{
  sub_251C4DED4(0, &qword_27F47CE38, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C4DE80();
  sub_251C71B14();
  v9[15] = 0;
  sub_251C71934();
  if (!v1)
  {
    v9[14] = 1;
    sub_251C71934();
    v9[13] = 2;
    sub_251C71934();
    v9[12] = 3;
    sub_251C71934();
    v9[11] = 4;
    sub_251C71934();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_251C4A648()
{
  v1 = *v0;
  v2 = 0x747265436661656CLL;
  v3 = 0x727574616E676973;
  v4 = 0x646F6874656DLL;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_251C4A6F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251C4C898(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251C4A728(uint64_t a1)
{
  v2 = sub_251C4DE80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C4A764(uint64_t a1)
{
  v2 = sub_251C4DE80();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_251C4A7A0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_251C4CA5C(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t static DeviceIdentityManager.baaHeaders(for:baaOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[44] = a2;
  v3[45] = a3;
  v3[43] = a1;
  return MEMORY[0x2822009F8](sub_251C4A854, 0, 0);
}

uint64_t sub_251C4A854()
{
  if (v0[45])
  {
    v1 = v0[45];
  }

  else
  {
    v7 = MEMORY[0x277D837D0];
    v8 = MEMORY[0x277D84F70];
    sub_251C4DAC4(0, &qword_2813E1C50, &qword_2813E1F90, MEMORY[0x277D84F70] + 8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251C7C1F0;
    *(inited + 32) = sub_251C70F14();
    *(inited + 72) = v7;
    *(inited + 40) = v10;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x8000000251C926D0;
    *(inited + 80) = sub_251C70F14();
    *(inited + 120) = v7;
    *(inited + 88) = v11;
    *(inited + 96) = 0xD000000000000010;
    *(inited + 104) = 0x8000000251C8F140;
    *(inited + 128) = sub_251C70F14();
    *(inited + 136) = v12;
    v13 = sub_251C4CE58();
    type metadata accessor for SecAccessControl(0);
    *(inited + 168) = v14;
    *(inited + 144) = v13;
    *(inited + 176) = sub_251C70F14();
    *(inited + 184) = v15;
    v16 = MEMORY[0x277D83B88];
    *(inited + 216) = MEMORY[0x277D83B88];
    *(inited + 192) = 129600;
    *(inited + 224) = sub_251C70F14();
    *(inited + 232) = v17;
    *(inited + 264) = v16;
    *(inited + 240) = 0;
    *(inited + 272) = sub_251C70F14();
    *(inited + 280) = v18;
    *(inited + 312) = v16;
    *(inited + 288) = 1;
    v1 = sub_251C4C154(inited);
    swift_setDeallocating();
    sub_251C4DB24(0, &qword_2813E1F90, MEMORY[0x277D837D0], v8 + 8);
    swift_arrayDestroy();
  }

  v0[46] = v1;
  v3 = v0[43];
  v2 = v0[44];
  v4 = swift_task_alloc();
  v0[47] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[48] = v5;
  sub_251C4DC68(0, &qword_27F479EC8, MEMORY[0x277D837D0], MEMORY[0x277D834F8]);
  *v5 = v0;
  v5[1] = sub_251C4ABDC;

  return MEMORY[0x2822008A0](v0 + 42, 0, 0, 0xD00000000000001BLL, 0x8000000251C92700, sub_251C4CF80, v4, v6);
}

uint64_t sub_251C4ABDC()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_251C4AD1C;
  }

  else
  {

    v2 = sub_251C4AD00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251C4AD1C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_251C4AD88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_251C4D444(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_251C4AF88(a2);
  v12 = sub_251C70E44();

  (*(v10 + 16))(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v10 + 32))(v14 + v13, aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_251C4D4E8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251B166DC;
  aBlock[3] = &block_descriptor_24;
  v15 = _Block_copy(aBlock);
  sub_251A858C4(a3, a4);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v15);
}

uint64_t sub_251C4AF88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_251C4D1F4();
    v2 = sub_251C71824();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_251A83384(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_251ACFB54(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_251ACFB54(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_251ACFB54(v31, v32);
    result = sub_251C71624();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_251ACFB54(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_251C4B244(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v58 = a5;
  v10 = sub_251C70F64();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251C70014();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || !a2)
  {
    goto LABEL_19;
  }

  v57 = a6;
  v19 = v16;
  v20 = a1;
  v21 = sub_251B15050(a2);
  if (!v21)
  {

LABEL_19:
    sub_251C4D58C();
    v52 = swift_allocError();
    *v53 = a3;
    *(v53 + 8) = 2;
    swift_willThrow();
    v54 = a3;
    *&v65 = v52;
    sub_251C4D444(0);
    return sub_251C711D4();
  }

  v22 = v21;
  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  if (!sub_251C717F4())
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_6:
  sub_251C70004();
  sub_251C6FFD4();
  v24 = v23;
  v25 = v23;
  result = (*(v15 + 8))(v18, v19);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  *&v65 = v24;
  v27 = sub_251C719A4();
  v29 = v28;
  v65 = xmmword_251C745D0;
  sub_251C6FF14();
  v63 = 47;
  v64 = 0xE100000000000000;
  MEMORY[0x25308CDA0](v27, v29);
  sub_251C70F54();
  v30 = sub_251C70F24();
  v32 = v31;

  (*(v11 + 8))(v13, v10);
  if (v32 >> 60 == 15)
  {
    v33 = 0;
  }

  else
  {
    v33 = v30;
  }

  if (v32 >> 60 == 15)
  {
    v34 = 0xC000000000000000;
  }

  else
  {
    v34 = v32;
  }

  sub_251C6FF14();
  sub_251A83028(v33, v34);
  v35 = sub_251C4D5E0(v65, *(&v65 + 1), v20);
  v37 = v36;
  v58 = sub_251C4D748(v22, v35, v36, v27, v29);
  v56 = v38;

  v39 = MEMORY[0x277D837D0];
  sub_251C4DAC4(0, &qword_27F47A3D8, &qword_27F479B20, MEMORY[0x277D837D0]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C74800;
  *(inited + 32) = 0x75412D4141422D58;
  v55 = inited + 32;
  *(inited + 40) = 0xEA00000000006874;
  v63 = sub_251C6FED4();
  v64 = v41;
  v61 = 43;
  v62 = 0xE100000000000000;
  v59 = 45;
  v60 = 0xE100000000000000;
  sub_251AD87E0();
  v42 = sub_251C715A4();
  v44 = v43;

  v63 = v42;
  v64 = v44;
  v61 = 47;
  v62 = 0xE100000000000000;
  v59 = 95;
  v60 = 0xE100000000000000;
  v45 = sub_251C715A4();
  v47 = v46;

  v63 = v45;
  v64 = v47;
  v61 = 61;
  v62 = 0xE100000000000000;
  v59 = 0;
  v60 = 0xE000000000000000;
  v48 = sub_251C715A4();
  v50 = v49;

  *(inited + 48) = v48;
  *(inited + 56) = v50;
  v51 = sub_251C4BEF8(inited);
  swift_setDeallocating();
  sub_251C4DB7C(v55, &qword_27F479B20, v39);
  v63 = v51;
  sub_251C4D444(0);

  sub_251C711E4();

  sub_251A83028(v58, v56);
  sub_251A83028(v35, v37);

  return sub_251A83028(v65, *(&v65 + 1));
}

void *sub_251C4B86C(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_251C6FEC4();
  v7[0] = 0;
  v3 = [v2 compressedDataUsingAlgorithm:3 error:v7];

  v4 = v7[0];
  if (v3)
  {
    v5 = sub_251C6FEE4();
  }

  else
  {
    v5 = v4;
    sub_251C6FD84();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_251C4B940(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      sub_251C716A4();

      v7 = 0xD00000000000001CLL;
      if (a1)
      {
LABEL_9:
        swift_getErrorValue();
        v3 = sub_251C71A44();
        v5 = v4;
LABEL_11:
        MEMORY[0x25308CDA0](v3, v5);

        return v7;
      }
    }

    else
    {
      sub_251C716A4();

      v7 = 0xD000000000000021;
      if (a1)
      {
        goto LABEL_9;
      }
    }

LABEL_10:
    v3 = 0x3E6C696E3CLL;
    v5 = 0xE500000000000000;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    sub_251C716A4();

    v7 = 0xD000000000000024;
    if (a1)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  return 0xD000000000000039;
}

unint64_t sub_251C4BB2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_251C4CFEC(0, a2, a3, MEMORY[0x277D84460]);
    v5 = sub_251C71824();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_251AC8C58(v7, v8);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251C4BC38(uint64_t a1)
{
  sub_251C4D0B4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_251ACF684(0);
    v8 = sub_251C71824();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_251C4D3DC(v10, v6, sub_251C4D0B4);
      result = sub_251AC8AFC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_251C70074();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_251C4BE0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251ACE3EC(0);
    v3 = sub_251C71824();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_251AC8CD0(v6);
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

unint64_t sub_251C4BEF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4DC68(0, &qword_27F4796E8, MEMORY[0x277D837D0], MEMORY[0x277D84460]);
    v3 = sub_251C71824();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_251AC8C58(v5, v6);
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

unint64_t sub_251C4C024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4D1F4();
    v3 = sub_251C71824();
    v4 = a1 + 32;

    v5 = MEMORY[0x277D84030];
    while (1)
    {
      sub_251C4D258(v4, v14, &qword_2813E1CE0, v5);
      result = sub_251AC8E74(v14);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v3[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_251ACFB54(&v16, (v3[7] + 32 * result));
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 72;
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

unint64_t sub_251C4C154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4DC68(0, &qword_2813E1CB8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84460]);
    v3 = sub_251C71824();
    v4 = a1 + 32;

    v5 = MEMORY[0x277D837D0];
    while (1)
    {
      sub_251C4D258(v4, &v14, &qword_2813E1F90, v5);
      v6 = v14;
      v7 = v15;
      result = sub_251AC8C58(v14, v15);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_251ACFB54(&v16, (v3[7] + 32 * result));
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

unint64_t sub_251C4C2A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4D188(0, &qword_2813E1CC8, qword_2813E2AC8, &protocol descriptor for ClinicalSharingMetricPayloadProviding, sub_251AA98B0);
    v3 = sub_251C71824();
    v4 = a1 + 32;

    while (1)
    {
      sub_251C4DDA8(v4, &v13, &qword_2813E1F98, qword_2813E2AC8, &protocol descriptor for ClinicalSharingMetricPayloadProviding);
      v5 = v13;
      v6 = v14;
      result = sub_251AC8C58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_251A7E8D8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_251C4C3F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4D33C(0);
    v3 = sub_251C71824();
    v4 = a1 + 32;

    while (1)
    {
      sub_251C4D3DC(v4, &v11, sub_251BBB140);
      v5 = v11;
      result = sub_251AC8EB8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_251ACFB54(&v12, (v3[7] + 32 * result));
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

unint64_t sub_251C4C508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4D2D4(0);
    v3 = sub_251C71824();
    v4 = a1 + 32;

    while (1)
    {
      sub_251C4D258(v4, v10, &qword_27F47B8F8, &type metadata for ContentVariables);
      result = sub_251AC8DE8(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_251ACFB54(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_251C4C61C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4D188(0, &qword_2813E1CD0, qword_2813E7078, &protocol descriptor for DaemonXPCService, sub_251AA98B0);
    v3 = sub_251C71824();
    v4 = a1 + 32;

    while (1)
    {
      sub_251C4DDA8(v4, &v13, &qword_27F47CE30, qword_2813E7078, &protocol descriptor for DaemonXPCService);
      v5 = v13;
      v6 = v14;
      result = sub_251AC8C58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_251A7E8D8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_251C4C774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4D188(0, &qword_2813E1CC0, &qword_2813E1D20, 0x277D82BB8, sub_251A8223C);
    v3 = sub_251C71824();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_251AC8C58(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
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

uint64_t sub_251C4C898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747265436661656CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_251C719D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000251C92820 == a2 || (sub_251C719D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (sub_251C719D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646F6874656DLL && a2 == 0xE600000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xEF736365536E4970)
  {

    return 4;
  }

  else
  {
    v6 = sub_251C719D4();

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

uint64_t sub_251C4CA5C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_251C4DED4(0, &qword_27F47CE48, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C4DE80();
  sub_251C71B04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v10 = sub_251C718B4();
  v30 = v11;
  LOBYTE(v36[0]) = 1;
  v12 = sub_251C718B4();
  v29 = v13;
  v27 = v12;
  LOBYTE(v36[0]) = 2;
  v26 = sub_251C718B4();
  v28 = v14;
  LOBYTE(v36[0]) = 3;
  *&v25 = sub_251C718B4();
  *(&v25 + 1) = v15;
  v37 = 4;
  v16 = sub_251C718B4();
  v18 = v17;
  (*(v7 + 8))(v9, v6);
  *&v31 = v10;
  *(&v31 + 1) = v30;
  v19 = v29;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  v20 = v28;
  *&v33 = v26;
  *(&v33 + 1) = v28;
  v21 = *(&v25 + 1);
  v34 = v25;
  *&v35 = v16;
  *(&v35 + 1) = v18;
  sub_251C4DF38(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v10;
  v36[1] = v30;
  v36[2] = v27;
  v36[3] = v19;
  v36[4] = v26;
  v36[5] = v20;
  v36[6] = v25;
  v36[7] = v21;
  v36[8] = v16;
  v36[9] = v18;
  result = sub_251C4DC38(v36);
  v23 = v34;
  a2[2] = v33;
  a2[3] = v23;
  a2[4] = v35;
  v24 = v32;
  *a2 = v31;
  a2[1] = v24;
  return result;
}

SecAccessControlRef sub_251C4CE58()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, v5);
  if (!result)
  {
    v1 = v5[0];
    if (v5[0])
    {
      type metadata accessor for CFError(0);
      sub_251C4D140(&qword_27F47CE28, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v2 = swift_allocError();
      *v3 = v1;
    }

    else
    {
      v2 = 0;
    }

    sub_251C4D58C();
    swift_allocError();
    *v4 = v2;
    *(v4 + 8) = 0;
    swift_willThrow();
    return 0;
  }

  return result;
}

void sub_251C4CF9C()
{
  if (!qword_27F4792D8)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4792D8);
    }
  }
}

void sub_251C4CFEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_251C4D060(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C711A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251C4D0B4(uint64_t a1)
{
  if (!qword_2813E74C8)
  {
    sub_251C70074();
    sub_251C4D060(255, &qword_2813E1F58, MEMORY[0x277D11300]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E74C8);
    }
  }
}

uint64_t sub_251C4D140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251C4D188(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_251C71834();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251C4D1F4()
{
  if (!qword_2813E1CB0)
  {
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1CB0);
    }
  }
}

uint64_t sub_251C4D258(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_251C4DB24(0, a3, a4, MEMORY[0x277D84F70] + 8);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_251C4D2D4(uint64_t a1)
{
  if (!qword_27F4796C8)
  {
    sub_251ACFC08();
    v1 = sub_251C71834();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4796C8);
    }
  }
}

void sub_251C4D33C(uint64_t a1)
{
  if (!qword_27F47CE08)
  {
    type metadata accessor for FileAttributeKey(255);
    sub_251C4D140(&qword_27F478C68, type metadata accessor for FileAttributeKey, &unk_251C740D4);
    v1 = sub_251C71834();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CE08);
    }
  }
}

uint64_t sub_251C4D3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_251C4D444(uint64_t a1)
{
  if (!qword_27F47CE10)
  {
    sub_251C4DC68(255, &qword_27F479EC8, MEMORY[0x277D837D0], MEMORY[0x277D834F8]);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v1 = sub_251C711F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CE10);
    }
  }
}

uint64_t sub_251C4D4E8(void *a1, uint64_t a2, void *a3)
{
  sub_251C4D444(0);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));

  return sub_251C4B244(a1, a2, a3, v8, v9, v10);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251C4D58C()
{
  result = qword_27F47CE18;
  if (!qword_27F47CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE18);
  }

  return result;
}

uint64_t sub_251C4D5E0(uint64_t a1, uint64_t a2, __SecKey *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v4 = *MEMORY[0x277CDC300];
  v5 = sub_251C6FEC4();
  Signature = SecKeyCreateSignature(a3, v4, v5, v13);

  if (Signature)
  {
    v7 = Signature;
    v8 = sub_251C6FEE4();
  }

  else
  {
    v9 = v13[0];
    if (v13[0])
    {
      type metadata accessor for CFError(0);
      sub_251C4D140(&qword_27F47CE28, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v8 = swift_allocError();
      *v10 = v9;
    }

    else
    {
      v8 = 0;
    }

    sub_251C4D58C();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = 1;
    swift_willThrow();
  }

  return v8;
}

void *sub_251C4D748(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a1 >> 62)
  {
    v37 = a1;
    v9 = sub_251C717F4();
    a1 = v37;
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = a1;
    *&v39[0] = MEMORY[0x277D84F90];
    result = sub_251C0B6AC(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v38 = a5;
    v13 = 0;
    v10 = *&v39[0];
    v14 = v11;
    v45 = v11 & 0xC000000000000001;
    do
    {
      v15 = v9;
      if (v45)
      {
        v16 = MEMORY[0x25308D460](v13, v14);
      }

      else
      {
        v16 = *(v14 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = SecCertificateCopyData(v16);
      v19 = sub_251C6FEE4();
      v21 = v20;

      v22 = sub_251C6FED4();
      *&v40 = 0xD00000000000001CLL;
      *(&v40 + 1) = 0x8000000251C92720;
      MEMORY[0x25308CDA0](v22);

      MEMORY[0x25308CDA0](0xD00000000000001ALL, 0x8000000251C92740);

      sub_251A83028(v19, v21);

      v23 = v40;
      *&v39[0] = v10;
      v25 = v10[2];
      v24 = v10[3];
      if (v25 >= v24 >> 1)
      {
        sub_251C0B6AC((v24 > 1), v25 + 1, 1);
        v10 = *&v39[0];
      }

      ++v13;
      v10[2] = v25 + 1;
      *&v10[2 * v25 + 4] = v23;
      v9 = v15;
      v14 = v11;
    }

    while (v15 != v13);
    a5 = v38;
    v6 = v5;
  }

  sub_251C6FA54();
  swift_allocObject();
  result = sub_251C6FA44();
  v26 = v10[2];
  if (!v26)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v26 == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = result;
  v29 = v10[4];
  v28 = v10[5];
  v31 = v10[6];
  v30 = v10[7];

  *&v40 = v29;
  *(&v40 + 1) = v28;
  *&v41 = v31;
  *(&v41 + 1) = v30;
  *&v42 = sub_251C6FED4();
  *(&v42 + 1) = v32;
  *&v43 = 0x6977363532414853;
  *(&v43 + 1) = 0xEF41534443456874;
  *&v44 = a4;
  *(&v44 + 1) = a5;
  sub_251C4DBE4();

  v33 = sub_251C6FA34();
  v39[2] = v42;
  v39[3] = v43;
  v39[4] = v44;
  v39[0] = v40;
  v39[1] = v41;
  if (v6)
  {
    sub_251C4DC38(v39);
  }

  else
  {
    v35 = v33;
    v36 = v34;
    sub_251C4DC38(v39);

    v27 = sub_251C4B86C(v35, v36);
    sub_251A83028(v35, v36);
  }

  return v27;
}

void sub_251C4DAC4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_251C4DB24(255, a3, MEMORY[0x277D837D0], a4);
    v5 = sub_251C719B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251C4DB24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251C4DB7C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_251C4DB24(0, a2, MEMORY[0x277D837D0], a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_251C4DBE4()
{
  result = qword_27F47CE20;
  if (!qword_27F47CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE20);
  }

  return result;
}

void sub_251C4DC68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277D837D0], a3, MEMORY[0x277D837E0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon21DeviceIdentityManagerV15BAASigningErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_251C4DCF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_251C4DD3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_251C4DD80(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_251C4DDA8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_251C4DE18(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_251C4DE18(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_251AA98B0(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_251C4DE80()
{
  result = qword_27F47CE40;
  if (!qword_27F47CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE40);
  }

  return result;
}

void sub_251C4DED4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251C4DE80();
    v7 = a3(a1, &type metadata for DeviceIdentityManager.Attestation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DeviceIdentityManager.Attestation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceIdentityManager.Attestation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_251C4E0C4()
{
  result = qword_27F47CE50;
  if (!qword_27F47CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE50);
  }

  return result;
}

unint64_t sub_251C4E11C()
{
  result = qword_27F47CE58;
  if (!qword_27F47CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE58);
  }

  return result;
}

unint64_t sub_251C4E174()
{
  result = qword_27F47CE60;
  if (!qword_27F47CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE60);
  }

  return result;
}

uint64_t sub_251C4E1C8(uint64_t result)
{
  if ((result - 1) >= 0x11)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingOnboardingMetric(uint64_t a1)
{
  result = qword_27F47CE68;
  if (!qword_27F47CE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251C4E250(uint64_t a1)
{
  sub_251AE526C(319, &qword_2813E1DD0, MEMORY[0x277D83B88]);
  if (v1 <= 0x3F)
  {
    sub_251AE526C(319, &qword_2813E1FA0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_251C4E36C(319, &qword_2813E1E20, sub_251AC5BAC, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_251C70014();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_251C4E36C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251C4E3D0()
{
  sub_251C4E36C(0, &qword_2813E1C58, sub_251B29AC0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000016;
  *(inited + 16) = xmmword_251C75810;
  *(inited + 40) = 0x8000000251C92840;
  *(inited + 72) = &type metadata for PairedWatchProductTypeMetricField;
  *(inited + 80) = &off_2863FF018;
  *(inited + 88) = 6645601;
  *(inited + 96) = 0xE300000000000000;
  v2 = *v0;
  v3 = *(v0 + 8);
  *(inited + 128) = &type metadata for AgeMetricField;
  *(inited + 136) = &off_2863F6BE8;
  *(inited + 104) = v2;
  *(inited + 112) = v3;
  *(inited + 144) = 0x747865746E6F63;
  *(inited + 152) = 0xE700000000000000;
  v4 = v0[6];
  v5 = v0[7];
  *(inited + 184) = &type metadata for ContextMetricField;
  *(inited + 192) = &off_2863FF000;
  *(inited + 160) = v4;
  *(inited + 168) = v5;
  *(inited + 200) = 0xD000000000000020;
  *(inited + 208) = 0x8000000251C92860;
  v6 = v0[8];
  *(inited + 240) = &type metadata for ClinicalHealthRecordsOnboardedMetricField;
  *(inited + 248) = &off_2863FEFE8;
  *(inited + 216) = v6;
  *(inited + 256) = 0xD000000000000021;
  *(inited + 264) = 0x8000000251C8B150;
  v7 = type metadata accessor for ClinicalSharingOnboardingMetric(0);
  v8 = *(v0 + *(v7 + 40));
  *(inited + 296) = &type metadata for IHAMetricField;
  *(inited + 304) = &off_2863F6BD0;
  *(inited + 272) = v8;
  *(inited + 312) = 0xD00000000000001DLL;
  *(inited + 320) = 0x8000000251C8B180;
  v9 = *(v0 + *(v7 + 44));
  *(inited + 352) = &type metadata for IHRMetricField;
  *(inited + 360) = &off_2863F6C30;
  *(inited + 328) = v9;
  *(inited + 368) = 0xD000000000000025;
  *(inited + 376) = 0x8000000251C92890;
  *(inited + 408) = &type metadata for NumberOfProvidersPreviouslySharedWithMetricField;
  *(inited + 416) = &off_2863FEFD0;
  *(inited + 384) = v6;
  *(inited + 424) = 7890291;
  *(inited + 432) = 0xE300000000000000;
  v11 = v0[2];
  v10 = v0[3];
  *(inited + 464) = &type metadata for SexMetricField;
  *(inited + 472) = &off_2863F6BB8;
  *(inited + 440) = v11;
  *(inited + 448) = v10;
  *(inited + 480) = 1885697139;
  *(inited + 488) = 0xE400000000000000;
  v12 = v0[4];
  v13 = v0[5];
  *(inited + 520) = &type metadata for StepMetricField;
  *(inited + 528) = &off_2863FEFB8;
  *(inited + 496) = v12;
  *(inited + 504) = v13;
  *(inited + 536) = 0x6E6F6973726576;
  *(inited + 544) = 0xE700000000000000;
  *(inited + 576) = &type metadata for VersionMetricField;
  *(inited + 584) = &off_2863FEFA0;

  swift_bridgeObjectRetain_n();

  v14 = sub_251C4C2A0(inited);
  swift_setDeallocating();
  sub_251B29AC0(0);
  swift_arrayDestroy();
  return v14;
}

double sub_251C4E6BC@<D0>(_OWORD *a1@<X8>)
{
  *&result = 3157553;
  *a1 = xmmword_251C89110;
  return result;
}

BOOL sub_251C4E6CC(_BOOL8 result)
{
  v1 = result;
  if (result)
  {
    v10 = MEMORY[0x277D84F90];
    if (result >> 62)
    {
LABEL_18:
      v2 = sub_251C717F4();
      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
LABEL_4:
        v3 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v4 = MEMORY[0x25308D460](v3, v1);
            v5 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              goto LABEL_14;
            }
          }

          else
          {
            if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_18;
            }

            v4 = *(v1 + 8 * v3 + 32);
            v5 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
LABEL_14:
              __break(1u);
LABEL_15:
              v8 = v10;
              if ((v10 & 0x8000000000000000) == 0)
              {
                goto LABEL_20;
              }

              goto LABEL_24;
            }
          }

          v6 = v4;
          v7 = sub_251C71474();

          if (v7)
          {
            sub_251C71734();
            sub_251C71774();
            sub_251C71784();
            sub_251C71744();
          }

          else
          {
          }

          ++v3;
          if (v5 == v2)
          {
            goto LABEL_15;
          }
        }
      }
    }

    v8 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    if ((v8 & 0x4000000000000000) != 0)
    {
LABEL_24:
      v9 = sub_251C717F4();
    }

    else
    {
      v9 = *(v8 + 16);
    }

    return v9 != 0;
  }

  return result;
}

BOOL sub_251C4E844@<W0>(uint64_t a1@<X8>)
{
  result = sub_251C4E6CC(*v1);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t HTTPError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_251C702A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HTTPError(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BBB648(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v5, v8, v2);
      sub_251C4F8C8(&qword_27F47CE78, MEMORY[0x277CC9AE8], MEMORY[0x277CC9AF0]);
      v10 = sub_251C71A44();
      (*(v3 + 8))(v5, v2);
      return v10;
    }

    v16 = *v8;
    strcpy(v18, "HTTP status ");
    BYTE5(v18[1]) = 0;
    HIWORD(v18[1]) = -5120;
    v17[1] = v16;
    v14 = sub_251C719A4();
LABEL_8:
    MEMORY[0x25308CDA0](v14, v15);

    return v18[0];
  }

  if (EnumCaseMultiPayload == 2)
  {
    result = 0xD000000000000010;
    v12 = v8[1];
    if (!v12)
    {
      return result;
    }

    v13 = *v8;
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_251C716A4();

    v18[0] = 0xD000000000000012;
    v18[1] = 0x8000000251C928E0;
    v14 = v13;
    v15 = v12;
    goto LABEL_8;
  }

  return *v8;
}

uint64_t type metadata accessor for HTTPError(uint64_t a1)
{
  result = qword_27F47CE88;
  if (!qword_27F47CE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HTTPError.safelyLoggableDescription.getter()
{
  v1 = v0;
  v2 = sub_251C702A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HTTPError(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BBB648(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v5, v8, v2);
      v10 = sub_251C70294();
      v11 = sub_251C6FD74();

      v12 = [v11 hrs_safelyLoggableDescription];
      v13 = sub_251C70F14();

      (*(v3 + 8))(v5, v2);
      return v13;
    }

    v19 = *v8;
    strcpy(v23, "HTTP status ");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    v22[1] = v19;
    v17 = sub_251C719A4();
LABEL_8:
    MEMORY[0x25308CDA0](v17, v18);

    return v23[0];
  }

  if (EnumCaseMultiPayload == 2)
  {
    result = 0xD000000000000010;
    v15 = v8[1];
    if (!v15)
    {
      return result;
    }

    v16 = *v8;
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_251C716A4();

    v23[0] = 0xD000000000000012;
    v23[1] = 0x8000000251C928E0;
    v17 = v16;
    v18 = v15;
    goto LABEL_8;
  }

  v20 = v8[1];
  v23[0] = *v8;
  v23[1] = v20;
  sub_251C719F4();
  v21 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_251C715C4();
  swift_unknownObjectRelease();
  return sub_251C70F74();
}

uint64_t sub_251C4EEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_251C71004();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_251C71004();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_251C719D4();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_251C71004();
      v7 = v9;
    }

    while (v9);
  }

  sub_251C71004();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

Swift::Bool __swiftcall HTTPError.isUnauthorizedErrorAskingForBearerToken()()
{
  v1 = type metadata accessor for HTTPError(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BBB648(v0, v3);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_251C4F868(v3, type metadata accessor for HTTPError);
    goto LABEL_5;
  }

  if (!v3[1])
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v4 = sub_251C4EEAC(0x20726572616542, 0xE700000000000000, *v3, v3[1]);

  return v4 & 1;
}

uint64_t NSHTTPURLResponse.asHTTPError()@<X0>(uint64_t *a1@<X8>)
{
  if ([v1 statusCode] >= 400)
  {
    if ([v1 statusCode] == 401)
    {
      v8 = sub_251C70EE4();
      v9 = [v1 valueForHTTPHeaderField_];

      if (v9)
      {
        v10 = sub_251C70F14();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      *a1 = v10;
      a1[1] = v12;
      v13 = type metadata accessor for HTTPError(0);
    }

    else
    {
      *a1 = [v1 statusCode];
      v13 = type metadata accessor for HTTPError(0);
    }

    swift_storeEnumTagMultiPayload();
    v4 = *(*(v13 - 8) + 56);
    v6 = a1;
    v7 = 0;
    v5 = v13;
  }

  else
  {
    v3 = type metadata accessor for HTTPError(0);
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a1;
    v7 = 1;
  }

  return v4(v6, v7, 1, v5);
}

uint64_t _s19HealthRecordsDaemon9HTTPErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C702A4();
  v45 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v42 - v7;
  v8 = type metadata accessor for HTTPError(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v42 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v42 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  sub_251C4F804(0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v23[*(v21 + 56)];
  sub_251BBB648(a1, v23);
  sub_251BBB648(a2, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_251BBB648(v23, v14);
      v27 = *v14;
      v26 = v14[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v28 = *(v24 + 1);
        if (v26)
        {
          if (v28)
          {
            if (v27 == *v24 && v26 == v28)
            {

              v30 = 1;
            }

            else
            {
              v30 = sub_251C719D4();
            }
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v32 = type metadata accessor for HTTPError;
          if (!v28)
          {
            v30 = 1;
            goto LABEL_34;
          }

          v30 = 0;
        }

        goto LABEL_32;
      }
    }

    else
    {
      sub_251BBB648(v23, v11);
      v34 = *v11;
      v33 = v11[1];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        if (v34 == *v24 && v33 == *(v24 + 1))
        {
          v30 = 1;
        }

        else
        {
          v30 = sub_251C719D4();
        }

LABEL_32:

        goto LABEL_33;
      }
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload)
  {
    sub_251BBB648(v23, v17);
    v31 = swift_getEnumCaseMultiPayload();
    v32 = sub_251C4F804;
    if (v31 != 1)
    {
      v30 = 0;
      goto LABEL_34;
    }

    v30 = *v17 == *v24;
LABEL_33:
    v32 = type metadata accessor for HTTPError;
    goto LABEL_34;
  }

  sub_251BBB648(v23, v19);
  if (!swift_getEnumCaseMultiPayload())
  {
    v36 = v45;
    v37 = *(v45 + 32);
    v38 = v43;
    v37(v43, v19, v4);
    v39 = v44;
    v37(v44, v24, v4);
    sub_251C4F8C8(&qword_27F47BB40, MEMORY[0x277CC9AE8], MEMORY[0x277CC9AE0]);
    v30 = sub_251C6FD24();
    v40 = *(v36 + 8);
    v40(v39, v4);
    v40(v38, v4);
    goto LABEL_33;
  }

  (*(v45 + 8))(v19, v4);
LABEL_23:
  v30 = 0;
  v32 = sub_251C4F804;
LABEL_34:
  sub_251C4F868(v23, v32);
  return v30 & 1;
}

void sub_251C4F780(uint64_t a1)
{
  sub_251C702A4();
  if (v1 <= 0x3F)
  {
    sub_251AD56B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_251C4F804(uint64_t a1)
{
  if (!qword_27F47CE98)
  {
    type metadata accessor for HTTPError(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47CE98);
    }
  }
}

uint64_t sub_251C4F868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C4F8C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251C4FB08(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  sub_251B050E4(0);
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251C717F4())
  {
    v10 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v10;
    }

    v25 = MEMORY[0x277D84F90];
    sub_251C0BBA8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v11 = 0;
    v10 = v25;
    v19 = i;
    v20 = a3 & 0xC000000000000001;
    v18 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v20)
      {
        v13 = MEMORY[0x25308D460](v11, a3);
      }

      else
      {
        if (v11 >= *(v18 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v11 + 32);
      }

      v24 = v13;
      v22(&v24);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v25 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_251C0BBA8((v14 > 1), v15 + 1, 1);
        v10 = v25;
      }

      *(v10 + 16) = v15 + 1;
      sub_251C557C4(v8, v10 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v15, sub_251B050E4);
      ++v11;
      if (v12 == v19)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

void sub_251C4FDA0(void (*a1)(id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v25 = a6;
  v26 = a1;
  v8 = v6;
  v27 = a2;
  v10 = a4(0);
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v29 = MEMORY[0x277D84F90];
    a5(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v14 = 0;
    v15 = v29;
    v22 = i;
    v23 = a3 & 0xC000000000000001;
    v20 = a5;
    v21 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a5 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v23)
      {
        v16 = MEMORY[0x25308D460](v14, a3);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(a3 + 8 * v14 + 32);
      }

      i = v16;
      v28 = v16;
      v26(&v28);
      if (v8)
      {
        goto LABEL_20;
      }

      v8 = 0;

      v29 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        v20(v17 > 1, v18 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v18 + 1;
      sub_251C557C4(v12, v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18, v25);
      ++v14;
      if (a5 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_251C4FFD8(uint64_t a1, uint64_t a2)
{
  v24[5] = *MEMORY[0x277D85DE8];
  v20[0] = a1;
  v20[1] = a2;
  *&v23 = a1;
  *(&v23 + 1) = a2;
  sub_251C55CC4(0);
  sub_251C55DA0();

  if (swift_dynamicCast())
  {
    sub_251A7E8D8(v21, v24);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    sub_251C6FCE4();
    v21[0] = v23;
    __swift_destroy_boxed_opaque_existential_1(v24);
    goto LABEL_33;
  }

  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v2 = sub_251C55938(v21, &qword_27F47CED0, sub_251C55DA0);
  v21[0] = xmmword_251C745D0;
  MEMORY[0x28223BE20](v2);
  v19[2] = v20;
  v3 = sub_251C5527C(sub_251C55E04, v19);
  v6 = v3;
  v7 = v4;
  v8 = *(&v21[0] + 1) >> 62;
  if ((*(&v21[0] + 1) >> 62) > 1)
  {
    if (v8 != 2)
    {
      if (!v5)
      {
        goto LABEL_18;
      }

      v13 = 0;
LABEL_30:
      if (v13 >= v5)
      {
        sub_251C6FEA4();
        goto LABEL_32;
      }

      goto LABEL_38;
    }

    v10 = *(*&v21[0] + 16);
    v9 = *(*&v21[0] + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (v11)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    if (v5 != v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!v8)
    {
      if (v5 == BYTE14(v21[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (__OFSUB__(DWORD1(v21[0]), v21[0]))
    {
      goto LABEL_40;
    }

    if (v5 != DWORD1(v21[0]) - LODWORD(v21[0]))
    {
LABEL_13:
      if (v8 == 2)
      {
        v13 = *(*&v21[0] + 24);
      }

      else if (v8 == 1)
      {
        v13 = *&v21[0] >> 32;
      }

      else
      {
        v13 = BYTE14(v21[0]);
      }

      goto LABEL_30;
    }
  }

LABEL_18:
  memset(v24, 0, 15);
  v14 = *(v3 + 2);
  if (v4 == v14)
  {
    goto LABEL_32;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if (v4 >= *(v3 + 2))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  LOBYTE(v15) = 0;
  v16 = v14 - 1;
  while (1)
  {
    *(v24 + v15) = v6[v7 + 32];
    v15 = v15 + 1;
    if ((v15 & 0x100) != 0)
    {
      goto LABEL_36;
    }

    if (v15 != 14)
    {
      break;
    }

    *&v23 = v24[0];
    *(&v23 + 6) = *(v24 + 6);
    sub_251C6FEB4();
    if (v16 == v7)
    {
      goto LABEL_32;
    }

    LOBYTE(v15) = 0;
LABEL_23:
    if (++v7 >= *(v6 + 2))
    {
      goto LABEL_35;
    }
  }

  if (v16 != v7)
  {
    goto LABEL_23;
  }

  *&v23 = v24[0];
  *(&v23 + 6) = *(v24 + 6);
  sub_251C6FEB4();
LABEL_32:

LABEL_33:
  v17 = v21[0];
  sub_251A858C4(*&v21[0], *(&v21[0] + 1));

  sub_251A83028(v17, *(&v17 + 1));
  return v17;
}

uint64_t sub_251C50344@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  sub_251C56038(0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v131 = &Output - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v129 = &Output - v7;
  MEMORY[0x28223BE20](v6);
  v127 = &Output - v8;
  v9 = type metadata accessor for PBDateRange(0);
  v134 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v132 = &Output - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v130 = (&Output - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v128 = (&Output - v15);
  MEMORY[0x28223BE20](v14);
  v126 = (&Output - v16);
  sub_251C56038(0, &qword_27F47C280, MEMORY[0x277CC53B0]);
  MEMORY[0x28223BE20](v17 - 8);
  v147 = &Output - v18;
  v125 = type metadata accessor for PBTypedData(0);
  MEMORY[0x28223BE20](v125);
  v144 = &Output - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PBPlainText(0);
  MEMORY[0x28223BE20](v20 - 8);
  v146 = (&Output - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_251C70C94();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v133 = &Output - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v148 = &Output - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &Output - v28;
  v135 = type metadata accessor for PBNode(0);
  v30 = MEMORY[0x28223BE20](v135);
  v145 = &Output - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &Output - v32;
  v142 = sub_251C70DE4();
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v138 = &Output - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_251C70C64();
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v139 = &Output - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for PBRevocationAuthorization(0);
  MEMORY[0x28223BE20](v152);
  v37 = &Output - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  Output = type metadata accessor for ClinicalSharingQueryOutput(0);
  v38 = MEMORY[0x28223BE20](Output);
  v136 = &Output - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &Output - v40;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v42 = sub_251C70764();
  __swift_project_value_buffer(v42, qword_2813E8130);
  v149 = a1;
  sub_251C5582C(a1, v41, type metadata accessor for ClinicalSharingQueryOutput);
  v43 = sub_251C70744();
  v44 = sub_251C713C4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v150 = v29;
    v151 = v23;
    v46 = v9;
    v47 = v45;
    *v45 = 134217984;
    nullsub_1();
    v48 = v33;
    v49 = v22;
    v51 = v50;
    sub_251C55894(v41, type metadata accessor for ClinicalSharingQueryOutput);
    *(v47 + 1) = v51;
    v22 = v49;
    v33 = v48;
    _os_log_impl(&dword_251A6C000, v43, v44, "Preparing to upload ClinicalSharingDataNode. DataType: %ld", v47, 0xCu);
    v52 = v47;
    v9 = v46;
    v29 = v150;
    v23 = v151;
    MEMORY[0x25308E2B0](v52, -1, -1);
  }

  else
  {
    sub_251C55894(v41, type metadata accessor for ClinicalSharingQueryOutput);
  }

  v53 = v155;
  result = sub_251A82B44(3, 1, 0, 0xE000000000000000, v37);
  if (!v53)
  {
    v155 = v9;
    sub_251C55D58(&qword_27F479858, type metadata accessor for PBRevocationAuthorization, &unk_251C764E0);
    v55 = sub_251C70594();
    v57 = v56;
    sub_251C55894(v37, type metadata accessor for PBRevocationAuthorization);
    v150 = v29;
    v151 = v23;
    sub_251C55D58(&qword_27F47A020, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v58 = v138;
    v59 = v57;
    v60 = v142;
    sub_251C70C54();
    sub_251A858C4(v55, v57);
    sub_251B1C08C(v55, v57, v58);
    v152 = v55;
    sub_251A83028(v55, v57);
    v61 = v139;
    sub_251C70C44();
    (*(v140 + 8))(v58, v60);
    sub_251C55D58(&qword_27F47CEA0, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
    v62 = v143;
    v63 = sub_251C70DD4();
    v65 = v64;
    (*(v141 + 8))(v61, v62);
    v66 = sub_251C4FFD8(v63, v65);
    v68 = v67;
    v69 = v144;
    sub_251C5582C(v149, v144, type metadata accessor for PBTypedData);
    v70 = v146;
    sub_251AD892C(v69, 0, 0, v146);
    v71 = sub_251C70CF4();
    v72 = v147;
    (*(*(v71 - 8) + 56))(v147, 1, 1, v71);
    v73 = v145;
    v74 = sub_251BFC488(v145, v148, v70, 3uLL, 1, v72, v66, v68, 0, 0);
    v143 = v66;
    v144 = v68;
    v142 = v59;
    sub_251A83028(v74, v75);
    sub_251C55938(v72, &qword_27F47C280, MEMORY[0x277CC53B0]);
    sub_251C55894(v70, type metadata accessor for PBPlainText);
    sub_251C557C4(v73, v33, type metadata accessor for PBNode);
    v77 = v150;
    v76 = v151;
    (*(v151 + 32))(v150, v148, v22);
    sub_251C5582C(v33, v137, type metadata accessor for PBNode);
    v78 = v136;
    sub_251C5582C(v149, v136, type metadata accessor for ClinicalSharingQueryOutput);
    sub_251C55D58(&qword_27F47B948, type metadata accessor for PBNode, &unk_251C836A0);
    v79 = sub_251C70594();
    v149 = v33;
    v80 = v79;
    v82 = v81;
    v83 = sub_251B1C34C(v79, v81);
    v147 = v84;
    v148 = v83;
    sub_251A83028(v80, v82);
    sub_251C55FC0(0, &qword_27F4799E8, type metadata accessor for ClinicalSharingDataNodeInfo);
    v86 = (v137 + *(v85 + 48));
    v87 = *(v76 + 16);
    v141 = v22;
    v87(v133, v77, v22);
    v88 = *(v78 + *(Output + 20));
    v146 = v86;
    *v86 = v88;

    sub_251C70C74();
    v145 = v154;
    v139 = *v78;
    v140 = v153;
    LODWORD(v138) = *(v78 + 8);
    v89 = *(v125 + 28);
    v90 = v127;
    sub_251B36FC4(v78 + v89, v127);
    v91 = *(v134 + 48);
    v92 = v155;
    if (v91(v90, 1, v155) == 1)
    {
      v93 = v126;
      *v126 = 0;
      v93[1] = 0xE000000000000000;
      v93[2] = 0;
      v93[3] = 0xE000000000000000;
      v93[4] = 0;
      *(v93 + 40) = 1;
      v94 = v93;
      sub_251C703A4();
      if (v91(v90, 1, v92) != 1)
      {
        sub_251C55938(v90, qword_2813E6EE8, type metadata accessor for PBDateRange);
      }
    }

    else
    {
      v94 = v126;
      sub_251C557C4(v90, v126, type metadata accessor for PBDateRange);
    }

    v95 = v94[1];
    v135 = *v94;
    v137 = v95;

    sub_251C55894(v94, type metadata accessor for PBDateRange);
    v96 = v129;
    sub_251B36FC4(v78 + v89, v129);
    if (v91(v96, 1, v92) == 1)
    {
      v97 = v128;
      *v128 = 0;
      v97[1] = 0xE000000000000000;
      v97[2] = 0;
      v97[3] = 0xE000000000000000;
      v97[4] = 0;
      *(v97 + 40) = 1;
      v98 = v97;
      sub_251C703A4();
      if (v91(v96, 1, v92) != 1)
      {
        sub_251C55938(v96, qword_2813E6EE8, type metadata accessor for PBDateRange);
      }
    }

    else
    {
      v98 = v128;
      sub_251C557C4(v96, v128, type metadata accessor for PBDateRange);
    }

    v99 = v98[3];
    v128 = v98[2];
    v129 = v99;

    sub_251C55894(v98, type metadata accessor for PBDateRange);
    v100 = v78 + v89;
    v101 = v131;
    sub_251B36FC4(v100, v131);
    if (v91(v101, 1, v92) == 1)
    {
      v102 = v130;
      *v130 = 0;
      v102[1] = 0xE000000000000000;
      v102[2] = 0;
      v102[3] = 0xE000000000000000;
      v102[4] = 0;
      *(v102 + 40) = 1;
      sub_251C703A4();
      v103 = v92;
      if (v91(v101, 1, v92) != 1)
      {
        sub_251C55938(v101, qword_2813E6EE8, type metadata accessor for PBDateRange);
      }
    }

    else
    {
      v103 = v92;
      v102 = v130;
      sub_251C557C4(v101, v130, type metadata accessor for PBDateRange);
    }

    v131 = v102[4];
    LODWORD(v130) = *(v102 + 40);
    sub_251C55894(v102, type metadata accessor for PBDateRange);
    v155 = type metadata accessor for ClinicalSharingDataNodeInfo(0);
    v104 = v146 + *(v155 + 20);
    *(v104 + 1) = xmmword_251C745D0;
    v105 = type metadata accessor for PBReference(0);
    v106 = *(v105 + 28);
    v107 = type metadata accessor for PBReference.OneOf_Metadata(0);
    (*(*(v107 - 8) + 56))(&v104[v106], 1, 1, v107);
    sub_251C703A4();
    v108 = *(v105 + 36);
    v134 = *(v134 + 56);
    v109 = v103;
    (v134)(&v104[v108], 1, 1, v103);
    v110 = v147;
    *v104 = v148;
    *(v104 + 1) = v110;
    v112 = *(v104 + 2);
    v111 = *(v104 + 3);

    v113 = v140;
    v114 = v145;
    sub_251A858C4(v140, v145);
    sub_251A83028(v112, v111);
    *(v104 + 2) = v113;
    *(v104 + 3) = v114;
    *(v104 + 4) = v139;
    v104[40] = v138;
    v115 = v132;
    sub_251C703A4();
    sub_251A83028(v143, v144);
    sub_251A83028(v113, v114);
    v116 = *(v151 + 8);
    v117 = v141;
    v116(v133, v141);
    v116(v150, v117);
    sub_251C55894(v149, type metadata accessor for PBNode);
    v118 = v137;
    *v115 = v135;
    *(v115 + 8) = v118;
    v119 = v129;
    *(v115 + 16) = v128;
    *(v115 + 24) = v119;
    *(v115 + 32) = v131;
    *(v115 + 40) = v130;
    sub_251C55938(&v104[v108], qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251C557C4(v115, &v104[v108], type metadata accessor for PBDateRange);
    (v134)(&v104[v108], 0, 1, v109);
    v120 = v155;
    v121 = v146;
    v122 = (v146 + *(v155 + 24));
    *v122 = v148;
    v122[1] = v147;
    v122[2] = v152;
    v122[3] = v142;
    v123 = v136;
    sub_251C5582C(v136, v121 + *(v120 + 28), type metadata accessor for PBTypedData);
    return sub_251C55894(v123, type metadata accessor for ClinicalSharingQueryOutput);
  }

  return result;
}

uint64_t sub_251C515D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v3 = type metadata accessor for PBDateRange(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v148 = &v142[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251C56038(0, &qword_27F47C280, MEMORY[0x277CC53B0]);
  MEMORY[0x28223BE20](v6 - 8);
  v169 = &v142[-v7];
  sub_251C56038(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  MEMORY[0x28223BE20](v8 - 8);
  v166 = &v142[-v9];
  v173 = type metadata accessor for PBPlainText(0);
  v10 = MEMORY[0x28223BE20](v173);
  v164 = &v142[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v168 = &v142[-v12];
  v171 = sub_251C70014();
  v174 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v142[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = sub_251C70C94();
  v152 = *(v153 - 8);
  v14 = MEMORY[0x28223BE20](v153);
  v150 = &v142[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v167 = &v142[-v17];
  MEMORY[0x28223BE20](v16);
  v156 = &v142[-v18];
  v151 = type metadata accessor for PBNode(0);
  v19 = MEMORY[0x28223BE20](v151);
  v165 = &v142[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v155 = &v142[-v21];
  v161 = sub_251C70DE4();
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v157 = &v142[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v162 = sub_251C70C64();
  v160 = *(v162 - 1);
  MEMORY[0x28223BE20](v162);
  v158 = &v142[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v183 = type metadata accessor for ClinicalSharingDataNodeInfo(0);
  v24 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v26 = &v142[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = type metadata accessor for PBReference(0);
  v27 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v29 = &v142[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v175 = type metadata accessor for PBRevocationAuthorization(0);
  MEMORY[0x28223BE20](v175);
  v177 = &v142[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v176 = type metadata accessor for PBReferences(0);
  v31 = MEMORY[0x28223BE20](v176);
  v163 = &v142[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v31);
  v172 = &v142[-v34];
  MEMORY[0x28223BE20](v33);
  v179 = &v142[-v35];
  v36 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v37 = sub_251C70764();
  __swift_project_value_buffer(v37, qword_2813E8130);

  v38 = sub_251C70744();
  v39 = sub_251C713C4();
  v40 = os_log_type_enabled(v38, v39);
  v149 = v3;
  if (v40)
  {
    v41 = v4;
    v42 = v36;
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    if (*(v42 + 16))
    {
      nullsub_1();
    }

    else
    {
      v44 = 0;
    }

    *(v43 + 4) = v44;

    _os_log_impl(&dword_251A6C000, v38, v39, "Preparing to upload ClinicalSharingCategoryNode. DataType:  %ld", v43, 0xCu);
    MEMORY[0x25308E2B0](v43, -1, -1);

    v36 = v42;
    v4 = v41;
    v45 = *(v36 + 16);
    if (!v45)
    {
      goto LABEL_24;
    }
  }

  else
  {

    v45 = *(v36 + 16);
    if (!v45)
    {
LABEL_24:
      sub_251AC1148();
      swift_allocError();
      *v89 = 0xD000000000000018;
      *(v89 + 8) = 0x8000000251C92920;
      *(v89 + 16) = 0;
      *(v89 + 24) = 0;
      *(v89 + 32) = 5;
      return swift_willThrow();
    }
  }

  v145 = v4;
  v46 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v146 = v36;
  v47 = v36 + v46;
  v48 = v47 + *(v183 + 20);
  v144 = *(v48 + 32);
  v143 = *(v48 + 40);
  v182 = MEMORY[0x277D84F90];
  sub_251C0BEA4(0, v45, 0);
  v49 = v182;
  v50 = *(v24 + 72);
  do
  {
    sub_251C5582C(v47, v26, type metadata accessor for ClinicalSharingDataNodeInfo);
    sub_251C5582C(&v26[*(v183 + 20)], v29, type metadata accessor for PBReference);
    sub_251C55894(v26, type metadata accessor for ClinicalSharingDataNodeInfo);
    v182 = v49;
    v52 = *(v49 + 16);
    v51 = *(v49 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_251C0BEA4((v51 > 1), v52 + 1, 1);
      v49 = v182;
    }

    *(v49 + 16) = v52 + 1;
    sub_251C557C4(v29, v49 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v52, type metadata accessor for PBReference);
    v47 += v50;
    --v45;
  }

  while (v45);
  v53 = v179;
  sub_251C703A4();
  *v53 = v49;
  v54 = v177;
  v55 = v178;
  sub_251A82B44(3, 1, 0, 0xE000000000000000, v177);
  if (v55)
  {
    v141 = v53;
  }

  else
  {
    sub_251C55D58(&qword_27F479858, type metadata accessor for PBRevocationAuthorization, &unk_251C764E0);
    v56 = sub_251C70594();
    v58 = v57;
    sub_251C55894(v54, type metadata accessor for PBRevocationAuthorization);
    sub_251C55D58(&qword_27F47A020, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v59 = v157;
    v60 = v161;
    sub_251C70C54();
    sub_251A858C4(v56, v58);
    sub_251B1C08C(v56, v58, v59);
    v175 = v56;
    v176 = v58;
    sub_251A83028(v56, v58);
    v61 = v158;
    sub_251C70C44();
    (*(v159 + 8))(v59, v60);
    sub_251C55D58(&qword_27F47CEA0, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
    v62 = v162;
    v63 = sub_251C70DD4();
    v65 = v64;
    (*(v160 + 8))(v61, v62);
    v66 = sub_251C4FFD8(v63, v65);
    v68 = v67;
    if (qword_27F478930 != -1)
    {
      swift_once();
    }

    v69 = qword_27F4A2878;
    v70 = v170;
    sub_251C70004();
    v71 = sub_251C6FF94();
    v72 = *(v174 + 8);
    v174 += 8;
    v177 = v72;
    (v72)(v70, v171);
    v162 = v69;
    v73 = [v69 stringFromDate_];

    v74 = sub_251C70F14();
    v76 = v75;

    sub_251C5582C(v53, v172, type metadata accessor for PBReferences);
    v77 = v164;
    sub_251C703A4();
    v78 = v173[5];
    if (qword_27F478468 != -1)
    {
      swift_once();
    }

    v183 = v66;
    *&v77[v78] = qword_27F4794E0;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = *&v77[v78];
    v178 = v68;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for PBPlainText._StorageClass(0);
      swift_allocObject();
      v80 = sub_251AB6604(v80);
      *&v77[v78] = v80;
    }

    swift_beginAccess();
    *(v80 + 16) = 2;
    *(v80 + 24) = 1;

    v81 = swift_isUniquelyReferenced_nonNull_native();
    v82 = *&v77[v78];
    if ((v81 & 1) == 0)
    {
      type metadata accessor for PBPlainText._StorageClass(0);
      swift_allocObject();
      v82 = sub_251AB6604(v82);
      *&v77[v78] = v82;
    }

    v83 = v163;
    swift_beginAccess();
    *(v82 + 64) = v74;
    *(v82 + 72) = v76;

    v84 = v77;
    v85 = v168;
    sub_251C557C4(v84, v168, type metadata accessor for PBPlainText);
    v86 = v172;
    sub_251C5582C(v172, v83, type metadata accessor for PBReferences);
    v87 = v173[5];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_251C55894(v86, type metadata accessor for PBReferences);
      v88 = *(v85 + v87);
    }

    else
    {
      type metadata accessor for PBPlainText._StorageClass(0);
      swift_allocObject();
      v91 = v86;

      v88 = sub_251AB6604(v92);
      sub_251C55894(v91, type metadata accessor for PBReferences);

      *(v85 + v87) = v88;
    }

    v93 = v166;
    sub_251C557C4(v83, v166, type metadata accessor for PBReferences);
    v94 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
    v95 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
    swift_beginAccess();
    sub_251AB9B14(v93, v88 + v95);
    swift_endAccess();
    v96 = sub_251C70CF4();
    v97 = v169;
    (*(*(v96 - 8) + 56))(v169, 1, 1, v96);
    v98 = v165;
    v99 = v167;
    v100 = sub_251BFC488(v165, v167, v85, 2uLL, 1, v97, v183, v178, 0, 0);
    sub_251A83028(v100, v101);

    sub_251C55938(v97, &qword_27F47C280, MEMORY[0x277CC53B0]);
    sub_251C55894(v85, type metadata accessor for PBPlainText);
    v102 = v155;
    sub_251C557C4(v98, v155, type metadata accessor for PBNode);
    (*(v152 + 32))(v156, v99, v153);
    sub_251C5582C(v102, v154, type metadata accessor for PBNode);
    sub_251C55D58(&qword_27F47B948, type metadata accessor for PBNode, &unk_251C836A0);
    v103 = v146;

    v104 = sub_251C70594();
    v106 = v105;
    v107 = sub_251B1C34C(v104, v105);
    v109 = v108;
    sub_251A83028(v104, v106);
    sub_251C55FC0(0, &qword_27F479978, type metadata accessor for ClinicalSharingCategoryNodeInfo);
    v172 = (v154 + *(v110 + 48));
    v111 = v172;
    (*(v152 + 16))();
    *v111 = v103;
    v173 = type metadata accessor for ClinicalSharingCategoryNodeInfo(0);
    v112 = (v111 + v173[6]);
    *v112 = v107;
    v112[1] = v109;
    v113 = v175;
    v114 = v176;
    v112[2] = v175;
    v112[3] = v114;

    sub_251A858C4(v113, v114);

    sub_251C70C74();
    v168 = v181;
    v169 = v180;
    v167 = v107;
    v115 = v170;
    sub_251C6FF54();
    v116 = sub_251C6FF94();
    v117 = v162;
    v118 = [v162 stringFromDate_];

    v166 = sub_251C70F14();
    v165 = v119;

    v120 = v171;
    v121 = v177;
    (v177)(v115, v171);
    sub_251C6FF64();
    v122 = sub_251C6FF94();
    v123 = [v117 stringFromDate_];

    v164 = sub_251C70F14();
    v163 = v124;

    (v121)(v115, v120);
    v125 = &v172[v173[5]];
    *(v125 + 1) = xmmword_251C745D0;
    v126 = v147;
    v127 = *(v147 + 28);
    v128 = type metadata accessor for PBReference.OneOf_Metadata(0);
    (*(*(v128 - 8) + 56))(&v125[v127], 1, 1, v128);
    sub_251C703A4();
    v129 = *(v126 + 36);
    v177 = *(v145 + 56);
    v130 = v149;
    (v177)(&v125[v129], 1, 1, v149);
    *v125 = v167;
    *(v125 + 1) = v109;
    v131 = *(v125 + 2);
    v132 = *(v125 + 3);
    v134 = v168;
    v133 = v169;
    sub_251A858C4(v169, v168);
    sub_251A83028(v131, v132);
    *(v125 + 2) = v133;
    *(v125 + 3) = v134;
    *(v125 + 4) = v144;
    v125[40] = v143;
    v135 = v148;
    *(v148 + 4) = 0;
    *(v135 + 40) = 1;
    sub_251C703A4();
    sub_251A83028(v133, v134);
    v136 = v165;
    *v135 = v166;
    *(v135 + 8) = v136;
    v137 = v163;
    *(v135 + 16) = v164;
    *(v135 + 24) = v137;
    sub_251C55938(&v125[v129], qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251C557C4(v135, &v125[v129], type metadata accessor for PBDateRange);
    (v177)(&v125[v129], 0, 1, v130);
    v138 = sub_251B19EF8(v146);

    sub_251A83028(v183, v178);
    sub_251A83028(v175, v176);
    v139 = *(v152 + 8);
    v140 = v153;
    v139(v150, v153);
    v139(v156, v140);
    sub_251C55894(v155, type metadata accessor for PBNode);
    *&v172[v173[7]] = v138;
    v141 = v179;
  }

  return sub_251C55894(v141, type metadata accessor for PBReferences);
}

uint64_t sub_251C52C6C@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6[2] = *a1;
  v6[3] = a3;
  result = sub_251C4FB08(sub_251C5525C, v6, a2);
  *a4 = result;
  return result;
}

void sub_251C52CD0(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v325 = a4;
  v319 = a3;
  v348 = a2;
  v321 = type metadata accessor for ClinicalSharingDataNodeInfo(0);
  v333 = *(v321 - 8);
  MEMORY[0x28223BE20](v321);
  v320 = &v289 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for PBLookupInfo(0);
  v6 = MEMORY[0x28223BE20](v291);
  v292 = &v289 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v290 = &v289 - v8;
  sub_251C56038(0, &qword_27F47C280, MEMORY[0x277CC53B0]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v289 - v10;
  sub_251C56038(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  MEMORY[0x28223BE20](v12 - 8);
  v305 = &v289 - v13;
  v304 = type metadata accessor for PBPlainText(0);
  v14 = MEMORY[0x28223BE20](v304);
  v303 = &v289 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (&v289 - v16);
  v294 = sub_251C70C94();
  v18 = *(v294 - 8);
  v19 = MEMORY[0x28223BE20](v294);
  v293 = &v289 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v289 - v21;
  v327 = type metadata accessor for PBNode(0);
  v324 = *(v327 - 8);
  MEMORY[0x28223BE20](v327);
  v309 = &v289 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = sub_251C70DE4();
  v298 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v296 = &v289 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_251C70C64();
  v299 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v297 = &v289 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = type metadata accessor for PBRevocationAuthorization(0);
  MEMORY[0x28223BE20](v311);
  v313 = &v289 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for PBReference(0);
  v336 = *(v27 - 8);
  MEMORY[0x28223BE20](v27 - 8);
  v340 = &v289 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_251C70CF4();
  v30 = *(v29 - 8);
  v314 = v29;
  v315 = v30;
  MEMORY[0x28223BE20](v29);
  v322 = &v289 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = sub_251C70014();
  v339 = *(v341 - 8);
  v32 = MEMORY[0x28223BE20](v341);
  v318 = &v289 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v317 = &v289 - v34;
  v316 = type metadata accessor for PBReferences(0);
  v35 = MEMORY[0x28223BE20](v316);
  v302 = &v289 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v310 = &v289 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v289 - v39;
  v338 = type metadata accessor for ClinicalSharingCategoryNodeInfo(0);
  v323 = *(v338 - 8);
  v41 = MEMORY[0x28223BE20](v338);
  v295 = &v289 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v337 = &v289 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v330 = &v289 - v46;
  MEMORY[0x28223BE20](v45);
  v344 = &v289 - v47;
  v363 = sub_251C70074();
  v332 = *(v363 - 1);
  MEMORY[0x28223BE20](v363);
  v347 = &v289 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v50 = sub_251C70764();
  v51 = __swift_project_value_buffer(v50, qword_2813E8130);

  v350 = v51;
  v52 = sub_251C70744();
  v53 = sub_251C713C4();

  v54 = os_log_type_enabled(v52, v53);
  v307 = v18;
  v308 = v22;
  v328 = v40;
  v306 = v11;
  v312 = v17;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v346 = v55;
    v349 = swift_slowAlloc();
    *&v353 = v349;
    *v55 = 136315138;
    v56 = v332;
    v57 = v347;
    v58 = v363;
    (*(v332 + 16))(v347, v49 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v363);
    sub_251C55D58(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v59 = v53;
    v60 = sub_251C719A4();
    v62 = v61;
    (*(v56 + 8))(v57, v58);
    v63 = sub_251B10780(v60, v62, &v353);

    v64 = v346;
    *(v346 + 1) = v63;
    v65 = v64;
    _os_log_impl(&dword_251A6C000, v52, v59, "Preparing ClinicalSharingRootNodeInfo. Account: %s", v64, 0xCu);
    v66 = v349;
    __swift_destroy_boxed_opaque_existential_1(v349);
    MEMORY[0x25308E2B0](v66, -1, -1);
    MEMORY[0x25308E2B0](v65, -1, -1);
  }

  v67 = sub_251B30EC0();
  v68 = v340;
  v69 = v341;
  if (!v67)
  {

    v89 = sub_251C70744();
    v90 = v49;
    v91 = sub_251C713C4();

    if (os_log_type_enabled(v89, v91))
    {
      v92 = swift_slowAlloc();
      v350 = swift_slowAlloc();
      *&v353 = v350;
      *v92 = 136315138;
      v93 = v332;
      v94 = *(v332 + 16);
      v95 = v49 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
      LODWORD(v349) = v91;
      v96 = v347;
      v97 = v363;
      v94(v347, v95, v363);
      sub_251C55D58(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v98 = sub_251C719A4();
      v100 = v99;
      (*(v93 + 8))(v96, v97);
      v101 = sub_251B10780(v98, v100, &v353);

      *(v92 + 4) = v101;
      _os_log_impl(&dword_251A6C000, v89, v349, "Sync is not required. Account: %s", v92, 0xCu);
      v102 = v350;
      __swift_destroy_boxed_opaque_existential_1(v350);
      MEMORY[0x25308E2B0](v102, -1, -1);
      MEMORY[0x25308E2B0](v92, -1, -1);
    }

    sub_251B050E4(0);
    v104 = *(v103 + 48);
    v105 = v325;
    (*(v324 + 56))(v325, 1, 1, v327);
    *(v105 + v104) = v90;
    goto LABEL_41;
  }

  v350 = v49;
  v335 = *(v348 + 16);
  if (v335)
  {
    v70 = 0;
    v349 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
    v329 = (*(v323 + 80) + 32) & ~*(v323 + 80);
    v334 = v348 + v329;
    v342 = *(v323 + 72);
    v346 = (v332 + 16);
    v331 = MEMORY[0x277D84F90];
    v345 = (v332 + 8);
    while (1)
    {
      v72 = v344;
      sub_251C5582C(v334 + v342 * v70, v344, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v73 = *v72;
      v74 = *(*v72 + 16);
      v343 = v70;
      if (v74)
      {
        v75 = *(v73 + ((*(v333 + 80) + 32) & ~*(v333 + 80)));

        if (!*(v75 + 16))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v75 = MEMORY[0x277D84FA0];
        if (!*(MEMORY[0x277D84FA0] + 16))
        {
          goto LABEL_8;
        }
      }

      sub_251C55D58(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v76 = sub_251C70E84();
      v77 = -1 << *(v75 + 32);
      v78 = v76 & ~v77;
      v348 = v75 + 56;
      if ((*(v75 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78))
      {
        v79 = ~v77;
        v80 = *(v332 + 72);
        v81 = *(v332 + 16);
        while (1)
        {
          v82 = v347;
          v83 = v363;
          v81(v347, *(v75 + 48) + v80 * v78, v363);
          sub_251C55D58(&qword_27F4796A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v84 = sub_251C70ED4();
          (*v345)(v82, v83);
          if (v84)
          {
            break;
          }

          v78 = (v78 + 1) & v79;
          if (((*(v348 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        sub_251C557C4(v344, v330, type metadata accessor for ClinicalSharingCategoryNodeInfo);
        v85 = v331;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v353 = v85;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_251C0BB1C(0, *(v85 + 16) + 1, 1);
          v85 = v353;
        }

        v71 = v339;
        v68 = v340;
        v88 = *(v85 + 16);
        v87 = *(v85 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_251C0BB1C((v87 > 1), v88 + 1, 1);
          v85 = v353;
        }

        *(v85 + 16) = v88 + 1;
        v331 = v85;
        sub_251C557C4(v330, v85 + v329 + v88 * v342, type metadata accessor for ClinicalSharingCategoryNodeInfo);
        goto LABEL_9;
      }

LABEL_8:

      sub_251C55894(v344, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v71 = v339;
      v68 = v340;
LABEL_9:
      v70 = v343 + 1;
      v69 = v341;
      if ((v343 + 1) == v335)
      {
        goto LABEL_28;
      }
    }
  }

  v331 = MEMORY[0x277D84F90];
  v71 = v339;
LABEL_28:
  v106 = v331;
  v107 = *(v331 + 16);
  v108 = MEMORY[0x277D84F90];
  v363 = v107;
  if (v107)
  {
    *&v353 = MEMORY[0x277D84F90];
    sub_251C0BEA4(0, v107, 0);
    v108 = v353;
    v109 = v106 + ((*(v323 + 80) + 32) & ~*(v323 + 80));
    v110 = *(v323 + 72);
    do
    {
      v111 = v337;
      sub_251C5582C(v109, v337, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      sub_251C5582C(v111 + *(v338 + 20), v68, type metadata accessor for PBReference);
      sub_251C55894(v111, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      *&v353 = v108;
      v113 = *(v108 + 16);
      v112 = *(v108 + 24);
      if (v113 >= v112 >> 1)
      {
        sub_251C0BEA4((v112 > 1), v113 + 1, 1);
        v108 = v353;
      }

      *(v108 + 16) = v113 + 1;
      sub_251C557C4(v68, v108 + ((*(v336 + 80) + 32) & ~*(v336 + 80)) + *(v336 + 72) * v113, type metadata accessor for PBReference);
      v109 += v110;
      --v107;
    }

    while (v107);
    v71 = v339;
  }

  v114 = v328;
  sub_251C703A4();
  *v114 = v108;
  if (qword_27F478930 != -1)
  {
    swift_once();
  }

  v115 = qword_27F4A2878;
  v116 = v317;
  sub_251C70004();
  v117 = sub_251C6FF94();
  v118 = *(v71 + 8);
  v118(v116, v69);
  v119 = [v115 stringFromDate_];

  v120 = sub_251C70F14();
  v122 = v121;

  v123 = v318;
  sub_251C70004();
  v124 = v326;
  sub_251AFE074(v123, v322);
  v125 = v124;
  if (v124)
  {
    v118(v123, v69);

    v126 = v350;
LABEL_39:
    v131 = v328;
LABEL_40:
    sub_251B26C14(v125);

    sub_251C55894(v131, type metadata accessor for PBReferences);
    sub_251B050E4(0);
    v133 = *(v132 + 48);
    v134 = v325;
    (*(v324 + 56))(v325, 1, 1, v327);
    *(v134 + v133) = v126;
LABEL_41:

    return;
  }

  v348 = v122;
  v118(v123, v69);
  v127 = v350;
  v129 = v350[5];
  v128 = v350[6];

  v130 = v313;
  sub_251A82B44(3, 1, v129, v128, v313);
  sub_251C55D58(&qword_27F479858, type metadata accessor for PBRevocationAuthorization, &unk_251C764E0);
  v135 = sub_251C70594();
  v137 = v328;
  v342 = v120;
  v138 = v136;
  v139 = v135;
  sub_251C55894(v130, type metadata accessor for PBRevocationAuthorization);
  sub_251C55D58(&qword_27F47A020, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v347 = 0;
  v140 = v296;
  v141 = v300;
  sub_251C70C54();
  sub_251A858C4(v139, v138);
  v142 = v347;
  sub_251B1C08C(v139, v138, v140);
  v349 = v142;
  v343 = v139;
  v344 = v138;
  sub_251A83028(v139, v138);
  v143 = v297;
  sub_251C70C44();
  (*(v298 + 8))(v140, v141);
  sub_251C55D58(&qword_27F47CEA0, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  v144 = v301;
  v145 = sub_251C70DD4();
  v147 = v146;
  (*(v299 + 8))(v143, v144);
  v345 = sub_251C4FFD8(v145, v147);
  v346 = v148;
  sub_251C5582C(v137, v310, type metadata accessor for PBReferences);
  v149 = (v127 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo);
  swift_beginAccess();
  v151 = v149[3];
  v150 = v149[4];
  v152 = __swift_project_boxed_opaque_existential_1(v149, v151);
  v347 = &v289;
  v153 = *(v151 - 8);
  MEMORY[0x28223BE20](v152);
  v155 = &v289 - v154;
  (*(v153 + 16))(&v289 - v154);
  v156 = (*(v150 + 8))(v151, v150);
  v158 = v157;
  (*(v153 + 8))(v155, v151);
  v159 = v303;
  sub_251C703A4();
  v160 = v304;
  v161 = *(v304 + 20);
  if (qword_27F478468 != -1)
  {
    swift_once();
  }

  *(v159 + v161) = qword_27F4794E0;

  v162 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *(v159 + v161);
  v164 = v322;
  if ((v162 & 1) == 0)
  {
    type metadata accessor for PBPlainText._StorageClass(0);
    swift_allocObject();
    v163 = sub_251AB6604(v163);
    *(v159 + v161) = v163;
  }

  swift_beginAccess();
  *(v163 + 16) = 1;
  *(v163 + 24) = 1;

  v165 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *(v159 + v161);
  if ((v165 & 1) == 0)
  {
    type metadata accessor for PBPlainText._StorageClass(0);
    swift_allocObject();
    v166 = sub_251AB6604(v166);
    *(v159 + v161) = v166;
  }

  v167 = v312;
  swift_beginAccess();
  v168 = v348;
  *(v166 + 64) = v342;
  *(v166 + 72) = v168;

  v169 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *(v159 + v161);
  if ((v169 & 1) == 0)
  {
    type metadata accessor for PBPlainText._StorageClass(0);
    swift_allocObject();
    v170 = sub_251AB6604(v170);
    *(v159 + v161) = v170;
  }

  swift_beginAccess();
  *(v170 + 48) = v156;
  *(v170 + 56) = v158;

  sub_251C557C4(v159, v167, type metadata accessor for PBPlainText);
  v171 = v310;
  v172 = v302;
  sub_251C5582C(v310, v302, type metadata accessor for PBReferences);
  v173 = *(v160 + 20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_251C55894(v171, type metadata accessor for PBReferences);
    v174 = *(v167 + v173);
  }

  else
  {
    type metadata accessor for PBPlainText._StorageClass(0);
    swift_allocObject();

    v174 = sub_251AB6604(v175);
    sub_251C55894(v171, type metadata accessor for PBReferences);

    *(v167 + v173) = v174;
  }

  v126 = v350;
  v176 = v345;
  v177 = v305;
  sub_251C557C4(v172, v305, type metadata accessor for PBReferences);
  v178 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v178 - 8) + 56))(v177, 0, 1, v178);
  v179 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  sub_251AB9B14(v177, v174 + v179);
  swift_endAccess();
  v181 = v314;
  v180 = v315;
  v182 = v306;
  (*(v315 + 16))(v306, v164, v314);
  (*(v180 + 56))(v182, 0, 1, v181);
  v183 = v176;
  v184 = v164;
  v185 = v176;
  v186 = v346;
  v187 = v349;
  v188 = sub_251BFC488(v309, v308, v312, 1uLL, 1, v182, v183, v346, v126[5], v126[6]);
  v131 = v328;
  v347 = v187;
  if (v187)
  {
    sub_251A83028(v185, v186);

    sub_251A83028(v343, v344);
    sub_251C55938(v182, &qword_27F47C280, MEMORY[0x277CC53B0]);
    (*(v180 + 8))(v184, v181);
    sub_251C55894(v312, type metadata accessor for PBPlainText);
    goto LABEL_55;
  }

  v335 = v188;
  v336 = v189;
  sub_251C55938(v182, &qword_27F47C280, MEMORY[0x277CC53B0]);
  sub_251C55894(v312, type metadata accessor for PBPlainText);
  sub_251C55D58(&qword_27F47B948, type metadata accessor for PBNode, &unk_251C836A0);
  v190 = v347;
  v191 = sub_251C70594();
  if (v190)
  {
    v347 = v190;
    sub_251A83028(v345, v346);

    v193 = v294;
    sub_251A83028(v343, v344);
    sub_251A83028(v335, v336);
    (*(v307 + 8))(v308, v193);
    sub_251C55894(v309, type metadata accessor for PBNode);
    (*(v315 + 8))(v184, v314);
    v125 = v347;
    goto LABEL_40;
  }

  v194 = v191;
  v195 = v192;
  v196 = sub_251B1C34C(v191, v192);
  v197 = v294;
  v347 = 0;
  v332 = v196;
  v334 = v198;
  sub_251A83028(v194, v195);
  (*(v307 + 16))(v293, v308, v197);
  v199 = *(v126 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8);
  v330 = *(v126 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID);
  v200 = *(v126 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo);
  v201 = *(v126 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
  v202 = *(v126 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 16);
  v203 = *(v126 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 24);
  v204 = v126;
  v205 = *(v126 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 32);
  if (v201)
  {
    v206 = v205;
  }

  else
  {
    v206 = 0;
  }

  v329 = v199;

  sub_251B32888(v200, v201, v202, v203);
  sub_251B220A8(v200, v201, v202, v203);
  if (__OFADD__(v206, 1))
  {
    goto LABEL_109;
  }

  v326 = v206 + 1;
  v207 = v204[6];
  v319 = v204[5];
  v208 = v363;
  v318 = v207;
  if (v363)
  {
    sub_251A858C4(v343, v344);

    sub_251A858C4(v335, v336);
    *&v353 = MEMORY[0x277D84F90];
    sub_251C0B80C(0, v208, 0);
    v209 = v353;
    v210 = v331 + ((*(v323 + 80) + 32) & ~*(v323 + 80));
    v341 = *(v323 + 72);
    do
    {
      v363 = v208;
      v211 = v337;
      sub_251C5582C(v210, v337, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v212 = (v211 + *(v338 + 24));
      v213 = v212[1];
      v349 = *v212;
      v214 = v212[2];
      v215 = v212[3];

      sub_251A858C4(v214, v215);
      sub_251C55894(v211, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      *&v353 = v209;
      v217 = *(v209 + 16);
      v216 = *(v209 + 24);
      if (v217 >= v216 >> 1)
      {
        sub_251C0B80C((v216 > 1), v217 + 1, 1);
        v209 = v353;
      }

      *(v209 + 16) = v217 + 1;
      v218 = (v209 + 32 * v217);
      v218[4] = v349;
      v218[5] = v213;
      v218[6] = v214;
      v218[7] = v215;
      v210 += v341;
      v208 = v363 - 1;
    }

    while (v363 != 1);
    v337 = v209;
  }

  else
  {
    sub_251A858C4(v343, v344);

    sub_251A858C4(v335, v336);
    v337 = MEMORY[0x277D84F90];
  }

  v219 = v331;
  v220 = MEMORY[0x277D84F90];
  v221 = v307;
  v222 = v295;
  v223 = v347;
  v339 = *(v331 + 16);
  if (v339)
  {
    v224 = 0;
    v338 = v331 + ((*(v323 + 80) + 32) & ~*(v323 + 80));
    v225 = MEMORY[0x277D84F90];
    while (v224 < *(v219 + 16))
    {
      v226 = *(v323 + 72);
      v341 = v224;
      sub_251C5582C(v338 + v226 * v224, v222, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v227 = *v222;
      v228 = *(*v222 + 16);
      if (v228)
      {
        v340 = v225;
        *&v353 = v220;
        sub_251C0B80C(0, v228, 0);
        v220 = v353;
        v229 = v227 + ((*(v333 + 80) + 32) & ~*(v333 + 80));
        v349 = *(v333 + 72);
        do
        {
          v230 = v320;
          sub_251C5582C(v229, v320, type metadata accessor for ClinicalSharingDataNodeInfo);
          v231 = v230 + *(v321 + 24);
          v232 = *(v231 + 8);
          v363 = *v231;
          v233 = *(v231 + 16);
          v234 = *(v231 + 24);

          sub_251A858C4(v233, v234);
          sub_251C55894(v230, type metadata accessor for ClinicalSharingDataNodeInfo);
          *&v353 = v220;
          v236 = *(v220 + 16);
          v235 = *(v220 + 24);
          if (v236 >= v235 >> 1)
          {
            sub_251C0B80C((v235 > 1), v236 + 1, 1);
            v220 = v353;
          }

          *(v220 + 16) = v236 + 1;
          v237 = (v220 + 32 * v236);
          v237[4] = v363;
          v237[5] = v232;
          v237[6] = v233;
          v237[7] = v234;
          v229 += v349;
          --v228;
        }

        while (v228);
        v222 = v295;
        sub_251C55894(v295, type metadata accessor for ClinicalSharingCategoryNodeInfo);
        v221 = v307;
        v225 = v340;
      }

      else
      {
        sub_251C55894(v222, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      }

      v238 = *(v220 + 16);
      v239 = *(v225 + 2);
      v240 = v239 + v238;
      if (__OFADD__(v239, v238))
      {
        goto LABEL_105;
      }

      v241 = swift_isUniquelyReferenced_nonNull_native();
      if (!v241 || v240 > *(v225 + 3) >> 1)
      {
        if (v239 <= v240)
        {
          v242 = v239 + v238;
        }

        else
        {
          v242 = v239;
        }

        v225 = sub_251C38FD0(v241, v242, 1, v225);
      }

      v223 = v347;
      if (*(v220 + 16))
      {
        if ((*(v225 + 3) >> 1) - *(v225 + 2) < v238)
        {
          goto LABEL_107;
        }

        swift_arrayInitWithCopy();

        v219 = v331;
        if (v238)
        {
          v243 = *(v225 + 2);
          v244 = __OFADD__(v243, v238);
          v245 = v243 + v238;
          if (v244)
          {
            goto LABEL_108;
          }

          *(v225 + 2) = v245;
        }
      }

      else
      {

        v219 = v331;
        if (v238)
        {
          goto LABEL_106;
        }
      }

      v224 = v341 + 1;
      v220 = MEMORY[0x277D84F90];
      if (v341 + 1 == v339)
      {
        goto LABEL_94;
      }
    }

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
    goto LABEL_111;
  }

  v225 = MEMORY[0x277D84F90];
LABEL_94:
  v340 = v225;

  v246 = v334;

  sub_251C70C74();
  v349 = v223;
  v247 = *(&v353 + 1);
  v363 = v353;
  v249 = v291;
  v248 = v292;
  *(v292 + 1) = xmmword_251C745D0;
  *(v248 + 2) = xmmword_251C745D0;
  v248[13] = 0;
  v248[14] = 0xE000000000000000;
  v250 = v335;
  v251 = v336;
  sub_251A858C4(v335, v336);
  sub_251C703A4();
  v252 = *(v249 + 56);
  v253 = type metadata accessor for PBTestFlowData(0);
  (*(*(v253 - 8) + 56))(v248 + v252, 1, 1, v253);
  *v248 = v332;
  v248[1] = v246;
  sub_251A83028(v248[2], v248[3]);
  v248[2] = v363;
  v248[3] = v247;
  sub_251A83028(v248[4], v248[5]);
  v248[4] = v250;
  v248[5] = v251;
  v254 = [objc_opt_self() currentDeviceName];
  if (v254)
  {
    v255 = v254;
    v256 = sub_251C70F14();
    v258 = v257;
  }

  else
  {
    v258 = 0xEE00656369766544;
    v256 = 0x206E776F6E6B6E55;
  }

  v126 = v350;
  v131 = v328;
  v259 = v329;
  v260 = v290;
  v261 = v330;
  v262 = v292;
  *(v292 + 10) = v256;
  v262[11] = v258;
  v262[8] = v261;
  v262[9] = v259;
  v263 = v348;
  v262[6] = v342;
  v262[7] = v263;
  if (v326 < 0xFFFFFFFF80000000)
  {
    goto LABEL_110;
  }

  v264 = v346;
  if (v326 <= 0x7FFFFFFF)
  {
    v265 = v292;
    *(v292 + 24) = v326;
    v266 = v318;
    *(v265 + 120) = v319;
    *(v265 + 128) = v266;
    sub_251C557C4(v265, v260, type metadata accessor for PBLookupInfo);
    sub_251C55D58(&qword_27F4795D0, type metadata accessor for PBLookupInfo, &unk_251C75910);
    v267 = v349;
    v268 = sub_251C70594();
    v347 = v267;
    if (!v267)
    {
      v276 = v268;
      v277 = v269;
      v278 = sub_251C6FED4();
      v280 = v279;
      sub_251A83028(v276, v277);
      v281 = sub_251B1A850(v331);

      sub_251A83028(v335, v336);
      sub_251C55894(v260, type metadata accessor for PBLookupInfo);
      v282 = v294;
      v363 = *(v221 + 8);
      (v363)(v293, v294);
      *&v353 = v337;
      *(&v353 + 1) = v340;
      v354 = v332;
      v355 = v334;
      v283 = v343;
      v284 = v344;
      v356 = v343;
      v357 = v344;
      v358 = v278;
      v359 = v280;
      v360 = v342;
      v361 = v348;
      v362 = v281;
      v352[0] = v337;
      v352[1] = v340;
      v352[2] = v332;
      v352[3] = v334;
      v352[4] = v343;
      v352[5] = v344;
      v352[6] = v278;
      v352[7] = v280;
      v352[8] = v342;
      v352[9] = v348;
      v352[10] = v281;
      sub_251B29390(&v353, &v351);
      sub_251C55C20(v352);
      v285 = v347;
      sub_251B27054(&v353);
      v125 = v285;
      if (!v285)
      {
        sub_251A83028(v345, v346);
        sub_251C55C20(&v353);
        sub_251A83028(v283, v284);
        sub_251A83028(v335, v336);
        (v363)(v308, v282);
        (*(v315 + 8))(v322, v314);
        sub_251C55894(v328, type metadata accessor for PBReferences);
        sub_251B050E4(0);
        v287 = *(v286 + 48);
        v288 = v325;
        sub_251C557C4(v309, v325, type metadata accessor for PBNode);
        (*(v324 + 56))(v288, 0, 1, v327);
        *(v288 + v287) = v126;
        goto LABEL_41;
      }

      sub_251A83028(v345, v346);
      sub_251C55C20(&v353);
      sub_251A83028(v283, v284);
      sub_251A83028(v335, v336);
      (v363)(v308, v282);
      sub_251C55894(v309, type metadata accessor for PBNode);
      (*(v315 + 8))(v322, v314);
      goto LABEL_39;
    }

    sub_251A83028(v345, v264);

    v271 = v343;
    v270 = v344;
    sub_251A83028(v343, v344);
    v272 = v335;
    v273 = v336;
    sub_251A83028(v335, v336);

    sub_251A83028(v271, v270);
    sub_251A83028(v272, v273);
    sub_251C55894(v260, type metadata accessor for PBLookupInfo);
    v274 = *(v221 + 8);
    v275 = v294;
    v274(v293, v294);
    v274(v308, v275);
    sub_251C55894(v309, type metadata accessor for PBNode);
    (*(v315 + 8))(v322, v314);

LABEL_55:
    v125 = v347;
    goto LABEL_40;
  }

LABEL_111:
  __break(1u);
}

char *sub_251C5527C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_251A83028(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_251A83028(v7, v6);
    *v4 = xmmword_251C745D0;
    sub_251A83028(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_251C6FB74() && __OFSUB__(v7, sub_251C6FBA4()))
      {
LABEL_26:
        __break(1u);
      }

      sub_251C6FBB4();
      swift_allocObject();
      v14 = sub_251C6FB54();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_251C55614(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_251A83028(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_251C745D0;
    sub_251A83028(0, 0xC000000000000000);
    sub_251C6FE74();
    result = sub_251C55614(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

char *sub_251C55614(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_251C6FB74();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_251C6FBA4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_251C6FB94();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

_BYTE *sub_251C556C8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_251C55994(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_251C55A4C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_251C55AC8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_251C5575C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251C557C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C5582C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C55894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_251C558F4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_251C55E8C(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_251C55938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C56038(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251C55994(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_251C55A4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_251C6FBB4();
  swift_allocObject();
  result = sub_251C6FB64();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_251C6FE94();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_251C55AC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_251C6FBB4();
  swift_allocObject();
  result = sub_251C6FB64();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_251C55B4C(uint64_t a1)
{
  sub_251C55C74();
  v3 = v2;
  v10[3] = v2;
  v10[4] = sub_251C55D58(&qword_27F47CEB0, sub_251C55C74, MEMORY[0x277CC9C28]);
  v10[0] = a1;
  v4 = __swift_project_boxed_opaque_existential_1(v10, v3);
  v5 = (*v4 + 32);
  v6 = *(*v4 + 16);

  sub_251C556C8(v5, &v5[v6], &v9);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

void sub_251C55C74()
{
  if (!qword_27F47CEA8)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CEA8);
    }
  }
}

void sub_251C55CC4(uint64_t a1)
{
  if (!qword_27F47CEB8)
  {
    sub_251C55C74();
    sub_251C55D58(&qword_27F47CEC0, sub_251C55C74, MEMORY[0x277D83988]);
    v1 = sub_251C717D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CEB8);
    }
  }
}

uint64_t sub_251C55D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251C55DA0()
{
  result = qword_27F47CEC8;
  if (!qword_27F47CEC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F47CEC8);
  }

  return result;
}

void *sub_251C55E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v12[0] = v7;
  v12[1] = v6;
  v11[2] = v12;
  result = sub_251C5575C(sub_251C55E6C, v11, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  return result;
}

_OWORD *sub_251C55E8C(_OWORD *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = *(a3 + 16);
    if (v4 >= a4)
    {
      v5 = v4 - a4;
    }

    else
    {
      v5 = 0;
    }

    if (v4 != a4)
    {
      v6 = a4 ^ 0x7FFFFFFFFFFFFFFFLL;
      v7 = a2 - 1;
      v8 = v4 + ~a4;
      if (v8 >= v5)
      {
        v8 = v5;
      }

      if (v8 >= v6)
      {
        v8 = a4 ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v7 >= v8)
      {
        v7 = v8;
      }

      if (v7 > 0xF && result + -a4 - a3 - 32 >= 0x10)
      {
        v12 = v7 + 1;
        v13 = result;
        v14 = v12 & 0xF;
        if ((v12 & 0xF) == 0)
        {
          v14 = 16;
        }

        v9 = v12 - v14;
        v10 = v9 + 1;
        result = (result + v9);
        v11 = v9 + a4;
        v15 = (a3 + 32 + a4);
        v16 = v9;
        do
        {
          v17 = *v15++;
          *v13++ = v17;
          v16 -= 16;
        }

        while (v16);
      }

      else
      {
        v9 = 0;
        v10 = 1;
        v11 = a4;
      }

      v18 = 0;
      v19 = v10 + a4 + ~v4;
      while (v9 != v5)
      {
        if (v9 == v6)
        {
          goto LABEL_29;
        }

        v20 = v18;
        *(result + v18) = *(v11 + a3 + 32 + v18);
        if (v10 - a2 + v18)
        {
          v9 = v10 + v18++;
          if (v19 + v20 + 1)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    return a3;
  }

LABEL_30:
  __break(1u);
  return result;
}

void sub_251C55FC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for PBNode(255);
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_251C56038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_251C560A4(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v28 = a1;
  v31 = sub_251C701E4();
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_251C70E34();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251C70014();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_251C6FAB4();
  v27 = *(v8 + 16);
  v27(v11, v13, v7);
  v23 = v2;
  v26 = *(v2 + 16);
  v26(v4, v30, v31);
  sub_251C70DF4();
  v14 = sub_251C70E14();
  v15 = *(v32 + 8);
  v32 += 8;
  v24 = v15;
  v25 = v14;
  v15(v6, v29);
  v16 = *(v8 + 8);
  v16(v13, v7);
  sub_251C6FA84();
  v27(v11, v13, v7);
  v17 = v30;
  v26(v4, v30, v31);
  sub_251C70DF4();
  v18 = sub_251C70E14();
  v19 = v25;
  v20 = v18;
  v24(v6, v29);
  result = (v16)(v13, v7);
  if (v20 < v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (__OFSUB__(v20, v19))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!__OFADD__(v20 - v19, 1))
  {
    (*(v23 + 8))(v17, v31);
    v22 = sub_251C6FAE4();
    (*(*(v22 - 8) + 8))(v28, v22);
    return v19;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_251C56428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_251AF4E18(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B346F4(a3, v11);
  v12 = sub_251C71214();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_251B34758(v11);
  }

  else
  {
    sub_251C71204();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_251C711C4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_251C70F84() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_251B34758(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_251B34758(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_251C56700()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_251C56794;

  return sub_251AF3DDC();
}

uint64_t sub_251C56794()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_251C56888()
{

  return swift_deallocClassInstance();
}

uint64_t sub_251C568E4()
{
  sub_251AF4E18(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = sub_251C71214();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_251C56428(0, 0, v3, &unk_251C89470, v6);
}

uint64_t sub_251C569F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_251AF4F78;

  return sub_251C566E0(a1, v4, v5, v6);
}

uint64_t sub_251C56AA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_251B14FE8;

  return sub_251B3432C(a1, v4);
}

uint64_t sub_251C56B60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_251AF4F78;

  return sub_251B3432C(a1, v4);
}

uint64_t sub_251C56C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ClinicalSharingSyncTask(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_251C5BBA0(a1, &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ClinicalSharingSyncTask);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  sub_251C5BD98(&v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for ClinicalSharingSyncTask);
  v13 = (v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  v21 = *(v4 + 16);
  v22 = 0;
  v17 = sub_251C5BE64;
  v18 = v12;
  v19 = v4;
  v20 = &v22;
  sub_251C5B938(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();

  sub_251C702C4();
  if (v22)
  {

    sub_251C57358(v14);
  }
}

uint64_t sub_251C56E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251C5C4C8(0, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  sub_251C5BBA0(a2, &v19 - v11, type metadata accessor for ClinicalSharingSyncTask);
  v13 = &v12[*(v9 + 44)];
  *v13 = a3;
  *(v13 + 1) = a4;
  swift_beginAccess();
  v14 = *(a1 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_251C39580(0, v14[2] + 1, 1, v14);
    *(a1 + 24) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_251C39580((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  sub_251C5C448(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17);
  *(a1 + 24) = v14;
  return swift_endAccess();
}

uint64_t sub_251C56FD4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_251C5C0EC(0, &qword_2813E33C8, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper, sub_251C5C4C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  sub_251C5C4C8(0, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v26 - v18;
  if (a1)
  {

    a1(v20);
    result = sub_251A7EA4C(a1, a2);
  }

  if (!*(a3 + 32))
  {
    swift_beginAccess();
    v21 = *(a3 + 24);
    if (*(v21 + 16))
    {
      sub_251C5C148(v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v10);
      sub_251C5C32C(0, 1);
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    (*(v13 + 56))(v10, v22, 1, v12);
    swift_endAccess();
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      return sub_251C5C3EC(v10, &qword_2813E33C8, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper, sub_251C5C4C8);
    }

    else
    {
      sub_251C5C448(v10, v19);
      sub_251C5C448(v19, v16);
      sub_251C5C4C8(0, qword_2813E3458, type metadata accessor for SingleValuePublisherTaskQueue.ActiveTaskWrapper);
      v23 = swift_allocObject();
      v24 = (v23 + *(*v23 + 104));
      *v24 = 0;
      v24[1] = 0;
      v25 = v23 + *(*v23 + 112);
      *v25 = 0u;
      *(v25 + 16) = 0u;
      *(v25 + 32) = 0;
      sub_251C5BD98(v16, v23 + *(*v23 + 96), type metadata accessor for ClinicalSharingSyncTask);
      *(v23 + *(*v23 + 104)) = *&v16[*(v12 + 36)];
      *a4 = v23;

      *(a3 + 32) = v23;
    }
  }

  return result;
}

uint64_t sub_251C57358(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ClinicalSharingSyncTask(0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5BF04(0);
  v8 = *(v7 - 8);
  v23 = v7;
  v24 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = *(*a1 + 96);
  v28 = sub_251ADCA48();
  sub_251AE7918(0, &qword_2813E20E0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
  sub_251AE4104();
  sub_251C70B14();

  sub_251C5BBA0(a1 + v12, v6, type metadata accessor for ClinicalSharingSyncTask);
  v13 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_251C5BD98(v6, v16 + v13, type metadata accessor for ClinicalSharingSyncTask);
  *(v16 + v14) = v11;
  *(v16 + v15) = v2;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_251C5BB58(&qword_2813E24D0, sub_251C5BF04, MEMORY[0x277CBCC58]);
  swift_retain_n();

  v17 = v23;
  v18 = sub_251C70AF4();

  (*(v24 + 8))(v10, v17);
  v19 = *(v2 + 16);
  v27 = v18;
  v28 = v19;
  v25 = a1;
  v26 = v2;
  sub_251C5B938(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();
  sub_251C702C4();
}

void sub_251C576F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7 = a1;
    sub_251C57870(a5, a1, 1);
  }

  else
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      v9 = *(a3 + 16);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    sub_251C57870(a5, v9, 0);
  }
}

uint64_t sub_251C577B0(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = v6 == result;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v10[9] = v3;
    v10[10] = v4;
    v10[3] = v5;
    v10[4] = MEMORY[0x277CBCDA0];
    v10[0] = a3;
    v8 = *(*result + 112);
    v9 = result;
    swift_beginAccess();

    sub_251C5BAC8(v10, v9 + v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_251C57870(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a2;
  v6 = a3 & 1;
  sub_251C5B938(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();
  v3 = sub_251C702C4();
  MEMORY[0x28223BE20](v3);
  sub_251C702C4();
  return sub_251A7EA4C(0, 0);
}

uint64_t sub_251C579FC(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = v4 == result;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = sub_251C57A70();
    v9 = *a3;
    v10 = a3[1];
    *a3 = v8;
    a3[1] = v11;
    sub_251A7EA4C(v9, v10);
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_251C57A70()
{
  v1 = (v0 + *(*v0 + 104));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(*v0 + 112);
  swift_beginAccess();
  sub_251C5C05C(v0 + v4, &v9);
  if (*(&v10 + 1))
  {
    sub_251A823B4(&v9, v8);
    sub_251A7E910(v2, v3);
    sub_251C5C3EC(&v9, &qword_2813E2220, &qword_2813E2228, MEMORY[0x277CBCD78], sub_251AA98B0);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_251C70924();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_251A7E910(v2, v3);
    sub_251C5C3EC(&v9, &qword_2813E2220, &qword_2813E2228, MEMORY[0x277CBCD78], sub_251AA98B0);
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  swift_beginAccess();
  sub_251C5BAC8(&v9, v0 + v4);
  swift_endAccess();
  v5 = *v1;
  v6 = v1[1];
  *v1 = 0;
  v1[1] = 0;
  sub_251A7EA4C(v5, v6);
  return v2;
}

void sub_251C57C0C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_251A8223C(0, &qword_2813E1D38, 0x277D12438);
    v5 = sub_251C71144();
  }

  if (a2)
  {
    v6 = sub_251C6FD74();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_251C57CB8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  sub_251C5B938(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v11 = Strong;
  v12 = sub_251C70014();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);

  sub_251C5D138(0, a1, v9, v11, a2, a3);

  return sub_251C5BC74(v9, &qword_2813E7500, MEMORY[0x277CC9578]);
}

void sub_251C57E34(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);

  oslog = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_251B10780(*(a2 + 72), *(a2 + 80), &v10);
    *(v6 + 12) = 2048;
    if (v3 >> 62)
    {
      v8 = sub_251C717F4();
    }

    else
    {
      v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 14) = v8;

    _os_log_impl(&dword_251A6C000, oslog, v5, "%s: Paused %ld accounts successfully", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_251C57FFC()
{
  sub_251AA8D3C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5C530(0);
  v7 = *(v6 - 8);
  v18 = v6;
  v19 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40))[2];
  v22[3] = &type metadata for ClinicalSharingAccountStore;
  v22[4] = &off_2863F67B8;
  v22[0] = v10;
  v21 = *__swift_project_boxed_opaque_existential_1(v22, &type metadata for ClinicalSharingAccountStore);
  v11 = off_2863F67E8[0];
  v12 = v10;
  v20 = v11();
  sub_251AE7918(0, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  sub_251AA8E98(0, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  sub_251AE79A4();
  sub_251C70AE4();

  sub_251C5BB58(&qword_2813E25B0, sub_251AA8D3C, MEMORY[0x277CBCC08]);
  v13 = sub_251C70A94();
  (*(v3 + 8))(v5, v2);
  v21 = v13;

  sub_251C70964();
  sub_251C70B94();

  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_251C5BB58(&qword_27F47CF10, sub_251C5C530, MEMORY[0x277CBCCE0]);
  v14 = v18;
  v15 = sub_251C70A94();
  (*(v19 + 8))(v9, v14);
  return v15;
}

uint64_t sub_251C58354@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_251AC5AFC(0);
  v7 = v6;
  v38 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5C638(0);
  v44 = v9;
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v39 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5C6EC(0);
  v46 = v11;
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5C868(0);
  v47 = v13;
  v45 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v41 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v48 = MEMORY[0x277D84F90];
  if (v15 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v34 = v7;
    v35 = a2;
    v36 = a3;
    v17 = 0;
    a3 = (v15 & 0xC000000000000001);
    a2 = v15 & 0xFFFFFFFFFFFFFF8;
    v7 = &off_2796E0000;
    while (1)
    {
      if (a3)
      {
        v18 = MEMORY[0x25308D460](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = [v18 clinicalSharingStatus];
      v22 = [v21 multiDeviceStatus];

      if (v22 == 1)
      {
        sub_251C71734();
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
      }

      else
      {
      }

      ++v17;
      if (v20 == i)
      {
        v23 = v48;
        a3 = v36;
        v7 = v34;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_18:
  v48 = v23;
  sub_251AA8E98(0, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  sub_251C5C5C8();
  v24 = v37;
  sub_251C710D4();

  sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
  v25 = v39;
  sub_251C708E4();
  (*(v38 + 8))(v24, v7);

  sub_251C70964();
  sub_251A8223C(0, &qword_2813E1D98, 0x277D123D8);
  sub_251C5C7D8(0);
  sub_251C5BB58(&qword_27F47CF38, sub_251C5C638, MEMORY[0x277CBCD18]);
  sub_251C5BB58(&qword_27F47CF30, sub_251C5C7D8, MEMORY[0x277CBCD90]);
  v26 = v40;
  v27 = v44;
  sub_251C70B94();

  (*(v42 + 8))(v25, v27);
  sub_251C5BB58(&qword_27F47CF48, sub_251C5C6EC, MEMORY[0x277CBCCE0]);
  v28 = v41;
  v29 = v46;
  sub_251C70B64();
  (*(v43 + 8))(v26, v29);
  sub_251C5BB58(&qword_27F47CF50, sub_251C5C868, MEMORY[0x277CBCCD0]);
  v30 = v47;
  v31 = sub_251C70A94();
  result = (*(v45 + 8))(v28, v30);
  *a3 = v31;
  return result;
}

uint64_t sub_251C58938@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_251C5C904(0);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251C70074();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = sub_251C712A4();
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v14 = sub_251C70764();
  __swift_project_value_buffer(v14, qword_2813E8130);

  v15 = v12;
  v16 = sub_251C70744();
  v17 = sub_251C713F4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = v13;
    v19 = v18;
    v20 = swift_slowAlloc();
    v46 = a3;
    v44 = v20;
    v51[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_251B10780(a2[9], a2[10], v51);
    *(v19 + 12) = 2080;
    v21 = [v15 identifier];
    sub_251C70054();

    sub_251C5BB58(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_251C719A4();
    v23 = v9;
    v24 = v8;
    v26 = v25;
    (*(v23 + 8))(v11, v24);
    v27 = sub_251B10780(v22, v26, v51);
    v8 = v24;
    v9 = v23;

    *(v19 + 14) = v27;
    _os_log_impl(&dword_251A6C000, v16, v17, "%s: Pausing sync for %s", v19, 0x16u);
    v28 = v44;
    swift_arrayDestroy();
    a3 = v46;
    MEMORY[0x25308E2B0](v28, -1, -1);
    v29 = v19;
    v13 = v45;
    MEMORY[0x25308E2B0](v29, -1, -1);

    v30 = &off_2796E0000;
  }

  else
  {

    v30 = &off_2796E0000;
  }

  v31 = __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5])[2];
  v51[3] = &type metadata for ClinicalSharingAccountStore;
  v51[4] = &off_2863F67B8;
  v51[0] = v31;
  v32 = __swift_project_boxed_opaque_existential_1(v51, &type metadata for ClinicalSharingAccountStore);
  v33 = v31;
  v34 = [v15 v30[448]];
  sub_251C70054();

  v35 = *v32;
  v36 = v13;
  v37 = sub_251AC4148(v11, v13, 0, 0, v35);

  (*(v9 + 8))(v11, v8);
  v50 = v37;
  *(swift_allocObject() + 16) = v15;
  v38 = MEMORY[0x277D839B0];
  sub_251AE5AC0(0, &qword_2813E20D0, MEMORY[0x277D839B0]);
  sub_251A8223C(0, &qword_2813E1D98, 0x277D123D8);
  sub_251AE5F64(&qword_2813E20D8, &qword_2813E20D0, v38);
  v39 = v15;
  v40 = v47;
  sub_251C70AE4();

  __swift_destroy_boxed_opaque_existential_1(v51);
  sub_251C5BB58(&qword_27F47CF60, sub_251C5C904, MEMORY[0x277CBCC08]);
  v41 = v49;
  v42 = sub_251C70A94();

  result = (*(v48 + 8))(v40, v41);
  *a3 = v42;
  return result;
}

uint64_t sub_251C58E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v132 = a5;
  v131 = a4;
  v146 = a2;
  v7 = MEMORY[0x277D83D88];
  sub_251C5B938(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v134 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v137 = &v120 - v11;
  v141 = sub_251C6FE64();
  v138 = *(v141 - 8);
  v12 = MEMORY[0x28223BE20](v141);
  v130 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v133 = &v120 - v14;
  v140 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  v15 = MEMORY[0x28223BE20](v140);
  v139 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v129 = &v120 - v17;
  v18 = type metadata accessor for ClinicalSharingSyncTask(0);
  v19 = MEMORY[0x28223BE20](v18);
  v136 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v120 - v21;
  sub_251C5B938(0, &qword_2813E7500, MEMORY[0x277CC9578], v7);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v120 - v24;
  v26 = sub_251C70014();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AC553C(a3, v25);
  v30 = *(v27 + 48);
  if (v30(v25, 1, v26) == 1)
  {
    sub_251C70004();
    v31 = v30(v25, 1, v26);
    v32 = v27;
    if (v31 != 1)
    {
      sub_251C5BC74(v25, &qword_2813E7500, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v27 + 32))(v29, v25, v26);
    v32 = v27;
  }

  v147 = v29;
  v148 = swift_allocBox();
  v135 = v33;
  v34 = v149[8];
  sub_251A823B4((v149 + 2), v153);
  v35 = &v22[v18[15]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = v146;
  *v22 = a1;
  *(v22 + 1) = v36;
  v37 = *(v32 + 16);
  v143 = v18[6];
  v37(&v22[v143], v29, v26);
  v142 = v18[7];
  sub_251A823B4(v153, &v22[v142]);
  v38 = v18[8];
  v146 = v34;

  sub_251C70064();
  *&v151[0] = v18;
  sub_251AE1BDC();
  *&v151[0] = sub_251C70F74();
  *(&v151[0] + 1) = v39;
  MEMORY[0x25308CDA0](45, 0xE100000000000000);
  v144 = v38;
  v40 = sub_251C70024();
  v42 = sub_251AE3EAC(8, v40, v41);
  v44 = v43;
  v45 = v18;
  v46 = v32;
  v48 = v47;
  v50 = v49;

  v51 = MEMORY[0x25308CD40](v42, v44, v48, v50);
  v53 = v52;

  MEMORY[0x25308CDA0](v51, v53);

  MEMORY[0x25308CDA0](58, 0xE100000000000000);
  v54 = *(&v151[0] + 1);
  v55 = &v22[v45[9]];
  *v55 = *&v151[0];
  *(v55 + 1) = v54;
  v56 = v145;
  sub_251BBB9A4(0xD000000000000018, 0x8000000251C92A20, v151);
  v57 = v56;
  if (v56)
  {
    v58 = *(v46 + 8);
    v58(v147, v26);

    v59 = v45;
LABEL_30:
    __swift_destroy_boxed_opaque_existential_1(v153);
    v58(&v22[v143], v26);
    __swift_destroy_boxed_opaque_existential_1(&v22[v142]);
    v85 = sub_251C70074();
    (*(*(v85 - 8) + 8))(&v22[v144], v85);

    if (!v57)
    {
      sub_251C5BD44(&v22[v59[11]]);
    }

    return swift_deallocBox();
  }

  v124 = v54;
  v127 = v46;
  v60 = &v22[v45[11]];
  v61 = v151[3];
  *(v60 + 2) = v151[2];
  *(v60 + 3) = v61;
  *(v60 + 4) = v151[4];
  *(v60 + 10) = v152;
  v62 = v151[1];
  *v60 = v151[0];
  *(v60 + 1) = v62;
  v63 = HKHealthRecordsCurrentEnvironment();
  v64 = "com.apple.healthrecordsd";
  v59 = v45;
  if (v63 > 0xD)
  {
    v145 = 0xD000000000000023;
  }

  else
  {
    if (((1 << v63) & 0x820) != 0)
    {
      v65 = 0xD000000000000022;
    }

    else
    {
      v65 = 0xD000000000000023;
    }

    if (((1 << v63) & 0x820) != 0)
    {
      v64 = "taging.health.apple.com";
    }

    if (((1 << v63) & 3) != 0)
    {
      v66 = 0xD00000000000001FLL;
    }

    else
    {
      v66 = v65;
    }

    if (((1 << v63) & 3) != 0)
    {
      v64 = "ev.health.apple.com";
    }

    if (((1 << v63) & 0x2184) != 0)
    {
      v67 = 0xD000000000000027;
    }

    else
    {
      v67 = v66;
    }

    v145 = v67;
    if (((1 << v63) & 0x2184) != 0)
    {
      v64 = "https://chrswp.health.apple.com";
    }
  }

  v126 = v26;
  v128 = 0;
  v68 = v64 | 0x8000000000000000;
  v123 = sub_251A8223C(0, &qword_2813E1D40, 0x277CCAD38);
  v69 = sub_251B37FB0();
  v70 = HKSecPolicyNameAppleHealthProviderService();
  if (!v70)
  {
    sub_251C70F14();
    v70 = sub_251C70EE4();
  }

  [v69 set:v70 tlsTrustPinningPolicyName:?];

  v122 = objc_opt_self();
  v125 = [v122 sessionWithConfiguration_];

  v71 = v140;
  v72 = v139;
  v73 = &v139[*(v140 + 32)];
  *v73 = 1414745936;
  *(v73 + 1) = 0xE400000000000000;
  v74 = &v72[*(v71 + 36)];
  *v74 = 0xD000000000000016;
  *(v74 + 1) = 0x8000000251C90B20;
  v75 = v145;
  *&v151[0] = v145;
  *(&v151[0] + 1) = v68;

  MEMORY[0x25308CDA0](0x75702F626F6C622FLL, 0xEA00000000006873);
  v76 = v137;
  sub_251C6FE54();
  v77 = v76;

  v78 = v138;
  v79 = *(v138 + 48);
  v80 = v76;
  v81 = v141;
  if (v79(v80, 1, v141) == 1)
  {
    v57 = v128;
LABEL_29:
    sub_251C5BC74(v77, &qword_2813E7520, MEMORY[0x277CC9260]);
    sub_251AC1148();
    swift_allocError();
    *v84 = v145;
    *(v84 + 8) = v68;
    *(v84 + 16) = 0;
    *(v84 + 24) = 0;
    *(v84 + 32) = 0;
    swift_willThrow();

    v58 = *(v127 + 8);
    v26 = v126;
    v58(v147, v126);

    goto LABEL_30;
  }

  v121 = v59;
  v82 = v133;
  v137 = *(v78 + 32);
  (v137)(v133, v77, v81);
  *&v151[0] = v75;
  *(&v151[0] + 1) = v68;

  MEMORY[0x25308CDA0](0x65642F626F6C622FLL, 0xEC0000006574656CLL);
  v77 = v134;
  sub_251C6FE54();
  v83 = v141;

  if (v79(v77, 1, v83) == 1)
  {
    (*(v78 + 8))(v82, v83);
    v57 = v128;
    v59 = v121;
    goto LABEL_29;
  }

  v87 = v130;
  v88 = v137;
  (v137)(v130, v77, v83);
  v89 = v139;
  v88(v139, v82, v83);
  v90 = v140;
  v88((v89 + *(v140 + 20)), v87, v83);
  *(v89 + *(v90 + 24)) = v125;
  *(v89 + *(v90 + 28)) = 3;
  v91 = v129;
  sub_251C5BD98(v89, v129, type metadata accessor for ClinicalSharingCloudStandardAPI);
  v92 = v121;
  sub_251C5BD98(v91, &v22[v121[12]], type metadata accessor for ClinicalSharingCloudStandardAPI);
  v93 = sub_251B37FB0();
  v94 = [objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate()) init];
  v95 = [v122 sessionWithConfiguration:v93 delegate:v94 delegateQueue:0];

  *&v22[v92[13]] = v95;
  v96 = *__swift_project_boxed_opaque_existential_1(v153, v153[3]);
  v97 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v98 = v96;
  v99 = sub_251C70EE4();
  v100 = [v97 initWithCategory:3 domainName:v99 healthStore:v98];

  (*(v127 + 8))(v147, v126);
  *&v22[v92[10]] = v100;
  *&v22[v92[14]] = v146;
  v101 = v135;
  sub_251C5BBA0(v22, v135, type metadata accessor for ClinicalSharingSyncTask);
  __swift_destroy_boxed_opaque_existential_1(v153);
  sub_251C5BC14(v22, type metadata accessor for ClinicalSharingSyncTask);
  v102 = (v101 + v92[15]);
  v104 = *v102;
  v103 = v102[1];
  v105 = v149;
  *v102 = sub_251C5BE00;
  v102[1] = v105;

  sub_251A7EA4C(v104, v103);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v106 = sub_251C70764();
  __swift_project_value_buffer(v106, qword_2813E8130);
  swift_retain_n();
  v107 = v148;

  v108 = sub_251C70744();
  v109 = sub_251C713F4();

  v110 = os_log_type_enabled(v108, v109);
  v111 = v136;
  if (v110)
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *&v151[0] = v113;
    *v112 = 136315650;
    *(v112 + 4) = sub_251B10780(v105[9], v105[10], v151);
    *(v112 + 12) = 2080;
    swift_beginAccess();
    sub_251C5BBA0(v135, v111, type metadata accessor for ClinicalSharingSyncTask);
    v114 = sub_251AE18FC();
    v116 = v115;
    sub_251C5BC14(v136, type metadata accessor for ClinicalSharingSyncTask);
    v117 = sub_251B10780(v114, v116, v151);

    *(v112 + 14) = v117;
    *(v112 + 22) = 2048;
    v150 = *(v105[12] + 16);
    sub_251C5B938(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
    sub_251B3F1EC();
    v101 = v135;
    v111 = v136;
    sub_251C702B4();

    *(v112 + 24) = v153[7];

    _os_log_impl(&dword_251A6C000, v108, v109, "%s: Enqueuing sync task %s (%ld tasks already enqueued)", v112, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v113, -1, -1);
    MEMORY[0x25308E2B0](v112, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  sub_251C5BBA0(v101, v111, type metadata accessor for ClinicalSharingSyncTask);
  v118 = swift_allocObject();
  v118[2] = v105;
  v118[3] = v107;
  v119 = v132;
  v118[4] = v131;
  v118[5] = v119;

  sub_251C56C18(v111, sub_251C5BE08, v118);

  sub_251C5BC14(v111, type metadata accessor for ClinicalSharingSyncTask);
}

void sub_251C59ED0(unint64_t a1, uint64_t a2)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v32 - v9;
  v11 = sub_251C70014();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C70004();
  v33 = v14;
  if (a1 >> 62)
  {
    v15 = sub_251C717F4();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  v34 = v12;
  if (!v15)
  {
LABEL_16:
    sub_251BFAE40(v16);

    v26 = objc_allocWithZone(MEMORY[0x277D12430]);
    v27 = v33;
    v28 = sub_251C6FF94();
    sub_251C5BB58(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v29 = sub_251C71274();

    v30 = [v26 initWithStartDate:v28 accountIdentifiers:v29];

    (*(v34 + 8))(v27, v11);
    v35 = v30;
    v36 = 0;
    v31 = v30;
    sub_251C709B4();

    return;
  }

  v35 = MEMORY[0x277D84F90];
  sub_251C0B5E4(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v32[0] = v11;
    v32[1] = a2;
    v16 = v35;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        MEMORY[0x25308D460](i, a1);
        v18 = [swift_unknownObjectRetain() identifier];
        sub_251C70054();
        swift_unknownObjectRelease_n();

        v35 = v16;
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_251C0B5E4((v19 > 1), v20 + 1, 1);
          v16 = v35;
        }

        *(v16 + 16) = v20 + 1;
        (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v10, v4);
      }
    }

    else
    {
      v21 = (a1 + 32);
      do
      {
        v22 = *v21;
        v23 = [v22 identifier];
        sub_251C70054();

        v35 = v16;
        v25 = *(v16 + 16);
        v24 = *(v16 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_251C0B5E4((v24 > 1), v25 + 1, 1);
          v16 = v35;
        }

        *(v16 + 16) = v25 + 1;
        (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, v8, v4);
        ++v21;
        --v15;
      }

      while (v15);
    }

    v11 = v32[0];
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_251C5A30C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *), uint64_t a5)
{
  v8 = type metadata accessor for ClinicalSharingSyncTask(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v12 = swift_projectBox();
  swift_beginAccess();
  sub_251C5BBA0(v12, v10, type metadata accessor for ClinicalSharingSyncTask);
  sub_251C5A410(v10, v11, a1, a4, a5);
  return sub_251C5BC14(v10, type metadata accessor for ClinicalSharingSyncTask);
}

uint64_t sub_251C5A410(uint64_t a1, void *a2, char a3, uint64_t (*a4)(void, void *), uint64_t a5)
{
  v48 = a5;
  v10 = type metadata accessor for ClinicalSharingSyncTask(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = v5[7];
  sub_251BC8A04();
  v17 = 0;
  if (a3)
  {
    v46 = v13;
    v47 = v16;
    v50 = a2;
    v18 = a2;
    sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
    v19 = sub_251C719C4();
    if (v19)
    {
      v17 = v19;
      v20 = a2;
      sub_251B19EEC(a2, 1);
    }

    else
    {
      v17 = swift_allocError();
      v20 = a2;
      *v21 = a2;
    }

    a2 = v20;
    v13 = v46;
  }

  v50 = v17;
  v51 = 1;
  sub_251C709B4();

  v50 = 0;
  v51 = 2;
  sub_251C709B4();
  if (a3)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v22 = sub_251C70764();
    __swift_project_value_buffer(v22, qword_2813E8130);
    v47 = a1;
    sub_251C5BBA0(a1, v13, type metadata accessor for ClinicalSharingSyncTask);
    sub_251C5BC08(a2, 1);

    v23 = sub_251C70744();
    v24 = sub_251C713D4();

    sub_251B19EEC(a2, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v50 = v26;
      *v25 = 136315650;
      *(v25 + 4) = sub_251B10780(v5[9], v5[10], &v50);
      *(v25 + 12) = 2080;
      v27 = sub_251AE18FC();
      v29 = v28;
      sub_251C5BC14(v13, type metadata accessor for ClinicalSharingSyncTask);
      v30 = sub_251B10780(v27, v29, &v50);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2080;
      v49 = a2;
      v31 = a2;
      sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
      v32 = sub_251C70F74();
      v34 = sub_251B10780(v32, v33, &v50);

      *(v25 + 24) = v34;
      _os_log_impl(&dword_251A6C000, v23, v24, "%s: Sync task %s failed: %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v26, -1, -1);
      MEMORY[0x25308E2B0](v25, -1, -1);
    }

    else
    {

      sub_251C5BC14(v13, type metadata accessor for ClinicalSharingSyncTask);
    }

    sub_251BC8034(a2, *(v47 + 8));
    return a4(0, a2);
  }

  else
  {
    v35 = a4;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v36 = sub_251C70764();
    __swift_project_value_buffer(v36, qword_2813E8130);
    sub_251C5BBA0(a1, v15, type metadata accessor for ClinicalSharingSyncTask);

    v37 = sub_251C70744();
    v38 = sub_251C713F4();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v50 = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_251B10780(v5[9], v5[10], &v50);
      *(v39 + 12) = 2080;
      v41 = sub_251AE18FC();
      v43 = v42;
      sub_251C5BC14(v15, type metadata accessor for ClinicalSharingSyncTask);
      v44 = sub_251B10780(v41, v43, &v50);

      *(v39 + 14) = v44;
      _os_log_impl(&dword_251A6C000, v37, v38, "%s: Sync task %s finished successfully", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v40, -1, -1);
      MEMORY[0x25308E2B0](v39, -1, -1);
    }

    else
    {

      sub_251C5BC14(v15, type metadata accessor for ClinicalSharingSyncTask);
    }

    return v35(a2, 0);
  }
}

uint64_t sub_251C5A9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  v52 = a1;
  v6 = sub_251C6FE64();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C6FA14();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  v11 = (DiagnosticsTask - 8);
  v54 = *(DiagnosticsTask - 8);
  v12 = MEMORY[0x28223BE20](DiagnosticsTask);
  v56 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v51 = &v48 - v15;
  v55 = v16;
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = v11[10];
  v53 = v4;
  sub_251A823B4(v4 + 16, &v48 + v19 - v17);
  v20 = v11[12];
  v21 = sub_251C70014();
  (*(*(v21 - 8) + 16))(&v18[v20], a2, v21);
  sub_251C70064();
  v22 = v11[7];
  *&v18[v22] = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v23 = v11[8];
  sub_251C6FA54();
  swift_allocObject();
  v24 = sub_251C6FA44();
  v25 = MEMORY[0x277CC8718];
  sub_251C5B938(0, &qword_27F47CED8, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_251C74800;
  sub_251C6FA04();
  v59[0] = v26;
  sub_251C5BB58(&qword_27F47CEE0, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_251C5B938(0, &qword_27F47CEE8, v25, MEMORY[0x277D83940]);
  sub_251C5B99C();
  sub_251C715E4();
  sub_251C6FA24();
  *&v18[v23] = v24;
  v27 = NSTemporaryDirectory();
  sub_251C70F14();

  sub_251C6FDC4();

  sub_251C70024();
  sub_251C6FDE4();

  (*(v49 + 8))(v8, v50);
  *&v18[v11[11]] = v52;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v28 = sub_251C70764();
  __swift_project_value_buffer(v28, qword_2813E8130);
  v29 = v51;
  sub_251C5BBA0(v18, v51, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  v30 = v53;

  v31 = sub_251C70744();
  v32 = sub_251C713F4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v59[0] = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_251B10780(*(v30 + 72), *(v30 + 80), v59);
    *(v33 + 12) = 2080;
    sub_251C70074();
    sub_251C5BB58(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v35 = sub_251C719A4();
    v37 = v36;
    sub_251C5BC14(v29, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
    v38 = sub_251B10780(v35, v37, v59);

    *(v33 + 14) = v38;
    _os_log_impl(&dword_251A6C000, v31, v32, "%s: Diagnostic query task %s beginning", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v34, -1, -1);
    MEMORY[0x25308E2B0](v33, -1, -1);
  }

  else
  {

    sub_251C5BC14(v29, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  }

  v59[0] = sub_251AA0554();
  v39 = v56;
  sub_251C5BBA0(v18, v56, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  v40 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v41 = (v55 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = v30;
  sub_251C5BD98(v39, v42 + v40, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  v43 = (v42 + v41);
  v44 = v58;
  *v43 = v57;
  v43[1] = v44;
  v45 = MEMORY[0x277D84F78];
  sub_251AE5AC0(0, &qword_27F47CEF8, MEMORY[0x277D84F78] + 8);
  sub_251AE5F64(&qword_27F47CF00, &qword_27F47CEF8, v45 + 8);

  v46 = sub_251C70AF4();

  v59[3] = sub_251C709A4();
  v59[4] = MEMORY[0x277CBCDA0];
  v59[0] = v46;
  sub_251C5BC14(v18, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  swift_beginAccess();
  sub_251C5BAC8(v59, v30 + 104);
  return swift_endAccess();
}

uint64_t sub_251C5B198(void **a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v48 = a5;
  sub_251C5B938(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  v13 = MEMORY[0x28223BE20](DiagnosticsTask);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = *a1;
  if (*a1)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v19 = sub_251C70764();
    __swift_project_value_buffer(v19, qword_2813E8130);
    sub_251C5BBA0(a3, v15, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);

    v20 = v18;
    v21 = sub_251C70744();
    v22 = sub_251C713D4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v49 = v24;
      *v23 = 136315650;
      *(v23 + 4) = sub_251B10780(*(a2 + 72), *(a2 + 80), &v49);
      *(v23 + 12) = 2080;
      sub_251C70074();
      v47 = a4;
      sub_251C5BB58(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v25 = sub_251C719A4();
      v27 = v26;
      sub_251C5BC14(v15, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
      v28 = sub_251B10780(v25, v27, &v49);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2080;
      swift_getErrorValue();
      v29 = sub_251C71A44();
      v31 = sub_251B10780(v29, v30, &v49);

      *(v23 + 24) = v31;
      a4 = v47;
      _os_log_impl(&dword_251A6C000, v21, v22, "%s: Query task %s failed: %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v24, -1, -1);
      MEMORY[0x25308E2B0](v23, -1, -1);
    }

    else
    {

      sub_251C5BC14(v15, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
    }

    v41 = sub_251C6FE64();
    (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v47 = a4;
    v32 = sub_251C70764();
    __swift_project_value_buffer(v32, qword_2813E8130);
    sub_251C5BBA0(a3, v17, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);

    v33 = sub_251C70744();
    v34 = sub_251C713F4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_251B10780(*(a2 + 72), *(a2 + 80), &v49);
      *(v35 + 12) = 2080;
      sub_251C70074();
      sub_251C5BB58(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v37 = sub_251C719A4();
      v39 = v38;
      sub_251C5BC14(v17, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
      v40 = sub_251B10780(v37, v39, &v49);

      *(v35 + 14) = v40;
      _os_log_impl(&dword_251A6C000, v33, v34, "%s: Query task %s finished successfully", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v36, -1, -1);
      MEMORY[0x25308E2B0](v35, -1, -1);
    }

    else
    {

      sub_251C5BC14(v17, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
    }

    v42 = *(DiagnosticsTask + 28);
    v43 = sub_251C6FE64();
    v44 = *(v43 - 8);
    (*(v44 + 16))(v11, a3 + v42, v43);
    (*(v44 + 56))(v11, 0, 1, v43);
    v18 = 0;
    a4 = v47;
  }

  a4(v11, v18);
  return sub_251C5BC74(v11, &qword_2813E7520, MEMORY[0x277CC9260]);
}

uint64_t sub_251C5B830()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_251C5C3EC(v0 + 104, &qword_2813E2220, &qword_2813E2228, MEMORY[0x277CBCD78], sub_251AA98B0);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon24ClinicalSharingSyncStateO(uint64_t a1)
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

uint64_t sub_251C5B904(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_251C5B938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251C5B99C()
{
  result = qword_27F47CEF0;
  if (!qword_27F47CEF0)
  {
    sub_251C5B938(255, &qword_27F47CEE8, MEMORY[0x277CC8718], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CEF0);
  }

  return result;
}

uint64_t sub_251C5BA24(void **a1)
{
  v3 = *(type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_251C5B198(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_251C5BAC8(uint64_t a1, uint64_t a2)
{
  sub_251C5C0EC(0, &qword_2813E2220, &qword_2813E2228, MEMORY[0x277CBCD78], sub_251AA98B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C5BB58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251C5BBA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_251C5BC08(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_251C5BC14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C5BC74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C5B938(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251C5BCE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  *(a2 + 16) = v3;
}

uint64_t sub_251C5BD98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C5BE14@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(*(v1 + 24) + 16);
  if (*(v1 + 32))
  {
    ++v4;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_251C5BE64()
{
  v1 = *(type metadata accessor for ClinicalSharingSyncTask(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_251C56E1C(v3, v0 + v2, v5, v6);
}

void sub_251C5BF04(uint64_t a1)
{
  if (!qword_2813E24C8)
  {
    sub_251AE7918(255, &qword_2813E20E0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
    sub_251AE4104();
    v1 = sub_251C70864();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E24C8);
    }
  }
}

void sub_251C5BF88(void **a1)
{
  v3 = *(type metadata accessor for ClinicalSharingSyncTask(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *a1;

  sub_251C576F0(v10, v1 + v4, v7, v8, v9);
}

uint64_t sub_251C5C05C(uint64_t a1, uint64_t a2)
{
  sub_251C5C0EC(0, &qword_2813E2220, &qword_2813E2228, MEMORY[0x277CBCD78], sub_251AA98B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251C5C0EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_251C71574();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_251C5C148(uint64_t a1, uint64_t a2)
{
  sub_251C5C4C8(0, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251C5C1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_251C5C4C8(0, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper);
  v10 = *(*(v8 - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(v8 - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      v17 = v13 + v15;
      v18 = v12 + v10 * a2;
      if (v13 + v15 < v18 || v17 >= v18 + (v16 - a2) * v10)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v17 != v18)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v7 + 16);
      v21 = __OFADD__(v20, v14);
      v22 = v20 + v14;
      if (!v21)
      {
        *(v7 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }
}

void sub_251C5C32C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_251C39580(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  sub_251C5C1C8(result, a2, 0);
  *v2 = v4;
}

uint64_t sub_251C5C3EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_251C5C0EC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_251C5C448(uint64_t a1, uint64_t a2)
{
  sub_251C5C4C8(0, qword_2813E33D0, type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_251C5C4C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, _UNKNOWN **))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ClinicalSharingSyncTask(255);
    v7 = a3(a1, v6, &off_281CEA850);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_251C5C530(uint64_t a1)
{
  if (!qword_27F47CF08)
  {
    sub_251AE7918(255, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AE79A4();
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CF08);
    }
  }
}

unint64_t sub_251C5C5C8()
{
  result = qword_2813E1E28;
  if (!qword_2813E1E28)
  {
    sub_251AA8E98(255, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1E28);
  }

  return result;
}

void sub_251C5C638(uint64_t a1)
{
  if (!qword_27F47CF18)
  {
    sub_251AA8E98(255, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    sub_251C5C5C8();
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CF18);
    }
  }
}

void sub_251C5C6EC(uint64_t a1)
{
  if (!qword_27F47CF20)
  {
    sub_251C5C7D8(255);
    sub_251C5C638(255);
    sub_251C5BB58(&qword_27F47CF30, sub_251C5C7D8, MEMORY[0x277CBCD90]);
    sub_251C5BB58(&qword_27F47CF38, sub_251C5C638, MEMORY[0x277CBCD18]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CF20);
    }
  }
}

void sub_251C5C7D8(uint64_t a1)
{
  if (!qword_27F47CF28)
  {
    sub_251A8223C(255, &qword_2813E1D98, 0x277D123D8);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CF28);
    }
  }
}

void sub_251C5C868(uint64_t a1)
{
  if (!qword_27F47CF40)
  {
    sub_251C5C6EC(255);
    sub_251C5BB58(&qword_27F47CF48, sub_251C5C6EC, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CF40);
    }
  }
}

void sub_251C5C904(uint64_t a1)
{
  if (!qword_27F47CF58)
  {
    v1 = MEMORY[0x277D839B0];
    sub_251AE5AC0(255, &qword_2813E20D0, MEMORY[0x277D839B0]);
    sub_251A8223C(255, &qword_2813E1D98, 0x277D123D8);
    sub_251AE5F64(&qword_2813E20D8, &qword_2813E20D0, v1);
    v2 = sub_251C70804();
    if (!v3)
    {
      atomic_store(v2, &qword_27F47CF58);
    }
  }
}

id sub_251C5C9C0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void sub_251C5C9CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_251C5D6DC;
  *(v11 + 24) = v10;
  v12 = __swift_project_boxed_opaque_existential_1(a4 + 2, a4[5])[1];
  _Block_copy(a5);
  _Block_copy(a5);

  if ([v12 healthAppNotInstalled])
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v13 = sub_251C70764();
    __swift_project_value_buffer(v13, qword_2813E8130);

    v14 = sub_251C70744();
    v15 = sub_251C713F4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_251B10780(a4[9], a4[10], &v19);
      _os_log_impl(&dword_251A6C000, v14, v15, "%s: Health App is not installed", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x25308E2B0](v17, -1, -1);
      MEMORY[0x25308E2B0](v16, -1, -1);
    }

    v19 = sub_251C57FFC();
    sub_251C5D644(0);
    swift_allocObject();

    sub_251C70944();
    sub_251AE7918(0, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AE79A4();
    sub_251C5BB58(&qword_27F47CF70, sub_251C5D644, MEMORY[0x277CBCD80]);
    sub_251C70BB4();

    _Block_copy(a5);
    sub_251A8223C(0, &qword_2813E1D38, 0x277D12438);
    v18 = sub_251C71144();
    (a5)[2](a5, v18, 0);

    _Block_release(a5);
  }

  else
  {
    sub_251C58E70(a1, a2, a3, sub_251C5D6E4, v11);
  }

  _Block_release(a5);
}

uint64_t sub_251C5CF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_251A8223C(0, &qword_27F47BB70, 0x277D12478);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_251C717F4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_251C717F4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_251C5D060(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_251C717F4();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_251C717F4();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_251C00580();

  return sub_251C5CF50(v5, v3, 0);
}

uint64_t sub_251C5D138(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = __swift_project_boxed_opaque_existential_1(a4 + 2, a4[5])[1];

  if ([v13 healthAppNotInstalled])
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v14 = sub_251C70764();
    __swift_project_value_buffer(v14, qword_2813E8130);

    v15 = sub_251C70744();
    v16 = sub_251C713F4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_251B10780(a4[9], a4[10], &v20);
      _os_log_impl(&dword_251A6C000, v15, v16, "%s: Health App is not installed", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x25308E2B0](v18, -1, -1);
      MEMORY[0x25308E2B0](v17, -1, -1);
    }

    v20 = sub_251C57FFC();
    sub_251C5D644(0);
    swift_allocObject();

    sub_251C70944();
    sub_251AE7918(0, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AE79A4();
    sub_251C5BB58(&qword_27F47CF70, sub_251C5D644, MEMORY[0x277CBCD80]);
    sub_251C70BB4();

    a5(0);
  }

  else
  {
    sub_251C58E70(a1, a2, a3, sub_251C5D610, v12);
  }
}

void sub_251C5D644(uint64_t a1)
{
  if (!qword_27F47CF68)
  {
    sub_251AA8E98(255, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v1 = sub_251C70954();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CF68);
    }
  }
}

uint64_t sub_251C5D708(uint64_t a1)
{
  v2 = v1;
  sub_251C5F0A8(0);
  v5 = v4;
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5F1B8(0);
  v9 = *(v8 - 8);
  v26 = v8;
  v27 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5F4EC(0);
  v28 = v12;
  v30 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5F580(0);
  v29 = v15;
  v31 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_251C5F3DC(0, &qword_2813E1F68, MEMORY[0x277CC95F0]);
  sub_251C5F144();
  sub_251C710D4();
  *(swift_allocObject() + 16) = v2;
  v18 = v2;
  sub_251C70964();
  sub_251C5F2A4(0);
  sub_251C5E8B4(&qword_2813E2270, sub_251C5F0A8, MEMORY[0x277CBCD18]);
  v19 = MEMORY[0x277CBCC08];
  sub_251C5E8B4(&qword_2813E2560, sub_251C5F2A4, MEMORY[0x277CBCC08]);
  sub_251C70BD4();

  (*(v25 + 8))(v7, v5);
  sub_251C5E8B4(&qword_2813E2280, sub_251C5F1B8, MEMORY[0x277CBCCE0]);
  v20 = v26;
  sub_251C70B64();
  (*(v27 + 8))(v11, v20);
  sub_251C5E8B4(&qword_2813E2440, sub_251C5F4EC, MEMORY[0x277CBCCD0]);
  v21 = v28;
  sub_251C70AE4();
  (*(v30 + 8))(v14, v21);
  sub_251C5E8B4(&qword_2813E2530, sub_251C5F580, v19);
  v22 = v29;
  v23 = sub_251C70A94();
  (*(v31 + 8))(v17, v22);
  return v23;
}

uint64_t sub_251C5DBC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_251C702E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_251C5E8B4(&qword_2813E74C0, MEMORY[0x277D11300], MEMORY[0x277D11308]), v7 = sub_251C70E84(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_251C5E8B4(&qword_27F4797C8, MEMORY[0x277D11300], MEMORY[0x277D11310]);
      v15 = sub_251C70ED4();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_251C5DDD8(uint64_t a1)
{
  v10 = MEMORY[0x277D84FA0];
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v10;
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        result = sub_251C5DEC4(v9);
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251C5DEC4(uint64_t a1)
{
  v2 = sub_251C702E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v23 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_251BF5578(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251C5E0D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_251BFB7E4(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_251C5DBC0(a3, *(a2 + *(v7 + 48)));
  if (result)
  {
    sub_251C5F624(a2, v9, sub_251BFB7E4);

    v11 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_251C39A00(0, v11[2] + 1, 1, v11);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_251C39A00((v12 > 1), v13 + 1, 1, v11);
    }

    v11[2] = v13 + 1;
    v14 = sub_251C70074();
    result = (*(*(v14 - 8) + 32))(v11 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)) + *(*(v14 - 8) + 72) * v13, v9, v14);
    *a1 = v11;
  }

  return result;
}

uint64_t sub_251C5E25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_251C70024();
  v7 = objc_allocWithZone(MEMORY[0x277CCD988]);
  v8 = sub_251C70EE4();

  v9 = [v7 initForClinicalAccountIdentifier_];

  v10 = [objc_allocWithZone(MEMORY[0x277CCD978]) initWithHealthStore:a2 recipientIdentifier:v9];
  v11 = sub_251C714F4();

  v15[1] = v11;
  (*(v5 + 16))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_251C5F350(0);
  sub_251C4D0B4(0);
  sub_251C5E8B4(&qword_2813E2018, sub_251C5F350, MEMORY[0x277CBCEB0]);
  sub_251C70AE4();
}

uint64_t sub_251C5E49C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_251C4D0B4(0);
  v7 = *(v6 + 48);
  v8 = sub_251C70074();
  (*(*(v8 - 8) + 16))(a3, a2, v8);
  *(a3 + v7) = v5;
}

uint64_t sub_251C5E52C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  sub_251C4D0B4(0);
  v42 = v3;
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = *a1;
  v14 = sub_251C4BC38(MEMORY[0x277D84F90]);
  v41 = *(v13 + 16);
  if (!v41)
  {
LABEL_16:
    v36 = sub_251C5E8FC(v14);

    *v39 = v36;
    return result;
  }

  v15 = 0;
  v40 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  while (v15 < *(v13 + 16))
  {
    v18 = v4;
    sub_251C5F624(v40 + *(v4 + 72) * v15, v12, sub_251C4D0B4);
    sub_251C5F624(v12, v10, sub_251C4D0B4);
    v19 = v42;

    sub_251C5F624(v12, v7, sub_251C4D0B4);
    v20 = *&v7[*(v19 + 48)];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v14;
    v22 = sub_251AC8AFC(v10);
    v24 = v14[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_18;
    }

    v28 = v23;
    if (v14[3] < v27)
    {
      sub_251AC9F78(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_251AC8AFC(v10);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      v14 = v43;
      if (v28)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v35 = v22;
    sub_251ACDDE4();
    v22 = v35;
    v14 = v43;
    if (v28)
    {
LABEL_3:
      *(v14[7] + 8 * v22) = v20;

      sub_251C5F68C(v12);
      goto LABEL_4;
    }

LABEL_12:
    v14[(v22 >> 6) + 8] |= 1 << v22;
    v30 = v14[6];
    v31 = v22;
    v32 = sub_251C70074();
    (*(*(v32 - 8) + 16))(v30 + *(*(v32 - 8) + 72) * v31, v10, v32);
    *(v14[7] + 8 * v31) = v20;
    sub_251C5F68C(v12);
    v33 = v14[2];
    v26 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v26)
    {
      goto LABEL_19;
    }

    v14[2] = v34;
LABEL_4:
    ++v15;
    v16 = sub_251C70074();
    v17 = *(*(v16 - 8) + 8);
    v17(v10, v16);
    v17(v7, v16);
    v4 = v18;
    if (v41 == v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_251C70074();
  result = sub_251C71A14();
  __break(1u);
  return result;
}

uint64_t sub_251C5E8B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251C5E8FC(uint64_t a1)
{
  v2 = sub_251C702E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - v7;
  v9 = sub_251C70074();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C5EFFC(0);
  result = sub_251C71804();
  v14 = result;
  v15 = 0;
  v55 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v44 = (v19 + 63) >> 6;
  v45 = v17;
  v46 = v3 + 16;
  v47 = v12;
  v48 = v9;
  v49 = v3;
  v22 = (v3 + 8);
  v51 = result + 64;
  v52 = v10 + 16;
  v53 = result;
  v54 = v10;
  v50 = (v10 + 32);
  if (v21)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v21));
      v58 = (v21 - 1) & v21;
LABEL_10:
      v26 = v23 | (v15 << 6);
      v27 = v55;
      v28 = *(v55 + 48);
      v29 = *(v54 + 16);
      v59 = *(v54 + 72) * v26;
      v29(v12, v28 + v59, v9);
      v30 = *(v27 + 56);
      v60 = v26;
      v31 = *(v30 + 8 * v26);
      v32 = *(v31 + 16);
      v33 = sub_251C5E8B4(&qword_2813E74C0, MEMORY[0x277D11300], MEMORY[0x277D11308]);

      v34 = MEMORY[0x25308D030](v32, v2, v33);
      v35 = v31;
      v61 = v34;
      v36 = *(v31 + 16);
      if (v36)
      {
        v56 = v35;
        v57 = v15;
        v37 = v35 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v38 = *(v49 + 72);
        v39 = *(v49 + 16);
        do
        {
          v39(v8, v37, v2);
          sub_251BF5578(v6, v8);
          (*v22)(v6, v2);
          v37 += v38;
          --v36;
        }

        while (v36);

        v34 = v61;
        v12 = v47;
        v9 = v48;
        v15 = v57;
      }

      else
      {
      }

      v40 = v60;
      *(v51 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
      v14 = v53;
      result = (*v50)(*(v53 + 48) + v59, v12, v9);
      *(*(v14 + 56) + 8 * v40) = v34;
      v41 = *(v14 + 16);
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        break;
      }

      *(v14 + 16) = v43;
      v21 = v58;
      if (!v58)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v44)
      {
        return v14;
      }

      v25 = *(v45 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v58 = (v25 - 1) & v25;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251C5ECD8(uint64_t a1)
{
  v2 = sub_251C70074();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = sub_251C702D4();
  v10 = sub_251C4BC38(MEMORY[0x277D84F90]);
  v11 = *(a1 + 16);
  if (v11)
  {
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = (a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64)));
    v38 = *(v12 + 56);
    v39 = v13;
    v37 = (v12 - 8);
    while (1)
    {
      v16 = v39;
      v39(v8, v14, v2);
      v17 = v8;
      v18 = v8;
      v19 = v12;
      v16(v6, v18, v2);
      v20 = v9;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v10;
      v22 = sub_251AC8AFC(v6);
      v24 = v10[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        break;
      }

      v28 = v23;
      if (v10[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = v22;
          sub_251ACDDE4();
          v22 = v34;
        }
      }

      else
      {
        sub_251AC9F78(v27, isUniquelyReferenced_nonNull_native);
        v22 = sub_251AC8AFC(v6);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_17;
        }
      }

      v12 = v19;
      v10 = v40;
      v8 = v17;
      if (v28)
      {
        *(v40[7] + 8 * v22) = v20;

        v15 = *v37;
        (*v37)(v6, v2);
        v15(v17, v2);
      }

      else
      {
        v40[(v22 >> 6) + 8] |= 1 << v22;
        v30 = v22;
        v39((v10[6] + v22 * v38), v6, v2);
        *(v10[7] + 8 * v30) = v20;
        v31 = *v37;
        (*v37)(v6, v2);
        v31(v17, v2);
        v32 = v10[2];
        v26 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v26)
        {
          goto LABEL_16;
        }

        v10[2] = v33;
      }

      v14 += v38;
      --v11;
      v9 = v20;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_251C71A14();
    __break(1u);
  }

  else
  {
LABEL_14:

    v35 = sub_251C5E8FC(v10);

    return v35;
  }

  return result;
}

void sub_251C5EFFC(uint64_t a1)
{
  if (!qword_2813E1CD8)
  {
    sub_251C70074();
    sub_251BFB858(255);
    sub_251C5E8B4(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_251C71834();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1CD8);
    }
  }
}

void sub_251C5F0A8(uint64_t a1)
{
  if (!qword_2813E2268)
  {
    sub_251C5F3DC(255, &qword_2813E1F68, MEMORY[0x277CC95F0]);
    sub_251C5F144();
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2268);
    }
  }
}

unint64_t sub_251C5F144()
{
  result = qword_2813E1F60;
  if (!qword_2813E1F60)
  {
    sub_251C5F3DC(255, &qword_2813E1F68, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1F60);
  }

  return result;
}

void sub_251C5F1B8(uint64_t a1)
{
  if (!qword_2813E2278)
  {
    sub_251C5F2A4(255);
    sub_251C5F430(255);
    sub_251C5E8B4(&qword_2813E2560, sub_251C5F2A4, MEMORY[0x277CBCC08]);
    sub_251C5E8B4(&unk_2813E2688, sub_251C5F430, MEMORY[0x277CBCBA0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2278);
    }
  }
}

void sub_251C5F2A4(uint64_t a1)
{
  if (!qword_2813E2558)
  {
    sub_251C5F350(255);
    sub_251C4D0B4(255);
    sub_251C5E8B4(&qword_2813E2018, sub_251C5F350, MEMORY[0x277CBCEB0]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2558);
    }
  }
}

void sub_251C5F350(uint64_t a1)
{
  if (!qword_2813E2010)
  {
    sub_251C5F3DC(255, &qword_2813E1F58, MEMORY[0x277D11300]);
    sub_251A82284();
    v1 = sub_251C70A54();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2010);
    }
  }
}

void sub_251C5F3DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C711A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251C5F430(uint64_t a1)
{
  if (!qword_2813E2680)
  {
    sub_251C5F0A8(255);
    sub_251A82284();
    sub_251C5E8B4(&qword_2813E2270, sub_251C5F0A8, MEMORY[0x277CBCD18]);
    v1 = sub_251C707E4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2680);
    }
  }
}

void sub_251C5F4EC(uint64_t a1)
{
  if (!qword_2813E2438)
  {
    sub_251C5F1B8(255);
    sub_251C5E8B4(&qword_2813E2280, sub_251C5F1B8, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2438);
    }
  }
}

void sub_251C5F580(uint64_t a1)
{
  if (!qword_2813E2528)
  {
    sub_251C5F4EC(255);
    sub_251C5E8B4(&qword_2813E2440, sub_251C5F4EC, MEMORY[0x277CBCCD0]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2528);
    }
  }
}

uint64_t sub_251C5F624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C5F68C(uint64_t a1)
{
  sub_251C4D0B4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C5F6E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_251C70074() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251C5E49C(a1, v6, a2);
}

uint64_t sub_251C5F768(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_251C5F7D8, 0, 0);
}

uint64_t sub_251C5F7D8(uint64_t a1)
{
  v2 = v1[20];
  v3 = sub_251C70034();
  v1[22] = v3;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_251C5F900;
  v4 = swift_continuation_init();
  sub_251C5FE70(0);
  v1[17] = v5;
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_251AB5E04;
  v1[13] = &block_descriptor_25;
  v1[14] = v4;
  [v2 refreshAccountConnectionInformationForAccountWithIdentifier:v3 completion:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_251C5F900()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_251C5FC68;
  }

  else
  {
    v2 = sub_251C5FA10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251C5FA10()
{
  v16 = v0;
  v1 = *(v0 + 144);

  v2 = [v1 authorization];
  if (v2)
  {
    v3 = v2;

    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v6 = sub_251C70764();
    __swift_project_value_buffer(v6, qword_2813E8130);
    v7 = sub_251C70744();
    v8 = sub_251C713D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_251C71B64();
      v13 = sub_251B10780(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_251A6C000, v7, v8, "%s.refreshFHIRCredential. Call succeeded but return didn't include a credential, which should be impossible", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x25308E2B0](v10, -1, -1);
      MEMORY[0x25308E2B0](v9, -1, -1);
    }

    type metadata accessor for HKError(0);
    *(v0 + 144) = 11;
    sub_251C5FF44(MEMORY[0x277D84F90]);
    sub_251C60048();
    sub_251C6FD64();
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_251C5FC68(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  swift_willThrow();

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_251C5FCD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_251C5FD70;

  return sub_251C5F768(a1);
}

uint64_t sub_251C5FD70(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_251C5FE70(uint64_t a1)
{
  if (!qword_27F47CF78)
  {
    sub_251C5FEE0();
    sub_251A82284();
    v1 = sub_251C71224();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CF78);
    }
  }
}

unint64_t sub_251C5FEE0()
{
  result = qword_2813E1D30;
  if (!qword_2813E1D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E1D30);
  }

  return result;
}

unint64_t sub_251C5FF44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C600A0();
    v3 = sub_251C71824();
    v4 = a1 + 32;

    while (1)
    {
      sub_251C60104(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_251AC8C58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_251ACFB54(&v15, (v3[7] + 32 * result));
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

unint64_t sub_251C60048()
{
  result = qword_27F478C50;
  if (!qword_27F478C50)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478C50);
  }

  return result;
}

void sub_251C600A0()
{
  if (!qword_2813E1CB8)
  {
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1CB8);
    }
  }
}

uint64_t sub_251C60104(uint64_t a1, uint64_t a2)
{
  sub_251AFE93C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C60178()
{
  v1 = 25705;
  v2 = 0x746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 1635018093;
  }

  if (*v0)
  {
    v1 = 0x656372756F736572;
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

uint64_t sub_251C601E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251C602D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251C60210(uint64_t a1)
{
  v2 = sub_251C607C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C6024C(uint64_t a1)
{
  v2 = sub_251C607C0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_251C60288@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_251C60438(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_251C602D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_251C719D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEC00000065707954 || (sub_251C719D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_251C719D4();

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

uint64_t sub_251C60438@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251C60764(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C607C0();
  sub_251C71B04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  v10 = sub_251C718B4();
  v12 = v11;
  v22 = v10;
  LOBYTE(v23) = 1;
  v20 = sub_251C718B4();
  v21 = v13;
  sub_251C60814();
  v25 = 2;
  sub_251C60864();
  sub_251C718A4();
  v19 = v23;
  v25 = 3;
  sub_251C60930();
  sub_251C718A4();
  (*(v7 + 8))(v9, v6);
  v14 = v23;
  v15 = v24;
  v16 = v19;

  v17 = v21;

  sub_251AFF694(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(a1);

  result = sub_251AFF7F4(v14, v15);
  *a2 = v22;
  a2[1] = v12;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v14;
  a2[6] = v15;
  return result;
}

void sub_251C60764(uint64_t a1)
{
  if (!qword_27F47CF80)
  {
    sub_251C607C0();
    v1 = sub_251C718E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CF80);
    }
  }
}

unint64_t sub_251C607C0()
{
  result = qword_27F47CF88;
  if (!qword_27F47CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CF88);
  }

  return result;
}

void sub_251C60814()
{
  if (!qword_27F47CF90)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CF90);
    }
  }
}

unint64_t sub_251C60864()
{
  result = qword_27F47CF98;
  if (!qword_27F47CF98)
  {
    sub_251C60814();
    sub_251C608DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CF98);
  }

  return result;
}

unint64_t sub_251C608DC()
{
  result = qword_27F47CFA0;
  if (!qword_27F47CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CFA0);
  }

  return result;
}

unint64_t sub_251C60930()
{
  result = qword_27F47CFA8;
  if (!qword_27F47CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CFA8);
  }

  return result;
}

unint64_t sub_251C60998()
{
  result = qword_27F47CFB0;
  if (!qword_27F47CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CFB0);
  }

  return result;
}

unint64_t sub_251C609F0()
{
  result = qword_27F47CFB8;
  if (!qword_27F47CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CFB8);
  }

  return result;
}

unint64_t sub_251C60A48()
{
  result = qword_27F47CFC0;
  if (!qword_27F47CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CFC0);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingMedicationDoseEventQuery(uint64_t a1)
{
  result = qword_27F47CFC8;
  if (!qword_27F47CFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251C60B10(uint64_t a1)
{
  result = type metadata accessor for ClinicalSharingQueryContext(319);
  if (v2 <= 0x3F)
  {
    result = sub_251A8223C(319, &qword_27F478D50, 0x277CCD8D8);
    if (v3 <= 0x3F)
    {
      result = sub_251C6FAE4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void *sub_251C60BCC(unint64_t a1, void (*a2)(id *), uint64_t a3)
{
  v4 = v3;
  v36 = a2;
  v37 = a3;
  v35 = sub_251C70014();
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_26:
    v8 = sub_251C717F4();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v33 = a1 & 0xFFFFFFFFFFFFFF8;
      v34 = a1 & 0xC000000000000001;
      v30 = (v32 + 8);
      v31 = v32 + 32;
      v10 = MEMORY[0x277D84F98];
      v29 = xmmword_251C74560;
      while (1)
      {
        if (v34)
        {
          v13 = MEMORY[0x25308D460](v9, a1);
        }

        else
        {
          if (v9 >= *(v33 + 16))
          {
            goto LABEL_23;
          }

          v13 = *(a1 + 8 * v9 + 32);
        }

        v14 = v13;
        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v39 = v13;
        v36(&v39);
        if (v4)
        {

          return v10;
        }

        v38 = 0;
        v4 = a1;
        a1 = v8;
        v17 = sub_251AC8F4C(v7);
        v18 = v10[2];
        v19 = (v16 & 1) == 0;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_24;
        }

        v21 = v16;
        if (v10[3] < v20)
        {
          sub_251ACCA1C(v20, 1);
          v10 = v40;
          v22 = sub_251AC8F4C(v7);
          if ((v21 & 1) != (v23 & 1))
          {
            result = sub_251C71A14();
            __break(1u);
            return result;
          }

          v17 = v22;
        }

        if (v21)
        {
          v11 = (*v30)(v7, v35);
          v12 = (v10[7] + 8 * v17);
          MEMORY[0x25308CEE0](v11);
          v8 = a1;
          if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_251C71174();
            v8 = a1;
          }

          sub_251C71194();
        }

        else
        {
          sub_251A82418();
          v24 = swift_allocObject();
          *(v24 + 16) = v29;
          *(v24 + 32) = v14;
          v10[(v17 >> 6) + 8] |= 1 << v17;
          (*(v32 + 32))(v10[6] + *(v32 + 72) * v17, v7, v35);
          *(v10[7] + 8 * v17) = v24;
          v25 = v10[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_25;
          }

          v10[2] = v27;
          v8 = a1;
        }

        ++v9;
        a1 = v4;
        v4 = v38;
        if (v15 == v8)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v10 = MEMORY[0x277D84F98];
LABEL_28:

  return v10;
}

uint64_t sub_251C60F38()
{
  v1 = v0;
  v2 = type metadata accessor for ClinicalSharingMedicationDoseEventQuery(0);
  v41 = *(v2 - 8);
  v53 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C64310(0);
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  MEMORY[0x28223BE20](v5);
  v54 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C643D4(0);
  v48 = v8;
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C64530(0);
  v49 = v10;
  v51 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v45 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251C70014();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_opt_self();
  sub_251C6FAB4();
  v17 = sub_251C6FF94();
  v18 = *(v13 + 8);
  v18(v15, v12);
  sub_251C6FA84();
  v19 = sub_251C6FF94();
  v18(v15, v12);
  v20 = [v16 predicateForSamplesWithStartDate:v17 endDate:v19 options:0];
  v43 = v20;

  v21 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v1[1] predicate:v20];
  sub_251A823B4(*v1 + 16, v56);
  __swift_project_boxed_opaque_existential_1(v56, v56[3]);
  sub_251A82418();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_251C74560;
  *(v22 + 32) = v21;
  v42 = v21;
  v23 = sub_251AFCF70();
  v24 = off_2863FD760(v22, v23, v1[2], 0xD000000000000014, 0x8000000251C92AF0, &type metadata for ClinicalSharingQueryDefaultDataProvider);
  v37[1] = v24;

  v55 = v24;
  v52 = type metadata accessor for ClinicalSharingMedicationDoseEventQuery;
  v39 = v1;
  sub_251C64FC8(v1, v4, type metadata accessor for ClinicalSharingMedicationDoseEventQuery);
  v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v26 = swift_allocObject();
  v38 = type metadata accessor for ClinicalSharingMedicationDoseEventQuery;
  sub_251C65030(v4, v26 + v25, type metadata accessor for ClinicalSharingMedicationDoseEventQuery);
  sub_251A82164(0);
  sub_251AA8E98(0, &qword_27F4796F8, &qword_27F479700, 0x277CCD650);
  v40 = MEMORY[0x277CBCD90];
  sub_251C64B2C(&qword_27F478D78, sub_251A82164, MEMORY[0x277CBCD90]);
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v56);
  sub_251C64FC8(v1, v4, v52);
  v27 = swift_allocObject();
  sub_251C65030(v4, v27 + v25, type metadata accessor for ClinicalSharingMedicationDoseEventQuery);
  sub_251C70964();
  type metadata accessor for PBTypedData(0);
  sub_251C644C0(0);
  v41 = MEMORY[0x277CBCB10];
  sub_251C64B2C(&qword_27F47CFE8, sub_251C64310, MEMORY[0x277CBCB10]);
  sub_251C64B2C(&qword_27F47C510, sub_251C644C0, v40);
  v28 = v44;
  v29 = v46;
  v30 = v54;
  sub_251C70B94();

  (*(v47 + 8))(v30, v29);
  sub_251C64FC8(v39, v4, v52);
  v31 = swift_allocObject();
  sub_251C65030(v4, v31 + v25, v38);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251C64B2C(&qword_27F47CFF8, sub_251C643D4, MEMORY[0x277CBCCE0]);
  v32 = v45;
  v33 = v48;
  sub_251C70AA4();

  (*(v50 + 8))(v28, v33);
  sub_251C64B2C(&qword_27F47D000, sub_251C64530, v41);
  v34 = v49;
  v35 = sub_251C70A94();

  (*(v51 + 8))(v32, v34);
  return v35;
}

uint64_t sub_251C61718@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251B15154(*a1);
  if (result)
  {
    *a2 = result;
  }

  else
  {
    result = sub_251C717E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_251C6179C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for PBTypedData(0);
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C64840(0);
  v44 = v5;
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C649DC(0);
  v45 = v7;
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C648F0(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v19 = *a1;
  sub_251C61D5C(*a1, &v39 - v17);
  v20 = sub_251C39A68(0, 1, 1, MEMORY[0x277D84F90]);
  v22 = v20[2];
  v21 = v20[3];
  if (v22 >= v21 >> 1)
  {
    v20 = sub_251C39A68((v21 > 1), v22 + 1, 1, v20);
  }

  v20[2] = v22 + 1;
  v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v24 = *(v10 + 72);
  sub_251C0A8BC(v18, v20 + v23 + v24 * v22);
  v50 = v20;
  v25 = sub_251C622E4(v19);
  sub_251BFFA98(v25);
  v26 = v50[2];
  if (v26)
  {
    v39 = v50;
    v27 = v50 + v23;
    v28 = (v47 + 48);
    v29 = MEMORY[0x277D84F90];
    v30 = v3;
    do
    {
      sub_251C64A98(v27, v16);
      sub_251C0A8BC(v16, v13);
      if ((*v28)(v13, 1, v3) == 1)
      {
        sub_251C64F38(v13, &qword_27F4793C8, type metadata accessor for PBTypedData);
      }

      else
      {
        sub_251C65030(v13, v48, type metadata accessor for PBTypedData);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_251C39A34(0, v29[2] + 1, 1, v29);
        }

        v32 = v29[2];
        v31 = v29[3];
        if (v32 >= v31 >> 1)
        {
          v29 = sub_251C39A34((v31 > 1), v32 + 1, 1, v29);
        }

        v29[2] = v32 + 1;
        sub_251C65030(v48, v29 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v32, type metadata accessor for PBTypedData);
        v3 = v30;
      }

      v27 += v24;
      --v26;
    }

    while (v26);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v49 = v29;
  sub_251C648F0(0, &qword_27F47D010, type metadata accessor for PBTypedData, MEMORY[0x277D83940]);
  sub_251C64954();
  v33 = v40;
  sub_251C710D4();

  sub_251A82284();
  v34 = v41;
  v35 = v44;
  sub_251C708E4();
  (*(v42 + 8))(v33, v35);
  sub_251C64B2C(&qword_27F47D028, sub_251C649DC, MEMORY[0x277CBCD18]);
  v36 = v45;
  v37 = sub_251C70A94();
  result = (*(v43 + 8))(v34, v36);
  *v46 = v37;
  return result;
}

uint64_t sub_251C61D5C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251C648F0(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v37 - v6;
  v7 = type metadata accessor for PBDateRange(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  v45 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBMedicationTrackingDoseEvents(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v18 = (&v37 - v16);
  if (a1 >> 62)
  {
    v42 = (&v37 - v16);
    v43 = v17;
    v19 = sub_251C717F4();
    v18 = v42;
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_3:
      v41 = a2;
      MEMORY[0x28223BE20](v19);
      v43 = v20;
      *(&v37 - 2) = v2;
      sub_251C4FD4C(sub_251C64FA8, (&v37 - 4), a1);
      v22 = v21;
      v42 = v18;
      sub_251C703A4();
      *v18 = v22;
      *v13 = 0;
      v13[8] = 1;
      v23 = *(v11 + 20);
      v24 = type metadata accessor for PBTypedData.OneOf_Raw(0);
      v25 = *(v24 - 8);
      v38 = *(v25 + 56);
      v39 = v25 + 56;
      v38(&v13[v23], 1, 1, v24);
      sub_251C703A4();
      v26 = v11;
      v40 = v11;
      v27 = v7;
      v28 = *(v26 + 28);
      v29 = *(v8 + 56);
      v29(&v13[v28], 1, 1, v27);
      v30 = sub_251C6FAE4();
      v31 = v44;
      (*(*(v30 - 8) + 56))(v44, 1, 1, v30);
      sub_251BFC464();
      sub_251C64F38(v31, &qword_27F478D90, MEMORY[0x277CC88A8]);
      sub_251C64F38(&v13[v28], qword_2813E6EE8, type metadata accessor for PBDateRange);
      sub_251C65030(v10, &v13[v28], type metadata accessor for PBDateRange);
      v29(&v13[v28], 0, 1, v27);
      *v13 = 128;
      v13[8] = 1;
      v32 = v42;
      v33 = v43;
      sub_251C64FC8(v42, v43, type metadata accessor for PBMedicationTrackingDoseEvents);
      sub_251C64F38(&v13[v23], qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
      sub_251C65030(v33, &v13[v23], type metadata accessor for PBMedicationTrackingDoseEvents);
      swift_storeEnumTagMultiPayload();
      v38(&v13[v23], 0, 1, v24);
      v34 = v41;
      sub_251C65030(v13, v41, type metadata accessor for PBTypedData);
      (*(v45 + 56))(v34, 0, 1, v40);
      return sub_251C65098(v32, type metadata accessor for PBMedicationTrackingDoseEvents);
    }
  }

  v36 = *(v45 + 56);

  return v36(a2, 1, 1, v11);
}

uint64_t sub_251C622E4(unint64_t a1)
{
  sub_251C648F0(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v32 - v3);
  v38 = type metadata accessor for PBTypedData(0);
  v36 = *(v38 - 8);
  v5 = MEMORY[0x28223BE20](v38);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v33 = v9;
      v34 = v7;

      v11 = sub_251C64B74(v10);

      v7 = (v11 + 8);
      v12 = 1 << *(v11 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v9 = v13 & v11[8];
      v14 = (v12 + 63) >> 6;
      v37 = (v36 + 48);

      v15 = 0;
      v35 = MEMORY[0x277D84F90];
      while (1)
      {
        v16 = v15;
        if (!v9)
        {
          break;
        }

LABEL_10:
        v17 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v18 = v17 | (v15 << 6);
        v19 = v11[6] + 16 * v18;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v11[7] + 8 * v18);

        sub_251C628E0(v21, v20, v22, v4);

        if ((*v37)(v4, 1, v38) == 1)
        {
          sub_251C64F38(v4, &qword_27F4793C8, type metadata accessor for PBTypedData);
        }

        else
        {
          v23 = v33;
          sub_251C65030(v4, v33, type metadata accessor for PBTypedData);
          sub_251C65030(v23, v34, type metadata accessor for PBTypedData);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_251C39A34(0, v35[2] + 1, 1, v35);
          }

          v25 = v35[2];
          v24 = v35[3];
          v26 = v25 + 1;
          if (v25 >= v24 >> 1)
          {
            v32 = v25 + 1;
            v29 = sub_251C39A34((v24 > 1), v25 + 1, 1, v35);
            v26 = v32;
            v35 = v29;
          }

          v28 = v35;
          v27 = v36;
          v35[2] = v26;
          sub_251C65030(v34, v28 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, type metadata accessor for PBTypedData);
        }
      }

      while (1)
      {
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v15 >= v14)
        {

          v30 = sub_251C0958C(v35);

          return v30;
        }

        v9 = *&v7[8 * v15];
        ++v16;
        if (v9)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_19:
      ;
    }

    while (sub_251C717F4());
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_251C626BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_251C702E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(*v2 + 56);
  (*(v6 + 104))(v8, *MEMORY[0x277D112F8], v5);
  v17 = v8;

  v10 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v16, v9);

  (*(v6 + 8))(v8, v5);
  if (*(v10 + 16))
  {
    sub_251C64FC8(a1, a2, type metadata accessor for PBTypedData);
    v11 = sub_251BFAE40(v10);

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a2 + *(Output + 20)) = v11;
    v13 = (a2 + *(Output + 24));
    *v13 = 0;
    v13[1] = 0;
    return (*(*(Output - 8) + 56))(a2, 0, 1, Output);
  }

  else
  {
    v15 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }
}

uint64_t sub_251C628E0@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, char *a2@<X1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  v74 = a2;
  v73 = a1;
  sub_251C64E90(0);
  v72 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v71 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v57 - v9;
  v10 = type metadata accessor for PBHistogramSeries.Value(0);
  v69 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251C648F0(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v61 = &v57 - v14;
  v15 = type metadata accessor for PBDateRange(0);
  v62 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v60 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PBTypedData(0);
  v66 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PBHistogramSeries(0);
  v21 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v24 = &v57 - v23;
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  v25 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25)
  {
    while (1)
    {
      v57 = v22;
      v63 = v15;
      v58 = v19;
      v65 = v17;
      v59 = a4;
      v17 = &v57;
      MEMORY[0x28223BE20](v25);
      *(&v57 - 2) = v75;

      v27 = sub_251C60BCC(v26, sub_251C64F1C, (&v57 - 4));
      *(v24 + 8) = 0;
      *(v24 + 16) = 0xE000000000000000;
      v64 = v24;
      sub_251C703A4();
      a4 = v27[2];
      if (!a4)
      {
        break;
      }

      v78 = MEMORY[0x277D84F90];
      sub_251C0BC9C(0, a4, 0);
      v28 = v78;
      v19 = (v27 + 8);
      v29 = sub_251C715F4();
      v67 = (v27 + 8);
      v68 = v27;
      while ((v29 & 0x8000000000000000) == 0 && v29 < 1 << *(v27 + 32))
      {
        v17 = 1 << v29;
        if ((*&v19[8 * (v29 >> 6)] & (1 << v29)) == 0)
        {
          goto LABEL_18;
        }

        v76 = a4;
        LODWORD(v77) = *(v27 + 9);
        v30 = v27[6];
        v19 = v28;
        v31 = sub_251C70014();
        a4 = v12;
        v32 = *(v31 - 8);
        v15 = v70;
        (*(v32 + 16))(v70, v30 + *(v32 + 72) * v29, v31);
        v33 = *(v27[7] + 8 * v29);
        v34 = v71;
        v35 = v31;
        v28 = v19;
        (*(v32 + 32))(v71, v15, v35);
        v12 = a4;
        *(v34 + *(v72 + 48)) = v33;

        sub_251C634CC(v34, v33, v73, v74, a4);
        sub_251C65098(v34, sub_251C64E90);
        v78 = v19;
        v24 = *(v19 + 2);
        v36 = *(v19 + 3);
        if (v24 >= v36 >> 1)
        {
          sub_251C0BC9C((v36 > 1), v24 + 1, 1);
          v28 = v78;
        }

        *(v28 + 2) = v24 + 1;
        sub_251C65030(a4, &v28[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v24], type metadata accessor for PBHistogramSeries.Value);
        v27 = v68;
        if (v29 >= -(-1 << *(v68 + 32)))
        {
          goto LABEL_19;
        }

        v19 = v67;
        if ((*&v67[8 * (v29 >> 6)] & v17) == 0)
        {
          goto LABEL_20;
        }

        if (v77 != *(v68 + 9))
        {
          goto LABEL_21;
        }

        v29 = sub_251C71614();
        a4 = (v76 - 1);
        if (v76 == 1)
        {

          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v54 = v12;
      v55 = v22;
      v25 = sub_251C717F4();
      v22 = v55;
      v12 = v54;
      if (!v25)
      {
        goto LABEL_23;
      }
    }

    v28 = MEMORY[0x277D84F90];
LABEL_16:
    *v64 = v28;
    v37 = v58;
    *v58 = 0;
    *(v37 + 8) = 1;
    v38 = *(v65 + 20);
    v39 = v65;
    v74 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v40 = *(v74 - 1);
    v76 = *(v40 + 56);
    v77 = v40 + 56;
    (v76)(v37 + v38, 1, 1, v74);
    sub_251C703A4();
    v41 = *(v39 + 28);
    v73 = *(v62 + 56);
    (v73)(v37 + v41, 1, 1, v63);
    v42 = *(type metadata accessor for ClinicalSharingMedicationDoseEventQuery(0) + 28);
    v43 = v75;
    v44 = sub_251C6FAE4();
    v45 = *(v44 - 8);
    v46 = v43 + v42;
    v47 = v61;
    (*(v45 + 16))(v61, v46, v44);
    (*(v45 + 56))(v47, 0, 1, v44);
    v48 = v60;
    sub_251BFC464();
    sub_251C64F38(v47, &qword_27F478D90, MEMORY[0x277CC88A8]);
    sub_251C64F38(v37 + v41, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251C65030(v48, v37 + v41, type metadata accessor for PBDateRange);
    (v73)(v37 + v41, 0, 1, v63);
    *v37 = 128;
    *(v37 + 8) = 1;
    v49 = v64;
    v50 = v57;
    sub_251C64FC8(v64, v57, type metadata accessor for PBHistogramSeries);
    sub_251C64F38(v37 + v38, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251C65030(v50, v37 + v38, type metadata accessor for PBHistogramSeries);
    v51 = v74;
    swift_storeEnumTagMultiPayload();
    (v76)(v37 + v38, 0, 1, v51);
    v52 = v59;
    sub_251C65030(v37, v59, type metadata accessor for PBTypedData);
    (*(v66 + 56))(v52, 0, 1, v65);
    return sub_251C65098(v49, type metadata accessor for PBHistogramSeries);
  }

  else
  {
LABEL_23:
    v56 = *(v66 + 56);

    return v56(a4, 1, 1, v17);
  }
}

uint64_t sub_251C63284@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_251C70014();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C701E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  (*(v11 + 16))(v13, *a2 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v10);
  v15 = [v14 startDate];
  sub_251C6FFE4();

  v16 = a2 + *(type metadata accessor for ClinicalSharingMedicationDoseEventQuery(0) + 32);
  if (v16[8] == 1 && (v17 = *v16, ((1 << v17) & 0x67) == 0))
  {
    if (v17 == 3)
    {
      sub_251B1C960(0, v9, a3);
    }

    else
    {
      sub_251B1D048(v9, a3);
    }
  }

  else
  {
    sub_251C700C4();
  }

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_251C634CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  v65 = a3;
  v66 = a4;
  v63 = a1;
  v64 = a5;
  v8 = type metadata accessor for PBBucket(0);
  v62 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v67 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v71 = &v61 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v14);
  v72 = &v61 - v17;
  v73 = a2 >> 62;
  v74 = MEMORY[0x277D84F90];
  v68 = v18;
  if (a2 >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251C717F4())
  {
    v20 = MEMORY[0x277D84F90];
    v21 = &selRef_dateComponentsValue;
    v22 = &selRef_dateComponentsValue;
    v69 = v16;
    v70 = v8;
    if (i)
    {
      v8 = 0;
      v6 = a2 & 0xC000000000000001;
      v16 = (a2 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v6)
        {
          v23 = MEMORY[0x25308D460](v8, a2);
        }

        else
        {
          if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          v23 = *(a2 + 8 * v8 + 32);
        }

        v24 = v23;
        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ([v23 logOrigin] == 2 && objc_msgSend(v24, v22[364]) == 5)
        {
          sub_251C71734();
          sub_251C71774();
          v22 = &selRef_dateComponentsValue;
          sub_251C71784();
          sub_251C71744();
        }

        else
        {
        }

        ++v8;
        if (v5 == i)
        {
          v25 = v74;
          v16 = v69;
          v8 = v70;
          v20 = MEMORY[0x277D84F90];
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v25 = MEMORY[0x277D84F90];
LABEL_17:
    v26 = v72;
    *(v72 + 8) = 0;
    sub_251C703A4();
    *v26 = 0;
    if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
    {
      v27 = sub_251C717F4();

      if (v27 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    else
    {
      v27 = *(v25 + 16);
    }

    if (v27 > 0x7FFFFFFF)
    {
      goto LABEL_97;
    }

    v28 = v73;
    *(v72 + 16) = v27;
    v74 = v20;
    if (v28)
    {
      v29 = sub_251C717F4();
      if (v29)
      {
LABEL_23:
        v8 = 0;
        v6 = a2 & 0xC000000000000001;
        v16 = (a2 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v6)
          {
            v30 = MEMORY[0x25308D460](v8, a2);
          }

          else
          {
            if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_89;
            }

            v30 = *(a2 + 8 * v8 + 32);
          }

          v31 = v30;
          v5 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if ([v30 logOrigin] == 2 && objc_msgSend(v31, v22[364]) == 4)
          {
            sub_251C71734();
            sub_251C71774();
            v22 = &selRef_dateComponentsValue;
            sub_251C71784();
            sub_251C71744();
          }

          else
          {
          }

          ++v8;
          if (v5 == v29)
          {
            v32 = v74;
            v16 = v69;
            v8 = v70;
            v20 = MEMORY[0x277D84F90];
            goto LABEL_37;
          }
        }

LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }
    }

    else
    {
      v29 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_23;
      }
    }

    v32 = v20;
LABEL_37:
    *(v16 + 1) = 0;
    sub_251C703A4();
    *v16 = 0x3FF0000000000000;
    if ((v32 & 0x8000000000000000) == 0 && (v32 & 0x4000000000000000) == 0)
    {
      v33 = *(v32 + 16);

      goto LABEL_40;
    }

LABEL_98:
    v33 = sub_251C717F4();

    if (v33 < 0xFFFFFFFF80000000)
    {
      break;
    }

LABEL_40:
    if (v33 > 0x7FFFFFFF)
    {
      goto LABEL_100;
    }

    *(v16 + 4) = v33;
    v74 = v20;
    if (v73)
    {
      v34 = sub_251C717F4();
      if (v34)
      {
LABEL_43:
        v8 = 0;
        v6 = a2 & 0xC000000000000001;
        v16 = (a2 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v6)
          {
            v35 = MEMORY[0x25308D460](v8, a2);
          }

          else
          {
            if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_91;
            }

            v35 = *(a2 + 8 * v8 + 32);
          }

          v36 = v35;
          v5 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if ([v35 logOrigin] == 1 && objc_msgSend(v36, v22[364]) == 4)
          {
            sub_251C71734();
            sub_251C71774();
            v22 = &selRef_dateComponentsValue;
            sub_251C71784();
            sub_251C71744();
          }

          else
          {
          }

          ++v8;
          if (v5 == v34)
          {
            v37 = v74;
            v8 = v70;
            v20 = MEMORY[0x277D84F90];
            goto LABEL_57;
          }
        }

LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }
    }

    else
    {
      v34 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        goto LABEL_43;
      }
    }

    v37 = v20;
LABEL_57:
    v38 = v71;
    *(v71 + 8) = 0;
    sub_251C703A4();
    *v38 = 0x4000000000000000;
    if (v37 < 0 || (v37 & 0x4000000000000000) != 0)
    {
      goto LABEL_101;
    }

    v39 = *(v37 + 16);

LABEL_60:
    if (v39 > 0x7FFFFFFF)
    {
      goto LABEL_103;
    }

    *(v71 + 16) = v39;
    v74 = v20;
    if (v73)
    {
      v40 = sub_251C717F4();
      if (!v40)
      {
LABEL_75:
        v43 = MEMORY[0x277D84F90];
LABEL_76:
        v6 = v68;
        *(v68 + 8) = 0;
        sub_251C703A4();
        *v6 = 0x4008000000000000;
        if (v43 < 0 || (v43 & 0x4000000000000000) != 0)
        {
          goto LABEL_104;
        }

        v44 = *(v43 + 16);

        goto LABEL_79;
      }
    }

    else
    {
      v40 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_75;
      }
    }

    v8 = 0;
    v16 = (a2 & 0xC000000000000001);
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v16)
      {
        v41 = MEMORY[0x25308D460](v8, a2);
      }

      else
      {
        if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v41 = *(a2 + 8 * v8 + 32);
      }

      v42 = v41;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ([v41 logOrigin] == 2)
      {
        sub_251C71734();
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
      }

      else
      {
      }

      ++v8;
      if (v6 == v40)
      {
        v43 = v74;
        v8 = v70;
        goto LABEL_76;
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  v39 = sub_251C717F4();

  if (v39 >= 0xFFFFFFFF80000000)
  {
    goto LABEL_60;
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  v44 = sub_251C717F4();

  if (v44 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

LABEL_79:
  if (v44 > 0x7FFFFFFF)
  {
    goto LABEL_106;
  }

  *(v6 + 16) = v44;
  v45 = v67;
  *(v67 + 1) = 0;

  sub_251C703A4();
  *v45 = 0x4010000000000000;
  if (v73)
  {
    v46 = sub_251C717F4();

    if (v46 < 0xFFFFFFFF80000000)
    {
      goto LABEL_107;
    }
  }

  else
  {
    v46 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v46 > 0x7FFFFFFF)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v5 = v67;
  *(v67 + 4) = v46;
  type metadata accessor for PBHistogramSeries.Value(0);
  v21 = v64;
  sub_251C703A4();
  sub_251C648F0(0, &qword_27F47C4A8, type metadata accessor for PBBucket, MEMORY[0x277D84560]);
  v47 = *(v62 + 72);
  v48 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v49 = 4 * v47;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_251C747F0;
  v51 = v50 + v48;
  sub_251C64FC8(v72, v51, type metadata accessor for PBBucket);
  v6 = v69;
  sub_251C64FC8(v69, v51 + v47, type metadata accessor for PBBucket);
  a2 = v71;
  sub_251C64FC8(v71, v51 + 2 * v47, type metadata accessor for PBBucket);
  v52 = 3 * v47;
  v8 = v68;
  sub_251C64FC8(v68, v51 + v52, type metadata accessor for PBBucket);
  sub_251C64FC8(v5, v51 + v49, type metadata accessor for PBBucket);
  v21[2] = v50;
  if (qword_27F478930 == -1)
  {
    goto LABEL_85;
  }

LABEL_109:
  swift_once();
LABEL_85:
  v53 = qword_27F4A2878;
  v54 = sub_251C6FF94();
  v55 = [v53 stringFromDate_];

  v56 = sub_251C70F14();
  v58 = v57;

  sub_251C65098(v5, type metadata accessor for PBBucket);
  sub_251C65098(v8, type metadata accessor for PBBucket);
  sub_251C65098(a2, type metadata accessor for PBBucket);
  sub_251C65098(v6, type metadata accessor for PBBucket);
  sub_251C65098(v72, type metadata accessor for PBBucket);
  *v21 = v56;
  v21[1] = v58;
  v59 = v66;
  v21[3] = v65;
  v21[4] = v59;
}

id sub_251C63E28@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v69 = sub_251C70014();
  v62 = *(v69 - 8);
  v5 = MEMORY[0x28223BE20](v69);
  v60 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v58 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v58 - v10;
  v12 = *a1;
  v13 = 0xE000000000000000;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0xE000000000000000;
  type metadata accessor for PBMedicationTrackingDoseEvent(0);
  sub_251C703A4();
  v14 = [v12 scheduleItemIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_251C70F14();
    v13 = v17;
  }

  else
  {
    v16 = 0;
  }

  *(a3 + 32) = v16;
  *(a3 + 40) = v13;
  v18 = [v12 medicationIdentifier];
  v19 = sub_251C70F14();
  v21 = v20;

  v67 = v19;
  v68 = v21;
  v65 = sub_251C70F14();
  v66 = v22;
  v63 = 124;
  v64 = 0xE100000000000000;
  sub_251AD87E0();
  v23 = sub_251C715A4();
  v25 = v24;

  *(a3 + 48) = v23;
  *(a3 + 56) = v25;
  v26 = sub_251C714A4();
  v27 = *&v26;
  if (v28)
  {
    v27 = 0.0;
  }

  else if ((v26 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v27 <= -2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v27 >= 2147483650.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(a3 + 64) = v27;
  v29 = sub_251C714B4();
  v30 = *&v29;
  if (v31)
  {
    v30 = 0.0;
    goto LABEL_12;
  }

  if ((v29 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_12:
  if (v30 <= -2147483650.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v30 >= 2147483650.0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_20;
  }

  v59 = v9;
  *(a3 + 68) = v30;
  v32 = [v12 logStatus];
  if ((v32 - 1) >= 6)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  *(a3 + 16) = v33;
  *(a3 + 24) = 1;
  v34 = [v12 logOrigin];
  v35 = v34 == 1;
  if (v34 == 2)
  {
    v35 = 2;
  }

  *a3 = v35;
  *(a3 + 8) = 1;
  v36 = [v12 startDate];
  sub_251C6FFE4();

  if (qword_27F478930 != -1)
  {
    goto LABEL_29;
  }

LABEL_20:
  v37 = qword_27F4A2878;
  v38 = sub_251C6FF94();
  v39 = [v37 stringFromDate_];

  v40 = sub_251C70F14();
  v42 = v41;

  v43 = v62;
  v44 = *(v62 + 8);
  v45 = v11;
  v46 = v69;
  v44(v45, v69);
  *(a3 + 88) = v40;
  *(a3 + 96) = v42;
  result = [v12 scheduledDate];
  if (result)
  {
    v48 = v60;
    v49 = v43;
    v50 = result;
    sub_251C6FFE4();

    v51 = v59;
    (*(v49 + 32))(v59, v48, v46);
    v52 = *(*v61 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v53 = sub_251C6FF94();
    v54 = [v52 stringFromDate_];

    v55 = sub_251C70F14();
    v57 = v56;

    result = (v44)(v51, v46);
    *(a3 + 72) = v55;
    *(a3 + 80) = v57;
  }

  return result;
}

void sub_251C64310(uint64_t a1)
{
  if (!qword_27F47CFD8)
  {
    sub_251A82164(255);
    sub_251AA8E98(255, &qword_27F4796F8, &qword_27F479700, 0x277CCD650);
    sub_251C64B2C(&qword_27F478D78, sub_251A82164, MEMORY[0x277CBCD90]);
    v1 = sub_251C70784();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CFD8);
    }
  }
}

void sub_251C643D4(uint64_t a1)
{
  if (!qword_27F47CFE0)
  {
    sub_251C644C0(255);
    sub_251C64310(255);
    sub_251C64B2C(&qword_27F47C510, sub_251C644C0, MEMORY[0x277CBCD90]);
    sub_251C64B2C(&qword_27F47CFE8, sub_251C64310, MEMORY[0x277CBCB10]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CFE0);
    }
  }
}

void sub_251C644C0(uint64_t a1)
{
  if (!qword_27F47C4F8)
  {
    type metadata accessor for PBTypedData(255);
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C4F8);
    }
  }
}

void sub_251C64530(uint64_t a1)
{
  if (!qword_27F47CFF0)
  {
    sub_251C643D4(255);
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251C64B2C(&qword_27F47CFF8, sub_251C643D4, MEMORY[0x277CBCCE0]);
    v1 = sub_251C70784();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CFF0);
    }
  }
}

uint64_t sub_251C645DC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ClinicalSharingMedicationDoseEventQuery(0);

  return sub_251C61718(a1, a2);
}

uint64_t sub_251C6465C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ClinicalSharingMedicationDoseEventQuery(0);

  return sub_251C6179C(a1, a2);
}

uint64_t objectdestroyTm_12()
{
  v1 = (type metadata accessor for ClinicalSharingMedicationDoseEventQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_251C6FAE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_251C64840(uint64_t a1)
{
  if (!qword_27F47D008)
  {
    sub_251C648F0(255, &qword_27F47D010, type metadata accessor for PBTypedData, MEMORY[0x277D83940]);
    sub_251C64954();
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47D008);
    }
  }
}

void sub_251C648F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251C64954()
{
  result = qword_27F47D018;
  if (!qword_27F47D018)
  {
    sub_251C648F0(255, &qword_27F47D010, type metadata accessor for PBTypedData, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47D018);
  }

  return result;
}

void sub_251C649DC(uint64_t a1)
{
  if (!qword_27F47D020)
  {
    sub_251C648F0(255, &qword_27F47D010, type metadata accessor for PBTypedData, MEMORY[0x277D83940]);
    sub_251A82284();
    sub_251C64954();
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47D020);
    }
  }
}

uint64_t sub_251C64A98(uint64_t a1, uint64_t a2)
{
  sub_251C648F0(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C64B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_251C64B74(unint64_t a1)
{
  v34 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_251C717F4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      v32 = v2;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x25308D460](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v33 = v8;
        v9 = v7;
        v10 = [v7 medicationIdentifier];
        sub_251C70F14();

        sub_251C70F14();
        v30 = sub_251AD87E0();
        v31 = v30;
        v29 = v30;
        v28 = MEMORY[0x277D837D0];
        v11 = sub_251C715A4();
        v13 = v12;

        v15 = sub_251AC8C58(v11, v13);
        v16 = v4[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_22;
        }

        v19 = v14;
        if (v4[3] < v18)
        {
          sub_251ACCA04(v18, 1);
          v4 = v34;
          v20 = sub_251AC8C58(v11, v13);
          if ((v19 & 1) != (v21 & 1))
          {
            result = sub_251C71A14();
            __break(1u);
            return result;
          }

          v15 = v20;
        }

        if (v19)
        {

          v6 = (v4[7] + 8 * v15);
          MEMORY[0x25308CEE0](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_251C71174();
          }

          sub_251C71194();
        }

        else
        {
          sub_251A82418();
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_251C74560;
          *(v22 + 32) = v9;
          v4[(v15 >> 6) + 8] |= 1 << v15;
          v23 = (v4[6] + 16 * v15);
          *v23 = v11;
          v23[1] = v13;
          *(v4[7] + 8 * v15) = v22;
          v24 = v4[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_23;
          }

          v4[2] = v26;
        }

        ++v3;
        if (v33 == v32)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

void sub_251C64E90(uint64_t a1)
{
  if (!qword_27F47D030)
  {
    sub_251C70014();
    sub_251AA8E98(255, &qword_27F4796F8, &qword_27F479700, 0x277CCD650);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47D030);
    }
  }
}

uint64_t sub_251C64F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C648F0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251C64FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C65030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C65098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C650F8()
{
  v1 = type metadata accessor for PBBlobDeleteResult(0);
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  while (v8 < *(v6 + 16))
  {
    sub_251C65224(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v5);
    v9 = *(v5 + 4);
    v10 = v5[40];
    result = sub_251C65288(v5);
    if (v10 == 1)
    {
      if (v9 >= 4)
      {
        return 1;
      }
    }

    else if (v9 == 5)
    {
      return 1;
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251C65224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBBlobDeleteResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C65288(uint64_t a1)
{
  v2 = type metadata accessor for PBBlobDeleteResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C652E4@<X0>(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v60 = a3;
  v58 = a2;
  v66 = a4;
  v5 = sub_251C70074();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2C00(0);
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2D3C(0);
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C66C04(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  v16 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - v20;
  v67[0] = *a1;
  v22 = v67[0];
  type metadata accessor for ClinicalSharingSyncContext(0);

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v13 + 8))(v15, v12);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v16, MEMORY[0x277CBCF40]);
  v23 = sub_251C70A94();
  (*(v19 + 8))(v21, v18);
  v24 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v22 + v24, v67);
  v25 = v68;
  v26 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  (*(v26 + 16))(v25, v26);
  v28 = v27;
  __swift_destroy_boxed_opaque_existential_1(v67);
  if (v28)
  {

    v67[0] = v23;
    *(swift_allocObject() + 16) = v58 & 1;
    v29 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB2CCC(0);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v29, MEMORY[0x277CBCD90]);
    v30 = v59;
    sub_251C70B54();

    v31 = swift_allocObject();
    v32 = v60;
    *(v31 + 16) = v60;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_251C66A44;
    *(v33 + 24) = v31;
    v34 = v32;
    sub_251C70964();
    sub_251C66DAC(&qword_27F479440, sub_251AB2C00, MEMORY[0x277CBCCC0]);
    v35 = v61;
    v36 = v63;
    sub_251C70B94();

    (*(v62 + 8))(v30, v36);
    sub_251C66DAC(&qword_27F479450, sub_251AB2D3C, MEMORY[0x277CBCCE0]);
    v37 = v65;
    v38 = sub_251C70A94();

    result = (*(v64 + 8))(v35, v37);
  }

  else
  {
    v40 = v55;
    v41 = v56;
    v42 = v57;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v43 = sub_251C70764();
    __swift_project_value_buffer(v43, qword_2813E8130);

    v44 = sub_251C70744();
    v45 = sub_251C713C4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v67[0] = v47;
      *v46 = 136315138;
      (*(v41 + 16))(v40, v22 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v42);
      sub_251C66DAC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v48 = sub_251C719A4();
      v49 = v40;
      v51 = v50;
      (*(v41 + 8))(v49, v42);
      v52 = sub_251B10780(v48, v51, v67);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_251A6C000, v44, v45, "No DocRef exists to read. Account: %s. ResourceID is missing", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x25308E2B0](v47, -1, -1);
      MEMORY[0x25308E2B0](v46, -1, -1);
    }

    v67[0] = v23;
    v53 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v53, MEMORY[0x277CBCD90]);
    v38 = sub_251C70A94();
  }

  *v66 = v38;
  return result;
}

uint64_t sub_251C65B6C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v36 = a2;
  v7 = sub_251C70074();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);

  v13 = sub_251C70744();
  v14 = sub_251C713C4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v31 = v3;
    v18 = v17;
    v33[0] = v17;
    *v16 = 136315138;
    (*(v8 + 16))(v10, v11 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v7);
    sub_251C66DAC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_251C719A4();
    v20 = v8;
    v22 = v21;
    (*(v20 + 8))(v10, v7);
    v23 = sub_251B10780(v19, v22, v33);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_251A6C000, v13, v14, "Preparing read request. Account: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v24 = v18;
    v4 = v31;
    MEMORY[0x25308E2B0](v24, -1, -1);
    v25 = v16;
    a3 = v32;
    MEMORY[0x25308E2B0](v25, -1, -1);
  }

  v26 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v11 + v26, v33);
  v27 = v34;
  v28 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  sub_251BBBE70(v36 & 1, v27, v28, a3);
  if (!v4)
  {
    sub_251AB2CCC(0);
    *(a3 + *(v29 + 48)) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_251C65E84(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_251C6F9A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_251AB31B0(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C66A4C(0);
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  MEMORY[0x28223BE20](v14);
  v33 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C66C68(0);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  MEMORY[0x28223BE20](v17);
  v34 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_251C66E04(a1, a2, 3, a3);
  (*(v7 + 16))(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  (*(v7 + 32))(v21 + v20, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_251AB354C;
  *(v22 + 24) = v21;
  sub_251C66AE8(0, &qword_27F479470, &qword_27F479478, &qword_27F479480, 0x277CCAD28);
  sub_251AB3264(0, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251AB32E4();
  sub_251C70B54();

  v23 = MEMORY[0x277CBCCC0];
  sub_251C66DAC(&qword_27F4794B8, sub_251AB31B0, MEMORY[0x277CBCCC0]);
  v24 = sub_251C70A94();
  (*(v11 + 8))(v13, v10);
  v39 = v24;
  sub_251C66AE8(0, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251C66B64(0);
  sub_251AB34D4();
  v25 = v33;
  sub_251C70B54();

  sub_251C70964();
  type metadata accessor for ClinicalSharingSyncContext(0);
  v26 = MEMORY[0x277CBCD88];
  sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
  sub_251C66DAC(&qword_27F47D050, sub_251C66A4C, v23);
  sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v26, MEMORY[0x277CBCD90]);
  v28 = v34;
  v27 = v35;
  sub_251C70B94();
  (*(v36 + 8))(v25, v27);
  sub_251C66DAC(&qword_27F47D058, sub_251C66C68, MEMORY[0x277CBCCE0]);
  v29 = v37;
  v30 = sub_251C70A94();
  (*(v38 + 8))(v28, v29);
  return v30;
}

uint64_t sub_251C6642C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_251C70EE4();
  v11 = [a4 valueForHTTPHeaderField_];

  if (v11)
  {
    v38 = sub_251C70F14();
    v13 = v12;

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v14 = sub_251C70764();
    __swift_project_value_buffer(v14, qword_2813E8130);

    v15 = sub_251C70744();
    v16 = sub_251C713C4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v37 = a1;
      v18 = swift_slowAlloc();
      v43 = v18;
      *v17 = 136315394;
      sub_251C70074();
      sub_251C66DAC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v19 = sub_251C719A4();
      v21 = sub_251B10780(v19, v20, &v43);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *&v39[0] = v38;
      *(&v39[0] + 1) = v13;

      sub_251C719F4();
      v22 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v23 = sub_251C70F74();
      v25 = sub_251B10780(v23, v24, &v43);

      *(v17 + 14) = v25;
      v6 = v5;
      _os_log_impl(&dword_251A6C000, v15, v16, "ETag found while reading DocRef. Account: %s eTag: %s", v17, 0x16u);
      swift_arrayDestroy();
      v26 = v18;
      a1 = v37;
      MEMORY[0x25308E2B0](v26, -1, -1);
      MEMORY[0x25308E2B0](v17, -1, -1);
    }

    sub_251C6F9F4();
    swift_allocObject();
    sub_251C6F9E4();
    sub_251C48AD0();
    sub_251C6F9D4();

    if (v6)
    {
    }

    else
    {
      v41[0] = v39[0];
      v41[1] = v39[1];
      v41[2] = v39[2];
      v42 = v40;
      sub_251B27734(v38, v13);

      sub_251C187AC(a1);
      sub_251C18EEC(v41);
    }
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v27 = sub_251C70764();
    __swift_project_value_buffer(v27, qword_2813E8130);

    v28 = sub_251C70744();
    v29 = sub_251C713D4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v39[0] = v31;
      *v30 = 136315138;
      sub_251C70074();
      sub_251C66DAC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v32 = sub_251C719A4();
      v34 = sub_251B10780(v32, v33, v39);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_251A6C000, v28, v29, "No eTag found while reading DocRef. Account: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x25308E2B0](v31, -1, -1);
      MEMORY[0x25308E2B0](v30, -1, -1);
    }

    sub_251B26550();
    swift_allocError();
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *v35 = 0;
    *(v35 + 24) = 3;
    swift_willThrow();
  }

  return a5;
}

uint64_t sub_251C66974@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  sub_251C66B64(0);
  result = sub_251C6642C(a2 + *(v8 + 48), v4, v5, v6, v7);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_251C669E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251C66B64(0);
  result = sub_251B27990(a1 + *(v4 + 48));
  *a2 = result;
  return result;
}

void sub_251C66A4C(uint64_t a1)
{
  if (!qword_27F47D038)
  {
    sub_251C66AE8(255, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
    sub_251C66B64(255);
    sub_251AB34D4();
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47D038);
    }
  }
}

void sub_251C66AE8(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_251AB3264(255, a3, a4, a5);
    sub_251A82284();
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251C66B64(uint64_t a1)
{
  if (!qword_27F47D040)
  {
    type metadata accessor for ClinicalSharingSyncContext(255);
    sub_251C66C04(255, &qword_27F47A170, type metadata accessor for PBLookupInfo, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47D040);
    }
  }
}

void sub_251C66C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251C66CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    v9 = MEMORY[0x277CBCD88];
    sub_251AFD990(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    a3(255);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v9, MEMORY[0x277CBCD90]);
    sub_251C66DAC(a4, a5, MEMORY[0x277CBCCC0]);
    v10 = sub_251C708D4();
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_251C66DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251C66E04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = a4;
  v51 = a3;
  v56 = a2;
  v6 = sub_251C6F9A4();
  v7 = *(v6 - 8);
  v46 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C712C4();
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  MEMORY[0x28223BE20](v10);
  v57 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C67574(0);
  v14 = *(v13 - 8);
  v52 = v13;
  v53 = v14;
  MEMORY[0x28223BE20](v13);
  v59 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C67698(0);
  v17 = *(v16 - 8);
  v54 = v16;
  v55 = v17;
  MEMORY[0x28223BE20](v16);
  v50 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = swift_allocBox();
  v20 = v19;
  v21 = *(v7 + 16);
  v45 = a1;
  v21(v19, a1, v6);
  v22 = a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken;
  v23 = *(a2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken);
  v24 = *(v22 + 8);
  v60 = 0x20726572616542;
  v61 = 0xE700000000000000;

  MEMORY[0x25308CDA0](v23, v24);

  sub_251C6F994();

  v21(v9, v20, v6);
  sub_251C712D4();
  (*(v7 + 8))(v9, v6);
  v21(v9, a1, v6);
  v25 = *(v7 + 80);
  v26 = (v25 + 16) & ~v25;
  v44 = v46 + 7;
  v27 = &v46[v26 + 7] & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v46 = *(v7 + 32);
  (v46)(v28 + v26, v9, v6);
  *(v28 + v27) = v56;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_251C67D10;
  *(v29 + 24) = v28;
  sub_251C67620(0);
  sub_251C68A98(&qword_27F479BE0, MEMORY[0x277CC9D10], MEMORY[0x277CC9D08]);

  v30 = v48;
  v31 = v57;
  sub_251C70B54();

  (*(v49 + 8))(v31, v30);
  v21(v9, v45, v6);
  v32 = (v25 + 24) & ~v25;
  v33 = &v44[v32] & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v51;
  (v46)(v35 + v32, v9, v6);
  *(v35 + v33) = v56;
  v36 = v58;
  *(v35 + v34) = v58;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v47;
  sub_251C67784(0);
  sub_251C68A98(&qword_27F47D070, sub_251C67574, MEMORY[0x277CBCCC0]);
  sub_251C68A98(&qword_27F479498, sub_251C67784, MEMORY[0x277CBCD90]);

  v37 = v36;

  v38 = v50;
  v39 = v52;
  v40 = v59;
  sub_251C70BA4();

  (*(v53 + 8))(v40, v39);
  sub_251C68A98(&qword_27F47D078, sub_251C67698, MEMORY[0x277CBCD30]);
  v41 = v54;
  v42 = sub_251C70A94();
  (*(v55 + 8))(v38, v41);

  return v42;
}

uint64_t sub_251C67474(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7 && (v8 = a3, [v7 statusCode] - 200 < 0x64))
  {
    sub_251A858C4(a1, a2);
  }

  else
  {
    v9 = sub_251C6F904();
    v11 = v10;
    sub_251B26550();
    swift_allocError();
    *v12 = v9;
    *(v12 + 8) = v11;
    *(v12 + 16) = v7;
    *(v12 + 24) = 1;
    swift_willThrow();
  }

  return a1;
}

void sub_251C67574(uint64_t a1)
{
  if (!qword_27F47D060)
  {
    sub_251C712C4();
    sub_251C67620(255);
    sub_251C68A98(&qword_27F479BE0, MEMORY[0x277CC9D10], MEMORY[0x277CC9D08]);
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47D060);
    }
  }
}

void sub_251C67620(uint64_t a1)
{
  if (!qword_27F479478)
  {
    sub_251ADB644();
    type metadata accessor for ClinicalSharingSyncContext(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F479478);
    }
  }
}

void sub_251C67698(uint64_t a1)
{
  if (!qword_27F47D068)
  {
    sub_251C67574(255);
    sub_251C67784(255);
    sub_251C68A98(&qword_27F47D070, sub_251C67574, MEMORY[0x277CBCCC0]);
    sub_251C68A98(&qword_27F479498, sub_251C67784, MEMORY[0x277CBCD90]);
    v1 = sub_251C70914();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47D068);
    }
  }
}

void sub_251C67784(uint64_t a1)
{
  if (!qword_27F479470)
  {
    sub_251C67620(255);
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479470);
    }
  }
}

uint64_t sub_251C677F4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v52 = a1;
  v53 = a2;
  v7 = sub_251C6F9A4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v51 = &v47[-v13];
  MEMORY[0x28223BE20](v12);
  v15 = &v47[-v14];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v50 = a3;
    if ([v17 statusCode] == 401)
    {
      v18 = sub_251C70EE4();
      v19 = [v17 valueForHTTPHeaderField_];

      if (v19)
      {
        sub_251C70F14();
        v49 = a4;

        v20 = sub_251C71064();
        a4 = v49;

        if (v20)
        {
          v21 = 0;
LABEL_8:
          v22 = sub_251C6F904();
          v24 = v23;
          sub_251B26550();
          swift_allocError();
          *v25 = v22;
          *(v25 + 8) = v24;
          *(v25 + 16) = 0;
          *(v25 + 24) = v21;
          swift_willThrow();

          return v21;
        }
      }
    }

    if ([v17 statusCode] == 409)
    {
      v21 = 2;
      goto LABEL_8;
    }
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v26 = sub_251C70764();
  __swift_project_value_buffer(v26, qword_2813E8130);
  v27 = *(v8 + 16);
  v27(v15, a4, v7);
  v28 = a3;
  v29 = sub_251C70744();
  v30 = sub_251C713C4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v48 = v30;
    v32 = v31;
    v49 = swift_slowAlloc();
    v55 = v49;
    *v32 = 136315394;
    v50 = v28;
    v33 = v51;
    v27(v51, v15, v7);
    v27(v11, v33, v7);
    sub_251C719F4();
    v34 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v35 = sub_251C70F74();
    v37 = v36;
    v38 = *(v8 + 8);
    v39 = v33;
    v28 = v50;
    v38(v39, v7);
    v38(v15, v7);
    v40 = sub_251B10780(v35, v37, &v55);

    *(v32 + 4) = v40;
    *(v32 + 12) = 2080;
    v41 = HKSensitiveLogItem();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v42 = sub_251C70F74();
    v44 = sub_251B10780(v42, v43, &v55);

    *(v32 + 14) = v44;
    _os_log_impl(&dword_251A6C000, v29, v48, "HTTPURLResponse received. Request: %s. Response: %s", v32, 0x16u);
    v45 = v49;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v45, -1, -1);
    MEMORY[0x25308E2B0](v32, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v15, v7);
  }

  v28;
  v21 = v52;
  sub_251A858C4(v52, v53);

  return v21;
}

uint64_t sub_251C67D10(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(sub_251C6F9A4() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_251C677F4(a1, a2, a3, v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_251C67DC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2]);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

void sub_251C67E04(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v81 = a5;
  v82 = a6;
  v80 = a4;
  sub_251C687DC(0);
  v12 = v11;
  v83 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v79 = &v74[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_251C6F9A4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v74[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16);
  v85 = &v74[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v86 = &v74[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v74[-v23];
  v25 = *a1;
  v94 = v25;
  v26 = v25;
  v84 = sub_251A82284();
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  if (v93)
  {
    sub_251AB2F88(v90, v91, v92, v93);
LABEL_4:

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v27 = sub_251C70764();
    __swift_project_value_buffer(v27, qword_2813E8130);
    v28 = *(v15 + 16);
    v28(v18, a3, v14);
    v29 = v25;
    v30 = sub_251C70744();
    v31 = sub_251C713C4();

    v87 = v30;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v90 = v83;
      *v32 = 136315394;
      v33 = v86;
      v28(v86, v18, v14);
      LODWORD(v82) = v31;
      v28(v85, v33, v14);
      sub_251C719F4();
      v34 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v35 = sub_251C70F74();
      v37 = v36;
      v38 = *(v15 + 8);
      v38(v33, v14);
      v38(v18, v14);
      v39 = sub_251B10780(v35, v37, &v90);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2080;
      v89 = v25;
      v40 = v25;
      sub_251C719F4();
      v41 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v42 = sub_251C70F74();
      v44 = sub_251B10780(v42, v43, &v90);

      *(v32 + 14) = v44;
      v45 = v87;
      _os_log_impl(&dword_251A6C000, v87, v82, "Error received for request. Request: %s. Error: %s", v32, 0x16u);
      v46 = v83;
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v46, -1, -1);
      MEMORY[0x25308E2B0](v32, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    swift_willThrow();
    v47 = v25;
    return;
  }

  sub_251AB2F88(v90, v91, v92, 0);
  if (a2 < 1)
  {
    swift_willThrow();
    v62 = v94;
    v63 = v25;
  }

  else
  {
    v78 = v12;
    v84 = a7;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v48 = sub_251C70764();
    __swift_project_value_buffer(v48, qword_2813E8130);
    v49 = *(v15 + 16);
    v49(v24, a3, v14);
    v50 = sub_251C70744();
    v51 = sub_251C713C4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v88 = v77;
      *v52 = 134218242;
      *(v52 + 4) = a2;
      *(v52 + 12) = 2080;
      v76 = v50;
      v53 = v86;
      v49(v86, v24, v14);
      v75 = v51;
      v49(v85, v53, v14);
      sub_251C719F4();
      v54 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v55 = sub_251C70F74();
      v57 = v56;
      v58 = *(v15 + 8);
      v58(v53, v14);
      v58(v24, v14);
      v59 = sub_251B10780(v55, v57, &v88);

      *(v52 + 14) = v59;
      v60 = v76;
      _os_log_impl(&dword_251A6C000, v76, v75, "Access denied. Refresh access token and trying again. Retries left: %ld. Request: %s", v52, 0x16u);
      v61 = v77;
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x25308E2B0](v61, -1, -1);
      MEMORY[0x25308E2B0](v52, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v24, v14);
    }

    v64 = v80;
    v65 = __swift_project_boxed_opaque_existential_1((v80 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore), *(v80 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore + 24));
    v89 = sub_251AC38B8(v64 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, *v65);
    v66 = swift_allocObject();
    v68 = v81;
    v67 = v82;
    v66[2] = v64;
    v66[3] = v68;
    v66[4] = v67;
    v66[5] = a2;

    v69 = v68;

    sub_251C70964();
    sub_251C688C4(0);
    sub_251C67620(0);
    sub_251C67784(0);
    v70 = MEMORY[0x277CBCD90];
    sub_251C68A98(&qword_2813E2168, sub_251C688C4, MEMORY[0x277CBCD90]);
    sub_251C68A98(&qword_27F479498, sub_251C67784, v70);
    v71 = v79;
    sub_251C70B94();

    sub_251C68A98(&qword_27F47D088, sub_251C687DC, MEMORY[0x277CBCCE0]);
    v72 = v78;
    v73 = sub_251C70A94();
    (*(v83 + 8))(v71, v72);
    *v84 = v73;
  }
}

void sub_251C68718(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_251C6F9A4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_251C67E04(a1, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), a2);
}

void sub_251C687DC(uint64_t a1)
{
  if (!qword_27F47D080)
  {
    sub_251C67784(255);
    sub_251C688C4(255);
    v1 = MEMORY[0x277CBCD90];
    sub_251C68A98(&qword_27F479498, sub_251C67784, MEMORY[0x277CBCD90]);
    sub_251C68A98(&qword_2813E2168, sub_251C688C4, v1);
    v2 = sub_251C708D4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F47D080);
    }
  }
}

void sub_251C688C4(uint64_t a1)
{
  if (!qword_2813E2160)
  {
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2160);
    }
  }
}

uint64_t sub_251C6892C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = sub_251C6F9A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  v17 = swift_projectBox();
  sub_251B27540(v16, v15);
  swift_beginAccess();
  result = (*(v12 + 16))(v14, v17, v11);
  if (__OFSUB__(a5, 1))
  {
    __break(1u);
  }

  else
  {
    v19 = sub_251C66E04(v14, a2, a5 - 1, a3);
    result = (*(v12 + 8))(v14, v11);
    *a6 = v19;
  }

  return result;
}

uint64_t sub_251C68A98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WebRequestPerformer.__allocating_init(sessionConfiguration:attribution:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    sub_251BB4D50();
    v4 = sub_251B37FB0();
  }

  v5 = objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate());
  v6 = a1;
  v7 = [v5 init];
  v8 = swift_allocObject();
  v9 = [objc_opt_self() sessionWithConfiguration:v4 delegate:v7 delegateQueue:0];

  *(v8 + 16) = v9;
  *(v8 + 24) = a2;
  return v8;
}

uint64_t _s19HealthRecordsDaemon19WebRequestPerformerC19performFileDownload3for15timeoutInterval11cachePolicy10Foundation3URLVAA0dE0_p_SdSgSo017NSURLRequestCacheN0VSgtYaAA0dE13ResponseErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 48) = v7;
  *(v8 + 56) = a7;
  *(v8 + 97) = a6;
  *(v8 + 96) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  type metadata accessor for WebRequestResponseError.ErrorType(0);
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C68C70, 0, 0);
}

void sub_251C68C70()
{

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_251C68D54;

  JUMPOUT(0x251C6A968);
}

uint64_t sub_251C68D54(void *a1)
{

  if (v1)
  {
    v3 = sub_251C68EE4;
  }

  else
  {

    v3 = sub_251C68E6C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251C68E6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251C68EE4()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[3];
  sub_251C17EA8(v0[9], v1, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C17EA8(v1, v2, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4(v4, v3);
  v5 = type metadata accessor for WebRequestResponseError(0);
  sub_251C6CA78(v2, v3 + *(v5 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C6C980(&qword_27F478E50, type metadata accessor for WebRequestResponseError, &protocol conformance descriptor for WebRequestResponseError);
  swift_willThrowTypedImpl();
  sub_251C6CAE0(v2, type metadata accessor for WebRequestResponseError.ErrorType);

  v6 = v0[1];

  return v6();
}

uint64_t _s19HealthRecordsDaemon19WebRequestPerformerC4data3for15timeoutInterval11cachePolicyAA0dE8ResponseVAA0dE0_p_SdSgSo017NSURLRequestCacheL0VSgtYaAA0deM5ErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 88) = v7;
  *(v8 + 96) = a7;
  *(v8 + 137) = a6;
  *(v8 + 136) = a4;
  *(v8 + 72) = a3;
  *(v8 + 80) = a5;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  type metadata accessor for WebRequestResponseError.ErrorType(0);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C690F0, 0, 0);
}

void sub_251C690F0()
{

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_251C691D4;

  JUMPOUT(0x251C695F4);
}

uint64_t sub_251C691D4(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;

  if (v1)
  {
    v4 = sub_251C693EC;
  }

  else
  {
    v4 = sub_251C692EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251C692EC()
{
  v2 = v0[5];
  v1 = v0[6];
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
  sub_251A83028(v0[5], v0[6]);
  v2 = 0;
  v1 = 0xF000000000000000;
LABEL_10:
  v6 = v0[3];
  v7 = v0[7];
  sub_251A823B4(v0[8], v7);
  v7[5] = v2;
  v7[6] = v1;
  v7[7] = v6;

  v8 = v0[1];

  return v8();
}

uint64_t sub_251C693EC()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[8];
  sub_251C17EA8(v0[14], v1, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C17EA8(v1, v2, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4(v4, v3);
  v5 = type metadata accessor for WebRequestResponseError(0);
  sub_251C6CA78(v2, v3 + *(v5 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C6C980(&qword_27F478E50, type metadata accessor for WebRequestResponseError, &protocol conformance descriptor for WebRequestResponseError);
  swift_willThrowTypedImpl();
  sub_251C6CAE0(v2, type metadata accessor for WebRequestResponseError.ErrorType);

  v6 = v0[1];

  return v6();
}

uint64_t WebRequestPerformer.copy(with:)(uint64_t a1)
{
  v3 = *v1;
  v4 = [*(v1 + 16) configuration];
  swift_getObjectType();
  swift_unknownObjectRetain();
  v5 = sub_251C6C5E0(v4, a1, 1, v3);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_251C695F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = a8;
  *(v8 + 200) = v13;
  *(v8 + 176) = a5;
  *(v8 + 184) = a7;
  *(v8 + 393) = a6;
  *(v8 + 392) = a4;
  *(v8 + 160) = a2;
  *(v8 + 168) = a3;
  *(v8 + 152) = a1;
  sub_251C6CA24(0, &qword_27F4798C8, type metadata accessor for WebRequestResponseError.ErrorType);
  *(v8 + 208) = swift_task_alloc();
  v9 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  *(v8 + 216) = v9;
  *(v8 + 224) = *(v9 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  sub_251C6CA24(0, &qword_2813E7520, MEMORY[0x277CC9260]);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v10 = sub_251C6F9A4();
  *(v8 + 264) = v10;
  *(v8 + 272) = *(v10 - 8);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C69804, 0, 0);
}

uint64_t sub_251C69804()
{
  v52 = v0;
  v1 = *(v0 + 393);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 392);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  WebRequest.urlRequest(attribution:timeoutInterval:cachePolicy:)(*(v3 + 24), v6, v4 & 1, v2, v1 & 1, v7, v8);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 304);
  v10 = *(v0 + 312);
  v11 = *(v0 + 296);
  v12 = *(v0 + 264);
  v13 = *(v0 + 272);
  v14 = sub_251C70764();
  *(v0 + 320) = __swift_project_value_buffer(v14, qword_2813E8130);
  v15 = *(v13 + 16);
  *(v0 + 328) = v15;
  *(v0 + 336) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v9, v10, v12);
  v15(v11, v10, v12);
  v16 = sub_251C70744();
  v17 = sub_251C713C4();
  v18 = os_log_type_enabled(v16, v17);
  v20 = *(v0 + 296);
  v19 = *(v0 + 304);
  v22 = *(v0 + 264);
  v21 = *(v0 + 272);
  if (v18)
  {
    v49 = v17;
    log = v16;
    v23 = *(v0 + 256);
    v24 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v51 = v48;
    *v24 = 136315394;
    v25 = sub_251C6F904();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xD000000000000010;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0x8000000251C92BF0;
    }

    v29 = *(v21 + 8);
    v29(v19, v22);
    v30 = sub_251B10780(v27, v28, &v51);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    sub_251C6F964();
    v31 = sub_251C6FE64();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 48))(v23, 1, v31);
    v34 = *(v0 + 256);
    if (v33 == 1)
    {
      sub_251C6C9C8(*(v0 + 256), &qword_2813E7520, MEMORY[0x277CC9260]);
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v35 = sub_251C6FDA4();
      v36 = v37;
      (*(v32 + 8))(v34, v31);
    }

    v38 = *(v0 + 296);
    v39 = *(v0 + 264);
    *(v0 + 120) = v35;
    *(v0 + 128) = v36;
    sub_251AD56B0();
    sub_251C719F4();
    v40 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v41 = sub_251C70F74();
    v43 = v42;
    v29(v38, v39);
    v44 = sub_251B10780(v41, v43, &v51);

    *(v24 + 14) = v44;
    _os_log_impl(&dword_251A6C000, log, v49, "WebRequestPerformer: making request: %s %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v48, -1, -1);
    MEMORY[0x25308E2B0](v24, -1, -1);
  }

  else
  {

    v29 = *(v21 + 8);
    v29(v20, v22);
    v29(v19, v22);
  }

  *(v0 + 344) = v29;
  v45 = swift_task_alloc();
  *(v0 + 352) = v45;
  *v45 = v0;
  v45[1] = sub_251C69C78;
  v46 = *(v0 + 312);

  return MEMORY[0x28211ECF8](v46, 0);
}

uint64_t sub_251C69C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[45] = a1;
  v5[46] = a2;
  v5[47] = a3;
  v5[48] = v3;

  if (v3)
  {
    v6 = sub_251C6A654;
  }

  else
  {
    v6 = sub_251C69D90;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_251C69D90()
{
  v77 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    v7 = *(v0 + 368);
    v13 = *(v0 + 376);
    v9 = *(v0 + 360);
    v14 = *(v0 + 240);
    *v14 = v13;
    swift_storeEnumTagMultiPayload();
    sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType, &protocol conformance descriptor for WebRequestResponseError.ErrorType);
    v15 = v13;
    swift_willThrowTypedImpl();
    v11 = swift_allocError();
    sub_251C17EA8(v14, v16, type metadata accessor for WebRequestResponseError.ErrorType);

    goto LABEL_5;
  }

  v2 = v1;
  v3 = *(v0 + 384);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v6 = *(v0 + 232);
  sub_251A858C4(v5, v4);
  sub_251C6BD18(v5, v4, v6);
  if (v3)
  {
    v7 = *(v0 + 368);
    v8 = *(v0 + 376);
    v9 = *(v0 + 360);
    v10 = *(v0 + 232);
    sub_251A83028(v9, v7);
    sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType, &protocol conformance descriptor for WebRequestResponseError.ErrorType);
    v11 = swift_allocError();
    sub_251C17EA8(v10, v12, type metadata accessor for WebRequestResponseError.ErrorType);

LABEL_5:
    sub_251A83028(v9, v7);
    (*(v0 + 344))(*(v0 + 312), *(v0 + 264));
    v17 = v11;
    v18 = sub_251C70744();
    v19 = sub_251C713D4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v76[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_251BBFFA4(*(v0 + 88), *(v0 + 96));
      v24 = sub_251B10780(v22, v23, v76);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_251A6C000, v18, v19, "WebRequestPerformer: error response: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x25308E2B0](v21, -1, -1);
      MEMORY[0x25308E2B0](v20, -1, -1);
    }

    *(v0 + 136) = v11;
    v25 = v11;
    v26 = v11;
    sub_251A82284();
    v27 = swift_dynamicCast();
    v28 = *(v0 + 216);
    v29 = *(v0 + 224);
    v30 = *(v0 + 200);
    v31 = *(v0 + 208);
    if (v27)
    {

      (*(v29 + 56))(v31, 0, 1, v28);
      sub_251C17EA8(v31, v30, type metadata accessor for WebRequestResponseError.ErrorType);
    }

    else
    {
      (*(v29 + 56))(*(v0 + 208), 1, 1, *(v0 + 216));
      *v30 = v11;
      swift_storeEnumTagMultiPayload();
    }

    sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType, &protocol conformance descriptor for WebRequestResponseError.ErrorType);
    swift_willThrowTypedImpl();

    v32 = *(v0 + 8);

    return v32();
  }

  v75 = v2;
  v34 = *(v0 + 328);
  v35 = *(v0 + 312);
  v37 = *(v0 + 280);
  v36 = *(v0 + 288);
  v38 = *(v0 + 264);
  sub_251A83028(*(v0 + 360), *(v0 + 368));
  v34(v36, v35, v38);
  v34(v37, v35, v38);
  v39 = sub_251C70744();
  v40 = sub_251C713C4();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 344);
  if (v41)
  {
    v74 = v40;
    v43 = *(v0 + 288);
    v44 = *(v0 + 264);
    v45 = *(v0 + 248);
    v46 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v76[0] = v73;
    *v46 = 136315394;
    v47 = sub_251C6F904();
    if (v48)
    {
      v49 = v47;
    }

    else
    {
      v49 = 0xD000000000000010;
    }

    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0x8000000251C92BF0;
    }

    v42(v43, v44);
    v51 = sub_251B10780(v49, v50, v76);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    sub_251C6F964();
    v52 = sub_251C6FE64();
    v53 = *(v52 - 8);
    v54 = (*(v53 + 48))(v45, 1, v52);
    v55 = *(v0 + 248);
    if (v54 == 1)
    {
      sub_251C6C9C8(*(v0 + 248), &qword_2813E7520, MEMORY[0x277CC9260]);
      v56 = 0;
      v57 = 0;
    }

    else
    {
      v56 = sub_251C6FDA4();
      v57 = v62;
      (*(v53 + 8))(v55, v52);
    }

    v63 = *(v0 + 344);
    v64 = *(v0 + 280);
    v65 = *(v0 + 264);
    v72 = *(v0 + 312);
    *(v0 + 104) = v56;
    *(v0 + 112) = v57;
    sub_251AD56B0();
    sub_251C719F4();
    v66 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v67 = sub_251C70F74();
    v69 = v68;
    v63(v64, v65);
    v70 = sub_251B10780(v67, v69, v76);

    *(v46 + 14) = v70;
    _os_log_impl(&dword_251A6C000, v39, v74, "WebRequestPerformer: request succeeded for: %s %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v73, -1, -1);
    MEMORY[0x25308E2B0](v46, -1, -1);

    v63(v72, v65);
  }

  else
  {
    v58 = *(v0 + 312);
    v60 = *(v0 + 280);
    v59 = *(v0 + 288);
    v61 = *(v0 + 264);

    v42(v60, v61);
    v42(v59, v61);
    v42(v58, v61);
  }

  **(v0 + 152) = *(v0 + 360);

  v71 = *(v0 + 8);

  return v71(v75);
}

uint64_t sub_251C6A654()
{
  v20 = v0;
  v1 = *(v0 + 384);
  (*(v0 + 344))(*(v0 + 312), *(v0 + 264));
  v2 = v1;
  v3 = sub_251C70744();
  v4 = sub_251C713D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_251BBFFA4(*(v0 + 88), *(v0 + 96));
    v9 = sub_251B10780(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_251A6C000, v3, v4, "WebRequestPerformer: error response: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25308E2B0](v6, -1, -1);
    MEMORY[0x25308E2B0](v5, -1, -1);
  }

  *(v0 + 136) = v1;
  v10 = v1;
  v11 = v1;
  sub_251A82284();
  v12 = swift_dynamicCast();
  v13 = *(v0 + 216);
  v14 = *(v0 + 224);
  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  if (v12)
  {

    (*(v14 + 56))(v16, 0, 1, v13);
    sub_251C17EA8(v16, v15, type metadata accessor for WebRequestResponseError.ErrorType);
  }

  else
  {
    (*(v14 + 56))(*(v0 + 208), 1, 1, *(v0 + 216));
    *v15 = v1;
    swift_storeEnumTagMultiPayload();
  }

  sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType, &protocol conformance descriptor for WebRequestResponseError.ErrorType);
  swift_willThrowTypedImpl();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_251C6A968(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = a8;
  *(v8 + 200) = v14;
  *(v8 + 176) = a5;
  *(v8 + 184) = a7;
  *(v8 + 401) = a6;
  *(v8 + 400) = a4;
  *(v8 + 160) = a2;
  *(v8 + 168) = a3;
  *(v8 + 152) = a1;
  sub_251C6CA24(0, &qword_27F4798C8, type metadata accessor for WebRequestResponseError.ErrorType);
  *(v8 + 208) = swift_task_alloc();
  v9 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  *(v8 + 216) = v9;
  *(v8 + 224) = *(v9 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = sub_251C6FE64();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();
  sub_251C6CA24(0, &qword_2813E7520, MEMORY[0x277CC9260]);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v11 = sub_251C6F9A4();
  *(v8 + 288) = v11;
  *(v8 + 296) = *(v11 - 8);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C6ABD4, 0, 0);
}

uint64_t sub_251C6ABD4()
{
  v56 = v0;
  v1 = *(v0 + 401);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 400);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  WebRequest.urlRequest(attribution:timeoutInterval:cachePolicy:)(*(v3 + 24), v6, v4 & 1, v2, v1 & 1, v7, v8);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 328);
  v10 = *(v0 + 336);
  v11 = *(v0 + 320);
  v12 = *(v0 + 288);
  v13 = *(v0 + 296);
  v14 = sub_251C70764();
  *(v0 + 344) = __swift_project_value_buffer(v14, qword_2813E8130);
  v15 = *(v13 + 16);
  *(v0 + 352) = v15;
  *(v0 + 360) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v9, v10, v12);
  v15(v11, v10, v12);
  v16 = sub_251C70744();
  v17 = sub_251C713C4();
  v18 = os_log_type_enabled(v16, v17);
  v20 = *(v0 + 320);
  v19 = *(v0 + 328);
  v22 = *(v0 + 288);
  v21 = *(v0 + 296);
  if (v18)
  {
    v53 = v17;
    log = v16;
    v23 = *(v0 + 256);
    v50 = *(v0 + 280);
    v51 = *(v0 + 248);
    v24 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v52;
    *v24 = 136315394;
    v25 = sub_251C6F904();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xD000000000000010;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0x8000000251C92BF0;
    }

    v29 = *(v21 + 8);
    v29(v19, v22);
    v30 = sub_251B10780(v27, v28, &v55);
    v31 = v24;

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    sub_251C6F964();
    v32 = (*(v23 + 48))(v50, 1, v51);
    v33 = *(v0 + 280);
    if (v32 == 1)
    {
      sub_251C6C9C8(*(v0 + 280), &qword_2813E7520, MEMORY[0x277CC9260]);
      v34 = 0;
      v35 = 0;
    }

    else
    {
      v37 = *(v0 + 248);
      v36 = *(v0 + 256);
      v34 = sub_251C6FDA4();
      v35 = v38;
      (*(v36 + 8))(v33, v37);
    }

    v39 = *(v0 + 320);
    v40 = *(v0 + 288);
    *(v0 + 120) = v34;
    *(v0 + 128) = v35;
    sub_251AD56B0();
    sub_251C719F4();
    v41 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v42 = sub_251C70F74();
    v44 = v43;
    v29(v39, v40);
    v45 = sub_251B10780(v42, v44, &v55);

    *(v31 + 14) = v45;
    _os_log_impl(&dword_251A6C000, log, v53, "WebRequestPerformer: making request: %s %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v52, -1, -1);
    MEMORY[0x25308E2B0](v31, -1, -1);
  }

  else
  {

    v29 = *(v21 + 8);
    v29(v20, v22);
    v29(v19, v22);
  }

  *(v0 + 368) = v29;
  v46 = swift_task_alloc();
  *(v0 + 376) = v46;
  *v46 = v0;
  v46[1] = sub_251C6B028;
  v47 = *(v0 + 336);
  v48 = *(v0 + 264);

  return MEMORY[0x28211ED28](v48, v47, 0);
}

uint64_t sub_251C6B028(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v4 = sub_251C6B9F8;
  }

  else
  {
    v4 = sub_251C6B13C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251C6B13C()
{
  v79 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    v11 = *(v0 + 384);
    v13 = *(v0 + 256);
    v12 = *(v0 + 264);
    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    *v15 = v11;
    swift_storeEnumTagMultiPayload();
    sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType, &protocol conformance descriptor for WebRequestResponseError.ErrorType);
    v16 = v11;
    swift_willThrowTypedImpl();
    v9 = swift_allocError();
    sub_251C17EA8(v15, v17, type metadata accessor for WebRequestResponseError.ErrorType);

    (*(v13 + 8))(v12, v14);
    goto LABEL_5;
  }

  v2 = v1;
  v3 = *(v0 + 392);
  sub_251C6BD18(0, 0xC000000000000000, *(v0 + 232));
  if (v3)
  {
    v4 = *(v0 + 384);
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 248);
    v8 = *(v0 + 232);
    sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType, &protocol conformance descriptor for WebRequestResponseError.ErrorType);
    v9 = swift_allocError();
    sub_251C17EA8(v8, v10, type metadata accessor for WebRequestResponseError.ErrorType);

    (*(v6 + 8))(v5, v7);
LABEL_5:
    (*(v0 + 368))(*(v0 + 336), *(v0 + 288));
    v18 = v9;
    v19 = sub_251C70744();
    v20 = sub_251C713D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v78[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = sub_251BBFFA4(*(v0 + 88), *(v0 + 96));
      v25 = sub_251B10780(v23, v24, v78);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_251A6C000, v19, v20, "WebRequestPerformer: error response: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x25308E2B0](v22, -1, -1);
      MEMORY[0x25308E2B0](v21, -1, -1);
    }

    *(v0 + 136) = v9;
    v26 = v9;
    v27 = v9;
    sub_251A82284();
    v28 = swift_dynamicCast();
    v29 = *(v0 + 216);
    v30 = *(v0 + 224);
    v31 = *(v0 + 200);
    v32 = *(v0 + 208);
    if (v28)
    {

      (*(v30 + 56))(v32, 0, 1, v29);
      sub_251C17EA8(v32, v31, type metadata accessor for WebRequestResponseError.ErrorType);
    }

    else
    {
      (*(v30 + 56))(*(v0 + 208), 1, 1, *(v0 + 216));
      *v31 = v9;
      swift_storeEnumTagMultiPayload();
    }

    sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType, &protocol conformance descriptor for WebRequestResponseError.ErrorType);
    swift_willThrowTypedImpl();

    v33 = *(v0 + 8);

    return v33();
  }

  v35 = *(v0 + 352);
  v36 = *(v0 + 336);
  v37 = *(v0 + 304);
  v38 = *(v0 + 288);
  v35(*(v0 + 312), v36, v38);
  v35(v37, v36, v38);
  v39 = sub_251C70744();
  v40 = sub_251C713C4();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 368);
  if (v41)
  {
    v76 = v40;
    log = v39;
    v43 = *(v0 + 312);
    v74 = *(v0 + 288);
    v44 = *(v0 + 272);
    v45 = *(v0 + 256);
    v72 = *(v0 + 248);
    v46 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v78[0] = v75;
    *v46 = 136315394;
    v47 = sub_251C6F904();
    if (v48)
    {
      v49 = v47;
    }

    else
    {
      v49 = 0xD000000000000010;
    }

    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0x8000000251C92BF0;
    }

    v42(v43, v74);
    v51 = sub_251B10780(v49, v50, v78);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    sub_251C6F964();
    v52 = (*(v45 + 48))(v44, 1, v72);
    v53 = *(v0 + 272);
    if (v52 == 1)
    {
      sub_251C6C9C8(*(v0 + 272), &qword_2813E7520, MEMORY[0x277CC9260]);
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v61 = *(v0 + 248);
      v60 = *(v0 + 256);
      v54 = sub_251C6FDA4();
      v55 = v62;
      (*(v60 + 8))(v53, v61);
    }

    v63 = *(v0 + 368);
    v73 = *(v0 + 336);
    v64 = *(v0 + 304);
    v65 = *(v0 + 288);
    *(v0 + 104) = v54;
    *(v0 + 112) = v55;
    sub_251AD56B0();
    sub_251C719F4();
    v66 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v67 = sub_251C70F74();
    v69 = v68;
    v63(v64, v65);
    v70 = sub_251B10780(v67, v69, v78);

    *(v46 + 14) = v70;
    _os_log_impl(&dword_251A6C000, log, v76, "WebRequestPerformer: request succeeded for: %s %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v75, -1, -1);
    MEMORY[0x25308E2B0](v46, -1, -1);

    v63(v73, v65);
  }

  else
  {
    v56 = *(v0 + 336);
    v58 = *(v0 + 304);
    v57 = *(v0 + 312);
    v59 = *(v0 + 288);

    v42(v58, v59);
    v42(v57, v59);
    v42(v56, v59);
  }

  (*(*(v0 + 256) + 32))(*(v0 + 152), *(v0 + 264), *(v0 + 248));

  v71 = *(v0 + 8);

  return v71(v2);
}

uint64_t sub_251C6B9F8()
{
  v20 = v0;
  v1 = *(v0 + 392);
  (*(v0 + 368))(*(v0 + 336), *(v0 + 288));
  v2 = v1;
  v3 = sub_251C70744();
  v4 = sub_251C713D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_251BBFFA4(*(v0 + 88), *(v0 + 96));
    v9 = sub_251B10780(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_251A6C000, v3, v4, "WebRequestPerformer: error response: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25308E2B0](v6, -1, -1);
    MEMORY[0x25308E2B0](v5, -1, -1);
  }

  *(v0 + 136) = v1;
  v10 = v1;
  v11 = v1;
  sub_251A82284();
  v12 = swift_dynamicCast();
  v13 = *(v0 + 216);
  v14 = *(v0 + 224);
  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  if (v12)
  {

    (*(v14 + 56))(v16, 0, 1, v13);
    sub_251C17EA8(v16, v15, type metadata accessor for WebRequestResponseError.ErrorType);
  }

  else
  {
    (*(v14 + 56))(*(v0 + 208), 1, 1, *(v0 + 216));
    *v15 = v1;
    swift_storeEnumTagMultiPayload();
  }

  sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType, &protocol conformance descriptor for WebRequestResponseError.ErrorType);
  swift_willThrowTypedImpl();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_251C6BD18(uint64_t a1, char *a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v3 = sub_251C70F64();
  MEMORY[0x28223BE20](v3 - 8);
  sub_251C6CA24(0, &qword_27F47D090, type metadata accessor for HTTPError);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v35 - v5);
  v7 = type metadata accessor for HTTPError(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  NSHTTPURLResponse.asHTTPError()(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_251C6C9C8(v6, &qword_27F47D090, type metadata accessor for HTTPError);
  }

  sub_251C17EA8(v6, v13, type metadata accessor for HTTPError);
  sub_251C70F54();
  v15 = sub_251C70F34();
  v17 = v13;
  if (v16)
  {
    v18 = v15;
    v19 = v16;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v20 = sub_251C70764();
    __swift_project_value_buffer(v20, qword_2813E8130);
    sub_251C6CA78(v13, v11, type metadata accessor for HTTPError);

    v21 = sub_251C70744();
    v22 = sub_251C713D4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v17;
      v25 = v24;
      v39 = v24;
      *v23 = 136315394;
      v26 = HTTPError.safelyLoggableDescription.getter();
      v28 = v27;
      sub_251C6CAE0(v11, type metadata accessor for HTTPError);
      v29 = sub_251B10780(v26, v28, &v39);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      v37 = v18;
      v38 = v19;
      sub_251C719F4();
      v30 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v31 = sub_251C70F74();
      v33 = sub_251B10780(v31, v32, &v39);

      *(v23 + 14) = v33;
      _os_log_impl(&dword_251A6C000, v21, v22, "HTTP error: %s data: %s", v23, 0x16u);
      swift_arrayDestroy();
      v34 = v25;
      v17 = v35;
      MEMORY[0x25308E2B0](v34, -1, -1);
      MEMORY[0x25308E2B0](v23, -1, -1);
    }

    else
    {

      sub_251C6CAE0(v11, type metadata accessor for HTTPError);
    }
  }

  sub_251C6CA78(v17, v36, type metadata accessor for HTTPError);
  type metadata accessor for WebRequestResponseError.ErrorType(0);
  swift_storeEnumTagMultiPayload();
  sub_251C6C980(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType, &protocol conformance descriptor for WebRequestResponseError.ErrorType);
  swift_willThrowTypedImpl();
  return sub_251C6CAE0(v17, type metadata accessor for HTTPError);
}

uint64_t WebRequestPerformer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_251C6C24C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  v7[2] = a7;
  type metadata accessor for WebRequestResponseError(0);
  v14 = swift_task_alloc();
  v7[3] = v14;
  v15 = swift_task_alloc();
  v7[4] = v15;
  *v15 = v7;
  v15[1] = sub_251C6CB40;

  return _s19HealthRecordsDaemon19WebRequestPerformerC4data3for15timeoutInterval11cachePolicyAA0dE8ResponseVAA0dE0_p_SdSgSo017NSURLRequestCacheL0VSgtYaAA0deM5ErrorVYKF(a1, a2, a3, a4 & 1, a5, a6 & 1, v14);
}

uint64_t sub_251C6C364(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  v7[2] = a7;
  type metadata accessor for WebRequestResponseError(0);
  v14 = swift_task_alloc();
  v7[3] = v14;
  v15 = swift_task_alloc();
  v7[4] = v15;
  *v15 = v7;
  v15[1] = sub_251C6C47C;

  return _s19HealthRecordsDaemon19WebRequestPerformerC19performFileDownload3for15timeoutInterval11cachePolicy10Foundation3URLVAA0dE0_p_SdSgSo017NSURLRequestCacheN0VSgtYaAA0dE13ResponseErrorVYKF(a1, a2, a3, a4 & 1, a5, a6 & 1, v14);
}

uint64_t sub_251C6C47C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    sub_251C17EA8(*(v2 + 24), *(v2 + 16), type metadata accessor for WebRequestResponseError);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_251C6C5B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = WebRequestPerformer.copy(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_251C6C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = [objc_opt_self() sessionWithConfiguration:a1 delegate:a2 delegateQueue:0];
  *(v7 + 24) = a3;
  return v7;
}

uint64_t _s19HealthRecordsDaemon20WebRequestPerformingP4data3for15timeoutInterval11cachePolicyAA0dE8ResponseVAA0dE0_p_SdSgSo017NSURLRequestCacheL0VSgtYaAA0deM5ErrorVYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 8) + **(a9 + 8));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_251B14FE8;

  return v19(a1, a2, a3, a4 & 1, a5, a6 & 1, a7, a8, a9);
}

uint64_t _s19HealthRecordsDaemon20WebRequestPerformingP19performFileDownload3for15timeoutInterval11cachePolicy10Foundation3URLVAA0dE0_p_SdSgSo017NSURLRequestCacheN0VSgtYaAA0dE13ResponseErrorVYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 16) + **(a9 + 16));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_251AF4F78;

  return v19(a1, a2, a3, a4 & 1, a5, a6 & 1, a7, a8, a9);
}

uint64_t sub_251C6C980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251C6C9C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C6CA24(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251C6CA24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_251C6CA78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C6CAE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C6CB44@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1 || (v5 = a2 - a1, a2 == a1))
  {
    v6 = MEMORY[0x277D84F90];
LABEL_7:
    v9 = sub_251C55B4C(v6);
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
    return result;
  }

  result = sub_251C6CBEC(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove((result + 32), a1, v5);
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_251C6CBEC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_251B11094();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_251C6CC54()
{
  v1 = [v0 primaryConcept];
  v2 = [v1 localizedPreferredName];

  if (v2)
  {
    v3 = sub_251C70F14();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }
  }

  result = sub_251C6CD64();
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    result = sub_251C6CF54();
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {

      v12 = [v0 fallbackDisplayString];
      v13 = sub_251C70F14();

      return v13;
    }
  }

  return result;
}

uint64_t sub_251C6CD64()
{
  v1 = [v0 medicalRecordCodings];
  sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
  v2 = sub_251C71154();

  if (v2 >> 62)
  {
LABEL_18:
    v3 = sub_251C717F4();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:

    return 0;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x25308D460](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = [v5 codingSystem];
    v9 = [objc_opt_self() textSystem];
    v10 = v9;
    if (v8)
    {
      break;
    }

LABEL_5:
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_19;
    }
  }

  sub_251A8223C(0, &qword_27F47C6A0, 0x277CCD5D0);
  v11 = sub_251C71534();

  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = [v6 displayString];

  if (v12)
  {
    v13 = sub_251C70F14();

    return v13;
  }

  return 0;
}

uint64_t sub_251C6CF54()
{
  v1 = [v0 medicalRecordCodings];
  sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
  v2 = sub_251C71154();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:

    return 0;
  }

LABEL_19:
  v3 = sub_251C717F4();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x25308D460](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = [v5 displayString];
    if (v8)
    {
      v9 = v8;
      v10 = sub_251C70F14();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        break;
      }
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_20;
    }
  }

  v14 = [v6 displayString];

  if (v14)
  {
    v15 = sub_251C70F14();

    return v15;
  }

  return 0;
}

uint64_t WebRequestError.errorDescription.getter()
{
  v1 = sub_251C6FB44();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_251C6FE64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebRequestError(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251C6D570(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v18 = *v11;
      v19 = v11[1];
      strcpy(v21, "Invalid URL: ");
      HIWORD(v21[1]) = -4864;
      MEMORY[0x25308CDA0](v18, v19);
    }

    else
    {
      v15 = *v11;
      v16 = v11[1];
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      sub_251C716A4();

      v21[0] = 0xD000000000000015;
      v21[1] = 0x8000000251C92C50;
      MEMORY[0x25308CDA0](v15, v16);
    }

    return v21[0];
  }

  else if (EnumCaseMultiPayload == 2)
  {
    (*(v6 + 32))(v8, v11, v5);
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_251C716A4();

    v21[0] = 0xD000000000000012;
    v21[1] = 0x8000000251C92C30;
    sub_251C6D61C(&qword_27F478E68, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v17 = sub_251C719A4();
    MEMORY[0x25308CDA0](v17);

    v14 = v21[0];
    (*(v6 + 8))(v8, v5);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    (*(v2 + 32))(v4, v11, v1);
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_251C716A4();

    v21[0] = 0xD000000000000018;
    v21[1] = 0x8000000251C92C10;
    sub_251C6D61C(&qword_27F47D098, MEMORY[0x277CC8958], MEMORY[0x277CC8968]);
    v13 = sub_251C719A4();
    MEMORY[0x25308CDA0](v13);

    v14 = v21[0];
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    return 0x2065736162206F4ELL;
  }

  return v14;
}

uint64_t type metadata accessor for WebRequestError(uint64_t a1)
{
  result = qword_27F47D0A0;
  if (!qword_27F47D0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251C6D570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebRequestError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C6D61C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251C6D668(uint64_t a1)
{
  result = sub_251C6FE64();
  if (v2 <= 0x3F)
  {
    result = sub_251C6FB44();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_251C6D6E8(unint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v39 = sub_251C70074();
  v10 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v14 = sub_251C70764();
  __swift_project_value_buffer(v14, qword_2813E8130);

  v15 = sub_251C70744();
  v16 = sub_251C713F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = v37;
    *v17 = 136315394;
    *(v17 + 4) = sub_251B10780(a2, a3, &v41);
    v38 = v17;
    *(v17 + 12) = 2080;
    if (v13 >> 62)
    {
      v18 = sub_251C717F4();
    }

    else
    {
      v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v40 = MEMORY[0x277D84F90];
      sub_251C0B5E4(0, v18 & ~(v18 >> 63), 0);
      if (v18 < 0)
      {
        __break(1u);
        return;
      }

      v33 = v16;
      v34 = v15;
      v35 = a4;
      v36 = a5;
      v20 = 0;
      v19 = v40;
      do
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x25308D460](v20, v13);
        }

        else
        {
          v21 = *(v13 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = [v22 identifier];
        sub_251C70054();

        v40 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_251C0B5E4((v24 > 1), v25 + 1, 1);
          v19 = v40;
        }

        ++v20;
        *(v19 + 16) = v25 + 1;
        (*(v10 + 32))(v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, v12, v39);
      }

      while (v18 != v20);
      a4 = v35;
      a5 = v36;
      v15 = v34;
      LOBYTE(v16) = v33;
    }

    v26 = MEMORY[0x25308CF10](v19, v39);
    v28 = v27;

    v29 = sub_251B10780(v26, v28, &v41);

    v30 = v38;
    *(v38 + 14) = v29;
    _os_log_impl(&dword_251A6C000, v15, v16, "%s Found accounts %s with SharingToProvider feature", v30, 0x16u);
    v31 = v37;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v31, -1, -1);
    MEMORY[0x25308E2B0](v30, -1, -1);
  }

  if (a4)
  {

    a4(v13);
    sub_251C5D6EC(a4, a5);
  }
}

uint64_t sub_251C6DAA8@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_251AC3C64(v4, *v5);
  *a3 = result;
  return result;
}

uint64_t sub_251C6DAEC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v13[0] = a3;
  sub_251C6E2AC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v13[1] = sub_251B01218(a2);
  *(swift_allocObject() + 16) = v10;
  sub_251C688C4(0);
  sub_251AE7634(0);
  sub_251C6E264(&qword_2813E2168, sub_251C688C4, MEMORY[0x277CBCD90]);

  sub_251C70AE4();

  sub_251C6E264(&qword_2813E25E0, sub_251C6E2AC, MEMORY[0x277CBCC08]);
  v11 = sub_251C70A94();
  result = (*(v7 + 8))(v9, v6);
  *v13[0] = v11;
  return result;
}

uint64_t sub_251C6DCE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v19 = MEMORY[0x277D84F90];
    sub_251C71764();
    for (i = (a1 + 40); ; i += 2)
    {
      v11 = *(i - 1);
      v12 = *i;
      sub_251A823B4(a4, v18);
      type metadata accessor for ClinicalSharingSyncContext(0);
      swift_allocObject();
      v13 = v11;
      v14 = v12;
      v15 = v13;
      v16 = v14;

      sub_251B304E4(v15, v16, v18, a2, a3);
      if (v4)
      {
        break;
      }

      sub_251C71734();
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      if (!--v6)
      {
        return v19;
      }
    }
  }

  return result;
}

uint64_t sub_251C6DE3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251AE52B8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B066C4(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *a1;
  sub_251C6E358(0, &qword_2813E1EA0, type metadata accessor for ClinicalSharingSyncContext);
  sub_251AE5338();
  sub_251C710D4();
  sub_251A82284();
  sub_251C708E4();
  (*(v6 + 8))(v8, v5);
  sub_251C6E264(&qword_2813E2250, sub_251B066C4, MEMORY[0x277CBCD18]);
  v14 = sub_251C70A94();
  result = (*(v11 + 8))(v13, v10);
  *a2 = v14;
  return result;
}

void sub_251C6E060(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v5 = sub_251C70764();
  __swift_project_value_buffer(v5, qword_2813E8130);

  oslog = sub_251C70744();
  v6 = sub_251C713F4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_251B10780(a2, a3, &v13);
    *(v7 + 12) = 2080;
    sub_251C70074();
    sub_251C6E264(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = sub_251C719A4();
    v11 = sub_251B10780(v9, v10, &v13);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_251A6C000, oslog, v6, "%s Fetching multi device details for  %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }
}

uint64_t sub_251C6E264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251C6E2AC(uint64_t a1)
{
  if (!qword_2813E25D8)
  {
    sub_251C688C4(255);
    sub_251AE7634(255);
    sub_251C6E264(&qword_2813E2168, sub_251C688C4, MEMORY[0x277CBCD90]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E25D8);
    }
  }
}

void sub_251C6E358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C711A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251C6E3AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a2 = *(v2 + 16);
  a2[1] = v3;
  a2[2] = v4;
}

unint64_t sub_251C6E3F8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_251C716A4();

    strcpy(v8, "Feature flag ");
    HIWORD(v8[1]) = -4864;
    MEMORY[0x25308CDA0](a1, a2);
    v6 = 0x20746F6E20736920;
    v5 = 0xEF64656C62616E65;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_251C716A4();

    v8[0] = a1;
    v8[1] = a2;
    v5 = 0x8000000251C92C70;
    v6 = 0xD000000000000010;
LABEL_5:
    MEMORY[0x25308CDA0](v6, v5);
    return v8[0];
  }

  if (a1 | a2)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon0C5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_251C6E570(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_251C6E5B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_251C6E5FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id sub_251C6E624(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = objc_allocWithZone(MEMORY[0x277D10BF0]);
    v4 = sub_251C70EE4();

    v5 = [v3 initWithMachServiceName_];
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x277D10BF0]);
    v4 = sub_251C70EE4();
    v5 = [v6 initWithLabel_];
  }

  v7 = v5;

  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_listener] = v7;
  *&v2[OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_serviceMap] = sub_251C4C61C(MEMORY[0x277D84F90]);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for DaemonXPCConnectionManager();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_251C6E71C()
{
  sub_251C6E9E8();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonXPCConnectionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_251C6E7E8()
{
  v1 = OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_serviceMap;
  swift_beginAccess();
  v21 = v0;
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_12:
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v13 = v12 | (v9 << 6);
      v14 = (*(v2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      sub_251A823B4(*(v2 + 56) + 40 * v13, v22);
      *&v23 = v16;
      *(&v23 + 1) = v15;
      sub_251A7E8D8(v22, &v24);

      v11 = v9;
LABEL_13:
      v27 = v23;
      v28[0] = v24;
      v28[1] = v25;
      v29 = v26;
      if (!*(&v23 + 1))
      {
        break;
      }

      sub_251A7E8D8(v28, &v23);
      v17 = __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
      v18 = *v17;
      v19 = OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener;
      [*(*v17 + OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener) setDelegate_];
      [*(v18 + v19) resume];
      result = __swift_destroy_boxed_opaque_existential_1(&v23);
      v8 = v11;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v20 = *(v21 + OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_listener);
    [v20 setDelegate_];
    return [v20 resume];
  }

  else
  {
LABEL_5:
    if (v6 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        v5 = 0;
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_13;
      }

      v5 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_251C6E9E8()
{
  [*(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_listener) invalidate];
  v1 = OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_serviceMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_12:
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v13 = v12 | (v9 << 6);
      v14 = (*(v2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      sub_251A823B4(*(v2 + 56) + 40 * v13, v20);
      *&v21 = v16;
      *(&v21 + 1) = v15;
      sub_251A7E8D8(v20, &v22);

      v11 = v9;
LABEL_13:
      v25 = v21;
      v26[0] = v22;
      v26[1] = v23;
      v27 = v24;
      if (!*(&v21 + 1))
      {
      }

      sub_251A7E8D8(v26, &v21);
      v17 = __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
      v18 = *v17;
      v19 = OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener;
      [*(*v17 + OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener) setDelegate_];
      [*(v18 + v19) invalidate];
      result = __swift_destroy_boxed_opaque_existential_1(&v21);
      v8 = v11;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v6 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        v5 = 0;
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_13;
      }

      v5 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_251C6ED04(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DaemonConnectionServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_251C6EE78(uint64_t a1, id a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  if (a2)
  {
    v12 = a2;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v13 = sub_251C70764();
    __swift_project_value_buffer(v13, qword_2813E8130);
    v14 = a2;

    v15 = a5;
    v16 = sub_251C70744();
    v17 = sub_251C713D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136315650;
      *(v18 + 4) = sub_251B10780(a3, a4, &v32);
      *(v18 + 12) = 2080;
      v20 = *&v15[OBJC_IVAR____TtC19HealthRecordsDaemon22DaemonConnectionServer_client];
      v21 = [v20 description];
      v22 = sub_251C70F14();
      v31 = a1;
      v24 = v23;

      v25 = sub_251B10780(v22, v24, &v32);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2080;
      v26 = a2;
      sub_251A82284();
      v27 = sub_251C70F74();
      v29 = sub_251B10780(v27, v28, &v32);
      a1 = v31;

      *(v18 + 24) = v29;
      _os_log_impl(&dword_251A6C000, v16, v17, "Not returning endpoint for %s to %s: %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v19, -1, -1);
      MEMORY[0x25308E2B0](v18, -1, -1);
    }

    else
    {
    }

    v30 = sub_251C6FD74();
  }

  else
  {
    v30 = 0;
  }

  (*(a6 + 16))(a6, a1, v30, a4, a5);
}

void sub_251C6F118(uint64_t a1, unint64_t a2, char *a3, void *aBlock)
{
  v8 = *&a3[OBJC_IVAR____TtC19HealthRecordsDaemon22DaemonConnectionServer_serviceMap];
  v9 = *(v8 + 16);
  _Block_copy(aBlock);
  _Block_copy(aBlock);
  _Block_copy(aBlock);
  if (v9)
  {
    v10 = sub_251AC8C58(a1, a2);
    if (v11)
    {
      sub_251A823B4(*(v8 + 56) + 40 * v10, v34);
      sub_251A7E8D8(v34, v35);
      v12 = (*__swift_project_boxed_opaque_existential_1(v35, v36) + OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_requiredEntitlementOverride);
      if (v12[1])
      {
        v13 = *v12;
        v14 = v12[1];
      }

      else
      {
        v14 = 0x8000000251C92D70;
        v13 = 0xD000000000000020;
      }

      v18 = *&a3[OBJC_IVAR____TtC19HealthRecordsDaemon22DaemonConnectionServer_client];

      v19 = [v18 connection];
      if (v19)
      {
        v20 = v19;
        v21 = sub_251C70EE4();
        v22 = [v20 valueForEntitlement_];

        if (v22)
        {
          sub_251C715C4();
          swift_unknownObjectRelease();
        }

        else
        {
          *v30 = 0u;
          v31 = 0u;
        }

        v32 = *v30;
        v33 = v31;
        if (*(&v31 + 1))
        {
          sub_251ACFB54(&v32, v34);
          sub_251A83384(v34, &v32);
          sub_251AB6108();
          if (swift_dynamicCast())
          {
            if ([v30[0] BOOLValue])
            {

              v23 = [*(*__swift_project_boxed_opaque_existential_1(v35 v36) + OBJC:sel_endpoint IVAR:? :? :? :? TtC19HealthRecordsDaemon23DefaultDaemonXPCService:?listener)];
              (*(aBlock + 2))(aBlock, v23, 0);

LABEL_21:
              __swift_destroy_boxed_opaque_existential_1(v34);
              goto LABEL_22;
            }
          }

          v27 = objc_opt_self();
          *&v32 = 0;
          *(&v32 + 1) = 0xE000000000000000;
          sub_251C716A4();

          *&v32 = 0xD000000000000013;
          *(&v32 + 1) = 0x8000000251C92DA0;
          MEMORY[0x25308CDA0](v13, v14);

          MEMORY[0x25308CDA0](0x6C7469746E652022, 0xED0000746E656D65);
          v28 = sub_251C70EE4();

          v29 = [v27 hk:4 error:v28 description:?];

          _Block_copy(aBlock);
          sub_251C6EE78(0, v29, a1, a2, a3, aBlock);
          _Block_release(aBlock);

          goto LABEL_21;
        }
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
      }

      sub_251AFEC38(&v32);
      v24 = objc_opt_self();
      *&v34[0] = 0;
      *(&v34[0] + 1) = 0xE000000000000000;
      sub_251C716A4();

      *&v34[0] = 0x20676E697373694DLL;
      *(&v34[0] + 1) = 0xE900000000000022;
      MEMORY[0x25308CDA0](v13, v14);

      MEMORY[0x25308CDA0](0x6C7469746E652022, 0xED0000746E656D65);
      v25 = sub_251C70EE4();

      v26 = [v24 hk:4 error:v25 description:?];

      _Block_copy(aBlock);
      sub_251C6EE78(0, v26, a1, a2, a3, aBlock);
      _Block_release(aBlock);

LABEL_22:
      __swift_destroy_boxed_opaque_existential_1(v35);
      _Block_release(aBlock);
      _Block_release(aBlock);
      _Block_release(aBlock);
      return;
    }
  }

  v15 = objc_opt_self();
  sub_251C716A4();

  v35[0] = 0x2065636976726553;
  v35[1] = 0xE900000000000022;
  MEMORY[0x25308CDA0](a1, a2);
  MEMORY[0x25308CDA0](0x6F6620746F6E2022, 0xEB00000000646E75);
  v16 = sub_251C70EE4();

  v17 = [v15 hk:3 error:v16 description:?];

  _Block_copy(aBlock);
  sub_251C6EE78(0, v17, a1, a2, a3, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

void sub_251C6F6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(MEMORY[0x277D11578]);

  v8 = [v7 initWithHealthStore_];
  v9 = swift_allocObject();
  *(v9 + 16) = sub_251AD96B8;
  *(v9 + 24) = v6;
  v11[4] = sub_251C3B924;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_251C6F80C;
  v11[3] = &block_descriptor_26;
  v10 = _Block_copy(v11);

  [v8 fetchAllSchedulesWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_251C6F80C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_251C6F8B8();
    v4 = sub_251C71154();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251C6F8B8()
{
  result = qword_27F4797F0;
  if (!qword_27F4797F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4797F0);
  }

  return result;
}
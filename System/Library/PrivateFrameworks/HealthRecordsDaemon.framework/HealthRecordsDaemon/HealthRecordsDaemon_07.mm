uint64_t sub_251B18BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B18C08@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251B185CC(a1, v6, a2);
}

void sub_251B18C88(uint64_t a1)
{
  if (!qword_2813E2258)
  {
    sub_251B18D54(255);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    sub_251B18DC8(&qword_2813E1EB0, sub_251B18D54, MEMORY[0x277D83970]);
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2258);
    }
  }
}

void sub_251B18D54(uint64_t a1)
{
  if (!qword_2813E1EB8)
  {
    sub_251AA98B0(255, qword_2813E46A0, &protocol descriptor for ClinicalSharingMetric);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1EB8);
    }
  }
}

uint64_t sub_251B18DC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251B18E10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251B18E9C(uint64_t a1)
{
  sub_251AA98B0(319, qword_2813E7418, &protocol descriptor for ClinicalSharingDaemonEnvironment);
  if (v1 <= 0x3F)
  {
    sub_251C70014();
    if (v2 <= 0x3F)
    {
      sub_251B18FF4();
      if (v3 <= 0x3F)
      {
        sub_251B18E10(319, &qword_2813E1EA0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for HKClinicalSharingReason(319);
          if (v5 <= 0x3F)
          {
            sub_251B18E10(319, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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

unint64_t sub_251B18FF4()
{
  result = qword_2813E1DB0;
  if (!qword_2813E1DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E1DB0);
  }

  return result;
}

uint64_t sub_251B19040()
{
  v1 = [v0 collectionType];
  if (v1 < 4)
  {
    return v1 + 1;
  }

  sub_251C716A4();
  MEMORY[0x25308CDA0](0xD00000000000002ELL, 0x8000000251C8AEB0);
  [v0 collectionType];
  type metadata accessor for HKInspectableValueCollectionType(0);
  sub_251C717C4();
  MEMORY[0x25308CDA0](0xD000000000000015, 0x8000000251C8AEE0);
  result = sub_251C717E4();
  __break(1u);
  return result;
}

uint64_t sub_251B19160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v13 = a4;
  v14 = a5;
  sub_251B199C8(0, &qword_27F479F90, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B19920();
  sub_251C71B14();
  LOBYTE(v15) = 0;
  sub_251C71934();
  if (!v5)
  {
    v15 = v13;
    v16 = v14;
    v17 = 1;
    sub_251A858C4(v13, v14);
    sub_251B19A2C();
    sub_251C71964();
    sub_251A83028(v15, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_251B1930C()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_251B19340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_251C719D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000251C8AF00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251C719D4();

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

uint64_t sub_251B1941C(uint64_t a1)
{
  v2 = sub_251B19920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251B19458(uint64_t a1)
{
  v2 = sub_251B19920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251B19494@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_251B196F4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

BOOL sub_251B194E4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  return sub_251A9D1F0(v2, v3, v4, v5);
}

uint64_t sub_251B19570()
{
  sub_251C71AA4();
  sub_251C70FB4();
  sub_251C6FEF4();
  return sub_251C71AD4();
}

uint64_t sub_251B195D8(uint64_t a1)
{
  sub_251C70FB4();

  return sub_251C6FEF4();
}

uint64_t sub_251B19628(uint64_t a1)
{
  sub_251C71AA4();
  sub_251C70FB4();
  sub_251C6FEF4();
  return sub_251C71AD4();
}

unint64_t sub_251B196A0()
{
  result = qword_2813E37B8;
  if (!qword_2813E37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37B8);
  }

  return result;
}

uint64_t sub_251B196F4(void *a1)
{
  sub_251B199C8(0, &qword_27F479F78, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B19920();
  sub_251C71B04();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v13) = 0;
    v8 = sub_251C718B4();
    v12[15] = 1;
    sub_251B19974();
    sub_251C718D4();
    (*(v5 + 8))(v7, v4);
    v10 = v13;
    v11 = v14;

    sub_251A858C4(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_251A83028(v10, v11);
  }

  return v8;
}

unint64_t sub_251B19920()
{
  result = qword_27F479F80;
  if (!qword_27F479F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479F80);
  }

  return result;
}

unint64_t sub_251B19974()
{
  result = qword_27F479F88;
  if (!qword_27F479F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479F88);
  }

  return result;
}

void sub_251B199C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251B19920();
    v7 = a3(a1, &type metadata for ClinicalSharingNodeMetadata.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_251B19A2C()
{
  result = qword_27F479F98;
  if (!qword_27F479F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479F98);
  }

  return result;
}

unint64_t sub_251B19A94()
{
  result = qword_27F479FA0;
  if (!qword_27F479FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479FA0);
  }

  return result;
}

unint64_t sub_251B19AEC()
{
  result = qword_27F479FA8;
  if (!qword_27F479FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479FA8);
  }

  return result;
}

unint64_t sub_251B19B44()
{
  result = qword_27F479FB0;
  if (!qword_27F479FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479FB0);
  }

  return result;
}

void sub_251B19B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_251AD96B8;
  *(v11 + 24) = v10;
  v12 = objc_allocWithZone(MEMORY[0x277D11998]);
  v15[4] = sub_251B19DBC;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_251B19DC4;
  v15[3] = &block_descriptor_8;
  v13 = _Block_copy(v15);

  v14 = [v12 initWithDayIndexRange:a3 ascending:a4 limit:1 resultsHandler:{0, v13}];
  _Block_release(v13);

  [a5 executeQuery_];
}

void sub_251B19D00(int a1, void *a2, int a3, id a4, void (*a5)(uint64_t, BOOL))
{
  v7 = a2;
  if (!a2)
  {
    v7 = a4;
    if (!a4)
    {
      sub_251AC6624();
      v8 = swift_allocError();
      a4 = 0;
      v7 = v8;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
    }

    v10 = a4;
  }

  a5(v7, a2 == 0);

  sub_251B19EEC(v7, a2 == 0);
}

uint64_t sub_251B19DC4(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_251B19EA0();
    v7 = sub_251C71154();
  }

  v10 = a2;
  v11 = a4;
  v12 = a5;
  v9(v10, v7, a4, a5);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251B19EA0()
{
  result = qword_27F479FB8;
  if (!qword_27F479FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479FB8);
  }

  return result;
}

void sub_251B19EEC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *sub_251B19EF8(uint64_t a1)
{
  v2 = sub_251C70014();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v82 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v87 = &v72 - v6;
  sub_251B1B198(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v73 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v84 = &v72 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v72 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v72 - v15;
  v89 = type metadata accessor for ClinicalSharingDataNodeInfo(0);
  MEMORY[0x28223BE20](v89);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (!v21)
  {
    return MEMORY[0x277D84F98];
  }

  v22 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v77 = "ber24@NSError32";
  v85 = (v3 + 48);
  v79 = (v3 + 16);
  v80 = (v3 + 8);
  v81 = (v3 + 32);
  v74 = v3 + 40;
  v75 = (v3 + 56);
  v88 = *(v17 + 72);
  v90 = MEMORY[0x277D84F98];
  *&v18 = 136315394;
  v76 = v18;
  v78 = v3;
  v86 = v14;
  v83 = v16;
  while (1)
  {
    sub_251B1B080(v22, v20, type metadata accessor for ClinicalSharingDataNodeInfo);
    v31 = &v20[*(v89 + 28)];
    if ((v31[8] & 1) == 0)
    {
      nullsub_1();
      v91 = v37;
      sub_251B1B0E8();
      v38 = sub_251C715B4();
      v40 = v39;
      sub_251A82AF0();
      v41 = swift_allocError();
      *v42 = v38;
      *(v42 + 8) = v40;
      *(v42 + 16) = 6;
      swift_willThrow();
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v43 = sub_251C70764();
      __swift_project_value_buffer(v43, qword_2813E8130);
      v44 = v41;
      v45 = sub_251C70744();
      v46 = sub_251C713D4();

      if (os_log_type_enabled(v45, v46))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v2;
        v26 = swift_slowAlloc();
        v91 = v26;
        *v23 = v76;
        *(v23 + 4) = sub_251B10780(0xD000000000000023, v77 | 0x8000000000000000, &v91);
        *(v23 + 12) = 2112;
        v27 = v41;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 14) = v28;
        *v24 = v28;
        _os_log_impl(&dword_251A6C000, v45, v46, "%s %@", v23, 0x16u);
        sub_251B1B13C(v24, &qword_2813E1D10, sub_251B1B1EC);
        v29 = v24;
        v16 = v83;
        MEMORY[0x25308E2B0](v29, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v26);
        v30 = v26;
        v2 = v25;
        v3 = v78;
        MEMORY[0x25308E2B0](v30, -1, -1);
        MEMORY[0x25308E2B0](v23, -1, -1);
      }

      else
      {
      }

      sub_251B1B020(v20, type metadata accessor for ClinicalSharingDataNodeInfo);
      v14 = v86;
      goto LABEL_5;
    }

    v32 = qword_251C77928[*v31];
    sub_251ABA6B8(v16);
    sub_251AC553C(v16, v14);
    v33 = *v85;
    if ((*v85)(v14, 1, v2) != 1)
    {
      break;
    }

    v34 = MEMORY[0x277CC9578];
    sub_251B1B13C(v16, &qword_2813E7500, MEMORY[0x277CC9578]);
    sub_251B1B020(v20, type metadata accessor for ClinicalSharingDataNodeInfo);
    v35 = v14;
    v36 = v34;
LABEL_31:
    sub_251B1B13C(v35, &qword_2813E7500, v36);
LABEL_5:
    v22 += v88;
    if (!--v21)
    {
      return v90;
    }
  }

  v47 = *v81;
  (*v81)(v87, v14, v2);
  if (v90[2] && (v48 = sub_251AC8BD0(v32, 1), (v49 & 1) != 0))
  {
    v50 = v84;
    (*(v3 + 16))(v84, v90[7] + *(v3 + 72) * v48, v2);
    (*(v3 + 56))(v50, 0, 1, v2);
    v51 = v50;
    v52 = v73;
    sub_251AC553C(v51, v73);
    if (v33(v52, 1, v2) == 1)
    {
      goto LABEL_36;
    }

    v53 = sub_251C6FFB4();
    v54 = v52;
    v55 = v53;
    v56 = *v80;
    (*v80)(v54, v2);
    if ((v55 & 1) == 0)
    {
      v56(v87, v2);
      goto LABEL_27;
    }
  }

  else
  {
    (*v75)(v84, 1, 1, v2);
  }

  (*v79)(v82, v87, v2);
  v57 = v90;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = v57;
  v59 = sub_251AC8BD0(v32, 1);
  v61 = *(v57 + 16);
  v62 = (v60 & 1) == 0;
  v63 = __OFADD__(v61, v62);
  v64 = v61 + v62;
  if (!v63)
  {
    v65 = v60;
    if (*(v57 + 24) >= v64)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = v59;
        sub_251ACE574();
        v59 = v70;
        v3 = v78;
      }
    }

    else
    {
      sub_251ACA62C(v64, isUniquelyReferenced_nonNull_native);
      v59 = sub_251AC8BD0(v32, 1);
      if ((v65 & 1) != (v66 & 1))
      {
        goto LABEL_37;
      }
    }

    v14 = v86;
    v90 = v91;
    if ((v65 & 1) == 0)
    {
      v91[(v59 >> 6) + 8] |= 1 << v59;
      v67 = v90[6] + 16 * v59;
      *v67 = v32;
      *(v67 + 8) = 1;
      v47((v90[7] + *(v3 + 72) * v59), v82, v2);
      (*(v3 + 8))(v87, v2);
      v16 = v83;
      sub_251B1B13C(v83, &qword_2813E7500, MEMORY[0x277CC9578]);
      sub_251B1B020(v20, type metadata accessor for ClinicalSharingDataNodeInfo);
      v68 = v90[2];
      v63 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v63)
      {
        goto LABEL_35;
      }

      v90[2] = v69;
      goto LABEL_30;
    }

    (*(v3 + 40))(v91[7] + *(v3 + 72) * v59, v82, v2);
    (*(v3 + 8))(v87, v2);
LABEL_27:
    v16 = v83;
    sub_251B1B13C(v83, &qword_2813E7500, MEMORY[0x277CC9578]);
    sub_251B1B020(v20, type metadata accessor for ClinicalSharingDataNodeInfo);
LABEL_30:
    v36 = MEMORY[0x277CC9578];
    v35 = v84;
    goto LABEL_31;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_251C71A14();
  __break(1u);
  return result;
}

void *sub_251B1A850(uint64_t a1)
{
  v2 = sub_251C70014();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v68 - v6;
  sub_251B1B198(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v74 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v68 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v85 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - v16;
  v72 = type metadata accessor for ClinicalSharingCategoryNodeInfo(0);
  MEMORY[0x28223BE20](v72);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(a1 + 16);
  if (!v71)
  {
    return MEMORY[0x277D84F98];
  }

  v21 = 0;
  v70 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v81 = (v3 + 16);
  v82 = v13;
  v86 = (v3 + 48);
  v87 = (v3 + 56);
  v79 = (v3 + 32);
  v77 = (v3 + 8);
  v75 = v3 + 40;
  v83 = MEMORY[0x277D84F98];
  v69 = *(v18 + 72);
  v22 = v85;
  v76 = v17;
  v68 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
LABEL_4:
  v73 = v21 + 1;
  sub_251B1B080(v70 + v69 * v21, v20, type metadata accessor for ClinicalSharingCategoryNodeInfo);
  v23 = *&v20[*(v72 + 28)];
  v24 = &byte_2863F3230;
  v25 = 3;
  v84 = v23;
  while (1)
  {
    v27 = *(v24 - 1);
    v28 = *v24;
    v29 = *(v23 + 16);
    v89 = v27;
    v88 = v28;
    if (v29)
    {
      v30 = sub_251AC8BD0(v27, v28);
      if (v31)
      {
        (*(v3 + 16))(v17, *(v23 + 56) + *(v3 + 72) * v30, v2);
        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      v22 = v85;
    }

    else
    {
      v32 = 1;
    }

    v33 = *v87;
    (*v87)(v17, v32, 1, v2);
    sub_251AC553C(v17, v22);
    v34 = *v86;
    if ((*v86)(v22, 1, v2) == 1)
    {
      sub_251B1B13C(v17, &qword_2813E7500, MEMORY[0x277CC9578]);
      v26 = v22;
      goto LABEL_6;
    }

    v78 = *v79;
    v78(v7, v22, v2);
    v35 = v83;
    if (!v83[2])
    {
      v44 = v82;
      goto LABEL_21;
    }

    v36 = sub_251AC8BD0(v89, v88);
    v37 = v82;
    if ((v38 & 1) == 0)
    {
      break;
    }

    (*(v3 + 16))(v82, v35[7] + *(v3 + 72) * v36, v2);
    v33(v37, 0, 1, v2);
    v39 = v74;
    sub_251AC553C(v37, v74);
    if (v34(v39, 1, v2) == 1)
    {
      goto LABEL_37;
    }

    v40 = sub_251C6FFB4();
    v41 = v39;
    v42 = v40;
    v43 = *v77;
    (*v77)(v41, v2);
    if (v42)
    {
      goto LABEL_22;
    }

    v43(v7, v2);
    v17 = v76;
    sub_251B1B13C(v76, &qword_2813E7500, MEMORY[0x277CC9578]);
    v26 = v37;
    v22 = v85;
LABEL_6:
    sub_251B1B13C(v26, &qword_2813E7500, MEMORY[0x277CC9578]);
    v24 += 16;
    --v25;
    v23 = v84;
    if (!v25)
    {
      v20 = v68;
      sub_251B1B020(v68, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v21 = v73;
      if (v73 == v71)
      {
        return v83;
      }

      goto LABEL_4;
    }
  }

  v44 = v82;
LABEL_21:
  v33(v44, 1, 1, v2);
LABEL_22:
  v45 = v2;
  v46 = v3;
  v47 = v7;
  v48 = v7;
  v49 = v45;
  (*v81)(v80, v48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = v35;
  v52 = sub_251AC8BD0(v89, v88);
  v53 = v35[2];
  v54 = (v51 & 1) == 0;
  v55 = v53 + v54;
  if (!__OFADD__(v53, v54))
  {
    v56 = v51;
    if (v35[3] >= v55)
    {
      v22 = v85;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_251ACE574();
        v22 = v85;
      }
    }

    else
    {
      sub_251ACA62C(v55, isUniquelyReferenced_nonNull_native);
      v57 = sub_251AC8BD0(v89, v88);
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_38;
      }

      v52 = v57;
      v22 = v85;
    }

    v17 = v76;
    v59 = v90;
    v83 = v90;
    if (v56)
    {
      v60 = v90[7] + *(v46 + 72) * v52;
      v3 = v46;
      v61 = *(v46 + 40);
      v2 = v49;
      v61(v60, v80, v49);
      v7 = v47;
      (*(v3 + 8))(v47, v2);
      sub_251B1B13C(v17, &qword_2813E7500, MEMORY[0x277CC9578]);
    }

    else
    {
      v90[(v52 >> 6) + 8] |= 1 << v52;
      v62 = v59[6] + 16 * v52;
      *v62 = v89;
      *(v62 + 8) = v88;
      v63 = v59[7] + *(v46 + 72) * v52;
      v3 = v46;
      v2 = v49;
      v78(v63, v80, v49);
      v7 = v47;
      (*(v3 + 8))(v47, v2);
      sub_251B1B13C(v17, &qword_2813E7500, MEMORY[0x277CC9578]);
      v64 = v59[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_36;
      }

      v59[2] = v66;
    }

    v26 = v82;
    goto LABEL_6;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_251C71A14();
  __break(1u);
  return result;
}

uint64_t sub_251B1B020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B1B080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_251B1B0E8()
{
  result = qword_2813E1FC0;
  if (!qword_2813E1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1FC0);
  }

  return result;
}

uint64_t sub_251B1B13C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B1B198(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251B1B198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_251B1B1EC()
{
  result = qword_2813E1D20;
  if (!qword_2813E1D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E1D20);
  }

  return result;
}

uint64_t HTTPMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x5443454E4E4F43;
  v3 = 5526864;
  if (v1 != 6)
  {
    v3 = 0x4543415254;
  }

  v4 = 0x534E4F4954504FLL;
  if (v1 != 4)
  {
    v4 = 1414745936;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 5522759;
  if (v1 != 2)
  {
    v5 = 1145128264;
  }

  if (*v0)
  {
    v2 = 0x4554454C4544;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_251B1B308(uint64_t a1, unsigned __int8 a2)
{
  sub_251C70FB4();
}

uint64_t sub_251B1B40C(uint64_t a1, unsigned __int8 a2)
{
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

HealthRecordsDaemon::HTTPMethod_optional __swiftcall HTTPMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_251C71854();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_251B1B590()
{
  result = qword_27F479FC0;
  if (!qword_27F479FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479FC0);
  }

  return result;
}

void sub_251B1B60C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x5443454E4E4F43;
  v5 = 0xE300000000000000;
  v6 = 5526864;
  if (v2 != 6)
  {
    v6 = 0x4543415254;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x534E4F4954504FLL;
  if (v2 != 4)
  {
    v8 = 1414745936;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5522759;
  if (v2 != 2)
  {
    v10 = 1145128264;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x4554454C4544;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for HTTPMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTTPMethod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_251B1B858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_251B1B8E0(uint64_t a1)
{
  v2 = sub_251B1BB08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251B1B91C(uint64_t a1)
{
  v2 = sub_251B1BB08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Catalog.encode(to:)(void *a1)
{
  sub_251B1BD8C(0, &qword_27F479FC8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B1BB08();

  sub_251C71B14();
  v10[1] = v8;
  sub_251B1BB5C(0);
  sub_251B1BDF0(&qword_27F479FE0, &qword_27F479FE8, &protocol conformance descriptor for CatalogEntry, MEMORY[0x277D83948]);
  sub_251C71964();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_251B1BB08()
{
  result = qword_27F479FD0;
  if (!qword_27F479FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479FD0);
  }

  return result;
}

void sub_251B1BB5C(uint64_t a1)
{
  if (!qword_27F479FD8)
  {
    type metadata accessor for CatalogEntry(255);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479FD8);
    }
  }
}

uint64_t Catalog.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_251B1BD8C(0, &qword_27F479FF0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B1BB08();
  sub_251C71B04();
  if (!v2)
  {
    sub_251B1BB5C(0);
    sub_251B1BDF0(&qword_27F479FF8, &qword_27F47A000, &protocol conformance descriptor for CatalogEntry, MEMORY[0x277D83978]);
    sub_251C718D4();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_251B1BD8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251B1BB08();
    v7 = a3(a1, &type metadata for Catalog.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251B1BDF0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251B1BB5C(255);
    sub_251B1BE6C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251B1BE6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CatalogEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251B1BEE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_251B1BF28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_251B1BF88()
{
  result = qword_27F47A008;
  if (!qword_27F47A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A008);
  }

  return result;
}

unint64_t sub_251B1BFE0()
{
  result = qword_27F47A010;
  if (!qword_27F47A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A010);
  }

  return result;
}

unint64_t sub_251B1C038()
{
  result = qword_27F47A018;
  if (!qword_27F47A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A018);
  }

  return result;
}

uint64_t sub_251B1C08C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_251C70DE4();
      sub_251B1C918(&qword_27F47A020, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_251C70C34();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_251B1C26C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_251B1C26C(v5, v6);
  }

  sub_251C70DE4();
  sub_251B1C918(&qword_27F47A020, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_251C70C34();
}

uint64_t sub_251B1C26C(uint64_t a1, uint64_t a2)
{
  result = sub_251C6FB74();
  if (!result || (result = sub_251C6FBA4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_251C6FB94();
      sub_251C70DE4();
      sub_251B1C918(&qword_27F47A020, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_251C70C34();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251B1C34C(uint64_t a1, unint64_t a2)
{
  v5 = sub_251C70DE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C70C64();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v16 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v16)
  {
    if (a1 == a1 >> 32)
    {
LABEL_11:
      sub_251AFEBE4();
      swift_allocError();
      *v23 = xmmword_251C77FD0;
      *(v23 + 16) = 1;
      swift_willThrow();
      return v10;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v36 = v12;
  v40 = v13;
  sub_251B1C918(&qword_27F47A020, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  *&v37 = v2;
  sub_251C70C54();
  sub_251A858C4(a1, a2);
  v17 = v37;
  sub_251B1C08C(a1, a2, v8);
  v33 = v17;
  sub_251A83028(a1, a2);
  sub_251C70C44();
  (*(v6 + 8))(v8, v5);
  v34 = v15;
  v35 = v10;
  (*(v10 + 16))(v40, v15, v36);
  sub_251B1C918(&qword_27F47A028, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  result = sub_251C710B4();
  v19 = v38;
  v20 = v39;
  v21 = *(v38 + 16);
  if (v39 == v21)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_9:
    (*(v35 + 8))(v34, v36);

    v38 = v22;
    sub_251B1C8C8();
    sub_251B1C918(&qword_2813E1E40, sub_251B1C8C8, MEMORY[0x277D83958]);
    v10 = sub_251C70EA4();

    return v10;
  }

  v40 = v38 + 32;
  v22 = MEMORY[0x277D84F90];
  v37 = xmmword_251C74800;
  v24 = v39;
  while ((v20 & 0x8000000000000000) == 0)
  {
    if (v24 >= *(v19 + 16))
    {
      goto LABEL_23;
    }

    v25 = *(v40 + v24);
    sub_251B1C80C(0);
    v26 = swift_allocObject();
    *(v26 + 16) = v37;
    *(v26 + 56) = MEMORY[0x277D84B78];
    *(v26 + 64) = MEMORY[0x277D84BC0];
    *(v26 + 32) = v25;
    v27 = sub_251C70F44();
    v29 = v28;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251C38CCC(0, *(v22 + 16) + 1, 1, v22);
      v22 = result;
    }

    v31 = *(v22 + 16);
    v30 = *(v22 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_251C38CCC((v30 > 1), v31 + 1, 1, v22);
      v22 = result;
    }

    ++v24;
    *(v22 + 16) = v31 + 1;
    v32 = v22 + 16 * v31;
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
    if (v21 == v24)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_251B1C80C(uint64_t a1)
{
  if (!qword_27F47A030)
  {
    sub_251B1C864();
    v1 = sub_251C719B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47A030);
    }
  }
}

unint64_t sub_251B1C864()
{
  result = qword_27F47A038;
  if (!qword_27F47A038)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F47A038);
  }

  return result;
}

void sub_251B1C8C8()
{
  if (!qword_2813E1E48)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1E48);
    }
  }
}

uint64_t sub_251B1C918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251B1C960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v47 = a1;
  v4 = sub_251C70104();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_251C700F4();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_251C700D4();
  v8 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_251B1D388(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = &v37 - v13;
  sub_251B1D388(0, &qword_27F4793D8, MEMORY[0x277CC9A70], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - v15;
  sub_251B1D388(0, &qword_27F4793E0, MEMORY[0x277CC99E8], v11);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v37 - v18;
  v20 = sub_251C6FC94();
  v38 = *(v20 - 8);
  v39 = v20;
  MEMORY[0x28223BE20](v20);
  v45 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_251C701C4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 104))(v25, *MEMORY[0x277CC99B8], v22);
  v48 = a2;
  v26 = sub_251C701D4();
  (*(v23 + 8))(v25, v22);
  if (v26 == v47 + 1)
  {
    return sub_251C700C4();
  }

  v28 = sub_251C701E4();
  (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  v29 = sub_251C70244();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  sub_251C6FC74();
  (*(v8 + 104))(v10, *MEMORY[0x277CC9878], v49);
  v30 = v40;
  v31 = v42;
  (*(v40 + 104))(v7, *MEMORY[0x277CC98F0], v42);
  v33 = v43;
  v32 = v44;
  v34 = v41;
  (*(v43 + 104))(v41, *MEMORY[0x277CC9900], v44);
  sub_251C70194();
  (*(v33 + 8))(v34, v32);
  (*(v30 + 8))(v7, v31);
  (*(v8 + 8))(v10, v49);
  v35 = sub_251C70014();
  v36 = *(v35 - 8);
  result = (*(v36 + 48))(v50, 1, v35);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v38 + 8))(v45, v39);
    return (*(v36 + 32))(v46, v50, v35);
  }

  return result;
}

uint64_t sub_251B1D048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = a1;
  sub_251B1D388(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_251C6FC94();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B1D388(0, &qword_27F479AA0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v8 = sub_251C701C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_251C76AF0;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x277CC9978], v8);
  v14(v13 + v10, *MEMORY[0x277CC9988], v8);
  v14(v13 + 2 * v10, *MEMORY[0x277CC9998], v8);
  sub_251B1D3EC(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_251C700E4();

  sub_251C70134();
  v15 = sub_251C70014();
  v16 = *(v15 - 8);
  result = (*(v16 + 48))(v4, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 8))(v7, v19);
    return (*(v16 + 32))(v20, v4, v15);
  }

  return result;
}

void sub_251B1D388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B1D3EC(uint64_t a1)
{
  v2 = sub_251C701C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_251B1D700(0);
    v9 = sub_251C71674();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_251B1DAB0(&qword_27F47A048, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_251C70E84();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_251B1DAB0(&qword_27F47A050, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_251C70ED4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_251B1D700(uint64_t a1)
{
  if (!qword_27F47A040)
  {
    sub_251C701C4();
    sub_251B1DAB0(&qword_27F47A048, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
    v1 = sub_251C71684();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47A040);
    }
  }
}

unint64_t sub_251B1D794(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_251C717F4();
    if (result)
    {
LABEL_3:
      sub_251B1DA1C(0);
      result = sub_251C71674();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_251C717F4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x25308D460](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_251C709A4();
    sub_251B1DAB0(&qword_27F47A060, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_251C70E84();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_251B1DAB0(&qword_27F47A068, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_251C70ED4();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_251B1DA1C(uint64_t a1)
{
  if (!qword_27F47A058)
  {
    sub_251C709A4();
    sub_251B1DAB0(&qword_27F47A060, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    v1 = sub_251C71684();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47A058);
    }
  }
}

uint64_t sub_251B1DAB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251B1DAF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_251B1DB40(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_251B1DB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  *(v6 + 112) = a5;
  *(v6 + 120) = a6;
  *(v6 + 96) = a2;
  *(v6 + 104) = a4;
  *(v6 + 328) = a3;
  *(v6 + 88) = a1;
  *(v6 + 128) = type metadata accessor for HTTPError(0);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  v11 = sub_251C6FE64();
  *(v6 + 152) = v11;
  *(v6 + 160) = *(v11 - 8);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = type metadata accessor for WebRequestResponseError.ErrorType(0);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = type metadata accessor for WebRequestResponseError(0);
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = type metadata accessor for ClinicalDocumentDownloadRequest(0);
  v12 = swift_task_alloc();
  *(v6 + 280) = v12;
  v14 = swift_task_alloc();
  *(v6 + 288) = v14;
  *v14 = v6;
  v14[1] = sub_251B1DDF4;

  return sub_251B207C0(v12, a2, v9, 0, v13, a5, a6);
}

uint64_t sub_251B1DDF4()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_251B1E920;
  }

  else
  {
    v2 = sub_251B1DF08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_251B1DF08()
{
  v1 = v0[35];
  v0[5] = v0[34];
  v0[6] = &off_2863FC100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_251B21DEC(v1, boxed_opaque_existential_1, type metadata accessor for ClinicalDocumentDownloadRequest);

  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_251B1E024;

  JUMPOUT(0x251C6A968);
}

uint64_t sub_251B1E024(void *a1)
{

  if (v1)
  {
    v3 = sub_251B1E294;
  }

  else
  {

    v3 = sub_251B1E13C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251B1E13C()
{
  (*(v0[20] + 32))(v0[11], v0[21], v0[19]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_251B21F90(v0[35], type metadata accessor for ClinicalDocumentDownloadRequest);

  v1 = v0[1];

  return v1();
}

uint64_t sub_251B1E294()
{
  v47 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 184);
  sub_251B21FF0(*(v0 + 200), v4, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251B21FF0(v4, v6, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4(v0 + 16, v2);
  sub_251B21DEC(v6, v2 + *(v5 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251B21D94();
  swift_willThrowTypedImpl();
  sub_251B21F90(v6, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251B21FF0(v2, v1, type metadata accessor for WebRequestResponseError);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_251B21FF0(v1, v3, type metadata accessor for WebRequestResponseError);
  sub_251B21DEC(v3 + *(v5 + 20), v7, type metadata accessor for WebRequestResponseError.ErrorType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + 184);
  if (EnumCaseMultiPayload != 1)
  {
    v20 = type metadata accessor for WebRequestResponseError.ErrorType;
LABEL_10:
    sub_251B21F90(v9, v20);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    v23 = sub_251C70764();
    __swift_project_value_buffer(v23, qword_2813E8130);
    sub_251B21DEC(v21, v22, type metadata accessor for WebRequestResponseError);
    v24 = sub_251C70744();
    v25 = sub_251C713D4();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 240);
    if (v26)
    {
      v29 = *(v0 + 224);
      v28 = *(v0 + 232);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136315138;
      v46 = v31;
      sub_251B21DEC(v27, v28, type metadata accessor for WebRequestResponseError);
      sub_251B21DEC(v28, v29, type metadata accessor for WebRequestResponseError);
      sub_251C719F4();
      v32 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v33 = sub_251C70F74();
      v35 = v34;
      sub_251B21F90(v28, type metadata accessor for WebRequestResponseError);
      sub_251B21F90(v27, type metadata accessor for WebRequestResponseError);
      v36 = sub_251B10780(v33, v35, &v46);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_251A6C000, v24, v25, "ClinicalDocumentDownloadHandler performFileDownload HTTPError %s : re-throwing error", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x25308E2B0](v31, -1, -1);
      MEMORY[0x25308E2B0](v30, -1, -1);
    }

    else
    {

      sub_251B21F90(v27, type metadata accessor for WebRequestResponseError);
    }

    v16 = *(v0 + 280);
    v17 = *(v0 + 248);
    swift_allocError();
    sub_251B21DEC(v17, v37, type metadata accessor for WebRequestResponseError);
    swift_willThrow();
    goto LABEL_16;
  }

  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  sub_251B21FF0(v9, v10, type metadata accessor for HTTPError);
  sub_251B21DEC(v10, v11, type metadata accessor for HTTPError);
  v12 = swift_getEnumCaseMultiPayload();
  v13 = *(v0 + 136);
  if (v12 != 2)
  {
    sub_251B21F90(v13, type metadata accessor for HTTPError);
LABEL_9:
    v9 = *(v0 + 144);
    v20 = type metadata accessor for HTTPError;
    goto LABEL_10;
  }

  v14 = v13[1];
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = sub_251C4EEAC(0x20726572616542, 0xE700000000000000, *v13, v14);

  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v0 + 328))
  {
    v16 = *(v0 + 280);
    v17 = *(v0 + 248);
    v18 = *(v0 + 144);
    sub_251B21E54();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
    sub_251B21F90(v18, type metadata accessor for HTTPError);
LABEL_16:
    sub_251B21F90(v17, type metadata accessor for WebRequestResponseError);
    sub_251B21F90(v16, type metadata accessor for ClinicalDocumentDownloadRequest);

    v38 = *(v0 + 8);

    return v38();
  }

  v40 = swift_task_alloc();
  *(v0 + 312) = v40;
  *v40 = v0;
  v40[1] = sub_251B1EA38;
  v41 = *(v0 + 112);
  v42 = *(v0 + 120);
  v43 = *(v0 + 96);
  v44 = *(v0 + 104);
  v45 = *(v0 + 88);

  return sub_251B1DB90(v45, v43, 1, v44, v41, v42);
}

uint64_t sub_251B1E920()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251B1EA38()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_251B1ECBC;
  }

  else
  {
    v2 = sub_251B1EB4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251B1EB4C()
{
  v1 = v0[31];
  sub_251B21F90(v0[18], type metadata accessor for HTTPError);
  sub_251B21F90(v1, type metadata accessor for WebRequestResponseError);
  sub_251B21F90(v0[35], type metadata accessor for ClinicalDocumentDownloadRequest);

  v2 = v0[1];

  return v2();
}

uint64_t sub_251B1ECBC()
{
  v1 = v0[35];
  v2 = v0[31];
  sub_251B21F90(v0[18], type metadata accessor for HTTPError);
  sub_251B21F90(v2, type metadata accessor for WebRequestResponseError);
  sub_251B21F90(v1, type metadata accessor for ClinicalDocumentDownloadRequest);

  v3 = v0[1];

  return v3();
}

uint64_t sub_251B1EE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  *(v5 + 192) = a4;
  *(v5 + 200) = a5;
  *(v5 + 408) = a2;
  *(v5 + 176) = a1;
  *(v5 + 184) = a3;
  *(v5 + 208) = type metadata accessor for HTTPError(0);
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = type metadata accessor for WebRequestResponseError.ErrorType(0);
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = type metadata accessor for WebRequestResponseError(0);
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = type metadata accessor for ClinicalDocumentDownloadRequest(0);
  v10 = swift_task_alloc();
  *(v5 + 336) = v10;
  v12 = swift_task_alloc();
  *(v5 + 344) = v12;
  *v12 = v5;
  v12[1] = sub_251B1F034;

  return sub_251B207C0(v10, a1, v8, 1, v11, a4, a5);
}

uint64_t sub_251B1F034()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_251B202A4;
  }

  else
  {
    v2 = sub_251B1F148;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_251B1F148()
{
  v1 = v0[42];
  v0[13] = v0[41];
  v0[14] = &off_2863FC100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 10);
  sub_251B21DEC(v1, boxed_opaque_existential_1, type metadata accessor for ClinicalDocumentDownloadRequest);

  v3 = swift_task_alloc();
  v0[45] = v3;
  *v3 = v0;
  v3[1] = sub_251B1F264;

  JUMPOUT(0x251C695F4);
}

uint64_t sub_251B1F264(uint64_t a1)
{
  *(*v2 + 368) = a1;

  if (v1)
  {
    v3 = sub_251B1FB80;
  }

  else
  {
    v3 = sub_251B1F378;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251B1F378()
{
  v56 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (v3)
    {
      if (v2 != v2 >> 32)
      {
        goto LABEL_10;
      }
    }

    else if ((v1 & 0xFF000000000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v3 != 2 || *(v2 + 16) == *(v2 + 24))
  {
LABEL_9:
    sub_251A83028(*(v0 + 152), *(v0 + 160));
    v2 = 0;
    v1 = 0xF000000000000000;
  }

LABEL_10:
  v4 = *(v0 + 368);
  sub_251A823B4(v0 + 80, v0 + 16);
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  *(v0 + 72) = v4;
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  v5 = *(v0 + 64);
  if (v5 >> 60 != 15)
  {
    v26 = *(v0 + 336);
    v54 = *(v0 + 56);
    sub_251A858C4(v54, v5);
    sub_251A857E0(v0 + 16);
    sub_251B21F90(v26, type metadata accessor for ClinicalDocumentDownloadRequest);

    v27 = *(v0 + 8);

    return v27(v54, v5);
  }

  sub_251B21E54();
  v6 = swift_allocError();
  *v7 = 1;
  swift_willThrow();
  sub_251A857E0(v0 + 16);
  *(v0 + 168) = v6;
  v8 = v6;
  sub_251A82284();
  if (!swift_dynamicCast())
  {
    v21 = *(v0 + 336);
LABEL_32:
    sub_251B21F90(v21, type metadata accessor for ClinicalDocumentDownloadRequest);

    v48 = *(v0 + 8);

    return v48();
  }

  v10 = *(v0 + 304);
  v9 = *(v0 + 312);
  v11 = *(v0 + 272);
  v12 = *(v0 + 240);

  sub_251B21FF0(v9, v10, type metadata accessor for WebRequestResponseError);
  sub_251B21DEC(v10 + *(v11 + 20), v12, type metadata accessor for WebRequestResponseError.ErrorType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *(v0 + 240);
  if (EnumCaseMultiPayload != 1)
  {
    v29 = type metadata accessor for WebRequestResponseError.ErrorType;
LABEL_25:
    sub_251B21F90(v14, v29);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 296);
    v31 = *(v0 + 304);
    v32 = sub_251C70764();
    __swift_project_value_buffer(v32, qword_2813E8130);
    sub_251B21DEC(v31, v30, type metadata accessor for WebRequestResponseError);
    v33 = sub_251C70744();
    v34 = sub_251C713D4();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 296);
    if (v35)
    {
      v38 = *(v0 + 280);
      v37 = *(v0 + 288);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v55 = v40;
      *v39 = 136315138;
      sub_251B21DEC(v36, v37, type metadata accessor for WebRequestResponseError);
      sub_251B21DEC(v37, v38, type metadata accessor for WebRequestResponseError);
      sub_251C719F4();
      v41 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v42 = sub_251C70F74();
      v44 = v43;
      sub_251B21F90(v37, type metadata accessor for WebRequestResponseError);
      sub_251B21F90(v36, type metadata accessor for WebRequestResponseError);
      v45 = sub_251B10780(v42, v44, &v55);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_251A6C000, v33, v34, "ClinicalDocumentDownloadHandler performDataRequest WebRequestResponseError %s : re-throwing error", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x25308E2B0](v40, -1, -1);
      MEMORY[0x25308E2B0](v39, -1, -1);
    }

    else
    {

      sub_251B21F90(v36, type metadata accessor for WebRequestResponseError);
    }

    v21 = *(v0 + 336);
    v46 = *(v0 + 304);
    sub_251B21D94();
    swift_allocError();
    sub_251B21DEC(v46, v47, type metadata accessor for WebRequestResponseError);
    swift_willThrow();
    v25 = v46;
    goto LABEL_31;
  }

  v16 = *(v0 + 216);
  v15 = *(v0 + 224);
  sub_251B21FF0(v14, v15, type metadata accessor for HTTPError);
  sub_251B21DEC(v15, v16, type metadata accessor for HTTPError);
  v17 = swift_getEnumCaseMultiPayload();
  v18 = *(v0 + 216);
  if (v17 != 2)
  {
    sub_251B21F90(v18, type metadata accessor for HTTPError);
LABEL_24:
    v14 = *(v0 + 224);
    v29 = type metadata accessor for HTTPError;
    goto LABEL_25;
  }

  v19 = v18[1];
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = sub_251C4EEAC(0x20726572616542, 0xE700000000000000, *v18, v19);

  if ((v20 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(v0 + 408))
  {
    v21 = *(v0 + 336);
    v22 = *(v0 + 304);
    v23 = *(v0 + 224);
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
    sub_251B21F90(v23, type metadata accessor for HTTPError);
    v25 = v22;
LABEL_31:
    sub_251B21F90(v25, type metadata accessor for WebRequestResponseError);
    goto LABEL_32;
  }

  v49 = swift_task_alloc();
  *(v0 + 376) = v49;
  *v49 = v0;
  v49[1] = sub_251B203AC;
  v50 = *(v0 + 192);
  v51 = *(v0 + 200);
  v53 = *(v0 + 176);
  v52 = *(v0 + 184);

  return sub_251B1EE30(v53, 1, v52, v50, v51);
}

uint64_t sub_251B1FB80()
{
  v52 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 248);
  sub_251B21FF0(*(v0 + 256), v2, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251B21FF0(v2, v4, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4(v0 + 80, v1);
  sub_251B21DEC(v4, v1 + *(v3 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251B21D94();
  swift_willThrowTypedImpl();
  sub_251B21F90(v4, type metadata accessor for WebRequestResponseError.ErrorType);
  v5 = swift_allocError();
  sub_251B21FF0(v1, v6, type metadata accessor for WebRequestResponseError);
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  *(v0 + 168) = v5;
  v7 = v5;
  sub_251A82284();
  if (!swift_dynamicCast())
  {
    v20 = *(v0 + 336);
LABEL_19:
    sub_251B21F90(v20, type metadata accessor for ClinicalDocumentDownloadRequest);

    v43 = *(v0 + 8);

    return v43();
  }

  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v10 = *(v0 + 272);
  v11 = *(v0 + 240);

  sub_251B21FF0(v8, v9, type metadata accessor for WebRequestResponseError);
  sub_251B21DEC(v9 + *(v10 + 20), v11, type metadata accessor for WebRequestResponseError.ErrorType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(v0 + 240);
  if (EnumCaseMultiPayload != 1)
  {
    v25 = type metadata accessor for WebRequestResponseError.ErrorType;
LABEL_12:
    sub_251B21F90(v13, v25);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 296);
    v26 = *(v0 + 304);
    v28 = sub_251C70764();
    __swift_project_value_buffer(v28, qword_2813E8130);
    sub_251B21DEC(v26, v27, type metadata accessor for WebRequestResponseError);
    v29 = sub_251C70744();
    v30 = sub_251C713D4();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 296);
    if (v31)
    {
      v34 = *(v0 + 280);
      v33 = *(v0 + 288);
      v35 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = v50;
      *v35 = 136315138;
      sub_251B21DEC(v32, v33, type metadata accessor for WebRequestResponseError);
      sub_251B21DEC(v33, v34, type metadata accessor for WebRequestResponseError);
      sub_251C719F4();
      v36 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v37 = sub_251C70F74();
      v39 = v38;
      sub_251B21F90(v33, type metadata accessor for WebRequestResponseError);
      sub_251B21F90(v32, type metadata accessor for WebRequestResponseError);
      v40 = sub_251B10780(v37, v39, &v51);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_251A6C000, v29, v30, "ClinicalDocumentDownloadHandler performDataRequest WebRequestResponseError %s : re-throwing error", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x25308E2B0](v50, -1, -1);
      MEMORY[0x25308E2B0](v35, -1, -1);
    }

    else
    {

      sub_251B21F90(v32, type metadata accessor for WebRequestResponseError);
    }

    v20 = *(v0 + 336);
    v41 = *(v0 + 304);
    swift_allocError();
    sub_251B21DEC(v41, v42, type metadata accessor for WebRequestResponseError);
    swift_willThrow();
    v24 = v41;
    goto LABEL_18;
  }

  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  sub_251B21FF0(v13, v14, type metadata accessor for HTTPError);
  sub_251B21DEC(v14, v15, type metadata accessor for HTTPError);
  v16 = swift_getEnumCaseMultiPayload();
  v17 = *(v0 + 216);
  if (v16 != 2)
  {
    sub_251B21F90(v17, type metadata accessor for HTTPError);
LABEL_11:
    v13 = *(v0 + 224);
    v25 = type metadata accessor for HTTPError;
    goto LABEL_12;
  }

  v18 = v17[1];
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = sub_251C4EEAC(0x20726572616542, 0xE700000000000000, *v17, v18);

  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*(v0 + 408))
  {
    v20 = *(v0 + 336);
    v21 = *(v0 + 304);
    v22 = *(v0 + 224);
    sub_251B21E54();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
    sub_251B21F90(v22, type metadata accessor for HTTPError);
    v24 = v21;
LABEL_18:
    sub_251B21F90(v24, type metadata accessor for WebRequestResponseError);
    goto LABEL_19;
  }

  v45 = swift_task_alloc();
  *(v0 + 376) = v45;
  *v45 = v0;
  v45[1] = sub_251B203AC;
  v46 = *(v0 + 192);
  v47 = *(v0 + 200);
  v49 = *(v0 + 176);
  v48 = *(v0 + 184);

  return sub_251B1EE30(v49, 1, v48, v46, v47);
}

uint64_t sub_251B202A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251B203AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 384) = v2;

  if (v2)
  {
    v7 = sub_251B20654;
  }

  else
  {
    *(v6 + 392) = a2;
    *(v6 + 400) = a1;
    v7 = sub_251B204E0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_251B204E0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  sub_251B21F90(*(v0 + 224), type metadata accessor for HTTPError);
  sub_251B21F90(v2, type metadata accessor for WebRequestResponseError);
  sub_251B21F90(v1, type metadata accessor for ClinicalDocumentDownloadRequest);

  v5 = *(v0 + 392);
  v6 = *(v0 + 400);

  v3 = *(v0 + 8);

  return v3(v6, v5);
}

uint64_t sub_251B20654()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  sub_251B21F90(*(v0 + 224), type metadata accessor for HTTPError);
  sub_251B21F90(v2, type metadata accessor for WebRequestResponseError);
  sub_251B21F90(v1, type metadata accessor for ClinicalDocumentDownloadRequest);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_251B207C0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 200) = a6;
  *(v7 + 208) = a7;
  *(v7 + 345) = a4;
  *(v7 + 344) = a3;
  *(v7 + 184) = a1;
  *(v7 + 192) = a2;
  sub_251AF3A84(0);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = type metadata accessor for ClinicalDocumentDownloadRequest(0);
  *(v7 + 256) = swift_task_alloc();
  v8 = sub_251C70074();
  *(v7 + 264) = v8;
  *(v7 + 272) = *(v8 - 8);
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251B20918, 0, 0);
}

uint64_t sub_251B20918()
{
  v57 = v0;
  v1 = [*(v0 + 192) accountIdentifier];
  if (!v1)
  {
    sub_251B21E54();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    v16 = *(v0 + 8);
LABEL_8:

    return v16();
  }

  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v6 = *(v0 + 344);
  v7 = v1;
  sub_251C70054();

  (*(v5 + 32))(v3, v2, v4);
  if (v6)
  {
    v8 = swift_task_alloc();
    *(v0 + 296) = v8;
    *v8 = v0;
    v8[1] = sub_251B20EA4;
    v9 = *(v0 + 288);

    return sub_251C5F768(v9);
  }

  v12 = *(v0 + 208);
  *(v0 + 320) = v12;
  v13 = *(v0 + 256);
  v14 = *(v0 + 192);
  v15 = v12;
  sub_251BD3948(v14, v13);
  if (*(v0 + 345))
  {
    HKFHIRCredential.asAuthorizationHeader()(&v56);
    object = v56.value.name._object;
    if (v56.value.name._object)
    {
      countAndFlagsBits = v56.value.name._countAndFlagsBits;
      v20 = v56.value.value._countAndFlagsBits;
      v19 = v56.value.value._object;
      v21 = *(v0 + 256);
      if (*(v21 + 8))
      {
        v22 = sub_251A85478();
        v24 = v22;
        v25 = *v23;
        if (*v23)
        {
          v26 = v23;
          v27 = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v26 = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v25 = sub_251C39148(0, *(v25 + 2) + 1, 1, v25);
            *v26 = v25;
          }

          v52 = countAndFlagsBits;
          v55 = v19;
          v30 = *(v25 + 2);
          v29 = *(v25 + 3);
          v31 = v30 + 1;
          v32 = v20;
          if (v30 >= v29 >> 1)
          {
            v51 = sub_251C39148((v29 > 1), v30 + 1, 1, v25);
            v31 = v30 + 1;
            v25 = v51;
            *v26 = v51;
          }

          v33 = v27;
          v34 = *(v0 + 320);
          v35 = *(v0 + 288);
          v37 = *(v0 + 264);
          v36 = *(v0 + 272);
          *(v25 + 2) = v31;
          v38 = &v25[32 * v30];
          *(v38 + 4) = v52;
          *(v38 + 5) = object;
          *(v38 + 6) = v32;
          *(v38 + 7) = v55;
          (v33)(v0 + 144, 0);

          (*(v36 + 8))(v35, v37);
        }

        else
        {
          v48 = *(v0 + 320);
          v54 = *(v0 + 288);
          v49 = *(v0 + 264);
          v50 = *(v0 + 272);
          sub_251B220A8(countAndFlagsBits, object, v20, v19);
          (v24)(v0 + 144, 0);

          (*(v50 + 8))(v54, v49);
        }
      }

      else
      {
        v44 = *(v0 + 320);
        v53 = *(v0 + 288);
        v46 = *(v0 + 264);
        v45 = *(v0 + 272);
        sub_251B22058();
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_251C74800;
        *(v47 + 32) = countAndFlagsBits;
        *(v47 + 40) = object;
        *(v47 + 48) = v20;
        *(v47 + 56) = v19;

        (*(v45 + 8))(v53, v46);
        *(v21 + 8) = v47;
      }
    }

    else
    {
      v43 = *(v0 + 320);
      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
    }

    sub_251B21FF0(*(v0 + 256), *(v0 + 184), type metadata accessor for ClinicalDocumentDownloadRequest);

    v16 = *(v0 + 8);
    goto LABEL_8;
  }

  v39 = *(v0 + 200);
  v40 = sub_251C70034();
  *(v0 + 328) = v40;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_251B21444;
  v41 = swift_continuation_init();
  sub_251B21EA8(0);
  *(v0 + 136) = v42;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_251AB5E04;
  *(v0 + 104) = &block_descriptor_9;
  *(v0 + 112) = v41;
  [v39 fetchAccountWithIdentifier:v40 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_251B20EA4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v5 = sub_251B21BB8;
  }

  else
  {
    *(v4 + 312) = a1;
    v5 = sub_251B20FCC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251B20FCC()
{
  v45 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  *(v0 + 320) = v1;
  sub_251BD3948(*(v0 + 192), *(v0 + 256));
  if (v2)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));

    v3 = *(v0 + 8);
LABEL_19:

    return v3();
  }

  if (*(v0 + 345))
  {
    HKFHIRCredential.asAuthorizationHeader()(&v44);
    object = v44.value.name._object;
    if (v44.value.name._object)
    {
      countAndFlagsBits = v44.value.name._countAndFlagsBits;
      v7 = v44.value.value._countAndFlagsBits;
      v6 = v44.value.value._object;
      v8 = *(v0 + 256);
      if (*(v8 + 8))
      {
        v9 = sub_251A85478();
        v11 = v9;
        v12 = *v10;
        if (*v10)
        {
          v13 = v10;
          v14 = v9;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v13 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v12 = sub_251C39148(0, *(v12 + 2) + 1, 1, v12);
            *v13 = v12;
          }

          v40 = countAndFlagsBits;
          v43 = v6;
          v17 = *(v12 + 2);
          v16 = *(v12 + 3);
          v18 = v17 + 1;
          v19 = v7;
          if (v17 >= v16 >> 1)
          {
            v38 = sub_251C39148((v16 > 1), v17 + 1, 1, v12);
            v18 = v17 + 1;
            v12 = v38;
            *v13 = v38;
          }

          v20 = v14;
          v21 = *(v0 + 320);
          v22 = *(v0 + 288);
          v24 = *(v0 + 264);
          v23 = *(v0 + 272);
          *(v12 + 2) = v18;
          v25 = &v12[32 * v17];
          *(v25 + 4) = v40;
          *(v25 + 5) = object;
          *(v25 + 6) = v19;
          *(v25 + 7) = v43;
          (v20)(v0 + 144, 0);

          (*(v23 + 8))(v22, v24);
        }

        else
        {
          v35 = *(v0 + 320);
          v42 = *(v0 + 288);
          v36 = *(v0 + 264);
          v37 = *(v0 + 272);
          sub_251B220A8(countAndFlagsBits, object, v7, v6);
          (v11)(v0 + 144, 0);

          (*(v37 + 8))(v42, v36);
        }
      }

      else
      {
        v31 = *(v0 + 320);
        v41 = *(v0 + 288);
        v33 = *(v0 + 264);
        v32 = *(v0 + 272);
        sub_251B22058();
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_251C74800;
        *(v34 + 32) = countAndFlagsBits;
        *(v34 + 40) = object;
        *(v34 + 48) = v7;
        *(v34 + 56) = v6;

        (*(v32 + 8))(v41, v33);
        *(v8 + 8) = v34;
      }
    }

    else
    {
      v30 = *(v0 + 320);
      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
    }

    sub_251B21FF0(*(v0 + 256), *(v0 + 184), type metadata accessor for ClinicalDocumentDownloadRequest);

    v3 = *(v0 + 8);
    goto LABEL_19;
  }

  v26 = *(v0 + 200);
  v27 = sub_251C70034();
  *(v0 + 328) = v27;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_251B21444;
  v28 = swift_continuation_init();
  sub_251B21EA8(0);
  *(v0 + 136) = v29;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_251AB5E04;
  *(v0 + 104) = &block_descriptor_9;
  *(v0 + 112) = v28;
  [v26 fetchAccountWithIdentifier:v27 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_251B21444()
{
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_251B21C88;
  }

  else
  {
    v2 = sub_251B21554;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251B21554()
{
  v74 = v0;
  v1 = *(v0 + 176);

  v2 = [v1 gateway];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v2 baseURL];

  if (v4)
  {
    sub_251C6FE14();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = sub_251C6FE64();
  v9 = *(v8 - 8);
  v10 = v9[7];
  v10(v7, v5, 1, v8);
  sub_251B21FF0(v7, v6, sub_251AF3A84);
  v11 = v9[6];
  v12 = v11(v6, 1, v8);
  v13 = *(v0 + 240);
  if (v12 == 1)
  {
    sub_251B21F90(*(v0 + 240), sub_251AF3A84);
LABEL_7:
    v14 = *(v0 + 320);
    v15 = *(v0 + 288);
    v16 = *(v0 + 264);
    v17 = *(v0 + 272);
    v18 = *(v0 + 256);
    sub_251B21E54();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();

    (*(v17 + 8))(v15, v16);
    sub_251B21F90(v18, type metadata accessor for ClinicalDocumentDownloadRequest);

    v20 = *(v0 + 8);
    goto LABEL_25;
  }

  v21 = *(v0 + 192);
  v67 = sub_251C6FDA4();
  v68 = v22;
  v23 = v9[1];
  v23(v13, v8);
  v24 = [v21 webURL];
  if (v24)
  {
    v25 = v24;
    sub_251C6FE14();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v28 = *(v0 + 216);
  v27 = *(v0 + 224);
  v10(v28, v26, 1, v8);
  sub_251B21FF0(v28, v27, sub_251AF3A84);
  if (v11(v27, 1, v8) == 1)
  {
    v29 = *(v0 + 224);

    sub_251B21F90(v29, sub_251AF3A84);
  }

  else
  {
    v30 = *(v0 + 224);
    v31 = sub_251C6FDA4();
    v33 = v32;
    v23(v30, v8);
    v34 = sub_251C4EEAC(v67, v68, v31, v33);

    if (v34)
    {
      HKFHIRCredential.asAuthorizationHeader()(&v73);
      object = v73.value.name._object;
      if (v73.value.name._object)
      {
        countAndFlagsBits = v73.value.name._countAndFlagsBits;
        v38 = v73.value.value._countAndFlagsBits;
        v37 = v73.value.value._object;
        v39 = *(v0 + 256);
        if (*(v39 + 8))
        {
          v40 = sub_251A85478();
          v42 = v40;
          v43 = *v41;
          if (*v41)
          {
            v44 = v41;
            v45 = v40;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v44 = v43;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v43 = sub_251C39148(0, *(v43 + 2) + 1, 1, v43);
              *v44 = v43;
            }

            v69 = countAndFlagsBits;
            v72 = v37;
            v48 = *(v43 + 2);
            v47 = *(v43 + 3);
            v49 = v48 + 1;
            v50 = v38;
            if (v48 >= v47 >> 1)
            {
              v66 = sub_251C39148((v47 > 1), v48 + 1, 1, v43);
              v49 = v48 + 1;
              v43 = v66;
              *v44 = v66;
            }

            v51 = v45;
            v52 = *(v0 + 320);
            v53 = *(v0 + 288);
            v55 = *(v0 + 264);
            v54 = *(v0 + 272);
            *(v43 + 2) = v49;
            v56 = &v43[32 * v48];
            *(v56 + 4) = v69;
            *(v56 + 5) = object;
            *(v56 + 6) = v50;
            *(v56 + 7) = v72;
            (v51)(v0 + 144, 0);

            (*(v54 + 8))(v53, v55);
          }

          else
          {
            v63 = *(v0 + 320);
            v71 = *(v0 + 288);
            v64 = *(v0 + 264);
            v65 = *(v0 + 272);
            sub_251B220A8(countAndFlagsBits, object, v38, v37);
            (v42)(v0 + 144, 0);

            (*(v65 + 8))(v71, v64);
          }
        }

        else
        {
          v59 = *(v0 + 320);
          v70 = *(v0 + 288);
          v61 = *(v0 + 264);
          v60 = *(v0 + 272);
          sub_251B22058();
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_251C74800;
          *(v62 + 32) = countAndFlagsBits;
          *(v62 + 40) = object;
          *(v62 + 48) = v38;
          *(v62 + 56) = v37;

          (*(v60 + 8))(v70, v61);
          *(v39 + 8) = v62;
        }
      }

      else
      {
        v58 = *(v0 + 320);
        (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
      }

      goto LABEL_24;
    }
  }

  (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
LABEL_24:
  sub_251B21FF0(*(v0 + 256), *(v0 + 184), type metadata accessor for ClinicalDocumentDownloadRequest);

  v20 = *(v0 + 8);
LABEL_25:

  return v20();
}

uint64_t sub_251B21BB8()
{
  (*(v0[34] + 8))(v0[36], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_251B21C88(uint64_t a1, uint64_t a2)
{
  v3 = v2[41];
  v4 = v2[40];
  v5 = v2[36];
  v6 = v2[33];
  v7 = v2[34];
  v8 = v2[32];
  swift_willThrow();

  (*(v7 + 8))(v5, v6);
  sub_251B21F90(v8, type metadata accessor for ClinicalDocumentDownloadRequest);

  v9 = v2[1];

  return v9();
}

unint64_t sub_251B21D94()
{
  result = qword_27F478E50;
  if (!qword_27F478E50)
  {
    type metadata accessor for WebRequestResponseError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478E50);
  }

  return result;
}

uint64_t sub_251B21DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_251B21E54()
{
  result = qword_27F47A070;
  if (!qword_27F47A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A070);
  }

  return result;
}

void sub_251B21EA8(uint64_t a1)
{
  if (!qword_27F47A078)
  {
    sub_251B21F18();
    sub_251A82284();
    v1 = sub_251C71224();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47A078);
    }
  }
}

unint64_t sub_251B21F18()
{
  result = qword_2813E1D98;
  if (!qword_2813E1D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E1D98);
  }

  return result;
}

uint64_t sub_251B21F90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B21FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251B22058()
{
  if (!qword_27F47A080)
  {
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47A080);
    }
  }
}

void sub_251B220A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_251B22100()
{
  result = qword_27F47A088;
  if (!qword_27F47A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A088);
  }

  return result;
}

void *sub_251B221B4()
{
  MEMORY[0x25308E2B0](*(v0 + 16), -1, -1);

  return v0;
}

uint64_t sub_251B221EC()
{
  sub_251B221B4();

  return swift_deallocClassInstance();
}

uint64_t sub_251B22238(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_251B222E0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  sub_251A7EA4C(*(v0 + *(*v0 + 104)), *(v0 + *(*v0 + 104) + 8));
  sub_251B22798(v0 + *(*v0 + 112));
  return v0;
}

uint64_t sub_251B2238C()
{
  sub_251B222E0();

  return swift_deallocClassInstance();
}

unint64_t sub_251B22404(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_251ADC9F8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251B2248C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_251B225C8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_251B22798(uint64_t a1)
{
  sub_251B227F4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251B227F4(uint64_t a1)
{
  if (!qword_2813E2220)
  {
    sub_251B2284C();
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2220);
    }
  }
}

unint64_t sub_251B2284C()
{
  result = qword_2813E2228;
  if (!qword_2813E2228)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813E2228);
  }

  return result;
}

void sub_251B228E4(uint64_t a1@<X8>)
{
  sub_251B2429C();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_251B22928(uint64_t a2@<X8>)
{
  sub_251B2429C();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_251B22960(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B23E00();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B229C8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1BC8);
  __swift_project_value_buffer(v0, qword_27F4A1BC8);
  sub_251B240DC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_251C78260;
  v5 = v24 + v4;
  v6 = v24 + v4 + *(v2 + 56);
  *(v24 + v4) = 0;
  *v6 = "ACTIVITY";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "VITALS_AND_MES";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "ALERTS_AND_ECG";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "CHR";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "CYCLE_TRACKING";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "SLEEP";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "DEVICE_GENERATED";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "PATIENT_GENERATED";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B22D3C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1BE0);
  __swift_project_value_buffer(v0, qword_27F4A1BE0);
  sub_251B240DC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "latest_update_date";
  *(v7 + 8) = 18;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "data_type";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B22F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_251C70534();
      }

      else if (result == 2)
      {
        sub_251B23E00();
        sub_251C70494();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B22FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    if (!v3[2] || (sub_251B23E00(), result = sub_251C70604(), !v4))
    {
      type metadata accessor for PBDataTypeShared(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B230BC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return sub_251C703A4();
}

uint64_t sub_251B2313C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B23BE8(&qword_27F47A0D0, type metadata accessor for PBDataTypeShared, &unk_251C78490);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B231DC(uint64_t a1)
{
  v2 = sub_251B23BE8(&qword_27F47A0B8, type metadata accessor for PBDataTypeShared, &unk_251C784C8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B23248(uint64_t a1, uint64_t a2)
{
  sub_251B23BE8(&qword_27F47A0B8, type metadata accessor for PBDataTypeShared, &unk_251C784C8);

  return sub_251C705C4();
}

uint64_t sub_251B232C4(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_251C719D4() & 1) == 0 || !sub_251BB3774(a1[2], *(a1 + 24), a2[2]))
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B23BE8(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B23398()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1BF8);
  __swift_project_value_buffer(v0, qword_27F4A1BF8);
  sub_251B240DC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "current_sync_date";
  *(v7 + 8) = 17;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "data_type_shared";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "gateway_id";
  *(v12 + 8) = 10;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B235C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          type metadata accessor for PBDataTypeShared(0);
          sub_251B23BE8(&qword_27F47A0B8, type metadata accessor for PBDataTypeShared, &unk_251C784C8);
          sub_251C70554();
          break;
        case 1:
LABEL_10:
          sub_251C70534();
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B236D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    if (!*(v3[2] + 16) || (type metadata accessor for PBDataTypeShared(0), sub_251B23BE8(&qword_27F47A0B8, type metadata accessor for PBDataTypeShared, &unk_251C784C8), result = sub_251C70694(), !v4))
    {
      v8 = v3[4];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v3[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_251C70674(), !v4))
      {
        type metadata accessor for PBDaiPayload(0);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B2381C@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x277D84F90];
  a2[3] = 0;
  a2[4] = 0xE000000000000000;
  return sub_251C703A4();
}

uint64_t sub_251B23870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251B238E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251B239AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B23BE8(&qword_27F47A0E0, type metadata accessor for PBDaiPayload, &unk_251C78328);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B23A4C(uint64_t a1)
{
  v2 = sub_251B23BE8(&qword_27F47A098, type metadata accessor for PBDaiPayload, &unk_251C78360);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B23AB8(uint64_t a1, uint64_t a2)
{
  sub_251B23BE8(&qword_27F47A098, type metadata accessor for PBDaiPayload, &unk_251C78360);

  return sub_251C705C4();
}

uint64_t sub_251B23BE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251B23E00()
{
  result = qword_27F47A0D8;
  if (!qword_27F47A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A0D8);
  }

  return result;
}

uint64_t sub_251B23E54(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if ((sub_251A9C138(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v5 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PBDaiPayload(0);
  sub_251C703B4();
  sub_251B23BE8(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B23F6C(uint64_t a1)
{
  result = sub_251C703B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251B24018(uint64_t a1)
{
  sub_251B240DC(319, &qword_27F47A108, type metadata accessor for PBDataTypeShared, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251B240DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251B24198()
{
  if (!qword_27F47A118)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47A118);
    }
  }
}

unint64_t sub_251B241EC()
{
  result = qword_27F47A120;
  if (!qword_27F47A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A120);
  }

  return result;
}

unint64_t sub_251B24248()
{
  result = qword_27F47A128;
  if (!qword_27F47A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A128);
  }

  return result;
}

uint64_t HKClinicalSharingQueryDiagnosticOptions.description.getter(uint64_t a1)
{
  v1 = sub_251B2437C(&unk_2863F2DE0, a1);
  sub_251B2463C(0, &qword_27F4791B8, type metadata accessor for HKClinicalSharingQueryDiagnosticOptions);
  swift_arrayDestroy();
  return v1;
}

uint64_t HKClinicalSharingOptions.description.getter(uint64_t a1)
{
  v1 = sub_251B2437C(&unk_2863F2DA8, a1);
  sub_251B245C4(&unk_2863F2DC8);
  return v1;
}

uint64_t sub_251B2437C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48);
    v5 = MEMORY[0x277D84F90];
    v6 = a2;
    do
    {
      v8 = *(v4 - 2);
      if ((v8 & ~a2) == 0)
      {
        v10 = *(v4 - 1);
        v9 = *v4;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_251C38CCC(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_251C38CCC((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        v7 = &v5[16 * v12];
        *(v7 + 4) = v10;
        *(v7 + 5) = v9;
        if ((v8 & v6) != 0)
        {
          v6 &= ~v8;
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v6 = a2;
  }

  if (v6)
  {
    MEMORY[0x25308CDA0](0x286E776F6E6B6E75, 0xE800000000000000);
    sub_251C717C4();
    MEMORY[0x25308CDA0](41, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_251C38CCC(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_251C38CCC((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = 0;
    *(v15 + 5) = 0xE000000000000000;
  }

  sub_251B1C8C8();
  sub_251AF3520();
  v16 = sub_251C70EA4();
  v18 = v17;

  MEMORY[0x25308CDA0](v16, v18);

  MEMORY[0x25308CDA0](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_251B245C4(uint64_t a1)
{
  sub_251B2463C(0, &qword_2813E1D48, type metadata accessor for HKClinicalSharingOptions);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251B2463C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251B246A0()
{
  v1 = sub_251B2437C(&unk_2863F2DA8, *v0);
  sub_251B245C4(&unk_2863F2DC8);
  return v1;
}

uint64_t sub_251B246F0()
{
  v1 = sub_251B2437C(&unk_2863F2DE0, *v0);
  sub_251B2463C(0, &qword_27F4791B8, type metadata accessor for HKClinicalSharingQueryDiagnosticOptions);
  swift_arrayDestroy();
  return v1;
}

uint64_t HKClinicalSharingReason.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return 0x676E6974736574;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return 0xD000000000000010;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x696E692D72657375;
  }

  else
  {
    if (a1 == 1)
    {
      return 0x7A69726F68747561;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x756F72676B636162;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x617461642D77656ELL;
  }
}

uint64_t sub_251B24878@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t *a3@<X8>)
{
  sub_251AB2CCC(0);
  result = a2(a1, *(a1 + *(v6 + 48)));
  *a3 = result;
  return result;
}

uint64_t sub_251B248CC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v63 = a3;
  v4 = sub_251C70074();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2C00(0);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2D3C(0);
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B264EC(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  v64[0] = *a1;
  v21 = v64[0];
  type metadata accessor for ClinicalSharingSyncContext(0);

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v12 + 8))(v14, v11);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v15, MEMORY[0x277CBCF40]);
  v22 = sub_251C70A94();
  (*(v18 + 8))(v20, v17);
  v23 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v21 + v23, v64);
  v24 = v65;
  v25 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  (*(v25 + 16))(v24, v25);
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_1(v64);
  if (v27)
  {

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v28 = sub_251C70764();
    __swift_project_value_buffer(v28, qword_2813E8130);

    v29 = sub_251C70744();
    v30 = sub_251C713C4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v64[0] = v32;
      *v31 = 136315138;
      v34 = v54;
      v33 = v55;
      v35 = v21 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
      v36 = v53;
      (*(v54 + 16))(v53, v35, v55);
      sub_251B25DF0(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v37 = sub_251C719A4();
      v39 = v38;
      (*(v34 + 8))(v36, v33);
      v40 = sub_251B10780(v37, v39, v64);

      *(v31 + 4) = v40;
      _os_log_impl(&dword_251A6C000, v29, v30, "No DocRef creation required. DocRef already exists. Account: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x25308E2B0](v32, -1, -1);
      MEMORY[0x25308E2B0](v31, -1, -1);
    }

    v64[0] = v22;
    v41 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v41, MEMORY[0x277CBCD90]);
    v42 = sub_251C70A94();
  }

  else
  {
    v64[0] = v22;
    v44 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB2CCC(0);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v44, MEMORY[0x277CBCD90]);
    v45 = v56;
    sub_251C70B54();
    v46 = swift_allocObject();
    v47 = v57;
    *(v46 + 16) = v57;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_251B25A90;
    *(v48 + 24) = v46;
    v49 = v47;
    sub_251C70964();
    sub_251B25DF0(&qword_27F479440, sub_251AB2C00, MEMORY[0x277CBCCC0]);
    v50 = v58;
    v51 = v60;
    sub_251C70B94();

    (*(v59 + 8))(v45, v51);
    sub_251B25DF0(&qword_27F479450, sub_251AB2D3C, MEMORY[0x277CBCCE0]);
    v52 = v62;
    v42 = sub_251C70A94();

    result = (*(v61 + 8))(v50, v52);
  }

  *v63 = v42;
  return result;
}

uint64_t sub_251B25124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v11 = sub_251C70764();
  __swift_project_value_buffer(v11, qword_2813E8130);

  v12 = sub_251C70744();
  v13 = sub_251C713C4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = a2;
    v17 = v16;
    v32[0] = v16;
    *v15 = 136315138;
    (*(v7 + 16))(v9, v10 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v6);
    sub_251B25DF0(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_251C719A4();
    v19 = v7;
    v21 = v20;
    (*(v19 + 8))(v9, v6);
    v22 = sub_251B10780(v18, v21, v32);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_251A6C000, v12, v13, "Preparing create request. Account: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v23 = v17;
    a2 = v35;
    MEMORY[0x25308E2B0](v23, -1, -1);
    v24 = v15;
    v3 = v31;
    MEMORY[0x25308E2B0](v24, -1, -1);
  }

  v25 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v10 + v25, v32);
  v26 = v33;
  v27 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  sub_251BBBD38(v26, v27, a2);
  if (!v3)
  {
    sub_251AB2CCC(0);
    *(a2 + *(v28 + 48)) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_251B25430(uint64_t a1, uint64_t a2, void *a3)
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
  sub_251B25AE8(0);
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  MEMORY[0x28223BE20](v14);
  v33 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B25C68(0);
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
  sub_251B25B84(0, &qword_27F479470, &qword_27F479478, &qword_27F479480, 0x277CCAD28);
  sub_251AB3264(0, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251AB32E4();
  sub_251C70B54();

  v23 = MEMORY[0x277CBCCC0];
  sub_251B25DF0(&qword_27F4794B8, sub_251AB31B0, MEMORY[0x277CBCCC0]);
  v24 = sub_251C70A94();
  (*(v11 + 8))(v13, v10);
  v39 = v24;
  sub_251B25B84(0, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251B25C00(0);
  sub_251AB34D4();
  v25 = v33;
  sub_251C70B54();

  sub_251C70964();
  type metadata accessor for ClinicalSharingSyncContext(0);
  v26 = MEMORY[0x277CBCD88];
  sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
  sub_251B25DF0(&qword_27F47A148, sub_251B25AE8, v23);
  sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v26, MEMORY[0x277CBCD90]);
  v28 = v34;
  v27 = v35;
  sub_251C70B94();
  (*(v36 + 8))(v25, v27);
  sub_251B25DF0(&qword_27F47A150, sub_251B25C68, MEMORY[0x277CBCCE0]);
  v29 = v37;
  v30 = sub_251C70A94();
  (*(v38 + 8))(v28, v29);
  return v30;
}

unint64_t sub_251B259D8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_251B25E38(*(a1 + 16), *(a1 + 24));
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_251B25A10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251B26DF8(*(a1 + 8), *(a1 + 16));
  result = sub_251B265A4();
  *a2 = result;
  return result;
}

uint64_t sub_251B25A48@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3]);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
  }

  return result;
}

uint64_t sub_251B25A98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_251AB2CCC(0);
  result = v5(a1, *(a1 + *(v6 + 48)));
  *a2 = result;
  return result;
}

void sub_251B25AE8(uint64_t a1)
{
  if (!qword_27F47A130)
  {
    sub_251B25B84(255, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
    sub_251B25C00(255);
    sub_251AB34D4();
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47A130);
    }
  }
}

void sub_251B25B84(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
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

void sub_251B25C00(uint64_t a1)
{
  if (!qword_27F47A138)
  {
    type metadata accessor for ClinicalSharingSyncContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47A138);
    }
  }
}

void sub_251B25CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    v9 = MEMORY[0x277CBCD88];
    sub_251AFD990(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    a3(255);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v9, MEMORY[0x277CBCD90]);
    sub_251B25DF0(a4, a5, MEMORY[0x277CBCCC0]);
    v10 = sub_251C708D4();
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_251B25DAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2], a1[3]);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_251B25DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251B25E38(void *a1, unint64_t a2)
{
  sub_251B264EC(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - v6;
  v8 = sub_251C70EE4();
  v9 = [a1 valueForHTTPHeaderField_];

  if (!v9)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v22 = sub_251C70764();
    __swift_project_value_buffer(v22, qword_2813E8130);

    v23 = sub_251C70744();
    v24 = sub_251C713D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = v26;
      *v25 = 136315138;
      sub_251C70074();
      sub_251B25DF0(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v27 = sub_251C719A4();
      a2 = v28;
      v29 = sub_251B10780(v27, v28, &v41);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_251A6C000, v23, v24, "No Location header found while creating DocRef. Account: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x25308E2B0](v26, -1, -1);
      MEMORY[0x25308E2B0](v25, -1, -1);
    }

    sub_251B26550();
    swift_allocError();
    v21 = 1;
    goto LABEL_13;
  }

  sub_251C70F14();

  sub_251C6FE54();

  v10 = sub_251C6FE64();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_251AF3ADC(v7);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v12 = sub_251C70764();
    __swift_project_value_buffer(v12, qword_2813E8130);

    v13 = sub_251C70744();
    v14 = sub_251C713D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v41 = v16;
      *v15 = 136315138;
      sub_251C70074();
      sub_251B25DF0(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v17 = sub_251C719A4();
      a2 = v18;
      v19 = sub_251B10780(v17, v18, &v41);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_251A6C000, v13, v14, "Could not parse location url from header while creating DocRef. Account: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x25308E2B0](v16, -1, -1);
      MEMORY[0x25308E2B0](v15, -1, -1);
    }

    sub_251B26550();
    swift_allocError();
    v21 = 2;
LABEL_13:
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *v20 = v21;
    *(v20 + 24) = 3;
    swift_willThrow();
    return a2;
  }

  sub_251C15DC8();
  if (v2)
  {
    (*(v11 + 8))(v7, v10);
  }

  else
  {
    (*(v11 + 8))(v7, v10);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v31 = sub_251C70764();
    __swift_project_value_buffer(v31, qword_2813E8130);

    v32 = sub_251C70744();
    v33 = sub_251C713C4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v34 = 136315138;
      sub_251C70074();
      sub_251B25DF0(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = sub_251C719A4();
      v37 = sub_251B10780(v35, v36, &v41);

      *(v34 + 4) = v37;
      _os_log_impl(&dword_251A6C000, v32, v33, "Successfully created DocRef. Account: %s", v34, 0xCu);
      v38 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x25308E2B0](v38, -1, -1);
      MEMORY[0x25308E2B0](v34, -1, -1);
    }
  }

  return a2;
}

void sub_251B264EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251B26550()
{
  result = qword_27F47A158;
  if (!qword_27F47A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A158);
  }

  return result;
}

uint64_t sub_251B265A4()
{
  v1 = v0;
  v2 = sub_251C70074();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B28C98(0);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B2916C(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v13 = sub_251C70764();
  __swift_project_value_buffer(v13, qword_2813E8130);

  v14 = sub_251C70744();
  v15 = sub_251C713C4();

  v16 = os_log_type_enabled(v14, v15);
  v44 = v2;
  v45 = v12;
  v43 = v3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v59[0] = v18;
    *v17 = 136315138;
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_251C719A4();
    v21 = sub_251B10780(v19, v20, v59);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_251A6C000, v14, v15, "Updating syncSuccessful info. Account: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x25308E2B0](v18, -1, -1);
    MEMORY[0x25308E2B0](v17, -1, -1);
  }

  v22 = v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode;
  v23 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
  v59[0] = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
  v24 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
  v60 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
  v59[2] = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
  v59[3] = v24;
  v25 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
  v61 = v25;
  v59[1] = v23;
  v26 = *&v59[0];
  v27 = *(&v60 + 1);
  v28 = v60;
  if (*&v59[0])
  {
  }

  v51 = v26;
  v29 = *(v22 + 24);
  v52 = *(v22 + 8);
  v53 = v29;
  v54 = *(v22 + 40);
  v55 = *(v22 + 56);
  v56 = v28;
  v57 = v27;
  v58 = v25;
  sub_251B29234(v59, v50, sub_251B28E04);
  sub_251B2929C(&v51, sub_251B28E04);
  v30 = v45;
  sub_251BEDEC4(v45);

  sub_251A823B4(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore, v50);
  v31 = __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  v33 = v42;
  v32 = v43;
  v34 = v44;
  (*(v43 + 16))(v42, v1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v44);
  if (*(v1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_firstTimeShare) == 1)
  {
    sub_251B28ED0(v30, v10, &qword_2813E7500, MEMORY[0x277CC9578]);
  }

  else
  {
    v35 = sub_251C70014();
    (*(*(v35 - 8) + 56))(v10, 1, 1, v35);
  }

  v36 = sub_251AC44F0(v33, v10, v30, *v31);
  v37 = MEMORY[0x277CC9578];
  sub_251B28E54(v10, &qword_2813E7500, MEMORY[0x277CC9578]);
  (*(v32 + 8))(v33, v34);
  v49 = v36;
  sub_251B28D44(0);
  type metadata accessor for ClinicalSharingSyncContext(0);
  sub_251B28DBC(&qword_2813E20D8, sub_251B28D44, MEMORY[0x277CBCD90]);

  v38 = v46;
  sub_251C70AE4();

  __swift_destroy_boxed_opaque_existential_1(v50);
  sub_251B28DBC(&qword_27F47A168, sub_251B28C98, MEMORY[0x277CBCC08]);
  v39 = v48;
  v40 = sub_251C70A94();
  (*(v47 + 8))(v38, v39);
  sub_251B28E54(v30, &qword_2813E7500, v37);
  return v40;
}

void sub_251B26C14(void *a1)
{
  v2 = v1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);

  v5 = sub_251C70744();
  v6 = sub_251C713C4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    sub_251C70074();
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = sub_251C719A4();
    v11 = sub_251B10780(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_251A6C000, v5, v6, "Updating error info. Account: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }

  v12 = *(v1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
  *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error) = a1;
  v13 = a1;
}

uint64_t sub_251B26DF8(uint64_t a1, uint64_t a2)
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v5 = sub_251C70764();
  __swift_project_value_buffer(v5, qword_2813E8130);

  v6 = sub_251C70744();
  v7 = sub_251C713C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315138;
    sub_251C70074();
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_251C719A4();
    v12 = sub_251B10780(v10, v11, v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_251A6C000, v6, v7, "Updating resource ID. Account: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  v13 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v2 + v13, v18);
  v14 = v19;
  v15 = v20;
  __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  v16 = *(v15 + 24);

  v16(a1, a2, v14, v15);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v2 + v13), v18);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_251B27054(__int128 *a1)
{
  v3 = v1;
  v5 = a1[3];
  v64 = a1[2];
  v65 = v5;
  v66 = a1[4];
  v67 = *(a1 + 10);
  v6 = a1[1];
  v62 = *a1;
  v63 = v6;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v7 = sub_251C70764();
  __swift_project_value_buffer(v7, qword_2813E8130);

  v8 = sub_251C70744();
  v9 = sub_251C713C4();

  v68 = v2;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v55[0] = v11;
    *v10 = 136315138;
    sub_251C70074();
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = sub_251C719A4();
    v14 = sub_251B10780(v12, v13, v55);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_251A6C000, v8, v9, "Updating root node. Account: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25308E2B0](v11, -1, -1);
    MEMORY[0x25308E2B0](v10, -1, -1);
  }

  v15 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v3 + v15, v56);
  sub_251AA98B0(0, &qword_27F47A178, &protocol descriptor for ClinicalSharingDocumentReferenceInfo);
  if (swift_dynamicCast())
  {
    v59 = v55[0];
    v60 = v55[1];
    v61 = v55[2];
    v57 = v55[5];
    v58 = v55[6];
    v16 = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus);
    if ([v16 userStatus] == 4)
    {
    }

    else
    {
      v22 = [v16 userStatus];

      if (v22 != 5)
      {
        v23 = *(a1 + 6);
        v24 = *(a1 + 7);

        goto LABEL_14;
      }
    }

    v23 = 0;
    v24 = 0;
LABEL_14:

    v26 = *(a1 + 2);
    v25 = *(a1 + 3);

    v27 = v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode;
    v28 = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
    v39[2] = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
    v39[3] = v28;
    v39[4] = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
    v40 = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
    v29 = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
    v39[0] = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
    v39[1] = v29;
    v30 = v65;
    *(v27 + 32) = v64;
    *(v27 + 48) = v30;
    *(v27 + 64) = v66;
    *(v27 + 80) = v67;
    v31 = v63;
    *v27 = v62;
    *(v27 + 16) = v31;
    sub_251B29390(a1, v48);
    sub_251B2929C(v39, sub_251B28E04);
    v41 = v59;
    v42 = v60;
    v43 = v61;
    *&v44 = v23;
    *(&v44 + 1) = v24;
    *&v45 = v26;
    *(&v45 + 1) = v25;
    v46 = v57;
    v47 = v58;
    v37 = &type metadata for ClinicalSharingDocumentReferenceForLookupInfo;
    v38 = &off_2863F9CD8;
    v32 = swift_allocObject();
    *&v36 = v32;
    v33 = v46;
    v32[5] = v45;
    v32[6] = v33;
    v32[7] = v47;
    v34 = v42;
    v32[1] = v41;
    v32[2] = v34;
    v35 = v44;
    v32[3] = v43;
    v32[4] = v35;
    swift_beginAccess();
    sub_251B293EC(&v41, v48);
    __swift_destroy_boxed_opaque_existential_1((v3 + v15));
    sub_251A7E8D8(&v36, v3 + v15);
    swift_endAccess();
    v48[0] = v59;
    v48[1] = v60;
    v48[2] = v61;
    v49 = v23;
    v50 = v24;
    v51 = v26;
    v52 = v25;
    v53 = v57;
    v54 = v58;
    return sub_251B29448(v48);
  }

  v17 = sub_251C70744();
  v18 = sub_251C713D4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_251A6C000, v17, v18, "Attempting to update rootNodeInfo when docRefInfo is not for lookupInfo", v19, 2u);
    MEMORY[0x25308E2B0](v19, -1, -1);
  }

  sub_251A82AF0();
  swift_allocError();
  *v20 = xmmword_251C78750;
  *(v20 + 16) = 4;
  return swift_willThrow();
}

uint64_t sub_251B27540(uint64_t a1, uint64_t a2)
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v5 = sub_251C70764();
  __swift_project_value_buffer(v5, qword_2813E8130);

  v6 = sub_251C70744();
  v7 = sub_251C713C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    sub_251C70074();
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_251C719A4();
    v12 = sub_251B10780(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_251A6C000, v6, v7, "Updating access token. Account: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  v13 = (v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken);
  *v13 = a1;
  v13[1] = a2;
}

uint64_t sub_251B27734(uint64_t a1, uint64_t a2)
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v5 = sub_251C70764();
  __swift_project_value_buffer(v5, qword_2813E8130);

  v6 = sub_251C70744();
  v7 = sub_251C713C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315138;
    sub_251C70074();
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_251C719A4();
    v12 = sub_251B10780(v10, v11, v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_251A6C000, v6, v7, "Updating eTag. Account: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  v13 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v2 + v13, v18);
  v14 = v19;
  v15 = v20;
  __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  v16 = *(v15 + 48);

  v16(a1, a2, v14, v15);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v2 + v13), v18);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_251B27990(uint64_t a1)
{
  v2 = v1;
  sub_251B28C98(0);
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  v81 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_251B2916C(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v77 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v75 - v10;
  sub_251B2916C(0, &qword_27F47A170, type metadata accessor for PBLookupInfo, v6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v75 - v12;
  v80 = type metadata accessor for PBLookupInfo(0);
  v14 = *(v80 - 8);
  v15 = MEMORY[0x28223BE20](v80);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v79 = (&v75 - v18);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v19 = sub_251C70764();
  v20 = __swift_project_value_buffer(v19, qword_2813E8130);

  v21 = sub_251C70744();
  v22 = sub_251C713C4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v75 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v84[0] = v25;
    *v24 = 136315138;
    sub_251C70074();
    v76 = v20;
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_251C719A4();
    v28 = sub_251B10780(v26, v27, v84);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_251A6C000, v21, v22, "Updating multi device info. Account: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x25308E2B0](v25, -1, -1);
    v29 = v24;
    a1 = v75;
    MEMORY[0x25308E2B0](v29, -1, -1);
  }

  v76 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
  v30 = [*(v1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) multiDeviceStatus];
  sub_251B28ED0(a1, v13, &qword_27F47A170, type metadata accessor for PBLookupInfo);
  if ((*(v14 + 48))(v13, 1, v80) == 1)
  {
    sub_251B28E54(v13, &qword_27F47A170, type metadata accessor for PBLookupInfo);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v33 = v79;
    sub_251B291D0(v13, v79);
    sub_251B29234(v33, v17, type metadata accessor for PBLookupInfo);
    v35 = *(v17 + 8);
    v34 = *(v17 + 9);
    v37 = *(v17 + 10);
    v36 = *(v17 + 11);
    v38 = *(v17 + 24);

    v39 = v17;
    v40 = v33;
    sub_251B2929C(v39, type metadata accessor for PBLookupInfo);
    v41 = (v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo);
    v42 = *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo);
    v43 = *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
    v44 = *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 16);
    v45 = *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 24);
    *v41 = v35;
    v41[1] = v34;
    v41[2] = v37;
    v41[3] = v36;
    v41[4] = v38;
    sub_251B220A8(v42, v43, v44, v45);
    if (qword_27F478930 != -1)
    {
      swift_once();
    }

    v46 = qword_27F4A2878;
    v47 = sub_251C70EE4();
    v48 = [v46 dateFromString_];

    if (v48)
    {
      v49 = v77;
      sub_251C6FFE4();

      v50 = 0;
    }

    else
    {
      v50 = 1;
      v49 = v77;
    }

    v51 = sub_251C70014();
    v30 = 1;
    (*(*(v51 - 8) + 56))(v49, v50, 1, v51);
    v52 = v49;
    v53 = v78;
    sub_251AC55A0(v52, v78);
    v54 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync;
    swift_beginAccess();
    sub_251B292FC(v53, v2 + v54);
    swift_endAccess();
    if (v33[8] != *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) || v33[9] != *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8))
    {
      if (sub_251C719D4())
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }
    }

    v31 = v33[10];
    v32 = *(v40 + 88);
    v55 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v55 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    sub_251B2929C(v40, type metadata accessor for PBLookupInfo);
  }

  v56 = sub_251C70744();
  v57 = sub_251C713C4();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v80 = v30;
    v61 = v60;
    v84[0] = v60;
    *v58 = 136315394;
    sub_251C70074();
    v79 = v31;
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v62 = sub_251C719A4();
    v64 = sub_251B10780(v62, v63, v84);

    *(v58 + 4) = v64;
    v31 = v79;
    *(v58 + 12) = 2112;
    v65 = *(v2 + v76);
    *(v58 + 14) = v65;
    *v59 = v65;
    v66 = v65;
    _os_log_impl(&dword_251A6C000, v56, v57, "Updated multi device info. Account: %s HKClinicalSharingStatus: %@", v58, 0x16u);
    sub_251B28E54(v59, &qword_2813E1D10, sub_251B1B1EC);
    MEMORY[0x25308E2B0](v59, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x25308E2B0](v61, -1, -1);
    MEMORY[0x25308E2B0](v58, -1, -1);
  }

  v67 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore), *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore + 24));
  v68 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
  v69 = sub_251C712A4();
  v70 = sub_251AC4148(v2 + v68, v69, v31, v32, *v67);

  v84[0] = v70;
  sub_251B28D44(0);
  type metadata accessor for ClinicalSharingSyncContext(0);
  sub_251B28DBC(&qword_2813E20D8, sub_251B28D44, MEMORY[0x277CBCD90]);

  v71 = v81;
  sub_251C70AE4();

  sub_251B28DBC(&qword_27F47A168, sub_251B28C98, MEMORY[0x277CBCC08]);
  v72 = v83;
  v73 = sub_251C70A94();
  (*(v82 + 8))(v71, v72);
  return v73;
}

uint64_t sub_251B2835C(uint64_t a1)
{
  v2 = v1;
  sub_251B2916C(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v5 = v4;
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - v6;
  sub_251B28C18(0);
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B28C98(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus);
  if ([v16 userStatus] == 4)
  {
  }

  else
  {
    v17 = v13;
    v18 = [v16 userStatus];

    v19 = v18 == 5;
    v13 = v17;
    if (!v19)
    {
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v45 = sub_251C70764();
      __swift_project_value_buffer(v45, qword_2813E8130);

      v24 = sub_251C70744();
      v25 = sub_251C713C4();

      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_26;
      }

      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54 = v27;
      *v26 = 136315138;
      sub_251C70074();
      sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v46 = sub_251C719A4();
      v48 = sub_251B10780(v46, v47, &v54);

      *(v26 + 4) = v48;
      v31 = "User status does not need to be updated. Account: %s";
      goto LABEL_25;
    }
  }

  v20 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
  if (*(a1 + 16) && (sub_251AC8AFC(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID), (v21 & 1) != 0))
  {
  }

  else
  {
    v22 = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error))
  {
    if (v22)
    {

      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v23 = sub_251C70764();
      __swift_project_value_buffer(v23, qword_2813E8130);

      v24 = sub_251C70744();
      v25 = sub_251C713C4();

      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_26;
      }

      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54 = v27;
      *v26 = 136315138;
      sub_251C70074();
      sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v28 = sub_251C719A4();
      v30 = sub_251B10780(v28, v29, &v54);

      *(v26 + 4) = v30;
      v31 = "User status not updated to revoked due to failed sync. Account: %s";
LABEL_25:
      _os_log_impl(&dword_251A6C000, v24, v25, v31, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x25308E2B0](v27, -1, -1);
      MEMORY[0x25308E2B0](v26, -1, -1);
LABEL_26:

      v54 = v2;
      type metadata accessor for ClinicalSharingSyncContext(0);

      sub_251C70A24();
      sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
      sub_251C709F4();
      (*(v51 + 8))(v7, v5);
      sub_251B28DBC(&qword_27F479410, sub_251B28C18, MEMORY[0x277CBCF40]);
      v49 = v53;
      v44 = sub_251C70A94();
      (*(v52 + 8))(v10, v49);
      return v44;
    }
  }

  else
  {
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v32 = sub_251C70764();
  __swift_project_value_buffer(v32, qword_2813E8130);

  v33 = sub_251C70744();
  v34 = sub_251C713C4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v54 = v36;
    *v35 = 136315138;
    sub_251C70074();
    v53 = v12;
    v37 = v20;
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v38 = sub_251C719A4();
    v40 = sub_251B10780(v38, v39, &v54);

    *(v35 + 4) = v40;
    v20 = v37;
    v12 = v53;
    _os_log_impl(&dword_251A6C000, v33, v34, "Updating User status to revoked. Account: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x25308E2B0](v36, -1, -1);
    MEMORY[0x25308E2B0](v35, -1, -1);
  }

  v41 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore), *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore + 24));
  v42 = sub_251C712A4();
  v43 = sub_251AC4D54(v2 + v20, v42, *v41);

  v54 = v43;
  sub_251B28D44(0);
  type metadata accessor for ClinicalSharingSyncContext(0);
  sub_251B28DBC(&qword_2813E20D8, sub_251B28D44, MEMORY[0x277CBCD90]);

  sub_251C70AE4();

  sub_251B28DBC(&qword_27F47A168, sub_251B28C98, MEMORY[0x277CBCC08]);
  v44 = sub_251C70A94();
  (*(v13 + 8))(v15, v12);
  return v44;
}

void sub_251B28C18(uint64_t a1)
{
  if (!qword_27F479408)
  {
    type metadata accessor for ClinicalSharingSyncContext(255);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v1 = sub_251C71AF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479408);
    }
  }
}

void sub_251B28C98(uint64_t a1)
{
  if (!qword_27F47A160)
  {
    sub_251B28D44(255);
    type metadata accessor for ClinicalSharingSyncContext(255);
    sub_251B28DBC(&qword_2813E20D8, sub_251B28D44, MEMORY[0x277CBCD90]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47A160);
    }
  }
}

void sub_251B28D44(uint64_t a1)
{
  if (!qword_2813E20D0)
  {
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E20D0);
    }
  }
}

uint64_t sub_251B28DBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251B28E04()
{
  if (!qword_27F479718)
  {
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479718);
    }
  }
}

uint64_t sub_251B28E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B2916C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251B28ED0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B2916C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

void sub_251B2916C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B291D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBLookupInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B29234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B2929C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B292FC(uint64_t a1, uint64_t a2)
{
  sub_251B2916C(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ClinicalSharingDailyMetric(uint64_t a1)
{
  result = qword_2813E3B88;
  if (!qword_2813E3B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251B29514(uint64_t a1)
{
  sub_251AE526C(319, qword_2813E3620, &type metadata for ClinicalSharingAuthorizations);
  if (v1 <= 0x3F)
  {
    sub_251B2967C(319, &qword_2813E1E20, sub_251AC5BAC, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_251AE526C(319, &qword_2813E1DD0, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_251AE526C(319, &qword_2813E1FA0, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_251C70014();
          if (v5 <= 0x3F)
          {
            sub_251AE526C(319, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory);
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

void sub_251B2967C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251B296E0()
{
  sub_251B2967C(0, &qword_2813E1C58, sub_251B29AC0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C78760;
  *(inited + 32) = 0xD000000000000021;
  *(inited + 40) = 0x8000000251C8B150;
  v2 = type metadata accessor for ClinicalSharingDailyMetric(0);
  v3 = *(v0 + v2[9]);
  *(inited + 72) = &type metadata for IHAMetricField;
  *(inited + 80) = &off_2863F6BD0;
  *(inited + 48) = v3;
  *(inited + 88) = 0xD00000000000001DLL;
  *(inited + 96) = 0x8000000251C8B180;
  v4 = *(v0 + v2[10]);
  *(inited + 128) = &type metadata for IHRMetricField;
  *(inited + 136) = &off_2863F6C30;
  *(inited + 104) = v4;
  *(inited + 144) = 0xD000000000000016;
  *(inited + 152) = 0x8000000251C8B1A0;
  *(inited + 184) = &type metadata for PairedWatchSystemVersionMetricField;
  *(inited + 192) = &off_2863F95E8;
  *(inited + 200) = 6645601;
  *(inited + 208) = 0xE300000000000000;
  v5 = v0[2];
  v6 = *(v0 + 24);
  *(inited + 240) = &type metadata for AgeMetricField;
  *(inited + 248) = &off_2863F6BE8;
  *(inited + 216) = v5;
  *(inited + 224) = v6;
  *(inited + 256) = 7890291;
  *(inited + 264) = 0xE300000000000000;
  v7 = v0[4];
  v8 = v0[5];
  *(inited + 296) = &type metadata for SexMetricField;
  *(inited + 304) = &off_2863F6BB8;
  *(inited + 272) = v7;
  *(inited + 280) = v8;
  *(inited + 312) = 0xD00000000000002ALL;
  *(inited + 320) = 0x8000000251C8B1C0;
  *(inited + 352) = &type metadata for AvgDataTypesMetricField;
  *(inited + 360) = &off_2863F95D0;
  v9 = *v0;
  v10 = v0[1];
  *(inited + 328) = *v0;
  *(inited + 368) = 0xD000000000000019;
  *(inited + 376) = 0x8000000251C8B1F0;
  *(inited + 408) = &type metadata for ProvidersSharedWithMetricField;
  *(inited + 416) = &off_2863F95B8;
  *(inited + 384) = v10;
  *(inited + 424) = 0xD000000000000018;
  *(inited + 432) = 0x8000000251C8B210;
  *(inited + 464) = &type metadata for SharingEnabledMetricField;
  *(inited + 472) = &off_2863F95A0;
  *(inited + 440) = v10;
  *(inited + 480) = 0xD000000000000020;
  *(inited + 488) = 0x8000000251C8B230;
  *(inited + 520) = &type metadata for CHROnboardedMetricField;
  *(inited + 528) = &off_2863F9588;
  *(inited + 496) = v10;
  *(inited + 536) = 0xD000000000000020;
  *(inited + 544) = 0x8000000251C8B260;
  *(inited + 576) = &type metadata for MaxConceptsSharedMetricField;
  *(inited + 584) = &off_2863F9570;
  *(inited + 552) = v9;
  *(inited + 592) = 0xD000000000000020;
  *(inited + 600) = 0x8000000251C8B290;
  *(inited + 632) = &type metadata for MinConceptsSharedMetricField;
  *(inited + 640) = &off_2863F9558;
  *(inited + 608) = v9;
  *(inited + 648) = 0xD000000000000012;
  *(inited + 656) = 0x8000000251C8B2C0;
  *(inited + 688) = &type metadata for TimeSinceLastShareMetricField;
  *(inited + 696) = &off_2863F9540;
  *(inited + 664) = v10;
  *(inited + 704) = 0xD00000000000001BLL;
  *(inited + 712) = 0x8000000251C8B2E0;
  v11 = *(v0 + v2[11]);
  *(inited + 744) = &type metadata for NoOfSharesMetricField;
  *(inited + 752) = &off_2863F9528;
  *(inited + 720) = v11;

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v12 = sub_251C4C2A0(inited);
  swift_setDeallocating();
  sub_251B29AC0(0);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_251B29A78(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

void sub_251B29AC0(uint64_t a1)
{
  if (!qword_2813E1F98)
  {
    sub_251B29B28();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E1F98);
    }
  }
}

unint64_t sub_251B29B28()
{
  result = qword_2813E2AC8[0];
  if (!qword_2813E2AC8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2813E2AC8);
  }

  return result;
}

uint64_t sub_251B29B8C(uint64_t a1)
{
  v2 = sub_251C70074();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    v12 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    if (v13)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v8 = sub_251C39C90(*(a1 + 16), 0);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v33 = v8;
  v37 = sub_251C0A08C(&v38, &v8[v9], v6, a1);
  v10 = v38;

  result = sub_251AD20D8(v10);
  if (v37 == v6)
  {
    v12 = v33;
    v7 = MEMORY[0x277D84F90];
    v13 = *(v33 + 2);
    if (v13)
    {
LABEL_5:
      v38 = v7;
      sub_251C0B7EC(0, v13, 0);
      v14 = v38;
      v16 = *(v3 + 16);
      v15 = v3 + 16;
      v17 = *(v15 + 64);
      v33 = v12;
      v18 = &v12[(v17 + 32) & ~v17];
      v34 = *(v15 + 56);
      v35 = v16;
      v36 = v15;
      v37 = a1;
      v19 = (v15 - 8);
      do
      {
        v35(v5, v18, v2);
        if (*(a1 + 16) && (v20 = sub_251AC8AFC(v5), (v21 & 1) != 0))
        {
          v22 = *(*(a1 + 56) + 8 * v20);
          v23 = *v19;

          v23(v5, v2);
          v24 = v22;
        }

        else
        {
          (*v19)(v5, v2);
          v24 = MEMORY[0x277D84FA0];
        }

        v25 = *(v24 + 16);

        v38 = v14;
        v27 = *(v14 + 16);
        v26 = *(v14 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_251C0B7EC((v26 > 1), v27 + 1, 1);
          v14 = v38;
        }

        *(v14 + 16) = v27 + 1;
        *(v14 + 8 * v27 + 32) = v25;
        v18 += v34;
        --v13;
        a1 = v37;
      }

      while (v13);

      v28 = *(v14 + 16);
      if (v28)
      {
LABEL_14:
        v29 = 0;
        v30 = 0;
        while (1)
        {
          v31 = *(v14 + 8 * v29 + 32);
          v32 = __OFADD__(v30, v31);
          v30 += v31;
          if (v32)
          {
            break;
          }

          if (v28 == ++v29)
          {

            return v30 / v28;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_19:

    v14 = MEMORY[0x277D84F90];
    v28 = *(MEMORY[0x277D84F90] + 16);
    if (v28)
    {
      goto LABEL_14;
    }

LABEL_20:

    return 0;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_251B29E90@<X0>(uint64_t a1@<X8>)
{
  result = sub_251B29B8C(*v1);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_251B29ECC(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v11 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_19:
    v2 = sub_251C717F4();
    if (v2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_4:
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x25308D460](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v4 = *(a1 + 8 * v3 + 32);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v8 = v11;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_25;
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
    goto LABEL_25;
  }

LABEL_21:
  if ((v8 & 0x4000000000000000) != 0)
  {
LABEL_25:
    v9 = sub_251C717F4();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  return v9;
}

uint64_t sub_251B2A048@<X0>(uint64_t a1@<X8>)
{
  result = sub_251B29ECC(*v1);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_251B2A084(unint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  v12 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_251C717F4();
    if (v3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_4:
      v4 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x25308D460](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            __break(1u);
            goto LABEL_19;
          }

          v5 = *(a1 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v9 = v12;
            if ((v12 & 0x8000000000000000) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_25;
          }
        }

        v7 = v5;
        v8 = sub_251C71474();

        if (v8)
        {
          sub_251C71734();
          sub_251C71774();
          sub_251C71784();
          sub_251C71744();
        }

        else
        {
        }

        ++v4;
        if (v6 == v3)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  if ((v9 & 0x4000000000000000) != 0)
  {
LABEL_25:
    v11 = sub_251C717F4();
  }

  else
  {
    v11 = *(v9 + 16);
  }

  return v11 != 0;
}

uint64_t sub_251B2A1FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_251B2A084(*v1);
  *a1 = result;
  return result;
}

void sub_251B2A230(char *a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    if (v2 >> 62)
    {
      v5 = a1;
      v3 = sub_251C717F4();
      a1 = v5;
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = v3 != 0;
  }

  else
  {
    v4 = 2;
  }

  *a1 = v4;
}

uint64_t sub_251B2A2B0@<X0>(uint64_t a1@<X8>)
{
  result = sub_251B2A318(*v1, sub_251AC0350);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_251B2A318(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  v32 = a2;
  if (!v8)
  {
    v14 = MEMORY[0x277D84F90];
    v15 = *(MEMORY[0x277D84F90] + 16);
    if (v15)
    {
LABEL_5:
      v38 = v9;
      sub_251C0B7EC(0, v15, 0);
      v16 = v38;
      v18 = *(v5 + 16);
      v17 = v5 + 16;
      v19 = *(v17 + 64);
      v33 = v14;
      v20 = &v14[(v19 + 32) & ~v19];
      v34 = *(v17 + 56);
      v35 = v18;
      v36 = v17;
      v37 = a1;
      v21 = (v17 - 8);
      do
      {
        v35(v7, v20, v4);
        if (*(a1 + 16) && (v22 = sub_251AC8AFC(v7), (v23 & 1) != 0))
        {
          v24 = *(*(a1 + 56) + 8 * v22);
          v25 = *v21;

          v25(v7, v4);
          v26 = v24;
        }

        else
        {
          (*v21)(v7, v4);
          v26 = MEMORY[0x277D84FA0];
        }

        v27 = *(v26 + 16);

        v38 = v16;
        v29 = *(v16 + 16);
        v28 = *(v16 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_251C0B7EC((v28 > 1), v29 + 1, 1);
          v16 = v38;
        }

        *(v16 + 16) = v29 + 1;
        *(v16 + 8 * v29 + 32) = v27;
        v20 += v34;
        --v15;
        a1 = v37;
      }

      while (v15);

      goto LABEL_17;
    }

LABEL_16:

    v16 = MEMORY[0x277D84F90];
LABEL_17:
    v30 = v32(v16);

    return v30;
  }

  v10 = sub_251C39C90(v8, 0);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v33 = v10;
  v37 = sub_251C0A08C(&v38, &v10[v11], v8, a1);
  v12 = v38;

  result = sub_251AD20D8(v12);
  if (v37 == v8)
  {
    v14 = v33;
    v9 = MEMORY[0x277D84F90];
    v15 = *(v33 + 2);
    if (v15)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_251B2A600@<X0>(uint64_t a1@<X8>)
{
  result = sub_251B2A318(*v1, sub_251C0DF14);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_251B2A650(unint64_t a1)
{
  sub_251B2967C(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v43 = sub_251C70014();
  v10 = *(v43 - 8);
  v11 = MEMORY[0x28223BE20](v43);
  v42 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  if (!a1)
  {
    return 0;
  }

  v34 = &v34 - v13;
  v14 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = v9;
  for (i = v10; v15; i = v10)
  {
    v16 = 0;
    v39 = (v10 + 56);
    v40 = a1 & 0xC000000000000001;
    v37 = (v10 + 32);
    v38 = (v10 + 48);
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v40)
      {
        v18 = MEMORY[0x25308D460](v16, a1);
      }

      else
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_22;
        }

        v18 = *(a1 + 8 * v16 + 32);
      }

      v10 = v18;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = a1;
      v21 = [v18 clinicalSharingStatus];
      v22 = [v21 lastSharedDate];

      if (v22)
      {
        v23 = v41;
        sub_251C6FFE4();

        v9 = 0;
      }

      else
      {
        v9 = 1;
        v23 = v41;
      }

      v10 = v43;
      (*v39)(v23, v9, 1, v43);
      sub_251AC55A0(v23, v7);
      if ((*v38)(v7, 1, v10) == 1)
      {
        sub_251AC5608(v7);
      }

      else
      {
        v24 = *v37;
        (*v37)(v42, v7, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_251C38F9C(0, *(v17 + 2) + 1, 1, v17);
        }

        v9 = *(v17 + 2);
        v25 = *(v17 + 3);
        if (v9 >= v25 >> 1)
        {
          v17 = sub_251C38F9C((v25 > 1), v9 + 1, 1, v17);
        }

        *(v17 + 2) = v9 + 1;
        v10 = v43;
        v24(&v17[((i[80] + 32) & ~i[80]) + *(i + 9) * v9], v42, v43);
      }

      a1 = v20;
      ++v16;
      if (v19 == v15)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v15 = sub_251C717F4();
    v35 = v9;
  }

  v17 = MEMORY[0x277D84F90];
  v10 = v43;
LABEL_25:
  v26 = v35;
  sub_251AC00D0(v17, v35);

  v27 = i;
  if ((*(i + 6))(v26, 1, v10) == 1)
  {
    sub_251AC5608(v26);
    return 0;
  }

  v28 = v10;
  v29 = v34;
  v27[4](v34, v26, v28);
  sub_251C6FFC4();
  v31 = v30;
  result = (v27[1])(v29, v28);
  if (v31 >= 0.0)
  {
    return 0;
  }

  v33 = v31 / -3600.0;
  if (COERCE__INT64(fabs(v31 / -3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (__OFADD__(v33, 1))
  {
LABEL_39:
    __break(1u);
    return result;
  }

  if (v33 + 1 >= 49)
  {
    return 49;
  }

  else
  {
    return v33 + 1;
  }
}

uint64_t sub_251B2AB5C@<X0>(uint64_t a1@<X8>)
{
  result = sub_251B2A650(*v1);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_251B2AB98@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  if (*v1)
  {
    v4 = *(sub_251B09A24(result) + 16);

    if (v4 >= 6)
    {
      if (v4 >= 0xB)
      {
        v4 = 11;
      }

      else
      {
        v4 = 6;
      }
    }
  }

  else
  {
    v4 = -1;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_251B2AC04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_251B2ACC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_251B2ACC4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getActivePairedDevice];
  if (!v1)
  {

    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_251AFEC38(&v6);
    return 0;
  }

  v2 = v1;
  if ([v1 valueForProperty_])
  {
    sub_251C715C4();
    swift_unknownObjectRelease();
  }

  else
  {

    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_251B2ADEC(unint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, char *a4@<X8>)
{
  sub_251AD5C6C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_251C6FAE4();
  v11 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 identifier];
  v15 = sub_251C70F14();
  v17 = v16;

  if (v15 == sub_251C70F14() && v17 == v18)
  {
  }

  else
  {
    v20 = sub_251C719D4();

    if ((v20 & 1) == 0)
    {
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_251C716A4();
      MEMORY[0x25308CDA0](0x206C61636964654DLL, 0xED00002065707974);
      v21 = [a2 identifier];
      v22 = sub_251C70F14();
      v24 = v23;

      MEMORY[0x25308CDA0](v22, v24);

      MEMORY[0x25308CDA0](0xD00000000000002ALL, 0x8000000251C8B3D0);
      v52 = 0;
      v51 = 17;
      goto LABEL_19;
    }
  }

  v25 = sub_251B15008(a1);
  if (v25)
  {
    v26 = v25;
    *a4 = 0;
    *(a4 + 1) = 0xE000000000000000;
    v27 = type metadata accessor for PBTimeSeries(0);
    sub_251C703A4();
    v28 = *(v27 + 32);
    v29 = type metadata accessor for PBDateRange(0);
    (*(*(v29 - 8) + 56))(&a4[v28], 1, 1, v29);
    if (a3 >= 2u)
    {
      if (a3 == 2)
      {
        v45 = [objc_opt_self() poundUnit];
        v40 = [v45 unitString];
        v41 = sub_251C70F14();
        v43 = v42;

        *(a4 + 2) = v41;
        *(a4 + 3) = v43;
        v50 = 49948;
      }

      else
      {
        v44 = sub_251C70EE4();
        v45 = [objc_opt_self() unitFromString_];

        v46 = [v45 unitString];
        v47 = sub_251C70F14();
        v49 = v48;

        *(a4 + 2) = v47;
        *(a4 + 3) = v49;
        v50 = 52725;
      }

      v39 = sub_251B2C19C(v50, v26, v45);
    }

    else
    {
      v30 = [objc_opt_self() millimeterOfMercuryUnit];
      v31 = [v30 unitString];

      v32 = sub_251C70F14();
      v34 = v33;

      *(a4 + 2) = v32;
      *(a4 + 3) = v34;
      v35 = type metadata accessor for ClinicalSharingMedicalRecordsQuery(0);
      v36 = v55;
      sub_251B2D8F0(v55 + *(v35 + 28), v10, sub_251AD5C6C);
      v37 = v54;
      if ((*(v11 + 48))(v10, 1, v54) == 1)
      {
        sub_251B2D958(v10, sub_251AD5C6C);
        v52 = 0;
        v51 = 44;
        goto LABEL_19;
      }

      v38 = (*(v11 + 32))(v13, v10, v37);
      MEMORY[0x28223BE20](v38);
      *(&v53 - 32) = a3;
      *(&v53 - 3) = v36;
      v51 = v13;
      v39 = sub_251C0AB1C(sub_251B2D8D0, (&v53 - 6), v26);

      (*(v11 + 8))(v13, v37);
    }

    *(a4 + 4) = v39;
    return;
  }

  v52 = 0;
  v51 = 21;
LABEL_19:
  sub_251C717E4();
  __break(1u);
}

uint64_t sub_251B2B3C4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, id *), uint64_t a3, unint64_t a4)
{
  v16 = a1;
  v6 = a1;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251C717F4())
  {

    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25308D460](v8, a4);
      }

      else
      {
        if (v8 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(a4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v15 = v9;
      a2(&v14, &v16, &v15);

      if (!v4)
      {
        v6 = v14;
        v16 = v14;
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return v6;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return v6;
}

void sub_251B2B4F8(id *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v100 = a4;
  v106 = a3;
  LODWORD(v101) = a2;
  v112 = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for PBTimeSeries.Value(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251C701E4();
  v103 = *(v13 - 8);
  v104 = v13;
  MEMORY[0x28223BE20](v13);
  v102 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251C70014();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v105 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v84 - v19;
  v107 = *a1;
  v20 = [v107 value];
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = v20;
  v22 = [v20 inspectableValue];

  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = v22;
  if ([v22 valueType] != 8 || (v24 = objc_msgSend(v22, sel_codedValueCollection)) == 0)
  {
LABEL_24:

LABEL_25:
    (*(v10 + 56))(a5, 1, 1, v9);
    return;
  }

  v22 = v24;
  if (([v24 representsCanonicalBloodPressure] & 1) == 0 && !objc_msgSend(v22, sel_representsSingleBloodPressurePoint))
  {

    goto LABEL_24;
  }

  v90 = v23;
  v85 = v12;
  v96 = a5;
  v97 = v10;
  v95 = v22;
  v25 = [v22 codedValues];
  sub_251A8223C(0, &qword_27F479B18, 0x277CCD1A0);
  v26 = sub_251C71154();

  v111 = MEMORY[0x277D84F90];
  if (v26 >> 62)
  {
LABEL_84:
    v109 = (v26 & 0xFFFFFFFFFFFFFF8);
    v27 = sub_251C717F4();
  }

  else
  {
    v109 = (v26 & 0xFFFFFFFFFFFFFF8);
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v86 = v16;
  v87 = v15;
  v98 = v9;
  if (v27)
  {
    v16 = 0;
    v9 = v26 & 0xC000000000000001;
    v28 = MEMORY[0x277D84F90];
    while (2)
    {
      v99 = v28;
      v29 = v16;
      while (1)
      {
        if (v9)
        {
          v30 = MEMORY[0x25308D460](v29, v26);
        }

        else
        {
          if (v29 >= v109[2])
          {
            goto LABEL_77;
          }

          v30 = *(v26 + 8 * v29 + 32);
        }

        v31 = v30;
        v16 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v110 = 0;
        v32 = [v30 chartableCodedQuantityWithError_];
        if (v32)
        {
          break;
        }

        v33 = v110;
        v34 = sub_251C6FD84();

        swift_willThrow();
        v6 = 0;

        ++v29;
        if (v16 == v27)
        {
          v28 = v99;
          goto LABEL_27;
        }
      }

      v15 = v32;
      v35 = v110;

      MEMORY[0x25308CEE0]();
      if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_251C71174();
      }

      sub_251C71194();
      v28 = v111;
      if (v16 != v27)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

LABEL_27:

  v99 = v28;
  if (v28 >> 62)
  {
    v36 = sub_251C717F4();
  }

  else
  {
    v36 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v97;
  v37 = v98;
  v26 = v95;
  v38 = v96;
  if (v36)
  {
    v39 = 0;
    v15 = v99 & 0xC000000000000001;
    v92 = v99 + 32;
    v93 = v99 & 0xFFFFFFFFFFFFFF8;
    v89 = v36;
    v88 = v99 & 0xC000000000000001;
    v94 = v101;
    do
    {
      while (1)
      {
        if (v15)
        {
          v40 = MEMORY[0x25308D460](v39, v99);
        }

        else
        {
          if (v39 >= *(v93 + 16))
          {
            goto LABEL_83;
          }

          v40 = *(v92 + 8 * v39);
        }

        if (__OFADD__(v39++, 1))
        {
          goto LABEL_82;
        }

        if (v94 != 1)
        {
          break;
        }

        v91 = v39;
        v101 = v6;
        v109 = v40;
        v47 = [v40 codings];
        sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
        v15 = sub_251C71154();

        if (v15 >> 62)
        {
          v48 = sub_251C717F4();
          if (v48)
          {
LABEL_51:
            v49 = 0;
            v9 = v15 & 0xC000000000000001;
            do
            {
              if (v9)
              {
                v50 = MEMORY[0x25308D460](v49, v15);
              }

              else
              {
                if (v49 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_80;
                }

                v50 = *(v15 + 8 * v49 + 32);
              }

              v26 = v50;
              v6 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
                goto LABEL_78;
              }

              v51 = [objc_opt_self() loinc_diastolicBloodPressureCoding];
              v16 = [v26 isEquivalent_];

              if (v16)
              {
LABEL_67:

                [v109 doubleValue];
                v53 = v52;
                v54 = v107;
                v55 = [v107 _creationDate];
                v56 = v108;
                sub_251C6FFE4();

                v57 = [v54 issueDate];
                v58 = v87;
                v59 = v86;
                if (v57)
                {
                  v60 = v57;
                  v62 = v102;
                  v61 = v103;
                  v63 = v104;
                  (*(v103 + 16))(v102, *v106 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v104);
                  v64 = sub_251C70114();
                  (*(v61 + 8))(v62, v63);
                  v65 = [v60 adjustedDateForCalendar_];

                  v66 = v105;
                  sub_251C6FFE4();

                  v56 = v108;
                  v59[1](v108, v58);
                  (v59[4])(v56, v66, v58);
                }

                v67 = [v107 effectiveEndDate];
                if (v67)
                {
                  v68 = v67;
                  v70 = v102;
                  v69 = v103;
                  v71 = v104;
                  (*(v103 + 16))(v102, *v106 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v104);
                  v72 = sub_251C70114();
                  (*(v69 + 8))(v70, v71);
                  v73 = [v68 adjustedDateForCalendar_];

                  v74 = v105;
                  sub_251C6FFE4();

                  v56 = v108;
                  v59[1](v108, v58);
                  (v59[4])(v56, v74, v58);
                }

                if (sub_251C6FAC4())
                {
                  v75 = v85;
                  *(v85 + 10) = 0;
                  *v75 = 0;
                  *(v75 + 8) = 0;
                  *(v75 + 16) = 0;
                  *(v75 + 64) = 0;
                  *(v75 + 72) = 0xE000000000000000;
                  *(v75 + 80) = 0u;
                  *(v75 + 96) = 0u;
                  *(v75 + 120) = MEMORY[0x277D84F90];
                  *(v75 + 128) = 0;
                  *(v75 + 136) = 256;
                  v76 = v98;
                  sub_251C703A4();
                  *(v75 + 112) = v53;
                  v77 = *(*v106 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
                  v78 = sub_251C6FF94();
                  v79 = [v77 stringFromDate_];

                  v80 = sub_251C70F14();
                  v82 = v81;

                  *(v75 + 24) = v80;
                  *(v75 + 32) = v82;

                  v59[1](v56, v58);
                  *(v75 + 48) = 1732799853;
                  *(v75 + 56) = 0xE400000000000000;
                  v83 = v96;
                  sub_251B2D8F0(v75, v96, type metadata accessor for PBTimeSeries.Value);
                  (*(v97 + 56))(v83, 0, 1, v76);
                  sub_251B2D958(v75, type metadata accessor for PBTimeSeries.Value);
                }

                else
                {
                  v59[1](v56, v58);

                  (*(v97 + 56))(v96, 1, 1, v98);
                }

                return;
              }

              ++v49;
            }

            while (v6 != v48);
          }
        }

        else
        {
          v48 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v48)
          {
            goto LABEL_51;
          }
        }

LABEL_31:

        v6 = v101;
        v9 = v97;
        v37 = v98;
        v26 = v95;
        v38 = v96;
        v36 = v89;
        v39 = v91;
        v15 = v88;
        if (v91 == v89)
        {
          goto LABEL_73;
        }
      }

      if (!v94)
      {
        v91 = v39;
        v101 = v6;
        v109 = v40;
        v42 = [v40 codings];
        sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
        v15 = sub_251C71154();

        if (v15 >> 62)
        {
          v43 = sub_251C717F4();
          if (v43)
          {
LABEL_40:
            v44 = 0;
            v9 = v15 & 0xC000000000000001;
            while (1)
            {
              if (v9)
              {
                v45 = MEMORY[0x25308D460](v44, v15);
              }

              else
              {
                if (v44 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_81;
                }

                v45 = *(v15 + 8 * v44 + 32);
              }

              v26 = v45;
              v6 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                goto LABEL_79;
              }

              v46 = [objc_opt_self() loinc_systolicBloodPressureCoding];
              v16 = [v26 isEquivalent_];

              if (v16)
              {
                goto LABEL_67;
              }

              ++v44;
              if (v6 == v43)
              {
                goto LABEL_31;
              }
            }
          }
        }

        else
        {
          v43 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v43)
          {
            goto LABEL_40;
          }
        }

        goto LABEL_31;
      }
    }

    while (v39 != v36);
  }

LABEL_73:

  (*(v9 + 56))(v38, 1, 1, v37);
}

uint64_t sub_251B2C19C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_251AD5C6C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_251C6FAE4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for ClinicalSharingMedicalRecordsQuery(0);
  sub_251B2D8F0(v3 + *(v14 + 28), v9, sub_251AD5C6C);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_251B2D958(v9, sub_251AD5C6C);
    result = sub_251C717E4();
    __break(1u);
  }

  else
  {
    v15 = (*(v11 + 32))(v13, v9, v10);
    MEMORY[0x28223BE20](v15);
    *&v20[-32] = a1;
    *&v20[-24] = a3;
    v18 = v13;
    v19 = v3;
    v16 = sub_251B2B3C4(MEMORY[0x277D84F90], sub_251B2D9B8, &v20[-48], a2);
    (*(v11 + 8))(v13, v10);
    return v16;
  }

  return result;
}

void sub_251B2C3FC(uint64_t *a1@<X0>, id *a2@<X1>, id a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  v24 = a7;
  v11 = *a1;
  v12 = *a2;
  v13 = [*a2 primaryConcept];
  v14 = [v13 groupByConcept];

  v15 = [v14 identifier];
  v16 = [v15 rawIdentifier];

  if (v16 == a3)
  {
    v17 = [v12 chartableCodedQuantitySet];
    if (v17)
    {
      v18 = v17;
      if ([v17 isCompatibleWithUnit_])
      {
        v19 = [v18 quantities];
        sub_251A8223C(0, &unk_27F47A180, 0x277CCD0D8);
        v20 = sub_251C71154();

        MEMORY[0x28223BE20](v21);
        v23[2] = v18;
        v23[3] = a6;
        v23[4] = a4;
        v23[5] = v24;
        v22 = sub_251C0AB1C(sub_251B2D9D8, v23, v20);

        v25 = v11;

        sub_251BFF818(v22);

        *a5 = v25;
        return;
      }
    }
  }

  *a5 = v11;
}

uint64_t sub_251B2C5F8@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v33 = a4;
  v34 = a3;
  v35 = a5;
  v7 = type metadata accessor for PBTimeSeries.Value(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C70014();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [a2 date];
  sub_251C6FFE4();

  if (sub_251C6FAC4())
  {
    *(v10 + 10) = 0;
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 4) = 0;
    *(v10 + 8) = 0;
    *(v10 + 9) = 0xE000000000000000;
    v17 = MEMORY[0x277D84F90];
    *(v10 + 5) = 0u;
    *(v10 + 6) = 0u;
    *(v10 + 15) = v17;
    *(v10 + 16) = 0;
    *(v10 + 68) = 256;
    v32 = v7;
    sub_251C703A4();
    v18 = v34;
    [v15 doubleValueForUnit_];
    *(v10 + 14) = v19;
    v20 = *(*v33 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v21 = sub_251C6FF94();
    v22 = [v20 stringFromDate_];

    v23 = sub_251C70F14();
    v25 = v24;

    *(v10 + 3) = v23;
    *(v10 + 4) = v25;
    v26 = [v18 unitString];
    v27 = sub_251C70F14();
    v29 = v28;

    (*(v12 + 8))(v14, v11);
    *(v10 + 6) = v27;
    *(v10 + 7) = v29;
    v30 = v35;
    sub_251B2D8F0(v10, v35, type metadata accessor for PBTimeSeries.Value);
    (*(v8 + 56))(v30, 0, 1, v32);
    return sub_251B2D958(v10, type metadata accessor for PBTimeSeries.Value);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    return (*(v8 + 56))(v35, 1, 1, v7);
  }
}

uint64_t sub_251B2C920(void *a1)
{
  v1 = a1;
  v2 = sub_251B2C954();

  return v2 & 1;
}

uint64_t sub_251B2C954()
{
  v1 = v0;
  v2 = &selRef_dateComponentsValue;
  v3 = [v0 codedValues];
  sub_251A8223C(0, &qword_27F479B18, 0x277CCD1A0);
  v4 = sub_251C71154();

  if (v4 >> 62)
  {
LABEL_29:
    v5 = sub_251C717F4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 2)
  {
    return 0;
  }

  v6 = [v1 v2[7]];
  v7 = sub_251C71154();

  v8 = v7;
  v53 = v1;
  if (v7 >> 62)
  {
    goto LABEL_32;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v9)
  {
    v10 = 0;
    v11 = v8 & 0xC000000000000001;
    v12 = v8 & 0xFFFFFFFFFFFFFF8;
    v13 = v8 + 32;
    v48 = v9;
    v50 = v8;
    v44 = v8 & 0xFFFFFFFFFFFFFF8;
    v46 = v8 & 0xC000000000000001;
    v43 = v8 + 32;
    while (2)
    {
      if (v11)
      {
        v8 = MEMORY[0x25308D460](v10, v8);
        v14 = __OFADD__(v10++, 1);
        if (!v14)
        {
LABEL_10:
          v55 = v8;
          v15 = [v8 codings];
          sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
          v16 = sub_251C71154();

          v1 = (v16 & 0xFFFFFFFFFFFFFF8);
          if (v16 >> 62)
          {
            v17 = sub_251C717F4();
          }

          else
          {
            v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v18 = 0;
          while (v17 != v18)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x25308D460](v18, v16);
            }

            else
            {
              if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v19 = *(v16 + 8 * v18 + 32);
            }

            v20 = v19;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

            v2 = [objc_opt_self() loinc_systolicBloodPressureCoding];
            v21 = [v20 isEquivalent_];

            ++v18;
            if (v21)
            {

              v22 = v55;
              goto LABEL_34;
            }
          }

          v8 = v50;
          v12 = v44;
          v11 = v46;
          v13 = v43;
          if (v10 != v48)
          {
            continue;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          goto LABEL_31;
        }

        v8 = *(v13 + 8 * v10);
        v14 = __OFADD__(v10++, 1);
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      break;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v23 = v8;
    v9 = sub_251C717F4();
    v8 = v23;
  }

LABEL_33:

  v22 = 0;
LABEL_34:
  v24 = [v53 codedValues];
  v25 = sub_251C71154();

  v26 = v25;
  if (v25 >> 62)
  {
    goto LABEL_66;
  }

  v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_67:

    v40 = 0;
    if (v22)
    {
      v39 = v22;
    }

    else
    {
      v39 = 0;
    }

    goto LABEL_70;
  }

  while (1)
  {
    v28 = 0;
    v29 = v26 & 0xC000000000000001;
    v30 = v26 & 0xFFFFFFFFFFFFFF8;
    v31 = v26 + 32;
    v51 = v27;
    v52 = v26;
    v47 = v26 & 0xFFFFFFFFFFFFFF8;
    v49 = v26 & 0xC000000000000001;
    v45 = v26 + 32;
    v56 = v22;
LABEL_37:
    if (v29)
    {
      break;
    }

    if (v28 >= *(v30 + 16))
    {
      goto LABEL_65;
    }

    v26 = *(v31 + 8 * v28);
    v14 = __OFADD__(v28++, 1);
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v41 = v26;
    v27 = sub_251C717F4();
    v26 = v41;
    if (!v27)
    {
      goto LABEL_67;
    }
  }

  v26 = MEMORY[0x25308D460](v28, v26);
  v14 = __OFADD__(v28++, 1);
  if (v14)
  {
    goto LABEL_64;
  }

LABEL_40:
  v54 = v26;
  v32 = [v26 codings];
  sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
  v33 = sub_251C71154();

  v22 = v33 & 0xFFFFFFFFFFFFFF8;
  if (v33 >> 62)
  {
    v26 = sub_251C717F4();
    v34 = v26;
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = 0;
  do
  {
    if (v34 == v35)
    {

      v26 = v52;
      v22 = v56;
      v30 = v47;
      v29 = v49;
      v31 = v45;
      if (v28 != v51)
      {
        goto LABEL_37;
      }

      goto LABEL_67;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x25308D460](v35, v33);
    }

    else
    {
      if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v26 = *(v33 + 8 * v35 + 32);
    }

    v36 = v26;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v37 = [objc_opt_self() loinc_diastolicBloodPressureCoding];
    v38 = [v36 isEquivalent_];

    ++v35;
  }

  while ((v38 & 1) == 0);

  if (v56)
  {

    v39 = v54;
    if (!v54)
    {
      return 0;
    }

    v40 = 1;
  }

  else
  {
    v40 = 0;
    v39 = v54;
  }

LABEL_70:

  return v40;
}

uint64_t sub_251B2CEB8(void *a1)
{
  v1 = a1;
  v2 = sub_251B2CEEC();

  return v2 & 1;
}

uint64_t sub_251B2CEEC()
{
  v1 = v0;
  v2 = &selRef_dateComponentsValue;
  v3 = [v0 codedValues];
  sub_251A8223C(0, &qword_27F479B18, 0x277CCD1A0);
  v4 = sub_251C71154();

  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5 != 1)
  {
    return 0;
  }

  v6 = [v1 v2[7]];
  v7 = sub_251C71154();

  v8 = v7;
  v53 = v1;
  if (v7 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v8 = v24)
  {
    v10 = 0;
    v11 = v8 & 0xC000000000000001;
    v12 = v8 & 0xFFFFFFFFFFFFFF8;
    v13 = v8 + 32;
    v48 = i;
    v50 = v8;
    v44 = v8 & 0xFFFFFFFFFFFFFF8;
    v46 = v8 & 0xC000000000000001;
    v43 = v8 + 32;
    while (1)
    {
      if (v11)
      {
        v8 = MEMORY[0x25308D460](v10, v8);
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          goto LABEL_30;
        }

        v8 = *(v13 + 8 * v10);
      }

      v14 = v8;
      v15 = __OFADD__(v10++, 1);
      if (v15)
      {
        break;
      }

      v16 = [v8 codings];
      sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
      v17 = sub_251C71154();

      v55 = v14;
      v1 = (v17 & 0xFFFFFFFFFFFFFF8);
      if (v17 >> 62)
      {
        v18 = sub_251C717F4();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = 0;
      while (v18 != v19)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x25308D460](v19, v17);
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v20;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v5 = sub_251C717F4();
          goto LABEL_3;
        }

        v22 = [objc_opt_self() loinc_systolicBloodPressureCoding];
        v2 = [v21 isEquivalent_];

        ++v19;
        if (v2)
        {

          v23 = v55;
          goto LABEL_33;
        }
      }

      v8 = v50;
      v12 = v44;
      v11 = v46;
      v13 = v43;
      if (v10 == v48)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v24 = v8;
    i = sub_251C717F4();
  }

LABEL_32:

  v23 = 0;
LABEL_33:
  v25 = [v53 codedValues];
  v26 = sub_251C71154();

  if (v26 >> 62)
  {
    goto LABEL_64;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_65:

    if (v23)
    {
LABEL_66:
      v41 = 1;
      goto LABEL_67;
    }

    return 0;
  }

  while (1)
  {
    v28 = 0;
    v29 = v26 & 0xC000000000000001;
    v30 = v26 & 0xFFFFFFFFFFFFFF8;
    v31 = v26 + 32;
    v56 = v23;
    v51 = v27;
    v52 = v26;
    v47 = v26 & 0xFFFFFFFFFFFFFF8;
    v49 = v26 & 0xC000000000000001;
    v45 = v26 + 32;
LABEL_36:
    if (v29)
    {
      v32 = MEMORY[0x25308D460](v28, v26);
    }

    else
    {
      if (v28 >= *(v30 + 16))
      {
        goto LABEL_63;
      }

      v32 = *(v31 + 8 * v28);
    }

    v23 = v32;
    v15 = __OFADD__(v28++, 1);
    if (!v15)
    {
      break;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v27 = sub_251C717F4();
    if (!v27)
    {
      goto LABEL_65;
    }
  }

  v33 = [v32 codings];
  sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
  v34 = sub_251C71154();

  v54 = v23;
  v26 = v34 & 0xFFFFFFFFFFFFFF8;
  if (v34 >> 62)
  {
    v35 = sub_251C717F4();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = 0;
  v23 = (v34 & 0xC000000000000001);
  do
  {
    if (v35 == v36)
    {

      v26 = v52;
      v23 = v56;
      v30 = v47;
      v29 = v49;
      v31 = v45;
      if (v28 != v51)
      {
        goto LABEL_36;
      }

      goto LABEL_65;
    }

    if (v23)
    {
      v37 = MEMORY[0x25308D460](v36, v34);
    }

    else
    {
      if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v37 = *(v34 + 8 * v36 + 32);
    }

    v38 = v37;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v39 = [objc_opt_self() loinc_diastolicBloodPressureCoding];
    v40 = [v38 isEquivalent_];

    ++v36;
  }

  while ((v40 & 1) == 0);

  v23 = v56;
  if (!v56)
  {
    v23 = v54;
    if (v54)
    {
      goto LABEL_66;
    }

    return 0;
  }

  if (!v54)
  {
    goto LABEL_66;
  }

  v41 = 0;
LABEL_67:

  return v41;
}

id sub_251B2D448()
{
  v1 = v0;
  v37[1] = *MEMORY[0x277D85DE8];
  v2 = sub_251C70014();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v36[-v7];
  result = [v1 value];
  if (result)
  {
    v10 = result;
    v11 = [result inspectableValue];

    if (v11)
    {
      v12 = &selRef_dateComponentsValue;
      v13 = [v1 sortDate];
      v14 = [v13 keyPath];

      v15 = sub_251C70F14();
      v17 = v16;

      if (v15 == sub_251C70F14() && v17 == v18)
      {
      }

      else
      {
        v19 = sub_251C719D4();

        if (v19)
        {
        }

        else
        {
          v20 = [v1 diagnosticTestCodingCollection];
          v21 = [v20 codings];

          if (!v21)
          {
            sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
            sub_251C71154();
            v21 = sub_251C71144();
          }

          v22 = [v1 referenceRanges];
          if (v22)
          {
            v23 = v22;
            sub_251A8223C(0, &qword_27F479B28, 0x277CCD890);
            sub_251C71154();

            v24 = v11;
            v25 = sub_251C71144();
            v12 = &selRef_dateComponentsValue;
          }

          else
          {
            v26 = v11;
            v25 = 0;
          }

          v27 = [objc_allocWithZone(MEMORY[0x277CCD1A0]) initWithCodings:v21 value:v11 referenceRanges:v25];

          v28 = [v1 v12[28]];
          v29 = [v28 date];

          sub_251C6FFE4();
          sub_251AF1E28(v8);
          v30 = *(v3 + 8);
          v30(v6, v2);
          v31 = sub_251C6FF94();
          v37[0] = 0;
          v32 = [v27 chartableCodedQuantitySetWithDate:v31 error:v37];

          v33 = v37[0];
          if (v32)
          {
            v30(v8, v2);

            return v32;
          }

          v34 = v33;
          v35 = sub_251C6FD84();

          swift_willThrow();
          v30(v8, v2);
        }
      }
    }

    return 0;
  }

  return result;
}

id sub_251B2D88C(void *a1)
{
  v1 = a1;
  v2 = sub_251B2D448();

  return v2;
}

uint64_t sub_251B2D8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B2D958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B2D9F8()
{
  result = sub_251C70F14();
  qword_2813E81A0 = result;
  *algn_2813E81A8 = v1;
  return result;
}

uint64_t sub_251B2DA28(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  swift_getMetatypeMetadata();
  v5 = sub_251C70F74();

  MEMORY[0x25308CDA0](46, 0xE100000000000000);

  MEMORY[0x25308CDA0](a1, a2);

  return v5;
}

id sub_251B2DAFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerifiableHealthRecordsParsingServiceServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251B2DB64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  ObjectType = swift_getObjectType();
  sub_251AF4E18(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);
  v13 = v4;
  v14 = sub_251C70744();
  v15 = sub_251C713F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = 136315138;
    v28 = a1;
    v30 = ObjectType;
    swift_getMetatypeMetadata();
    v30 = sub_251C70F74();
    v31 = v19;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a1 = v28;
    MEMORY[0x25308CDA0](0xD00000000000002DLL, 0x8000000251C8B510);

    v20 = sub_251B10780(v30, v31, &v32);

    *(v17 + 4) = v20;
    _os_log_impl(&dword_251A6C000, v14, v15, "%s starting", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x25308E2B0](v18, -1, -1);
    v21 = v17;
    a3 = v27;
    MEMORY[0x25308E2B0](v21, -1, -1);
  }

  v22 = sub_251C71214();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v13;
  v23[5] = a1;
  v23[6] = v29;
  v23[7] = a3;
  v23[8] = a4;
  v24 = v13;
  v25 = a1;

  sub_251C56428(0, 0, v11, &unk_251C78A88, v23);
}

uint64_t sub_251B2DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  return MEMORY[0x2822009F8](sub_251B2DE7C, 0, 0);
}

uint64_t sub_251B2DE7C()
{
  type metadata accessor for VerifiableHealthRecordsParsingService();
  inited = swift_initStackObject();
  v0[16] = inited;
  *(inited + 24) = 0;
  v0[17] = sub_251BC3710();
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_251B2DF3C;
  v3 = v0[12];

  return sub_251BCC8A8(v3, 1);
}

uint64_t sub_251B2DF3C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_251B2E270;
  }

  else
  {

    v4 = sub_251B2E058;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id sub_251B2E058()
{
  v19 = v0;
  result = [*(v0 + 152) signedClinicalData];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 152);
    v4 = sub_251BC37C4(result, *(v0 + 104));

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v6 = sub_251C70764();
    __swift_project_value_buffer(v6, qword_2813E8130);
    v7 = v5;
    v8 = sub_251C70744();
    v9 = sub_251C713F4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v12 = sub_251B2DA28(0xD00000000000002DLL, 0x8000000251C8B510);
      v14 = sub_251B10780(v12, v13, &v18);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_251A6C000, v8, v9, "%s finished successfully", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x25308E2B0](v11, -1, -1);
      MEMORY[0x25308E2B0](v10, -1, -1);
    }

    v15 = *(v0 + 112);
    v16 = v4;
    v15(v4, 0);

    swift_setDeallocating();

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251B2E270()
{
  v23 = v0;
  v1 = v0[20];

  v2 = sub_251BC3A3C(v1);
  swift_willThrow();

  swift_setDeallocating();

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v3 = v0[11];
  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);
  v5 = v3;
  v6 = v2;
  v7 = sub_251C70744();
  v8 = sub_251C713D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136315394;
    v11 = sub_251B2DA28(0xD00000000000002DLL, 0x8000000251C8B510);
    v13 = sub_251B10780(v11, v12, v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[10] = v2;
    v14 = v2;
    sub_251A82284();
    v15 = sub_251C70F74();
    v17 = sub_251B10780(v15, v16, v22);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_251A6C000, v7, v8, "%s failed with %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  v18 = v0[14];
  swift_getErrorValue();
  v19 = sub_251BC0124(v0[7], v0[8]);
  v18(0, v19);

  v20 = v0[1];

  return v20();
}

void sub_251B2E5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_251C6FD74();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_251B2E658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_251AF4F78;

  return sub_251B2DE54(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_251B2E734@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v63 = a3;
  v4 = sub_251C70074();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2C00(0);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2D3C(0);
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2978(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  v64[0] = *a1;
  v21 = v64[0];
  type metadata accessor for ClinicalSharingSyncContext(0);

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v12 + 8))(v14, v11);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v15, MEMORY[0x277CBCF40]);
  v22 = sub_251C70A94();
  (*(v18 + 8))(v20, v17);
  v23 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v21 + v23, v64);
  v24 = v65;
  v25 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  (*(v25 + 16))(v24, v25);
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_1(v64);
  if (v27)
  {

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v28 = sub_251C70764();
    __swift_project_value_buffer(v28, qword_2813E8130);

    v29 = sub_251C70744();
    v30 = sub_251C713C4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v64[0] = v32;
      *v31 = 136315138;
      v34 = v54;
      v33 = v55;
      v35 = v21 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
      v36 = v53;
      (*(v54 + 16))(v53, v35, v55);
      sub_251B2FC7C(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v37 = sub_251C719A4();
      v39 = v38;
      (*(v34 + 8))(v36, v33);
      v40 = sub_251B10780(v37, v39, v64);

      *(v31 + 4) = v40;
      _os_log_impl(&dword_251A6C000, v29, v30, "No search required. DocRef already exists. Account: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x25308E2B0](v32, -1, -1);
      MEMORY[0x25308E2B0](v31, -1, -1);
    }

    v64[0] = v22;
    v41 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v41, MEMORY[0x277CBCD90]);
    v42 = sub_251C70A94();
  }

  else
  {
    v64[0] = v22;
    v44 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB2CCC(0);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v44, MEMORY[0x277CBCD90]);
    v45 = v56;
    sub_251C70B54();
    v46 = swift_allocObject();
    v47 = v57;
    *(v46 + 16) = v57;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_251B2FAF4;
    *(v48 + 24) = v46;
    v49 = v47;
    sub_251C70964();
    sub_251B2FC7C(&qword_27F479440, sub_251AB2C00, MEMORY[0x277CBCCC0]);
    v50 = v58;
    v51 = v60;
    sub_251C70B94();

    (*(v59 + 8))(v45, v51);
    sub_251B2FC7C(&qword_27F479450, sub_251AB2D3C, MEMORY[0x277CBCCE0]);
    v52 = v62;
    v42 = sub_251C70A94();

    result = (*(v61 + 8))(v50, v52);
  }

  *v63 = v42;
  return result;
}

uint64_t sub_251B2EF60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v11 = sub_251C70764();
  __swift_project_value_buffer(v11, qword_2813E8130);

  v12 = sub_251C70744();
  v13 = sub_251C713C4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = a2;
    v17 = v16;
    v32[0] = v16;
    *v15 = 136315138;
    (*(v7 + 16))(v9, v10 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v6);
    sub_251B2FC7C(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_251C719A4();
    v19 = v7;
    v21 = v20;
    (*(v19 + 8))(v9, v6);
    v22 = sub_251B10780(v18, v21, v32);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_251A6C000, v12, v13, "Preparing search request. Account: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v23 = v17;
    a2 = v35;
    MEMORY[0x25308E2B0](v23, -1, -1);
    v24 = v15;
    v3 = v31;
    MEMORY[0x25308E2B0](v24, -1, -1);
  }

  v25 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v10 + v25, v32);
  v26 = v33;
  v27 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  sub_251BBBDD4(v26, v27, a2);
  if (!v3)
  {
    sub_251AB2CCC(0);
    *(a2 + *(v28 + 48)) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_251B2F26C(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = a3;
  v5 = sub_251C6F9A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB31B0(0);
  v32 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B2FAFC(0, &qword_27F47A200, sub_251B2FC14);
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  sub_251B2FAFC(0, &qword_27F47A210, type metadata accessor for ClinicalSharingSyncContext);
  v18 = *(v17 - 8);
  v33 = v17;
  v34 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - v19;
  v37 = sub_251C66E04(a1, a2, 3, v31);
  (*(v6 + 16))(v8, a1, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v21, v8, v5);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_251AB354C;
  *(v23 + 24) = v22;
  sub_251B2FB98(0, &qword_27F479470, &qword_27F479478, &qword_27F479480, 0x277CCAD28);
  sub_251AB3264(0, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251AB32E4();
  sub_251C70B54();

  sub_251B2FC7C(&qword_27F4794B8, sub_251AB31B0, MEMORY[0x277CBCCC0]);
  v24 = v32;
  v25 = sub_251C70A94();
  (*(v10 + 8))(v12, v24);
  v37 = v25;
  sub_251B2FB98(0, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251B2FC14(0);
  sub_251AB34D4();
  sub_251C70B54();

  type metadata accessor for ClinicalSharingSyncContext(0);
  v26 = v35;
  sub_251C708A4();
  (*(v36 + 8))(v16, v26);
  sub_251B2FCC4();
  v27 = v33;
  v28 = sub_251C70A94();
  (*(v34 + 8))(v20, v27);
  return v28;
}

uint64_t sub_251B2F76C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  sub_251C6F9F4();
  swift_allocObject();
  sub_251C6F9E4();
  sub_251B2FD38();
  sub_251C6F9D4();

  if (!v2)
  {
    *a2 = v6;
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_251B2F81C(uint64_t a1, uint64_t a2)
{
  v3 = sub_251AFF444(0xD000000000000011, 0x8000000251C8B590, a1);
  v5 = v4;
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
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    sub_251C70074();
    sub_251B2FC7C(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_251C719A4();
    v13 = sub_251B10780(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_251AD56B0();

    sub_251C719F4();
    v14 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v15 = sub_251C70F74();
    v17 = sub_251B10780(v15, v16, &v19);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_251A6C000, v7, v8, "Received search response. Account: %s ResourceID: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  sub_251B26DF8(v3, v5);

  return a2;
}

uint64_t sub_251B2FAC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251B2F81C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_251B2FAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251B2FB98(255, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
    a3(255);
    sub_251AB34D4();
    v5 = sub_251C708B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251B2FB98(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
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

void sub_251B2FC14(uint64_t a1)
{
  if (!qword_27F47A208)
  {
    type metadata accessor for ClinicalSharingSyncContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47A208);
    }
  }
}

uint64_t sub_251B2FC7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251B2FCC4()
{
  result = qword_27F47A218;
  if (!qword_27F47A218)
  {
    sub_251B2FAFC(255, &qword_27F47A210, type metadata accessor for ClinicalSharingSyncContext);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A218);
  }

  return result;
}

unint64_t sub_251B2FD38()
{
  result = qword_27F47A220;
  if (!qword_27F47A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A220);
  }

  return result;
}

unint64_t sub_251B2FDB4(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  v5 = a2;
  v6 = a1;
  if (a4 <= 1u)
  {
    if (a4)
    {

      sub_251C716A4();

      v15 = 91;
      if (v5)
      {
        v9 = v6;
      }

      else
      {
        v9 = 16718;
      }

      if (v5)
      {
        v10 = v5;
      }

      else
      {
        v10 = 0xE200000000000000;
      }

      MEMORY[0x25308CDA0](v9, v10);

      MEMORY[0x25308CDA0](0xD00000000000001ELL, 0x8000000251C8B710);
      sub_251B3006C(0);
      v11 = a3;
      v12 = sub_251C70F74();
      MEMORY[0x25308CDA0](v12);

      return v15;
    }

    v15 = 0;

    sub_251C716A4();
    MEMORY[0x25308CDA0](91, 0xE100000000000000);
    if (!v5)
    {
      sub_251AB2F88(v6, 0, a3, 0);
      v5 = 0xE200000000000000;
      v6 = 16718;
    }

    MEMORY[0x25308CDA0](v6, v5);

    v7 = "] Bad response from FHIR API. ";
    v8 = 0xD000000000000047;
LABEL_10:
    MEMORY[0x25308CDA0](v8, v7 | 0x8000000000000000);
    return v15;
  }

  if (a4 == 2)
  {
    v15 = 0;

    sub_251C716A4();
    MEMORY[0x25308CDA0](91, 0xE100000000000000);
    if (!v5)
    {
      sub_251AB2F88(v6, 0, a3, 2);
      v5 = 0xE200000000000000;
      v6 = 16718;
    }

    MEMORY[0x25308CDA0](v6, v5);

    v7 = "ders form FHIR API";
    v8 = 0xD000000000000035;
    goto LABEL_10;
  }

  v14 = a3 | a2;
  if (!(a3 | a2 | a1))
  {
    return 0xD000000000000037;
  }

  if (a1 == 1 && !v14)
  {
    return 0xD000000000000042;
  }

  if (a1 != 2 || v14)
  {
    return 0xD000000000000022;
  }

  return 0xD000000000000052;
}

void sub_251B3006C(uint64_t a1)
{
  if (!qword_27F47A228)
  {
    sub_251B300C4();
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47A228);
    }
  }
}
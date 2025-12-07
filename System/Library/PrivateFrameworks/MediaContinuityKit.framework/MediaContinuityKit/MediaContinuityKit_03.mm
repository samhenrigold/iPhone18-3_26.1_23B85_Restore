__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2584AE82C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 40))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 16) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2584AE888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_2584AE8F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930628, &unk_258538E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584AE960(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_258467E20(result, a2);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2584AE998(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 72))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2584AE9EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t type metadata accessor for SessionMessage(uint64_t a1)
{
  result = qword_27F930630;
  if (!qword_27F930630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2584AEAA8(uint64_t a1)
{
  result = type metadata accessor for ActivationRequestInfo(319);
  if (v2 <= 0x3F)
  {
    result = sub_2584AEB30();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

ValueMetadata *sub_2584AEB30()
{
  result = qword_27F930640;
  if (!qword_27F930640)
  {
    result = &type metadata for ReportingEndReason;
    atomic_store(&type metadata for ReportingEndReason, &qword_27F930640);
  }

  return result;
}

unint64_t sub_2584AEB88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2584B0778(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2584AEBB8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x800000025853FAC0;
  if (v2 == 6)
  {
    v6 = 0xD000000000000020;
  }

  else
  {
    v6 = 0x6E6F73616572;
  }

  if (v2 != 6)
  {
    v5 = 0xE600000000000000;
  }

  v7 = 0xEF6E6F6973726556;
  v8 = 0x6C6F636F746F7270;
  if (v2 != 4)
  {
    v8 = 0xD00000000000001FLL;
    v7 = 0x800000025853FAA0;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x496E6F6973736573;
  v10 = 0xE900000000000044;
  if (v2 != 2)
  {
    v9 = 0x6F6973726556736FLL;
    v10 = 0xE90000000000006ELL;
  }

  if (*v1)
  {
    v4 = 0x44496C65646F6DLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_2584AECC8()
{
  v1 = *v0;
  v2 = 1701869940;
  if (v1 == 6)
  {
    v3 = 0xD000000000000020;
  }

  else
  {
    v3 = 0x6E6F73616572;
  }

  v4 = 0x6C6F636F746F7270;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001FLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x496E6F6973736573;
  if (v1 != 2)
  {
    v5 = 0x6F6973726556736FLL;
  }

  if (*v0)
  {
    v2 = 0x44496C65646F6DLL;
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

unint64_t sub_2584AEDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2584B0778(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2584AEE08(uint64_t a1)
{
  v2 = sub_2584B04C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2584AEE44(uint64_t a1)
{
  v2 = sub_2584B04C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2584AEE8C()
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584AEF64(uint64_t a1)
{
  sub_2585334AC();
}

uint64_t sub_2584AF028(uint64_t a1)
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

unint64_t sub_2584AF0FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2584B07C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2584AF12C(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000006465646ELL;
  v3 = 0x456E6F6973736573;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000022;
    v2 = 0x800000025853FB30;
  }

  v4 = 0xD000000000000018;
  v5 = 0x800000025853FAF0;
  if (*v1)
  {
    v4 = 0xD000000000000019;
    v5 = 0x800000025853FB10;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2584AF270(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_2584A7B8C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930648, &qword_2585390E0);
  sub_2584B067C();
  sub_258533DBC();
  result = sub_258467E20(a1, a2);
  if (!v4)
  {
    sub_2584A7B8C(a3, a4);
    sub_258533DBC();
    return sub_258467E20(a3, a4);
  }

  return result;
}

uint64_t sub_2584AF35C(void *a1)
{
  v2 = v1;
  v37 = type metadata accessor for ActivationRequestInfo(0);
  MEMORY[0x28223BE20](v37);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SessionMessage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930648, &qword_2585390E0);
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2584B04C0();
  sub_258533F4C();
  sub_2584B0514(v2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2584A9D40(v8, v5, type metadata accessor for ActivationRequestInfo);
      v40 = 0;
      sub_2584B0578();
      v13 = v38;
      sub_258533DBC();
      if (v13)
      {
        (*(v39 + 8))(v11, v9);
      }

      else
      {
        HIBYTE(v40) = 1;
        sub_258533DAC();
        HIBYTE(v40) = 3;
        sub_258533DAC();
        v32 = v9;
        v33 = v37;
        HIBYTE(v40) = 2;
        sub_2585329BC();
        sub_2584B08F0(&qword_27F930668, MEMORY[0x277CC95F8]);
        sub_258533DBC();
        sub_2584B3D20(*&v5[*(v33 + 28)], *&v5[*(v33 + 28) + 8], *&v5[*(v33 + 28) + 16]);
        HIBYTE(v40) = 4;
        sub_258533DAC();

        sub_2584AF270(*&v5[*(v33 + 32)], *&v5[*(v33 + 32) + 8], *&v5[*(v33 + 32) + 16], *&v5[*(v33 + 32) + 24]);
        (*(v39 + 8))(v11, v32);
      }

      return sub_2584B0620(v5);
    }

    v22 = v8[2];
    v36 = *v8;
    v37 = v22;
    v23 = v8[4];
    v24 = v8[5];
    v25 = v8[6];
    v40 = 256;
    sub_2584B0578();
    v26 = v38;
    sub_258533DBC();
    if (v26)
    {
      (*(v39 + 8))(v11, v9);
    }

    v35 = v25;
    v38 = v24;
    HIBYTE(v40) = 1;
    sub_258533DAC();
    HIBYTE(v40) = 3;
    sub_258533DAC();
    sub_2584B3D20(v23, v38, v35);
    HIBYTE(v40) = 4;
    sub_258533DAC();

    return (*(v39 + 8))(v11, v9);
  }

  if (EnumCaseMultiPayload != 2)
  {
    v27 = *v8;
    v40 = 768;
    sub_2584B0578();
    v28 = v38;
    sub_258533DBC();
    if (!v28)
    {
      HIBYTE(v40) = v27;
      LOBYTE(v40) = 7;
      sub_2584B05CC();
      sub_258533DBC();
    }

    return (*(v39 + 8))(v11, v9);
  }

  v16 = *v8;
  v15 = v8[1];
  v17 = v8[2];
  v18 = v8[3];
  v37 = v17;
  v40 = 512;
  sub_2584B0578();
  v19 = v9;
  v20 = v38;
  sub_258533DBC();
  if (v20)
  {
    (*(v39 + 8))(v11, v9);
    sub_258467E20(v16, v15);
    v21 = v37;
  }

  else
  {
    v29 = v16;
    v30 = v16;
    v31 = v37;
    sub_2584AF270(v30, v15, v37, v18);
    (*(v39 + 8))(v11, v19);
    sub_258467E20(v29, v15);
    v21 = v31;
  }

  return sub_258467E20(v21, v18);
}

uint64_t sub_2584AF9F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v85 = type metadata accessor for ActivationRequestInfo(0);
  MEMORY[0x28223BE20](v85);
  v81 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2585329BC();
  v82 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930678, &qword_2585390E8);
  v84 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v73 - v8;
  v10 = type metadata accessor for SessionMessage(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2584B04C0();
  v14 = v86;
  sub_258533F3C();
  if (!v14)
  {
    v80 = v6;
    v16 = v84;
    v15 = v85;
    v86 = v12;
    v97 = 0;
    sub_2584B06D0();
    sub_258533D4C();
    v17 = v9;
    if (v98 > 1u)
    {
      v71 = v83;
      if (v98 == 2)
      {
        v22 = v7;
        v28 = sub_2584B0810();
        v30 = v29;
        v32 = v31;
        v34 = v33;
        (*(v16 + 8))(v17, v22);
        v72 = v86;
        *v86 = v28;
        v72[1] = v30;
        v72[2] = v32;
        v72[3] = v34;
        v71 = v83;
      }

      else
      {
        v95 = 7;
        sub_2584B0724();
        sub_258533D4C();
        (*(v16 + 8))(v9, v7);
        v72 = v86;
        *v86 = v96;
      }
    }

    else if (v98)
    {
      v94 = 3;
      v23 = sub_258533D3C();
      v25 = v24;
      v85 = v23;
      v93 = 1;
      v26 = sub_258533D3C();
      v27 = v7;
      v38 = v37;
      v82 = v26;
      v92 = 4;
      v39 = sub_258533D3C();
      v47 = sub_2584B4D38(v39, v44, v45, v46);
      v81 = v48;
      v51 = v47;
      v53 = v52;
      (*(v16 + 8))(v17, v27);
      v72 = v86;
      *v86 = v85;
      v72[1] = v25;
      v54 = v81;
      v72[2] = v82;
      v72[3] = v38;
      v72[4] = v51;
      v72[5] = v53;
      v72[6] = v54;
      v71 = v83;
    }

    else
    {
      v91 = 3;
      v19 = sub_258533D3C();
      v21 = v20;
      v79 = v19;
      v90 = 1;
      v77 = sub_258533D3C();
      v78 = v35;
      v89 = 4;
      v36 = sub_258533D3C();
      v43 = sub_2584B4D38(v36, v40, v41, v42);
      v73 = v50;
      v74 = v49;
      v75 = v43;
      v76 = v21;
      v88 = 2;
      sub_2584B08F0(&qword_27F930690, MEMORY[0x277CC9618]);
      sub_258533D4C();
      v55 = sub_2584B0810();
      v56 = *(v16 + 8);
      v57 = v55;
      v59 = v58;
      v61 = v60;
      v84 = v62;
      v56(v9, v7);
      v63 = v81;
      (*(v82 + 32))(&v81[v15[6]], v80, v4);
      v64 = v76;
      v65 = v77;
      *v63 = v79;
      v63[1] = v64;
      v66 = v78;
      v63[2] = v65;
      v63[3] = v66;
      v67 = (v63 + v15[7]);
      v68 = v74;
      *v67 = v75;
      v67[1] = v68;
      v67[2] = v73;
      v69 = (v63 + v15[8]);
      *v69 = v57;
      v69[1] = v59;
      v71 = v83;
      v70 = v84;
      v69[2] = v61;
      v69[3] = v70;
      v72 = v86;
      sub_2584A9D40(v63, v86, type metadata accessor for ActivationRequestInfo);
    }

    swift_storeEnumTagMultiPayload();
    sub_2584A9D40(v72, v71, type metadata accessor for SessionMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v87);
}

unint64_t sub_2584B019C()
{
  v1 = v0;
  v2 = type metadata accessor for ActivationRequestInfo(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SessionMessage(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2584B0514(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = *v7;
      v12 = *(v7 + 1);
      v13 = *(v7 + 2);
      v14 = *(v7 + 3);
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_258533B8C();

      v23 = 0xD000000000000023;
      v24 = 0x8000000258540B30;
      v15 = sub_2584AE0D8(v11, v12, v13, v14);
      MEMORY[0x259C81500](v15);

      sub_258467E20(v11, v12);
      sub_258467E20(v13, v14);
    }

    else
    {
      v21 = *v7;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_258533B8C();
      MEMORY[0x259C81500](0xD000000000000017, 0x8000000258540B10);
      LOBYTE(v29) = v21;
      sub_258533C8C();
    }

    return v23;
  }

  else if (EnumCaseMultiPayload)
  {
    v17 = *v7;
    v16 = *(v7 + 1);
    v19 = *(v7 + 2);
    v18 = *(v7 + 3);
    v22 = *(v7 + 2);
    v20 = *(v7 + 6);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_258533B8C();
    v29 = v23;
    v30 = v24;
    MEMORY[0x259C81500](0xD00000000000001ALL, 0x8000000258540B60);
    v23 = v17;
    v24 = v16;
    v25 = v19;
    v26 = v18;
    v27 = v22;
    v28 = v20;
    sub_258533C8C();

    return v29;
  }

  else
  {
    sub_2584A9D40(v7, v4, type metadata accessor for ActivationRequestInfo);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_258533B8C();
    MEMORY[0x259C81500](0xD000000000000019, 0x8000000258540B80);
    sub_258533C8C();
    v9 = v23;
    sub_2584B0620(v4);
    return v9;
  }
}

unint64_t sub_2584B04C0()
{
  result = qword_27F930650;
  if (!qword_27F930650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930650);
  }

  return result;
}

uint64_t sub_2584B0514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2584B0578()
{
  result = qword_27F930658;
  if (!qword_27F930658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930658);
  }

  return result;
}

unint64_t sub_2584B05CC()
{
  result = qword_27F930660;
  if (!qword_27F930660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930660);
  }

  return result;
}

uint64_t sub_2584B0620(uint64_t a1)
{
  v2 = type metadata accessor for ActivationRequestInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2584B067C()
{
  result = qword_27F930670;
  if (!qword_27F930670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930670);
  }

  return result;
}

unint64_t sub_2584B06D0()
{
  result = qword_27F930680;
  if (!qword_27F930680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930680);
  }

  return result;
}

unint64_t sub_2584B0724()
{
  result = qword_27F930688;
  if (!qword_27F930688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930688);
  }

  return result;
}

unint64_t sub_2584B0778(uint64_t a1, uint64_t a2)
{
  v2 = sub_258533CEC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2584B07C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_258533CEC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2584B0810()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930678, &qword_2585390E8);
  sub_2584B0934();
  sub_258533D4C();
  if (!v0)
  {
    v1 = v3;
    sub_258533D4C();
  }

  return v1;
}

uint64_t sub_2584B08F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2585329BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2584B0934()
{
  result = qword_27F930698;
  if (!qword_27F930698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930698);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SessionMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2584B0AEC()
{
  result = qword_27F9306A0;
  if (!qword_27F9306A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306A0);
  }

  return result;
}

unint64_t sub_2584B0B44()
{
  result = qword_27F9306A8;
  if (!qword_27F9306A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306A8);
  }

  return result;
}

unint64_t sub_2584B0B9C()
{
  result = qword_27F9306B0;
  if (!qword_27F9306B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306B0);
  }

  return result;
}

unint64_t sub_2584B0BF4()
{
  result = qword_27F9306B8;
  if (!qword_27F9306B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306B8);
  }

  return result;
}

unint64_t sub_2584B0C48()
{
  result = qword_27F9306C0;
  if (!qword_27F9306C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306C0);
  }

  return result;
}

uint64_t sub_2584B0CB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA && *(a1 + 96))
  {
    return (*a1 + 10);
  }

  v3 = ((((*(a1 + 88) >> 58) & 0xC | (*(a1 + 72) >> 60) & 2) >> 1) & 0xFFFFFFF7 | (8 * ((*(a1 + 72) & 0x1000000000000000) != 0))) ^ 0xF;
  if (v3 >= 9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2584B0D20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 9)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 10;
    if (a3 >= 0xA)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 0;
      *(result + 72) = (((-a2 & 8) != 0) | ((2 * (-a2 & 0xF)) & 3)) << 60;
      *(result + 80) = 0;
      *(result + 88) = (((-a2 >> 3) & 1 | (2 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_2584B0DA0(uint64_t result)
{
  v1 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 72) &= ~0x2000000000000000uLL;
  *(result + 88) = v1;
  return result;
}

uint64_t sub_2584B0DBC(uint64_t result, char a2)
{
  v2 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL | ((((a2 & 7) >> 1) & 3) << 60);
  *(result + 72) = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  *(result + 88) = v2;
  return result;
}

uint64_t sub_2584B0DF4(uint64_t a1, unsigned __int8 a2)
{
  sub_2585334AC();
}

uint64_t sub_2584B0F34(uint64_t a1, unsigned __int8 a2)
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584B1070(uint64_t a1, unsigned __int8 a2)
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584B11C4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001FLL;
    v6 = 0xD000000000000020;
    if (a1 != 8)
    {
      v6 = 0x6E6F73616572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001ELL;
    if (a1 == 5)
    {
      v7 = 0xD00000000000001DLL;
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
    v1 = 1701869940;
    v2 = 0x6F69746365726964;
    v3 = 0x6F6C42616964656DLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
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

uint64_t sub_2584B1318(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_2584B11C4(*a1);
  v5 = v4;
  if (v3 == sub_2584B11C4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258533E2C();
  }

  return v8 & 1;
}

uint64_t sub_2584B13A0()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2584B11C4(v1);
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584B1404(uint64_t a1)
{
  sub_2584B11C4(*v1);
  sub_2585334AC();
}

uint64_t sub_2584B1458(uint64_t a1)
{
  v2 = *v1;
  sub_258533EEC();
  sub_2584B11C4(v2);
  sub_2585334AC();

  return sub_258533F2C();
}

unint64_t sub_2584B14B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2584B3354(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2584B14E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2584B11C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2584B1530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2584B3354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2584B1564(uint64_t a1)
{
  v2 = sub_2584B31DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2584B15A0(uint64_t a1)
{
  v2 = sub_2584B31DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2584B15F4(uint64_t a1)
{
  sub_2585334AC();
}

unint64_t sub_2584B1724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2584B33A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2584B1754(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEB00000000646564;
    v9 = 0xD000000000000010;
    v10 = 0x800000025853FC00;
    if (v2 != 1)
    {
      v9 = 0xD000000000000011;
      v10 = 0x800000025853FC20;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x6E456D6165727473;
    }

    if (!v11)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x800000025853FC80;
    v4 = 0xD000000000000017;
    if (v2 == 5)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x800000025853FCA0;
    }

    v5 = 0xD000000000000010;
    v6 = 0x800000025853FC40;
    if (v2 != 3)
    {
      v5 = 0xD000000000000011;
      v6 = 0x800000025853FC60;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_2584B1908(unsigned __int16 *a1)
{
  LOBYTE(v5) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306C8, &unk_258539FA0);
  result = sub_258533DCC();
  if (!v1)
  {
    v7 = *(a1 + 4);
    v5 = *(a1 + 4);
    v8 = 5;
    sub_2584AE8F0(&v7, v4);
    sub_2584B067C();
    sub_258533D9C();
    sub_2584AE960(v5, *(&v5 + 1));
    v5 = *(a1 + 12);
    v6 = v5;
    v8 = 6;
    sub_2584AE8F0(&v6, v4);
    sub_258533D9C();
    return sub_2584AE960(v5, *(&v5 + 1));
  }

  return result;
}

uint64_t sub_2584B1A3C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_2584A7B8C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306C8, &unk_258539FA0);
  sub_2584B067C();
  sub_258533DBC();
  result = sub_258467E20(a1, a2);
  if (!v4)
  {
    sub_2584A7B8C(a3, a4);
    sub_258533DBC();
    return sub_258467E20(a3, a4);
  }

  return result;
}

uint64_t sub_2584B1B28(void *a1, char a2)
{
  LOBYTE(v30) = a2;
  LOBYTE(v36) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306C8, &unk_258539FA0);
  sub_2584B3230();
  result = sub_258533DBC();
  if (!v3)
  {
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v6);
    (*(v7 + 8))(&v30, v6, v7);
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    sub_25853356C();
    v38 = 1;
    sub_258533DAC();

    __swift_destroy_boxed_opaque_existential_1Tm(&v30);
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    (*(v9 + 16))(&v30, v8, v9);
    LOBYTE(v36) = 2;
    sub_258533DDC();
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    *&v30 = (*(v11 + 24))(v10, v11);
    *(&v30 + 1) = v12;
    LOBYTE(v36) = 3;
    sub_2584B067C();
    sub_258533DBC();
    sub_258467E20(v30, *(&v30 + 1));
    v13 = v2[3];
    v32 = v2[2];
    v33 = v13;
    v14 = v2[5];
    v34 = v2[4];
    v35 = v14;
    v15 = v2[1];
    v30 = *v2;
    v31 = v15;
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    (*(v17 + 32))(v37, v16, v17);
    sub_2584B1908(v37);
    sub_2584AB9E8(v37);
    v18 = v2[3];
    v32 = v2[2];
    v33 = v18;
    v19 = v2[5];
    v34 = v2[4];
    v35 = v19;
    v20 = v2[1];
    v30 = *v2;
    v31 = v20;
    v21 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v21);
    v23 = (*(v22 + 40))(v21, v22);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_2584B1A3C(v23, v24, v26, v28);
    sub_258467E20(v23, v25);
    return sub_258467E20(v27, v29);
  }

  return result;
}

uint64_t sub_2584B1E54(void *a1)
{
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306C8, &unk_258539FA0);
  v86 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v4 = &v71 - v3;
  v5 = *v1;
  v84 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v82 = v5;
  v83 = v6;
  v8 = v1[4];
  v10 = v1[6];
  v9 = v1[7];
  v76 = v1[5];
  v77 = v10;
  v80 = v9;
  v81 = v8;
  v11 = v1[9];
  v12 = v1[10];
  v13 = v1[11];
  v78 = v1[8];
  v79 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2584B31DC();
  v14 = v13;
  sub_258533F4C();
  v15 = (v13 >> 59) & 6 | ((v11 & 0x2000000000000000) != 0);
  if (v15 > 2)
  {
    if (v15 <= 4)
    {
      if (v15 == 3)
      {
        v72 = v11 & 0xDFFFFFFFFFFFFFFFLL;
        v73 = v13 & 0xCFFFFFFFFFFFFFFFLL;
        v16 = v11;
        v17 = v82;
        v91 = v82;
        v92 = v84;
        v74 = v4;
        v75 = v7;
        v18 = v83;
        v93 = v83;
        v94 = v7;
        v19 = v14;
        v20 = v80;
        v21 = v81;
        v22 = v76;
        v23 = v77;
        v95 = v81;
        v96 = v76;
        v97 = v77;
        v98 = v80;
        v24 = v78;
        v25 = v79;
        v99 = v78;
        v100 = v16;
        v101 = v79;
        v102 = v19;
        v89 = &type metadata for AudioStreamOffer;
        v90 = &off_28698DC78;
        v26 = swift_allocObject();
        v88[0] = v26;
        v27 = v84;
        v26[2] = v17;
        v26[3] = v27;
        v28 = v75;
        v26[4] = v18;
        v26[5] = v28;
        v26[6] = v21;
        v26[7] = v22;
        v26[8] = v23;
        v26[9] = v20;
        v30 = v72;
        v29 = v73;
        v26[10] = v24;
        v26[11] = v30;
        v26[12] = v25;
        v26[13] = v29;
        v103 = v17;
        v104 = v27;
        v105 = v18;
        v106 = v28;
        v31 = v74;
        v107 = v21;
        v108 = v22;
        v109 = v23;
        v110 = v20;
        v111 = v24;
        v112 = v30;
        v113 = v25;
        v114 = v29;
        sub_2584A9620(&v103, v87);
        sub_2584B1B28(v88, 3);
        (*(v86 + 8))(v31, v135);
        return __swift_destroy_boxed_opaque_existential_1Tm(v88);
      }

      v74 = v13;
      LOBYTE(v103) = 4;
      LOBYTE(v91) = 0;
      sub_2584B3230();
      v49 = v135;
      v62 = v85;
      sub_258533DBC();
      v63 = v82;
      v64 = v83;
      if (!v62)
      {
        v75 = v7;
        v65 = v84;
        v103 = v82;
        v104 = v84;
        LOBYTE(v91) = 3;
        sub_2584A7B8C(v82, v84);
        sub_2584B067C();
        sub_258533DBC();
        sub_258467E20(v103, v104);
        v103 = v63;
        v104 = v65;
        v105 = v64;
        v106 = v75;
        v107 = v81;
        v108 = v76;
        v109 = v77;
        v110 = v80;
        v111 = v78;
        v112 = v11;
        v113 = v79;
        v114 = v74;
        v120 = v64;
        v121 = v75;
        v122 = v81;
        v123 = v76;
        v124 = v77;
        sub_2584B1908(&v120);
      }

      return (*(v86 + 8))(v4, v49);
    }

    v49 = v135;
    if (v15 == 5)
    {
      LOBYTE(v103) = 5;
      LOBYTE(v91) = 0;
      sub_2584B3230();
      v50 = v85;
      sub_258533DBC();
      if (!v50)
      {
        v103 = v82;
        v104 = v84;
        v105 = v83;
        v106 = v7;
        v75 = v7;
        v51 = v81;
        v52 = v11;
        v54 = v76;
        v53 = v77;
        v107 = v81;
        v108 = v76;
        v109 = v77;
        v110 = v80;
        v111 = v78;
        v112 = v52;
        v73 = v52;
        v113 = v79;
        v114 = v14;
        v125 = v81;
        v126 = v76;
        v127 = v77;
        v55 = v80;
        v128 = v80;
        v129 = v78;
        sub_2584B1908(&v125);
        v103 = v82;
        v104 = v84;
        v105 = v83;
        v106 = v75;
        v107 = v51;
        v108 = v54;
        v109 = v53;
        v110 = v55;
        v111 = v78;
        v112 = v73;
        v113 = v79;
        v114 = v14;
        sub_2584B1A3C(v82, v84, v83, v75);
        return (*(v86 + 8))(v4, v135);
      }
    }

    else
    {
      v73 = v11;
      v74 = v13;
      v67 = v82;
      v66 = v83;
      v130 = v82;
      v68 = v84;
      v131 = v84;
      v132 = v83;
      v69 = v81;
      v133 = v7;
      v134 = v81;
      LOBYTE(v103) = 6;
      LOBYTE(v91) = 0;
      v75 = v7;
      sub_2584B3230();
      v70 = v85;
      sub_258533DBC();
      if (!v70)
      {
        v103 = v67;
        v104 = v68;
        v105 = v66;
        v106 = v75;
        v107 = v69;
        v108 = v76;
        v109 = v77;
        v110 = v80;
        v111 = v78;
        v112 = v73;
        v113 = v79;
        v114 = v74;
        sub_2584B1908(&v130);
        return (*(v86 + 8))(v4, v135);
      }
    }

    return (*(v86 + 8))(v4, v49);
  }

  if (v15)
  {
    v32 = v4;
    if (v15 == 1)
    {
      v73 = v11 & 0xDFFFFFFFFFFFFFFFLL;
      v74 = v4;
      v75 = v13 & 0xCFFFFFFFFFFFFFFFLL;
      v33 = v11;
      v35 = v82;
      v34 = v83;
      v91 = v82;
      v92 = v84;
      v93 = v83;
      v94 = v7;
      v36 = v81;
      v38 = v76;
      v37 = v77;
      v95 = v81;
      v96 = v76;
      v97 = v77;
      v98 = v80;
      v39 = v78;
      v99 = v78;
      v100 = v33;
      v40 = v14;
      v41 = v79;
      v101 = v79;
      v102 = v40;
      v89 = &type metadata for VideoStreamOffer;
      v90 = &off_28698E288;
      v42 = swift_allocObject();
      v88[0] = v42;
      v43 = v84;
      v42[2] = v35;
      v42[3] = v43;
      v42[4] = v34;
      v42[5] = v7;
      v42[6] = v36;
      v42[7] = v38;
      v44 = v80;
      v42[8] = v37;
      v42[9] = v44;
      v45 = v73;
      v42[10] = v39;
      v42[11] = v45;
      v46 = v75;
      v42[12] = v41;
      v42[13] = v46;
      v103 = v35;
      v104 = v43;
      v105 = v34;
      v106 = v7;
      v107 = v36;
      v108 = v38;
      v109 = v37;
      v110 = v44;
      v111 = v39;
      v112 = v45;
      v113 = v41;
      v114 = v46;
      sub_2584A9700(&v103, v87);
      v47 = v74;
      sub_2584B1B28(v88, 1);
      (*(v86 + 8))(v47, v135);
      return __swift_destroy_boxed_opaque_existential_1Tm(v88);
    }

    LOBYTE(v103) = 2;
    LOBYTE(v91) = 0;
    sub_2584B3230();
    v56 = v135;
    v58 = v85;
    sub_258533DBC();
    v59 = v81;
    if (!v58)
    {
      v73 = v11;
      v74 = v13;
      v60 = v82;
      v61 = v84;
      v103 = v82;
      v104 = v84;
      LOBYTE(v91) = 3;
      sub_2584A7B8C(v82, v84);
      sub_2584B067C();
      sub_258533DBC();
      sub_258467E20(v103, v104);
      v103 = v60;
      v104 = v61;
      v105 = v83;
      v106 = v7;
      v107 = v59;
      v108 = v76;
      v109 = v77;
      v110 = v80;
      v111 = v78;
      v112 = v73;
      v113 = v79;
      v114 = v74;
      v115 = v83;
      v116 = v7;
      v117 = v59;
      v118 = v76;
      v119 = v77;
      sub_2584B1908(&v115);
      return (*(v86 + 8))(v4, v56);
    }
  }

  else
  {
    LOBYTE(v103) = 0;
    LOBYTE(v91) = 0;
    sub_2584B3230();
    v56 = v135;
    v32 = v4;
    v57 = v85;
    sub_258533DBC();
    if (!v57)
    {
      LOBYTE(v103) = v82;
      LOBYTE(v91) = 9;
      sub_2584B05CC();
      sub_258533DBC();
    }
  }

  return (*(v86 + 8))(v32, v56);
}

uint64_t sub_2584B2660@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306E0, &qword_258539FB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;
  v9 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2584B31DC();
  sub_258533F3C();
  if (v2)
  {
    goto LABEL_3;
  }

  v10 = v6;
  v54 = 0;
  sub_2584B3300();
  sub_258533D4C();
  if (v55 > 2u)
  {
    v13 = a2;
    if (v55 > 4u)
    {
      if (v55 == 5)
      {
        v16 = sub_2584B33EC();
        v20 = v19;
        v22 = v21;
        *&v50 = v23;
        sub_2584B34CC(&v66);
        v47 = v66;
        v49 = v67;
        v46 = v68;
        v48 = v69;
        (*(v10 + 8))(v8, v5);
        v26 = v46;
        v27 = v49;
        v28 = v48;
        *&v29 = v22;
        *(&v29 + 1) = v47;
        v30 = 0x2000000000000000;
        v31 = 0x2000000000000000;
        v13 = a2;
        v11 = v74;
        a2 = v50;
LABEL_27:
        *v13 = v16;
        *(v13 + 8) = v20;
        *(v13 + 16) = a2;
        *(v13 + 24) = v29;
        *(v13 + 40) = v27;
        *(v13 + 56) = v26;
        *(v13 + 64) = v28;
        *(v13 + 72) = v30;
        *(v13 + 80) = v25;
        *(v13 + 88) = v31;
        return __swift_destroy_boxed_opaque_existential_1Tm(v11);
      }

      sub_2584B34CC(&v70);
      v16 = v70;
      v20 = v71;
      a2 = v72;
      v50 = v73;
      (*(v10 + 8))(v8, v5);
      v29 = v50;
      v30 = 0;
      v31 = 0x3000000000000000;
    }

    else
    {
      if (v55 == 3)
      {
        LOBYTE(v52) = 1;
        sub_258533D3C();
        v14 = sub_258533CEC();

        if (!v14)
        {
          LOBYTE(v52) = 2;
          v15 = sub_258533D6C();
          if (v15 == 1)
          {
            v16 = 0;
            goto LABEL_32;
          }

          if (v15 == 2)
          {
            v16 = 1;
LABEL_32:
            v51 = 3;
            sub_2584B0934();
            sub_258533D4C();
            v20 = v52;
            v37 = v53;
            sub_2584B34CC(v61);
            *&v50 = v37;
            v38 = sub_2584B33EC();
            v47 = v39;
            v48 = v38;
            *&v49 = v40;
            v44 = v43;
            (*(v10 + 8))(v8, v5);
            v29 = v61[0];
            v27 = v61[1];
            v26 = v62;
            v30 = v47 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
            v31 = v44 & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
            goto LABEL_33;
          }

          goto LABEL_28;
        }

        goto LABEL_15;
      }

      v51 = 3;
      sub_2584B0934();
      sub_258533D4C();
      v16 = v52;
      v20 = v53;
      sub_2584B34CC(&v63);
      a2 = v63;
      v49 = v65;
      v50 = v64;
      (*(v10 + 8))(v8, v5);
      v27 = v49;
      v29 = v50;
      v30 = 0;
      v31 = 0x2000000000000000;
    }

LABEL_26:
    v11 = v74;
    goto LABEL_27;
  }

  v13 = a2;
  if (!v55)
  {
    v51 = 9;
    sub_2584B0724();
    v20 = v8;
    sub_258533D4C();
    (*(v6 + 8))(v8, v5);
    v30 = 0;
    v31 = 0;
    v16 = v52;
    goto LABEL_26;
  }

  if (v55 != 1)
  {
    v51 = 3;
    sub_2584B0934();
    sub_258533D4C();
    v16 = v52;
    v20 = v53;
    sub_2584B34CC(&v58);
    a2 = v58;
    v49 = v60;
    v50 = v59;
    (*(v10 + 8))(v8, v5);
    v27 = v49;
    v29 = v50;
    v30 = 0;
    v31 = 0x1000000000000000;
    goto LABEL_26;
  }

  LOBYTE(v52) = 1;
  sub_258533D3C();
  v17 = sub_258533CEC();

  if (!v17)
  {
    LOBYTE(v52) = 2;
    v24 = sub_258533D6C();
    if (v24 == 1)
    {
      v16 = 0;
    }

    else
    {
      if (v24 != 2)
      {
LABEL_28:
        sub_2584B35E0();
        swift_allocError();
        *v32 = 0;
        goto LABEL_16;
      }

      v16 = 1;
    }

    v51 = 3;
    sub_2584B0934();
    sub_258533D4C();
    v20 = v52;
    v33 = v53;
    sub_2584B34CC(v56);
    *&v50 = v33;
    v34 = sub_2584B33EC();
    v47 = v35;
    v48 = v34;
    *&v49 = v36;
    v42 = v41;
    (*(v10 + 8))(v8, v5);
    v29 = v56[0];
    v27 = v56[1];
    v26 = v57;
    v31 = v42 & 0xCFFFFFFFFFFFFFFFLL;
    v30 = v47 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
LABEL_33:
    v13 = a2;
    v11 = v74;
    a2 = v50;
    v28 = v48;
    v25 = v49;
    goto LABEL_27;
  }

LABEL_15:
  sub_2584B35E0();
  swift_allocError();
  *v18 = 1;
LABEL_16:
  swift_willThrow();
  (*(v6 + 8))(v8, v5);
LABEL_3:
  v11 = v74;
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

unint64_t sub_2584B2E74()
{
  v1 = (*(v0 + 88) >> 59) & 6 | ((*(v0 + 72) & 0x2000000000000000) != 0);
  if (v1 <= 2)
  {
    if (!v1)
    {
      sub_258533B8C();
      MEMORY[0x259C81500](0xD000000000000016, 0x8000000258540C60);
      sub_258533C8C();
      return 0;
    }

    if (v1 == 1)
    {
      sub_258533B8C();
      v5 = 0;
      MEMORY[0x259C81500](0xD000000000000012, 0x8000000258540C40);
      goto LABEL_14;
    }

    sub_258533B8C();
    v5 = 0;
    v3 = "videoStreamAnswer: ";
    goto LABEL_13;
  }

  if (v1 <= 4)
  {
    if (v1 == 3)
    {
      sub_258533B8C();
      v5 = 0;
      MEMORY[0x259C81500](0xD000000000000012, 0x8000000258540C00);
      goto LABEL_14;
    }

    sub_258533B8C();
    v5 = 0;
    v3 = "audioStreamAnswer: ";
LABEL_13:
    MEMORY[0x259C81500](0xD000000000000013, (v3 - 32) | 0x8000000000000000);
    goto LABEL_14;
  }

  if (v1 != 5)
  {
    sub_258533B8C();

    v5 = 0xD000000000000013;
    v4 = sub_2584AE458();
    MEMORY[0x259C81500](v4);

    return v5;
  }

  sub_258533B8C();
  v5 = 0;
  MEMORY[0x259C81500](0xD000000000000012, 0x8000000258540BC0);
LABEL_14:
  sub_258533C8C();
  return v5;
}

unint64_t sub_2584B31DC()
{
  result = qword_27F9306D0;
  if (!qword_27F9306D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306D0);
  }

  return result;
}

unint64_t sub_2584B3230()
{
  result = qword_27F9306D8;
  if (!qword_27F9306D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306D8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  sub_258467E20(v0[3], v0[4]);
  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    sub_258467E20(v0[6], v1);
  }

  v2 = v0[9];
  if (v2 >> 60 != 15)
  {
    sub_258467E20(v0[8], v2);
  }

  sub_258467E20(v0[10], v0[11]);
  sub_258467E20(v0[12], v0[13]);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

unint64_t sub_2584B3300()
{
  result = qword_27F9306E8;
  if (!qword_27F9306E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306E8);
  }

  return result;
}

unint64_t sub_2584B3354(uint64_t a1, uint64_t a2)
{
  v2 = sub_258533CEC();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2584B33A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_258533CEC();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2584B33EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306E0, &qword_258539FB0);
  sub_2584B0934();
  sub_258533D4C();
  if (!v0)
  {
    v1 = v3;
    sub_258533D4C();
  }

  return v1;
}

__n128 sub_2584B34CC@<Q0>(uint64_t a1@<X8>)
{
  v6.n128_u8[0] = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306E0, &qword_258539FB0);
  v3 = sub_258533D5C();
  if (!v1)
  {
    v5 = v3;
    sub_2584B0934();
    sub_258533D2C();
    sub_258533D2C();
    result = v6;
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 24) = v6;
  }

  return result;
}

unint64_t sub_2584B35E0()
{
  result = qword_27F9306F0;
  if (!qword_27F9306F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreamMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StreamMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2584B37A8()
{
  result = qword_27F9306F8;
  if (!qword_27F9306F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306F8);
  }

  return result;
}

unint64_t sub_2584B3800()
{
  result = qword_27F930700;
  if (!qword_27F930700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930700);
  }

  return result;
}

unint64_t sub_2584B3854(uint64_t a1)
{
  result = sub_2584B35E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584B3880()
{
  result = qword_27F930708;
  if (!qword_27F930708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930708);
  }

  return result;
}

unint64_t sub_2584B38D8()
{
  result = qword_27F930710;
  if (!qword_27F930710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930710);
  }

  return result;
}

unint64_t sub_2584B3930()
{
  result = qword_27F930718;
  if (!qword_27F930718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930718);
  }

  return result;
}

unint64_t sub_2584B3984()
{
  result = qword_27F930720;
  if (!qword_27F930720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930720);
  }

  return result;
}

unint64_t sub_2584B39EC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for VideoStreamIdentifier;
  result = sub_2584AC364();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2584B3A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2585329BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2584B3B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2585329BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for MediaConnectionPrerequisites(uint64_t a1)
{
  result = qword_27F930728;
  if (!qword_27F930728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584B3C18(uint64_t a1)
{
  sub_2585329BC();
  if (v1 <= 0x3F)
  {
    sub_2584B3CA4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2584B3CA4(uint64_t a1)
{
  if (!qword_27F930738)
  {
    type metadata accessor for ether_addr(255);
    v1 = sub_258533A0C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F930738);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2584B3D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v6 = sub_258533DFC();
    MEMORY[0x259C81500](46, 0xE100000000000000);
    v3 = sub_258533DFC();
    MEMORY[0x259C81500](v3);
  }

  else
  {
    v6 = sub_258533DFC();
  }

  MEMORY[0x259C81500](46, 0xE100000000000000);
  v4 = sub_258533DFC();
  MEMORY[0x259C81500](v4);

  return v6;
}

unint64_t sub_2584B3E48(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_258533BDC();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_2584B4338(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL sub_2584B4148(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_2584B4180(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    v4 = a2[2] >= a1[2];
  }

  else
  {
    v4 = v3 >= v2;
  }

  if (*a1 == *a2)
  {
    return v4;
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_2584B41BC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 >= v3;
  if (v4)
  {
    v5 = a1[2] >= a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_2584B41F4(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    v4 = a2[2] < a1[2];
  }

  else
  {
    v4 = v3 < v2;
  }

  if (*a1 == *a2)
  {
    return v4;
  }

  else
  {
    return *a2 < *a1;
  }
}

unint64_t sub_2584B4270()
{
  result = qword_27F930740;
  if (!qword_27F930740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930740);
  }

  return result;
}

void *sub_2584B42C4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEC0, &qword_258536910);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_2584B4338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25853353C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2584B48C4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_258533BDC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2584B48C4(uint64_t a1, unint64_t a2)
{
  v2 = sub_25853354C();
  v6 = sub_2584B4944(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2584B4944(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_258533A1C();
    if (!v9 || (v10 = v9, v11 = sub_2584B42C4(v9, 0), v12 = sub_2584B4A9C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_25853349C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25853349C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_258533BDC();
LABEL_4:

  return sub_25853349C();
}

unint64_t sub_2584B4A9C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2584B4CBC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25853351C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_258533BDC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2584B4CBC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2585334FC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
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

unint64_t sub_2584B4CBC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25853352C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C81550](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2584B4D38(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v68 = a1;
  v69 = a2;
  sub_2584B55D8();
  v6 = sub_258533A3C();
  v7 = *(v6 + 16);
  v70 = v6;
  v71 = v6 + 32;
  v72 = 0;
  v73 = (2 * v7) | 1;
  if (v7 > 3)
  {
    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v8 = sub_258532A4C();
    __swift_project_value_buffer(v8, qword_27F93CF90);

    v9 = sub_258532A2C();
    v10 = sub_2585338CC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v68 = v12;
      *v11 = 136315138;
      v5 = sub_2584713B0(v5, a2, &v68);

      *(v11 + 4) = v5;
      _os_log_impl(&dword_25845E000, v9, v10, "Version tuple had more than 3 components: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C82900](v12, -1, -1);
      MEMORY[0x259C82900](v11, -1, -1);
    }

    else
    {
    }

    v24 = 0;
    goto LABEL_96;
  }

  result = sub_258475D0C();
  if (!v14)
  {
    v5 = 0;
    goto LABEL_78;
  }

  v15 = v14;
  v16 = HIBYTE(v14) & 0xF;
  v17 = result & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    goto LABEL_72;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    v46 = result;

    v5 = sub_2584B4338(v46, v15, 10);
    v48 = v47;

    result = v46;
    if ((v48 & 1) == 0)
    {
LABEL_77:

LABEL_78:
      v49 = sub_258475D0C();
      if (v50)
      {
        v51 = v49;
        v52 = v50;

        sub_2584B3E48(v51, v52);
        if (v53)
        {
          if (qword_27F92F8C0 != -1)
          {
            swift_once();
          }

          v54 = sub_258532A4C();
          __swift_project_value_buffer(v54, qword_27F93CF90);

          v41 = sub_258532A2C();
          v55 = sub_2585338CC();

          if (!os_log_type_enabled(v41, v55))
          {
            goto LABEL_94;
          }

          v5 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v68 = v56;
          *v5 = 136315138;
          v57 = sub_2584713B0(v51, v52, &v68);

          *(v5 + 4) = v57;
          v58 = "Cannot convert minor version string into number: %s";
LABEL_92:
          _os_log_impl(&dword_25845E000, v41, v55, v58, v5, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          MEMORY[0x259C82900](v56, -1, -1);
          v45 = v5;
          goto LABEL_93;
        }
      }

      v59 = sub_258475D0C();
      if (v60)
      {
        v61 = v59;
        v62 = v60;

        sub_2584B3E48(v61, v62);
        if (v63)
        {
          if (qword_27F92F8C0 != -1)
          {
            swift_once();
          }

          v64 = sub_258532A4C();
          __swift_project_value_buffer(v64, qword_27F93CF90);

          v41 = sub_258532A2C();
          v55 = sub_2585338CC();

          if (!os_log_type_enabled(v41, v55))
          {
            goto LABEL_94;
          }

          v5 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v68 = v56;
          *v5 = 136315138;
          v65 = sub_2584713B0(v61, v62, &v68);

          *(v5 + 4) = v65;
          v58 = "Cannot convert update version string into number: %s";
          goto LABEL_92;
        }
      }

      swift_unknownObjectRelease();
      return v5;
    }

LABEL_72:
    v5 = result;
    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v40 = sub_258532A4C();
    __swift_project_value_buffer(v40, qword_27F93CF90);

    v41 = sub_258532A2C();
    v42 = sub_2585338CC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v68 = v44;
      *v43 = 136315138;
      v5 = sub_2584713B0(v5, v15, &v68);

      *(v43 + 4) = v5;
      _os_log_impl(&dword_25845E000, v41, v42, "Cannot convert major version string into number: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x259C82900](v44, -1, -1);
      v45 = v43;
LABEL_93:
      MEMORY[0x259C82900](v45, -1, -1);
LABEL_95:

      v24 = 1;
LABEL_96:
      sub_2584B562C();
      swift_allocError();
      *v66 = v24;
      swift_willThrow();
      swift_unknownObjectRelease();
      return v5;
    }

LABEL_94:

    goto LABEL_95;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v16 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v67 = result;
      v16 = sub_258533BDC();
      result = v67;
    }

    v19 = *v16;
    if (v19 == 43)
    {
      if (v17 >= 1)
      {
        v28 = v17 - 1;
        if (v17 != 1)
        {
          v5 = 0;
          if (!v16)
          {
            goto LABEL_71;
          }

          v29 = (v16 + 1);
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v5;
            if ((v5 * 10) >> 64 != (10 * v5) >> 63)
            {
              break;
            }

            v5 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v28)
            {
LABEL_62:
              LOBYTE(v16) = 0;
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      goto LABEL_104;
    }

    if (v19 == 45)
    {
      if (v17 >= 1)
      {
        v20 = v17 - 1;
        if (v17 != 1)
        {
          v5 = 0;
          if (!v16)
          {
            goto LABEL_71;
          }

          v21 = (v16 + 1);
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v5;
            if ((v5 * 10) >> 64 != (10 * v5) >> 63)
            {
              break;
            }

            v5 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v20)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_70;
      }

      __break(1u);
      goto LABEL_103;
    }

    if (v17)
    {
      v5 = 0;
      if (!v16)
      {
        goto LABEL_71;
      }

      while (1)
      {
        v35 = *v16 - 48;
        if (v35 > 9)
        {
          break;
        }

        v36 = 10 * v5;
        if ((v5 * 10) >> 64 != (10 * v5) >> 63)
        {
          break;
        }

        v5 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          break;
        }

        ++v16;
        if (!--v17)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_70;
  }

  v68 = result;
  v69 = v15 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result == 45)
    {
      if (!v16)
      {
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      if (--v16)
      {
        v5 = 0;
        v25 = &v68 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v5;
          if ((v5 * 10) >> 64 != (10 * v5) >> 63)
          {
            break;
          }

          v5 = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v16)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v16)
    {
      v5 = 0;
      v37 = &v68;
      while (1)
      {
        v38 = *v37 - 48;
        if (v38 > 9)
        {
          break;
        }

        v39 = 10 * v5;
        if ((v5 * 10) >> 64 != (10 * v5) >> 63)
        {
          break;
        }

        v5 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          break;
        }

        v37 = (v37 + 1);
        if (!--v16)
        {
          goto LABEL_71;
        }
      }
    }

LABEL_70:
    v5 = 0;
    LOBYTE(v16) = 1;
LABEL_71:
    if (v16)
    {
      goto LABEL_72;
    }

    goto LABEL_77;
  }

  if (v16)
  {
    if (--v16)
    {
      v5 = 0;
      v32 = &v68 + 1;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v5;
        if ((v5 * 10) >> 64 != (10 * v5) >> 63)
        {
          break;
        }

        v5 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v32;
        if (!--v16)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_105:
  __break(1u);
  return result;
}

unint64_t sub_2584B55D8()
{
  result = qword_27F931370;
  if (!qword_27F931370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931370);
  }

  return result;
}

unint64_t sub_2584B562C()
{
  result = qword_27F930748;
  if (!qword_27F930748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930748);
  }

  return result;
}

unint64_t sub_2584B5690(uint64_t a1)
{
  result = sub_2584B562C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584B56BC()
{
  result = qword_27F930750;
  if (!qword_27F930750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930750);
  }

  return result;
}

void sub_2584B5740(int a1, char *label, uint64_t a3, NSObject **a4)
{
  inactive = dispatch_workloop_create_inactive(label);
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  *a4 = inactive;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2584B57A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2584B57EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2584B584C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_2584B58A8(unint64_t a1, char *a2)
{
  v3 = v2;
  v15 = *v2;
  v16 = v2[1];
  v17 = v2[2];
  v18 = v2[3];
  v6 = sub_2584B5A34(a1, 0, *(*v2 + 16) - 1);
  v8 = v7;
  if (v7)
  {
    return (v8 & 1) == 0;
  }

  v9 = v6;
  v10 = v16;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = sub_2584B74D4(v16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v9 >= *(v10 + 2))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = *&v10[8 * v9 + 32];
  if (__CFADD__(v11, a2))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *&v10[8 * v9 + 32] = &a2[v11];
  *(v3 + 2) = v10;
  if (!__CFADD__(*(&v18 + 1), a2))
  {
    *(v3 + 7) = &a2[*(&v18 + 1)];
    if ((v17 & 1) != 0 || *(&v16 + 1) > a1)
    {
      *(v3 + 3) = a1;
      *(v3 + 32) = 0;
    }

    if ((v18 & 1) != 0 || *(&v17 + 1) < a1)
    {
      *(v3 + 5) = a1;
      *(v3 + 48) = 0;
    }

    a2 = *(&v15 + 1);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  a2 = sub_2584B5CA4(0, *(a2 + 2) + 1, 1, a2);
LABEL_14:
  v13 = *(a2 + 2);
  v12 = *(a2 + 3);
  if (v13 >= v12 >> 1)
  {
    a2 = sub_2584B5CA4((v12 > 1), v13 + 1, 1, a2);
  }

  *(a2 + 2) = v13 + 1;
  *&a2[8 * v13 + 32] = a1;
  *(v3 + 1) = a2;
  return (v8 & 1) == 0;
}

unint64_t sub_2584B5A34(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < a2)
  {
    return 0;
  }

  v4 = a2;
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 <= a2)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = v5 + 32;
  if (*(v5 + 32 + 8 * a2) >= result)
  {
    return v4;
  }

  v8 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    goto LABEL_25;
  }

  if (v8 >= -1)
  {
    v9 = v8 / 2;
    if (v8 / 2 < v6)
    {
      v10 = (v7 + 8 * v9);
      v11 = *v10;
      if (*v10 == result)
      {
        return v8 / 2;
      }

      if (v8 >= 2 && v11 >= result && *(v10 - 1) < result)
      {
        return v8 / 2;
      }

      if (v11 >= result)
      {
        a3 = v9 - 1;
      }

      else
      {
        a2 = v9 + 1;
      }

      return sub_2584B5A34(result, a2, a3);
    }
  }

LABEL_26:
  __break(1u);
  return result;
}

char *sub_2584B5B98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930768, &qword_25853A7E8);
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

char *sub_2584B5CA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930770, &qword_25853A7F0);
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

char *sub_2584B5DA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930790, &qword_25853A810);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2584B5EAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930778, &qword_25853A7F8);
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

char *sub_2584B5FB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930798, &qword_25853A818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2584B60D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9307B8, &qword_25853A848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931420, &unk_258535450);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2584B6240(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9307A0, &qword_25853A820);
  v10 = *(sub_258532D8C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_258532D8C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2584B643C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2584B6570(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930770, &qword_25853A7F0);
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

char *sub_2584B6674(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930768, &qword_25853A7E8);
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

unint64_t *sub_2584B6780(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_2584B68E0(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_2584B69D0(v8, v4, v2);
  result = MEMORY[0x259C82900](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_2584B68E0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_2584B6A48(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_2584B6A48(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2584B69D0(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_2584B68E0(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_2584B6A48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930788, &unk_25853EBA0);
  result = sub_258533CDC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = sub_258533EDC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2584B6C4C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2584B74E8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_258533DEC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_25853360C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2584B6D80(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2584B6D80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2584B74C0(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_2584B72CC((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2584B5DA8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_2584B5DA8((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_2584B72CC((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2584B72CC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

BOOL sub_2584B74FC(_BOOL8 result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14)
{
  v14 = *(result + 16);
  if (v14 != *(a8 + 16))
  {
    return 0;
  }

  if (v14)
  {
    v15 = result == a8;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_10:
    if (sub_2584B584C(a2, a9))
    {
      if (a4)
      {
        v23 = a5;
        if ((a11 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (a11)
        {
          return result;
        }

        v23 = a5;
        if (a3 != a10)
        {
          return result;
        }
      }

      if (a6)
      {
        if ((a13 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if ((a13 & 1) != 0 || v23 != a12)
        {
          return result;
        }
      }

      return a7 == a14;
    }

    return 0;
  }

  v16 = (result + 32);
  v17 = (a8 + 32);
  while (v14)
  {
    if (*v16 != *v17)
    {
      return 0;
    }

    ++v16;
    ++v17;
    if (!--v14)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2584B7604(uint64_t result, uint64_t a2, uint64_t a3)
{
  v16 = result;
  v15 = *(a2 + 16);
  if (!v15)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_17:
    if (*(v6 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930758, &qword_25853A7E0);
      sub_2584B78C8();
      v14 = sub_2585333CC();
    }

    else
    {

      return 0;
    }

    return v14;
  }

  v4 = 0;
  v5 = a3 + 32;
  v6 = MEMORY[0x277D84F90];
  while ((v16 & 1) != 0)
  {
    if (v4 >= *(a3 + 16))
    {
      goto LABEL_22;
    }

    if (*(v5 + 8 * v4))
    {
      break;
    }

LABEL_4:
    if (v15 == ++v4)
    {
      goto LABEL_17;
    }
  }

  if (!v4)
  {
    v17 = 539766875;
    v18 = 0xE400000000000000;
    v10 = sub_258533DFC();
    MEMORY[0x259C81500](v10);

    result = MEMORY[0x259C81500](2112093, 0xE300000000000000);
    if (!*(a3 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  v17 = 40;
  v18 = 0xE100000000000000;
  v8 = sub_258533DFC();
  MEMORY[0x259C81500](v8);

  MEMORY[0x259C81500](8236, 0xE200000000000000);
  v9 = sub_258533DFC();
  MEMORY[0x259C81500](v9);

  result = MEMORY[0x259C81500](2112093, 0xE300000000000000);
  if (v4 < *(a3 + 16))
  {
LABEL_12:
    v11 = sub_258533DFC();
    MEMORY[0x259C81500](v11);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2584B5B98(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_2584B5B98((v12 > 1), v13 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v13 + 1;
    v7 = v6 + 16 * v13;
    *(v7 + 32) = v17;
    *(v7 + 40) = v18;
    goto LABEL_4;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_2584B78C8()
{
  result = qword_27F930760;
  if (!qword_27F930760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F930758, &qword_25853A7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930760);
  }

  return result;
}

void sub_2584B792C(char *a1@<X0>, unint64_t a2@<X8>)
{
  v2 = a1;
  v46 = a1;

  sub_2584B6C4C(&v46);
  v4 = sub_2584B584C(v2, v46);

  if ((v4 & 1) == 0)
  {

    if (qword_27F92F8C0 != -1)
    {
LABEL_39:
      swift_once();
    }

    v25 = sub_258532A4C();
    __swift_project_value_buffer(v25, qword_27F93CF90);
    v26 = sub_258532A2C();
    v27 = sub_2585338EC();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_26;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Buckets not sorted";
    goto LABEL_25;
  }

  v44 = a2;
  v5 = *(v2 + 16);
  if (v5 < 2)
  {

    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v30 = sub_258532A4C();
    __swift_project_value_buffer(v30, qword_27F93CF90);
    v26 = sub_258532A2C();
    v27 = sub_2585338EC();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_26;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Bucket count must be greater than 1";
LABEL_25:
    _os_log_impl(&dword_25845E000, v26, v27, v29, v28, 2u);
    MEMORY[0x259C82900](v28, -1, -1);
LABEL_26:

    v2 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_27;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  v45 = MEMORY[0x277D84F98];
  do
  {
    if (v6 >= *(v2 + 16))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = *(v2 + 8 * v6 + 32);
    v10 = sub_2584BC28C(v8);
    v11 = v7[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_37;
    }

    v14 = v9;
    if (v7[3] < v13)
    {
      sub_25850BBE0(v13, 1);
      v7 = v45;
      v15 = sub_2584BC28C(v8);
      if ((v14 & 1) != (v16 & 1))
      {
        sub_258533E5C();
        __break(1u);

        __break(1u);
        return;
      }

      v10 = v15;
    }

    if (v14)
    {
      v17 = v7[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_2584B5CA4(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      a2 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (a2 >= v20 >> 1)
      {
        v18 = sub_2584B5CA4((v20 > 1), a2 + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      *(v18 + 2) = a2 + 1;
      *&v18[8 * a2 + 32] = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930770, &qword_25853A7F0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_2585356C0;
      *(v21 + 32) = v8;
      v7[(v10 >> 6) + 8] |= 1 << v10;
      *(v7[6] + 8 * v10) = v8;
      *(v7[7] + 8 * v10) = v21;
      v22 = v7[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_38;
      }

      v7[2] = v24;
    }

    ++v6;
  }

  while (v5 != v6);
  v35 = sub_2584B6780(v7);

  if (v35[2])
  {

    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v36 = sub_258532A4C();
    __swift_project_value_buffer(v36, qword_27F93CF90);

    v37 = sub_258532A2C();
    v38 = sub_2585338EC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v39 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930780, &unk_25853A800);
      v41 = sub_25853339C();
      v43 = sub_2584713B0(v41, v42, &v45);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_25845E000, v37, v38, "Duplicates found, %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x259C82900](v40, -1, -1);
      MEMORY[0x259C82900](v39, -1, -1);
    }

    else
    {
    }

    v2 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    a2 = v44;
  }

  else
  {
    v32 = sub_25853360C();
    *(v32 + 16) = v5;
    bzero((v32 + 32), 8 * v5);

    LOBYTE(v45) = 1;
    v34 = 1;
    v33 = 1;
    v31 = MEMORY[0x277D84F90];
    a2 = v44;
  }

LABEL_27:
  *a2 = v2;
  *(a2 + 8) = v31;
  *(a2 + 16) = v32;
  *(a2 + 24) = 0;
  *(a2 + 32) = v34;
  *(a2 + 40) = 0;
  *(a2 + 48) = v33;
  *(a2 + 56) = 0;
}

unint64_t sub_2584B7EE4(unint64_t result, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (result + 32);
    while (1)
    {
      v5 = *v4++;
      v6 = __CFADD__(v3, v5);
      v3 += v5;
      if (v6)
      {
        break;
      }

      if (!--v2)
      {
        return v3 / a2;
      }
    }

    __break(1u);
  }

  else
  {
    v3 = 0;
    return v3 / a2;
  }

  return result;
}

uint64_t sub_2584B7F30(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v16 = MEMORY[0x277D84F90];
    sub_2584F9398(0, v3, 0);
    v4 = v16;
    v5 = (a1 + 32);
    do
    {
      if (*v5++)
      {
        v7 = sub_258533DFC();
      }

      else
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      v17 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_2584F9398((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v4 = v17;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930758, &qword_25853A7E0);
  sub_2584B78C8();
  v14 = sub_2585333CC();

  return v14;
}

uint64_t sub_2584B80A0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - v5;
  v6 = sub_258532CFC();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9307C0, &qword_25853A850);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_258532C8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  if (a2 >> 60 != 15)
  {
    v26 = v6;
    v19 = sub_258532D8C();
    v20 = *(*(v19 - 8) + 56);
    v20(v10, 1, 1, v19);
    sub_2584A7B8C(a1, a2);
    sub_2584A7B8C(a1, a2);
    sub_258532C9C();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_258465168(v13, &qword_27F9307C0, &qword_25853A850);
      v20(v10, 1, 1, v19);
      sub_2584A7B8C(a1, a2);
      v21 = v28;
      sub_258532D0C();
      v22 = v29;
      v23 = v26;
      if ((*(v29 + 48))(v21, 1, v26) == 1)
      {
        sub_2584AE960(a1, a2);
        sub_2584AE960(a1, a2);
        sub_258465168(v21, &unk_27F931350, qword_258538C60);
        return 0;
      }

      else
      {
        v24 = v27;
        (*(v22 + 32))(v27, v21, v23);
        v30 = 0;
        v31 = 0xE000000000000000;
        sub_258533C8C();
        sub_2584AE960(a1, a2);
        sub_2584AE960(a1, a2);
        v18 = v30;
        (*(v22 + 8))(v24, v23);
      }
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_258533C8C();
      sub_2584AE960(a1, a2);
      sub_2584AE960(a1, a2);
      v18 = v30;
      (*(v15 + 8))(v17, v14);
    }
  }

  return v18;
}

uint64_t sub_2584B8544(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F9307C8, qword_25853A858);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_258532FCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_2584A7B8C(a1, a2);
    sub_258532FDC();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_2584AE960(a1, a2);
      sub_258465168(v6, qword_27F9307C8, qword_25853A858);
      return 0;
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v13[0] = 0;
      v13[1] = 0xE000000000000000;
      sub_258533C8C();
      sub_2584AE960(a1, a2);
      v12 = v13[0];
      (*(v8 + 8))(v10, v7);
      return v12;
    }
  }

  return result;
}

uint64_t sub_2584B87CC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2584B87EC, v1, 0);
}

uint64_t sub_2584B87EC()
{
  v4 = (*(v0[3] + 160) + **(v0[3] + 160));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_25848CAB4;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_2584B8900()
{
  v3 = (*(*(v0 + 16) + 176) + **(*(v0 + 16) + 176));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_258463A2C;

  return v3();
}

uint64_t sub_2584B8A0C()
{
  v3 = (*(*(v0 + 16) + 192) + **(*(v0 + 16) + 192));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_258463A2C;

  return v3();
}

uint64_t sub_2584B8B18()
{
  v3 = (*(*(v0 + 16) + 208) + **(*(v0 + 16) + 208));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2584AC7AC;

  return v3();
}

void *sub_2584B8C04()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2584B8C5C()
{
  sub_2584B8C04();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2584B8CC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_2584B87CC(a1);
}

uint64_t sub_2584B8D60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_2584B88E0();
}

uint64_t sub_2584B8DEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_2584B89EC();
}

uint64_t sub_2584B8E78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584B8AF8();
}

uint64_t sub_2584B8F04(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584B8F78()
{
  v1 = sub_258532D3C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_258532D2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *MEMORY[0x277CD8CA0];
  v10 = v6 + 104;
  v38 = *(v6 + 104);
  (v38)(v8, v9, v5);
  v11 = *MEMORY[0x277CD8CE0];
  v37 = *(v2 + 104);
  v33 = v2 + 104;
  v37(v4, v11, v1);
  sub_258532DFC();

  v12 = *(v2 + 8);
  v39 = v2 + 8;
  v12(v4, v1);
  v13 = *(v6 + 8);
  v35 = v6 + 8;
  v13(v8, v5);
  v29 = *MEMORY[0x277CD8CA8];
  v14 = v5;
  v34 = v10;
  v38(v8);
  v37(v4, *MEMORY[0x277CD8CE8], v1);
  sub_258532DFC();

  v15 = v4;
  v30 = v1;
  v32 = v12;
  v12(v4, v1);
  v16 = v14;
  v31 = v13;
  v13(v8, v14);
  v40[3] = &type metadata for MediaContinuityKitFeatureFlags;
  v40[4] = sub_2584A56DC();
  LOBYTE(v40[0]) = 1;
  LOBYTE(v10) = sub_2585329EC();
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  if (v10)
  {
    sub_258532E2C();
  }

  type metadata accessor for FoundationBackedUserDefaultsProvider();
  inited = swift_initStackObject();
  v36 = v0;
  v18 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v19 = sub_25853341C();
  v20 = [v18 initWithSuiteName_];

  *(inited + 16) = v20;
  v21 = sub_2585138CC(1u, 1);

  if (v21 != 2 && (v21 & 1) != 0)
  {
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v22 = sub_258532A4C();
    __swift_project_value_buffer(v22, qword_27F93CFD8);
    v23 = sub_258532A2C();
    v24 = sub_2585338EC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_25845E000, v23, v24, "Allowing infrastructure WiFi interface", v25, 2u);
      MEMORY[0x259C82900](v25, -1, -1);
    }

    (v38)(v8, v29, v16);
    v26 = v30;
    v37(v15, *MEMORY[0x277CD8CD8], v30);
    sub_258532DFC();

    v32(v15, v26);
    v31(v8, v16);
  }
}

uint64_t sub_2584B9434(uint64_t a1)
{
  v3 = sub_2585329BC();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930850, &unk_25853A9A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27[-v7];
  v9 = sub_258532BDC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25853294C();
  v14 = v13;
  sub_258532BCC();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2584BA0F4(v8);
    sub_2584BA15C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v31 = v1;
    (*(v10 + 32))(v12, v8, v9);
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v15 = sub_258532A4C();
    __swift_project_value_buffer(v15, qword_27F93CFD8);
    v16 = v32;
    (*(v32 + 16))(v5, a1, v3);
    v17 = sub_258532A2C();
    v18 = sub_2585338EC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = v19;
      v30 = swift_slowAlloc();
      v33 = v30;
      *v19 = 136315138;
      sub_2584BA1B0();
      v20 = sub_258533DFC();
      v28 = v18;
      v22 = v21;
      (*(v16 + 8))(v5, v3);
      v23 = sub_2584713B0(v20, v22, &v33);

      v24 = v29;
      *(v29 + 1) = v23;
      _os_log_impl(&dword_25845E000, v17, v28, "Setting clientSessionID=%s on connection", v24, 0xCu);
      v25 = v30;
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x259C82900](v25, -1, -1);
      MEMORY[0x259C82900](v24, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v5, v3);
    }

    v14 = sub_258532E1C();
    (*(v10 + 8))(v12, v9);
  }

  return v14;
}

uint64_t sub_2584B9824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_258532ECC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25[0] = sub_25853313C();
  v25[1] = sub_25853318C();
  v12 = *(*(a4 + 8) + 8);
  v24[0] = MEMORY[0x277CD8F48];
  v24[1] = MEMORY[0x277CD8F50];
  v19 = 2;
  v20 = a3;
  v21 = v25;
  v22 = v12;
  v23 = v24;
  sub_258532F2C();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_258532F3C();
  sub_258532DCC();

  sub_258532DDC();

  sub_258532E3C();

  (*(v9 + 104))(v11, *MEMORY[0x277CD8E18], v8);
  sub_258532E0C();

  (*(v9 + 8))(v11, v8);
  sub_2584B8F78();

  v13 = sub_2584B9434(a2);

  return v13;
}

uint64_t static Parameters1.compositorServicesConnectionConfiguration<A>(messageType:sessionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2585331BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  MEMORY[0x259C811F0](a3, a4, a5);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_2584B9824(v12, a2, v9, WitnessTable);
  (*(v10 + 8))(v12, v9);
  return v14;
}

uint64_t sub_2584B9B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25853313C();
  sub_25853318C();
  sub_258532F2C();
  sub_258532F3C();
  sub_258532DEC();

  v3 = sub_258532DCC();

  sub_2584B8F78();

  return v3;
}

uint64_t sub_2584B9C78(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a2;
  v33 = a5;
  v35 = a3;
  v36 = a4;
  v34 = a1;
  v5 = sub_258532F1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25853318C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v31 = sub_25853313C();
  v16 = *(v31 - 8);
  v17 = MEMORY[0x28223BE20](v31);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - v20;
  sub_25853312C();
  sub_25853317C();
  (*(v6 + 104))(v8, *MEMORY[0x277CD8E28], v5);
  sub_25853316C();
  (*(v6 + 8))(v8, v5);
  v22 = *(v10 + 8);
  v22(v13, v9);
  v43 = *v32;
  v23 = *(v16 + 16);
  v24 = v19;
  v30 = v19;
  v25 = v19;
  v26 = v31;
  v23(v25, v21, v31);
  v41 = v24;
  (*(v10 + 16))(v13, v15, v9);
  v42 = v13;
  v39 = v26;
  v40 = v9;
  v37 = MEMORY[0x277CD8F48];
  v38 = MEMORY[0x277CD8F50];
  sub_25853311C();
  v22(v15, v9);
  v27 = *(v16 + 8);
  v27(v21, v26);
  v22(v13, v9);
  return (v27)(v30, v26);
}

uint64_t static Parameters1.compositorServicesListenerConfiguration<A>(messageType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2585331BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  MEMORY[0x259C811F0](a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_2584B9B7C(v10, v7, WitnessTable);
  (*(v8 + 8))(v10, v7);
  return v12;
}

uint64_t sub_2584BA0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930850, &unk_25853A9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2584BA15C()
{
  result = qword_27F930858;
  if (!qword_27F930858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930858);
  }

  return result;
}

unint64_t sub_2584BA1B0()
{
  result = qword_27F92FE48;
  if (!qword_27F92FE48)
  {
    sub_2585329BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FE48);
  }

  return result;
}

unint64_t sub_2584BA238(uint64_t a1)
{
  result = sub_2584BA15C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584BA264()
{
  result = qword_27F930860;
  if (!qword_27F930860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930860);
  }

  return result;
}

uint64_t sub_2584BA2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 56) >> 1) > 0x80000000)
    {
      return -(*(a1 + 56) >> 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_2585329BC();
    v8 = *(*(v7 - 8) + 48);
    v9 = a1 + *(a3 + 32);

    return v8(v9, a2, v7);
  }
}

uint64_t sub_2584BA390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 2 * -a2;
    *(result + 64) = 0;
    *(result + 72) = 0;
  }

  else
  {
    v7 = sub_2585329BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for VideoStreamInternalInitParameters(uint64_t a1)
{
  result = qword_27F930868;
  if (!qword_27F930868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584BA48C(uint64_t a1)
{
  sub_2584BA560();
  if (v1 <= 0x3F)
  {
    sub_2584BA5CC();
    if (v2 <= 0x3F)
    {
      sub_2585329BC();
      if (v3 <= 0x3F)
      {
        sub_2584BA61C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2584BA560()
{
  result = qword_27F930878;
  if (!qword_27F930878)
  {
    result = swift_getExtendedExistentialTypeMetadata_unique();
    atomic_store(result, &qword_27F930878);
  }

  return result;
}

void sub_2584BA5CC()
{
  if (!qword_27F930880)
  {
    v0 = sub_258533A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F930880);
    }
  }
}

unint64_t sub_2584BA61C()
{
  result = qword_27F930888;
  if (!qword_27F930888)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F930888);
  }

  return result;
}

uint64_t sub_2584BA6C4()
{
  if (*v0)
  {
    return 4;
  }

  else
  {
    return 11;
  }
}

unint64_t sub_2584BA6DC(uint64_t a1)
{
  result = sub_2584AA020();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584BA708()
{
  result = qword_27F930890;
  if (!qword_27F930890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930890);
  }

  return result;
}

uint64_t sub_2584BA75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_2585334DC();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_2585334DC();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_258533E2C();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_2585334DC();
      v7 = v9;
    }

    while (v9);
  }

  sub_2585334DC();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_2584BA8B8(uint64_t a1, uint64_t a2)
{
  CreateUsableInterfaceList();
  ReleaseUsableInterfaceList();
  return 0;
}

id *sub_2584BA9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  v4 = v3;
  v70 = a1;
  v71 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931360, &unk_25853CD10);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v67 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v52 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930D90, &unk_25853BCF0);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v12 = &v52 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v63 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v61 = &v52 - v16;
  swift_defaultActor_initialize();
  v17 = *(v15 + 56);
  v72 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream;
  v60 = v17;
  v17(v3 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream, 1, 1, v14);
  v58 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask;
  *(v3 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask) = 0;
  v18 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStream;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  v20 = *(*(v19 - 8) + 56);
  v59 = v18;
  v20(v3 + v18, 1, 1, v19);
  v21 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  v23 = *(*(v22 - 8) + 56);
  v57 = v21;
  v23(v3 + v21, 1, 1, v22);
  v24 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v26 = *(*(v25 - 8) + 56);
  v56 = v24;
  v26(v3 + v24, 1, 1, v25);
  v55 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation;
  v26(v3 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation, 1, 1, v25);
  v27 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_logger;
  if (qword_27F92F8E8 != -1)
  {
    swift_once();
  }

  v28 = sub_258532A4C();
  v29 = __swift_project_value_buffer(v28, qword_27F93D008);
  v53 = *(v28 - 8);
  v30 = *(v53 + 16);
  v54 = v28;
  v30(v3 + v27, v29, v28);
  *(v3 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_cachedStreamDirection) = 0;
  v31 = *MEMORY[0x277D858A0];
  v32 = v62;
  v33 = *(v62 + 104);
  v52 = v27;
  v34 = v64;
  v33(v12, v31, v64);
  v35 = v61;
  v36 = v63;
  sub_2585337BC();
  (*(v32 + 8))(v12, v34);
  v37 = v65;
  (*(v15 + 32))(v65, v35, v14);
  v60(v37, 0, 1, v14);
  v38 = v72;
  swift_beginAccess();
  sub_2584BBC80(v37, v4 + v38);
  swift_endAccess();
  v39 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStreamContinuation;
  (*(v73 + 32))(v4 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStreamContinuation, v36, v75);
  v40 = sub_2585329BC();
  v41 = *(v40 - 8);
  v42 = v66;
  v43 = v70;
  (*(v41 + 16))(v66, v70, v40);
  (*(v41 + 56))(v42, 0, 1, v40);
  v44 = v71;
  v45 = v67;
  sub_2584BBCF0(v71, v67);
  v46 = objc_allocWithZone(MEMORY[0x277CE56E8]);
  v47 = v69;
  v48 = sub_2584BBD60(v42, v45, v68);
  if (v47)
  {
    sub_258465168(v44, &qword_27F931360, &unk_25853CD10);
    (*(v41 + 8))(v43, v40);
    sub_258465168(v4 + v72, &unk_27F930970, &unk_25853ACE0);
    (*(v73 + 8))(v4 + v39, v75);

    sub_258465168(v4 + v59, &unk_27F930DA0, &unk_25853BD00);
    sub_258465168(v4 + v57, &unk_27F930990, &unk_25853AD00);
    sub_258465168(v4 + v56, &unk_27F930DB0, &qword_258536390);
    sub_258465168(v4 + v55, &unk_27F930DB0, &qword_258536390);
    (*(v53 + 8))(v4 + v52, v54);
    type metadata accessor for AVConferenceBackedAudioStream(0);
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[14] = v48;
    v49 = [v48 streamToken];
    *(v4 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_streamToken) = v49;
    v50 = type metadata accessor for AVConferenceBackedAudioStream(0);
    v74.receiver = v4;
    v74.super_class = v50;
    v4 = objc_msgSendSuper2(&v74, sel_init);
    [v4[14] setDelegate_];
    sub_258465168(v44, &qword_27F931360, &unk_25853CD10);
    (*(v41 + 8))(v43, v40);
  }

  return v4;
}

uint64_t sub_2584BB2A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - v4;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v6 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStreamContinuation;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStreamContinuation, v2);
  v11[1] = 0;
  sub_2585337FC();
  v7 = *(v3 + 8);
  v7(v5, v2);

  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream, &unk_27F930970, &unk_25853ACE0);
  v7((v1 + v6), v2);

  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStream, &unk_27F930DA0, &unk_25853BD00);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation, &unk_27F930990, &unk_25853AD00);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation, &unk_27F930DB0, &qword_258536390);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation, &unk_27F930DB0, &qword_258536390);
  v8 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_logger;
  v9 = sub_258532A4C();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2584BB514()
{
  sub_2584BB2A0();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AVConferenceBackedAudioStream(uint64_t a1)
{
  result = qword_27F930898;
  if (!qword_27F930898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2584BB594(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 112);
  v6[0] = 0;
  if ([v3 configure:a1 error:v6])
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_2585328BC();

  return swift_willThrow();
}

void sub_2584BB674(uint64_t a1)
{
  sub_2584A7894(319, &qword_27F9308A8, &qword_27F9308B0, &unk_25853AC38);
  if (v1 <= 0x3F)
  {
    sub_2584BB8BC(319);
    if (v2 <= 0x3F)
    {
      sub_2584A7894(319, &qword_27F9308C8, &qword_27F9308D0, &qword_25853AC60);
      if (v3 <= 0x3F)
      {
        sub_2584A7894(319, &qword_27F9308D8, &unk_27F9308E0, &qword_25853AC68);
        if (v4 <= 0x3F)
        {
          sub_2584A7894(319, &qword_27F92FE88, &qword_27F9308F0, &qword_25853AC70);
          if (v5 <= 0x3F)
          {
            sub_258532A4C();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2584BB8BC(uint64_t a1)
{
  if (!qword_27F9308B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v1 = sub_25853380C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9308B8);
    }
  }
}

id sub_2584BB940()
{
  result = [*(v0 + 112) configuration];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_2584BB980(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v7 = a3;

  v8 = a5;
  sub_2584BBFC8(v6, a5);
}

uint64_t sub_2584BBA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309A0, &unk_25853AD10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  v10[1] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  sub_2585337EC();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2584BBBB4(uint64_t a1)
{
  result = sub_2584BBC3C(&qword_27F930958, &unk_25853ACB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584BBBF8(uint64_t a1)
{
  result = sub_2584BBC3C(&unk_27F930960, &unk_25853AC78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584BBC3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AVConferenceBackedAudioStream(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2584BBC80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584BBCF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931360, &unk_25853CD10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2584BBD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2585329BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = 0;
  if (v8(a1, 1, v6) != 1)
  {
    v9 = sub_25853295C();
    (*(v7 + 8))(a1, v6);
  }

  if (v8(a2, 1, v6) == 1)
  {
    v10 = 0;
    if (a3)
    {
LABEL_5:
      v11 = sub_25853336C();

      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_25853295C();
    (*(v7 + 8))(a2, v6);
    if (a3)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
LABEL_8:
  v17[0] = 0;
  v12 = [v16 initWithRTPNWConnectionClientID:v9 rtcpNWConnectionClientID:v10 options:v11 error:v17];

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    sub_2585328BC();

    swift_willThrow();
  }

  return v12;
}

unint64_t sub_2584BBF74()
{
  result = qword_27F930DC0;
  if (!qword_27F930DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930DC0);
  }

  return result;
}

uint64_t sub_2584BBFC8(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309A0, &unk_25853AD10);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - v11;
  result = (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStreamContinuation, v5);
  if (a1)
  {
    a2 = 3;
LABEL_5:
    v15[1] = a2;
    sub_2585337EC();
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v9);
  }

  if (a2)
  {
    v14 = a2;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_2584BC1D0(uint64_t a1, uint64_t a2)
{
  sub_258533EEC();
  sub_2585334AC();
  v4 = sub_258533F2C();

  return sub_2584BC2D0(a1, a2, v4);
}

unint64_t sub_2584BC248(uint64_t a1)
{
  v2 = sub_258533B0C();

  return sub_2584BC388(a1, v2);
}

unint64_t sub_2584BC28C(uint64_t a1)
{
  v2 = sub_258533EDC();

  return sub_2584BC450(a1, v2);
}

unint64_t sub_2584BC2D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_258533E2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2584BC388(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2584BC778(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C81B60](v9, a1);
      sub_2584BC6D0(v9);
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

unint64_t sub_2584BC450(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2584BC524(uint64_t a1, uint64_t a2)
{
  sub_258533EEC();
  sub_2585334AC();
  v2 = sub_258533F2C();
  return sub_2584BC4E0(v2);
}

uint64_t sub_2584BC58C()
{
  v0 = [objc_opt_self() getDaemonProcessInfo];
  v1 = sub_25853337C();

  v5 = sub_25853342C();
  sub_258533B2C();
  if (*(v1 + 16) && (v2 = sub_2584BC248(v6), (v3 & 1) != 0))
  {
    sub_258472C68(*(v1 + 56) + 32 * v2, v7);
    sub_2584BC6D0(v6);

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {

    sub_2584BC6D0(v6);
  }

  sub_2584BC724();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_2584BC724()
{
  result = qword_27F9309A8;
  if (!qword_27F9309A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9309A8);
  }

  return result;
}

unint64_t sub_2584BC7E4(uint64_t a1)
{
  result = sub_2584BC724();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584BC810()
{
  result = qword_27F9309B0;
  if (!qword_27F9309B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9309B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18MediaContinuityKit018AVConferenceBackedA11StreamEventO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2584BC87C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2584BC8D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_2584BC92C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_2584BC95C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258472CF8;

  return sub_2584BCA18(a1, v3);
}

uint64_t sub_2584BCA18(uint64_t a1, char a2)
{
  *(v3 + 352) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930990, &unk_25853AD00);
  *(v3 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DA0, &unk_25853BD00);
  *(v3 + 184) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309B8, &qword_25853AF00);
  *(v3 + 192) = v4;
  *(v3 + 200) = *(v4 - 8);
  *(v3 + 208) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  *(v3 + 216) = v5;
  *(v3 + 224) = *(v5 - 8);
  *(v3 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  *(v3 + 256) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  *(v3 + 264) = v6;
  *(v3 + 272) = *(v6 - 8);
  *(v3 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584BCCA4, v2, 0);
}

uint64_t sub_2584BCCA4()
{
  v42 = v0;
  *(v0 + 288) = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_logger;

  v1 = sub_258532A2C();
  v2 = sub_2585338BC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 168);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v41 = v5;
    *v4 = 136315138;
    *(v0 + 152) = v3;
    type metadata accessor for AVConferenceBackedAudioStream(0);

    v6 = sub_25853347C();
    v8 = sub_2584713B0(v6, v7, &v41);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25845E000, v1, v2, "%s starting", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v9 = *(v0 + 264);
  v10 = *(v0 + 272);
  v11 = *(v0 + 256);
  v12 = *(v0 + 168);
  v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v12 + v13, v11, &unk_27F930970, &unk_25853ACE0);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_258465168(*(v0 + 256), &unk_27F930970, &unk_25853ACE0);
    sub_2584BBF74();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
LABEL_15:

    v39 = *(v0 + 8);

    return v39();
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 168);
  (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
  v17 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v16 + v17, v15, &unk_27F930DB0, &qword_258536390);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v19 = *(*(v18 - 8) + 48);
  LODWORD(v17) = v19(v15, 1, v18);
  sub_258465168(v15, &unk_27F930DB0, &qword_258536390);
  if (v17 != 1 || (v20 = *(v0 + 240), v21 = *(v0 + 168), v22 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation, swift_beginAccess(), sub_2584AC3B8(v21 + v22, v20, &unk_27F930DB0, &qword_258536390), v23 = v19(v20, 1, v18), sub_258465168(v20, &unk_27F930DB0, &qword_258536390), v23 != 1))
  {
    v26 = *(v0 + 280);
    goto LABEL_14;
  }

  v24 = *(v0 + 168);
  v25 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask;
  *(v0 + 296) = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask;
  v26 = *(v0 + 280);
  if (*(v24 + v25))
  {
LABEL_14:
    v36 = *(v0 + 264);
    v37 = *(v0 + 272);
    sub_2584BBF74();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();
    (*(v37 + 8))(v26, v36);
    goto LABEL_15;
  }

  v27 = *(v0 + 352);
  sub_2584C3540(*(v0 + 280), &unk_28698E958, &unk_28698E980, &unk_25853AF10, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask);
  if (v27 == 1)
  {
    v28 = *(v0 + 168);
    v29 = *(v28 + 112);
    v30 = [v29 direction];
    *(v28 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_cachedStreamDirection) = v30;
    [v29 setDirection_];
  }

  v31 = *(v0 + 168);
  v32 = sub_2584C6294(&qword_27F930958, type metadata accessor for AVConferenceBackedAudioStream, &unk_25853ACB0);
  v33 = swift_task_alloc();
  *(v0 + 304) = v33;
  *v33 = v0;
  v33[1] = sub_2584BD250;
  v34 = *(v0 + 168);
  v35 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v33, v31, v32, 0xD000000000000010, 0x8000000258540EE0, sub_2584C60E0, v34, v35);
}

uint64_t sub_2584BD250()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_2584BD818;
  }

  else
  {
    v4 = sub_2584BD37C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584BD37C()
{
  v36 = v0;
  if (*(v0 + 352) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 320) = v1;
    *v1 = v0;
    v1[1] = sub_2584BDAB0;

    return sub_2584C0448();
  }

  else
  {
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    v5 = *(v0 + 208);
    v32 = *(v0 + 216);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 176);
    v9 = *(v0 + 184);
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    (*(v6 + 104))(v5, *MEMORY[0x277D858A0], v7);
    sub_2585337BC();
    (*(v6 + 8))(v5, v7);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
    v13 = *(v12 - 8);
    (*(v13 + 16))(v9, v11, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    v14 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStream;
    swift_beginAccess();
    sub_2584AC5D0(v9, v10 + v14, &unk_27F930DA0, &unk_25853BD00);
    swift_endAccess();
    (*(v4 + 16))(v8, v3, v32);
    (*(v4 + 56))(v8, 0, 1, v32);
    v15 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation;
    swift_beginAccess();
    sub_2584AC5D0(v8, v10 + v15, &unk_27F930990, &unk_25853AD00);
    swift_endAccess();

    v16 = sub_258532A2C();
    v17 = sub_2585338BC();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 272);
    v20 = *(v0 + 280);
    v21 = *(v0 + 264);
    v22 = *(v0 + 224);
    v23 = *(v0 + 232);
    v24 = *(v0 + 216);
    if (v18)
    {
      v33 = *(v0 + 232);
      v25 = *(v0 + 168);
      v34 = *(v0 + 264);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136315138;
      *(v0 + 144) = v25;
      type metadata accessor for AVConferenceBackedAudioStream(0);

      v28 = sub_25853347C();
      v30 = sub_2584713B0(v28, v29, &v35);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_25845E000, v16, v17, "%s started", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x259C82900](v27, -1, -1);
      MEMORY[0x259C82900](v26, -1, -1);

      (*(v22 + 8))(v33, v24);
      (*(v19 + 8))(v20, v34);
    }

    else
    {

      (*(v22 + 8))(v23, v24);
      (*(v19 + 8))(v20, v21);
    }

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_2584BD818()
{
  v22 = v0;
  v1 = v0[39];

  v2 = v1;
  v3 = sub_258532A2C();
  v4 = sub_2585338CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v6 = 136315394;
    v0[17] = v5;
    type metadata accessor for AVConferenceBackedAudioStream(0);

    v9 = sub_25853347C();
    v11 = sub_2584713B0(v9, v10, &v21);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_25845E000, v3, v4, "%s failed to start with error:%@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v14 = v0[37];
  v16 = v0[34];
  v15 = v0[35];
  v17 = v0[33];
  v18 = v0[21];
  [*(v18 + 112) setDirection_];
  *(v18 + v14) = 0;

  swift_willThrow();
  (*(v16 + 8))(v15, v17);

  v19 = v0[1];

  return v19();
}

uint64_t sub_2584BDAB0()
{
  v2 = *v1;
  v2[41] = v0;

  if (v0)
  {
    v3 = swift_task_alloc();
    v2[42] = v3;
    *v3 = v2;
    v3[1] = sub_2584BE074;

    return sub_2584C1A98();
  }

  else
  {
    v5 = v2[21];

    return MEMORY[0x2822009F8](sub_2584BDC38, v5, 0);
  }
}

uint64_t sub_2584BDC38()
{
  v38 = v0;
  [*(v0[21] + 112) setDirection_];
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v34 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  (*(v4 + 104))(v3, *MEMORY[0x277D858A0], v5);
  sub_2585337BC();
  (*(v4 + 8))(v3, v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7, v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v12 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStream;
  swift_beginAccess();
  sub_2584AC5D0(v7, v8 + v12, &unk_27F930DA0, &unk_25853BD00);
  swift_endAccess();
  (*(v2 + 16))(v6, v1, v34);
  (*(v2 + 56))(v6, 0, 1, v34);
  v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation;
  swift_beginAccess();
  sub_2584AC5D0(v6, v8 + v13, &unk_27F930990, &unk_25853AD00);
  swift_endAccess();

  v14 = sub_258532A2C();
  v15 = sub_2585338BC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[34];
    v35 = v0[33];
    v36 = v0[35];
    v17 = v0[28];
    v32 = v0[27];
    v33 = v0[29];
    v18 = v0[21];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136315138;
    v0[18] = v18;
    type metadata accessor for AVConferenceBackedAudioStream(0);

    v21 = sub_25853347C();
    v23 = sub_2584713B0(v21, v22, &v37);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_25845E000, v14, v15, "%s started", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x259C82900](v20, -1, -1);
    MEMORY[0x259C82900](v19, -1, -1);

    (*(v17 + 8))(v33, v32);
    (*(v16 + 8))(v36, v35);
  }

  else
  {
    v25 = v0[34];
    v24 = v0[35];
    v26 = v0[33];
    v28 = v0[28];
    v27 = v0[29];
    v29 = v0[27];

    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v24, v26);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_2584BE074()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_2584BE440;
  }

  else
  {
    v4 = sub_2584BE1A0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584BE1A0(uint64_t a1)
{
  v23 = v1;
  swift_willThrow();
  v2 = v1[41];

  v3 = v2;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v7 = 136315394;
    v1[17] = v6;
    type metadata accessor for AVConferenceBackedAudioStream(0);

    v10 = sub_25853347C();
    v12 = sub_2584713B0(v10, v11, &v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_25845E000, v4, v5, "%s failed to start with error:%@", v7, 0x16u);
    sub_258465168(v8, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x259C82900](v9, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  v15 = v1[37];
  v17 = v1[34];
  v16 = v1[35];
  v18 = v1[33];
  v19 = v1[21];
  [*(v19 + 112) setDirection_];
  *(v19 + v15) = 0;

  swift_willThrow();
  (*(v17 + 8))(v16, v18);

  v20 = v1[1];

  return v20();
}

uint64_t sub_2584BE440()
{
  v22 = v0;

  v1 = *(v0 + 344);

  v2 = v1;
  v3 = sub_258532A2C();
  v4 = sub_2585338CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v6 = 136315394;
    *(v0 + 136) = v5;
    type metadata accessor for AVConferenceBackedAudioStream(0);

    v9 = sub_25853347C();
    v11 = sub_2584713B0(v9, v10, &v21);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_25845E000, v3, v4, "%s failed to start with error:%@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v14 = *(v0 + 296);
  v16 = *(v0 + 272);
  v15 = *(v0 + 280);
  v17 = *(v0 + 264);
  v18 = *(v0 + 168);
  [*(v18 + 112) setDirection_];
  *(v18 + v14) = 0;

  swift_willThrow();
  (*(v16 + 8))(v15, v17);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2584BE6E0(uint64_t a1, char a2)
{
  *(v3 + 352) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930990, &unk_25853AD00);
  *(v3 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DA0, &unk_25853BD00);
  *(v3 + 184) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309B8, &qword_25853AF00);
  *(v3 + 192) = v4;
  *(v3 + 200) = *(v4 - 8);
  *(v3 + 208) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  *(v3 + 216) = v5;
  *(v3 + 224) = *(v5 - 8);
  *(v3 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  *(v3 + 256) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  *(v3 + 264) = v6;
  *(v3 + 272) = *(v6 - 8);
  *(v3 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584BE96C, v2, 0);
}

uint64_t sub_2584BE96C()
{
  v42 = v0;
  *(v0 + 288) = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_logger;

  v1 = sub_258532A2C();
  v2 = sub_2585338BC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 168);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v41 = v5;
    *v4 = 136315138;
    *(v0 + 152) = v3;
    type metadata accessor for AVConferenceBackedVideoStream(0);

    v6 = sub_25853347C();
    v8 = sub_2584713B0(v6, v7, &v41);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25845E000, v1, v2, "%s starting", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v9 = *(v0 + 264);
  v10 = *(v0 + 272);
  v11 = *(v0 + 256);
  v12 = *(v0 + 168);
  v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v12 + v13, v11, &unk_27F930970, &unk_25853ACE0);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_258465168(*(v0 + 256), &unk_27F930970, &unk_25853ACE0);
    sub_2584BBF74();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
LABEL_15:

    v39 = *(v0 + 8);

    return v39();
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 168);
  (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
  v17 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v16 + v17, v15, &unk_27F930DB0, &qword_258536390);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v19 = *(*(v18 - 8) + 48);
  LODWORD(v17) = v19(v15, 1, v18);
  sub_258465168(v15, &unk_27F930DB0, &qword_258536390);
  if (v17 != 1 || (v20 = *(v0 + 240), v21 = *(v0 + 168), v22 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation, swift_beginAccess(), sub_2584AC3B8(v21 + v22, v20, &unk_27F930DB0, &qword_258536390), v23 = v19(v20, 1, v18), sub_258465168(v20, &unk_27F930DB0, &qword_258536390), v23 != 1))
  {
    v26 = *(v0 + 280);
    goto LABEL_14;
  }

  v24 = *(v0 + 168);
  v25 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask;
  *(v0 + 296) = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask;
  v26 = *(v0 + 280);
  if (*(v24 + v25))
  {
LABEL_14:
    v36 = *(v0 + 264);
    v37 = *(v0 + 272);
    sub_2584BBF74();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();
    (*(v37 + 8))(v26, v36);
    goto LABEL_15;
  }

  v27 = *(v0 + 352);
  sub_2584C3540(*(v0 + 280), &unk_28698E9A8, &unk_28698E9D0, &unk_25853AF78, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask);
  if (v27 == 1)
  {
    v28 = *(v0 + 168);
    v29 = *(v28 + 112);
    v30 = [v29 direction];
    *(v28 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_cachedStreamDirection) = v30;
    [v29 setDirection_];
  }

  v31 = *(v0 + 168);
  v32 = sub_2584C6294(&qword_27F9309D0, type metadata accessor for AVConferenceBackedVideoStream, &unk_25853BCC0);
  v33 = swift_task_alloc();
  *(v0 + 304) = v33;
  *v33 = v0;
  v33[1] = sub_2584BEF18;
  v34 = *(v0 + 168);
  v35 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v33, v31, v32, 0xD000000000000010, 0x8000000258540EE0, sub_2584C6360, v34, v35);
}

uint64_t sub_2584BEF18()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_2584BF4E0;
  }

  else
  {
    v4 = sub_2584BF044;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584BF044()
{
  v36 = v0;
  if (*(v0 + 352) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 320) = v1;
    *v1 = v0;
    v1[1] = sub_2584BF778;

    return sub_2584C0ADC();
  }

  else
  {
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    v5 = *(v0 + 208);
    v32 = *(v0 + 216);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 176);
    v9 = *(v0 + 184);
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    (*(v6 + 104))(v5, *MEMORY[0x277D858A0], v7);
    sub_2585337BC();
    (*(v6 + 8))(v5, v7);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
    v13 = *(v12 - 8);
    (*(v13 + 16))(v9, v11, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    v14 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStream;
    swift_beginAccess();
    sub_2584AC5D0(v9, v10 + v14, &unk_27F930DA0, &unk_25853BD00);
    swift_endAccess();
    (*(v4 + 16))(v8, v3, v32);
    (*(v4 + 56))(v8, 0, 1, v32);
    v15 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation;
    swift_beginAccess();
    sub_2584AC5D0(v8, v10 + v15, &unk_27F930990, &unk_25853AD00);
    swift_endAccess();

    v16 = sub_258532A2C();
    v17 = sub_2585338BC();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 272);
    v20 = *(v0 + 280);
    v21 = *(v0 + 264);
    v22 = *(v0 + 224);
    v23 = *(v0 + 232);
    v24 = *(v0 + 216);
    if (v18)
    {
      v33 = *(v0 + 232);
      v25 = *(v0 + 168);
      v34 = *(v0 + 264);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136315138;
      *(v0 + 144) = v25;
      type metadata accessor for AVConferenceBackedVideoStream(0);

      v28 = sub_25853347C();
      v30 = sub_2584713B0(v28, v29, &v35);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_25845E000, v16, v17, "%s started", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x259C82900](v27, -1, -1);
      MEMORY[0x259C82900](v26, -1, -1);

      (*(v22 + 8))(v33, v24);
      (*(v19 + 8))(v20, v34);
    }

    else
    {

      (*(v22 + 8))(v23, v24);
      (*(v19 + 8))(v20, v21);
    }

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_2584BF4E0()
{
  v22 = v0;
  v1 = v0[39];

  v2 = v1;
  v3 = sub_258532A2C();
  v4 = sub_2585338CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v6 = 136315394;
    v0[17] = v5;
    type metadata accessor for AVConferenceBackedVideoStream(0);

    v9 = sub_25853347C();
    v11 = sub_2584713B0(v9, v10, &v21);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_25845E000, v3, v4, "%s failed to start with error:%@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v14 = v0[37];
  v16 = v0[34];
  v15 = v0[35];
  v17 = v0[33];
  v18 = v0[21];
  [*(v18 + 112) setDirection_];
  *(v18 + v14) = 0;

  swift_willThrow();
  (*(v16 + 8))(v15, v17);

  v19 = v0[1];

  return v19();
}

uint64_t sub_2584BF778()
{
  v2 = *v1;
  v2[41] = v0;

  if (v0)
  {
    v3 = swift_task_alloc();
    v2[42] = v3;
    *v3 = v2;
    v3[1] = sub_2584BFD3C;

    return sub_2584C2518();
  }

  else
  {
    v5 = v2[21];

    return MEMORY[0x2822009F8](sub_2584BF900, v5, 0);
  }
}

uint64_t sub_2584BF900()
{
  v38 = v0;
  [*(v0[21] + 112) setDirection_];
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v34 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  (*(v4 + 104))(v3, *MEMORY[0x277D858A0], v5);
  sub_2585337BC();
  (*(v4 + 8))(v3, v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7, v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v12 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStream;
  swift_beginAccess();
  sub_2584AC5D0(v7, v8 + v12, &unk_27F930DA0, &unk_25853BD00);
  swift_endAccess();
  (*(v2 + 16))(v6, v1, v34);
  (*(v2 + 56))(v6, 0, 1, v34);
  v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation;
  swift_beginAccess();
  sub_2584AC5D0(v6, v8 + v13, &unk_27F930990, &unk_25853AD00);
  swift_endAccess();

  v14 = sub_258532A2C();
  v15 = sub_2585338BC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[34];
    v35 = v0[33];
    v36 = v0[35];
    v17 = v0[28];
    v32 = v0[27];
    v33 = v0[29];
    v18 = v0[21];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136315138;
    v0[18] = v18;
    type metadata accessor for AVConferenceBackedVideoStream(0);

    v21 = sub_25853347C();
    v23 = sub_2584713B0(v21, v22, &v37);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_25845E000, v14, v15, "%s started", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x259C82900](v20, -1, -1);
    MEMORY[0x259C82900](v19, -1, -1);

    (*(v17 + 8))(v33, v32);
    (*(v16 + 8))(v36, v35);
  }

  else
  {
    v25 = v0[34];
    v24 = v0[35];
    v26 = v0[33];
    v28 = v0[28];
    v27 = v0[29];
    v29 = v0[27];

    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v24, v26);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_2584BFD3C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_2584C0108;
  }

  else
  {
    v4 = sub_2584BFE68;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584BFE68(uint64_t a1)
{
  v23 = v1;
  swift_willThrow();
  v2 = v1[41];

  v3 = v2;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v7 = 136315394;
    v1[17] = v6;
    type metadata accessor for AVConferenceBackedVideoStream(0);

    v10 = sub_25853347C();
    v12 = sub_2584713B0(v10, v11, &v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_25845E000, v4, v5, "%s failed to start with error:%@", v7, 0x16u);
    sub_258465168(v8, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x259C82900](v9, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  v15 = v1[37];
  v17 = v1[34];
  v16 = v1[35];
  v18 = v1[33];
  v19 = v1[21];
  [*(v19 + 112) setDirection_];
  *(v19 + v15) = 0;

  swift_willThrow();
  (*(v17 + 8))(v16, v18);

  v20 = v1[1];

  return v20();
}

uint64_t sub_2584C0108()
{
  v22 = v0;

  v1 = *(v0 + 344);

  v2 = v1;
  v3 = sub_258532A2C();
  v4 = sub_2585338CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v6 = 136315394;
    *(v0 + 136) = v5;
    type metadata accessor for AVConferenceBackedVideoStream(0);

    v9 = sub_25853347C();
    v11 = sub_2584713B0(v9, v10, &v21);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_25845E000, v3, v4, "%s failed to start with error:%@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v14 = *(v0 + 296);
  v16 = *(v0 + 272);
  v15 = *(v0 + 280);
  v17 = *(v0 + 264);
  v18 = *(v0 + 168);
  [*(v18 + 112) setDirection_];
  *(v18 + v14) = 0;

  swift_willThrow();
  (*(v16 + 8))(v15, v17);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2584C03A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584C0448();
}

uint64_t sub_2584C0448()
{
  v1[11] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C0528, v0, 0);
}

uint64_t sub_2584C0528()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v2 + v3, v1, &unk_27F930970, &unk_25853ACE0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_258465168(v1, &unk_27F930970, &unk_25853ACE0);
  if (v2 == 1)
  {
    v5 = 2;
LABEL_9:
    sub_2584BBF74();
    swift_allocError();
    *v20 = v5;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }

  v6 = v0[13];
  v7 = v0[11];
  v8 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v7 + v8, v6, &unk_27F930DB0, &qword_258536390);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v10 = *(*(v9 - 8) + 48);
  LODWORD(v8) = v10(v6, 1, v9);
  sub_258465168(v6, &unk_27F930DB0, &qword_258536390);
  if (v8 != 1 || (v12 = v0[11], v11 = v0[12], v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation, swift_beginAccess(), sub_2584AC3B8(v12 + v13, v11, &unk_27F930DB0, &qword_258536390), v14 = v10(v11, 1, v9), sub_258465168(v11, &unk_27F930DB0, &qword_258536390), v14 != 1))
  {
    v5 = 0;
    goto LABEL_9;
  }

  v15 = v0[11];
  v16 = sub_2584C6294(&qword_27F930958, type metadata accessor for AVConferenceBackedAudioStream, &unk_25853ACB0);
  v17 = swift_task_alloc();
  v0[15] = v17;
  *v17 = v0;
  v17[1] = sub_2584C08B8;
  v18 = v0[11];
  v19 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v17, v15, v16, 0x29286573756170, 0xE700000000000000, sub_2584C60B4, v18, v19);
}

uint64_t sub_2584C08B8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_2584C0A5C;
  }

  else
  {
    v4 = sub_2584C09E4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584C09E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584C0A5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584C0ADC()
{
  v1[11] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C0BBC, v0, 0);
}

uint64_t sub_2584C0BBC()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v2 + v3, v1, &unk_27F930970, &unk_25853ACE0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_258465168(v1, &unk_27F930970, &unk_25853ACE0);
  if (v2 == 1)
  {
    v5 = 2;
LABEL_9:
    sub_2584BBF74();
    swift_allocError();
    *v20 = v5;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }

  v6 = v0[13];
  v7 = v0[11];
  v8 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v7 + v8, v6, &unk_27F930DB0, &qword_258536390);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v10 = *(*(v9 - 8) + 48);
  LODWORD(v8) = v10(v6, 1, v9);
  sub_258465168(v6, &unk_27F930DB0, &qword_258536390);
  if (v8 != 1 || (v12 = v0[11], v11 = v0[12], v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation, swift_beginAccess(), sub_2584AC3B8(v12 + v13, v11, &unk_27F930DB0, &qword_258536390), v14 = v10(v11, 1, v9), sub_258465168(v11, &unk_27F930DB0, &qword_258536390), v14 != 1))
  {
    v5 = 0;
    goto LABEL_9;
  }

  v15 = v0[11];
  v16 = sub_2584C6294(&qword_27F9309D0, type metadata accessor for AVConferenceBackedVideoStream, &unk_25853BCC0);
  v17 = swift_task_alloc();
  v0[15] = v17;
  *v17 = v0;
  v17[1] = sub_2584C0F4C;
  v18 = v0[11];
  v19 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v17, v15, v16, 0x29286573756170, 0xE700000000000000, sub_2584C6334, v18, v19);
}

uint64_t sub_2584C0F4C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_2584C6634;
  }

  else
  {
    v4 = sub_2584C663C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584C1078()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584C1118();
}

uint64_t sub_2584C1118()
{
  v1[11] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C11F8, v0, 0);
}